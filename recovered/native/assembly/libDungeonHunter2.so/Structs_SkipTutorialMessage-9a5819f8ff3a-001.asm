; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c7980, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SkipTutorialMessage
; alias: _ZN7Structs19SkipTutorialMessageD2Ev
; demangled: Structs::SkipTutorialMessage::~SkipTutorialMessage()
; decoder-mode: arm
004c7980  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7984  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7988  10 40 2d e9                                      push {r4, lr}
004c798c  03 30 8f e0                                      add r3, pc, r3
004c7990  02 20 93 e7                                      ldr r2, [r3, r2]
004c7994  00 40 a0 e1                                      mov r4, r0
004c7998  08 20 82 e2                                      add r2, r2, #8
004c799c  00 20 80 e5                                      str r2, [r0]
004c79a0  ae fc ff eb                                      bl #0x4c6c60
004c79a4  04 00 a0 e1                                      mov r0, r4
004c79a8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c79ac  04 d1 4c 00 bc 3c 00 00                          .byte 0x04, 0xd1, 0x4c, 0x00, 0xbc, 0x3c, 0x00, 0x00

; FUNCTION 0x004c79b4, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SkipTutorialMessage
; alias: _ZN7Structs19SkipTutorialMessageD1Ev
; demangled: Structs::SkipTutorialMessage::~SkipTutorialMessage()
; decoder-mode: arm
004c79b4  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c79b8  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c79bc  10 40 2d e9                                      push {r4, lr}
004c79c0  03 30 8f e0                                      add r3, pc, r3
004c79c4  02 20 93 e7                                      ldr r2, [r3, r2]
004c79c8  00 40 a0 e1                                      mov r4, r0
004c79cc  08 20 82 e2                                      add r2, r2, #8
004c79d0  00 20 80 e5                                      str r2, [r0]
004c79d4  a1 fc ff eb                                      bl #0x4c6c60
004c79d8  04 00 a0 e1                                      mov r0, r4
004c79dc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c79e0  d0 d0 4c 00 bc 3c 00 00                          .byte 0xd0, 0xd0, 0x4c, 0x00, 0xbc, 0x3c, 0x00, 0x00

; FUNCTION 0x004c79e8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SkipTutorialMessage
; alias: _ZN7Structs19SkipTutorialMessage8finalizeEv
; demangled: Structs::SkipTutorialMessage::finalize()
; decoder-mode: arm
004c79e8  9e fc ff ea                                      b #0x4c6c68

; FUNCTION 0x004cdde0, declared_size=28, range_size=28, mode=arm
; class-group: Structs::SkipTutorialMessage
; alias: _ZN7Structs19SkipTutorialMessageD0Ev
; demangled: Structs::SkipTutorialMessage::~SkipTutorialMessage()
; decoder-mode: arm
004cdde0  10 40 2d e9                                      push {r4, lr}
004cdde4  00 40 a0 e1                                      mov r4, r0
004cdde8  f1 e6 ff eb                                      bl #0x4c79b4
004cddec  04 00 a0 e1                                      mov r0, r4
004cddf0  92 09 f9 eb                                      bl #0x310440
004cddf4  04 00 a0 e1                                      mov r0, r4
004cddf8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ff8a8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SkipTutorialMessage
; alias: _ZN7Structs19SkipTutorialMessage4readEP11IStreamBase
; demangled: Structs::SkipTutorialMessage::read(IStreamBase*)
; decoder-mode: arm
004ff8a8  de ff ff ea                                      b #0x4ff828
