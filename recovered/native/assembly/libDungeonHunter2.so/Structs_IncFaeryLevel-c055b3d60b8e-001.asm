; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c7398, declared_size=52, range_size=52, mode=arm
; class-group: Structs::IncFaeryLevel
; alias: _ZN7Structs13IncFaeryLevelD2Ev
; demangled: Structs::IncFaeryLevel::~IncFaeryLevel()
; decoder-mode: arm
004c7398  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c739c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c73a0  10 40 2d e9                                      push {r4, lr}
004c73a4  03 30 8f e0                                      add r3, pc, r3
004c73a8  02 20 93 e7                                      ldr r2, [r3, r2]
004c73ac  00 40 a0 e1                                      mov r4, r0
004c73b0  08 20 82 e2                                      add r2, r2, #8
004c73b4  00 20 80 e5                                      str r2, [r0]
004c73b8  28 fe ff eb                                      bl #0x4c6c60
004c73bc  04 00 a0 e1                                      mov r0, r4
004c73c0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c73c4  ec d6 4c 00 c0 1e 00 00                          .byte 0xec, 0xd6, 0x4c, 0x00, 0xc0, 0x1e, 0x00, 0x00

; FUNCTION 0x004c73cc, declared_size=52, range_size=52, mode=arm
; class-group: Structs::IncFaeryLevel
; alias: _ZN7Structs13IncFaeryLevelD1Ev
; demangled: Structs::IncFaeryLevel::~IncFaeryLevel()
; decoder-mode: arm
004c73cc  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c73d0  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c73d4  10 40 2d e9                                      push {r4, lr}
004c73d8  03 30 8f e0                                      add r3, pc, r3
004c73dc  02 20 93 e7                                      ldr r2, [r3, r2]
004c73e0  00 40 a0 e1                                      mov r4, r0
004c73e4  08 20 82 e2                                      add r2, r2, #8
004c73e8  00 20 80 e5                                      str r2, [r0]
004c73ec  1b fe ff eb                                      bl #0x4c6c60
004c73f0  04 00 a0 e1                                      mov r0, r4
004c73f4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c73f8  b8 d6 4c 00 c0 1e 00 00                          .byte 0xb8, 0xd6, 0x4c, 0x00, 0xc0, 0x1e, 0x00, 0x00

; FUNCTION 0x004c7400, declared_size=4, range_size=4, mode=arm
; class-group: Structs::IncFaeryLevel
; alias: _ZN7Structs13IncFaeryLevel8finalizeEv
; demangled: Structs::IncFaeryLevel::finalize()
; decoder-mode: arm
004c7400  18 fe ff ea                                      b #0x4c6c68

; FUNCTION 0x004cdf68, declared_size=28, range_size=28, mode=arm
; class-group: Structs::IncFaeryLevel
; alias: _ZN7Structs13IncFaeryLevelD0Ev
; demangled: Structs::IncFaeryLevel::~IncFaeryLevel()
; decoder-mode: arm
004cdf68  10 40 2d e9                                      push {r4, lr}
004cdf6c  00 40 a0 e1                                      mov r4, r0
004cdf70  15 e5 ff eb                                      bl #0x4c73cc
004cdf74  04 00 a0 e1                                      mov r0, r4
004cdf78  30 09 f9 eb                                      bl #0x310440
004cdf7c  04 00 a0 e1                                      mov r0, r4
004cdf80  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00503130, declared_size=120, range_size=120, mode=arm
; class-group: Structs::IncFaeryLevel
; alias: _ZN7Structs13IncFaeryLevel4readEP11IStreamBase
; demangled: Structs::IncFaeryLevel::read(IStreamBase*)
; decoder-mode: arm
00503130  30 40 2d e9                                      push {r4, r5, lr}
00503134  00 40 a0 e1                                      mov r4, r0
00503138  0c d0 4d e2                                      sub sp, sp, #0xc
0050313c  01 50 a0 e1                                      mov r5, r1
00503140  b8 f1 ff eb                                      bl #0x4ff828
00503144  05 00 a0 e1                                      mov r0, r5
00503148  08 10 84 e2                                      add r1, r4, #8
0050314c  cf 57 fd eb                                      bl #0x459090
00503150  01 30 a0 e3                                      mov r3, #1
00503154  00 00 53 e3                                      cmp r3, #0
00503158  04 30 8d e5                                      str r3, [sp, #4]
0050315c  0f 00 00 1a                                      bne #0x5031a0
00503160  0a 30 84 e2                                      add r3, r4, #0xa
00503164  09 40 84 e2                                      add r4, r4, #9
00503168  01 10 d3 e5                                      ldrb r1, [r3, #1]
0050316c  01 20 54 e5                                      ldrb r2, [r4, #-1]
00503170  03 00 54 e1                                      cmp r4, r3
00503174  02 20 21 e0                                      eor r2, r1, r2
00503178  01 20 44 e5                                      strb r2, [r4, #-1]
0050317c  01 10 d3 e5                                      ldrb r1, [r3, #1]
00503180  01 20 22 e0                                      eor r2, r2, r1
00503184  01 20 c3 e5                                      strb r2, [r3, #1]
00503188  01 10 54 e5                                      ldrb r1, [r4, #-1]
0050318c  01 30 43 e2                                      sub r3, r3, #1
00503190  01 20 22 e0                                      eor r2, r2, r1
00503194  01 20 44 e5                                      strb r2, [r4, #-1]
00503198  01 40 84 e2                                      add r4, r4, #1
0050319c  f1 ff ff 3a                                      blo #0x503168
005031a0  0c d0 8d e2                                      add sp, sp, #0xc
005031a4  30 80 bd e8                                      pop {r4, r5, pc}
