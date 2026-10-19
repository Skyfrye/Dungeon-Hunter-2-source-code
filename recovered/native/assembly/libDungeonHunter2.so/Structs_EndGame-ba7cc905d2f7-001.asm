; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c768c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::EndGame
; alias: _ZN7Structs7EndGameD2Ev
; demangled: Structs::EndGame::~EndGame()
; decoder-mode: arm
004c768c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7690  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7694  10 40 2d e9                                      push {r4, lr}
004c7698  03 30 8f e0                                      add r3, pc, r3
004c769c  02 20 93 e7                                      ldr r2, [r3, r2]
004c76a0  00 40 a0 e1                                      mov r4, r0
004c76a4  08 20 82 e2                                      add r2, r2, #8
004c76a8  00 20 80 e5                                      str r2, [r0]
004c76ac  6b fd ff eb                                      bl #0x4c6c60
004c76b0  04 00 a0 e1                                      mov r0, r4
004c76b4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c76b8  f8 d3 4c 00 f0 2c 00 00                          .byte 0xf8, 0xd3, 0x4c, 0x00, 0xf0, 0x2c, 0x00, 0x00

; FUNCTION 0x004c76c0, declared_size=52, range_size=52, mode=arm
; class-group: Structs::EndGame
; alias: _ZN7Structs7EndGameD1Ev
; demangled: Structs::EndGame::~EndGame()
; decoder-mode: arm
004c76c0  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c76c4  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c76c8  10 40 2d e9                                      push {r4, lr}
004c76cc  03 30 8f e0                                      add r3, pc, r3
004c76d0  02 20 93 e7                                      ldr r2, [r3, r2]
004c76d4  00 40 a0 e1                                      mov r4, r0
004c76d8  08 20 82 e2                                      add r2, r2, #8
004c76dc  00 20 80 e5                                      str r2, [r0]
004c76e0  5e fd ff eb                                      bl #0x4c6c60
004c76e4  04 00 a0 e1                                      mov r0, r4
004c76e8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c76ec  c4 d3 4c 00 f0 2c 00 00                          .byte 0xc4, 0xd3, 0x4c, 0x00, 0xf0, 0x2c, 0x00, 0x00

; FUNCTION 0x004c76f4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::EndGame
; alias: _ZN7Structs7EndGame8finalizeEv
; demangled: Structs::EndGame::finalize()
; decoder-mode: arm
004c76f4  5b fd ff ea                                      b #0x4c6c68

; FUNCTION 0x004cdea4, declared_size=28, range_size=28, mode=arm
; class-group: Structs::EndGame
; alias: _ZN7Structs7EndGameD0Ev
; demangled: Structs::EndGame::~EndGame()
; decoder-mode: arm
004cdea4  10 40 2d e9                                      push {r4, lr}
004cdea8  00 40 a0 e1                                      mov r4, r0
004cdeac  03 e6 ff eb                                      bl #0x4c76c0
004cdeb0  04 00 a0 e1                                      mov r0, r4
004cdeb4  61 09 f9 eb                                      bl #0x310440
004cdeb8  04 00 a0 e1                                      mov r0, r4
004cdebc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ff8bc, declared_size=4, range_size=4, mode=arm
; class-group: Structs::EndGame
; alias: _ZN7Structs7EndGame4readEP11IStreamBase
; demangled: Structs::EndGame::read(IStreamBase*)
; decoder-mode: arm
004ff8bc  d9 ff ff ea                                      b #0x4ff828
