; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008a34c0, declared_size=2, range_size=2, mode=thumb
; class-group: std::locale
; alias: _ZNSt6locale21_M_throw_on_null_nameEv
; demangled: std::locale::_M_throw_on_null_name()
; decoder-mode: thumb
008a34c0  70 47                                            bx lr

; FUNCTION 0x008a34c4, declared_size=24, range_size=24, mode=thumb
; class-group: std::locale
; alias: _ZNKSt6locale12_M_get_facetERKNS_2idE
; demangled: std::locale::_M_get_facet(std::locale::id const&) const
; decoder-mode: thumb
008a34c4  03 68                                            ldr r3, [r0]
008a34c6  09 68                                            ldr r1, [r1]
008a34c8  00 20                                            movs r0, #0
008a34ca  1a 6a                                            ldr r2, [r3, #0x20]
008a34cc  5b 6a                                            ldr r3, [r3, #0x24]
008a34ce  9b 1a                                            subs r3, r3, r2
008a34d0  9b 10                                            asrs r3, r3, #2
008a34d2  99 42                                            cmp r1, r3
008a34d4  01 d2                                            bhs #0x8a34da
008a34d6  89 00                                            lsls r1, r1, #2
008a34d8  88 58                                            ldr r0, [r1, r2]
008a34da  70 47                                            bx lr

; FUNCTION 0x008a34dc, declared_size=22, range_size=22, mode=thumb
; class-group: std::locale
; alias: _ZNKSt6locale4nameEv
; demangled: std::locale::name() const
; decoder-mode: thumb
008a34dc  10 b5                                            push {r4, lr}
008a34de  0b 68                                            ldr r3, [r1]
008a34e0  04 1c                                            adds r4, r0, #0
008a34e2  20 61                                            str r0, [r4, #0x10]
008a34e4  60 61                                            str r0, [r4, #0x14]
008a34e6  d9 69                                            ldr r1, [r3, #0x1c]
008a34e8  9a 69                                            ldr r2, [r3, #0x18]
008a34ea  6e f6 fe e0                                      blx #0x3116e8
008a34ee  20 1c                                            adds r0, r4, #0
008a34f0  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a34f4, declared_size=18, range_size=18, mode=thumb
; class-group: std::locale
; alias: _ZNSt6localeD1Ev
; demangled: std::locale::~locale()
; decoder-mode: thumb
008a34f4  10 b5                                            push {r4, lr}
008a34f6  03 68                                            ldr r3, [r0]
008a34f8  04 1c                                            adds r4, r0, #0
008a34fa  00 2b                                            cmp r3, #0
008a34fc  01 d0                                            beq #0x8a3502
008a34fe  02 f0 53 fa                                      bl #0x8a59a8
008a3502  20 1c                                            adds r0, r4, #0
008a3504  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a3508, declared_size=18, range_size=18, mode=thumb
; class-group: std::locale
; alias: _ZNSt6localeD2Ev
; demangled: std::locale::~locale()
; decoder-mode: thumb
008a3508  10 b5                                            push {r4, lr}
008a350a  03 68                                            ldr r3, [r0]
008a350c  04 1c                                            adds r4, r0, #0
008a350e  00 2b                                            cmp r3, #0
008a3510  01 d0                                            beq #0x8a3516
008a3512  02 f0 49 fa                                      bl #0x8a59a8
008a3516  20 1c                                            adds r0, r4, #0
008a3518  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a351c, declared_size=36, range_size=36, mode=thumb
; class-group: std::locale
; alias: _ZNSt6localeaSERKS_
; demangled: std::locale::operator=(std::locale const&)
; decoder-mode: thumb
008a351c  70 b5                                            push {r4, r5, r6, lr}
008a351e  04 1c                                            adds r4, r0, #0
008a3520  03 68                                            ldr r3, [r0]
008a3522  08 68                                            ldr r0, [r1]
008a3524  0d 1c                                            adds r5, r1, #0
008a3526  83 42                                            cmp r3, r0
008a3528  08 d0                                            beq #0x8a353c
008a352a  00 2b                                            cmp r3, #0
008a352c  03 d0                                            beq #0x8a3536
008a352e  20 1c                                            adds r0, r4, #0
008a3530  02 f0 3a fa                                      bl #0x8a59a8
008a3534  28 68                                            ldr r0, [r5]
008a3536  01 f0 7b ff                                      bl #0x8a5430
008a353a  20 60                                            str r0, [r4]
008a353c  20 1c                                            adds r0, r4, #0
008a353e  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008a3540, declared_size=16, range_size=16, mode=thumb
; class-group: std::locale
; alias: _ZNSt6localeC1EPSt12_Locale_impl
; demangled: std::locale::locale(std::_Locale_impl*)
; decoder-mode: thumb
008a3540  10 b5                                            push {r4, lr}
008a3542  04 1c                                            adds r4, r0, #0
008a3544  08 1c                                            adds r0, r1, #0
008a3546  01 f0 73 ff                                      bl #0x8a5430
008a354a  20 60                                            str r0, [r4]
008a354c  20 1c                                            adds r0, r4, #0
008a354e  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a3550, declared_size=16, range_size=16, mode=thumb
; class-group: std::locale
; alias: _ZNSt6localeC2EPSt12_Locale_impl
; demangled: std::locale::locale(std::_Locale_impl*)
; decoder-mode: thumb
008a3550  10 b5                                            push {r4, lr}
008a3552  04 1c                                            adds r4, r0, #0
008a3554  08 1c                                            adds r0, r1, #0
008a3556  01 f0 6b ff                                      bl #0x8a5430
008a355a  20 60                                            str r0, [r4]
008a355c  20 1c                                            adds r0, r4, #0
008a355e  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a3560, declared_size=16, range_size=16, mode=thumb
; class-group: std::locale
; alias: _ZNSt6localeC1ERKS_
; demangled: std::locale::locale(std::locale const&)
; decoder-mode: thumb
008a3560  10 b5                                            push {r4, lr}
008a3562  04 1c                                            adds r4, r0, #0
008a3564  08 68                                            ldr r0, [r1]
008a3566  01 f0 63 ff                                      bl #0x8a5430
008a356a  20 60                                            str r0, [r4]
008a356c  20 1c                                            adds r0, r4, #0
008a356e  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a3570, declared_size=16, range_size=16, mode=thumb
; class-group: std::locale
; alias: _ZNSt6localeC2ERKS_
; demangled: std::locale::locale(std::locale const&)
; decoder-mode: thumb
008a3570  10 b5                                            push {r4, lr}
008a3572  04 1c                                            adds r4, r0, #0
008a3574  08 68                                            ldr r0, [r1]
008a3576  01 f0 5b ff                                      bl #0x8a5430
008a357a  20 60                                            str r0, [r4]
008a357c  20 1c                                            adds r0, r4, #0
008a357e  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a3580, declared_size=20, range_size=20, mode=thumb
; class-group: std::locale
; alias: _ZNSt6localeC1Ev
; demangled: std::locale::locale()
; decoder-mode: thumb
008a3580  10 b5                                            push {r4, lr}
008a3582  04 1c                                            adds r4, r0, #0
008a3584  04 f0 ee fa                                      bl #0x8a7b64
008a3588  00 68                                            ldr r0, [r0]
008a358a  01 f0 51 ff                                      bl #0x8a5430
008a358e  20 60                                            str r0, [r4]
008a3590  20 1c                                            adds r0, r4, #0
008a3592  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a3594, declared_size=20, range_size=20, mode=thumb
; class-group: std::locale
; alias: _ZNSt6localeC2Ev
; demangled: std::locale::locale()
; decoder-mode: thumb
008a3594  10 b5                                            push {r4, lr}
008a3596  04 1c                                            adds r4, r0, #0
008a3598  04 f0 e4 fa                                      bl #0x8a7b64
008a359c  00 68                                            ldr r0, [r0]
008a359e  01 f0 47 ff                                      bl #0x8a5430
008a35a2  20 60                                            str r0, [r4]
008a35a4  20 1c                                            adds r0, r4, #0
008a35a6  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a35a8, declared_size=8, range_size=8, mode=thumb
; class-group: std::locale
; alias: _ZNSt6locale7classicEv
; demangled: std::locale::classic()
; decoder-mode: thumb
008a35a8  10 b5                                            push {r4, lr}
008a35aa  04 f0 07 fb                                      bl #0x8a7bbc
008a35ae  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a35b0, declared_size=36, range_size=36, mode=thumb
; class-group: std::locale
; alias: _ZNKSt6locale12_M_use_facetERKNS_2idE
; demangled: std::locale::_M_use_facet(std::locale::id const&) const
; decoder-mode: thumb
008a35b0  10 b5                                            push {r4, lr}
008a35b2  03 68                                            ldr r3, [r0]
008a35b4  09 68                                            ldr r1, [r1]
008a35b6  1a 6a                                            ldr r2, [r3, #0x20]
008a35b8  5b 6a                                            ldr r3, [r3, #0x24]
008a35ba  9b 1a                                            subs r3, r3, r2
008a35bc  9b 10                                            asrs r3, r3, #2
008a35be  99 42                                            cmp r1, r3
008a35c0  03 d3                                            blo #0x8a35ca
008a35c2  01 f0 c7 f9                                      bl #0x8a4954
008a35c6  00 20                                            movs r0, #0
008a35c8  10 bd                                            pop {r4, pc}
008a35ca  89 00                                            lsls r1, r1, #2
008a35cc  88 58                                            ldr r0, [r1, r2]
008a35ce  00 28                                            cmp r0, #0
008a35d0  fa d1                                            bne #0x8a35c8
008a35d2  f6 e7                                            b #0x8a35c2

; FUNCTION 0x008a35d4, declared_size=332, range_size=332, mode=thumb
; class-group: std::locale
; alias: _ZNSt6localeC1EPKc
; demangled: std::locale::locale(char const*)
; decoder-mode: thumb
008a35d4  f0 b5                                            push {r4, r5, r6, r7, lr}
008a35d6  47 46                                            mov r7, r8
008a35d8  80 b4                                            push {r7}
008a35da  4a 4c                                            ldr r4, [pc, #0x128]
008a35dc  4a 4e                                            ldr r6, [pc, #0x128]
008a35de  4b 4a                                            ldr r2, [pc, #0x12c]
008a35e0  a5 44                                            add sp, r4
008a35e2  0c 1c                                            adds r4, r1, #0
008a35e4  4a 49                                            ldr r1, [pc, #0x128]
008a35e6  7e 44                                            add r6, pc
008a35e8  6a 44                                            add r2, sp, r2
008a35ea  73 58                                            ldr r3, [r6, r1]
008a35ec  07 1c                                            adds r7, r0, #0
008a35ee  88 46                                            mov r8, r1
008a35f0  1b 68                                            ldr r3, [r3]
008a35f2  13 60                                            str r3, [r2]
008a35f4  00 23                                            movs r3, #0
008a35f6  03 60                                            str r3, [r0]
008a35f8  00 2c                                            cmp r4, #0
008a35fa  00 d1                                            bne #0x8a35fe
008a35fc  7c e0                                            b #0x8a36f8
008a35fe  23 78                                            ldrb r3, [r4]
008a3600  43 2b                                            cmp r3, #0x43
008a3602  00 d1                                            bne #0x8a3606
008a3604  6d e0                                            b #0x8a36e2
008a3606  2c 20                                            movs r0, #0x2c
008a3608  6b f6 40 e1                                      blx #0x30e88c
008a360c  41 4b                                            ldr r3, [pc, #0x104]
008a360e  22 1c                                            adds r2, r4, #0
008a3610  05 1c                                            adds r5, r0, #0
008a3612  f3 58                                            ldr r3, [r6, r3]
008a3614  19 68                                            ldr r1, [r3]
008a3616  04 f0 fd fa                                      bl #0x8a7c14
008a361a  3f 4a                                            ldr r2, [pc, #0xfc]
008a361c  06 a9                                            add r1, sp, #0x18
008a361e  00 23                                            movs r3, #0
008a3620  6a 44                                            add r2, sp, r2
008a3622  28 1c                                            adds r0, r5, #0
008a3624  06 94                                            str r4, [sp, #0x18]
008a3626  05 94                                            str r4, [sp, #0x14]
008a3628  04 94                                            str r4, [sp, #0x10]
008a362a  03 94                                            str r4, [sp, #0xc]
008a362c  02 94                                            str r4, [sp, #8]
008a362e  01 94                                            str r4, [sp, #4]
008a3630  03 f0 ec f9                                      bl #0x8a6a0c
008a3634  39 4a                                            ldr r2, [pc, #0xe4]
008a3636  03 1c                                            adds r3, r0, #0
008a3638  05 a9                                            add r1, sp, #0x14
008a363a  6a 44                                            add r2, sp, r2
008a363c  28 1c                                            adds r0, r5, #0
008a363e  03 f0 21 f9                                      bl #0x8a6884
008a3642  04 a9                                            add r1, sp, #0x10
008a3644  03 1c                                            adds r3, r0, #0
008a3646  c7 aa                                            add r2, sp, #0x31c
008a3648  28 1c                                            adds r0, r5, #0
008a364a  03 f0 25 f8                                      bl #0x8a6698
008a364e  03 a9                                            add r1, sp, #0xc
008a3650  03 1c                                            adds r3, r0, #0
008a3652  87 aa                                            add r2, sp, #0x21c
008a3654  28 1c                                            adds r0, r5, #0
008a3656  02 f0 71 ff                                      bl #0x8a653c
008a365a  02 a9                                            add r1, sp, #8
008a365c  03 1c                                            adds r3, r0, #0
008a365e  47 aa                                            add r2, sp, #0x11c
008a3660  28 1c                                            adds r0, r5, #0
008a3662  02 f0 45 fe                                      bl #0x8a62f0
008a3666  01 a9                                            add r1, sp, #4
008a3668  03 1c                                            adds r3, r0, #0
008a366a  07 aa                                            add r2, sp, #0x1c
008a366c  28 1c                                            adds r0, r5, #0
008a366e  02 f0 b1 fd                                      bl #0x8a61d4
008a3672  06 9c                                            ldr r4, [sp, #0x18]
008a3674  05 99                                            ldr r1, [sp, #0x14]
008a3676  20 1c                                            adds r0, r4, #0
008a3678  6a f6 50 e6                                      blx #0x30e31c
008a367c  00 28                                            cmp r0, #0
008a367e  12 d0                                            beq #0x8a36a6
008a3680  28 1c                                            adds r0, r5, #0
008a3682  01 f0 d5 fe                                      bl #0x8a5430
008a3686  38 60                                            str r0, [r7]
008a3688  41 46                                            mov r1, r8
008a368a  73 58                                            ldr r3, [r6, r1]
008a368c  1f 49                                            ldr r1, [pc, #0x7c]
008a368e  38 1c                                            adds r0, r7, #0
008a3690  69 44                                            add r1, sp, r1
008a3692  0a 68                                            ldr r2, [r1]
008a3694  1b 68                                            ldr r3, [r3]
008a3696  9a 42                                            cmp r2, r3
008a3698  31 d1                                            bne #0x8a36fe
008a369a  c4 23                                            movs r3, #0xc4
008a369c  db 00                                            lsls r3, r3, #3
008a369e  9d 44                                            add sp, r3
008a36a0  04 bc                                            pop {r2}
008a36a2  90 46                                            mov r8, r2
008a36a4  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a36a6  20 1c                                            adds r0, r4, #0
008a36a8  04 99                                            ldr r1, [sp, #0x10]
008a36aa  6a f6 38 e6                                      blx #0x30e31c
008a36ae  00 28                                            cmp r0, #0
008a36b0  e6 d1                                            bne #0x8a3680
008a36b2  20 1c                                            adds r0, r4, #0
008a36b4  03 99                                            ldr r1, [sp, #0xc]
008a36b6  6a f6 32 e6                                      blx #0x30e31c
008a36ba  00 28                                            cmp r0, #0
008a36bc  e0 d1                                            bne #0x8a3680
008a36be  20 1c                                            adds r0, r4, #0
008a36c0  02 99                                            ldr r1, [sp, #8]
008a36c2  6a f6 2c e6                                      blx #0x30e31c
008a36c6  00 28                                            cmp r0, #0
008a36c8  da d1                                            bne #0x8a3680
008a36ca  20 1c                                            adds r0, r4, #0
008a36cc  01 99                                            ldr r1, [sp, #4]
008a36ce  6a f6 26 e6                                      blx #0x30e31c
008a36d2  00 28                                            cmp r0, #0
008a36d4  d4 d1                                            bne #0x8a3680
008a36d6  28 1c                                            adds r0, r5, #0
008a36d8  21 1c                                            adds r1, r4, #0
008a36da  08 30                                            adds r0, #8
008a36dc  8d f6 46 e0                                      blx #0x33076c
008a36e0  ce e7                                            b #0x8a3680
008a36e2  63 78                                            ldrb r3, [r4, #1]
008a36e4  00 2b                                            cmp r3, #0
008a36e6  00 d0                                            beq #0x8a36ea
008a36e8  8d e7                                            b #0x8a3606
008a36ea  ff f7 5d ff                                      bl #0x8a35a8
008a36ee  00 68                                            ldr r0, [r0]
008a36f0  01 f0 9e fe                                      bl #0x8a5430
008a36f4  38 60                                            str r0, [r7]
008a36f6  c7 e7                                            b #0x8a3688
008a36f8  ff f7 e2 fe                                      bl #0x8a34c0
008a36fc  7f e7                                            b #0x8a35fe
008a36fe  6a f6 08 e6                                      blx #0x30e310
008a3702  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a3704  e0 f9 ff ff ae 14 0f 00 1c 06 00 00 ac 40 00 00  .byte 0xe0, 0xf9, 0xff, 0xff, 0xae, 0x14, 0x0f, 0x00, 0x1c, 0x06, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00
008a3714  34 32 00 00 1c 05 00 00 1c 04 00 00              .byte 0x34, 0x32, 0x00, 0x00, 0x1c, 0x05, 0x00, 0x00, 0x1c, 0x04, 0x00, 0x00

; FUNCTION 0x008a3720, declared_size=332, range_size=332, mode=thumb
; class-group: std::locale
; alias: _ZNSt6localeC2EPKc
; demangled: std::locale::locale(char const*)
; decoder-mode: thumb
008a3720  f0 b5                                            push {r4, r5, r6, r7, lr}
008a3722  47 46                                            mov r7, r8
008a3724  80 b4                                            push {r7}
008a3726  4a 4c                                            ldr r4, [pc, #0x128]
008a3728  4a 4e                                            ldr r6, [pc, #0x128]
008a372a  4b 4a                                            ldr r2, [pc, #0x12c]
008a372c  a5 44                                            add sp, r4
008a372e  0c 1c                                            adds r4, r1, #0
008a3730  4a 49                                            ldr r1, [pc, #0x128]
008a3732  7e 44                                            add r6, pc
008a3734  6a 44                                            add r2, sp, r2
008a3736  73 58                                            ldr r3, [r6, r1]
008a3738  07 1c                                            adds r7, r0, #0
008a373a  88 46                                            mov r8, r1
008a373c  1b 68                                            ldr r3, [r3]
008a373e  13 60                                            str r3, [r2]
008a3740  00 23                                            movs r3, #0
008a3742  03 60                                            str r3, [r0]
008a3744  00 2c                                            cmp r4, #0
008a3746  00 d1                                            bne #0x8a374a
008a3748  7c e0                                            b #0x8a3844
008a374a  23 78                                            ldrb r3, [r4]
008a374c  43 2b                                            cmp r3, #0x43
008a374e  00 d1                                            bne #0x8a3752
008a3750  6d e0                                            b #0x8a382e
008a3752  2c 20                                            movs r0, #0x2c
008a3754  6b f6 9a e0                                      blx #0x30e88c
008a3758  41 4b                                            ldr r3, [pc, #0x104]
008a375a  22 1c                                            adds r2, r4, #0
008a375c  05 1c                                            adds r5, r0, #0
008a375e  f3 58                                            ldr r3, [r6, r3]
008a3760  19 68                                            ldr r1, [r3]
008a3762  04 f0 57 fa                                      bl #0x8a7c14
008a3766  3f 4a                                            ldr r2, [pc, #0xfc]
008a3768  06 a9                                            add r1, sp, #0x18
008a376a  00 23                                            movs r3, #0
008a376c  6a 44                                            add r2, sp, r2
008a376e  28 1c                                            adds r0, r5, #0
008a3770  06 94                                            str r4, [sp, #0x18]
008a3772  05 94                                            str r4, [sp, #0x14]
008a3774  04 94                                            str r4, [sp, #0x10]
008a3776  03 94                                            str r4, [sp, #0xc]
008a3778  02 94                                            str r4, [sp, #8]
008a377a  01 94                                            str r4, [sp, #4]
008a377c  03 f0 46 f9                                      bl #0x8a6a0c
008a3780  39 4a                                            ldr r2, [pc, #0xe4]
008a3782  03 1c                                            adds r3, r0, #0
008a3784  05 a9                                            add r1, sp, #0x14
008a3786  6a 44                                            add r2, sp, r2
008a3788  28 1c                                            adds r0, r5, #0
008a378a  03 f0 7b f8                                      bl #0x8a6884
008a378e  04 a9                                            add r1, sp, #0x10
008a3790  03 1c                                            adds r3, r0, #0
008a3792  c7 aa                                            add r2, sp, #0x31c
008a3794  28 1c                                            adds r0, r5, #0
008a3796  02 f0 7f ff                                      bl #0x8a6698
008a379a  03 a9                                            add r1, sp, #0xc
008a379c  03 1c                                            adds r3, r0, #0
008a379e  87 aa                                            add r2, sp, #0x21c
008a37a0  28 1c                                            adds r0, r5, #0
008a37a2  02 f0 cb fe                                      bl #0x8a653c
008a37a6  02 a9                                            add r1, sp, #8
008a37a8  03 1c                                            adds r3, r0, #0
008a37aa  47 aa                                            add r2, sp, #0x11c
008a37ac  28 1c                                            adds r0, r5, #0
008a37ae  02 f0 9f fd                                      bl #0x8a62f0
008a37b2  01 a9                                            add r1, sp, #4
008a37b4  03 1c                                            adds r3, r0, #0
008a37b6  07 aa                                            add r2, sp, #0x1c
008a37b8  28 1c                                            adds r0, r5, #0
008a37ba  02 f0 0b fd                                      bl #0x8a61d4
008a37be  06 9c                                            ldr r4, [sp, #0x18]
008a37c0  05 99                                            ldr r1, [sp, #0x14]
008a37c2  20 1c                                            adds r0, r4, #0
008a37c4  6a f6 aa e5                                      blx #0x30e31c
008a37c8  00 28                                            cmp r0, #0
008a37ca  12 d0                                            beq #0x8a37f2
008a37cc  28 1c                                            adds r0, r5, #0
008a37ce  01 f0 2f fe                                      bl #0x8a5430
008a37d2  38 60                                            str r0, [r7]
008a37d4  41 46                                            mov r1, r8
008a37d6  73 58                                            ldr r3, [r6, r1]
008a37d8  1f 49                                            ldr r1, [pc, #0x7c]
008a37da  38 1c                                            adds r0, r7, #0
008a37dc  69 44                                            add r1, sp, r1
008a37de  0a 68                                            ldr r2, [r1]
008a37e0  1b 68                                            ldr r3, [r3]
008a37e2  9a 42                                            cmp r2, r3
008a37e4  31 d1                                            bne #0x8a384a
008a37e6  c4 23                                            movs r3, #0xc4
008a37e8  db 00                                            lsls r3, r3, #3
008a37ea  9d 44                                            add sp, r3
008a37ec  04 bc                                            pop {r2}
008a37ee  90 46                                            mov r8, r2
008a37f0  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a37f2  20 1c                                            adds r0, r4, #0
008a37f4  04 99                                            ldr r1, [sp, #0x10]
008a37f6  6a f6 92 e5                                      blx #0x30e31c
008a37fa  00 28                                            cmp r0, #0
008a37fc  e6 d1                                            bne #0x8a37cc
008a37fe  20 1c                                            adds r0, r4, #0
008a3800  03 99                                            ldr r1, [sp, #0xc]
008a3802  6a f6 8c e5                                      blx #0x30e31c
008a3806  00 28                                            cmp r0, #0
008a3808  e0 d1                                            bne #0x8a37cc
008a380a  20 1c                                            adds r0, r4, #0
008a380c  02 99                                            ldr r1, [sp, #8]
008a380e  6a f6 86 e5                                      blx #0x30e31c
008a3812  00 28                                            cmp r0, #0
008a3814  da d1                                            bne #0x8a37cc
008a3816  20 1c                                            adds r0, r4, #0
008a3818  01 99                                            ldr r1, [sp, #4]
008a381a  6a f6 80 e5                                      blx #0x30e31c
008a381e  00 28                                            cmp r0, #0
008a3820  d4 d1                                            bne #0x8a37cc
008a3822  28 1c                                            adds r0, r5, #0
008a3824  21 1c                                            adds r1, r4, #0
008a3826  08 30                                            adds r0, #8
008a3828  8c f6 a0 e7                                      blx #0x33076c
008a382c  ce e7                                            b #0x8a37cc
008a382e  63 78                                            ldrb r3, [r4, #1]
008a3830  00 2b                                            cmp r3, #0
008a3832  00 d0                                            beq #0x8a3836
008a3834  8d e7                                            b #0x8a3752
008a3836  ff f7 b7 fe                                      bl #0x8a35a8
008a383a  00 68                                            ldr r0, [r0]
008a383c  01 f0 f8 fd                                      bl #0x8a5430
008a3840  38 60                                            str r0, [r7]
008a3842  c7 e7                                            b #0x8a37d4
008a3844  ff f7 3c fe                                      bl #0x8a34c0
008a3848  7f e7                                            b #0x8a374a
008a384a  6a f6 62 e5                                      blx #0x30e310
008a384e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a3850  e0 f9 ff ff 62 13 0f 00 1c 06 00 00 ac 40 00 00  .byte 0xe0, 0xf9, 0xff, 0xff, 0x62, 0x13, 0x0f, 0x00, 0x1c, 0x06, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00
008a3860  34 32 00 00 1c 05 00 00 1c 04 00 00              .byte 0x34, 0x32, 0x00, 0x00, 0x1c, 0x05, 0x00, 0x00, 0x1c, 0x04, 0x00, 0x00

; FUNCTION 0x008a386c, declared_size=88, range_size=88, mode=thumb
; class-group: std::locale
; alias: _ZNSt6locale9_M_insertEPNS_5facetERNS_2idE
; demangled: std::locale::_M_insert(std::locale::facet*, std::locale::id&)
; decoder-mode: thumb
008a386c  f0 b5                                            push {r4, r5, r6, r7, lr}
008a386e  47 46                                            mov r7, r8
008a3870  80 b4                                            push {r7}
008a3872  11 4c                                            ldr r4, [pc, #0x44]
008a3874  0e 1c                                            adds r6, r1, #0
008a3876  15 1c                                            adds r5, r2, #0
008a3878  7c 44                                            add r4, pc
008a387a  00 29                                            cmp r1, #0
008a387c  08 d0                                            beq #0x8a3890
008a387e  13 68                                            ldr r3, [r2]
008a3880  07 68                                            ldr r7, [r0]
008a3882  00 2b                                            cmp r3, #0
008a3884  07 d0                                            beq #0x8a3896
008a3886  38 1c                                            adds r0, r7, #0
008a3888  31 1c                                            adds r1, r6, #0
008a388a  2a 1c                                            adds r2, r5, #0
008a388c  02 f0 62 fc                                      bl #0x8a6154
008a3890  04 bc                                            pop {r2}
008a3892  90 46                                            mov r8, r2
008a3894  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a3896  09 4b                                            ldr r3, [pc, #0x24]
008a3898  98 46                                            mov r8, r3
008a389a  f8 44                                            add r8, pc
008a389c  40 46                                            mov r0, r8
008a389e  6a f6 88 e6                                      blx #0x30e5b0
008a38a2  07 4b                                            ldr r3, [pc, #0x1c]
008a38a4  40 46                                            mov r0, r8
008a38a6  e2 58                                            ldr r2, [r4, r3]
008a38a8  13 68                                            ldr r3, [r2]
008a38aa  59 1c                                            adds r1, r3, #1
008a38ac  11 60                                            str r1, [r2]
008a38ae  2b 60                                            str r3, [r5]
008a38b0  6a f6 70 e5                                      blx #0x30e394
008a38b4  e7 e7                                            b #0x8a3886
008a38b6  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a38b8  1c 12 0f 00 a2 15 19 00 34 32 00 00              .byte 0x1c, 0x12, 0x0f, 0x00, 0xa2, 0x15, 0x19, 0x00, 0x34, 0x32, 0x00, 0x00

; FUNCTION 0x008a3990, declared_size=192, range_size=192, mode=thumb
; class-group: std::locale
; alias: _ZNKSt6localeeqERKS_
; demangled: std::locale::operator==(std::locale const&) const
; decoder-mode: thumb
008a3990  f0 b5                                            push {r4, r5, r6, r7, lr}
008a3992  57 46                                            mov r7, sl
008a3994  4e 46                                            mov r6, sb
008a3996  45 46                                            mov r5, r8
008a3998  e0 b4                                            push {r5, r6, r7}
008a399a  2a 4c                                            ldr r4, [pc, #0xa8]
008a399c  2a 4a                                            ldr r2, [pc, #0xa8]
008a399e  94 b0                                            sub sp, #0x50
008a39a0  7c 44                                            add r4, pc
008a39a2  a3 58                                            ldr r3, [r4, r2]
008a39a4  92 46                                            mov sl, r2
008a39a6  81 46                                            mov sb, r0
008a39a8  1b 68                                            ldr r3, [r3]
008a39aa  0d 1c                                            adds r5, r1, #0
008a39ac  01 26                                            movs r6, #1
008a39ae  13 93                                            str r3, [sp, #0x4c]
008a39b0  02 68                                            ldr r2, [r0]
008a39b2  0b 68                                            ldr r3, [r1]
008a39b4  9a 42                                            cmp r2, r3
008a39b6  1a d0                                            beq #0x8a39ee
008a39b8  0d ab                                            add r3, sp, #0x34
008a39ba  18 1c                                            adds r0, r3, #0
008a39bc  07 af                                            add r7, sp, #0x1c
008a39be  49 46                                            mov r1, sb
008a39c0  98 46                                            mov r8, r3
008a39c2  ff f7 8b fd                                      bl #0x8a34dc
008a39c6  38 1c                                            adds r0, r7, #0
008a39c8  29 1c                                            adds r1, r5, #0
008a39ca  ff f7 87 fd                                      bl #0x8a34dc
008a39ce  42 46                                            mov r2, r8
008a39d0  50 69                                            ldr r0, [r2, #0x14]
008a39d2  79 69                                            ldr r1, [r7, #0x14]
008a39d4  12 69                                            ldr r2, [r2, #0x10]
008a39d6  3b 69                                            ldr r3, [r7, #0x10]
008a39d8  12 1a                                            subs r2, r2, r0
008a39da  5b 1a                                            subs r3, r3, r1
008a39dc  9a 42                                            cmp r2, r3
008a39de  13 d0                                            beq #0x8a3a08
008a39e0  00 26                                            movs r6, #0
008a39e2  38 1c                                            adds r0, r7, #0
008a39e4  6f f6 e2 e7                                      blx #0x3139ac
008a39e8  40 46                                            mov r0, r8
008a39ea  6f f6 e0 e7                                      blx #0x3139ac
008a39ee  52 46                                            mov r2, sl
008a39f0  a3 58                                            ldr r3, [r4, r2]
008a39f2  13 9a                                            ldr r2, [sp, #0x4c]
008a39f4  30 1c                                            adds r0, r6, #0
008a39f6  1b 68                                            ldr r3, [r3]
008a39f8  9a 42                                            cmp r2, r3
008a39fa  21 d1                                            bne #0x8a3a40
008a39fc  14 b0                                            add sp, #0x50
008a39fe  1c bc                                            pop {r2, r3, r4}
008a3a00  90 46                                            mov r8, r2
008a3a02  99 46                                            mov sb, r3
008a3a04  a2 46                                            mov sl, r4
008a3a06  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a3a08  6a f6 ea e5                                      blx #0x30e5e0
008a3a0c  00 28                                            cmp r0, #0
008a3a0e  e7 d1                                            bne #0x8a39e0
008a3a10  01 ad                                            add r5, sp, #4
008a3a12  28 1c                                            adds r0, r5, #0
008a3a14  49 46                                            mov r1, sb
008a3a16  ff f7 61 fd                                      bl #0x8a34dc
008a3a1a  0c 4b                                            ldr r3, [pc, #0x30]
008a3a1c  68 69                                            ldr r0, [r5, #0x14]
008a3a1e  2a 69                                            ldr r2, [r5, #0x10]
008a3a20  7b 44                                            add r3, pc
008a3a22  99 69                                            ldr r1, [r3, #0x18]
008a3a24  5b 69                                            ldr r3, [r3, #0x14]
008a3a26  12 1a                                            subs r2, r2, r0
008a3a28  5b 1a                                            subs r3, r3, r1
008a3a2a  9a 42                                            cmp r2, r3
008a3a2c  04 d1                                            bne #0x8a3a38
008a3a2e  6a f6 d8 e5                                      blx #0x30e5e0
008a3a32  06 1c                                            adds r6, r0, #0
008a3a34  73 1e                                            subs r3, r6, #1
008a3a36  9e 41                                            sbcs r6, r3
008a3a38  28 1c                                            adds r0, r5, #0
008a3a3a  6f f6 b8 e7                                      blx #0x3139ac
008a3a3e  d0 e7                                            b #0x8a39e2
008a3a40  6a f6 66 e4                                      blx #0x30e310
; mapping-symbol data/literal pool
008a3a44  f4 10 0f 00 ac 40 00 00 1c 14 19 00              .byte 0xf4, 0x10, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x1c, 0x14, 0x19, 0x00

; FUNCTION 0x008a3a50, declared_size=16, range_size=16, mode=thumb
; class-group: std::locale
; alias: _ZNKSt6localeneERKS_
; demangled: std::locale::operator!=(std::locale const&) const
; decoder-mode: thumb
008a3a50  10 b5                                            push {r4, lr}
008a3a52  ff f7 9d ff                                      bl #0x8a3990
008a3a56  01 23                                            movs r3, #1
008a3a58  58 40                                            eors r0, r3
008a3a5a  00 06                                            lsls r0, r0, #0x18
008a3a5c  00 0e                                            lsrs r0, r0, #0x18
008a3a5e  10 bd                                            pop {r4, pc}

; FUNCTION 0x008a3a60, declared_size=200, range_size=200, mode=thumb
; class-group: std::locale
; alias: _ZNSt6locale6globalERKS_
; demangled: std::locale::global(std::locale const&)
; decoder-mode: thumb
008a3a60  f0 b5                                            push {r4, r5, r6, r7, lr}
008a3a62  4f 46                                            mov r7, sb
008a3a64  46 46                                            mov r6, r8
008a3a66  c0 b4                                            push {r6, r7}
008a3a68  2c 4c                                            ldr r4, [pc, #0xb0]
008a3a6a  2d 4a                                            ldr r2, [pc, #0xb4]
008a3a6c  8f b0                                            sub sp, #0x3c
008a3a6e  7c 44                                            add r4, pc
008a3a70  a3 58                                            ldr r3, [r4, r2]
008a3a72  90 46                                            mov r8, r2
008a3a74  0e 1c                                            adds r6, r1, #0
008a3a76  1b 68                                            ldr r3, [r3]
008a3a78  07 1c                                            adds r7, r0, #0
008a3a7a  0d 93                                            str r3, [sp, #0x34]
008a3a7c  04 f0 72 f8                                      bl #0x8a7b64
008a3a80  01 68                                            ldr r1, [r0]
008a3a82  38 1c                                            adds r0, r7, #0
008a3a84  ff f7 5c fd                                      bl #0x8a3540
008a3a88  04 f0 6c f8                                      bl #0x8a7b64
008a3a8c  33 68                                            ldr r3, [r6]
008a3a8e  02 68                                            ldr r2, [r0]
008a3a90  9a 42                                            cmp r2, r3
008a3a92  22 d0                                            beq #0x8a3ada
008a3a94  04 f0 66 f8                                      bl #0x8a7b64
008a3a98  01 f0 86 ff                                      bl #0x8a59a8
008a3a9c  04 f0 62 f8                                      bl #0x8a7b64
008a3aa0  05 1c                                            adds r5, r0, #0
008a3aa2  30 68                                            ldr r0, [r6]
008a3aa4  01 f0 c4 fc                                      bl #0x8a5430
008a3aa8  28 60                                            str r0, [r5]
008a3aaa  07 ad                                            add r5, sp, #0x1c
008a3aac  28 1c                                            adds r0, r5, #0
008a3aae  31 1c                                            adds r1, r6, #0
008a3ab0  ff f7 14 fd                                      bl #0x8a34dc
008a3ab4  1b 4b                                            ldr r3, [pc, #0x6c]
008a3ab6  68 69                                            ldr r0, [r5, #0x14]
008a3ab8  2a 69                                            ldr r2, [r5, #0x10]
008a3aba  7b 44                                            add r3, pc
008a3abc  99 69                                            ldr r1, [r3, #0x18]
008a3abe  5b 69                                            ldr r3, [r3, #0x14]
008a3ac0  12 1a                                            subs r2, r2, r0
008a3ac2  5b 1a                                            subs r3, r3, r1
008a3ac4  9c 46                                            mov ip, r3
008a3ac6  00 23                                            movs r3, #0
008a3ac8  99 46                                            mov sb, r3
008a3aca  62 45                                            cmp r2, ip
008a3acc  1e d0                                            beq #0x8a3b0c
008a3ace  28 1c                                            adds r0, r5, #0
008a3ad0  6f f6 6c e7                                      blx #0x3139ac
008a3ad4  4b 46                                            mov r3, sb
008a3ad6  00 2b                                            cmp r3, #0
008a3ad8  0b d0                                            beq #0x8a3af2
008a3ada  42 46                                            mov r2, r8
008a3adc  a3 58                                            ldr r3, [r4, r2]
008a3ade  0d 9a                                            ldr r2, [sp, #0x34]
008a3ae0  38 1c                                            adds r0, r7, #0
008a3ae2  1b 68                                            ldr r3, [r3]
008a3ae4  9a 42                                            cmp r2, r3
008a3ae6  17 d1                                            bne #0x8a3b18
008a3ae8  0f b0                                            add sp, #0x3c
008a3aea  0c bc                                            pop {r2, r3}
008a3aec  90 46                                            mov r8, r2
008a3aee  99 46                                            mov sb, r3
008a3af0  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a3af2  01 ad                                            add r5, sp, #4
008a3af4  28 1c                                            adds r0, r5, #0
008a3af6  31 1c                                            adds r1, r6, #0
008a3af8  ff f7 f0 fc                                      bl #0x8a34dc
008a3afc  69 69                                            ldr r1, [r5, #0x14]
008a3afe  06 20                                            movs r0, #6
008a3b00  6b f6 e0 e0                                      blx #0x30ecc4
008a3b04  28 1c                                            adds r0, r5, #0
008a3b06  6f f6 52 e7                                      blx #0x3139ac
008a3b0a  e6 e7                                            b #0x8a3ada
008a3b0c  6a f6 68 e5                                      blx #0x30e5e0
008a3b10  42 42                                            rsbs r2, r0, #0
008a3b12  42 41                                            adcs r2, r0
008a3b14  91 46                                            mov sb, r2
008a3b16  da e7                                            b #0x8a3ace
008a3b18  6a f6 fa e3                                      blx #0x30e310
; mapping-symbol data/literal pool
008a3b1c  26 10 0f 00 ac 40 00 00 82 13 19 00              .byte 0x26, 0x10, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x82, 0x13, 0x19, 0x00

; FUNCTION 0x008a3b28, declared_size=148, range_size=148, mode=thumb
; class-group: std::locale
; alias: _ZNSt6locale25_M_throw_on_combine_errorERKSs
; demangled: std::locale::_M_throw_on_combine_error(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: thumb
008a3b28  f0 b5                                            push {r4, r5, r6, r7, lr}
008a3b2a  47 46                                            mov r7, r8
008a3b2c  80 b4                                            push {r7}
008a3b2e  1d 4c                                            ldr r4, [pc, #0x74]
008a3b30  1d 4a                                            ldr r2, [pc, #0x74]
008a3b32  1e 49                                            ldr r1, [pc, #0x78]
008a3b34  7c 44                                            add r4, pc
008a3b36  a3 58                                            ldr r3, [r4, r2]
008a3b38  88 b0                                            sub sp, #0x20
008a3b3a  01 ad                                            add r5, sp, #4
008a3b3c  1b 68                                            ldr r3, [r3]
008a3b3e  06 1c                                            adds r6, r0, #0
008a3b40  79 44                                            add r1, pc
008a3b42  90 46                                            mov r8, r2
008a3b44  28 1c                                            adds r0, r5, #0
008a3b46  6a 46                                            mov r2, sp
008a3b48  07 93                                            str r3, [sp, #0x1c]
008a3b4a  70 f6 d0 e2                                      blx #0x3140ec
008a3b4e  18 49                                            ldr r1, [pc, #0x60]
008a3b50  28 1c                                            adds r0, r5, #0
008a3b52  79 44                                            add r1, pc
008a3b54  0a 1d                                            adds r2, r1, #4
008a3b56  6c f6 56 e6                                      blx #0x310804
008a3b5a  77 69                                            ldr r7, [r6, #0x14]
008a3b5c  33 69                                            ldr r3, [r6, #0x10]
008a3b5e  9f 42                                            cmp r7, r3
008a3b60  1a d0                                            beq #0x8a3b98
008a3b62  38 1c                                            adds r0, r7, #0
008a3b64  6a f6 76 e1                                      blx #0x30de54
008a3b68  3a 18                                            adds r2, r7, r0
008a3b6a  39 1c                                            adds r1, r7, #0
008a3b6c  28 1c                                            adds r0, r5, #0
008a3b6e  6c f6 4a e6                                      blx #0x310804
008a3b72  10 49                                            ldr r1, [pc, #0x40]
008a3b74  28 1c                                            adds r0, r5, #0
008a3b76  79 44                                            add r1, pc
008a3b78  ca 1d                                            adds r2, r1, #7
008a3b7a  6c f6 44 e6                                      blx #0x310804
008a3b7e  28 1c                                            adds r0, r5, #0
008a3b80  6f f6 14 e7                                      blx #0x3139ac
008a3b84  42 46                                            mov r2, r8
008a3b86  a3 58                                            ldr r3, [r4, r2]
008a3b88  07 9a                                            ldr r2, [sp, #0x1c]
008a3b8a  1b 68                                            ldr r3, [r3]
008a3b8c  9a 42                                            cmp r2, r3
008a3b8e  07 d1                                            bne #0x8a3ba0
008a3b90  08 b0                                            add sp, #0x20
008a3b92  04 bc                                            pop {r2}
008a3b94  90 46                                            mov r8, r2
008a3b96  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a3b98  07 4f                                            ldr r7, [pc, #0x1c]
008a3b9a  7f 44                                            add r7, pc
008a3b9c  ba 1d                                            adds r2, r7, #6
008a3b9e  e4 e7                                            b #0x8a3b6a
008a3ba0  6a f6 b6 e3                                      blx #0x30e310
; mapping-symbol data/literal pool
008a3ba4  60 0f 0f 00 ac 40 00 00 b8 1c 07 00 be 1c 07 00  .byte 0x60, 0x0f, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xb8, 0x1c, 0x07, 0x00, 0xbe, 0x1c, 0x07, 0x00
008a3bb4  aa 1c 07 00 7e 1c 07 00                          .byte 0xaa, 0x1c, 0x07, 0x00, 0x7e, 0x1c, 0x07, 0x00

; FUNCTION 0x008a3bbc, declared_size=788, range_size=788, mode=thumb
; class-group: std::locale
; alias: _ZNSt6localeC2ERKS_S1_i
; demangled: std::locale::locale(std::locale const&, std::locale const&, int)
; decoder-mode: thumb
008a3bbc  f0 b5                                            push {r4, r5, r6, r7, lr}
008a3bbe  5f 46                                            mov r7, fp
008a3bc0  56 46                                            mov r6, sl
008a3bc2  4d 46                                            mov r5, sb
008a3bc4  44 46                                            mov r4, r8
008a3bc6  f0 b4                                            push {r4, r5, r6, r7}
008a3bc8  91 b0                                            sub sp, #0x44
008a3bca  a2 4c                                            ldr r4, [pc, #0x288]
008a3bcc  01 92                                            str r2, [sp, #4]
008a3bce  a2 4a                                            ldr r2, [pc, #0x288]
008a3bd0  7c 44                                            add r4, pc
008a3bd2  9a 46                                            mov sl, r3
008a3bd4  a3 58                                            ldr r3, [r4, r2]
008a3bd6  00 92                                            str r2, [sp]
008a3bd8  83 46                                            mov fp, r0
008a3bda  1b 68                                            ldr r3, [r3]
008a3bdc  89 46                                            mov sb, r1
008a3bde  09 ae                                            add r6, sp, #0x24
008a3be0  0f 93                                            str r3, [sp, #0x3c]
008a3be2  00 23                                            movs r3, #0
008a3be4  03 60                                            str r3, [r0]
008a3be6  2c 20                                            movs r0, #0x2c
008a3be8  6a f6 50 e6                                      blx #0x30e88c
008a3bec  4b 46                                            mov r3, sb
008a3bee  19 68                                            ldr r1, [r3]
008a3bf0  05 1c                                            adds r5, r0, #0
008a3bf2  04 f0 c7 f8                                      bl #0x8a7d84
008a3bf6  01 9a                                            ldr r2, [sp, #4]
008a3bf8  30 1c                                            adds r0, r6, #0
008a3bfa  49 46                                            mov r1, sb
008a3bfc  17 68                                            ldr r7, [r2]
008a3bfe  ff f7 6d fc                                      bl #0x8a34dc
008a3c02  96 4b                                            ldr r3, [pc, #0x258]
008a3c04  70 69                                            ldr r0, [r6, #0x14]
008a3c06  32 69                                            ldr r2, [r6, #0x10]
008a3c08  7b 44                                            add r3, pc
008a3c0a  99 69                                            ldr r1, [r3, #0x18]
008a3c0c  5b 69                                            ldr r3, [r3, #0x14]
008a3c0e  12 1a                                            subs r2, r2, r0
008a3c10  5b 1a                                            subs r3, r3, r1
008a3c12  9a 42                                            cmp r2, r3
008a3c14  00 d1                                            bne #0x8a3c18
008a3c16  fc e0                                            b #0x8a3e12
008a3c18  03 ab                                            add r3, sp, #0xc
008a3c1a  18 1c                                            adds r0, r3, #0
008a3c1c  01 99                                            ldr r1, [sp, #4]
008a3c1e  98 46                                            mov r8, r3
008a3c20  ff f7 5c fc                                      bl #0x8a34dc
008a3c24  8e 4b                                            ldr r3, [pc, #0x238]
008a3c26  42 46                                            mov r2, r8
008a3c28  50 69                                            ldr r0, [r2, #0x14]
008a3c2a  7b 44                                            add r3, pc
008a3c2c  99 69                                            ldr r1, [r3, #0x18]
008a3c2e  12 69                                            ldr r2, [r2, #0x10]
008a3c30  5b 69                                            ldr r3, [r3, #0x14]
008a3c32  12 1a                                            subs r2, r2, r0
008a3c34  5b 1a                                            subs r3, r3, r1
008a3c36  9a 42                                            cmp r2, r3
008a3c38  00 d1                                            bne #0x8a3c3c
008a3c3a  ff e0                                            b #0x8a3e3c
008a3c3c  40 46                                            mov r0, r8
008a3c3e  6f f6 b6 e6                                      blx #0x3139ac
008a3c42  30 1c                                            adds r0, r6, #0
008a3c44  6f f6 b2 e6                                      blx #0x3139ac
008a3c48  4a 46                                            mov r2, sb
008a3c4a  13 68                                            ldr r3, [r2]
008a3c4c  de 69                                            ldr r6, [r3, #0x1c]
008a3c4e  30 1c                                            adds r0, r6, #0
008a3c50  6a f6 00 e1                                      blx #0x30de54
008a3c54  2b 1c                                            adds r3, r5, #0
008a3c56  08 33                                            adds r3, #8
008a3c58  32 18                                            adds r2, r6, r0
008a3c5a  31 1c                                            adds r1, r6, #0
008a3c5c  18 1c                                            adds r0, r3, #0
008a3c5e  6c f6 c0 e6                                      blx #0x3109e0
008a3c62  53 46                                            mov r3, sl
008a3c64  db 06                                            lsls r3, r3, #0x1b
008a3c66  25 d4                                            bmi #0x8a3cb4
008a3c68  52 46                                            mov r2, sl
008a3c6a  92 06                                            lsls r2, r2, #0x1a
008a3c6c  31 d4                                            bmi #0x8a3cd2
008a3c6e  53 46                                            mov r3, sl
008a3c70  5b 06                                            lsls r3, r3, #0x19
008a3c72  49 d4                                            bmi #0x8a3d08
008a3c74  52 46                                            mov r2, sl
008a3c76  d2 05                                            lsls r2, r2, #0x17
008a3c78  00 d5                                            bpl #0x8a3c7c
008a3c7a  79 e0                                            b #0x8a3d70
008a3c7c  53 46                                            mov r3, sl
008a3c7e  9b 05                                            lsls r3, r3, #0x16
008a3c80  00 d5                                            bpl #0x8a3c84
008a3c82  9d e0                                            b #0x8a3dc0
008a3c84  52 46                                            mov r2, sl
008a3c86  52 05                                            lsls r2, r2, #0x15
008a3c88  00 d5                                            bpl #0x8a3c8c
008a3c8a  b5 e0                                            b #0x8a3df8
008a3c8c  28 1c                                            adds r0, r5, #0
008a3c8e  01 f0 cf fb                                      bl #0x8a5430
008a3c92  5b 46                                            mov r3, fp
008a3c94  18 60                                            str r0, [r3]
008a3c96  00 9a                                            ldr r2, [sp]
008a3c98  58 46                                            mov r0, fp
008a3c9a  a3 58                                            ldr r3, [r4, r2]
008a3c9c  0f 9a                                            ldr r2, [sp, #0x3c]
008a3c9e  1b 68                                            ldr r3, [r3]
008a3ca0  9a 42                                            cmp r2, r3
008a3ca2  00 d0                                            beq #0x8a3ca6
008a3ca4  d3 e0                                            b #0x8a3e4e
008a3ca6  11 b0                                            add sp, #0x44
008a3ca8  3c bc                                            pop {r2, r3, r4, r5}
008a3caa  90 46                                            mov r8, r2
008a3cac  99 46                                            mov sb, r3
008a3cae  a2 46                                            mov sl, r4
008a3cb0  ab 46                                            mov fp, r5
008a3cb2  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a3cb4  6b 4b                                            ldr r3, [pc, #0x1ac]
008a3cb6  28 1c                                            adds r0, r5, #0
008a3cb8  39 1c                                            adds r1, r7, #0
008a3cba  e2 58                                            ldr r2, [r4, r3]
008a3cbc  02 f0 7a fa                                      bl #0x8a61b4
008a3cc0  69 4b                                            ldr r3, [pc, #0x1a4]
008a3cc2  28 1c                                            adds r0, r5, #0
008a3cc4  39 1c                                            adds r1, r7, #0
008a3cc6  e2 58                                            ldr r2, [r4, r3]
008a3cc8  02 f0 74 fa                                      bl #0x8a61b4
008a3ccc  52 46                                            mov r2, sl
008a3cce  92 06                                            lsls r2, r2, #0x1a
008a3cd0  cd d5                                            bpl #0x8a3c6e
008a3cd2  66 4b                                            ldr r3, [pc, #0x198]
008a3cd4  28 1c                                            adds r0, r5, #0
008a3cd6  39 1c                                            adds r1, r7, #0
008a3cd8  e2 58                                            ldr r2, [r4, r3]
008a3cda  02 f0 6b fa                                      bl #0x8a61b4
008a3cde  64 4b                                            ldr r3, [pc, #0x190]
008a3ce0  28 1c                                            adds r0, r5, #0
008a3ce2  39 1c                                            adds r1, r7, #0
008a3ce4  e2 58                                            ldr r2, [r4, r3]
008a3ce6  02 f0 65 fa                                      bl #0x8a61b4
008a3cea  62 4b                                            ldr r3, [pc, #0x188]
008a3cec  28 1c                                            adds r0, r5, #0
008a3cee  39 1c                                            adds r1, r7, #0
008a3cf0  e2 58                                            ldr r2, [r4, r3]
008a3cf2  02 f0 5f fa                                      bl #0x8a61b4
008a3cf6  60 4b                                            ldr r3, [pc, #0x180]
008a3cf8  28 1c                                            adds r0, r5, #0
008a3cfa  39 1c                                            adds r1, r7, #0
008a3cfc  e2 58                                            ldr r2, [r4, r3]
008a3cfe  02 f0 59 fa                                      bl #0x8a61b4
008a3d02  53 46                                            mov r3, sl
008a3d04  5b 06                                            lsls r3, r3, #0x19
008a3d06  b5 d5                                            bpl #0x8a3c74
008a3d08  5c 4b                                            ldr r3, [pc, #0x170]
008a3d0a  28 1c                                            adds r0, r5, #0
008a3d0c  39 1c                                            adds r1, r7, #0
008a3d0e  e2 58                                            ldr r2, [r4, r3]
008a3d10  02 f0 50 fa                                      bl #0x8a61b4
008a3d14  5a 4b                                            ldr r3, [pc, #0x168]
008a3d16  28 1c                                            adds r0, r5, #0
008a3d18  39 1c                                            adds r1, r7, #0
008a3d1a  e2 58                                            ldr r2, [r4, r3]
008a3d1c  02 f0 4a fa                                      bl #0x8a61b4
008a3d20  58 4b                                            ldr r3, [pc, #0x160]
008a3d22  28 1c                                            adds r0, r5, #0
008a3d24  39 1c                                            adds r1, r7, #0
008a3d26  e2 58                                            ldr r2, [r4, r3]
008a3d28  02 f0 44 fa                                      bl #0x8a61b4
008a3d2c  56 4b                                            ldr r3, [pc, #0x158]
008a3d2e  28 1c                                            adds r0, r5, #0
008a3d30  39 1c                                            adds r1, r7, #0
008a3d32  e2 58                                            ldr r2, [r4, r3]
008a3d34  02 f0 3e fa                                      bl #0x8a61b4
008a3d38  54 4b                                            ldr r3, [pc, #0x150]
008a3d3a  28 1c                                            adds r0, r5, #0
008a3d3c  39 1c                                            adds r1, r7, #0
008a3d3e  e2 58                                            ldr r2, [r4, r3]
008a3d40  02 f0 38 fa                                      bl #0x8a61b4
008a3d44  52 4b                                            ldr r3, [pc, #0x148]
008a3d46  28 1c                                            adds r0, r5, #0
008a3d48  39 1c                                            adds r1, r7, #0
008a3d4a  e2 58                                            ldr r2, [r4, r3]
008a3d4c  02 f0 32 fa                                      bl #0x8a61b4
008a3d50  50 4b                                            ldr r3, [pc, #0x140]
008a3d52  28 1c                                            adds r0, r5, #0
008a3d54  39 1c                                            adds r1, r7, #0
008a3d56  e2 58                                            ldr r2, [r4, r3]
008a3d58  02 f0 2c fa                                      bl #0x8a61b4
008a3d5c  4e 4b                                            ldr r3, [pc, #0x138]
008a3d5e  28 1c                                            adds r0, r5, #0
008a3d60  39 1c                                            adds r1, r7, #0
008a3d62  e2 58                                            ldr r2, [r4, r3]
008a3d64  02 f0 26 fa                                      bl #0x8a61b4
008a3d68  52 46                                            mov r2, sl
008a3d6a  d2 05                                            lsls r2, r2, #0x17
008a3d6c  00 d4                                            bmi #0x8a3d70
008a3d6e  85 e7                                            b #0x8a3c7c
008a3d70  4a 4b                                            ldr r3, [pc, #0x128]
008a3d72  28 1c                                            adds r0, r5, #0
008a3d74  39 1c                                            adds r1, r7, #0
008a3d76  e2 58                                            ldr r2, [r4, r3]
008a3d78  02 f0 1c fa                                      bl #0x8a61b4
008a3d7c  48 4b                                            ldr r3, [pc, #0x120]
008a3d7e  28 1c                                            adds r0, r5, #0
008a3d80  39 1c                                            adds r1, r7, #0
008a3d82  e2 58                                            ldr r2, [r4, r3]
008a3d84  02 f0 16 fa                                      bl #0x8a61b4
008a3d88  46 4b                                            ldr r3, [pc, #0x118]
008a3d8a  28 1c                                            adds r0, r5, #0
008a3d8c  39 1c                                            adds r1, r7, #0
008a3d8e  e2 58                                            ldr r2, [r4, r3]
008a3d90  02 f0 10 fa                                      bl #0x8a61b4
008a3d94  44 4b                                            ldr r3, [pc, #0x110]
008a3d96  28 1c                                            adds r0, r5, #0
008a3d98  39 1c                                            adds r1, r7, #0
008a3d9a  e2 58                                            ldr r2, [r4, r3]
008a3d9c  02 f0 0a fa                                      bl #0x8a61b4
008a3da0  42 4b                                            ldr r3, [pc, #0x108]
008a3da2  28 1c                                            adds r0, r5, #0
008a3da4  39 1c                                            adds r1, r7, #0
008a3da6  e2 58                                            ldr r2, [r4, r3]
008a3da8  02 f0 04 fa                                      bl #0x8a61b4
008a3dac  40 4b                                            ldr r3, [pc, #0x100]
008a3dae  28 1c                                            adds r0, r5, #0
008a3db0  39 1c                                            adds r1, r7, #0
008a3db2  e2 58                                            ldr r2, [r4, r3]
008a3db4  02 f0 fe f9                                      bl #0x8a61b4
008a3db8  53 46                                            mov r3, sl
008a3dba  9b 05                                            lsls r3, r3, #0x16
008a3dbc  00 d4                                            bmi #0x8a3dc0
008a3dbe  61 e7                                            b #0x8a3c84
008a3dc0  3c 4b                                            ldr r3, [pc, #0xf0]
008a3dc2  28 1c                                            adds r0, r5, #0
008a3dc4  39 1c                                            adds r1, r7, #0
008a3dc6  e2 58                                            ldr r2, [r4, r3]
008a3dc8  02 f0 f4 f9                                      bl #0x8a61b4
008a3dcc  3a 4b                                            ldr r3, [pc, #0xe8]
008a3dce  28 1c                                            adds r0, r5, #0
008a3dd0  39 1c                                            adds r1, r7, #0
008a3dd2  e2 58                                            ldr r2, [r4, r3]
008a3dd4  02 f0 ee f9                                      bl #0x8a61b4
008a3dd8  38 4b                                            ldr r3, [pc, #0xe0]
008a3dda  28 1c                                            adds r0, r5, #0
008a3ddc  39 1c                                            adds r1, r7, #0
008a3dde  e2 58                                            ldr r2, [r4, r3]
008a3de0  02 f0 e8 f9                                      bl #0x8a61b4
008a3de4  36 4b                                            ldr r3, [pc, #0xd8]
008a3de6  28 1c                                            adds r0, r5, #0
008a3de8  39 1c                                            adds r1, r7, #0
008a3dea  e2 58                                            ldr r2, [r4, r3]
008a3dec  02 f0 e2 f9                                      bl #0x8a61b4
008a3df0  52 46                                            mov r2, sl
008a3df2  52 05                                            lsls r2, r2, #0x15
008a3df4  00 d4                                            bmi #0x8a3df8
008a3df6  49 e7                                            b #0x8a3c8c
008a3df8  32 4b                                            ldr r3, [pc, #0xc8]
008a3dfa  28 1c                                            adds r0, r5, #0
008a3dfc  39 1c                                            adds r1, r7, #0
008a3dfe  e2 58                                            ldr r2, [r4, r3]
008a3e00  02 f0 d8 f9                                      bl #0x8a61b4
008a3e04  30 4b                                            ldr r3, [pc, #0xc0]
008a3e06  28 1c                                            adds r0, r5, #0
008a3e08  39 1c                                            adds r1, r7, #0
008a3e0a  e2 58                                            ldr r2, [r4, r3]
008a3e0c  02 f0 d2 f9                                      bl #0x8a61b4
008a3e10  3c e7                                            b #0x8a3c8c
008a3e12  6a f6 e6 e3                                      blx #0x30e5e0
008a3e16  00 28                                            cmp r0, #0
008a3e18  00 d0                                            beq #0x8a3e1c
008a3e1a  fd e6                                            b #0x8a3c18
008a3e1c  30 1c                                            adds r0, r6, #0
008a3e1e  6f f6 c6 e5                                      blx #0x3139ac
008a3e22  2a 4b                                            ldr r3, [pc, #0xa8]
008a3e24  28 1c                                            adds r0, r5, #0
008a3e26  08 30                                            adds r0, #8
008a3e28  7b 44                                            add r3, pc
008a3e2a  1a 1d                                            adds r2, r3, #4
008a3e2c  90 42                                            cmp r0, r2
008a3e2e  00 d1                                            bne #0x8a3e32
008a3e30  17 e7                                            b #0x8a3c62
008a3e32  99 69                                            ldr r1, [r3, #0x18]
008a3e34  5a 69                                            ldr r2, [r3, #0x14]
008a3e36  6c f6 d4 e5                                      blx #0x3109e0
008a3e3a  12 e7                                            b #0x8a3c62
008a3e3c  6a f6 d0 e3                                      blx #0x30e5e0
008a3e40  00 28                                            cmp r0, #0
008a3e42  00 d0                                            beq #0x8a3e46
008a3e44  fa e6                                            b #0x8a3c3c
008a3e46  40 46                                            mov r0, r8
008a3e48  6f f6 b0 e5                                      blx #0x3139ac
008a3e4c  e6 e7                                            b #0x8a3e1c
008a3e4e  6a f6 60 e2                                      blx #0x30e310
008a3e52  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a3e54  c4 0e 0f 00 ac 40 00 00 34 12 19 00 12 12 19 00  .byte 0xc4, 0x0e, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x34, 0x12, 0x19, 0x00, 0x12, 0x12, 0x19, 0x00
008a3e64  4c 22 00 00 e4 22 00 00 e4 1c 00 00 98 41 00 00  .byte 0x4c, 0x22, 0x00, 0x00, 0xe4, 0x22, 0x00, 0x00, 0xe4, 0x1c, 0x00, 0x00, 0x98, 0x41, 0x00, 0x00
008a3e74  44 1e 00 00 2c 15 00 00 80 2c 00 00 30 0f 00 00  .byte 0x44, 0x1e, 0x00, 0x00, 0x2c, 0x15, 0x00, 0x00, 0x80, 0x2c, 0x00, 0x00, 0x30, 0x0f, 0x00, 0x00
008a3e84  e8 1d 00 00 1c 35 00 00 1c 2d 00 00 d0 27 00 00  .byte 0xe8, 0x1d, 0x00, 0x00, 0x1c, 0x35, 0x00, 0x00, 0x1c, 0x2d, 0x00, 0x00, 0xd0, 0x27, 0x00, 0x00
008a3e94  ec 1e 00 00 a0 39 00 00 e0 1f 00 00 70 36 00 00  .byte 0xec, 0x1e, 0x00, 0x00, 0xa0, 0x39, 0x00, 0x00, 0xe0, 0x1f, 0x00, 0x00, 0x70, 0x36, 0x00, 0x00
008a3ea4  f8 0c 00 00 58 19 00 00 68 17 00 00 d8 34 00 00  .byte 0xf8, 0x0c, 0x00, 0x00, 0x58, 0x19, 0x00, 0x00, 0x68, 0x17, 0x00, 0x00, 0xd8, 0x34, 0x00, 0x00
008a3eb4  40 3d 00 00 58 11 00 00 74 2b 00 00 54 2b 00 00  .byte 0x40, 0x3d, 0x00, 0x00, 0x58, 0x11, 0x00, 0x00, 0x74, 0x2b, 0x00, 0x00, 0x54, 0x2b, 0x00, 0x00
008a3ec4  3c 46 00 00 2c 22 00 00 14 10 19 00              .byte 0x3c, 0x46, 0x00, 0x00, 0x2c, 0x22, 0x00, 0x00, 0x14, 0x10, 0x19, 0x00

; FUNCTION 0x008a3ed0, declared_size=788, range_size=788, mode=thumb
; class-group: std::locale
; alias: _ZNSt6localeC1ERKS_S1_i
; demangled: std::locale::locale(std::locale const&, std::locale const&, int)
; decoder-mode: thumb
008a3ed0  f0 b5                                            push {r4, r5, r6, r7, lr}
008a3ed2  5f 46                                            mov r7, fp
008a3ed4  56 46                                            mov r6, sl
008a3ed6  4d 46                                            mov r5, sb
008a3ed8  44 46                                            mov r4, r8
008a3eda  f0 b4                                            push {r4, r5, r6, r7}
008a3edc  91 b0                                            sub sp, #0x44
008a3ede  a2 4c                                            ldr r4, [pc, #0x288]
008a3ee0  01 92                                            str r2, [sp, #4]
008a3ee2  a2 4a                                            ldr r2, [pc, #0x288]
008a3ee4  7c 44                                            add r4, pc
008a3ee6  9a 46                                            mov sl, r3
008a3ee8  a3 58                                            ldr r3, [r4, r2]
008a3eea  00 92                                            str r2, [sp]
008a3eec  83 46                                            mov fp, r0
008a3eee  1b 68                                            ldr r3, [r3]
008a3ef0  89 46                                            mov sb, r1
008a3ef2  09 ae                                            add r6, sp, #0x24
008a3ef4  0f 93                                            str r3, [sp, #0x3c]
008a3ef6  00 23                                            movs r3, #0
008a3ef8  03 60                                            str r3, [r0]
008a3efa  2c 20                                            movs r0, #0x2c
008a3efc  6a f6 c6 e4                                      blx #0x30e88c
008a3f00  4b 46                                            mov r3, sb
008a3f02  19 68                                            ldr r1, [r3]
008a3f04  05 1c                                            adds r5, r0, #0
008a3f06  03 f0 3d ff                                      bl #0x8a7d84
008a3f0a  01 9a                                            ldr r2, [sp, #4]
008a3f0c  30 1c                                            adds r0, r6, #0
008a3f0e  49 46                                            mov r1, sb
008a3f10  17 68                                            ldr r7, [r2]
008a3f12  ff f7 e3 fa                                      bl #0x8a34dc
008a3f16  96 4b                                            ldr r3, [pc, #0x258]
008a3f18  70 69                                            ldr r0, [r6, #0x14]
008a3f1a  32 69                                            ldr r2, [r6, #0x10]
008a3f1c  7b 44                                            add r3, pc
008a3f1e  99 69                                            ldr r1, [r3, #0x18]
008a3f20  5b 69                                            ldr r3, [r3, #0x14]
008a3f22  12 1a                                            subs r2, r2, r0
008a3f24  5b 1a                                            subs r3, r3, r1
008a3f26  9a 42                                            cmp r2, r3
008a3f28  00 d1                                            bne #0x8a3f2c
008a3f2a  fc e0                                            b #0x8a4126
008a3f2c  03 ab                                            add r3, sp, #0xc
008a3f2e  18 1c                                            adds r0, r3, #0
008a3f30  01 99                                            ldr r1, [sp, #4]
008a3f32  98 46                                            mov r8, r3
008a3f34  ff f7 d2 fa                                      bl #0x8a34dc
008a3f38  8e 4b                                            ldr r3, [pc, #0x238]
008a3f3a  42 46                                            mov r2, r8
008a3f3c  50 69                                            ldr r0, [r2, #0x14]
008a3f3e  7b 44                                            add r3, pc
008a3f40  99 69                                            ldr r1, [r3, #0x18]
008a3f42  12 69                                            ldr r2, [r2, #0x10]
008a3f44  5b 69                                            ldr r3, [r3, #0x14]
008a3f46  12 1a                                            subs r2, r2, r0
008a3f48  5b 1a                                            subs r3, r3, r1
008a3f4a  9a 42                                            cmp r2, r3
008a3f4c  00 d1                                            bne #0x8a3f50
008a3f4e  ff e0                                            b #0x8a4150
008a3f50  40 46                                            mov r0, r8
008a3f52  6f f6 2c e5                                      blx #0x3139ac
008a3f56  30 1c                                            adds r0, r6, #0
008a3f58  6f f6 28 e5                                      blx #0x3139ac
008a3f5c  4a 46                                            mov r2, sb
008a3f5e  13 68                                            ldr r3, [r2]
008a3f60  de 69                                            ldr r6, [r3, #0x1c]
008a3f62  30 1c                                            adds r0, r6, #0
008a3f64  69 f6 76 e7                                      blx #0x30de54
008a3f68  2b 1c                                            adds r3, r5, #0
008a3f6a  08 33                                            adds r3, #8
008a3f6c  32 18                                            adds r2, r6, r0
008a3f6e  31 1c                                            adds r1, r6, #0
008a3f70  18 1c                                            adds r0, r3, #0
008a3f72  6c f6 36 e5                                      blx #0x3109e0
008a3f76  53 46                                            mov r3, sl
008a3f78  db 06                                            lsls r3, r3, #0x1b
008a3f7a  25 d4                                            bmi #0x8a3fc8
008a3f7c  52 46                                            mov r2, sl
008a3f7e  92 06                                            lsls r2, r2, #0x1a
008a3f80  31 d4                                            bmi #0x8a3fe6
008a3f82  53 46                                            mov r3, sl
008a3f84  5b 06                                            lsls r3, r3, #0x19
008a3f86  49 d4                                            bmi #0x8a401c
008a3f88  52 46                                            mov r2, sl
008a3f8a  d2 05                                            lsls r2, r2, #0x17
008a3f8c  00 d5                                            bpl #0x8a3f90
008a3f8e  79 e0                                            b #0x8a4084
008a3f90  53 46                                            mov r3, sl
008a3f92  9b 05                                            lsls r3, r3, #0x16
008a3f94  00 d5                                            bpl #0x8a3f98
008a3f96  9d e0                                            b #0x8a40d4
008a3f98  52 46                                            mov r2, sl
008a3f9a  52 05                                            lsls r2, r2, #0x15
008a3f9c  00 d5                                            bpl #0x8a3fa0
008a3f9e  b5 e0                                            b #0x8a410c
008a3fa0  28 1c                                            adds r0, r5, #0
008a3fa2  01 f0 45 fa                                      bl #0x8a5430
008a3fa6  5b 46                                            mov r3, fp
008a3fa8  18 60                                            str r0, [r3]
008a3faa  00 9a                                            ldr r2, [sp]
008a3fac  58 46                                            mov r0, fp
008a3fae  a3 58                                            ldr r3, [r4, r2]
008a3fb0  0f 9a                                            ldr r2, [sp, #0x3c]
008a3fb2  1b 68                                            ldr r3, [r3]
008a3fb4  9a 42                                            cmp r2, r3
008a3fb6  00 d0                                            beq #0x8a3fba
008a3fb8  d3 e0                                            b #0x8a4162
008a3fba  11 b0                                            add sp, #0x44
008a3fbc  3c bc                                            pop {r2, r3, r4, r5}
008a3fbe  90 46                                            mov r8, r2
008a3fc0  99 46                                            mov sb, r3
008a3fc2  a2 46                                            mov sl, r4
008a3fc4  ab 46                                            mov fp, r5
008a3fc6  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a3fc8  6b 4b                                            ldr r3, [pc, #0x1ac]
008a3fca  28 1c                                            adds r0, r5, #0
008a3fcc  39 1c                                            adds r1, r7, #0
008a3fce  e2 58                                            ldr r2, [r4, r3]
008a3fd0  02 f0 f0 f8                                      bl #0x8a61b4
008a3fd4  69 4b                                            ldr r3, [pc, #0x1a4]
008a3fd6  28 1c                                            adds r0, r5, #0
008a3fd8  39 1c                                            adds r1, r7, #0
008a3fda  e2 58                                            ldr r2, [r4, r3]
008a3fdc  02 f0 ea f8                                      bl #0x8a61b4
008a3fe0  52 46                                            mov r2, sl
008a3fe2  92 06                                            lsls r2, r2, #0x1a
008a3fe4  cd d5                                            bpl #0x8a3f82
008a3fe6  66 4b                                            ldr r3, [pc, #0x198]
008a3fe8  28 1c                                            adds r0, r5, #0
008a3fea  39 1c                                            adds r1, r7, #0
008a3fec  e2 58                                            ldr r2, [r4, r3]
008a3fee  02 f0 e1 f8                                      bl #0x8a61b4
008a3ff2  64 4b                                            ldr r3, [pc, #0x190]
008a3ff4  28 1c                                            adds r0, r5, #0
008a3ff6  39 1c                                            adds r1, r7, #0
008a3ff8  e2 58                                            ldr r2, [r4, r3]
008a3ffa  02 f0 db f8                                      bl #0x8a61b4
008a3ffe  62 4b                                            ldr r3, [pc, #0x188]
008a4000  28 1c                                            adds r0, r5, #0
008a4002  39 1c                                            adds r1, r7, #0
008a4004  e2 58                                            ldr r2, [r4, r3]
008a4006  02 f0 d5 f8                                      bl #0x8a61b4
008a400a  60 4b                                            ldr r3, [pc, #0x180]
008a400c  28 1c                                            adds r0, r5, #0
008a400e  39 1c                                            adds r1, r7, #0
008a4010  e2 58                                            ldr r2, [r4, r3]
008a4012  02 f0 cf f8                                      bl #0x8a61b4
008a4016  53 46                                            mov r3, sl
008a4018  5b 06                                            lsls r3, r3, #0x19
008a401a  b5 d5                                            bpl #0x8a3f88
008a401c  5c 4b                                            ldr r3, [pc, #0x170]
008a401e  28 1c                                            adds r0, r5, #0
008a4020  39 1c                                            adds r1, r7, #0
008a4022  e2 58                                            ldr r2, [r4, r3]
008a4024  02 f0 c6 f8                                      bl #0x8a61b4
008a4028  5a 4b                                            ldr r3, [pc, #0x168]
008a402a  28 1c                                            adds r0, r5, #0
008a402c  39 1c                                            adds r1, r7, #0
008a402e  e2 58                                            ldr r2, [r4, r3]
008a4030  02 f0 c0 f8                                      bl #0x8a61b4
008a4034  58 4b                                            ldr r3, [pc, #0x160]
008a4036  28 1c                                            adds r0, r5, #0
008a4038  39 1c                                            adds r1, r7, #0
008a403a  e2 58                                            ldr r2, [r4, r3]
008a403c  02 f0 ba f8                                      bl #0x8a61b4
008a4040  56 4b                                            ldr r3, [pc, #0x158]
008a4042  28 1c                                            adds r0, r5, #0
008a4044  39 1c                                            adds r1, r7, #0
008a4046  e2 58                                            ldr r2, [r4, r3]
008a4048  02 f0 b4 f8                                      bl #0x8a61b4
008a404c  54 4b                                            ldr r3, [pc, #0x150]
008a404e  28 1c                                            adds r0, r5, #0
008a4050  39 1c                                            adds r1, r7, #0
008a4052  e2 58                                            ldr r2, [r4, r3]
008a4054  02 f0 ae f8                                      bl #0x8a61b4
008a4058  52 4b                                            ldr r3, [pc, #0x148]
008a405a  28 1c                                            adds r0, r5, #0
008a405c  39 1c                                            adds r1, r7, #0
008a405e  e2 58                                            ldr r2, [r4, r3]
008a4060  02 f0 a8 f8                                      bl #0x8a61b4
008a4064  50 4b                                            ldr r3, [pc, #0x140]
008a4066  28 1c                                            adds r0, r5, #0
008a4068  39 1c                                            adds r1, r7, #0
008a406a  e2 58                                            ldr r2, [r4, r3]
008a406c  02 f0 a2 f8                                      bl #0x8a61b4
008a4070  4e 4b                                            ldr r3, [pc, #0x138]
008a4072  28 1c                                            adds r0, r5, #0
008a4074  39 1c                                            adds r1, r7, #0
008a4076  e2 58                                            ldr r2, [r4, r3]
008a4078  02 f0 9c f8                                      bl #0x8a61b4
008a407c  52 46                                            mov r2, sl
008a407e  d2 05                                            lsls r2, r2, #0x17
008a4080  00 d4                                            bmi #0x8a4084
008a4082  85 e7                                            b #0x8a3f90
008a4084  4a 4b                                            ldr r3, [pc, #0x128]
008a4086  28 1c                                            adds r0, r5, #0
008a4088  39 1c                                            adds r1, r7, #0
008a408a  e2 58                                            ldr r2, [r4, r3]
008a408c  02 f0 92 f8                                      bl #0x8a61b4
008a4090  48 4b                                            ldr r3, [pc, #0x120]
008a4092  28 1c                                            adds r0, r5, #0
008a4094  39 1c                                            adds r1, r7, #0
008a4096  e2 58                                            ldr r2, [r4, r3]
008a4098  02 f0 8c f8                                      bl #0x8a61b4
008a409c  46 4b                                            ldr r3, [pc, #0x118]
008a409e  28 1c                                            adds r0, r5, #0
008a40a0  39 1c                                            adds r1, r7, #0
008a40a2  e2 58                                            ldr r2, [r4, r3]
008a40a4  02 f0 86 f8                                      bl #0x8a61b4
008a40a8  44 4b                                            ldr r3, [pc, #0x110]
008a40aa  28 1c                                            adds r0, r5, #0
008a40ac  39 1c                                            adds r1, r7, #0
008a40ae  e2 58                                            ldr r2, [r4, r3]
008a40b0  02 f0 80 f8                                      bl #0x8a61b4
008a40b4  42 4b                                            ldr r3, [pc, #0x108]
008a40b6  28 1c                                            adds r0, r5, #0
008a40b8  39 1c                                            adds r1, r7, #0
008a40ba  e2 58                                            ldr r2, [r4, r3]
008a40bc  02 f0 7a f8                                      bl #0x8a61b4
008a40c0  40 4b                                            ldr r3, [pc, #0x100]
008a40c2  28 1c                                            adds r0, r5, #0
008a40c4  39 1c                                            adds r1, r7, #0
008a40c6  e2 58                                            ldr r2, [r4, r3]
008a40c8  02 f0 74 f8                                      bl #0x8a61b4
008a40cc  53 46                                            mov r3, sl
008a40ce  9b 05                                            lsls r3, r3, #0x16
008a40d0  00 d4                                            bmi #0x8a40d4
008a40d2  61 e7                                            b #0x8a3f98
008a40d4  3c 4b                                            ldr r3, [pc, #0xf0]
008a40d6  28 1c                                            adds r0, r5, #0
008a40d8  39 1c                                            adds r1, r7, #0
008a40da  e2 58                                            ldr r2, [r4, r3]
008a40dc  02 f0 6a f8                                      bl #0x8a61b4
008a40e0  3a 4b                                            ldr r3, [pc, #0xe8]
008a40e2  28 1c                                            adds r0, r5, #0
008a40e4  39 1c                                            adds r1, r7, #0
008a40e6  e2 58                                            ldr r2, [r4, r3]
008a40e8  02 f0 64 f8                                      bl #0x8a61b4
008a40ec  38 4b                                            ldr r3, [pc, #0xe0]
008a40ee  28 1c                                            adds r0, r5, #0
008a40f0  39 1c                                            adds r1, r7, #0
008a40f2  e2 58                                            ldr r2, [r4, r3]
008a40f4  02 f0 5e f8                                      bl #0x8a61b4
008a40f8  36 4b                                            ldr r3, [pc, #0xd8]
008a40fa  28 1c                                            adds r0, r5, #0
008a40fc  39 1c                                            adds r1, r7, #0
008a40fe  e2 58                                            ldr r2, [r4, r3]
008a4100  02 f0 58 f8                                      bl #0x8a61b4
008a4104  52 46                                            mov r2, sl
008a4106  52 05                                            lsls r2, r2, #0x15
008a4108  00 d4                                            bmi #0x8a410c
008a410a  49 e7                                            b #0x8a3fa0
008a410c  32 4b                                            ldr r3, [pc, #0xc8]
008a410e  28 1c                                            adds r0, r5, #0
008a4110  39 1c                                            adds r1, r7, #0
008a4112  e2 58                                            ldr r2, [r4, r3]
008a4114  02 f0 4e f8                                      bl #0x8a61b4
008a4118  30 4b                                            ldr r3, [pc, #0xc0]
008a411a  28 1c                                            adds r0, r5, #0
008a411c  39 1c                                            adds r1, r7, #0
008a411e  e2 58                                            ldr r2, [r4, r3]
008a4120  02 f0 48 f8                                      bl #0x8a61b4
008a4124  3c e7                                            b #0x8a3fa0
008a4126  6a f6 5c e2                                      blx #0x30e5e0
008a412a  00 28                                            cmp r0, #0
008a412c  00 d0                                            beq #0x8a4130
008a412e  fd e6                                            b #0x8a3f2c
008a4130  30 1c                                            adds r0, r6, #0
008a4132  6f f6 3c e4                                      blx #0x3139ac
008a4136  2a 4b                                            ldr r3, [pc, #0xa8]
008a4138  28 1c                                            adds r0, r5, #0
008a413a  08 30                                            adds r0, #8
008a413c  7b 44                                            add r3, pc
008a413e  1a 1d                                            adds r2, r3, #4
008a4140  90 42                                            cmp r0, r2
008a4142  00 d1                                            bne #0x8a4146
008a4144  17 e7                                            b #0x8a3f76
008a4146  99 69                                            ldr r1, [r3, #0x18]
008a4148  5a 69                                            ldr r2, [r3, #0x14]
008a414a  6c f6 4a e4                                      blx #0x3109e0
008a414e  12 e7                                            b #0x8a3f76
008a4150  6a f6 46 e2                                      blx #0x30e5e0
008a4154  00 28                                            cmp r0, #0
008a4156  00 d0                                            beq #0x8a415a
008a4158  fa e6                                            b #0x8a3f50
008a415a  40 46                                            mov r0, r8
008a415c  6f f6 26 e4                                      blx #0x3139ac
008a4160  e6 e7                                            b #0x8a4130
008a4162  6a f6 d6 e0                                      blx #0x30e310
008a4166  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a4168  b0 0b 0f 00 ac 40 00 00 20 0f 19 00 fe 0e 19 00  .byte 0xb0, 0x0b, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x20, 0x0f, 0x19, 0x00, 0xfe, 0x0e, 0x19, 0x00
008a4178  4c 22 00 00 e4 22 00 00 e4 1c 00 00 98 41 00 00  .byte 0x4c, 0x22, 0x00, 0x00, 0xe4, 0x22, 0x00, 0x00, 0xe4, 0x1c, 0x00, 0x00, 0x98, 0x41, 0x00, 0x00
008a4188  44 1e 00 00 2c 15 00 00 80 2c 00 00 30 0f 00 00  .byte 0x44, 0x1e, 0x00, 0x00, 0x2c, 0x15, 0x00, 0x00, 0x80, 0x2c, 0x00, 0x00, 0x30, 0x0f, 0x00, 0x00
008a4198  e8 1d 00 00 1c 35 00 00 1c 2d 00 00 d0 27 00 00  .byte 0xe8, 0x1d, 0x00, 0x00, 0x1c, 0x35, 0x00, 0x00, 0x1c, 0x2d, 0x00, 0x00, 0xd0, 0x27, 0x00, 0x00
008a41a8  ec 1e 00 00 a0 39 00 00 e0 1f 00 00 70 36 00 00  .byte 0xec, 0x1e, 0x00, 0x00, 0xa0, 0x39, 0x00, 0x00, 0xe0, 0x1f, 0x00, 0x00, 0x70, 0x36, 0x00, 0x00
008a41b8  f8 0c 00 00 58 19 00 00 68 17 00 00 d8 34 00 00  .byte 0xf8, 0x0c, 0x00, 0x00, 0x58, 0x19, 0x00, 0x00, 0x68, 0x17, 0x00, 0x00, 0xd8, 0x34, 0x00, 0x00
008a41c8  40 3d 00 00 58 11 00 00 74 2b 00 00 54 2b 00 00  .byte 0x40, 0x3d, 0x00, 0x00, 0x58, 0x11, 0x00, 0x00, 0x74, 0x2b, 0x00, 0x00, 0x54, 0x2b, 0x00, 0x00
008a41d8  3c 46 00 00 2c 22 00 00 00 0d 19 00              .byte 0x3c, 0x46, 0x00, 0x00, 0x2c, 0x22, 0x00, 0x00, 0x00, 0x0d, 0x19, 0x00

; FUNCTION 0x008a4568, declared_size=308, range_size=308, mode=thumb
; class-group: std::locale
; alias: _ZNSt6localeC1ERKS_PKci
; demangled: std::locale::locale(std::locale const&, char const*, int)
; decoder-mode: thumb
008a4568  f0 b5                                            push {r4, r5, r6, r7, lr}
008a456a  57 46                                            mov r7, sl
008a456c  4e 46                                            mov r6, sb
008a456e  45 46                                            mov r5, r8
008a4570  e0 b4                                            push {r5, r6, r7}
008a4572  44 4f                                            ldr r7, [pc, #0x110]
008a4574  44 4c                                            ldr r4, [pc, #0x110]
008a4576  0e 1c                                            adds r6, r1, #0
008a4578  44 49                                            ldr r1, [pc, #0x110]
008a457a  7f 44                                            add r7, pc
008a457c  a5 44                                            add sp, r4
008a457e  1c 1c                                            adds r4, r3, #0
008a4580  7b 58                                            ldr r3, [r7, r1]
008a4582  15 1c                                            adds r5, r2, #0
008a4584  42 4a                                            ldr r2, [pc, #0x108]
008a4586  1b 68                                            ldr r3, [r3]
008a4588  80 46                                            mov r8, r0
008a458a  6a 44                                            add r2, sp, r2
008a458c  13 60                                            str r3, [r2]
008a458e  00 23                                            movs r3, #0
008a4590  8a 46                                            mov sl, r1
008a4592  03 60                                            str r3, [r0]
008a4594  00 2d                                            cmp r5, #0
008a4596  00 d1                                            bne #0x8a459a
008a4598  6f e0                                            b #0x8a467a
008a459a  2c 20                                            movs r0, #0x2c
008a459c  6a f6 76 e1                                      blx #0x30e88c
008a45a0  31 68                                            ldr r1, [r6]
008a45a2  81 46                                            mov sb, r0
008a45a4  03 f0 ee fb                                      bl #0x8a7d84
008a45a8  0c 95                                            str r5, [sp, #0x30]
008a45aa  0b 95                                            str r5, [sp, #0x2c]
008a45ac  0a 95                                            str r5, [sp, #0x28]
008a45ae  09 95                                            str r5, [sp, #0x24]
008a45b0  08 95                                            str r5, [sp, #0x20]
008a45b2  07 95                                            str r5, [sp, #0x1c]
008a45b4  00 23                                            movs r3, #0
008a45b6  a1 06                                            lsls r1, r4, #0x1a
008a45b8  2f d4                                            bmi #0x8a461a
008a45ba  e2 05                                            lsls r2, r4, #0x17
008a45bc  36 d4                                            bmi #0x8a462c
008a45be  a1 05                                            lsls r1, r4, #0x16
008a45c0  3d d4                                            bmi #0x8a463e
008a45c2  e2 06                                            lsls r2, r4, #0x1b
008a45c4  43 d4                                            bmi #0x8a464e
008a45c6  61 06                                            lsls r1, r4, #0x19
008a45c8  49 d4                                            bmi #0x8a465e
008a45ca  62 05                                            lsls r2, r4, #0x15
008a45cc  4f d4                                            bmi #0x8a466e
008a45ce  33 68                                            ldr r3, [r6]
008a45d0  0c 9a                                            ldr r2, [sp, #0x30]
008a45d2  48 46                                            mov r0, sb
008a45d4  d9 69                                            ldr r1, [r3, #0x1c]
008a45d6  0b 9b                                            ldr r3, [sp, #0x2c]
008a45d8  04 94                                            str r4, [sp, #0x10]
008a45da  00 93                                            str r3, [sp]
008a45dc  09 9b                                            ldr r3, [sp, #0x24]
008a45de  01 93                                            str r3, [sp, #4]
008a45e0  08 9b                                            ldr r3, [sp, #0x20]
008a45e2  02 93                                            str r3, [sp, #8]
008a45e4  07 9b                                            ldr r3, [sp, #0x1c]
008a45e6  03 93                                            str r3, [sp, #0xc]
008a45e8  0a 9b                                            ldr r3, [sp, #0x28]
008a45ea  ff f7 fb fd                                      bl #0x8a41e4
008a45ee  48 46                                            mov r0, sb
008a45f0  00 f0 1e ff                                      bl #0x8a5430
008a45f4  43 46                                            mov r3, r8
008a45f6  51 46                                            mov r1, sl
008a45f8  18 60                                            str r0, [r3]
008a45fa  7b 58                                            ldr r3, [r7, r1]
008a45fc  24 49                                            ldr r1, [pc, #0x90]
008a45fe  40 46                                            mov r0, r8
008a4600  69 44                                            add r1, sp, r1
008a4602  0a 68                                            ldr r2, [r1]
008a4604  1b 68                                            ldr r3, [r3]
008a4606  9a 42                                            cmp r2, r3
008a4608  3a d1                                            bne #0x8a4680
008a460a  c7 23                                            movs r3, #0xc7
008a460c  db 00                                            lsls r3, r3, #3
008a460e  9d 44                                            add sp, r3
008a4610  1c bc                                            pop {r2, r3, r4}
008a4612  90 46                                            mov r8, r2
008a4614  99 46                                            mov sb, r3
008a4616  a2 46                                            mov sl, r4
008a4618  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a461a  1e 4a                                            ldr r2, [pc, #0x78]
008a461c  48 46                                            mov r0, sb
008a461e  0c a9                                            add r1, sp, #0x30
008a4620  6a 44                                            add r2, sp, r2
008a4622  02 f0 f3 f9                                      bl #0x8a6a0c
008a4626  03 1c                                            adds r3, r0, #0
008a4628  e2 05                                            lsls r2, r4, #0x17
008a462a  c8 d5                                            bpl #0x8a45be
008a462c  1a 4a                                            ldr r2, [pc, #0x68]
008a462e  48 46                                            mov r0, sb
008a4630  0b a9                                            add r1, sp, #0x2c
008a4632  6a 44                                            add r2, sp, r2
008a4634  02 f0 26 f9                                      bl #0x8a6884
008a4638  03 1c                                            adds r3, r0, #0
008a463a  a1 05                                            lsls r1, r4, #0x16
008a463c  c1 d5                                            bpl #0x8a45c2
008a463e  48 46                                            mov r0, sb
008a4640  0a a9                                            add r1, sp, #0x28
008a4642  cd aa                                            add r2, sp, #0x334
008a4644  02 f0 28 f8                                      bl #0x8a6698
008a4648  03 1c                                            adds r3, r0, #0
008a464a  e2 06                                            lsls r2, r4, #0x1b
008a464c  bb d5                                            bpl #0x8a45c6
008a464e  48 46                                            mov r0, sb
008a4650  09 a9                                            add r1, sp, #0x24
008a4652  8d aa                                            add r2, sp, #0x234
008a4654  01 f0 72 ff                                      bl #0x8a653c
008a4658  03 1c                                            adds r3, r0, #0
008a465a  61 06                                            lsls r1, r4, #0x19
008a465c  b5 d5                                            bpl #0x8a45ca
008a465e  48 46                                            mov r0, sb
008a4660  08 a9                                            add r1, sp, #0x20
008a4662  4d aa                                            add r2, sp, #0x134
008a4664  01 f0 44 fe                                      bl #0x8a62f0
008a4668  03 1c                                            adds r3, r0, #0
008a466a  62 05                                            lsls r2, r4, #0x15
008a466c  af d5                                            bpl #0x8a45ce
008a466e  48 46                                            mov r0, sb
008a4670  07 a9                                            add r1, sp, #0x1c
008a4672  0d aa                                            add r2, sp, #0x34
008a4674  01 f0 ae fd                                      bl #0x8a61d4
008a4678  a9 e7                                            b #0x8a45ce
008a467a  fe f7 21 ff                                      bl #0x8a34c0
008a467e  8c e7                                            b #0x8a459a
008a4680  69 f6 46 e6                                      blx #0x30e310
; mapping-symbol data/literal pool
008a4684  1a 05 0f 00 c8 f9 ff ff ac 40 00 00 34 06 00 00  .byte 0x1a, 0x05, 0x0f, 0x00, 0xc8, 0xf9, 0xff, 0xff, 0xac, 0x40, 0x00, 0x00, 0x34, 0x06, 0x00, 0x00
008a4694  34 05 00 00 34 04 00 00                          .byte 0x34, 0x05, 0x00, 0x00, 0x34, 0x04, 0x00, 0x00

; FUNCTION 0x008a469c, declared_size=308, range_size=308, mode=thumb
; class-group: std::locale
; alias: _ZNSt6localeC2ERKS_PKci
; demangled: std::locale::locale(std::locale const&, char const*, int)
; decoder-mode: thumb
008a469c  f0 b5                                            push {r4, r5, r6, r7, lr}
008a469e  57 46                                            mov r7, sl
008a46a0  4e 46                                            mov r6, sb
008a46a2  45 46                                            mov r5, r8
008a46a4  e0 b4                                            push {r5, r6, r7}
008a46a6  44 4f                                            ldr r7, [pc, #0x110]
008a46a8  44 4c                                            ldr r4, [pc, #0x110]
008a46aa  0e 1c                                            adds r6, r1, #0
008a46ac  44 49                                            ldr r1, [pc, #0x110]
008a46ae  7f 44                                            add r7, pc
008a46b0  a5 44                                            add sp, r4
008a46b2  1c 1c                                            adds r4, r3, #0
008a46b4  7b 58                                            ldr r3, [r7, r1]
008a46b6  15 1c                                            adds r5, r2, #0
008a46b8  42 4a                                            ldr r2, [pc, #0x108]
008a46ba  1b 68                                            ldr r3, [r3]
008a46bc  80 46                                            mov r8, r0
008a46be  6a 44                                            add r2, sp, r2
008a46c0  13 60                                            str r3, [r2]
008a46c2  00 23                                            movs r3, #0
008a46c4  8a 46                                            mov sl, r1
008a46c6  03 60                                            str r3, [r0]
008a46c8  00 2d                                            cmp r5, #0
008a46ca  00 d1                                            bne #0x8a46ce
008a46cc  6f e0                                            b #0x8a47ae
008a46ce  2c 20                                            movs r0, #0x2c
008a46d0  6a f6 dc e0                                      blx #0x30e88c
008a46d4  31 68                                            ldr r1, [r6]
008a46d6  81 46                                            mov sb, r0
008a46d8  03 f0 54 fb                                      bl #0x8a7d84
008a46dc  0c 95                                            str r5, [sp, #0x30]
008a46de  0b 95                                            str r5, [sp, #0x2c]
008a46e0  0a 95                                            str r5, [sp, #0x28]
008a46e2  09 95                                            str r5, [sp, #0x24]
008a46e4  08 95                                            str r5, [sp, #0x20]
008a46e6  07 95                                            str r5, [sp, #0x1c]
008a46e8  00 23                                            movs r3, #0
008a46ea  a1 06                                            lsls r1, r4, #0x1a
008a46ec  2f d4                                            bmi #0x8a474e
008a46ee  e2 05                                            lsls r2, r4, #0x17
008a46f0  36 d4                                            bmi #0x8a4760
008a46f2  a1 05                                            lsls r1, r4, #0x16
008a46f4  3d d4                                            bmi #0x8a4772
008a46f6  e2 06                                            lsls r2, r4, #0x1b
008a46f8  43 d4                                            bmi #0x8a4782
008a46fa  61 06                                            lsls r1, r4, #0x19
008a46fc  49 d4                                            bmi #0x8a4792
008a46fe  62 05                                            lsls r2, r4, #0x15
008a4700  4f d4                                            bmi #0x8a47a2
008a4702  33 68                                            ldr r3, [r6]
008a4704  0c 9a                                            ldr r2, [sp, #0x30]
008a4706  48 46                                            mov r0, sb
008a4708  d9 69                                            ldr r1, [r3, #0x1c]
008a470a  0b 9b                                            ldr r3, [sp, #0x2c]
008a470c  04 94                                            str r4, [sp, #0x10]
008a470e  00 93                                            str r3, [sp]
008a4710  09 9b                                            ldr r3, [sp, #0x24]
008a4712  01 93                                            str r3, [sp, #4]
008a4714  08 9b                                            ldr r3, [sp, #0x20]
008a4716  02 93                                            str r3, [sp, #8]
008a4718  07 9b                                            ldr r3, [sp, #0x1c]
008a471a  03 93                                            str r3, [sp, #0xc]
008a471c  0a 9b                                            ldr r3, [sp, #0x28]
008a471e  ff f7 61 fd                                      bl #0x8a41e4
008a4722  48 46                                            mov r0, sb
008a4724  00 f0 84 fe                                      bl #0x8a5430
008a4728  43 46                                            mov r3, r8
008a472a  51 46                                            mov r1, sl
008a472c  18 60                                            str r0, [r3]
008a472e  7b 58                                            ldr r3, [r7, r1]
008a4730  24 49                                            ldr r1, [pc, #0x90]
008a4732  40 46                                            mov r0, r8
008a4734  69 44                                            add r1, sp, r1
008a4736  0a 68                                            ldr r2, [r1]
008a4738  1b 68                                            ldr r3, [r3]
008a473a  9a 42                                            cmp r2, r3
008a473c  3a d1                                            bne #0x8a47b4
008a473e  c7 23                                            movs r3, #0xc7
008a4740  db 00                                            lsls r3, r3, #3
008a4742  9d 44                                            add sp, r3
008a4744  1c bc                                            pop {r2, r3, r4}
008a4746  90 46                                            mov r8, r2
008a4748  99 46                                            mov sb, r3
008a474a  a2 46                                            mov sl, r4
008a474c  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a474e  1e 4a                                            ldr r2, [pc, #0x78]
008a4750  48 46                                            mov r0, sb
008a4752  0c a9                                            add r1, sp, #0x30
008a4754  6a 44                                            add r2, sp, r2
008a4756  02 f0 59 f9                                      bl #0x8a6a0c
008a475a  03 1c                                            adds r3, r0, #0
008a475c  e2 05                                            lsls r2, r4, #0x17
008a475e  c8 d5                                            bpl #0x8a46f2
008a4760  1a 4a                                            ldr r2, [pc, #0x68]
008a4762  48 46                                            mov r0, sb
008a4764  0b a9                                            add r1, sp, #0x2c
008a4766  6a 44                                            add r2, sp, r2
008a4768  02 f0 8c f8                                      bl #0x8a6884
008a476c  03 1c                                            adds r3, r0, #0
008a476e  a1 05                                            lsls r1, r4, #0x16
008a4770  c1 d5                                            bpl #0x8a46f6
008a4772  48 46                                            mov r0, sb
008a4774  0a a9                                            add r1, sp, #0x28
008a4776  cd aa                                            add r2, sp, #0x334
008a4778  01 f0 8e ff                                      bl #0x8a6698
008a477c  03 1c                                            adds r3, r0, #0
008a477e  e2 06                                            lsls r2, r4, #0x1b
008a4780  bb d5                                            bpl #0x8a46fa
008a4782  48 46                                            mov r0, sb
008a4784  09 a9                                            add r1, sp, #0x24
008a4786  8d aa                                            add r2, sp, #0x234
008a4788  01 f0 d8 fe                                      bl #0x8a653c
008a478c  03 1c                                            adds r3, r0, #0
008a478e  61 06                                            lsls r1, r4, #0x19
008a4790  b5 d5                                            bpl #0x8a46fe
008a4792  48 46                                            mov r0, sb
008a4794  08 a9                                            add r1, sp, #0x20
008a4796  4d aa                                            add r2, sp, #0x134
008a4798  01 f0 aa fd                                      bl #0x8a62f0
008a479c  03 1c                                            adds r3, r0, #0
008a479e  62 05                                            lsls r2, r4, #0x15
008a47a0  af d5                                            bpl #0x8a4702
008a47a2  48 46                                            mov r0, sb
008a47a4  07 a9                                            add r1, sp, #0x1c
008a47a6  0d aa                                            add r2, sp, #0x34
008a47a8  01 f0 14 fd                                      bl #0x8a61d4
008a47ac  a9 e7                                            b #0x8a4702
008a47ae  fe f7 87 fe                                      bl #0x8a34c0
008a47b2  8c e7                                            b #0x8a46ce
008a47b4  69 f6 ac e5                                      blx #0x30e310
; mapping-symbol data/literal pool
008a47b8  e6 03 0f 00 c8 f9 ff ff ac 40 00 00 34 06 00 00  .byte 0xe6, 0x03, 0x0f, 0x00, 0xc8, 0xf9, 0xff, 0xff, 0xac, 0x40, 0x00, 0x00, 0x34, 0x06, 0x00, 0x00
008a47c8  34 05 00 00 34 04 00 00                          .byte 0x34, 0x05, 0x00, 0x00, 0x34, 0x04, 0x00, 0x00

; FUNCTION 0x008a47d0, declared_size=384, range_size=384, mode=thumb
; class-group: std::locale
; alias: _ZNSt6locale28_M_throw_on_creation_failureEiPKcS1_
; demangled: std::locale::_M_throw_on_creation_failure(int, char const*, char const*)
; decoder-mode: thumb
008a47d0  f0 b5                                            push {r4, r5, r6, r7, lr}
008a47d2  4f 46                                            mov r7, sb
008a47d4  46 46                                            mov r6, r8
008a47d6  c0 b4                                            push {r6, r7}
008a47d8  50 4d                                            ldr r5, [pc, #0x140]
008a47da  91 46                                            mov sb, r2
008a47dc  50 4a                                            ldr r2, [pc, #0x140]
008a47de  7d 44                                            add r5, pc
008a47e0  89 b0                                            sub sp, #0x24
008a47e2  ab 58                                            ldr r3, [r5, r2]
008a47e4  01 ac                                            add r4, sp, #4
008a47e6  07 1c                                            adds r7, r0, #0
008a47e8  1b 68                                            ldr r3, [r3]
008a47ea  0e 1c                                            adds r6, r1, #0
008a47ec  20 1c                                            adds r0, r4, #0
008a47ee  10 21                                            movs r1, #0x10
008a47f0  07 93                                            str r3, [sp, #0x1c]
008a47f2  90 46                                            mov r8, r2
008a47f4  24 61                                            str r4, [r4, #0x10]
008a47f6  64 61                                            str r4, [r4, #0x14]
008a47f8  6c f6 40 e7                                      blx #0x31167c
008a47fc  23 69                                            ldr r3, [r4, #0x10]
008a47fe  00 22                                            movs r2, #0
008a4800  1a 70                                            strb r2, [r3]
008a4802  03 2f                                            cmp r7, #3
008a4804  00 d1                                            bne #0x8a4808
008a4806  65 e0                                            b #0x8a48d4
008a4808  04 2f                                            cmp r7, #4
008a480a  5c d0                                            beq #0x8a48c6
008a480c  01 2f                                            cmp r7, #1
008a480e  32 d0                                            beq #0x8a4876
008a4810  44 49                                            ldr r1, [pc, #0x110]
008a4812  20 1c                                            adds r0, r4, #0
008a4814  79 44                                            add r1, pc
008a4816  0a 1c                                            adds r2, r1, #0
008a4818  17 32                                            adds r2, #0x17
008a481a  6c f6 e2 e0                                      blx #0x3109e0
008a481e  48 46                                            mov r0, sb
008a4820  69 f6 18 e3                                      blx #0x30de54
008a4824  4b 46                                            mov r3, sb
008a4826  1a 18                                            adds r2, r3, r0
008a4828  49 46                                            mov r1, sb
008a482a  20 1c                                            adds r0, r4, #0
008a482c  6b f6 ea e7                                      blx #0x310804
008a4830  3d 49                                            ldr r1, [pc, #0xf4]
008a4832  20 1c                                            adds r0, r4, #0
008a4834  79 44                                            add r1, pc
008a4836  0a 1c                                            adds r2, r1, #0
008a4838  0c 32                                            adds r2, #0xc
008a483a  6b f6 e4 e7                                      blx #0x310804
008a483e  30 1c                                            adds r0, r6, #0
008a4840  69 f6 08 e3                                      blx #0x30de54
008a4844  31 1c                                            adds r1, r6, #0
008a4846  32 18                                            adds r2, r6, r0
008a4848  20 1c                                            adds r0, r4, #0
008a484a  6b f6 dc e7                                      blx #0x310804
008a484e  37 49                                            ldr r1, [pc, #0xdc]
008a4850  20 1c                                            adds r0, r4, #0
008a4852  79 44                                            add r1, pc
008a4854  4a 1c                                            adds r2, r1, #1
008a4856  6b f6 d6 e7                                      blx #0x310804
008a485a  20 1c                                            adds r0, r4, #0
008a485c  6f f6 a6 e0                                      blx #0x3139ac
008a4860  42 46                                            mov r2, r8
008a4862  ab 58                                            ldr r3, [r5, r2]
008a4864  07 9a                                            ldr r2, [sp, #0x1c]
008a4866  1b 68                                            ldr r3, [r3]
008a4868  9a 42                                            cmp r2, r3
008a486a  55 d1                                            bne #0x8a4918
008a486c  09 b0                                            add sp, #0x24
008a486e  0c bc                                            pop {r2, r3}
008a4870  90 46                                            mov r8, r2
008a4872  99 46                                            mov sb, r3
008a4874  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a4876  2e 49                                            ldr r1, [pc, #0xb8]
008a4878  20 1c                                            adds r0, r4, #0
008a487a  79 44                                            add r1, pc
008a487c  0a 1c                                            adds r2, r1, #0
008a487e  25 32                                            adds r2, #0x25
008a4880  6c f6 ae e0                                      blx #0x3109e0
008a4884  48 46                                            mov r0, sb
008a4886  69 f6 e6 e2                                      blx #0x30de54
008a488a  4b 46                                            mov r3, sb
008a488c  1a 18                                            adds r2, r3, r0
008a488e  49 46                                            mov r1, sb
008a4890  20 1c                                            adds r0, r4, #0
008a4892  6b f6 b8 e7                                      blx #0x310804
008a4896  27 49                                            ldr r1, [pc, #0x9c]
008a4898  20 1c                                            adds r0, r4, #0
008a489a  79 44                                            add r1, pc
008a489c  0a 1c                                            adds r2, r1, #0
008a489e  2c 32                                            adds r2, #0x2c
008a48a0  6b f6 b0 e7                                      blx #0x310804
008a48a4  33 78                                            ldrb r3, [r6]
008a48a6  00 2b                                            cmp r3, #0
008a48a8  31 d1                                            bne #0x8a490e
008a48aa  23 4e                                            ldr r6, [pc, #0x8c]
008a48ac  7e 44                                            add r6, pc
008a48ae  b2 1d                                            adds r2, r6, #6
008a48b0  31 1c                                            adds r1, r6, #0
008a48b2  20 1c                                            adds r0, r4, #0
008a48b4  6b f6 a6 e7                                      blx #0x310804
008a48b8  20 49                                            ldr r1, [pc, #0x80]
008a48ba  20 1c                                            adds r0, r4, #0
008a48bc  79 44                                            add r1, pc
008a48be  ca 1d                                            adds r2, r1, #7
008a48c0  6b f6 a0 e7                                      blx #0x310804
008a48c4  c9 e7                                            b #0x8a485a
008a48c6  1e 48                                            ldr r0, [pc, #0x78]
008a48c8  78 44                                            add r0, pc
008a48ca  69 f6 fc e3                                      blx #0x30e0c4
008a48ce  01 20                                            movs r0, #1
008a48d0  69 f6 ba e2                                      blx #0x30de48
008a48d4  1b 49                                            ldr r1, [pc, #0x6c]
008a48d6  20 1c                                            adds r0, r4, #0
008a48d8  79 44                                            add r1, pc
008a48da  0a 1c                                            adds r2, r1, #0
008a48dc  33 32                                            adds r2, #0x33
008a48de  6c f6 80 e0                                      blx #0x3109e0
008a48e2  33 78                                            ldrb r3, [r6]
008a48e4  00 2b                                            cmp r3, #0
008a48e6  0d d1                                            bne #0x8a4904
008a48e8  17 4e                                            ldr r6, [pc, #0x5c]
008a48ea  7e 44                                            add r6, pc
008a48ec  b2 1d                                            adds r2, r6, #6
008a48ee  31 1c                                            adds r1, r6, #0
008a48f0  20 1c                                            adds r0, r4, #0
008a48f2  6b f6 88 e7                                      blx #0x310804
008a48f6  15 49                                            ldr r1, [pc, #0x54]
008a48f8  20 1c                                            adds r0, r4, #0
008a48fa  79 44                                            add r1, pc
008a48fc  ca 1d                                            adds r2, r1, #7
008a48fe  6b f6 82 e7                                      blx #0x310804
008a4902  aa e7                                            b #0x8a485a
008a4904  30 1c                                            adds r0, r6, #0
008a4906  69 f6 a6 e2                                      blx #0x30de54
008a490a  32 18                                            adds r2, r6, r0
008a490c  ef e7                                            b #0x8a48ee
008a490e  30 1c                                            adds r0, r6, #0
008a4910  69 f6 a0 e2                                      blx #0x30de54
008a4914  32 18                                            adds r2, r6, r0
008a4916  cb e7                                            b #0x8a48b0
008a4918  69 f6 fa e4                                      blx #0x30e310
; mapping-symbol data/literal pool
008a491c  b6 02 0f 00 ac 40 00 00 f4 10 07 00 ec 10 07 00  .byte 0xb6, 0x02, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x10, 0x07, 0x00, 0xec, 0x10, 0x07, 0x00
008a492c  de 10 07 00 02 10 07 00 0a 10 07 00 6c 0f 07 00  .byte 0xde, 0x10, 0x07, 0x00, 0x02, 0x10, 0x07, 0x00, 0x0a, 0x10, 0x07, 0x00, 0x6c, 0x0f, 0x07, 0x00
008a493c  64 0f 07 00 6c 10 07 00 fc 0f 07 00 2e 0f 07 00  .byte 0x64, 0x0f, 0x07, 0x00, 0x6c, 0x10, 0x07, 0x00, 0xfc, 0x0f, 0x07, 0x00, 0x2e, 0x0f, 0x07, 0x00
008a494c  26 0f 07 00                                      .byte 0x26, 0x0f, 0x07, 0x00
