; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0008ffd4, declared_size=46, range_size=46, mode=thumb
; class-group: linker
; alias: _ZN6linker11get_storageEP18gl_uniform_storagejPKc
; demangled: linker::get_storage(gl_uniform_storage*, unsigned int, char const*)
; decoder-mode: thumb
0008ffd4  f0 b5                                            push {r4, r5, r6, r7, lr}
0008ffd6  03 af                                            add r7, sp, #0xc
0008ffd8  4d f8 04 8d                                      str r8, [sp, #-0x4]!
0008ffdc  0e 46                                            mov r6, r1
0008ffde  90 46                                            mov r8, r2
0008ffe0  04 46                                            mov r4, r0
0008ffe2  4e b1                                            cbz r6, #0x8fff8
0008ffe4  00 25                                            movs r5, #0
0008ffe6  21 68                                            ldr r1, [r4]
0008ffe8  40 46                                            mov r0, r8
0008ffea  a1 f7 aa ef                                      blx #0x31f40
0008ffee  20 b1                                            cbz r0, #0x8fffa
0008fff0  01 35                                            adds r5, #1
0008fff2  48 34                                            adds r4, #0x48
0008fff4  b5 42                                            cmp r5, r6
0008fff6  f6 d3                                            blo #0x8ffe6
0008fff8  00 24                                            movs r4, #0
0008fffa  20 46                                            mov r0, r4
0008fffc  5d f8 04 8b                                      ldr r8, [sp], #4
00090000  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00090004, declared_size=58, range_size=58, mode=thumb
; class-group: linker
; alias: _ZN6linker24copy_constant_to_storageEP17gl_constant_valuePK11ir_constant14glsl_base_typejj
; demangled: linker::copy_constant_to_storage(gl_constant_value*, ir_constant const*, glsl_base_type, unsigned int, unsigned int)
; decoder-mode: thumb
00090004  d0 b5                                            push {r4, r6, r7, lr}
00090006  02 af                                            add r7, sp, #8
00090008  c3 b1                                            cbz r3, #0x9003c
0009000a  d7 f8 08 c0                                      ldr.w ip, [r7, #8]
0009000e  01 f1 18 0e                                      add.w lr, r1, #0x18
00090012  00 21                                            movs r1, #0
00090014  04 2a                                            cmp r2, #4
00090016  0e d8                                            bhi #0x90036
00090018  df e8 02 f0                                      tbb [pc, r2]
0009001c  09 09                                            lsrs r1, r1, #4
0009001e  09 03                                            lsls r1, r1, #0xc
00090020  09 00                                            movs r1, r1
00090022  1e f8 01 40                                      ldrb.w r4, [lr, r1]
00090026  00 2c                                            cmp r4, #0
00090028  18 bf                                            it ne
0009002a  64 46                                            movne r4, ip
0009002c  01 e0                                            b #0x90032
0009002e  5e f8 21 40                                      ldr.w r4, [lr, r1, lsl #2]
00090032  40 f8 21 40                                      str.w r4, [r0, r1, lsl #2]
00090036  01 31                                            adds r1, #1
00090038  8b 42                                            cmp r3, r1
0009003a  eb d1                                            bne #0x90014
0009003c  d0 bd                                            pop {r4, r6, r7, pc}

; FUNCTION 0x00090040, declared_size=170, range_size=170, mode=thumb
; class-group: linker
; alias: _ZN6linker19set_sampler_bindingEP17gl_shader_programPKci
; demangled: linker::set_sampler_binding(gl_shader_program*, char const*, int)
; decoder-mode: thumb
00090040  f0 b5                                            push {r4, r5, r6, r7, lr}
00090042  03 af                                            add r7, sp, #0xc
00090044  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
00090048  81 b0                                            sub sp, #4
0009004a  81 46                                            mov sb, r0
0009004c  90 46                                            mov r8, r2
0009004e  d9 f8 90 b0                                      ldr.w fp, [sb, #0x90]
00090052  8a 46                                            mov sl, r1
00090054  bb f1 00 0f                                      cmp.w fp, #0
00090058  43 d0                                            beq #0x900e2
0009005a  d9 f8 94 40                                      ldr.w r4, [sb, #0x94]
0009005e  00 26                                            movs r6, #0
00090060  06 eb c6 05                                      add.w r5, r6, r6, lsl #3
00090064  50 46                                            mov r0, sl
00090066  54 f8 35 10                                      ldr.w r1, [r4, r5, lsl #3]
0009006a  a1 f7 6a ef                                      blx #0x31f40
0009006e  18 b1                                            cbz r0, #0x90078
00090070  01 36                                            adds r6, #1
00090072  5e 45                                            cmp r6, fp
00090074  f4 d3                                            blo #0x90060
00090076  34 e0                                            b #0x900e2
00090078  04 eb c5 0c                                      add.w ip, r4, r5, lsl #3
0009007c  bc f1 00 0f                                      cmp.w ip, #0
00090080  2f d0                                            beq #0x900e2
00090082  dc f8 08 10                                      ldr.w r1, [ip, #8]
00090086  0c f1 28 0e                                      add.w lr, ip, #0x28
0009008a  01 29                                            cmp r1, #1
0009008c  98 bf                                            it ls
0009008e  01 21                                            movls r1, #1
00090090  49 b1                                            cbz r1, #0x900a6
00090092  de f8 00 30                                      ldr.w r3, [lr]
00090096  00 26                                            movs r6, #0
00090098  08 eb 06 05                                      add.w r5, r8, r6
0009009c  43 f8 26 50                                      str.w r5, [r3, r6, lsl #2]
000900a0  01 36                                            adds r6, #1
000900a2  8e 42                                            cmp r6, r1
000900a4  f8 d3                                            blo #0x90098
000900a6  00 23                                            movs r3, #0
000900a8  09 eb 83 06                                      add.w r6, sb, r3, lsl #2
000900ac  d6 f8 d8 50                                      ldr.w r5, [r6, #0xd8]
000900b0  8d b1                                            cbz r5, #0x900d6
000900b2  0c eb 43 06                                      add.w r6, ip, r3, lsl #1
000900b6  b4 7b                                            ldrb r4, [r6, #0xe]
000900b8  6c b1                                            cbz r4, #0x900d6
000900ba  61 b1                                            cbz r1, #0x900d6
000900bc  0d 36                                            adds r6, #0xd
000900be  40 35                                            adds r5, #0x40
000900c0  00 24                                            movs r4, #0
000900c2  de f8 00 00                                      ldr.w r0, [lr]
000900c6  32 78                                            ldrb r2, [r6]
000900c8  2a 44                                            add r2, r5
000900ca  50 f8 24 00                                      ldr.w r0, [r0, r4, lsl #2]
000900ce  10 55                                            strb r0, [r2, r4]
000900d0  01 34                                            adds r4, #1
000900d2  8c 42                                            cmp r4, r1
000900d4  f5 d3                                            blo #0x900c2
000900d6  01 33                                            adds r3, #1
000900d8  04 2b                                            cmp r3, #4
000900da  e5 d1                                            bne #0x900a8
000900dc  01 21                                            movs r1, #1
000900de  8c f8 0c 10                                      strb.w r1, [ip, #0xc]
000900e2  01 b0                                            add sp, #4
000900e4  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
000900e8  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x000900ea, declared_size=98, range_size=98, mode=thumb
; class-group: linker
; alias: _ZN6linker17set_block_bindingEP17gl_shader_programPKci
; demangled: linker::set_block_binding(gl_shader_program*, char const*, int)
; decoder-mode: thumb
000900ea  f0 b5                                            push {r4, r5, r6, r7, lr}
000900ec  03 af                                            add r7, sp, #0xc
000900ee  2d e9 00 07                                      push.w {r8, sb, sl}
000900f2  81 46                                            mov sb, r0
000900f4  90 46                                            mov r8, r2
000900f6  d9 f8 a8 50                                      ldr.w r5, [sb, #0xa8]
000900fa  8a 46                                            mov sl, r1
000900fc  1d b3                                            cbz r5, #0x90146
000900fe  d9 f8 a4 60                                      ldr.w r6, [sb, #0xa4]
00090102  00 24                                            movs r4, #0
00090104  30 68                                            ldr r0, [r6]
00090106  51 46                                            mov r1, sl
00090108  a1 f7 1a ef                                      blx #0x31f40
0009010c  20 b1                                            cbz r0, #0x90118
0009010e  01 34                                            adds r4, #1
00090110  18 36                                            adds r6, #0x18
00090112  ac 42                                            cmp r4, r5
00090114  f6 d3                                            blo #0x90104
00090116  16 e0                                            b #0x90146
00090118  00 20                                            movs r0, #0
0009011a  09 eb 80 02                                      add.w r2, sb, r0, lsl #2
0009011e  01 30                                            adds r0, #1
00090120  d2 f8 ac 10                                      ldr.w r1, [r2, #0xac]
00090124  51 f8 24 10                                      ldr.w r1, [r1, r4, lsl #2]
00090128  4b 1c                                            adds r3, r1, #1
0009012a  1f bf                                            itttt ne
0009012c  d2 f8 d8 20                                      ldrne.w r2, [r2, #0xd8]
00090130  d2 f8 e8 20                                      ldrne.w r2, [r2, #0xe8]
00090134  01 eb 41 01                                      addne.w r1, r1, r1, lsl #1
00090138  02 eb c1 01                                      addne.w r1, r2, r1, lsl #3
0009013c  18 bf                                            it ne
0009013e  c1 f8 0c 80                                      strne.w r8, [r1, #0xc]
00090142  04 28                                            cmp r0, #4
00090144  e9 d1                                            bne #0x9011a
00090146  bd e8 00 07                                      pop.w {r8, sb, sl}
0009014a  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0009014c, declared_size=492, range_size=492, mode=thumb
; class-group: linker
; alias: _ZN6linker23set_uniform_initializerEPvP17gl_shader_programPKcPK9glsl_typeP11ir_constantj
; demangled: linker::set_uniform_initializer(void*, gl_shader_program*, char const*, glsl_type const*, ir_constant*, unsigned int)
; decoder-mode: thumb
0009014c  f0 b5                                            push {r4, r5, r6, r7, lr}
0009014e  03 af                                            add r7, sp, #0xc
00090150  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
00090154  83 b0                                            sub sp, #0xc
00090156  98 46                                            mov r8, r3
00090158  02 91                                            str r1, [sp, #8]
0009015a  04 46                                            mov r4, r0
0009015c  d8 f8 04 00                                      ldr.w r0, [r8, #4]
00090160  d7 f8 08 90                                      ldr.w sb, [r7, #8]
00090164  93 46                                            mov fp, r2
00090166  09 28                                            cmp r0, #9
00090168  35 d0                                            beq #0x901d6
0009016a  07 28                                            cmp r0, #7
0009016c  59 d1                                            bne #0x90222
0009016e  d9 f8 5c 50                                      ldr.w r5, [sb, #0x5c]
00090172  09 f1 60 01                                      add.w r1, sb, #0x60
00090176  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
0009017a  8d 42                                            cmp r5, r1
0009017c  08 bf                                            it eq
0009017e  00 25                                            moveq r5, #0
00090180  00 28                                            cmp r0, #0
00090182  00 f0 cc 80                                      beq.w #0x9031e
00090186  00 2d                                            cmp r5, #0
00090188  18 bf                                            it ne
0009018a  04 3d                                            subne r5, #4
0009018c  4f f0 00 0a                                      mov.w sl, #0
00090190  4f f0 00 09                                      mov.w sb, #0
00090194  d8 f8 14 00                                      ldr.w r0, [r8, #0x14]
00090198  65 a1                                            adr r1, #0x194
0009019a  5a 46                                            mov r2, fp
0009019c  50 f8 0a 60                                      ldr.w r6, [r0, sl]
000901a0  50 44                                            add r0, sl
000901a2  43 68                                            ldr r3, [r0, #4]
000901a4  20 46                                            mov r0, r4
000901a6  a2 f7 04 eb                                      blx #0x327b0
000901aa  02 99                                            ldr r1, [sp, #8]
000901ac  02 46                                            mov r2, r0
000901ae  f8 68                                            ldr r0, [r7, #0xc]
000901b0  33 46                                            mov r3, r6
000901b2  00 95                                            str r5, [sp]
000901b4  01 90                                            str r0, [sp, #4]
000901b6  20 46                                            mov r0, r4
000901b8  a4 f7 9a ec                                      blx #0x34af0
000901bc  6d 68                                            ldr r5, [r5, #4]
000901be  0a f1 18 0a                                      add.w sl, sl, #0x18
000901c2  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
000901c6  09 f1 01 09                                      add.w sb, sb, #1
000901ca  00 2d                                            cmp r5, #0
000901cc  18 bf                                            it ne
000901ce  04 3d                                            subne r5, #4
000901d0  81 45                                            cmp sb, r0
000901d2  df d3                                            blo #0x90194
000901d4  a3 e0                                            b #0x9031e
000901d6  d8 f8 14 a0                                      ldr.w sl, [r8, #0x14]
000901da  da f8 04 00                                      ldr.w r0, [sl, #4]
000901de  07 28                                            cmp r0, #7
000901e0  1f d1                                            bne #0x90222
000901e2  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
000901e6  00 28                                            cmp r0, #0
000901e8  00 f0 99 80                                      beq.w #0x9031e
000901ec  4e a5                                            adr r5, #0x138
000901ee  00 26                                            movs r6, #0
000901f0  20 46                                            mov r0, r4
000901f2  29 46                                            mov r1, r5
000901f4  5a 46                                            mov r2, fp
000901f6  33 46                                            mov r3, r6
000901f8  a2 f7 da ea                                      blx #0x327b0
000901fc  02 46                                            mov r2, r0
000901fe  d9 f8 58 00                                      ldr.w r0, [sb, #0x58]
00090202  02 99                                            ldr r1, [sp, #8]
00090204  53 46                                            mov r3, sl
00090206  50 f8 26 00                                      ldr.w r0, [r0, r6, lsl #2]
0009020a  00 90                                            str r0, [sp]
0009020c  f8 68                                            ldr r0, [r7, #0xc]
0009020e  01 90                                            str r0, [sp, #4]
00090210  20 46                                            mov r0, r4
00090212  a4 f7 6e ec                                      blx #0x34af0
00090216  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
0009021a  01 36                                            adds r6, #1
0009021c  86 42                                            cmp r6, r0
0009021e  e7 d3                                            blo #0x901f0
00090220  7d e0                                            b #0x9031e
00090222  02 98                                            ldr r0, [sp, #8]
00090224  d0 f8 90 40                                      ldr.w r4, [r0, #0x90]
00090228  00 2c                                            cmp r4, #0
0009022a  78 d0                                            beq #0x9031e
0009022c  02 98                                            ldr r0, [sp, #8]
0009022e  00 25                                            movs r5, #0
00090230  d0 f8 94 00                                      ldr.w r0, [r0, #0x94]
00090234  00 f1 28 06                                      add.w r6, r0, #0x28
00090238  56 f8 28 1c                                      ldr r1, [r6, #-0x28]
0009023c  58 46                                            mov r0, fp
0009023e  a1 f7 80 ee                                      blx #0x31f40
00090242  00 28                                            cmp r0, #0
00090244  04 d0                                            beq #0x90250
00090246  01 35                                            adds r5, #1
00090248  48 36                                            adds r6, #0x48
0009024a  a5 42                                            cmp r5, r4
0009024c  f4 d3                                            blo #0x90238
0009024e  66 e0                                            b #0x9031e
00090250  28 2e                                            cmp r6, #0x28
00090252  64 d0                                            beq #0x9031e
00090254  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
00090258  42 68                                            ldr r2, [r0, #4]
0009025a  09 2a                                            cmp r2, #9
0009025c  35 d1                                            bne #0x902ca
0009025e  d9 f8 58 00                                      ldr.w r0, [sb, #0x58]
00090262  d7 f8 0c b0                                      ldr.w fp, [r7, #0xc]
00090266  01 68                                            ldr r1, [r0]
00090268  09 69                                            ldr r1, [r1, #0x10]
0009026a  0b 89                                            ldrh r3, [r1, #8]
0009026c  c3 f3 02 32                                      ubfx r2, r3, #0xc, #3
00090270  c3 f3 42 23                                      ubfx r3, r3, #9, #3
00090274  56 f8 20 5c                                      ldr r5, [r6, #-0x20]
00090278  00 2d                                            cmp r5, #0
0009027a  4d d0                                            beq #0x90318
0009027c  13 fb 02 f9                                      smulbb sb, r3, r2
00090280  d1 f8 04 80                                      ldr.w r8, [r1, #4]
00090284  01 68                                            ldr r1, [r0]
00090286  30 68                                            ldr r0, [r6]
00090288  42 46                                            mov r2, r8
0009028a  cd f8 00 b0                                      str.w fp, [sp]
0009028e  4b 46                                            mov r3, sb
00090290  a4 f7 34 ec                                      blx #0x34afc
00090294  56 f8 20 0c                                      ldr r0, [r6, #-0x20]
00090298  02 28                                            cmp r0, #2
0009029a  3d d3                                            blo #0x90318
0009029c  4f ea 89 0a                                      lsl.w sl, sb, #2
000902a0  01 24                                            movs r4, #1
000902a2  55 46                                            mov r5, sl
000902a4  b8 68                                            ldr r0, [r7, #8]
000902a6  4b 46                                            mov r3, sb
000902a8  32 68                                            ldr r2, [r6]
000902aa  80 6d                                            ldr r0, [r0, #0x58]
000902ac  50 f8 24 10                                      ldr.w r1, [r0, r4, lsl #2]
000902b0  50 19                                            adds r0, r2, r5
000902b2  42 46                                            mov r2, r8
000902b4  cd f8 00 b0                                      str.w fp, [sp]
000902b8  a4 f7 20 ec                                      blx #0x34afc
000902bc  56 f8 20 0c                                      ldr r0, [r6, #-0x20]
000902c0  01 34                                            adds r4, #1
000902c2  55 44                                            add r5, sl
000902c4  84 42                                            cmp r4, r0
000902c6  ed d3                                            blo #0x902a4
000902c8  26 e0                                            b #0x90318
000902ca  01 89                                            ldrh r1, [r0, #8]
000902cc  30 68                                            ldr r0, [r6]
000902ce  c1 f3 02 33                                      ubfx r3, r1, #0xc, #3
000902d2  c1 f3 42 21                                      ubfx r1, r1, #9, #3
000902d6  11 fb 03 f3                                      smulbb r3, r1, r3
000902da  f9 68                                            ldr r1, [r7, #0xc]
000902dc  00 91                                            str r1, [sp]
000902de  49 46                                            mov r1, sb
000902e0  a4 f7 0c ec                                      blx #0x34afc
000902e4  56 f8 24 0c                                      ldr r0, [r6, #-0x24]
000902e8  40 68                                            ldr r0, [r0, #4]
000902ea  04 28                                            cmp r0, #4
000902ec  14 d1                                            bne #0x90318
000902ee  02 99                                            ldr r1, [sp, #8]
000902f0  a6 f1 1a 00                                      sub.w r0, r6, #0x1a
000902f4  00 22                                            movs r2, #0
000902f6  d8 31                                            adds r1, #0xd8
000902f8  51 f8 22 30                                      ldr.w r3, [r1, r2, lsl #2]
000902fc  43 b1                                            cbz r3, #0x90310
000902fe  05 78                                            ldrb r5, [r0]
00090300  35 b1                                            cbz r5, #0x90310
00090302  35 68                                            ldr r5, [r6]
00090304  10 f8 01 4c                                      ldrb r4, [r0, #-0x1]
00090308  23 44                                            add r3, r4
0009030a  2d 68                                            ldr r5, [r5]
0009030c  83 f8 40 50                                      strb.w r5, [r3, #0x40]
00090310  01 32                                            adds r2, #1
00090312  02 30                                            adds r0, #2
00090314  04 2a                                            cmp r2, #4
00090316  ef d1                                            bne #0x902f8
00090318  01 20                                            movs r0, #1
0009031a  06 f8 1c 0c                                      strb r0, [r6, #-0x1c]
0009031e  03 b0                                            add sp, #0xc
00090320  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
00090324  f0 bd                                            pop {r4, r5, r6, r7, pc}
00090326  00 bf                                            nop
00090328  25 73                                            strb r5, [r4, #0xc]
0009032a  5b 25                                            movs r5, #0x5b
0009032c  64 5d                                            ldrb r4, [r4, r5]
0009032e  00 00                                            movs r0, r0
00090330  25 73                                            strb r5, [r4, #0xc]
00090332  2e 25                                            movs r5, #0x2e
00090334  73 00                                            lsls r3, r6, #1
00090336  00 00                                            movs r0, r0

; FUNCTION 0x00091dd8, declared_size=172, range_size=172, mode=thumb
; class-group: linker
; alias: _ZN6linker28populate_consumer_input_setsEPvP9exec_listP10hash_tableS4_PP11ir_variable
; demangled: linker::populate_consumer_input_sets(void*, exec_list*, hash_table*, hash_table*, ir_variable**)
; decoder-mode: thumb
00091dd8  f0 b5                                            push {r4, r5, r6, r7, lr}
00091dda  03 af                                            add r7, sp, #0xc
00091ddc  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
00091de0  81 b0                                            sub sp, #4
00091de2  d7 f8 08 a0                                      ldr.w sl, [r7, #8]
00091de6  0d 46                                            mov r5, r1
00091de8  06 46                                            mov r6, r0
00091dea  e0 21                                            movs r1, #0xe0
00091dec  9b 46                                            mov fp, r3
00091dee  90 46                                            mov r8, r2
00091df0  50 46                                            mov r0, sl
00091df2  a0 f7 36 ec                                      blx #0x32660
00091df6  2d 68                                            ldr r5, [r5]
00091df8  00 2d                                            cmp r5, #0
00091dfa  18 bf                                            it ne
00091dfc  04 3d                                            subne r5, #4
00091dfe  2c 46                                            mov r4, r5
00091e00  54 f8 04 0f                                      ldr r0, [r4, #4]!
00091e04  a8 b3                                            cbz r0, #0x91e72
00091e06  df f8 78 90                                      ldr.w sb, [pc, #0x78]
00091e0a  f9 44                                            add sb, pc
00091e0c  1e e0                                            b #0x91e4c
00091e0e  29 69                                            ldr r1, [r5, #0x10]
00091e10  49 68                                            ldr r1, [r1, #4]
00091e12  08 29                                            cmp r1, #8
00091e14  32 d0                                            beq #0x91e7c
00091e16  00 03                                            lsls r0, r0, #0xc
00091e18  0a d4                                            bmi #0x91e30
00091e1a  28 6c                                            ldr r0, [r5, #0x40]
00091e1c  60 b1                                            cbz r0, #0x91e38
00091e1e  c2 68                                            ldr r2, [r0, #0xc]
00091e20  30 46                                            mov r0, r6
00091e22  6b 69                                            ldr r3, [r5, #0x14]
00091e24  49 46                                            mov r1, sb
00091e26  a0 f7 c4 ec                                      blx #0x327b0
00091e2a  02 46                                            mov r2, r0
00091e2c  58 46                                            mov r0, fp
00091e2e  09 e0                                            b #0x91e44
00091e30  68 6a                                            ldr r0, [r5, #0x24]
00091e32  4a f8 20 50                                      str.w r5, [sl, r0, lsl #2]
00091e36  13 e0                                            b #0x91e60
00091e38  69 69                                            ldr r1, [r5, #0x14]
00091e3a  30 46                                            mov r0, r6
00091e3c  a0 f7 0a ec                                      blx #0x32654
00091e40  02 46                                            mov r2, r0
00091e42  40 46                                            mov r0, r8
00091e44  29 46                                            mov r1, r5
00091e46  a0 f7 8a ec                                      blx #0x3275c
00091e4a  09 e0                                            b #0x91e60
00091e4c  45 b1                                            cbz r5, #0x91e60
00091e4e  e8 68                                            ldr r0, [r5, #0xc]
00091e50  07 28                                            cmp r0, #7
00091e52  02 bf                                            ittt eq
00091e54  a8 69                                            ldreq r0, [r5, #0x18]
00091e56  00 f4 f0 51                                      andeq r1, r0, #0x1e00
00091e5a  91 f4 80 6f                                      teqeq.w r1, #0x400
00091e5e  d6 d0                                            beq #0x91e0e
00091e60  25 68                                            ldr r5, [r4]
00091e62  00 2d                                            cmp r5, #0
00091e64  18 bf                                            it ne
00091e66  04 3d                                            subne r5, #4
00091e68  2c 46                                            mov r4, r5
00091e6a  54 f8 04 0f                                      ldr r0, [r4, #4]!
00091e6e  00 28                                            cmp r0, #0
00091e70  ec d1                                            bne #0x91e4c
00091e72  01 20                                            movs r0, #1
00091e74  01 b0                                            add sp, #4
00091e76  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
00091e7a  f0 bd                                            pop {r4, r5, r6, r7, pc}
00091e7c  00 20                                            movs r0, #0
00091e7e  f9 e7                                            b #0x91e74
00091e80  e4 fc 02 00                                      stc2l p0, c0, [r4], #8

; FUNCTION 0x00091e84, declared_size=84, range_size=84, mode=thumb
; class-group: linker
; alias: _ZN6linker18get_matching_inputEPvPK11ir_variableP10hash_tableS5_PPS1_
; demangled: linker::get_matching_input(void*, ir_variable const*, hash_table*, hash_table*, ir_variable**)
; decoder-mode: thumb
00091e84  b0 b5                                            push {r4, r5, r7, lr}
00091e86  02 af                                            add r7, sp, #8
00091e88  1d 46                                            mov r5, r3
00091e8a  8b 69                                            ldr r3, [r1, #0x18]
00091e8c  1b 03                                            lsls r3, r3, #0xc
00091e8e  0c d4                                            bmi #0x91eaa
00091e90  0c 6c                                            ldr r4, [r1, #0x40]
00091e92  7c b1                                            cbz r4, #0x91eb4
00091e94  df f8 3c c0                                      ldr.w ip, [pc, #0x3c]
00091e98  4b 69                                            ldr r3, [r1, #0x14]
00091e9a  fc 44                                            add ip, pc
00091e9c  e2 68                                            ldr r2, [r4, #0xc]
00091e9e  61 46                                            mov r1, ip
00091ea0  a0 f7 86 ec                                      blx #0x327b0
00091ea4  01 46                                            mov r1, r0
00091ea6  28 46                                            mov r0, r5
00091ea8  06 e0                                            b #0x91eb8
00091eaa  b8 68                                            ldr r0, [r7, #8]
00091eac  49 6a                                            ldr r1, [r1, #0x24]
00091eae  50 f8 21 00                                      ldr.w r0, [r0, r1, lsl #2]
00091eb2  03 e0                                            b #0x91ebc
00091eb4  49 69                                            ldr r1, [r1, #0x14]
00091eb6  10 46                                            mov r0, r2
00091eb8  a0 f7 1a ec                                      blx #0x326f0
00091ebc  38 b1                                            cbz r0, #0x91ece
00091ebe  81 69                                            ldr r1, [r0, #0x18]
00091ec0  01 f4 f0 51                                      and r1, r1, #0x1e00
00091ec4  91 f4 80 6f                                      teq.w r1, #0x400
00091ec8  18 bf                                            it ne
00091eca  00 20                                            movne r0, #0
00091ecc  b0 bd                                            pop {r4, r5, r7, pc}
00091ece  00 20                                            movs r0, #0
00091ed0  b0 bd                                            pop {r4, r5, r7, pc}
00091ed2  00 bf                                            nop
00091ed4  54 fc 02 00                                      mrrc2 p0, #0, r0, r4, c2
