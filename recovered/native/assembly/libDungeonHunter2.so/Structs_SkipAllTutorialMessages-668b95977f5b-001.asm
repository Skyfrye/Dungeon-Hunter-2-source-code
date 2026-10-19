; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c79ec, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SkipAllTutorialMessages
; alias: _ZN7Structs23SkipAllTutorialMessagesD2Ev
; demangled: Structs::SkipAllTutorialMessages::~SkipAllTutorialMessages()
; decoder-mode: arm
004c79ec  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c79f0  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c79f4  10 40 2d e9                                      push {r4, lr}
004c79f8  03 30 8f e0                                      add r3, pc, r3
004c79fc  02 20 93 e7                                      ldr r2, [r3, r2]
004c7a00  00 40 a0 e1                                      mov r4, r0
004c7a04  08 20 82 e2                                      add r2, r2, #8
004c7a08  00 20 80 e5                                      str r2, [r0]
004c7a0c  93 fc ff eb                                      bl #0x4c6c60
004c7a10  04 00 a0 e1                                      mov r0, r4
004c7a14  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7a18  98 d0 4c 00 c4 46 00 00                          .byte 0x98, 0xd0, 0x4c, 0x00, 0xc4, 0x46, 0x00, 0x00

; FUNCTION 0x004c7a20, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SkipAllTutorialMessages
; alias: _ZN7Structs23SkipAllTutorialMessagesD1Ev
; demangled: Structs::SkipAllTutorialMessages::~SkipAllTutorialMessages()
; decoder-mode: arm
004c7a20  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7a24  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7a28  10 40 2d e9                                      push {r4, lr}
004c7a2c  03 30 8f e0                                      add r3, pc, r3
004c7a30  02 20 93 e7                                      ldr r2, [r3, r2]
004c7a34  00 40 a0 e1                                      mov r4, r0
004c7a38  08 20 82 e2                                      add r2, r2, #8
004c7a3c  00 20 80 e5                                      str r2, [r0]
004c7a40  86 fc ff eb                                      bl #0x4c6c60
004c7a44  04 00 a0 e1                                      mov r0, r4
004c7a48  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7a4c  64 d0 4c 00 c4 46 00 00                          .byte 0x64, 0xd0, 0x4c, 0x00, 0xc4, 0x46, 0x00, 0x00

; FUNCTION 0x004c7a54, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SkipAllTutorialMessages
; alias: _ZN7Structs23SkipAllTutorialMessages8finalizeEv
; demangled: Structs::SkipAllTutorialMessages::finalize()
; decoder-mode: arm
004c7a54  83 fc ff ea                                      b #0x4c6c68

; FUNCTION 0x004cddc4, declared_size=28, range_size=28, mode=arm
; class-group: Structs::SkipAllTutorialMessages
; alias: _ZN7Structs23SkipAllTutorialMessagesD0Ev
; demangled: Structs::SkipAllTutorialMessages::~SkipAllTutorialMessages()
; decoder-mode: arm
004cddc4  10 40 2d e9                                      push {r4, lr}
004cddc8  00 40 a0 e1                                      mov r4, r0
004cddcc  13 e7 ff eb                                      bl #0x4c7a20
004cddd0  04 00 a0 e1                                      mov r0, r4
004cddd4  99 09 f9 eb                                      bl #0x310440
004cddd8  04 00 a0 e1                                      mov r0, r4
004cdddc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ff8a4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SkipAllTutorialMessages
; alias: _ZN7Structs23SkipAllTutorialMessages4readEP11IStreamBase
; demangled: Structs::SkipAllTutorialMessages::read(IStreamBase*)
; decoder-mode: arm
004ff8a4  df ff ff ea                                      b #0x4ff828
