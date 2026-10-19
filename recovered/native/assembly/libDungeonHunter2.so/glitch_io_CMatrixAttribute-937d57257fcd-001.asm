; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005604fc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CMatrixAttribute
; alias: _ZNK6glitch2io16CMatrixAttribute7getTypeEv
; demangled: glitch::io::CMatrixAttribute::getType() const
; decoder-mode: arm
005604fc  0f 00 a0 e3                                      mov r0, #0xf
00560500  1e ff 2f e1                                      bx lr

; FUNCTION 0x00560504, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CMatrixAttribute
; alias: _ZNK6glitch2io16CMatrixAttribute13getTypeStringEv
; demangled: glitch::io::CMatrixAttribute::getTypeString() const
; decoder-mode: arm
00560504  04 00 9f e5                                      ldr r0, [pc, #4]
00560508  00 00 8f e0                                      add r0, pc, r0
0056050c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00560510  a8 e8 37 00                                      .byte 0xa8, 0xe8, 0x37, 0x00

; FUNCTION 0x00561da0, declared_size=56, range_size=56, mode=arm
; class-group: glitch::io::CMatrixAttribute
; alias: _ZN6glitch2io16CMatrixAttribute13getQuaternionEv
; demangled: glitch::io::CMatrixAttribute::getQuaternion()
; decoder-mode: arm
00561da0  30 40 2d e9                                      push {r4, r5, lr}
00561da4  4c d0 4d e2                                      sub sp, sp, #0x4c
00561da8  04 50 8d e2                                      add r5, sp, #4
00561dac  00 40 a0 e1                                      mov r4, r0
00561db0  00 30 91 e5                                      ldr r3, [r1]
00561db4  05 00 a0 e1                                      mov r0, r5
00561db8  0f e0 a0 e1                                      mov lr, pc
00561dbc  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00561dc0  04 00 a0 e1                                      mov r0, r4
00561dc4  05 10 a0 e1                                      mov r1, r5
00561dc8  39 b4 fe eb                                      bl #0x50eeb4
00561dcc  04 00 a0 e1                                      mov r0, r4
00561dd0  4c d0 8d e2                                      add sp, sp, #0x4c
00561dd4  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00564c3c, declared_size=52, range_size=52, mode=arm
; class-group: glitch::io::CMatrixAttribute
; alias: _ZN6glitch2io16CMatrixAttributeD1Ev
; demangled: glitch::io::CMatrixAttribute::~CMatrixAttribute()
; decoder-mode: arm
00564c3c  24 30 9f e5                                      ldr r3, [pc, #0x24]
00564c40  24 20 9f e5                                      ldr r2, [pc, #0x24]
00564c44  10 40 2d e9                                      push {r4, lr}
00564c48  03 30 8f e0                                      add r3, pc, r3
00564c4c  02 20 93 e7                                      ldr r2, [r3, r2]
00564c50  00 40 a0 e1                                      mov r4, r0
00564c54  08 20 82 e2                                      add r2, r2, #8
00564c58  00 20 80 e5                                      str r2, [r0]
00564c5c  e5 06 f7 eb                                      bl #0x3267f8
00564c60  04 00 a0 e1                                      mov r0, r4
00564c64  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00564c68  48 fe 42 00 68 45 00 00                          .byte 0x48, 0xfe, 0x42, 0x00, 0x68, 0x45, 0x00, 0x00

; FUNCTION 0x00564e28, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CMatrixAttribute
; alias: _ZN6glitch2io16CMatrixAttributeD0Ev
; demangled: glitch::io::CMatrixAttribute::~CMatrixAttribute()
; decoder-mode: arm
00564e28  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00564e2c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00564e30  10 40 2d e9                                      push {r4, lr}
00564e34  03 30 8f e0                                      add r3, pc, r3
00564e38  02 20 93 e7                                      ldr r2, [r3, r2]
00564e3c  00 40 a0 e1                                      mov r4, r0
00564e40  08 20 82 e2                                      add r2, r2, #8
00564e44  00 20 80 e5                                      str r2, [r0]
00564e48  6a 06 f7 eb                                      bl #0x3267f8
00564e4c  04 00 a0 e1                                      mov r0, r4
00564e50  16 a5 f6 eb                                      bl #0x30e2b0
00564e54  04 00 a0 e1                                      mov r0, r4
00564e58  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00564e5c  5c fc 42 00 68 45 00 00                          .byte 0x5c, 0xfc, 0x42, 0x00, 0x68, 0x45, 0x00, 0x00

; FUNCTION 0x00566848, declared_size=100, range_size=100, mode=arm
; class-group: glitch::io::CMatrixAttribute
; alias: _ZN6glitch2io16CMatrixAttributeC1EPKcNS_4core8CMatrix4IfEEb
; demangled: glitch::io::CMatrixAttribute::CMatrixAttribute(char const*, glitch::core::CMatrix4<float>, bool)
; decoder-mode: arm
00566848  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0056684c  4c d0 4d e2                                      sub sp, sp, #0x4c
00566850  04 40 8d e2                                      add r4, sp, #4
00566854  00 50 a0 e1                                      mov r5, r0
00566858  01 60 a0 e1                                      mov r6, r1
0056685c  03 70 a0 e1                                      mov r7, r3
00566860  02 10 a0 e1                                      mov r1, r2
00566864  04 00 a0 e1                                      mov r0, r4
00566868  b9 f4 ff eb                                      bl #0x563b54
0056686c  04 20 a0 e1                                      mov r2, r4
00566870  07 30 a0 e1                                      mov r3, r7
00566874  05 00 a0 e1                                      mov r0, r5
00566878  06 10 a0 e1                                      mov r1, r6
0056687c  20 40 9f e5                                      ldr r4, [pc, #0x20]
00566880  a8 ff ff eb                                      bl #0x566728
00566884  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00566888  04 40 8f e0                                      add r4, pc, r4
0056688c  05 00 a0 e1                                      mov r0, r5
00566890  03 30 94 e7                                      ldr r3, [r4, r3]
00566894  08 30 83 e2                                      add r3, r3, #8
00566898  00 30 85 e5                                      str r3, [r5]
0056689c  4c d0 8d e2                                      add sp, sp, #0x4c
005668a0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
005668a4  08 e2 42 00 68 45 00 00                          .byte 0x08, 0xe2, 0x42, 0x00, 0x68, 0x45, 0x00, 0x00
