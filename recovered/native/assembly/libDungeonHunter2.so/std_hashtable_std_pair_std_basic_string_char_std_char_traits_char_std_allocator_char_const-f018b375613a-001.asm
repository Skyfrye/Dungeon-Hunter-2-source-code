; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008b3698, declared_size=412, range_size=412, mode=thumb
; class-group: std::hashtable<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::hash<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_HashMapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > >, std::equal_to<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > > >
; alias: _ZNSt9hashtableISt4pairIKSsS0_IPvjEESsSt4hashISsENSt4priv15_HashMapTraitsTIS4_EENS7_10_Select1stIS4_EESt8equal_toISsESaIS4_EE9_M_rehashEj
; demangled: std::hashtable<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::hash<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_HashMapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > >, std::equal_to<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > > >::_M_rehash(unsigned int)
; decoder-mode: thumb
008b3698  f0 b5                                            push {r4, r5, r6, r7, lr}
008b369a  5f 46                                            mov r7, fp
008b369c  56 46                                            mov r6, sl
008b369e  4d 46                                            mov r5, sb
008b36a0  44 46                                            mov r4, r8
008b36a2  f0 b4                                            push {r4, r5, r6, r7}
008b36a4  8b b0                                            sub sp, #0x2c
008b36a6  03 91                                            str r1, [sp, #0xc]
008b36a8  04 a9                                            add r1, sp, #0x10
008b36aa  8b 46                                            mov fp, r1
008b36ac  03 99                                            ldr r1, [sp, #0xc]
008b36ae  00 23                                            movs r3, #0
008b36b0  81 46                                            mov sb, r0
008b36b2  08 93                                            str r3, [sp, #0x20]
008b36b4  07 93                                            str r3, [sp, #0x1c]
008b36b6  07 aa                                            add r2, sp, #0x1c
008b36b8  09 ab                                            add r3, sp, #0x24
008b36ba  01 31                                            adds r1, #1
008b36bc  58 46                                            mov r0, fp
008b36be  ff f7 6b ff                                      bl #0x8b3598
008b36c2  4a 46                                            mov r2, sb
008b36c4  04 32                                            adds r2, #4
008b36c6  08 ab                                            add r3, sp, #0x20
008b36c8  02 92                                            str r2, [sp, #8]
008b36ca  9a 46                                            mov sl, r3
008b36cc  4a 46                                            mov r2, sb
008b36ce  57 68                                            ldr r7, [r2, #4]
008b36d0  00 2f                                            cmp r7, #0
008b36d2  57 d0                                            beq #0x8b3784
008b36d4  be 69                                            ldr r6, [r7, #0x18]
008b36d6  7d 69                                            ldr r5, [r7, #0x14]
008b36d8  ad 1b                                            subs r5, r5, r6
008b36da  00 2d                                            cmp r5, #0
008b36dc  00 d1                                            bne #0x8b36e0
008b36de  a1 e0                                            b #0x8b3824
008b36e0  00 23                                            movs r3, #0
008b36e2  00 20                                            movs r0, #0
008b36e4  f2 5c                                            ldrb r2, [r6, r3]
008b36e6  81 00                                            lsls r1, r0, #2
008b36e8  01 33                                            adds r3, #1
008b36ea  8a 18                                            adds r2, r1, r2
008b36ec  80 18                                            adds r0, r0, r2
008b36ee  9d 42                                            cmp r5, r3
008b36f0  f8 d1                                            bne #0x8b36e4
008b36f2  03 99                                            ldr r1, [sp, #0xc]
008b36f4  5b f6 1a e2                                      blx #0x30eb2c
008b36f8  4b 1c                                            adds r3, r1, #1
008b36fa  9b 00                                            lsls r3, r3, #2
008b36fc  89 00                                            lsls r1, r1, #2
008b36fe  01 93                                            str r3, [sp, #4]
008b3700  00 91                                            str r1, [sp]
008b3702  3c 68                                            ldr r4, [r7]
008b3704  b8 46                                            mov r8, r7
008b3706  00 2c                                            cmp r4, #0
008b3708  05 d0                                            beq #0x8b3716
008b370a  a1 69                                            ldr r1, [r4, #0x18]
008b370c  63 69                                            ldr r3, [r4, #0x14]
008b370e  5b 1a                                            subs r3, r3, r1
008b3710  9d 42                                            cmp r5, r3
008b3712  00 d1                                            bne #0x8b3716
008b3714  77 e0                                            b #0x8b3806
008b3716  5b 46                                            mov r3, fp
008b3718  18 68                                            ldr r0, [r3]
008b371a  00 9c                                            ldr r4, [sp]
008b371c  51 46                                            mov r1, sl
008b371e  0b 68                                            ldr r3, [r1]
008b3720  02 19                                            adds r2, r0, r4
008b3722  14 68                                            ldr r4, [r2]
008b3724  9c 42                                            cmp r4, r3
008b3726  00 d1                                            bne #0x8b372a
008b3728  79 e0                                            b #0x8b381e
008b372a  04 3a                                            subs r2, #4
008b372c  13 68                                            ldr r3, [r2]
008b372e  9c 42                                            cmp r4, r3
008b3730  fb d0                                            beq #0x8b372a
008b3732  12 1a                                            subs r2, r2, r0
008b3734  92 10                                            asrs r2, r2, #2
008b3736  01 32                                            adds r2, #1
008b3738  19 68                                            ldr r1, [r3]
008b373a  01 e0                                            b #0x8b3740
008b373c  1b 68                                            ldr r3, [r3]
008b373e  09 68                                            ldr r1, [r1]
008b3740  8c 42                                            cmp r4, r1
008b3742  fb d1                                            bne #0x8b373c
008b3744  92 00                                            lsls r2, r2, #2
008b3746  02 9c                                            ldr r4, [sp, #8]
008b3748  44 45                                            cmp r4, r8
008b374a  0d d0                                            beq #0x8b3768
008b374c  43 45                                            cmp r3, r8
008b374e  0b d0                                            beq #0x8b3768
008b3750  9c 42                                            cmp r4, r3
008b3752  09 d0                                            beq #0x8b3768
008b3754  44 46                                            mov r4, r8
008b3756  20 68                                            ldr r0, [r4]
008b3758  19 68                                            ldr r1, [r3]
008b375a  4c 46                                            mov r4, sb
008b375c  60 60                                            str r0, [r4, #4]
008b375e  1f 60                                            str r7, [r3]
008b3760  43 46                                            mov r3, r8
008b3762  19 60                                            str r1, [r3]
008b3764  5c 46                                            mov r4, fp
008b3766  20 68                                            ldr r0, [r4]
008b3768  01 99                                            ldr r1, [sp, #4]
008b376a  80 18                                            adds r0, r0, r2
008b376c  8a 1a                                            subs r2, r1, r2
008b376e  92 10                                            asrs r2, r2, #2
008b3770  00 2a                                            cmp r2, #0
008b3772  ab dd                                            ble #0x8b36cc
008b3774  01 3a                                            subs r2, #1
008b3776  80 c0                                            stm r0!, {r7}
008b3778  00 2a                                            cmp r2, #0
008b377a  fb d1                                            bne #0x8b3774
008b377c  4a 46                                            mov r2, sb
008b377e  57 68                                            ldr r7, [r2, #4]
008b3780  00 2f                                            cmp r7, #0
008b3782  a7 d1                                            bne #0x8b36d4
008b3784  08 9b                                            ldr r3, [sp, #0x20]
008b3786  4c 46                                            mov r4, sb
008b3788  59 46                                            mov r1, fp
008b378a  63 60                                            str r3, [r4, #4]
008b378c  08 97                                            str r7, [sp, #0x20]
008b378e  04 9b                                            ldr r3, [sp, #0x10]
008b3790  a0 68                                            ldr r0, [r4, #8]
008b3792  a3 60                                            str r3, [r4, #8]
008b3794  04 90                                            str r0, [sp, #0x10]
008b3796  e3 68                                            ldr r3, [r4, #0xc]
008b3798  4a 68                                            ldr r2, [r1, #4]
008b379a  e2 60                                            str r2, [r4, #0xc]
008b379c  4b 60                                            str r3, [r1, #4]
008b379e  23 69                                            ldr r3, [r4, #0x10]
008b37a0  8a 68                                            ldr r2, [r1, #8]
008b37a2  22 61                                            str r2, [r4, #0x10]
008b37a4  8b 60                                            str r3, [r1, #8]
008b37a6  00 28                                            cmp r0, #0
008b37a8  06 d0                                            beq #0x8b37b8
008b37aa  19 1a                                            subs r1, r3, r0
008b37ac  89 10                                            asrs r1, r1, #2
008b37ae  89 00                                            lsls r1, r1, #2
008b37b0  80 29                                            cmp r1, #0x80
008b37b2  3c d8                                            bhi #0x8b382e
008b37b4  02 f0 52 fd                                      bl #0x8b625c
008b37b8  08 9c                                            ldr r4, [sp, #0x20]
008b37ba  00 2c                                            cmp r4, #0
008b37bc  08 d1                                            bne #0x8b37d0
008b37be  1b e0                                            b #0x8b37f8
008b37c0  02 f0 4c fd                                      bl #0x8b625c
008b37c4  28 1c                                            adds r0, r5, #0
008b37c6  24 21                                            movs r1, #0x24
008b37c8  02 f0 48 fd                                      bl #0x8b625c
008b37cc  00 2c                                            cmp r4, #0
008b37ce  13 d0                                            beq #0x8b37f8
008b37d0  25 1c                                            adds r5, r4, #0
008b37d2  2b 1d                                            adds r3, r5, #4
008b37d4  58 69                                            ldr r0, [r3, #0x14]
008b37d6  24 68                                            ldr r4, [r4]
008b37d8  98 42                                            cmp r0, r3
008b37da  f3 d0                                            beq #0x8b37c4
008b37dc  00 28                                            cmp r0, #0
008b37de  f1 d0                                            beq #0x8b37c4
008b37e0  69 68                                            ldr r1, [r5, #4]
008b37e2  09 1a                                            subs r1, r1, r0
008b37e4  80 29                                            cmp r1, #0x80
008b37e6  eb d9                                            bls #0x8b37c0
008b37e8  5a f6 62 e5                                      blx #0x30e2b0
008b37ec  28 1c                                            adds r0, r5, #0
008b37ee  24 21                                            movs r1, #0x24
008b37f0  02 f0 34 fd                                      bl #0x8b625c
008b37f4  00 2c                                            cmp r4, #0
008b37f6  eb d1                                            bne #0x8b37d0
008b37f8  0b b0                                            add sp, #0x2c
008b37fa  3c bc                                            pop {r2, r3, r4, r5}
008b37fc  90 46                                            mov r8, r2
008b37fe  99 46                                            mov sb, r3
008b3800  a2 46                                            mov sl, r4
008b3802  ab 46                                            mov fp, r5
008b3804  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b3806  30 1c                                            adds r0, r6, #0
008b3808  2a 1c                                            adds r2, r5, #0
008b380a  5a f6 ea e6                                      blx #0x30e5e0
008b380e  00 28                                            cmp r0, #0
008b3810  00 d0                                            beq #0x8b3814
008b3812  80 e7                                            b #0x8b3716
008b3814  42 46                                            mov r2, r8
008b3816  12 68                                            ldr r2, [r2]
008b3818  24 68                                            ldr r4, [r4]
008b381a  90 46                                            mov r8, r2
008b381c  73 e7                                            b #0x8b3706
008b381e  00 22                                            movs r2, #0
008b3820  53 46                                            mov r3, sl
008b3822  90 e7                                            b #0x8b3746
008b3824  00 24                                            movs r4, #0
008b3826  04 21                                            movs r1, #4
008b3828  00 94                                            str r4, [sp]
008b382a  01 91                                            str r1, [sp, #4]
008b382c  69 e7                                            b #0x8b3702
008b382e  5a f6 40 e5                                      blx #0x30e2b0
008b3832  c1 e7                                            b #0x8b37b8

; FUNCTION 0x008b3834, declared_size=232, range_size=232, mode=thumb
; class-group: std::hashtable<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::hash<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_HashMapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > >, std::equal_to<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > > >
; alias: _ZNSt9hashtableISt4pairIKSsS0_IPvjEESsSt4hashISsENSt4priv15_HashMapTraitsTIS4_EENS7_10_Select1stIS4_EESt8equal_toISsESaIS4_EE9_M_reduceEv
; demangled: std::hashtable<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::hash<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_HashMapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > >, std::equal_to<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > > >::_M_reduce()
; decoder-mode: thumb
008b3834  f0 b5                                            push {r4, r5, r6, r7, lr}
008b3836  4f 46                                            mov r7, sb
008b3838  46 46                                            mov r6, r8
008b383a  c0 b4                                            push {r6, r7}
008b383c  83 68                                            ldr r3, [r0, #8]
008b383e  c4 68                                            ldr r4, [r0, #0xc]
008b3840  83 b0                                            sub sp, #0xc
008b3842  05 1c                                            adds r5, r0, #0
008b3844  40 69                                            ldr r0, [r0, #0x14]
008b3846  e4 1a                                            subs r4, r4, r3
008b3848  5a f6 4a e5                                      blx #0x30e2e0
008b384c  a4 10                                            asrs r4, r4, #2
008b384e  01 3c                                            subs r4, #1
008b3850  06 1c                                            adds r6, r0, #0
008b3852  20 1c                                            adds r0, r4, #0
008b3854  5a f6 44 e5                                      blx #0x30e2e0
008b3858  01 1c                                            adds r1, r0, #0
008b385a  30 1c                                            adds r0, r6, #0
008b385c  5b f6 1a e2                                      blx #0x30ec94
008b3860  fa 21                                            movs r1, #0xfa
008b3862  06 1c                                            adds r6, r0, #0
008b3864  89 05                                            lsls r1, r1, #0x16
008b3866  a8 69                                            ldr r0, [r5, #0x18]
008b3868  5b f6 80 e2                                      blx #0x30ed6c
008b386c  01 1c                                            adds r1, r0, #0
008b386e  30 1c                                            adds r0, r6, #0
008b3870  5a f6 42 e5                                      blx #0x30e2f8
008b3874  00 28                                            cmp r0, #0
008b3876  04 d0                                            beq #0x8b3882
008b3878  03 b0                                            add sp, #0xc
008b387a  0c bc                                            pop {r2, r3}
008b387c  90 46                                            mov r8, r2
008b387e  99 46                                            mov sb, r3
008b3880  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b3882  20 1c                                            adds r0, r4, #0
008b3884  01 a9                                            add r1, sp, #4
008b3886  6a 46                                            mov r2, sp
008b3888  ff f7 a8 fd                                      bl #0x8b33dc
008b388c  01 9b                                            ldr r3, [sp, #4]
008b388e  00 9e                                            ldr r6, [sp]
008b3890  98 46                                            mov r8, r3
008b3892  46 45                                            cmp r6, r8
008b3894  3e d0                                            beq #0x8b3914
008b3896  68 69                                            ldr r0, [r5, #0x14]
008b3898  5a f6 22 e5                                      blx #0x30e2e0
008b389c  ab 69                                            ldr r3, [r5, #0x18]
008b389e  34 1f                                            subs r4, r6, #4
008b38a0  07 1c                                            adds r7, r0, #0
008b38a2  20 68                                            ldr r0, [r4]
008b38a4  99 46                                            mov sb, r3
008b38a6  5a f6 1c e5                                      blx #0x30e2e0
008b38aa  01 1c                                            adds r1, r0, #0
008b38ac  38 1c                                            adds r0, r7, #0
008b38ae  5b f6 f2 e1                                      blx #0x30ec94
008b38b2  49 46                                            mov r1, sb
008b38b4  5a f6 20 e5                                      blx #0x30e2f8
008b38b8  00 28                                            cmp r0, #0
008b38ba  dd d1                                            bne #0x8b3878
008b38bc  a0 45                                            cmp r8, r4
008b38be  24 d0                                            beq #0x8b390a
008b38c0  34 1c                                            adds r4, r6, #0
008b38c2  08 3c                                            subs r4, #8
008b38c4  20 68                                            ldr r0, [r4]
008b38c6  5a f6 0c e5                                      blx #0x30e2e0
008b38ca  01 1c                                            adds r1, r0, #0
008b38cc  38 1c                                            adds r0, r7, #0
008b38ce  5b f6 e2 e1                                      blx #0x30ec94
008b38d2  01 1c                                            adds r1, r0, #0
008b38d4  48 46                                            mov r0, sb
008b38d6  5a f6 1a e7                                      blx #0x30e70c
008b38da  00 28                                            cmp r0, #0
008b38dc  11 d0                                            beq #0x8b3902
008b38de  14 e0                                            b #0x8b390a
008b38e0  68 69                                            ldr r0, [r5, #0x14]
008b38e2  5a f6 fe e4                                      blx #0x30e2e0
008b38e6  04 3c                                            subs r4, #4
008b38e8  07 1c                                            adds r7, r0, #0
008b38ea  20 68                                            ldr r0, [r4]
008b38ec  5a f6 f8 e4                                      blx #0x30e2e0
008b38f0  01 1c                                            adds r1, r0, #0
008b38f2  38 1c                                            adds r0, r7, #0
008b38f4  5b f6 ce e1                                      blx #0x30ec94
008b38f8  a9 69                                            ldr r1, [r5, #0x18]
008b38fa  5a f6 fe e4                                      blx #0x30e2f8
008b38fe  00 28                                            cmp r0, #0
008b3900  03 d1                                            bne #0x8b390a
008b3902  26 1d                                            adds r6, r4, #4
008b3904  00 96                                            str r6, [sp]
008b3906  a0 45                                            cmp r8, r4
008b3908  ea d1                                            bne #0x8b38e0
008b390a  31 68                                            ldr r1, [r6]
008b390c  28 1c                                            adds r0, r5, #0
008b390e  ff f7 c3 fe                                      bl #0x8b3698
008b3912  b1 e7                                            b #0x8b3878
008b3914  31 68                                            ldr r1, [r6]
008b3916  a1 42                                            cmp r1, r4
008b3918  f8 d3                                            blo #0x8b390c
008b391a  ad e7                                            b #0x8b3878

; FUNCTION 0x008b39d8, declared_size=236, range_size=236, mode=thumb
; class-group: std::hashtable<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::hash<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_HashMapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > >, std::equal_to<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > > >
; alias: _ZNSt9hashtableISt4pairIKSsS0_IPvjEESsSt4hashISsENSt4priv15_HashMapTraitsTIS4_EENS7_10_Select1stIS4_EESt8equal_toISsESaIS4_EE5eraseENS7_12_Ht_iteratorINS7_15_Slist_iteratorIS4_St16_Nonconst_traitsIS4_EEENS7_28_ConstNonLocalHashMapTraitsTIS4_EEEE
; demangled: std::hashtable<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::hash<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_HashMapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > >, std::equal_to<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > > >::erase(std::priv::_Ht_iterator<std::priv::_Slist_iterator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> >, std::_Nonconst_traits<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > > >, std::priv::_ConstNonLocalHashMapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > > >)
; decoder-mode: thumb
008b39d8  f0 b5                                            push {r4, r5, r6, r7, lr}
008b39da  4f 46                                            mov r7, sb
008b39dc  46 46                                            mov r6, r8
008b39de  c0 b4                                            push {r6, r7}
008b39e0  0c 68                                            ldr r4, [r1]
008b39e2  c2 68                                            ldr r2, [r0, #0xc]
008b39e4  83 68                                            ldr r3, [r0, #8]
008b39e6  a6 69                                            ldr r6, [r4, #0x18]
008b39e8  61 69                                            ldr r1, [r4, #0x14]
008b39ea  05 1c                                            adds r5, r0, #0
008b39ec  87 b0                                            sub sp, #0x1c
008b39ee  89 1b                                            subs r1, r1, r6
008b39f0  90 46                                            mov r8, r2
008b39f2  99 46                                            mov sb, r3
008b39f4  b4 46                                            mov ip, r6
008b39f6  04 20                                            movs r0, #4
008b39f8  00 29                                            cmp r1, #0
008b39fa  13 d0                                            beq #0x8b3a24
008b39fc  00 23                                            movs r3, #0
008b39fe  00 20                                            movs r0, #0
008b3a00  66 46                                            mov r6, ip
008b3a02  f2 5c                                            ldrb r2, [r6, r3]
008b3a04  87 00                                            lsls r7, r0, #2
008b3a06  01 33                                            adds r3, #1
008b3a08  ba 18                                            adds r2, r7, r2
008b3a0a  80 18                                            adds r0, r0, r2
008b3a0c  99 42                                            cmp r1, r3
008b3a0e  f7 d1                                            bne #0x8b3a00
008b3a10  42 46                                            mov r2, r8
008b3a12  4b 46                                            mov r3, sb
008b3a14  d1 1a                                            subs r1, r2, r3
008b3a16  89 10                                            asrs r1, r1, #2
008b3a18  01 39                                            subs r1, #1
008b3a1a  5b f6 88 e0                                      blx #0x30eb2c
008b3a1e  48 1c                                            adds r0, r1, #1
008b3a20  80 00                                            lsls r0, r0, #2
008b3a22  89 00                                            lsls r1, r1, #2
008b3a24  49 44                                            add r1, sb
008b3a26  0a 68                                            ldr r2, [r1]
008b3a28  a2 42                                            cmp r2, r4
008b3a2a  1d d0                                            beq #0x8b3a68
008b3a2c  4e 46                                            mov r6, sb
008b3a2e  13 68                                            ldr r3, [r2]
008b3a30  31 58                                            ldr r1, [r6, r0]
008b3a32  03 e0                                            b #0x8b3a3c
008b3a34  9c 42                                            cmp r4, r3
008b3a36  0f d0                                            beq #0x8b3a58
008b3a38  12 68                                            ldr r2, [r2]
008b3a3a  1b 68                                            ldr r3, [r3]
008b3a3c  99 42                                            cmp r1, r3
008b3a3e  f9 d1                                            bne #0x8b3a34
008b3a40  00 22                                            movs r2, #0
008b3a42  6b 69                                            ldr r3, [r5, #0x14]
008b3a44  28 1c                                            adds r0, r5, #0
008b3a46  9b 1a                                            subs r3, r3, r2
008b3a48  6b 61                                            str r3, [r5, #0x14]
008b3a4a  ff f7 f3 fe                                      bl #0x8b3834
008b3a4e  07 b0                                            add sp, #0x1c
008b3a50  0c bc                                            pop {r2, r3}
008b3a52  90 46                                            mov r8, r2
008b3a54  99 46                                            mov sb, r3
008b3a56  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b3a58  03 92                                            str r2, [sp, #0xc]
008b3a5a  29 1d                                            adds r1, r5, #4
008b3a5c  03 aa                                            add r2, sp, #0xc
008b3a5e  68 46                                            mov r0, sp
008b3a60  ff f7 9e ff                                      bl #0x8b39a0
008b3a64  01 22                                            movs r2, #1
008b3a66  ec e7                                            b #0x8b3a42
008b3a68  6b 68                                            ldr r3, [r5, #4]
008b3a6a  9c 42                                            cmp r4, r3
008b3a6c  26 d0                                            beq #0x8b3abc
008b3a6e  04 39                                            subs r1, #4
008b3a70  0b 68                                            ldr r3, [r1]
008b3a72  9c 42                                            cmp r4, r3
008b3a74  03 d1                                            bne #0x8b3a7e
008b3a76  04 39                                            subs r1, #4
008b3a78  0b 68                                            ldr r3, [r1]
008b3a7a  9a 42                                            cmp r2, r3
008b3a7c  fb d0                                            beq #0x8b3a76
008b3a7e  4e 46                                            mov r6, sb
008b3a80  8c 1b                                            subs r4, r1, r6
008b3a82  a4 10                                            asrs r4, r4, #2
008b3a84  01 34                                            adds r4, #1
008b3a86  19 68                                            ldr r1, [r3]
008b3a88  01 e0                                            b #0x8b3a8e
008b3a8a  1b 68                                            ldr r3, [r3]
008b3a8c  09 68                                            ldr r1, [r1]
008b3a8e  8a 42                                            cmp r2, r1
008b3a90  fb d1                                            bne #0x8b3a8a
008b3a92  a4 00                                            lsls r4, r4, #2
008b3a94  29 1d                                            adds r1, r5, #4
008b3a96  4a 46                                            mov r2, sb
008b3a98  16 18                                            adds r6, r2, r0
008b3a9a  4c 44                                            add r4, sb
008b3a9c  36 1b                                            subs r6, r6, r4
008b3a9e  04 a8                                            add r0, sp, #0x10
008b3aa0  05 aa                                            add r2, sp, #0x14
008b3aa2  b6 10                                            asrs r6, r6, #2
008b3aa4  05 93                                            str r3, [sp, #0x14]
008b3aa6  ff f7 7b ff                                      bl #0x8b39a0
008b3aaa  04 9b                                            ldr r3, [sp, #0x10]
008b3aac  00 2e                                            cmp r6, #0
008b3aae  03 dd                                            ble #0x8b3ab8
008b3ab0  01 3e                                            subs r6, #1
008b3ab2  08 c4                                            stm r4!, {r3}
008b3ab4  00 2e                                            cmp r6, #0
008b3ab6  fb d1                                            bne #0x8b3ab0
008b3ab8  01 22                                            movs r2, #1
008b3aba  c2 e7                                            b #0x8b3a42
008b3abc  29 1d                                            adds r1, r5, #4
008b3abe  0b 1c                                            adds r3, r1, #0
008b3ac0  00 24                                            movs r4, #0
008b3ac2  e8 e7                                            b #0x8b3a96

; FUNCTION 0x008b3de4, declared_size=130, range_size=130, mode=thumb
; class-group: std::hashtable<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::hash<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_HashMapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > >, std::equal_to<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > > >
; alias: _ZNSt9hashtableISt4pairIKSsS0_IPvjEESsSt4hashISsENSt4priv15_HashMapTraitsTIS4_EENS7_10_Select1stIS4_EESt8equal_toISsESaIS4_EE18_M_insert_noresizeEjRKS4_
; demangled: std::hashtable<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::hash<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_HashMapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > >, std::equal_to<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > > >::_M_insert_noresize(unsigned int, std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > const&)
; decoder-mode: thumb
008b3de4  f8 b5                                            push {r3, r4, r5, r6, r7, lr}
008b3de6  4f 46                                            mov r7, sb
008b3de8  46 46                                            mov r6, r8
008b3dea  c0 b4                                            push {r6, r7}
008b3dec  80 46                                            mov r8, r0
008b3dee  88 68                                            ldr r0, [r1, #8]
008b3df0  97 00                                            lsls r7, r2, #2
008b3df2  0e 1c                                            adds r6, r1, #0
008b3df4  c1 19                                            adds r1, r0, r7
008b3df6  84 46                                            mov ip, r0
008b3df8  0d 68                                            ldr r5, [r1]
008b3dfa  70 68                                            ldr r0, [r6, #4]
008b3dfc  85 42                                            cmp r5, r0
008b3dfe  2e d0                                            beq #0x8b3e5e
008b3e00  04 39                                            subs r1, #4
008b3e02  0c 68                                            ldr r4, [r1]
008b3e04  a5 42                                            cmp r5, r4
008b3e06  fb d0                                            beq #0x8b3e00
008b3e08  60 46                                            mov r0, ip
008b3e0a  09 1a                                            subs r1, r1, r0
008b3e0c  89 10                                            asrs r1, r1, #2
008b3e0e  01 31                                            adds r1, #1
008b3e10  20 68                                            ldr r0, [r4]
008b3e12  01 e0                                            b #0x8b3e18
008b3e14  24 68                                            ldr r4, [r4]
008b3e16  00 68                                            ldr r0, [r0]
008b3e18  85 42                                            cmp r5, r0
008b3e1a  fb d1                                            bne #0x8b3e14
008b3e1c  8d 00                                            lsls r5, r1, #2
008b3e1e  30 1d                                            adds r0, r6, #4
008b3e20  01 32                                            adds r2, #1
008b3e22  92 00                                            lsls r2, r2, #2
008b3e24  91 46                                            mov sb, r2
008b3e26  19 1c                                            adds r1, r3, #0
008b3e28  65 44                                            add r5, ip
008b3e2a  e1 44                                            add sb, ip
008b3e2c  ff f7 c0 ff                                      bl #0x8b3db0
008b3e30  23 68                                            ldr r3, [r4]
008b3e32  4a 46                                            mov r2, sb
008b3e34  03 60                                            str r3, [r0]
008b3e36  53 1b                                            subs r3, r2, r5
008b3e38  9b 10                                            asrs r3, r3, #2
008b3e3a  20 60                                            str r0, [r4]
008b3e3c  00 2b                                            cmp r3, #0
008b3e3e  03 dd                                            ble #0x8b3e48
008b3e40  01 3b                                            subs r3, #1
008b3e42  01 c5                                            stm r5!, {r0}
008b3e44  00 2b                                            cmp r3, #0
008b3e46  fb d1                                            bne #0x8b3e40
008b3e48  73 69                                            ldr r3, [r6, #0x14]
008b3e4a  40 46                                            mov r0, r8
008b3e4c  01 33                                            adds r3, #1
008b3e4e  73 61                                            str r3, [r6, #0x14]
008b3e50  b3 68                                            ldr r3, [r6, #8]
008b3e52  db 59                                            ldr r3, [r3, r7]
008b3e54  03 60                                            str r3, [r0]
008b3e56  0c bc                                            pop {r2, r3}
008b3e58  90 46                                            mov r8, r2
008b3e5a  99 46                                            mov sb, r3
008b3e5c  f8 bd                                            pop {r3, r4, r5, r6, r7, pc}
008b3e5e  30 1d                                            adds r0, r6, #4
008b3e60  04 1c                                            adds r4, r0, #0
008b3e62  00 25                                            movs r5, #0
008b3e64  dc e7                                            b #0x8b3e20

; FUNCTION 0x008b3e68, declared_size=208, range_size=208, mode=thumb
; class-group: std::hashtable<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::hash<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_HashMapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > >, std::equal_to<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > > >
; alias: _ZNSt9hashtableISt4pairIKSsS0_IPvjEESsSt4hashISsENSt4priv15_HashMapTraitsTIS4_EENS7_10_Select1stIS4_EESt8equal_toISsESaIS4_EE22insert_unique_noresizeERKS4_
; demangled: std::hashtable<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> >, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::hash<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::priv::_HashMapTraitsT<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > >, std::priv::_Select1st<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > >, std::equal_to<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > > >::insert_unique_noresize(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::pair<void*, unsigned int> > const&)
; decoder-mode: thumb
008b3e68  f0 b5                                            push {r4, r5, r6, r7, lr}
008b3e6a  5f 46                                            mov r7, fp
008b3e6c  56 46                                            mov r6, sl
008b3e6e  4d 46                                            mov r5, sb
008b3e70  44 46                                            mov r4, r8
008b3e72  f0 b4                                            push {r4, r5, r6, r7}
008b3e74  91 46                                            mov sb, r2
008b3e76  4b 46                                            mov r3, sb
008b3e78  5e 69                                            ldr r6, [r3, #0x14]
008b3e7a  1d 69                                            ldr r5, [r3, #0x10]
008b3e7c  88 46                                            mov r8, r1
008b3e7e  42 46                                            mov r2, r8
008b3e80  ad 1b                                            subs r5, r5, r6
008b3e82  83 b0                                            sub sp, #0xc
008b3e84  83 46                                            mov fp, r0
008b3e86  c9 68                                            ldr r1, [r1, #0xc]
008b3e88  94 68                                            ldr r4, [r2, #8]
008b3e8a  00 2d                                            cmp r5, #0
008b3e8c  45 d0                                            beq #0x8b3f1a
008b3e8e  00 23                                            movs r3, #0
008b3e90  00 20                                            movs r0, #0
008b3e92  f2 5c                                            ldrb r2, [r6, r3]
008b3e94  87 00                                            lsls r7, r0, #2
008b3e96  01 33                                            adds r3, #1
008b3e98  ba 18                                            adds r2, r7, r2
008b3e9a  80 18                                            adds r0, r0, r2
008b3e9c  9d 42                                            cmp r5, r3
008b3e9e  f8 d1                                            bne #0x8b3e92
008b3ea0  09 1b                                            subs r1, r1, r4
008b3ea2  89 10                                            asrs r1, r1, #2
008b3ea4  01 39                                            subs r1, #1
008b3ea6  5a f6 42 e6                                      blx #0x30eb2c
008b3eaa  0a 1c                                            adds r2, r1, #0
008b3eac  53 1c                                            adds r3, r2, #1
008b3eae  89 00                                            lsls r1, r1, #2
008b3eb0  9b 00                                            lsls r3, r3, #2
008b3eb2  61 58                                            ldr r1, [r4, r1]
008b3eb4  e7 58                                            ldr r7, [r4, r3]
008b3eb6  8a 46                                            mov sl, r1
008b3eb8  0c 1c                                            adds r4, r1, #0
008b3eba  ba 45                                            cmp sl, r7
008b3ebc  31 d0                                            beq #0x8b3f22
008b3ebe  a7 42                                            cmp r7, r4
008b3ec0  07 d0                                            beq #0x8b3ed2
008b3ec2  a0 69                                            ldr r0, [r4, #0x18]
008b3ec4  63 69                                            ldr r3, [r4, #0x14]
008b3ec6  1b 1a                                            subs r3, r3, r0
008b3ec8  ab 42                                            cmp r3, r5
008b3eca  1c d0                                            beq #0x8b3f06
008b3ecc  24 68                                            ldr r4, [r4]
008b3ece  a7 42                                            cmp r7, r4
008b3ed0  f7 d1                                            bne #0x8b3ec2
008b3ed2  40 46                                            mov r0, r8
008b3ed4  04 30                                            adds r0, #4
008b3ed6  49 46                                            mov r1, sb
008b3ed8  ff f7 6a ff                                      bl #0x8b3db0
008b3edc  52 46                                            mov r2, sl
008b3ede  13 68                                            ldr r3, [r2]
008b3ee0  03 60                                            str r3, [r0]
008b3ee2  10 60                                            str r0, [r2]
008b3ee4  42 46                                            mov r2, r8
008b3ee6  53 69                                            ldr r3, [r2, #0x14]
008b3ee8  01 33                                            adds r3, #1
008b3eea  53 61                                            str r3, [r2, #0x14]
008b3eec  5b 46                                            mov r3, fp
008b3eee  18 60                                            str r0, [r3]
008b3ef0  5a 46                                            mov r2, fp
008b3ef2  01 23                                            movs r3, #1
008b3ef4  13 71                                            strb r3, [r2, #4]
008b3ef6  03 b0                                            add sp, #0xc
008b3ef8  58 46                                            mov r0, fp
008b3efa  3c bc                                            pop {r2, r3, r4, r5}
008b3efc  90 46                                            mov r8, r2
008b3efe  99 46                                            mov sb, r3
008b3f00  a2 46                                            mov sl, r4
008b3f02  ab 46                                            mov fp, r5
008b3f04  f0 bd                                            pop {r4, r5, r6, r7, pc}
008b3f06  31 1c                                            adds r1, r6, #0
008b3f08  2a 1c                                            adds r2, r5, #0
008b3f0a  5a f6 6a e3                                      blx #0x30e5e0
008b3f0e  00 28                                            cmp r0, #0
008b3f10  dc d1                                            bne #0x8b3ecc
008b3f12  5a 46                                            mov r2, fp
008b3f14  14 60                                            str r4, [r2]
008b3f16  10 71                                            strb r0, [r2, #4]
008b3f18  ed e7                                            b #0x8b3ef6
008b3f1a  00 22                                            movs r2, #0
008b3f1c  04 23                                            movs r3, #4
008b3f1e  00 21                                            movs r1, #0
008b3f20  c7 e7                                            b #0x8b3eb2
008b3f22  4b 46                                            mov r3, sb
008b3f24  01 a8                                            add r0, sp, #4
008b3f26  41 46                                            mov r1, r8
008b3f28  ff f7 5c ff                                      bl #0x8b3de4
008b3f2c  01 9b                                            ldr r3, [sp, #4]
008b3f2e  5a 46                                            mov r2, fp
008b3f30  13 60                                            str r3, [r2]
008b3f32  01 23                                            movs r3, #1
008b3f34  13 71                                            strb r3, [r2, #4]
008b3f36  de e7                                            b #0x8b3ef6
