; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00054dfc, declared_size=2560, range_size=2560, mode=thumb
; class-group: ast_declarator_list
; alias: _ZN19ast_declarator_list3hirEP9exec_listP22_mesa_glsl_parse_state
; demangled: ast_declarator_list::hir(exec_list*, _mesa_glsl_parse_state*)
; decoder-mode: thumb
00054dfc  f0 b5                                            push {r4, r5, r6, r7, lr}
00054dfe  03 af                                            add r7, sp, #0xc
00054e00  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
00054e04  99 b0                                            sub sp, #0x64
00054e06  05 46                                            mov r5, r0
00054e08  df f8 a0 08                                      ldr.w r0, [pc, #0x8a0]
00054e0c  2e 1d                                            adds r6, r5, #4
00054e0e  90 46                                            mov r8, r2
00054e10  78 44                                            add r0, pc
00054e12  0c 46                                            mov r4, r1
00054e14  00 68                                            ldr r0, [r0]
00054e16  00 68                                            ldr r0, [r0]
00054e18  18 90                                            str r0, [sp, #0x60]
00054e1a  00 20                                            movs r0, #0
00054e1c  17 90                                            str r0, [sp, #0x5c]
00054e1e  4f ce                                            ldm r6, {r0, r1, r2, r3, r6}
00054e20  16 90                                            str r0, [sp, #0x58]
00054e22  12 a8                                            add r0, sp, #0x48
00054e24  4e c0                                            stm r0!, {r1, r2, r3, r6}
00054e26  28 6b                                            ldr r0, [r5, #0x30]
00054e28  00 28                                            cmp r0, #0
00054e2a  44 d0                                            beq #0x54eb6
00054e2c  d8 f8 54 01                                      ldr.w r0, [r8, #0x154]
00054e30  28 b1                                            cbz r0, #0x54e3e
00054e32  12 a8                                            add r0, sp, #0x48
00054e34  0f f6 78 02                                      addw r2, pc, #0x878
00054e38  41 46                                            mov r1, r8
00054e3a  dd f7 3e ed                                      blx #0x328b8
00054e3e  6c 6a                                            ldr r4, [r5, #0x24]
00054e40  20 68                                            ldr r0, [r4]
00054e42  00 28                                            cmp r0, #0
00054e44  00 f0 f3 83                                      beq.w #0x5562e
00054e48  df f8 a0 b8                                      ldr.w fp, [pc, #0x8a0]
00054e4c  12 ad                                            add r5, sp, #0x48
00054e4e  df f8 98 98                                      ldr.w sb, [pc, #0x898]
00054e52  0f f6 9c 0a                                      addw sl, pc, #0x89c
00054e56  fb 44                                            add fp, pc
00054e58  f9 44                                            add sb, pc
00054e5a  a1 68                                            ldr r1, [r4, #8]
00054e5c  d8 f8 14 00                                      ldr.w r0, [r8, #0x14]
00054e60  dd f7 14 ee                                      blx #0x32a8c
00054e64  06 46                                            mov r6, r0
00054e66  8e b1                                            cbz r6, #0x54e8c
00054e68  d8 f8 88 10                                      ldr.w r1, [r8, #0x88]
00054e6c  30 46                                            mov r0, r6
00054e6e  00 f0 c5 fc                                      bl #0x557fc
00054e72  80 b1                                            cbz r0, #0x54e96
00054e74  30 46                                            mov r0, r6
00054e76  50 f8 18 1f                                      ldr r1, [r0, #0x18]!
00054e7a  11 f0 20 0f                                      tst.w r1, #0x20
00054e7e  0f d1                                            bne #0x54ea0
00054e80  02 79                                            ldrb r2, [r0, #4]
00054e82  41 f0 08 01                                      orr r1, r1, #8
00054e86  01 60                                            str r1, [r0]
00054e88  02 71                                            strb r2, [r0, #4]
00054e8a  0f e0                                            b #0x54eac
00054e8c  a3 68                                            ldr r3, [r4, #8]
00054e8e  28 46                                            mov r0, r5
00054e90  41 46                                            mov r1, r8
00054e92  52 46                                            mov r2, sl
00054e94  08 e0                                            b #0x54ea8
00054e96  a3 68                                            ldr r3, [r4, #8]
00054e98  28 46                                            mov r0, r5
00054e9a  41 46                                            mov r1, r8
00054e9c  4a 46                                            mov r2, sb
00054e9e  03 e0                                            b #0x54ea8
00054ea0  73 69                                            ldr r3, [r6, #0x14]
00054ea2  28 46                                            mov r0, r5
00054ea4  41 46                                            mov r1, r8
00054ea6  5a 46                                            mov r2, fp
00054ea8  dd f7 06 ed                                      blx #0x328b8
00054eac  24 68                                            ldr r4, [r4]
00054eae  20 68                                            ldr r0, [r4]
00054eb0  00 28                                            cmp r0, #0
00054eb2  d2 d1                                            bne #0x54e5a
00054eb4  bb e3                                            b #0x5562e
00054eb6  68 6b                                            ldr r0, [r5, #0x34]
00054eb8  00 28                                            cmp r0, #0
00054eba  40 d0                                            beq #0x54f3e
00054ebc  6e 6a                                            ldr r6, [r5, #0x24]
00054ebe  30 68                                            ldr r0, [r6]
00054ec0  00 28                                            cmp r0, #0
00054ec2  00 f0 b4 83                                      beq.w #0x5562e
00054ec6  df f8 64 a8                                      ldr.w sl, [pc, #0x864]
00054eca  0d f1 48 0b                                      add.w fp, sp, #0x48
00054ece  df f8 58 48                                      ldr.w r4, [pc, #0x858]
00054ed2  df f8 50 98                                      ldr.w sb, [pc, #0x850]
00054ed6  fa 44                                            add sl, pc
00054ed8  7c 44                                            add r4, pc
00054eda  f9 44                                            add sb, pc
00054edc  b1 68                                            ldr r1, [r6, #8]
00054ede  d8 f8 14 00                                      ldr.w r0, [r8, #0x14]
00054ee2  dd f7 d4 ed                                      blx #0x32a8c
00054ee6  05 46                                            mov r5, r0
00054ee8  a5 b1                                            cbz r5, #0x54f14
00054eea  d8 f8 54 01                                      ldr.w r0, [r8, #0x154]
00054eee  28 b1                                            cbz r0, #0x54efc
00054ef0  b1 68                                            ldr r1, [r6, #8]
00054ef2  d8 f8 14 00                                      ldr.w r0, [r8, #0x14]
00054ef6  dd f7 0e ef                                      blx #0x32d14
00054efa  a8 b1                                            cbz r0, #0x54f28
00054efc  28 46                                            mov r0, r5
00054efe  50 f8 18 1f                                      ldr r1, [r0, #0x18]!
00054f02  11 f0 20 0f                                      tst.w r1, #0x20
00054f06  0a d1                                            bne #0x54f1e
00054f08  02 79                                            ldrb r2, [r0, #4]
00054f0a  41 f0 10 01                                      orr r1, r1, #0x10
00054f0e  01 60                                            str r1, [r0]
00054f10  02 71                                            strb r2, [r0, #4]
00054f12  0f e0                                            b #0x54f34
00054f14  b3 68                                            ldr r3, [r6, #8]
00054f16  58 46                                            mov r0, fp
00054f18  41 46                                            mov r1, r8
00054f1a  52 46                                            mov r2, sl
00054f1c  08 e0                                            b #0x54f30
00054f1e  6b 69                                            ldr r3, [r5, #0x14]
00054f20  58 46                                            mov r0, fp
00054f22  41 46                                            mov r1, r8
00054f24  22 46                                            mov r2, r4
00054f26  03 e0                                            b #0x54f30
00054f28  6b 69                                            ldr r3, [r5, #0x14]
00054f2a  58 46                                            mov r0, fp
00054f2c  41 46                                            mov r1, r8
00054f2e  4a 46                                            mov r2, sb
00054f30  dd f7 c2 ec                                      blx #0x328b8
00054f34  36 68                                            ldr r6, [r6]
00054f36  30 68                                            ldr r0, [r6]
00054f38  00 28                                            cmp r0, #0
00054f3a  cf d1                                            bne #0x54edc
00054f3c  77 e3                                            b #0x5562e
00054f3e  28 6a                                            ldr r0, [r5, #0x20]
00054f40  42 46                                            mov r2, r8
00054f42  00 6e                                            ldr r0, [r0, #0x60]
00054f44  01 68                                            ldr r1, [r0]
00054f46  4b 68                                            ldr r3, [r1, #4]
00054f48  21 46                                            mov r1, r4
00054f4a  98 47                                            blx r3
00054f4c  28 6a                                            ldr r0, [r5, #0x20]
00054f4e  17 a9                                            add r1, sp, #0x5c
00054f50  42 46                                            mov r2, r8
00054f52  00 6e                                            ldr r0, [r0, #0x60]
00054f54  dd f7 70 ed                                      blx #0x32a38
00054f58  82 46                                            mov sl, r0
00054f5a  ba f1 00 0f                                      cmp.w sl, #0
00054f5e  10 d0                                            beq #0x54f82
00054f60  50 46                                            mov r0, sl
00054f62  dd f7 de ee                                      blx #0x32d20
00054f66  60 b1                                            cbz r0, #0x54f82
00054f68  28 6a                                            ldr r0, [r5, #0x20]
00054f6a  01 6a                                            ldr r1, [r0, #0x20]
00054f6c  01 f4 c0 21                                      and r1, r1, #0x60000
00054f70  b1 f5 c0 2f                                      cmp.w r1, #0x60000
00054f74  02 bf                                            ittt eq
00054f76  d0 e9 11 10                                      ldrdeq r1, r0, [r0, #0x44]
00054f7a  08 eb 81 01                                      addeq.w r1, r8, r1, lsl #2
00054f7e  c1 f8 fc 01                                      streq.w r0, [r1, #0x1fc]
00054f82  68 6a                                            ldr r0, [r5, #0x24]
00054f84  05 f1 28 01                                      add.w r1, r5, #0x28
00054f88  88 42                                            cmp r0, r1
00054f8a  00 f0 49 83                                      beq.w #0x55620
00054f8e  04 94                                            str r4, [sp, #0x10]
00054f90  4f f0 00 09                                      mov.w sb, #0
00054f94  d5 f8 24 b0                                      ldr.w fp, [r5, #0x24]
00054f98  db f8 00 00                                      ldr.w r0, [fp]
00054f9c  00 28                                            cmp r0, #0
00054f9e  00 f0 46 83                                      beq.w #0x5562e
00054fa2  04 98                                            ldr r0, [sp, #0x10]
00054fa4  00 24                                            movs r4, #0
00054fa6  04 30                                            adds r0, #4
00054fa8  05 90                                            str r0, [sp, #0x14]
00054faa  0f a8                                            add r0, sp, #0x3c
00054fac  04 30                                            adds r0, #4
00054fae  08 90                                            str r0, [sp, #0x20]
00054fb0  df f8 a0 07                                      ldr.w r0, [pc, #0x7a0]
00054fb4  78 44                                            add r0, pc
00054fb6  00 68                                            ldr r0, [r0]
00054fb8  06 90                                            str r0, [sp, #0x18]
00054fba  32 e0                                            b #0x55022
00054fbc  09 29                                            cmp r1, #9
00054fbe  0a d1                                            bne #0x54fd6
00054fc0  40 69                                            ldr r0, [r0, #0x14]
00054fc2  40 68                                            ldr r0, [r0, #4]
00054fc4  07 28                                            cmp r0, #7
00054fc6  06 d8                                            bhi #0x54fd6
00054fc8  01 21                                            movs r1, #1
00054fca  01 fa 00 f0                                      lsl.w r0, r1, r0
00054fce  10 f0 97 0f                                      tst.w r0, #0x97
00054fd2  40 f0 43 82                                      bne.w #0x5545c
00054fd6  df f8 d8 27                                      ldr.w r2, [pc, #0x7d8]
00054fda  12 a8                                            add r0, sp, #0x48
00054fdc  41 46                                            mov r1, r8
00054fde  7a 44                                            add r2, pc
00054fe0  dd f7 6a ec                                      blx #0x328b8
00054fe4  3a e2                                            b #0x5545c
00054fe6  00 2e                                            cmp r6, #0
00054fe8  18 bf                                            it ne
00054fea  04 36                                            addne r6, #4
00054fec  32 60                                            str r2, [r6]
00054fee  88 68                                            ldr r0, [r1, #8]
00054ff0  70 60                                            str r0, [r6, #4]
00054ff2  88 68                                            ldr r0, [r1, #8]
00054ff4  06 60                                            str r6, [r0]
00054ff6  8e 60                                            str r6, [r1, #8]
00054ff8  b5 e2                                            b #0x55566
00054ffa  00 f0 2f 81                                      beq.w #0x5525c
00054ffe  00 68                                            ldr r0, [r0]
00055000  df f8 80 37                                      ldr.w r3, [pc, #0x780]
00055004  df f8 80 27                                      ldr.w r2, [pc, #0x780]
00055008  40 68                                            ldr r0, [r0, #4]
0005500a  7b 44                                            add r3, pc
0005500c  c9 68                                            ldr r1, [r1, #0xc]
0005500e  7a 44                                            add r2, pc
00055010  09 28                                            cmp r0, #9
00055012  0f f2 4c 70                                      addw r0, pc, #0x74c
00055016  00 91                                            str r1, [sp]
00055018  41 46                                            mov r1, r8
0005501a  08 bf                                            it eq
0005501c  03 46                                            moveq r3, r0
0005501e  12 a8                                            add r0, sp, #0x48
00055020  64 e1                                            b #0x552ec
00055022  ba f1 00 0f                                      cmp.w sl, #0
00055026  1c bf                                            itt ne
00055028  da f8 04 00                                      ldrne.w r0, [sl, #4]
0005502c  0a 28                                            cmpne r0, #0xa
0005502e  0d d1                                            bne #0x5504c
00055030  17 9e                                            ldr r6, [sp, #0x5c]
00055032  db f8 08 30                                      ldr.w r3, [fp, #8]
00055036  c6 b3                                            cbz r6, #0x550aa
00055038  df f8 38 27                                      ldr.w r2, [pc, #0x738]
0005503c  12 a8                                            add r0, sp, #0x48
0005503e  00 93                                            str r3, [sp]
00055040  41 46                                            mov r1, r8
00055042  7a 44                                            add r2, pc
00055044  33 46                                            mov r3, r6
00055046  dd f7 38 ec                                      blx #0x328b8
0005504a  e1 e2                                            b #0x55610
0005504c  07 94                                            str r4, [sp, #0x1c]
0005504e  12 a8                                            add r0, sp, #0x48
00055050  db f8 0c 20                                      ldr.w r2, [fp, #0xc]
00055054  51 46                                            mov r1, sl
00055056  43 46                                            mov r3, r8
00055058  ff f7 f2 fb                                      bl #0x54840
0005505c  04 46                                            mov r4, r0
0005505e  40 46                                            mov r0, r8
00055060  44 21                                            movs r1, #0x44
00055062  dd f7 5e eb                                      blx #0x32720
00055066  06 99                                            ldr r1, [sp, #0x18]
00055068  06 46                                            mov r6, r0
0005506a  dd f7 4a ec                                      blx #0x32900
0005506e  28 6a                                            ldr r0, [r5, #0x20]
00055070  21 46                                            mov r1, r4
00055072  db f8 08 20                                      ldr.w r2, [fp, #8]
00055076  00 23                                            movs r3, #0
00055078  90 f8 28 00                                      ldrb.w r0, [r0, #0x28]
0005507c  00 f0 03 00                                      and r0, r0, #3
00055080  00 90                                            str r0, [sp]
00055082  30 46                                            mov r0, r6
00055084  dd f7 78 ec                                      blx #0x32978
00055088  28 6a                                            ldr r0, [r5, #0x20]
0005508a  00 6a                                            ldr r0, [r0, #0x20]
0005508c  10 f0 10 0f                                      tst.w r0, #0x10
00055090  1c d0                                            beq #0x550cc
00055092  81 06                                            lsls r1, r0, #0x1a
00055094  11 d4                                            bmi #0x550ba
00055096  40 06                                            lsls r0, r0, #0x19
00055098  18 d5                                            bpl #0x550cc
0005509a  df f8 58 27                                      ldr.w r2, [pc, #0x758]
0005509e  12 a8                                            add r0, sp, #0x48
000550a0  db f8 08 30                                      ldr.w r3, [fp, #8]
000550a4  41 46                                            mov r1, r8
000550a6  7a 44                                            add r2, pc
000550a8  0e e0                                            b #0x550c8
000550aa  df f8 c4 26                                      ldr.w r2, [pc, #0x6c4]
000550ae  12 a8                                            add r0, sp, #0x48
000550b0  41 46                                            mov r1, r8
000550b2  7a 44                                            add r2, pc
000550b4  dd f7 00 ec                                      blx #0x328b8
000550b8  aa e2                                            b #0x55610
000550ba  df f8 3c 27                                      ldr.w r2, [pc, #0x73c]
000550be  12 a8                                            add r0, sp, #0x48
000550c0  db f8 08 30                                      ldr.w r3, [fp, #8]
000550c4  41 46                                            mov r1, r8
000550c6  7a 44                                            add r2, pc
000550c8  dd f7 f6 eb                                      blx #0x328b8
000550cc  98 f8 7c 10                                      ldrb.w r1, [r8, #0x7c]
000550d0  82 20                                            movs r0, #0x82
000550d2  d8 f8 80 20                                      ldr.w r2, [r8, #0x80]
000550d6  00 29                                            cmp r1, #0
000550d8  18 bf                                            it ne
000550da  4f f4 96 70                                      movne.w r0, #0x12c
000550de  82 42                                            cmp r2, r0
000550e0  30 46                                            mov r0, r6
000550e2  09 90                                            str r0, [sp, #0x24]
000550e4  45 d2                                            bhs #0x55172
000550e6  4f f4 a5 70                                      mov.w r0, #0x14a
000550ea  00 29                                            cmp r1, #0
000550ec  18 bf                                            it ne
000550ee  4f f4 96 70                                      movne.w r0, #0x12c
000550f2  82 42                                            cmp r2, r0
000550f4  3d d2                                            bhs #0x55172
000550f6  98 f8 9c 01                                      ldrb.w r0, [r8, #0x19c]
000550fa  d0 bb                                            cbnz r0, #0x55172
000550fc  98 f8 a8 01                                      ldrb.w r0, [r8, #0x1a8]
00055100  b8 bb                                            cbnz r0, #0x55172
00055102  11 b9                                            cbnz r1, #0x5510a
00055104  50 08                                            lsrs r0, r2, #1
00055106  cc 28                                            cmp r0, #0xcc
00055108  33 d8                                            bhi #0x55172
0005510a  98 f8 e0 01                                      ldrb.w r0, [r8, #0x1e0]
0005510e  80 bb                                            cbnz r0, #0x55172
00055110  98 f8 a0 01                                      ldrb.w r0, [r8, #0x1a0]
00055114  68 bb                                            cbnz r0, #0x55172
00055116  28 6a                                            ldr r0, [r5, #0x20]
00055118  00 6a                                            ldr r0, [r0, #0x20]
0005511a  10 f0 40 0f                                      tst.w r0, #0x40
0005511e  13 d0                                            beq #0x55148
00055120  db f8 08 60                                      ldr.w r6, [fp, #8]
00055124  00 29                                            cmp r1, #0
00055126  18 bf                                            it ne
00055128  01 21                                            movne r1, #1
0005512a  40 46                                            mov r0, r8
0005512c  dd f7 d0 eb                                      blx #0x328d0
00055130  df f8 48 26                                      ldr.w r2, [pc, #0x648]
00055134  33 46                                            mov r3, r6
00055136  00 90                                            str r0, [sp]
00055138  12 a8                                            add r0, sp, #0x48
0005513a  7a 44                                            add r2, pc
0005513c  41 46                                            mov r1, r8
0005513e  09 9e                                            ldr r6, [sp, #0x24]
00055140  dd f7 ba eb                                      blx #0x328b8
00055144  28 6a                                            ldr r0, [r5, #0x20]
00055146  00 6a                                            ldr r0, [r0, #0x20]
00055148  80 06                                            lsls r0, r0, #0x1a
0005514a  12 d5                                            bpl #0x55172
0005514c  d8 f8 80 20                                      ldr.w r2, [r8, #0x80]
00055150  40 46                                            mov r0, r8
00055152  98 f8 7c 10                                      ldrb.w r1, [r8, #0x7c]
00055156  db f8 08 60                                      ldr.w r6, [fp, #8]
0005515a  dd f7 ba eb                                      blx #0x328d0
0005515e  df f8 18 26                                      ldr.w r2, [pc, #0x618]
00055162  33 46                                            mov r3, r6
00055164  00 90                                            str r0, [sp]
00055166  12 a8                                            add r0, sp, #0x48
00055168  7a 44                                            add r2, pc
0005516a  41 46                                            mov r1, r8
0005516c  09 9e                                            ldr r6, [sp, #0x24]
0005516e  dd f7 a4 eb                                      blx #0x328b8
00055172  28 6a                                            ldr r0, [r5, #0x20]
00055174  12 ab                                            add r3, sp, #0x48
00055176  31 46                                            mov r1, r6
00055178  42 46                                            mov r2, r8
0005517a  20 30                                            adds r0, #0x20
0005517c  cd f8 00 90                                      str.w sb, [sp]
00055180  00 f0 62 fb                                      bl #0x55848
00055184  98 f8 7c 00                                      ldrb.w r0, [r8, #0x7c]
00055188  98 b1                                            cbz r0, #0x551b2
0005518a  28 6a                                            ldr r0, [r5, #0x20]
0005518c  4f f4 80 33                                      mov.w r3, #0x10000
00055190  31 69                                            ldr r1, [r6, #0x10]
00055192  b2 69                                            ldr r2, [r6, #0x18]
00055194  90 f8 28 00                                      ldrb.w r0, [r0, #0x28]
00055198  49 68                                            ldr r1, [r1, #4]
0005519a  00 f0 03 00                                      and r0, r0, #3
0005519e  03 28                                            cmp r0, #3
000551a0  18 bf                                            it ne
000551a2  c3 03                                            lslne r3, r0, #0xf
000551a4  04 29                                            cmp r1, #4
000551a6  18 bf                                            it ne
000551a8  c3 03                                            lslne r3, r0, #0xf
000551aa  22 f4 c0 30                                      bic r0, r2, #0x18000
000551ae  18 43                                            orrs r0, r3
000551b0  b0 61                                            str r0, [r6, #0x18]
000551b2  28 6a                                            ldr r0, [r5, #0x20]
000551b4  90 f8 20 00                                      ldrb.w r0, [r0, #0x20]
000551b8  c0 07                                            lsls r0, r0, #0x1f
000551ba  0d d0                                            beq #0x551d8
000551bc  d8 f8 88 10                                      ldr.w r1, [r8, #0x88]
000551c0  30 46                                            mov r0, r6
000551c2  00 f0 1b fb                                      bl #0x557fc
000551c6  38 b9                                            cbnz r0, #0x551d8
000551c8  df f8 24 26                                      ldr.w r2, [pc, #0x624]
000551cc  12 a8                                            add r0, sp, #0x48
000551ce  73 69                                            ldr r3, [r6, #0x14]
000551d0  41 46                                            mov r1, r8
000551d2  7a 44                                            add r2, pc
000551d4  dd f7 70 eb                                      blx #0x328b8
000551d8  d8 f8 54 01                                      ldr.w r0, [r8, #0x154]
000551dc  90 b1                                            cbz r0, #0x55204
000551de  28 6a                                            ldr r0, [r5, #0x20]
000551e0  00 6a                                            ldr r0, [r0, #0x20]
000551e2  10 f0 08 0f                                      tst.w r0, #8
000551e6  48 d1                                            bne #0x5527a
000551e8  81 05                                            lsls r1, r0, #0x16
000551ea  4d d4                                            bmi #0x55288
000551ec  c1 06                                            lsls r1, r0, #0x1b
000551ee  52 d4                                            bmi #0x55296
000551f0  81 06                                            lsls r1, r0, #0x1a
000551f2  6e d4                                            bmi #0x552d2
000551f4  40 06                                            lsls r0, r0, #0x19
000551f6  7b d5                                            bpl #0x552f0
000551f8  df f8 ec 05                                      ldr.w r0, [pc, #0x5ec]
000551fc  0f f2 5c 53                                      addw r3, pc, #0x55c
00055200  78 44                                            add r0, pc
00055202  6b e0                                            b #0x552dc
00055204  30 46                                            mov r0, r6
00055206  50 f8 18 1f                                      ldr r1, [r0, #0x18]!
0005520a  01 f4 f0 52                                      and r2, r1, #0x1e00
0005520e  92 f4 80 6f                                      teq.w r2, #0x400
00055212  6d d1                                            bne #0x552f0
00055214  02 79                                            ldrb r2, [r0, #4]
00055216  41 f0 01 01                                      orr r1, r1, #1
0005521a  01 60                                            str r1, [r0]
0005521c  02 71                                            strb r2, [r0, #4]
0005521e  d8 f8 88 00                                      ldr.w r0, [r8, #0x88]
00055222  01 28                                            cmp r0, #1
00055224  3e d0                                            beq #0x552a4
00055226  00 28                                            cmp r0, #0
00055228  62 d1                                            bne #0x552f0
0005522a  06 f1 10 00                                      add.w r0, r6, #0x10
0005522e  01 46                                            mov r1, r0
00055230  00 e0                                            b #0x55234
00055232  14 31                                            adds r1, #0x14
00055234  09 68                                            ldr r1, [r1]
00055236  4a 68                                            ldr r2, [r1, #4]
00055238  09 2a                                            cmp r2, #9
0005523a  fa d0                                            beq #0x55232
0005523c  02 2a                                            cmp r2, #2
0005523e  bf f4 dc ae                                      bhs.w #0x54ffa
00055242  98 f8 7c 20                                      ldrb.w r2, [r8, #0x7c]
00055246  d8 f8 80 30                                      ldr.w r3, [r8, #0x80]
0005524a  00 2a                                            cmp r2, #0
0005524c  4f f0 78 02                                      mov.w r2, #0x78
00055250  18 bf                                            it ne
00055252  4f f4 96 72                                      movne.w r2, #0x12c
00055256  93 42                                            cmp r3, r2
00055258  ff f4 d1 ae                                      blo.w #0x54ffe
0005525c  00 68                                            ldr r0, [r0]
0005525e  40 68                                            ldr r0, [r0, #4]
00055260  09 28                                            cmp r0, #9
00055262  45 d1                                            bne #0x552f0
00055264  df f8 24 05                                      ldr.w r0, [pc, #0x524]
00055268  12 ab                                            add r3, sp, #0x48
0005526a  96 21                                            movs r1, #0x96
0005526c  00 22                                            movs r2, #0
0005526e  78 44                                            add r0, pc
00055270  00 90                                            str r0, [sp]
00055272  40 46                                            mov r0, r8
00055274  dd f7 e6 eb                                      blx #0x32a44
00055278  3a e0                                            b #0x552f0
0005527a  df f8 54 05                                      ldr.w r0, [pc, #0x554]
0005527e  df f8 4c 35                                      ldr.w r3, [pc, #0x54c]
00055282  78 44                                            add r0, pc
00055284  7b 44                                            add r3, pc
00055286  29 e0                                            b #0x552dc
00055288  df f8 4c 05                                      ldr.w r0, [pc, #0x54c]
0005528c  df f8 44 35                                      ldr.w r3, [pc, #0x544]
00055290  78 44                                            add r0, pc
00055292  7b 44                                            add r3, pc
00055294  22 e0                                            b #0x552dc
00055296  df f8 48 05                                      ldr.w r0, [pc, #0x548]
0005529a  df f8 40 35                                      ldr.w r3, [pc, #0x540]
0005529e  78 44                                            add r0, pc
000552a0  7b 44                                            add r3, pc
000552a2  1b e0                                            b #0x552dc
000552a4  30 69                                            ldr r0, [r6, #0x10]
000552a6  40 68                                            ldr r0, [r0, #4]
000552a8  09 28                                            cmp r0, #9
000552aa  06 d0                                            beq #0x552ba
000552ac  df f8 d0 24                                      ldr.w r2, [pc, #0x4d0]
000552b0  12 a8                                            add r0, sp, #0x48
000552b2  41 46                                            mov r1, r8
000552b4  7a 44                                            add r2, pc
000552b6  dd f7 00 eb                                      blx #0x328b8
000552ba  12 ab                                            add r3, sp, #0x48
000552bc  0e cb                                            ldm r3, {r1, r2, r3}
000552be  dd e9 15 06                                      ldrd r0, r6, [sp, #0x54]
000552c2  cd e9 00 06                                      strd r0, r6, [sp]
000552c6  40 46                                            mov r0, r8
000552c8  09 9e                                            ldr r6, [sp, #0x24]
000552ca  02 96                                            str r6, [sp, #8]
000552cc  01 f0 2c f8                                      bl #0x56328
000552d0  0e e0                                            b #0x552f0
000552d2  df f8 10 05                                      ldr.w r0, [pc, #0x510]
000552d6  0f f2 80 43                                      addw r3, pc, #0x480
000552da  78 44                                            add r0, pc
000552dc  df f8 0c 25                                      ldr.w r2, [pc, #0x50c]
000552e0  71 69                                            ldr r1, [r6, #0x14]
000552e2  cd e9 00 10                                      strd r1, r0, [sp]
000552e6  12 a8                                            add r0, sp, #0x48
000552e8  7a 44                                            add r2, pc
000552ea  41 46                                            mov r1, r8
000552ec  dd f7 e4 ea                                      blx #0x328b8
000552f0  98 f8 7c 00                                      ldrb.w r0, [r8, #0x7c]
000552f4  82 22                                            movs r2, #0x82
000552f6  d8 f8 80 10                                      ldr.w r1, [r8, #0x80]
000552fa  00 28                                            cmp r0, #0
000552fc  18 bf                                            it ne
000552fe  4f f4 96 72                                      movne.w r2, #0x12c
00055302  91 42                                            cmp r1, r2
00055304  2d d3                                            blo #0x55362
00055306  30 69                                            ldr r0, [r6, #0x10]
00055308  dd f7 10 ed                                      blx #0x32d2c
0005530c  01 28                                            cmp r0, #1
0005530e  26 d1                                            bne #0x5535e
00055310  b0 69                                            ldr r0, [r6, #0x18]
00055312  00 f4 c0 41                                      and r1, r0, #0x6000
00055316  91 f4 80 4f                                      teq.w r1, #0x4000
0005531a  20 d0                                            beq #0x5535e
0005531c  00 f4 f0 51                                      and r1, r0, #0x1e00
00055320  d8 f8 88 00                                      ldr.w r0, [r8, #0x88]
00055324  91 f4 80 6f                                      teq.w r1, #0x400
00055328  08 bf                                            it eq
0005532a  02 28                                            cmpeq r0, #2
0005532c  07 d0                                            beq #0x5533e
0005532e  91 f4 c0 6f                                      teq.w r1, #0x600
00055332  08 bf                                            it eq
00055334  00 28                                            cmpeq r0, #0
00055336  12 d1                                            bne #0x5535e
00055338  98 f8 7c 10                                      ldrb.w r1, [r8, #0x7c]
0005533c  91 b1                                            cbz r1, #0x55364
0005533e  00 28                                            cmp r0, #0
00055340  df f8 80 04                                      ldr.w r0, [pc, #0x480]
00055344  df f8 78 34                                      ldr.w r3, [pc, #0x478]
00055348  41 46                                            mov r1, r8
0005534a  df f8 7c 24                                      ldr.w r2, [pc, #0x47c]
0005534e  78 44                                            add r0, pc
00055350  7b 44                                            add r3, pc
00055352  08 bf                                            it eq
00055354  03 46                                            moveq r3, r0
00055356  12 a8                                            add r0, sp, #0x48
00055358  7a 44                                            add r2, pc
0005535a  dd f7 ae ea                                      blx #0x328b8
0005535e  98 f8 7c 00                                      ldrb.w r0, [r8, #0x7c]
00055362  30 bb                                            cbnz r0, #0x553b2
00055364  d8 f8 80 00                                      ldr.w r0, [r8, #0x80]
00055368  82 28                                            cmp r0, #0x82
0005536a  22 d3                                            blo #0x553b2
0005536c  28 6a                                            ldr r0, [r5, #0x20]
0005536e  20 30                                            adds r0, #0x20
00055370  dd f7 e2 ec                                      blx #0x32d38
00055374  01 28                                            cmp r0, #1
00055376  1c d1                                            bne #0x553b2
00055378  28 6a                                            ldr r0, [r5, #0x20]
0005537a  10 f8 20 1f                                      ldrb r1, [r0, #0x20]!
0005537e  11 f0 10 0f                                      tst.w r1, #0x10
00055382  16 d0                                            beq #0x553b2
00055384  dd f7 de ec                                      blx #0x32d44
00055388  03 46                                            mov r3, r0
0005538a  28 6a                                            ldr r0, [r5, #0x20]
0005538c  df f8 04 14                                      ldr.w r1, [pc, #0x404]
00055390  df f8 04 24                                      ldr.w r2, [pc, #0x404]
00055394  00 6a                                            ldr r0, [r0, #0x20]
00055396  79 44                                            add r1, pc
00055398  7a 44                                            add r2, pc
0005539a  10 f0 80 0f                                      tst.w r0, #0x80
0005539e  df f8 f0 03                                      ldr.w r0, [pc, #0x3f0]
000553a2  78 44                                            add r0, pc
000553a4  08 bf                                            it eq
000553a6  08 46                                            moveq r0, r1
000553a8  41 46                                            mov r1, r8
000553aa  00 90                                            str r0, [sp]
000553ac  12 a8                                            add r0, sp, #0x48
000553ae  dd f7 84 ea                                      blx #0x328b8
000553b2  98 f8 7c 00                                      ldrb.w r0, [r8, #0x7c]
000553b6  d8 f8 80 10                                      ldr.w r1, [r8, #0x80]
000553ba  00 28                                            cmp r0, #0
000553bc  4f f0 82 00                                      mov.w r0, #0x82
000553c0  18 bf                                            it ne
000553c2  4f f4 96 70                                      movne.w r0, #0x12c
000553c6  81 42                                            cmp r1, r0
000553c8  26 d3                                            blo #0x55418
000553ca  28 6a                                            ldr r0, [r5, #0x20]
000553cc  20 30                                            adds r0, #0x20
000553ce  dd f7 b4 ec                                      blx #0x32d38
000553d2  01 28                                            cmp r0, #1
000553d4  20 d1                                            bne #0x55418
000553d6  28 6a                                            ldr r0, [r5, #0x20]
000553d8  20 30                                            adds r0, #0x20
000553da  dd f7 b4 ec                                      blx #0x32d44
000553de  03 46                                            mov r3, r0
000553e0  d8 f8 88 00                                      ldr.w r0, [r8, #0x88]
000553e4  02 28                                            cmp r0, #2
000553e6  0b d0                                            beq #0x55400
000553e8  b0 b9                                            cbnz r0, #0x55418
000553ea  28 6a                                            ldr r0, [r5, #0x20]
000553ec  90 f8 20 00                                      ldrb.w r0, [r0, #0x20]
000553f0  80 06                                            lsls r0, r0, #0x1a
000553f2  11 d5                                            bpl #0x55418
000553f4  df f8 c4 23                                      ldr.w r2, [pc, #0x3c4]
000553f8  12 a8                                            add r0, sp, #0x48
000553fa  41 46                                            mov r1, r8
000553fc  7a 44                                            add r2, pc
000553fe  09 e0                                            b #0x55414
00055400  28 6a                                            ldr r0, [r5, #0x20]
00055402  90 f8 20 00                                      ldrb.w r0, [r0, #0x20]
00055406  40 06                                            lsls r0, r0, #0x19
00055408  06 d5                                            bpl #0x55418
0005540a  df f8 ac 23                                      ldr.w r2, [pc, #0x3ac]
0005540e  12 a8                                            add r0, sp, #0x48
00055410  41 46                                            mov r1, r8
00055412  7a 44                                            add r2, pc
00055414  dd f7 50 ea                                      blx #0x328b8
00055418  28 6a                                            ldr r0, [r5, #0x20]
0005541a  90 f8 28 00                                      ldrb.w r0, [r0, #0x28]
0005541e  00 f0 03 01                                      and r1, r0, #3
00055422  03 29                                            cmp r1, #3
00055424  0b d0                                            beq #0x5543e
00055426  e3 48                                            ldr r0, [pc, #0x38c]
00055428  12 ab                                            add r3, sp, #0x48
0005542a  82 21                                            movs r1, #0x82
0005542c  64 22                                            movs r2, #0x64
0005542e  78 44                                            add r0, pc
00055430  00 90                                            str r0, [sp]
00055432  40 46                                            mov r0, r8
00055434  dd f7 06 eb                                      blx #0x32a44
00055438  28 6a                                            ldr r0, [r5, #0x20]
0005543a  90 f8 28 00                                      ldrb.w r0, [r0, #0x28]
0005543e  00 f0 03 00                                      and r0, r0, #3
00055442  03 28                                            cmp r0, #3
00055444  0a d0                                            beq #0x5545c
00055446  30 69                                            ldr r0, [r6, #0x10]
00055448  41 68                                            ldr r1, [r0, #4]
0005544a  09 29                                            cmp r1, #9
0005544c  3f f6 c3 ad                                      bhi.w #0x54fd6
00055450  01 22                                            movs r2, #1
00055452  8a 40                                            lsls r2, r1
00055454  12 f0 97 0f                                      tst.w r2, #0x97
00055458  3f f4 b0 ad                                      beq.w #0x54fbc
0005545c  20 46                                            mov r0, r4
0005545e  dd f7 2a ec                                      blx #0x32cb4
00055462  01 28                                            cmp r0, #1
00055464  0a d1                                            bne #0x5547c
00055466  28 6a                                            ldr r0, [r5, #0x20]
00055468  90 f8 21 00                                      ldrb.w r0, [r0, #0x21]
0005546c  80 07                                            lsls r0, r0, #0x1e
0005546e  05 d4                                            bmi #0x5547c
00055470  ca 4a                                            ldr r2, [pc, #0x328]
00055472  12 a8                                            add r0, sp, #0x48
00055474  41 46                                            mov r1, r8
00055476  7a 44                                            add r2, pc
00055478  dd f7 1e ea                                      blx #0x328b8
0005547c  00 24                                            movs r4, #0
0005547e  08 98                                            ldr r0, [sp, #0x20]
00055480  10 94                                            str r4, [sp, #0x40]
00055482  0f 90                                            str r0, [sp, #0x3c]
00055484  0f a8                                            add r0, sp, #0x3c
00055486  11 90                                            str r0, [sp, #0x44]
00055488  70 69                                            ldr r0, [r6, #0x14]
0005548a  60 b1                                            cbz r0, #0x554a6
0005548c  01 78                                            ldrb r1, [r0]
0005548e  67 29                                            cmp r1, #0x67
00055490  04 bf                                            itt eq
00055492  41 78                                            ldrbeq r1, [r0, #1]
00055494  6c 29                                            cmpeq r1, #0x6c
00055496  01 d0                                            beq #0x5549c
00055498  00 24                                            movs r4, #0
0005549a  04 e0                                            b #0x554a6
0005549c  80 78                                            ldrb r0, [r0, #2]
0005549e  00 24                                            movs r4, #0
000554a0  5f 28                                            cmp r0, #0x5f
000554a2  08 bf                                            it eq
000554a4  01 24                                            moveq r4, #1
000554a6  1b e9 4f 00                                      ldmdb fp, {r0, r1, r2, r3, r6}
000554aa  cd e9 00 60                                      strd r6, r0, [sp]
000554ae  cd e9 02 89                                      strd r8, sb, [sp, #8]
000554b2  09 98                                            ldr r0, [sp, #0x24]
000554b4  00 f0 92 ff                                      bl #0x563dc
000554b8  06 46                                            mov r6, r0
000554ba  e6 b1                                            cbz r6, #0x554f6
000554bc  d1 46                                            mov sb, sl
000554be  06 f1 18 0a                                      add.w sl, r6, #0x18
000554c2  01 2c                                            cmp r4, #1
000554c4  0e d1                                            bne #0x554e4
000554c6  da f8 00 00                                      ldr.w r0, [sl]
000554ca  00 f4 c0 70                                      and r0, r0, #0x180
000554ce  90 f0 80 0f                                      teq.w r0, #0x80
000554d2  07 d1                                            bne #0x554e4
000554d4  09 98                                            ldr r0, [sp, #0x24]
000554d6  41 46                                            mov r1, r8
000554d8  b4 4a                                            ldr r2, [pc, #0x2d0]
000554da  43 69                                            ldr r3, [r0, #0x14]
000554dc  12 a8                                            add r0, sp, #0x48
000554de  7a 44                                            add r2, pc
000554e0  dd f7 ea e9                                      blx #0x328b8
000554e4  da f8 00 00                                      ldr.w r0, [sl]
000554e8  20 f4 c0 70                                      bic r0, r0, #0x180
000554ec  ca f8 00 00                                      str.w r0, [sl]
000554f0  ca 46                                            mov sl, sb
000554f2  4f f0 00 09                                      mov.w sb, #0
000554f6  db f8 10 00                                      ldr.w r0, [fp, #0x10]
000554fa  07 9c                                            ldr r4, [sp, #0x1c]
000554fc  68 b1                                            cbz r0, #0x5551a
000554fe  09 9b                                            ldr r3, [sp, #0x24]
00055500  30 46                                            mov r0, r6
00055502  2a 6a                                            ldr r2, [r5, #0x20]
00055504  ab f1 18 01                                      sub.w r1, fp, #0x18
00055508  cd f8 00 80                                      str.w r8, [sp]
0005550c  00 2e                                            cmp r6, #0
0005550e  08 bf                                            it eq
00055510  18 46                                            moveq r0, r3
00055512  0f ab                                            add r3, sp, #0x3c
00055514  dd f7 1c ec                                      blx #0x32d50
00055518  04 46                                            mov r4, r0
0005551a  28 6a                                            ldr r0, [r5, #0x20]
0005551c  90 f8 20 00                                      ldrb.w r0, [r0, #0x20]
00055520  40 07                                            lsls r0, r0, #0x1d
00055522  0a d5                                            bpl #0x5553a
00055524  db f8 10 00                                      ldr.w r0, [fp, #0x10]
00055528  38 b9                                            cbnz r0, #0x5553a
0005552a  9f 4a                                            ldr r2, [pc, #0x27c]
0005552c  12 a8                                            add r0, sp, #0x48
0005552e  db f8 08 30                                      ldr.w r3, [fp, #8]
00055532  41 46                                            mov r1, r8
00055534  7a 44                                            add r2, pc
00055536  dd f7 c0 e9                                      blx #0x328b8
0005553a  98 f8 7c 00                                      ldrb.w r0, [r8, #0x7c]
0005553e  88 b1                                            cbz r0, #0x55564
00055540  09 99                                            ldr r1, [sp, #0x24]
00055542  30 46                                            mov r0, r6
00055544  00 2e                                            cmp r6, #0
00055546  08 bf                                            it eq
00055548  08 46                                            moveq r0, r1
0005554a  00 69                                            ldr r0, [r0, #0x10]
0005554c  41 68                                            ldr r1, [r0, #4]
0005554e  09 29                                            cmp r1, #9
00055550  04 bf                                            itt eq
00055552  00 69                                            ldreq r0, [r0, #0x10]
00055554  00 28                                            cmpeq r0, #0
00055556  05 d1                                            bne #0x55564
00055558  92 4a                                            ldr r2, [pc, #0x248]
0005555a  12 a8                                            add r0, sp, #0x48
0005555c  41 46                                            mov r1, r8
0005555e  7a 44                                            add r2, pc
00055560  dd f7 aa e9                                      blx #0x328b8
00055564  9e b1                                            cbz r6, #0x5558e
00055566  0f 98                                            ldr r0, [sp, #0x3c]
00055568  08 99                                            ldr r1, [sp, #0x20]
0005556a  88 42                                            cmp r0, r1
0005556c  50 d0                                            beq #0x55610
0005556e  05 99                                            ldr r1, [sp, #0x14]
00055570  0a 46                                            mov r2, r1
00055572  51 68                                            ldr r1, [r2, #4]
00055574  08 60                                            str r0, [r1]
00055576  0f 98                                            ldr r0, [sp, #0x3c]
00055578  41 60                                            str r1, [r0, #4]
0005557a  11 98                                            ldr r0, [sp, #0x44]
0005557c  50 60                                            str r0, [r2, #4]
0005557e  02 60                                            str r2, [r0]
00055580  08 98                                            ldr r0, [sp, #0x20]
00055582  cd f8 40 90                                      str.w sb, [sp, #0x40]
00055586  0f 90                                            str r0, [sp, #0x3c]
00055588  0f a8                                            add r0, sp, #0x3c
0005558a  11 90                                            str r0, [sp, #0x44]
0005558c  40 e0                                            b #0x55610
0005558e  12 ae                                            add r6, sp, #0x48
00055590  a1 46                                            mov sb, r4
00055592  4e ce                                            ldm r6, {r1, r2, r3, r6}
00055594  db f8 08 00                                      ldr.w r0, [fp, #8]
00055598  16 9c                                            ldr r4, [sp, #0x58]
0005559a  cd e9 00 64                                      strd r6, r4, [sp]
0005559e  cd f8 08 80                                      str.w r8, [sp, #8]
000555a2  dd f7 dc eb                                      blx #0x32d5c
000555a6  09 9e                                            ldr r6, [sp, #0x24]
000555a8  d8 f8 14 00                                      ldr.w r0, [r8, #0x14]
000555ac  31 46                                            mov r1, r6
000555ae  dd f7 dc eb                                      blx #0x32d68
000555b2  e8 b1                                            cbz r0, #0x555f0
000555b4  04 98                                            ldr r0, [sp, #0x10]
000555b6  4c 46                                            mov r4, sb
000555b8  4f f0 00 09                                      mov.w sb, #0
000555bc  00 68                                            ldr r0, [r0]
000555be  00 28                                            cmp r0, #0
000555c0  18 bf                                            it ne
000555c2  b0 f1 04 01                                      subsne.w r1, r0, #4
000555c6  0a d0                                            beq #0x555de
000555c8  cb 68                                            ldr r3, [r1, #0xc]
000555ca  0a 1d                                            adds r2, r1, #4
000555cc  43 f0 01 03                                      orr r3, r3, #1
000555d0  11 2b                                            cmp r3, #0x11
000555d2  7f f4 08 ad                                      bne.w #0x54fe6
000555d6  11 68                                            ldr r1, [r2]
000555d8  09 b1                                            cbz r1, #0x555de
000555da  04 39                                            subs r1, #4
000555dc  f4 d1                                            bne #0x555c8
000555de  00 2e                                            cmp r6, #0
000555e0  18 bf                                            it ne
000555e2  04 36                                            addne r6, #4
000555e4  04 99                                            ldr r1, [sp, #0x10]
000555e6  71 60                                            str r1, [r6, #4]
000555e8  30 60                                            str r0, [r6]
000555ea  46 60                                            str r6, [r0, #4]
000555ec  0e 60                                            str r6, [r1]
000555ee  ba e7                                            b #0x55566
000555f0  2e 1d                                            adds r6, r5, #4
000555f2  4f ce                                            ldm r6, {r0, r1, r2, r3, r6}
000555f4  0e 90                                            str r0, [sp, #0x38]
000555f6  0a a8                                            add r0, sp, #0x28
000555f8  4e c0                                            stm r0!, {r1, r2, r3, r6}
000555fa  0a a8                                            add r0, sp, #0x28
000555fc  41 46                                            mov r1, r8
000555fe  68 4a                                            ldr r2, [pc, #0x1a0]
00055600  db f8 08 30                                      ldr.w r3, [fp, #8]
00055604  7a 44                                            add r2, pc
00055606  dd f7 58 e9                                      blx #0x328b8
0005560a  4c 46                                            mov r4, sb
0005560c  4f f0 00 09                                      mov.w sb, #0
00055610  db f8 00 b0                                      ldr.w fp, [fp]
00055614  db f8 00 00                                      ldr.w r0, [fp]
00055618  00 28                                            cmp r0, #0
0005561a  7f f4 02 ad                                      bne.w #0x55022
0005561e  07 e0                                            b #0x55630
00055620  ba f1 00 0f                                      cmp.w sl, #0
00055624  12 d0                                            beq #0x5564c
00055626  da f8 04 00                                      ldr.w r0, [sl, #4]
0005562a  06 28                                            cmp r0, #6
0005562c  16 d1                                            bne #0x5565c
0005562e  00 24                                            movs r4, #0
00055630  4e 48                                            ldr r0, [pc, #0x138]
00055632  18 99                                            ldr r1, [sp, #0x60]
00055634  78 44                                            add r0, pc
00055636  00 68                                            ldr r0, [r0]
00055638  00 68                                            ldr r0, [r0]
0005563a  40 1a                                            subs r0, r0, r1
0005563c  01 bf                                            itttt eq
0005563e  20 46                                            moveq r0, r4
00055640  19 b0                                            addeq sp, #0x64
00055642  bd e8 00 0f                                      popeq.w {r8, sb, sl, fp}
00055646  f0 bd                                            popeq {r4, r5, r6, r7, pc}
00055648  dc f7 0a ed                                      blx #0x32060
0005564c  40 4a                                            ldr r2, [pc, #0x100]
0005564e  12 a8                                            add r0, sp, #0x48
00055650  17 9b                                            ldr r3, [sp, #0x5c]
00055652  41 46                                            mov r1, r8
00055654  7a 44                                            add r2, pc
00055656  dd f7 30 e9                                      blx #0x328b8
0005565a  98 e4                                            b #0x54f8e
0005565c  28 6a                                            ldr r0, [r5, #0x20]
0005565e  01 6e                                            ldr r1, [r0, #0x60]
00055660  90 f8 28 00                                      ldrb.w r0, [r0, #0x28]
00055664  49 6a                                            ldr r1, [r1, #0x24]
00055666  00 f0 03 00                                      and r0, r0, #3
0005566a  03 28                                            cmp r0, #3
0005566c  08 d1                                            bne #0x55680
0005566e  00 29                                            cmp r1, #0
00055670  7f f4 8d ac                                      bne.w #0x54f8e
00055674  12 a8                                            add r0, sp, #0x48
00055676  31 a2                                            adr r2, #0xc4
00055678  41 46                                            mov r1, r8
0005567a  dd f7 30 e9                                      blx #0x328dc
0005567e  86 e4                                            b #0x54f8e
00055680  31 b1                                            cbz r1, #0x55690
00055682  2b 4a                                            ldr r2, [pc, #0xac]
00055684  12 a8                                            add r0, sp, #0x48
00055686  41 46                                            mov r1, r8
00055688  7a 44                                            add r2, pc
0005568a  dd f7 16 e9                                      blx #0x328b8
0005568e  7e e4                                            b #0x54f8e
00055690  28 49                                            ldr r1, [pc, #0xa0]
00055692  29 4a                                            ldr r2, [pc, #0xa4]
00055694  79 44                                            add r1, pc
00055696  17 9e                                            ldr r6, [sp, #0x5c]
00055698  7a 44                                            add r2, pc
0005569a  00 96                                            str r6, [sp]
0005569c  51 f8 20 30                                      ldr.w r3, [r1, r0, lsl #2]
000556a0  12 a8                                            add r0, sp, #0x48
000556a2  41 46                                            mov r1, r8
000556a4  dd f7 1a e9                                      blx #0x328dc
000556a8  ff f7 71 bc                                      b.w #0x54f8e
000556ac  a4 76                                            strb r4, [r4, #0x1a]
000556ae  08 00                                            movs r0, r1
000556b0  61 6c                                            ldr r1, [r4, #0x44]
000556b2  6c 20                                            movs r0, #0x6c
000556b4  75 73                                            strb r5, [r6, #0xd]
000556b6  65 73                                            strb r5, [r4, #0xd]
000556b8  20 6f                                            ldr r0, [r4, #0x70]
000556ba  66 20                                            movs r0, #0x66
000556bc  60 69                                            ldr r0, [r4, #0x14]
000556be  6e 76                                            strb r6, [r5, #0x19]
000556c0  61 72                                            strb r1, [r4, #9]
000556c2  69 61                                            str r1, [r5, #0x14]
000556c4  6e 74                                            strb r6, [r5, #0x11]
000556c6  27 20                                            movs r0, #0x27
000556c8  6b 65                                            str r3, [r5, #0x54]
000556ca  79 77                                            strb r1, [r7, #0x1d]
000556cc  6f 72                                            strb r7, [r5, #9]
000556ce  64 20                                            movs r0, #0x64
000556d0  6d 75                                            strb r5, [r5, #0x15]
000556d2  73 74                                            strb r3, [r6, #0x11]
000556d4  20 62                                            str r0, [r4, #0x20]
000556d6  65 20                                            movs r0, #0x65
000556d8  61 74                                            strb r1, [r4, #0x11]
000556da  20 67                                            str r0, [r4, #0x70]
000556dc  6c 6f                                            ldr r4, [r5, #0x74]
000556de  62 61                                            str r2, [r4, #0x14]
000556e0  6c 20                                            movs r0, #0x6c
000556e2  73 63                                            str r3, [r6, #0x34]
000556e4  6f 70                                            strb r7, [r5, #1]
000556e6  65 00                                            lsls r5, r4, #1
000556e8  52 57                                            ldrsb r2, [r2, r5]
000556ea  06 00                                            movs r6, r0
000556ec  9c 57                                            ldrsb r4, [r3, r6]
000556ee  06 00                                            movs r6, r0
000556f0  75 6e                                            ldr r5, [r6, #0x64]
000556f2  64 65                                            str r4, [r4, #0x54]
000556f4  63 6c                                            ldr r3, [r4, #0x44]
000556f6  61 72                                            strb r1, [r4, #9]
000556f8  65 64                                            str r5, [r4, #0x44]
000556fa  20 76                                            strb r0, [r4, #0x18]
000556fc  61 72                                            strb r1, [r4, #9]
000556fe  69 61                                            str r1, [r5, #0x14]
00055700  62 6c                                            ldr r2, [r4, #0x44]
00055702  65 20                                            movs r0, #0x65
00055704  60 25                                            movs r5, #0x60
00055706  73 27                                            movs r7, #0x73
00055708  20 63                                            str r0, [r4, #0x30]
0005570a  61 6e                                            ldr r1, [r4, #0x64]
0005570c  6e 6f                                            ldr r6, [r5, #0x74]
0005570e  74 20                                            movs r0, #0x74
00055710  62 65                                            str r2, [r4, #0x54]
00055712  20 6d                                            ldr r0, [r4, #0x50]
00055714  61 72                                            strb r1, [r4, #9]
00055716  6b 65                                            str r3, [r5, #0x54]
00055718  64 20                                            movs r0, #0x64
0005571a  69 6e                                            ldr r1, [r5, #0x64]
0005571c  76 61                                            str r6, [r6, #0x14]
0005571e  72 69                                            ldr r2, [r6, #0x14]
00055720  61 6e                                            ldr r1, [r4, #0x64]
00055722  74 00                                            lsls r4, r6, #1
00055724  8b 57                                            ldrsb r3, [r1, r6]
00055726  06 00                                            movs r6, r0
00055728  dd 57                                            ldrsb r5, [r3, r7]
0005572a  06 00                                            movs r6, r0
0005572c  5d 57                                            ldrsb r5, [r3, r5]
0005572e  06 00                                            movs r6, r0
00055730  93 50                                            str r3, [r2, r2]
00055732  06 00                                            movs r6, r0
00055734  9c 01                                            lsls r4, r3, #6
00055736  08 00                                            movs r0, r1
00055738  ca 50                                            str r2, [r1, r3]
0005573a  06 00                                            movs r6, r0
0005573c  65 6d                                            ldr r5, [r4, #0x54]
0005573e  70 74                                            strb r0, [r6, #0x11]
00055740  79 20                                            movs r0, #0x79
00055742  64 65                                            str r4, [r4, #0x54]
00055744  63 6c                                            ldr r3, [r4, #0x44]
00055746  61 72                                            strb r1, [r4, #9]
00055748  61 74                                            strb r1, [r4, #0x11]
0005574a  69 6f                                            ldr r1, [r5, #0x74]
0005574c  6e 00                                            lsls r6, r5, #1
0005574e  00 00                                            movs r0, r0
00055750  a0 50                                            str r0, [r4, r2]
00055752  06 00                                            movs r6, r0
00055754  84 75                                            strb r4, [r0, #0x16]
00055756  08 00                                            movs r0, r1
00055758  69 6e                                            ldr r1, [r5, #0x64]
0005575a  00 00                                            movs r0, r0
0005575c  6f 75                                            strb r7, [r5, #0x15]
0005575e  74 00                                            lsls r4, r6, #1
00055760  61 72                                            strb r1, [r4, #9]
00055762  72 61                                            str r2, [r6, #0x14]
00055764  79 20                                            movs r0, #0x79
00055766  6f 66                                            str r7, [r5, #0x64]
00055768  20 00                                            movs r0, r4
0005576a  00 00                                            movs r0, r0
0005576c  80 6e                                            ldr r0, [r0, #0x68]
0005576e  08 00                                            movs r0, r1
00055770  3a 57                                            ldrsb r2, [r7, r4]
00055772  06 00                                            movs r6, r0
00055774  81 57                                            ldrsb r1, [r0, r6]
00055776  06 00                                            movs r6, r0
00055778  fb 57                                            ldrsb r3, [r7, r7]
0005577a  06 00                                            movs r6, r0
0005577c  d9 57                                            ldrsb r1, [r3, r7]
0005577e  06 00                                            movs r6, r0
00055780  07 58                                            ldr r7, [r0, r0]
00055782  06 00                                            movs r6, r0
00055784  b5 41                                            sbcs r5, r6
00055786  06 00                                            movs r6, r0
00055788  3e 5a                                            ldrh r6, [r7, r0]
0005578a  06 00                                            movs r6, r0
0005578c  16 58                                            ldr r6, [r2, r0]
0005578e  06 00                                            movs r6, r0
00055790  a7 57                                            ldrsb r7, [r4, r6]
00055792  06 00                                            movs r6, r0
00055794  c6 51                                            str r6, [r0, r7]
00055796  06 00                                            movs r6, r0
00055798  c2 57                                            ldrsb r2, [r0, r7]
0005579a  06 00                                            movs r6, r0
0005579c  f0 57                                            ldrsb r0, [r6, r7]
0005579e  06 00                                            movs r6, r0
000557a0  24 57                                            ldrsb r4, [r4, r4]
000557a2  06 00                                            movs r6, r0
000557a4  94 57                                            ldrsb r4, [r2, r6]
000557a6  06 00                                            movs r6, r0
000557a8  90 57                                            ldrsb r0, [r2, r6]
000557aa  06 00                                            movs r6, r0
000557ac  b2 57                                            ldrsb r2, [r6, r6]
000557ae  06 00                                            movs r6, r0
000557b0  3b 5c                                            ldrb r3, [r7, r0]
000557b2  06 00                                            movs r6, r0
000557b4  ea 70                                            strb r2, [r5, #3]
000557b6  06 00                                            movs r6, r0
000557b8  cb 57                                            ldrsb r3, [r1, r7]
000557ba  06 00                                            movs r6, r0
000557bc  a8 57                                            ldrsb r0, [r5, r6]
000557be  06 00                                            movs r6, r0
000557c0  9f 57                                            ldrsb r7, [r3, r6]
000557c2  06 00                                            movs r6, r0
000557c4  93 57                                            ldrsb r3, [r2, r6]
000557c6  06 00                                            movs r6, r0
000557c8  a6 57                                            ldrsb r6, [r4, r6]
000557ca  06 00                                            movs r6, r0
000557cc  ce 52                                            strh r6, [r1, r3]
000557ce  06 00                                            movs r6, r0
000557d0  3d 3f                                            subs r7, #0x3d
000557d2  06 00                                            movs r6, r0
000557d4  10 53                                            strh r0, [r2, r4]
000557d6  06 00                                            movs r6, r0
000557d8  2f 3f                                            subs r7, #0x2f
000557da  06 00                                            movs r6, r0
000557dc  bc 52                                            strh r4, [r7, r2]
000557de  06 00                                            movs r6, r0
000557e0  21 3f                                            subs r7, #0x21
000557e2  06 00                                            movs r6, r0
000557e4  1f 57                                            ldrsb r7, [r3, r4]
000557e6  06 00                                            movs r6, r0
000557e8  f9 57                                            ldrsb r1, [r7, r7]
000557ea  06 00                                            movs r6, r0
000557ec  30 57                                            ldrsb r0, [r6, r4]
000557ee  06 00                                            movs r6, r0
000557f0  e0 57                                            ldrsb r0, [r4, r7]
000557f2  06 00                                            movs r6, r0
000557f4  eb 57                                            ldrsb r3, [r5, r7]
000557f6  06 00                                            movs r6, r0
000557f8  4a 57                                            ldrsb r2, [r1, r5]
000557fa  06 00                                            movs r6, r0

; FUNCTION 0x0007dde8, declared_size=144, range_size=144, mode=thumb
; class-group: ast_declarator_list
; alias: _ZNK19ast_declarator_list5printEv
; demangled: ast_declarator_list::print() const
; decoder-mode: thumb
0007dde8  f0 b5                                            push {r4, r5, r6, r7, lr}
0007ddea  03 af                                            add r7, sp, #0xc
0007ddec  2d e9 00 0b                                      push.w {r8, sb, fp}
0007ddf0  81 46                                            mov sb, r0
0007ddf2  d9 f8 20 00                                      ldr.w r0, [sb, #0x20]
0007ddf6  18 b1                                            cbz r0, #0x7de00
0007ddf8  01 68                                            ldr r1, [r0]
0007ddfa  09 68                                            ldr r1, [r1]
0007ddfc  88 47                                            blx r1
0007ddfe  08 e0                                            b #0x7de12
0007de00  d9 f8 30 00                                      ldr.w r0, [sb, #0x30]
0007de04  10 b1                                            cbz r0, #0x7de0c
0007de06  16 48                                            ldr r0, [pc, #0x58]
0007de08  78 44                                            add r0, pc
0007de0a  00 e0                                            b #0x7de0e
0007de0c  15 a0                                            adr r0, #0x54
0007de0e  b4 f7 6c ea                                      blx #0x322e8
0007de12  d9 f8 24 00                                      ldr.w r0, [sb, #0x24]
0007de16  01 68                                            ldr r1, [r0]
0007de18  d1 b1                                            cbz r1, #0x7de50
0007de1a  09 f1 28 05                                      add.w r5, sb, #0x28
0007de1e  0f f2 50 08                                      addw r8, pc, #0x50
0007de22  04 46                                            mov r4, r0
0007de24  01 e0                                            b #0x7de2a
0007de26  d9 f8 24 00                                      ldr.w r0, [sb, #0x24]
0007de2a  a8 42                                            cmp r0, r5
0007de2c  08 bf                                            it eq
0007de2e  00 20                                            moveq r0, #0
0007de30  a0 42                                            cmp r0, r4
0007de32  a4 f1 18 06                                      sub.w r6, r4, #0x18
0007de36  1c bf                                            itt ne
0007de38  40 46                                            movne r0, r8
0007de3a  b4 f7 56 ea                                      blxne #0x322e8
0007de3e  54 f8 18 0c                                      ldr r0, [r4, #-0x18]
0007de42  01 68                                            ldr r1, [r0]
0007de44  30 46                                            mov r0, r6
0007de46  88 47                                            blx r1
0007de48  24 68                                            ldr r4, [r4]
0007de4a  20 68                                            ldr r0, [r4]
0007de4c  00 28                                            cmp r0, #0
0007de4e  ea d1                                            bne #0x7de26
0007de50  08 a0                                            adr r0, #0x20
0007de52  bd e8 00 0b                                      pop.w {r8, sb, fp}
0007de56  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0007de5a  32 f0 a5 be                                      b.w #0xb0ba8
0007de5e  00 bf                                            nop
0007de60  c3 26                                            movs r6, #0xc3
0007de62  04 00                                            movs r4, r0
0007de64  70 72                                            strb r0, [r6, #9]
0007de66  65 63                                            str r5, [r4, #0x34]
0007de68  69 73                                            strb r1, [r5, #0xd]
0007de6a  65 20                                            movs r0, #0x65
0007de6c  00 00                                            movs r0, r0
0007de6e  00 00                                            movs r0, r0
0007de70  2c 20                                            movs r0, #0x2c
0007de72  00 00                                            movs r0, r0
0007de74  3b 20                                            movs r0, #0x3b
0007de76  00 00                                            movs r0, r0

; FUNCTION 0x0007de78, declared_size=56, range_size=56, mode=thumb
; class-group: ast_declarator_list
; alias: _ZN19ast_declarator_listC1EP24ast_fully_specified_type
; demangled: ast_declarator_list::ast_declarator_list(ast_fully_specified_type*)
; alias: _ZN19ast_declarator_listC2EP24ast_fully_specified_type
; demangled: ast_declarator_list::ast_declarator_list(ast_fully_specified_type*)
; decoder-mode: thumb
0007de78  b0 b5                                            push {r4, r5, r7, lr}
0007de7a  02 af                                            add r7, sp, #8
0007de7c  05 46                                            mov r5, r0
0007de7e  28 1d                                            adds r0, r5, #4
0007de80  0c 46                                            mov r4, r1
0007de82  14 21                                            movs r1, #0x14
0007de84  b4 f7 ec eb                                      blx #0x32660
0007de88  08 48                                            ldr r0, [pc, #0x20]
0007de8a  00 21                                            movs r1, #0
0007de8c  2a 46                                            mov r2, r5
0007de8e  78 44                                            add r0, pc
0007de90  42 f8 28 1f                                      str r1, [r2, #0x28]!
0007de94  6a 62                                            str r2, [r5, #0x24]
0007de96  05 f1 24 02                                      add.w r2, r5, #0x24
0007de9a  00 68                                            ldr r0, [r0]
0007de9c  ea 62                                            str r2, [r5, #0x2c]
0007de9e  08 30                                            adds r0, #8
0007dea0  29 63                                            str r1, [r5, #0x30]
0007dea2  2c 62                                            str r4, [r5, #0x20]
0007dea4  69 63                                            str r1, [r5, #0x34]
0007dea6  28 60                                            str r0, [r5]
0007dea8  28 46                                            mov r0, r5
0007deaa  b0 bd                                            pop {r4, r5, r7, pc}
0007deac  92 ea 05 00                                      eors.w r0, r2, r5
