; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c63f0, declared_size=52, range_size=52, mode=arm
; class-group: Structs::RootTrollProperties
; alias: _ZN7Structs19RootTrollPropertiesD2Ev
; demangled: Structs::RootTrollProperties::~RootTrollProperties()
; decoder-mode: arm
004c63f0  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c63f4  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c63f8  10 40 2d e9                                      push {r4, lr}
004c63fc  03 30 8f e0                                      add r3, pc, r3
004c6400  02 20 93 e7                                      ldr r2, [r3, r2]
004c6404  00 40 a0 e1                                      mov r4, r0
004c6408  08 20 82 e2                                      add r2, r2, #8
004c640c  00 20 80 e5                                      str r2, [r0]
004c6410  c9 fc ff eb                                      bl #0x4c573c
004c6414  04 00 a0 e1                                      mov r0, r4
004c6418  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c641c  94 e6 4c 00 d8 3b 00 00                          .byte 0x94, 0xe6, 0x4c, 0x00, 0xd8, 0x3b, 0x00, 0x00

; FUNCTION 0x004c6424, declared_size=52, range_size=52, mode=arm
; class-group: Structs::RootTrollProperties
; alias: _ZN7Structs19RootTrollPropertiesD1Ev
; demangled: Structs::RootTrollProperties::~RootTrollProperties()
; decoder-mode: arm
004c6424  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6428  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c642c  10 40 2d e9                                      push {r4, lr}
004c6430  03 30 8f e0                                      add r3, pc, r3
004c6434  02 20 93 e7                                      ldr r2, [r3, r2]
004c6438  00 40 a0 e1                                      mov r4, r0
004c643c  08 20 82 e2                                      add r2, r2, #8
004c6440  00 20 80 e5                                      str r2, [r0]
004c6444  bc fc ff eb                                      bl #0x4c573c
004c6448  04 00 a0 e1                                      mov r0, r4
004c644c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6450  60 e6 4c 00 d8 3b 00 00                          .byte 0x60, 0xe6, 0x4c, 0x00, 0xd8, 0x3b, 0x00, 0x00

; FUNCTION 0x004c6458, declared_size=4, range_size=4, mode=arm
; class-group: Structs::RootTrollProperties
; alias: _ZN7Structs19RootTrollProperties8finalizeEv
; demangled: Structs::RootTrollProperties::finalize()
; decoder-mode: arm
004c6458  b9 fc ff ea                                      b #0x4c5744

; FUNCTION 0x004ce630, declared_size=28, range_size=28, mode=arm
; class-group: Structs::RootTrollProperties
; alias: _ZN7Structs19RootTrollPropertiesD0Ev
; demangled: Structs::RootTrollProperties::~RootTrollProperties()
; decoder-mode: arm
004ce630  10 40 2d e9                                      push {r4, lr}
004ce634  00 40 a0 e1                                      mov r4, r0
004ce638  79 df ff eb                                      bl #0x4c6424
004ce63c  04 00 a0 e1                                      mov r0, r4
004ce640  7e 07 f9 eb                                      bl #0x310440
004ce644  04 00 a0 e1                                      mov r0, r4
004ce648  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7a9c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::RootTrollProperties
; alias: _ZN7Structs19RootTrollProperties4readEP11IStreamBase
; demangled: Structs::RootTrollProperties::read(IStreamBase*)
; decoder-mode: arm
004f7a9c  2b eb ff ea                                      b #0x4f2750
