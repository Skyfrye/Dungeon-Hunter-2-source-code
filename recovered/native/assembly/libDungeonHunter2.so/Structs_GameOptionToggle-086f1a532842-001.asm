; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6b10, declared_size=52, range_size=52, mode=arm
; class-group: Structs::GameOptionToggle
; alias: _ZN7Structs16GameOptionToggleD2Ev
; demangled: Structs::GameOptionToggle::~GameOptionToggle()
; decoder-mode: arm
004c6b10  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6b14  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6b18  10 40 2d e9                                      push {r4, lr}
004c6b1c  03 30 8f e0                                      add r3, pc, r3
004c6b20  02 20 93 e7                                      ldr r2, [r3, r2]
004c6b24  00 40 a0 e1                                      mov r4, r0
004c6b28  08 20 82 e2                                      add r2, r2, #8
004c6b2c  00 20 80 e5                                      str r2, [r0]
004c6b30  bd ff ff eb                                      bl #0x4c6a2c
004c6b34  04 00 a0 e1                                      mov r0, r4
004c6b38  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6b3c  74 df 4c 00 04 2c 00 00                          .byte 0x74, 0xdf, 0x4c, 0x00, 0x04, 0x2c, 0x00, 0x00

; FUNCTION 0x004c6b44, declared_size=52, range_size=52, mode=arm
; class-group: Structs::GameOptionToggle
; alias: _ZN7Structs16GameOptionToggleD1Ev
; demangled: Structs::GameOptionToggle::~GameOptionToggle()
; decoder-mode: arm
004c6b44  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6b48  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6b4c  10 40 2d e9                                      push {r4, lr}
004c6b50  03 30 8f e0                                      add r3, pc, r3
004c6b54  02 20 93 e7                                      ldr r2, [r3, r2]
004c6b58  00 40 a0 e1                                      mov r4, r0
004c6b5c  08 20 82 e2                                      add r2, r2, #8
004c6b60  00 20 80 e5                                      str r2, [r0]
004c6b64  b0 ff ff eb                                      bl #0x4c6a2c
004c6b68  04 00 a0 e1                                      mov r0, r4
004c6b6c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6b70  40 df 4c 00 04 2c 00 00                          .byte 0x40, 0xdf, 0x4c, 0x00, 0x04, 0x2c, 0x00, 0x00

; FUNCTION 0x004c6b78, declared_size=4, range_size=4, mode=arm
; class-group: Structs::GameOptionToggle
; alias: _ZN7Structs16GameOptionToggle8finalizeEv
; demangled: Structs::GameOptionToggle::finalize()
; decoder-mode: arm
004c6b78  ad ff ff ea                                      b #0x4c6a34

; FUNCTION 0x004ce390, declared_size=28, range_size=28, mode=arm
; class-group: Structs::GameOptionToggle
; alias: _ZN7Structs16GameOptionToggleD0Ev
; demangled: Structs::GameOptionToggle::~GameOptionToggle()
; decoder-mode: arm
004ce390  10 40 2d e9                                      push {r4, lr}
004ce394  00 40 a0 e1                                      mov r4, r0
004ce398  e9 e1 ff eb                                      bl #0x4c6b44
004ce39c  04 00 a0 e1                                      mov r0, r4
004ce3a0  26 08 f9 eb                                      bl #0x310440
004ce3a4  04 00 a0 e1                                      mov r0, r4
004ce3a8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004f23d8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::GameOptionToggle
; alias: _ZN7Structs16GameOptionToggle4readEP11IStreamBase
; demangled: Structs::GameOptionToggle::read(IStreamBase*)
; decoder-mode: arm
004f23d8  57 ff ff ea                                      b #0x4f213c
