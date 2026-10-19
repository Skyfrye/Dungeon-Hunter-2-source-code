; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0033d718, declared_size=4, range_size=4, mode=arm
; class-group: AccelerometerBase
; alias: _ZN17AccelerometerBaseD2Ev
; demangled: AccelerometerBase::~AccelerometerBase()
; decoder-mode: arm
0033d718  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033d71c, declared_size=4, range_size=4, mode=arm
; class-group: AccelerometerBase
; alias: _ZN17AccelerometerBaseD1Ev
; demangled: AccelerometerBase::~AccelerometerBase()
; decoder-mode: arm
0033d71c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033d720, declared_size=36, range_size=36, mode=arm
; class-group: AccelerometerBase
; alias: _ZN17AccelerometerBase5clearEv
; demangled: AccelerometerBase::clear()
; decoder-mode: arm
0033d720  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0033d724  04 10 90 e5                                      ldr r1, [r0, #4]
0033d728  08 20 90 e5                                      ldr r2, [r0, #8]
0033d72c  1c 30 80 e5                                      str r3, [r0, #0x1c]
0033d730  10 10 80 e5                                      str r1, [r0, #0x10]
0033d734  14 20 80 e5                                      str r2, [r0, #0x14]
0033d738  18 30 80 e5                                      str r3, [r0, #0x18]
0033d73c  28 30 80 e5                                      str r3, [r0, #0x28]
0033d740  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033d744, declared_size=4, range_size=4, mode=arm
; class-group: AccelerometerBase
; alias: _ZN17AccelerometerBase6updateEd
; demangled: AccelerometerBase::update(double)
; decoder-mode: arm
0033d744  f5 ff ff ea                                      b #0x33d720

; FUNCTION 0x0033d77c, declared_size=28, range_size=28, mode=arm
; class-group: AccelerometerBase
; alias: _ZN17AccelerometerBaseD0Ev
; demangled: AccelerometerBase::~AccelerometerBase()
; decoder-mode: arm
0033d77c  10 40 2d e9                                      push {r4, lr}
0033d780  00 40 a0 e1                                      mov r4, r0
0033d784  e4 ff ff eb                                      bl #0x33d71c
0033d788  04 00 a0 e1                                      mov r0, r4
0033d78c  2b 4b ff eb                                      bl #0x310440
0033d790  04 00 a0 e1                                      mov r0, r4
0033d794  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0033d798, declared_size=324, range_size=324, mode=arm
; class-group: AccelerometerBase
; alias: _ZN17AccelerometerBase11_calcAnglesEv
; demangled: AccelerometerBase::_calcAngles()
; decoder-mode: arm
0033d798  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0033d79c  2c 51 9f e5                                      ldr r5, [pc, #0x12c]
0033d7a0  2c 61 9f e5                                      ldr r6, [pc, #0x12c]
0033d7a4  04 80 90 e5                                      ldr r8, [r0, #4]
0033d7a8  05 50 8f e0                                      add r5, pc, r5
0033d7ac  38 70 90 e5                                      ldr r7, [r0, #0x38]
0033d7b0  06 30 95 e7                                      ldr r3, [r5, r6]
0033d7b4  00 40 a0 e1                                      mov r4, r0
0033d7b8  34 70 84 e5                                      str r7, [r4, #0x34]
0033d7bc  02 01 c8 e3                                      bic r0, r8, #0x80000000
0033d7c0  00 10 93 e5                                      ldr r1, [r3]
0033d7c4  d0 43 ff eb                                      bl #0x30e70c
0033d7c8  00 00 50 e3                                      cmp r0, #0
0033d7cc  30 00 00 0a                                      beq #0x33d894
0033d7d0  07 00 a0 e1                                      mov r0, r7
0033d7d4  00 10 a0 e3                                      mov r1, #0
0033d7d8  c6 42 ff eb                                      bl #0x30e2f8
0033d7dc  f4 30 9f e5                                      ldr r3, [pc, #0xf4]
0033d7e0  00 00 50 e3                                      cmp r0, #0
0033d7e4  03 30 95 e7                                      ldr r3, [r5, r3]
0033d7e8  00 30 93 05                                      ldreq r3, [r3]
0033d7ec  00 30 93 15                                      ldrne r3, [r3]
0033d7f0  02 31 83 02                                      addeq r3, r3, #0x80000000
0033d7f4  38 30 84 e5                                      str r3, [r4, #0x38]
0033d7f8  06 30 95 e7                                      ldr r3, [r5, r6]
0033d7fc  08 80 94 e5                                      ldr r8, [r4, #8]
0033d800  40 70 94 e5                                      ldr r7, [r4, #0x40]
0033d804  00 10 93 e5                                      ldr r1, [r3]
0033d808  02 01 c8 e3                                      bic r0, r8, #0x80000000
0033d80c  3c 70 84 e5                                      str r7, [r4, #0x3c]
0033d810  bd 43 ff eb                                      bl #0x30e70c
0033d814  00 00 50 e3                                      cmp r0, #0
0033d818  27 00 00 0a                                      beq #0x33d8bc
0033d81c  07 00 a0 e1                                      mov r0, r7
0033d820  00 10 a0 e3                                      mov r1, #0
0033d824  b3 42 ff eb                                      bl #0x30e2f8
0033d828  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
0033d82c  00 00 50 e3                                      cmp r0, #0
0033d830  03 30 95 e7                                      ldr r3, [r5, r3]
0033d834  00 30 93 05                                      ldreq r3, [r3]
0033d838  00 30 93 15                                      ldrne r3, [r3]
0033d83c  02 31 83 02                                      addeq r3, r3, #0x80000000
0033d840  40 30 84 e5                                      str r3, [r4, #0x40]
0033d844  06 30 95 e7                                      ldr r3, [r5, r6]
0033d848  0c 70 94 e5                                      ldr r7, [r4, #0xc]
0033d84c  38 60 94 e5                                      ldr r6, [r4, #0x38]
0033d850  00 10 93 e5                                      ldr r1, [r3]
0033d854  02 01 c7 e3                                      bic r0, r7, #0x80000000
0033d858  44 60 84 e5                                      str r6, [r4, #0x44]
0033d85c  aa 43 ff eb                                      bl #0x30e70c
0033d860  00 00 50 e3                                      cmp r0, #0
0033d864  0f 00 00 0a                                      beq #0x33d8a8
0033d868  06 00 a0 e1                                      mov r0, r6
0033d86c  00 10 a0 e3                                      mov r1, #0
0033d870  a0 42 ff eb                                      bl #0x30e2f8
0033d874  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
0033d878  00 00 50 e3                                      cmp r0, #0
0033d87c  03 30 95 e7                                      ldr r3, [r5, r3]
0033d880  00 30 93 05                                      ldreq r3, [r3]
0033d884  00 30 93 15                                      ldrne r3, [r3]
0033d888  02 31 83 02                                      addeq r3, r3, #0x80000000
0033d88c  48 30 84 e5                                      str r3, [r4, #0x48]
0033d890  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0033d894  08 10 a0 e1                                      mov r1, r8
0033d898  08 00 94 e5                                      ldr r0, [r4, #8]
0033d89c  45 41 ff eb                                      bl #0x30ddb8
0033d8a0  38 00 84 e5                                      str r0, [r4, #0x38]
0033d8a4  d3 ff ff ea                                      b #0x33d7f8
0033d8a8  07 10 a0 e1                                      mov r1, r7
0033d8ac  04 00 94 e5                                      ldr r0, [r4, #4]
0033d8b0  40 41 ff eb                                      bl #0x30ddb8
0033d8b4  48 00 84 e5                                      str r0, [r4, #0x48]
0033d8b8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0033d8bc  08 10 a0 e1                                      mov r1, r8
0033d8c0  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0033d8c4  3b 41 ff eb                                      bl #0x30ddb8
0033d8c8  40 00 84 e5                                      str r0, [r4, #0x40]
0033d8cc  dc ff ff ea                                      b #0x33d844
; mapping-symbol data/literal pool
0033d8d0  e8 72 65 00 90 1c 00 00 6c 29 00 00              .byte 0xe8, 0x72, 0x65, 0x00, 0x90, 0x1c, 0x00, 0x00, 0x6c, 0x29, 0x00, 0x00

; FUNCTION 0x0033d8dc, declared_size=304, range_size=304, mode=arm
; class-group: AccelerometerBase
; alias: _ZN17AccelerometerBase5movedEfff
; demangled: AccelerometerBase::moved(float, float, float)
; decoder-mode: arm
0033d8dc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0033d8e0  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
0033d8e4  00 40 a0 e1                                      mov r4, r0
0033d8e8  18 d0 4d e2                                      sub sp, sp, #0x18
0033d8ec  08 20 84 e5                                      str r2, [r4, #8]
0033d8f0  0c 30 84 e5                                      str r3, [r4, #0xc]
0033d8f4  04 10 84 e5                                      str r1, [r4, #4]
0033d8f8  05 00 a0 e1                                      mov r0, r5
0033d8fc  02 60 a0 e1                                      mov r6, r2
0033d900  03 80 a0 e1                                      mov r8, r3
0033d904  01 a0 a0 e1                                      mov sl, r1
0033d908  7a 42 ff eb                                      bl #0x30e2f8
0033d90c  28 90 94 e5                                      ldr sb, [r4, #0x28]
0033d910  00 00 50 e3                                      cmp r0, #0
0033d914  0a 50 a0 11                                      movne r5, sl
0033d918  0a 10 a0 e1                                      mov r1, sl
0033d91c  1c 50 84 e5                                      str r5, [r4, #0x1c]
0033d920  09 00 a0 e1                                      mov r0, sb
0033d924  78 43 ff eb                                      bl #0x30e70c
0033d928  20 50 94 e5                                      ldr r5, [r4, #0x20]
0033d92c  00 00 50 e3                                      cmp r0, #0
0033d930  09 a0 a0 01                                      moveq sl, sb
0033d934  06 10 a0 e1                                      mov r1, r6
0033d938  28 a0 84 e5                                      str sl, [r4, #0x28]
0033d93c  05 00 a0 e1                                      mov r0, r5
0033d940  6c 42 ff eb                                      bl #0x30e2f8
0033d944  2c a0 94 e5                                      ldr sl, [r4, #0x2c]
0033d948  00 00 50 e3                                      cmp r0, #0
0033d94c  06 50 a0 11                                      movne r5, r6
0033d950  06 10 a0 e1                                      mov r1, r6
0033d954  20 50 84 e5                                      str r5, [r4, #0x20]
0033d958  0a 00 a0 e1                                      mov r0, sl
0033d95c  6a 43 ff eb                                      bl #0x30e70c
0033d960  24 50 94 e5                                      ldr r5, [r4, #0x24]
0033d964  00 00 50 e3                                      cmp r0, #0
0033d968  0a 60 a0 01                                      moveq r6, sl
0033d96c  08 10 a0 e1                                      mov r1, r8
0033d970  2c 60 84 e5                                      str r6, [r4, #0x2c]
0033d974  05 00 a0 e1                                      mov r0, r5
0033d978  5e 42 ff eb                                      bl #0x30e2f8
0033d97c  30 60 94 e5                                      ldr r6, [r4, #0x30]
0033d980  00 00 50 e3                                      cmp r0, #0
0033d984  08 50 a0 11                                      movne r5, r8
0033d988  08 10 a0 e1                                      mov r1, r8
0033d98c  24 50 84 e5                                      str r5, [r4, #0x24]
0033d990  06 00 a0 e1                                      mov r0, r6
0033d994  5c 43 ff eb                                      bl #0x30e70c
0033d998  00 00 50 e3                                      cmp r0, #0
0033d99c  06 80 a0 01                                      moveq r8, r6
0033d9a0  30 80 84 e5                                      str r8, [r4, #0x30]
0033d9a4  04 00 a0 e1                                      mov r0, r4
0033d9a8  50 70 9f e5                                      ldr r7, [pc, #0x50]
0033d9ac  79 ff ff eb                                      bl #0x33d798
0033d9b0  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
0033d9b4  07 70 8f e0                                      add r7, pc, r7
0033d9b8  48 e0 9f e5                                      ldr lr, [pc, #0x48]
0033d9bc  02 20 97 e7                                      ldr r2, [r7, r2]
0033d9c0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0033d9c4  0e e0 97 e7                                      ldr lr, [r7, lr]
0033d9c8  04 c0 94 e5                                      ldr ip, [r4, #4]
0033d9cc  14 00 92 e5                                      ldr r0, [r2, #0x14]
0033d9d0  08 20 94 e5                                      ldr r2, [r4, #8]
0033d9d4  08 e0 8e e2                                      add lr, lr, #8
0033d9d8  06 40 a0 e3                                      mov r4, #6
0033d9dc  04 10 8d e2                                      add r1, sp, #4
0033d9e0  08 40 8d e5                                      str r4, [sp, #8]
0033d9e4  04 e0 8d e5                                      str lr, [sp, #4]
0033d9e8  0c c0 8d e5                                      str ip, [sp, #0xc]
0033d9ec  10 20 8d e5                                      str r2, [sp, #0x10]
0033d9f0  14 30 8d e5                                      str r3, [sp, #0x14]
0033d9f4  30 ed ff eb                                      bl #0x338ebc
0033d9f8  18 d0 8d e2                                      add sp, sp, #0x18
0033d9fc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
0033da00  dc 70 65 00 f4 37 00 00 40 39 00 00              .byte 0xdc, 0x70, 0x65, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x40, 0x39, 0x00, 0x00

; FUNCTION 0x0033da0c, declared_size=88, range_size=88, mode=arm
; class-group: AccelerometerBase
; alias: _ZN17AccelerometerBaseC1Ev
; demangled: AccelerometerBase::AccelerometerBase()
; decoder-mode: arm
0033da0c  48 20 9f e5                                      ldr r2, [pc, #0x48]
0033da10  48 10 9f e5                                      ldr r1, [pc, #0x48]
0033da14  00 30 a0 e3                                      mov r3, #0
0033da18  02 20 8f e0                                      add r2, pc, r2
0033da1c  01 10 92 e7                                      ldr r1, [r2, r1]
0033da20  10 40 2d e9                                      push {r4, lr}
0033da24  08 10 81 e2                                      add r1, r1, #8
0033da28  00 40 a0 e1                                      mov r4, r0
0033da2c  34 30 80 e5                                      str r3, [r0, #0x34]
0033da30  00 10 80 e5                                      str r1, [r0]
0033da34  0c 30 80 e5                                      str r3, [r0, #0xc]
0033da38  08 30 80 e5                                      str r3, [r0, #8]
0033da3c  04 30 80 e5                                      str r3, [r0, #4]
0033da40  44 30 80 e5                                      str r3, [r0, #0x44]
0033da44  3c 30 80 e5                                      str r3, [r0, #0x3c]
0033da48  52 ff ff eb                                      bl #0x33d798
0033da4c  04 00 a0 e1                                      mov r0, r4
0033da50  32 ff ff eb                                      bl #0x33d720
0033da54  04 00 a0 e1                                      mov r0, r4
0033da58  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0033da5c  78 70 65 00 4c 47 00 00                          .byte 0x78, 0x70, 0x65, 0x00, 0x4c, 0x47, 0x00, 0x00

; FUNCTION 0x0033da64, declared_size=88, range_size=88, mode=arm
; class-group: AccelerometerBase
; alias: _ZN17AccelerometerBaseC2Ev
; demangled: AccelerometerBase::AccelerometerBase()
; decoder-mode: arm
0033da64  48 20 9f e5                                      ldr r2, [pc, #0x48]
0033da68  48 10 9f e5                                      ldr r1, [pc, #0x48]
0033da6c  00 30 a0 e3                                      mov r3, #0
0033da70  02 20 8f e0                                      add r2, pc, r2
0033da74  01 10 92 e7                                      ldr r1, [r2, r1]
0033da78  10 40 2d e9                                      push {r4, lr}
0033da7c  08 10 81 e2                                      add r1, r1, #8
0033da80  00 40 a0 e1                                      mov r4, r0
0033da84  34 30 80 e5                                      str r3, [r0, #0x34]
0033da88  00 10 80 e5                                      str r1, [r0]
0033da8c  0c 30 80 e5                                      str r3, [r0, #0xc]
0033da90  08 30 80 e5                                      str r3, [r0, #8]
0033da94  04 30 80 e5                                      str r3, [r0, #4]
0033da98  44 30 80 e5                                      str r3, [r0, #0x44]
0033da9c  3c 30 80 e5                                      str r3, [r0, #0x3c]
0033daa0  3c ff ff eb                                      bl #0x33d798
0033daa4  04 00 a0 e1                                      mov r0, r4
0033daa8  1c ff ff eb                                      bl #0x33d720
0033daac  04 00 a0 e1                                      mov r0, r4
0033dab0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0033dab4  20 70 65 00 4c 47 00 00                          .byte 0x20, 0x70, 0x65, 0x00, 0x4c, 0x47, 0x00, 0x00
