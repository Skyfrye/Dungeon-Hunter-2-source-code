; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c7a58, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SkipCharMenuTutorialMessage
; alias: _ZN7Structs27SkipCharMenuTutorialMessageD2Ev
; demangled: Structs::SkipCharMenuTutorialMessage::~SkipCharMenuTutorialMessage()
; decoder-mode: arm
004c7a58  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7a5c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7a60  10 40 2d e9                                      push {r4, lr}
004c7a64  03 30 8f e0                                      add r3, pc, r3
004c7a68  02 20 93 e7                                      ldr r2, [r3, r2]
004c7a6c  00 40 a0 e1                                      mov r4, r0
004c7a70  08 20 82 e2                                      add r2, r2, #8
004c7a74  00 20 80 e5                                      str r2, [r0]
004c7a78  78 fc ff eb                                      bl #0x4c6c60
004c7a7c  04 00 a0 e1                                      mov r0, r4
004c7a80  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7a84  2c d0 4c 00 00 0c 00 00                          .byte 0x2c, 0xd0, 0x4c, 0x00, 0x00, 0x0c, 0x00, 0x00

; FUNCTION 0x004c7a8c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SkipCharMenuTutorialMessage
; alias: _ZN7Structs27SkipCharMenuTutorialMessageD1Ev
; demangled: Structs::SkipCharMenuTutorialMessage::~SkipCharMenuTutorialMessage()
; decoder-mode: arm
004c7a8c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7a90  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7a94  10 40 2d e9                                      push {r4, lr}
004c7a98  03 30 8f e0                                      add r3, pc, r3
004c7a9c  02 20 93 e7                                      ldr r2, [r3, r2]
004c7aa0  00 40 a0 e1                                      mov r4, r0
004c7aa4  08 20 82 e2                                      add r2, r2, #8
004c7aa8  00 20 80 e5                                      str r2, [r0]
004c7aac  6b fc ff eb                                      bl #0x4c6c60
004c7ab0  04 00 a0 e1                                      mov r0, r4
004c7ab4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7ab8  f8 cf 4c 00 00 0c 00 00                          .byte 0xf8, 0xcf, 0x4c, 0x00, 0x00, 0x0c, 0x00, 0x00

; FUNCTION 0x004c7ac0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SkipCharMenuTutorialMessage
; alias: _ZN7Structs27SkipCharMenuTutorialMessage8finalizeEv
; demangled: Structs::SkipCharMenuTutorialMessage::finalize()
; decoder-mode: arm
004c7ac0  68 fc ff ea                                      b #0x4c6c68

; FUNCTION 0x004cdda8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::SkipCharMenuTutorialMessage
; alias: _ZN7Structs27SkipCharMenuTutorialMessageD0Ev
; demangled: Structs::SkipCharMenuTutorialMessage::~SkipCharMenuTutorialMessage()
; decoder-mode: arm
004cdda8  10 40 2d e9                                      push {r4, lr}
004cddac  00 40 a0 e1                                      mov r4, r0
004cddb0  35 e7 ff eb                                      bl #0x4c7a8c
004cddb4  04 00 a0 e1                                      mov r0, r4
004cddb8  a0 09 f9 eb                                      bl #0x310440
004cddbc  04 00 a0 e1                                      mov r0, r4
004cddc0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ff8a0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SkipCharMenuTutorialMessage
; alias: _ZN7Structs27SkipCharMenuTutorialMessage4readEP11IStreamBase
; demangled: Structs::SkipCharMenuTutorialMessage::read(IStreamBase*)
; decoder-mode: arm
004ff8a0  e0 ff ff ea                                      b #0x4ff828
