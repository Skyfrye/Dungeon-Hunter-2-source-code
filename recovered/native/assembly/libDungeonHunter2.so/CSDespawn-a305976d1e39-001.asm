; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003bfff4, declared_size=4, range_size=4, mode=arm
; class-group: CSDespawn
; alias: _ZN9CSDespawnD1Ev
; demangled: CSDespawn::~CSDespawn()
; decoder-mode: arm
003bfff4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003bfff8, declared_size=4, range_size=4, mode=arm
; class-group: CSDespawn
; alias: _ZN9CSDespawn8OnUpdateEiP9CharacterP16CharStateMachine
; demangled: CSDespawn::OnUpdate(int, Character*, CharStateMachine*)
; decoder-mode: arm
003bfff8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003bfffc, declared_size=4, range_size=4, mode=arm
; class-group: CSDespawn
; alias: _ZN9CSDespawn7OnEventEiP9CharacterP16CharStateMachineiPv
; demangled: CSDespawn::OnEvent(int, Character*, CharStateMachine*, int, void*)
; decoder-mode: arm
003bfffc  1e ff 2f e1                                      bx lr

; FUNCTION 0x003c0a2c, declared_size=52, range_size=52, mode=arm
; class-group: CSDespawn
; alias: _ZN9CSDespawnD0Ev
; demangled: CSDespawn::~CSDespawn()
; decoder-mode: arm
003c0a2c  24 30 9f e5                                      ldr r3, [pc, #0x24]
003c0a30  24 20 9f e5                                      ldr r2, [pc, #0x24]
003c0a34  10 40 2d e9                                      push {r4, lr}
003c0a38  03 30 8f e0                                      add r3, pc, r3
003c0a3c  02 20 93 e7                                      ldr r2, [r3, r2]
003c0a40  00 40 a0 e1                                      mov r4, r0
003c0a44  08 20 82 e2                                      add r2, r2, #8
003c0a48  00 20 80 e5                                      str r2, [r0]
003c0a4c  7b 3e fd eb                                      bl #0x310440
003c0a50  04 00 a0 e1                                      mov r0, r4
003c0a54  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003c0a58  58 40 5d 00 08 2a 00 00                          .byte 0x58, 0x40, 0x5d, 0x00, 0x08, 0x2a, 0x00, 0x00

; FUNCTION 0x003c32fc, declared_size=236, range_size=236, mode=arm
; class-group: CSDespawn
; alias: _ZN9CSDespawn7OnFocusEiP9CharacterP16CharStateMachineiiPv
; demangled: CSDespawn::OnFocus(int, Character*, CharStateMachine*, int, int, void*)
; decoder-mode: arm
003c32fc  d0 30 9f e5                                      ldr r3, [pc, #0xd0]
003c3300  d0 10 9f e5                                      ldr r1, [pc, #0xd0]
003c3304  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003c3308  03 30 8f e0                                      add r3, pc, r3
003c330c  01 70 93 e7                                      ldr r7, [r3, r1]
003c3310  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
003c3314  02 40 a0 e1                                      mov r4, r2
003c3318  00 20 97 e5                                      ldr r2, [r7]
003c331c  01 50 93 e7                                      ldr r5, [r3, r1]
003c3320  44 d0 4d e2                                      sub sp, sp, #0x44
003c3324  3c 20 8d e5                                      str r2, [sp, #0x3c]
003c3328  05 00 a0 e1                                      mov r0, r5
003c332c  55 d1 fd eb                                      bl #0x337888
003c3330  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
003c3334  24 60 8d e2                                      add r6, sp, #0x24
003c3338  08 20 8d e2                                      add r2, sp, #8
003c333c  06 00 a0 e1                                      mov r0, r6
003c3340  01 10 8f e0                                      add r1, pc, r1
003c3344  68 43 fd eb                                      bl #0x3140ec
003c3348  06 10 a0 e1                                      mov r1, r6
003c334c  05 00 a0 e1                                      mov r0, r5
003c3350  cc d1 fd eb                                      bl #0x337a88
003c3354  06 00 a0 e1                                      mov r0, r6
003c3358  bd 53 fd eb                                      bl #0x318254
003c335c  05 00 a0 e1                                      mov r0, r5
003c3360  48 d1 fd eb                                      bl #0x337888
003c3364  78 10 9f e5                                      ldr r1, [pc, #0x78]
003c3368  0c 60 8d e2                                      add r6, sp, #0xc
003c336c  04 20 8d e2                                      add r2, sp, #4
003c3370  01 10 8f e0                                      add r1, pc, r1
003c3374  06 00 a0 e1                                      mov r0, r6
003c3378  5b 43 fd eb                                      bl #0x3140ec
003c337c  06 10 a0 e1                                      mov r1, r6
003c3380  05 00 a0 e1                                      mov r0, r5
003c3384  bf d1 fd eb                                      bl #0x337a88
003c3388  06 00 a0 e1                                      mov r0, r6
003c338c  b0 53 fd eb                                      bl #0x318254
003c3390  34 35 94 e5                                      ldr r3, [r4, #0x534]
003c3394  02 2c a0 e3                                      mov r2, #0x200
003c3398  4f 0e 84 e2                                      add r0, r4, #0x4f0
003c339c  20 25 84 e5                                      str r2, [r4, #0x520]
003c33a0  24 35 84 e5                                      str r3, [r4, #0x524]
003c33a4  0c 00 80 e2                                      add r0, r0, #0xc
003c33a8  00 10 e0 e3                                      mvn r1, #0
003c33ac  e7 f5 ff eb                                      bl #0x3c0b50
003c33b0  04 00 a0 e1                                      mov r0, r4
003c33b4  bf e4 ff eb                                      bl #0x3bc6b8
003c33b8  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
003c33bc  00 30 97 e5                                      ldr r3, [r7]
003c33c0  03 00 52 e1                                      cmp r2, r3
003c33c4  01 00 00 1a                                      bne #0x3c33d0
003c33c8  44 d0 8d e2                                      add sp, sp, #0x44
003c33cc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003c33d0  ce 2b fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c33d4  88 17 5d 00 ac 40 00 00 84 08 00 00 10 1b 50 00  .byte 0x88, 0x17, 0x5d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x10, 0x1b, 0x50, 0x00
003c33e4  f8 1a 50 00                                      .byte 0xf8, 0x1a, 0x50, 0x00

; FUNCTION 0x003c3794, declared_size=416, range_size=416, mode=arm
; class-group: CSDespawn
; alias: _ZN9CSDespawn6OnBlurEiP9CharacterP16CharStateMachinei
; demangled: CSDespawn::OnBlur(int, Character*, CharStateMachine*, int)
; decoder-mode: arm
003c3794  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003c3798  7c 51 9f e5                                      ldr r5, [pc, #0x17c]
003c379c  7c 71 9f e5                                      ldr r7, [pc, #0x17c]
003c37a0  7c 11 9f e5                                      ldr r1, [pc, #0x17c]
003c37a4  05 50 8f e0                                      add r5, pc, r5
003c37a8  07 30 95 e7                                      ldr r3, [r5, r7]
003c37ac  01 80 95 e7                                      ldr r8, [r5, r1]
003c37b0  28 d0 4d e2                                      sub sp, sp, #0x28
003c37b4  00 30 93 e5                                      ldr r3, [r3]
003c37b8  08 00 a0 e1                                      mov r0, r8
003c37bc  02 40 a0 e1                                      mov r4, r2
003c37c0  24 30 8d e5                                      str r3, [sp, #0x24]
003c37c4  2f d0 fd eb                                      bl #0x337888
003c37c8  58 11 9f e5                                      ldr r1, [pc, #0x158]
003c37cc  0c 60 8d e2                                      add r6, sp, #0xc
003c37d0  08 20 8d e2                                      add r2, sp, #8
003c37d4  01 10 8f e0                                      add r1, pc, r1
003c37d8  06 00 a0 e1                                      mov r0, r6
003c37dc  42 42 fd eb                                      bl #0x3140ec
003c37e0  06 10 a0 e1                                      mov r1, r6
003c37e4  08 00 a0 e1                                      mov r0, r8
003c37e8  a6 d0 fd eb                                      bl #0x337a88
003c37ec  06 00 a0 e1                                      mov r0, r6
003c37f0  97 52 fd eb                                      bl #0x318254
003c37f4  78 33 94 e5                                      ldr r3, [r4, #0x378]
003c37f8  00 20 a0 e3                                      mov r2, #0
003c37fc  04 00 a0 e1                                      mov r0, r4
003c3800  08 20 c3 e5                                      strb r2, [r3, #8]
003c3804  01 30 a0 e3                                      mov r3, #1
003c3808  30 35 c4 e5                                      strb r3, [r4, #0x530]
003c380c  8d 86 ff eb                                      bl #0x3a5248
003c3810  00 00 50 e3                                      cmp r0, #0
003c3814  1a 00 00 0a                                      beq #0x3c3884
003c3818  dd e7 10 eb                                      bl #0x7fd794
003c381c  05 30 d0 e5                                      ldrb r3, [r0, #5]
003c3820  49 6e 84 e2                                      add r6, r4, #0x490
003c3824  0c 60 86 e2                                      add r6, r6, #0xc
003c3828  00 00 53 e3                                      cmp r3, #0
003c382c  00 30 a0 13                                      movne r3, #0
003c3830  00 80 a0 e3                                      mov r8, #0
003c3834  18 31 c4 15                                      strbne r3, [r4, #0x118]
003c3838  06 00 a0 e1                                      mov r0, r6
003c383c  20 85 84 e5                                      str r8, [r4, #0x520]
003c3840  60 16 00 eb                                      bl #0x3c91c8
003c3844  06 00 a0 e1                                      mov r0, r6
003c3848  37 1b 00 eb                                      bl #0x3ca52c
003c384c  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
003c3850  28 10 8d e2                                      add r1, sp, #0x28
003c3854  08 20 a0 e1                                      mov r2, r8
003c3858  03 30 95 e7                                      ldr r3, [r5, r3]
003c385c  04 00 a0 e1                                      mov r0, r4
003c3860  24 30 21 e5                                      str r3, [r1, #-0x24]!
003c3864  ae 90 ff eb                                      bl #0x3a7b24
003c3868  07 30 95 e7                                      ldr r3, [r5, r7]
003c386c  24 20 9d e5                                      ldr r2, [sp, #0x24]
003c3870  00 30 93 e5                                      ldr r3, [r3]
003c3874  03 00 52 e1                                      cmp r2, r3
003c3878  26 00 00 1a                                      bne #0x3c3918
003c387c  28 d0 8d e2                                      add sp, sp, #0x28
003c3880  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003c3884  c2 e7 10 eb                                      bl #0x7fd794
003c3888  05 30 d0 e5                                      ldrb r3, [r0, #5]
003c388c  00 00 53 e3                                      cmp r3, #0
003c3890  14 00 00 1a                                      bne #0x3c38e8
003c3894  94 30 9f e5                                      ldr r3, [pc, #0x94]
003c3898  00 10 a0 e3                                      mov r1, #0
003c389c  01 20 a0 e3                                      mov r2, #1
003c38a0  03 30 95 e7                                      ldr r3, [r5, r3]
003c38a4  40 00 93 e5                                      ldr r0, [r3, #0x40]
003c38a8  f2 aa fe eb                                      bl #0x36e478
003c38ac  60 16 90 e5                                      ldr r1, [r0, #0x660]
003c38b0  00 00 51 e3                                      cmp r1, #0
003c38b4  04 00 00 0a                                      beq #0x3c38cc
003c38b8  a4 34 01 e3                                      movw r3, #0x14a4
003c38bc  03 20 91 e7                                      ldr r2, [r1, r3]
003c38c0  02 00 54 e1                                      cmp r4, r2
003c38c4  00 20 a0 03                                      moveq r2, #0
003c38c8  03 20 81 07                                      streq r2, [r1, r3]
003c38cc  e4 34 01 e3                                      movw r3, #0x14e4
003c38d0  03 30 d4 e7                                      ldrb r3, [r4, r3]
003c38d4  00 00 53 e3                                      cmp r3, #0
003c38d8  09 00 00 0a                                      beq #0x3c3904
003c38dc  04 00 a0 e1                                      mov r0, r4
003c38e0  33 e9 fd eb                                      bl #0x33ddb4
003c38e4  cb ff ff ea                                      b #0x3c3818
003c38e8  00 30 94 e5                                      ldr r3, [r4]
003c38ec  04 00 a0 e1                                      mov r0, r4
003c38f0  0f e0 a0 e1                                      mov lr, pc
003c38f4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003c38f8  00 00 50 e3                                      cmp r0, #0
003c38fc  c5 ff ff 1a                                      bne #0x3c3818
003c3900  e3 ff ff ea                                      b #0x3c3894
003c3904  04 00 a0 e1                                      mov r0, r4
003c3908  e7 7d ff eb                                      bl #0x3a30ac
003c390c  00 00 50 e3                                      cmp r0, #0
003c3910  c0 ff ff 0a                                      beq #0x3c3818
003c3914  f0 ff ff ea                                      b #0x3c38dc
003c3918  7c 2a fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003c391c  ec 12 5d 00 ac 40 00 00 84 08 00 00 7c 16 50 00  .byte 0xec, 0x12, 0x5d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x7c, 0x16, 0x50, 0x00
003c392c  34 11 00 00 f4 37 00 00                          .byte 0x34, 0x11, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003c7dfc, declared_size=100, range_size=100, mode=arm
; class-group: CSDespawn
; alias: _ZN9CSDespawn6OnInitEiP9CharacterP16CharStateMachine
; demangled: CSDespawn::OnInit(int, Character*, CharStateMachine*)
; decoder-mode: arm
003c7dfc  70 40 2d e9                                      push {r4, r5, r6, lr}
003c7e00  4f 5e 82 e2                                      add r5, r2, #0x4f0
003c7e04  00 40 a0 e3                                      mov r4, #0
003c7e08  0c 50 85 e2                                      add r5, r5, #0xc
003c7e0c  18 d0 4d e2                                      sub sp, sp, #0x18
003c7e10  01 60 a0 e1                                      mov r6, r1
003c7e14  05 00 a0 e1                                      mov r0, r5
003c7e18  04 30 a0 e1                                      mov r3, r4
003c7e1c  40 20 a0 e3                                      mov r2, #0x40
003c7e20  10 40 8d e5                                      str r4, [sp, #0x10]
003c7e24  14 40 8d e5                                      str r4, [sp, #0x14]
003c7e28  00 40 8d e5                                      str r4, [sp]
003c7e2c  04 40 8d e5                                      str r4, [sp, #4]
003c7e30  38 ff ff eb                                      bl #0x3c7b18
003c7e34  05 00 a0 e1                                      mov r0, r5
003c7e38  06 10 a0 e1                                      mov r1, r6
003c7e3c  04 30 a0 e1                                      mov r3, r4
003c7e40  22 20 a0 e3                                      mov r2, #0x22
003c7e44  08 40 8d e5                                      str r4, [sp, #8]
003c7e48  0c 40 8d e5                                      str r4, [sp, #0xc]
003c7e4c  00 40 8d e5                                      str r4, [sp]
003c7e50  04 40 8d e5                                      str r4, [sp, #4]
003c7e54  2f ff ff eb                                      bl #0x3c7b18
003c7e58  18 d0 8d e2                                      add sp, sp, #0x18
003c7e5c  70 80 bd e8                                      pop {r4, r5, r6, pc}
