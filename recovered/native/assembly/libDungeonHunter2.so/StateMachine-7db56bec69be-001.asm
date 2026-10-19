; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00339e70, declared_size=88, range_size=88, mode=arm
; class-group: StateMachine
; alias: _ZN12StateMachineC2Ev
; demangled: StateMachine::StateMachine()
; decoder-mode: arm
00339e70  48 c0 9f e5                                      ldr ip, [pc, #0x48]
00339e74  04 40 2d e5                                      str r4, [sp, #-4]!
00339e78  44 40 9f e5                                      ldr r4, [pc, #0x44]
00339e7c  0c c0 8f e0                                      add ip, pc, ip
00339e80  00 10 a0 e1                                      mov r1, r0
00339e84  04 40 9c e7                                      ldr r4, [ip, r4]
00339e88  00 20 a0 e3                                      mov r2, #0
00339e8c  08 40 84 e2                                      add r4, r4, #8
00339e90  04 40 81 e4                                      str r4, [r1], #4
00339e94  00 40 e0 e3                                      mvn r4, #0
00339e98  1d 20 c0 e5                                      strb r2, [r0, #0x1d]
00339e9c  08 10 80 e5                                      str r1, [r0, #8]
00339ea0  18 40 80 e5                                      str r4, [r0, #0x18]
00339ea4  04 10 80 e5                                      str r1, [r0, #4]
00339ea8  0c 20 80 e5                                      str r2, [r0, #0xc]
00339eac  10 20 80 e5                                      str r2, [r0, #0x10]
00339eb0  14 20 80 e5                                      str r2, [r0, #0x14]
00339eb4  1c 20 c0 e5                                      strb r2, [r0, #0x1c]
00339eb8  10 00 bd e8                                      ldm sp!, {r4}
00339ebc  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00339ec0  14 ac 65 00 3c 0b 00 00                          .byte 0x14, 0xac, 0x65, 0x00, 0x3c, 0x0b, 0x00, 0x00

; FUNCTION 0x00339ec8, declared_size=88, range_size=88, mode=arm
; class-group: StateMachine
; alias: _ZN12StateMachineC1Ev
; demangled: StateMachine::StateMachine()
; decoder-mode: arm
00339ec8  48 c0 9f e5                                      ldr ip, [pc, #0x48]
00339ecc  04 40 2d e5                                      str r4, [sp, #-4]!
00339ed0  44 40 9f e5                                      ldr r4, [pc, #0x44]
00339ed4  0c c0 8f e0                                      add ip, pc, ip
00339ed8  00 10 a0 e1                                      mov r1, r0
00339edc  04 40 9c e7                                      ldr r4, [ip, r4]
00339ee0  00 20 a0 e3                                      mov r2, #0
00339ee4  08 40 84 e2                                      add r4, r4, #8
00339ee8  04 40 81 e4                                      str r4, [r1], #4
00339eec  00 40 e0 e3                                      mvn r4, #0
00339ef0  1d 20 c0 e5                                      strb r2, [r0, #0x1d]
00339ef4  08 10 80 e5                                      str r1, [r0, #8]
00339ef8  18 40 80 e5                                      str r4, [r0, #0x18]
00339efc  04 10 80 e5                                      str r1, [r0, #4]
00339f00  0c 20 80 e5                                      str r2, [r0, #0xc]
00339f04  10 20 80 e5                                      str r2, [r0, #0x10]
00339f08  14 20 80 e5                                      str r2, [r0, #0x14]
00339f0c  1c 20 c0 e5                                      strb r2, [r0, #0x1c]
00339f10  10 00 bd e8                                      ldm sp!, {r4}
00339f14  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00339f18  bc ab 65 00 3c 0b 00 00                          .byte 0xbc, 0xab, 0x65, 0x00, 0x3c, 0x0b, 0x00, 0x00

; FUNCTION 0x00339f20, declared_size=192, range_size=192, mode=arm
; class-group: StateMachine
; alias: _ZN12StateMachine9_popStateEPNS_9StateInfoE
; demangled: StateMachine::_popState(StateMachine::StateInfo*)
; decoder-mode: arm
00339f20  10 40 2d e9                                      push {r4, lr}
00339f24  10 30 90 e5                                      ldr r3, [r0, #0x10]
00339f28  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00339f2c  00 40 a0 e1                                      mov r4, r0
00339f30  03 20 62 e0                                      rsb r2, r2, r3
00339f34  a2 21 b0 e1                                      lsrs r2, r2, #3
00339f38  07 00 00 0a                                      beq #0x339f5c
00339f3c  00 00 51 e3                                      cmp r1, #0
00339f40  06 00 00 0a                                      beq #0x339f60
00339f44  00 20 91 e5                                      ldr r2, [r1]
00339f48  00 00 52 e3                                      cmp r2, #0
00339f4c  03 00 00 0a                                      beq #0x339f60
00339f50  08 30 13 e5                                      ldr r3, [r3, #-8]
00339f54  03 00 52 e1                                      cmp r2, r3
00339f58  01 00 00 0a                                      beq #0x339f64
00339f5c  10 80 bd e8                                      pop {r4, pc}
00339f60  08 30 13 e5                                      ldr r3, [r3, #-8]
00339f64  03 00 a0 e1                                      mov r0, r3
00339f68  04 10 a0 e1                                      mov r1, r4
00339f6c  00 30 93 e5                                      ldr r3, [r3]
00339f70  0f e0 a0 e1                                      mov lr, pc
00339f74  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00339f78  10 30 94 e5                                      ldr r3, [r4, #0x10]
00339f7c  08 20 43 e2                                      sub r2, r3, #8
00339f80  04 10 d2 e5                                      ldrb r1, [r2, #4]
00339f84  00 00 51 e3                                      cmp r1, #0
00339f88  08 00 00 0a                                      beq #0x339fb0
00339f8c  08 30 13 e5                                      ldr r3, [r3, #-8]
00339f90  00 00 53 e3                                      cmp r3, #0
00339f94  05 00 00 0a                                      beq #0x339fb0
00339f98  03 00 a0 e1                                      mov r0, r3
00339f9c  00 30 93 e5                                      ldr r3, [r3]
00339fa0  0f e0 a0 e1                                      mov lr, pc
00339fa4  04 f0 93 e5                                      ldr pc, [r3, #4]
00339fa8  10 20 94 e5                                      ldr r2, [r4, #0x10]
00339fac  08 20 42 e2                                      sub r2, r2, #8
00339fb0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00339fb4  10 20 84 e5                                      str r2, [r4, #0x10]
00339fb8  02 30 63 e0                                      rsb r3, r3, r2
00339fbc  a3 31 b0 e1                                      lsrs r3, r3, #3
00339fc0  e5 ff ff 0a                                      beq #0x339f5c
00339fc4  08 30 12 e5                                      ldr r3, [r2, #-8]
00339fc8  04 10 a0 e1                                      mov r1, r4
00339fcc  03 00 a0 e1                                      mov r0, r3
00339fd0  00 30 93 e5                                      ldr r3, [r3]
00339fd4  0f e0 a0 e1                                      mov lr, pc
00339fd8  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00339fdc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00339fe0, declared_size=48, range_size=48, mode=arm
; class-group: StateMachine
; alias: _ZN12StateMachine12_popAllStateEv
; demangled: StateMachine::_popAllState()
; decoder-mode: arm
00339fe0  10 40 2d e9                                      push {r4, lr}
00339fe4  00 40 a0 e1                                      mov r4, r0
00339fe8  02 00 00 ea                                      b #0x339ff8
00339fec  04 00 a0 e1                                      mov r0, r4
00339ff0  00 10 a0 e3                                      mov r1, #0
00339ff4  c9 ff ff eb                                      bl #0x339f20
00339ff8  10 20 94 e5                                      ldr r2, [r4, #0x10]
00339ffc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0033a000  02 30 63 e0                                      rsb r3, r3, r2
0033a004  a3 31 b0 e1                                      lsrs r3, r3, #3
0033a008  f7 ff ff 1a                                      bne #0x339fec
0033a00c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0033a010, declared_size=128, range_size=128, mode=arm
; class-group: StateMachine
; alias: _ZNK12StateMachine13RecurseUpdateEd
; demangled: StateMachine::RecurseUpdate(double) const
; decoder-mode: arm
0033a010  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0033a014  1c 10 d0 e5                                      ldrb r1, [r0, #0x1c]
0033a018  00 40 a0 e1                                      mov r4, r0
0033a01c  02 60 a0 e1                                      mov r6, r2
0033a020  00 00 51 e3                                      cmp r1, #0
0033a024  03 70 a0 e1                                      mov r7, r3
0033a028  0b 00 00 0a                                      beq #0x33a05c
0033a02c  18 50 90 e5                                      ldr r5, [r0, #0x18]
0033a030  01 00 75 e3                                      cmn r5, #1
0033a034  0c 30 90 05                                      ldreq r3, [r0, #0xc]
0033a038  10 20 90 05                                      ldreq r2, [r0, #0x10]
0033a03c  05 30 a0 11                                      movne r3, r5
0033a040  02 30 63 00                                      rsbeq r3, r3, r2
0033a044  c3 31 a0 01                                      asreq r3, r3, #3
0033a048  01 30 43 02                                      subeq r3, r3, #1
0033a04c  18 30 80 05                                      streq r3, [r0, #0x18]
0033a050  00 00 53 e3                                      cmp r3, #0
0033a054  01 00 00 1a                                      bne #0x33a060
0033a058  18 50 84 e5                                      str r5, [r4, #0x18]
0033a05c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0033a060  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0033a064  01 30 43 e2                                      sub r3, r3, #1
0033a068  18 30 80 e5                                      str r3, [r0, #0x18]
0033a06c  83 c1 92 e7                                      ldr ip, [r2, r3, lsl #3]
0033a070  00 10 a0 e1                                      mov r1, r0
0033a074  06 20 a0 e1                                      mov r2, r6
0033a078  0c 00 a0 e1                                      mov r0, ip
0033a07c  07 30 a0 e1                                      mov r3, r7
0033a080  00 c0 9c e5                                      ldr ip, [ip]
0033a084  0f e0 a0 e1                                      mov lr, pc
0033a088  18 f0 9c e5                                      ldr pc, [ip, #0x18]
0033a08c  f1 ff ff ea                                      b #0x33a058

; FUNCTION 0x0033a090, declared_size=112, range_size=112, mode=arm
; class-group: StateMachine
; alias: _ZNK12StateMachine11RecurseDrawEv
; demangled: StateMachine::RecurseDraw() const
; decoder-mode: arm
0033a090  70 40 2d e9                                      push {r4, r5, r6, lr}
0033a094  1d 30 d0 e5                                      ldrb r3, [r0, #0x1d]
0033a098  00 40 a0 e1                                      mov r4, r0
0033a09c  00 00 53 e3                                      cmp r3, #0
0033a0a0  0b 00 00 0a                                      beq #0x33a0d4
0033a0a4  18 50 90 e5                                      ldr r5, [r0, #0x18]
0033a0a8  01 00 75 e3                                      cmn r5, #1
0033a0ac  0c 30 90 05                                      ldreq r3, [r0, #0xc]
0033a0b0  10 20 90 05                                      ldreq r2, [r0, #0x10]
0033a0b4  05 30 a0 11                                      movne r3, r5
0033a0b8  02 30 63 00                                      rsbeq r3, r3, r2
0033a0bc  c3 31 a0 01                                      asreq r3, r3, #3
0033a0c0  01 30 43 02                                      subeq r3, r3, #1
0033a0c4  18 30 80 05                                      streq r3, [r0, #0x18]
0033a0c8  00 00 53 e3                                      cmp r3, #0
0033a0cc  01 00 00 1a                                      bne #0x33a0d8
0033a0d0  18 50 84 e5                                      str r5, [r4, #0x18]
0033a0d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0033a0d8  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0033a0dc  01 30 43 e2                                      sub r3, r3, #1
0033a0e0  18 30 80 e5                                      str r3, [r0, #0x18]
0033a0e4  83 31 92 e7                                      ldr r3, [r2, r3, lsl #3]
0033a0e8  00 10 a0 e1                                      mov r1, r0
0033a0ec  03 00 a0 e1                                      mov r0, r3
0033a0f0  00 30 93 e5                                      ldr r3, [r3]
0033a0f4  0f e0 a0 e1                                      mov lr, pc
0033a0f8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0033a0fc  f3 ff ff ea                                      b #0x33a0d0

; FUNCTION 0x0033a100, declared_size=72, range_size=72, mode=arm
; class-group: StateMachine
; alias: _ZNK12StateMachine4DrawEv
; demangled: StateMachine::Draw() const
; decoder-mode: arm
0033a100  10 40 2d e9                                      push {r4, lr}
0033a104  10 30 90 e5                                      ldr r3, [r0, #0x10]
0033a108  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0033a10c  00 40 a0 e1                                      mov r4, r0
0033a110  03 20 62 e0                                      rsb r2, r2, r3
0033a114  a2 21 b0 e1                                      lsrs r2, r2, #3
0033a118  09 00 00 0a                                      beq #0x33a144
0033a11c  01 20 a0 e3                                      mov r2, #1
0033a120  1d 20 c0 e5                                      strb r2, [r0, #0x1d]
0033a124  08 30 13 e5                                      ldr r3, [r3, #-8]
0033a128  00 10 a0 e1                                      mov r1, r0
0033a12c  03 00 a0 e1                                      mov r0, r3
0033a130  00 30 93 e5                                      ldr r3, [r3]
0033a134  0f e0 a0 e1                                      mov lr, pc
0033a138  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0033a13c  00 30 a0 e3                                      mov r3, #0
0033a140  1d 30 c4 e5                                      strb r3, [r4, #0x1d]
0033a144  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0033a148, declared_size=52, range_size=52, mode=arm
; class-group: StateMachine
; alias: _ZNK12StateMachine6Draw2DEv
; demangled: StateMachine::Draw2D() const
; decoder-mode: arm
0033a148  10 40 2d e9                                      push {r4, lr}
0033a14c  10 30 90 e5                                      ldr r3, [r0, #0x10]
0033a150  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0033a154  03 20 62 e0                                      rsb r2, r2, r3
0033a158  a2 21 b0 e1                                      lsrs r2, r2, #3
0033a15c  05 00 00 0a                                      beq #0x33a178
0033a160  08 30 13 e5                                      ldr r3, [r3, #-8]
0033a164  00 10 a0 e1                                      mov r1, r0
0033a168  03 00 a0 e1                                      mov r0, r3
0033a16c  00 30 93 e5                                      ldr r3, [r3]
0033a170  0f e0 a0 e1                                      mov lr, pc
0033a174  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0033a178  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0033a17c, declared_size=56, range_size=56, mode=arm
; class-group: StateMachine
; alias: _ZN12StateMachine5SleepEv
; demangled: StateMachine::Sleep()
; decoder-mode: arm
0033a17c  70 40 2d e9                                      push {r4, r5, r6, lr}
0033a180  00 50 a0 e1                                      mov r5, r0
0033a184  10 40 90 e5                                      ldr r4, [r0, #0x10]
0033a188  04 00 00 ea                                      b #0x33a1a0
0033a18c  08 30 34 e5                                      ldr r3, [r4, #-8]!
0033a190  03 00 a0 e1                                      mov r0, r3
0033a194  00 30 93 e5                                      ldr r3, [r3]
0033a198  0f e0 a0 e1                                      mov lr, pc
0033a19c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0033a1a0  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0033a1a4  05 10 a0 e1                                      mov r1, r5
0033a1a8  04 00 53 e1                                      cmp r3, r4
0033a1ac  f6 ff ff 1a                                      bne #0x33a18c
0033a1b0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0033a1b4, declared_size=64, range_size=64, mode=arm
; class-group: StateMachine
; alias: _ZN12StateMachine6WakeUpEv
; demangled: StateMachine::WakeUp()
; decoder-mode: arm
0033a1b4  70 40 2d e9                                      push {r4, r5, r6, lr}
0033a1b8  0c 40 90 e5                                      ldr r4, [r0, #0xc]
0033a1bc  10 30 90 e5                                      ldr r3, [r0, #0x10]
0033a1c0  00 50 a0 e1                                      mov r5, r0
0033a1c4  03 00 54 e1                                      cmp r4, r3
0033a1c8  08 00 00 0a                                      beq #0x33a1f0
0033a1cc  08 30 94 e4                                      ldr r3, [r4], #8
0033a1d0  05 10 a0 e1                                      mov r1, r5
0033a1d4  03 00 a0 e1                                      mov r0, r3
0033a1d8  00 30 93 e5                                      ldr r3, [r3]
0033a1dc  0f e0 a0 e1                                      mov lr, pc
0033a1e0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0033a1e4  10 30 95 e5                                      ldr r3, [r5, #0x10]
0033a1e8  03 00 54 e1                                      cmp r4, r3
0033a1ec  f6 ff ff 1a                                      bne #0x33a1cc
0033a1f0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0033a344, declared_size=68, range_size=68, mode=arm
; class-group: StateMachine
; alias: _ZN12StateMachine9PushStateEP9StateBaseb
; demangled: StateMachine::PushState(StateBase*, bool)
; decoder-mode: arm
0033a344  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0033a348  04 50 80 e2                                      add r5, r0, #4
0033a34c  00 40 a0 e1                                      mov r4, r0
0033a350  05 00 a0 e1                                      mov r0, r5
0033a354  01 60 a0 e1                                      mov r6, r1
0033a358  02 70 a0 e1                                      mov r7, r2
0033a35c  f0 ff ff eb                                      bl #0x33a324
0033a360  01 30 a0 e3                                      mov r3, #1
0033a364  10 30 80 e5                                      str r3, [r0, #0x10]
0033a368  0c 70 c0 e5                                      strb r7, [r0, #0xc]
0033a36c  08 60 80 e5                                      str r6, [r0, #8]
0033a370  08 30 94 e5                                      ldr r3, [r4, #8]
0033a374  00 50 80 e5                                      str r5, [r0]
0033a378  04 30 80 e5                                      str r3, [r0, #4]
0033a37c  00 00 83 e5                                      str r0, [r3]
0033a380  08 00 84 e5                                      str r0, [r4, #8]
0033a384  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0033a388, declared_size=68, range_size=68, mode=arm
; class-group: StateMachine
; alias: _ZN12StateMachine11SwitchStateEP9StateBaseb
; demangled: StateMachine::SwitchState(StateBase*, bool)
; decoder-mode: arm
0033a388  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0033a38c  04 50 80 e2                                      add r5, r0, #4
0033a390  00 40 a0 e1                                      mov r4, r0
0033a394  05 00 a0 e1                                      mov r0, r5
0033a398  01 60 a0 e1                                      mov r6, r1
0033a39c  02 70 a0 e1                                      mov r7, r2
0033a3a0  df ff ff eb                                      bl #0x33a324
0033a3a4  00 30 a0 e3                                      mov r3, #0
0033a3a8  10 30 80 e5                                      str r3, [r0, #0x10]
0033a3ac  0c 70 c0 e5                                      strb r7, [r0, #0xc]
0033a3b0  08 60 80 e5                                      str r6, [r0, #8]
0033a3b4  08 30 94 e5                                      ldr r3, [r4, #8]
0033a3b8  00 50 80 e5                                      str r5, [r0]
0033a3bc  04 30 80 e5                                      str r3, [r0, #4]
0033a3c0  00 00 83 e5                                      str r0, [r3]
0033a3c4  08 00 84 e5                                      str r0, [r4, #8]
0033a3c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0033a3cc, declared_size=68, range_size=68, mode=arm
; class-group: StateMachine
; alias: _ZN12StateMachine8PopStateEP9StateBase
; demangled: StateMachine::PopState(StateBase*)
; decoder-mode: arm
0033a3cc  70 40 2d e9                                      push {r4, r5, r6, lr}
0033a3d0  04 50 80 e2                                      add r5, r0, #4
0033a3d4  00 40 a0 e1                                      mov r4, r0
0033a3d8  05 00 a0 e1                                      mov r0, r5
0033a3dc  01 60 a0 e1                                      mov r6, r1
0033a3e0  cf ff ff eb                                      bl #0x33a324
0033a3e4  02 30 a0 e3                                      mov r3, #2
0033a3e8  10 30 80 e5                                      str r3, [r0, #0x10]
0033a3ec  00 30 a0 e3                                      mov r3, #0
0033a3f0  0c 30 c0 e5                                      strb r3, [r0, #0xc]
0033a3f4  08 60 80 e5                                      str r6, [r0, #8]
0033a3f8  08 30 94 e5                                      ldr r3, [r4, #8]
0033a3fc  00 50 80 e5                                      str r5, [r0]
0033a400  04 30 80 e5                                      str r3, [r0, #4]
0033a404  00 00 83 e5                                      str r0, [r3]
0033a408  08 00 84 e5                                      str r0, [r4, #8]
0033a40c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0033a410, declared_size=272, range_size=272, mode=arm
; class-group: StateMachine
; alias: _ZN12StateMachine7__clearEv
; demangled: StateMachine::__clear()
; decoder-mode: arm
0033a410  30 40 2d e9                                      push {r4, r5, lr}
0033a414  00 40 a0 e1                                      mov r4, r0
0033a418  10 50 90 e5                                      ldr r5, [r0, #0x10]
0033a41c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0033a420  14 d0 4d e2                                      sub sp, sp, #0x14
0033a424  04 10 a0 e1                                      mov r1, r4
0033a428  05 00 53 e1                                      cmp r3, r5
0033a42c  13 00 00 0a                                      beq #0x33a480
0033a430  08 30 15 e5                                      ldr r3, [r5, #-8]
0033a434  03 00 a0 e1                                      mov r0, r3
0033a438  00 30 93 e5                                      ldr r3, [r3]
0033a43c  0f e0 a0 e1                                      mov lr, pc
0033a440  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0033a444  04 30 55 e5                                      ldrb r3, [r5, #-4]
0033a448  00 00 53 e3                                      cmp r3, #0
0033a44c  06 00 00 0a                                      beq #0x33a46c
0033a450  08 30 15 e5                                      ldr r3, [r5, #-8]
0033a454  00 00 53 e3                                      cmp r3, #0
0033a458  03 00 a0 e1                                      mov r0, r3
0033a45c  02 00 00 0a                                      beq #0x33a46c
0033a460  00 30 93 e5                                      ldr r3, [r3]
0033a464  0f e0 a0 e1                                      mov lr, pc
0033a468  04 f0 93 e5                                      ldr pc, [r3, #4]
0033a46c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0033a470  08 50 45 e2                                      sub r5, r5, #8
0033a474  04 10 a0 e1                                      mov r1, r4
0033a478  05 00 53 e1                                      cmp r3, r5
0033a47c  eb ff ff 1a                                      bne #0x33a430
0033a480  10 00 94 e5                                      ldr r0, [r4, #0x10]
0033a484  05 00 50 e1                                      cmp r0, r5
0033a488  06 00 00 0a                                      beq #0x33a4a8
0033a48c  00 c0 a0 e3                                      mov ip, #0
0033a490  05 20 a0 e1                                      mov r2, r5
0033a494  00 10 a0 e1                                      mov r1, r0
0033a498  0c 30 8d e2                                      add r3, sp, #0xc
0033a49c  00 c0 8d e5                                      str ip, [sp]
0033a4a0  53 ff ff eb                                      bl #0x33a1f4
0033a4a4  10 00 84 e5                                      str r0, [r4, #0x10]
0033a4a8  04 00 94 e5                                      ldr r0, [r4, #4]
0033a4ac  04 50 84 e2                                      add r5, r4, #4
0033a4b0  05 00 50 e1                                      cmp r0, r5
0033a4b4  17 00 00 0a                                      beq #0x33a518
0033a4b8  00 30 a0 e1                                      mov r3, r0
0033a4bc  00 30 93 e5                                      ldr r3, [r3]
0033a4c0  03 00 55 e1                                      cmp r5, r3
0033a4c4  fc ff ff 1a                                      bne #0x33a4bc
0033a4c8  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
0033a4cc  00 00 53 e3                                      cmp r3, #0
0033a4d0  07 00 00 0a                                      beq #0x33a4f4
0033a4d4  08 30 90 e5                                      ldr r3, [r0, #8]
0033a4d8  00 00 53 e3                                      cmp r3, #0
0033a4dc  04 00 00 0a                                      beq #0x33a4f4
0033a4e0  03 00 a0 e1                                      mov r0, r3
0033a4e4  00 30 93 e5                                      ldr r3, [r3]
0033a4e8  0f e0 a0 e1                                      mov lr, pc
0033a4ec  04 f0 93 e5                                      ldr pc, [r3, #4]
0033a4f0  04 00 94 e5                                      ldr r0, [r4, #4]
0033a4f4  00 30 90 e5                                      ldr r3, [r0]
0033a4f8  04 20 90 e5                                      ldr r2, [r0, #4]
0033a4fc  14 10 a0 e3                                      mov r1, #0x14
0033a500  00 30 82 e5                                      str r3, [r2]
0033a504  04 20 83 e5                                      str r2, [r3, #4]
0033a508  7c 3a 0f eb                                      bl #0x708f00
0033a50c  04 00 94 e5                                      ldr r0, [r4, #4]
0033a510  05 00 50 e1                                      cmp r0, r5
0033a514  e7 ff ff 1a                                      bne #0x33a4b8
0033a518  14 d0 8d e2                                      add sp, sp, #0x14
0033a51c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0033a590, declared_size=400, range_size=400, mode=arm
; class-group: StateMachine
; alias: _ZN12StateMachine10_pushStateERNS_9StateInfoE
; demangled: StateMachine::_pushState(StateMachine::StateInfo&)
; decoder-mode: arm
0033a590  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0033a594  10 30 90 e5                                      ldr r3, [r0, #0x10]
0033a598  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0033a59c  08 d0 4d e2                                      sub sp, sp, #8
0033a5a0  00 40 a0 e1                                      mov r4, r0
0033a5a4  03 20 62 e0                                      rsb r2, r2, r3
0033a5a8  a2 21 b0 e1                                      lsrs r2, r2, #3
0033a5ac  01 50 a0 e1                                      mov r5, r1
0033a5b0  11 00 00 1a                                      bne #0x33a5fc
0033a5b4  14 60 94 e5                                      ldr r6, [r4, #0x14]
0033a5b8  03 00 56 e1                                      cmp r6, r3
0033a5bc  18 00 00 0a                                      beq #0x33a624
0033a5c0  00 20 95 e5                                      ldr r2, [r5]
0033a5c4  00 20 83 e5                                      str r2, [r3]
0033a5c8  04 20 d5 e5                                      ldrb r2, [r5, #4]
0033a5cc  04 20 c3 e5                                      strb r2, [r3, #4]
0033a5d0  10 70 94 e5                                      ldr r7, [r4, #0x10]
0033a5d4  08 70 87 e2                                      add r7, r7, #8
0033a5d8  10 70 84 e5                                      str r7, [r4, #0x10]
0033a5dc  08 30 17 e5                                      ldr r3, [r7, #-8]
0033a5e0  04 10 a0 e1                                      mov r1, r4
0033a5e4  03 00 a0 e1                                      mov r0, r3
0033a5e8  00 30 93 e5                                      ldr r3, [r3]
0033a5ec  0f e0 a0 e1                                      mov lr, pc
0033a5f0  08 f0 93 e5                                      ldr pc, [r3, #8]
0033a5f4  08 d0 8d e2                                      add sp, sp, #8
0033a5f8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0033a5fc  08 30 13 e5                                      ldr r3, [r3, #-8]
0033a600  00 10 a0 e1                                      mov r1, r0
0033a604  03 00 a0 e1                                      mov r0, r3
0033a608  00 30 93 e5                                      ldr r3, [r3]
0033a60c  0f e0 a0 e1                                      mov lr, pc
0033a610  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0033a614  10 30 94 e5                                      ldr r3, [r4, #0x10]
0033a618  14 60 94 e5                                      ldr r6, [r4, #0x14]
0033a61c  03 00 56 e1                                      cmp r6, r3
0033a620  e6 ff ff 1a                                      bne #0x33a5c0
0033a624  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0033a628  03 30 62 e0                                      rsb r3, r2, r3
0033a62c  c3 31 a0 e1                                      asr r3, r3, #3
0033a630  01 00 53 e3                                      cmp r3, #1
0033a634  03 10 83 20                                      addhs r1, r3, r3
0033a638  01 10 83 32                                      addlo r1, r3, #1
0033a63c  1e 02 71 e3                                      cmn r1, #0xe0000001
0033a640  32 00 00 8a                                      bhi #0x33a710
0033a644  01 00 53 e1                                      cmp r3, r1
0033a648  30 00 00 8a                                      bhi #0x33a710
0033a64c  08 20 8d e2                                      add r2, sp, #8
0033a650  04 10 22 e5                                      str r1, [r2, #-4]!
0033a654  14 00 84 e2                                      add r0, r4, #0x14
0033a658  b0 ff ff eb                                      bl #0x33a520
0033a65c  0c e0 94 e5                                      ldr lr, [r4, #0xc]
0033a660  00 80 a0 e1                                      mov r8, r0
0033a664  06 60 6e e0                                      rsb r6, lr, r6
0033a668  c6 61 a0 e1                                      asr r6, r6, #3
0033a66c  00 00 56 e3                                      cmp r6, #0
0033a670  00 60 a0 d1                                      movle r6, r0
0033a674  0b 00 00 da                                      ble #0x33a6a8
0033a678  06 10 a0 e1                                      mov r1, r6
0033a67c  00 00 a0 e3                                      mov r0, #0
0033a680  0e 20 a0 e1                                      mov r2, lr
0033a684  00 c0 b2 e7                                      ldr ip, [r2, r0]!
0033a688  08 30 a0 e1                                      mov r3, r8
0033a68c  01 10 51 e2                                      subs r1, r1, #1
0033a690  00 c0 a3 e7                                      str ip, [r3, r0]!
0033a694  04 20 d2 e5                                      ldrb r2, [r2, #4]
0033a698  08 00 80 e2                                      add r0, r0, #8
0033a69c  04 20 c3 e5                                      strb r2, [r3, #4]
0033a6a0  f6 ff ff 1a                                      bne #0x33a680
0033a6a4  86 61 88 e0                                      add r6, r8, r6, lsl #3
0033a6a8  00 30 95 e5                                      ldr r3, [r5]
0033a6ac  08 70 86 e2                                      add r7, r6, #8
0033a6b0  00 30 86 e5                                      str r3, [r6]
0033a6b4  04 30 d5 e5                                      ldrb r3, [r5, #4]
0033a6b8  04 30 c6 e5                                      strb r3, [r6, #4]
0033a6bc  10 30 94 e5                                      ldr r3, [r4, #0x10]
0033a6c0  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0033a6c4  14 10 94 e5                                      ldr r1, [r4, #0x14]
0033a6c8  00 00 53 e1                                      cmp r3, r0
0033a6cc  08 20 43 12                                      subne r2, r3, #8
0033a6d0  02 20 60 10                                      rsbne r2, r0, r2
0033a6d4  a2 21 e0 11                                      mvnne r2, r2, lsr #3
0033a6d8  82 31 83 10                                      addne r3, r3, r2, lsl #3
0033a6dc  00 00 53 e3                                      cmp r3, #0
0033a6e0  04 00 00 0a                                      beq #0x33a6f8
0033a6e4  01 10 63 e0                                      rsb r1, r3, r1
0033a6e8  07 10 c1 e3                                      bic r1, r1, #7
0033a6ec  80 00 51 e3                                      cmp r1, #0x80
0033a6f0  08 00 00 8a                                      bhi #0x33a718
0033a6f4  01 3a 0f eb                                      bl #0x708f00
0033a6f8  04 30 9d e5                                      ldr r3, [sp, #4]
0033a6fc  0c 80 84 e5                                      str r8, [r4, #0xc]
0033a700  10 70 84 e5                                      str r7, [r4, #0x10]
0033a704  83 81 88 e0                                      add r8, r8, r3, lsl #3
0033a708  14 80 84 e5                                      str r8, [r4, #0x14]
0033a70c  b2 ff ff ea                                      b #0x33a5dc
0033a710  0e 12 e0 e3                                      mvn r1, #0xe0000000
0033a714  cc ff ff ea                                      b #0x33a64c
0033a718  48 57 ff eb                                      bl #0x310440
0033a71c  f5 ff ff ea                                      b #0x33a6f8

; FUNCTION 0x0033a720, declared_size=32, range_size=32, mode=arm
; class-group: StateMachine
; alias: _ZN12StateMachine12_switchStateERNS_9StateInfoE
; demangled: StateMachine::_switchState(StateMachine::StateInfo&)
; decoder-mode: arm
0033a720  70 40 2d e9                                      push {r4, r5, r6, lr}
0033a724  01 40 a0 e1                                      mov r4, r1
0033a728  00 50 a0 e1                                      mov r5, r0
0033a72c  2b fe ff eb                                      bl #0x339fe0
0033a730  05 00 a0 e1                                      mov r0, r5
0033a734  04 10 a0 e1                                      mov r1, r4
0033a738  70 40 bd e8                                      pop {r4, r5, r6, lr}
0033a73c  93 ff ff ea                                      b #0x33a590

; FUNCTION 0x0033a740, declared_size=180, range_size=180, mode=arm
; class-group: StateMachine
; alias: _ZN12StateMachine15_handleQueuedOpEv
; demangled: StateMachine::_handleQueuedOp()
; decoder-mode: arm
0033a740  70 40 2d e9                                      push {r4, r5, r6, lr}
0033a744  00 40 a0 e1                                      mov r4, r0
0033a748  00 50 a0 e1                                      mov r5, r0
0033a74c  04 00 b4 e5                                      ldr r0, [r4, #4]!
0033a750  04 00 50 e1                                      cmp r0, r4
0033a754  1b 00 00 0a                                      beq #0x33a7c8
0033a758  00 30 a0 e1                                      mov r3, r0
0033a75c  00 30 93 e5                                      ldr r3, [r3]
0033a760  03 00 54 e1                                      cmp r4, r3
0033a764  fc ff ff 1a                                      bne #0x33a75c
0033a768  00 30 a0 e1                                      mov r3, r0
0033a76c  00 30 93 e5                                      ldr r3, [r3]
0033a770  03 00 54 e1                                      cmp r4, r3
0033a774  fc ff ff 1a                                      bne #0x33a76c
0033a778  10 30 90 e5                                      ldr r3, [r0, #0x10]
0033a77c  01 00 53 e3                                      cmp r3, #1
0033a780  11 00 00 0a                                      beq #0x33a7cc
0033a784  02 00 53 e3                                      cmp r3, #2
0033a788  14 00 00 0a                                      beq #0x33a7e0
0033a78c  00 00 53 e3                                      cmp r3, #0
0033a790  03 00 00 1a                                      bne #0x33a7a4
0033a794  08 10 80 e2                                      add r1, r0, #8
0033a798  05 00 a0 e1                                      mov r0, r5
0033a79c  df ff ff eb                                      bl #0x33a720
0033a7a0  04 00 95 e5                                      ldr r0, [r5, #4]
0033a7a4  00 30 90 e5                                      ldr r3, [r0]
0033a7a8  04 20 90 e5                                      ldr r2, [r0, #4]
0033a7ac  14 10 a0 e3                                      mov r1, #0x14
0033a7b0  00 30 82 e5                                      str r3, [r2]
0033a7b4  04 20 83 e5                                      str r2, [r3, #4]
0033a7b8  d0 39 0f eb                                      bl #0x708f00
0033a7bc  04 00 95 e5                                      ldr r0, [r5, #4]
0033a7c0  00 00 54 e1                                      cmp r4, r0
0033a7c4  e7 ff ff 1a                                      bne #0x33a768
0033a7c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0033a7cc  08 10 80 e2                                      add r1, r0, #8
0033a7d0  05 00 a0 e1                                      mov r0, r5
0033a7d4  6d ff ff eb                                      bl #0x33a590
0033a7d8  04 00 95 e5                                      ldr r0, [r5, #4]
0033a7dc  f0 ff ff ea                                      b #0x33a7a4
0033a7e0  08 10 80 e2                                      add r1, r0, #8
0033a7e4  05 00 a0 e1                                      mov r0, r5
0033a7e8  cc fd ff eb                                      bl #0x339f20
0033a7ec  04 00 95 e5                                      ldr r0, [r5, #4]
0033a7f0  eb ff ff ea                                      b #0x33a7a4

; FUNCTION 0x0033a7f4, declared_size=92, range_size=92, mode=arm
; class-group: StateMachine
; alias: _ZN12StateMachine6UpdateEd
; demangled: StateMachine::Update(double)
; decoder-mode: arm
0033a7f4  d0 40 2d e9                                      push {r4, r6, r7, lr}
0033a7f8  00 40 a0 e1                                      mov r4, r0
0033a7fc  02 60 a0 e1                                      mov r6, r2
0033a800  03 70 a0 e1                                      mov r7, r3
0033a804  cd ff ff eb                                      bl #0x33a740
0033a808  10 30 94 e5                                      ldr r3, [r4, #0x10]
0033a80c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0033a810  03 20 62 e0                                      rsb r2, r2, r3
0033a814  a2 21 b0 e1                                      lsrs r2, r2, #3
0033a818  0b 00 00 0a                                      beq #0x33a84c
0033a81c  01 20 a0 e3                                      mov r2, #1
0033a820  1c 20 c4 e5                                      strb r2, [r4, #0x1c]
0033a824  08 c0 13 e5                                      ldr ip, [r3, #-8]
0033a828  06 20 a0 e1                                      mov r2, r6
0033a82c  07 30 a0 e1                                      mov r3, r7
0033a830  0c 00 a0 e1                                      mov r0, ip
0033a834  04 10 a0 e1                                      mov r1, r4
0033a838  00 c0 9c e5                                      ldr ip, [ip]
0033a83c  0f e0 a0 e1                                      mov lr, pc
0033a840  18 f0 9c e5                                      ldr pc, [ip, #0x18]
0033a844  00 30 a0 e3                                      mov r3, #0
0033a848  1c 30 c4 e5                                      strb r3, [r4, #0x1c]
0033a84c  d0 80 bd e8                                      pop {r4, r6, r7, pc}

; FUNCTION 0x0033a890, declared_size=120, range_size=120, mode=arm
; class-group: StateMachine
; alias: _ZN12StateMachineD1Ev
; demangled: StateMachine::~StateMachine()
; decoder-mode: arm
0033a890  68 30 9f e5                                      ldr r3, [pc, #0x68]
0033a894  68 20 9f e5                                      ldr r2, [pc, #0x68]
0033a898  70 40 2d e9                                      push {r4, r5, r6, lr}
0033a89c  03 30 8f e0                                      add r3, pc, r3
0033a8a0  02 20 93 e7                                      ldr r2, [r3, r2]
0033a8a4  00 40 a0 e1                                      mov r4, r0
0033a8a8  00 60 a0 e1                                      mov r6, r0
0033a8ac  08 20 82 e2                                      add r2, r2, #8
0033a8b0  0c 20 84 e4                                      str r2, [r4], #0xc
0033a8b4  04 50 80 e2                                      add r5, r0, #4
0033a8b8  d4 fe ff eb                                      bl #0x33a410
0033a8bc  04 00 a0 e1                                      mov r0, r4
0033a8c0  e2 ff ff eb                                      bl #0x33a850
0033a8c4  04 00 96 e5                                      ldr r0, [r6, #4]
0033a8c8  05 00 50 e1                                      cmp r0, r5
0033a8cc  01 00 00 1a                                      bne #0x33a8d8
0033a8d0  06 00 00 ea                                      b #0x33a8f0
0033a8d4  04 00 a0 e1                                      mov r0, r4
0033a8d8  00 40 90 e5                                      ldr r4, [r0]
0033a8dc  14 10 a0 e3                                      mov r1, #0x14
0033a8e0  86 39 0f eb                                      bl #0x708f00
0033a8e4  05 00 54 e1                                      cmp r4, r5
0033a8e8  f9 ff ff 1a                                      bne #0x33a8d4
0033a8ec  05 00 a0 e1                                      mov r0, r5
0033a8f0  04 00 86 e5                                      str r0, [r6, #4]
0033a8f4  04 00 85 e5                                      str r0, [r5, #4]
0033a8f8  06 00 a0 e1                                      mov r0, r6
0033a8fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0033a900  f4 a1 65 00 3c 0b 00 00                          .byte 0xf4, 0xa1, 0x65, 0x00, 0x3c, 0x0b, 0x00, 0x00

; FUNCTION 0x0033a908, declared_size=28, range_size=28, mode=arm
; class-group: StateMachine
; alias: _ZN12StateMachineD0Ev
; demangled: StateMachine::~StateMachine()
; decoder-mode: arm
0033a908  10 40 2d e9                                      push {r4, lr}
0033a90c  00 40 a0 e1                                      mov r4, r0
0033a910  de ff ff eb                                      bl #0x33a890
0033a914  04 00 a0 e1                                      mov r0, r4
0033a918  c8 56 ff eb                                      bl #0x310440
0033a91c  04 00 a0 e1                                      mov r0, r4
0033a920  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0033a924, declared_size=120, range_size=120, mode=arm
; class-group: StateMachine
; alias: _ZN12StateMachineD2Ev
; demangled: StateMachine::~StateMachine()
; decoder-mode: arm
0033a924  68 30 9f e5                                      ldr r3, [pc, #0x68]
0033a928  68 20 9f e5                                      ldr r2, [pc, #0x68]
0033a92c  70 40 2d e9                                      push {r4, r5, r6, lr}
0033a930  03 30 8f e0                                      add r3, pc, r3
0033a934  02 20 93 e7                                      ldr r2, [r3, r2]
0033a938  00 40 a0 e1                                      mov r4, r0
0033a93c  00 60 a0 e1                                      mov r6, r0
0033a940  08 20 82 e2                                      add r2, r2, #8
0033a944  0c 20 84 e4                                      str r2, [r4], #0xc
0033a948  04 50 80 e2                                      add r5, r0, #4
0033a94c  af fe ff eb                                      bl #0x33a410
0033a950  04 00 a0 e1                                      mov r0, r4
0033a954  bd ff ff eb                                      bl #0x33a850
0033a958  04 00 96 e5                                      ldr r0, [r6, #4]
0033a95c  05 00 50 e1                                      cmp r0, r5
0033a960  01 00 00 1a                                      bne #0x33a96c
0033a964  06 00 00 ea                                      b #0x33a984
0033a968  04 00 a0 e1                                      mov r0, r4
0033a96c  00 40 90 e5                                      ldr r4, [r0]
0033a970  14 10 a0 e3                                      mov r1, #0x14
0033a974  61 39 0f eb                                      bl #0x708f00
0033a978  05 00 54 e1                                      cmp r4, r5
0033a97c  f9 ff ff 1a                                      bne #0x33a968
0033a980  05 00 a0 e1                                      mov r0, r5
0033a984  04 00 86 e5                                      str r0, [r6, #4]
0033a988  04 00 85 e5                                      str r0, [r5, #4]
0033a98c  06 00 a0 e1                                      mov r0, r6
0033a990  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0033a994  60 a1 65 00 3c 0b 00 00                          .byte 0x60, 0xa1, 0x65, 0x00, 0x3c, 0x0b, 0x00, 0x00
