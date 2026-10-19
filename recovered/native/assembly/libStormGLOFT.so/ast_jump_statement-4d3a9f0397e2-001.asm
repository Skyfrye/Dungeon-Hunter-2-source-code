; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00056f58, declared_size=964, range_size=964, mode=thumb
; class-group: ast_jump_statement
; alias: _ZN18ast_jump_statement3hirEP9exec_listP22_mesa_glsl_parse_state
; demangled: ast_jump_statement::hir(exec_list*, _mesa_glsl_parse_state*)
; decoder-mode: thumb
00056f58  f0 b5                                            push {r4, r5, r6, r7, lr}
00056f5a  03 af                                            add r7, sp, #0xc
00056f5c  2d e9 00 07                                      push.w {r8, sb, sl}
00056f60  8a b0                                            sub sp, #0x28
00056f62  06 46                                            mov r6, r0
00056f64  bd 48                                            ldr r0, [pc, #0x2f4]
00056f66  15 46                                            mov r5, r2
00056f68  88 46                                            mov r8, r1
00056f6a  78 44                                            add r0, pc
00056f6c  00 68                                            ldr r0, [r0]
00056f6e  00 68                                            ldr r0, [r0]
00056f70  09 90                                            str r0, [sp, #0x24]
00056f72  30 6a                                            ldr r0, [r6, #0x20]
00056f74  03 28                                            cmp r0, #3
00056f76  00 f2 63 81                                      bhi.w #0x57240
00056f7a  df e8 00 f0                                      tbb [pc, r0]
00056f7e  02 1c                                            adds r2, r0, #0
00056f80  7f b8                                            .byte 0x7f, 0xb8
00056f82  d5 f8 60 01                                      ldr.w r0, [r5, #0x160]
00056f86  00 28                                            cmp r0, #0
00056f88  00 f0 e0 80                                      beq.w #0x5714c
00056f8c  d5 f8 60 01                                      ldr.w r0, [r5, #0x160]
00056f90  c8 b1                                            cbz r0, #0x56fc6
00056f92  c1 6a                                            ldr r1, [r0, #0x2c]
00056f94  39 b1                                            cbz r1, #0x56fa6
00056f96  08 68                                            ldr r0, [r1]
00056f98  2a 46                                            mov r2, r5
00056f9a  43 68                                            ldr r3, [r0, #4]
00056f9c  08 46                                            mov r0, r1
00056f9e  41 46                                            mov r1, r8
00056fa0  98 47                                            blx r3
00056fa2  d5 f8 60 01                                      ldr.w r0, [r5, #0x160]
00056fa6  01 6a                                            ldr r1, [r0, #0x20]
00056fa8  02 29                                            cmp r1, #2
00056faa  0c d1                                            bne #0x56fc6
00056fac  41 46                                            mov r1, r8
00056fae  2a 46                                            mov r2, r5
00056fb0  db f7 40 ef                                      blx #0x32e34
00056fb4  07 e0                                            b #0x56fc6
00056fb6  d5 f8 60 01                                      ldr.w r0, [r5, #0x160]
00056fba  20 b9                                            cbnz r0, #0x56fc6
00056fbc  d5 f8 70 01                                      ldr.w r0, [r5, #0x170]
00056fc0  00 28                                            cmp r0, #0
00056fc2  00 f0 03 81                                      beq.w #0x571cc
00056fc6  95 f8 80 01                                      ldrb.w r0, [r5, #0x180]
00056fca  e0 b3                                            cbz r0, #0x57046
00056fcc  30 6a                                            ldr r0, [r6, #0x20]
00056fce  01 28                                            cmp r0, #1
00056fd0  39 d1                                            bne #0x57046
00056fd2  28 46                                            mov r0, r5
00056fd4  1c 21                                            movs r1, #0x1c
00056fd6  d5 f8 6c 91                                      ldr.w sb, [r5, #0x16c]
00056fda  db f7 a2 eb                                      blx #0x32720
00056fde  82 46                                            mov sl, r0
00056fe0  aa 48                                            ldr r0, [pc, #0x2a8]
00056fe2  78 44                                            add r0, pc
00056fe4  06 68                                            ldr r6, [r0]
00056fe6  50 46                                            mov r0, sl
00056fe8  31 46                                            mov r1, r6
00056fea  db f7 8a ec                                      blx #0x32900
00056fee  50 46                                            mov r0, sl
00056ff0  49 46                                            mov r1, sb
00056ff2  db f7 e0 ec                                      blx #0x329b4
00056ff6  28 46                                            mov r0, r5
00056ff8  68 21                                            movs r1, #0x68
00056ffa  db f7 92 eb                                      blx #0x32720
00056ffe  31 46                                            mov r1, r6
00057000  04 46                                            mov r4, r0
00057002  db f7 7e ec                                      blx #0x32900
00057006  20 46                                            mov r0, r4
00057008  01 21                                            movs r1, #1
0005700a  01 22                                            movs r2, #1
0005700c  db f7 22 ee                                      blx #0x32c54
00057010  28 46                                            mov r0, r5
00057012  20 21                                            movs r1, #0x20
00057014  db f7 84 eb                                      blx #0x32720
00057018  31 46                                            mov r1, r6
0005701a  05 46                                            mov r5, r0
0005701c  db f7 70 ec                                      blx #0x32900
00057020  28 46                                            mov r0, r5
00057022  51 46                                            mov r1, sl
00057024  22 46                                            mov r2, r4
00057026  00 23                                            movs r3, #0
00057028  db f7 ee ec                                      blx #0x32a08
0005702c  00 2d                                            cmp r5, #0
0005702e  18 bf                                            it ne
00057030  04 35                                            addne r5, #4
00057032  08 f1 04 00                                      add.w r0, r8, #4
00057036  28 60                                            str r0, [r5]
00057038  d8 f8 08 00                                      ldr.w r0, [r8, #8]
0005703c  68 60                                            str r0, [r5, #4]
0005703e  05 60                                            str r5, [r0]
00057040  c8 f8 08 50                                      str.w r5, [r8, #8]
00057044  fc e0                                            b #0x57240
00057046  28 46                                            mov r0, r5
00057048  14 21                                            movs r1, #0x14
0005704a  db f7 6a eb                                      blx #0x32720
0005704e  04 46                                            mov r4, r0
00057050  8f 48                                            ldr r0, [pc, #0x23c]
00057052  78 44                                            add r0, pc
00057054  01 68                                            ldr r1, [r0]
00057056  20 46                                            mov r0, r4
00057058  db f7 52 ec                                      blx #0x32900
0005705c  8d 48                                            ldr r0, [pc, #0x234]
0005705e  00 22                                            movs r2, #0
00057060  31 6a                                            ldr r1, [r6, #0x20]
00057062  78 44                                            add r0, pc
00057064  01 29                                            cmp r1, #1
00057066  00 68                                            ldr r0, [r0]
00057068  00 f1 08 00                                      add.w r0, r0, #8
0005706c  20 60                                            str r0, [r4]
0005706e  4f f0 0e 00                                      mov.w r0, #0xe
00057072  18 bf                                            it ne
00057074  01 22                                            movne r2, #1
00057076  c4 e9 03 02                                      strd r0, r2, [r4, #0xc]
0005707a  5a e0                                            b #0x57132
0005707c  70 6a                                            ldr r0, [r6, #0x24]
0005707e  00 28                                            cmp r0, #0
00057080  6c d0                                            beq #0x5715c
00057082  01 68                                            ldr r1, [r0]
00057084  2a 46                                            mov r2, r5
00057086  4b 68                                            ldr r3, [r1, #4]
00057088  41 46                                            mov r1, r8
0005708a  98 47                                            blx r3
0005708c  04 46                                            mov r4, r0
0005708e  99 48                                            ldr r0, [pc, #0x264]
00057090  08 94                                            str r4, [sp, #0x20]
00057092  04 f1 10 02                                      add.w r2, r4, #0x10
00057096  78 44                                            add r0, pc
00057098  d5 f8 54 11                                      ldr.w r1, [r5, #0x154]
0005709c  00 2c                                            cmp r4, #0
0005709e  08 bf                                            it eq
000570a0  02 68                                            ldreq r2, [r0]
000570a2  08 69                                            ldr r0, [r1, #0x10]
000570a4  12 68                                            ldr r2, [r2]
000570a6  90 42                                            cmp r0, r2
000570a8  00 f0 80 80                                      beq.w #0x571ac
000570ac  06 f1 04 0e                                      add.w lr, r6, #4
000570b0  0d f1 0c 09                                      add.w sb, sp, #0xc
000570b4  9e e8 18 50                                      ldm.w lr, {r3, r4, ip, lr}
000570b8  76 69                                            ldr r6, [r6, #0x14]
000570ba  89 e8 10 50                                      stm.w sb, {r4, ip, lr}
000570be  cd e9 06 63                                      strd r6, r3, [sp, #0x18]
000570c2  95 f8 b4 31                                      ldrb.w r3, [r5, #0x1b4]
000570c6  00 2b                                            cmp r3, #0
000570c8  00 f0 8b 80                                      beq.w #0x571e2
000570cc  08 a9                                            add r1, sp, #0x20
000570ce  2a 46                                            mov r2, r5
000570d0  db f7 54 ed                                      blx #0x32b7c
000570d4  00 28                                            cmp r0, #0
000570d6  40 f0 90 80                                      bne.w #0x571fa
000570da  d5 f8 54 01                                      ldr.w r0, [r5, #0x154]
000570de  86 4a                                            ldr r2, [pc, #0x218]
000570e0  01 69                                            ldr r1, [r0, #0x10]
000570e2  7a 44                                            add r2, pc
000570e4  80 6b                                            ldr r0, [r0, #0x38]
000570e6  cb 68                                            ldr r3, [r1, #0xc]
000570e8  00 69                                            ldr r0, [r0, #0x10]
000570ea  00 90                                            str r0, [sp]
000570ec  81 e0                                            b #0x571f2
000570ee  d5 f8 88 00                                      ldr.w r0, [r5, #0x88]
000570f2  02 28                                            cmp r0, #2
000570f4  09 d0                                            beq #0x5710a
000570f6  04 36                                            adds r6, #4
000570f8  4f ce                                            ldm r6, {r0, r1, r2, r3, r6}
000570fa  07 90                                            str r0, [sp, #0x1c]
000570fc  03 a8                                            add r0, sp, #0xc
000570fe  4e c0                                            stm r0!, {r1, r2, r3, r6}
00057100  03 a8                                            add r0, sp, #0xc
00057102  6e a2                                            adr r2, #0x1b8
00057104  29 46                                            mov r1, r5
00057106  db f7 d8 eb                                      blx #0x328b8
0005710a  28 46                                            mov r0, r5
0005710c  14 21                                            movs r1, #0x14
0005710e  db f7 08 eb                                      blx #0x32720
00057112  04 46                                            mov r4, r0
00057114  75 48                                            ldr r0, [pc, #0x1d4]
00057116  78 44                                            add r0, pc
00057118  01 68                                            ldr r1, [r0]
0005711a  20 46                                            mov r0, r4
0005711c  db f7 f0 eb                                      blx #0x32900
00057120  73 48                                            ldr r0, [pc, #0x1cc]
00057122  00 21                                            movs r1, #0
00057124  78 44                                            add r0, pc
00057126  00 68                                            ldr r0, [r0]
00057128  08 30                                            adds r0, #8
0005712a  20 60                                            str r0, [r4]
0005712c  12 20                                            movs r0, #0x12
0005712e  c4 e9 03 01                                      strd r0, r1, [r4, #0xc]
00057132  00 2c                                            cmp r4, #0
00057134  18 bf                                            it ne
00057136  04 34                                            addne r4, #4
00057138  08 f1 04 00                                      add.w r0, r8, #4
0005713c  20 60                                            str r0, [r4]
0005713e  d8 f8 08 00                                      ldr.w r0, [r8, #8]
00057142  60 60                                            str r0, [r4, #4]
00057144  04 60                                            str r4, [r0]
00057146  c8 f8 08 40                                      str.w r4, [r8, #8]
0005714a  79 e0                                            b #0x57240
0005714c  04 36                                            adds r6, #4
0005714e  4f ce                                            ldm r6, {r0, r1, r2, r3, r6}
00057150  07 90                                            str r0, [sp, #0x1c]
00057152  03 a8                                            add r0, sp, #0xc
00057154  4e c0                                            stm r0!, {r1, r2, r3, r6}
00057156  03 a8                                            add r0, sp, #0xc
00057158  4f a2                                            adr r2, #0x13c
0005715a  3e e0                                            b #0x571da
0005715c  d5 f8 54 01                                      ldr.w r0, [r5, #0x154]
00057160  01 69                                            ldr r1, [r0, #0x10]
00057162  49 68                                            ldr r1, [r1, #4]
00057164  0a 29                                            cmp r1, #0xa
00057166  0c d0                                            beq #0x57182
00057168  04 36                                            adds r6, #4
0005716a  5e ce                                            ldm r6, {r1, r2, r3, r4, r6}
0005716c  07 91                                            str r1, [sp, #0x1c]
0005716e  03 a9                                            add r1, sp, #0xc
00057170  5c c1                                            stm r1!, {r2, r3, r4, r6}
00057172  29 46                                            mov r1, r5
00057174  80 6b                                            ldr r0, [r0, #0x38]
00057176  65 4a                                            ldr r2, [pc, #0x194]
00057178  03 69                                            ldr r3, [r0, #0x10]
0005717a  7a 44                                            add r2, pc
0005717c  03 a8                                            add r0, sp, #0xc
0005717e  db f7 9c eb                                      blx #0x328b8
00057182  28 46                                            mov r0, r5
00057184  14 21                                            movs r1, #0x14
00057186  db f7 cc ea                                      blx #0x32720
0005718a  06 46                                            mov r6, r0
0005718c  60 48                                            ldr r0, [pc, #0x180]
0005718e  78 44                                            add r0, pc
00057190  01 68                                            ldr r1, [r0]
00057192  30 46                                            mov r0, r6
00057194  db f7 b4 eb                                      blx #0x32900
00057198  5e 48                                            ldr r0, [pc, #0x178]
0005719a  00 21                                            movs r1, #0
0005719c  78 44                                            add r0, pc
0005719e  00 68                                            ldr r0, [r0]
000571a0  08 30                                            adds r0, #8
000571a2  30 60                                            str r0, [r6]
000571a4  0f 20                                            movs r0, #0xf
000571a6  c6 e9 03 01                                      strd r0, r1, [r6, #0xc]
000571aa  3a e0                                            b #0x57222
000571ac  50 68                                            ldr r0, [r2, #4]
000571ae  0a 28                                            cmp r0, #0xa
000571b0  24 d1                                            bne #0x571fc
000571b2  04 36                                            adds r6, #4
000571b4  4f ce                                            ldm r6, {r0, r1, r2, r3, r6}
000571b6  07 90                                            str r0, [sp, #0x1c]
000571b8  03 a8                                            add r0, sp, #0xc
000571ba  0e c0                                            stm r0!, {r1, r2, r3}
000571bc  03 a8                                            add r0, sp, #0xc
000571be  29 46                                            mov r1, r5
000571c0  4f 4a                                            ldr r2, [pc, #0x13c]
000571c2  06 96                                            str r6, [sp, #0x18]
000571c4  7a 44                                            add r2, pc
000571c6  db f7 78 eb                                      blx #0x328b8
000571ca  17 e0                                            b #0x571fc
000571cc  04 36                                            adds r6, #4
000571ce  4f ce                                            ldm r6, {r0, r1, r2, r3, r6}
000571d0  07 90                                            str r0, [sp, #0x1c]
000571d2  03 a8                                            add r0, sp, #0xc
000571d4  4e c0                                            stm r0!, {r1, r2, r3, r6}
000571d6  03 a8                                            add r0, sp, #0xc
000571d8  21 a2                                            adr r2, #0x84
000571da  29 46                                            mov r1, r5
000571dc  db f7 6c eb                                      blx #0x328b8
000571e0  2e e0                                            b #0x57240
000571e2  89 6b                                            ldr r1, [r1, #0x38]
000571e4  d3 68                                            ldr r3, [r2, #0xc]
000571e6  45 4a                                            ldr r2, [pc, #0x114]
000571e8  c0 68                                            ldr r0, [r0, #0xc]
000571ea  7a 44                                            add r2, pc
000571ec  09 69                                            ldr r1, [r1, #0x10]
000571ee  cd e9 00 10                                      strd r1, r0, [sp]
000571f2  03 a8                                            add r0, sp, #0xc
000571f4  29 46                                            mov r1, r5
000571f6  db f7 60 eb                                      blx #0x328b8
000571fa  08 9c                                            ldr r4, [sp, #0x20]
000571fc  28 46                                            mov r0, r5
000571fe  14 21                                            movs r1, #0x14
00057200  db f7 8e ea                                      blx #0x32720
00057204  06 46                                            mov r6, r0
00057206  3f 48                                            ldr r0, [pc, #0xfc]
00057208  78 44                                            add r0, pc
0005720a  01 68                                            ldr r1, [r0]
0005720c  30 46                                            mov r0, r6
0005720e  db f7 78 eb                                      blx #0x32900
00057212  3d 48                                            ldr r0, [pc, #0xf4]
00057214  78 44                                            add r0, pc
00057216  00 68                                            ldr r0, [r0]
00057218  08 30                                            adds r0, #8
0005721a  30 60                                            str r0, [r6]
0005721c  0f 20                                            movs r0, #0xf
0005721e  c6 e9 03 04                                      strd r0, r4, [r6, #0xc]
00057222  01 20                                            movs r0, #1
00057224  00 2e                                            cmp r6, #0
00057226  85 f8 5c 01                                      strb.w r0, [r5, #0x15c]
0005722a  18 bf                                            it ne
0005722c  04 36                                            addne r6, #4
0005722e  08 f1 04 00                                      add.w r0, r8, #4
00057232  30 60                                            str r0, [r6]
00057234  d8 f8 08 00                                      ldr.w r0, [r8, #8]
00057238  70 60                                            str r0, [r6, #4]
0005723a  06 60                                            str r6, [r0]
0005723c  c8 f8 08 60                                      str.w r6, [r8, #8]
00057240  35 48                                            ldr r0, [pc, #0xd4]
00057242  09 99                                            ldr r1, [sp, #0x24]
00057244  78 44                                            add r0, pc
00057246  00 68                                            ldr r0, [r0]
00057248  00 68                                            ldr r0, [r0]
0005724a  40 1a                                            subs r0, r0, r1
0005724c  01 bf                                            itttt eq
0005724e  00 20                                            moveq r0, #0
00057250  0a b0                                            addeq sp, #0x28
00057252  bd e8 00 07                                      popeq.w {r8, sb, sl}
00057256  f0 bd                                            popeq {r4, r5, r6, r7, pc}
00057258  da f7 02 ef                                      blx #0x32060
0005725c  4a 55                                            strb r2, [r1, r5]
0005725e  08 00                                            movs r0, r1
00057260  62 72                                            strb r2, [r4, #9]
00057262  65 61                                            str r5, [r4, #0x14]
00057264  6b 20                                            movs r0, #0x6b
00057266  6d 61                                            str r5, [r5, #0x14]
00057268  79 20                                            movs r0, #0x79
0005726a  6f 6e                                            ldr r7, [r5, #0x64]
0005726c  6c 79                                            ldrb r4, [r5, #5]
0005726e  20 61                                            str r0, [r4, #0x10]
00057270  70 70                                            strb r0, [r6, #1]
00057272  65 61                                            str r5, [r4, #0x14]
00057274  72 20                                            movs r0, #0x72
00057276  69 6e                                            ldr r1, [r5, #0x64]
00057278  20 61                                            str r0, [r4, #0x10]
0005727a  20 6c                                            ldr r0, [r4, #0x40]
0005727c  6f 6f                                            ldr r7, [r5, #0x74]
0005727e  70 20                                            movs r0, #0x70
00057280  6f 72                                            strb r7, [r5, #9]
00057282  20 61                                            str r0, [r4, #0x10]
00057284  20 73                                            strb r0, [r4, #0xc]
00057286  77 69                                            ldr r7, [r6, #0x14]
00057288  74 63                                            str r4, [r6, #0x34]
0005728a  68 00                                            lsls r0, r5, #1
0005728c  56 55                                            strb r6, [r2, r5]
0005728e  08 00                                            movs r0, r1
00057290  e6 54                                            strb r6, [r4, r3]
00057292  08 00                                            movs r0, r1
00057294  fa 54                                            strb r2, [r7, r3]
00057296  08 00                                            movs r0, r1
00057298  63 6f                                            ldr r3, [r4, #0x74]
0005729a  6e 74                                            strb r6, [r5, #0x11]
0005729c  69 6e                                            ldr r1, [r5, #0x64]
0005729e  75 65                                            str r5, [r6, #0x54]
000572a0  20 6d                                            ldr r0, [r4, #0x50]
000572a2  61 79                                            ldrb r1, [r4, #5]
000572a4  20 6f                                            ldr r0, [r4, #0x70]
000572a6  6e 6c                                            ldr r6, [r5, #0x44]
000572a8  79 20                                            movs r0, #0x79
000572aa  61 70                                            strb r1, [r4, #1]
000572ac  70 65                                            str r0, [r6, #0x54]
000572ae  61 72                                            strb r1, [r4, #9]
000572b0  20 69                                            ldr r0, [r4, #0x10]
000572b2  6e 20                                            movs r0, #0x6e
000572b4  61 20                                            movs r0, #0x61
000572b6  6c 6f                                            ldr r4, [r5, #0x74]
000572b8  6f 70                                            strb r7, [r5, #1]
000572ba  00 00                                            movs r0, r0
000572bc  60 64                                            str r0, [r4, #0x44]
000572be  69 73                                            strb r1, [r5, #0xd]
000572c0  63 61                                            str r3, [r4, #0x14]
000572c2  72 64                                            str r2, [r6, #0x44]
000572c4  27 20                                            movs r0, #0x27
000572c6  6d 61                                            str r5, [r5, #0x14]
000572c8  79 20                                            movs r0, #0x79
000572ca  6f 6e                                            ldr r7, [r5, #0x64]
000572cc  6c 79                                            ldrb r4, [r5, #5]
000572ce  20 61                                            str r0, [r4, #0x10]
000572d0  70 70                                            strb r0, [r6, #1]
000572d2  65 61                                            str r5, [r4, #0x14]
000572d4  72 20                                            movs r0, #0x72
000572d6  69 6e                                            ldr r1, [r5, #0x64]
000572d8  20 61                                            str r0, [r4, #0x10]
000572da  20 66                                            str r0, [r4, #0x60]
000572dc  72 61                                            str r2, [r6, #0x14]
000572de  67 6d                                            ldr r7, [r4, #0x54]
000572e0  65 6e                                            ldr r5, [r4, #0x64]
000572e2  74 20                                            movs r0, #0x74
000572e4  73 68                                            ldr r3, [r6, #4]
000572e6  61 64                                            str r1, [r4, #0x44]
000572e8  65 72                                            strb r5, [r4, #9]
000572ea  00 00                                            movs r0, r0
000572ec  22 54                                            strb r2, [r4, r0]
000572ee  08 00                                            movs r0, r1
000572f0  3c 54                                            strb r4, [r7, r0]
000572f2  08 00                                            movs r0, r1
000572f4  ce 54                                            strb r6, [r1, r3]
000572f6  08 00                                            movs r0, r1
000572f8  90 3e                                            subs r6, #0x90
000572fa  06 00                                            movs r6, r0
000572fc  ca 3d                                            subs r5, #0xca
000572fe  06 00                                            movs r6, r0
00057300  2b 3e                                            subs r6, #0x2b
00057302  06 00                                            movs r6, r0
00057304  30 53                                            strh r0, [r6, r4]
00057306  08 00                                            movs r0, r1
00057308  54 53                                            strh r4, [r2, r5]
0005730a  08 00                                            movs r0, r1
0005730c  b4 3e                                            subs r6, #0xb4
0005730e  06 00                                            movs r6, r0
00057310  aa 53                                            strh r2, [r5, r6]
00057312  08 00                                            movs r0, r1
00057314  cc 53                                            strh r4, [r1, r7]
00057316  08 00                                            movs r0, r1
00057318  70 52                                            strh r0, [r6, r1]
0005731a  08 00                                            movs r0, r1

; FUNCTION 0x0007deb0, declared_size=124, range_size=124, mode=thumb
; class-group: ast_jump_statement
; alias: _ZNK18ast_jump_statement5printEv
; demangled: ast_jump_statement::print() const
; decoder-mode: thumb
0007deb0  d0 b5                                            push {r4, r6, r7, lr}
0007deb2  02 af                                            add r7, sp, #8
0007deb4  04 46                                            mov r4, r0
0007deb6  20 6a                                            ldr r0, [r4, #0x20]
0007deb8  03 28                                            cmp r0, #3
0007deba  88 bf                                            it hi
0007debc  d0 bd                                            pophi {r4, r6, r7, pc}
0007debe  df e8 00 f0                                      tbb [pc, r0]
0007dec2  02 07                                            lsls r2, r0, #0x1c
0007dec4  0c 19                                            adds r4, r1, r4
0007dec6  16 a0                                            adr r0, #0x58
0007dec8  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0007decc  32 f0 6c be                                      b.w #0xb0ba8
0007ded0  11 a0                                            adr r0, #0x44
0007ded2  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0007ded6  32 f0 67 be                                      b.w #0xb0ba8
0007deda  0c a0                                            adr r0, #0x30
0007dedc  b4 f7 04 ea                                      blx #0x322e8
0007dee0  60 6a                                            ldr r0, [r4, #0x24]
0007dee2  10 b1                                            cbz r0, #0x7deea
0007dee4  01 68                                            ldr r1, [r0]
0007dee6  09 68                                            ldr r1, [r1]
0007dee8  88 47                                            blx r1
0007deea  0a a0                                            adr r0, #0x28
0007deec  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0007def0  32 f0 5a be                                      b.w #0xb0ba8
0007def4  02 a0                                            adr r0, #8
0007def6  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0007defa  32 f0 55 be                                      b.w #0xb0ba8
0007defe  00 bf                                            nop
0007df00  64 69                                            ldr r4, [r4, #0x14]
0007df02  73 63                                            str r3, [r6, #0x34]
0007df04  61 72                                            strb r1, [r4, #9]
0007df06  64 3b                                            subs r3, #0x64
0007df08  20 00                                            movs r0, r4
0007df0a  00 00                                            movs r0, r0
0007df0c  72 65                                            str r2, [r6, #0x54]
0007df0e  74 75                                            strb r4, [r6, #0x15]
0007df10  72 6e                                            ldr r2, [r6, #0x64]
0007df12  20 00                                            movs r0, r4
0007df14  3b 20                                            movs r0, #0x3b
0007df16  00 00                                            movs r0, r0
0007df18  62 72                                            strb r2, [r4, #9]
0007df1a  65 61                                            str r5, [r4, #0x14]
0007df1c  6b 3b                                            subs r3, #0x6b
0007df1e  20 00                                            movs r0, r4
0007df20  63 6f                                            ldr r3, [r4, #0x74]
0007df22  6e 74                                            strb r6, [r5, #0x11]
0007df24  69 6e                                            ldr r1, [r5, #0x64]
0007df26  75 65                                            str r5, [r6, #0x54]
0007df28  3b 20                                            movs r0, #0x3b
0007df2a  00 00                                            movs r0, r0

; FUNCTION 0x0007df2c, declared_size=60, range_size=60, mode=thumb
; class-group: ast_jump_statement
; alias: _ZN18ast_jump_statementC1EiP14ast_expression
; demangled: ast_jump_statement::ast_jump_statement(int, ast_expression*)
; alias: _ZN18ast_jump_statementC2EiP14ast_expression
; demangled: ast_jump_statement::ast_jump_statement(int, ast_expression*)
; decoder-mode: thumb
0007df2c  f0 b5                                            push {r4, r5, r6, r7, lr}
0007df2e  03 af                                            add r7, sp, #0xc
0007df30  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0007df34  04 46                                            mov r4, r0
0007df36  20 1d                                            adds r0, r4, #4
0007df38  0e 46                                            mov r6, r1
0007df3a  14 21                                            movs r1, #0x14
0007df3c  15 46                                            mov r5, r2
0007df3e  b4 f7 90 eb                                      blx #0x32660
0007df42  08 48                                            ldr r0, [pc, #0x20]
0007df44  00 21                                            movs r1, #0
0007df46  61 62                                            str r1, [r4, #0x24]
0007df48  02 2e                                            cmp r6, #2
0007df4a  78 44                                            add r0, pc
0007df4c  26 62                                            str r6, [r4, #0x20]
0007df4e  00 68                                            ldr r0, [r0]
0007df50  00 f1 08 00                                      add.w r0, r0, #8
0007df54  20 60                                            str r0, [r4]
0007df56  08 bf                                            it eq
0007df58  65 62                                            streq r5, [r4, #0x24]
0007df5a  20 46                                            mov r0, r4
0007df5c  5d f8 04 bb                                      ldr fp, [sp], #4
0007df60  f0 bd                                            pop {r4, r5, r6, r7, pc}
0007df62  00 bf                                            nop
0007df64  da e9 05 00                                      ldrd r0, r0, [sl, #0x14]
