; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d4698, declared_size=76, range_size=76, mode=arm
; class-group: Structs::BeltRef
; alias: _ZN7Structs7BeltRef8finalizeEv
; demangled: Structs::BeltRef::finalize()
; decoder-mode: arm
004d4698  10 40 2d e9                                      push {r4, lr}
004d469c  00 40 a0 e1                                      mov r4, r0
004d46a0  08 00 90 e5                                      ldr r0, [r0, #8]
004d46a4  00 00 50 e3                                      cmp r0, #0
004d46a8  03 00 00 0a                                      beq #0x4d46bc
004d46ac  63 ef f8 eb                                      bl #0x310440
004d46b0  00 30 a0 e3                                      mov r3, #0
004d46b4  04 30 84 e5                                      str r3, [r4, #4]
004d46b8  08 30 84 e5                                      str r3, [r4, #8]
004d46bc  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d46c0  00 00 50 e3                                      cmp r0, #0
004d46c4  03 00 00 0a                                      beq #0x4d46d8
004d46c8  5c ef f8 eb                                      bl #0x310440
004d46cc  00 30 a0 e3                                      mov r3, #0
004d46d0  4c 30 84 e5                                      str r3, [r4, #0x4c]
004d46d4  50 30 84 e5                                      str r3, [r4, #0x50]
004d46d8  04 00 a0 e1                                      mov r0, r4
004d46dc  10 40 bd e8                                      pop {r4, lr}
004d46e0  d9 ff ff ea                                      b #0x4d464c

; FUNCTION 0x004d4d90, declared_size=88, range_size=88, mode=arm
; class-group: Structs::BeltRef
; alias: _ZN7Structs7BeltRefD1Ev
; demangled: Structs::BeltRef::~BeltRef()
; decoder-mode: arm
004d4d90  10 40 2d e9                                      push {r4, lr}
004d4d94  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d4d98  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d4d9c  00 40 a0 e1                                      mov r4, r0
004d4da0  03 30 8f e0                                      add r3, pc, r3
004d4da4  08 00 90 e5                                      ldr r0, [r0, #8]
004d4da8  02 20 93 e7                                      ldr r2, [r3, r2]
004d4dac  00 00 50 e3                                      cmp r0, #0
004d4db0  08 20 82 e2                                      add r2, r2, #8
004d4db4  00 20 84 e5                                      str r2, [r4]
004d4db8  00 00 00 0a                                      beq #0x4d4dc0
004d4dbc  9f ed f8 eb                                      bl #0x310440
004d4dc0  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d4dc4  00 00 50 e3                                      cmp r0, #0
004d4dc8  00 00 00 0a                                      beq #0x4d4dd0
004d4dcc  9b ed f8 eb                                      bl #0x310440
004d4dd0  04 00 a0 e1                                      mov r0, r4
004d4dd4  d7 ff ff eb                                      bl #0x4d4d38
004d4dd8  04 00 a0 e1                                      mov r0, r4
004d4ddc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d4de0  f0 fc 4b 00 c4 39 00 00                          .byte 0xf0, 0xfc, 0x4b, 0x00, 0xc4, 0x39, 0x00, 0x00

; FUNCTION 0x004d4de8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::BeltRef
; alias: _ZN7Structs7BeltRefD0Ev
; demangled: Structs::BeltRef::~BeltRef()
; decoder-mode: arm
004d4de8  10 40 2d e9                                      push {r4, lr}
004d4dec  00 40 a0 e1                                      mov r4, r0
004d4df0  e6 ff ff eb                                      bl #0x4d4d90
004d4df4  04 00 a0 e1                                      mov r0, r4
004d4df8  90 ed f8 eb                                      bl #0x310440
004d4dfc  04 00 a0 e1                                      mov r0, r4
004d4e00  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d4e04, declared_size=88, range_size=88, mode=arm
; class-group: Structs::BeltRef
; alias: _ZN7Structs7BeltRefD2Ev
; demangled: Structs::BeltRef::~BeltRef()
; decoder-mode: arm
004d4e04  10 40 2d e9                                      push {r4, lr}
004d4e08  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d4e0c  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d4e10  00 40 a0 e1                                      mov r4, r0
004d4e14  03 30 8f e0                                      add r3, pc, r3
004d4e18  08 00 90 e5                                      ldr r0, [r0, #8]
004d4e1c  02 20 93 e7                                      ldr r2, [r3, r2]
004d4e20  00 00 50 e3                                      cmp r0, #0
004d4e24  08 20 82 e2                                      add r2, r2, #8
004d4e28  00 20 84 e5                                      str r2, [r4]
004d4e2c  00 00 00 0a                                      beq #0x4d4e34
004d4e30  82 ed f8 eb                                      bl #0x310440
004d4e34  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d4e38  00 00 50 e3                                      cmp r0, #0
004d4e3c  00 00 00 0a                                      beq #0x4d4e44
004d4e40  7e ed f8 eb                                      bl #0x310440
004d4e44  04 00 a0 e1                                      mov r0, r4
004d4e48  ba ff ff eb                                      bl #0x4d4d38
004d4e4c  04 00 a0 e1                                      mov r0, r4
004d4e50  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d4e54  7c fc 4b 00 c4 39 00 00                          .byte 0x7c, 0xfc, 0x4b, 0x00, 0xc4, 0x39, 0x00, 0x00

; FUNCTION 0x004fa660, declared_size=4, range_size=4, mode=arm
; class-group: Structs::BeltRef
; alias: _ZN7Structs7BeltRef4readEP11IStreamBase
; demangled: Structs::BeltRef::read(IStreamBase*)
; decoder-mode: arm
004fa660  d4 fd ff ea                                      b #0x4f9db8
