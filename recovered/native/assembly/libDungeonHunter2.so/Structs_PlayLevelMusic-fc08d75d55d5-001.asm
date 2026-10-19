; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c7110, declared_size=52, range_size=52, mode=arm
; class-group: Structs::PlayLevelMusic
; alias: _ZN7Structs14PlayLevelMusicD2Ev
; demangled: Structs::PlayLevelMusic::~PlayLevelMusic()
; decoder-mode: arm
004c7110  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7114  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7118  10 40 2d e9                                      push {r4, lr}
004c711c  03 30 8f e0                                      add r3, pc, r3
004c7120  02 20 93 e7                                      ldr r2, [r3, r2]
004c7124  00 40 a0 e1                                      mov r4, r0
004c7128  08 20 82 e2                                      add r2, r2, #8
004c712c  00 20 80 e5                                      str r2, [r0]
004c7130  ca fe ff eb                                      bl #0x4c6c60
004c7134  04 00 a0 e1                                      mov r0, r4
004c7138  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c713c  74 d9 4c 00 00 36 00 00                          .byte 0x74, 0xd9, 0x4c, 0x00, 0x00, 0x36, 0x00, 0x00

; FUNCTION 0x004c7144, declared_size=52, range_size=52, mode=arm
; class-group: Structs::PlayLevelMusic
; alias: _ZN7Structs14PlayLevelMusicD1Ev
; demangled: Structs::PlayLevelMusic::~PlayLevelMusic()
; decoder-mode: arm
004c7144  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7148  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c714c  10 40 2d e9                                      push {r4, lr}
004c7150  03 30 8f e0                                      add r3, pc, r3
004c7154  02 20 93 e7                                      ldr r2, [r3, r2]
004c7158  00 40 a0 e1                                      mov r4, r0
004c715c  08 20 82 e2                                      add r2, r2, #8
004c7160  00 20 80 e5                                      str r2, [r0]
004c7164  bd fe ff eb                                      bl #0x4c6c60
004c7168  04 00 a0 e1                                      mov r0, r4
004c716c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7170  40 d9 4c 00 00 36 00 00                          .byte 0x40, 0xd9, 0x4c, 0x00, 0x00, 0x36, 0x00, 0x00

; FUNCTION 0x004c7178, declared_size=4, range_size=4, mode=arm
; class-group: Structs::PlayLevelMusic
; alias: _ZN7Structs14PlayLevelMusic8finalizeEv
; demangled: Structs::PlayLevelMusic::finalize()
; decoder-mode: arm
004c7178  ba fe ff ea                                      b #0x4c6c68

; FUNCTION 0x004ce010, declared_size=28, range_size=28, mode=arm
; class-group: Structs::PlayLevelMusic
; alias: _ZN7Structs14PlayLevelMusicD0Ev
; demangled: Structs::PlayLevelMusic::~PlayLevelMusic()
; decoder-mode: arm
004ce010  10 40 2d e9                                      push {r4, lr}
004ce014  00 40 a0 e1                                      mov r4, r0
004ce018  49 e4 ff eb                                      bl #0x4c7144
004ce01c  04 00 a0 e1                                      mov r0, r4
004ce020  06 09 f9 eb                                      bl #0x310440
004ce024  04 00 a0 e1                                      mov r0, r4
004ce028  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0050336c, declared_size=120, range_size=120, mode=arm
; class-group: Structs::PlayLevelMusic
; alias: _ZN7Structs14PlayLevelMusic4readEP11IStreamBase
; demangled: Structs::PlayLevelMusic::read(IStreamBase*)
; decoder-mode: arm
0050336c  30 40 2d e9                                      push {r4, r5, lr}
00503370  00 40 a0 e1                                      mov r4, r0
00503374  0c d0 4d e2                                      sub sp, sp, #0xc
00503378  01 50 a0 e1                                      mov r5, r1
0050337c  29 f1 ff eb                                      bl #0x4ff828
00503380  05 00 a0 e1                                      mov r0, r5
00503384  08 10 84 e2                                      add r1, r4, #8
00503388  40 57 fd eb                                      bl #0x459090
0050338c  01 30 a0 e3                                      mov r3, #1
00503390  00 00 53 e3                                      cmp r3, #0
00503394  04 30 8d e5                                      str r3, [sp, #4]
00503398  0f 00 00 1a                                      bne #0x5033dc
0050339c  0a 30 84 e2                                      add r3, r4, #0xa
005033a0  09 40 84 e2                                      add r4, r4, #9
005033a4  01 10 d3 e5                                      ldrb r1, [r3, #1]
005033a8  01 20 54 e5                                      ldrb r2, [r4, #-1]
005033ac  03 00 54 e1                                      cmp r4, r3
005033b0  02 20 21 e0                                      eor r2, r1, r2
005033b4  01 20 44 e5                                      strb r2, [r4, #-1]
005033b8  01 10 d3 e5                                      ldrb r1, [r3, #1]
005033bc  01 20 22 e0                                      eor r2, r2, r1
005033c0  01 20 c3 e5                                      strb r2, [r3, #1]
005033c4  01 10 54 e5                                      ldrb r1, [r4, #-1]
005033c8  01 30 43 e2                                      sub r3, r3, #1
005033cc  01 20 22 e0                                      eor r2, r2, r1
005033d0  01 20 44 e5                                      strb r2, [r4, #-1]
005033d4  01 40 84 e2                                      add r4, r4, #1
005033d8  f1 ff ff 3a                                      blo #0x5033a4
005033dc  0c d0 8d e2                                      add sp, sp, #0xc
005033e0  30 80 bd e8                                      pop {r4, r5, pc}
