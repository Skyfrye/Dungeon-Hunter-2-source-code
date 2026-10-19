; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6aa4, declared_size=52, range_size=52, mode=arm
; class-group: Structs::GameOptionSlider
; alias: _ZN7Structs16GameOptionSliderD2Ev
; demangled: Structs::GameOptionSlider::~GameOptionSlider()
; decoder-mode: arm
004c6aa4  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6aa8  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6aac  10 40 2d e9                                      push {r4, lr}
004c6ab0  03 30 8f e0                                      add r3, pc, r3
004c6ab4  02 20 93 e7                                      ldr r2, [r3, r2]
004c6ab8  00 40 a0 e1                                      mov r4, r0
004c6abc  08 20 82 e2                                      add r2, r2, #8
004c6ac0  00 20 80 e5                                      str r2, [r0]
004c6ac4  d8 ff ff eb                                      bl #0x4c6a2c
004c6ac8  04 00 a0 e1                                      mov r0, r4
004c6acc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6ad0  e0 df 4c 00 6c 49 00 00                          .byte 0xe0, 0xdf, 0x4c, 0x00, 0x6c, 0x49, 0x00, 0x00

; FUNCTION 0x004c6ad8, declared_size=52, range_size=52, mode=arm
; class-group: Structs::GameOptionSlider
; alias: _ZN7Structs16GameOptionSliderD1Ev
; demangled: Structs::GameOptionSlider::~GameOptionSlider()
; decoder-mode: arm
004c6ad8  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6adc  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6ae0  10 40 2d e9                                      push {r4, lr}
004c6ae4  03 30 8f e0                                      add r3, pc, r3
004c6ae8  02 20 93 e7                                      ldr r2, [r3, r2]
004c6aec  00 40 a0 e1                                      mov r4, r0
004c6af0  08 20 82 e2                                      add r2, r2, #8
004c6af4  00 20 80 e5                                      str r2, [r0]
004c6af8  cb ff ff eb                                      bl #0x4c6a2c
004c6afc  04 00 a0 e1                                      mov r0, r4
004c6b00  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6b04  ac df 4c 00 6c 49 00 00                          .byte 0xac, 0xdf, 0x4c, 0x00, 0x6c, 0x49, 0x00, 0x00

; FUNCTION 0x004c6b0c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::GameOptionSlider
; alias: _ZN7Structs16GameOptionSlider8finalizeEv
; demangled: Structs::GameOptionSlider::finalize()
; decoder-mode: arm
004c6b0c  c8 ff ff ea                                      b #0x4c6a34

; FUNCTION 0x004ce3ac, declared_size=28, range_size=28, mode=arm
; class-group: Structs::GameOptionSlider
; alias: _ZN7Structs16GameOptionSliderD0Ev
; demangled: Structs::GameOptionSlider::~GameOptionSlider()
; decoder-mode: arm
004ce3ac  10 40 2d e9                                      push {r4, lr}
004ce3b0  00 40 a0 e1                                      mov r4, r0
004ce3b4  c7 e1 ff eb                                      bl #0x4c6ad8
004ce3b8  04 00 a0 e1                                      mov r0, r4
004ce3bc  1f 08 f9 eb                                      bl #0x310440
004ce3c0  04 00 a0 e1                                      mov r0, r4
004ce3c4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f23dc, declared_size=4, range_size=4, mode=arm
; class-group: Structs::GameOptionSlider
; alias: _ZN7Structs16GameOptionSlider4readEP11IStreamBase
; demangled: Structs::GameOptionSlider::read(IStreamBase*)
; decoder-mode: arm
004f23dc  56 ff ff ea                                      b #0x4f213c
