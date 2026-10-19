; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003c0074, declared_size=4, range_size=4, mode=arm
; class-group: CSLiftingIdle
; alias: _ZN13CSLiftingIdleD1Ev
; demangled: CSLiftingIdle::~CSLiftingIdle()
; decoder-mode: arm
003c0074  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c06ec, declared_size=52, range_size=52, mode=arm
; class-group: CSLiftingIdle
; alias: _ZN13CSLiftingIdleD0Ev
; demangled: CSLiftingIdle::~CSLiftingIdle()
; decoder-mode: arm
003c06ec  24 30 9f e5                                      ldr r3, [pc, #0x24]
003c06f0  24 20 9f e5                                      ldr r2, [pc, #0x24]
003c06f4  10 40 2d e9                                      push {r4, lr}
003c06f8  03 30 8f e0                                      add r3, pc, r3
003c06fc  02 20 93 e7                                      ldr r2, [r3, r2]
003c0700  00 40 a0 e1                                      mov r4, r0
003c0704  08 20 82 e2                                      add r2, r2, #8
003c0708  00 20 80 e5                                      str r2, [r0]
003c070c  4b 3f fd eb                                      bl #0x310440
003c0710  04 00 a0 e1                                      mov r0, r4
003c0714  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003c0718  98 43 5d 00 08 2a 00 00                          .byte 0x98, 0x43, 0x5d, 0x00, 0x08, 0x2a, 0x00, 0x00

; FUNCTION 0x003c0e90, declared_size=16, range_size=16, mode=arm
; class-group: CSLiftingIdle
; alias: _ZN13CSLiftingIdle8OnUpdateEiP9CharacterP16CharStateMachine
; demangled: CSLiftingIdle::OnUpdate(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c0e90  01 00 a0 e1                                      mov r0, r1
003c0e94  02 10 a0 e1                                      mov r1, r2
003c0e98  03 20 a0 e1                                      mov r2, r3
003c0e9c  35 ff ff ea                                      b #0x3c0b78

; FUNCTION 0x003c3140, declared_size=268, range_size=268, mode=arm
; class-group: CSLiftingIdle
; alias: _ZN13CSLiftingIdle7OnFocusEiP9CharacterP16CharStateMachineiiPv
; demangled: CSLiftingIdle::OnFocus(int, Character*, CharStateMachine*, int, int, void*)
; decoder-mode: arm
003c3140  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003c3144  e0 40 9f e5                                      ldr r4, [pc, #0xe0]
003c3148  e0 70 9f e5                                      ldr r7, [pc, #0xe0]
003c314c  e0 10 9f e5                                      ldr r1, [pc, #0xe0]
003c3150  04 40 8f e0                                      add r4, pc, r4
003c3154  07 30 94 e7                                      ldr r3, [r4, r7]
003c3158  01 80 94 e7                                      ldr r8, [r4, r1]
003c315c  20 d0 4d e2                                      sub sp, sp, #0x20
003c3160  00 30 93 e5                                      ldr r3, [r3]
003c3164  08 00 a0 e1                                      mov r0, r8
003c3168  02 50 a0 e1                                      mov r5, r2
003c316c  1c 30 8d e5                                      str r3, [sp, #0x1c]
003c3170  c4 d1 fd eb                                      bl #0x337888
003c3174  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
003c3178  04 60 8d e2                                      add r6, sp, #4
003c317c  0d 20 a0 e1                                      mov r2, sp
003c3180  06 00 a0 e1                                      mov r0, r6
003c3184  01 10 8f e0                                      add r1, pc, r1
003c3188  d7 43 fd eb                                      bl #0x3140ec
003c318c  06 10 a0 e1                                      mov r1, r6
003c3190  08 00 a0 e1                                      mov r0, r8
003c3194  3b d2 fd eb                                      bl #0x337a88
003c3198  06 00 a0 e1                                      mov r0, r6
003c319c  2c 54 fd eb                                      bl #0x318254
003c31a0  8e 3d a0 e3                                      mov r3, #0x2380
003c31a4  20 35 85 e5                                      str r3, [r5, #0x520]
003c31a8  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
003c31ac  05 00 a0 e1                                      mov r0, r5
003c31b0  49 6e 85 e2                                      add r6, r5, #0x490
003c31b4  03 30 94 e7                                      ldr r3, [r4, r3]
003c31b8  0c 60 86 e2                                      add r6, r6, #0xc
003c31bc  00 80 93 e5                                      ldr r8, [r3]
003c31c0  18 80 ff eb                                      bl #0x3a3228
003c31c4  74 30 9f e5                                      ldr r3, [pc, #0x74]
003c31c8  74 10 9f e5                                      ldr r1, [pc, #0x74]
003c31cc  03 20 94 e7                                      ldr r2, [r4, r3]
003c31d0  a0 30 a0 e3                                      mov r3, #0xa0
003c31d4  93 80 23 e0                                      mla r3, r3, r0, r8
003c31d8  2c 00 92 e5                                      ldr r0, [r2, #0x2c]
003c31dc  64 20 9f e5                                      ldr r2, [pc, #0x64]
003c31e0  01 10 8f e0                                      add r1, pc, r1
003c31e4  50 80 93 e5                                      ldr r8, [r3, #0x50]
003c31e8  02 20 8f e0                                      add r2, pc, r2
003c31ec  7a 06 04 eb                                      bl #0x4c4bdc
003c31f0  01 04 10 e2                                      ands r0, r0, #0x1000000
003c31f4  01 00 00 0a                                      beq #0x3c3200
003c31f8  05 00 a0 e1                                      mov r0, r5
003c31fc  77 88 ff eb                                      bl #0x3a53e0
003c3200  08 10 80 e0                                      add r1, r0, r8
003c3204  06 00 a0 e1                                      mov r0, r6
003c3208  a8 1e 00 eb                                      bl #0x3cacb0
003c320c  07 30 94 e7                                      ldr r3, [r4, r7]
003c3210  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003c3214  00 30 93 e5                                      ldr r3, [r3]
003c3218  03 00 52 e1                                      cmp r2, r3
003c321c  01 00 00 1a                                      bne #0x3c3228
003c3220  20 d0 8d e2                                      add sp, sp, #0x20
003c3224  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003c3228  38 2c fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c322c  40 19 5d 00 ac 40 00 00 84 08 00 00 cc 1c 50 00  .byte 0x40, 0x19, 0x5d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xcc, 0x1c, 0x50, 0x00
003c323c  44 48 00 00 f4 37 00 00 d8 19 50 00 e0 19 50 00  .byte 0x44, 0x48, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xd8, 0x19, 0x50, 0x00, 0xe0, 0x19, 0x50, 0x00

; FUNCTION 0x003c50b4, declared_size=228, range_size=228, mode=arm
; class-group: CSLiftingIdle
; alias: _ZN13CSLiftingIdle6OnBlurEiP9CharacterP16CharStateMachinei
; demangled: CSLiftingIdle::OnBlur(int, Character*, CharStateMachine*, int)
; decoder-mode: arm
003c50b4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003c50b8  c8 40 9f e5                                      ldr r4, [pc, #0xc8]
003c50bc  c8 60 9f e5                                      ldr r6, [pc, #0xc8]
003c50c0  c8 10 9f e5                                      ldr r1, [pc, #0xc8]
003c50c4  04 40 8f e0                                      add r4, pc, r4
003c50c8  06 30 94 e7                                      ldr r3, [r4, r6]
003c50cc  01 70 94 e7                                      ldr r7, [r4, r1]
003c50d0  24 d0 4d e2                                      sub sp, sp, #0x24
003c50d4  00 30 93 e5                                      ldr r3, [r3]
003c50d8  07 00 a0 e1                                      mov r0, r7
003c50dc  02 a0 a0 e1                                      mov sl, r2
003c50e0  1c 30 8d e5                                      str r3, [sp, #0x1c]
003c50e4  40 80 9d e5                                      ldr r8, [sp, #0x40]
003c50e8  e6 c9 fd eb                                      bl #0x337888
003c50ec  a0 10 9f e5                                      ldr r1, [pc, #0xa0]
003c50f0  04 50 8d e2                                      add r5, sp, #4
003c50f4  0d 20 a0 e1                                      mov r2, sp
003c50f8  01 10 8f e0                                      add r1, pc, r1
003c50fc  05 00 a0 e1                                      mov r0, r5
003c5100  f9 3b fd eb                                      bl #0x3140ec
003c5104  05 10 a0 e1                                      mov r1, r5
003c5108  07 00 a0 e1                                      mov r0, r7
003c510c  5d ca fd eb                                      bl #0x337a88
003c5110  05 00 a0 e1                                      mov r0, r5
003c5114  4e 4c fd eb                                      bl #0x318254
003c5118  13 00 58 e3                                      cmp r8, #0x13
003c511c  0a 00 00 8a                                      bhi #0x3c514c
003c5120  01 30 a0 e3                                      mov r3, #1
003c5124  13 88 a0 e1                                      lsl r8, r3, r8
003c5128  c2 0a 18 e3                                      tst r8, #0xc2000
003c512c  06 00 00 0a                                      beq #0x3c514c
003c5130  06 30 94 e7                                      ldr r3, [r4, r6]
003c5134  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003c5138  00 30 93 e5                                      ldr r3, [r3]
003c513c  03 00 52 e1                                      cmp r2, r3
003c5140  0f 00 00 1a                                      bne #0x3c5184
003c5144  24 d0 8d e2                                      add sp, sp, #0x24
003c5148  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003c514c  4c 05 9a e5                                      ldr r0, [sl, #0x54c]
003c5150  00 00 50 e3                                      cmp r0, #0
003c5154  f5 ff ff 0a                                      beq #0x3c5130
003c5158  f4 30 90 e5                                      ldr r3, [r0, #0xf4]
003c515c  06 00 53 e3                                      cmp r3, #6
003c5160  02 00 00 0a                                      beq #0x3c5170
003c5164  00 30 a0 e3                                      mov r3, #0
003c5168  4c 35 8a e5                                      str r3, [sl, #0x54c]
003c516c  ef ff ff ea                                      b #0x3c5130
003c5170  90 33 90 e5                                      ldr r3, [r0, #0x390]
003c5174  0a 00 53 e1                                      cmp r3, sl
003c5178  f9 ff ff 1a                                      bne #0x3c5164
003c517c  09 a5 00 eb                                      bl #0x3ee5a8
003c5180  f7 ff ff ea                                      b #0x3c5164
003c5184  61 24 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c5188  cc f9 5c 00 ac 40 00 00 84 08 00 00 58 fd 4f 00  .byte 0xcc, 0xf9, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x58, 0xfd, 0x4f, 0x00

; FUNCTION 0x003c6608, declared_size=52, range_size=52, mode=arm
; class-group: CSLiftingIdle
; alias: _ZN13CSLiftingIdle7OnEventEiP9CharacterP16CharStateMachineiPv
; demangled: CSLiftingIdle::OnEvent(int, Character*, CharStateMachine*, int, void*)
; decoder-mode: arm
003c6608  00 30 9d e5                                      ldr r3, [sp]
003c660c  06 00 53 e3                                      cmp r3, #6
003c6610  1e ff 2f 11                                      bxne lr
003c6614  4c 35 92 e5                                      ldr r3, [r2, #0x54c]
003c6618  00 00 53 e3                                      cmp r3, #0
003c661c  1e ff 2f 01                                      bxeq lr
003c6620  4f 0e 82 e2                                      add r0, r2, #0x4f0
003c6624  01 c0 a0 e3                                      mov ip, #1
003c6628  0c 00 80 e2                                      add r0, r0, #0xc
003c662c  05 10 a0 e3                                      mov r1, #5
003c6630  00 20 a0 e3                                      mov r2, #0
003c6634  00 c0 8d e5                                      str ip, [sp]
003c6638  9b ff ff ea                                      b #0x3c64ac

; FUNCTION 0x003c8d5c, declared_size=388, range_size=388, mode=arm
; class-group: CSLiftingIdle
; alias: _ZN13CSLiftingIdle6OnInitEiP9CharacterP16CharStateMachine
; demangled: CSLiftingIdle::OnInit(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c8d5c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003c8d60  4f 5e 82 e2                                      add r5, r2, #0x4f0
003c8d64  0c 50 85 e2                                      add r5, r5, #0xc
003c8d68  54 d0 4d e2                                      sub sp, sp, #0x54
003c8d6c  00 40 a0 e3                                      mov r4, #0
003c8d70  01 60 a0 e1                                      mov r6, r1
003c8d74  05 00 a0 e1                                      mov r0, r5
003c8d78  23 20 a0 e3                                      mov r2, #0x23
003c8d7c  12 30 a0 e3                                      mov r3, #0x12
003c8d80  48 40 8d e5                                      str r4, [sp, #0x48]
003c8d84  4c 40 8d e5                                      str r4, [sp, #0x4c]
003c8d88  00 40 8d e5                                      str r4, [sp]
003c8d8c  04 40 8d e5                                      str r4, [sp, #4]
003c8d90  60 fb ff eb                                      bl #0x3c7b18
003c8d94  05 00 a0 e1                                      mov r0, r5
003c8d98  06 10 a0 e1                                      mov r1, r6
003c8d9c  22 20 a0 e3                                      mov r2, #0x22
003c8da0  12 30 a0 e3                                      mov r3, #0x12
003c8da4  40 40 8d e5                                      str r4, [sp, #0x40]
003c8da8  44 40 8d e5                                      str r4, [sp, #0x44]
003c8dac  00 40 8d e5                                      str r4, [sp]
003c8db0  04 40 8d e5                                      str r4, [sp, #4]
003c8db4  18 71 9f e5                                      ldr r7, [pc, #0x118]
003c8db8  56 fb ff eb                                      bl #0x3c7b18
003c8dbc  05 00 a0 e1                                      mov r0, r5
003c8dc0  06 10 a0 e1                                      mov r1, r6
003c8dc4  58 23 0c e3                                      movw r2, #0xc358
003c8dc8  0c 30 a0 e3                                      mov r3, #0xc
003c8dcc  38 40 8d e5                                      str r4, [sp, #0x38]
003c8dd0  3c 40 8d e5                                      str r4, [sp, #0x3c]
003c8dd4  00 40 8d e5                                      str r4, [sp]
003c8dd8  04 40 8d e5                                      str r4, [sp, #4]
003c8ddc  4d fb ff eb                                      bl #0x3c7b18
003c8de0  f0 30 9f e5                                      ldr r3, [pc, #0xf0]
003c8de4  07 70 8f e0                                      add r7, pc, r7
003c8de8  05 00 a0 e1                                      mov r0, r5
003c8dec  03 c0 97 e7                                      ldr ip, [r7, r3]
003c8df0  06 10 a0 e1                                      mov r1, r6
003c8df4  5a 23 0c e3                                      movw r2, #0xc35a
003c8df8  0b 30 a0 e3                                      mov r3, #0xb
003c8dfc  00 c0 8d e5                                      str ip, [sp]
003c8e00  30 c0 8d e5                                      str ip, [sp, #0x30]
003c8e04  34 40 8d e5                                      str r4, [sp, #0x34]
003c8e08  04 40 8d e5                                      str r4, [sp, #4]
003c8e0c  41 fb ff eb                                      bl #0x3c7b18
003c8e10  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
003c8e14  05 00 a0 e1                                      mov r0, r5
003c8e18  06 10 a0 e1                                      mov r1, r6
003c8e1c  03 70 97 e7                                      ldr r7, [r7, r3]
003c8e20  5b 23 0c e3                                      movw r2, #0xc35b
003c8e24  0a 30 a0 e3                                      mov r3, #0xa
003c8e28  28 70 8d e5                                      str r7, [sp, #0x28]
003c8e2c  2c 40 8d e5                                      str r4, [sp, #0x2c]
003c8e30  00 70 8d e5                                      str r7, [sp]
003c8e34  04 40 8d e5                                      str r4, [sp, #4]
003c8e38  36 fb ff eb                                      bl #0x3c7b18
003c8e3c  05 00 a0 e1                                      mov r0, r5
003c8e40  06 10 a0 e1                                      mov r1, r6
003c8e44  5c 23 0c e3                                      movw r2, #0xc35c
003c8e48  09 30 a0 e3                                      mov r3, #9
003c8e4c  20 70 8d e5                                      str r7, [sp, #0x20]
003c8e50  24 40 8d e5                                      str r4, [sp, #0x24]
003c8e54  00 70 8d e5                                      str r7, [sp]
003c8e58  04 40 8d e5                                      str r4, [sp, #4]
003c8e5c  2d fb ff eb                                      bl #0x3c7b18
003c8e60  05 00 a0 e1                                      mov r0, r5
003c8e64  06 10 a0 e1                                      mov r1, r6
003c8e68  5d 23 0c e3                                      movw r2, #0xc35d
003c8e6c  08 30 a0 e3                                      mov r3, #8
003c8e70  00 70 8d e5                                      str r7, [sp]
003c8e74  18 70 8d e5                                      str r7, [sp, #0x18]
003c8e78  1c 40 8d e5                                      str r4, [sp, #0x1c]
003c8e7c  04 40 8d e5                                      str r4, [sp, #4]
003c8e80  24 fb ff eb                                      bl #0x3c7b18
003c8e84  05 00 a0 e1                                      mov r0, r5
003c8e88  06 10 a0 e1                                      mov r1, r6
003c8e8c  51 23 0c e3                                      movw r2, #0xc351
003c8e90  13 30 a0 e3                                      mov r3, #0x13
003c8e94  10 40 8d e5                                      str r4, [sp, #0x10]
003c8e98  14 40 8d e5                                      str r4, [sp, #0x14]
003c8e9c  00 40 8d e5                                      str r4, [sp]
003c8ea0  04 40 8d e5                                      str r4, [sp, #4]
003c8ea4  1b fb ff eb                                      bl #0x3c7b18
003c8ea8  05 00 a0 e1                                      mov r0, r5
003c8eac  06 10 a0 e1                                      mov r1, r6
003c8eb0  52 23 0c e3                                      movw r2, #0xc352
003c8eb4  12 30 a0 e3                                      mov r3, #0x12
003c8eb8  04 40 8d e5                                      str r4, [sp, #4]
003c8ebc  08 40 8d e5                                      str r4, [sp, #8]
003c8ec0  0c 40 8d e5                                      str r4, [sp, #0xc]
003c8ec4  00 40 8d e5                                      str r4, [sp]
003c8ec8  12 fb ff eb                                      bl #0x3c7b18
003c8ecc  54 d0 8d e2                                      add sp, sp, #0x54
003c8ed0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
003c8ed4  ac bc 5c 00 84 2e 00 00 cc 34 00 00              .byte 0xac, 0xbc, 0x5c, 0x00, 0x84, 0x2e, 0x00, 0x00, 0xcc, 0x34, 0x00, 0x00
