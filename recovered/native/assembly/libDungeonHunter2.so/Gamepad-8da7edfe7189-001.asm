; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0034cd0c, declared_size=380, range_size=380, mode=arm
; class-group: Gamepad
; alias: _ZN7GamepadC2Ev
; demangled: Gamepad::Gamepad()
; decoder-mode: arm
0034cd0c  70 40 2d e9                                      push {r4, r5, r6, lr}
0034cd10  02 10 a0 e3                                      mov r1, #2
0034cd14  60 51 9f e5                                      ldr r5, [pc, #0x160]
0034cd18  00 40 a0 e1                                      mov r4, r0
0034cd1c  50 ff ff eb                                      bl #0x34ca64
0034cd20  58 01 9f e5                                      ldr r0, [pc, #0x158]
0034cd24  05 50 8f e0                                      add r5, pc, r5
0034cd28  04 30 a0 e1                                      mov r3, r4
0034cd2c  00 00 95 e7                                      ldr r0, [r5, r0]
0034cd30  00 20 a0 e3                                      mov r2, #0
0034cd34  fe 15 a0 e3                                      mov r1, #0x3f800000
0034cd38  08 00 80 e2                                      add r0, r0, #8
0034cd3c  0c 00 83 e4                                      str r0, [r3], #0xc
0034cd40  5a ce 83 e2                                      add ip, r3, #0x5a0
0034cd44  00 00 a0 e3                                      mov r0, #0
0034cd48  14 20 83 e5                                      str r2, [r3, #0x14]
0034cd4c  10 20 83 e5                                      str r2, [r3, #0x10]
0034cd50  0c 20 83 e5                                      str r2, [r3, #0xc]
0034cd54  04 20 83 e5                                      str r2, [r3, #4]
0034cd58  00 20 83 e5                                      str r2, [r3]
0034cd5c  18 10 83 e5                                      str r1, [r3, #0x18]
0034cd60  08 10 83 e5                                      str r1, [r3, #8]
0034cd64  1c 00 c3 e5                                      strb r0, [r3, #0x1c]
0034cd68  20 30 83 e2                                      add r3, r3, #0x20
0034cd6c  0c 00 53 e1                                      cmp r3, ip
0034cd70  f4 ff ff 1a                                      bne #0x34cd48
0034cd74  5a 3e 84 e2                                      add r3, r4, #0x5a0
0034cd78  4b cf 83 e2                                      add ip, r3, #0x12c
0034cd7c  00 00 a0 e3                                      mov r0, #0
0034cd80  0c 30 83 e2                                      add r3, r3, #0xc
0034cd84  14 20 83 e5                                      str r2, [r3, #0x14]
0034cd88  10 20 83 e5                                      str r2, [r3, #0x10]
0034cd8c  0c 20 83 e5                                      str r2, [r3, #0xc]
0034cd90  04 20 83 e5                                      str r2, [r3, #4]
0034cd94  00 20 83 e5                                      str r2, [r3]
0034cd98  18 10 83 e5                                      str r1, [r3, #0x18]
0034cd9c  08 10 83 e5                                      str r1, [r3, #8]
0034cda0  1c 00 c3 e5                                      strb r0, [r3, #0x1c]
0034cda4  20 30 83 e2                                      add r3, r3, #0x20
0034cda8  0c 00 53 e1                                      cmp r3, ip
0034cdac  f4 ff ff 1a                                      bne #0x34cd84
0034cdb0  1b 3d 84 e2                                      add r3, r4, #0x6c0
0034cdb4  3c 10 83 e2                                      add r1, r3, #0x3c
0034cdb8  0c 30 83 e2                                      add r3, r3, #0xc
0034cdbc  00 20 83 e5                                      str r2, [r3]
0034cdc0  04 20 83 e5                                      str r2, [r3, #4]
0034cdc4  08 20 83 e5                                      str r2, [r3, #8]
0034cdc8  0c 30 83 e2                                      add r3, r3, #0xc
0034cdcc  01 00 53 e1                                      cmp r3, r1
0034cdd0  f9 ff ff 1a                                      bne #0x34cdbc
0034cdd4  07 3c 84 e2                                      add r3, r4, #0x700
0034cdd8  3c 10 83 e2                                      add r1, r3, #0x3c
0034cddc  0c 30 83 e2                                      add r3, r3, #0xc
0034cde0  00 20 83 e5                                      str r2, [r3]
0034cde4  04 20 83 e5                                      str r2, [r3, #4]
0034cde8  08 20 83 e5                                      str r2, [r3, #8]
0034cdec  0c 30 83 e2                                      add r3, r3, #0xc
0034cdf0  01 00 53 e1                                      cmp r3, r1
0034cdf4  f9 ff ff 1a                                      bne #0x34cde0
0034cdf8  84 20 9f e5                                      ldr r2, [pc, #0x84]
0034cdfc  00 30 a0 e3                                      mov r3, #0
0034ce00  03 00 a0 e1                                      mov r0, r3
0034ce04  02 20 95 e7                                      ldr r2, [r5, r2]
0034ce08  80 10 a0 e3                                      mov r1, #0x80
0034ce0c  54 17 84 e5                                      str r1, [r4, #0x754]
0034ce10  4c 37 c4 e5                                      strb r3, [r4, #0x74c]
0034ce14  58 37 c4 e5                                      strb r3, [r4, #0x758]
0034ce18  50 37 84 e5                                      str r3, [r4, #0x750]
0034ce1c  04 10 a0 e1                                      mov r1, r4
0034ce20  04 30 a0 e1                                      mov r3, r4
0034ce24  00 c0 a0 e1                                      mov ip, r0
0034ce28  00 50 92 e5                                      ldr r5, [r2]
0034ce2c  01 00 80 e2                                      add r0, r0, #1
0034ce30  04 00 50 e3                                      cmp r0, #4
0034ce34  cc 56 83 e5                                      str r5, [r3, #0x6cc]
0034ce38  04 50 92 e5                                      ldr r5, [r2, #4]
0034ce3c  d0 56 83 e5                                      str r5, [r3, #0x6d0]
0034ce40  08 50 92 e5                                      ldr r5, [r2, #8]
0034ce44  d4 56 83 e5                                      str r5, [r3, #0x6d4]
0034ce48  fc c6 81 e5                                      str ip, [r1, #0x6fc]
0034ce4c  00 50 92 e5                                      ldr r5, [r2]
0034ce50  0c 57 83 e5                                      str r5, [r3, #0x70c]
0034ce54  04 50 92 e5                                      ldr r5, [r2, #4]
0034ce58  10 57 83 e5                                      str r5, [r3, #0x710]
0034ce5c  08 50 92 e5                                      ldr r5, [r2, #8]
0034ce60  14 57 83 e5                                      str r5, [r3, #0x714]
0034ce64  3c c7 81 e5                                      str ip, [r1, #0x73c]
0034ce68  0c 30 83 e2                                      add r3, r3, #0xc
0034ce6c  04 10 81 e2                                      add r1, r1, #4
0034ce70  ec ff ff 1a                                      bne #0x34ce28
0034ce74  04 00 a0 e1                                      mov r0, r4
0034ce78  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0034ce7c  6c 7d 64 00 1c 14 00 00 2c 3f 00 00              .byte 0x6c, 0x7d, 0x64, 0x00, 0x1c, 0x14, 0x00, 0x00, 0x2c, 0x3f, 0x00, 0x00

; FUNCTION 0x0034ce88, declared_size=380, range_size=380, mode=arm
; class-group: Gamepad
; alias: _ZN7GamepadC1Ev
; demangled: Gamepad::Gamepad()
; decoder-mode: arm
0034ce88  70 40 2d e9                                      push {r4, r5, r6, lr}
0034ce8c  02 10 a0 e3                                      mov r1, #2
0034ce90  60 51 9f e5                                      ldr r5, [pc, #0x160]
0034ce94  00 40 a0 e1                                      mov r4, r0
0034ce98  f1 fe ff eb                                      bl #0x34ca64
0034ce9c  58 01 9f e5                                      ldr r0, [pc, #0x158]
0034cea0  05 50 8f e0                                      add r5, pc, r5
0034cea4  04 30 a0 e1                                      mov r3, r4
0034cea8  00 00 95 e7                                      ldr r0, [r5, r0]
0034ceac  00 20 a0 e3                                      mov r2, #0
0034ceb0  fe 15 a0 e3                                      mov r1, #0x3f800000
0034ceb4  08 00 80 e2                                      add r0, r0, #8
0034ceb8  0c 00 83 e4                                      str r0, [r3], #0xc
0034cebc  5a ce 83 e2                                      add ip, r3, #0x5a0
0034cec0  00 00 a0 e3                                      mov r0, #0
0034cec4  14 20 83 e5                                      str r2, [r3, #0x14]
0034cec8  10 20 83 e5                                      str r2, [r3, #0x10]
0034cecc  0c 20 83 e5                                      str r2, [r3, #0xc]
0034ced0  04 20 83 e5                                      str r2, [r3, #4]
0034ced4  00 20 83 e5                                      str r2, [r3]
0034ced8  18 10 83 e5                                      str r1, [r3, #0x18]
0034cedc  08 10 83 e5                                      str r1, [r3, #8]
0034cee0  1c 00 c3 e5                                      strb r0, [r3, #0x1c]
0034cee4  20 30 83 e2                                      add r3, r3, #0x20
0034cee8  0c 00 53 e1                                      cmp r3, ip
0034ceec  f4 ff ff 1a                                      bne #0x34cec4
0034cef0  5a 3e 84 e2                                      add r3, r4, #0x5a0
0034cef4  4b cf 83 e2                                      add ip, r3, #0x12c
0034cef8  00 00 a0 e3                                      mov r0, #0
0034cefc  0c 30 83 e2                                      add r3, r3, #0xc
0034cf00  14 20 83 e5                                      str r2, [r3, #0x14]
0034cf04  10 20 83 e5                                      str r2, [r3, #0x10]
0034cf08  0c 20 83 e5                                      str r2, [r3, #0xc]
0034cf0c  04 20 83 e5                                      str r2, [r3, #4]
0034cf10  00 20 83 e5                                      str r2, [r3]
0034cf14  18 10 83 e5                                      str r1, [r3, #0x18]
0034cf18  08 10 83 e5                                      str r1, [r3, #8]
0034cf1c  1c 00 c3 e5                                      strb r0, [r3, #0x1c]
0034cf20  20 30 83 e2                                      add r3, r3, #0x20
0034cf24  0c 00 53 e1                                      cmp r3, ip
0034cf28  f4 ff ff 1a                                      bne #0x34cf00
0034cf2c  1b 3d 84 e2                                      add r3, r4, #0x6c0
0034cf30  3c 10 83 e2                                      add r1, r3, #0x3c
0034cf34  0c 30 83 e2                                      add r3, r3, #0xc
0034cf38  00 20 83 e5                                      str r2, [r3]
0034cf3c  04 20 83 e5                                      str r2, [r3, #4]
0034cf40  08 20 83 e5                                      str r2, [r3, #8]
0034cf44  0c 30 83 e2                                      add r3, r3, #0xc
0034cf48  01 00 53 e1                                      cmp r3, r1
0034cf4c  f9 ff ff 1a                                      bne #0x34cf38
0034cf50  07 3c 84 e2                                      add r3, r4, #0x700
0034cf54  3c 10 83 e2                                      add r1, r3, #0x3c
0034cf58  0c 30 83 e2                                      add r3, r3, #0xc
0034cf5c  00 20 83 e5                                      str r2, [r3]
0034cf60  04 20 83 e5                                      str r2, [r3, #4]
0034cf64  08 20 83 e5                                      str r2, [r3, #8]
0034cf68  0c 30 83 e2                                      add r3, r3, #0xc
0034cf6c  01 00 53 e1                                      cmp r3, r1
0034cf70  f9 ff ff 1a                                      bne #0x34cf5c
0034cf74  84 20 9f e5                                      ldr r2, [pc, #0x84]
0034cf78  00 30 a0 e3                                      mov r3, #0
0034cf7c  03 00 a0 e1                                      mov r0, r3
0034cf80  02 20 95 e7                                      ldr r2, [r5, r2]
0034cf84  80 10 a0 e3                                      mov r1, #0x80
0034cf88  54 17 84 e5                                      str r1, [r4, #0x754]
0034cf8c  4c 37 c4 e5                                      strb r3, [r4, #0x74c]
0034cf90  58 37 c4 e5                                      strb r3, [r4, #0x758]
0034cf94  50 37 84 e5                                      str r3, [r4, #0x750]
0034cf98  04 10 a0 e1                                      mov r1, r4
0034cf9c  04 30 a0 e1                                      mov r3, r4
0034cfa0  00 c0 a0 e1                                      mov ip, r0
0034cfa4  00 50 92 e5                                      ldr r5, [r2]
0034cfa8  01 00 80 e2                                      add r0, r0, #1
0034cfac  04 00 50 e3                                      cmp r0, #4
0034cfb0  cc 56 83 e5                                      str r5, [r3, #0x6cc]
0034cfb4  04 50 92 e5                                      ldr r5, [r2, #4]
0034cfb8  d0 56 83 e5                                      str r5, [r3, #0x6d0]
0034cfbc  08 50 92 e5                                      ldr r5, [r2, #8]
0034cfc0  d4 56 83 e5                                      str r5, [r3, #0x6d4]
0034cfc4  fc c6 81 e5                                      str ip, [r1, #0x6fc]
0034cfc8  00 50 92 e5                                      ldr r5, [r2]
0034cfcc  0c 57 83 e5                                      str r5, [r3, #0x70c]
0034cfd0  04 50 92 e5                                      ldr r5, [r2, #4]
0034cfd4  10 57 83 e5                                      str r5, [r3, #0x710]
0034cfd8  08 50 92 e5                                      ldr r5, [r2, #8]
0034cfdc  14 57 83 e5                                      str r5, [r3, #0x714]
0034cfe0  3c c7 81 e5                                      str ip, [r1, #0x73c]
0034cfe4  0c 30 83 e2                                      add r3, r3, #0xc
0034cfe8  04 10 81 e2                                      add r1, r1, #4
0034cfec  ec ff ff 1a                                      bne #0x34cfa4
0034cff0  04 00 a0 e1                                      mov r0, r4
0034cff4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0034cff8  f0 7b 64 00 1c 14 00 00 2c 3f 00 00              .byte 0xf0, 0x7b, 0x64, 0x00, 0x1c, 0x14, 0x00, 0x00, 0x2c, 0x3f, 0x00, 0x00

; FUNCTION 0x0034d004, declared_size=40, range_size=40, mode=arm
; class-group: Gamepad
; alias: _ZN7Gamepad15ToggleVibrationEv
; demangled: Gamepad::ToggleVibration()
; decoder-mode: arm
0034d004  18 30 9f e5                                      ldr r3, [pc, #0x18]
0034d008  18 20 9f e5                                      ldr r2, [pc, #0x18]
0034d00c  03 30 8f e0                                      add r3, pc, r3
0034d010  02 20 93 e7                                      ldr r2, [r3, r2]
0034d014  00 30 d2 e5                                      ldrb r3, [r2]
0034d018  01 30 23 e2                                      eor r3, r3, #1
0034d01c  00 30 c2 e5                                      strb r3, [r2]
0034d020  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0034d024  84 7a 64 00 c8 2f 00 00                          .byte 0x84, 0x7a, 0x64, 0x00, 0xc8, 0x2f, 0x00, 0x00

; FUNCTION 0x0034d02c, declared_size=32, range_size=32, mode=arm
; class-group: Gamepad
; alias: _ZN7Gamepad18IsVibrationEnabledEv
; demangled: Gamepad::IsVibrationEnabled()
; decoder-mode: arm
0034d02c  10 30 9f e5                                      ldr r3, [pc, #0x10]
0034d030  10 20 9f e5                                      ldr r2, [pc, #0x10]
0034d034  03 30 8f e0                                      add r3, pc, r3
0034d038  02 20 93 e7                                      ldr r2, [r3, r2]
0034d03c  00 00 d2 e5                                      ldrb r0, [r2]
0034d040  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0034d044  5c 7a 64 00 c8 2f 00 00                          .byte 0x5c, 0x7a, 0x64, 0x00, 0xc8, 0x2f, 0x00, 0x00

; FUNCTION 0x0034d124, declared_size=1432, range_size=1432, mode=arm
; class-group: Gamepad
; alias: _ZN7Gamepad11UpdateFrameEf
; demangled: Gamepad::UpdateFrame(float)
; decoder-mode: arm
0034d124  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0034d128  84 a5 9f e5                                      ldr sl, [pc, #0x584]
0034d12c  2c d0 4d e2                                      sub sp, sp, #0x2c
0034d130  00 80 a0 e1                                      mov r8, r0
0034d134  00 50 a0 e1                                      mov r5, r0
0034d138  00 40 a0 e1                                      mov r4, r0
0034d13c  00 60 a0 e3                                      mov r6, #0
0034d140  0a a0 8f e0                                      add sl, pc, sl
0034d144  20 10 94 e5                                      ldr r1, [r4, #0x20]
0034d148  24 00 94 e5                                      ldr r0, [r4, #0x24]
0034d14c  94 06 ff eb                                      bl #0x30eba4
0034d150  fe 15 a0 e3                                      mov r1, #0x3f800000
0034d154  92 06 ff eb                                      bl #0x30eba4
0034d158  3f 14 a0 e3                                      mov r1, #0x3f000000
0034d15c  02 07 ff eb                                      bl #0x30ed6c
0034d160  00 10 a0 e1                                      mov r1, r0
0034d164  18 00 94 e5                                      ldr r0, [r4, #0x18]
0034d168  d1 04 ff eb                                      bl #0x30e4b4
0034d16c  10 10 94 e5                                      ldr r1, [r4, #0x10]
0034d170  00 00 50 e3                                      cmp r0, #0
0034d174  14 20 94 e5                                      ldr r2, [r4, #0x14]
0034d178  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0034d17c  01 60 86 e2                                      add r6, r6, #1
0034d180  00 30 a0 e3                                      mov r3, #0
0034d184  01 30 a0 13                                      movne r3, #1
0034d188  2d 00 56 e3                                      cmp r6, #0x2d
0034d18c  28 30 c4 e5                                      strb r3, [r4, #0x28]
0034d190  18 00 84 e5                                      str r0, [r4, #0x18]
0034d194  20 10 84 e5                                      str r1, [r4, #0x20]
0034d198  24 20 84 e5                                      str r2, [r4, #0x24]
0034d19c  20 40 84 e2                                      add r4, r4, #0x20
0034d1a0  e7 ff ff 1a                                      bne #0x34d144
0034d1a4  08 40 a0 e1                                      mov r4, r8
0034d1a8  00 60 a0 e3                                      mov r6, #0
0034d1ac  c0 15 94 e5                                      ldr r1, [r4, #0x5c0]
0034d1b0  c4 05 94 e5                                      ldr r0, [r4, #0x5c4]
0034d1b4  7a 06 ff eb                                      bl #0x30eba4
0034d1b8  fe 15 a0 e3                                      mov r1, #0x3f800000
0034d1bc  78 06 ff eb                                      bl #0x30eba4
0034d1c0  3f 14 a0 e3                                      mov r1, #0x3f000000
0034d1c4  e8 06 ff eb                                      bl #0x30ed6c
0034d1c8  00 10 a0 e1                                      mov r1, r0
0034d1cc  b8 05 94 e5                                      ldr r0, [r4, #0x5b8]
0034d1d0  b7 04 ff eb                                      bl #0x30e4b4
0034d1d4  b0 15 94 e5                                      ldr r1, [r4, #0x5b0]
0034d1d8  00 00 50 e3                                      cmp r0, #0
0034d1dc  b4 25 94 e5                                      ldr r2, [r4, #0x5b4]
0034d1e0  ac 05 94 e5                                      ldr r0, [r4, #0x5ac]
0034d1e4  01 60 86 e2                                      add r6, r6, #1
0034d1e8  00 30 a0 e3                                      mov r3, #0
0034d1ec  01 30 a0 13                                      movne r3, #1
0034d1f0  09 00 56 e3                                      cmp r6, #9
0034d1f4  c8 35 c4 e5                                      strb r3, [r4, #0x5c8]
0034d1f8  b8 05 84 e5                                      str r0, [r4, #0x5b8]
0034d1fc  c0 15 84 e5                                      str r1, [r4, #0x5c0]
0034d200  c4 25 84 e5                                      str r2, [r4, #0x5c4]
0034d204  20 40 84 e2                                      add r4, r4, #0x20
0034d208  e7 ff ff 1a                                      bne #0x34d1ac
0034d20c  a4 14 9f e5                                      ldr r1, [pc, #0x4a4]
0034d210  10 20 8d e2                                      add r2, sp, #0x10
0034d214  1c 30 8d e2                                      add r3, sp, #0x1c
0034d218  00 10 8d e5                                      str r1, [sp]
0034d21c  00 70 a0 e3                                      mov r7, #0
0034d220  00 60 a0 e3                                      mov r6, #0
0034d224  08 40 a0 e1                                      mov r4, r8
0034d228  08 20 8d e5                                      str r2, [sp, #8]
0034d22c  0c 30 8d e5                                      str r3, [sp, #0xc]
0034d230  04 a0 8d e5                                      str sl, [sp, #4]
0034d234  fc 36 95 e5                                      ldr r3, [r5, #0x6fc]
0034d238  00 00 53 e3                                      cmp r3, #0
0034d23c  07 00 00 1a                                      bne #0x34d260
0034d240  06 00 9d e8                                      ldm sp, {r1, r2}
0034d244  01 30 92 e7                                      ldr r3, [r2, r1]
0034d248  00 20 93 e5                                      ldr r2, [r3]
0034d24c  cc 26 84 e5                                      str r2, [r4, #0x6cc]
0034d250  04 20 93 e5                                      ldr r2, [r3, #4]
0034d254  d0 26 84 e5                                      str r2, [r4, #0x6d0]
0034d258  08 30 93 e5                                      ldr r3, [r3, #8]
0034d25c  d4 36 84 e5                                      str r3, [r4, #0x6d4]
0034d260  3c 37 95 e5                                      ldr r3, [r5, #0x73c]
0034d264  00 00 53 e3                                      cmp r3, #0
0034d268  07 00 00 1a                                      bne #0x34d28c
0034d26c  06 00 9d e8                                      ldm sp, {r1, r2}
0034d270  01 30 92 e7                                      ldr r3, [r2, r1]
0034d274  00 20 93 e5                                      ldr r2, [r3]
0034d278  0c 27 84 e5                                      str r2, [r4, #0x70c]
0034d27c  04 20 93 e5                                      ldr r2, [r3, #4]
0034d280  10 27 84 e5                                      str r2, [r4, #0x710]
0034d284  08 30 93 e5                                      ldr r3, [r3, #8]
0034d288  14 37 84 e5                                      str r3, [r4, #0x714]
0034d28c  02 00 56 e3                                      cmp r6, #2
0034d290  05 a0 a0 03                                      moveq sl, #5
0034d294  04 90 a0 03                                      moveq sb, #4
0034d298  08 00 00 0a                                      beq #0x34d2c0
0034d29c  03 00 56 e3                                      cmp r6, #3
0034d2a0  07 a0 a0 03                                      moveq sl, #7
0034d2a4  06 90 a0 03                                      moveq sb, #6
0034d2a8  04 00 00 0a                                      beq #0x34d2c0
0034d2ac  01 00 56 e3                                      cmp r6, #1
0034d2b0  02 90 a0 03                                      moveq sb, #2
0034d2b4  00 90 a0 13                                      movne sb, #0
0034d2b8  03 a0 a0 03                                      moveq sl, #3
0034d2bc  01 a0 a0 13                                      movne sl, #1
0034d2c0  89 92 88 e0                                      add sb, r8, sb, lsl #5
0034d2c4  10 70 8d e5                                      str r7, [sp, #0x10]
0034d2c8  14 70 8d e5                                      str r7, [sp, #0x14]
0034d2cc  18 70 8d e5                                      str r7, [sp, #0x18]
0034d2d0  ac 05 99 e5                                      ldr r0, [sb, #0x5ac]
0034d2d4  8a a2 88 e0                                      add sl, r8, sl, lsl #5
0034d2d8  00 10 a0 e1                                      mov r1, r0
0034d2dc  30 06 ff eb                                      bl #0x30eba4
0034d2e0  b0 15 99 e5                                      ldr r1, [sb, #0x5b0]
0034d2e4  00 b0 a0 e1                                      mov fp, r0
0034d2e8  b4 05 99 e5                                      ldr r0, [sb, #0x5b4]
0034d2ec  2e 04 ff eb                                      bl #0x30e3ac
0034d2f0  00 10 a0 e1                                      mov r1, r0
0034d2f4  0b 00 a0 e1                                      mov r0, fp
0034d2f8  65 06 ff eb                                      bl #0x30ec94
0034d2fc  10 00 8d e5                                      str r0, [sp, #0x10]
0034d300  00 90 a0 e1                                      mov sb, r0
0034d304  ac 05 9a e5                                      ldr r0, [sl, #0x5ac]
0034d308  00 10 a0 e1                                      mov r1, r0
0034d30c  24 06 ff eb                                      bl #0x30eba4
0034d310  b0 15 9a e5                                      ldr r1, [sl, #0x5b0]
0034d314  00 b0 a0 e1                                      mov fp, r0
0034d318  b4 05 9a e5                                      ldr r0, [sl, #0x5b4]
0034d31c  22 04 ff eb                                      bl #0x30e3ac
0034d320  00 10 a0 e1                                      mov r1, r0
0034d324  0b 00 a0 e1                                      mov r0, fp
0034d328  59 06 ff eb                                      bl #0x30ec94
0034d32c  09 10 a0 e1                                      mov r1, sb
0034d330  02 a1 80 e2                                      add sl, r0, #0x80000000
0034d334  09 00 a0 e1                                      mov r0, sb
0034d338  14 a0 8d e5                                      str sl, [sp, #0x14]
0034d33c  8a 06 ff eb                                      bl #0x30ed6c
0034d340  0a 10 a0 e1                                      mov r1, sl
0034d344  00 90 a0 e1                                      mov sb, r0
0034d348  0a 00 a0 e1                                      mov r0, sl
0034d34c  86 06 ff eb                                      bl #0x30ed6c
0034d350  00 10 a0 e1                                      mov r1, r0
0034d354  09 00 a0 e1                                      mov r0, sb
0034d358  11 06 ff eb                                      bl #0x30eba4
0034d35c  07 10 a0 e1                                      mov r1, r7
0034d360  0f 06 ff eb                                      bl #0x30eba4
0034d364  6e 03 ff eb                                      bl #0x30e124
0034d368  66 16 06 e3                                      movw r1, #0x6666
0034d36c  26 1f 43 e3                                      movt r1, #0x3f26
0034d370  00 a0 a0 e1                                      mov sl, r0
0034d374  e4 04 ff eb                                      bl #0x30e70c
0034d378  00 00 50 e3                                      cmp r0, #0
0034d37c  3f 00 00 0a                                      beq #0x34d480
0034d380  06 00 9d e8                                      ldm sp, {r1, r2}
0034d384  01 30 92 e7                                      ldr r3, [r2, r1]
0034d388  08 a0 93 e5                                      ldr sl, [r3, #8]
0034d38c  00 b0 93 e5                                      ldr fp, [r3]
0034d390  04 90 93 e5                                      ldr sb, [r3, #4]
0034d394  24 a0 8d e5                                      str sl, [sp, #0x24]
0034d398  1c b0 8d e5                                      str fp, [sp, #0x1c]
0034d39c  20 90 8d e5                                      str sb, [sp, #0x20]
0034d3a0  0b 10 a0 e1                                      mov r1, fp
0034d3a4  0b 00 a0 e1                                      mov r0, fp
0034d3a8  6f 06 ff eb                                      bl #0x30ed6c
0034d3ac  09 10 a0 e1                                      mov r1, sb
0034d3b0  00 b0 a0 e1                                      mov fp, r0
0034d3b4  09 00 a0 e1                                      mov r0, sb
0034d3b8  6b 06 ff eb                                      bl #0x30ed6c
0034d3bc  00 10 a0 e1                                      mov r1, r0
0034d3c0  0b 00 a0 e1                                      mov r0, fp
0034d3c4  f6 05 ff eb                                      bl #0x30eba4
0034d3c8  0a 10 a0 e1                                      mov r1, sl
0034d3cc  00 90 a0 e1                                      mov sb, r0
0034d3d0  0a 00 a0 e1                                      mov r0, sl
0034d3d4  64 06 ff eb                                      bl #0x30ed6c
0034d3d8  00 10 a0 e1                                      mov r1, r0
0034d3dc  09 00 a0 e1                                      mov r0, sb
0034d3e0  ef 05 ff eb                                      bl #0x30eba4
0034d3e4  00 10 a0 e3                                      mov r1, #0
0034d3e8  c2 03 ff eb                                      bl #0x30e2f8
0034d3ec  00 00 50 e3                                      cmp r0, #0
0034d3f0  31 00 00 1a                                      bne #0x34d4bc
0034d3f4  04 10 9d e5                                      ldr r1, [sp, #4]
0034d3f8  00 30 9d e5                                      ldr r3, [sp]
0034d3fc  0c 90 a0 e3                                      mov sb, #0xc
0034d400  99 06 09 e0                                      mul sb, sb, r6
0034d404  03 a0 91 e7                                      ldr sl, [r1, r3]
0034d408  09 00 88 e0                                      add r0, r8, sb
0034d40c  00 20 a0 e3                                      mov r2, #0
0034d410  1b 0d 80 e2                                      add r0, r0, #0x6c0
0034d414  fc 26 85 e5                                      str r2, [r5, #0x6fc]
0034d418  0c 00 80 e2                                      add r0, r0, #0xc
0034d41c  0a 10 a0 e1                                      mov r1, sl
0034d420  d1 15 ff eb                                      bl #0x312b6c
0034d424  00 00 50 e3                                      cmp r0, #0
0034d428  64 00 00 1a                                      bne #0x34d5c0
0034d42c  3c 37 95 e5                                      ldr r3, [r5, #0x73c]
0034d430  00 00 53 e3                                      cmp r3, #0
0034d434  58 00 00 0a                                      beq #0x34d59c
0034d438  bc 04 ff eb                                      bl #0x30e730
0034d43c  3c 37 95 e5                                      ldr r3, [r5, #0x73c]
0034d440  00 30 63 e0                                      rsb r3, r3, r0
0034d444  19 0e 53 e3                                      cmp r3, #0x190
0034d448  64 00 00 da                                      ble #0x34d5e0
0034d44c  00 30 9a e5                                      ldr r3, [sl]
0034d450  01 60 86 e2                                      add r6, r6, #1
0034d454  04 00 56 e3                                      cmp r6, #4
0034d458  0c 37 84 e5                                      str r3, [r4, #0x70c]
0034d45c  04 30 9a e5                                      ldr r3, [sl, #4]
0034d460  04 50 85 e2                                      add r5, r5, #4
0034d464  10 37 84 e5                                      str r3, [r4, #0x710]
0034d468  08 30 9a e5                                      ldr r3, [sl, #8]
0034d46c  14 37 84 e5                                      str r3, [r4, #0x714]
0034d470  0c 40 84 e2                                      add r4, r4, #0xc
0034d474  6e ff ff 1a                                      bne #0x34d234
0034d478  2c d0 8d e2                                      add sp, sp, #0x2c
0034d47c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0034d480  08 00 9d e5                                      ldr r0, [sp, #8]
0034d484  09 ff ff eb                                      bl #0x34d0b0
0034d488  33 13 03 e3                                      movw r1, #0x3333
0034d48c  0a 00 a0 e1                                      mov r0, sl
0034d490  73 1f 43 e3                                      movt r1, #0x3f73
0034d494  9c 04 ff eb                                      bl #0x30e70c
0034d498  00 00 50 e3                                      cmp r0, #0
0034d49c  27 00 00 1a                                      bne #0x34d540
0034d4a0  10 b0 9d e5                                      ldr fp, [sp, #0x10]
0034d4a4  14 90 9d e5                                      ldr sb, [sp, #0x14]
0034d4a8  18 a0 9d e5                                      ldr sl, [sp, #0x18]
0034d4ac  1c b0 8d e5                                      str fp, [sp, #0x1c]
0034d4b0  20 90 8d e5                                      str sb, [sp, #0x20]
0034d4b4  24 a0 8d e5                                      str sl, [sp, #0x24]
0034d4b8  b8 ff ff ea                                      b #0x34d3a0
0034d4bc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0034d4c0  fa fe ff eb                                      bl #0x34d0b0
0034d4c4  fc 36 95 e5                                      ldr r3, [r5, #0x6fc]
0034d4c8  00 00 53 e3                                      cmp r3, #0
0034d4cc  0d 00 00 1a                                      bne #0x34d508
0034d4d0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0034d4d4  cc 36 84 e5                                      str r3, [r4, #0x6cc]
0034d4d8  20 30 9d e5                                      ldr r3, [sp, #0x20]
0034d4dc  d0 36 84 e5                                      str r3, [r4, #0x6d0]
0034d4e0  24 30 9d e5                                      ldr r3, [sp, #0x24]
0034d4e4  d4 36 84 e5                                      str r3, [r4, #0x6d4]
0034d4e8  90 04 ff eb                                      bl #0x30e730
0034d4ec  fc 06 85 e5                                      str r0, [r5, #0x6fc]
0034d4f0  01 60 86 e2                                      add r6, r6, #1
0034d4f4  04 00 56 e3                                      cmp r6, #4
0034d4f8  04 50 85 e2                                      add r5, r5, #4
0034d4fc  0c 40 84 e2                                      add r4, r4, #0xc
0034d500  4b ff ff 1a                                      bne #0x34d234
0034d504  db ff ff ea                                      b #0x34d478
0034d508  88 04 ff eb                                      bl #0x30e730
0034d50c  fc 36 95 e5                                      ldr r3, [r5, #0x6fc]
0034d510  00 30 63 e0                                      rsb r3, r3, r0
0034d514  c8 00 53 e3                                      cmp r3, #0xc8
0034d518  f4 ff ff da                                      ble #0x34d4f0
0034d51c  06 00 9d e8                                      ldm sp, {r1, r2}
0034d520  01 30 92 e7                                      ldr r3, [r2, r1]
0034d524  00 20 93 e5                                      ldr r2, [r3]
0034d528  cc 26 84 e5                                      str r2, [r4, #0x6cc]
0034d52c  04 20 93 e5                                      ldr r2, [r3, #4]
0034d530  d0 26 84 e5                                      str r2, [r4, #0x6d0]
0034d534  08 30 93 e5                                      ldr r3, [r3, #8]
0034d538  d4 36 84 e5                                      str r3, [r4, #0x6d4]
0034d53c  eb ff ff ea                                      b #0x34d4f0
0034d540  66 16 06 e3                                      movw r1, #0x6666
0034d544  0a 00 a0 e1                                      mov r0, sl
0034d548  26 1f 43 e3                                      movt r1, #0x3f26
0034d54c  96 03 ff eb                                      bl #0x30e3ac
0034d550  9a 19 09 e3                                      movw r1, #0x999a
0034d554  99 1e 43 e3                                      movt r1, #0x3e99
0034d558  cd 05 ff eb                                      bl #0x30ec94
0034d55c  10 10 9d e5                                      ldr r1, [sp, #0x10]
0034d560  00 a0 a0 e1                                      mov sl, r0
0034d564  00 06 ff eb                                      bl #0x30ed6c
0034d568  14 10 9d e5                                      ldr r1, [sp, #0x14]
0034d56c  00 b0 a0 e1                                      mov fp, r0
0034d570  0a 00 a0 e1                                      mov r0, sl
0034d574  10 b0 8d e5                                      str fp, [sp, #0x10]
0034d578  fb 05 ff eb                                      bl #0x30ed6c
0034d57c  18 10 9d e5                                      ldr r1, [sp, #0x18]
0034d580  00 90 a0 e1                                      mov sb, r0
0034d584  0a 00 a0 e1                                      mov r0, sl
0034d588  14 90 8d e5                                      str sb, [sp, #0x14]
0034d58c  f6 05 ff eb                                      bl #0x30ed6c
0034d590  00 a0 a0 e1                                      mov sl, r0
0034d594  18 00 8d e5                                      str r0, [sp, #0x18]
0034d598  c3 ff ff ea                                      b #0x34d4ac
0034d59c  63 04 ff eb                                      bl #0x30e730
0034d5a0  3c 07 85 e5                                      str r0, [r5, #0x73c]
0034d5a4  cc 16 94 e5                                      ldr r1, [r4, #0x6cc]
0034d5a8  d0 26 94 e5                                      ldr r2, [r4, #0x6d0]
0034d5ac  d4 36 94 e5                                      ldr r3, [r4, #0x6d4]
0034d5b0  0c 17 84 e5                                      str r1, [r4, #0x70c]
0034d5b4  10 27 84 e5                                      str r2, [r4, #0x710]
0034d5b8  14 37 84 e5                                      str r3, [r4, #0x714]
0034d5bc  cb ff ff ea                                      b #0x34d4f0
0034d5c0  5a 04 ff eb                                      bl #0x30e730
0034d5c4  3c 37 95 e5                                      ldr r3, [r5, #0x73c]
0034d5c8  00 30 63 e0                                      rsb r3, r3, r0
0034d5cc  19 0e 53 e3                                      cmp r3, #0x190
0034d5d0  c6 ff ff da                                      ble #0x34d4f0
0034d5d4  00 10 a0 e3                                      mov r1, #0
0034d5d8  3c 17 85 e5                                      str r1, [r5, #0x73c]
0034d5dc  9a ff ff ea                                      b #0x34d44c
0034d5e0  09 00 88 e0                                      add r0, r8, sb
0034d5e4  07 0c 80 e2                                      add r0, r0, #0x700
0034d5e8  0c 00 80 e2                                      add r0, r0, #0xc
0034d5ec  0a 10 a0 e1                                      mov r1, sl
0034d5f0  5d 15 ff eb                                      bl #0x312b6c
0034d5f4  00 00 50 e3                                      cmp r0, #0
0034d5f8  bc ff ff 1a                                      bne #0x34d4f0
0034d5fc  cc 16 94 e5                                      ldr r1, [r4, #0x6cc]
0034d600  0c 07 94 e5                                      ldr r0, [r4, #0x70c]
0034d604  d8 05 ff eb                                      bl #0x30ed6c
0034d608  d0 16 94 e5                                      ldr r1, [r4, #0x6d0]
0034d60c  00 a0 a0 e1                                      mov sl, r0
0034d610  10 07 94 e5                                      ldr r0, [r4, #0x710]
0034d614  d4 05 ff eb                                      bl #0x30ed6c
0034d618  00 10 a0 e1                                      mov r1, r0
0034d61c  0a 00 a0 e1                                      mov r0, sl
0034d620  5f 05 ff eb                                      bl #0x30eba4
0034d624  d4 16 94 e5                                      ldr r1, [r4, #0x6d4]
0034d628  00 a0 a0 e1                                      mov sl, r0
0034d62c  14 07 94 e5                                      ldr r0, [r4, #0x714]
0034d630  cd 05 ff eb                                      bl #0x30ed6c
0034d634  00 10 a0 e1                                      mov r1, r0
0034d638  0a 00 a0 e1                                      mov r0, sl
0034d63c  58 05 ff eb                                      bl #0x30eba4
0034d640  fe 15 a0 e3                                      mov r1, #0x3f800000
0034d644  00 a0 a0 e1                                      mov sl, r0
0034d648  2a 03 ff eb                                      bl #0x30e2f8
0034d64c  00 00 50 e3                                      cmp r0, #0
0034d650  14 00 00 1a                                      bne #0x34d6a8
0034d654  bf 14 a0 e3                                      mov r1, #0xbf000000
0034d658  0a 00 a0 e1                                      mov r0, sl
0034d65c  02 15 81 e2                                      add r1, r1, #0x800000
0034d660  29 04 ff eb                                      bl #0x30e70c
0034d664  00 00 50 e3                                      cmp r0, #0
0034d668  06 00 00 1a                                      bne #0x34d688
0034d66c  0a 00 a0 e1                                      mov r0, sl
0034d670  59 03 ff eb                                      bl #0x30e3dc
0034d674  7c 19 0d e3                                      movw r1, #0xd97c
0034d678  a0 1e 43 e3                                      movt r1, #0x3ea0
0034d67c  1d 03 ff eb                                      bl #0x30e2f8
0034d680  00 00 50 e3                                      cmp r0, #0
0034d684  07 00 00 0a                                      beq #0x34d6a8
0034d688  06 00 9d e8                                      ldm sp, {r1, r2}
0034d68c  01 30 92 e7                                      ldr r3, [r2, r1]
0034d690  00 20 93 e5                                      ldr r2, [r3]
0034d694  0c 27 84 e5                                      str r2, [r4, #0x70c]
0034d698  04 20 93 e5                                      ldr r2, [r3, #4]
0034d69c  10 27 84 e5                                      str r2, [r4, #0x710]
0034d6a0  08 30 93 e5                                      ldr r3, [r3, #8]
0034d6a4  14 37 84 e5                                      str r3, [r4, #0x714]
0034d6a8  00 30 a0 e3                                      mov r3, #0
0034d6ac  3c 37 85 e5                                      str r3, [r5, #0x73c]
0034d6b0  8e ff ff ea                                      b #0x34d4f0
; mapping-symbol data/literal pool
0034d6b4  50 79 64 00 2c 3f 00 00                          .byte 0x50, 0x79, 0x64, 0x00, 0x2c, 0x3f, 0x00, 0x00
