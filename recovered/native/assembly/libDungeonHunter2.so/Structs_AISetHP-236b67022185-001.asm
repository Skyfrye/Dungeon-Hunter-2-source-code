; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c74dc, declared_size=52, range_size=52, mode=arm
; class-group: Structs::AISetHP
; alias: _ZN7Structs7AISetHPD2Ev
; demangled: Structs::AISetHP::~AISetHP()
; decoder-mode: arm
004c74dc  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c74e0  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c74e4  10 40 2d e9                                      push {r4, lr}
004c74e8  03 30 8f e0                                      add r3, pc, r3
004c74ec  02 20 93 e7                                      ldr r2, [r3, r2]
004c74f0  00 40 a0 e1                                      mov r4, r0
004c74f4  08 20 82 e2                                      add r2, r2, #8
004c74f8  00 20 80 e5                                      str r2, [r0]
004c74fc  d7 fd ff eb                                      bl #0x4c6c60
004c7500  04 00 a0 e1                                      mov r0, r4
004c7504  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7508  a8 d5 4c 00 38 15 00 00                          .byte 0xa8, 0xd5, 0x4c, 0x00, 0x38, 0x15, 0x00, 0x00

; FUNCTION 0x004c7510, declared_size=52, range_size=52, mode=arm
; class-group: Structs::AISetHP
; alias: _ZN7Structs7AISetHPD1Ev
; demangled: Structs::AISetHP::~AISetHP()
; decoder-mode: arm
004c7510  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7514  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7518  10 40 2d e9                                      push {r4, lr}
004c751c  03 30 8f e0                                      add r3, pc, r3
004c7520  02 20 93 e7                                      ldr r2, [r3, r2]
004c7524  00 40 a0 e1                                      mov r4, r0
004c7528  08 20 82 e2                                      add r2, r2, #8
004c752c  00 20 80 e5                                      str r2, [r0]
004c7530  ca fd ff eb                                      bl #0x4c6c60
004c7534  04 00 a0 e1                                      mov r0, r4
004c7538  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c753c  74 d5 4c 00 38 15 00 00                          .byte 0x74, 0xd5, 0x4c, 0x00, 0x38, 0x15, 0x00, 0x00

; FUNCTION 0x004c7544, declared_size=4, range_size=4, mode=arm
; class-group: Structs::AISetHP
; alias: _ZN7Structs7AISetHP8finalizeEv
; demangled: Structs::AISetHP::finalize()
; decoder-mode: arm
004c7544  c7 fd ff ea                                      b #0x4c6c68

; FUNCTION 0x004cdf14, declared_size=28, range_size=28, mode=arm
; class-group: Structs::AISetHP
; alias: _ZN7Structs7AISetHPD0Ev
; demangled: Structs::AISetHP::~AISetHP()
; decoder-mode: arm
004cdf14  10 40 2d e9                                      push {r4, lr}
004cdf18  00 40 a0 e1                                      mov r4, r0
004cdf1c  7b e5 ff eb                                      bl #0x4c7510
004cdf20  04 00 a0 e1                                      mov r0, r4
004cdf24  45 09 f9 eb                                      bl #0x310440
004cdf28  04 00 a0 e1                                      mov r0, r4
004cdf2c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005030b8, declared_size=120, range_size=120, mode=arm
; class-group: Structs::AISetHP
; alias: _ZN7Structs7AISetHP4readEP11IStreamBase
; demangled: Structs::AISetHP::read(IStreamBase*)
; decoder-mode: arm
005030b8  30 40 2d e9                                      push {r4, r5, lr}
005030bc  00 40 a0 e1                                      mov r4, r0
005030c0  0c d0 4d e2                                      sub sp, sp, #0xc
005030c4  01 50 a0 e1                                      mov r5, r1
005030c8  d6 f1 ff eb                                      bl #0x4ff828
005030cc  05 00 a0 e1                                      mov r0, r5
005030d0  08 10 84 e2                                      add r1, r4, #8
005030d4  ed 57 fd eb                                      bl #0x459090
005030d8  01 30 a0 e3                                      mov r3, #1
005030dc  00 00 53 e3                                      cmp r3, #0
005030e0  04 30 8d e5                                      str r3, [sp, #4]
005030e4  0f 00 00 1a                                      bne #0x503128
005030e8  0a 30 84 e2                                      add r3, r4, #0xa
005030ec  09 40 84 e2                                      add r4, r4, #9
005030f0  01 10 d3 e5                                      ldrb r1, [r3, #1]
005030f4  01 20 54 e5                                      ldrb r2, [r4, #-1]
005030f8  03 00 54 e1                                      cmp r4, r3
005030fc  02 20 21 e0                                      eor r2, r1, r2
00503100  01 20 44 e5                                      strb r2, [r4, #-1]
00503104  01 10 d3 e5                                      ldrb r1, [r3, #1]
00503108  01 20 22 e0                                      eor r2, r2, r1
0050310c  01 20 c3 e5                                      strb r2, [r3, #1]
00503110  01 10 54 e5                                      ldrb r1, [r4, #-1]
00503114  01 30 43 e2                                      sub r3, r3, #1
00503118  01 20 22 e0                                      eor r2, r2, r1
0050311c  01 20 44 e5                                      strb r2, [r4, #-1]
00503120  01 40 84 e2                                      add r4, r4, #1
00503124  f1 ff ff 3a                                      blo #0x5030f0
00503128  0c d0 8d e2                                      add sp, sp, #0xc
0050312c  30 80 bd e8                                      pop {r4, r5, pc}
