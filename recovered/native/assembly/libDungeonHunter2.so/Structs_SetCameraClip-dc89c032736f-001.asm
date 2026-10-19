; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c6db0, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SetCameraClip
; alias: _ZN7Structs13SetCameraClipD2Ev
; demangled: Structs::SetCameraClip::~SetCameraClip()
; decoder-mode: arm
004c6db0  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6db4  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6db8  10 40 2d e9                                      push {r4, lr}
004c6dbc  03 30 8f e0                                      add r3, pc, r3
004c6dc0  02 20 93 e7                                      ldr r2, [r3, r2]
004c6dc4  00 40 a0 e1                                      mov r4, r0
004c6dc8  08 20 82 e2                                      add r2, r2, #8
004c6dcc  00 20 80 e5                                      str r2, [r0]
004c6dd0  a2 ff ff eb                                      bl #0x4c6c60
004c6dd4  04 00 a0 e1                                      mov r0, r4
004c6dd8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6ddc  d4 dc 4c 00 48 2f 00 00                          .byte 0xd4, 0xdc, 0x4c, 0x00, 0x48, 0x2f, 0x00, 0x00

; FUNCTION 0x004c6de4, declared_size=52, range_size=52, mode=arm
; class-group: Structs::SetCameraClip
; alias: _ZN7Structs13SetCameraClipD1Ev
; demangled: Structs::SetCameraClip::~SetCameraClip()
; decoder-mode: arm
004c6de4  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c6de8  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c6dec  10 40 2d e9                                      push {r4, lr}
004c6df0  03 30 8f e0                                      add r3, pc, r3
004c6df4  02 20 93 e7                                      ldr r2, [r3, r2]
004c6df8  00 40 a0 e1                                      mov r4, r0
004c6dfc  08 20 82 e2                                      add r2, r2, #8
004c6e00  00 20 80 e5                                      str r2, [r0]
004c6e04  95 ff ff eb                                      bl #0x4c6c60
004c6e08  04 00 a0 e1                                      mov r0, r4
004c6e0c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c6e10  a0 dc 4c 00 48 2f 00 00                          .byte 0xa0, 0xdc, 0x4c, 0x00, 0x48, 0x2f, 0x00, 0x00

; FUNCTION 0x004c6e18, declared_size=4, range_size=4, mode=arm
; class-group: Structs::SetCameraClip
; alias: _ZN7Structs13SetCameraClip8finalizeEv
; demangled: Structs::SetCameraClip::finalize()
; decoder-mode: arm
004c6e18  92 ff ff ea                                      b #0x4c6c68

; FUNCTION 0x004ce0f0, declared_size=28, range_size=28, mode=arm
; class-group: Structs::SetCameraClip
; alias: _ZN7Structs13SetCameraClipD0Ev
; demangled: Structs::SetCameraClip::~SetCameraClip()
; decoder-mode: arm
004ce0f0  10 40 2d e9                                      push {r4, lr}
004ce0f4  00 40 a0 e1                                      mov r4, r0
004ce0f8  39 e3 ff eb                                      bl #0x4c6de4
004ce0fc  04 00 a0 e1                                      mov r0, r4
004ce100  ce 08 f9 eb                                      bl #0x310440
004ce104  04 00 a0 e1                                      mov r0, r4
004ce108  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004ff8d8, declared_size=212, range_size=212, mode=arm
; class-group: Structs::SetCameraClip
; alias: _ZN7Structs13SetCameraClip4readEP11IStreamBase
; demangled: Structs::SetCameraClip::read(IStreamBase*)
; decoder-mode: arm
004ff8d8  30 40 2d e9                                      push {r4, r5, lr}
004ff8dc  00 40 a0 e1                                      mov r4, r0
004ff8e0  0c d0 4d e2                                      sub sp, sp, #0xc
004ff8e4  01 50 a0 e1                                      mov r5, r1
004ff8e8  ce ff ff eb                                      bl #0x4ff828
004ff8ec  05 00 a0 e1                                      mov r0, r5
004ff8f0  08 10 84 e2                                      add r1, r4, #8
004ff8f4  e5 65 fd eb                                      bl #0x459090
004ff8f8  01 30 a0 e3                                      mov r3, #1
004ff8fc  00 00 53 e3                                      cmp r3, #0
004ff900  04 30 8d e5                                      str r3, [sp, #4]
004ff904  0f 00 00 1a                                      bne #0x4ff948
004ff908  09 30 84 e2                                      add r3, r4, #9
004ff90c  0a 20 84 e2                                      add r2, r4, #0xa
004ff910  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ff914  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ff918  02 00 53 e1                                      cmp r3, r2
004ff91c  01 10 20 e0                                      eor r1, r0, r1
004ff920  01 10 43 e5                                      strb r1, [r3, #-1]
004ff924  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ff928  00 10 21 e0                                      eor r1, r1, r0
004ff92c  01 10 c2 e5                                      strb r1, [r2, #1]
004ff930  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ff934  01 20 42 e2                                      sub r2, r2, #1
004ff938  00 10 21 e0                                      eor r1, r1, r0
004ff93c  01 10 43 e5                                      strb r1, [r3, #-1]
004ff940  01 30 83 e2                                      add r3, r3, #1
004ff944  f1 ff ff 3a                                      blo #0x4ff910
004ff948  05 00 a0 e1                                      mov r0, r5
004ff94c  0c 10 84 e2                                      add r1, r4, #0xc
004ff950  ce 65 fd eb                                      bl #0x459090
004ff954  01 30 a0 e3                                      mov r3, #1
004ff958  00 00 53 e3                                      cmp r3, #0
004ff95c  04 30 8d e5                                      str r3, [sp, #4]
004ff960  0f 00 00 1a                                      bne #0x4ff9a4
004ff964  0e 30 84 e2                                      add r3, r4, #0xe
004ff968  0d 40 84 e2                                      add r4, r4, #0xd
004ff96c  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ff970  01 20 54 e5                                      ldrb r2, [r4, #-1]
004ff974  04 00 53 e1                                      cmp r3, r4
004ff978  02 20 21 e0                                      eor r2, r1, r2
004ff97c  01 20 44 e5                                      strb r2, [r4, #-1]
004ff980  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ff984  01 20 22 e0                                      eor r2, r2, r1
004ff988  01 20 c3 e5                                      strb r2, [r3, #1]
004ff98c  01 10 54 e5                                      ldrb r1, [r4, #-1]
004ff990  01 30 43 e2                                      sub r3, r3, #1
004ff994  01 20 22 e0                                      eor r2, r2, r1
004ff998  01 20 44 e5                                      strb r2, [r4, #-1]
004ff99c  01 40 84 e2                                      add r4, r4, #1
004ff9a0  f1 ff ff 8a                                      bhi #0x4ff96c
004ff9a4  0c d0 8d e2                                      add sp, sp, #0xc
004ff9a8  30 80 bd e8                                      pop {r4, r5, pc}
