; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c75b4, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SetWorldMapLocationState
; alias: _ZN7Structs24SetWorldMapLocationStateD2Ev
; demangled: Structs::SetWorldMapLocationState::~SetWorldMapLocationState()
; decoder-mode: arm
004c75b4  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c75b8  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c75bc  10 40 2d e9                                      push {r4, lr}
004c75c0  03 30 8f e0                                      add r3, pc, r3
004c75c4  02 20 93 e7                                      ldr r2, [r3, r2]
004c75c8  00 40 a0 e1                                      mov r4, r0
004c75cc  08 20 82 e2                                      add r2, r2, #8
004c75d0  00 20 80 e5                                      str r2, [r0]
004c75d4  a1 fd ff eb                                      bl #0x4c6c60
004c75d8  04 00 a0 e1                                      mov r0, r4
004c75dc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c75e0  d0 d4 4c 00 90 2b 00 00                          .byte 0xd0, 0xd4, 0x4c, 0x00, 0x90, 0x2b, 0x00, 0x00

; FUNCTION 0x004c75e8, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SetWorldMapLocationState
; alias: _ZN7Structs24SetWorldMapLocationStateD1Ev
; demangled: Structs::SetWorldMapLocationState::~SetWorldMapLocationState()
; decoder-mode: arm
004c75e8  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c75ec  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c75f0  10 40 2d e9                                      push {r4, lr}
004c75f4  03 30 8f e0                                      add r3, pc, r3
004c75f8  02 20 93 e7                                      ldr r2, [r3, r2]
004c75fc  00 40 a0 e1                                      mov r4, r0
004c7600  08 20 82 e2                                      add r2, r2, #8
004c7604  00 20 80 e5                                      str r2, [r0]
004c7608  94 fd ff eb                                      bl #0x4c6c60
004c760c  04 00 a0 e1                                      mov r0, r4
004c7610  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c7614  9c d4 4c 00 90 2b 00 00                          .byte 0x9c, 0xd4, 0x4c, 0x00, 0x90, 0x2b, 0x00, 0x00

; FUNCTION 0x004c761c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SetWorldMapLocationState
; alias: _ZN7Structs24SetWorldMapLocationState8finalizeEv
; demangled: Structs::SetWorldMapLocationState::finalize()
; decoder-mode: arm
004c761c  91 fd ff ea                                      b #0x4c6c68

; FUNCTION 0x004cdedc, declared_size=28, range_size=28, mode=arm
; class-group: Structs::SetWorldMapLocationState
; alias: _ZN7Structs24SetWorldMapLocationStateD0Ev
; demangled: Structs::SetWorldMapLocationState::~SetWorldMapLocationState()
; decoder-mode: arm
004cdedc  10 40 2d e9                                      push {r4, lr}
004cdee0  00 40 a0 e1                                      mov r4, r0
004cdee4  bf e5 ff eb                                      bl #0x4c75e8
004cdee8  04 00 a0 e1                                      mov r0, r4
004cdeec  53 09 f9 eb                                      bl #0x310440
004cdef0  04 00 a0 e1                                      mov r0, r4
004cdef4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00502f10, declared_size=212, range_size=212, mode=arm
; class-group: Structs::SetWorldMapLocationState
; alias: _ZN7Structs24SetWorldMapLocationState4readEP11IStreamBase
; demangled: Structs::SetWorldMapLocationState::read(IStreamBase*)
; decoder-mode: arm
00502f10  30 40 2d e9                                      push {r4, r5, lr}
00502f14  00 40 a0 e1                                      mov r4, r0
00502f18  0c d0 4d e2                                      sub sp, sp, #0xc
00502f1c  01 50 a0 e1                                      mov r5, r1
00502f20  40 f2 ff eb                                      bl #0x4ff828
00502f24  05 00 a0 e1                                      mov r0, r5
00502f28  08 10 84 e2                                      add r1, r4, #8
00502f2c  57 58 fd eb                                      bl #0x459090
00502f30  01 30 a0 e3                                      mov r3, #1
00502f34  00 00 53 e3                                      cmp r3, #0
00502f38  04 30 8d e5                                      str r3, [sp, #4]
00502f3c  0f 00 00 1a                                      bne #0x502f80
00502f40  09 30 84 e2                                      add r3, r4, #9
00502f44  0a 20 84 e2                                      add r2, r4, #0xa
00502f48  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502f4c  01 10 53 e5                                      ldrb r1, [r3, #-1]
00502f50  02 00 53 e1                                      cmp r3, r2
00502f54  01 10 20 e0                                      eor r1, r0, r1
00502f58  01 10 43 e5                                      strb r1, [r3, #-1]
00502f5c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502f60  00 10 21 e0                                      eor r1, r1, r0
00502f64  01 10 c2 e5                                      strb r1, [r2, #1]
00502f68  01 00 53 e5                                      ldrb r0, [r3, #-1]
00502f6c  01 20 42 e2                                      sub r2, r2, #1
00502f70  00 10 21 e0                                      eor r1, r1, r0
00502f74  01 10 43 e5                                      strb r1, [r3, #-1]
00502f78  01 30 83 e2                                      add r3, r3, #1
00502f7c  f1 ff ff 3a                                      blo #0x502f48
00502f80  05 00 a0 e1                                      mov r0, r5
00502f84  0c 10 84 e2                                      add r1, r4, #0xc
00502f88  40 58 fd eb                                      bl #0x459090
00502f8c  01 30 a0 e3                                      mov r3, #1
00502f90  00 00 53 e3                                      cmp r3, #0
00502f94  04 30 8d e5                                      str r3, [sp, #4]
00502f98  0f 00 00 1a                                      bne #0x502fdc
00502f9c  0e 30 84 e2                                      add r3, r4, #0xe
00502fa0  0d 40 84 e2                                      add r4, r4, #0xd
00502fa4  01 10 d3 e5                                      ldrb r1, [r3, #1]
00502fa8  01 20 54 e5                                      ldrb r2, [r4, #-1]
00502fac  04 00 53 e1                                      cmp r3, r4
00502fb0  02 20 21 e0                                      eor r2, r1, r2
00502fb4  01 20 44 e5                                      strb r2, [r4, #-1]
00502fb8  01 10 d3 e5                                      ldrb r1, [r3, #1]
00502fbc  01 20 22 e0                                      eor r2, r2, r1
00502fc0  01 20 c3 e5                                      strb r2, [r3, #1]
00502fc4  01 10 54 e5                                      ldrb r1, [r4, #-1]
00502fc8  01 30 43 e2                                      sub r3, r3, #1
00502fcc  01 20 22 e0                                      eor r2, r2, r1
00502fd0  01 20 44 e5                                      strb r2, [r4, #-1]
00502fd4  01 40 84 e2                                      add r4, r4, #1
00502fd8  f1 ff ff 8a                                      bhi #0x502fa4
00502fdc  0c d0 8d e2                                      add sp, sp, #0xc
00502fe0  30 80 bd e8                                      pop {r4, r5, pc}
