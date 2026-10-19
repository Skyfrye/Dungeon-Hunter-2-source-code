; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6a38, declared_size=52, range_size=52, mode=arm
; class-group: Structs::GameOptionSelect
; alias: _ZN7Structs16GameOptionSelectD2Ev
; demangled: Structs::GameOptionSelect::~GameOptionSelect()
; decoder-mode: arm
004c6a38  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6a3c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6a40  10 40 2d e9                                      push {r4, lr}
004c6a44  03 30 8f e0                                      add r3, pc, r3
004c6a48  02 20 93 e7                                      ldr r2, [r3, r2]
004c6a4c  00 40 a0 e1                                      mov r4, r0
004c6a50  08 20 82 e2                                      add r2, r2, #8
004c6a54  00 20 80 e5                                      str r2, [r0]
004c6a58  f3 ff ff eb                                      bl #0x4c6a2c
004c6a5c  04 00 a0 e1                                      mov r0, r4
004c6a60  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6a64  4c e0 4c 00 6c 42 00 00                          .byte 0x4c, 0xe0, 0x4c, 0x00, 0x6c, 0x42, 0x00, 0x00

; FUNCTION 0x004c6a6c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::GameOptionSelect
; alias: _ZN7Structs16GameOptionSelectD1Ev
; demangled: Structs::GameOptionSelect::~GameOptionSelect()
; decoder-mode: arm
004c6a6c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6a70  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6a74  10 40 2d e9                                      push {r4, lr}
004c6a78  03 30 8f e0                                      add r3, pc, r3
004c6a7c  02 20 93 e7                                      ldr r2, [r3, r2]
004c6a80  00 40 a0 e1                                      mov r4, r0
004c6a84  08 20 82 e2                                      add r2, r2, #8
004c6a88  00 20 80 e5                                      str r2, [r0]
004c6a8c  e6 ff ff eb                                      bl #0x4c6a2c
004c6a90  04 00 a0 e1                                      mov r0, r4
004c6a94  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6a98  18 e0 4c 00 6c 42 00 00                          .byte 0x18, 0xe0, 0x4c, 0x00, 0x6c, 0x42, 0x00, 0x00

; FUNCTION 0x004c6aa0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::GameOptionSelect
; alias: _ZN7Structs16GameOptionSelect8finalizeEv
; demangled: Structs::GameOptionSelect::finalize()
; decoder-mode: arm
004c6aa0  e3 ff ff ea                                      b #0x4c6a34

; FUNCTION 0x004ce3c8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::GameOptionSelect
; alias: _ZN7Structs16GameOptionSelectD0Ev
; demangled: Structs::GameOptionSelect::~GameOptionSelect()
; decoder-mode: arm
004ce3c8  10 40 2d e9                                      push {r4, lr}
004ce3cc  00 40 a0 e1                                      mov r4, r0
004ce3d0  a5 e1 ff eb                                      bl #0x4c6a6c
004ce3d4  04 00 a0 e1                                      mov r0, r4
004ce3d8  18 08 f9 eb                                      bl #0x310440
004ce3dc  04 00 a0 e1                                      mov r0, r4
004ce3e0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f23e0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::GameOptionSelect
; alias: _ZN7Structs16GameOptionSelect4readEP11IStreamBase
; demangled: Structs::GameOptionSelect::read(IStreamBase*)
; decoder-mode: arm
004f23e0  55 ff ff ea                                      b #0x4f213c
