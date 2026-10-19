; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003c001c, declared_size=4, range_size=4, mode=arm
; class-group: CSCast
; alias: _ZN6CSCastD1Ev
; demangled: CSCast::~CSCast()
; decoder-mode: arm
003c001c  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c0020, declared_size=4, range_size=4, mode=arm
; class-group: CSCast
; alias: _ZN6CSCast8OnUpdateEiP9CharacterP16CharStateMachine
; demangled: CSCast::OnUpdate(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c0020  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c0024, declared_size=4, range_size=4, mode=arm
; class-group: CSCast
; alias: _ZN6CSCast7OnEventEiP9CharacterP16CharStateMachineiPv
; demangled: CSCast::OnEvent(int, Character*, CharStateMachine*, int, void*)
; decoder-mode: arm
003c0024  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c0928, declared_size=52, range_size=52, mode=arm
; class-group: CSCast
; alias: _ZN6CSCastD0Ev
; demangled: CSCast::~CSCast()
; decoder-mode: arm
003c0928  24 30 9f e5                                      ldr r3, [pc, #0x24]
003c092c  24 20 9f e5                                      ldr r2, [pc, #0x24]
003c0930  10 40 2d e9                                      push {r4, lr}
003c0934  03 30 8f e0                                      add r3, pc, r3
003c0938  02 20 93 e7                                      ldr r2, [r3, r2]
003c093c  00 40 a0 e1                                      mov r4, r0
003c0940  08 20 82 e2                                      add r2, r2, #8
003c0944  00 20 80 e5                                      str r2, [r0]
003c0948  bc 3e fd eb                                      bl #0x310440
003c094c  04 00 a0 e1                                      mov r0, r4
003c0950  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003c0954  5c 41 5d 00 08 2a 00 00                          .byte 0x5c, 0x41, 0x5d, 0x00, 0x08, 0x2a, 0x00, 0x00

; FUNCTION 0x003c3934, declared_size=156, range_size=156, mode=arm
; class-group: CSCast
; alias: _ZN6CSCast6OnBlurEiP9CharacterP16CharStateMachinei
; demangled: CSCast::OnBlur(int, Character*, CharStateMachine*, int)
; decoder-mode: arm
003c3934  84 30 9f e5                                      ldr r3, [pc, #0x84]
003c3938  84 10 9f e5                                      ldr r1, [pc, #0x84]
003c393c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003c3940  03 30 8f e0                                      add r3, pc, r3
003c3944  01 50 93 e7                                      ldr r5, [r3, r1]
003c3948  78 10 9f e5                                      ldr r1, [pc, #0x78]
003c394c  02 70 a0 e1                                      mov r7, r2
003c3950  00 20 95 e5                                      ldr r2, [r5]
003c3954  01 60 93 e7                                      ldr r6, [r3, r1]
003c3958  24 d0 4d e2                                      sub sp, sp, #0x24
003c395c  1c 20 8d e5                                      str r2, [sp, #0x1c]
003c3960  06 00 a0 e1                                      mov r0, r6
003c3964  c7 cf fd eb                                      bl #0x337888
003c3968  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
003c396c  04 40 8d e2                                      add r4, sp, #4
003c3970  0d 20 a0 e1                                      mov r2, sp
003c3974  01 10 8f e0                                      add r1, pc, r1
003c3978  04 00 a0 e1                                      mov r0, r4
003c397c  da 41 fd eb                                      bl #0x3140ec
003c3980  04 10 a0 e1                                      mov r1, r4
003c3984  06 00 a0 e1                                      mov r0, r6
003c3988  3e d0 fd eb                                      bl #0x337a88
003c398c  04 00 a0 e1                                      mov r0, r4
003c3990  2f 52 fd eb                                      bl #0x318254
003c3994  00 20 a0 e3                                      mov r2, #0
003c3998  07 00 a0 e1                                      mov r0, r7
003c399c  21 10 a0 e3                                      mov r1, #0x21
003c39a0  ed 84 ff eb                                      bl #0x3a4d5c
003c39a4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003c39a8  00 30 95 e5                                      ldr r3, [r5]
003c39ac  03 00 52 e1                                      cmp r2, r3
003c39b0  01 00 00 1a                                      bne #0x3c39bc
003c39b4  24 d0 8d e2                                      add sp, sp, #0x24
003c39b8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003c39bc  53 2a fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c39c0  50 11 5d 00 ac 40 00 00 84 08 00 00 dc 14 50 00  .byte 0x50, 0x11, 0x5d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xdc, 0x14, 0x50, 0x00

; FUNCTION 0x003c39d0, declared_size=212, range_size=212, mode=arm
; class-group: CSCast
; alias: _ZN6CSCast7OnFocusEiP9CharacterP16CharStateMachineiiPv
; demangled: CSCast::OnFocus(int, Character*, CharStateMachine*, int, int, void*)
; decoder-mode: arm
003c39d0  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
003c39d4  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
003c39d8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003c39dc  03 30 8f e0                                      add r3, pc, r3
003c39e0  01 60 93 e7                                      ldr r6, [r3, r1]
003c39e4  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
003c39e8  02 40 a0 e1                                      mov r4, r2
003c39ec  00 20 96 e5                                      ldr r2, [r6]
003c39f0  01 70 93 e7                                      ldr r7, [r3, r1]
003c39f4  24 d0 4d e2                                      sub sp, sp, #0x24
003c39f8  1c 20 8d e5                                      str r2, [sp, #0x1c]
003c39fc  07 00 a0 e1                                      mov r0, r7
003c3a00  a0 cf fd eb                                      bl #0x337888
003c3a04  94 10 9f e5                                      ldr r1, [pc, #0x94]
003c3a08  04 50 8d e2                                      add r5, sp, #4
003c3a0c  0d 20 a0 e1                                      mov r2, sp
003c3a10  01 10 8f e0                                      add r1, pc, r1
003c3a14  05 00 a0 e1                                      mov r0, r5
003c3a18  b3 41 fd eb                                      bl #0x3140ec
003c3a1c  05 10 a0 e1                                      mov r1, r5
003c3a20  07 00 a0 e1                                      mov r0, r7
003c3a24  17 d0 fd eb                                      bl #0x337a88
003c3a28  05 00 a0 e1                                      mov r0, r5
003c3a2c  08 52 fd eb                                      bl #0x318254
003c3a30  01 33 06 e3                                      movw r3, #0x6301
003c3a34  00 20 a0 e3                                      mov r2, #0
003c3a38  20 35 84 e5                                      str r3, [r4, #0x520]
003c3a3c  04 00 a0 e1                                      mov r0, r4
003c3a40  20 10 a0 e3                                      mov r1, #0x20
003c3a44  c4 84 ff eb                                      bl #0x3a4d5c
003c3a48  4f 0e 84 e2                                      add r0, r4, #0x4f0
003c3a4c  0c 00 80 e2                                      add r0, r0, #0xc
003c3a50  00 10 e0 e3                                      mvn r1, #0
003c3a54  3d f4 ff eb                                      bl #0x3c0b50
003c3a58  49 0e 84 e2                                      add r0, r4, #0x490
003c3a5c  0c 00 80 e2                                      add r0, r0, #0xc
003c3a60  fe 15 a0 e3                                      mov r1, #0x3f800000
003c3a64  64 16 00 eb                                      bl #0x3c93fc
003c3a68  00 30 a0 e3                                      mov r3, #0
003c3a6c  12 34 c4 e5                                      strb r3, [r4, #0x412]
003c3a70  04 00 a0 e1                                      mov r0, r4
003c3a74  0f e3 ff eb                                      bl #0x3bc6b8
003c3a78  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003c3a7c  00 30 96 e5                                      ldr r3, [r6]
003c3a80  03 00 52 e1                                      cmp r2, r3
003c3a84  01 00 00 1a                                      bne #0x3c3a90
003c3a88  24 d0 8d e2                                      add sp, sp, #0x24
003c3a8c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003c3a90  1e 2a fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c3a94  b4 10 5d 00 ac 40 00 00 84 08 00 00 40 14 50 00  .byte 0xb4, 0x10, 0x5d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x40, 0x14, 0x50, 0x00

; FUNCTION 0x003c85b8, declared_size=100, range_size=100, mode=arm
; class-group: CSCast
; alias: _ZN6CSCast6OnInitEiP9CharacterP16CharStateMachine
; demangled: CSCast::OnInit(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c85b8  70 40 2d e9                                      push {r4, r5, r6, lr}
003c85bc  4f 5e 82 e2                                      add r5, r2, #0x4f0
003c85c0  0c 50 85 e2                                      add r5, r5, #0xc
003c85c4  18 d0 4d e2                                      sub sp, sp, #0x18
003c85c8  00 40 a0 e3                                      mov r4, #0
003c85cc  01 60 a0 e1                                      mov r6, r1
003c85d0  05 00 a0 e1                                      mov r0, r5
003c85d4  22 20 a0 e3                                      mov r2, #0x22
003c85d8  03 30 a0 e3                                      mov r3, #3
003c85dc  10 40 8d e5                                      str r4, [sp, #0x10]
003c85e0  14 40 8d e5                                      str r4, [sp, #0x14]
003c85e4  00 40 8d e5                                      str r4, [sp]
003c85e8  04 40 8d e5                                      str r4, [sp, #4]
003c85ec  49 fd ff eb                                      bl #0x3c7b18
003c85f0  05 00 a0 e1                                      mov r0, r5
003c85f4  06 10 a0 e1                                      mov r1, r6
003c85f8  58 23 0c e3                                      movw r2, #0xc358
003c85fc  0c 30 a0 e3                                      mov r3, #0xc
003c8600  04 40 8d e5                                      str r4, [sp, #4]
003c8604  08 40 8d e5                                      str r4, [sp, #8]
003c8608  0c 40 8d e5                                      str r4, [sp, #0xc]
003c860c  00 40 8d e5                                      str r4, [sp]
003c8610  40 fd ff eb                                      bl #0x3c7b18
003c8614  18 d0 8d e2                                      add sp, sp, #0x18
003c8618  70 80 bd e8                                      pop {r4, r5, r6, pc}
