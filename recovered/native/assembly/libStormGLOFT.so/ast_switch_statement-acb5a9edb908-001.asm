; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000575e8, declared_size=776, range_size=776, mode=thumb
; class-group: ast_switch_statement
; alias: _ZN20ast_switch_statement3hirEP9exec_listP22_mesa_glsl_parse_state
; demangled: ast_switch_statement::hir(exec_list*, _mesa_glsl_parse_state*)
; decoder-mode: thumb
000575e8  f0 b5                                            push {r4, r5, r6, r7, lr}
000575ea  03 af                                            add r7, sp, #0xc
000575ec  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
000575f0  8d b0                                            sub sp, #0x34
000575f2  80 46                                            mov r8, r0
000575f4  9c 48                                            ldr r0, [pc, #0x270]
000575f6  8b 46                                            mov fp, r1
000575f8  14 46                                            mov r4, r2
000575fa  78 44                                            add r0, pc
000575fc  00 68                                            ldr r0, [r0]
000575fe  00 68                                            ldr r0, [r0]
00057600  0c 90                                            str r0, [sp, #0x30]
00057602  d8 f8 20 00                                      ldr.w r0, [r8, #0x20]
00057606  01 68                                            ldr r1, [r0]
00057608  4b 68                                            ldr r3, [r1, #4]
0005760a  59 46                                            mov r1, fp
0005760c  98 47                                            blx r3
0005760e  00 69                                            ldr r0, [r0, #0x10]
00057610  01 89                                            ldrh r1, [r0, #8]
00057612  01 f4 60 61                                      and r1, r1, #0xe00
00057616  b1 f5 00 7f                                      cmp.w r1, #0x200
0005761a  02 d1                                            bne #0x57622
0005761c  40 68                                            ldr r0, [r0, #4]
0005761e  02 28                                            cmp r0, #2
00057620  10 d3                                            blo #0x57644
00057622  d8 f8 20 00                                      ldr.w r0, [r8, #0x20]
00057626  91 a2                                            adr r2, #0x244
00057628  41 68                                            ldr r1, [r0, #4]
0005762a  08 91                                            str r1, [sp, #0x20]
0005762c  81 68                                            ldr r1, [r0, #8]
0005762e  04 91                                            str r1, [sp, #0x10]
00057630  c1 68                                            ldr r1, [r0, #0xc]
00057632  05 91                                            str r1, [sp, #0x14]
00057634  01 69                                            ldr r1, [r0, #0x10]
00057636  06 91                                            str r1, [sp, #0x18]
00057638  21 46                                            mov r1, r4
0005763a  40 69                                            ldr r0, [r0, #0x14]
0005763c  07 90                                            str r0, [sp, #0x1c]
0005763e  04 a8                                            add r0, sp, #0x10
00057640  db f7 3a e9                                      blx #0x328b8
00057644  04 f5 b2 71                                      add.w r1, r4, #0x164
00057648  df f8 54 e2                                      ldr.w lr, [pc, #0x254]
0005764c  df f8 54 c2                                      ldr.w ip, [pc, #0x254]
00057650  04 ab                                            add r3, sp, #0x10
00057652  02 91                                            str r1, [sp, #8]
00057654  fe 44                                            add lr, pc
00057656  65 c9                                            ldm r1!, {r0, r2, r5, r6}
00057658  fc 44                                            add ip, pc
0005765a  65 c3                                            stm r3!, {r0, r2, r5, r6}
0005765c  91 e8 65 00                                      ldm.w r1, {r0, r2, r5, r6}
00057660  65 c3                                            stm r3!, {r0, r2, r5, r6}
00057662  01 20                                            movs r0, #1
00057664  00 25                                            movs r5, #0
00057666  de f8 00 10                                      ldr.w r1, [lr]
0005766a  dc f8 00 20                                      ldr.w r2, [ip]
0005766e  c4 f8 70 81                                      str.w r8, [r4, #0x170]
00057672  84 f8 80 01                                      strb.w r0, [r4, #0x180]
00057676  00 20                                            movs r0, #0
00057678  db f7 7c e8                                      blx #0x32774
0005767c  c4 e9 5e 05                                      strd r0, r5, [r4, #0x178]
00057680  20 46                                            mov r0, r4
00057682  68 21                                            movs r1, #0x68
00057684  db f7 4c e8                                      blx #0x32720
00057688  82 46                                            mov sl, r0
0005768a  87 48                                            ldr r0, [pc, #0x21c]
0005768c  78 44                                            add r0, pc
0005768e  d0 f8 00 90                                      ldr.w sb, [r0]
00057692  50 46                                            mov r0, sl
00057694  49 46                                            mov r1, sb
00057696  db f7 34 e9                                      blx #0x32900
0005769a  50 46                                            mov r0, sl
0005769c  00 21                                            movs r1, #0
0005769e  01 22                                            movs r2, #1
000576a0  db f7 d8 ea                                      blx #0x32c54
000576a4  20 46                                            mov r0, r4
000576a6  44 21                                            movs r1, #0x44
000576a8  db f7 3a e8                                      blx #0x32720
000576ac  49 46                                            mov r1, sb
000576ae  05 46                                            mov r5, r0
000576b0  db f7 26 e9                                      blx #0x32900
000576b4  02 20                                            movs r0, #2
000576b6  7e a2                                            adr r2, #0x1f8
000576b8  00 90                                            str r0, [sp]
000576ba  0a 23                                            movs r3, #0xa
000576bc  7b 48                                            ldr r0, [pc, #0x1ec]
000576be  78 44                                            add r0, pc
000576c0  00 68                                            ldr r0, [r0]
000576c2  01 68                                            ldr r1, [r0]
000576c4  28 46                                            mov r0, r5
000576c6  03 91                                            str r1, [sp, #0xc]
000576c8  db f7 56 e9                                      blx #0x32978
000576cc  c4 f8 68 51                                      str.w r5, [r4, #0x168]
000576d0  00 2d                                            cmp r5, #0
000576d2  18 bf                                            it ne
000576d4  04 35                                            addne r5, #4
000576d6  0b f1 04 06                                      add.w r6, fp, #4
000576da  2e 60                                            str r6, [r5]
000576dc  1c 21                                            movs r1, #0x1c
000576de  db f8 08 00                                      ldr.w r0, [fp, #8]
000576e2  68 60                                            str r0, [r5, #4]
000576e4  05 60                                            str r5, [r0]
000576e6  20 46                                            mov r0, r4
000576e8  cb f8 08 50                                      str.w r5, [fp, #8]
000576ec  db f7 18 e8                                      blx #0x32720
000576f0  49 46                                            mov r1, sb
000576f2  05 46                                            mov r5, r0
000576f4  db f7 04 e9                                      blx #0x32900
000576f8  d4 f8 68 11                                      ldr.w r1, [r4, #0x168]
000576fc  28 46                                            mov r0, r5
000576fe  db f7 5a e9                                      blx #0x329b4
00057702  20 46                                            mov r0, r4
00057704  20 21                                            movs r1, #0x20
00057706  db f7 0c e8                                      blx #0x32720
0005770a  49 46                                            mov r1, sb
0005770c  cd f8 04 80                                      str.w r8, [sp, #4]
00057710  80 46                                            mov r8, r0
00057712  db f7 f6 e8                                      blx #0x32900
00057716  40 46                                            mov r0, r8
00057718  29 46                                            mov r1, r5
0005771a  52 46                                            mov r2, sl
0005771c  00 23                                            movs r3, #0
0005771e  db f7 74 e9                                      blx #0x32a08
00057722  b8 f1 00 0f                                      cmp.w r8, #0
00057726  18 bf                                            it ne
00057728  08 f1 04 08                                      addne.w r8, r8, #4
0005772c  c8 f8 00 60                                      str.w r6, [r8]
00057730  68 21                                            movs r1, #0x68
00057732  db f8 08 00                                      ldr.w r0, [fp, #8]
00057736  c8 f8 04 00                                      str.w r0, [r8, #4]
0005773a  c0 f8 00 80                                      str.w r8, [r0]
0005773e  20 46                                            mov r0, r4
00057740  cb f8 08 80                                      str.w r8, [fp, #8]
00057744  da f7 ec ef                                      blx #0x32720
00057748  49 46                                            mov r1, sb
0005774a  82 46                                            mov sl, r0
0005774c  db f7 d8 e8                                      blx #0x32900
00057750  50 46                                            mov r0, sl
00057752  00 21                                            movs r1, #0
00057754  01 22                                            movs r2, #1
00057756  db f7 7e ea                                      blx #0x32c54
0005775a  20 46                                            mov r0, r4
0005775c  44 21                                            movs r1, #0x44
0005775e  da f7 e0 ef                                      blx #0x32720
00057762  49 46                                            mov r1, sb
00057764  05 46                                            mov r5, r0
00057766  db f7 cc e8                                      blx #0x32900
0005776a  03 99                                            ldr r1, [sp, #0xc]
0005776c  02 20                                            movs r0, #2
0005776e  56 a2                                            adr r2, #0x158
00057770  00 90                                            str r0, [sp]
00057772  28 46                                            mov r0, r5
00057774  0a 23                                            movs r3, #0xa
00057776  db f7 00 e9                                      blx #0x32978
0005777a  c4 f8 6c 51                                      str.w r5, [r4, #0x16c]
0005777e  00 2d                                            cmp r5, #0
00057780  18 bf                                            it ne
00057782  04 35                                            addne r5, #4
00057784  b0 46                                            mov r8, r6
00057786  c5 f8 00 80                                      str.w r8, [r5]
0005778a  1c 21                                            movs r1, #0x1c
0005778c  db f8 08 00                                      ldr.w r0, [fp, #8]
00057790  68 60                                            str r0, [r5, #4]
00057792  05 60                                            str r5, [r0]
00057794  20 46                                            mov r0, r4
00057796  cb f8 08 50                                      str.w r5, [fp, #8]
0005779a  da f7 c2 ef                                      blx #0x32720
0005779e  49 46                                            mov r1, sb
000577a0  05 46                                            mov r5, r0
000577a2  db f7 ae e8                                      blx #0x32900
000577a6  d4 f8 6c 11                                      ldr.w r1, [r4, #0x16c]
000577aa  28 46                                            mov r0, r5
000577ac  db f7 02 e9                                      blx #0x329b4
000577b0  20 46                                            mov r0, r4
000577b2  20 21                                            movs r1, #0x20
000577b4  da f7 b4 ef                                      blx #0x32720
000577b8  49 46                                            mov r1, sb
000577ba  06 46                                            mov r6, r0
000577bc  db f7 a0 e8                                      blx #0x32900
000577c0  30 46                                            mov r0, r6
000577c2  29 46                                            mov r1, r5
000577c4  52 46                                            mov r2, sl
000577c6  00 23                                            movs r3, #0
000577c8  db f7 1e e9                                      blx #0x32a08
000577cc  00 2e                                            cmp r6, #0
000577ce  18 bf                                            it ne
000577d0  04 36                                            addne r6, #4
000577d2  c2 46                                            mov sl, r8
000577d4  44 21                                            movs r1, #0x44
000577d6  c6 f8 00 a0                                      str.w sl, [r6]
000577da  db f8 08 00                                      ldr.w r0, [fp, #8]
000577de  70 60                                            str r0, [r6, #4]
000577e0  06 60                                            str r6, [r0]
000577e2  20 46                                            mov r0, r4
000577e4  cb f8 08 60                                      str.w r6, [fp, #8]
000577e8  da f7 9a ef                                      blx #0x32720
000577ec  49 46                                            mov r1, sb
000577ee  05 46                                            mov r5, r0
000577f0  db f7 86 e8                                      blx #0x32900
000577f4  03 99                                            ldr r1, [sp, #0xc]
000577f6  02 20                                            movs r0, #2
000577f8  38 a2                                            adr r2, #0xe0
000577fa  00 90                                            str r0, [sp]
000577fc  28 46                                            mov r0, r5
000577fe  0a 23                                            movs r3, #0xa
00057800  db f7 ba e8                                      blx #0x32978
00057804  c4 f8 74 51                                      str.w r5, [r4, #0x174]
00057808  00 2d                                            cmp r5, #0
0005780a  18 bf                                            it ne
0005780c  04 35                                            addne r5, #4
0005780e  59 46                                            mov r1, fp
00057810  c5 f8 00 a0                                      str.w sl, [r5]
00057814  22 46                                            mov r2, r4
00057816  db f8 08 00                                      ldr.w r0, [fp, #8]
0005781a  68 60                                            str r0, [r5, #4]
0005781c  05 60                                            str r5, [r0]
0005781e  cb f8 08 50                                      str.w r5, [fp, #8]
00057822  01 9d                                            ldr r5, [sp, #4]
00057824  28 46                                            mov r0, r5
00057826  db f7 0c eb                                      blx #0x32e40
0005782a  68 6a                                            ldr r0, [r5, #0x24]
0005782c  22 46                                            mov r2, r4
0005782e  01 68                                            ldr r1, [r0]
00057830  4b 68                                            ldr r3, [r1, #4]
00057832  59 46                                            mov r1, fp
00057834  98 47                                            blx r3
00057836  d4 f8 78 01                                      ldr.w r0, [r4, #0x178]
0005783a  da f7 a8 ef                                      blx #0x3278c
0005783e  04 ad                                            add r5, sp, #0x10
00057840  02 9e                                            ldr r6, [sp, #8]
00057842  0f cd                                            ldm r5!, {r0, r1, r2, r3}
00057844  0f c6                                            stm r6!, {r0, r1, r2, r3}
00057846  95 e8 0f 00                                      ldm.w r5, {r0, r1, r2, r3}
0005784a  0f c6                                            stm r6!, {r0, r1, r2, r3}
0005784c  27 48                                            ldr r0, [pc, #0x9c]
0005784e  0c 99                                            ldr r1, [sp, #0x30]
00057850  78 44                                            add r0, pc
00057852  00 68                                            ldr r0, [r0]
00057854  00 68                                            ldr r0, [r0]
00057856  40 1a                                            subs r0, r0, r1
00057858  01 bf                                            itttt eq
0005785a  00 20                                            moveq r0, #0
0005785c  0d b0                                            addeq sp, #0x34
0005785e  bd e8 00 0f                                      popeq.w {r8, sb, sl, fp}
00057862  f0 bd                                            popeq {r4, r5, r6, r7, pc}
00057864  da f7 fc eb                                      blx #0x32060
00057868  ba 4e                                            ldr r6, [pc, #0x2e8]
0005786a  08 00                                            movs r0, r1
0005786c  73 77                                            strb r3, [r6, #0x1d]
0005786e  69 74                                            strb r1, [r5, #0x11]
00057870  63 68                                            ldr r3, [r4, #4]
00057872  2d 73                                            strb r5, [r5, #0xc]
00057874  74 61                                            str r4, [r6, #0x14]
00057876  74 65                                            str r4, [r6, #0x54]
00057878  6d 65                                            str r5, [r5, #0x54]
0005787a  6e 74                                            strb r6, [r5, #0x11]
0005787c  20 65                                            str r0, [r4, #0x50]
0005787e  78 70                                            strb r0, [r7, #1]
00057880  72 65                                            str r2, [r6, #0x54]
00057882  73 73                                            strb r3, [r6, #0xd]
00057884  69 6f                                            ldr r1, [r5, #0x74]
00057886  6e 20                                            movs r0, #0x6e
00057888  6d 75                                            strb r5, [r5, #0x15]
0005788a  73 74                                            strb r3, [r6, #0x11]
0005788c  20 62                                            str r0, [r4, #0x20]
0005788e  65 20                                            movs r0, #0x65
00057890  73 63                                            str r3, [r6, #0x34]
00057892  61 6c                                            ldr r1, [r4, #0x44]
00057894  61 72                                            strb r1, [r4, #9]
00057896  20 69                                            ldr r0, [r4, #0x10]
00057898  6e 74                                            strb r6, [r5, #0x11]
0005789a  65 67                                            str r5, [r4, #0x74]
0005789c  65 72                                            strb r5, [r4, #9]
0005789e  00 00                                            movs r0, r0
000578a0  18 4f                                            ldr r7, [pc, #0x60]
000578a2  08 00                                            movs r0, r1
000578a4  18 4f                                            ldr r7, [pc, #0x60]
000578a6  08 00                                            movs r0, r1
000578a8  ac 4e                                            ldr r6, [pc, #0x2b0]
000578aa  08 00                                            movs r0, r1
000578ac  96 4e                                            ldr r6, [pc, #0x258]
000578ae  08 00                                            movs r0, r1
000578b0  73 77                                            strb r3, [r6, #0x1d]
000578b2  69 74                                            strb r1, [r5, #0x11]
000578b4  63 68                                            ldr r3, [r4, #4]
000578b6  5f 69                                            ldr r7, [r3, #0x14]
000578b8  73 5f                                            ldrsh r3, [r6, r5]
000578ba  66 61                                            str r6, [r4, #0x14]
000578bc  6c 6c                                            ldr r4, [r5, #0x44]
000578be  74 68                                            ldr r4, [r6, #4]
000578c0  72 75                                            strb r2, [r6, #0x15]
000578c2  5f 74                                            strb r7, [r3, #0x11]
000578c4  6d 70                                            strb r5, [r5, #1]
000578c6  00 00                                            movs r0, r0
000578c8  73 77                                            strb r3, [r6, #0x1d]
000578ca  69 74                                            strb r1, [r5, #0x11]
000578cc  63 68                                            ldr r3, [r4, #4]
000578ce  5f 69                                            ldr r7, [r3, #0x14]
000578d0  73 5f                                            ldrsh r3, [r6, r5]
000578d2  62 72                                            strb r2, [r4, #9]
000578d4  65 61                                            str r5, [r4, #0x14]
000578d6  6b 5f                                            ldrsh r3, [r5, r5]
000578d8  74 6d                                            ldr r4, [r6, #0x54]
000578da  70 00                                            lsls r0, r6, #1
000578dc  72 75                                            strb r2, [r6, #0x15]
000578de  6e 5f                                            ldrsh r6, [r5, r5]
000578e0  64 65                                            str r4, [r4, #0x54]
000578e2  66 61                                            str r6, [r4, #0x14]
000578e4  75 6c                                            ldr r5, [r6, #0x44]
000578e6  74 5f                                            ldrsh r4, [r6, r5]
000578e8  74 6d                                            ldr r4, [r6, #0x54]
000578ea  70 00                                            lsls r0, r6, #1
000578ec  64 4c                                            ldr r4, [pc, #0x190]
000578ee  08 00                                            movs r0, r1

; FUNCTION 0x000578f0, declared_size=200, range_size=200, mode=thumb
; class-group: ast_switch_statement
; alias: _ZN20ast_switch_statement11test_to_hirEP9exec_listP22_mesa_glsl_parse_state
; demangled: ast_switch_statement::test_to_hir(exec_list*, _mesa_glsl_parse_state*)
; decoder-mode: thumb
000578f0  f0 b5                                            push {r4, r5, r6, r7, lr}
000578f2  03 af                                            add r7, sp, #0xc
000578f4  2d e9 00 07                                      push.w {r8, sb, sl}
000578f8  82 b0                                            sub sp, #8
000578fa  00 6a                                            ldr r0, [r0, #0x20]
000578fc  0c 46                                            mov r4, r1
000578fe  16 46                                            mov r6, r2
00057900  01 68                                            ldr r1, [r0]
00057902  4b 68                                            ldr r3, [r1, #4]
00057904  21 46                                            mov r1, r4
00057906  98 47                                            blx r3
00057908  80 46                                            mov r8, r0
0005790a  30 46                                            mov r0, r6
0005790c  44 21                                            movs r1, #0x44
0005790e  da f7 08 ef                                      blx #0x32720
00057912  05 46                                            mov r5, r0
00057914  23 48                                            ldr r0, [pc, #0x8c]
00057916  78 44                                            add r0, pc
00057918  d0 f8 00 90                                      ldr.w sb, [r0]
0005791c  28 46                                            mov r0, r5
0005791e  49 46                                            mov r1, sb
00057920  da f7 ee ef                                      blx #0x32900
00057924  d8 e9 04 10                                      ldrd r1, r0, [r8, #0x10]
00057928  1f a2                                            adr r2, #0x7c
0005792a  0a 23                                            movs r3, #0xa
0005792c  00 90                                            str r0, [sp]
0005792e  28 46                                            mov r0, r5
00057930  db f7 22 e8                                      blx #0x32978
00057934  30 46                                            mov r0, r6
00057936  1c 21                                            movs r1, #0x1c
00057938  c6 f8 64 51                                      str.w r5, [r6, #0x164]
0005793c  da f7 f0 ee                                      blx #0x32720
00057940  49 46                                            mov r1, sb
00057942  05 46                                            mov r5, r0
00057944  da f7 dc ef                                      blx #0x32900
00057948  d6 f8 64 11                                      ldr.w r1, [r6, #0x164]
0005794c  28 46                                            mov r0, r5
0005794e  db f7 32 e8                                      blx #0x329b4
00057952  d6 f8 64 01                                      ldr.w r0, [r6, #0x164]
00057956  04 f1 04 0a                                      add.w sl, r4, #4
0005795a  00 28                                            cmp r0, #0
0005795c  18 bf                                            it ne
0005795e  04 30                                            addne r0, #4
00057960  c0 f8 00 a0                                      str.w sl, [r0]
00057964  a1 68                                            ldr r1, [r4, #8]
00057966  41 60                                            str r1, [r0, #4]
00057968  08 60                                            str r0, [r1]
0005796a  20 21                                            movs r1, #0x20
0005796c  a0 60                                            str r0, [r4, #8]
0005796e  30 46                                            mov r0, r6
00057970  da f7 d6 ee                                      blx #0x32720
00057974  49 46                                            mov r1, sb
00057976  06 46                                            mov r6, r0
00057978  da f7 c2 ef                                      blx #0x32900
0005797c  30 46                                            mov r0, r6
0005797e  29 46                                            mov r1, r5
00057980  42 46                                            mov r2, r8
00057982  00 23                                            movs r3, #0
00057984  db f7 40 e8                                      blx #0x32a08
00057988  00 2e                                            cmp r6, #0
0005798a  18 bf                                            it ne
0005798c  04 36                                            addne r6, #4
0005798e  c6 f8 00 a0                                      str.w sl, [r6]
00057992  a0 68                                            ldr r0, [r4, #8]
00057994  70 60                                            str r0, [r6, #4]
00057996  06 60                                            str r6, [r0]
00057998  a6 60                                            str r6, [r4, #8]
0005799a  02 b0                                            add sp, #8
0005799c  bd e8 00 07                                      pop.w {r8, sb, sl}
000579a0  f0 bd                                            pop {r4, r5, r6, r7, pc}
000579a2  00 bf                                            nop
000579a4  22 4c                                            ldr r4, [pc, #0x88]
000579a6  08 00                                            movs r0, r1
000579a8  73 77                                            strb r3, [r6, #0x1d]
000579aa  69 74                                            strb r1, [r5, #0x11]
000579ac  63 68                                            ldr r3, [r4, #4]
000579ae  5f 74                                            strb r7, [r3, #0x11]
000579b0  65 73                                            strb r5, [r4, #0xd]
000579b2  74 5f                                            ldrsh r4, [r6, r5]
000579b4  74 6d                                            ldr r4, [r6, #0x54]
000579b6  70 00                                            lsls r0, r6, #1

; FUNCTION 0x0007dff0, declared_size=56, range_size=56, mode=thumb
; class-group: ast_switch_statement
; alias: _ZNK20ast_switch_statement5printEv
; demangled: ast_switch_statement::print() const
; decoder-mode: thumb
0007dff0  d0 b5                                            push {r4, r6, r7, lr}
0007dff2  02 af                                            add r7, sp, #8
0007dff4  04 46                                            mov r4, r0
0007dff6  08 a0                                            adr r0, #0x20
0007dff8  b4 f7 76 e9                                      blx #0x322e8
0007dffc  20 6a                                            ldr r0, [r4, #0x20]
0007dffe  01 68                                            ldr r1, [r0]
0007e000  09 68                                            ldr r1, [r1]
0007e002  88 47                                            blx r1
0007e004  07 a0                                            adr r0, #0x1c
0007e006  b4 f7 70 e9                                      blx #0x322e8
0007e00a  60 6a                                            ldr r0, [r4, #0x24]
0007e00c  01 68                                            ldr r1, [r0]
0007e00e  09 68                                            ldr r1, [r1]
0007e010  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0007e014  08 47                                            bx r1
0007e016  00 bf                                            nop
0007e018  73 77                                            strb r3, [r6, #0x1d]
0007e01a  69 74                                            strb r1, [r5, #0x11]
0007e01c  63 68                                            ldr r3, [r4, #4]
0007e01e  20 28                                            cmp r0, #0x20
0007e020  20 00                                            movs r0, r4
0007e022  00 00                                            movs r0, r0
0007e024  29 20                                            movs r0, #0x29
0007e026  00 00                                            movs r0, r0

; FUNCTION 0x0007e028, declared_size=48, range_size=48, mode=thumb
; class-group: ast_switch_statement
; alias: _ZN20ast_switch_statementC1EP14ast_expressionP8ast_node
; demangled: ast_switch_statement::ast_switch_statement(ast_expression*, ast_node*)
; alias: _ZN20ast_switch_statementC2EP14ast_expressionP8ast_node
; demangled: ast_switch_statement::ast_switch_statement(ast_expression*, ast_node*)
; decoder-mode: thumb
0007e028  f0 b5                                            push {r4, r5, r6, r7, lr}
0007e02a  03 af                                            add r7, sp, #0xc
0007e02c  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0007e030  06 46                                            mov r6, r0
0007e032  30 1d                                            adds r0, r6, #4
0007e034  0d 46                                            mov r5, r1
0007e036  14 21                                            movs r1, #0x14
0007e038  14 46                                            mov r4, r2
0007e03a  b4 f7 12 eb                                      blx #0x32660
0007e03e  05 48                                            ldr r0, [pc, #0x14]
0007e040  35 62                                            str r5, [r6, #0x20]
0007e042  78 44                                            add r0, pc
0007e044  74 62                                            str r4, [r6, #0x24]
0007e046  00 68                                            ldr r0, [r0]
0007e048  08 30                                            adds r0, #8
0007e04a  30 60                                            str r0, [r6]
0007e04c  30 46                                            mov r0, r6
0007e04e  5d f8 04 bb                                      ldr fp, [sp], #4
0007e052  f0 bd                                            pop {r4, r5, r6, r7, pc}
0007e054  ea e8 05 00                                      strd r0, r0, [sl], #0x14
