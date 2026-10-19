; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c5b14, declared_size=52, range_size=52, mode=arm
; class-group: Structs::TrollProperties
; alias: _ZN7Structs15TrollPropertiesD2Ev
; demangled: Structs::TrollProperties::~TrollProperties()
; decoder-mode: arm
004c5b14  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5b18  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5b1c  10 40 2d e9                                      push {r4, lr}
004c5b20  03 30 8f e0                                      add r3, pc, r3
004c5b24  02 20 93 e7                                      ldr r2, [r3, r2]
004c5b28  00 40 a0 e1                                      mov r4, r0
004c5b2c  08 20 82 e2                                      add r2, r2, #8
004c5b30  00 20 80 e5                                      str r2, [r0]
004c5b34  00 ff ff eb                                      bl #0x4c573c
004c5b38  04 00 a0 e1                                      mov r0, r4
004c5b3c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5b40  70 ef 4c 00 14 21 00 00                          .byte 0x70, 0xef, 0x4c, 0x00, 0x14, 0x21, 0x00, 0x00

; FUNCTION 0x004c5b48, declared_size=52, range_size=52, mode=arm
; class-group: Structs::TrollProperties
; alias: _ZN7Structs15TrollPropertiesD1Ev
; demangled: Structs::TrollProperties::~TrollProperties()
; decoder-mode: arm
004c5b48  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5b4c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5b50  10 40 2d e9                                      push {r4, lr}
004c5b54  03 30 8f e0                                      add r3, pc, r3
004c5b58  02 20 93 e7                                      ldr r2, [r3, r2]
004c5b5c  00 40 a0 e1                                      mov r4, r0
004c5b60  08 20 82 e2                                      add r2, r2, #8
004c5b64  00 20 80 e5                                      str r2, [r0]
004c5b68  f3 fe ff eb                                      bl #0x4c573c
004c5b6c  04 00 a0 e1                                      mov r0, r4
004c5b70  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5b74  3c ef 4c 00 14 21 00 00                          .byte 0x3c, 0xef, 0x4c, 0x00, 0x14, 0x21, 0x00, 0x00

; FUNCTION 0x004c5b7c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::TrollProperties
; alias: _ZN7Structs15TrollProperties8finalizeEv
; demangled: Structs::TrollProperties::finalize()
; decoder-mode: arm
004c5b7c  f0 fe ff ea                                      b #0x4c5744

; FUNCTION 0x004ce87c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::TrollProperties
; alias: _ZN7Structs15TrollPropertiesD0Ev
; demangled: Structs::TrollProperties::~TrollProperties()
; decoder-mode: arm
004ce87c  10 40 2d e9                                      push {r4, lr}
004ce880  00 40 a0 e1                                      mov r4, r0
004ce884  af dc ff eb                                      bl #0x4c5b48
004ce888  04 00 a0 e1                                      mov r0, r4
004ce88c  eb 06 f9 eb                                      bl #0x310440
004ce890  04 00 a0 e1                                      mov r0, r4
004ce894  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7af0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::TrollProperties
; alias: _ZN7Structs15TrollProperties4readEP11IStreamBase
; demangled: Structs::TrollProperties::read(IStreamBase*)
; decoder-mode: arm
004f7af0  16 eb ff ea                                      b #0x4f2750
