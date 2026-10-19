; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0038324c, declared_size=4, range_size=4, mode=arm
; class-group: StateBase
; alias: _ZN9StateBaseD1Ev
; demangled: StateBase::~StateBase()
; decoder-mode: arm
0038324c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00383250, declared_size=4, range_size=4, mode=arm
; class-group: StateBase
; alias: _ZN9StateBase4CtorEPK12StateMachine
; demangled: StateBase::Ctor(StateMachine const*)
; decoder-mode: arm
00383250  1e ff 2f e1                                      bx lr

; FUNCTION 0x00383254, declared_size=4, range_size=4, mode=arm
; class-group: StateBase
; alias: _ZN9StateBase4DtorEPK12StateMachine
; demangled: StateBase::Dtor(StateMachine const*)
; decoder-mode: arm
00383254  1e ff 2f e1                                      bx lr

; FUNCTION 0x00383258, declared_size=4, range_size=4, mode=arm
; class-group: StateBase
; alias: _ZN9StateBase5PauseEPK12StateMachine
; demangled: StateBase::Pause(StateMachine const*)
; decoder-mode: arm
00383258  1e ff 2f e1                                      bx lr

; FUNCTION 0x0038325c, declared_size=4, range_size=4, mode=arm
; class-group: StateBase
; alias: _ZN9StateBase6ResumeEPK12StateMachine
; demangled: StateBase::Resume(StateMachine const*)
; decoder-mode: arm
0038325c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00383260, declared_size=4, range_size=4, mode=arm
; class-group: StateBase
; alias: _ZN9StateBase6UpdateEP12StateMachined
; demangled: StateBase::Update(StateMachine*, double)
; decoder-mode: arm
00383260  1e ff 2f e1                                      bx lr

; FUNCTION 0x00383264, declared_size=4, range_size=4, mode=arm
; class-group: StateBase
; alias: _ZN9StateBase4DrawEPK12StateMachine
; demangled: StateBase::Draw(StateMachine const*)
; decoder-mode: arm
00383264  1e ff 2f e1                                      bx lr

; FUNCTION 0x00383268, declared_size=4, range_size=4, mode=arm
; class-group: StateBase
; alias: _ZN9StateBase6Draw2DEPK12StateMachine
; demangled: StateBase::Draw2D(StateMachine const*)
; decoder-mode: arm
00383268  1e ff 2f e1                                      bx lr

; FUNCTION 0x0038326c, declared_size=4, range_size=4, mode=arm
; class-group: StateBase
; alias: _ZN9StateBase5SleepEPK12StateMachine
; demangled: StateBase::Sleep(StateMachine const*)
; decoder-mode: arm
0038326c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00383270, declared_size=4, range_size=4, mode=arm
; class-group: StateBase
; alias: _ZN9StateBase6WakeUpEPK12StateMachine
; demangled: StateBase::WakeUp(StateMachine const*)
; decoder-mode: arm
00383270  1e ff 2f e1                                      bx lr

; FUNCTION 0x003833b0, declared_size=52, range_size=52, mode=arm
; class-group: StateBase
; alias: _ZN9StateBaseD0Ev
; demangled: StateBase::~StateBase()
; decoder-mode: arm
003833b0  24 30 9f e5                                      ldr r3, [pc, #0x24]
003833b4  24 20 9f e5                                      ldr r2, [pc, #0x24]
003833b8  10 40 2d e9                                      push {r4, lr}
003833bc  03 30 8f e0                                      add r3, pc, r3
003833c0  02 20 93 e7                                      ldr r2, [r3, r2]
003833c4  00 40 a0 e1                                      mov r4, r0
003833c8  08 20 82 e2                                      add r2, r2, #8
003833cc  00 20 80 e5                                      str r2, [r0]
003833d0  1a 34 fe eb                                      bl #0x310440
003833d4  04 00 a0 e1                                      mov r0, r4
003833d8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003833dc  d4 16 61 00 c0 0d 00 00                          .byte 0xd4, 0x16, 0x61, 0x00, 0xc0, 0x0d, 0x00, 0x00
