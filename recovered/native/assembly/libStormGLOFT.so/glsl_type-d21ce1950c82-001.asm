; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0004edac, declared_size=40, range_size=40, mode=thumb
; class-group: glsl_type
; alias: _ZNK9glsl_type8row_typeEv
; demangled: glsl_type::row_type() const
; decoder-mode: thumb
0004edac  01 89                                            ldrh r1, [r0, #8]
0004edae  11 f4 c0 4f                                      tst.w r1, #0x6000
0004edb2  08 d0                                            beq #0x4edc6
0004edb4  40 68                                            ldr r0, [r0, #4]
0004edb6  02 28                                            cmp r0, #2
0004edb8  05 d1                                            bne #0x4edc6
0004edba  c1 f3 02 31                                      ubfx r1, r1, #0xc, #3
0004edbe  02 20                                            movs r0, #2
0004edc0  01 22                                            movs r2, #1
0004edc2  61 f0 89 be                                      b.w #0xb0ad8
0004edc6  02 48                                            ldr r0, [pc, #8]
0004edc8  78 44                                            add r0, pc
0004edca  00 68                                            ldr r0, [r0]
0004edcc  00 68                                            ldr r0, [r0]
0004edce  70 47                                            bx lr
0004edd0  74 d7                                            bvc #0x4eebc
0004edd2  08 00                                            movs r0, r1

; FUNCTION 0x0004fd24, declared_size=40, range_size=40, mode=thumb
; class-group: glsl_type
; alias: _ZNK9glsl_type11column_typeEv
; demangled: glsl_type::column_type() const
; decoder-mode: thumb
0004fd24  01 89                                            ldrh r1, [r0, #8]
0004fd26  11 f4 c0 4f                                      tst.w r1, #0x6000
0004fd2a  08 d0                                            beq #0x4fd3e
0004fd2c  40 68                                            ldr r0, [r0, #4]
0004fd2e  02 28                                            cmp r0, #2
0004fd30  05 d1                                            bne #0x4fd3e
0004fd32  c1 f3 42 21                                      ubfx r1, r1, #9, #3
0004fd36  02 20                                            movs r0, #2
0004fd38  01 22                                            movs r2, #1
0004fd3a  60 f0 cd be                                      b.w #0xb0ad8
0004fd3e  02 48                                            ldr r0, [pc, #8]
0004fd40  78 44                                            add r0, pc
0004fd42  00 68                                            ldr r0, [r0]
0004fd44  00 68                                            ldr r0, [r0]
0004fd46  70 47                                            bx lr
0004fd48  fc c7                                            stm r7!, {r2, r3, r4, r5, r6, r7}
0004fd4a  08 00                                            movs r0, r1

; FUNCTION 0x00059718, declared_size=34, range_size=34, mode=thumb
; class-group: glsl_type
; alias: _ZNK9glsl_type11atomic_sizeEv
; demangled: glsl_type::atomic_size() const
; decoder-mode: thumb
00059718  41 68                                            ldr r1, [r0, #4]
0005971a  06 29                                            cmp r1, #6
0005971c  04 bf                                            itt eq
0005971e  04 20                                            moveq r0, #4
00059720  70 47                                            bxeq lr
00059722  09 29                                            cmp r1, #9
00059724  1c bf                                            itt ne
00059726  00 20                                            movne r0, #0
00059728  70 47                                            bxne lr
0005972a  d0 b5                                            push {r4, r6, r7, lr}
0005972c  02 af                                            add r7, sp, #8
0005972e  d0 e9 04 40                                      ldrd r4, r0, [r0, #0x10]
00059732  d9 f7 f6 ea                                      blx #0x32d20
00059736  60 43                                            muls r0, r4, r0
00059738  d0 bd                                            pop {r4, r6, r7, pc}

; FUNCTION 0x0007ec48, declared_size=44, range_size=44, mode=thumb
; class-group: glsl_type
; alias: _ZN9glsl_type20init_ralloc_type_ctxEv
; demangled: glsl_type::init_ralloc_type_ctx()
; decoder-mode: thumb
0007ec48  08 48                                            ldr r0, [pc, #0x20]
0007ec4a  78 44                                            add r0, pc
0007ec4c  00 68                                            ldr r0, [r0]
0007ec4e  00 68                                            ldr r0, [r0]
0007ec50  00 b1                                            cbz r0, #0x7ec54
0007ec52  70 47                                            bx lr
0007ec54  d0 b5                                            push {r4, r6, r7, lr}
0007ec56  02 af                                            add r7, sp, #8
0007ec58  05 48                                            ldr r0, [pc, #0x14]
0007ec5a  78 44                                            add r0, pc
0007ec5c  04 68                                            ldr r4, [r0]
0007ec5e  b4 f7 50 ef                                      blx #0x33b00
0007ec62  20 60                                            str r0, [r4]
0007ec64  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0007ec68  70 47                                            bx lr
0007ec6a  00 bf                                            nop
0007ec6c  06 dd                                            ble #0x7ec7c
0007ec6e  05 00                                            movs r5, r0
0007ec70  f6 dc                                            bgt #0x7ec60
0007ec72  05 00                                            movs r5, r0

; FUNCTION 0x0007ec74, declared_size=96, range_size=96, mode=thumb
; class-group: glsl_type
; alias: _ZN9glsl_typeC1Ej14glsl_base_typejjPKc
; demangled: glsl_type::glsl_type(unsigned int, glsl_base_type, unsigned int, unsigned int, char const*)
; alias: _ZN9glsl_typeC2Ej14glsl_base_typejjPKc
; demangled: glsl_type::glsl_type(unsigned int, glsl_base_type, unsigned int, unsigned int, char const*)
; decoder-mode: thumb
0007ec74  f0 b5                                            push {r4, r5, r6, r7, lr}
0007ec76  03 af                                            add r7, sp, #0xc
0007ec78  4d f8 04 8d                                      str r8, [sp, #-0x4]!
0007ec7c  04 46                                            mov r4, r0
0007ec7e  13 48                                            ldr r0, [pc, #0x4c]
0007ec80  00 26                                            movs r6, #0
0007ec82  c4 e9 00 12                                      strd r1, r2, [r4]
0007ec86  78 44                                            add r0, pc
0007ec88  26 61                                            str r6, [r4, #0x10]
0007ec8a  4f f4 60 61                                      mov.w r1, #0xe00
0007ec8e  22 89                                            ldrh r2, [r4, #8]
0007ec90  3d 89                                            ldrh r5, [r7, #8]
0007ec92  01 ea 43 21                                      and.w r1, r1, r3, lsl #9
0007ec96  00 68                                            ldr r0, [r0]
0007ec98  02 f4 00 42                                      and r2, r2, #0x8000
0007ec9c  65 f3 0e 31                                      bfi r1, r5, #0xc, #3
0007eca0  d7 f8 0c 80                                      ldr.w r8, [r7, #0xc]
0007eca4  11 43                                            orrs r1, r2
0007eca6  21 81                                            strh r1, [r4, #8]
0007eca8  00 68                                            ldr r0, [r0]
0007ecaa  28 b9                                            cbnz r0, #0x7ecb8
0007ecac  08 48                                            ldr r0, [pc, #0x20]
0007ecae  78 44                                            add r0, pc
0007ecb0  05 68                                            ldr r5, [r0]
0007ecb2  b4 f7 26 ef                                      blx #0x33b00
0007ecb6  28 60                                            str r0, [r5]
0007ecb8  41 46                                            mov r1, r8
0007ecba  b3 f7 cc ec                                      blx #0x32654
0007ecbe  e0 60                                            str r0, [r4, #0xc]
0007ecc0  20 46                                            mov r0, r4
0007ecc2  66 61                                            str r6, [r4, #0x14]
0007ecc4  5d f8 04 8b                                      ldr r8, [sp], #4
0007ecc8  f0 bd                                            pop {r4, r5, r6, r7, pc}
0007ecca  00 bf                                            nop
0007eccc  ca dc                                            bgt #0x7ec64
0007ecce  05 00                                            movs r5, r0
0007ecd0  a2 dc                                            bgt #0x7ec18
0007ecd2  05 00                                            movs r5, r0

; FUNCTION 0x0007ecd4, declared_size=136, range_size=136, mode=thumb
; class-group: glsl_type
; alias: _ZN9glsl_typeC1Ej14glsl_base_type16glsl_sampler_dimbbjPKc
; demangled: glsl_type::glsl_type(unsigned int, glsl_base_type, glsl_sampler_dim, bool, bool, unsigned int, char const*)
; alias: _ZN9glsl_typeC2Ej14glsl_base_type16glsl_sampler_dimbbjPKc
; demangled: glsl_type::glsl_type(unsigned int, glsl_base_type, glsl_sampler_dim, bool, bool, unsigned int, char const*)
; decoder-mode: thumb
0007ecd4  f0 b5                                            push {r4, r5, r6, r7, lr}
0007ecd6  03 af                                            add r7, sp, #0xc
0007ecd8  2d e9 00 0b                                      push.w {r8, sb, fp}
0007ecdc  04 46                                            mov r4, r0
0007ecde  38 8a                                            ldrh r0, [r7, #0x10]
0007ece0  df f8 70 c0                                      ldr.w ip, [pc, #0x70]
0007ece4  15 46                                            mov r5, r2
0007ece6  d7 e9 02 26                                      ldrd r2, r6, [r7, #8]
0007ecea  4f f0 00 09                                      mov.w sb, #0
0007ecee  c4 e9 00 15                                      strd r1, r5, [r4]
0007ecf2  60 21                                            movs r1, #0x60
0007ecf4  01 ea 40 10                                      and.w r0, r1, r0, lsl #5
0007ecf8  03 f0 07 01                                      and r1, r3, #7
0007ecfc  c4 f8 10 90                                      str.w sb, [r4, #0x10]
0007ed00  fc 44                                            add ip, pc
0007ed02  41 ea c2 01                                      orr.w r1, r1, r2, lsl #3
0007ed06  23 89                                            ldrh r3, [r4, #8]
0007ed08  41 ea 06 11                                      orr.w r1, r1, r6, lsl #4
0007ed0c  dc f8 00 20                                      ldr.w r2, [ip]
0007ed10  08 43                                            orrs r0, r1
0007ed12  03 f4 7e 41                                      and r1, r3, #0xfe00
0007ed16  08 43                                            orrs r0, r1
0007ed18  20 81                                            strh r0, [r4, #8]
0007ed1a  10 68                                            ldr r0, [r2]
0007ed1c  d7 f8 14 80                                      ldr.w r8, [r7, #0x14]
0007ed20  28 b9                                            cbnz r0, #0x7ed2e
0007ed22  0d 48                                            ldr r0, [pc, #0x34]
0007ed24  78 44                                            add r0, pc
0007ed26  06 68                                            ldr r6, [r0]
0007ed28  b4 f7 ea ee                                      blx #0x33b00
0007ed2c  30 60                                            str r0, [r6]
0007ed2e  41 46                                            mov r1, r8
0007ed30  b3 f7 90 ec                                      blx #0x32654
0007ed34  21 89                                            ldrh r1, [r4, #8]
0007ed36  04 2d                                            cmp r5, #4
0007ed38  e0 60                                            str r0, [r4, #0xc]
0007ed3a  21 f4 fc 40                                      bic r0, r1, #0x7e00
0007ed3e  c4 f8 14 90                                      str.w sb, [r4, #0x14]
0007ed42  18 bf                                            it ne
0007ed44  40 f4 90 50                                      orrne r0, r0, #0x1200
0007ed48  20 81                                            strh r0, [r4, #8]
0007ed4a  20 46                                            mov r0, r4
0007ed4c  bd e8 00 0b                                      pop.w {r8, sb, fp}
0007ed50  f0 bd                                            pop {r4, r5, r6, r7, pc}
0007ed52  00 bf                                            nop
0007ed54  50 dc                                            bgt #0x7edf8
0007ed56  05 00                                            movs r5, r0
0007ed58  2c dc                                            bgt #0x7edb4
0007ed5a  05 00                                            movs r5, r0

; FUNCTION 0x0007ed5c, declared_size=240, range_size=240, mode=thumb
; class-group: glsl_type
; alias: _ZN9glsl_typeC1EPK17glsl_struct_fieldjPKc
; demangled: glsl_type::glsl_type(glsl_struct_field const*, unsigned int, char const*)
; alias: _ZN9glsl_typeC2EPK17glsl_struct_fieldjPKc
; demangled: glsl_type::glsl_type(glsl_struct_field const*, unsigned int, char const*)
; decoder-mode: thumb
0007ed5c  f0 b5                                            push {r4, r5, r6, r7, lr}
0007ed5e  03 af                                            add r7, sp, #0xc
0007ed60  2d e9 00 0b                                      push.w {r8, sb, fp}
0007ed64  04 46                                            mov r4, r0
0007ed66  36 48                                            ldr r0, [pc, #0xd8]
0007ed68  1e 46                                            mov r6, r3
0007ed6a  23 89                                            ldrh r3, [r4, #8]
0007ed6c  78 44                                            add r0, pc
0007ed6e  88 46                                            mov r8, r1
0007ed70  07 21                                            movs r1, #7
0007ed72  00 25                                            movs r5, #0
0007ed74  00 68                                            ldr r0, [r0]
0007ed76  c4 e9 00 51                                      strd r5, r1, [r4]
0007ed7a  03 f4 00 41                                      and r1, r3, #0x8000
0007ed7e  22 61                                            str r2, [r4, #0x10]
0007ed80  21 81                                            strh r1, [r4, #8]
0007ed82  00 68                                            ldr r0, [r0]
0007ed84  28 b9                                            cbnz r0, #0x7ed92
0007ed86  2f 48                                            ldr r0, [pc, #0xbc]
0007ed88  78 44                                            add r0, pc
0007ed8a  05 68                                            ldr r5, [r0]
0007ed8c  b4 f7 b8 ee                                      blx #0x33b00
0007ed90  28 60                                            str r0, [r5]
0007ed92  31 46                                            mov r1, r6
0007ed94  b3 f7 5e ec                                      blx #0x32654
0007ed98  2b 49                                            ldr r1, [pc, #0xac]
0007ed9a  22 69                                            ldr r2, [r4, #0x10]
0007ed9c  79 44                                            add r1, pc
0007ed9e  e0 60                                            str r0, [r4, #0xc]
0007eda0  09 68                                            ldr r1, [r1]
0007eda2  08 68                                            ldr r0, [r1]
0007eda4  18 21                                            movs r1, #0x18
0007eda6  b4 f7 58 e8                                      blx #0x32e58
0007edaa  21 69                                            ldr r1, [r4, #0x10]
0007edac  60 61                                            str r0, [r4, #0x14]
0007edae  00 29                                            cmp r1, #0
0007edb0  42 d0                                            beq #0x7ee38
0007edb2  00 26                                            movs r6, #0
0007edb4  4f f0 01 09                                      mov.w sb, #1
0007edb8  03 e0                                            b #0x7edc2
0007edba  09 f1 01 09                                      add.w sb, sb, #1
0007edbe  60 69                                            ldr r0, [r4, #0x14]
0007edc0  18 36                                            adds r6, #0x18
0007edc2  58 f8 06 10                                      ldr.w r1, [r8, r6]
0007edc6  08 eb 06 05                                      add.w r5, r8, r6
0007edca  81 51                                            str r1, [r0, r6]
0007edcc  69 68                                            ldr r1, [r5, #4]
0007edce  60 69                                            ldr r0, [r4, #0x14]
0007edd0  b3 f7 40 ec                                      blx #0x32654
0007edd4  61 69                                            ldr r1, [r4, #0x14]
0007edd6  31 44                                            add r1, r6
0007edd8  48 60                                            str r0, [r1, #4]
0007edda  60 69                                            ldr r0, [r4, #0x14]
0007eddc  a9 68                                            ldr r1, [r5, #8]
0007edde  30 44                                            add r0, r6
0007ede0  81 60                                            str r1, [r0, #8]
0007ede2  e9 68                                            ldr r1, [r5, #0xc]
0007ede4  02 7c                                            ldrb r2, [r0, #0x10]
0007ede6  c1 60                                            str r1, [r0, #0xc]
0007ede8  29 7c                                            ldrb r1, [r5, #0x10]
0007edea  02 f0 fc 02                                      and r2, r2, #0xfc
0007edee  01 f0 03 01                                      and r1, r1, #3
0007edf2  11 43                                            orrs r1, r2
0007edf4  01 74                                            strb r1, [r0, #0x10]
0007edf6  60 69                                            ldr r0, [r4, #0x14]
0007edf8  29 7c                                            ldrb r1, [r5, #0x10]
0007edfa  30 44                                            add r0, r6
0007edfc  01 f0 04 01                                      and r1, r1, #4
0007ee00  02 7c                                            ldrb r2, [r0, #0x10]
0007ee02  02 f0 fb 02                                      and r2, r2, #0xfb
0007ee06  11 43                                            orrs r1, r2
0007ee08  01 74                                            strb r1, [r0, #0x10]
0007ee0a  60 69                                            ldr r0, [r4, #0x14]
0007ee0c  29 7c                                            ldrb r1, [r5, #0x10]
0007ee0e  30 44                                            add r0, r6
0007ee10  01 f0 08 01                                      and r1, r1, #8
0007ee14  02 7c                                            ldrb r2, [r0, #0x10]
0007ee16  02 f0 f7 02                                      and r2, r2, #0xf7
0007ee1a  11 43                                            orrs r1, r2
0007ee1c  01 74                                            strb r1, [r0, #0x10]
0007ee1e  60 69                                            ldr r0, [r4, #0x14]
0007ee20  29 7c                                            ldrb r1, [r5, #0x10]
0007ee22  30 44                                            add r0, r6
0007ee24  01 f0 30 01                                      and r1, r1, #0x30
0007ee28  02 7c                                            ldrb r2, [r0, #0x10]
0007ee2a  02 f0 cf 02                                      and r2, r2, #0xcf
0007ee2e  11 43                                            orrs r1, r2
0007ee30  01 74                                            strb r1, [r0, #0x10]
0007ee32  20 69                                            ldr r0, [r4, #0x10]
0007ee34  81 45                                            cmp sb, r0
0007ee36  c0 d3                                            blo #0x7edba
0007ee38  20 46                                            mov r0, r4
0007ee3a  bd e8 00 0b                                      pop.w {r8, sb, fp}
0007ee3e  f0 bd                                            pop {r4, r5, r6, r7, pc}
0007ee40  e4 db                                            blt #0x7ee0c
0007ee42  05 00                                            movs r5, r0
0007ee44  c8 db                                            blt #0x7edd8
0007ee46  05 00                                            movs r5, r0
0007ee48  b4 db                                            blt #0x7edb4
0007ee4a  05 00                                            movs r5, r0

; FUNCTION 0x0007ee4c, declared_size=252, range_size=252, mode=thumb
; class-group: glsl_type
; alias: _ZN9glsl_typeC1EPK17glsl_struct_fieldj22glsl_interface_packingPKc
; demangled: glsl_type::glsl_type(glsl_struct_field const*, unsigned int, glsl_interface_packing, char const*)
; alias: _ZN9glsl_typeC2EPK17glsl_struct_fieldj22glsl_interface_packingPKc
; demangled: glsl_type::glsl_type(glsl_struct_field const*, unsigned int, glsl_interface_packing, char const*)
; decoder-mode: thumb
0007ee4c  f0 b5                                            push {r4, r5, r6, r7, lr}
0007ee4e  03 af                                            add r7, sp, #0xc
0007ee50  2d e9 00 0b                                      push.w {r8, sb, fp}
0007ee54  04 46                                            mov r4, r0
0007ee56  39 48                                            ldr r0, [pc, #0xe4]
0007ee58  88 46                                            mov r8, r1
0007ee5a  08 21                                            movs r1, #8
0007ee5c  00 25                                            movs r5, #0
0007ee5e  78 44                                            add r0, pc
0007ee60  c4 e9 00 51                                      strd r5, r1, [r4]
0007ee64  22 61                                            str r2, [r4, #0x10]
0007ee66  4f f4 c0 72                                      mov.w r2, #0x180
0007ee6a  21 89                                            ldrh r1, [r4, #8]
0007ee6c  02 ea c3 12                                      and.w r2, r2, r3, lsl #7
0007ee70  00 68                                            ldr r0, [r0]
0007ee72  01 f4 00 41                                      and r1, r1, #0x8000
0007ee76  be 68                                            ldr r6, [r7, #8]
0007ee78  11 43                                            orrs r1, r2
0007ee7a  21 81                                            strh r1, [r4, #8]
0007ee7c  00 68                                            ldr r0, [r0]
0007ee7e  28 b9                                            cbnz r0, #0x7ee8c
0007ee80  2f 48                                            ldr r0, [pc, #0xbc]
0007ee82  78 44                                            add r0, pc
0007ee84  05 68                                            ldr r5, [r0]
0007ee86  b4 f7 3c ee                                      blx #0x33b00
0007ee8a  28 60                                            str r0, [r5]
0007ee8c  31 46                                            mov r1, r6
0007ee8e  b3 f7 e2 eb                                      blx #0x32654
0007ee92  2c 49                                            ldr r1, [pc, #0xb0]
0007ee94  22 69                                            ldr r2, [r4, #0x10]
0007ee96  79 44                                            add r1, pc
0007ee98  e0 60                                            str r0, [r4, #0xc]
0007ee9a  09 68                                            ldr r1, [r1]
0007ee9c  08 68                                            ldr r0, [r1]
0007ee9e  18 21                                            movs r1, #0x18
0007eea0  b3 f7 da ef                                      blx #0x32e58
0007eea4  21 69                                            ldr r1, [r4, #0x10]
0007eea6  60 61                                            str r0, [r4, #0x14]
0007eea8  00 29                                            cmp r1, #0
0007eeaa  42 d0                                            beq #0x7ef32
0007eeac  00 26                                            movs r6, #0
0007eeae  4f f0 01 09                                      mov.w sb, #1
0007eeb2  03 e0                                            b #0x7eebc
0007eeb4  09 f1 01 09                                      add.w sb, sb, #1
0007eeb8  60 69                                            ldr r0, [r4, #0x14]
0007eeba  18 36                                            adds r6, #0x18
0007eebc  58 f8 06 10                                      ldr.w r1, [r8, r6]
0007eec0  08 eb 06 05                                      add.w r5, r8, r6
0007eec4  81 51                                            str r1, [r0, r6]
0007eec6  69 68                                            ldr r1, [r5, #4]
0007eec8  60 69                                            ldr r0, [r4, #0x14]
0007eeca  b3 f7 c4 eb                                      blx #0x32654
0007eece  61 69                                            ldr r1, [r4, #0x14]
0007eed0  31 44                                            add r1, r6
0007eed2  48 60                                            str r0, [r1, #4]
0007eed4  60 69                                            ldr r0, [r4, #0x14]
0007eed6  a9 68                                            ldr r1, [r5, #8]
0007eed8  30 44                                            add r0, r6
0007eeda  81 60                                            str r1, [r0, #8]
0007eedc  e9 68                                            ldr r1, [r5, #0xc]
0007eede  02 7c                                            ldrb r2, [r0, #0x10]
0007eee0  c1 60                                            str r1, [r0, #0xc]
0007eee2  29 7c                                            ldrb r1, [r5, #0x10]
0007eee4  02 f0 fc 02                                      and r2, r2, #0xfc
0007eee8  01 f0 03 01                                      and r1, r1, #3
0007eeec  11 43                                            orrs r1, r2
0007eeee  01 74                                            strb r1, [r0, #0x10]
0007eef0  60 69                                            ldr r0, [r4, #0x14]
0007eef2  29 7c                                            ldrb r1, [r5, #0x10]
0007eef4  30 44                                            add r0, r6
0007eef6  01 f0 04 01                                      and r1, r1, #4
0007eefa  02 7c                                            ldrb r2, [r0, #0x10]
0007eefc  02 f0 fb 02                                      and r2, r2, #0xfb
0007ef00  11 43                                            orrs r1, r2
0007ef02  01 74                                            strb r1, [r0, #0x10]
0007ef04  60 69                                            ldr r0, [r4, #0x14]
0007ef06  29 7c                                            ldrb r1, [r5, #0x10]
0007ef08  30 44                                            add r0, r6
0007ef0a  01 f0 08 01                                      and r1, r1, #8
0007ef0e  02 7c                                            ldrb r2, [r0, #0x10]
0007ef10  02 f0 f7 02                                      and r2, r2, #0xf7
0007ef14  11 43                                            orrs r1, r2
0007ef16  01 74                                            strb r1, [r0, #0x10]
0007ef18  60 69                                            ldr r0, [r4, #0x14]
0007ef1a  29 7c                                            ldrb r1, [r5, #0x10]
0007ef1c  30 44                                            add r0, r6
0007ef1e  01 f0 30 01                                      and r1, r1, #0x30
0007ef22  02 7c                                            ldrb r2, [r0, #0x10]
0007ef24  02 f0 cf 02                                      and r2, r2, #0xcf
0007ef28  11 43                                            orrs r1, r2
0007ef2a  01 74                                            strb r1, [r0, #0x10]
0007ef2c  20 69                                            ldr r0, [r4, #0x10]
0007ef2e  81 45                                            cmp sb, r0
0007ef30  c0 d3                                            blo #0x7eeb4
0007ef32  20 46                                            mov r0, r4
0007ef34  bd e8 00 0b                                      pop.w {r8, sb, fp}
0007ef38  f0 bd                                            pop {r4, r5, r6, r7, pc}
0007ef3a  00 bf                                            nop
0007ef3c  f2 da                                            bge #0x7ef24
0007ef3e  05 00                                            movs r5, r0
0007ef40  ce da                                            bge #0x7eee0
0007ef42  05 00                                            movs r5, r0
0007ef44  ba da                                            bge #0x7eebc
0007ef46  05 00                                            movs r5, r0

; FUNCTION 0x0007ef48, declared_size=62, range_size=62, mode=thumb
; class-group: glsl_type
; alias: _ZNK9glsl_type16contains_samplerEv
; demangled: glsl_type::contains_sampler() const
; decoder-mode: thumb
0007ef48  00 e0                                            b #0x7ef4c
0007ef4a  40 69                                            ldr r0, [r0, #0x14]
0007ef4c  41 68                                            ldr r1, [r0, #4]
0007ef4e  09 29                                            cmp r1, #9
0007ef50  fb d0                                            beq #0x7ef4a
0007ef52  f0 b5                                            push {r4, r5, r6, r7, lr}
0007ef54  03 af                                            add r7, sp, #0xc
0007ef56  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0007ef5a  04 29                                            cmp r1, #4
0007ef5c  0f d0                                            beq #0x7ef7e
0007ef5e  07 29                                            cmp r1, #7
0007ef60  0b d1                                            bne #0x7ef7a
0007ef62  04 69                                            ldr r4, [r0, #0x10]
0007ef64  4c b1                                            cbz r4, #0x7ef7a
0007ef66  45 69                                            ldr r5, [r0, #0x14]
0007ef68  00 26                                            movs r6, #0
0007ef6a  28 68                                            ldr r0, [r5]
0007ef6c  b4 f7 ce ed                                      blx #0x33b0c
0007ef70  28 b9                                            cbnz r0, #0x7ef7e
0007ef72  01 36                                            adds r6, #1
0007ef74  18 35                                            adds r5, #0x18
0007ef76  a6 42                                            cmp r6, r4
0007ef78  f7 d3                                            blo #0x7ef6a
0007ef7a  00 20                                            movs r0, #0
0007ef7c  00 e0                                            b #0x7ef80
0007ef7e  01 20                                            movs r0, #1
0007ef80  5d f8 04 bb                                      ldr fp, [sp], #4
0007ef84  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0007ef86, declared_size=70, range_size=70, mode=thumb
; class-group: glsl_type
; alias: _ZNK9glsl_type16contains_integerEv
; demangled: glsl_type::contains_integer() const
; decoder-mode: thumb
0007ef86  00 e0                                            b #0x7ef8a
0007ef88  40 69                                            ldr r0, [r0, #0x14]
0007ef8a  41 68                                            ldr r1, [r0, #4]
0007ef8c  09 29                                            cmp r1, #9
0007ef8e  fb d0                                            beq #0x7ef88
0007ef90  f0 b5                                            push {r4, r5, r6, r7, lr}
0007ef92  03 af                                            add r7, sp, #0xc
0007ef94  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0007ef98  07 29                                            cmp r1, #7
0007ef9a  0e d1                                            bne #0x7efba
0007ef9c  04 69                                            ldr r4, [r0, #0x10]
0007ef9e  54 b1                                            cbz r4, #0x7efb6
0007efa0  45 69                                            ldr r5, [r0, #0x14]
0007efa2  00 26                                            movs r6, #0
0007efa4  28 68                                            ldr r0, [r5]
0007efa6  b3 f7 c2 ee                                      blx #0x32d2c
0007efaa  01 28                                            cmp r0, #1
0007efac  0a d0                                            beq #0x7efc4
0007efae  01 36                                            adds r6, #1
0007efb0  18 35                                            adds r5, #0x18
0007efb2  a6 42                                            cmp r6, r4
0007efb4  f6 d3                                            blo #0x7efa4
0007efb6  00 20                                            movs r0, #0
0007efb8  05 e0                                            b #0x7efc6
0007efba  00 20                                            movs r0, #0
0007efbc  02 29                                            cmp r1, #2
0007efbe  38 bf                                            it lo
0007efc0  01 20                                            movlo r0, #1
0007efc2  00 e0                                            b #0x7efc6
0007efc4  01 20                                            movs r0, #1
0007efc6  5d f8 04 bb                                      ldr fp, [sp], #4
0007efca  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0007efcc, declared_size=66, range_size=66, mode=thumb
; class-group: glsl_type
; alias: _ZNK9glsl_type15contains_opaqueEv
; demangled: glsl_type::contains_opaque() const
; decoder-mode: thumb
0007efcc  00 e0                                            b #0x7efd0
0007efce  40 69                                            ldr r0, [r0, #0x14]
0007efd0  41 68                                            ldr r1, [r0, #4]
0007efd2  09 29                                            cmp r1, #9
0007efd4  fb d0                                            beq #0x7efce
0007efd6  f0 b5                                            push {r4, r5, r6, r7, lr}
0007efd8  03 af                                            add r7, sp, #0xc
0007efda  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0007efde  0a 1f                                            subs r2, r1, #4
0007efe0  03 2a                                            cmp r2, #3
0007efe2  01 d2                                            bhs #0x7efe8
0007efe4  01 20                                            movs r0, #1
0007efe6  0f e0                                            b #0x7f008
0007efe8  07 29                                            cmp r1, #7
0007efea  0c d1                                            bne #0x7f006
0007efec  04 69                                            ldr r4, [r0, #0x10]
0007efee  54 b1                                            cbz r4, #0x7f006
0007eff0  45 69                                            ldr r5, [r0, #0x14]
0007eff2  00 26                                            movs r6, #0
0007eff4  28 68                                            ldr r0, [r5]
0007eff6  b3 f7 5e ee                                      blx #0x32cb4
0007effa  00 28                                            cmp r0, #0
0007effc  f2 d1                                            bne #0x7efe4
0007effe  01 36                                            adds r6, #1
0007f000  18 35                                            adds r5, #0x18
0007f002  a6 42                                            cmp r6, r4
0007f004  f6 d3                                            blo #0x7eff4
0007f006  00 20                                            movs r0, #0
0007f008  5d f8 04 bb                                      ldr fp, [sp], #4
0007f00c  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0007f010, declared_size=88, range_size=88, mode=thumb
; class-group: glsl_type
; alias: _ZNK9glsl_type13sampler_indexEv
; demangled: glsl_type::sampler_index() const
; decoder-mode: thumb
0007f010  41 68                                            ldr r1, [r0, #4]
0007f012  09 29                                            cmp r1, #9
0007f014  08 bf                                            it eq
0007f016  40 69                                            ldreq r0, [r0, #0x14]
0007f018  01 89                                            ldrh r1, [r0, #8]
0007f01a  01 f0 07 00                                      and r0, r1, #7
0007f01e  42 1e                                            subs r2, r0, #1
0007f020  06 2a                                            cmp r2, #6
0007f022  0c d8                                            bhi #0x7f03e
0007f024  08 20                                            movs r0, #8
0007f026  df e8 02 f0                                      tbb [pc, r2]
0007f02a  04 1e                                            subs r4, r0, #0
0007f02c  10 16                                            asrs r0, r2, #0x18
0007f02e  18 1a                                            subs r0, r3, r0
0007f030  1c 00                                            movs r4, r3
0007f032  c8 06                                            lsls r0, r1, #0x1b
0007f034  4f f0 0a 00                                      mov.w r0, #0xa
0007f038  48 bf                                            it mi
0007f03a  04 20                                            movmi r0, #4
0007f03c  70 47                                            bx lr
0007f03e  c8 06                                            lsls r0, r1, #0x1b
0007f040  4f f0 0b 00                                      mov.w r0, #0xb
0007f044  48 bf                                            it mi
0007f046  05 20                                            movmi r0, #5
0007f048  70 47                                            bx lr
0007f04a  c8 06                                            lsls r0, r1, #0x1b
0007f04c  4f f0 07 00                                      mov.w r0, #7
0007f050  48 bf                                            it mi
0007f052  02 20                                            movmi r0, #2
0007f054  70 47                                            bx lr
0007f056  09 20                                            movs r0, #9
0007f058  70 47                                            bx lr
0007f05a  03 20                                            movs r0, #3
0007f05c  70 47                                            bx lr
0007f05e  06 20                                            movs r0, #6
0007f060  70 47                                            bx lr
0007f062  c1 f3 00 10                                      ubfx r0, r1, #4, #1
0007f066  70 47                                            bx lr

; FUNCTION 0x0007f068, declared_size=62, range_size=62, mode=thumb
; class-group: glsl_type
; alias: _ZNK9glsl_type14contains_imageEv
; demangled: glsl_type::contains_image() const
; decoder-mode: thumb
0007f068  00 e0                                            b #0x7f06c
0007f06a  40 69                                            ldr r0, [r0, #0x14]
0007f06c  41 68                                            ldr r1, [r0, #4]
0007f06e  09 29                                            cmp r1, #9
0007f070  fb d0                                            beq #0x7f06a
0007f072  f0 b5                                            push {r4, r5, r6, r7, lr}
0007f074  03 af                                            add r7, sp, #0xc
0007f076  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0007f07a  05 29                                            cmp r1, #5
0007f07c  0f d0                                            beq #0x7f09e
0007f07e  07 29                                            cmp r1, #7
0007f080  0b d1                                            bne #0x7f09a
0007f082  04 69                                            ldr r4, [r0, #0x10]
0007f084  4c b1                                            cbz r4, #0x7f09a
0007f086  45 69                                            ldr r5, [r0, #0x14]
0007f088  00 26                                            movs r6, #0
0007f08a  28 68                                            ldr r0, [r5]
0007f08c  b3 f7 96 ee                                      blx #0x32dbc
0007f090  28 b9                                            cbnz r0, #0x7f09e
0007f092  01 36                                            adds r6, #1
0007f094  18 35                                            adds r5, #0x18
0007f096  a6 42                                            cmp r6, r4
0007f098  f7 d3                                            blo #0x7f08a
0007f09a  00 20                                            movs r0, #0
0007f09c  00 e0                                            b #0x7f0a0
0007f09e  01 20                                            movs r0, #1
0007f0a0  5d f8 04 bb                                      ldr fp, [sp], #4
0007f0a4  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0007f0a8, declared_size=36, range_size=36, mode=thumb
; class-group: glsl_type
; alias: _ZNK9glsl_type13get_base_typeEv
; demangled: glsl_type::get_base_type() const
; decoder-mode: thumb
0007f0a8  40 68                                            ldr r0, [r0, #4]
0007f0aa  03 28                                            cmp r0, #3
0007f0ac  04 d8                                            bhi #0x7f0b8
0007f0ae  06 49                                            ldr r1, [pc, #0x18]
0007f0b0  79 44                                            add r1, pc
0007f0b2  51 f8 20 00                                      ldr.w r0, [r1, r0, lsl #2]
0007f0b6  02 e0                                            b #0x7f0be
0007f0b8  02 48                                            ldr r0, [pc, #8]
0007f0ba  78 44                                            add r0, pc
0007f0bc  00 68                                            ldr r0, [r0]
0007f0be  00 68                                            ldr r0, [r0]
0007f0c0  70 47                                            bx lr
0007f0c2  00 bf                                            nop
0007f0c4  82 d4                                            bmi #0x7efcc
0007f0c6  05 00                                            movs r5, r0
0007f0c8  7c 87                                            strh r4, [r7, #0x3a]
0007f0ca  05 00                                            movs r5, r0

; FUNCTION 0x0007f0cc, declared_size=72, range_size=72, mode=thumb
; class-group: glsl_type
; alias: _ZNK9glsl_type15get_scalar_typeEv
; demangled: glsl_type::get_scalar_type() const
; decoder-mode: thumb
0007f0cc  41 68                                            ldr r1, [r0, #4]
0007f0ce  09 29                                            cmp r1, #9
0007f0d0  88 bf                                            it hi
0007f0d2  70 47                                            bxhi lr
0007f0d4  df e8 01 f0                                      tbb [pc, r1]
0007f0d8  07 0a                                            lsrs r7, r0, #8
0007f0da  0d 10                                            asrs r5, r1, #0x20
0007f0dc  14 14                                            asrs r4, r2, #0x10
0007f0de  14 14                                            asrs r4, r2, #0x10
0007f0e0  14 05                                            lsls r4, r2, #0x14
0007f0e2  40 69                                            ldr r0, [r0, #0x14]
0007f0e4  f2 e7                                            b #0x7f0cc
0007f0e6  0a 48                                            ldr r0, [pc, #0x28]
0007f0e8  78 44                                            add r0, pc
0007f0ea  07 e0                                            b #0x7f0fc
0007f0ec  07 48                                            ldr r0, [pc, #0x1c]
0007f0ee  78 44                                            add r0, pc
0007f0f0  04 e0                                            b #0x7f0fc
0007f0f2  05 48                                            ldr r0, [pc, #0x14]
0007f0f4  78 44                                            add r0, pc
0007f0f6  01 e0                                            b #0x7f0fc
0007f0f8  02 48                                            ldr r0, [pc, #8]
0007f0fa  78 44                                            add r0, pc
0007f0fc  00 68                                            ldr r0, [r0]
0007f0fe  00 68                                            ldr r0, [r0]
0007f100  70 47                                            bx lr
0007f102  00 bf                                            nop
0007f104  5a d4                                            bmi #0x7f1bc
0007f106  05 00                                            movs r5, r0
0007f108  a8 d4                                            bmi #0x7f05c
0007f10a  05 00                                            movs r5, r0
0007f10c  86 d4                                            bmi #0x7f01c
0007f10e  05 00                                            movs r5, r0
0007f110  90 d4                                            bmi #0x7f034
0007f112  05 00                                            movs r5, r0

; FUNCTION 0x0007f15c, declared_size=192, range_size=192, mode=thumb
; class-group: glsl_type
; alias: _ZN9glsl_typeC1EPKS_j
; demangled: glsl_type::glsl_type(glsl_type const*, unsigned int)
; alias: _ZN9glsl_typeC2EPKS_j
; demangled: glsl_type::glsl_type(glsl_type const*, unsigned int)
; decoder-mode: thumb
0007f15c  f0 b5                                            push {r4, r5, r6, r7, lr}
0007f15e  03 af                                            add r7, sp, #0xc
0007f160  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
0007f164  81 b0                                            sub sp, #4
0007f166  04 46                                            mov r4, r0
0007f168  09 20                                            movs r0, #9
0007f16a  60 60                                            str r0, [r4, #4]
0007f16c  0e 46                                            mov r6, r1
0007f16e  21 89                                            ldrh r1, [r4, #8]
0007f170  91 46                                            mov sb, r2
0007f172  00 20                                            movs r0, #0
0007f174  c4 e9 03 09                                      strd r0, sb, [r4, #0xc]
0007f178  01 f4 00 40                                      and r0, r1, #0x8000
0007f17c  66 61                                            str r6, [r4, #0x14]
0007f17e  20 81                                            strh r0, [r4, #8]
0007f180  30 68                                            ldr r0, [r6]
0007f182  20 60                                            str r0, [r4]
0007f184  f0 68                                            ldr r0, [r6, #0xc]
0007f186  b2 f7 ee ee                                      blx #0x31f64
0007f18a  1c 49                                            ldr r1, [pc, #0x70]
0007f18c  00 f1 0d 0a                                      add.w sl, r0, #0xd
0007f190  79 44                                            add r1, pc
0007f192  09 68                                            ldr r1, [r1]
0007f194  09 68                                            ldr r1, [r1]
0007f196  08 46                                            mov r0, r1
0007f198  51 46                                            mov r1, sl
0007f19a  b3 f7 c2 ea                                      blx #0x32720
0007f19e  f5 68                                            ldr r5, [r6, #0xc]
0007f1a0  80 46                                            mov r8, r0
0007f1a2  b9 f1 00 0f                                      cmp.w sb, #0
0007f1a6  17 d0                                            beq #0x7f1d8
0007f1a8  28 46                                            mov r0, r5
0007f1aa  5b 21                                            movs r1, #0x5b
0007f1ac  b3 f7 16 ea                                      blx #0x325dc
0007f1b0  a0 b1                                            cbz r0, #0x7f1dc
0007f1b2  a0 eb 05 0b                                      sub.w fp, r0, r5
0007f1b6  12 a2                                            adr r2, #0x48
0007f1b8  0b f1 01 01                                      add.w r1, fp, #1
0007f1bc  40 46                                            mov r0, r8
0007f1be  2b 46                                            mov r3, r5
0007f1c0  b3 f7 56 e8                                      blx #0x32270
0007f1c4  f0 68                                            ldr r0, [r6, #0xc]
0007f1c6  aa eb 0b 01                                      sub.w r1, sl, fp
0007f1ca  0e a2                                            adr r2, #0x38
0007f1cc  4b 46                                            mov r3, sb
0007f1ce  58 44                                            add r0, fp
0007f1d0  00 90                                            str r0, [sp]
0007f1d2  08 eb 0b 00                                      add.w r0, r8, fp
0007f1d6  07 e0                                            b #0x7f1e8
0007f1d8  0e a2                                            adr r2, #0x38
0007f1da  02 e0                                            b #0x7f1e2
0007f1dc  0b a2                                            adr r2, #0x2c
0007f1de  cd f8 00 90                                      str.w sb, [sp]
0007f1e2  40 46                                            mov r0, r8
0007f1e4  51 46                                            mov r1, sl
0007f1e6  2b 46                                            mov r3, r5
0007f1e8  b3 f7 42 e8                                      blx #0x32270
0007f1ec  c4 f8 0c 80                                      str.w r8, [r4, #0xc]
0007f1f0  20 46                                            mov r0, r4
0007f1f2  01 b0                                            add sp, #4
0007f1f4  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
0007f1f8  f0 bd                                            pop {r4, r5, r6, r7, pc}
0007f1fa  00 bf                                            nop
0007f1fc  c0 d7                                            bvc #0x7f180
0007f1fe  05 00                                            movs r5, r0
0007f200  25 73                                            strb r5, [r4, #0xc]
0007f202  00 00                                            movs r0, r0
0007f204  5b 25                                            movs r5, #0x5b
0007f206  75 5d                                            ldrb r5, [r6, r5]
0007f208  25 73                                            strb r5, [r4, #0xc]
0007f20a  00 00                                            movs r0, r0
0007f20c  25 73                                            strb r5, [r4, #0xc]
0007f20e  5b 25                                            movs r5, #0x5b
0007f210  75 5d                                            ldrb r5, [r6, r5]
0007f212  00 00                                            movs r0, r0
0007f214  25 73                                            strb r5, [r4, #0xc]
0007f216  5b 5d                                            ldrb r3, [r3, r5]
0007f218  00 00                                            movs r0, r0
0007f21a  00 00                                            movs r0, r0

; FUNCTION 0x0007f21c, declared_size=156, range_size=156, mode=thumb
; class-group: glsl_type
; alias: _ZN9glsl_type3vecEj
; demangled: glsl_type::vec(unsigned int)
; decoder-mode: thumb
0007f21c  b0 b5                                            push {r4, r5, r7, lr}
0007f21e  02 af                                            add r7, sp, #8
0007f220  44 1e                                            subs r4, r0, #1
0007f222  03 2c                                            cmp r4, #3
0007f224  03 d9                                            bls #0x7f22e
0007f226  1a 48                                            ldr r0, [pc, #0x68]
0007f228  78 44                                            add r0, pc
0007f22a  00 68                                            ldr r0, [r0]
0007f22c  2d e0                                            b #0x7f28a
0007f22e  19 48                                            ldr r0, [pc, #0x64]
0007f230  78 44                                            add r0, pc
0007f232  00 78                                            ldrb r0, [r0]
0007f234  bf f3 5b 8f                                      dmb ish
0007f238  10 f0 01 0f                                      tst.w r0, #1
0007f23c  21 d1                                            bne #0x7f282
0007f23e  16 48                                            ldr r0, [pc, #0x58]
0007f240  78 44                                            add r0, pc
0007f242  2d f0 bf fd                                      bl #0xacdc4
0007f246  e0 b1                                            cbz r0, #0x7f282
0007f248  14 48                                            ldr r0, [pc, #0x50]
0007f24a  17 4b                                            ldr r3, [pc, #0x5c]
0007f24c  78 44                                            add r0, pc
0007f24e  14 49                                            ldr r1, [pc, #0x50]
0007f250  14 4a                                            ldr r2, [pc, #0x50]
0007f252  7b 44                                            add r3, pc
0007f254  00 68                                            ldr r0, [r0]
0007f256  79 44                                            add r1, pc
0007f258  1b 68                                            ldr r3, [r3]
0007f25a  7a 44                                            add r2, pc
0007f25c  d1 f8 00 c0                                      ldr.w ip, [r1]
0007f260  15 68                                            ldr r5, [r2]
0007f262  12 49                                            ldr r1, [pc, #0x48]
0007f264  d0 f8 00 e0                                      ldr.w lr, [r0]
0007f268  11 48                                            ldr r0, [pc, #0x44]
0007f26a  79 44                                            add r1, pc
0007f26c  1b 68                                            ldr r3, [r3]
0007f26e  78 44                                            add r0, pc
0007f270  dc f8 00 20                                      ldr.w r2, [ip]
0007f274  2d 68                                            ldr r5, [r5]
0007f276  c1 e9 00 2e                                      strd r2, lr, [r1]
0007f27a  c1 e9 02 53                                      strd r5, r3, [r1, #8]
0007f27e  2d f0 dd fd                                      bl #0xace3c
0007f282  0c 48                                            ldr r0, [pc, #0x30]
0007f284  78 44                                            add r0, pc
0007f286  00 eb 84 00                                      add.w r0, r0, r4, lsl #2
0007f28a  00 68                                            ldr r0, [r0]
0007f28c  b0 bd                                            pop {r4, r5, r7, pc}
0007f28e  00 bf                                            nop
0007f290  14 d3                                            blo #0x7f2bc
0007f292  05 00                                            movs r5, r0
0007f294  bc 7d                                            ldrb r4, [r7, #0x16]
0007f296  06 00                                            movs r6, r0
0007f298  ac 7d                                            ldrb r4, [r5, #0x16]
0007f29a  06 00                                            movs r6, r0
0007f29c  54 d3                                            blo #0x7f348
0007f29e  05 00                                            movs r5, r0
0007f2a0  46 d3                                            blo #0x7f330
0007f2a2  05 00                                            movs r5, r0
0007f2a4  4a d3                                            blo #0x7f33c
0007f2a6  05 00                                            movs r5, r0
0007f2a8  f2 d2                                            bhs #0x7f290
0007f2aa  05 00                                            movs r5, r0
0007f2ac  72 7d                                            ldrb r2, [r6, #0x15]
0007f2ae  06 00                                            movs r6, r0
0007f2b0  7e 7d                                            ldrb r6, [r7, #0x15]
0007f2b2  06 00                                            movs r6, r0
0007f2b4  58 7d                                            ldrb r0, [r3, #0x15]
0007f2b6  06 00                                            movs r6, r0

; FUNCTION 0x0007f2b8, declared_size=156, range_size=156, mode=thumb
; class-group: glsl_type
; alias: _ZN9glsl_type4ivecEj
; demangled: glsl_type::ivec(unsigned int)
; decoder-mode: thumb
0007f2b8  b0 b5                                            push {r4, r5, r7, lr}
0007f2ba  02 af                                            add r7, sp, #8
0007f2bc  44 1e                                            subs r4, r0, #1
0007f2be  03 2c                                            cmp r4, #3
0007f2c0  03 d9                                            bls #0x7f2ca
0007f2c2  1a 48                                            ldr r0, [pc, #0x68]
0007f2c4  78 44                                            add r0, pc
0007f2c6  00 68                                            ldr r0, [r0]
0007f2c8  2d e0                                            b #0x7f326
0007f2ca  19 48                                            ldr r0, [pc, #0x64]
0007f2cc  78 44                                            add r0, pc
0007f2ce  00 78                                            ldrb r0, [r0]
0007f2d0  bf f3 5b 8f                                      dmb ish
0007f2d4  10 f0 01 0f                                      tst.w r0, #1
0007f2d8  21 d1                                            bne #0x7f31e
0007f2da  16 48                                            ldr r0, [pc, #0x58]
0007f2dc  78 44                                            add r0, pc
0007f2de  2d f0 71 fd                                      bl #0xacdc4
0007f2e2  e0 b1                                            cbz r0, #0x7f31e
0007f2e4  14 48                                            ldr r0, [pc, #0x50]
0007f2e6  17 4b                                            ldr r3, [pc, #0x5c]
0007f2e8  78 44                                            add r0, pc
0007f2ea  14 49                                            ldr r1, [pc, #0x50]
0007f2ec  14 4a                                            ldr r2, [pc, #0x50]
0007f2ee  7b 44                                            add r3, pc
0007f2f0  00 68                                            ldr r0, [r0]
0007f2f2  79 44                                            add r1, pc
0007f2f4  1b 68                                            ldr r3, [r3]
0007f2f6  7a 44                                            add r2, pc
0007f2f8  d1 f8 00 c0                                      ldr.w ip, [r1]
0007f2fc  15 68                                            ldr r5, [r2]
0007f2fe  12 49                                            ldr r1, [pc, #0x48]
0007f300  d0 f8 00 e0                                      ldr.w lr, [r0]
0007f304  11 48                                            ldr r0, [pc, #0x44]
0007f306  79 44                                            add r1, pc
0007f308  1b 68                                            ldr r3, [r3]
0007f30a  78 44                                            add r0, pc
0007f30c  dc f8 00 20                                      ldr.w r2, [ip]
0007f310  2d 68                                            ldr r5, [r5]
0007f312  c1 e9 00 2e                                      strd r2, lr, [r1]
0007f316  c1 e9 02 53                                      strd r5, r3, [r1, #8]
0007f31a  2d f0 8f fd                                      bl #0xace3c
0007f31e  0c 48                                            ldr r0, [pc, #0x30]
0007f320  78 44                                            add r0, pc
0007f322  00 eb 84 00                                      add.w r0, r0, r4, lsl #2
0007f326  00 68                                            ldr r0, [r0]
0007f328  b0 bd                                            pop {r4, r5, r7, pc}
0007f32a  00 bf                                            nop
0007f32c  78 d2                                            bhs #0x7f420
0007f32e  05 00                                            movs r5, r0
0007f330  34 7d                                            ldrb r4, [r6, #0x14]
0007f332  06 00                                            movs r6, r0
0007f334  24 7d                                            ldrb r4, [r4, #0x14]
0007f336  06 00                                            movs r6, r0
0007f338  c0 d2                                            bhs #0x7f2bc
0007f33a  05 00                                            movs r5, r0
0007f33c  82 d2                                            bhs #0x7f244
0007f33e  05 00                                            movs r5, r0
0007f340  8e d2                                            bhs #0x7f260
0007f342  05 00                                            movs r5, r0
0007f344  be d2                                            bhs #0x7f2c4
0007f346  05 00                                            movs r5, r0
0007f348  ea 7c                                            ldrb r2, [r5, #0x13]
0007f34a  06 00                                            movs r6, r0
0007f34c  f6 7c                                            ldrb r6, [r6, #0x13]
0007f34e  06 00                                            movs r6, r0
0007f350  d0 7c                                            ldrb r0, [r2, #0x13]
0007f352  06 00                                            movs r6, r0

; FUNCTION 0x0007f354, declared_size=156, range_size=156, mode=thumb
; class-group: glsl_type
; alias: _ZN9glsl_type4uvecEj
; demangled: glsl_type::uvec(unsigned int)
; decoder-mode: thumb
0007f354  b0 b5                                            push {r4, r5, r7, lr}
0007f356  02 af                                            add r7, sp, #8
0007f358  44 1e                                            subs r4, r0, #1
0007f35a  03 2c                                            cmp r4, #3
0007f35c  03 d9                                            bls #0x7f366
0007f35e  1a 48                                            ldr r0, [pc, #0x68]
0007f360  78 44                                            add r0, pc
0007f362  00 68                                            ldr r0, [r0]
0007f364  2d e0                                            b #0x7f3c2
0007f366  19 48                                            ldr r0, [pc, #0x64]
0007f368  78 44                                            add r0, pc
0007f36a  00 78                                            ldrb r0, [r0]
0007f36c  bf f3 5b 8f                                      dmb ish
0007f370  10 f0 01 0f                                      tst.w r0, #1
0007f374  21 d1                                            bne #0x7f3ba
0007f376  16 48                                            ldr r0, [pc, #0x58]
0007f378  78 44                                            add r0, pc
0007f37a  2d f0 23 fd                                      bl #0xacdc4
0007f37e  e0 b1                                            cbz r0, #0x7f3ba
0007f380  14 48                                            ldr r0, [pc, #0x50]
0007f382  17 4b                                            ldr r3, [pc, #0x5c]
0007f384  78 44                                            add r0, pc
0007f386  14 49                                            ldr r1, [pc, #0x50]
0007f388  14 4a                                            ldr r2, [pc, #0x50]
0007f38a  7b 44                                            add r3, pc
0007f38c  00 68                                            ldr r0, [r0]
0007f38e  79 44                                            add r1, pc
0007f390  1b 68                                            ldr r3, [r3]
0007f392  7a 44                                            add r2, pc
0007f394  d1 f8 00 c0                                      ldr.w ip, [r1]
0007f398  15 68                                            ldr r5, [r2]
0007f39a  12 49                                            ldr r1, [pc, #0x48]
0007f39c  d0 f8 00 e0                                      ldr.w lr, [r0]
0007f3a0  11 48                                            ldr r0, [pc, #0x44]
0007f3a2  79 44                                            add r1, pc
0007f3a4  1b 68                                            ldr r3, [r3]
0007f3a6  78 44                                            add r0, pc
0007f3a8  dc f8 00 20                                      ldr.w r2, [ip]
0007f3ac  2d 68                                            ldr r5, [r5]
0007f3ae  c1 e9 00 2e                                      strd r2, lr, [r1]
0007f3b2  c1 e9 02 53                                      strd r5, r3, [r1, #8]
0007f3b6  2d f0 41 fd                                      bl #0xace3c
0007f3ba  0c 48                                            ldr r0, [pc, #0x30]
0007f3bc  78 44                                            add r0, pc
0007f3be  00 eb 84 00                                      add.w r0, r0, r4, lsl #2
0007f3c2  00 68                                            ldr r0, [r0]
0007f3c4  b0 bd                                            pop {r4, r5, r7, pc}
0007f3c6  00 bf                                            nop
0007f3c8  dc d1                                            bne #0x7f384
0007f3ca  05 00                                            movs r5, r0
0007f3cc  ac 7c                                            ldrb r4, [r5, #0x12]
0007f3ce  06 00                                            movs r6, r0
0007f3d0  9c 7c                                            ldrb r4, [r3, #0x12]
0007f3d2  06 00                                            movs r6, r0
0007f3d4  2c d2                                            bhs #0x7f430
0007f3d6  05 00                                            movs r5, r0
0007f3d8  ea d1                                            bne #0x7f3b0
0007f3da  05 00                                            movs r5, r0
0007f3dc  22 d2                                            bhs #0x7f424
0007f3de  05 00                                            movs r5, r0
0007f3e0  2e d2                                            bhs #0x7f440
0007f3e2  05 00                                            movs r5, r0
0007f3e4  62 7c                                            ldrb r2, [r4, #0x11]
0007f3e6  06 00                                            movs r6, r0
0007f3e8  6e 7c                                            ldrb r6, [r5, #0x11]
0007f3ea  06 00                                            movs r6, r0
0007f3ec  48 7c                                            ldrb r0, [r1, #0x11]
0007f3ee  06 00                                            movs r6, r0

; FUNCTION 0x0007f3f0, declared_size=156, range_size=156, mode=thumb
; class-group: glsl_type
; alias: _ZN9glsl_type4bvecEj
; demangled: glsl_type::bvec(unsigned int)
; decoder-mode: thumb
0007f3f0  b0 b5                                            push {r4, r5, r7, lr}
0007f3f2  02 af                                            add r7, sp, #8
0007f3f4  44 1e                                            subs r4, r0, #1
0007f3f6  03 2c                                            cmp r4, #3
0007f3f8  03 d9                                            bls #0x7f402
0007f3fa  1a 48                                            ldr r0, [pc, #0x68]
0007f3fc  78 44                                            add r0, pc
0007f3fe  00 68                                            ldr r0, [r0]
0007f400  2d e0                                            b #0x7f45e
0007f402  19 48                                            ldr r0, [pc, #0x64]
0007f404  78 44                                            add r0, pc
0007f406  00 78                                            ldrb r0, [r0]
0007f408  bf f3 5b 8f                                      dmb ish
0007f40c  10 f0 01 0f                                      tst.w r0, #1
0007f410  21 d1                                            bne #0x7f456
0007f412  16 48                                            ldr r0, [pc, #0x58]
0007f414  78 44                                            add r0, pc
0007f416  2d f0 d5 fc                                      bl #0xacdc4
0007f41a  e0 b1                                            cbz r0, #0x7f456
0007f41c  14 48                                            ldr r0, [pc, #0x50]
0007f41e  17 4b                                            ldr r3, [pc, #0x5c]
0007f420  78 44                                            add r0, pc
0007f422  14 49                                            ldr r1, [pc, #0x50]
0007f424  14 4a                                            ldr r2, [pc, #0x50]
0007f426  7b 44                                            add r3, pc
0007f428  00 68                                            ldr r0, [r0]
0007f42a  79 44                                            add r1, pc
0007f42c  1b 68                                            ldr r3, [r3]
0007f42e  7a 44                                            add r2, pc
0007f430  d1 f8 00 c0                                      ldr.w ip, [r1]
0007f434  15 68                                            ldr r5, [r2]
0007f436  12 49                                            ldr r1, [pc, #0x48]
0007f438  d0 f8 00 e0                                      ldr.w lr, [r0]
0007f43c  11 48                                            ldr r0, [pc, #0x44]
0007f43e  79 44                                            add r1, pc
0007f440  1b 68                                            ldr r3, [r3]
0007f442  78 44                                            add r0, pc
0007f444  dc f8 00 20                                      ldr.w r2, [ip]
0007f448  2d 68                                            ldr r5, [r5]
0007f44a  c1 e9 00 2e                                      strd r2, lr, [r1]
0007f44e  c1 e9 02 53                                      strd r5, r3, [r1, #8]
0007f452  2d f0 f3 fc                                      bl #0xace3c
0007f456  0c 48                                            ldr r0, [pc, #0x30]
0007f458  78 44                                            add r0, pc
0007f45a  00 eb 84 00                                      add.w r0, r0, r4, lsl #2
0007f45e  00 68                                            ldr r0, [r0]
0007f460  b0 bd                                            pop {r4, r5, r7, pc}
0007f462  00 bf                                            nop
0007f464  40 d1                                            bne #0x7f4e8
0007f466  05 00                                            movs r5, r0
0007f468  24 7c                                            ldrb r4, [r4, #0x10]
0007f46a  06 00                                            movs r6, r0
0007f46c  14 7c                                            ldrb r4, [r2, #0x10]
0007f46e  06 00                                            movs r6, r0
0007f470  9c d1                                            bne #0x7f3ac
0007f472  05 00                                            movs r5, r0
0007f474  2a d1                                            bne #0x7f4cc
0007f476  05 00                                            movs r5, r0
0007f478  92 d1                                            bne #0x7f3a0
0007f47a  05 00                                            movs r5, r0
0007f47c  9e d1                                            bne #0x7f3bc
0007f47e  05 00                                            movs r5, r0
0007f480  da 7b                                            ldrb r2, [r3, #0xf]
0007f482  06 00                                            movs r6, r0
0007f484  e6 7b                                            ldrb r6, [r4, #0xf]
0007f486  06 00                                            movs r6, r0
0007f488  c0 7b                                            ldrb r0, [r0, #0xf]
0007f48a  06 00                                            movs r6, r0

; FUNCTION 0x0007f48c, declared_size=236, range_size=236, mode=thumb
; class-group: glsl_type
; alias: _ZN9glsl_type12get_instanceEjjj
; demangled: glsl_type::get_instance(unsigned int, unsigned int, unsigned int)
; decoder-mode: thumb
0007f48c  0a 28                                            cmp r0, #0xa
0007f48e  02 d1                                            bne #0x7f496
0007f490  38 48                                            ldr r0, [pc, #0xe0]
0007f492  78 44                                            add r0, pc
0007f494  08 e0                                            b #0x7f4a8
0007f496  a1 f1 01 0c                                      sub.w ip, r1, #1
0007f49a  53 1e                                            subs r3, r2, #1
0007f49c  43 ea 0c 03                                      orr.w r3, r3, ip
0007f4a0  04 2b                                            cmp r3, #4
0007f4a2  04 d3                                            blo #0x7f4ae
0007f4a4  32 48                                            ldr r0, [pc, #0xc8]
0007f4a6  78 44                                            add r0, pc
0007f4a8  00 68                                            ldr r0, [r0]
0007f4aa  00 68                                            ldr r0, [r0]
0007f4ac  70 47                                            bx lr
0007f4ae  01 2a                                            cmp r2, #1
0007f4b0  08 d1                                            bne #0x7f4c4
0007f4b2  03 28                                            cmp r0, #3
0007f4b4  1d d8                                            bhi #0x7f4f2
0007f4b6  df e8 00 f0                                      tbb [pc, r0]
0007f4ba  02 1f                                            subs r2, r0, #4
0007f4bc  22 25                                            movs r5, #0x22
0007f4be  08 46                                            mov r0, r1
0007f4c0  31 f0 ba bb                                      b.w #0xb0c38
0007f4c4  02 28                                            cmp r0, #2
0007f4c6  11 d1                                            bne #0x7f4ec
0007f4c8  01 29                                            cmp r1, #1
0007f4ca  0f d0                                            beq #0x7f4ec
0007f4cc  02 eb 42 00                                      add.w r0, r2, r2, lsl #1
0007f4d0  08 44                                            add r0, r1
0007f4d2  08 38                                            subs r0, #8
0007f4d4  08 28                                            cmp r0, #8
0007f4d6  18 d8                                            bhi #0x7f50a
0007f4d8  df e8 00 f0                                      tbb [pc, r0]
0007f4dc  05 1a                                            subs r5, r0, r0
0007f4de  1d 20                                            movs r0, #0x1d
0007f4e0  23 26                                            movs r6, #0x23
0007f4e2  29 2c                                            cmp r4, #0x29
0007f4e4  2f 00                                            movs r7, r5
0007f4e6  1e 48                                            ldr r0, [pc, #0x78]
0007f4e8  78 44                                            add r0, pc
0007f4ea  dd e7                                            b #0x7f4a8
0007f4ec  1e 48                                            ldr r0, [pc, #0x78]
0007f4ee  78 44                                            add r0, pc
0007f4f0  da e7                                            b #0x7f4a8
0007f4f2  1e 48                                            ldr r0, [pc, #0x78]
0007f4f4  78 44                                            add r0, pc
0007f4f6  d7 e7                                            b #0x7f4a8
0007f4f8  08 46                                            mov r0, r1
0007f4fa  31 f0 a5 bb                                      b.w #0xb0c48
0007f4fe  08 46                                            mov r0, r1
0007f500  31 f0 aa bb                                      b.w #0xb0c58
0007f504  08 46                                            mov r0, r1
0007f506  31 f0 af bb                                      b.w #0xb0c68
0007f50a  16 48                                            ldr r0, [pc, #0x58]
0007f50c  78 44                                            add r0, pc
0007f50e  cb e7                                            b #0x7f4a8
0007f510  12 48                                            ldr r0, [pc, #0x48]
0007f512  78 44                                            add r0, pc
0007f514  c8 e7                                            b #0x7f4a8
0007f516  10 48                                            ldr r0, [pc, #0x40]
0007f518  78 44                                            add r0, pc
0007f51a  c5 e7                                            b #0x7f4a8
0007f51c  0d 48                                            ldr r0, [pc, #0x34]
0007f51e  78 44                                            add r0, pc
0007f520  c2 e7                                            b #0x7f4a8
0007f522  0b 48                                            ldr r0, [pc, #0x2c]
0007f524  78 44                                            add r0, pc
0007f526  bf e7                                            b #0x7f4a8
0007f528  08 48                                            ldr r0, [pc, #0x20]
0007f52a  78 44                                            add r0, pc
0007f52c  bc e7                                            b #0x7f4a8
0007f52e  06 48                                            ldr r0, [pc, #0x18]
0007f530  78 44                                            add r0, pc
0007f532  b9 e7                                            b #0x7f4a8
0007f534  03 48                                            ldr r0, [pc, #0xc]
0007f536  78 44                                            add r0, pc
0007f538  b6 e7                                            b #0x7f4a8
0007f53a  01 48                                            ldr r0, [pc, #4]
0007f53c  78 44                                            add r0, pc
0007f53e  b3 e7                                            b #0x7f4a8
0007f540  5c d0                                            beq #0x7f5fc
0007f542  05 00                                            movs r5, r0
0007f544  ae d0                                            beq #0x7f4a4
0007f546  05 00                                            movs r5, r0
0007f548  b0 d0                                            beq #0x7f4ac
0007f54a  05 00                                            movs r5, r0
0007f54c  b2 d0                                            beq #0x7f4b4
0007f54e  05 00                                            movs r5, r0
0007f550  a8 d0                                            beq #0x7f4a4
0007f552  05 00                                            movs r5, r0
0007f554  ba d0                                            beq #0x7f4cc
0007f556  05 00                                            movs r5, r0
0007f558  bc d0                                            beq #0x7f4d4
0007f55a  05 00                                            movs r5, r0
0007f55c  be d0                                            beq #0x7f4dc
0007f55e  05 00                                            movs r5, r0
0007f560  e0 d0                                            beq #0x7f524
0007f562  05 00                                            movs r5, r0
0007f564  30 d0                                            beq #0x7f5c8
0007f566  05 00                                            movs r5, r0
0007f568  4e d0                                            beq #0x7f608
0007f56a  05 00                                            movs r5, r0
0007f56c  48 d0                                            beq #0x7f600
0007f56e  05 00                                            movs r5, r0
0007f570  96 d0                                            beq #0x7f4a0
0007f572  05 00                                            movs r5, r0
0007f574  d2 d0                                            beq #0x7f51c
0007f576  05 00                                            movs r5, r0

; FUNCTION 0x0007f578, declared_size=216, range_size=216, mode=thumb
; class-group: glsl_type
; alias: _ZN9glsl_type18get_array_instanceEPKS_j
; demangled: glsl_type::get_array_instance(glsl_type const*, unsigned int)
; decoder-mode: thumb
0007f578  f0 b5                                            push {r4, r5, r6, r7, lr}
0007f57a  03 af                                            add r7, sp, #0xc
0007f57c  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0007f580  a2 b0                                            sub sp, #0x88
0007f582  05 46                                            mov r5, r0
0007f584  27 48                                            ldr r0, [pc, #0x9c]
0007f586  0c 46                                            mov r4, r1
0007f588  27 49                                            ldr r1, [pc, #0x9c]
0007f58a  78 44                                            add r0, pc
0007f58c  79 44                                            add r1, pc
0007f58e  00 68                                            ldr r0, [r0]
0007f590  09 68                                            ldr r1, [r1]
0007f592  00 68                                            ldr r0, [r0]
0007f594  09 68                                            ldr r1, [r1]
0007f596  00 28                                            cmp r0, #0
0007f598  21 91                                            str r1, [sp, #0x84]
0007f59a  0c d1                                            bne #0x7f5b6
0007f59c  23 48                                            ldr r0, [pc, #0x8c]
0007f59e  24 4a                                            ldr r2, [pc, #0x90]
0007f5a0  78 44                                            add r0, pc
0007f5a2  7a 44                                            add r2, pc
0007f5a4  01 68                                            ldr r1, [r0]
0007f5a6  40 20                                            movs r0, #0x40
0007f5a8  12 68                                            ldr r2, [r2]
0007f5aa  b3 f7 e4 e8                                      blx #0x32774
0007f5ae  21 49                                            ldr r1, [pc, #0x84]
0007f5b0  79 44                                            add r1, pc
0007f5b2  09 68                                            ldr r1, [r1]
0007f5b4  08 60                                            str r0, [r1]
0007f5b6  01 ae                                            add r6, sp, #4
0007f5b8  1f a2                                            adr r2, #0x7c
0007f5ba  80 21                                            movs r1, #0x80
0007f5bc  2b 46                                            mov r3, r5
0007f5be  30 46                                            mov r0, r6
0007f5c0  00 94                                            str r4, [sp]
0007f5c2  b2 f7 56 ee                                      blx #0x32270
0007f5c6  1e 48                                            ldr r0, [pc, #0x78]
0007f5c8  31 46                                            mov r1, r6
0007f5ca  78 44                                            add r0, pc
0007f5cc  00 68                                            ldr r0, [r0]
0007f5ce  00 68                                            ldr r0, [r0]
0007f5d0  b3 f7 8e e8                                      blx #0x326f0
0007f5d4  06 46                                            mov r6, r0
0007f5d6  be b9                                            cbnz r6, #0x7f608
0007f5d8  18 20                                            movs r0, #0x18
0007f5da  b4 f7 9e ea                                      blx #0x33b18
0007f5de  29 46                                            mov r1, r5
0007f5e0  22 46                                            mov r2, r4
0007f5e2  06 46                                            mov r6, r0
0007f5e4  b4 f7 9e ea                                      blx #0x33b24
0007f5e8  16 48                                            ldr r0, [pc, #0x58]
0007f5ea  17 49                                            ldr r1, [pc, #0x5c]
0007f5ec  78 44                                            add r0, pc
0007f5ee  79 44                                            add r1, pc
0007f5f0  00 68                                            ldr r0, [r0]
0007f5f2  09 68                                            ldr r1, [r1]
0007f5f4  04 68                                            ldr r4, [r0]
0007f5f6  08 68                                            ldr r0, [r1]
0007f5f8  01 a9                                            add r1, sp, #4
0007f5fa  b3 f7 2c e8                                      blx #0x32654
0007f5fe  02 46                                            mov r2, r0
0007f600  20 46                                            mov r0, r4
0007f602  31 46                                            mov r1, r6
0007f604  b3 f7 aa e8                                      blx #0x3275c
0007f608  10 48                                            ldr r0, [pc, #0x40]
0007f60a  21 99                                            ldr r1, [sp, #0x84]
0007f60c  78 44                                            add r0, pc
0007f60e  00 68                                            ldr r0, [r0]
0007f610  00 68                                            ldr r0, [r0]
0007f612  40 1a                                            subs r0, r0, r1
0007f614  01 bf                                            itttt eq
0007f616  30 46                                            moveq r0, r6
0007f618  22 b0                                            addeq sp, #0x88
0007f61a  5d f8 04 bb                                      ldreq fp, [sp], #4
0007f61e  f0 bd                                            popeq {r4, r5, r6, r7, pc}
0007f620  b2 f7 1e ed                                      blx #0x32060
0007f624  ca d3                                            blo #0x7f5bc
0007f626  05 00                                            movs r5, r0
0007f628  28 cf                                            ldm r7!, {r3, r5}
0007f62a  05 00                                            movs r5, r0
0007f62c  90 cf                                            ldm r7, {r4, r7}
0007f62e  05 00                                            movs r5, r0
0007f630  92 cf                                            ldm r7, {r1, r4, r7}
0007f632  05 00                                            movs r5, r0
0007f634  a4 d3                                            blo #0x7f580
0007f636  05 00                                            movs r5, r0
0007f638  25 70                                            strb r5, [r4]
0007f63a  5b 25                                            movs r5, #0x5b
0007f63c  75 5d                                            ldrb r5, [r6, r5]
0007f63e  00 00                                            movs r0, r0
0007f640  8a d3                                            blo #0x7f558
0007f642  05 00                                            movs r5, r0
0007f644  68 d3                                            blo #0x7f718
0007f646  05 00                                            movs r5, r0
0007f648  62 d3                                            blo #0x7f710
0007f64a  05 00                                            movs r5, r0
0007f64c  a8 ce                                            ldm r6!, {r3, r5, r7}
0007f64e  05 00                                            movs r5, r0

; FUNCTION 0x0007f650, declared_size=48, range_size=48, mode=thumb
; class-group: glsl_type
; alias: _ZN9glsl_typenwEj
; demangled: glsl_type::operator new(unsigned int)
; decoder-mode: thumb
0007f650  d0 b5                                            push {r4, r6, r7, lr}
0007f652  02 af                                            add r7, sp, #8
0007f654  04 46                                            mov r4, r0
0007f656  08 48                                            ldr r0, [pc, #0x20]
0007f658  78 44                                            add r0, pc
0007f65a  00 68                                            ldr r0, [r0]
0007f65c  00 68                                            ldr r0, [r0]
0007f65e  30 b9                                            cbnz r0, #0x7f66e
0007f660  00 20                                            movs r0, #0
0007f662  b3 f7 44 ed                                      blx #0x330ec
0007f666  05 49                                            ldr r1, [pc, #0x14]
0007f668  79 44                                            add r1, pc
0007f66a  09 68                                            ldr r1, [r1]
0007f66c  08 60                                            str r0, [r1]
0007f66e  21 46                                            mov r1, r4
0007f670  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0007f674  31 f0 28 ba                                      b.w #0xb0ac8
0007f678  f8 d2                                            bhs #0x7f66c
0007f67a  05 00                                            movs r5, r0
0007f67c  e8 d2                                            bhs #0x7f650
0007f67e  05 00                                            movs r5, r0

; FUNCTION 0x0007f680, declared_size=204, range_size=204, mode=thumb
; class-group: glsl_type
; alias: _ZNK9glsl_type14record_compareEPKS_
; demangled: glsl_type::record_compare(glsl_type const*) const
; decoder-mode: thumb
0007f680  f0 b5                                            push {r4, r5, r6, r7, lr}
0007f682  03 af                                            add r7, sp, #0xc
0007f684  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
0007f688  81 b0                                            sub sp, #4
0007f68a  04 46                                            mov r4, r0
0007f68c  0d 46                                            mov r5, r1
0007f68e  d4 f8 10 a0                                      ldr.w sl, [r4, #0x10]
0007f692  28 69                                            ldr r0, [r5, #0x10]
0007f694  82 45                                            cmp sl, r0
0007f696  05 d1                                            bne #0x7f6a4
0007f698  20 89                                            ldrh r0, [r4, #8]
0007f69a  29 89                                            ldrh r1, [r5, #8]
0007f69c  48 40                                            eors r0, r1
0007f69e  10 f4 c0 7f                                      tst.w r0, #0x180
0007f6a2  04 d0                                            beq #0x7f6ae
0007f6a4  00 20                                            movs r0, #0
0007f6a6  01 b0                                            add sp, #4
0007f6a8  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
0007f6ac  f0 bd                                            pop {r4, r5, r6, r7, pc}
0007f6ae  d4 f8 0c 90                                      ldr.w sb, [r4, #0xc]
0007f6b2  24 a1                                            adr r1, #0x90
0007f6b4  05 22                                            movs r2, #5
0007f6b6  48 46                                            mov r0, sb
0007f6b8  b2 f7 92 ed                                      blx #0x321e0
0007f6bc  68 b1                                            cbz r0, #0x7f6da
0007f6be  d5 f8 0c 80                                      ldr.w r8, [r5, #0xc]
0007f6c2  20 a1                                            adr r1, #0x80
0007f6c4  05 22                                            movs r2, #5
0007f6c6  40 46                                            mov r0, r8
0007f6c8  b2 f7 8a ed                                      blx #0x321e0
0007f6cc  28 b1                                            cbz r0, #0x7f6da
0007f6ce  48 46                                            mov r0, sb
0007f6d0  41 46                                            mov r1, r8
0007f6d2  b2 f7 36 ec                                      blx #0x31f40
0007f6d6  00 28                                            cmp r0, #0
0007f6d8  e4 d1                                            bne #0x7f6a4
0007f6da  ba f1 00 0f                                      cmp.w sl, #0
0007f6de  2f d0                                            beq #0x7f740
0007f6e0  d5 f8 14 80                                      ldr.w r8, [r5, #0x14]
0007f6e4  00 25                                            movs r5, #0
0007f6e6  d4 f8 14 90                                      ldr.w sb, [r4, #0x14]
0007f6ea  4f f0 00 0b                                      mov.w fp, #0
0007f6ee  58 f8 05 00                                      ldr.w r0, [r8, r5]
0007f6f2  59 f8 05 10                                      ldr.w r1, [sb, r5]
0007f6f6  81 42                                            cmp r1, r0
0007f6f8  d4 d1                                            bne #0x7f6a4
0007f6fa  08 eb 05 06                                      add.w r6, r8, r5
0007f6fe  09 eb 05 04                                      add.w r4, sb, r5
0007f702  71 68                                            ldr r1, [r6, #4]
0007f704  60 68                                            ldr r0, [r4, #4]
0007f706  b2 f7 1c ec                                      blx #0x31f40
0007f70a  00 28                                            cmp r0, #0
0007f70c  ca d1                                            bne #0x7f6a4
0007f70e  20 7c                                            ldrb r0, [r4, #0x10]
0007f710  31 7c                                            ldrb r1, [r6, #0x10]
0007f712  48 40                                            eors r0, r1
0007f714  10 f0 30 0f                                      tst.w r0, #0x30
0007f718  c4 d1                                            bne #0x7f6a4
0007f71a  00 07                                            lsls r0, r0, #0x1c
0007f71c  02 bf                                            ittt eq
0007f71e  f1 68                                            ldreq r1, [r6, #0xc]
0007f720  e2 68                                            ldreq r2, [r4, #0xc]
0007f722  8a 42                                            cmpeq r2, r1
0007f724  4f f0 00 00                                      mov.w r0, #0
0007f728  bd d1                                            bne #0x7f6a6
0007f72a  b0 68                                            ldr r0, [r6, #8]
0007f72c  a1 68                                            ldr r1, [r4, #8]
0007f72e  81 42                                            cmp r1, r0
0007f730  b8 d1                                            bne #0x7f6a4
0007f732  0b f1 01 0b                                      add.w fp, fp, #1
0007f736  18 35                                            adds r5, #0x18
0007f738  01 20                                            movs r0, #1
0007f73a  d3 45                                            cmp fp, sl
0007f73c  d7 d3                                            blo #0x7f6ee
0007f73e  b2 e7                                            b #0x7f6a6
0007f740  01 20                                            movs r0, #1
0007f742  b0 e7                                            b #0x7f6a6
0007f744  23 61                                            str r3, [r4, #0x10]
0007f746  6e 6f                                            ldr r6, [r5, #0x74]
0007f748  6e 00                                            lsls r6, r5, #1
0007f74a  00 00                                            movs r0, r0

; FUNCTION 0x0007f74c, declared_size=36, range_size=36, mode=thumb
; class-group: glsl_type
; alias: _ZN9glsl_type18record_key_compareEPKvS1_
; demangled: glsl_type::record_key_compare(void const*, void const*)
; decoder-mode: thumb
0007f74c  b0 b5                                            push {r4, r5, r7, lr}
0007f74e  02 af                                            add r7, sp, #8
0007f750  0c 46                                            mov r4, r1
0007f752  05 46                                            mov r5, r0
0007f754  e1 68                                            ldr r1, [r4, #0xc]
0007f756  e8 68                                            ldr r0, [r5, #0xc]
0007f758  b2 f7 f2 eb                                      blx #0x31f40
0007f75c  08 b1                                            cbz r0, #0x7f762
0007f75e  01 20                                            movs r0, #1
0007f760  b0 bd                                            pop {r4, r5, r7, pc}
0007f762  28 46                                            mov r0, r5
0007f764  21 46                                            mov r1, r4
0007f766  b4 f7 e4 e9                                      blx #0x33b30
0007f76a  80 f0 01 00                                      eor r0, r0, #1
0007f76e  b0 bd                                            pop {r4, r5, r7, pc}

; FUNCTION 0x0007f770, declared_size=152, range_size=152, mode=thumb
; class-group: glsl_type
; alias: _ZN9glsl_type15record_key_hashEPKv
; demangled: glsl_type::record_key_hash(void const*)
; decoder-mode: thumb
0007f770  f0 b5                                            push {r4, r5, r6, r7, lr}
0007f772  03 af                                            add r7, sp, #0xc
0007f774  2d e9 00 07                                      push.w {r8, sb, sl}
0007f778  a2 b0                                            sub sp, #0x88
0007f77a  82 46                                            mov sl, r0
0007f77c  1d 48                                            ldr r0, [pc, #0x74]
0007f77e  0d f1 04 08                                      add.w r8, sp, #4
0007f782  1d a2                                            adr r2, #0x74
0007f784  78 44                                            add r0, pc
0007f786  80 21                                            movs r1, #0x80
0007f788  00 68                                            ldr r0, [r0]
0007f78a  00 68                                            ldr r0, [r0]
0007f78c  21 90                                            str r0, [sp, #0x84]
0007f78e  40 46                                            mov r0, r8
0007f790  da f8 10 30                                      ldr.w r3, [sl, #0x10]
0007f794  b2 f7 6c ed                                      blx #0x32270
0007f798  06 46                                            mov r6, r0
0007f79a  7f 2e                                            cmp r6, #0x7f
0007f79c  1a d8                                            bhi #0x7f7d4
0007f79e  da f8 10 00                                      ldr.w r0, [sl, #0x10]
0007f7a2  b8 b1                                            cbz r0, #0x7f7d4
0007f7a4  0f f2 58 09                                      addw sb, pc, #0x58
0007f7a8  01 24                                            movs r4, #1
0007f7aa  00 25                                            movs r5, #0
0007f7ac  da f8 14 00                                      ldr.w r0, [sl, #0x14]
0007f7b0  c6 f1 80 01                                      rsb.w r1, r6, #0x80
0007f7b4  4a 46                                            mov r2, sb
0007f7b6  43 59                                            ldr r3, [r0, r5]
0007f7b8  08 eb 06 00                                      add.w r0, r8, r6
0007f7bc  b2 f7 58 ed                                      blx #0x32270
0007f7c0  06 44                                            add r6, r0
0007f7c2  7f 2e                                            cmp r6, #0x7f
0007f7c4  06 d8                                            bhi #0x7f7d4
0007f7c6  da f8 10 00                                      ldr.w r0, [sl, #0x10]
0007f7ca  61 1c                                            adds r1, r4, #1
0007f7cc  18 35                                            adds r5, #0x18
0007f7ce  84 42                                            cmp r4, r0
0007f7d0  0c 46                                            mov r4, r1
0007f7d2  eb d3                                            blo #0x7f7ac
0007f7d4  01 a8                                            add r0, sp, #4
0007f7d6  b4 f7 b2 e9                                      blx #0x33b3c
0007f7da  0a 49                                            ldr r1, [pc, #0x28]
0007f7dc  21 9a                                            ldr r2, [sp, #0x84]
0007f7de  79 44                                            add r1, pc
0007f7e0  09 68                                            ldr r1, [r1]
0007f7e2  09 68                                            ldr r1, [r1]
0007f7e4  89 1a                                            subs r1, r1, r2
0007f7e6  02 bf                                            ittt eq
0007f7e8  22 b0                                            addeq sp, #0x88
0007f7ea  bd e8 00 07                                      popeq.w {r8, sb, sl}
0007f7ee  f0 bd                                            popeq {r4, r5, r6, r7, pc}
0007f7f0  b2 f7 36 ec                                      blx #0x32060
0007f7f4  30 cd                                            ldm r5, {r4, r5}
0007f7f6  05 00                                            movs r5, r0
0007f7f8  25 30                                            adds r0, #0x25
0007f7fa  38 78                                            ldrb r0, [r7]
0007f7fc  00 00                                            movs r0, r0
0007f7fe  00 00                                            movs r0, r0
0007f800  25 70                                            strb r5, [r4]
0007f802  00 00                                            movs r0, r0
0007f804  d6 cc                                            ldm r4, {r1, r2, r4, r6, r7}
0007f806  05 00                                            movs r5, r0

; FUNCTION 0x0007f808, declared_size=176, range_size=176, mode=thumb
; class-group: glsl_type
; alias: _ZN9glsl_type19get_record_instanceEPK17glsl_struct_fieldjPKc
; demangled: glsl_type::get_record_instance(glsl_struct_field const*, unsigned int, char const*)
; decoder-mode: thumb
0007f808  f0 b5                                            push {r4, r5, r6, r7, lr}
0007f80a  03 af                                            add r7, sp, #0xc
0007f80c  4d f8 04 8d                                      str r8, [sp, #-0x4]!
0007f810  88 b0                                            sub sp, #0x20
0007f812  06 46                                            mov r6, r0
0007f814  21 48                                            ldr r0, [pc, #0x84]
0007f816  90 46                                            mov r8, r2
0007f818  0d 46                                            mov r5, r1
0007f81a  78 44                                            add r0, pc
0007f81c  31 46                                            mov r1, r6
0007f81e  2a 46                                            mov r2, r5
0007f820  43 46                                            mov r3, r8
0007f822  00 68                                            ldr r0, [r0]
0007f824  00 68                                            ldr r0, [r0]
0007f826  07 90                                            str r0, [sp, #0x1c]
0007f828  01 a8                                            add r0, sp, #4
0007f82a  b4 f7 8e e9                                      blx #0x33b48
0007f82e  1c 48                                            ldr r0, [pc, #0x70]
0007f830  78 44                                            add r0, pc
0007f832  00 68                                            ldr r0, [r0]
0007f834  00 68                                            ldr r0, [r0]
0007f836  60 b9                                            cbnz r0, #0x7f852
0007f838  1a 48                                            ldr r0, [pc, #0x68]
0007f83a  1b 4a                                            ldr r2, [pc, #0x6c]
0007f83c  78 44                                            add r0, pc
0007f83e  7a 44                                            add r2, pc
0007f840  01 68                                            ldr r1, [r0]
0007f842  40 20                                            movs r0, #0x40
0007f844  12 68                                            ldr r2, [r2]
0007f846  b2 f7 96 ef                                      blx #0x32774
0007f84a  18 49                                            ldr r1, [pc, #0x60]
0007f84c  79 44                                            add r1, pc
0007f84e  09 68                                            ldr r1, [r1]
0007f850  08 60                                            str r0, [r1]
0007f852  01 a9                                            add r1, sp, #4
0007f854  b2 f7 4c ef                                      blx #0x326f0
0007f858  04 46                                            mov r4, r0
0007f85a  84 b9                                            cbnz r4, #0x7f87e
0007f85c  18 20                                            movs r0, #0x18
0007f85e  b4 f7 5c e9                                      blx #0x33b18
0007f862  31 46                                            mov r1, r6
0007f864  2a 46                                            mov r2, r5
0007f866  43 46                                            mov r3, r8
0007f868  04 46                                            mov r4, r0
0007f86a  b4 f7 6e e9                                      blx #0x33b48
0007f86e  10 48                                            ldr r0, [pc, #0x40]
0007f870  21 46                                            mov r1, r4
0007f872  22 46                                            mov r2, r4
0007f874  78 44                                            add r0, pc
0007f876  00 68                                            ldr r0, [r0]
0007f878  00 68                                            ldr r0, [r0]
0007f87a  b2 f7 70 ef                                      blx #0x3275c
0007f87e  0d 48                                            ldr r0, [pc, #0x34]
0007f880  07 99                                            ldr r1, [sp, #0x1c]
0007f882  78 44                                            add r0, pc
0007f884  00 68                                            ldr r0, [r0]
0007f886  00 68                                            ldr r0, [r0]
0007f888  40 1a                                            subs r0, r0, r1
0007f88a  01 bf                                            itttt eq
0007f88c  20 46                                            moveq r0, r4
0007f88e  08 b0                                            addeq sp, #0x20
0007f890  5d f8 04 8b                                      ldreq r8, [sp], #4
0007f894  f0 bd                                            popeq {r4, r5, r6, r7, pc}
0007f896  b2 f7 e4 eb                                      blx #0x32060
0007f89a  00 bf                                            nop
0007f89c  9a cc                                            ldm r4, {r1, r3, r4, r7}
0007f89e  05 00                                            movs r5, r0
0007f8a0  28 d1                                            bne #0x7f8f4
0007f8a2  05 00                                            movs r5, r0
0007f8a4  20 d1                                            bne #0x7f8e8
0007f8a6  05 00                                            movs r5, r0
0007f8a8  22 d1                                            bne #0x7f8f0
0007f8aa  05 00                                            movs r5, r0
0007f8ac  0c d1                                            bne #0x7f8c8
0007f8ae  05 00                                            movs r5, r0
0007f8b0  e4 d0                                            beq #0x7f87c
0007f8b2  05 00                                            movs r5, r0
0007f8b4  32 cc                                            ldm r4, {r1, r4, r5}
0007f8b6  05 00                                            movs r5, r0

; FUNCTION 0x0007f8b8, declared_size=180, range_size=180, mode=thumb
; class-group: glsl_type
; alias: _ZN9glsl_type22get_interface_instanceEPK17glsl_struct_fieldj22glsl_interface_packingPKc
; demangled: glsl_type::get_interface_instance(glsl_struct_field const*, unsigned int, glsl_interface_packing, char const*)
; decoder-mode: thumb
0007f8b8  f0 b5                                            push {r4, r5, r6, r7, lr}
0007f8ba  03 af                                            add r7, sp, #0xc
0007f8bc  2d e9 00 0b                                      push.w {r8, sb, fp}
0007f8c0  88 b0                                            sub sp, #0x20
0007f8c2  04 46                                            mov r4, r0
0007f8c4  22 48                                            ldr r0, [pc, #0x88]
0007f8c6  89 46                                            mov sb, r1
0007f8c8  90 46                                            mov r8, r2
0007f8ca  78 44                                            add r0, pc
0007f8cc  1e 46                                            mov r6, r3
0007f8ce  21 46                                            mov r1, r4
0007f8d0  4a 46                                            mov r2, sb
0007f8d2  00 68                                            ldr r0, [r0]
0007f8d4  43 46                                            mov r3, r8
0007f8d6  00 68                                            ldr r0, [r0]
0007f8d8  07 90                                            str r0, [sp, #0x1c]
0007f8da  01 a8                                            add r0, sp, #4
0007f8dc  00 96                                            str r6, [sp]
0007f8de  b4 f7 3a e9                                      blx #0x33b54
0007f8e2  1c 48                                            ldr r0, [pc, #0x70]
0007f8e4  78 44                                            add r0, pc
0007f8e6  00 68                                            ldr r0, [r0]
0007f8e8  00 68                                            ldr r0, [r0]
0007f8ea  60 b9                                            cbnz r0, #0x7f906
0007f8ec  1a 48                                            ldr r0, [pc, #0x68]
0007f8ee  1b 4a                                            ldr r2, [pc, #0x6c]
0007f8f0  78 44                                            add r0, pc
0007f8f2  7a 44                                            add r2, pc
0007f8f4  01 68                                            ldr r1, [r0]
0007f8f6  40 20                                            movs r0, #0x40
0007f8f8  12 68                                            ldr r2, [r2]
0007f8fa  b2 f7 3c ef                                      blx #0x32774
0007f8fe  18 49                                            ldr r1, [pc, #0x60]
0007f900  79 44                                            add r1, pc
0007f902  09 68                                            ldr r1, [r1]
0007f904  08 60                                            str r0, [r1]
0007f906  01 a9                                            add r1, sp, #4
0007f908  b2 f7 f2 ee                                      blx #0x326f0
0007f90c  05 46                                            mov r5, r0
0007f90e  8d b9                                            cbnz r5, #0x7f934
0007f910  18 20                                            movs r0, #0x18
0007f912  b4 f7 02 e9                                      blx #0x33b18
0007f916  21 46                                            mov r1, r4
0007f918  4a 46                                            mov r2, sb
0007f91a  43 46                                            mov r3, r8
0007f91c  05 46                                            mov r5, r0
0007f91e  00 96                                            str r6, [sp]
0007f920  b4 f7 18 e9                                      blx #0x33b54
0007f924  0f 48                                            ldr r0, [pc, #0x3c]
0007f926  29 46                                            mov r1, r5
0007f928  2a 46                                            mov r2, r5
0007f92a  78 44                                            add r0, pc
0007f92c  00 68                                            ldr r0, [r0]
0007f92e  00 68                                            ldr r0, [r0]
0007f930  b2 f7 14 ef                                      blx #0x3275c
0007f934  0c 48                                            ldr r0, [pc, #0x30]
0007f936  07 99                                            ldr r1, [sp, #0x1c]
0007f938  78 44                                            add r0, pc
0007f93a  00 68                                            ldr r0, [r0]
0007f93c  00 68                                            ldr r0, [r0]
0007f93e  40 1a                                            subs r0, r0, r1
0007f940  01 bf                                            itttt eq
0007f942  28 46                                            moveq r0, r5
0007f944  08 b0                                            addeq sp, #0x20
0007f946  bd e8 00 0b                                      popeq.w {r8, sb, fp}
0007f94a  f0 bd                                            popeq {r4, r5, r6, r7, pc}
0007f94c  b2 f7 88 eb                                      blx #0x32060
0007f950  ea cb                                            ldm r3, {r1, r3, r5, r6, r7}
0007f952  05 00                                            movs r5, r0
0007f954  80 d0                                            beq #0x7f858
0007f956  05 00                                            movs r5, r0
0007f958  6c d0                                            beq #0x7fa34
0007f95a  05 00                                            movs r5, r0
0007f95c  6e d0                                            beq #0x7fa3c
0007f95e  05 00                                            movs r5, r0
0007f960  64 d0                                            beq #0x7fa2c
0007f962  05 00                                            movs r5, r0
0007f964  3a d0                                            beq #0x7f9dc
0007f966  05 00                                            movs r5, r0
0007f968  7c cb                                            ldm r3, {r2, r3, r4, r5, r6}
0007f96a  05 00                                            movs r5, r0

; FUNCTION 0x0007f96c, declared_size=96, range_size=96, mode=thumb
; class-group: glsl_type
; alias: _ZNK9glsl_type10field_typeEPKc
; demangled: glsl_type::field_type(char const*) const
; decoder-mode: thumb
0007f96c  f0 b5                                            push {r4, r5, r6, r7, lr}
0007f96e  03 af                                            add r7, sp, #0xc
0007f970  2d e9 00 0b                                      push.w {r8, sb, fp}
0007f974  88 46                                            mov r8, r1
0007f976  41 68                                            ldr r1, [r0, #4]
0007f978  07 39                                            subs r1, #7
0007f97a  01 29                                            cmp r1, #1
0007f97c  12 d8                                            bhi #0x7f9a4
0007f97e  06 69                                            ldr r6, [r0, #0x10]
0007f980  be b1                                            cbz r6, #0x7f9b2
0007f982  45 69                                            ldr r5, [r0, #0x14]
0007f984  00 24                                            movs r4, #0
0007f986  10 48                                            ldr r0, [pc, #0x40]
0007f988  78 44                                            add r0, pc
0007f98a  d0 f8 00 90                                      ldr.w sb, [r0]
0007f98e  69 68                                            ldr r1, [r5, #4]
0007f990  40 46                                            mov r0, r8
0007f992  b2 f7 d6 ea                                      blx #0x31f40
0007f996  78 b1                                            cbz r0, #0x7f9b8
0007f998  01 34                                            adds r4, #1
0007f99a  18 35                                            adds r5, #0x18
0007f99c  b4 42                                            cmp r4, r6
0007f99e  f6 d3                                            blo #0x7f98e
0007f9a0  4d 46                                            mov r5, sb
0007f9a2  09 e0                                            b #0x7f9b8
0007f9a4  06 48                                            ldr r0, [pc, #0x18]
0007f9a6  78 44                                            add r0, pc
0007f9a8  00 68                                            ldr r0, [r0]
0007f9aa  00 68                                            ldr r0, [r0]
0007f9ac  bd e8 00 0b                                      pop.w {r8, sb, fp}
0007f9b0  f0 bd                                            pop {r4, r5, r6, r7, pc}
0007f9b2  04 48                                            ldr r0, [pc, #0x10]
0007f9b4  78 44                                            add r0, pc
0007f9b6  05 68                                            ldr r5, [r0]
0007f9b8  28 68                                            ldr r0, [r5]
0007f9ba  bd e8 00 0b                                      pop.w {r8, sb, fp}
0007f9be  f0 bd                                            pop {r4, r5, r6, r7, pc}
0007f9c0  96 cb                                            ldm r3!, {r1, r2, r4, r7}
0007f9c2  05 00                                            movs r5, r0
0007f9c4  88 cb                                            ldm r3, {r3, r7}
0007f9c6  05 00                                            movs r5, r0
0007f9c8  b4 cb                                            ldm r3!, {r2, r4, r5, r7}
0007f9ca  05 00                                            movs r5, r0

; FUNCTION 0x0007f9cc, declared_size=56, range_size=56, mode=thumb
; class-group: glsl_type
; alias: _ZNK9glsl_type15field_precisionEPKc
; demangled: glsl_type::field_precision(char const*) const
; decoder-mode: thumb
0007f9cc  f0 b5                                            push {r4, r5, r6, r7, lr}
0007f9ce  03 af                                            add r7, sp, #0xc
0007f9d0  4d f8 04 8d                                      str r8, [sp, #-0x4]!
0007f9d4  88 46                                            mov r8, r1
0007f9d6  41 68                                            ldr r1, [r0, #4]
0007f9d8  07 29                                            cmp r1, #7
0007f9da  0d d1                                            bne #0x7f9f8
0007f9dc  05 69                                            ldr r5, [r0, #0x10]
0007f9de  5d b1                                            cbz r5, #0x7f9f8
0007f9e0  40 69                                            ldr r0, [r0, #0x14]
0007f9e2  00 24                                            movs r4, #0
0007f9e4  06 1d                                            adds r6, r0, #4
0007f9e6  31 68                                            ldr r1, [r6]
0007f9e8  40 46                                            mov r0, r8
0007f9ea  b2 f7 aa ea                                      blx #0x31f40
0007f9ee  38 b1                                            cbz r0, #0x7fa00
0007f9f0  01 34                                            adds r4, #1
0007f9f2  18 36                                            adds r6, #0x18
0007f9f4  ac 42                                            cmp r4, r5
0007f9f6  f6 d3                                            blo #0x7f9e6
0007f9f8  03 20                                            movs r0, #3
0007f9fa  5d f8 04 8b                                      ldr r8, [sp], #4
0007f9fe  f0 bd                                            pop {r4, r5, r6, r7, pc}
0007fa00  70 68                                            ldr r0, [r6, #4]
0007fa02  fa e7                                            b #0x7f9fa

; FUNCTION 0x0007fa04, declared_size=58, range_size=58, mode=thumb
; class-group: glsl_type
; alias: _ZNK9glsl_type11field_indexEPKc
; demangled: glsl_type::field_index(char const*) const
; decoder-mode: thumb
0007fa04  f0 b5                                            push {r4, r5, r6, r7, lr}
0007fa06  03 af                                            add r7, sp, #0xc
0007fa08  4d f8 04 8d                                      str r8, [sp, #-0x4]!
0007fa0c  88 46                                            mov r8, r1
0007fa0e  41 68                                            ldr r1, [r0, #4]
0007fa10  07 39                                            subs r1, #7
0007fa12  01 29                                            cmp r1, #1
0007fa14  0d d8                                            bhi #0x7fa32
0007fa16  06 69                                            ldr r6, [r0, #0x10]
0007fa18  5e b1                                            cbz r6, #0x7fa32
0007fa1a  40 69                                            ldr r0, [r0, #0x14]
0007fa1c  00 24                                            movs r4, #0
0007fa1e  05 1d                                            adds r5, r0, #4
0007fa20  29 68                                            ldr r1, [r5]
0007fa22  40 46                                            mov r0, r8
0007fa24  b2 f7 8c ea                                      blx #0x31f40
0007fa28  28 b1                                            cbz r0, #0x7fa36
0007fa2a  01 34                                            adds r4, #1
0007fa2c  18 35                                            adds r5, #0x18
0007fa2e  b4 42                                            cmp r4, r6
0007fa30  f6 d3                                            blo #0x7fa20
0007fa32  4f f0 ff 34                                      mov.w r4, #-1
0007fa36  20 46                                            mov r0, r4
0007fa38  5d f8 04 8b                                      ldr r8, [sp], #4
0007fa3c  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0007fa40, declared_size=106, range_size=106, mode=thumb
; class-group: glsl_type
; alias: _ZNK9glsl_type15component_slotsEv
; demangled: glsl_type::component_slots() const
; decoder-mode: thumb
0007fa40  f0 b5                                            push {r4, r5, r6, r7, lr}
0007fa42  03 af                                            add r7, sp, #0xc
0007fa44  4d f8 04 8d                                      str r8, [sp, #-0x4]!
0007fa48  41 68                                            ldr r1, [r0, #4]
0007fa4a  09 29                                            cmp r1, #9
0007fa4c  20 d8                                            bhi #0x7fa90
0007fa4e  01 24                                            movs r4, #1
0007fa50  df e8 01 f0                                      tbb [pc, r1]
0007fa54  05 05                                            lsls r5, r0, #0x14
0007fa56  05 05                                            lsls r5, r0, #0x14
0007fa58  1e 1f                                            subs r6, r3, #4
0007fa5a  1e 0d                                            lsrs r6, r3, #0x14
0007fa5c  0d 23                                            movs r3, #0xd
0007fa5e  00 89                                            ldrh r0, [r0, #8]
0007fa60  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
0007fa64  c0 f3 42 20                                      ubfx r0, r0, #9, #3
0007fa68  10 fb 01 f4                                      smulbb r4, r0, r1
0007fa6c  11 e0                                            b #0x7fa92
0007fa6e  d0 f8 10 80                                      ldr.w r8, [r0, #0x10]
0007fa72  b8 f1 00 0f                                      cmp.w r8, #0
0007fa76  0b d0                                            beq #0x7fa90
0007fa78  46 69                                            ldr r6, [r0, #0x14]
0007fa7a  00 25                                            movs r5, #0
0007fa7c  00 24                                            movs r4, #0
0007fa7e  56 f8 18 0b                                      ldr r0, [r6], #0x18
0007fa82  b4 f7 6e e8                                      blx #0x33b60
0007fa86  01 35                                            adds r5, #1
0007fa88  04 44                                            add r4, r0
0007fa8a  45 45                                            cmp r5, r8
0007fa8c  f7 d3                                            blo #0x7fa7e
0007fa8e  00 e0                                            b #0x7fa92
0007fa90  00 24                                            movs r4, #0
0007fa92  20 46                                            mov r0, r4
0007fa94  5d f8 04 8b                                      ldr r8, [sp], #4
0007fa98  f0 bd                                            pop {r4, r5, r6, r7, pc}
0007fa9a  d0 e9 04 40                                      ldrd r4, r0, [r0, #0x10]
0007fa9e  b4 f7 60 e8                                      blx #0x33b60
0007faa2  60 43                                            muls r0, r4, r0
0007faa4  5d f8 04 8b                                      ldr r8, [sp], #4
0007faa8  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0007faac, declared_size=88, range_size=88, mode=thumb
; class-group: glsl_type
; alias: _ZNK9glsl_type17uniform_locationsEv
; demangled: glsl_type::uniform_locations() const
; decoder-mode: thumb
0007faac  f0 b5                                            push {r4, r5, r6, r7, lr}
0007faae  03 af                                            add r7, sp, #0xc
0007fab0  4d f8 04 8d                                      str r8, [sp, #-0x4]!
0007fab4  41 68                                            ldr r1, [r0, #4]
0007fab6  06 29                                            cmp r1, #6
0007fab8  01 d2                                            bhs #0x7fabe
0007faba  01 24                                            movs r4, #1
0007fabc  1e e0                                            b #0x7fafc
0007fabe  ca 1f                                            subs r2, r1, #7
0007fac0  02 2a                                            cmp r2, #2
0007fac2  10 d2                                            bhs #0x7fae6
0007fac4  d0 f8 10 80                                      ldr.w r8, [r0, #0x10]
0007fac8  b8 f1 00 0f                                      cmp.w r8, #0
0007facc  15 d0                                            beq #0x7fafa
0007face  46 69                                            ldr r6, [r0, #0x14]
0007fad0  00 25                                            movs r5, #0
0007fad2  00 24                                            movs r4, #0
0007fad4  56 f8 18 0b                                      ldr r0, [r6], #0x18
0007fad8  b3 f7 52 e9                                      blx #0x32d80
0007fadc  01 35                                            adds r5, #1
0007fade  04 44                                            add r4, r0
0007fae0  45 45                                            cmp r5, r8
0007fae2  f7 d3                                            blo #0x7fad4
0007fae4  0a e0                                            b #0x7fafc
0007fae6  09 29                                            cmp r1, #9
0007fae8  07 d1                                            bne #0x7fafa
0007faea  d0 e9 04 40                                      ldrd r4, r0, [r0, #0x10]
0007faee  b3 f7 48 e9                                      blx #0x32d80
0007faf2  60 43                                            muls r0, r4, r0
0007faf4  5d f8 04 8b                                      ldr r8, [sp], #4
0007faf8  f0 bd                                            pop {r4, r5, r6, r7, pc}
0007fafa  00 24                                            movs r4, #0
0007fafc  20 46                                            mov r0, r4
0007fafe  5d f8 04 8b                                      ldr r8, [sp], #4
0007fb02  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0007fb04, declared_size=102, range_size=102, mode=thumb
; class-group: glsl_type
; alias: _ZNK9glsl_type25can_implicitly_convert_toEPKS_P22_mesa_glsl_parse_state
; demangled: glsl_type::can_implicitly_convert_to(glsl_type const*, _mesa_glsl_parse_state*) const
; decoder-mode: thumb
0007fb04  80 b5                                            push {r7, lr}
0007fb06  6f 46                                            mov r7, sp
0007fb08  88 42                                            cmp r0, r1
0007fb0a  2c d0                                            beq #0x7fb66
0007fb0c  b0 f8 08 e0                                      ldrh.w lr, [r0, #8]
0007fb10  0e f4 c0 43                                      and r3, lr, #0x6000
0007fb14  b3 f5 80 5f                                      cmp.w r3, #0x1000
0007fb18  0b d8                                            bhi #0x7fb32
0007fb1a  b1 f8 08 c0                                      ldrh.w ip, [r1, #8]
0007fb1e  0c f4 c0 43                                      and r3, ip, #0x6000
0007fb22  b3 f5 80 5f                                      cmp.w r3, #0x1000
0007fb26  04 d8                                            bhi #0x7fb32
0007fb28  8c ea 0e 03                                      eor.w r3, ip, lr
0007fb2c  13 f4 60 6f                                      tst.w r3, #0xe00
0007fb30  01 d0                                            beq #0x7fb36
0007fb32  00 20                                            movs r0, #0
0007fb34  80 bd                                            pop {r7, pc}
0007fb36  49 68                                            ldr r1, [r1, #4]
0007fb38  02 29                                            cmp r1, #2
0007fb3a  02 d1                                            bne #0x7fb42
0007fb3c  43 68                                            ldr r3, [r0, #4]
0007fb3e  02 2b                                            cmp r3, #2
0007fb40  11 d3                                            blo #0x7fb66
0007fb42  5a b1                                            cbz r2, #0x7fb5c
0007fb44  92 f8 7c 30                                      ldrb.w r3, [r2, #0x7c]
0007fb48  23 b9                                            cbnz r3, #0x7fb54
0007fb4a  d2 f8 80 30                                      ldr.w r3, [r2, #0x80]
0007fb4e  1b 09                                            lsrs r3, r3, #4
0007fb50  18 2b                                            cmp r3, #0x18
0007fb52  03 d8                                            bhi #0x7fb5c
0007fb54  92 f8 a4 21                                      ldrb.w r2, [r2, #0x1a4]
0007fb58  00 2a                                            cmp r2, #0
0007fb5a  ea d0                                            beq #0x7fb32
0007fb5c  00 29                                            cmp r1, #0
0007fb5e  e8 d1                                            bne #0x7fb32
0007fb60  40 68                                            ldr r0, [r0, #4]
0007fb62  01 28                                            cmp r0, #1
0007fb64  e5 d1                                            bne #0x7fb32
0007fb66  01 20                                            movs r0, #1
0007fb68  80 bd                                            pop {r7, pc}

; FUNCTION 0x0007fb6c, declared_size=380, range_size=380, mode=thumb
; class-group: glsl_type
; alias: _ZNK9glsl_type21std140_base_alignmentEb
; demangled: glsl_type::std140_base_alignment(bool) const
; decoder-mode: thumb
0007fb6c  f0 b5                                            push {r4, r5, r6, r7, lr}
0007fb6e  03 af                                            add r7, sp, #0xc
0007fb70  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
0007fb74  81 b0                                            sub sp, #4
0007fb76  0c 46                                            mov r4, r1
0007fb78  52 49                                            ldr r1, [pc, #0x148]
0007fb7a  4f f0 04 08                                      mov.w r8, #4
0007fb7e  4f f0 e1 09                                      mov.w sb, #0xe1
0007fb82  79 44                                            add r1, pc
0007fb84  09 68                                            ldr r1, [r1]
0007fb86  0d 68                                            ldr r5, [r1]
0007fb88  25 e0                                            b #0x7fbd6
0007fb8a  70 69                                            ldr r0, [r6, #0x14]
0007fb8c  23 e0                                            b #0x7fbd6
0007fb8e  88 ea 51 22                                      eor.w r2, r8, r1, lsr #9
0007fb92  02 f0 07 02                                      and r2, r2, #7
0007fb96  29 fa 02 f3                                      lsr.w r3, sb, r2
0007fb9a  db 07                                            lsls r3, r3, #0x1f
0007fb9c  40 f0 8b 80                                      bne.w #0x7fcb6
0007fba0  02 28                                            cmp r0, #2
0007fba2  5b d1                                            bne #0x7fc5c
0007fba4  11 f4 c0 42                                      ands r2, r1, #0x6000
0007fba8  58 d0                                            beq #0x7fc5c
0007fbaa  c1 f3 42 20                                      ubfx r0, r1, #9, #3
0007fbae  c1 f3 02 31                                      ubfx r1, r1, #0xc, #3
0007fbb2  14 f0 01 02                                      ands r2, r4, #1
0007fbb6  0c 46                                            mov r4, r1
0007fbb8  1c bf                                            itt ne
0007fbba  04 46                                            movne r4, r0
0007fbbc  08 46                                            movne r0, r1
0007fbbe  41 1e                                            subs r1, r0, #1
0007fbc0  03 29                                            cmp r1, #3
0007fbc2  29 46                                            mov r1, r5
0007fbc4  02 d8                                            bhi #0x7fbcc
0007fbc6  b3 f7 8e eb                                      blx #0x332e4
0007fbca  01 46                                            mov r1, r0
0007fbcc  08 46                                            mov r0, r1
0007fbce  21 46                                            mov r1, r4
0007fbd0  b2 f7 c8 ef                                      blx #0x32b64
0007fbd4  00 24                                            movs r4, #0
0007fbd6  06 46                                            mov r6, r0
0007fbd8  31 89                                            ldrh r1, [r6, #8]
0007fbda  01 f4 60 60                                      and r0, r1, #0xe00
0007fbde  b0 f5 00 7f                                      cmp.w r0, #0x200
0007fbe2  02 d1                                            bne #0x7fbea
0007fbe4  70 68                                            ldr r0, [r6, #4]
0007fbe6  04 28                                            cmp r0, #4
0007fbe8  d1 d3                                            blo #0x7fb8e
0007fbea  70 68                                            ldr r0, [r6, #4]
0007fbec  01 f4 40 62                                      and r2, r1, #0xc00
0007fbf0  b2 f5 00 7f                                      cmp.w r2, #0x200
0007fbf4  06 d9                                            bls #0x7fc04
0007fbf6  01 f4 e0 42                                      and r2, r1, #0x7000
0007fbfa  b2 f5 80 5f                                      cmp.w r2, #0x1000
0007fbfe  01 d1                                            bne #0x7fc04
0007fc00  03 28                                            cmp r0, #3
0007fc02  c4 d9                                            bls #0x7fb8e
0007fc04  09 28                                            cmp r0, #9
0007fc06  cb d1                                            bne #0x7fba0
0007fc08  70 69                                            ldr r0, [r6, #0x14]
0007fc0a  01 89                                            ldrh r1, [r0, #8]
0007fc0c  01 f4 60 62                                      and r2, r1, #0xe00
0007fc10  b2 f5 00 7f                                      cmp.w r2, #0x200
0007fc14  02 d1                                            bne #0x7fc1c
0007fc16  42 68                                            ldr r2, [r0, #4]
0007fc18  04 2a                                            cmp r2, #4
0007fc1a  12 d3                                            blo #0x7fc42
0007fc1c  01 f4 40 62                                      and r2, r1, #0xc00
0007fc20  b2 f5 00 7f                                      cmp.w r2, #0x200
0007fc24  07 d9                                            bls #0x7fc36
0007fc26  01 f4 e0 42                                      and r2, r1, #0x7000
0007fc2a  b2 f5 80 5f                                      cmp.w r2, #0x1000
0007fc2e  02 d1                                            bne #0x7fc36
0007fc30  42 68                                            ldr r2, [r0, #4]
0007fc32  04 2a                                            cmp r2, #4
0007fc34  05 d3                                            blo #0x7fc42
0007fc36  11 f4 c0 4f                                      tst.w r1, #0x6000
0007fc3a  cc d0                                            beq #0x7fbd6
0007fc3c  41 68                                            ldr r1, [r0, #4]
0007fc3e  02 29                                            cmp r1, #2
0007fc40  c9 d1                                            bne #0x7fbd6
0007fc42  04 f0 01 01                                      and r1, r4, #1
0007fc46  b3 f7 92 ef                                      blx #0x33b6c
0007fc4a  11 28                                            cmp r0, #0x11
0007fc4c  9d d2                                            bhs #0x7fb8a
0007fc4e  4f f0 10 08                                      mov.w r8, #0x10
0007fc52  40 46                                            mov r0, r8
0007fc54  01 b0                                            add sp, #4
0007fc56  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
0007fc5a  f0 bd                                            pop {r4, r5, r6, r7, pc}
0007fc5c  07 28                                            cmp r0, #7
0007fc5e  2e d1                                            bne #0x7fcbe
0007fc60  30 69                                            ldr r0, [r6, #0x10]
0007fc62  00 28                                            cmp r0, #0
0007fc64  f3 d0                                            beq #0x7fc4e
0007fc66  4f f0 10 08                                      mov.w r8, #0x10
0007fc6a  00 25                                            movs r5, #0
0007fc6c  4f f0 00 0b                                      mov.w fp, #0
0007fc70  70 69                                            ldr r0, [r6, #0x14]
0007fc72  41 19                                            adds r1, r0, r5
0007fc74  09 7c                                            ldrb r1, [r1, #0x10]
0007fc76  c1 f3 01 11                                      ubfx r1, r1, #4, #2
0007fc7a  02 29                                            cmp r1, #2
0007fc7c  04 d0                                            beq #0x7fc88
0007fc7e  01 29                                            cmp r1, #1
0007fc80  14 bf                                            ite ne
0007fc82  21 46                                            movne r1, r4
0007fc84  00 21                                            moveq r1, #0
0007fc86  00 e0                                            b #0x7fc8a
0007fc88  01 21                                            movs r1, #1
0007fc8a  50 f8 05 90                                      ldr.w sb, [r0, r5]
0007fc8e  01 f0 01 0a                                      and sl, r1, #1
0007fc92  51 46                                            mov r1, sl
0007fc94  48 46                                            mov r0, sb
0007fc96  b3 f7 6a ef                                      blx #0x33b6c
0007fc9a  80 45                                            cmp r8, r0
0007fc9c  04 d8                                            bhi #0x7fca8
0007fc9e  48 46                                            mov r0, sb
0007fca0  51 46                                            mov r1, sl
0007fca2  b3 f7 64 ef                                      blx #0x33b6c
0007fca6  80 46                                            mov r8, r0
0007fca8  30 69                                            ldr r0, [r6, #0x10]
0007fcaa  0b f1 01 0b                                      add.w fp, fp, #1
0007fcae  18 35                                            adds r5, #0x18
0007fcb0  83 45                                            cmp fp, r0
0007fcb2  dd d3                                            blo #0x7fc70
0007fcb4  cd e7                                            b #0x7fc52
0007fcb6  04 a0                                            adr r0, #0x10
0007fcb8  50 f8 22 00                                      ldr.w r0, [r0, r2, lsl #2]
0007fcbc  ca e7                                            b #0x7fc54
0007fcbe  4f f0 ff 38                                      mov.w r8, #-1
0007fcc2  c6 e7                                            b #0x7fc52
0007fcc4  ba c9                                            ldm r1, {r1, r3, r4, r5, r7}
0007fcc6  05 00                                            movs r5, r0
0007fcc8  10 00                                            movs r0, r2
0007fcca  00 00                                            movs r0, r0
0007fccc  04 00                                            movs r4, r0
0007fcce  00 00                                            movs r0, r0
0007fcd0  04 00                                            movs r4, r0
0007fcd2  00 00                                            movs r0, r0
0007fcd4  04 00                                            movs r4, r0
0007fcd6  00 00                                            movs r0, r0
0007fcd8  04 00                                            movs r4, r0
0007fcda  00 00                                            movs r0, r0
0007fcdc  04 00                                            movs r4, r0
0007fcde  00 00                                            movs r0, r0
0007fce0  08 00                                            movs r0, r1
0007fce2  00 00                                            movs r0, r0
0007fce4  10 00                                            movs r0, r2
0007fce6  00 00                                            movs r0, r0

; FUNCTION 0x0007fce8, declared_size=440, range_size=440, mode=thumb
; class-group: glsl_type
; alias: _ZNK9glsl_type11std140_sizeEb
; demangled: glsl_type::std140_size(bool) const
; decoder-mode: thumb
0007fce8  f0 b5                                            push {r4, r5, r6, r7, lr}
0007fcea  03 af                                            add r7, sp, #0xc
0007fcec  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
0007fcf0  83 b0                                            sub sp, #0xc
0007fcf2  81 46                                            mov sb, r0
0007fcf4  69 48                                            ldr r0, [pc, #0x1a4]
0007fcf6  78 44                                            add r0, pc
0007fcf8  00 68                                            ldr r0, [r0]
0007fcfa  d0 f8 00 80                                      ldr.w r8, [r0]
0007fcfe  34 e0                                            b #0x7fd6a
0007fd00  13 46                                            mov r3, r2
0007fd02  4c 46                                            mov r4, sb
0007fd04  09 28                                            cmp r0, #9
0007fd06  04 bf                                            itt eq
0007fd08  d9 f8 14 40                                      ldreq.w r4, [sb, #0x14]
0007fd0c  23 89                                            ldrheq r3, [r4, #8]
0007fd0e  13 f4 c0 4f                                      tst.w r3, #0x6000
0007fd12  47 d0                                            beq #0x7fda4
0007fd14  63 68                                            ldr r3, [r4, #4]
0007fd16  02 2b                                            cmp r3, #2
0007fd18  44 d1                                            bne #0x7fda4
0007fd1a  09 28                                            cmp r0, #9
0007fd1c  06 bf                                            itte eq
0007fd1e  d9 e9 04 69                                      ldrdeq r6, sb, [sb, #0x10]
0007fd22  b9 f8 08 20                                      ldrheq.w r2, [sb, #8]
0007fd26  01 26                                            movne r6, #1
0007fd28  11 f0 01 00                                      ands r0, r1, #1
0007fd2c  4f f0 0c 05                                      mov.w r5, #0xc
0007fd30  4f f0 09 00                                      mov.w r0, #9
0007fd34  18 bf                                            it ne
0007fd36  09 25                                            movne r5, #9
0007fd38  18 bf                                            it ne
0007fd3a  0c 20                                            movne r0, #0xc
0007fd3c  22 fa 00 f0                                      lsr.w r0, r2, r0
0007fd40  00 f0 07 01                                      and r1, r0, #7
0007fd44  48 1e                                            subs r0, r1, #1
0007fd46  03 28                                            cmp r0, #3
0007fd48  40 46                                            mov r0, r8
0007fd4a  04 d8                                            bhi #0x7fd56
0007fd4c  08 46                                            mov r0, r1
0007fd4e  b3 f7 ca ea                                      blx #0x332e4
0007fd52  b9 f8 08 20                                      ldrh.w r2, [sb, #8]
0007fd56  a9 b2                                            uxth r1, r5
0007fd58  22 fa 01 f1                                      lsr.w r1, r2, r1
0007fd5c  01 f0 07 01                                      and r1, r1, #7
0007fd60  71 43                                            muls r1, r6, r1
0007fd62  b2 f7 00 ef                                      blx #0x32b64
0007fd66  81 46                                            mov sb, r0
0007fd68  00 21                                            movs r1, #0
0007fd6a  b9 f8 08 20                                      ldrh.w r2, [sb, #8]
0007fd6e  02 f4 60 60                                      and r0, r2, #0xe00
0007fd72  b0 f5 00 7f                                      cmp.w r0, #0x200
0007fd76  03 d1                                            bne #0x7fd80
0007fd78  d9 f8 04 00                                      ldr.w r0, [sb, #4]
0007fd7c  04 28                                            cmp r0, #4
0007fd7e  0d d3                                            blo #0x7fd9c
0007fd80  d9 f8 04 00                                      ldr.w r0, [sb, #4]
0007fd84  02 f4 40 63                                      and r3, r2, #0xc00
0007fd88  b3 f5 00 7f                                      cmp.w r3, #0x200
0007fd8c  b8 d9                                            bls #0x7fd00
0007fd8e  02 f4 e0 43                                      and r3, r2, #0x7000
0007fd92  b3 f5 80 5f                                      cmp.w r3, #0x1000
0007fd96  b3 d1                                            bne #0x7fd00
0007fd98  03 28                                            cmp r0, #3
0007fd9a  b1 d8                                            bhi #0x7fd00
0007fd9c  1c 20                                            movs r0, #0x1c
0007fd9e  00 ea d2 10                                      and.w r0, r0, r2, lsr #7
0007fda2  77 e0                                            b #0x7fe94
0007fda4  09 28                                            cmp r0, #9
0007fda6  0c d1                                            bne #0x7fdc2
0007fda8  d9 f8 14 00                                      ldr.w r0, [sb, #0x14]
0007fdac  42 68                                            ldr r2, [r0, #4]
0007fdae  07 2a                                            cmp r2, #7
0007fdb0  55 d1                                            bne #0x7fe5e
0007fdb2  01 f0 01 01                                      and r1, r1, #1
0007fdb6  d9 f8 10 40                                      ldr.w r4, [sb, #0x10]
0007fdba  b3 f7 de ee                                      blx #0x33b78
0007fdbe  60 43                                            muls r0, r4, r0
0007fdc0  68 e0                                            b #0x7fe94
0007fdc2  07 28                                            cmp r0, #7
0007fdc4  56 d1                                            bne #0x7fe74
0007fdc6  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
0007fdca  00 28                                            cmp r0, #0
0007fdcc  55 d0                                            beq #0x7fe7a
0007fdce  01 91                                            str r1, [sp, #4]
0007fdd0  00 24                                            movs r4, #0
0007fdd2  00 21                                            movs r1, #0
0007fdd4  4f f0 00 08                                      mov.w r8, #0
0007fdd8  02 91                                            str r1, [sp, #8]
0007fdda  04 eb 44 01                                      add.w r1, r4, r4, lsl #1
0007fdde  d9 f8 14 00                                      ldr.w r0, [sb, #0x14]
0007fde2  00 eb c1 02                                      add.w r2, r0, r1, lsl #3
0007fde6  12 7c                                            ldrb r2, [r2, #0x10]
0007fde8  c2 f3 01 12                                      ubfx r2, r2, #4, #2
0007fdec  02 2a                                            cmp r2, #2
0007fdee  04 d0                                            beq #0x7fdfa
0007fdf0  01 2a                                            cmp r2, #1
0007fdf2  14 bf                                            ite ne
0007fdf4  01 9a                                            ldrne r2, [sp, #4]
0007fdf6  00 22                                            moveq r2, #0
0007fdf8  00 e0                                            b #0x7fdfc
0007fdfa  01 22                                            movs r2, #1
0007fdfc  50 f8 31 60                                      ldr.w r6, [r0, r1, lsl #3]
0007fe00  02 f0 01 0a                                      and sl, r2, #1
0007fe04  51 46                                            mov r1, sl
0007fe06  30 46                                            mov r0, r6
0007fe08  b3 f7 b0 ee                                      blx #0x33b6c
0007fe0c  05 46                                            mov r5, r0
0007fe0e  08 eb 05 00                                      add.w r0, r8, r5
0007fe12  a0 f1 01 0b                                      sub.w fp, r0, #1
0007fe16  29 46                                            mov r1, r5
0007fe18  58 46                                            mov r0, fp
0007fe1a  b2 f7 8c e8                                      blx #0x31f34
0007fe1e  88 46                                            mov r8, r1
0007fe20  30 46                                            mov r0, r6
0007fe22  51 46                                            mov r1, sl
0007fe24  b3 f7 a8 ee                                      blx #0x33b78
0007fe28  02 99                                            ldr r1, [sp, #8]
0007fe2a  ab eb 08 02                                      sub.w r2, fp, r8
0007fe2e  73 68                                            ldr r3, [r6, #4]
0007fe30  02 eb 00 08                                      add.w r8, r2, r0
0007fe34  8d 42                                            cmp r5, r1
0007fe36  88 bf                                            it hi
0007fe38  29 46                                            movhi r1, r5
0007fe3a  07 2b                                            cmp r3, #7
0007fe3c  09 d1                                            bne #0x7fe52
0007fe3e  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
0007fe42  01 34                                            adds r4, #1
0007fe44  84 42                                            cmp r4, r0
0007fe46  3c bf                                            itt lo
0007fe48  08 f1 0f 02                                      addlo.w r2, r8, #0xf
0007fe4c  22 f0 0f 08                                      biclo r8, r2, #0xf
0007fe50  02 e0                                            b #0x7fe58
0007fe52  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
0007fe56  01 34                                            adds r4, #1
0007fe58  84 42                                            cmp r4, r0
0007fe5a  bd d3                                            blo #0x7fdd8
0007fe5c  10 e0                                            b #0x7fe80
0007fe5e  01 f0 01 01                                      and r1, r1, #1
0007fe62  b3 f7 84 ee                                      blx #0x33b6c
0007fe66  d9 f8 10 10                                      ldr.w r1, [sb, #0x10]
0007fe6a  10 28                                            cmp r0, #0x10
0007fe6c  98 bf                                            it ls
0007fe6e  10 20                                            movls r0, #0x10
0007fe70  48 43                                            muls r0, r1, r0
0007fe72  0f e0                                            b #0x7fe94
0007fe74  4f f0 ff 30                                      mov.w r0, #-1
0007fe78  0c e0                                            b #0x7fe94
0007fe7a  4f f0 00 08                                      mov.w r8, #0
0007fe7e  00 21                                            movs r1, #0
0007fe80  10 29                                            cmp r1, #0x10
0007fe82  98 bf                                            it ls
0007fe84  10 21                                            movls r1, #0x10
0007fe86  08 eb 01 00                                      add.w r0, r8, r1
0007fe8a  44 1e                                            subs r4, r0, #1
0007fe8c  20 46                                            mov r0, r4
0007fe8e  b2 f7 52 e8                                      blx #0x31f34
0007fe92  60 1a                                            subs r0, r4, r1
0007fe94  03 b0                                            add sp, #0xc
0007fe96  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
0007fe9a  f0 bd                                            pop {r4, r5, r6, r7, pc}
0007fe9c  46 c8                                            ldm r0!, {r1, r2, r6}
0007fe9e  05 00                                            movs r5, r0

; FUNCTION 0x0007fea0, declared_size=92, range_size=92, mode=thumb
; class-group: glsl_type
; alias: _ZNK9glsl_type21count_attribute_slotsEv
; demangled: glsl_type::count_attribute_slots() const
; decoder-mode: thumb
0007fea0  f0 b5                                            push {r4, r5, r6, r7, lr}
0007fea2  03 af                                            add r7, sp, #0xc
0007fea4  4d f8 04 8d                                      str r8, [sp, #-0x4]!
0007fea8  41 68                                            ldr r1, [r0, #4]
0007feaa  04 29                                            cmp r1, #4
0007feac  03 d2                                            bhs #0x7feb6
0007feae  00 89                                            ldrh r0, [r0, #8]
0007feb0  c0 f3 02 34                                      ubfx r4, r0, #0xc, #3
0007feb4  1e e0                                            b #0x7fef4
0007feb6  ca 1f                                            subs r2, r1, #7
0007feb8  02 2a                                            cmp r2, #2
0007feba  10 d2                                            bhs #0x7fede
0007febc  d0 f8 10 80                                      ldr.w r8, [r0, #0x10]
0007fec0  b8 f1 00 0f                                      cmp.w r8, #0
0007fec4  15 d0                                            beq #0x7fef2
0007fec6  46 69                                            ldr r6, [r0, #0x14]
0007fec8  00 25                                            movs r5, #0
0007feca  00 24                                            movs r4, #0
0007fecc  56 f8 18 0b                                      ldr r0, [r6], #0x18
0007fed0  b3 f7 58 ee                                      blx #0x33b84
0007fed4  01 35                                            adds r5, #1
0007fed6  04 44                                            add r4, r0
0007fed8  45 45                                            cmp r5, r8
0007feda  f7 d3                                            blo #0x7fecc
0007fedc  0a e0                                            b #0x7fef4
0007fede  09 29                                            cmp r1, #9
0007fee0  07 d1                                            bne #0x7fef2
0007fee2  d0 e9 04 40                                      ldrd r4, r0, [r0, #0x10]
0007fee6  b3 f7 4e ee                                      blx #0x33b84
0007feea  60 43                                            muls r0, r4, r0
0007feec  5d f8 04 8b                                      ldr r8, [sp], #4
0007fef0  f0 bd                                            pop {r4, r5, r6, r7, pc}
0007fef2  00 24                                            movs r4, #0
0007fef4  20 46                                            mov r0, r4
0007fef6  5d f8 04 8b                                      ldr r8, [sp], #4
0007fefa  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0007fefc, declared_size=56, range_size=56, mode=thumb
; class-group: glsl_type
; alias: _ZNK9glsl_type21coordinate_componentsEv
; demangled: glsl_type::coordinate_components() const
; decoder-mode: thumb
0007fefc  00 89                                            ldrh r0, [r0, #8]
0007fefe  05 a2                                            adr r2, #0x14
0007ff00  00 f0 07 01                                      and r1, r0, #7
0007ff04  81 f0 04 01                                      eor r1, r1, #4
0007ff08  c0 f3 00 10                                      ubfx r0, r0, #4, #1
0007ff0c  52 f8 21 10                                      ldr.w r1, [r2, r1, lsl #2]
0007ff10  08 44                                            add r0, r1
0007ff12  70 47                                            bx lr
0007ff14  02 00                                            movs r2, r0
0007ff16  00 00                                            movs r0, r0
0007ff18  01 00                                            movs r1, r0
0007ff1a  00 00                                            movs r0, r0
0007ff1c  02 00                                            movs r2, r0
0007ff1e  00 00                                            movs r0, r0
0007ff20  02 00                                            movs r2, r0
0007ff22  00 00                                            movs r0, r0
0007ff24  01 00                                            movs r1, r0
0007ff26  00 00                                            movs r0, r0
0007ff28  02 00                                            movs r2, r0
0007ff2a  00 00                                            movs r0, r0
0007ff2c  03 00                                            movs r3, r0
0007ff2e  00 00                                            movs r0, r0
0007ff30  03 00                                            movs r3, r0
0007ff32  00 00                                            movs r0, r0
