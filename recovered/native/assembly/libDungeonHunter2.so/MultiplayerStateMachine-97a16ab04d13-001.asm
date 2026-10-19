; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a00d8, declared_size=32, range_size=32, mode=arm
; class-group: MultiplayerStateMachine
; alias: _ZN23MultiplayerStateMachine16initStateMachineEv
; demangled: MultiplayerStateMachine::initStateMachine()
; decoder-mode: arm
004a00d8  00 20 a0 e3                                      mov r2, #0
004a00dc  00 30 a0 e1                                      mov r3, r0
004a00e0  08 20 a3 e5                                      str r2, [r3, #8]!
004a00e4  00 10 e0 e3                                      mvn r1, #0
004a00e8  00 10 80 e5                                      str r1, [r0]
004a00ec  0c 30 80 e5                                      str r3, [r0, #0xc]
004a00f0  04 20 80 e5                                      str r2, [r0, #4]
004a00f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x004a00f8, declared_size=52, range_size=52, mode=arm
; class-group: MultiplayerStateMachine
; alias: _ZN23MultiplayerStateMachine29replaceStateEntryCallbackFuncEiPFiPvE
; demangled: MultiplayerStateMachine::replaceStateEntryCallbackFunc(int, int (*)(void*))
; decoder-mode: arm
004a00f8  08 30 90 e5                                      ldr r3, [r0, #8]
004a00fc  00 00 53 e3                                      cmp r3, #0
004a0100  03 00 00 1a                                      bne #0x4a0114
004a0104  1e ff 2f e1                                      bx lr
004a0108  0c 30 93 e5                                      ldr r3, [r3, #0xc]
004a010c  00 00 53 e3                                      cmp r3, #0
004a0110  04 00 00 0a                                      beq #0x4a0128
004a0114  04 00 93 e5                                      ldr r0, [r3, #4]
004a0118  01 00 50 e1                                      cmp r0, r1
004a011c  f9 ff ff 1a                                      bne #0x4a0108
004a0120  08 20 83 e5                                      str r2, [r3, #8]
004a0124  1e ff 2f e1                                      bx lr
004a0128  1e ff 2f e1                                      bx lr

; FUNCTION 0x004a012c, declared_size=56, range_size=56, mode=arm
; class-group: MultiplayerStateMachine
; alias: _ZN23MultiplayerStateMachine9skipStateEi
; demangled: MultiplayerStateMachine::skipState(int)
; decoder-mode: arm
004a012c  08 30 90 e5                                      ldr r3, [r0, #8]
004a0130  00 00 53 e3                                      cmp r3, #0
004a0134  03 00 00 1a                                      bne #0x4a0148
004a0138  1e ff 2f e1                                      bx lr
004a013c  0c 30 93 e5                                      ldr r3, [r3, #0xc]
004a0140  00 00 53 e3                                      cmp r3, #0
004a0144  05 00 00 0a                                      beq #0x4a0160
004a0148  04 20 93 e5                                      ldr r2, [r3, #4]
004a014c  01 00 52 e1                                      cmp r2, r1
004a0150  f9 ff ff 1a                                      bne #0x4a013c
004a0154  01 20 a0 e3                                      mov r2, #1
004a0158  00 20 c3 e5                                      strb r2, [r3]
004a015c  1e ff 2f e1                                      bx lr
004a0160  1e ff 2f e1                                      bx lr

; FUNCTION 0x004a0164, declared_size=120, range_size=120, mode=arm
; class-group: MultiplayerStateMachine
; alias: _ZN23MultiplayerStateMachine15runStateMachineEv
; demangled: MultiplayerStateMachine::runStateMachine()
; decoder-mode: arm
004a0164  70 40 2d e9                                      push {r4, r5, r6, lr}
004a0168  04 30 90 e5                                      ldr r3, [r0, #4]
004a016c  00 50 a0 e1                                      mov r5, r0
004a0170  00 00 53 e3                                      cmp r3, #0
004a0174  17 00 00 0a                                      beq #0x4a01d8
004a0178  00 30 90 e5                                      ldr r3, [r0]
004a017c  01 00 73 e3                                      cmn r3, #1
004a0180  14 00 00 0a                                      beq #0x4a01d8
004a0184  08 40 90 e5                                      ldr r4, [r0, #8]
004a0188  00 00 54 e3                                      cmp r4, #0
004a018c  04 00 00 1a                                      bne #0x4a01a4
004a0190  10 00 00 ea                                      b #0x4a01d8
004a0194  0c 40 94 e5                                      ldr r4, [r4, #0xc]
004a0198  00 00 54 e3                                      cmp r4, #0
004a019c  0d 00 00 0a                                      beq #0x4a01d8
004a01a0  00 30 95 e5                                      ldr r3, [r5]
004a01a4  04 20 94 e5                                      ldr r2, [r4, #4]
004a01a8  02 00 53 e1                                      cmp r3, r2
004a01ac  f8 ff ff 1a                                      bne #0x4a0194
004a01b0  00 00 d4 e5                                      ldrb r0, [r4]
004a01b4  00 00 50 e3                                      cmp r0, #0
004a01b8  f5 ff ff 1a                                      bne #0x4a0194
004a01bc  0f e0 a0 e1                                      mov lr, pc
004a01c0  08 f0 94 e5                                      ldr pc, [r4, #8]
004a01c4  00 00 50 e3                                      cmp r0, #0
004a01c8  00 00 85 a5                                      strge r0, [r5]
004a01cc  0c 40 94 e5                                      ldr r4, [r4, #0xc]
004a01d0  00 00 54 e3                                      cmp r4, #0
004a01d4  f1 ff ff 1a                                      bne #0x4a01a0
004a01d8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004a01dc, declared_size=120, range_size=120, mode=arm
; class-group: MultiplayerStateMachine
; alias: _ZN23MultiplayerStateMachine16removeStateEntryEi
; demangled: MultiplayerStateMachine::removeStateEntry(int)
; decoder-mode: arm
004a01dc  10 40 2d e9                                      push {r4, lr}
004a01e0  00 40 a0 e1                                      mov r4, r0
004a01e4  08 00 90 e5                                      ldr r0, [r0, #8]
004a01e8  00 00 50 e3                                      cmp r0, #0
004a01ec  17 00 00 0a                                      beq #0x4a0250
004a01f0  04 20 90 e5                                      ldr r2, [r0, #4]
004a01f4  0c 30 90 e5                                      ldr r3, [r0, #0xc]
004a01f8  01 00 52 e1                                      cmp r2, r1
004a01fc  06 00 00 0a                                      beq #0x4a021c
004a0200  00 00 53 e3                                      cmp r3, #0
004a0204  03 00 a0 e1                                      mov r0, r3
004a0208  10 00 00 0a                                      beq #0x4a0250
004a020c  04 20 90 e5                                      ldr r2, [r0, #4]
004a0210  0c 30 93 e5                                      ldr r3, [r3, #0xc]
004a0214  01 00 52 e1                                      cmp r2, r1
004a0218  f8 ff ff 1a                                      bne #0x4a0200
004a021c  00 00 53 e3                                      cmp r3, #0
004a0220  10 20 90 15                                      ldrne r2, [r0, #0x10]
004a0224  10 30 90 05                                      ldreq r3, [r0, #0x10]
004a0228  10 20 83 15                                      strne r2, [r3, #0x10]
004a022c  0c 30 84 05                                      streq r3, [r4, #0xc]
004a0230  10 30 90 e5                                      ldr r3, [r0, #0x10]
004a0234  0c 20 90 e5                                      ldr r2, [r0, #0xc]
004a0238  00 20 83 e5                                      str r2, [r3]
004a023c  2b b7 f9 eb                                      bl #0x30def0
004a0240  04 30 94 e5                                      ldr r3, [r4, #4]
004a0244  01 30 43 e2                                      sub r3, r3, #1
004a0248  04 30 84 e5                                      str r3, [r4, #4]
004a024c  10 80 bd e8                                      pop {r4, pc}
004a0250  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004a0254, declared_size=76, range_size=76, mode=arm
; class-group: MultiplayerStateMachine
; alias: _ZN23MultiplayerStateMachine19destroyStateMachineEv
; demangled: MultiplayerStateMachine::destroyStateMachine()
; decoder-mode: arm
004a0254  10 40 2d e9                                      push {r4, lr}
004a0258  00 40 a0 e1                                      mov r4, r0
004a025c  08 00 90 e5                                      ldr r0, [r0, #8]
004a0260  00 00 50 e3                                      cmp r0, #0
004a0264  0c 00 00 0a                                      beq #0x4a029c
004a0268  0c 30 90 e5                                      ldr r3, [r0, #0xc]
004a026c  00 00 53 e3                                      cmp r3, #0
004a0270  10 20 90 15                                      ldrne r2, [r0, #0x10]
004a0274  10 30 90 05                                      ldreq r3, [r0, #0x10]
004a0278  10 20 83 15                                      strne r2, [r3, #0x10]
004a027c  0c 30 84 05                                      streq r3, [r4, #0xc]
004a0280  10 30 90 e5                                      ldr r3, [r0, #0x10]
004a0284  0c 20 90 e5                                      ldr r2, [r0, #0xc]
004a0288  00 20 83 e5                                      str r2, [r3]
004a028c  17 b7 f9 eb                                      bl #0x30def0
004a0290  08 00 94 e5                                      ldr r0, [r4, #8]
004a0294  00 00 50 e3                                      cmp r0, #0
004a0298  f2 ff ff 1a                                      bne #0x4a0268
004a029c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004a02a0, declared_size=88, range_size=88, mode=arm
; class-group: MultiplayerStateMachine
; alias: _ZN23MultiplayerStateMachine13addStateEntryEiPFiPvEb
; demangled: MultiplayerStateMachine::addStateEntry(int, int (*)(void*), bool)
; decoder-mode: arm
004a02a0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a02a4  00 40 a0 e1                                      mov r4, r0
004a02a8  14 00 a0 e3                                      mov r0, #0x14
004a02ac  01 50 a0 e1                                      mov r5, r1
004a02b0  02 60 a0 e1                                      mov r6, r2
004a02b4  03 70 a0 e1                                      mov r7, r3
004a02b8  0d b9 f9 eb                                      bl #0x30e6f4
004a02bc  00 00 50 e3                                      cmp r0, #0
004a02c0  0b 00 00 0a                                      beq #0x4a02f4
004a02c4  00 30 a0 e3                                      mov r3, #0
004a02c8  00 70 c0 e5                                      strb r7, [r0]
004a02cc  60 00 80 e9                                      stmib r0, {r5, r6}
004a02d0  0c 30 80 e5                                      str r3, [r0, #0xc]
004a02d4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
004a02d8  0c 20 80 e2                                      add r2, r0, #0xc
004a02dc  10 30 80 e5                                      str r3, [r0, #0x10]
004a02e0  00 00 83 e5                                      str r0, [r3]
004a02e4  04 30 94 e5                                      ldr r3, [r4, #4]
004a02e8  0c 20 84 e5                                      str r2, [r4, #0xc]
004a02ec  01 30 83 e2                                      add r3, r3, #1
004a02f0  04 30 84 e5                                      str r3, [r4, #4]
004a02f4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
