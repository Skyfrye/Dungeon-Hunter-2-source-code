; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00313360, declared_size=128, range_size=128, mode=arm
; class-group: std
; alias: _ZlsIfERSoS0_RK7Point3DIT_E
; demangled: std::basic_ostream<char, std::char_traits<char> >& operator<< <float>(std::basic_ostream<char, std::char_traits<char> >&, Point3D<float> const&)
; decoder-mode: arm
00313360  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00313364  00 60 a0 e1                                      mov r6, r0
00313368  00 00 91 e5                                      ldr r0, [r1]
0031336c  01 50 a0 e1                                      mov r5, r1
00313370  4b ed ff eb                                      bl #0x30e8a4
00313374  00 20 a0 e1                                      mov r2, r0
00313378  01 30 a0 e1                                      mov r3, r1
0031337c  06 00 a0 e1                                      mov r0, r6
00313380  94 f0 ff eb                                      bl #0x30f5d8
00313384  50 40 9f e5                                      ldr r4, [pc, #0x50]
00313388  00 70 a0 e1                                      mov r7, r0
0031338c  04 40 8f e0                                      add r4, pc, r4
00313390  04 10 a0 e1                                      mov r1, r4
00313394  7f ff ff eb                                      bl #0x313198
00313398  04 00 95 e5                                      ldr r0, [r5, #4]
0031339c  40 ed ff eb                                      bl #0x30e8a4
003133a0  00 20 a0 e1                                      mov r2, r0
003133a4  01 30 a0 e1                                      mov r3, r1
003133a8  07 00 a0 e1                                      mov r0, r7
003133ac  89 f0 ff eb                                      bl #0x30f5d8
003133b0  04 10 a0 e1                                      mov r1, r4
003133b4  00 70 a0 e1                                      mov r7, r0
003133b8  76 ff ff eb                                      bl #0x313198
003133bc  08 00 95 e5                                      ldr r0, [r5, #8]
003133c0  37 ed ff eb                                      bl #0x30e8a4
003133c4  00 20 a0 e1                                      mov r2, r0
003133c8  01 30 a0 e1                                      mov r3, r1
003133cc  07 00 a0 e1                                      mov r0, r7
003133d0  80 f0 ff eb                                      bl #0x30f5d8
003133d4  06 00 a0 e1                                      mov r0, r6
003133d8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003133dc  34 b0 5a 00                                      .byte 0x34, 0xb0, 0x5a, 0x00

; FUNCTION 0x00313444, declared_size=84, range_size=84, mode=arm
; class-group: std
; alias: _ZrsIfERSiS0_R7Point3DIT_E
; demangled: std::basic_istream<char, std::char_traits<char> >& operator>><float>(std::basic_istream<char, std::char_traits<char> >&, Point3D<float>&)
; decoder-mode: arm
00313444  70 40 2d e9                                      push {r4, r5, r6, lr}
00313448  08 d0 4d e2                                      sub sp, sp, #8
0031344c  00 40 a0 e1                                      mov r4, r0
00313450  07 60 8d e2                                      add r6, sp, #7
00313454  01 50 a0 e1                                      mov r5, r1
00313458  56 f1 ff eb                                      bl #0x30f9b8
0031345c  06 10 a0 e1                                      mov r1, r6
00313460  04 00 a0 e1                                      mov r0, r4
00313464  54 f3 ff eb                                      bl #0x3101bc
00313468  04 10 85 e2                                      add r1, r5, #4
0031346c  04 00 a0 e1                                      mov r0, r4
00313470  50 f1 ff eb                                      bl #0x30f9b8
00313474  04 00 a0 e1                                      mov r0, r4
00313478  06 10 a0 e1                                      mov r1, r6
0031347c  4e f3 ff eb                                      bl #0x3101bc
00313480  04 00 a0 e1                                      mov r0, r4
00313484  08 10 85 e2                                      add r1, r5, #8
00313488  4a f1 ff eb                                      bl #0x30f9b8
0031348c  04 00 a0 e1                                      mov r0, r4
00313490  08 d0 8d e2                                      add sp, sp, #8
00313494  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008a28bc, declared_size=10, range_size=10, mode=thumb
; class-group: std
; alias: _ZSt26__stl_throw_overflow_errorPKc
; demangled: std::__stl_throw_overflow_error(char const*)
; decoder-mode: thumb
008a28bc  10 b5                                            push {r4, lr}
008a28be  6b f6 02 e4                                      blx #0x30e0c4
008a28c2  6b f6 22 e3                                      blx #0x30df08

; FUNCTION 0x008a28c8, declared_size=10, range_size=10, mode=thumb
; class-group: std
; alias: _ZSt28__stl_throw_invalid_argumentPKc
; demangled: std::__stl_throw_invalid_argument(char const*)
; decoder-mode: thumb
008a28c8  10 b5                                            push {r4, lr}
008a28ca  6b f6 fc e3                                      blx #0x30e0c4
008a28ce  6b f6 1c e3                                      blx #0x30df08

; FUNCTION 0x008a28d4, declared_size=10, range_size=10, mode=thumb
; class-group: std
; alias: _ZSt24__stl_throw_length_errorPKc
; demangled: std::__stl_throw_length_error(char const*)
; decoder-mode: thumb
008a28d4  10 b5                                            push {r4, lr}
008a28d6  6b f6 f6 e3                                      blx #0x30e0c4
008a28da  6b f6 16 e3                                      blx #0x30df08

; FUNCTION 0x008a28e0, declared_size=10, range_size=10, mode=thumb
; class-group: std
; alias: _ZSt24__stl_throw_out_of_rangePKc
; demangled: std::__stl_throw_out_of_range(char const*)
; decoder-mode: thumb
008a28e0  10 b5                                            push {r4, lr}
008a28e2  6b f6 f0 e3                                      blx #0x30e0c4
008a28e6  6b f6 10 e3                                      blx #0x30df08

; FUNCTION 0x008a28ec, declared_size=10, range_size=10, mode=thumb
; class-group: std
; alias: _ZSt23__stl_throw_range_errorPKc
; demangled: std::__stl_throw_range_error(char const*)
; decoder-mode: thumb
008a28ec  10 b5                                            push {r4, lr}
008a28ee  6b f6 ea e3                                      blx #0x30e0c4
008a28f2  6b f6 0a e3                                      blx #0x30df08

; FUNCTION 0x008a28f8, declared_size=10, range_size=10, mode=thumb
; class-group: std
; alias: _ZSt25__stl_throw_runtime_errorPKc
; demangled: std::__stl_throw_runtime_error(char const*)
; decoder-mode: thumb
008a28f8  10 b5                                            push {r4, lr}
008a28fa  6b f6 e4 e3                                      blx #0x30e0c4
008a28fe  6b f6 04 e3                                      blx #0x30df08

; FUNCTION 0x008a41e4, declared_size=900, range_size=900, mode=thumb
; class-group: std
; alias: _ZStL22_Stl_loc_combine_namesPSt12_Locale_implPKcS2_S2_S2_S2_S2_S2_i
; demangled: std::_Stl_loc_combine_names(std::_Locale_impl*, char const*, char const*, char const*, char const*, char const*, char const*, char const*, int)
; decoder-mode: thumb
008a41e4  f0 b5                                            push {r4, r5, r6, r7, lr}
008a41e6  5f 46                                            mov r7, fp
008a41e8  56 46                                            mov r6, sl
008a41ea  4d 46                                            mov r5, sb
008a41ec  44 46                                            mov r4, r8
008a41ee  f0 b4                                            push {r4, r5, r6, r7}
008a41f0  cf 4c                                            ldr r4, [pc, #0x33c]
008a41f2  d0 4f                                            ldr r7, [pc, #0x340]
008a41f4  ee 26                                            movs r6, #0xee
008a41f6  a5 44                                            add sp, r4
008a41f8  03 93                                            str r3, [sp, #0xc]
008a41fa  c1 9b                                            ldr r3, [sp, #0x304]
008a41fc  14 1c                                            adds r4, r2, #0
008a41fe  c0 9a                                            ldr r2, [sp, #0x300]
008a4200  05 93                                            str r3, [sp, #0x14]
008a4202  c3 9b                                            ldr r3, [sp, #0x30c]
008a4204  7f 44                                            add r7, pc
008a4206  04 92                                            str r2, [sp, #0x10]
008a4208  07 93                                            str r3, [sp, #0x1c]
008a420a  cb 4b                                            ldr r3, [pc, #0x32c]
008a420c  c2 9a                                            ldr r2, [sp, #0x308]
008a420e  f6 00                                            lsls r6, r6, #3
008a4210  02 93                                            str r3, [sp, #8]
008a4212  fb 58                                            ldr r3, [r7, r3]
008a4214  06 92                                            str r2, [sp, #0x18]
008a4216  c4 9a                                            ldr r2, [sp, #0x310]
008a4218  1b 68                                            ldr r3, [r3]
008a421a  05 1c                                            adds r5, r0, #0
008a421c  01 91                                            str r1, [sp, #4]
008a421e  91 46                                            mov sb, r2
008a4220  b5 93                                            str r3, [sp, #0x2d4]
008a4222  16 40                                            ands r6, r2
008a4224  00 d1                                            bne #0x8a4228
008a4226  76 e1                                            b #0x8a4516
008a4228  08 1c                                            adds r0, r1, #0
008a422a  21 1c                                            adds r1, r4, #0
008a422c  6a f6 76 e0                                      blx #0x30e31c
008a4230  00 28                                            cmp r0, #0
008a4232  1e d1                                            bne #0x8a4272
008a4234  01 98                                            ldr r0, [sp, #4]
008a4236  03 99                                            ldr r1, [sp, #0xc]
008a4238  6a f6 70 e0                                      blx #0x30e31c
008a423c  00 28                                            cmp r0, #0
008a423e  18 d1                                            bne #0x8a4272
008a4240  01 98                                            ldr r0, [sp, #4]
008a4242  04 99                                            ldr r1, [sp, #0x10]
008a4244  6a f6 6a e0                                      blx #0x30e31c
008a4248  00 28                                            cmp r0, #0
008a424a  12 d1                                            bne #0x8a4272
008a424c  01 98                                            ldr r0, [sp, #4]
008a424e  05 99                                            ldr r1, [sp, #0x14]
008a4250  6a f6 64 e0                                      blx #0x30e31c
008a4254  00 28                                            cmp r0, #0
008a4256  0c d1                                            bne #0x8a4272
008a4258  01 98                                            ldr r0, [sp, #4]
008a425a  06 99                                            ldr r1, [sp, #0x18]
008a425c  6a f6 5e e0                                      blx #0x30e31c
008a4260  00 28                                            cmp r0, #0
008a4262  06 d1                                            bne #0x8a4272
008a4264  01 98                                            ldr r0, [sp, #4]
008a4266  07 99                                            ldr r1, [sp, #0x1c]
008a4268  6a f6 58 e0                                      blx #0x30e31c
008a426c  00 28                                            cmp r0, #0
008a426e  00 d1                                            bne #0x8a4272
008a4270  51 e1                                            b #0x8a4516
008a4272  ee 23                                            movs r3, #0xee
008a4274  db 00                                            lsls r3, r3, #3
008a4276  9e 42                                            cmp r6, r3
008a4278  00 d1                                            bne #0x8a427c
008a427a  23 e1                                            b #0x8a44c4
008a427c  af 49                                            ldr r1, [pc, #0x2bc]
008a427e  08 35                                            adds r5, #8
008a4280  a8 46                                            mov r8, r5
008a4282  5b ad                                            add r5, sp, #0x16c
008a4284  09 aa                                            add r2, sp, #0x24
008a4286  79 44                                            add r1, pc
008a4288  28 1c                                            adds r0, r5, #0
008a428a  6f f6 30 e7                                      blx #0x3140ec
008a428e  4a 46                                            mov r2, sb
008a4290  92 06                                            lsls r2, r2, #0x1a
008a4292  00 d4                                            bmi #0x8a4296
008a4294  14 e1                                            b #0x8a44c0
008a4296  08 aa                                            add r2, sp, #0x20
008a4298  0f ab                                            add r3, sp, #0x3c
008a429a  93 46                                            mov fp, r2
008a429c  19 1c                                            adds r1, r3, #0
008a429e  20 1c                                            adds r0, r4, #0
008a42a0  00 22                                            movs r2, #0
008a42a2  9a 46                                            mov sl, r3
008a42a4  5b 46                                            mov r3, fp
008a42a6  12 f0 31 fb                                      bl #0x8b690c
008a42aa  55 ae                                            add r6, sp, #0x154
008a42ac  02 1c                                            adds r2, r0, #0
008a42ae  29 1c                                            adds r1, r5, #0
008a42b0  30 1c                                            adds r0, r6, #0
008a42b2  8f f6 0c e3                                      blx #0x3338cc
008a42b6  a2 4a                                            ldr r2, [pc, #0x288]
008a42b8  4f ac                                            add r4, sp, #0x13c
008a42ba  20 1c                                            adds r0, r4, #0
008a42bc  7a 44                                            add r2, pc
008a42be  31 1c                                            adds r1, r6, #0
008a42c0  8f f6 04 e3                                      blx #0x3338cc
008a42c4  a0 45                                            cmp r8, r4
008a42c6  04 d0                                            beq #0x8a42d2
008a42c8  61 69                                            ldr r1, [r4, #0x14]
008a42ca  22 69                                            ldr r2, [r4, #0x10]
008a42cc  40 46                                            mov r0, r8
008a42ce  6c f6 88 e3                                      blx #0x3109e0
008a42d2  20 1c                                            adds r0, r4, #0
008a42d4  6f f6 6a e3                                      blx #0x3139ac
008a42d8  30 1c                                            adds r0, r6, #0
008a42da  6f f6 68 e3                                      blx #0x3139ac
008a42de  28 1c                                            adds r0, r5, #0
008a42e0  6f f6 64 e3                                      blx #0x3139ac
008a42e4  97 49                                            ldr r1, [pc, #0x25c]
008a42e6  6d ad                                            add r5, sp, #0x1b4
008a42e8  28 1c                                            adds r0, r5, #0
008a42ea  79 44                                            add r1, pc
008a42ec  0a aa                                            add r2, sp, #0x28
008a42ee  6f f6 fe e6                                      blx #0x3140ec
008a42f2  4b 46                                            mov r3, sb
008a42f4  9b 05                                            lsls r3, r3, #0x16
008a42f6  00 d4                                            bmi #0x8a42fa
008a42f8  df e0                                            b #0x8a44ba
008a42fa  5b 46                                            mov r3, fp
008a42fc  51 46                                            mov r1, sl
008a42fe  00 22                                            movs r2, #0
008a4300  03 98                                            ldr r0, [sp, #0xc]
008a4302  12 f0 27 fb                                      bl #0x8b6954
008a4306  67 ae                                            add r6, sp, #0x19c
008a4308  02 1c                                            adds r2, r0, #0
008a430a  29 1c                                            adds r1, r5, #0
008a430c  30 1c                                            adds r0, r6, #0
008a430e  8f f6 de e2                                      blx #0x3338cc
008a4312  8d 4a                                            ldr r2, [pc, #0x234]
008a4314  61 ac                                            add r4, sp, #0x184
008a4316  20 1c                                            adds r0, r4, #0
008a4318  7a 44                                            add r2, pc
008a431a  31 1c                                            adds r1, r6, #0
008a431c  8f f6 d6 e2                                      blx #0x3338cc
008a4320  61 69                                            ldr r1, [r4, #0x14]
008a4322  22 69                                            ldr r2, [r4, #0x10]
008a4324  40 46                                            mov r0, r8
008a4326  6c f6 6e e2                                      blx #0x310804
008a432a  20 1c                                            adds r0, r4, #0
008a432c  6f f6 3e e3                                      blx #0x3139ac
008a4330  30 1c                                            adds r0, r6, #0
008a4332  6f f6 3c e3                                      blx #0x3139ac
008a4336  28 1c                                            adds r0, r5, #0
008a4338  6f f6 38 e3                                      blx #0x3139ac
008a433c  83 49                                            ldr r1, [pc, #0x20c]
008a433e  7f ad                                            add r5, sp, #0x1fc
008a4340  28 1c                                            adds r0, r5, #0
008a4342  79 44                                            add r1, pc
008a4344  0b aa                                            add r2, sp, #0x2c
008a4346  6f f6 d2 e6                                      blx #0x3140ec
008a434a  4b 46                                            mov r3, sb
008a434c  db 05                                            lsls r3, r3, #0x17
008a434e  00 d4                                            bmi #0x8a4352
008a4350  b0 e0                                            b #0x8a44b4
008a4352  5b 46                                            mov r3, fp
008a4354  51 46                                            mov r1, sl
008a4356  00 22                                            movs r2, #0
008a4358  04 98                                            ldr r0, [sp, #0x10]
008a435a  12 f0 e9 fa                                      bl #0x8b6930
008a435e  79 ae                                            add r6, sp, #0x1e4
008a4360  02 1c                                            adds r2, r0, #0
008a4362  29 1c                                            adds r1, r5, #0
008a4364  30 1c                                            adds r0, r6, #0
008a4366  8f f6 b2 e2                                      blx #0x3338cc
008a436a  79 4a                                            ldr r2, [pc, #0x1e4]
008a436c  73 ac                                            add r4, sp, #0x1cc
008a436e  20 1c                                            adds r0, r4, #0
008a4370  7a 44                                            add r2, pc
008a4372  31 1c                                            adds r1, r6, #0
008a4374  8f f6 aa e2                                      blx #0x3338cc
008a4378  61 69                                            ldr r1, [r4, #0x14]
008a437a  22 69                                            ldr r2, [r4, #0x10]
008a437c  40 46                                            mov r0, r8
008a437e  6c f6 42 e2                                      blx #0x310804
008a4382  20 1c                                            adds r0, r4, #0
008a4384  6f f6 12 e3                                      blx #0x3139ac
008a4388  30 1c                                            adds r0, r6, #0
008a438a  6f f6 10 e3                                      blx #0x3139ac
008a438e  28 1c                                            adds r0, r5, #0
008a4390  6f f6 0c e3                                      blx #0x3139ac
008a4394  6f 49                                            ldr r1, [pc, #0x1bc]
008a4396  91 ad                                            add r5, sp, #0x244
008a4398  28 1c                                            adds r0, r5, #0
008a439a  79 44                                            add r1, pc
008a439c  0c aa                                            add r2, sp, #0x30
008a439e  6f f6 a6 e6                                      blx #0x3140ec
008a43a2  4b 46                                            mov r3, sb
008a43a4  db 06                                            lsls r3, r3, #0x1b
008a43a6  00 d4                                            bmi #0x8a43aa
008a43a8  81 e0                                            b #0x8a44ae
008a43aa  5b 46                                            mov r3, fp
008a43ac  51 46                                            mov r1, sl
008a43ae  00 22                                            movs r2, #0
008a43b0  05 98                                            ldr r0, [sp, #0x14]
008a43b2  12 f0 e1 fa                                      bl #0x8b6978
008a43b6  8b ae                                            add r6, sp, #0x22c
008a43b8  02 1c                                            adds r2, r0, #0
008a43ba  29 1c                                            adds r1, r5, #0
008a43bc  30 1c                                            adds r0, r6, #0
008a43be  8f f6 86 e2                                      blx #0x3338cc
008a43c2  65 4a                                            ldr r2, [pc, #0x194]
008a43c4  85 ac                                            add r4, sp, #0x214
008a43c6  20 1c                                            adds r0, r4, #0
008a43c8  7a 44                                            add r2, pc
008a43ca  31 1c                                            adds r1, r6, #0
008a43cc  8f f6 7e e2                                      blx #0x3338cc
008a43d0  61 69                                            ldr r1, [r4, #0x14]
008a43d2  22 69                                            ldr r2, [r4, #0x10]
008a43d4  40 46                                            mov r0, r8
008a43d6  6c f6 16 e2                                      blx #0x310804
008a43da  20 1c                                            adds r0, r4, #0
008a43dc  6f f6 e6 e2                                      blx #0x3139ac
008a43e0  30 1c                                            adds r0, r6, #0
008a43e2  6f f6 e4 e2                                      blx #0x3139ac
008a43e6  28 1c                                            adds r0, r5, #0
008a43e8  6f f6 e0 e2                                      blx #0x3139ac
008a43ec  5b 49                                            ldr r1, [pc, #0x16c]
008a43ee  a3 ad                                            add r5, sp, #0x28c
008a43f0  28 1c                                            adds r0, r5, #0
008a43f2  79 44                                            add r1, pc
008a43f4  0d aa                                            add r2, sp, #0x34
008a43f6  6f f6 7a e6                                      blx #0x3140ec
008a43fa  4b 46                                            mov r3, sb
008a43fc  5b 06                                            lsls r3, r3, #0x19
008a43fe  53 d5                                            bpl #0x8a44a8
008a4400  5b 46                                            mov r3, fp
008a4402  51 46                                            mov r1, sl
008a4404  00 22                                            movs r2, #0
008a4406  06 98                                            ldr r0, [sp, #0x18]
008a4408  12 f0 c8 fa                                      bl #0x8b699c
008a440c  9d ae                                            add r6, sp, #0x274
008a440e  02 1c                                            adds r2, r0, #0
008a4410  29 1c                                            adds r1, r5, #0
008a4412  30 1c                                            adds r0, r6, #0
008a4414  8f f6 5a e2                                      blx #0x3338cc
008a4418  51 4a                                            ldr r2, [pc, #0x144]
008a441a  97 ac                                            add r4, sp, #0x25c
008a441c  20 1c                                            adds r0, r4, #0
008a441e  7a 44                                            add r2, pc
008a4420  31 1c                                            adds r1, r6, #0
008a4422  8f f6 54 e2                                      blx #0x3338cc
008a4426  61 69                                            ldr r1, [r4, #0x14]
008a4428  22 69                                            ldr r2, [r4, #0x10]
008a442a  40 46                                            mov r0, r8
008a442c  6c f6 ea e1                                      blx #0x310804
008a4430  20 1c                                            adds r0, r4, #0
008a4432  6f f6 bc e2                                      blx #0x3139ac
008a4436  30 1c                                            adds r0, r6, #0
008a4438  6f f6 b8 e2                                      blx #0x3139ac
008a443c  28 1c                                            adds r0, r5, #0
008a443e  6f f6 b6 e2                                      blx #0x3139ac
008a4442  48 49                                            ldr r1, [pc, #0x120]
008a4444  af ad                                            add r5, sp, #0x2bc
008a4446  28 1c                                            adds r0, r5, #0
008a4448  79 44                                            add r1, pc
008a444a  0e aa                                            add r2, sp, #0x38
008a444c  6f f6 4e e6                                      blx #0x3140ec
008a4450  4b 46                                            mov r3, sb
008a4452  5b 05                                            lsls r3, r3, #0x15
008a4454  25 d5                                            bpl #0x8a44a2
008a4456  5b 46                                            mov r3, fp
008a4458  51 46                                            mov r1, sl
008a445a  00 22                                            movs r2, #0
008a445c  07 98                                            ldr r0, [sp, #0x1c]
008a445e  12 f0 af fa                                      bl #0x8b69c0
008a4462  a9 ac                                            add r4, sp, #0x2a4
008a4464  02 1c                                            adds r2, r0, #0
008a4466  29 1c                                            adds r1, r5, #0
008a4468  20 1c                                            adds r0, r4, #0
008a446a  8f f6 30 e2                                      blx #0x3338cc
008a446e  61 69                                            ldr r1, [r4, #0x14]
008a4470  22 69                                            ldr r2, [r4, #0x10]
008a4472  40 46                                            mov r0, r8
008a4474  6c f6 c6 e1                                      blx #0x310804
008a4478  20 1c                                            adds r0, r4, #0
008a447a  6f f6 98 e2                                      blx #0x3139ac
008a447e  28 1c                                            adds r0, r5, #0
008a4480  6f f6 94 e2                                      blx #0x3139ac
008a4484  02 9a                                            ldr r2, [sp, #8]
008a4486  bb 58                                            ldr r3, [r7, r2]
008a4488  b5 9a                                            ldr r2, [sp, #0x2d4]
008a448a  1b 68                                            ldr r3, [r3]
008a448c  9a 42                                            cmp r2, r3
008a448e  4d d1                                            bne #0x8a452c
008a4490  b7 23                                            movs r3, #0xb7
008a4492  9b 00                                            lsls r3, r3, #2
008a4494  9d 44                                            add sp, r3
008a4496  3c bc                                            pop {r2, r3, r4, r5}
008a4498  90 46                                            mov r8, r2
008a449a  99 46                                            mov sb, r3
008a449c  a2 46                                            mov sl, r4
008a449e  ab 46                                            mov fp, r5
008a44a0  f0 bd                                            pop {r4, r5, r6, r7, pc}
008a44a2  01 9a                                            ldr r2, [sp, #4]
008a44a4  07 92                                            str r2, [sp, #0x1c]
008a44a6  d6 e7                                            b #0x8a4456
008a44a8  01 9a                                            ldr r2, [sp, #4]
008a44aa  06 92                                            str r2, [sp, #0x18]
008a44ac  a8 e7                                            b #0x8a4400
008a44ae  01 9a                                            ldr r2, [sp, #4]
008a44b0  05 92                                            str r2, [sp, #0x14]
008a44b2  7a e7                                            b #0x8a43aa
008a44b4  01 9a                                            ldr r2, [sp, #4]
008a44b6  04 92                                            str r2, [sp, #0x10]
008a44b8  4b e7                                            b #0x8a4352
008a44ba  01 9a                                            ldr r2, [sp, #4]
008a44bc  03 92                                            str r2, [sp, #0xc]
008a44be  1c e7                                            b #0x8a42fa
008a44c0  01 9c                                            ldr r4, [sp, #4]
008a44c2  e8 e6                                            b #0x8a4296
008a44c4  20 1c                                            adds r0, r4, #0
008a44c6  03 99                                            ldr r1, [sp, #0xc]
008a44c8  69 f6 28 e7                                      blx #0x30e31c
008a44cc  00 28                                            cmp r0, #0
008a44ce  00 d0                                            beq #0x8a44d2
008a44d0  d4 e6                                            b #0x8a427c
008a44d2  20 1c                                            adds r0, r4, #0
008a44d4  04 99                                            ldr r1, [sp, #0x10]
008a44d6  69 f6 22 e7                                      blx #0x30e31c
008a44da  00 28                                            cmp r0, #0
008a44dc  00 d0                                            beq #0x8a44e0
008a44de  cd e6                                            b #0x8a427c
008a44e0  20 1c                                            adds r0, r4, #0
008a44e2  05 99                                            ldr r1, [sp, #0x14]
008a44e4  69 f6 1a e7                                      blx #0x30e31c
008a44e8  00 28                                            cmp r0, #0
008a44ea  00 d0                                            beq #0x8a44ee
008a44ec  c6 e6                                            b #0x8a427c
008a44ee  20 1c                                            adds r0, r4, #0
008a44f0  06 99                                            ldr r1, [sp, #0x18]
008a44f2  69 f6 14 e7                                      blx #0x30e31c
008a44f6  00 28                                            cmp r0, #0
008a44f8  00 d0                                            beq #0x8a44fc
008a44fa  bf e6                                            b #0x8a427c
008a44fc  20 1c                                            adds r0, r4, #0
008a44fe  07 99                                            ldr r1, [sp, #0x1c]
008a4500  69 f6 0c e7                                      blx #0x30e31c
008a4504  00 28                                            cmp r0, #0
008a4506  00 d0                                            beq #0x8a450a
008a4508  b8 e6                                            b #0x8a427c
008a450a  28 1c                                            adds r0, r5, #0
008a450c  21 1c                                            adds r1, r4, #0
008a450e  08 30                                            adds r0, #8
008a4510  8c f6 2c e1                                      blx #0x33076c
008a4514  b6 e7                                            b #0x8a4484
008a4516  01 98                                            ldr r0, [sp, #4]
008a4518  69 f6 9c e4                                      blx #0x30de54
008a451c  01 9b                                            ldr r3, [sp, #4]
008a451e  08 35                                            adds r5, #8
008a4520  1a 18                                            adds r2, r3, r0
008a4522  19 1c                                            adds r1, r3, #0
008a4524  28 1c                                            adds r0, r5, #0
008a4526  6c f6 5c e2                                      blx #0x3109e0
008a452a  ab e7                                            b #0x8a4484
008a452c  69 f6 f0 e6                                      blx #0x30e310
; mapping-symbol data/literal pool
008a4530  24 fd ff ff 90 08 0f 00 ac 40 00 00 a2 15 07 00  .byte 0x24, 0xfd, 0xff, 0xff, 0x90, 0x08, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa2, 0x15, 0x07, 0x00
008a4540  78 15 07 00 4e 15 07 00 1c 15 07 00 02 15 07 00  .byte 0x78, 0x15, 0x07, 0x00, 0x4e, 0x15, 0x07, 0x00, 0x1c, 0x15, 0x07, 0x00, 0x02, 0x15, 0x07, 0x00
008a4550  c4 14 07 00 b6 14 07 00 6c 14 07 00 6a 14 07 00  .byte 0xc4, 0x14, 0x07, 0x00, 0xb6, 0x14, 0x07, 0x00, 0x6c, 0x14, 0x07, 0x00, 0x6a, 0x14, 0x07, 0x00
008a4560  16 14 07 00 24 14 07 00                          .byte 0x16, 0x14, 0x07, 0x00, 0x24, 0x14, 0x07, 0x00

; FUNCTION 0x008a4dcc, declared_size=56, range_size=56, mode=thumb
; class-group: std
; alias: _ZSt14_release_facetRPNSt6locale5facetE
; demangled: std::_release_facet(std::locale::facet*&)
; decoder-mode: thumb
008a4dcc  70 b5                                            push {r4, r5, r6, lr}
008a4dce  04 68                                            ldr r4, [r0]
008a4dd0  05 1c                                            adds r5, r0, #0
008a4dd2  00 2c                                            cmp r4, #0
008a4dd4  15 d0                                            beq #0x8a4e02
008a4dd6  26 1c                                            adds r6, r4, #0
008a4dd8  08 36                                            adds r6, #8
008a4dda  30 1c                                            adds r0, r6, #0
008a4ddc  69 f6 e8 e3                                      blx #0x30e5b0
008a4de0  63 68                                            ldr r3, [r4, #4]
008a4de2  30 1c                                            adds r0, r6, #0
008a4de4  01 3b                                            subs r3, #1
008a4de6  63 60                                            str r3, [r4, #4]
008a4de8  64 68                                            ldr r4, [r4, #4]
008a4dea  69 f6 d4 e2                                      blx #0x30e394
008a4dee  00 2c                                            cmp r4, #0
008a4df0  07 d1                                            bne #0x8a4e02
008a4df2  28 68                                            ldr r0, [r5]
008a4df4  00 28                                            cmp r0, #0
008a4df6  02 d0                                            beq #0x8a4dfe
008a4df8  03 68                                            ldr r3, [r0]
008a4dfa  5b 68                                            ldr r3, [r3, #4]
008a4dfc  98 47                                            blx r3
008a4dfe  00 23                                            movs r3, #0
008a4e00  2b 60                                            str r3, [r5]
008a4e02  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008a4e04, declared_size=34, range_size=34, mode=thumb
; class-group: std
; alias: _ZSt10_get_facetPNSt6locale5facetE
; demangled: std::_get_facet(std::locale::facet*)
; decoder-mode: thumb
008a4e04  70 b5                                            push {r4, r5, r6, lr}
008a4e06  04 1e                                            subs r4, r0, #0
008a4e08  0b d0                                            beq #0x8a4e22
008a4e0a  25 1c                                            adds r5, r4, #0
008a4e0c  08 35                                            adds r5, #8
008a4e0e  28 1c                                            adds r0, r5, #0
008a4e10  69 f6 ce e3                                      blx #0x30e5b0
008a4e14  63 68                                            ldr r3, [r4, #4]
008a4e16  28 1c                                            adds r0, r5, #0
008a4e18  01 33                                            adds r3, #1
008a4e1a  63 60                                            str r3, [r4, #4]
008a4e1c  63 68                                            ldr r3, [r4, #4]
008a4e1e  69 f6 ba e2                                      blx #0x30e394
008a4e22  20 1c                                            adds r0, r4, #0
008a4e24  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008a5430, declared_size=30, range_size=30, mode=thumb
; class-group: std
; alias: _ZSt16_get_Locale_implPSt12_Locale_impl
; demangled: std::_get_Locale_impl(std::_Locale_impl*)
; decoder-mode: thumb
008a5430  70 b5                                            push {r4, r5, r6, lr}
008a5432  05 1d                                            adds r5, r0, #4
008a5434  04 1c                                            adds r4, r0, #0
008a5436  28 1c                                            adds r0, r5, #0
008a5438  69 f6 ba e0                                      blx #0x30e5b0
008a543c  23 68                                            ldr r3, [r4]
008a543e  28 1c                                            adds r0, r5, #0
008a5440  01 33                                            adds r3, #1
008a5442  23 60                                            str r3, [r4]
008a5444  23 68                                            ldr r3, [r4]
008a5446  68 f6 a6 e7                                      blx #0x30e394
008a544a  20 1c                                            adds r0, r4, #0
008a544c  70 bd                                            pop {r4, r5, r6, pc}

; FUNCTION 0x008a59a8, declared_size=80, range_size=80, mode=thumb
; class-group: std
; alias: _ZSt20_release_Locale_implRPSt12_Locale_impl
; demangled: std::_release_Locale_impl(std::_Locale_impl*&)
; decoder-mode: thumb
008a59a8  70 b5                                            push {r4, r5, r6, lr}
008a59aa  04 68                                            ldr r4, [r0]
008a59ac  05 1c                                            adds r5, r0, #0
008a59ae  26 1d                                            adds r6, r4, #4
008a59b0  30 1c                                            adds r0, r6, #0
008a59b2  68 f6 fe e5                                      blx #0x30e5b0
008a59b6  23 68                                            ldr r3, [r4]
008a59b8  30 1c                                            adds r0, r6, #0
008a59ba  01 3b                                            subs r3, #1
008a59bc  23 60                                            str r3, [r4]
008a59be  24 68                                            ldr r4, [r4]
008a59c0  68 f6 e8 e4                                      blx #0x30e394
008a59c4  00 2c                                            cmp r4, #0
008a59c6  10 d1                                            bne #0x8a59ea
008a59c8  0a 4b                                            ldr r3, [pc, #0x28]
008a59ca  2c 68                                            ldr r4, [r5]
008a59cc  7b 44                                            add r3, pc
008a59ce  1b 6a                                            ldr r3, [r3, #0x20]
008a59d0  1b 68                                            ldr r3, [r3]
008a59d2  9c 42                                            cmp r4, r3
008a59d4  0a d0                                            beq #0x8a59ec
008a59d6  00 2c                                            cmp r4, #0
008a59d8  05 d0                                            beq #0x8a59e6
008a59da  20 1c                                            adds r0, r4, #0
008a59dc  ff f7 b8 ff                                      bl #0x8a5950
008a59e0  20 1c                                            adds r0, r4, #0
008a59e2  68 f6 66 e4                                      blx #0x30e2b0
008a59e6  00 23                                            movs r3, #0
008a59e8  2b 60                                            str r3, [r5]
008a59ea  70 bd                                            pop {r4, r5, r6, pc}
008a59ec  20 1c                                            adds r0, r4, #0
008a59ee  ff f7 af ff                                      bl #0x8a5950
008a59f2  f8 e7                                            b #0x8a59e6
; mapping-symbol data/literal pool
008a59f4  c0 f4 18 00                                      .byte 0xc0, 0xf4, 0x18, 0x00

; FUNCTION 0x008a7b64, declared_size=88, range_size=88, mode=thumb
; class-group: std
; alias: _ZSt22_Stl_get_global_localev
; demangled: std::_Stl_get_global_locale()
; decoder-mode: thumb
008a7b64  70 b5                                            push {r4, r5, r6, lr}
008a7b66  10 4c                                            ldr r4, [pc, #0x40]
008a7b68  10 4d                                            ldr r5, [pc, #0x40]
008a7b6a  7c 44                                            add r4, pc
008a7b6c  e3 6e                                            ldr r3, [r4, #0x6c]
008a7b6e  7d 44                                            add r5, pc
008a7b70  da 07                                            lsls r2, r3, #0x1f
008a7b72  03 d5                                            bpl #0x8a7b7c
008a7b74  0e 4b                                            ldr r3, [pc, #0x38]
008a7b76  7b 44                                            add r3, pc
008a7b78  98 6e                                            ldr r0, [r3, #0x68]
008a7b7a  70 bd                                            pop {r4, r5, r6, pc}
008a7b7c  26 1c                                            adds r6, r4, #0
008a7b7e  6c 36                                            adds r6, #0x6c
008a7b80  30 1c                                            adds r0, r6, #0
008a7b82  66 f6 f4 e5                                      blx #0x30e76c
008a7b86  00 28                                            cmp r0, #0
008a7b88  f4 d0                                            beq #0x8a7b74
008a7b8a  70 34                                            adds r4, #0x70
008a7b8c  20 1c                                            adds r0, r4, #0
008a7b8e  ff f7 d1 ff                                      bl #0x8a7b34
008a7b92  30 1c                                            adds r0, r6, #0
008a7b94  66 f6 52 e7                                      blx #0x30ea3c
008a7b98  06 4b                                            ldr r3, [pc, #0x18]
008a7b9a  20 1c                                            adds r0, r4, #0
008a7b9c  e9 58                                            ldr r1, [r5, r3]
008a7b9e  06 4b                                            ldr r3, [pc, #0x18]
008a7ba0  ea 58                                            ldr r2, [r5, r3]
008a7ba2  66 f6 b0 e3                                      blx #0x30e304
008a7ba6  e5 e7                                            b #0x8a7b74
; mapping-symbol data/literal pool
008a7ba8  22 d3 18 00 26 cf 0e 00 16 d3 18 00 c4 2d 00 00  .byte 0x22, 0xd3, 0x18, 0x00, 0x26, 0xcf, 0x0e, 0x00, 0x16, 0xd3, 0x18, 0x00, 0xc4, 0x2d, 0x00, 0x00
008a7bb8  90 18 00 00                                      .byte 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x008a7bbc, declared_size=88, range_size=88, mode=thumb
; class-group: std
; alias: _ZSt23_Stl_get_classic_localev
; demangled: std::_Stl_get_classic_locale()
; decoder-mode: thumb
008a7bbc  70 b5                                            push {r4, r5, r6, lr}
008a7bbe  10 4c                                            ldr r4, [pc, #0x40]
008a7bc0  10 4d                                            ldr r5, [pc, #0x40]
008a7bc2  7c 44                                            add r4, pc
008a7bc4  63 6f                                            ldr r3, [r4, #0x74]
008a7bc6  7d 44                                            add r5, pc
008a7bc8  da 07                                            lsls r2, r3, #0x1f
008a7bca  03 d5                                            bpl #0x8a7bd4
008a7bcc  0e 4b                                            ldr r3, [pc, #0x38]
008a7bce  7b 44                                            add r3, pc
008a7bd0  18 6a                                            ldr r0, [r3, #0x20]
008a7bd2  70 bd                                            pop {r4, r5, r6, pc}
008a7bd4  26 1c                                            adds r6, r4, #0
008a7bd6  74 36                                            adds r6, #0x74
008a7bd8  30 1c                                            adds r0, r6, #0
008a7bda  66 f6 c8 e5                                      blx #0x30e76c
008a7bde  00 28                                            cmp r0, #0
008a7be0  f4 d0                                            beq #0x8a7bcc
008a7be2  78 34                                            adds r4, #0x78
008a7be4  20 1c                                            adds r0, r4, #0
008a7be6  ff f7 a5 ff                                      bl #0x8a7b34
008a7bea  30 1c                                            adds r0, r6, #0
008a7bec  66 f6 26 e7                                      blx #0x30ea3c
008a7bf0  06 4b                                            ldr r3, [pc, #0x18]
008a7bf2  20 1c                                            adds r0, r4, #0
008a7bf4  e9 58                                            ldr r1, [r5, r3]
008a7bf6  06 4b                                            ldr r3, [pc, #0x18]
008a7bf8  ea 58                                            ldr r2, [r5, r3]
008a7bfa  66 f6 84 e3                                      blx #0x30e304
008a7bfe  e5 e7                                            b #0x8a7bcc
; mapping-symbol data/literal pool
008a7c00  ca d2 18 00 ce ce 0e 00 be d2 18 00 c4 2d 00 00  .byte 0xca, 0xd2, 0x18, 0x00, 0xce, 0xce, 0x0e, 0x00, 0xbe, 0xd2, 0x18, 0x00, 0xc4, 0x2d, 0x00, 0x00
008a7c10  90 18 00 00                                      .byte 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x008a7ddc, declared_size=56, range_size=56, mode=thumb
; class-group: std
; alias: _ZSt26_copy_Nameless_Locale_implPSt12_Locale_impl
; demangled: std::_copy_Nameless_Locale_impl(std::_Locale_impl*)
; decoder-mode: thumb
008a7ddc  70 b5                                            push {r4, r5, r6, lr}
008a7dde  05 1c                                            adds r5, r0, #0
008a7de0  2c 20                                            movs r0, #0x2c
008a7de2  66 f6 54 e5                                      blx #0x30e88c
008a7de6  29 1c                                            adds r1, r5, #0
008a7de8  04 1c                                            adds r4, r0, #0
008a7dea  ff f7 cb ff                                      bl #0x8a7d84
008a7dee  08 4b                                            ldr r3, [pc, #0x20]
008a7df0  20 1c                                            adds r0, r4, #0
008a7df2  08 30                                            adds r0, #8
008a7df4  7b 44                                            add r3, pc
008a7df6  1a 1c                                            adds r2, r3, #0
008a7df8  7c 32                                            adds r2, #0x7c
008a7dfa  90 42                                            cmp r0, r2
008a7dfc  05 d0                                            beq #0x8a7e0a
008a7dfe  90 22                                            movs r2, #0x90
008a7e00  99 58                                            ldr r1, [r3, r2]
008a7e02  8c 22                                            movs r2, #0x8c
008a7e04  9a 58                                            ldr r2, [r3, r2]
008a7e06  68 f6 ec e5                                      blx #0x3109e0
008a7e0a  20 1c                                            adds r0, r4, #0
008a7e0c  70 bd                                            pop {r4, r5, r6, pc}
008a7e0e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008a7e10  98 d0 18 00                                      .byte 0x98, 0xd0, 0x18, 0x00

; FUNCTION 0x008b8ac4, declared_size=54, range_size=54, mode=thumb
; class-group: std
; alias: _ZStL20_Stl_create_wfilebufP7__sFILEi
; demangled: std::_Stl_create_wfilebuf(__sFILE*, int)
; decoder-mode: thumb
008b8ac4  70 b5                                            push {r4, r5, r6, lr}
008b8ac6  06 1c                                            adds r6, r0, #0
008b8ac8  94 20                                            movs r0, #0x94
008b8aca  0d 1c                                            adds r5, r1, #0
008b8acc  55 f6 de e6                                      blx #0x30e88c
008b8ad0  04 1c                                            adds r4, r0, #0
008b8ad2  ff f7 3f fb                                      bl #0x8b8154
008b8ad6  20 1c                                            adds r0, r4, #0
008b8ad8  0e 23                                            movs r3, #0xe
008b8ada  f1 5e                                            ldrsh r1, [r6, r3]
008b8adc  20 30                                            adds r0, #0x20
008b8ade  2a 1c                                            adds r2, r5, #0
008b8ae0  05 f0 92 f8                                      bl #0x8bdc08
008b8ae4  28 23                                            movs r3, #0x28
008b8ae6  e3 5c                                            ldrb r3, [r4, r3]
008b8ae8  00 2b                                            cmp r3, #0
008b8aea  04 d1                                            bne #0x8b8af6
008b8aec  23 68                                            ldr r3, [r4]
008b8aee  20 1c                                            adds r0, r4, #0
008b8af0  00 24                                            movs r4, #0
008b8af2  5b 68                                            ldr r3, [r3, #4]
008b8af4  98 47                                            blx r3
008b8af6  20 1c                                            adds r0, r4, #0
008b8af8  70 bd                                            pop {r4, r5, r6, pc}
