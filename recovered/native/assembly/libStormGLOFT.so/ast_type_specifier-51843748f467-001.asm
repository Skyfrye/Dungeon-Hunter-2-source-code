; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000547dc, declared_size=100, range_size=100, mode=thumb
; class-group: ast_type_specifier
; alias: _ZNK18ast_type_specifier9glsl_typeEPPKcP22_mesa_glsl_parse_state
; demangled: ast_type_specifier::glsl_type(char const**, _mesa_glsl_parse_state*) const
; decoder-mode: thumb
000547dc  f0 b5                                            push {r4, r5, r6, r7, lr}
000547de  03 af                                            add r7, sp, #0xc
000547e0  4d f8 04 bd                                      str fp, [sp, #-0x4]!
000547e4  86 b0                                            sub sp, #0x18
000547e6  06 46                                            mov r6, r0
000547e8  13 48                                            ldr r0, [pc, #0x4c]
000547ea  14 46                                            mov r4, r2
000547ec  0d 46                                            mov r5, r1
000547ee  78 44                                            add r0, pc
000547f0  00 68                                            ldr r0, [r0]
000547f2  00 68                                            ldr r0, [r0]
000547f4  05 90                                            str r0, [sp, #0x14]
000547f6  31 6a                                            ldr r1, [r6, #0x20]
000547f8  60 69                                            ldr r0, [r4, #0x14]
000547fa  de f7 30 e9                                      blx #0x32a5c
000547fe  84 46                                            mov ip, r0
00054800  30 6a                                            ldr r0, [r6, #0x20]
00054802  28 60                                            str r0, [r5]
00054804  35 1d                                            adds r5, r6, #4
00054806  2d cd                                            ldm r5, {r0, r2, r3, r5}
00054808  71 69                                            ldr r1, [r6, #0x14]
0005480a  8d e8 2c 00                                      stm.w sp, {r2, r3, r5}
0005480e  23 46                                            mov r3, r4
00054810  cd e9 03 10                                      strd r1, r0, [sp, #0xc]
00054814  68 46                                            mov r0, sp
00054816  b2 6a                                            ldr r2, [r6, #0x28]
00054818  61 46                                            mov r1, ip
0005481a  00 f0 11 f8                                      bl #0x54840
0005481e  07 49                                            ldr r1, [pc, #0x1c]
00054820  05 9a                                            ldr r2, [sp, #0x14]
00054822  79 44                                            add r1, pc
00054824  09 68                                            ldr r1, [r1]
00054826  09 68                                            ldr r1, [r1]
00054828  89 1a                                            subs r1, r1, r2
0005482a  02 bf                                            ittt eq
0005482c  06 b0                                            addeq sp, #0x18
0005482e  5d f8 04 bb                                      ldreq fp, [sp], #4
00054832  f0 bd                                            popeq {r4, r5, r6, r7, pc}
00054834  dd f7 14 ec                                      blx #0x32060
00054838  c6 7c                                            ldrb r6, [r0, #0x13]
0005483a  08 00                                            movs r0, r1
0005483c  92 7c                                            ldrb r2, [r2, #0x12]
0005483e  08 00                                            movs r0, r1

; FUNCTION 0x00058288, declared_size=580, range_size=580, mode=thumb
; class-group: ast_type_specifier
; alias: _ZN18ast_type_specifier3hirEP9exec_listP22_mesa_glsl_parse_state
; demangled: ast_type_specifier::hir(exec_list*, _mesa_glsl_parse_state*)
; decoder-mode: thumb
00058288  f0 b5                                            push {r4, r5, r6, r7, lr}
0005828a  03 af                                            add r7, sp, #0xc
0005828c  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
00058290  87 b0                                            sub sp, #0x1c
00058292  05 46                                            mov r5, r0
00058294  63 48                                            ldr r0, [pc, #0x18c]
00058296  8b 46                                            mov fp, r1
00058298  91 46                                            mov sb, r2
0005829a  78 44                                            add r0, pc
0005829c  00 68                                            ldr r0, [r0]
0005829e  00 68                                            ldr r0, [r0]
000582a0  06 90                                            str r0, [sp, #0x18]
000582a2  95 f8 2c 00                                      ldrb.w r0, [r5, #0x2c]
000582a6  00 f0 03 00                                      and r0, r0, #3
000582aa  03 28                                            cmp r0, #3
000582ac  04 bf                                            itt eq
000582ae  69 6a                                            ldreq r1, [r5, #0x24]
000582b0  00 29                                            cmpeq r1, #0
000582b2  46 d0                                            beq #0x58342
000582b4  2e 1d                                            adds r6, r5, #4
000582b6  03 28                                            cmp r0, #3
000582b8  0d f1 04 0c                                      add.w ip, sp, #4
000582bc  4e ce                                            ldm r6, {r1, r2, r3, r6}
000582be  6c 69                                            ldr r4, [r5, #0x14]
000582c0  8c e8 4c 00                                      stm.w ip, {r2, r3, r6}
000582c4  cd e9 04 41                                      strd r4, r1, [sp, #0x10]
000582c8  0b d1                                            bne #0x582e2
000582ca  68 6a                                            ldr r0, [r5, #0x24]
000582cc  c8 b3                                            cbz r0, #0x58342
000582ce  90 f8 30 10                                      ldrb.w r1, [r0, #0x30]
000582d2  b1 b3                                            cbz r1, #0x58342
000582d4  01 68                                            ldr r1, [r0]
000582d6  4a 46                                            mov r2, sb
000582d8  4b 68                                            ldr r3, [r1, #4]
000582da  59 46                                            mov r1, fp
000582dc  98 47                                            blx r3
000582de  05 46                                            mov r5, r0
000582e0  30 e0                                            b #0x58344
000582e2  51 48                                            ldr r0, [pc, #0x144]
000582e4  01 ab                                            add r3, sp, #4
000582e6  82 21                                            movs r1, #0x82
000582e8  64 22                                            movs r2, #0x64
000582ea  78 44                                            add r0, pc
000582ec  00 90                                            str r0, [sp]
000582ee  48 46                                            mov r0, sb
000582f0  da f7 a8 eb                                      blx #0x32a44
000582f4  01 28                                            cmp r0, #1
000582f6  24 d1                                            bne #0x58342
000582f8  68 6a                                            ldr r0, [r5, #0x24]
000582fa  10 b1                                            cbz r0, #0x58302
000582fc  01 a8                                            add r0, sp, #4
000582fe  4b a2                                            adr r2, #0x12c
00058300  1c e0                                            b #0x5833c
00058302  a8 6a                                            ldr r0, [r5, #0x28]
00058304  10 b1                                            cbz r0, #0x5830c
00058306  01 a8                                            add r0, sp, #4
00058308  54 a2                                            adr r2, #0x150
0005830a  17 e0                                            b #0x5833c
0005830c  29 6a                                            ldr r1, [r5, #0x20]
0005830e  d9 f8 14 00                                      ldr.w r0, [sb, #0x14]
00058312  da f7 a4 eb                                      blx #0x32a5c
00058316  80 46                                            mov r8, r0
00058318  b8 f1 00 0f                                      cmp.w r8, #0
0005831c  0b d0                                            beq #0x58336
0005831e  d8 f8 04 00                                      ldr.w r0, [r8, #4]
00058322  41 1e                                            subs r1, r0, #1
00058324  02 29                                            cmp r1, #2
00058326  1b d2                                            bhs #0x58360
00058328  b8 f8 08 00                                      ldrh.w r0, [r8, #8]
0005832c  00 f4 fc 40                                      and r0, r0, #0x7e00
00058330  b0 f5 90 5f                                      cmp.w r0, #0x1200
00058334  16 d0                                            beq #0x58364
00058336  63 4a                                            ldr r2, [pc, #0x18c]
00058338  01 a8                                            add r0, sp, #4
0005833a  7a 44                                            add r2, pc
0005833c  49 46                                            mov r1, sb
0005833e  da f7 bc ea                                      blx #0x328b8
00058342  00 25                                            movs r5, #0
00058344  60 48                                            ldr r0, [pc, #0x180]
00058346  06 99                                            ldr r1, [sp, #0x18]
00058348  78 44                                            add r0, pc
0005834a  00 68                                            ldr r0, [r0]
0005834c  00 68                                            ldr r0, [r0]
0005834e  40 1a                                            subs r0, r0, r1
00058350  01 bf                                            itttt eq
00058352  28 46                                            moveq r0, r5
00058354  07 b0                                            addeq sp, #0x1c
00058356  bd e8 00 0f                                      popeq.w {r8, sb, sl, fp}
0005835a  f0 bd                                            popeq {r4, r5, r6, r7, pc}
0005835c  d9 f7 80 ee                                      blx #0x32060
00058360  04 28                                            cmp r0, #4
00058362  e8 d1                                            bne #0x58336
00058364  95 f8 2c 00                                      ldrb.w r0, [r5, #0x2c]
00058368  49 49                                            ldr r1, [pc, #0x124]
0005836a  00 f0 03 00                                      and r0, r0, #3
0005836e  2b 6a                                            ldr r3, [r5, #0x20]
00058370  79 44                                            add r1, pc
00058372  80 f0 02 00                                      eor r0, r0, #2
00058376  51 f8 20 20                                      ldr.w r2, [r1, r0, lsl #2]
0005837a  46 a1                                            adr r1, #0x118
0005837c  48 46                                            mov r0, sb
0005837e  da f7 18 ea                                      blx #0x327b0
00058382  04 46                                            mov r4, r0
00058384  48 46                                            mov r0, sb
00058386  14 21                                            movs r1, #0x14
00058388  da f7 ca e9                                      blx #0x32720
0005838c  82 46                                            mov sl, r0
0005838e  45 48                                            ldr r0, [pc, #0x114]
00058390  78 44                                            add r0, pc
00058392  01 68                                            ldr r1, [r0]
00058394  50 46                                            mov r0, sl
00058396  da f7 b4 ea                                      blx #0x32900
0005839a  43 48                                            ldr r0, [pc, #0x10c]
0005839c  10 21                                            movs r1, #0x10
0005839e  ba f1 00 0f                                      cmp.w sl, #0
000583a2  78 44                                            add r0, pc
000583a4  00 68                                            ldr r0, [r0]
000583a6  00 f1 08 00                                      add.w r0, r0, #8
000583aa  ca f8 00 00                                      str.w r0, [sl]
000583ae  ca e9 03 14                                      strd r1, r4, [sl, #0xc]
000583b2  db f8 00 00                                      ldr.w r0, [fp]
000583b6  18 bf                                            it ne
000583b8  0a f1 04 0a                                      addne.w sl, sl, #4
000583bc  ca f8 04 b0                                      str.w fp, [sl, #4]
000583c0  ca f8 00 00                                      str.w r0, [sl]
000583c4  c0 f8 04 a0                                      str.w sl, [r0, #4]
000583c8  cb f8 00 a0                                      str.w sl, [fp]
000583cc  d8 f8 04 00                                      ldr.w r0, [r8, #4]
000583d0  02 28                                            cmp r0, #2
000583d2  b6 d1                                            bne #0x58342
000583d4  99 f8 7c 00                                      ldrb.w r0, [sb, #0x7c]
000583d8  00 28                                            cmp r0, #0
000583da  b2 d0                                            beq #0x58342
000583dc  d9 f8 88 00                                      ldr.w r0, [sb, #0x88]
000583e0  02 28                                            cmp r0, #2
000583e2  ae d1                                            bne #0x58342
000583e4  48 46                                            mov r0, sb
000583e6  44 21                                            movs r1, #0x44
000583e8  da f7 9a e9                                      blx #0x32720
000583ec  06 46                                            mov r6, r0
000583ee  2f 48                                            ldr r0, [pc, #0xbc]
000583f0  78 44                                            add r0, pc
000583f2  01 68                                            ldr r1, [r0]
000583f4  30 46                                            mov r0, r6
000583f6  da f7 84 ea                                      blx #0x32900
000583fa  95 f8 2c 00                                      ldrb.w r0, [r5, #0x2c]
000583fe  2c a2                                            adr r2, #0xb0
00058400  41 46                                            mov r1, r8
00058402  00 23                                            movs r3, #0
00058404  00 f0 03 00                                      and r0, r0, #3
00058408  00 90                                            str r0, [sp]
0005840a  30 46                                            mov r0, r6
0005840c  00 25                                            movs r5, #0
0005840e  da f7 b4 ea                                      blx #0x32978
00058412  d9 f8 14 00                                      ldr.w r0, [sb, #0x14]
00058416  31 46                                            mov r1, r6
00058418  da f7 a6 ec                                      blx #0x32d68
0005841c  01 20                                            movs r0, #1
0005841e  89 f8 85 00                                      strb.w r0, [sb, #0x85]
00058422  8f e7                                            b #0x58344
00058424  1a 42                                            tst r2, r3
00058426  08 00                                            movs r0, r1
00058428  2e 42                                            tst r6, r5
0005842a  06 00                                            movs r6, r0
0005842c  70 72                                            strb r0, [r6, #9]
0005842e  65 63                                            str r5, [r4, #0x34]
00058430  69 73                                            strb r1, [r5, #0xd]
00058432  69 6f                                            ldr r1, [r5, #0x74]
00058434  6e 20                                            movs r0, #0x6e
00058436  71 75                                            strb r1, [r6, #0x15]
00058438  61 6c                                            ldr r1, [r4, #0x44]
0005843a  69 66                                            str r1, [r5, #0x64]
0005843c  69 65                                            str r1, [r5, #0x54]
0005843e  72 73                                            strb r2, [r6, #0xd]
00058440  20 64                                            str r0, [r4, #0x40]
00058442  6f 20                                            movs r0, #0x6f
00058444  6e 6f                                            ldr r6, [r5, #0x74]
00058446  74 20                                            movs r0, #0x74
00058448  61 70                                            strb r1, [r4, #1]
0005844a  70 6c                                            ldr r0, [r6, #0x44]
0005844c  79 20                                            movs r0, #0x79
0005844e  74 6f                                            ldr r4, [r6, #0x74]
00058450  20 73                                            strb r0, [r4, #0xc]
00058452  74 72                                            strb r4, [r6, #9]
00058454  75 63                                            str r5, [r6, #0x34]
00058456  74 75                                            strb r4, [r6, #0x15]
00058458  72 65                                            str r2, [r6, #0x54]
0005845a  73 00                                            lsls r3, r6, #1
0005845c  64 65                                            str r4, [r4, #0x54]
0005845e  66 61                                            str r6, [r4, #0x14]
00058460  75 6c                                            ldr r5, [r6, #0x44]
00058462  74 20                                            movs r0, #0x74
00058464  70 72                                            strb r0, [r6, #9]
00058466  65 63                                            str r5, [r4, #0x34]
00058468  69 73                                            strb r1, [r5, #0xd]
0005846a  69 6f                                            ldr r1, [r5, #0x74]
0005846c  6e 20                                            movs r0, #0x6e
0005846e  73 74                                            strb r3, [r6, #0x11]
00058470  61 74                                            strb r1, [r4, #0x11]
00058472  65 6d                                            ldr r5, [r4, #0x54]
00058474  65 6e                                            ldr r5, [r4, #0x64]
00058476  74 73                                            strb r4, [r6, #0xd]
00058478  20 64                                            str r0, [r4, #0x40]
0005847a  6f 20                                            movs r0, #0x6f
0005847c  6e 6f                                            ldr r6, [r5, #0x74]
0005847e  74 20                                            movs r0, #0x74
00058480  61 70                                            strb r1, [r4, #1]
00058482  70 6c                                            ldr r0, [r6, #0x44]
00058484  79 20                                            movs r0, #0x79
00058486  74 6f                                            ldr r4, [r6, #0x74]
00058488  20 61                                            str r0, [r4, #0x10]
0005848a  72 72                                            strb r2, [r6, #9]
0005848c  61 79                                            ldrb r1, [r4, #5]
0005848e  73 00                                            lsls r3, r6, #1
00058490  44 d5                                            bpl #0x5851c
00058492  07 00                                            movs r7, r0
00058494  70 72                                            strb r0, [r6, #9]
00058496  65 63                                            str r5, [r4, #0x34]
00058498  69 73                                            strb r1, [r5, #0xd]
0005849a  69 6f                                            ldr r1, [r5, #0x74]
0005849c  6e 20                                            movs r0, #0x6e
0005849e  25 73                                            strb r5, [r4, #0xc]
000584a0  20 25                                            movs r5, #0x20
000584a2  73 00                                            lsls r3, r6, #1
000584a4  a8 41                                            sbcs r0, r5
000584a6  08 00                                            movs r0, r1
000584a8  da 41                                            rors r2, r3
000584aa  08 00                                            movs r0, r1
000584ac  48 41                                            adcs r0, r1
000584ae  08 00                                            movs r0, r1
000584b0  23 64                                            str r3, [r4, #0x40]
000584b2  65 66                                            str r5, [r4, #0x64]
000584b4  61 75                                            strb r1, [r4, #0x15]
000584b6  6c 74                                            strb r4, [r5, #0x11]
000584b8  20 70                                            strb r0, [r4]
000584ba  72 65                                            str r2, [r6, #0x54]
000584bc  63 69                                            ldr r3, [r4, #0x14]
000584be  73 69                                            ldr r3, [r6, #0x14]
000584c0  6f 6e                                            ldr r7, [r5, #0x64]
000584c2  00 00                                            movs r0, r0
000584c4  d7 2d                                            cmp r5, #0xd7
000584c6  06 00                                            movs r6, r0
000584c8  6c 41                                            adcs r4, r5
000584ca  08 00                                            movs r0, r1

; FUNCTION 0x00059910, declared_size=48, range_size=48, mode=thumb
; class-group: ast_type_specifier
; alias: _ZNK18ast_type_specifier5printEv
; demangled: ast_type_specifier::print() const
; decoder-mode: thumb
00059910  d0 b5                                            push {r4, r6, r7, lr}
00059912  02 af                                            add r7, sp, #8
00059914  04 46                                            mov r4, r0
00059916  60 6a                                            ldr r0, [r4, #0x24]
00059918  18 b1                                            cbz r0, #0x59922
0005991a  01 68                                            ldr r1, [r0]
0005991c  09 68                                            ldr r1, [r1]
0005991e  88 47                                            blx r1
00059920  03 e0                                            b #0x5992a
00059922  21 6a                                            ldr r1, [r4, #0x20]
00059924  05 a0                                            adr r0, #0x14
00059926  d8 f7 e0 ec                                      blx #0x322e8
0005992a  a0 6a                                            ldr r0, [r4, #0x28]
0005992c  20 b1                                            cbz r0, #0x59938
0005992e  01 68                                            ldr r1, [r0]
00059930  09 68                                            ldr r1, [r1]
00059932  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
00059936  08 47                                            bx r1
00059938  d0 bd                                            pop {r4, r6, r7, pc}
0005993a  00 bf                                            nop
0005993c  25 73                                            strb r5, [r4, #0xc]
0005993e  20 00                                            movs r0, r4
