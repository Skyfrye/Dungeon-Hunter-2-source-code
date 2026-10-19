; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c3668, declared_size=80, range_size=80, mode=arm
; class-group: PyDataConstants
; alias: _ZN15PyDataConstantsC2EP19DataReloaderManager
; demangled: PyDataConstants::PyDataConstants(DataReloaderManager*)
; decoder-mode: arm
004c3668  30 00 2d e9                                      push {r4, r5}
004c366c  3c 40 9f e5                                      ldr r4, [pc, #0x3c]
004c3670  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
004c3674  00 20 a0 e3                                      mov r2, #0
004c3678  04 40 8f e0                                      add r4, pc, r4
004c367c  05 50 94 e7                                      ldr r5, [r4, r5]
004c3680  00 c0 a0 e1                                      mov ip, r0
004c3684  08 20 80 e5                                      str r2, [r0, #8]
004c3688  08 50 85 e2                                      add r5, r5, #8
004c368c  00 50 80 e5                                      str r5, [r0]
004c3690  04 20 ec e5                                      strb r2, [ip, #4]!
004c3694  10 c0 80 e5                                      str ip, [r0, #0x10]
004c3698  20 20 80 e5                                      str r2, [r0, #0x20]
004c369c  1c 10 80 e5                                      str r1, [r0, #0x1c]
004c36a0  0c c0 80 e5                                      str ip, [r0, #0xc]
004c36a4  14 20 80 e5                                      str r2, [r0, #0x14]
004c36a8  30 00 bd e8                                      pop {r4, r5}
004c36ac  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
004c36b0  18 14 4d 00 f4 48 00 00                          .byte 0x18, 0x14, 0x4d, 0x00, 0xf4, 0x48, 0x00, 0x00

; FUNCTION 0x004c36b8, declared_size=80, range_size=80, mode=arm
; class-group: PyDataConstants
; alias: _ZN15PyDataConstantsC1EP19DataReloaderManager
; demangled: PyDataConstants::PyDataConstants(DataReloaderManager*)
; decoder-mode: arm
004c36b8  30 00 2d e9                                      push {r4, r5}
004c36bc  3c 40 9f e5                                      ldr r4, [pc, #0x3c]
004c36c0  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
004c36c4  00 20 a0 e3                                      mov r2, #0
004c36c8  04 40 8f e0                                      add r4, pc, r4
004c36cc  05 50 94 e7                                      ldr r5, [r4, r5]
004c36d0  00 c0 a0 e1                                      mov ip, r0
004c36d4  08 20 80 e5                                      str r2, [r0, #8]
004c36d8  08 50 85 e2                                      add r5, r5, #8
004c36dc  00 50 80 e5                                      str r5, [r0]
004c36e0  04 20 ec e5                                      strb r2, [ip, #4]!
004c36e4  10 c0 80 e5                                      str ip, [r0, #0x10]
004c36e8  20 20 80 e5                                      str r2, [r0, #0x20]
004c36ec  1c 10 80 e5                                      str r1, [r0, #0x1c]
004c36f0  0c c0 80 e5                                      str ip, [r0, #0xc]
004c36f4  14 20 80 e5                                      str r2, [r0, #0x14]
004c36f8  30 00 bd e8                                      pop {r4, r5}
004c36fc  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
004c3700  c8 13 4d 00 f4 48 00 00                          .byte 0xc8, 0x13, 0x4d, 0x00, 0xf4, 0x48, 0x00, 0x00

; FUNCTION 0x004c3708, declared_size=2608, range_size=2608, mode=arm
; class-group: PyDataConstants
; alias: _ZN15PyDataConstants4LoadEv
; demangled: PyDataConstants::Load()
; decoder-mode: arm
004c3708  dc 38 9f e5                                      ldr r3, [pc, #0x8dc]
004c370c  dc 28 9f e5                                      ldr r2, [pc, #0x8dc]
004c3710  30 40 2d e9                                      push {r4, r5, lr}
004c3714  03 30 8f e0                                      add r3, pc, r3
004c3718  02 10 93 e7                                      ldr r1, [r3, r2]
004c371c  20 20 90 e5                                      ldr r2, [r0, #0x20]
004c3720  0c d0 4d e2                                      sub sp, sp, #0xc
004c3724  10 30 91 e5                                      ldr r3, [r1, #0x10]
004c3728  00 40 a0 e1                                      mov r4, r0
004c372c  34 50 93 e5                                      ldr r5, [r3, #0x34]
004c3730  1b 00 52 e3                                      cmp r2, #0x1b
004c3734  02 f1 8f 90                                      addls pc, pc, r2, lsl #2
004c3738  31 00 00 ea                                      b #0x4c3804
004c373c  95 01 00 ea                                      b #0x4c3d98
004c3740  24 01 00 ea                                      b #0x4c3bd8
004c3744  5b 01 00 ea                                      b #0x4c3cb8
004c3748  ea 00 00 ea                                      b #0x4c3af8
004c374c  75 01 00 ea                                      b #0x4c3d28
004c3750  04 01 00 ea                                      b #0x4c3b68
004c3754  3b 01 00 ea                                      b #0x4c3c48
004c3758  ca 00 00 ea                                      b #0x4c3a88
004c375c  7f 01 00 ea                                      b #0x4c3d60
004c3760  0e 01 00 ea                                      b #0x4c3ba0
004c3764  45 01 00 ea                                      b #0x4c3c80
004c3768  d4 00 00 ea                                      b #0x4c3ac0
004c376c  5f 01 00 ea                                      b #0x4c3cf0
004c3770  ee 00 00 ea                                      b #0x4c3b30
004c3774  25 01 00 ea                                      b #0x4c3c10
004c3778  b4 00 00 ea                                      b #0x4c3a50
004c377c  a5 00 00 ea                                      b #0x4c3a18
004c3780  6c 00 00 ea                                      b #0x4c3938
004c3784  87 00 00 ea                                      b #0x4c39a8
004c3788  4e 00 00 ea                                      b #0x4c38c8
004c378c  93 00 00 ea                                      b #0x4c39e0
004c3790  5a 00 00 ea                                      b #0x4c3900
004c3794  75 00 00 ea                                      b #0x4c3970
004c3798  3c 00 00 ea                                      b #0x4c3890
004c379c  2d 00 00 ea                                      b #0x4c3858
004c37a0  1e 00 00 ea                                      b #0x4c3820
004c37a4  00 00 00 ea                                      b #0x4c37ac
004c37a8  1a 00 00 ea                                      b #0x4c3818
004c37ac  40 18 9f e5                                      ldr r1, [pc, #0x840]
004c37b0  00 30 95 e5                                      ldr r3, [r5]
004c37b4  05 00 a0 e1                                      mov r0, r5
004c37b8  01 10 8f e0                                      add r1, pc, r1
004c37bc  0f e0 a0 e1                                      mov lr, pc
004c37c0  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004c37c4  00 00 50 e3                                      cmp r0, #0
004c37c8  04 00 8d e5                                      str r0, [sp, #4]
004c37cc  7f 01 00 0a                                      beq #0x4c3dd0
004c37d0  20 28 9f e5                                      ldr r2, [pc, #0x820]
004c37d4  00 10 a0 e1                                      mov r1, r0
004c37d8  04 00 a0 e1                                      mov r0, r4
004c37dc  02 20 8f e0                                      add r2, pc, r2
004c37e0  00 30 94 e5                                      ldr r3, [r4]
004c37e4  0f e0 a0 e1                                      mov lr, pc
004c37e8  08 f0 93 e5                                      ldr pc, [r3, #8]
004c37ec  05 00 a0 e1                                      mov r0, r5
004c37f0  00 30 95 e5                                      ldr r3, [r5]
004c37f4  04 10 8d e2                                      add r1, sp, #4
004c37f8  0f e0 a0 e1                                      mov lr, pc
004c37fc  78 f0 93 e5                                      ldr pc, [r3, #0x78]
004c3800  20 20 94 e5                                      ldr r2, [r4, #0x20]
004c3804  01 20 82 e2                                      add r2, r2, #1
004c3808  20 20 84 e5                                      str r2, [r4, #0x20]
004c380c  00 00 a0 e3                                      mov r0, #0
004c3810  0c d0 8d e2                                      add sp, sp, #0xc
004c3814  30 80 bd e8                                      pop {r4, r5, pc}
004c3818  01 00 a0 e3                                      mov r0, #1
004c381c  fb ff ff ea                                      b #0x4c3810
004c3820  d4 17 9f e5                                      ldr r1, [pc, #0x7d4]
004c3824  00 30 95 e5                                      ldr r3, [r5]
004c3828  05 00 a0 e1                                      mov r0, r5
004c382c  01 10 8f e0                                      add r1, pc, r1
004c3830  0f e0 a0 e1                                      mov lr, pc
004c3834  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004c3838  00 00 50 e3                                      cmp r0, #0
004c383c  04 00 8d e5                                      str r0, [sp, #4]
004c3840  67 01 00 0a                                      beq #0x4c3de4
004c3844  b4 27 9f e5                                      ldr r2, [pc, #0x7b4]
004c3848  00 10 a0 e1                                      mov r1, r0
004c384c  04 00 a0 e1                                      mov r0, r4
004c3850  02 20 8f e0                                      add r2, pc, r2
004c3854  e1 ff ff ea                                      b #0x4c37e0
004c3858  a4 17 9f e5                                      ldr r1, [pc, #0x7a4]
004c385c  00 30 95 e5                                      ldr r3, [r5]
004c3860  05 00 a0 e1                                      mov r0, r5
004c3864  01 10 8f e0                                      add r1, pc, r1
004c3868  0f e0 a0 e1                                      mov lr, pc
004c386c  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004c3870  00 00 50 e3                                      cmp r0, #0
004c3874  04 00 8d e5                                      str r0, [sp, #4]
004c3878  63 01 00 0a                                      beq #0x4c3e0c
004c387c  84 27 9f e5                                      ldr r2, [pc, #0x784]
004c3880  00 10 a0 e1                                      mov r1, r0
004c3884  04 00 a0 e1                                      mov r0, r4
004c3888  02 20 8f e0                                      add r2, pc, r2
004c388c  d3 ff ff ea                                      b #0x4c37e0
004c3890  74 17 9f e5                                      ldr r1, [pc, #0x774]
004c3894  00 30 95 e5                                      ldr r3, [r5]
004c3898  05 00 a0 e1                                      mov r0, r5
004c389c  01 10 8f e0                                      add r1, pc, r1
004c38a0  0f e0 a0 e1                                      mov lr, pc
004c38a4  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004c38a8  00 00 50 e3                                      cmp r0, #0
004c38ac  04 00 8d e5                                      str r0, [sp, #4]
004c38b0  69 01 00 0a                                      beq #0x4c3e5c
004c38b4  54 27 9f e5                                      ldr r2, [pc, #0x754]
004c38b8  00 10 a0 e1                                      mov r1, r0
004c38bc  04 00 a0 e1                                      mov r0, r4
004c38c0  02 20 8f e0                                      add r2, pc, r2
004c38c4  c5 ff ff ea                                      b #0x4c37e0
004c38c8  44 17 9f e5                                      ldr r1, [pc, #0x744]
004c38cc  00 30 95 e5                                      ldr r3, [r5]
004c38d0  05 00 a0 e1                                      mov r0, r5
004c38d4  01 10 8f e0                                      add r1, pc, r1
004c38d8  0f e0 a0 e1                                      mov lr, pc
004c38dc  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004c38e0  00 00 50 e3                                      cmp r0, #0
004c38e4  04 00 8d e5                                      str r0, [sp, #4]
004c38e8  51 01 00 0a                                      beq #0x4c3e34
004c38ec  24 27 9f e5                                      ldr r2, [pc, #0x724]
004c38f0  00 10 a0 e1                                      mov r1, r0
004c38f4  04 00 a0 e1                                      mov r0, r4
004c38f8  02 20 8f e0                                      add r2, pc, r2
004c38fc  b7 ff ff ea                                      b #0x4c37e0
004c3900  14 17 9f e5                                      ldr r1, [pc, #0x714]
004c3904  00 30 95 e5                                      ldr r3, [r5]
004c3908  05 00 a0 e1                                      mov r0, r5
004c390c  01 10 8f e0                                      add r1, pc, r1
004c3910  0f e0 a0 e1                                      mov lr, pc
004c3914  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004c3918  00 00 50 e3                                      cmp r0, #0
004c391c  04 00 8d e5                                      str r0, [sp, #4]
004c3920  57 01 00 0a                                      beq #0x4c3e84
004c3924  f4 26 9f e5                                      ldr r2, [pc, #0x6f4]
004c3928  00 10 a0 e1                                      mov r1, r0
004c392c  04 00 a0 e1                                      mov r0, r4
004c3930  02 20 8f e0                                      add r2, pc, r2
004c3934  a9 ff ff ea                                      b #0x4c37e0
004c3938  e4 16 9f e5                                      ldr r1, [pc, #0x6e4]
004c393c  00 30 95 e5                                      ldr r3, [r5]
004c3940  05 00 a0 e1                                      mov r0, r5
004c3944  01 10 8f e0                                      add r1, pc, r1
004c3948  0f e0 a0 e1                                      mov lr, pc
004c394c  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004c3950  00 00 50 e3                                      cmp r0, #0
004c3954  04 00 8d e5                                      str r0, [sp, #4]
004c3958  30 01 00 0a                                      beq #0x4c3e20
004c395c  c4 26 9f e5                                      ldr r2, [pc, #0x6c4]
004c3960  00 10 a0 e1                                      mov r1, r0
004c3964  04 00 a0 e1                                      mov r0, r4
004c3968  02 20 8f e0                                      add r2, pc, r2
004c396c  9b ff ff ea                                      b #0x4c37e0
004c3970  b4 16 9f e5                                      ldr r1, [pc, #0x6b4]
004c3974  00 30 95 e5                                      ldr r3, [r5]
004c3978  05 00 a0 e1                                      mov r0, r5
004c397c  01 10 8f e0                                      add r1, pc, r1
004c3980  0f e0 a0 e1                                      mov lr, pc
004c3984  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004c3988  00 00 50 e3                                      cmp r0, #0
004c398c  04 00 8d e5                                      str r0, [sp, #4]
004c3990  36 01 00 0a                                      beq #0x4c3e70
004c3994  94 26 9f e5                                      ldr r2, [pc, #0x694]
004c3998  00 10 a0 e1                                      mov r1, r0
004c399c  04 00 a0 e1                                      mov r0, r4
004c39a0  02 20 8f e0                                      add r2, pc, r2
004c39a4  8d ff ff ea                                      b #0x4c37e0
004c39a8  84 16 9f e5                                      ldr r1, [pc, #0x684]
004c39ac  00 30 95 e5                                      ldr r3, [r5]
004c39b0  05 00 a0 e1                                      mov r0, r5
004c39b4  01 10 8f e0                                      add r1, pc, r1
004c39b8  0f e0 a0 e1                                      mov lr, pc
004c39bc  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004c39c0  00 00 50 e3                                      cmp r0, #0
004c39c4  04 00 8d e5                                      str r0, [sp, #4]
004c39c8  1e 01 00 0a                                      beq #0x4c3e48
004c39cc  64 26 9f e5                                      ldr r2, [pc, #0x664]
004c39d0  00 10 a0 e1                                      mov r1, r0
004c39d4  04 00 a0 e1                                      mov r0, r4
004c39d8  02 20 8f e0                                      add r2, pc, r2
004c39dc  7f ff ff ea                                      b #0x4c37e0
004c39e0  54 16 9f e5                                      ldr r1, [pc, #0x654]
004c39e4  00 30 95 e5                                      ldr r3, [r5]
004c39e8  05 00 a0 e1                                      mov r0, r5
004c39ec  01 10 8f e0                                      add r1, pc, r1
004c39f0  0f e0 a0 e1                                      mov lr, pc
004c39f4  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004c39f8  00 00 50 e3                                      cmp r0, #0
004c39fc  04 00 8d e5                                      str r0, [sp, #4]
004c3a00  24 01 00 0a                                      beq #0x4c3e98
004c3a04  34 26 9f e5                                      ldr r2, [pc, #0x634]
004c3a08  00 10 a0 e1                                      mov r1, r0
004c3a0c  04 00 a0 e1                                      mov r0, r4
004c3a10  02 20 8f e0                                      add r2, pc, r2
004c3a14  71 ff ff ea                                      b #0x4c37e0
004c3a18  24 16 9f e5                                      ldr r1, [pc, #0x624]
004c3a1c  00 30 95 e5                                      ldr r3, [r5]
004c3a20  05 00 a0 e1                                      mov r0, r5
004c3a24  01 10 8f e0                                      add r1, pc, r1
004c3a28  0f e0 a0 e1                                      mov lr, pc
004c3a2c  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004c3a30  00 00 50 e3                                      cmp r0, #0
004c3a34  04 00 8d e5                                      str r0, [sp, #4]
004c3a38  1b 01 00 0a                                      beq #0x4c3eac
004c3a3c  04 26 9f e5                                      ldr r2, [pc, #0x604]
004c3a40  00 10 a0 e1                                      mov r1, r0
004c3a44  04 00 a0 e1                                      mov r0, r4
004c3a48  02 20 8f e0                                      add r2, pc, r2
004c3a4c  63 ff ff ea                                      b #0x4c37e0
004c3a50  f4 15 9f e5                                      ldr r1, [pc, #0x5f4]
004c3a54  00 30 95 e5                                      ldr r3, [r5]
004c3a58  05 00 a0 e1                                      mov r0, r5
004c3a5c  01 10 8f e0                                      add r1, pc, r1
004c3a60  0f e0 a0 e1                                      mov lr, pc
004c3a64  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004c3a68  00 00 50 e3                                      cmp r0, #0
004c3a6c  04 00 8d e5                                      str r0, [sp, #4]
004c3a70  35 01 00 0a                                      beq #0x4c3f4c
004c3a74  d4 25 9f e5                                      ldr r2, [pc, #0x5d4]
004c3a78  00 10 a0 e1                                      mov r1, r0
004c3a7c  04 00 a0 e1                                      mov r0, r4
004c3a80  02 20 8f e0                                      add r2, pc, r2
004c3a84  55 ff ff ea                                      b #0x4c37e0
004c3a88  c4 15 9f e5                                      ldr r1, [pc, #0x5c4]
004c3a8c  00 30 95 e5                                      ldr r3, [r5]
004c3a90  05 00 a0 e1                                      mov r0, r5
004c3a94  01 10 8f e0                                      add r1, pc, r1
004c3a98  0f e0 a0 e1                                      mov lr, pc
004c3a9c  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004c3aa0  00 00 50 e3                                      cmp r0, #0
004c3aa4  04 00 8d e5                                      str r0, [sp, #4]
004c3aa8  13 01 00 0a                                      beq #0x4c3efc
004c3aac  a4 25 9f e5                                      ldr r2, [pc, #0x5a4]
004c3ab0  00 10 a0 e1                                      mov r1, r0
004c3ab4  04 00 a0 e1                                      mov r0, r4
004c3ab8  02 20 8f e0                                      add r2, pc, r2
004c3abc  47 ff ff ea                                      b #0x4c37e0
004c3ac0  94 15 9f e5                                      ldr r1, [pc, #0x594]
004c3ac4  00 30 95 e5                                      ldr r3, [r5]
004c3ac8  05 00 a0 e1                                      mov r0, r5
004c3acc  01 10 8f e0                                      add r1, pc, r1
004c3ad0  0f e0 a0 e1                                      mov lr, pc
004c3ad4  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004c3ad8  00 00 50 e3                                      cmp r0, #0
004c3adc  04 00 8d e5                                      str r0, [sp, #4]
004c3ae0  2d 01 00 0a                                      beq #0x4c3f9c
004c3ae4  74 25 9f e5                                      ldr r2, [pc, #0x574]
004c3ae8  00 10 a0 e1                                      mov r1, r0
004c3aec  04 00 a0 e1                                      mov r0, r4
004c3af0  02 20 8f e0                                      add r2, pc, r2
004c3af4  39 ff ff ea                                      b #0x4c37e0
004c3af8  64 15 9f e5                                      ldr r1, [pc, #0x564]
004c3afc  00 30 95 e5                                      ldr r3, [r5]
004c3b00  05 00 a0 e1                                      mov r0, r5
004c3b04  01 10 8f e0                                      add r1, pc, r1
004c3b08  0f e0 a0 e1                                      mov lr, pc
004c3b0c  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004c3b10  00 00 50 e3                                      cmp r0, #0
004c3b14  04 00 8d e5                                      str r0, [sp, #4]
004c3b18  ed 00 00 0a                                      beq #0x4c3ed4
004c3b1c  44 25 9f e5                                      ldr r2, [pc, #0x544]
004c3b20  00 10 a0 e1                                      mov r1, r0
004c3b24  04 00 a0 e1                                      mov r0, r4
004c3b28  02 20 8f e0                                      add r2, pc, r2
004c3b2c  2b ff ff ea                                      b #0x4c37e0
004c3b30  34 15 9f e5                                      ldr r1, [pc, #0x534]
004c3b34  00 30 95 e5                                      ldr r3, [r5]
004c3b38  05 00 a0 e1                                      mov r0, r5
004c3b3c  01 10 8f e0                                      add r1, pc, r1
004c3b40  0f e0 a0 e1                                      mov lr, pc
004c3b44  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004c3b48  00 00 50 e3                                      cmp r0, #0
004c3b4c  04 00 8d e5                                      str r0, [sp, #4]
004c3b50  07 01 00 0a                                      beq #0x4c3f74
004c3b54  14 25 9f e5                                      ldr r2, [pc, #0x514]
004c3b58  00 10 a0 e1                                      mov r1, r0
004c3b5c  04 00 a0 e1                                      mov r0, r4
004c3b60  02 20 8f e0                                      add r2, pc, r2
004c3b64  1d ff ff ea                                      b #0x4c37e0
004c3b68  04 15 9f e5                                      ldr r1, [pc, #0x504]
004c3b6c  00 30 95 e5                                      ldr r3, [r5]
004c3b70  05 00 a0 e1                                      mov r0, r5
004c3b74  01 10 8f e0                                      add r1, pc, r1
004c3b78  0f e0 a0 e1                                      mov lr, pc
004c3b7c  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004c3b80  00 00 50 e3                                      cmp r0, #0
004c3b84  04 00 8d e5                                      str r0, [sp, #4]
004c3b88  e5 00 00 0a                                      beq #0x4c3f24
004c3b8c  e4 24 9f e5                                      ldr r2, [pc, #0x4e4]
004c3b90  00 10 a0 e1                                      mov r1, r0
004c3b94  04 00 a0 e1                                      mov r0, r4
004c3b98  02 20 8f e0                                      add r2, pc, r2
004c3b9c  0f ff ff ea                                      b #0x4c37e0
004c3ba0  d4 14 9f e5                                      ldr r1, [pc, #0x4d4]
004c3ba4  00 30 95 e5                                      ldr r3, [r5]
004c3ba8  05 00 a0 e1                                      mov r0, r5
004c3bac  01 10 8f e0                                      add r1, pc, r1
004c3bb0  0f e0 a0 e1                                      mov lr, pc
004c3bb4  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004c3bb8  00 00 50 e3                                      cmp r0, #0
004c3bbc  04 00 8d e5                                      str r0, [sp, #4]
004c3bc0  ff 00 00 0a                                      beq #0x4c3fc4
004c3bc4  b4 24 9f e5                                      ldr r2, [pc, #0x4b4]
004c3bc8  00 10 a0 e1                                      mov r1, r0
004c3bcc  04 00 a0 e1                                      mov r0, r4
004c3bd0  02 20 8f e0                                      add r2, pc, r2
004c3bd4  01 ff ff ea                                      b #0x4c37e0
004c3bd8  a4 14 9f e5                                      ldr r1, [pc, #0x4a4]
004c3bdc  00 30 95 e5                                      ldr r3, [r5]
004c3be0  05 00 a0 e1                                      mov r0, r5
004c3be4  01 10 8f e0                                      add r1, pc, r1
004c3be8  0f e0 a0 e1                                      mov lr, pc
004c3bec  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004c3bf0  00 00 50 e3                                      cmp r0, #0
004c3bf4  04 00 8d e5                                      str r0, [sp, #4]
004c3bf8  b0 00 00 0a                                      beq #0x4c3ec0
004c3bfc  84 24 9f e5                                      ldr r2, [pc, #0x484]
004c3c00  00 10 a0 e1                                      mov r1, r0
004c3c04  04 00 a0 e1                                      mov r0, r4
004c3c08  02 20 8f e0                                      add r2, pc, r2
004c3c0c  f3 fe ff ea                                      b #0x4c37e0
004c3c10  74 14 9f e5                                      ldr r1, [pc, #0x474]
004c3c14  00 30 95 e5                                      ldr r3, [r5]
004c3c18  05 00 a0 e1                                      mov r0, r5
004c3c1c  01 10 8f e0                                      add r1, pc, r1
004c3c20  0f e0 a0 e1                                      mov lr, pc
004c3c24  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004c3c28  00 00 50 e3                                      cmp r0, #0
004c3c2c  04 00 8d e5                                      str r0, [sp, #4]
004c3c30  ca 00 00 0a                                      beq #0x4c3f60
004c3c34  54 24 9f e5                                      ldr r2, [pc, #0x454]
004c3c38  00 10 a0 e1                                      mov r1, r0
004c3c3c  04 00 a0 e1                                      mov r0, r4
004c3c40  02 20 8f e0                                      add r2, pc, r2
004c3c44  e5 fe ff ea                                      b #0x4c37e0
004c3c48  44 14 9f e5                                      ldr r1, [pc, #0x444]
004c3c4c  00 30 95 e5                                      ldr r3, [r5]
004c3c50  05 00 a0 e1                                      mov r0, r5
004c3c54  01 10 8f e0                                      add r1, pc, r1
004c3c58  0f e0 a0 e1                                      mov lr, pc
004c3c5c  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004c3c60  00 00 50 e3                                      cmp r0, #0
004c3c64  04 00 8d e5                                      str r0, [sp, #4]
004c3c68  a8 00 00 0a                                      beq #0x4c3f10
004c3c6c  24 24 9f e5                                      ldr r2, [pc, #0x424]
004c3c70  00 10 a0 e1                                      mov r1, r0
004c3c74  04 00 a0 e1                                      mov r0, r4
004c3c78  02 20 8f e0                                      add r2, pc, r2
004c3c7c  d7 fe ff ea                                      b #0x4c37e0
004c3c80  14 14 9f e5                                      ldr r1, [pc, #0x414]
004c3c84  00 30 95 e5                                      ldr r3, [r5]
004c3c88  05 00 a0 e1                                      mov r0, r5
004c3c8c  01 10 8f e0                                      add r1, pc, r1
004c3c90  0f e0 a0 e1                                      mov lr, pc
004c3c94  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004c3c98  00 00 50 e3                                      cmp r0, #0
004c3c9c  04 00 8d e5                                      str r0, [sp, #4]
004c3ca0  c2 00 00 0a                                      beq #0x4c3fb0
004c3ca4  f4 23 9f e5                                      ldr r2, [pc, #0x3f4]
004c3ca8  00 10 a0 e1                                      mov r1, r0
004c3cac  04 00 a0 e1                                      mov r0, r4
004c3cb0  02 20 8f e0                                      add r2, pc, r2
004c3cb4  c9 fe ff ea                                      b #0x4c37e0
004c3cb8  e4 13 9f e5                                      ldr r1, [pc, #0x3e4]
004c3cbc  00 30 95 e5                                      ldr r3, [r5]
004c3cc0  05 00 a0 e1                                      mov r0, r5
004c3cc4  01 10 8f e0                                      add r1, pc, r1
004c3cc8  0f e0 a0 e1                                      mov lr, pc
004c3ccc  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004c3cd0  00 00 50 e3                                      cmp r0, #0
004c3cd4  04 00 8d e5                                      str r0, [sp, #4]
004c3cd8  82 00 00 0a                                      beq #0x4c3ee8
004c3cdc  c4 23 9f e5                                      ldr r2, [pc, #0x3c4]
004c3ce0  00 10 a0 e1                                      mov r1, r0
004c3ce4  04 00 a0 e1                                      mov r0, r4
004c3ce8  02 20 8f e0                                      add r2, pc, r2
004c3cec  bb fe ff ea                                      b #0x4c37e0
004c3cf0  b4 13 9f e5                                      ldr r1, [pc, #0x3b4]
004c3cf4  00 30 95 e5                                      ldr r3, [r5]
004c3cf8  05 00 a0 e1                                      mov r0, r5
004c3cfc  01 10 8f e0                                      add r1, pc, r1
004c3d00  0f e0 a0 e1                                      mov lr, pc
004c3d04  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004c3d08  00 00 50 e3                                      cmp r0, #0
004c3d0c  04 00 8d e5                                      str r0, [sp, #4]
004c3d10  9c 00 00 0a                                      beq #0x4c3f88
004c3d14  94 23 9f e5                                      ldr r2, [pc, #0x394]
004c3d18  00 10 a0 e1                                      mov r1, r0
004c3d1c  04 00 a0 e1                                      mov r0, r4
004c3d20  02 20 8f e0                                      add r2, pc, r2
004c3d24  ad fe ff ea                                      b #0x4c37e0
004c3d28  84 13 9f e5                                      ldr r1, [pc, #0x384]
004c3d2c  00 30 95 e5                                      ldr r3, [r5]
004c3d30  05 00 a0 e1                                      mov r0, r5
004c3d34  01 10 8f e0                                      add r1, pc, r1
004c3d38  0f e0 a0 e1                                      mov lr, pc
004c3d3c  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004c3d40  00 00 50 e3                                      cmp r0, #0
004c3d44  04 00 8d e5                                      str r0, [sp, #4]
004c3d48  7a 00 00 0a                                      beq #0x4c3f38
004c3d4c  64 23 9f e5                                      ldr r2, [pc, #0x364]
004c3d50  00 10 a0 e1                                      mov r1, r0
004c3d54  04 00 a0 e1                                      mov r0, r4
004c3d58  02 20 8f e0                                      add r2, pc, r2
004c3d5c  9f fe ff ea                                      b #0x4c37e0
004c3d60  54 13 9f e5                                      ldr r1, [pc, #0x354]
004c3d64  00 30 95 e5                                      ldr r3, [r5]
004c3d68  05 00 a0 e1                                      mov r0, r5
004c3d6c  01 10 8f e0                                      add r1, pc, r1
004c3d70  0f e0 a0 e1                                      mov lr, pc
004c3d74  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004c3d78  00 00 50 e3                                      cmp r0, #0
004c3d7c  04 00 8d e5                                      str r0, [sp, #4]
004c3d80  94 00 00 0a                                      beq #0x4c3fd8
004c3d84  34 23 9f e5                                      ldr r2, [pc, #0x334]
004c3d88  00 10 a0 e1                                      mov r1, r0
004c3d8c  04 00 a0 e1                                      mov r0, r4
004c3d90  02 20 8f e0                                      add r2, pc, r2
004c3d94  91 fe ff ea                                      b #0x4c37e0
004c3d98  24 13 9f e5                                      ldr r1, [pc, #0x324]
004c3d9c  00 30 95 e5                                      ldr r3, [r5]
004c3da0  05 00 a0 e1                                      mov r0, r5
004c3da4  01 10 8f e0                                      add r1, pc, r1
004c3da8  0f e0 a0 e1                                      mov lr, pc
004c3dac  90 f0 93 e5                                      ldr pc, [r3, #0x90]
004c3db0  00 00 50 e3                                      cmp r0, #0
004c3db4  04 00 8d e5                                      str r0, [sp, #4]
004c3db8  0e 00 00 0a                                      beq #0x4c3df8
004c3dbc  04 23 9f e5                                      ldr r2, [pc, #0x304]
004c3dc0  00 10 a0 e1                                      mov r1, r0
004c3dc4  04 00 a0 e1                                      mov r0, r4
004c3dc8  02 20 8f e0                                      add r2, pc, r2
004c3dcc  83 fe ff ea                                      b #0x4c37e0
004c3dd0  f4 02 9f e5                                      ldr r0, [pc, #0x2f4]
004c3dd4  00 00 8f e0                                      add r0, pc, r0
004c3dd8  b9 28 f9 eb                                      bl #0x30e0c4
004c3ddc  20 20 94 e5                                      ldr r2, [r4, #0x20]
004c3de0  87 fe ff ea                                      b #0x4c3804
004c3de4  e4 02 9f e5                                      ldr r0, [pc, #0x2e4]
004c3de8  00 00 8f e0                                      add r0, pc, r0
004c3dec  b4 28 f9 eb                                      bl #0x30e0c4
004c3df0  20 20 94 e5                                      ldr r2, [r4, #0x20]
004c3df4  82 fe ff ea                                      b #0x4c3804
004c3df8  d4 02 9f e5                                      ldr r0, [pc, #0x2d4]
004c3dfc  00 00 8f e0                                      add r0, pc, r0
004c3e00  af 28 f9 eb                                      bl #0x30e0c4
004c3e04  20 20 94 e5                                      ldr r2, [r4, #0x20]
004c3e08  7d fe ff ea                                      b #0x4c3804
004c3e0c  c4 02 9f e5                                      ldr r0, [pc, #0x2c4]
004c3e10  00 00 8f e0                                      add r0, pc, r0
004c3e14  aa 28 f9 eb                                      bl #0x30e0c4
004c3e18  20 20 94 e5                                      ldr r2, [r4, #0x20]
004c3e1c  78 fe ff ea                                      b #0x4c3804
004c3e20  b4 02 9f e5                                      ldr r0, [pc, #0x2b4]
004c3e24  00 00 8f e0                                      add r0, pc, r0
004c3e28  a5 28 f9 eb                                      bl #0x30e0c4
004c3e2c  20 20 94 e5                                      ldr r2, [r4, #0x20]
004c3e30  73 fe ff ea                                      b #0x4c3804
004c3e34  a4 02 9f e5                                      ldr r0, [pc, #0x2a4]
004c3e38  00 00 8f e0                                      add r0, pc, r0
004c3e3c  a0 28 f9 eb                                      bl #0x30e0c4
004c3e40  20 20 94 e5                                      ldr r2, [r4, #0x20]
004c3e44  6e fe ff ea                                      b #0x4c3804
004c3e48  94 02 9f e5                                      ldr r0, [pc, #0x294]
004c3e4c  00 00 8f e0                                      add r0, pc, r0
004c3e50  9b 28 f9 eb                                      bl #0x30e0c4
004c3e54  20 20 94 e5                                      ldr r2, [r4, #0x20]
004c3e58  69 fe ff ea                                      b #0x4c3804
004c3e5c  84 02 9f e5                                      ldr r0, [pc, #0x284]
004c3e60  00 00 8f e0                                      add r0, pc, r0
004c3e64  96 28 f9 eb                                      bl #0x30e0c4
004c3e68  20 20 94 e5                                      ldr r2, [r4, #0x20]
004c3e6c  64 fe ff ea                                      b #0x4c3804
004c3e70  74 02 9f e5                                      ldr r0, [pc, #0x274]
004c3e74  00 00 8f e0                                      add r0, pc, r0
004c3e78  91 28 f9 eb                                      bl #0x30e0c4
004c3e7c  20 20 94 e5                                      ldr r2, [r4, #0x20]
004c3e80  5f fe ff ea                                      b #0x4c3804
004c3e84  64 02 9f e5                                      ldr r0, [pc, #0x264]
004c3e88  00 00 8f e0                                      add r0, pc, r0
004c3e8c  8c 28 f9 eb                                      bl #0x30e0c4
004c3e90  20 20 94 e5                                      ldr r2, [r4, #0x20]
004c3e94  5a fe ff ea                                      b #0x4c3804
004c3e98  54 02 9f e5                                      ldr r0, [pc, #0x254]
004c3e9c  00 00 8f e0                                      add r0, pc, r0
004c3ea0  87 28 f9 eb                                      bl #0x30e0c4
004c3ea4  20 20 94 e5                                      ldr r2, [r4, #0x20]
004c3ea8  55 fe ff ea                                      b #0x4c3804
004c3eac  44 02 9f e5                                      ldr r0, [pc, #0x244]
004c3eb0  00 00 8f e0                                      add r0, pc, r0
004c3eb4  82 28 f9 eb                                      bl #0x30e0c4
004c3eb8  20 20 94 e5                                      ldr r2, [r4, #0x20]
004c3ebc  50 fe ff ea                                      b #0x4c3804
004c3ec0  34 02 9f e5                                      ldr r0, [pc, #0x234]
004c3ec4  00 00 8f e0                                      add r0, pc, r0
004c3ec8  7d 28 f9 eb                                      bl #0x30e0c4
004c3ecc  20 20 94 e5                                      ldr r2, [r4, #0x20]
004c3ed0  4b fe ff ea                                      b #0x4c3804
004c3ed4  24 02 9f e5                                      ldr r0, [pc, #0x224]
004c3ed8  00 00 8f e0                                      add r0, pc, r0
004c3edc  78 28 f9 eb                                      bl #0x30e0c4
004c3ee0  20 20 94 e5                                      ldr r2, [r4, #0x20]
004c3ee4  46 fe ff ea                                      b #0x4c3804
004c3ee8  14 02 9f e5                                      ldr r0, [pc, #0x214]
004c3eec  00 00 8f e0                                      add r0, pc, r0
004c3ef0  73 28 f9 eb                                      bl #0x30e0c4
004c3ef4  20 20 94 e5                                      ldr r2, [r4, #0x20]
004c3ef8  41 fe ff ea                                      b #0x4c3804
004c3efc  04 02 9f e5                                      ldr r0, [pc, #0x204]
004c3f00  00 00 8f e0                                      add r0, pc, r0
004c3f04  6e 28 f9 eb                                      bl #0x30e0c4
004c3f08  20 20 94 e5                                      ldr r2, [r4, #0x20]
004c3f0c  3c fe ff ea                                      b #0x4c3804
004c3f10  f4 01 9f e5                                      ldr r0, [pc, #0x1f4]
004c3f14  00 00 8f e0                                      add r0, pc, r0
004c3f18  69 28 f9 eb                                      bl #0x30e0c4
004c3f1c  20 20 94 e5                                      ldr r2, [r4, #0x20]
004c3f20  37 fe ff ea                                      b #0x4c3804
004c3f24  e4 01 9f e5                                      ldr r0, [pc, #0x1e4]
004c3f28  00 00 8f e0                                      add r0, pc, r0
004c3f2c  64 28 f9 eb                                      bl #0x30e0c4
004c3f30  20 20 94 e5                                      ldr r2, [r4, #0x20]
004c3f34  32 fe ff ea                                      b #0x4c3804
004c3f38  d4 01 9f e5                                      ldr r0, [pc, #0x1d4]
004c3f3c  00 00 8f e0                                      add r0, pc, r0
004c3f40  5f 28 f9 eb                                      bl #0x30e0c4
004c3f44  20 20 94 e5                                      ldr r2, [r4, #0x20]
004c3f48  2d fe ff ea                                      b #0x4c3804
004c3f4c  c4 01 9f e5                                      ldr r0, [pc, #0x1c4]
004c3f50  00 00 8f e0                                      add r0, pc, r0
004c3f54  5a 28 f9 eb                                      bl #0x30e0c4
004c3f58  20 20 94 e5                                      ldr r2, [r4, #0x20]
004c3f5c  28 fe ff ea                                      b #0x4c3804
004c3f60  b4 01 9f e5                                      ldr r0, [pc, #0x1b4]
004c3f64  00 00 8f e0                                      add r0, pc, r0
004c3f68  55 28 f9 eb                                      bl #0x30e0c4
004c3f6c  20 20 94 e5                                      ldr r2, [r4, #0x20]
004c3f70  23 fe ff ea                                      b #0x4c3804
004c3f74  a4 01 9f e5                                      ldr r0, [pc, #0x1a4]
004c3f78  00 00 8f e0                                      add r0, pc, r0
004c3f7c  50 28 f9 eb                                      bl #0x30e0c4
004c3f80  20 20 94 e5                                      ldr r2, [r4, #0x20]
004c3f84  1e fe ff ea                                      b #0x4c3804
004c3f88  94 01 9f e5                                      ldr r0, [pc, #0x194]
004c3f8c  00 00 8f e0                                      add r0, pc, r0
004c3f90  4b 28 f9 eb                                      bl #0x30e0c4
004c3f94  20 20 94 e5                                      ldr r2, [r4, #0x20]
004c3f98  19 fe ff ea                                      b #0x4c3804
004c3f9c  84 01 9f e5                                      ldr r0, [pc, #0x184]
004c3fa0  00 00 8f e0                                      add r0, pc, r0
004c3fa4  46 28 f9 eb                                      bl #0x30e0c4
004c3fa8  20 20 94 e5                                      ldr r2, [r4, #0x20]
004c3fac  14 fe ff ea                                      b #0x4c3804
004c3fb0  74 01 9f e5                                      ldr r0, [pc, #0x174]
004c3fb4  00 00 8f e0                                      add r0, pc, r0
004c3fb8  41 28 f9 eb                                      bl #0x30e0c4
004c3fbc  20 20 94 e5                                      ldr r2, [r4, #0x20]
004c3fc0  0f fe ff ea                                      b #0x4c3804
004c3fc4  64 01 9f e5                                      ldr r0, [pc, #0x164]
004c3fc8  00 00 8f e0                                      add r0, pc, r0
004c3fcc  3c 28 f9 eb                                      bl #0x30e0c4
004c3fd0  20 20 94 e5                                      ldr r2, [r4, #0x20]
004c3fd4  0a fe ff ea                                      b #0x4c3804
004c3fd8  54 01 9f e5                                      ldr r0, [pc, #0x154]
004c3fdc  00 00 8f e0                                      add r0, pc, r0
004c3fe0  37 28 f9 eb                                      bl #0x30e0c4
004c3fe4  20 20 94 e5                                      ldr r2, [r4, #0x20]
004c3fe8  05 fe ff ea                                      b #0x4c3804
; mapping-symbol data/literal pool
004c3fec  7c 13 4d 00 f4 37 00 00 88 5a 41 00 84 5a 41 00  .byte 0x7c, 0x13, 0x4d, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x88, 0x5a, 0x41, 0x00, 0x84, 0x5a, 0x41, 0x00
004c3ffc  9c 59 41 00 98 59 41 00 ec 58 41 00 e8 58 41 00  .byte 0x9c, 0x59, 0x41, 0x00, 0x98, 0x59, 0x41, 0x00, 0xec, 0x58, 0x41, 0x00, 0xe8, 0x58, 0x41, 0x00
004c400c  2c 58 41 00 28 58 41 00 2c 56 41 00 20 56 41 00  .byte 0x2c, 0x58, 0x41, 0x00, 0x28, 0x58, 0x41, 0x00, 0x2c, 0x56, 0x41, 0x00, 0x20, 0x56, 0x41, 0x00
004c401c  cc 56 41 00 c8 56 41 00 d4 54 41 00 d0 54 41 00  .byte 0xcc, 0x56, 0x41, 0x00, 0xc8, 0x56, 0x41, 0x00, 0xd4, 0x54, 0x41, 0x00, 0xd0, 0x54, 0x41, 0x00
004c402c  d4 56 41 00 d0 56 41 00 dc 54 41 00 d0 54 41 00  .byte 0xd4, 0x56, 0x41, 0x00, 0xd0, 0x56, 0x41, 0x00, 0xdc, 0x54, 0x41, 0x00, 0xd0, 0x54, 0x41, 0x00
004c403c  84 55 41 00 78 55 41 00 7c 53 41 00 78 53 41 00  .byte 0x84, 0x55, 0x41, 0x00, 0x78, 0x55, 0x41, 0x00, 0x7c, 0x53, 0x41, 0x00, 0x78, 0x53, 0x41, 0x00
004c404c  cc 52 41 00 c8 52 41 00 d4 4e 41 00 d0 4e 41 00  .byte 0xcc, 0x52, 0x41, 0x00, 0xc8, 0x52, 0x41, 0x00, 0xd4, 0x4e, 0x41, 0x00, 0xd0, 0x4e, 0x41, 0x00
004c405c  6c 50 41 00 68 50 41 00 74 4c 41 00 78 4c 41 00  .byte 0x6c, 0x50, 0x41, 0x00, 0x68, 0x50, 0x41, 0x00, 0x74, 0x4c, 0x41, 0x00, 0x78, 0x4c, 0x41, 0x00
004c406c  e4 50 41 00 e8 50 41 00 04 4d 41 00 00 4d 41 00  .byte 0xe4, 0x50, 0x41, 0x00, 0xe8, 0x50, 0x41, 0x00, 0x04, 0x4d, 0x41, 0x00, 0x00, 0x4d, 0x41, 0x00
004c407c  ac 4e 41 00 a0 4e 41 00 8c 4a 41 00 88 4a 41 00  .byte 0xac, 0x4e, 0x41, 0x00, 0xa0, 0x4e, 0x41, 0x00, 0x8c, 0x4a, 0x41, 0x00, 0x88, 0x4a, 0x41, 0x00
004c408c  94 50 41 00 90 50 41 00 9c 4c 41 00 98 4c 41 00  .byte 0x94, 0x50, 0x41, 0x00, 0x90, 0x50, 0x41, 0x00, 0x9c, 0x4c, 0x41, 0x00, 0x98, 0x4c, 0x41, 0x00
004c409c  34 4e 41 00 30 4e 41 00 24 4a 41 00 28 4a 41 00  .byte 0x34, 0x4e, 0x41, 0x00, 0x30, 0x4e, 0x41, 0x00, 0x24, 0x4a, 0x41, 0x00, 0x28, 0x4a, 0x41, 0x00
004c40ac  b4 4e 41 00 a8 4e 41 00 d4 4a 41 00 c8 4a 41 00  .byte 0xb4, 0x4e, 0x41, 0x00, 0xa8, 0x4e, 0x41, 0x00, 0xd4, 0x4a, 0x41, 0x00, 0xc8, 0x4a, 0x41, 0x00
004c40bc  74 4c 41 00 70 4c 41 00 6c 48 41 00 60 48 41 00  .byte 0x74, 0x4c, 0x41, 0x00, 0x70, 0x4c, 0x41, 0x00, 0x6c, 0x48, 0x41, 0x00, 0x60, 0x48, 0x41, 0x00
004c40cc  a4 54 41 00 18 54 41 00 3c 48 41 00 78 53 41 00  .byte 0xa4, 0x54, 0x41, 0x00, 0x18, 0x54, 0x41, 0x00, 0x3c, 0x48, 0x41, 0x00, 0x78, 0x53, 0x41, 0x00
004c40dc  2c 50 41 00 f8 50 41 00 74 50 41 00 a8 52 41 00  .byte 0x2c, 0x50, 0x41, 0x00, 0xf8, 0x50, 0x41, 0x00, 0x74, 0x50, 0x41, 0x00, 0xa8, 0x52, 0x41, 0x00
004c40ec  14 52 41 00 88 51 41 00 fc 50 41 00 28 4f 41 00  .byte 0x14, 0x52, 0x41, 0x00, 0x88, 0x51, 0x41, 0x00, 0xfc, 0x50, 0x41, 0x00, 0x28, 0x4f, 0x41, 0x00
004c40fc  e4 47 41 00 e8 48 41 00 44 48 41 00 a0 4a 41 00  .byte 0xe4, 0x47, 0x41, 0x00, 0xe8, 0x48, 0x41, 0x00, 0x44, 0x48, 0x41, 0x00, 0xa0, 0x4a, 0x41, 0x00
004c410c  14 4a 41 00 88 49 41 00 fc 48 41 00 10 4e 41 00  .byte 0x14, 0x4a, 0x41, 0x00, 0x88, 0x49, 0x41, 0x00, 0xfc, 0x48, 0x41, 0x00, 0x10, 0x4e, 0x41, 0x00
004c411c  84 4d 41 00 f0 4c 41 00 54 4c 41 00 d0 4b 41 00  .byte 0x84, 0x4d, 0x41, 0x00, 0xf0, 0x4c, 0x41, 0x00, 0x54, 0x4c, 0x41, 0x00, 0xd0, 0x4b, 0x41, 0x00
004c412c  44 4b 41 00 b8 4a 41 00 3c 4a 41 00              .byte 0x44, 0x4b, 0x41, 0x00, 0xb8, 0x4a, 0x41, 0x00, 0x3c, 0x4a, 0x41, 0x00

; FUNCTION 0x004c4258, declared_size=96, range_size=96, mode=arm
; class-group: PyDataConstants
; alias: _ZN15PyDataConstantsD1Ev
; demangled: PyDataConstants::~PyDataConstants()
; decoder-mode: arm
004c4258  70 40 2d e9                                      push {r4, r5, r6, lr}
004c425c  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
004c4260  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
004c4264  14 10 90 e5                                      ldr r1, [r0, #0x14]
004c4268  03 30 8f e0                                      add r3, pc, r3
004c426c  02 20 93 e7                                      ldr r2, [r3, r2]
004c4270  00 00 51 e3                                      cmp r1, #0
004c4274  00 40 a0 e1                                      mov r4, r0
004c4278  08 20 82 e2                                      add r2, r2, #8
004c427c  00 20 80 e5                                      str r2, [r0]
004c4280  08 00 00 0a                                      beq #0x4c42a8
004c4284  04 50 80 e2                                      add r5, r0, #4
004c4288  05 00 a0 e1                                      mov r0, r5
004c428c  08 10 94 e5                                      ldr r1, [r4, #8]
004c4290  e0 ff ff eb                                      bl #0x4c4218
004c4294  00 30 a0 e3                                      mov r3, #0
004c4298  10 50 84 e5                                      str r5, [r4, #0x10]
004c429c  14 30 84 e5                                      str r3, [r4, #0x14]
004c42a0  0c 50 84 e5                                      str r5, [r4, #0xc]
004c42a4  08 30 84 e5                                      str r3, [r4, #8]
004c42a8  04 00 a0 e1                                      mov r0, r4
004c42ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004c42b0  28 08 4d 00 f4 48 00 00                          .byte 0x28, 0x08, 0x4d, 0x00, 0xf4, 0x48, 0x00, 0x00

; FUNCTION 0x004c42b8, declared_size=28, range_size=28, mode=arm
; class-group: PyDataConstants
; alias: _ZN15PyDataConstantsD0Ev
; demangled: PyDataConstants::~PyDataConstants()
; decoder-mode: arm
004c42b8  10 40 2d e9                                      push {r4, lr}
004c42bc  00 40 a0 e1                                      mov r4, r0
004c42c0  e4 ff ff eb                                      bl #0x4c4258
004c42c4  04 00 a0 e1                                      mov r0, r4
004c42c8  5c 30 f9 eb                                      bl #0x310440
004c42cc  04 00 a0 e1                                      mov r0, r4
004c42d0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004c42d4, declared_size=96, range_size=96, mode=arm
; class-group: PyDataConstants
; alias: _ZN15PyDataConstantsD2Ev
; demangled: PyDataConstants::~PyDataConstants()
; decoder-mode: arm
004c42d4  70 40 2d e9                                      push {r4, r5, r6, lr}
004c42d8  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
004c42dc  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
004c42e0  14 10 90 e5                                      ldr r1, [r0, #0x14]
004c42e4  03 30 8f e0                                      add r3, pc, r3
004c42e8  02 20 93 e7                                      ldr r2, [r3, r2]
004c42ec  00 00 51 e3                                      cmp r1, #0
004c42f0  00 40 a0 e1                                      mov r4, r0
004c42f4  08 20 82 e2                                      add r2, r2, #8
004c42f8  00 20 80 e5                                      str r2, [r0]
004c42fc  08 00 00 0a                                      beq #0x4c4324
004c4300  04 50 80 e2                                      add r5, r0, #4
004c4304  05 00 a0 e1                                      mov r0, r5
004c4308  08 10 94 e5                                      ldr r1, [r4, #8]
004c430c  c1 ff ff eb                                      bl #0x4c4218
004c4310  00 30 a0 e3                                      mov r3, #0
004c4314  10 50 84 e5                                      str r5, [r4, #0x10]
004c4318  14 30 84 e5                                      str r3, [r4, #0x14]
004c431c  0c 50 84 e5                                      str r5, [r4, #0xc]
004c4320  08 30 84 e5                                      str r3, [r4, #8]
004c4324  04 00 a0 e1                                      mov r0, r4
004c4328  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004c432c  ac 07 4d 00 f4 48 00 00                          .byte 0xac, 0x07, 0x4d, 0x00, 0xf4, 0x48, 0x00, 0x00

; FUNCTION 0x004c4b08, declared_size=212, range_size=212, mode=arm
; class-group: PyDataConstants
; alias: _ZNK15PyDataConstants15getConstantNameEPKci
; demangled: PyDataConstants::getConstantName(char const*, int) const
; decoder-mode: arm
004c4b08  30 40 2d e9                                      push {r4, r5, lr}
004c4b0c  0c d0 4d e2                                      sub sp, sp, #0xc
004c4b10  08 30 8d e2                                      add r3, sp, #8
004c4b14  04 10 23 e5                                      str r1, [r3, #-4]!
004c4b18  04 40 80 e2                                      add r4, r0, #4
004c4b1c  03 10 a0 e1                                      mov r1, r3
004c4b20  04 00 a0 e1                                      mov r0, r4
004c4b24  02 50 a0 e1                                      mov r5, r2
004c4b28  9a ff ff eb                                      bl #0x4c4998
004c4b2c  04 00 50 e1                                      cmp r0, r4
004c4b30  24 00 00 0a                                      beq #0x4c4bc8
004c4b34  30 30 90 e5                                      ldr r3, [r0, #0x30]
004c4b38  28 00 80 e2                                      add r0, r0, #0x28
004c4b3c  00 00 53 e1                                      cmp r3, r0
004c4b40  0d 00 00 0a                                      beq #0x4c4b7c
004c4b44  28 20 93 e5                                      ldr r2, [r3, #0x28]
004c4b48  05 00 52 e1                                      cmp r2, r5
004c4b4c  1b 00 00 0a                                      beq #0x4c4bc0
004c4b50  0c 20 93 e5                                      ldr r2, [r3, #0xc]
004c4b54  00 00 52 e3                                      cmp r2, #0
004c4b58  01 00 00 1a                                      bne #0x4c4b64
004c4b5c  0a 00 00 ea                                      b #0x4c4b8c
004c4b60  03 20 a0 e1                                      mov r2, r3
004c4b64  08 30 92 e5                                      ldr r3, [r2, #8]
004c4b68  00 00 53 e3                                      cmp r3, #0
004c4b6c  fb ff ff 1a                                      bne #0x4c4b60
004c4b70  02 30 a0 e1                                      mov r3, r2
004c4b74  03 00 50 e1                                      cmp r0, r3
004c4b78  f1 ff ff 1a                                      bne #0x4c4b44
004c4b7c  50 00 9f e5                                      ldr r0, [pc, #0x50]
004c4b80  00 00 8f e0                                      add r0, pc, r0
004c4b84  0c d0 8d e2                                      add sp, sp, #0xc
004c4b88  30 80 bd e8                                      pop {r4, r5, pc}
004c4b8c  04 10 93 e5                                      ldr r1, [r3, #4]
004c4b90  0c c0 91 e5                                      ldr ip, [r1, #0xc]
004c4b94  03 00 5c e1                                      cmp ip, r3
004c4b98  05 00 00 1a                                      bne #0x4c4bb4
004c4b9c  01 30 a0 e1                                      mov r3, r1
004c4ba0  04 10 91 e5                                      ldr r1, [r1, #4]
004c4ba4  0c 20 91 e5                                      ldr r2, [r1, #0xc]
004c4ba8  03 00 52 e1                                      cmp r2, r3
004c4bac  fa ff ff 0a                                      beq #0x4c4b9c
004c4bb0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
004c4bb4  01 00 52 e1                                      cmp r2, r1
004c4bb8  01 30 a0 11                                      movne r3, r1
004c4bbc  ec ff ff ea                                      b #0x4c4b74
004c4bc0  24 00 93 e5                                      ldr r0, [r3, #0x24]
004c4bc4  ee ff ff ea                                      b #0x4c4b84
004c4bc8  08 00 9f e5                                      ldr r0, [pc, #8]
004c4bcc  00 00 8f e0                                      add r0, pc, r0
004c4bd0  eb ff ff ea                                      b #0x4c4b84
; mapping-symbol data/literal pool
004c4bd4  88 6c 40 00 3c 6c 40 00                          .byte 0x88, 0x6c, 0x40, 0x00, 0x3c, 0x6c, 0x40, 0x00

; FUNCTION 0x004c4bdc, declared_size=84, range_size=84, mode=arm
; class-group: PyDataConstants
; alias: _ZNK15PyDataConstants11getConstantEPKcS1_
; demangled: PyDataConstants::getConstant(char const*, char const*) const
; decoder-mode: arm
004c4bdc  10 40 2d e9                                      push {r4, lr}
004c4be0  04 40 80 e2                                      add r4, r0, #4
004c4be4  08 d0 4d e2                                      sub sp, sp, #8
004c4be8  04 10 8d e5                                      str r1, [sp, #4]
004c4bec  04 00 a0 e1                                      mov r0, r4
004c4bf0  04 10 8d e2                                      add r1, sp, #4
004c4bf4  00 20 8d e5                                      str r2, [sp]
004c4bf8  66 ff ff eb                                      bl #0x4c4998
004c4bfc  04 00 50 e1                                      cmp r0, r4
004c4c00  08 00 00 0a                                      beq #0x4c4c28
004c4c04  28 40 80 e2                                      add r4, r0, #0x28
004c4c08  04 00 a0 e1                                      mov r0, r4
004c4c0c  0d 10 a0 e1                                      mov r1, sp
004c4c10  1b 3e fd eb                                      bl #0x414484
004c4c14  04 00 50 e1                                      cmp r0, r4
004c4c18  28 00 90 15                                      ldrne r0, [r0, #0x28]
004c4c1c  01 00 00 0a                                      beq #0x4c4c28
004c4c20  08 d0 8d e2                                      add sp, sp, #8
004c4c24  10 80 bd e8                                      pop {r4, pc}
004c4c28  00 00 a0 e3                                      mov r0, #0
004c4c2c  fb ff ff ea                                      b #0x4c4c20

; FUNCTION 0x004c540c, declared_size=660, range_size=660, mode=arm
; class-group: PyDataConstants
; alias: _ZN15PyDataConstants10reloadDataEP11IStreamBasePKc
; demangled: PyDataConstants::reloadData(IStreamBase*, char const*)
; decoder-mode: arm
004c540c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004c5410  78 22 9f e5                                      ldr r2, [pc, #0x278]
004c5414  78 32 9f e5                                      ldr r3, [pc, #0x278]
004c5418  93 df 4d e2                                      sub sp, sp, #0x24c
004c541c  02 20 8f e0                                      add r2, pc, r2
004c5420  04 20 8d e5                                      str r2, [sp, #4]
004c5424  04 c0 9d e5                                      ldr ip, [sp, #4]
004c5428  0c 30 8d e5                                      str r3, [sp, #0xc]
004c542c  03 30 92 e7                                      ldr r3, [r2, r3]
004c5430  60 22 9f e5                                      ldr r2, [pc, #0x260]
004c5434  00 90 a0 e1                                      mov sb, r0
004c5438  00 30 93 e5                                      ldr r3, [r3]
004c543c  02 60 9c e7                                      ldr r6, [ip, r2]
004c5440  01 50 a0 e1                                      mov r5, r1
004c5444  44 32 8d e5                                      str r3, [sp, #0x244]
004c5448  06 00 a0 e1                                      mov r0, r6
004c544c  0d c9 f9 eb                                      bl #0x337888
004c5450  44 12 9f e5                                      ldr r1, [pc, #0x244]
004c5454  8b 4f 8d e2                                      add r4, sp, #0x22c
004c5458  28 20 8d e2                                      add r2, sp, #0x28
004c545c  01 10 8f e0                                      add r1, pc, r1
004c5460  04 00 a0 e1                                      mov r0, r4
004c5464  20 3b f9 eb                                      bl #0x3140ec
004c5468  04 10 a0 e1                                      mov r1, r4
004c546c  06 00 a0 e1                                      mov r0, r6
004c5470  84 c9 f9 eb                                      bl #0x337a88
004c5474  04 00 a0 e1                                      mov r0, r4
004c5478  24 40 8d e2                                      add r4, sp, #0x24
004c547c  74 4b f9 eb                                      bl #0x318254
004c5480  05 00 a0 e1                                      mov r0, r5
004c5484  04 10 a0 e1                                      mov r1, r4
004c5488  44 67 fc eb                                      bl #0x3df1a0
004c548c  01 30 a0 e3                                      mov r3, #1
004c5490  00 00 53 e3                                      cmp r3, #0
004c5494  18 30 8d e5                                      str r3, [sp, #0x18]
004c5498  0f 00 00 1a                                      bne #0x4c54dc
004c549c  02 30 84 e2                                      add r3, r4, #2
004c54a0  01 40 84 e2                                      add r4, r4, #1
004c54a4  01 10 d3 e5                                      ldrb r1, [r3, #1]
004c54a8  01 20 54 e5                                      ldrb r2, [r4, #-1]
004c54ac  04 00 53 e1                                      cmp r3, r4
004c54b0  02 20 21 e0                                      eor r2, r1, r2
004c54b4  01 20 44 e5                                      strb r2, [r4, #-1]
004c54b8  01 10 d3 e5                                      ldrb r1, [r3, #1]
004c54bc  01 20 22 e0                                      eor r2, r2, r1
004c54c0  01 20 c3 e5                                      strb r2, [r3, #1]
004c54c4  01 10 54 e5                                      ldrb r1, [r4, #-1]
004c54c8  01 30 43 e2                                      sub r3, r3, #1
004c54cc  01 20 22 e0                                      eor r2, r2, r1
004c54d0  01 20 44 e5                                      strb r2, [r4, #-1]
004c54d4  01 40 84 e2                                      add r4, r4, #1
004c54d8  f1 ff ff 8a                                      bhi #0x4c54a4
004c54dc  24 30 9d e5                                      ldr r3, [sp, #0x24]
004c54e0  00 00 53 e3                                      cmp r3, #0
004c54e4  5f 00 00 0a                                      beq #0x4c5668
004c54e8  1c 80 8d e2                                      add r8, sp, #0x1c
004c54ec  20 10 8d e2                                      add r1, sp, #0x20
004c54f0  00 20 a0 e3                                      mov r2, #0
004c54f4  01 30 81 e2                                      add r3, r1, #1
004c54f8  02 c0 88 e2                                      add ip, r8, #2
004c54fc  10 10 8d e5                                      str r1, [sp, #0x10]
004c5500  04 90 89 e2                                      add sb, sb, #4
004c5504  08 20 8d e5                                      str r2, [sp, #8]
004c5508  4b af 8d e2                                      add sl, sp, #0x12c
004c550c  14 30 8d e5                                      str r3, [sp, #0x14]
004c5510  2c 60 8d e2                                      add r6, sp, #0x2c
004c5514  01 b0 88 e2                                      add fp, r8, #1
004c5518  00 c0 8d e5                                      str ip, [sp]
004c551c  05 00 a0 e1                                      mov r0, r5
004c5520  0a 10 a0 e1                                      mov r1, sl
004c5524  01 2c a0 e3                                      mov r2, #0x100
004c5528  00 30 a0 e3                                      mov r3, #0
004c552c  80 48 f9 eb                                      bl #0x317734
004c5530  00 00 50 e3                                      cmp r0, #0
004c5534  4b 00 00 0a                                      beq #0x4c5668
004c5538  05 00 a0 e1                                      mov r0, r5
004c553c  53 39 f9 eb                                      bl #0x313a90
004c5540  01 30 a0 e3                                      mov r3, #1
004c5544  00 00 53 e3                                      cmp r3, #0
004c5548  20 00 8d e5                                      str r0, [sp, #0x20]
004c554c  18 30 8d e5                                      str r3, [sp, #0x18]
004c5550  12 00 00 1a                                      bne #0x4c55a0
004c5554  10 10 9d e5                                      ldr r1, [sp, #0x10]
004c5558  14 30 9d e5                                      ldr r3, [sp, #0x14]
004c555c  02 20 81 e2                                      add r2, r1, #2
004c5560  01 00 d2 e5                                      ldrb r0, [r2, #1]
004c5564  01 10 53 e5                                      ldrb r1, [r3, #-1]
004c5568  03 00 52 e1                                      cmp r2, r3
004c556c  02 40 a0 e1                                      mov r4, r2
004c5570  01 10 20 e0                                      eor r1, r0, r1
004c5574  01 10 43 e5                                      strb r1, [r3, #-1]
004c5578  01 00 d2 e5                                      ldrb r0, [r2, #1]
004c557c  00 10 21 e0                                      eor r1, r1, r0
004c5580  01 10 c2 e5                                      strb r1, [r2, #1]
004c5584  01 00 53 e5                                      ldrb r0, [r3, #-1]
004c5588  01 20 42 e2                                      sub r2, r2, #1
004c558c  00 10 21 e0                                      eor r1, r1, r0
004c5590  01 10 43 e5                                      strb r1, [r3, #-1]
004c5594  01 30 83 e2                                      add r3, r3, #1
004c5598  f0 ff ff 8a                                      bhi #0x4c5560
004c559c  20 00 9d e5                                      ldr r0, [sp, #0x20]
004c55a0  00 00 50 e3                                      cmp r0, #0
004c55a4  29 00 00 0a                                      beq #0x4c5650
004c55a8  00 40 a0 e3                                      mov r4, #0
004c55ac  01 70 a0 e3                                      mov r7, #1
004c55b0  05 00 a0 e1                                      mov r0, r5
004c55b4  06 10 a0 e1                                      mov r1, r6
004c55b8  01 2c a0 e3                                      mov r2, #0x100
004c55bc  00 30 a0 e3                                      mov r3, #0
004c55c0  5b 48 f9 eb                                      bl #0x317734
004c55c4  00 00 50 e3                                      cmp r0, #0
004c55c8  26 00 00 0a                                      beq #0x4c5668
004c55cc  05 00 a0 e1                                      mov r0, r5
004c55d0  08 10 a0 e1                                      mov r1, r8
004c55d4  ad 4e fe eb                                      bl #0x459090
004c55d8  00 00 57 e3                                      cmp r7, #0
004c55dc  18 70 8d e5                                      str r7, [sp, #0x18]
004c55e0  0f 00 00 1a                                      bne #0x4c5624
004c55e4  00 20 9d e5                                      ldr r2, [sp]
004c55e8  0b 30 a0 e1                                      mov r3, fp
004c55ec  01 00 d2 e5                                      ldrb r0, [r2, #1]
004c55f0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004c55f4  03 00 52 e1                                      cmp r2, r3
004c55f8  01 10 20 e0                                      eor r1, r0, r1
004c55fc  01 10 43 e5                                      strb r1, [r3, #-1]
004c5600  01 00 d2 e5                                      ldrb r0, [r2, #1]
004c5604  00 10 21 e0                                      eor r1, r1, r0
004c5608  01 10 c2 e5                                      strb r1, [r2, #1]
004c560c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004c5610  01 20 42 e2                                      sub r2, r2, #1
004c5614  00 10 21 e0                                      eor r1, r1, r0
004c5618  01 10 43 e5                                      strb r1, [r3, #-1]
004c561c  01 30 83 e2                                      add r3, r3, #1
004c5620  f1 ff ff 8a                                      bhi #0x4c55ec
004c5624  0a 10 a0 e1                                      mov r1, sl
004c5628  09 00 a0 e1                                      mov r0, sb
004c562c  10 ff ff eb                                      bl #0x4c5274
004c5630  06 10 a0 e1                                      mov r1, r6
004c5634  7d fd ff eb                                      bl #0x4c4c30
004c5638  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
004c563c  01 40 84 e2                                      add r4, r4, #1
004c5640  00 30 80 e5                                      str r3, [r0]
004c5644  20 30 9d e5                                      ldr r3, [sp, #0x20]
004c5648  04 00 53 e1                                      cmp r3, r4
004c564c  d7 ff ff 8a                                      bhi #0x4c55b0
004c5650  08 20 9d e5                                      ldr r2, [sp, #8]
004c5654  24 30 9d e5                                      ldr r3, [sp, #0x24]
004c5658  01 20 82 e2                                      add r2, r2, #1
004c565c  02 00 53 e1                                      cmp r3, r2
004c5660  08 20 8d e5                                      str r2, [sp, #8]
004c5664  ac ff ff 8a                                      bhi #0x4c551c
004c5668  04 10 9d e5                                      ldr r1, [sp, #4]
004c566c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
004c5670  44 22 9d e5                                      ldr r2, [sp, #0x244]
004c5674  0c 30 91 e7                                      ldr r3, [r1, ip]
004c5678  00 30 93 e5                                      ldr r3, [r3]
004c567c  03 00 52 e1                                      cmp r2, r3
004c5680  01 00 00 1a                                      bne #0x4c568c
004c5684  93 df 8d e2                                      add sp, sp, #0x24c
004c5688  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004c568c  1f 23 f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004c5690  74 f6 4c 00 ac 40 00 00 84 08 00 00 5c 3e 41 00  .byte 0x74, 0xf6, 0x4c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x5c, 0x3e, 0x41, 0x00
