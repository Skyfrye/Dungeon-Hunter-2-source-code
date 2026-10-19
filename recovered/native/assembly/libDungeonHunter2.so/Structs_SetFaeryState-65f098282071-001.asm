; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c732c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SetFaeryState
; alias: _ZN7Structs13SetFaeryStateD2Ev
; demangled: Structs::SetFaeryState::~SetFaeryState()
; decoder-mode: arm
004c732c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7330  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7334  10 40 2d e9                                      push {r4, lr}
004c7338  03 30 8f e0                                      add r3, pc, r3
004c733c  02 20 93 e7                                      ldr r2, [r3, r2]
004c7340  00 40 a0 e1                                      mov r4, r0
004c7344  08 20 82 e2                                      add r2, r2, #8
004c7348  00 20 80 e5                                      str r2, [r0]
004c734c  43 fe ff eb                                      bl #0x4c6c60
004c7350  04 00 a0 e1                                      mov r0, r4
004c7354  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7358  58 d7 4c 00 9c 20 00 00                          .byte 0x58, 0xd7, 0x4c, 0x00, 0x9c, 0x20, 0x00, 0x00

; FUNCTION 0x004c7360, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SetFaeryState
; alias: _ZN7Structs13SetFaeryStateD1Ev
; demangled: Structs::SetFaeryState::~SetFaeryState()
; decoder-mode: arm
004c7360  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7364  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7368  10 40 2d e9                                      push {r4, lr}
004c736c  03 30 8f e0                                      add r3, pc, r3
004c7370  02 20 93 e7                                      ldr r2, [r3, r2]
004c7374  00 40 a0 e1                                      mov r4, r0
004c7378  08 20 82 e2                                      add r2, r2, #8
004c737c  00 20 80 e5                                      str r2, [r0]
004c7380  36 fe ff eb                                      bl #0x4c6c60
004c7384  04 00 a0 e1                                      mov r0, r4
004c7388  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c738c  24 d7 4c 00 9c 20 00 00                          .byte 0x24, 0xd7, 0x4c, 0x00, 0x9c, 0x20, 0x00, 0x00

; FUNCTION 0x004c7394, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SetFaeryState
; alias: _ZN7Structs13SetFaeryState8finalizeEv
; demangled: Structs::SetFaeryState::finalize()
; decoder-mode: arm
004c7394  33 fe ff ea                                      b #0x4c6c68

; FUNCTION 0x004cdf84, declared_size=28, range_size=28, mode=arm
; class-group: Structs::SetFaeryState
; alias: _ZN7Structs13SetFaeryStateD0Ev
; demangled: Structs::SetFaeryState::~SetFaeryState()
; decoder-mode: arm
004cdf84  10 40 2d e9                                      push {r4, lr}
004cdf88  00 40 a0 e1                                      mov r4, r0
004cdf8c  f3 e4 ff eb                                      bl #0x4c7360
004cdf90  04 00 a0 e1                                      mov r0, r4
004cdf94  29 09 f9 eb                                      bl #0x310440
004cdf98  04 00 a0 e1                                      mov r0, r4
004cdf9c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005031a8, declared_size=212, range_size=212, mode=arm
; class-group: Structs::SetFaeryState
; alias: _ZN7Structs13SetFaeryState4readEP11IStreamBase
; demangled: Structs::SetFaeryState::read(IStreamBase*)
; decoder-mode: arm
005031a8  30 40 2d e9                                      push {r4, r5, lr}
005031ac  00 40 a0 e1                                      mov r4, r0
005031b0  0c d0 4d e2                                      sub sp, sp, #0xc
005031b4  01 50 a0 e1                                      mov r5, r1
005031b8  9a f1 ff eb                                      bl #0x4ff828
005031bc  05 00 a0 e1                                      mov r0, r5
005031c0  08 10 84 e2                                      add r1, r4, #8
005031c4  b1 57 fd eb                                      bl #0x459090
005031c8  01 30 a0 e3                                      mov r3, #1
005031cc  00 00 53 e3                                      cmp r3, #0
005031d0  04 30 8d e5                                      str r3, [sp, #4]
005031d4  0f 00 00 1a                                      bne #0x503218
005031d8  09 30 84 e2                                      add r3, r4, #9
005031dc  0a 20 84 e2                                      add r2, r4, #0xa
005031e0  01 00 d2 e5                                      ldrb r0, [r2, #1]
005031e4  01 10 53 e5                                      ldrb r1, [r3, #-1]
005031e8  02 00 53 e1                                      cmp r3, r2
005031ec  01 10 20 e0                                      eor r1, r0, r1
005031f0  01 10 43 e5                                      strb r1, [r3, #-1]
005031f4  01 00 d2 e5                                      ldrb r0, [r2, #1]
005031f8  00 10 21 e0                                      eor r1, r1, r0
005031fc  01 10 c2 e5                                      strb r1, [r2, #1]
00503200  01 00 53 e5                                      ldrb r0, [r3, #-1]
00503204  01 20 42 e2                                      sub r2, r2, #1
00503208  00 10 21 e0                                      eor r1, r1, r0
0050320c  01 10 43 e5                                      strb r1, [r3, #-1]
00503210  01 30 83 e2                                      add r3, r3, #1
00503214  f1 ff ff 3a                                      blo #0x5031e0
00503218  05 00 a0 e1                                      mov r0, r5
0050321c  0c 10 84 e2                                      add r1, r4, #0xc
00503220  9a 57 fd eb                                      bl #0x459090
00503224  01 30 a0 e3                                      mov r3, #1
00503228  00 00 53 e3                                      cmp r3, #0
0050322c  04 30 8d e5                                      str r3, [sp, #4]
00503230  0f 00 00 1a                                      bne #0x503274
00503234  0e 30 84 e2                                      add r3, r4, #0xe
00503238  0d 40 84 e2                                      add r4, r4, #0xd
0050323c  01 10 d3 e5                                      ldrb r1, [r3, #1]
00503240  01 20 54 e5                                      ldrb r2, [r4, #-1]
00503244  04 00 53 e1                                      cmp r3, r4
00503248  02 20 21 e0                                      eor r2, r1, r2
0050324c  01 20 44 e5                                      strb r2, [r4, #-1]
00503250  01 10 d3 e5                                      ldrb r1, [r3, #1]
00503254  01 20 22 e0                                      eor r2, r2, r1
00503258  01 20 c3 e5                                      strb r2, [r3, #1]
0050325c  01 10 54 e5                                      ldrb r1, [r4, #-1]
00503260  01 30 43 e2                                      sub r3, r3, #1
00503264  01 20 22 e0                                      eor r2, r2, r1
00503268  01 20 44 e5                                      strb r2, [r4, #-1]
0050326c  01 40 84 e2                                      add r4, r4, #1
00503270  f1 ff ff 8a                                      bhi #0x50323c
00503274  0c d0 8d e2                                      add sp, sp, #0xc
00503278  30 80 bd e8                                      pop {r4, r5, pc}
