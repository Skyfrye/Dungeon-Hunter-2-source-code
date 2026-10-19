; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c5ee0, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SpiderProperties
; alias: _ZN7Structs16SpiderPropertiesD2Ev
; demangled: Structs::SpiderProperties::~SpiderProperties()
; decoder-mode: arm
004c5ee0  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5ee4  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5ee8  10 40 2d e9                                      push {r4, lr}
004c5eec  03 30 8f e0                                      add r3, pc, r3
004c5ef0  02 20 93 e7                                      ldr r2, [r3, r2]
004c5ef4  00 40 a0 e1                                      mov r4, r0
004c5ef8  08 20 82 e2                                      add r2, r2, #8
004c5efc  00 20 80 e5                                      str r2, [r0]
004c5f00  0d fe ff eb                                      bl #0x4c573c
004c5f04  04 00 a0 e1                                      mov r0, r4
004c5f08  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5f0c  a4 eb 4c 00 00 25 00 00                          .byte 0xa4, 0xeb, 0x4c, 0x00, 0x00, 0x25, 0x00, 0x00

; FUNCTION 0x004c5f14, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SpiderProperties
; alias: _ZN7Structs16SpiderPropertiesD1Ev
; demangled: Structs::SpiderProperties::~SpiderProperties()
; decoder-mode: arm
004c5f14  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5f18  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5f1c  10 40 2d e9                                      push {r4, lr}
004c5f20  03 30 8f e0                                      add r3, pc, r3
004c5f24  02 20 93 e7                                      ldr r2, [r3, r2]
004c5f28  00 40 a0 e1                                      mov r4, r0
004c5f2c  08 20 82 e2                                      add r2, r2, #8
004c5f30  00 20 80 e5                                      str r2, [r0]
004c5f34  00 fe ff eb                                      bl #0x4c573c
004c5f38  04 00 a0 e1                                      mov r0, r4
004c5f3c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5f40  70 eb 4c 00 00 25 00 00                          .byte 0x70, 0xeb, 0x4c, 0x00, 0x00, 0x25, 0x00, 0x00

; FUNCTION 0x004c5f48, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SpiderProperties
; alias: _ZN7Structs16SpiderProperties8finalizeEv
; demangled: Structs::SpiderProperties::finalize()
; decoder-mode: arm
004c5f48  fd fd ff ea                                      b #0x4c5744

; FUNCTION 0x004ce780, declared_size=28, range_size=28, mode=arm
; class-group: Structs::SpiderProperties
; alias: _ZN7Structs16SpiderPropertiesD0Ev
; demangled: Structs::SpiderProperties::~SpiderProperties()
; decoder-mode: arm
004ce780  10 40 2d e9                                      push {r4, lr}
004ce784  00 40 a0 e1                                      mov r4, r0
004ce788  e1 dd ff eb                                      bl #0x4c5f14
004ce78c  04 00 a0 e1                                      mov r0, r4
004ce790  2a 07 f9 eb                                      bl #0x310440
004ce794  04 00 a0 e1                                      mov r0, r4
004ce798  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7acc, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SpiderProperties
; alias: _ZN7Structs16SpiderProperties4readEP11IStreamBase
; demangled: Structs::SpiderProperties::read(IStreamBase*)
; decoder-mode: arm
004f7acc  1f eb ff ea                                      b #0x4f2750
