; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c78a8, declared_size=52, range_size=52, mode=arm
; class-group: Structs::BlockSaveGame
; alias: _ZN7Structs13BlockSaveGameD2Ev
; demangled: Structs::BlockSaveGame::~BlockSaveGame()
; decoder-mode: arm
004c78a8  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c78ac  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c78b0  10 40 2d e9                                      push {r4, lr}
004c78b4  03 30 8f e0                                      add r3, pc, r3
004c78b8  02 20 93 e7                                      ldr r2, [r3, r2]
004c78bc  00 40 a0 e1                                      mov r4, r0
004c78c0  08 20 82 e2                                      add r2, r2, #8
004c78c4  00 20 80 e5                                      str r2, [r0]
004c78c8  e4 fc ff eb                                      bl #0x4c6c60
004c78cc  04 00 a0 e1                                      mov r0, r4
004c78d0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c78d4  dc d1 4c 00 8c 3a 00 00                          .byte 0xdc, 0xd1, 0x4c, 0x00, 0x8c, 0x3a, 0x00, 0x00

; FUNCTION 0x004c78dc, declared_size=52, range_size=52, mode=arm
; class-group: Structs::BlockSaveGame
; alias: _ZN7Structs13BlockSaveGameD1Ev
; demangled: Structs::BlockSaveGame::~BlockSaveGame()
; decoder-mode: arm
004c78dc  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c78e0  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c78e4  10 40 2d e9                                      push {r4, lr}
004c78e8  03 30 8f e0                                      add r3, pc, r3
004c78ec  02 20 93 e7                                      ldr r2, [r3, r2]
004c78f0  00 40 a0 e1                                      mov r4, r0
004c78f4  08 20 82 e2                                      add r2, r2, #8
004c78f8  00 20 80 e5                                      str r2, [r0]
004c78fc  d7 fc ff eb                                      bl #0x4c6c60
004c7900  04 00 a0 e1                                      mov r0, r4
004c7904  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7908  a8 d1 4c 00 8c 3a 00 00                          .byte 0xa8, 0xd1, 0x4c, 0x00, 0x8c, 0x3a, 0x00, 0x00

; FUNCTION 0x004c7910, declared_size=4, range_size=4, mode=arm
; class-group: Structs::BlockSaveGame
; alias: _ZN7Structs13BlockSaveGame8finalizeEv
; demangled: Structs::BlockSaveGame::finalize()
; decoder-mode: arm
004c7910  d4 fc ff ea                                      b #0x4c6c68

; FUNCTION 0x004cde18, declared_size=28, range_size=28, mode=arm
; class-group: Structs::BlockSaveGame
; alias: _ZN7Structs13BlockSaveGameD0Ev
; demangled: Structs::BlockSaveGame::~BlockSaveGame()
; decoder-mode: arm
004cde18  10 40 2d e9                                      push {r4, lr}
004cde1c  00 40 a0 e1                                      mov r4, r0
004cde20  ad e6 ff eb                                      bl #0x4c78dc
004cde24  04 00 a0 e1                                      mov r0, r4
004cde28  84 09 f9 eb                                      bl #0x310440
004cde2c  04 00 a0 e1                                      mov r0, r4
004cde30  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ff8ac, declared_size=4, range_size=4, mode=arm
; class-group: Structs::BlockSaveGame
; alias: _ZN7Structs13BlockSaveGame4readEP11IStreamBase
; demangled: Structs::BlockSaveGame::read(IStreamBase*)
; decoder-mode: arm
004ff8ac  dd ff ff ea                                      b #0x4ff828
