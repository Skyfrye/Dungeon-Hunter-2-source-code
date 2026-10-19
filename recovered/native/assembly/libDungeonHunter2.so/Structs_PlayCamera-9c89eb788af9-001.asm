; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6d44, declared_size=52, range_size=52, mode=arm
; class-group: Structs::PlayCamera
; alias: _ZN7Structs10PlayCameraD2Ev
; demangled: Structs::PlayCamera::~PlayCamera()
; decoder-mode: arm
004c6d44  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6d48  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6d4c  10 40 2d e9                                      push {r4, lr}
004c6d50  03 30 8f e0                                      add r3, pc, r3
004c6d54  02 20 93 e7                                      ldr r2, [r3, r2]
004c6d58  00 40 a0 e1                                      mov r4, r0
004c6d5c  08 20 82 e2                                      add r2, r2, #8
004c6d60  00 20 80 e5                                      str r2, [r0]
004c6d64  bd ff ff eb                                      bl #0x4c6c60
004c6d68  04 00 a0 e1                                      mov r0, r4
004c6d6c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6d70  40 dd 4c 00 84 21 00 00                          .byte 0x40, 0xdd, 0x4c, 0x00, 0x84, 0x21, 0x00, 0x00

; FUNCTION 0x004c6d78, declared_size=52, range_size=52, mode=arm
; class-group: Structs::PlayCamera
; alias: _ZN7Structs10PlayCameraD1Ev
; demangled: Structs::PlayCamera::~PlayCamera()
; decoder-mode: arm
004c6d78  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6d7c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6d80  10 40 2d e9                                      push {r4, lr}
004c6d84  03 30 8f e0                                      add r3, pc, r3
004c6d88  02 20 93 e7                                      ldr r2, [r3, r2]
004c6d8c  00 40 a0 e1                                      mov r4, r0
004c6d90  08 20 82 e2                                      add r2, r2, #8
004c6d94  00 20 80 e5                                      str r2, [r0]
004c6d98  b0 ff ff eb                                      bl #0x4c6c60
004c6d9c  04 00 a0 e1                                      mov r0, r4
004c6da0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6da4  0c dd 4c 00 84 21 00 00                          .byte 0x0c, 0xdd, 0x4c, 0x00, 0x84, 0x21, 0x00, 0x00

; FUNCTION 0x004c6dac, declared_size=4, range_size=4, mode=arm
; class-group: Structs::PlayCamera
; alias: _ZN7Structs10PlayCamera8finalizeEv
; demangled: Structs::PlayCamera::finalize()
; decoder-mode: arm
004c6dac  ad ff ff ea                                      b #0x4c6c68

; FUNCTION 0x004ce10c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::PlayCamera
; alias: _ZN7Structs10PlayCameraD0Ev
; demangled: Structs::PlayCamera::~PlayCamera()
; decoder-mode: arm
004ce10c  10 40 2d e9                                      push {r4, lr}
004ce110  00 40 a0 e1                                      mov r4, r0
004ce114  17 e3 ff eb                                      bl #0x4c6d78
004ce118  04 00 a0 e1                                      mov r0, r4
004ce11c  c7 08 f9 eb                                      bl #0x310440
004ce120  04 00 a0 e1                                      mov r0, r4
004ce124  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ffba0, declared_size=132, range_size=132, mode=arm
; class-group: Structs::PlayCamera
; alias: _ZN7Structs10PlayCamera4readEP11IStreamBase
; demangled: Structs::PlayCamera::read(IStreamBase*)
; decoder-mode: arm
004ffba0  30 40 2d e9                                      push {r4, r5, lr}
004ffba4  00 40 a0 e1                                      mov r4, r0
004ffba8  0c d0 4d e2                                      sub sp, sp, #0xc
004ffbac  01 50 a0 e1                                      mov r5, r1
004ffbb0  1c ff ff eb                                      bl #0x4ff828
004ffbb4  05 00 a0 e1                                      mov r0, r5
004ffbb8  08 10 84 e2                                      add r1, r4, #8
004ffbbc  33 65 fd eb                                      bl #0x459090
004ffbc0  01 30 a0 e3                                      mov r3, #1
004ffbc4  00 00 53 e3                                      cmp r3, #0
004ffbc8  04 30 8d e5                                      str r3, [sp, #4]
004ffbcc  0f 00 00 1a                                      bne #0x4ffc10
004ffbd0  09 30 84 e2                                      add r3, r4, #9
004ffbd4  0a 20 84 e2                                      add r2, r4, #0xa
004ffbd8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ffbdc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ffbe0  02 00 53 e1                                      cmp r3, r2
004ffbe4  01 10 20 e0                                      eor r1, r0, r1
004ffbe8  01 10 43 e5                                      strb r1, [r3, #-1]
004ffbec  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ffbf0  00 10 21 e0                                      eor r1, r1, r0
004ffbf4  01 10 c2 e5                                      strb r1, [r2, #1]
004ffbf8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ffbfc  01 20 42 e2                                      sub r2, r2, #1
004ffc00  00 10 21 e0                                      eor r1, r1, r0
004ffc04  01 10 43 e5                                      strb r1, [r3, #-1]
004ffc08  01 30 83 e2                                      add r3, r3, #1
004ffc0c  f1 ff ff 3a                                      blo #0x4ffbd8
004ffc10  05 00 a0 e1                                      mov r0, r5
004ffc14  0c 10 84 e2                                      add r1, r4, #0xc
004ffc18  1f 6f ff eb                                      bl #0x4db89c
004ffc1c  0c d0 8d e2                                      add sp, sp, #0xc
004ffc20  30 80 bd e8                                      pop {r4, r5, pc}
