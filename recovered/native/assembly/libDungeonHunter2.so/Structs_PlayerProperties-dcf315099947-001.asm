; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c5748, declared_size=52, range_size=52, mode=arm
; class-group: Structs::PlayerProperties
; alias: _ZN7Structs16PlayerPropertiesD2Ev
; demangled: Structs::PlayerProperties::~PlayerProperties()
; decoder-mode: arm
004c5748  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c574c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5750  10 40 2d e9                                      push {r4, lr}
004c5754  03 30 8f e0                                      add r3, pc, r3
004c5758  02 20 93 e7                                      ldr r2, [r3, r2]
004c575c  00 40 a0 e1                                      mov r4, r0
004c5760  08 20 82 e2                                      add r2, r2, #8
004c5764  00 20 80 e5                                      str r2, [r0]
004c5768  f3 ff ff eb                                      bl #0x4c573c
004c576c  04 00 a0 e1                                      mov r0, r4
004c5770  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5774  3c f3 4c 00 c0 32 00 00                          .byte 0x3c, 0xf3, 0x4c, 0x00, 0xc0, 0x32, 0x00, 0x00

; FUNCTION 0x004c577c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::PlayerProperties
; alias: _ZN7Structs16PlayerPropertiesD1Ev
; demangled: Structs::PlayerProperties::~PlayerProperties()
; decoder-mode: arm
004c577c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5780  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5784  10 40 2d e9                                      push {r4, lr}
004c5788  03 30 8f e0                                      add r3, pc, r3
004c578c  02 20 93 e7                                      ldr r2, [r3, r2]
004c5790  00 40 a0 e1                                      mov r4, r0
004c5794  08 20 82 e2                                      add r2, r2, #8
004c5798  00 20 80 e5                                      str r2, [r0]
004c579c  e6 ff ff eb                                      bl #0x4c573c
004c57a0  04 00 a0 e1                                      mov r0, r4
004c57a4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c57a8  08 f3 4c 00 c0 32 00 00                          .byte 0x08, 0xf3, 0x4c, 0x00, 0xc0, 0x32, 0x00, 0x00

; FUNCTION 0x004c57b0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::PlayerProperties
; alias: _ZN7Structs16PlayerProperties8finalizeEv
; demangled: Structs::PlayerProperties::finalize()
; decoder-mode: arm
004c57b0  e3 ff ff ea                                      b #0x4c5744

; FUNCTION 0x004ce978, declared_size=28, range_size=28, mode=arm
; class-group: Structs::PlayerProperties
; alias: _ZN7Structs16PlayerPropertiesD0Ev
; demangled: Structs::PlayerProperties::~PlayerProperties()
; decoder-mode: arm
004ce978  10 40 2d e9                                      push {r4, lr}
004ce97c  00 40 a0 e1                                      mov r4, r0
004ce980  7d db ff eb                                      bl #0x4c577c
004ce984  04 00 a0 e1                                      mov r0, r4
004ce988  ac 06 f9 eb                                      bl #0x310440
004ce98c  04 00 a0 e1                                      mov r0, r4
004ce990  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7b14, declared_size=4, range_size=4, mode=arm
; class-group: Structs::PlayerProperties
; alias: _ZN7Structs16PlayerProperties4readEP11IStreamBase
; demangled: Structs::PlayerProperties::read(IStreamBase*)
; decoder-mode: arm
004f7b14  0d eb ff ea                                      b #0x4f2750
