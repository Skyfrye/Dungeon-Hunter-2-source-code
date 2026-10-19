; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6cd8, declared_size=52, range_size=52, mode=arm
; class-group: Structs::ExitCutSceneMode
; alias: _ZN7Structs16ExitCutSceneModeD2Ev
; demangled: Structs::ExitCutSceneMode::~ExitCutSceneMode()
; decoder-mode: arm
004c6cd8  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6cdc  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6ce0  10 40 2d e9                                      push {r4, lr}
004c6ce4  03 30 8f e0                                      add r3, pc, r3
004c6ce8  02 20 93 e7                                      ldr r2, [r3, r2]
004c6cec  00 40 a0 e1                                      mov r4, r0
004c6cf0  08 20 82 e2                                      add r2, r2, #8
004c6cf4  00 20 80 e5                                      str r2, [r0]
004c6cf8  d8 ff ff eb                                      bl #0x4c6c60
004c6cfc  04 00 a0 e1                                      mov r0, r4
004c6d00  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6d04  ac dd 4c 00 00 1f 00 00                          .byte 0xac, 0xdd, 0x4c, 0x00, 0x00, 0x1f, 0x00, 0x00

; FUNCTION 0x004c6d0c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::ExitCutSceneMode
; alias: _ZN7Structs16ExitCutSceneModeD1Ev
; demangled: Structs::ExitCutSceneMode::~ExitCutSceneMode()
; decoder-mode: arm
004c6d0c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6d10  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6d14  10 40 2d e9                                      push {r4, lr}
004c6d18  03 30 8f e0                                      add r3, pc, r3
004c6d1c  02 20 93 e7                                      ldr r2, [r3, r2]
004c6d20  00 40 a0 e1                                      mov r4, r0
004c6d24  08 20 82 e2                                      add r2, r2, #8
004c6d28  00 20 80 e5                                      str r2, [r0]
004c6d2c  cb ff ff eb                                      bl #0x4c6c60
004c6d30  04 00 a0 e1                                      mov r0, r4
004c6d34  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6d38  78 dd 4c 00 00 1f 00 00                          .byte 0x78, 0xdd, 0x4c, 0x00, 0x00, 0x1f, 0x00, 0x00

; FUNCTION 0x004c6d40, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ExitCutSceneMode
; alias: _ZN7Structs16ExitCutSceneMode8finalizeEv
; demangled: Structs::ExitCutSceneMode::finalize()
; decoder-mode: arm
004c6d40  c8 ff ff ea                                      b #0x4c6c68

; FUNCTION 0x004ce128, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ExitCutSceneMode
; alias: _ZN7Structs16ExitCutSceneModeD0Ev
; demangled: Structs::ExitCutSceneMode::~ExitCutSceneMode()
; decoder-mode: arm
004ce128  10 40 2d e9                                      push {r4, lr}
004ce12c  00 40 a0 e1                                      mov r4, r0
004ce130  f5 e2 ff eb                                      bl #0x4c6d0c
004ce134  04 00 a0 e1                                      mov r0, r4
004ce138  c0 08 f9 eb                                      bl #0x310440
004ce13c  04 00 a0 e1                                      mov r0, r4
004ce140  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ff9ac, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ExitCutSceneMode
; alias: _ZN7Structs16ExitCutSceneMode4readEP11IStreamBase
; demangled: Structs::ExitCutSceneMode::read(IStreamBase*)
; decoder-mode: arm
004ff9ac  9d ff ff ea                                      b #0x4ff828
