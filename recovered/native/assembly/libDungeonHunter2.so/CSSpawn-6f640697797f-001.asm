; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003bffec, declared_size=4, range_size=4, mode=arm
; class-group: CSSpawn
; alias: _ZN7CSSpawnD1Ev
; demangled: CSSpawn::~CSSpawn()
; decoder-mode: arm
003bffec  1e ff 2f e1                                      bx lr

; FUNCTION 0x003bfff0, declared_size=4, range_size=4, mode=arm
; class-group: CSSpawn
; alias: _ZN7CSSpawn8OnUpdateEiP9CharacterP16CharStateMachine
; demangled: CSSpawn::OnUpdate(int, Character*, CharStateMachine*)
; decoder-mode: arm
003bfff0  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c0a60, declared_size=52, range_size=52, mode=arm
; class-group: CSSpawn
; alias: _ZN7CSSpawnD0Ev
; demangled: CSSpawn::~CSSpawn()
; decoder-mode: arm
003c0a60  24 30 9f e5                                      ldr r3, [pc, #0x24]
003c0a64  24 20 9f e5                                      ldr r2, [pc, #0x24]
003c0a68  10 40 2d e9                                      push {r4, lr}
003c0a6c  03 30 8f e0                                      add r3, pc, r3
003c0a70  02 20 93 e7                                      ldr r2, [r3, r2]
003c0a74  00 40 a0 e1                                      mov r4, r0
003c0a78  08 20 82 e2                                      add r2, r2, #8
003c0a7c  00 20 80 e5                                      str r2, [r0]
003c0a80  6e 3e fd eb                                      bl #0x310440
003c0a84  04 00 a0 e1                                      mov r0, r4
003c0a88  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003c0a8c  24 40 5d 00 08 2a 00 00                          .byte 0x24, 0x40, 0x5d, 0x00, 0x08, 0x2a, 0x00, 0x00

; FUNCTION 0x003c0b04, declared_size=76, range_size=76, mode=arm
; class-group: CSSpawn
; alias: _ZN7CSSpawn7OnEventEiP9CharacterP16CharStateMachineiPv
; demangled: CSSpawn::OnEvent(int, Character*, CharStateMachine*, int, void*)
; decoder-mode: arm
003c0b04  10 40 2d e9                                      push {r4, lr}
003c0b08  08 30 9d e5                                      ldr r3, [sp, #8]
003c0b0c  02 40 a0 e1                                      mov r4, r2
003c0b10  0c 00 9d e5                                      ldr r0, [sp, #0xc]
003c0b14  28 00 53 e3                                      cmp r3, #0x28
003c0b18  00 00 00 0a                                      beq #0x3c0b20
003c0b1c  10 80 bd e8                                      pop {r4, pc}
003c0b20  24 10 9f e5                                      ldr r1, [pc, #0x24]
003c0b24  01 10 8f e0                                      add r1, pc, r1
003c0b28  fb 35 fd eb                                      bl #0x30e31c
003c0b2c  00 00 50 e3                                      cmp r0, #0
003c0b30  f9 ff ff 1a                                      bne #0x3c0b1c
003c0b34  20 35 94 e5                                      ldr r3, [r4, #0x520]
003c0b38  04 00 a0 e1                                      mov r0, r4
003c0b3c  02 3a 83 e3                                      orr r3, r3, #0x2000
003c0b40  20 35 84 e5                                      str r3, [r4, #0x520]
003c0b44  10 40 bd e8                                      pop {r4, lr}
003c0b48  4e cd ff ea                                      b #0x3b4088
; mapping-symbol data/literal pool
003c0b4c  44 40 50 00                                      .byte 0x44, 0x40, 0x50, 0x00

; FUNCTION 0x003c2f7c, declared_size=164, range_size=164, mode=arm
; class-group: CSSpawn
; alias: _ZN7CSSpawn6OnBlurEiP9CharacterP16CharStateMachinei
; demangled: CSSpawn::OnBlur(int, Character*, CharStateMachine*, int)
; decoder-mode: arm
003c2f7c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003c2f80  88 40 9f e5                                      ldr r4, [pc, #0x88]
003c2f84  88 60 9f e5                                      ldr r6, [pc, #0x88]
003c2f88  88 10 9f e5                                      ldr r1, [pc, #0x88]
003c2f8c  04 40 8f e0                                      add r4, pc, r4
003c2f90  06 30 94 e7                                      ldr r3, [r4, r6]
003c2f94  01 70 94 e7                                      ldr r7, [r4, r1]
003c2f98  20 d0 4d e2                                      sub sp, sp, #0x20
003c2f9c  00 30 93 e5                                      ldr r3, [r3]
003c2fa0  07 00 a0 e1                                      mov r0, r7
003c2fa4  02 80 a0 e1                                      mov r8, r2
003c2fa8  1c 30 8d e5                                      str r3, [sp, #0x1c]
003c2fac  35 d2 fd eb                                      bl #0x337888
003c2fb0  64 10 9f e5                                      ldr r1, [pc, #0x64]
003c2fb4  04 50 8d e2                                      add r5, sp, #4
003c2fb8  0d 20 a0 e1                                      mov r2, sp
003c2fbc  01 10 8f e0                                      add r1, pc, r1
003c2fc0  05 00 a0 e1                                      mov r0, r5
003c2fc4  48 44 fd eb                                      bl #0x3140ec
003c2fc8  05 10 a0 e1                                      mov r1, r5
003c2fcc  07 00 a0 e1                                      mov r0, r7
003c2fd0  ac d2 fd eb                                      bl #0x337a88
003c2fd4  05 00 a0 e1                                      mov r0, r5
003c2fd8  9d 54 fd eb                                      bl #0x318254
003c2fdc  20 35 98 e5                                      ldr r3, [r8, #0x520]
003c2fe0  02 0a 13 e3                                      tst r3, #0x2000
003c2fe4  01 00 00 1a                                      bne #0x3c2ff0
003c2fe8  08 00 a0 e1                                      mov r0, r8
003c2fec  25 c4 ff eb                                      bl #0x3b4088
003c2ff0  06 30 94 e7                                      ldr r3, [r4, r6]
003c2ff4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003c2ff8  00 30 93 e5                                      ldr r3, [r3]
003c2ffc  03 00 52 e1                                      cmp r2, r3
003c3000  01 00 00 1a                                      bne #0x3c300c
003c3004  20 d0 8d e2                                      add sp, sp, #0x20
003c3008  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003c300c  bf 2c fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c3010  04 1b 5d 00 ac 40 00 00 84 08 00 00 94 1e 50 00  .byte 0x04, 0x1b, 0x5d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x94, 0x1e, 0x50, 0x00

; FUNCTION 0x003c35ec, declared_size=424, range_size=424, mode=arm
; class-group: CSSpawn
; alias: _ZN7CSSpawn7OnFocusEiP9CharacterP16CharStateMachineiiPv
; demangled: CSSpawn::OnFocus(int, Character*, CharStateMachine*, int, int, void*)
; decoder-mode: arm
003c35ec  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003c35f0  78 51 9f e5                                      ldr r5, [pc, #0x178]
003c35f4  78 81 9f e5                                      ldr r8, [pc, #0x178]
003c35f8  78 11 9f e5                                      ldr r1, [pc, #0x178]
003c35fc  05 50 8f e0                                      add r5, pc, r5
003c3600  08 30 95 e7                                      ldr r3, [r5, r8]
003c3604  01 60 95 e7                                      ldr r6, [r5, r1]
003c3608  44 d0 4d e2                                      sub sp, sp, #0x44
003c360c  00 30 93 e5                                      ldr r3, [r3]
003c3610  06 00 a0 e1                                      mov r0, r6
003c3614  02 40 a0 e1                                      mov r4, r2
003c3618  3c 30 8d e5                                      str r3, [sp, #0x3c]
003c361c  99 d0 fd eb                                      bl #0x337888
003c3620  54 11 9f e5                                      ldr r1, [pc, #0x154]
003c3624  24 70 8d e2                                      add r7, sp, #0x24
003c3628  08 20 8d e2                                      add r2, sp, #8
003c362c  01 10 8f e0                                      add r1, pc, r1
003c3630  07 00 a0 e1                                      mov r0, r7
003c3634  ac 42 fd eb                                      bl #0x3140ec
003c3638  07 10 a0 e1                                      mov r1, r7
003c363c  06 00 a0 e1                                      mov r0, r6
003c3640  10 d1 fd eb                                      bl #0x337a88
003c3644  07 00 a0 e1                                      mov r0, r7
003c3648  01 53 fd eb                                      bl #0x318254
003c364c  06 00 a0 e1                                      mov r0, r6
003c3650  8c d0 fd eb                                      bl #0x337888
003c3654  24 11 9f e5                                      ldr r1, [pc, #0x124]
003c3658  0c 70 8d e2                                      add r7, sp, #0xc
003c365c  04 20 8d e2                                      add r2, sp, #4
003c3660  07 00 a0 e1                                      mov r0, r7
003c3664  01 10 8f e0                                      add r1, pc, r1
003c3668  9f 42 fd eb                                      bl #0x3140ec
003c366c  07 10 a0 e1                                      mov r1, r7
003c3670  06 00 a0 e1                                      mov r0, r6
003c3674  03 d1 fd eb                                      bl #0x337a88
003c3678  07 00 a0 e1                                      mov r0, r7
003c367c  f4 52 fd eb                                      bl #0x318254
003c3680  60 30 9d e5                                      ldr r3, [sp, #0x60]
003c3684  04 00 a0 e1                                      mov r0, r4
003c3688  49 6e 84 e2                                      add r6, r4, #0x490
003c368c  11 00 53 e3                                      cmp r3, #0x11
003c3690  41 32 00 e3                                      movw r3, #0x241
003c3694  20 75 94 05                                      ldreq r7, [r4, #0x520]
003c3698  20 35 84 e5                                      str r3, [r4, #0x520]
003c369c  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
003c36a0  00 70 a0 13                                      movne r7, #0
003c36a4  d7 76 e0 07                                      ubfxeq r7, r7, #0xd, #1
003c36a8  03 30 95 e7                                      ldr r3, [r5, r3]
003c36ac  0c 60 86 e2                                      add r6, r6, #0xc
003c36b0  00 a0 93 e5                                      ldr sl, [r3]
003c36b4  db 7e ff eb                                      bl #0x3a3228
003c36b8  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
003c36bc  c8 10 9f e5                                      ldr r1, [pc, #0xc8]
003c36c0  03 20 95 e7                                      ldr r2, [r5, r3]
003c36c4  a0 30 a0 e3                                      mov r3, #0xa0
003c36c8  93 a0 23 e0                                      mla r3, r3, r0, sl
003c36cc  2c 00 92 e5                                      ldr r0, [r2, #0x2c]
003c36d0  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
003c36d4  01 10 8f e0                                      add r1, pc, r1
003c36d8  80 a0 93 e5                                      ldr sl, [r3, #0x80]
003c36dc  02 20 8f e0                                      add r2, pc, r2
003c36e0  3d 05 04 eb                                      bl #0x4c4bdc
003c36e4  01 00 10 e2                                      ands r0, r0, #1
003c36e8  1c 00 00 1a                                      bne #0x3c3760
003c36ec  0a 10 80 e0                                      add r1, r0, sl
003c36f0  06 00 a0 e1                                      mov r0, r6
003c36f4  6d 1d 00 eb                                      bl #0x3cacb0
003c36f8  f2 6f 84 e2                                      add r6, r4, #0x3c8
003c36fc  00 10 a0 e3                                      mov r1, #0
003c3700  01 20 a0 e1                                      mov r2, r1
003c3704  06 00 a0 e1                                      mov r0, r6
003c3708  60 4c 00 eb                                      bl #0x3d6890
003c370c  06 00 a0 e1                                      mov r0, r6
003c3710  ab 44 00 eb                                      bl #0x3d49c4
003c3714  04 00 a0 e1                                      mov r0, r4
003c3718  e6 e3 ff eb                                      bl #0x3bc6b8
003c371c  00 00 57 e3                                      cmp r7, #0
003c3720  20 35 94 15                                      ldrne r3, [r4, #0x520]
003c3724  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
003c3728  02 3a 83 13                                      orrne r3, r3, #0x2000
003c372c  20 35 84 15                                      strne r3, [r4, #0x520]
003c3730  00 00 50 e3                                      cmp r0, #0
003c3734  02 00 00 0a                                      beq #0x3c3744
003c3738  51 3d a0 e3                                      mov r3, #0x1440
003c373c  03 10 94 e7                                      ldr r1, [r4, r3]
003c3740  67 b5 02 eb                                      bl #0x470ce4
003c3744  08 30 95 e7                                      ldr r3, [r5, r8]
003c3748  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
003c374c  00 30 93 e5                                      ldr r3, [r3]
003c3750  03 00 52 e1                                      cmp r2, r3
003c3754  04 00 00 1a                                      bne #0x3c376c
003c3758  44 d0 8d e2                                      add sp, sp, #0x44
003c375c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003c3760  04 00 a0 e1                                      mov r0, r4
003c3764  1d 87 ff eb                                      bl #0x3a53e0
003c3768  df ff ff ea                                      b #0x3c36ec
003c376c  e7 2a fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c3770  94 14 5d 00 ac 40 00 00 84 08 00 00 24 18 50 00  .byte 0x94, 0x14, 0x5d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x24, 0x18, 0x50, 0x00
003c3780  34 18 50 00 44 48 00 00 f4 37 00 00 e4 14 50 00  .byte 0x34, 0x18, 0x50, 0x00, 0x44, 0x48, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xe4, 0x14, 0x50, 0x00
003c3790  ec 14 50 00                                      .byte 0xec, 0x14, 0x50, 0x00

; FUNCTION 0x003c7d0c, declared_size=240, range_size=240, mode=arm
; class-group: CSSpawn
; alias: _ZN7CSSpawn6OnInitEiP9CharacterP16CharStateMachine
; demangled: CSSpawn::OnInit(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c7d0c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003c7d10  4f 5e 82 e2                                      add r5, r2, #0x4f0
003c7d14  0c 50 85 e2                                      add r5, r5, #0xc
003c7d18  34 d0 4d e2                                      sub sp, sp, #0x34
003c7d1c  00 40 a0 e3                                      mov r4, #0
003c7d20  01 70 a0 e1                                      mov r7, r1
003c7d24  05 00 a0 e1                                      mov r0, r5
003c7d28  22 20 a0 e3                                      mov r2, #0x22
003c7d2c  03 30 a0 e3                                      mov r3, #3
003c7d30  28 40 8d e5                                      str r4, [sp, #0x28]
003c7d34  2c 40 8d e5                                      str r4, [sp, #0x2c]
003c7d38  00 40 8d e5                                      str r4, [sp]
003c7d3c  04 40 8d e5                                      str r4, [sp, #4]
003c7d40  a8 60 9f e5                                      ldr r6, [pc, #0xa8]
003c7d44  73 ff ff eb                                      bl #0x3c7b18
003c7d48  05 00 a0 e1                                      mov r0, r5
003c7d4c  07 10 a0 e1                                      mov r1, r7
003c7d50  58 23 0c e3                                      movw r2, #0xc358
003c7d54  0c 30 a0 e3                                      mov r3, #0xc
003c7d58  20 40 8d e5                                      str r4, [sp, #0x20]
003c7d5c  24 40 8d e5                                      str r4, [sp, #0x24]
003c7d60  00 40 8d e5                                      str r4, [sp]
003c7d64  04 40 8d e5                                      str r4, [sp, #4]
003c7d68  6a ff ff eb                                      bl #0x3c7b18
003c7d6c  80 30 9f e5                                      ldr r3, [pc, #0x80]
003c7d70  06 60 8f e0                                      add r6, pc, r6
003c7d74  05 00 a0 e1                                      mov r0, r5
003c7d78  03 c0 96 e7                                      ldr ip, [r6, r3]
003c7d7c  07 10 a0 e1                                      mov r1, r7
003c7d80  5a 23 0c e3                                      movw r2, #0xc35a
003c7d84  0b 30 a0 e3                                      mov r3, #0xb
003c7d88  00 c0 8d e5                                      str ip, [sp]
003c7d8c  18 c0 8d e5                                      str ip, [sp, #0x18]
003c7d90  1c 40 8d e5                                      str r4, [sp, #0x1c]
003c7d94  04 40 8d e5                                      str r4, [sp, #4]
003c7d98  5e ff ff eb                                      bl #0x3c7b18
003c7d9c  54 30 9f e5                                      ldr r3, [pc, #0x54]
003c7da0  05 00 a0 e1                                      mov r0, r5
003c7da4  07 10 a0 e1                                      mov r1, r7
003c7da8  03 60 96 e7                                      ldr r6, [r6, r3]
003c7dac  5b 23 0c e3                                      movw r2, #0xc35b
003c7db0  0a 30 a0 e3                                      mov r3, #0xa
003c7db4  10 60 8d e5                                      str r6, [sp, #0x10]
003c7db8  14 40 8d e5                                      str r4, [sp, #0x14]
003c7dbc  00 60 8d e5                                      str r6, [sp]
003c7dc0  04 40 8d e5                                      str r4, [sp, #4]
003c7dc4  53 ff ff eb                                      bl #0x3c7b18
003c7dc8  05 00 a0 e1                                      mov r0, r5
003c7dcc  07 10 a0 e1                                      mov r1, r7
003c7dd0  5c 23 0c e3                                      movw r2, #0xc35c
003c7dd4  09 30 a0 e3                                      mov r3, #9
003c7dd8  00 60 8d e5                                      str r6, [sp]
003c7ddc  50 00 8d e9                                      stmib sp, {r4, r6}
003c7de0  0c 40 8d e5                                      str r4, [sp, #0xc]
003c7de4  4b ff ff eb                                      bl #0x3c7b18
003c7de8  34 d0 8d e2                                      add sp, sp, #0x34
003c7dec  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
003c7df0  20 cd 5c 00 84 2e 00 00 cc 34 00 00              .byte 0x20, 0xcd, 0x5c, 0x00, 0x84, 0x2e, 0x00, 0x00, 0xcc, 0x34, 0x00, 0x00
