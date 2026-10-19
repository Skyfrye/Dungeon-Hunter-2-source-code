; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6e1c, declared_size=52, range_size=52, mode=arm
; class-group: Structs::WaitCamera
; alias: _ZN7Structs10WaitCameraD2Ev
; demangled: Structs::WaitCamera::~WaitCamera()
; decoder-mode: arm
004c6e1c  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6e20  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6e24  10 40 2d e9                                      push {r4, lr}
004c6e28  03 30 8f e0                                      add r3, pc, r3
004c6e2c  02 20 93 e7                                      ldr r2, [r3, r2]
004c6e30  00 40 a0 e1                                      mov r4, r0
004c6e34  08 20 82 e2                                      add r2, r2, #8
004c6e38  00 20 80 e5                                      str r2, [r0]
004c6e3c  87 ff ff eb                                      bl #0x4c6c60
004c6e40  04 00 a0 e1                                      mov r0, r4
004c6e44  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6e48  68 dc 4c 00 3c 45 00 00                          .byte 0x68, 0xdc, 0x4c, 0x00, 0x3c, 0x45, 0x00, 0x00

; FUNCTION 0x004c6e50, declared_size=52, range_size=52, mode=arm
; class-group: Structs::WaitCamera
; alias: _ZN7Structs10WaitCameraD1Ev
; demangled: Structs::WaitCamera::~WaitCamera()
; decoder-mode: arm
004c6e50  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6e54  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6e58  10 40 2d e9                                      push {r4, lr}
004c6e5c  03 30 8f e0                                      add r3, pc, r3
004c6e60  02 20 93 e7                                      ldr r2, [r3, r2]
004c6e64  00 40 a0 e1                                      mov r4, r0
004c6e68  08 20 82 e2                                      add r2, r2, #8
004c6e6c  00 20 80 e5                                      str r2, [r0]
004c6e70  7a ff ff eb                                      bl #0x4c6c60
004c6e74  04 00 a0 e1                                      mov r0, r4
004c6e78  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6e7c  34 dc 4c 00 3c 45 00 00                          .byte 0x34, 0xdc, 0x4c, 0x00, 0x3c, 0x45, 0x00, 0x00

; FUNCTION 0x004c6e84, declared_size=4, range_size=4, mode=arm
; class-group: Structs::WaitCamera
; alias: _ZN7Structs10WaitCamera8finalizeEv
; demangled: Structs::WaitCamera::finalize()
; decoder-mode: arm
004c6e84  77 ff ff ea                                      b #0x4c6c68

; FUNCTION 0x004ce0d4, declared_size=28, range_size=28, mode=arm
; class-group: Structs::WaitCamera
; alias: _ZN7Structs10WaitCameraD0Ev
; demangled: Structs::WaitCamera::~WaitCamera()
; decoder-mode: arm
004ce0d4  10 40 2d e9                                      push {r4, lr}
004ce0d8  00 40 a0 e1                                      mov r4, r0
004ce0dc  5b e3 ff eb                                      bl #0x4c6e50
004ce0e0  04 00 a0 e1                                      mov r0, r4
004ce0e4  d5 08 f9 eb                                      bl #0x310440
004ce0e8  04 00 a0 e1                                      mov r0, r4
004ce0ec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ffdc0, declared_size=120, range_size=120, mode=arm
; class-group: Structs::WaitCamera
; alias: _ZN7Structs10WaitCamera4readEP11IStreamBase
; demangled: Structs::WaitCamera::read(IStreamBase*)
; decoder-mode: arm
004ffdc0  30 40 2d e9                                      push {r4, r5, lr}
004ffdc4  00 40 a0 e1                                      mov r4, r0
004ffdc8  0c d0 4d e2                                      sub sp, sp, #0xc
004ffdcc  01 50 a0 e1                                      mov r5, r1
004ffdd0  94 fe ff eb                                      bl #0x4ff828
004ffdd4  05 00 a0 e1                                      mov r0, r5
004ffdd8  08 10 84 e2                                      add r1, r4, #8
004ffddc  da 6e ff eb                                      bl #0x4db94c
004ffde0  01 30 a0 e3                                      mov r3, #1
004ffde4  00 00 53 e3                                      cmp r3, #0
004ffde8  04 30 8d e5                                      str r3, [sp, #4]
004ffdec  0f 00 00 1a                                      bne #0x4ffe30
004ffdf0  0a 30 84 e2                                      add r3, r4, #0xa
004ffdf4  09 40 84 e2                                      add r4, r4, #9
004ffdf8  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ffdfc  01 20 54 e5                                      ldrb r2, [r4, #-1]
004ffe00  03 00 54 e1                                      cmp r4, r3
004ffe04  02 20 21 e0                                      eor r2, r1, r2
004ffe08  01 20 44 e5                                      strb r2, [r4, #-1]
004ffe0c  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ffe10  01 20 22 e0                                      eor r2, r2, r1
004ffe14  01 20 c3 e5                                      strb r2, [r3, #1]
004ffe18  01 10 54 e5                                      ldrb r1, [r4, #-1]
004ffe1c  01 30 43 e2                                      sub r3, r3, #1
004ffe20  01 20 22 e0                                      eor r2, r2, r1
004ffe24  01 20 44 e5                                      strb r2, [r4, #-1]
004ffe28  01 40 84 e2                                      add r4, r4, #1
004ffe2c  f1 ff ff 3a                                      blo #0x4ffdf8
004ffe30  0c d0 8d e2                                      add sp, sp, #0xc
004ffe34  30 80 bd e8                                      pop {r4, r5, pc}
