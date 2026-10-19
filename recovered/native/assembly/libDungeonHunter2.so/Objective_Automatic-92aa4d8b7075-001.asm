; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0047a1d8, declared_size=4, range_size=4, mode=arm
; class-group: Objective_Automatic
; alias: _ZNK19Objective_Automatic12GetPositionsER13Vector3DFList
; demangled: Objective_Automatic::GetPositions(Vector3DFList&) const
; decoder-mode: arm
0047a1d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0047a1dc, declared_size=4, range_size=4, mode=arm
; class-group: Objective_Automatic
; alias: _ZN19Objective_Automatic8RegisterEv
; demangled: Objective_Automatic::Register()
; decoder-mode: arm
0047a1dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0047a1e0, declared_size=4, range_size=4, mode=arm
; class-group: Objective_Automatic
; alias: _ZN19Objective_Automatic10UnregisterEv
; demangled: Objective_Automatic::Unregister()
; decoder-mode: arm
0047a1e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0047a864, declared_size=52, range_size=52, mode=arm
; class-group: Objective_Automatic
; alias: _ZN19Objective_AutomaticD1Ev
; demangled: Objective_Automatic::~Objective_Automatic()
; decoder-mode: arm
0047a864  24 30 9f e5                                      ldr r3, [pc, #0x24]
0047a868  24 20 9f e5                                      ldr r2, [pc, #0x24]
0047a86c  10 40 2d e9                                      push {r4, lr}
0047a870  03 30 8f e0                                      add r3, pc, r3
0047a874  02 20 93 e7                                      ldr r2, [r3, r2]
0047a878  00 40 a0 e1                                      mov r4, r0
0047a87c  08 20 82 e2                                      add r2, r2, #8
0047a880  00 20 80 e5                                      str r2, [r0]
0047a884  56 fe ff eb                                      bl #0x47a1e4
0047a888  04 00 a0 e1                                      mov r0, r4
0047a88c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047a890  20 a2 51 00 60 0b 00 00                          .byte 0x20, 0xa2, 0x51, 0x00, 0x60, 0x0b, 0x00, 0x00

; FUNCTION 0x0047b364, declared_size=120, range_size=120, mode=arm
; class-group: Objective_Automatic
; alias: _ZNK19Objective_Automatic37DBG_TraceDetailedObjectiveInformationEP7__sFILE
; demangled: Objective_Automatic::DBG_TraceDetailedObjectiveInformation(__sFILE*) const
; decoder-mode: arm
0047b364  70 40 2d e9                                      push {r4, r5, r6, lr}
0047b368  00 60 a0 e1                                      mov r6, r0
0047b36c  54 00 9f e5                                      ldr r0, [pc, #0x54]
0047b370  01 50 a0 e1                                      mov r5, r1
0047b374  05 30 a0 e1                                      mov r3, r5
0047b378  01 10 a0 e3                                      mov r1, #1
0047b37c  14 20 a0 e3                                      mov r2, #0x14
0047b380  00 00 8f e0                                      add r0, pc, r0
0047b384  40 40 9f e5                                      ldr r4, [pc, #0x40]
0047b388  82 4c fa eb                                      bl #0x30e598
0047b38c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0047b390  04 40 8f e0                                      add r4, pc, r4
0047b394  0c 20 96 e5                                      ldr r2, [r6, #0xc]
0047b398  03 30 94 e7                                      ldr r3, [r4, r3]
0047b39c  30 10 9f e5                                      ldr r1, [pc, #0x30]
0047b3a0  04 20 92 e5                                      ldr r2, [r2, #4]
0047b3a4  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
0047b3a8  01 10 8f e0                                      add r1, pc, r1
0047b3ac  d5 25 01 eb                                      bl #0x4c4b08
0047b3b0  20 10 9f e5                                      ldr r1, [pc, #0x20]
0047b3b4  00 20 a0 e1                                      mov r2, r0
0047b3b8  05 00 a0 e1                                      mov r0, r5
0047b3bc  01 10 8f e0                                      add r1, pc, r1
0047b3c0  70 40 bd e8                                      pop {r4, r5, r6, lr}
0047b3c4  0e 4b fa ea                                      b #0x30e004
; mapping-symbol data/literal pool
0047b3c8  c0 29 45 00 00 97 51 00 f4 37 00 00 c0 75 44 00  .byte 0xc0, 0x29, 0x45, 0x00, 0x00, 0x97, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc0, 0x75, 0x44, 0x00
0047b3d8  9c 29 45 00                                      .byte 0x9c, 0x29, 0x45, 0x00

; FUNCTION 0x0047bd80, declared_size=12, range_size=12, mode=arm
; class-group: Objective_Automatic
; alias: _ZN19Objective_Automatic7CompileEv
; demangled: Objective_Automatic::Compile()
; decoder-mode: arm
0047bd80  01 30 a0 e3                                      mov r3, #1
0047bd84  08 30 c0 e5                                      strb r3, [r0, #8]
0047bd88  20 ff ff ea                                      b #0x47ba10

; FUNCTION 0x0047c6b4, declared_size=60, range_size=60, mode=arm
; class-group: Objective_Automatic
; alias: _ZN19Objective_AutomaticD0Ev
; demangled: Objective_Automatic::~Objective_Automatic()
; decoder-mode: arm
0047c6b4  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0047c6b8  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0047c6bc  10 40 2d e9                                      push {r4, lr}
0047c6c0  03 30 8f e0                                      add r3, pc, r3
0047c6c4  02 20 93 e7                                      ldr r2, [r3, r2]
0047c6c8  00 40 a0 e1                                      mov r4, r0
0047c6cc  08 20 82 e2                                      add r2, r2, #8
0047c6d0  00 20 80 e5                                      str r2, [r0]
0047c6d4  c2 f6 ff eb                                      bl #0x47a1e4
0047c6d8  04 00 a0 e1                                      mov r0, r4
0047c6dc  57 4f fa eb                                      bl #0x310440
0047c6e0  04 00 a0 e1                                      mov r0, r4
0047c6e4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047c6e8  d0 83 51 00 60 0b 00 00                          .byte 0xd0, 0x83, 0x51, 0x00, 0x60, 0x0b, 0x00, 0x00
