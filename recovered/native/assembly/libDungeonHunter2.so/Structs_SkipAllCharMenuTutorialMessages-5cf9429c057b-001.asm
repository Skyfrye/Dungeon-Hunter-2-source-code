; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c7ac4, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SkipAllCharMenuTutorialMessages
; alias: _ZN7Structs31SkipAllCharMenuTutorialMessagesD2Ev
; demangled: Structs::SkipAllCharMenuTutorialMessages::~SkipAllCharMenuTutorialMessages()
; decoder-mode: arm
004c7ac4  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7ac8  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7acc  10 40 2d e9                                      push {r4, lr}
004c7ad0  03 30 8f e0                                      add r3, pc, r3
004c7ad4  02 20 93 e7                                      ldr r2, [r3, r2]
004c7ad8  00 40 a0 e1                                      mov r4, r0
004c7adc  08 20 82 e2                                      add r2, r2, #8
004c7ae0  00 20 80 e5                                      str r2, [r0]
004c7ae4  5d fc ff eb                                      bl #0x4c6c60
004c7ae8  04 00 a0 e1                                      mov r0, r4
004c7aec  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7af0  c0 cf 4c 00 c4 2e 00 00                          .byte 0xc0, 0xcf, 0x4c, 0x00, 0xc4, 0x2e, 0x00, 0x00

; FUNCTION 0x004c7af8, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SkipAllCharMenuTutorialMessages
; alias: _ZN7Structs31SkipAllCharMenuTutorialMessagesD1Ev
; demangled: Structs::SkipAllCharMenuTutorialMessages::~SkipAllCharMenuTutorialMessages()
; decoder-mode: arm
004c7af8  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c7afc  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c7b00  10 40 2d e9                                      push {r4, lr}
004c7b04  03 30 8f e0                                      add r3, pc, r3
004c7b08  02 20 93 e7                                      ldr r2, [r3, r2]
004c7b0c  00 40 a0 e1                                      mov r4, r0
004c7b10  08 20 82 e2                                      add r2, r2, #8
004c7b14  00 20 80 e5                                      str r2, [r0]
004c7b18  50 fc ff eb                                      bl #0x4c6c60
004c7b1c  04 00 a0 e1                                      mov r0, r4
004c7b20  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7b24  8c cf 4c 00 c4 2e 00 00                          .byte 0x8c, 0xcf, 0x4c, 0x00, 0xc4, 0x2e, 0x00, 0x00

; FUNCTION 0x004c7b2c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SkipAllCharMenuTutorialMessages
; alias: _ZN7Structs31SkipAllCharMenuTutorialMessages8finalizeEv
; demangled: Structs::SkipAllCharMenuTutorialMessages::finalize()
; decoder-mode: arm
004c7b2c  4d fc ff ea                                      b #0x4c6c68

; FUNCTION 0x004cdd8c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::SkipAllCharMenuTutorialMessages
; alias: _ZN7Structs31SkipAllCharMenuTutorialMessagesD0Ev
; demangled: Structs::SkipAllCharMenuTutorialMessages::~SkipAllCharMenuTutorialMessages()
; decoder-mode: arm
004cdd8c  10 40 2d e9                                      push {r4, lr}
004cdd90  00 40 a0 e1                                      mov r4, r0
004cdd94  57 e7 ff eb                                      bl #0x4c7af8
004cdd98  04 00 a0 e1                                      mov r0, r4
004cdd9c  a7 09 f9 eb                                      bl #0x310440
004cdda0  04 00 a0 e1                                      mov r0, r4
004cdda4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ff89c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SkipAllCharMenuTutorialMessages
; alias: _ZN7Structs31SkipAllCharMenuTutorialMessages4readEP11IStreamBase
; demangled: Structs::SkipAllCharMenuTutorialMessages::read(IStreamBase*)
; decoder-mode: arm
004ff89c  e1 ff ff ea                                      b #0x4ff828
