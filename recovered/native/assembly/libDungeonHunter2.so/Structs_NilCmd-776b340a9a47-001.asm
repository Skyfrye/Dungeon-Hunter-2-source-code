; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6e88, declared_size=52, range_size=52, mode=arm
; class-group: Structs::NilCmd
; alias: _ZN7Structs6NilCmdD2Ev
; demangled: Structs::NilCmd::~NilCmd()
; decoder-mode: arm
004c6e88  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6e8c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6e90  10 40 2d e9                                      push {r4, lr}
004c6e94  03 30 8f e0                                      add r3, pc, r3
004c6e98  02 20 93 e7                                      ldr r2, [r3, r2]
004c6e9c  00 40 a0 e1                                      mov r4, r0
004c6ea0  08 20 82 e2                                      add r2, r2, #8
004c6ea4  00 20 80 e5                                      str r2, [r0]
004c6ea8  6c ff ff eb                                      bl #0x4c6c60
004c6eac  04 00 a0 e1                                      mov r0, r4
004c6eb0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6eb4  fc db 4c 00 bc 2b 00 00                          .byte 0xfc, 0xdb, 0x4c, 0x00, 0xbc, 0x2b, 0x00, 0x00

; FUNCTION 0x004c6ebc, declared_size=52, range_size=52, mode=arm
; class-group: Structs::NilCmd
; alias: _ZN7Structs6NilCmdD1Ev
; demangled: Structs::NilCmd::~NilCmd()
; decoder-mode: arm
004c6ebc  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6ec0  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6ec4  10 40 2d e9                                      push {r4, lr}
004c6ec8  03 30 8f e0                                      add r3, pc, r3
004c6ecc  02 20 93 e7                                      ldr r2, [r3, r2]
004c6ed0  00 40 a0 e1                                      mov r4, r0
004c6ed4  08 20 82 e2                                      add r2, r2, #8
004c6ed8  00 20 80 e5                                      str r2, [r0]
004c6edc  5f ff ff eb                                      bl #0x4c6c60
004c6ee0  04 00 a0 e1                                      mov r0, r4
004c6ee4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6ee8  c8 db 4c 00 bc 2b 00 00                          .byte 0xc8, 0xdb, 0x4c, 0x00, 0xbc, 0x2b, 0x00, 0x00

; FUNCTION 0x004c6ef0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::NilCmd
; alias: _ZN7Structs6NilCmd8finalizeEv
; demangled: Structs::NilCmd::finalize()
; decoder-mode: arm
004c6ef0  5c ff ff ea                                      b #0x4c6c68

; FUNCTION 0x004ce0b8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::NilCmd
; alias: _ZN7Structs6NilCmdD0Ev
; demangled: Structs::NilCmd::~NilCmd()
; decoder-mode: arm
004ce0b8  10 40 2d e9                                      push {r4, lr}
004ce0bc  00 40 a0 e1                                      mov r4, r0
004ce0c0  7d e3 ff eb                                      bl #0x4c6ebc
004ce0c4  04 00 a0 e1                                      mov r0, r4
004ce0c8  dc 08 f9 eb                                      bl #0x310440
004ce0cc  04 00 a0 e1                                      mov r0, r4
004ce0d0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ff8d4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::NilCmd
; alias: _ZN7Structs6NilCmd4readEP11IStreamBase
; demangled: Structs::NilCmd::read(IStreamBase*)
; decoder-mode: arm
004ff8d4  d3 ff ff ea                                      b #0x4ff828
