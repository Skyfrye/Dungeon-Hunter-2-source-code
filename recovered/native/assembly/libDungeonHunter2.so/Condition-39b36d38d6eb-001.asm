; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00478634, declared_size=4, range_size=4, mode=arm
; class-group: Condition
; alias: _ZN9Condition7CompileEv
; demangled: Condition::Compile()
; decoder-mode: arm
00478634  1e ff 2f e1                                      bx lr

; FUNCTION 0x00478648, declared_size=44, range_size=44, mode=arm
; class-group: Condition
; alias: _ZN9ConditionC2Ev
; demangled: Condition::Condition()
; decoder-mode: arm
00478648  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
0047864c  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
00478650  00 c0 a0 e3                                      mov ip, #0
00478654  03 30 8f e0                                      add r3, pc, r3
00478658  02 20 93 e7                                      ldr r2, [r3, r2]
0047865c  04 c0 80 e5                                      str ip, [r0, #4]
00478660  08 20 82 e2                                      add r2, r2, #8
00478664  00 20 80 e5                                      str r2, [r0]
00478668  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0047866c  3c c4 51 00 ac 3c 00 00                          .byte 0x3c, 0xc4, 0x51, 0x00, 0xac, 0x3c, 0x00, 0x00

; FUNCTION 0x00478674, declared_size=44, range_size=44, mode=arm
; class-group: Condition
; alias: _ZN9ConditionC1Ev
; demangled: Condition::Condition()
; decoder-mode: arm
00478674  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00478678  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
0047867c  00 c0 a0 e3                                      mov ip, #0
00478680  03 30 8f e0                                      add r3, pc, r3
00478684  02 20 93 e7                                      ldr r2, [r3, r2]
00478688  04 c0 80 e5                                      str ip, [r0, #4]
0047868c  08 20 82 e2                                      add r2, r2, #8
00478690  00 20 80 e5                                      str r2, [r0]
00478694  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00478698  10 c4 51 00 ac 3c 00 00                          .byte 0x10, 0xc4, 0x51, 0x00, 0xac, 0x3c, 0x00, 0x00

; FUNCTION 0x004786a0, declared_size=4, range_size=4, mode=arm
; class-group: Condition
; alias: _ZN9ConditionD2Ev
; demangled: Condition::~Condition()
; decoder-mode: arm
004786a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x004786d8, declared_size=4, range_size=4, mode=arm
; class-group: Condition
; alias: _ZN9ConditionD1Ev
; demangled: Condition::~Condition()
; decoder-mode: arm
004786d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00478e90, declared_size=28, range_size=28, mode=arm
; class-group: Condition
; alias: _ZN9ConditionD0Ev
; demangled: Condition::~Condition()
; decoder-mode: arm
00478e90  10 40 2d e9                                      push {r4, lr}
00478e94  00 40 a0 e1                                      mov r4, r0
00478e98  0e fe ff eb                                      bl #0x4786d8
00478e9c  04 00 a0 e1                                      mov r0, r4
00478ea0  66 5d fa eb                                      bl #0x310440
00478ea4  04 00 a0 e1                                      mov r0, r4
00478ea8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00478fcc, declared_size=28, range_size=28, mode=arm
; class-group: Condition
; alias: _ZN9Condition37DBG_TraceDetailedConditionInformationEP7__sFILE
; demangled: Condition::DBG_TraceDetailedConditionInformation(__sFILE*)
; decoder-mode: arm
00478fcc  10 00 9f e5                                      ldr r0, [pc, #0x10]
00478fd0  01 30 a0 e1                                      mov r3, r1
00478fd4  25 20 a0 e3                                      mov r2, #0x25
00478fd8  00 00 8f e0                                      add r0, pc, r0
00478fdc  01 10 a0 e3                                      mov r1, #1
00478fe0  6c 55 fa ea                                      b #0x30e598
; mapping-symbol data/literal pool
00478fe4  20 4b 45 00                                      .byte 0x20, 0x4b, 0x45, 0x00
