; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6c6c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::EnterCutSceneMode
; alias: _ZN7Structs17EnterCutSceneModeD2Ev
; demangled: Structs::EnterCutSceneMode::~EnterCutSceneMode()
; decoder-mode: arm
004c6c6c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6c70  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6c74  10 40 2d e9                                      push {r4, lr}
004c6c78  03 30 8f e0                                      add r3, pc, r3
004c6c7c  02 20 93 e7                                      ldr r2, [r3, r2]
004c6c80  00 40 a0 e1                                      mov r4, r0
004c6c84  08 20 82 e2                                      add r2, r2, #8
004c6c88  00 20 80 e5                                      str r2, [r0]
004c6c8c  f3 ff ff eb                                      bl #0x4c6c60
004c6c90  04 00 a0 e1                                      mov r0, r4
004c6c94  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6c98  18 de 4c 00 c0 12 00 00                          .byte 0x18, 0xde, 0x4c, 0x00, 0xc0, 0x12, 0x00, 0x00

; FUNCTION 0x004c6ca0, declared_size=52, range_size=52, mode=arm
; class-group: Structs::EnterCutSceneMode
; alias: _ZN7Structs17EnterCutSceneModeD1Ev
; demangled: Structs::EnterCutSceneMode::~EnterCutSceneMode()
; decoder-mode: arm
004c6ca0  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6ca4  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6ca8  10 40 2d e9                                      push {r4, lr}
004c6cac  03 30 8f e0                                      add r3, pc, r3
004c6cb0  02 20 93 e7                                      ldr r2, [r3, r2]
004c6cb4  00 40 a0 e1                                      mov r4, r0
004c6cb8  08 20 82 e2                                      add r2, r2, #8
004c6cbc  00 20 80 e5                                      str r2, [r0]
004c6cc0  e6 ff ff eb                                      bl #0x4c6c60
004c6cc4  04 00 a0 e1                                      mov r0, r4
004c6cc8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6ccc  e4 dd 4c 00 c0 12 00 00                          .byte 0xe4, 0xdd, 0x4c, 0x00, 0xc0, 0x12, 0x00, 0x00

; FUNCTION 0x004c6cd4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::EnterCutSceneMode
; alias: _ZN7Structs17EnterCutSceneMode8finalizeEv
; demangled: Structs::EnterCutSceneMode::finalize()
; decoder-mode: arm
004c6cd4  e3 ff ff ea                                      b #0x4c6c68

; FUNCTION 0x004ce144, declared_size=28, range_size=28, mode=arm
; class-group: Structs::EnterCutSceneMode
; alias: _ZN7Structs17EnterCutSceneModeD0Ev
; demangled: Structs::EnterCutSceneMode::~EnterCutSceneMode()
; decoder-mode: arm
004ce144  10 40 2d e9                                      push {r4, lr}
004ce148  00 40 a0 e1                                      mov r4, r0
004ce14c  d3 e2 ff eb                                      bl #0x4c6ca0
004ce150  04 00 a0 e1                                      mov r0, r4
004ce154  b9 08 f9 eb                                      bl #0x310440
004ce158  04 00 a0 e1                                      mov r0, r4
004ce15c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ff9b0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::EnterCutSceneMode
; alias: _ZN7Structs17EnterCutSceneMode4readEP11IStreamBase
; demangled: Structs::EnterCutSceneMode::read(IStreamBase*)
; decoder-mode: arm
004ff9b0  9c ff ff ea                                      b #0x4ff828
