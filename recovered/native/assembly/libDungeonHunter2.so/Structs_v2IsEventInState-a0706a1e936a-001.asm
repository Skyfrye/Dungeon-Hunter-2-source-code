; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c8610, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsEventInState
; alias: _ZN7Structs16v2IsEventInStateD2Ev
; demangled: Structs::v2IsEventInState::~v2IsEventInState()
; decoder-mode: arm
004c8610  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c8614  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c8618  10 40 2d e9                                      push {r4, lr}
004c861c  03 30 8f e0                                      add r3, pc, r3
004c8620  02 20 93 e7                                      ldr r2, [r3, r2]
004c8624  00 40 a0 e1                                      mov r4, r0
004c8628  08 20 82 e2                                      add r2, r2, #8
004c862c  00 20 80 e5                                      str r2, [r0]
004c8630  a1 fd ff eb                                      bl #0x4c7cbc
004c8634  04 00 a0 e1                                      mov r0, r4
004c8638  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c863c  74 c4 4c 00 50 0a 00 00                          .byte 0x74, 0xc4, 0x4c, 0x00, 0x50, 0x0a, 0x00, 0x00

; FUNCTION 0x004c8644, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsEventInState
; alias: _ZN7Structs16v2IsEventInStateD1Ev
; demangled: Structs::v2IsEventInState::~v2IsEventInState()
; decoder-mode: arm
004c8644  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c8648  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c864c  10 40 2d e9                                      push {r4, lr}
004c8650  03 30 8f e0                                      add r3, pc, r3
004c8654  02 20 93 e7                                      ldr r2, [r3, r2]
004c8658  00 40 a0 e1                                      mov r4, r0
004c865c  08 20 82 e2                                      add r2, r2, #8
004c8660  00 20 80 e5                                      str r2, [r0]
004c8664  94 fd ff eb                                      bl #0x4c7cbc
004c8668  04 00 a0 e1                                      mov r0, r4
004c866c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c8670  40 c4 4c 00 50 0a 00 00                          .byte 0x40, 0xc4, 0x4c, 0x00, 0x50, 0x0a, 0x00, 0x00

; FUNCTION 0x004c8678, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsEventInState
; alias: _ZN7Structs16v2IsEventInState8finalizeEv
; demangled: Structs::v2IsEventInState::finalize()
; decoder-mode: arm
004c8678  91 fd ff ea                                      b #0x4c7cc4

; FUNCTION 0x004cd99c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2IsEventInState
; alias: _ZN7Structs16v2IsEventInStateD0Ev
; demangled: Structs::v2IsEventInState::~v2IsEventInState()
; decoder-mode: arm
004cd99c  10 40 2d e9                                      push {r4, lr}
004cd9a0  00 40 a0 e1                                      mov r4, r0
004cd9a4  26 eb ff eb                                      bl #0x4c8644
004cd9a8  04 00 a0 e1                                      mov r0, r4
004cd9ac  a3 0a f9 eb                                      bl #0x310440
004cd9b0  04 00 a0 e1                                      mov r0, r4
004cd9b4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00505b98, declared_size=212, range_size=212, mode=arm
; class-group: Structs::v2IsEventInState
; alias: _ZN7Structs16v2IsEventInState4readEP11IStreamBase
; demangled: Structs::v2IsEventInState::read(IStreamBase*)
; decoder-mode: arm
00505b98  30 40 2d e9                                      push {r4, r5, lr}
00505b9c  00 40 a0 e1                                      mov r4, r0
00505ba0  0c d0 4d e2                                      sub sp, sp, #0xc
00505ba4  01 50 a0 e1                                      mov r5, r1
00505ba8  de ff ff eb                                      bl #0x505b28
00505bac  05 00 a0 e1                                      mov r0, r5
00505bb0  08 10 84 e2                                      add r1, r4, #8
00505bb4  35 4d fd eb                                      bl #0x459090
00505bb8  01 30 a0 e3                                      mov r3, #1
00505bbc  00 00 53 e3                                      cmp r3, #0
00505bc0  04 30 8d e5                                      str r3, [sp, #4]
00505bc4  0f 00 00 1a                                      bne #0x505c08
00505bc8  09 30 84 e2                                      add r3, r4, #9
00505bcc  0a 20 84 e2                                      add r2, r4, #0xa
00505bd0  01 00 d2 e5                                      ldrb r0, [r2, #1]
00505bd4  01 10 53 e5                                      ldrb r1, [r3, #-1]
00505bd8  02 00 53 e1                                      cmp r3, r2
00505bdc  01 10 20 e0                                      eor r1, r0, r1
00505be0  01 10 43 e5                                      strb r1, [r3, #-1]
00505be4  01 00 d2 e5                                      ldrb r0, [r2, #1]
00505be8  00 10 21 e0                                      eor r1, r1, r0
00505bec  01 10 c2 e5                                      strb r1, [r2, #1]
00505bf0  01 00 53 e5                                      ldrb r0, [r3, #-1]
00505bf4  01 20 42 e2                                      sub r2, r2, #1
00505bf8  00 10 21 e0                                      eor r1, r1, r0
00505bfc  01 10 43 e5                                      strb r1, [r3, #-1]
00505c00  01 30 83 e2                                      add r3, r3, #1
00505c04  f1 ff ff 3a                                      blo #0x505bd0
00505c08  05 00 a0 e1                                      mov r0, r5
00505c0c  0c 10 84 e2                                      add r1, r4, #0xc
00505c10  1e 4d fd eb                                      bl #0x459090
00505c14  01 30 a0 e3                                      mov r3, #1
00505c18  00 00 53 e3                                      cmp r3, #0
00505c1c  04 30 8d e5                                      str r3, [sp, #4]
00505c20  0f 00 00 1a                                      bne #0x505c64
00505c24  0e 30 84 e2                                      add r3, r4, #0xe
00505c28  0d 40 84 e2                                      add r4, r4, #0xd
00505c2c  01 10 d3 e5                                      ldrb r1, [r3, #1]
00505c30  01 20 54 e5                                      ldrb r2, [r4, #-1]
00505c34  04 00 53 e1                                      cmp r3, r4
00505c38  02 20 21 e0                                      eor r2, r1, r2
00505c3c  01 20 44 e5                                      strb r2, [r4, #-1]
00505c40  01 10 d3 e5                                      ldrb r1, [r3, #1]
00505c44  01 20 22 e0                                      eor r2, r2, r1
00505c48  01 20 c3 e5                                      strb r2, [r3, #1]
00505c4c  01 10 54 e5                                      ldrb r1, [r4, #-1]
00505c50  01 30 43 e2                                      sub r3, r3, #1
00505c54  01 20 22 e0                                      eor r2, r2, r1
00505c58  01 20 44 e5                                      strb r2, [r4, #-1]
00505c5c  01 40 84 e2                                      add r4, r4, #1
00505c60  f1 ff ff 8a                                      bhi #0x505c2c
00505c64  0c d0 8d e2                                      add sp, sp, #0xc
00505c68  30 80 bd e8                                      pop {r4, r5, pc}
