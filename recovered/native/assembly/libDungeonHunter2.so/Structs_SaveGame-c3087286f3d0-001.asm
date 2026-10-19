; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c783c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SaveGame
; alias: _ZN7Structs8SaveGameD2Ev
; demangled: Structs::SaveGame::~SaveGame()
; decoder-mode: arm
004c783c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7840  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7844  10 40 2d e9                                      push {r4, lr}
004c7848  03 30 8f e0                                      add r3, pc, r3
004c784c  02 20 93 e7                                      ldr r2, [r3, r2]
004c7850  00 40 a0 e1                                      mov r4, r0
004c7854  08 20 82 e2                                      add r2, r2, #8
004c7858  00 20 80 e5                                      str r2, [r0]
004c785c  ff fc ff eb                                      bl #0x4c6c60
004c7860  04 00 a0 e1                                      mov r0, r4
004c7864  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7868  48 d2 4c 00 a0 2d 00 00                          .byte 0x48, 0xd2, 0x4c, 0x00, 0xa0, 0x2d, 0x00, 0x00

; FUNCTION 0x004c7870, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SaveGame
; alias: _ZN7Structs8SaveGameD1Ev
; demangled: Structs::SaveGame::~SaveGame()
; decoder-mode: arm
004c7870  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7874  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7878  10 40 2d e9                                      push {r4, lr}
004c787c  03 30 8f e0                                      add r3, pc, r3
004c7880  02 20 93 e7                                      ldr r2, [r3, r2]
004c7884  00 40 a0 e1                                      mov r4, r0
004c7888  08 20 82 e2                                      add r2, r2, #8
004c788c  00 20 80 e5                                      str r2, [r0]
004c7890  f2 fc ff eb                                      bl #0x4c6c60
004c7894  04 00 a0 e1                                      mov r0, r4
004c7898  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c789c  14 d2 4c 00 a0 2d 00 00                          .byte 0x14, 0xd2, 0x4c, 0x00, 0xa0, 0x2d, 0x00, 0x00

; FUNCTION 0x004c78a4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SaveGame
; alias: _ZN7Structs8SaveGame8finalizeEv
; demangled: Structs::SaveGame::finalize()
; decoder-mode: arm
004c78a4  ef fc ff ea                                      b #0x4c6c68

; FUNCTION 0x004cde34, declared_size=28, range_size=28, mode=arm
; class-group: Structs::SaveGame
; alias: _ZN7Structs8SaveGameD0Ev
; demangled: Structs::SaveGame::~SaveGame()
; decoder-mode: arm
004cde34  10 40 2d e9                                      push {r4, lr}
004cde38  00 40 a0 e1                                      mov r4, r0
004cde3c  8b e6 ff eb                                      bl #0x4c7870
004cde40  04 00 a0 e1                                      mov r0, r4
004cde44  7d 09 f9 eb                                      bl #0x310440
004cde48  04 00 a0 e1                                      mov r0, r4
004cde4c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ff8b0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SaveGame
; alias: _ZN7Structs8SaveGame4readEP11IStreamBase
; demangled: Structs::SaveGame::read(IStreamBase*)
; decoder-mode: arm
004ff8b0  dc ff ff ea                                      b #0x4ff828
