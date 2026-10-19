; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c5d9c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::Coward_Dog
; alias: _ZN7Structs10Coward_DogD2Ev
; demangled: Structs::Coward_Dog::~Coward_Dog()
; decoder-mode: arm
004c5d9c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5da0  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5da4  10 40 2d e9                                      push {r4, lr}
004c5da8  03 30 8f e0                                      add r3, pc, r3
004c5dac  02 20 93 e7                                      ldr r2, [r3, r2]
004c5db0  00 40 a0 e1                                      mov r4, r0
004c5db4  08 20 82 e2                                      add r2, r2, #8
004c5db8  00 20 80 e5                                      str r2, [r0]
004c5dbc  5e fe ff eb                                      bl #0x4c573c
004c5dc0  04 00 a0 e1                                      mov r0, r4
004c5dc4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5dc8  e8 ec 4c 00 14 3a 00 00                          .byte 0xe8, 0xec, 0x4c, 0x00, 0x14, 0x3a, 0x00, 0x00

; FUNCTION 0x004c5dd0, declared_size=52, range_size=52, mode=arm
; class-group: Structs::Coward_Dog
; alias: _ZN7Structs10Coward_DogD1Ev
; demangled: Structs::Coward_Dog::~Coward_Dog()
; decoder-mode: arm
004c5dd0  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c5dd4  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c5dd8  10 40 2d e9                                      push {r4, lr}
004c5ddc  03 30 8f e0                                      add r3, pc, r3
004c5de0  02 20 93 e7                                      ldr r2, [r3, r2]
004c5de4  00 40 a0 e1                                      mov r4, r0
004c5de8  08 20 82 e2                                      add r2, r2, #8
004c5dec  00 20 80 e5                                      str r2, [r0]
004c5df0  51 fe ff eb                                      bl #0x4c573c
004c5df4  04 00 a0 e1                                      mov r0, r4
004c5df8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c5dfc  b4 ec 4c 00 14 3a 00 00                          .byte 0xb4, 0xec, 0x4c, 0x00, 0x14, 0x3a, 0x00, 0x00

; FUNCTION 0x004c5e04, declared_size=4, range_size=4, mode=arm
; class-group: Structs::Coward_Dog
; alias: _ZN7Structs10Coward_Dog8finalizeEv
; demangled: Structs::Coward_Dog::finalize()
; decoder-mode: arm
004c5e04  4e fe ff ea                                      b #0x4c5744

; FUNCTION 0x004ce7d4, declared_size=28, range_size=28, mode=arm
; class-group: Structs::Coward_Dog
; alias: _ZN7Structs10Coward_DogD0Ev
; demangled: Structs::Coward_Dog::~Coward_Dog()
; decoder-mode: arm
004ce7d4  10 40 2d e9                                      push {r4, lr}
004ce7d8  00 40 a0 e1                                      mov r4, r0
004ce7dc  7b dd ff eb                                      bl #0x4c5dd0
004ce7e0  04 00 a0 e1                                      mov r0, r4
004ce7e4  15 07 f9 eb                                      bl #0x310440
004ce7e8  04 00 a0 e1                                      mov r0, r4
004ce7ec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f7ad8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::Coward_Dog
; alias: _ZN7Structs10Coward_Dog4readEP11IStreamBase
; demangled: Structs::Coward_Dog::read(IStreamBase*)
; decoder-mode: arm
004f7ad8  1c eb ff ea                                      b #0x4f2750
