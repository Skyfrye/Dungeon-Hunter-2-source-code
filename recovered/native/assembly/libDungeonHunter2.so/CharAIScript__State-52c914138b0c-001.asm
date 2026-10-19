; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003d91b8, declared_size=48, range_size=48, mode=arm
; class-group: CharAIScript::_State
; alias: _ZN12CharAIScript6_StateD1Ev
; demangled: CharAIScript::_State::~_State()
; decoder-mode: arm
003d91b8  10 40 2d e9                                      push {r4, lr}
003d91bc  00 40 a0 e1                                      mov r4, r0
003d91c0  48 00 80 e2                                      add r0, r0, #0x48
003d91c4  22 fc fc eb                                      bl #0x318254
003d91c8  30 00 84 e2                                      add r0, r4, #0x30
003d91cc  20 fc fc eb                                      bl #0x318254
003d91d0  18 00 84 e2                                      add r0, r4, #0x18
003d91d4  1e fc fc eb                                      bl #0x318254
003d91d8  04 00 a0 e1                                      mov r0, r4
003d91dc  1c fc fc eb                                      bl #0x318254
003d91e0  04 00 a0 e1                                      mov r0, r4
003d91e4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d9648, declared_size=60, range_size=60, mode=arm
; class-group: CharAIScript::_State
; alias: _ZN12CharAIScript6_StateC1ERKS0_
; demangled: CharAIScript::_State::_State(CharAIScript::_State const&)
; decoder-mode: arm
003d9648  70 40 2d e9                                      push {r4, r5, r6, lr}
003d964c  00 40 a0 e1                                      mov r4, r0
003d9650  01 50 a0 e1                                      mov r5, r1
003d9654  af 48 fd eb                                      bl #0x32b918
003d9658  18 10 85 e2                                      add r1, r5, #0x18
003d965c  18 00 84 e2                                      add r0, r4, #0x18
003d9660  ac 48 fd eb                                      bl #0x32b918
003d9664  30 10 85 e2                                      add r1, r5, #0x30
003d9668  30 00 84 e2                                      add r0, r4, #0x30
003d966c  a9 48 fd eb                                      bl #0x32b918
003d9670  48 10 85 e2                                      add r1, r5, #0x48
003d9674  48 00 84 e2                                      add r0, r4, #0x48
003d9678  a6 48 fd eb                                      bl #0x32b918
003d967c  04 00 a0 e1                                      mov r0, r4
003d9680  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003d9684, declared_size=140, range_size=140, mode=arm
; class-group: CharAIScript::_State
; alias: _ZN12CharAIScript6_StateC1Ev
; demangled: CharAIScript::_State::_State()
; decoder-mode: arm
003d9684  70 40 2d e9                                      push {r4, r5, r6, lr}
003d9688  00 40 a0 e1                                      mov r4, r0
003d968c  10 00 84 e5                                      str r0, [r4, #0x10]
003d9690  14 00 84 e5                                      str r0, [r4, #0x14]
003d9694  10 10 a0 e3                                      mov r1, #0x10
003d9698  f7 df fc eb                                      bl #0x31167c
003d969c  10 20 94 e5                                      ldr r2, [r4, #0x10]
003d96a0  18 30 84 e2                                      add r3, r4, #0x18
003d96a4  00 50 a0 e3                                      mov r5, #0
003d96a8  00 50 c2 e5                                      strb r5, [r2]
003d96ac  03 00 a0 e1                                      mov r0, r3
003d96b0  28 30 84 e5                                      str r3, [r4, #0x28]
003d96b4  2c 30 84 e5                                      str r3, [r4, #0x2c]
003d96b8  10 10 a0 e3                                      mov r1, #0x10
003d96bc  ee df fc eb                                      bl #0x31167c
003d96c0  28 20 94 e5                                      ldr r2, [r4, #0x28]
003d96c4  30 30 84 e2                                      add r3, r4, #0x30
003d96c8  03 00 a0 e1                                      mov r0, r3
003d96cc  00 50 c2 e5                                      strb r5, [r2]
003d96d0  10 10 a0 e3                                      mov r1, #0x10
003d96d4  40 30 84 e5                                      str r3, [r4, #0x40]
003d96d8  44 30 84 e5                                      str r3, [r4, #0x44]
003d96dc  e6 df fc eb                                      bl #0x31167c
003d96e0  40 20 94 e5                                      ldr r2, [r4, #0x40]
003d96e4  48 30 84 e2                                      add r3, r4, #0x48
003d96e8  03 00 a0 e1                                      mov r0, r3
003d96ec  00 50 c2 e5                                      strb r5, [r2]
003d96f0  10 10 a0 e3                                      mov r1, #0x10
003d96f4  58 30 84 e5                                      str r3, [r4, #0x58]
003d96f8  5c 30 84 e5                                      str r3, [r4, #0x5c]
003d96fc  de df fc eb                                      bl #0x31167c
003d9700  58 30 94 e5                                      ldr r3, [r4, #0x58]
003d9704  04 00 a0 e1                                      mov r0, r4
003d9708  00 50 c3 e5                                      strb r5, [r3]
003d970c  70 80 bd e8                                      pop {r4, r5, r6, pc}
