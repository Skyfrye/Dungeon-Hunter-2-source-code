; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0077c004, declared_size=360, range_size=360, mode=arm
; class-group: gameswf::mesh_set::layer
; alias: _ZN7gameswf8mesh_set5layerD1Ev
; demangled: gameswf::mesh_set::layer::~layer()
; decoder-mode: arm
0077c004  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0077c008  14 30 90 e5                                      ldr r3, [r0, #0x14]
0077c00c  00 50 a0 e1                                      mov r5, r0
0077c010  00 00 53 e3                                      cmp r3, #0
0077c014  14 00 00 da                                      ble #0x77c06c
0077c018  00 70 a0 e3                                      mov r7, #0
0077c01c  00 40 a0 e3                                      mov r4, #0
0077c020  07 80 a0 e1                                      mov r8, r7
0077c024  10 20 95 e5                                      ldr r2, [r5, #0x10]
0077c028  07 61 92 e7                                      ldr r6, [r2, r7, lsl #2]
0077c02c  00 00 56 e3                                      cmp r6, #0
0077c030  0a 00 00 0a                                      beq #0x77c060
0077c034  08 30 96 e5                                      ldr r3, [r6, #8]
0077c038  04 00 86 e2                                      add r0, r6, #4
0077c03c  00 00 53 e3                                      cmp r3, #0
0077c040  2b 00 00 da                                      ble #0x77c0f4
0077c044  08 10 a0 e1                                      mov r1, r8
0077c048  08 80 86 e5                                      str r8, [r6, #8]
0077c04c  67 f7 ff eb                                      bl #0x779df0
0077c050  06 00 a0 e1                                      mov r0, r6
0077c054  08 10 a0 e1                                      mov r1, r8
0077c058  b6 5a ff eb                                      bl #0x752b38
0077c05c  14 30 95 e5                                      ldr r3, [r5, #0x14]
0077c060  01 70 87 e2                                      add r7, r7, #1
0077c064  03 00 57 e1                                      cmp r7, r3
0077c068  ed ff ff ba                                      blt #0x77c024
0077c06c  04 20 95 e5                                      ldr r2, [r5, #4]
0077c070  00 00 52 e3                                      cmp r2, #0
0077c074  0e 00 00 da                                      ble #0x77c0b4
0077c078  00 40 a0 e3                                      mov r4, #0
0077c07c  00 30 95 e5                                      ldr r3, [r5]
0077c080  04 61 93 e7                                      ldr r6, [r3, r4, lsl #2]
0077c084  01 40 84 e2                                      add r4, r4, #1
0077c088  00 00 56 e3                                      cmp r6, #0
0077c08c  05 00 00 0a                                      beq #0x77c0a8
0077c090  06 00 a0 e1                                      mov r0, r6
0077c094  a1 ff ff eb                                      bl #0x77bf20
0077c098  06 00 a0 e1                                      mov r0, r6
0077c09c  00 10 a0 e3                                      mov r1, #0
0077c0a0  a4 5a ff eb                                      bl #0x752b38
0077c0a4  04 20 95 e5                                      ldr r2, [r5, #4]
0077c0a8  02 00 54 e1                                      cmp r4, r2
0077c0ac  f2 ff ff ba                                      blt #0x77c07c
0077c0b0  14 30 95 e5                                      ldr r3, [r5, #0x14]
0077c0b4  00 00 53 e3                                      cmp r3, #0
0077c0b8  10 00 85 e2                                      add r0, r5, #0x10
0077c0bc  14 00 00 da                                      ble #0x77c114
0077c0c0  00 40 a0 e3                                      mov r4, #0
0077c0c4  14 40 85 e5                                      str r4, [r5, #0x14]
0077c0c8  04 10 a0 e1                                      mov r1, r4
0077c0cc  28 f7 ff eb                                      bl #0x779d74
0077c0d0  04 30 95 e5                                      ldr r3, [r5, #4]
0077c0d4  04 00 53 e1                                      cmp r3, r4
0077c0d8  16 00 00 da                                      ble #0x77c138
0077c0dc  00 10 a0 e3                                      mov r1, #0
0077c0e0  05 00 a0 e1                                      mov r0, r5
0077c0e4  04 10 85 e5                                      str r1, [r5, #4]
0077c0e8  02 f7 ff eb                                      bl #0x779cf8
0077c0ec  05 00 a0 e1                                      mov r0, r5
0077c0f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0077c0f4  d2 ff ff aa                                      bge #0x77c044
0077c0f8  03 21 a0 e1                                      lsl r2, r3, #2
0077c0fc  00 10 90 e5                                      ldr r1, [r0]
0077c100  01 30 93 e2                                      adds r3, r3, #1
0077c104  02 40 81 e7                                      str r4, [r1, r2]
0077c108  04 20 82 e2                                      add r2, r2, #4
0077c10c  fa ff ff 1a                                      bne #0x77c0fc
0077c110  cb ff ff ea                                      b #0x77c044
0077c114  e9 ff ff aa                                      bge #0x77c0c0
0077c118  03 21 a0 e1                                      lsl r2, r3, #2
0077c11c  00 c0 a0 e3                                      mov ip, #0
0077c120  00 10 90 e5                                      ldr r1, [r0]
0077c124  01 30 93 e2                                      adds r3, r3, #1
0077c128  02 c0 81 e7                                      str ip, [r1, r2]
0077c12c  04 20 82 e2                                      add r2, r2, #4
0077c130  fa ff ff 1a                                      bne #0x77c120
0077c134  e1 ff ff ea                                      b #0x77c0c0
0077c138  e7 ff ff aa                                      bge #0x77c0dc
0077c13c  03 21 a0 e1                                      lsl r2, r3, #2
0077c140  00 10 95 e5                                      ldr r1, [r5]
0077c144  01 30 93 e2                                      adds r3, r3, #1
0077c148  02 40 81 e7                                      str r4, [r1, r2]
0077c14c  04 20 82 e2                                      add r2, r2, #4
0077c150  fa ff ff 1a                                      bne #0x77c140
0077c154  00 10 a0 e3                                      mov r1, #0
0077c158  05 00 a0 e1                                      mov r0, r5
0077c15c  04 10 85 e5                                      str r1, [r5, #4]
0077c160  e4 f6 ff eb                                      bl #0x779cf8
0077c164  05 00 a0 e1                                      mov r0, r5
0077c168  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0077c8b4, declared_size=360, range_size=360, mode=arm
; class-group: gameswf::mesh_set::layer
; alias: _ZN7gameswf8mesh_set5layerD2Ev
; demangled: gameswf::mesh_set::layer::~layer()
; decoder-mode: arm
0077c8b4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0077c8b8  14 30 90 e5                                      ldr r3, [r0, #0x14]
0077c8bc  00 50 a0 e1                                      mov r5, r0
0077c8c0  00 00 53 e3                                      cmp r3, #0
0077c8c4  14 00 00 da                                      ble #0x77c91c
0077c8c8  00 70 a0 e3                                      mov r7, #0
0077c8cc  00 40 a0 e3                                      mov r4, #0
0077c8d0  07 80 a0 e1                                      mov r8, r7
0077c8d4  10 20 95 e5                                      ldr r2, [r5, #0x10]
0077c8d8  07 61 92 e7                                      ldr r6, [r2, r7, lsl #2]
0077c8dc  00 00 56 e3                                      cmp r6, #0
0077c8e0  0a 00 00 0a                                      beq #0x77c910
0077c8e4  08 30 96 e5                                      ldr r3, [r6, #8]
0077c8e8  04 00 86 e2                                      add r0, r6, #4
0077c8ec  00 00 53 e3                                      cmp r3, #0
0077c8f0  2b 00 00 da                                      ble #0x77c9a4
0077c8f4  08 10 a0 e1                                      mov r1, r8
0077c8f8  08 80 86 e5                                      str r8, [r6, #8]
0077c8fc  3b f5 ff eb                                      bl #0x779df0
0077c900  06 00 a0 e1                                      mov r0, r6
0077c904  08 10 a0 e1                                      mov r1, r8
0077c908  8a 58 ff eb                                      bl #0x752b38
0077c90c  14 30 95 e5                                      ldr r3, [r5, #0x14]
0077c910  01 70 87 e2                                      add r7, r7, #1
0077c914  03 00 57 e1                                      cmp r7, r3
0077c918  ed ff ff ba                                      blt #0x77c8d4
0077c91c  04 20 95 e5                                      ldr r2, [r5, #4]
0077c920  00 00 52 e3                                      cmp r2, #0
0077c924  0e 00 00 da                                      ble #0x77c964
0077c928  00 40 a0 e3                                      mov r4, #0
0077c92c  00 30 95 e5                                      ldr r3, [r5]
0077c930  04 61 93 e7                                      ldr r6, [r3, r4, lsl #2]
0077c934  01 40 84 e2                                      add r4, r4, #1
0077c938  00 00 56 e3                                      cmp r6, #0
0077c93c  05 00 00 0a                                      beq #0x77c958
0077c940  06 00 a0 e1                                      mov r0, r6
0077c944  75 fd ff eb                                      bl #0x77bf20
0077c948  06 00 a0 e1                                      mov r0, r6
0077c94c  00 10 a0 e3                                      mov r1, #0
0077c950  78 58 ff eb                                      bl #0x752b38
0077c954  04 20 95 e5                                      ldr r2, [r5, #4]
0077c958  02 00 54 e1                                      cmp r4, r2
0077c95c  f2 ff ff ba                                      blt #0x77c92c
0077c960  14 30 95 e5                                      ldr r3, [r5, #0x14]
0077c964  00 00 53 e3                                      cmp r3, #0
0077c968  10 00 85 e2                                      add r0, r5, #0x10
0077c96c  14 00 00 da                                      ble #0x77c9c4
0077c970  00 40 a0 e3                                      mov r4, #0
0077c974  14 40 85 e5                                      str r4, [r5, #0x14]
0077c978  04 10 a0 e1                                      mov r1, r4
0077c97c  fc f4 ff eb                                      bl #0x779d74
0077c980  04 30 95 e5                                      ldr r3, [r5, #4]
0077c984  04 00 53 e1                                      cmp r3, r4
0077c988  16 00 00 da                                      ble #0x77c9e8
0077c98c  00 10 a0 e3                                      mov r1, #0
0077c990  05 00 a0 e1                                      mov r0, r5
0077c994  04 10 85 e5                                      str r1, [r5, #4]
0077c998  d6 f4 ff eb                                      bl #0x779cf8
0077c99c  05 00 a0 e1                                      mov r0, r5
0077c9a0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0077c9a4  d2 ff ff aa                                      bge #0x77c8f4
0077c9a8  03 21 a0 e1                                      lsl r2, r3, #2
0077c9ac  00 10 90 e5                                      ldr r1, [r0]
0077c9b0  01 30 93 e2                                      adds r3, r3, #1
0077c9b4  02 40 81 e7                                      str r4, [r1, r2]
0077c9b8  04 20 82 e2                                      add r2, r2, #4
0077c9bc  fa ff ff 1a                                      bne #0x77c9ac
0077c9c0  cb ff ff ea                                      b #0x77c8f4
0077c9c4  e9 ff ff aa                                      bge #0x77c970
0077c9c8  03 21 a0 e1                                      lsl r2, r3, #2
0077c9cc  00 c0 a0 e3                                      mov ip, #0
0077c9d0  00 10 90 e5                                      ldr r1, [r0]
0077c9d4  01 30 93 e2                                      adds r3, r3, #1
0077c9d8  02 c0 81 e7                                      str ip, [r1, r2]
0077c9dc  04 20 82 e2                                      add r2, r2, #4
0077c9e0  fa ff ff 1a                                      bne #0x77c9d0
0077c9e4  e1 ff ff ea                                      b #0x77c970
0077c9e8  e7 ff ff aa                                      bge #0x77c98c
0077c9ec  03 21 a0 e1                                      lsl r2, r3, #2
0077c9f0  00 10 95 e5                                      ldr r1, [r5]
0077c9f4  01 30 93 e2                                      adds r3, r3, #1
0077c9f8  02 40 81 e7                                      str r4, [r1, r2]
0077c9fc  04 20 82 e2                                      add r2, r2, #4
0077ca00  fa ff ff 1a                                      bne #0x77c9f0
0077ca04  00 10 a0 e3                                      mov r1, #0
0077ca08  05 00 a0 e1                                      mov r0, r5
0077ca0c  04 10 85 e5                                      str r1, [r5, #4]
0077ca10  b8 f4 ff eb                                      bl #0x779cf8
0077ca14  05 00 a0 e1                                      mov r0, r5
0077ca18  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
