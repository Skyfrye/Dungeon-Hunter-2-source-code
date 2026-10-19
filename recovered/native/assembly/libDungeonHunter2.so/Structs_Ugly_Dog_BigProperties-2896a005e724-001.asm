; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c5d30, declared_size=52, range_size=52, mode=arm
; class-group: Structs::Ugly_Dog_BigProperties
; alias: _ZN7Structs22Ugly_Dog_BigPropertiesD2Ev
; demangled: Structs::Ugly_Dog_BigProperties::~Ugly_Dog_BigProperties()
; decoder-mode: arm
004c5d30  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5d34  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5d38  10 40 2d e9                                      push {r4, lr}
004c5d3c  03 30 8f e0                                      add r3, pc, r3
004c5d40  02 20 93 e7                                      ldr r2, [r3, r2]
004c5d44  00 40 a0 e1                                      mov r4, r0
004c5d48  08 20 82 e2                                      add r2, r2, #8
004c5d4c  00 20 80 e5                                      str r2, [r0]
004c5d50  79 fe ff eb                                      bl #0x4c573c
004c5d54  04 00 a0 e1                                      mov r0, r4
004c5d58  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5d5c  54 ed 4c 00 78 23 00 00                          .byte 0x54, 0xed, 0x4c, 0x00, 0x78, 0x23, 0x00, 0x00

; FUNCTION 0x004c5d64, declared_size=52, range_size=52, mode=arm
; class-group: Structs::Ugly_Dog_BigProperties
; alias: _ZN7Structs22Ugly_Dog_BigPropertiesD1Ev
; demangled: Structs::Ugly_Dog_BigProperties::~Ugly_Dog_BigProperties()
; decoder-mode: arm
004c5d64  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5d68  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5d6c  10 40 2d e9                                      push {r4, lr}
004c5d70  03 30 8f e0                                      add r3, pc, r3
004c5d74  02 20 93 e7                                      ldr r2, [r3, r2]
004c5d78  00 40 a0 e1                                      mov r4, r0
004c5d7c  08 20 82 e2                                      add r2, r2, #8
004c5d80  00 20 80 e5                                      str r2, [r0]
004c5d84  6c fe ff eb                                      bl #0x4c573c
004c5d88  04 00 a0 e1                                      mov r0, r4
004c5d8c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5d90  20 ed 4c 00 78 23 00 00                          .byte 0x20, 0xed, 0x4c, 0x00, 0x78, 0x23, 0x00, 0x00

; FUNCTION 0x004c5d98, declared_size=4, range_size=4, mode=arm
; class-group: Structs::Ugly_Dog_BigProperties
; alias: _ZN7Structs22Ugly_Dog_BigProperties8finalizeEv
; demangled: Structs::Ugly_Dog_BigProperties::finalize()
; decoder-mode: arm
004c5d98  69 fe ff ea                                      b #0x4c5744

; FUNCTION 0x004ce7f0, declared_size=28, range_size=28, mode=arm
; class-group: Structs::Ugly_Dog_BigProperties
; alias: _ZN7Structs22Ugly_Dog_BigPropertiesD0Ev
; demangled: Structs::Ugly_Dog_BigProperties::~Ugly_Dog_BigProperties()
; decoder-mode: arm
004ce7f0  10 40 2d e9                                      push {r4, lr}
004ce7f4  00 40 a0 e1                                      mov r4, r0
004ce7f8  59 dd ff eb                                      bl #0x4c5d64
004ce7fc  04 00 a0 e1                                      mov r0, r4
004ce800  0e 07 f9 eb                                      bl #0x310440
004ce804  04 00 a0 e1                                      mov r0, r4
004ce808  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7adc, declared_size=4, range_size=4, mode=arm
; class-group: Structs::Ugly_Dog_BigProperties
; alias: _ZN7Structs22Ugly_Dog_BigProperties4readEP11IStreamBase
; demangled: Structs::Ugly_Dog_BigProperties::read(IStreamBase*)
; decoder-mode: arm
004f7adc  1b eb ff ea                                      b #0x4f2750
