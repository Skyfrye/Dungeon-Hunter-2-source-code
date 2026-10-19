; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00482870, declared_size=4, range_size=4, mode=arm
; class-group: Reward
; alias: _ZN6Reward7CompileEv
; demangled: Reward::Compile()
; decoder-mode: arm
00482870  1e ff 2f e1                                      bx lr

; FUNCTION 0x00482874, declared_size=12, range_size=12, mode=arm
; class-group: Reward
; alias: _ZN6Reward9GetParam1Ev
; demangled: Reward::GetParam1()
; decoder-mode: arm
00482874  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00482878  08 00 93 e5                                      ldr r0, [r3, #8]
0048287c  1e ff 2f e1                                      bx lr

; FUNCTION 0x004828e8, declared_size=4, range_size=4, mode=arm
; class-group: Reward
; alias: _ZN6RewardD2Ev
; demangled: Reward::~Reward()
; decoder-mode: arm
004828e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x004828ec, declared_size=4, range_size=4, mode=arm
; class-group: Reward
; alias: _ZN6RewardD1Ev
; demangled: Reward::~Reward()
; decoder-mode: arm
004828ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x00482b8c, declared_size=28, range_size=28, mode=arm
; class-group: Reward
; alias: _ZN6RewardD0Ev
; demangled: Reward::~Reward()
; decoder-mode: arm
00482b8c  10 40 2d e9                                      push {r4, lr}
00482b90  00 40 a0 e1                                      mov r4, r0
00482b94  54 ff ff eb                                      bl #0x4828ec
00482b98  04 00 a0 e1                                      mov r0, r4
00482b9c  27 36 fa eb                                      bl #0x310440
00482ba0  04 00 a0 e1                                      mov r0, r4
00482ba4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00482ca0, declared_size=112, range_size=112, mode=arm
; class-group: Reward
; alias: _ZN6RewardC1Ev
; demangled: Reward::Reward()
; decoder-mode: arm
00482ca0  54 30 9f e5                                      ldr r3, [pc, #0x54]
00482ca4  54 20 9f e5                                      ldr r2, [pc, #0x54]
00482ca8  54 10 9f e5                                      ldr r1, [pc, #0x54]
00482cac  03 30 8f e0                                      add r3, pc, r3
00482cb0  10 40 2d e9                                      push {r4, lr}
00482cb4  02 20 93 e7                                      ldr r2, [r3, r2]
00482cb8  01 10 93 e7                                      ldr r1, [r3, r1]
00482cbc  00 40 a0 e1                                      mov r4, r0
00482cc0  08 20 82 e2                                      add r2, r2, #8
00482cc4  00 20 80 e5                                      str r2, [r0]
00482cc8  2c 00 91 e5                                      ldr r0, [r1, #0x2c]
00482ccc  34 20 9f e5                                      ldr r2, [pc, #0x34]
00482cd0  34 10 9f e5                                      ldr r1, [pc, #0x34]
00482cd4  02 20 8f e0                                      add r2, pc, r2
00482cd8  01 10 8f e0                                      add r1, pc, r1
00482cdc  be 07 01 eb                                      bl #0x4c4bdc
00482ce0  00 30 a0 e3                                      mov r3, #0
00482ce4  04 00 84 e5                                      str r0, [r4, #4]
00482ce8  10 30 84 e5                                      str r3, [r4, #0x10]
00482cec  08 30 c4 e5                                      strb r3, [r4, #8]
00482cf0  0c 30 84 e5                                      str r3, [r4, #0xc]
00482cf4  04 00 a0 e1                                      mov r0, r4
00482cf8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00482cfc  e4 1d 51 00 40 12 00 00 f4 37 00 00 cc 79 45 00  .byte 0xe4, 0x1d, 0x51, 0x00, 0x40, 0x12, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xcc, 0x79, 0x45, 0x00
00482d0c  00 b7 44 00                                      .byte 0x00, 0xb7, 0x44, 0x00

; FUNCTION 0x00482d10, declared_size=112, range_size=112, mode=arm
; class-group: Reward
; alias: _ZN6RewardC2Ev
; demangled: Reward::Reward()
; decoder-mode: arm
00482d10  54 30 9f e5                                      ldr r3, [pc, #0x54]
00482d14  54 20 9f e5                                      ldr r2, [pc, #0x54]
00482d18  54 10 9f e5                                      ldr r1, [pc, #0x54]
00482d1c  03 30 8f e0                                      add r3, pc, r3
00482d20  10 40 2d e9                                      push {r4, lr}
00482d24  02 20 93 e7                                      ldr r2, [r3, r2]
00482d28  01 10 93 e7                                      ldr r1, [r3, r1]
00482d2c  00 40 a0 e1                                      mov r4, r0
00482d30  08 20 82 e2                                      add r2, r2, #8
00482d34  00 20 80 e5                                      str r2, [r0]
00482d38  2c 00 91 e5                                      ldr r0, [r1, #0x2c]
00482d3c  34 20 9f e5                                      ldr r2, [pc, #0x34]
00482d40  34 10 9f e5                                      ldr r1, [pc, #0x34]
00482d44  02 20 8f e0                                      add r2, pc, r2
00482d48  01 10 8f e0                                      add r1, pc, r1
00482d4c  a2 07 01 eb                                      bl #0x4c4bdc
00482d50  00 30 a0 e3                                      mov r3, #0
00482d54  04 00 84 e5                                      str r0, [r4, #4]
00482d58  10 30 84 e5                                      str r3, [r4, #0x10]
00482d5c  08 30 c4 e5                                      strb r3, [r4, #8]
00482d60  0c 30 84 e5                                      str r3, [r4, #0xc]
00482d64  04 00 a0 e1                                      mov r0, r4
00482d68  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00482d6c  74 1d 51 00 40 12 00 00 f4 37 00 00 5c 79 45 00  .byte 0x74, 0x1d, 0x51, 0x00, 0x40, 0x12, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x5c, 0x79, 0x45, 0x00
00482d7c  90 b6 44 00                                      .byte 0x90, 0xb6, 0x44, 0x00

; FUNCTION 0x00483278, declared_size=116, range_size=116, mode=arm
; class-group: Reward
; alias: _ZN6Reward34DBG_TraceDetailedRewardInformationEP7__sFILE
; demangled: Reward::DBG_TraceDetailedRewardInformation(__sFILE*)
; decoder-mode: arm
00483278  70 40 2d e9                                      push {r4, r5, r6, lr}
0048327c  00 60 a0 e1                                      mov r6, r0
00483280  50 00 9f e5                                      ldr r0, [pc, #0x50]
00483284  01 50 a0 e1                                      mov r5, r1
00483288  05 30 a0 e1                                      mov r3, r5
0048328c  01 10 a0 e3                                      mov r1, #1
00483290  22 20 a0 e3                                      mov r2, #0x22
00483294  00 00 8f e0                                      add r0, pc, r0
00483298  3c 40 9f e5                                      ldr r4, [pc, #0x3c]
0048329c  bd 2c fa eb                                      bl #0x30e598
004832a0  38 30 9f e5                                      ldr r3, [pc, #0x38]
004832a4  04 40 8f e0                                      add r4, pc, r4
004832a8  34 10 9f e5                                      ldr r1, [pc, #0x34]
004832ac  03 30 94 e7                                      ldr r3, [r4, r3]
004832b0  04 20 96 e5                                      ldr r2, [r6, #4]
004832b4  01 10 8f e0                                      add r1, pc, r1
004832b8  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
004832bc  11 06 01 eb                                      bl #0x4c4b08
004832c0  20 10 9f e5                                      ldr r1, [pc, #0x20]
004832c4  00 20 a0 e1                                      mov r2, r0
004832c8  05 00 a0 e1                                      mov r0, r5
004832cc  01 10 8f e0                                      add r1, pc, r1
004832d0  70 40 bd e8                                      pop {r4, r5, r6, lr}
004832d4  4a 2b fa ea                                      b #0x30e004
; mapping-symbol data/literal pool
004832d8  54 b2 44 00 ec 17 51 00 f4 37 00 00 24 b1 44 00  .byte 0x54, 0xb2, 0x44, 0x00, 0xec, 0x17, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x24, 0xb1, 0x44, 0x00
004832e8  8c aa 44 00                                      .byte 0x8c, 0xaa, 0x44, 0x00
