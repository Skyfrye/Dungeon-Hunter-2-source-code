; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0004fe7c, declared_size=3852, range_size=3852, mode=thumb
; class-group: ast_function_expression
; alias: _ZN23ast_function_expression3hirEP9exec_listP22_mesa_glsl_parse_state
; demangled: ast_function_expression::hir(exec_list*, _mesa_glsl_parse_state*)
; decoder-mode: thumb
0004fe7c  f0 b5                                            push {r4, r5, r6, r7, lr}
0004fe7e  03 af                                            add r7, sp, #0xc
0004fe80  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
0004fe84  9f b0                                            sub sp, #0x7c
0004fe86  06 46                                            mov r6, r0
0004fe88  df f8 cc 0d                                      ldr.w r0, [pc, #0xdcc]
0004fe8c  15 46                                            mov r5, r2
0004fe8e  88 46                                            mov r8, r1
0004fe90  78 44                                            add r0, pc
0004fe92  00 68                                            ldr r0, [r0]
0004fe94  00 68                                            ldr r0, [r0]
0004fe96  1e 90                                            str r0, [sp, #0x78]
0004fe98  96 f8 44 00                                      ldrb.w r0, [r6, #0x44]
0004fe9c  00 28                                            cmp r0, #0
0004fe9e  00 f0 b8 80                                      beq.w #0x50012
0004fea2  74 6a                                            ldr r4, [r6, #0x24]
0004fea4  11 a9                                            add r1, sp, #0x44
0004fea6  2a 46                                            mov r2, r5
0004fea8  60 68                                            ldr r0, [r4, #4]
0004feaa  1d 90                                            str r0, [sp, #0x74]
0004feac  a0 68                                            ldr r0, [r4, #8]
0004feae  19 90                                            str r0, [sp, #0x64]
0004feb0  e0 68                                            ldr r0, [r4, #0xc]
0004feb2  1a 90                                            str r0, [sp, #0x68]
0004feb4  20 69                                            ldr r0, [r4, #0x10]
0004feb6  1b 90                                            str r0, [sp, #0x6c]
0004feb8  60 69                                            ldr r0, [r4, #0x14]
0004feba  1c 90                                            str r0, [sp, #0x70]
0004febc  20 46                                            mov r0, r4
0004febe  e2 f7 bc ed                                      blx #0x32a38
0004fec2  82 46                                            mov sl, r0
0004fec4  ba f1 00 0f                                      cmp.w sl, #0
0004fec8  00 f0 f5 80                                      beq.w #0x500b6
0004fecc  da f8 04 00                                      ldr.w r0, [sl, #4]
0004fed0  09 28                                            cmp r0, #9
0004fed2  00 f2 f8 80                                      bhi.w #0x500c6
0004fed6  df e8 10 f0                                      tbh [pc, r0, lsl #1]
0004feda  0a 00                                            movs r2, r1
0004fedc  0a 00                                            movs r2, r1
0004fede  0a 00                                            movs r2, r1
0004fee0  0a 00                                            movs r2, r1
0004fee2  44 01                                            lsls r4, r0, #5
0004fee4  f6 00                                            lsls r6, r6, #3
0004fee6  f6 00                                            lsls r6, r6, #3
0004fee8  4a 01                                            lsls r2, r1, #5
0004feea  f6 00                                            lsls r6, r6, #3
0004feec  53 01                                            lsls r3, r2, #5
0004feee  cd e9 0e 85                                      strd r8, r5, [sp, #0x38]
0004fef2  14 a9                                            add r1, sp, #0x50
0004fef4  ba f8 08 00                                      ldrh.w r0, [sl, #8]
0004fef8  4f f0 00 08                                      mov.w r8, #0
0004fefc  cd f8 54 80                                      str.w r8, [sp, #0x54]
0004ff00  01 f1 04 09                                      add.w sb, r1, #4
0004ff04  cd f8 50 90                                      str.w sb, [sp, #0x50]
0004ff08  16 91                                            str r1, [sp, #0x58]
0004ff0a  75 6b                                            ldr r5, [r6, #0x34]
0004ff0c  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
0004ff10  c0 f3 42 20                                      ubfx r0, r0, #9, #3
0004ff14  10 fb 01 f0                                      smulbb r0, r0, r1
0004ff18  10 90                                            str r0, [sp, #0x40]
0004ff1a  28 68                                            ldr r0, [r5]
0004ff1c  00 28                                            cmp r0, #0
0004ff1e  00 f0 03 81                                      beq.w #0x50128
0004ff22  cd f8 34 a0                                      str.w sl, [sp, #0x34]
0004ff26  03 24                                            movs r4, #3
0004ff28  4f f0 00 0a                                      mov.w sl, #0
0004ff2c  4f f0 00 0b                                      mov.w fp, #0
0004ff30  28 46                                            mov r0, r5
0004ff32  50 f8 18 1d                                      ldr r1, [r0, #-0x18]!
0004ff36  4b 68                                            ldr r3, [r1, #4]
0004ff38  dd e9 0e 12                                      ldrd r1, r2, [sp, #0x38]
0004ff3c  98 47                                            blx r3
0004ff3e  10 99                                            ldr r1, [sp, #0x40]
0004ff40  88 45                                            cmp r8, r1
0004ff42  80 f0 33 81                                      bhs.w #0x501ac
0004ff46  01 69                                            ldr r1, [r0, #0x10]
0004ff48  4a 68                                            ldr r2, [r1, #4]
0004ff4a  04 2a                                            cmp r2, #4
0004ff4c  80 f0 32 81                                      bhs.w #0x501b4
0004ff50  0b 89                                            ldrh r3, [r1, #8]
0004ff52  02 2a                                            cmp r2, #2
0004ff54  40 f8 04 9f                                      str sb, [r0, #4]!
0004ff58  a4 46                                            mov ip, r4
0004ff5a  16 9e                                            ldr r6, [sp, #0x58]
0004ff5c  4f f0 00 04                                      mov.w r4, #0
0004ff60  46 60                                            str r6, [r0, #4]
0004ff62  30 60                                            str r0, [r6]
0004ff64  4f f0 00 06                                      mov.w r6, #0
0004ff68  16 90                                            str r0, [sp, #0x58]
0004ff6a  18 bf                                            it ne
0004ff6c  01 26                                            movne r6, #1
0004ff6e  13 f4 c0 43                                      ands r3, r3, #0x6000
0004ff72  08 bf                                            it eq
0004ff74  01 24                                            moveq r4, #1
0004ff76  02 2a                                            cmp r2, #2
0004ff78  4f f0 00 02                                      mov.w r2, #0
0004ff7c  08 bf                                            it eq
0004ff7e  01 22                                            moveq r2, #1
0004ff80  00 2b                                            cmp r3, #0
0004ff82  18 bf                                            it ne
0004ff84  01 23                                            movne r3, #1
0004ff86  09 89                                            ldrh r1, [r1, #8]
0004ff88  1a 40                                            ands r2, r3
0004ff8a  00 69                                            ldr r0, [r0, #0x10]
0004ff8c  92 44                                            add sl, r2
0004ff8e  2d 68                                            ldr r5, [r5]
0004ff90  c1 f3 02 32                                      ubfx r2, r1, #0xc, #3
0004ff94  c1 f3 42 21                                      ubfx r1, r1, #9, #3
0004ff98  26 43                                            orrs r6, r4
0004ff9a  64 46                                            mov r4, ip
0004ff9c  11 fb 02 88                                      smlabb r8, r1, r2, r8
0004ffa0  29 68                                            ldr r1, [r5]
0004ffa2  84 42                                            cmp r4, r0
0004ffa4  b3 44                                            add fp, r6
0004ffa6  a8 bf                                            it ge
0004ffa8  04 46                                            movge r4, r0
0004ffaa  00 29                                            cmp r1, #0
0004ffac  c0 d1                                            bne #0x4ff30
0004ffae  ba f1 00 0f                                      cmp.w sl, #0
0004ffb2  00 f0 83 83                                      beq.w #0x506bc
0004ffb6  0d 99                                            ldr r1, [sp, #0x34]
0004ffb8  dd f8 3c 90                                      ldr.w sb, [sp, #0x3c]
0004ffbc  48 7a                                            ldrb r0, [r1, #9]
0004ffbe  10 f0 60 0f                                      tst.w r0, #0x60
0004ffc2  10 d0                                            beq #0x4ffe6
0004ffc4  48 68                                            ldr r0, [r1, #4]
0004ffc6  02 28                                            cmp r0, #2
0004ffc8  0d d1                                            bne #0x4ffe6
0004ffca  c8 68                                            ldr r0, [r1, #0xc]
0004ffcc  0f f6 e8 41                                      addw r1, pc, #0xce8
0004ffd0  19 ab                                            add r3, sp, #0x64
0004ffd2  64 22                                            movs r2, #0x64
0004ffd4  cd e9 00 10                                      strd r1, r0, [sp]
0004ffd8  48 46                                            mov r0, sb
0004ffda  78 21                                            movs r1, #0x78
0004ffdc  e2 f7 32 ed                                      blx #0x32a44
0004ffe0  00 28                                            cmp r0, #0
0004ffe2  00 f0 b5 80                                      beq.w #0x50150
0004ffe6  0a eb 0b 00                                      add.w r0, sl, fp
0004ffea  02 28                                            cmp r0, #2
0004ffec  c0 f0 7e 83                                      blo.w #0x506ec
0004fff0  dd f8 34 a0                                      ldr.w sl, [sp, #0x34]
0004fff4  9a f8 09 00                                      ldrb.w r0, [sl, #9]
0004fff8  10 f0 60 0f                                      tst.w r0, #0x60
0004fffc  00 f0 78 83                                      beq.w #0x506f0
00050000  da f8 04 00                                      ldr.w r0, [sl, #4]
00050004  02 28                                            cmp r0, #2
00050006  40 f0 78 83                                      bne.w #0x506fa
0005000a  df f8 d0 2c                                      ldr.w r2, [pc, #0xcd0]
0005000e  7a 44                                            add r2, pc
00050010  98 e0                                            b #0x50144
00050012  70 6a                                            ldr r0, [r6, #0x24]
00050014  34 1d                                            adds r4, r6, #4
00050016  06 f1 34 0a                                      add.w sl, r6, #0x34
0005001a  d0 f8 30 b0                                      ldr.w fp, [r0, #0x30]
0005001e  1f cc                                            ldm r4, {r0, r1, r2, r3, r4}
00050020  18 90                                            str r0, [sp, #0x60]
00050022  14 a8                                            add r0, sp, #0x50
00050024  1e c0                                            stm r0!, {r1, r2, r3, r4}
00050026  00 20                                            movs r0, #0
00050028  11 a9                                            add r1, sp, #0x44
0005002a  12 90                                            str r0, [sp, #0x48]
0005002c  08 1d                                            adds r0, r1, #4
0005002e  11 90                                            str r0, [sp, #0x44]
00050030  40 46                                            mov r0, r8
00050032  52 46                                            mov r2, sl
00050034  2b 46                                            mov r3, r5
00050036  13 91                                            str r1, [sp, #0x4c]
00050038  01 f0 62 fa                                      bl #0x51500
0005003c  68 69                                            ldr r0, [r5, #0x14]
0005003e  59 46                                            mov r1, fp
00050040  e2 f7 06 ed                                      blx #0x32a50
00050044  06 46                                            mov r6, r0
00050046  68 69                                            ldr r0, [r5, #0x14]
00050048  59 46                                            mov r1, fp
0005004a  e2 f7 08 ed                                      blx #0x32a5c
0005004e  00 28                                            cmp r0, #0
00050050  4c d0                                            beq #0x500ec
00050052  e2 f7 0a ed                                      blx #0x32a68
00050056  80 46                                            mov r8, r0
00050058  68 69                                            ldr r0, [r5, #0x14]
0005005a  59 46                                            mov r1, fp
0005005c  e2 f7 f8 ec                                      blx #0x32a50
00050060  00 28                                            cmp r0, #0
00050062  50 d0                                            beq #0x50106
00050064  11 aa                                            add r2, sp, #0x44
00050066  00 20                                            movs r0, #0
00050068  59 46                                            mov r1, fp
0005006a  e2 f7 04 ed                                      blx #0x32a74
0005006e  df f8 08 2d                                      ldr.w r2, [pc, #0xd08]
00050072  14 ae                                            add r6, sp, #0x50
00050074  04 46                                            mov r4, r0
00050076  29 46                                            mov r1, r5
00050078  7a 44                                            add r2, pc
0005007a  30 46                                            mov r0, r6
0005007c  23 46                                            mov r3, r4
0005007e  e2 f7 1c ec                                      blx #0x328b8
00050082  20 46                                            mov r0, r4
00050084  e2 f7 2e eb                                      blx #0x326e4
00050088  68 69                                            ldr r0, [r5, #0x14]
0005008a  59 46                                            mov r1, fp
0005008c  e2 f7 e0 ec                                      blx #0x32a50
00050090  02 46                                            mov r2, r0
00050092  28 46                                            mov r0, r5
00050094  31 46                                            mov r1, r6
00050096  01 f0 97 fc                                      bl #0x519c8
0005009a  95 f8 f0 01                                      ldrb.w r0, [r5, #0x1f0]
0005009e  90 b1                                            cbz r0, #0x500c6
000500a0  d8 f8 f4 00                                      ldr.w r0, [r8, #0xf4]
000500a4  59 46                                            mov r1, fp
000500a6  e2 f7 d4 ec                                      blx #0x32a50
000500aa  14 a9                                            add r1, sp, #0x50
000500ac  02 46                                            mov r2, r0
000500ae  28 46                                            mov r0, r5
000500b0  01 f0 8a fc                                      bl #0x519c8
000500b4  07 e0                                            b #0x500c6
000500b6  df f8 58 2c                                      ldr.w r2, [pc, #0xc58]
000500ba  23 6a                                            ldr r3, [r4, #0x20]
000500bc  7a 44                                            add r2, pc
000500be  19 a8                                            add r0, sp, #0x64
000500c0  29 46                                            mov r1, r5
000500c2  e2 f7 fa eb                                      blx #0x328b8
000500c6  28 46                                            mov r0, r5
000500c8  e2 f7 da ec                                      blx #0x32a80
000500cc  05 46                                            mov r5, r0
000500ce  df f8 b0 0c                                      ldr.w r0, [pc, #0xcb0]
000500d2  1e 99                                            ldr r1, [sp, #0x78]
000500d4  78 44                                            add r0, pc
000500d6  00 68                                            ldr r0, [r0]
000500d8  00 68                                            ldr r0, [r0]
000500da  40 1a                                            subs r0, r0, r1
000500dc  01 bf                                            itttt eq
000500de  28 46                                            moveq r0, r5
000500e0  1f b0                                            addeq sp, #0x7c
000500e2  bd e8 00 0f                                      popeq.w {r8, sb, sl, fp}
000500e6  f0 bd                                            popeq {r4, r5, r6, r7, pc}
000500e8  e1 f7 ba ef                                      blx #0x32060
000500ec  68 69                                            ldr r0, [r5, #0x14]
000500ee  01 78                                            ldrb r1, [r0]
000500f0  81 b3                                            cbz r1, #0x50154
000500f2  00 2e                                            cmp r6, #0
000500f4  cd f8 38 80                                      str.w r8, [sp, #0x38]
000500f8  67 d0                                            beq #0x501ca
000500fa  95 f8 7c 00                                      ldrb.w r0, [r5, #0x7c]
000500fe  00 28                                            cmp r0, #0
00050100  65 d0                                            beq #0x501ce
00050102  01 24                                            movs r4, #1
00050104  68 e0                                            b #0x501d8
00050106  95 f8 f0 01                                      ldrb.w r0, [r5, #0x1f0]
0005010a  30 b1                                            cbz r0, #0x5011a
0005010c  d8 f8 f4 00                                      ldr.w r0, [r8, #0xf4]
00050110  59 46                                            mov r1, fp
00050112  e2 f7 9e ec                                      blx #0x32a50
00050116  00 28                                            cmp r0, #0
00050118  a4 d1                                            bne #0x50064
0005011a  df f8 60 2c                                      ldr.w r2, [pc, #0xc60]
0005011e  14 a8                                            add r0, sp, #0x50
00050120  29 46                                            mov r1, r5
00050122  5b 46                                            mov r3, fp
00050124  7a 44                                            add r2, pc
00050126  cc e7                                            b #0x500c2
00050128  dd f8 3c 90                                      ldr.w sb, [sp, #0x3c]
0005012c  03 24                                            movs r4, #3
0005012e  10 98                                            ldr r0, [sp, #0x40]
00050130  80 45                                            cmp r8, r0
00050132  80 f0 dd 82                                      bhs.w #0x506f0
00050136  b8 f1 01 0f                                      cmp.w r8, #1
0005013a  00 f0 d9 82                                      beq.w #0x506f0
0005013e  df f8 c4 2b                                      ldr.w r2, [pc, #0xbc4]
00050142  7a 44                                            add r2, pc
00050144  da f8 0c 30                                      ldr.w r3, [sl, #0xc]
00050148  19 a8                                            add r0, sp, #0x64
0005014a  49 46                                            mov r1, sb
0005014c  e2 f7 b4 eb                                      blx #0x328b8
00050150  48 46                                            mov r0, sb
00050152  b9 e7                                            b #0x500c8
00050154  59 46                                            mov r1, fp
00050156  e2 f7 9a ec                                      blx #0x32a8c
0005015a  00 28                                            cmp r0, #0
0005015c  7f f4 79 af                                      bne.w #0x50052
00050160  c7 e7                                            b #0x500f2
00050162  df f8 a8 2b                                      ldr.w r2, [pc, #0xba8]
00050166  da f8 0c 30                                      ldr.w r3, [sl, #0xc]
0005016a  7a 44                                            add r2, pc
0005016c  a7 e7                                            b #0x500be
0005016e  06 f1 34 03                                      add.w r3, r6, #0x34
00050172  19 aa                                            add r2, sp, #0x64
00050174  40 46                                            mov r0, r8
00050176  51 46                                            mov r1, sl
00050178  00 95                                            str r5, [sp]
0005017a  00 f0 a5 ff                                      bl #0x510c8
0005017e  a5 e7                                            b #0x500cc
00050180  df f8 84 0b                                      ldr.w r0, [pc, #0xb84]
00050184  19 ab                                            add r3, sp, #0x64
00050186  78 21                                            movs r1, #0x78
00050188  4f f4 96 72                                      mov.w r2, #0x12c
0005018c  78 44                                            add r0, pc
0005018e  00 90                                            str r0, [sp]
00050190  28 46                                            mov r0, r5
00050192  e2 f7 58 ec                                      blx #0x32a44
00050196  00 28                                            cmp r0, #0
00050198  95 d0                                            beq #0x500c6
0005019a  06 f1 34 03                                      add.w r3, r6, #0x34
0005019e  19 aa                                            add r2, sp, #0x64
000501a0  40 46                                            mov r0, r8
000501a2  51 46                                            mov r1, sl
000501a4  00 95                                            str r5, [sp]
000501a6  00 f0 ef fd                                      bl #0x50d88
000501aa  8f e7                                            b #0x500cc
000501ac  0d 98                                            ldr r0, [sp, #0x34]
000501ae  0f f6 ac 22                                      addw r2, pc, #0xaac
000501b2  02 e0                                            b #0x501ba
000501b4  0d 98                                            ldr r0, [sp, #0x34]
000501b6  0f f6 cc 22                                      addw r2, pc, #0xacc
000501ba  c3 68                                            ldr r3, [r0, #0xc]
000501bc  19 a8                                            add r0, sp, #0x64
000501be  0f 9c                                            ldr r4, [sp, #0x3c]
000501c0  21 46                                            mov r1, r4
000501c2  e2 f7 7a eb                                      blx #0x328b8
000501c6  20 46                                            mov r0, r4
000501c8  7e e7                                            b #0x500c8
000501ca  00 20                                            movs r0, #0
000501cc  15 e0                                            b #0x501fa
000501ce  30 46                                            mov r0, r6
000501d0  e2 f7 62 ec                                      blx #0x32a98
000501d4  80 f0 01 04                                      eor r4, r0, #1
000501d8  00 20                                            movs r0, #0
000501da  11 aa                                            add r2, sp, #0x44
000501dc  8d f8 64 00                                      strb.w r0, [sp, #0x64]
000501e0  19 a8                                            add r0, sp, #0x64
000501e2  00 90                                            str r0, [sp]
000501e4  30 46                                            mov r0, r6
000501e6  29 46                                            mov r1, r5
000501e8  23 46                                            mov r3, r4
000501ea  e2 f7 5c ec                                      blx #0x32aa4
000501ee  01 2c                                            cmp r4, #1
000501f0  04 bf                                            itt eq
000501f2  9d f8 64 10                                      ldrbeq.w r1, [sp, #0x64]
000501f6  00 29                                            cmpeq r1, #0
000501f8  3a d1                                            bne #0x50270
000501fa  04 46                                            mov r4, r0
000501fc  e2 f7 58 ec                                      blx #0x32ab0
00050200  11 aa                                            add r2, sp, #0x44
00050202  28 46                                            mov r0, r5
00050204  59 46                                            mov r1, fp
00050206  a8 46                                            mov r8, r5
00050208  e2 f7 58 ec                                      blx #0x32abc
0005020c  81 46                                            mov sb, r0
0005020e  b9 f1 00 0f                                      cmp.w sb, #0
00050212  18 bf                                            it ne
00050214  a1 45                                            cmpne sb, r4
00050216  29 d0                                            beq #0x5026c
00050218  c6 b9                                            cbnz r6, #0x5024c
0005021a  45 46                                            mov r5, r8
0005021c  20 21                                            movs r1, #0x20
0005021e  28 46                                            mov r0, r5
00050220  e2 f7 7e ea                                      blx #0x32720
00050224  06 46                                            mov r6, r0
00050226  df f8 ec 0a                                      ldr.w r0, [pc, #0xaec]
0005022a  78 44                                            add r0, pc
0005022c  01 68                                            ldr r1, [r0]
0005022e  30 46                                            mov r0, r6
00050230  e2 f7 66 eb                                      blx #0x32900
00050234  30 46                                            mov r0, r6
00050236  59 46                                            mov r1, fp
00050238  e2 f7 46 ec                                      blx #0x32ac8
0005023c  68 69                                            ldr r0, [r5, #0x14]
0005023e  31 46                                            mov r1, r6
00050240  e2 f7 48 ec                                      blx #0x32ad4
00050244  28 46                                            mov r0, r5
00050246  31 46                                            mov r1, r6
00050248  e2 f7 4a ec                                      blx #0x32ae0
0005024c  48 46                                            mov r0, sb
0005024e  31 46                                            mov r1, r6
00050250  00 22                                            movs r2, #0
00050252  e2 f7 4c ec                                      blx #0x32aec
00050256  86 63                                            str r6, [r0, #0x38]
00050258  00 28                                            cmp r0, #0
0005025a  18 bf                                            it ne
0005025c  04 30                                            addne r0, #4
0005025e  06 f1 18 01                                      add.w r1, r6, #0x18
00050262  01 60                                            str r1, [r0]
00050264  f1 69                                            ldr r1, [r6, #0x1c]
00050266  41 60                                            str r1, [r0, #4]
00050268  08 60                                            str r0, [r1]
0005026a  f0 61                                            str r0, [r6, #0x1c]
0005026c  48 46                                            mov r0, sb
0005026e  45 46                                            mov r5, r8
00050270  00 28                                            cmp r0, #0
00050272  3f f4 ee ae                                      beq.w #0x50052
00050276  0f 95                                            str r5, [sp, #0x3c]
00050278  dd f8 44 90                                      ldr.w sb, [sp, #0x44]
0005027c  da f8 00 60                                      ldr.w r6, [sl]
00050280  10 90                                            str r0, [sp, #0x40]
00050282  80 69                                            ldr r0, [r0, #0x18]
00050284  00 28                                            cmp r0, #0
00050286  04 46                                            mov r4, r0
00050288  18 bf                                            it ne
0005028a  04 3c                                            subne r4, #4
0005028c  a0 46                                            mov r8, r4
0005028e  58 f8 04 1f                                      ldr r1, [r8, #4]!
00050292  00 29                                            cmp r1, #0
00050294  00 f0 aa 80                                      beq.w #0x503ec
00050298  56 f8 14 0c                                      ldr r0, [r6, #-0x14]
0005029c  a2 46                                            mov sl, r4
0005029e  1d 90                                            str r0, [sp, #0x74]
000502a0  b9 f1 00 0f                                      cmp.w sb, #0
000502a4  56 f8 10 0c                                      ldr r0, [r6, #-0x10]
000502a8  4d 46                                            mov r5, sb
000502aa  19 90                                            str r0, [sp, #0x64]
000502ac  56 f8 0c 0c                                      ldr r0, [r6, #-0xc]
000502b0  1a 90                                            str r0, [sp, #0x68]
000502b2  56 f8 08 0c                                      ldr r0, [r6, #-0x8]
000502b6  1b 90                                            str r0, [sp, #0x6c]
000502b8  56 f8 04 0c                                      ldr r0, [r6, #-0x4]
000502bc  1c 90                                            str r0, [sp, #0x70]
000502be  5a f8 18 0f                                      ldr r0, [sl, #0x18]!
000502c2  9a f8 04 10                                      ldrb.w r1, [sl, #4]
000502c6  00 f4 f0 52                                      and r2, r0, #0x1e00
000502ca  18 bf                                            it ne
000502cc  04 3d                                            subne r5, #4
000502ce  92 f4 80 5f                                      teq.w r2, #0x1000
000502d2  03 d1                                            bne #0x502dc
000502d4  ea 68                                            ldr r2, [r5, #0xc]
000502d6  03 2a                                            cmp r2, #3
000502d8  40 f0 7d 83                                      bne.w #0x509d6
000502dc  42 00                                            lsls r2, r0, #1
000502de  13 d5                                            bpl #0x50308
000502e0  28 68                                            ldr r0, [r5]
000502e2  01 6a                                            ldr r1, [r0, #0x20]
000502e4  28 46                                            mov r0, r5
000502e6  88 47                                            blx r1
000502e8  30 b1                                            cbz r0, #0x502f8
000502ea  80 69                                            ldr r0, [r0, #0x18]
000502ec  00 f4 f0 50                                      and r0, r0, #0x1e00
000502f0  90 f4 80 6f                                      teq.w r0, #0x400
000502f4  40 f0 ff 83                                      bne.w #0x50af6
000502f8  e8 68                                            ldr r0, [r5, #0xc]
000502fa  05 28                                            cmp r0, #5
000502fc  00 f0 6e 83                                      beq.w #0x509dc
00050300  9a f8 04 10                                      ldrb.w r1, [sl, #4]
00050304  da f8 00 00                                      ldr.w r0, [sl]
00050308  c9 b2                                            uxtb r1, r1
0005030a  40 0a                                            lsrs r0, r0, #9
0005030c  40 ea c1 5b                                      orr.w fp, r0, r1, lsl #23
00050310  0b f0 0e 00                                      and r0, fp, #0xe
00050314  90 f0 06 0f                                      teq.w r0, #6
00050318  23 d1                                            bne #0x50362
0005031a  b0 6a                                            ldr r0, [r6, #0x28]
0005031c  00 28                                            cmp r0, #0
0005031e  40 f0 60 83                                      bne.w #0x509e2
00050322  28 68                                            ldr r0, [r5]
00050324  01 6a                                            ldr r1, [r0, #0x20]
00050326  28 46                                            mov r0, r5
00050328  88 47                                            blx r1
0005032a  38 b1                                            cbz r0, #0x5033c
0005032c  81 69                                            ldr r1, [r0, #0x18]
0005032e  11 f0 01 0f                                      tst.w r1, #1
00050332  41 f0 40 02                                      orr r2, r1, #0x40
00050336  82 61                                            str r2, [r0, #0x18]
00050338  40 f0 e0 83                                      bne.w #0x50afc
0005033c  28 68                                            ldr r0, [r5]
0005033e  c1 69                                            ldr r1, [r0, #0x1c]
00050340  28 46                                            mov r0, r5
00050342  88 47                                            blx r1
00050344  68 b9                                            cbnz r0, #0x50362
00050346  e8 68                                            ldr r0, [r5, #0xc]
00050348  04 28                                            cmp r0, #4
0005034a  04 bf                                            itt eq
0005034c  a8 69                                            ldreq r0, [r5, #0x18]
0005034e  5e 28                                            cmpeq r0, #0x5e
00050350  40 f0 59 83                                      bne.w #0x50a06
00050354  e8 69                                            ldr r0, [r5, #0x1c]
00050356  01 68                                            ldr r1, [r0]
00050358  c9 69                                            ldr r1, [r1, #0x1c]
0005035a  88 47                                            blx r1
0005035c  00 28                                            cmp r0, #0
0005035e  00 f0 52 83                                      beq.w #0x50a06
00050362  20 69                                            ldr r0, [r4, #0x10]
00050364  40 68                                            ldr r0, [r0, #4]
00050366  05 28                                            cmp r0, #5
00050368  2f d1                                            bne #0x503ca
0005036a  28 68                                            ldr r0, [r5]
0005036c  01 6a                                            ldr r1, [r0, #0x20]
0005036e  28 46                                            mov r0, r5
00050370  88 47                                            blx r1
00050372  50 b3                                            cbz r0, #0x503ca
00050374  28 68                                            ldr r0, [r5]
00050376  01 6a                                            ldr r1, [r0, #0x20]
00050378  28 46                                            mov r0, r5
0005037a  88 47                                            blx r1
0005037c  00 7f                                            ldrb r0, [r0, #0x1c]
0005037e  10 f0 20 0f                                      tst.w r0, #0x20
00050382  04 d0                                            beq #0x5038e
00050384  9a f8 04 10                                      ldrb.w r1, [sl, #4]
00050388  89 06                                            lsls r1, r1, #0x1a
0005038a  40 f1 39 84                                      bpl.w #0x50c00
0005038e  40 b2                                            sxtb r0, r0
00050390  41 06                                            lsls r1, r0, #0x19
00050392  04 d5                                            bpl #0x5039e
00050394  9a f8 04 10                                      ldrb.w r1, [sl, #4]
00050398  49 06                                            lsls r1, r1, #0x19
0005039a  40 f1 34 84                                      bpl.w #0x50c06
0005039e  b0 f1 ff 3f                                      cmp.w r0, #-1
000503a2  04 dc                                            bgt #0x503ae
000503a4  9a f9 04 10                                      ldrsb.w r1, [sl, #4]
000503a8  00 29                                            cmp r1, #0
000503aa  80 f2 35 84                                      bge.w #0x50c18
000503ae  01 07                                            lsls r1, r0, #0x1c
000503b0  04 d5                                            bpl #0x503bc
000503b2  9a f8 04 10                                      ldrb.w r1, [sl, #4]
000503b6  09 07                                            lsls r1, r1, #0x1c
000503b8  40 f1 28 84                                      bpl.w #0x50c0c
000503bc  c0 06                                            lsls r0, r0, #0x1b
000503be  04 d5                                            bpl #0x503ca
000503c0  9a f8 04 00                                      ldrb.w r0, [sl, #4]
000503c4  c0 06                                            lsls r0, r0, #0x1b
000503c6  40 f1 24 84                                      bpl.w #0x50c12
000503ca  d8 f8 00 40                                      ldr.w r4, [r8]
000503ce  36 68                                            ldr r6, [r6]
000503d0  d9 f8 00 90                                      ldr.w sb, [sb]
000503d4  00 2c                                            cmp r4, #0
000503d6  18 bf                                            it ne
000503d8  04 3c                                            subne r4, #4
000503da  a0 46                                            mov r8, r4
000503dc  58 f8 04 0f                                      ldr r0, [r8, #4]!
000503e0  00 28                                            cmp r0, #0
000503e2  7f f4 59 af                                      bne.w #0x50298
000503e6  dd e9 10 09                                      ldrd r0, sb, [sp, #0x40]
000503ea  80 69                                            ldr r0, [r0, #0x18]
000503ec  00 21                                            movs r1, #0
000503ee  1a 91                                            str r1, [sp, #0x68]
000503f0  19 a9                                            add r1, sp, #0x64
000503f2  0a 1d                                            adds r2, r1, #4
000503f4  19 92                                            str r2, [sp, #0x64]
000503f6  0a 92                                            str r2, [sp, #0x28]
000503f8  1b 91                                            str r1, [sp, #0x6c]
000503fa  01 68                                            ldr r1, [r0]
000503fc  00 29                                            cmp r1, #0
000503fe  1c bf                                            itt ne
00050400  d9 f8 00 20                                      ldrne.w r2, [sb]
00050404  00 2a                                            cmpne r2, #0
00050406  00 f0 35 81                                      beq.w #0x50674
0005040a  0e 9b                                            ldr r3, [sp, #0x38]
0005040c  04 33                                            adds r3, #4
0005040e  09 93                                            str r3, [sp, #0x24]
00050410  df f8 40 39                                      ldr.w r3, [pc, #0x940]
00050414  7b 44                                            add r3, pc
00050416  1b 68                                            ldr r3, [r3]
00050418  08 93                                            str r3, [sp, #0x20]
0005041a  df f8 3c 39                                      ldr.w r3, [pc, #0x93c]
0005041e  7b 44                                            add r3, pc
00050420  1b 68                                            ldr r3, [r3]
00050422  05 93                                            str r3, [sp, #0x14]
00050424  df f8 34 39                                      ldr.w r3, [pc, #0x934]
00050428  7b 44                                            add r3, pc
0005042a  1b 68                                            ldr r3, [r3]
0005042c  07 93                                            str r3, [sp, #0x1c]
0005042e  df f8 34 39                                      ldr.w r3, [pc, #0x934]
00050432  7b 44                                            add r3, pc
00050434  1b 68                                            ldr r3, [r3]
00050436  06 93                                            str r3, [sp, #0x18]
00050438  df f8 24 39                                      ldr.w r3, [pc, #0x924]
0005043c  7b 44                                            add r3, pc
0005043e  1b 68                                            ldr r3, [r3]
00050440  04 93                                            str r3, [sp, #0x10]
00050442  06 e0                                            b #0x50452
00050444  00 2a                                            cmp r2, #0
00050446  00 f0 0c 81                                      beq.w #0x50662
0005044a  90 69                                            ldr r0, [r2, #0x18]
0005044c  5e 28                                            cmp r0, #0x5e
0005044e  3f d0                                            beq #0x504d0
00050450  07 e1                                            b #0x50662
00050452  00 28                                            cmp r0, #0
00050454  18 bf                                            it ne
00050456  04 38                                            subne r0, #4
00050458  d0 f8 10 b0                                      ldr.w fp, [r0, #0x10]
0005045c  8a 46                                            mov sl, r1
0005045e  b9 f1 00 0f                                      cmp.w sb, #0
00050462  16 46                                            mov r6, r2
00050464  db f8 04 10                                      ldr.w r1, [fp, #4]
00050468  18 bf                                            it ne
0005046a  a9 f1 04 09                                      subne.w sb, sb, #4
0005046e  03 29                                            cmp r1, #3
00050470  00 f2 f7 80                                      bhi.w #0x50662
00050474  85 69                                            ldr r5, [r0, #0x18]
00050476  c5 f3 43 20                                      ubfx r0, r5, #9, #4
0005047a  81 1f                                            subs r1, r0, #6
0005047c  02 29                                            cmp r1, #2
0005047e  18 d3                                            blo #0x504b2
00050480  08 28                                            cmp r0, #8
00050482  18 bf                                            it ne
00050484  05 28                                            cmpne r0, #5
00050486  40 f0 ec 80                                      bne.w #0x50662
0005048a  48 46                                            mov r0, sb
0005048c  59 46                                            mov r1, fp
0005048e  00 f0 f7 fe                                      bl #0x51280
00050492  d9 f8 08 10                                      ldr.w r1, [sb, #8]
00050496  00 28                                            cmp r0, #0
00050498  18 bf                                            it ne
0005049a  04 30                                            addne r0, #4
0005049c  41 60                                            str r1, [r0, #4]
0005049e  d9 f8 04 10                                      ldr.w r1, [sb, #4]
000504a2  01 60                                            str r1, [r0]
000504a4  d9 f8 08 10                                      ldr.w r1, [sb, #8]
000504a8  08 60                                            str r0, [r1]
000504aa  d9 f8 04 10                                      ldr.w r1, [sb, #4]
000504ae  48 60                                            str r0, [r1, #4]
000504b0  d7 e0                                            b #0x50662
000504b2  10 98                                            ldr r0, [sp, #0x40]
000504b4  11 a9                                            add r1, sp, #0x44
000504b6  01 f0 c7 fa                                      bl #0x51a48
000504ba  04 46                                            mov r4, r0
000504bc  d9 e9 03 01                                      ldrd r0, r1, [sb, #0xc]
000504c0  4a 46                                            mov r2, sb
000504c2  04 28                                            cmp r0, #4
000504c4  4f f0 00 00                                      mov.w r0, #0
000504c8  18 bf                                            it ne
000504ca  02 46                                            movne r2, r0
000504cc  59 45                                            cmp r1, fp
000504ce  b9 d0                                            beq #0x50444
000504d0  cd e9 0b 26                                      strd r2, r6, [sp, #0x2c]
000504d4  44 21                                            movs r1, #0x44
000504d6  0f 98                                            ldr r0, [sp, #0x3c]
000504d8  05 f4 f0 56                                      and r6, r5, #0x1e00
000504dc  e2 f7 20 e9                                      blx #0x32720
000504e0  08 99                                            ldr r1, [sp, #0x20]
000504e2  05 46                                            mov r5, r0
000504e4  e2 f7 0c ea                                      blx #0x32900
000504e8  df f8 98 28                                      ldr.w r2, [pc, #0x898]
000504ec  28 46                                            mov r0, r5
000504ee  59 46                                            mov r1, fp
000504f0  0a 23                                            movs r3, #0xa
000504f2  7a 44                                            add r2, pc
000504f4  00 94                                            str r4, [sp]
000504f6  e2 f7 40 ea                                      blx #0x32978
000504fa  00 2d                                            cmp r5, #0
000504fc  0d 95                                            str r5, [sp, #0x34]
000504fe  18 bf                                            it ne
00050500  04 35                                            addne r5, #4
00050502  09 99                                            ldr r1, [sp, #0x24]
00050504  96 f4 60 6f                                      teq.w r6, #0xe00
00050508  0a 46                                            mov r2, r1
0005050a  2a 60                                            str r2, [r5]
0005050c  51 68                                            ldr r1, [r2, #4]
0005050e  69 60                                            str r1, [r5, #4]
00050510  0d 60                                            str r5, [r1]
00050512  55 60                                            str r5, [r2, #4]
00050514  25 d1                                            bne #0x50562
00050516  0f 9c                                            ldr r4, [sp, #0x3c]
00050518  1c 21                                            movs r1, #0x1c
0005051a  20 46                                            mov r0, r4
0005051c  e2 f7 00 e9                                      blx #0x32720
00050520  05 9d                                            ldr r5, [sp, #0x14]
00050522  06 46                                            mov r6, r0
00050524  29 46                                            mov r1, r5
00050526  e2 f7 ec e9                                      blx #0x32900
0005052a  0d 99                                            ldr r1, [sp, #0x34]
0005052c  30 46                                            mov r0, r6
0005052e  e2 f7 42 ea                                      blx #0x329b4
00050532  20 46                                            mov r0, r4
00050534  20 21                                            movs r1, #0x20
00050536  e2 f7 f4 e8                                      blx #0x32720
0005053a  29 46                                            mov r1, r5
0005053c  04 46                                            mov r4, r0
0005053e  e2 f7 e0 e9                                      blx #0x32900
00050542  20 46                                            mov r0, r4
00050544  31 46                                            mov r1, r6
00050546  4a 46                                            mov r2, sb
00050548  00 23                                            movs r3, #0
0005054a  e2 f7 5e ea                                      blx #0x32a08
0005054e  00 2c                                            cmp r4, #0
00050550  18 bf                                            it ne
00050552  04 34                                            addne r4, #4
00050554  09 98                                            ldr r0, [sp, #0x24]
00050556  01 46                                            mov r1, r0
00050558  21 60                                            str r1, [r4]
0005055a  48 68                                            ldr r0, [r1, #4]
0005055c  60 60                                            str r0, [r4, #4]
0005055e  04 60                                            str r4, [r0]
00050560  4c 60                                            str r4, [r1, #4]
00050562  0f 9d                                            ldr r5, [sp, #0x3c]
00050564  1c 21                                            movs r1, #0x1c
00050566  28 46                                            mov r0, r5
00050568  e2 f7 da e8                                      blx #0x32720
0005056c  07 9e                                            ldr r6, [sp, #0x1c]
0005056e  04 46                                            mov r4, r0
00050570  31 46                                            mov r1, r6
00050572  e2 f7 c6 e9                                      blx #0x32900
00050576  dd f8 34 80                                      ldr.w r8, [sp, #0x34]
0005057a  20 46                                            mov r0, r4
0005057c  41 46                                            mov r1, r8
0005057e  e2 f7 1a ea                                      blx #0x329b4
00050582  d9 f8 08 00                                      ldr.w r0, [sb, #8]
00050586  00 2c                                            cmp r4, #0
00050588  18 bf                                            it ne
0005058a  04 34                                            addne r4, #4
0005058c  1c 21                                            movs r1, #0x1c
0005058e  60 60                                            str r0, [r4, #4]
00050590  d9 f8 04 00                                      ldr.w r0, [sb, #4]
00050594  20 60                                            str r0, [r4]
00050596  d9 f8 08 00                                      ldr.w r0, [sb, #8]
0005059a  04 60                                            str r4, [r0]
0005059c  d9 f8 04 00                                      ldr.w r0, [sb, #4]
000505a0  44 60                                            str r4, [r0, #4]
000505a2  28 46                                            mov r0, r5
000505a4  e2 f7 bc e8                                      blx #0x32720
000505a8  31 46                                            mov r1, r6
000505aa  04 46                                            mov r4, r0
000505ac  e2 f7 a8 e9                                      blx #0x32900
000505b0  20 46                                            mov r0, r4
000505b2  41 46                                            mov r1, r8
000505b4  e2 f7 fe e9                                      blx #0x329b4
000505b8  d9 f8 10 10                                      ldr.w r1, [sb, #0x10]
000505bc  59 45                                            cmp r1, fp
000505be  03 d0                                            beq #0x505c8
000505c0  20 46                                            mov r0, r4
000505c2  00 f0 5d fe                                      bl #0x51280
000505c6  04 46                                            mov r4, r0
000505c8  0b 99                                            ldr r1, [sp, #0x2c]
000505ca  0c 9e                                            ldr r6, [sp, #0x30]
000505cc  89 b3                                            cbz r1, #0x50632
000505ce  88 69                                            ldr r0, [r1, #0x18]
000505d0  5e 28                                            cmp r0, #0x5e
000505d2  2e d1                                            bne #0x50632
000505d4  dd f8 3c 80                                      ldr.w r8, [sp, #0x3c]
000505d8  89 46                                            mov sb, r1
000505da  2c 21                                            movs r1, #0x2c
000505dc  40 46                                            mov r0, r8
000505de  e2 f7 a0 e8                                      blx #0x32720
000505e2  04 99                                            ldr r1, [sp, #0x10]
000505e4  05 46                                            mov r5, r0
000505e6  e2 f7 8c e9                                      blx #0x32900
000505ea  d9 f8 1c 00                                      ldr.w r0, [sb, #0x1c]
000505ee  01 68                                            ldr r1, [r0]
000505f0  02 69                                            ldr r2, [r0, #0x10]
000505f2  0d 92                                            str r2, [sp, #0x34]
000505f4  00 22                                            movs r2, #0
000505f6  0b 69                                            ldr r3, [r1, #0x10]
000505f8  41 46                                            mov r1, r8
000505fa  98 47                                            blx r3
000505fc  83 46                                            mov fp, r0
000505fe  d9 f8 20 00                                      ldr.w r0, [sb, #0x20]
00050602  00 22                                            movs r2, #0
00050604  01 68                                            ldr r1, [r0]
00050606  0b 69                                            ldr r3, [r1, #0x10]
00050608  41 46                                            mov r1, r8
0005060a  98 47                                            blx r3
0005060c  cd e9 00 40                                      strd r4, r0, [sp]
00050610  00 20                                            movs r0, #0
00050612  0d 9a                                            ldr r2, [sp, #0x34]
00050614  67 21                                            movs r1, #0x67
00050616  02 90                                            str r0, [sp, #8]
00050618  28 46                                            mov r0, r5
0005061a  5b 46                                            mov r3, fp
0005061c  e2 f7 6c ea                                      blx #0x32af8
00050620  d9 f8 1c 00                                      ldr.w r0, [sb, #0x1c]
00050624  00 22                                            movs r2, #0
00050626  01 68                                            ldr r1, [r0]
00050628  0b 69                                            ldr r3, [r1, #0x10]
0005062a  41 46                                            mov r1, r8
0005062c  98 47                                            blx r3
0005062e  81 46                                            mov sb, r0
00050630  00 e0                                            b #0x50634
00050632  25 46                                            mov r5, r4
00050634  0f 98                                            ldr r0, [sp, #0x3c]
00050636  20 21                                            movs r1, #0x20
00050638  e2 f7 72 e8                                      blx #0x32720
0005063c  06 99                                            ldr r1, [sp, #0x18]
0005063e  04 46                                            mov r4, r0
00050640  e2 f7 5e e9                                      blx #0x32900
00050644  20 46                                            mov r0, r4
00050646  49 46                                            mov r1, sb
00050648  2a 46                                            mov r2, r5
0005064a  00 23                                            movs r3, #0
0005064c  e2 f7 dc e9                                      blx #0x32a08
00050650  00 2c                                            cmp r4, #0
00050652  18 bf                                            it ne
00050654  04 34                                            addne r4, #4
00050656  0a 98                                            ldr r0, [sp, #0x28]
00050658  20 60                                            str r0, [r4]
0005065a  1b 98                                            ldr r0, [sp, #0x6c]
0005065c  60 60                                            str r0, [r4, #4]
0005065e  04 60                                            str r4, [r0]
00050660  1b 94                                            str r4, [sp, #0x6c]
00050662  da f8 00 10                                      ldr.w r1, [sl]
00050666  29 b1                                            cbz r1, #0x50674
00050668  32 68                                            ldr r2, [r6]
0005066a  50 46                                            mov r0, sl
0005066c  b1 46                                            mov sb, r6
0005066e  00 2a                                            cmp r2, #0
00050670  7f f4 ef ae                                      bne.w #0x50452
00050674  0f 9e                                            ldr r6, [sp, #0x3c]
00050676  78 22                                            movs r2, #0x78
00050678  96 f8 7c 00                                      ldrb.w r0, [r6, #0x7c]
0005067c  d6 f8 80 10                                      ldr.w r1, [r6, #0x80]
00050680  00 28                                            cmp r0, #0
00050682  18 bf                                            it ne
00050684  4f f4 96 72                                      movne.w r2, #0x12c
00050688  91 42                                            cmp r1, r2
0005068a  08 d3                                            blo #0x5069e
0005068c  10 98                                            ldr r0, [sp, #0x40]
0005068e  11 a9                                            add r1, sp, #0x44
00050690  00 22                                            movs r2, #0
00050692  e2 f7 38 ea                                      blx #0x32b04
00050696  05 46                                            mov r5, r0
00050698  00 2d                                            cmp r5, #0
0005069a  7f f4 18 ad                                      bne.w #0x500ce
0005069e  dd f8 40 a0                                      ldr.w sl, [sp, #0x40]
000506a2  da f8 10 00                                      ldr.w r0, [sl, #0x10]
000506a6  40 68                                            ldr r0, [r0, #4]
000506a8  0a 28                                            cmp r0, #0xa
000506aa  0c d1                                            bne #0x506c6
000506ac  0e 99                                            ldr r1, [sp, #0x38]
000506ae  00 25                                            movs r5, #0
000506b0  01 f1 08 00                                      add.w r0, r1, #8
000506b4  01 f1 04 08                                      add.w r8, r1, #4
000506b8  81 46                                            mov sb, r0
000506ba  e4 e1                                            b #0x50a86
000506bc  dd f8 3c 90                                      ldr.w sb, [sp, #0x3c]
000506c0  dd f8 34 a0                                      ldr.w sl, [sp, #0x34]
000506c4  33 e5                                            b #0x5012e
000506c6  df f8 a0 06                                      ldr.w r0, [pc, #0x6a0]
000506ca  78 44                                            add r0, pc
000506cc  00 68                                            ldr r0, [r0]
000506ce  00 78                                            ldrb r0, [r0]
000506d0  00 28                                            cmp r0, #0
000506d2  00 f0 9f 81                                      beq.w #0x50a14
000506d6  da f8 38 00                                      ldr.w r0, [sl, #0x38]
000506da  df f8 90 16                                      ldr.w r1, [pc, #0x690]
000506de  02 69                                            ldr r2, [r0, #0x10]
000506e0  79 44                                            add r1, pc
000506e2  30 46                                            mov r0, r6
000506e4  e2 f7 64 e8                                      blx #0x327b0
000506e8  05 46                                            mov r5, r0
000506ea  94 e1                                            b #0x50a16
000506ec  dd f8 34 a0                                      ldr.w sl, [sp, #0x34]
000506f0  da f8 04 00                                      ldr.w r0, [sl, #4]
000506f4  02 28                                            cmp r0, #2
000506f6  00 f0 de 80                                      beq.w #0x508b6
000506fa  dd f8 50 80                                      ldr.w r8, [sp, #0x50]
000506fe  b8 f1 00 0f                                      cmp.w r8, #0
00050702  18 bf                                            it ne
00050704  a8 f1 04 08                                      subne.w r8, r8, #4
00050708  d8 f8 04 00                                      ldr.w r0, [r8, #4]
0005070c  00 28                                            cmp r0, #0
0005070e  00 f0 d2 80                                      beq.w #0x508b6
00050712  04 38                                            subs r0, #4
00050714  00 f0 cf 80                                      beq.w #0x508b6
00050718  0e 99                                            ldr r1, [sp, #0x38]
0005071a  08 94                                            str r4, [sp, #0x20]
0005071c  04 31                                            adds r1, #4
0005071e  0b 91                                            str r1, [sp, #0x2c]
00050720  df f8 bc 15                                      ldr.w r1, [pc, #0x5bc]
00050724  cd f8 34 a0                                      str.w sl, [sp, #0x34]
00050728  79 44                                            add r1, pc
0005072a  09 68                                            ldr r1, [r1]
0005072c  0a 91                                            str r1, [sp, #0x28]
0005072e  df f8 c0 15                                      ldr.w r1, [pc, #0x5c0]
00050732  79 44                                            add r1, pc
00050734  0a 68                                            ldr r2, [r1]
00050736  09 92                                            str r2, [sp, #0x24]
00050738  c2 46                                            mov sl, r8
0005073a  80 46                                            mov r8, r0
0005073c  da f8 10 00                                      ldr.w r0, [sl, #0x10]
00050740  41 7a                                            ldrb r1, [r0, #9]
00050742  11 f0 60 0f                                      tst.w r1, #0x60
00050746  00 f0 ab 80                                      beq.w #0x508a0
0005074a  40 68                                            ldr r0, [r0, #4]
0005074c  02 28                                            cmp r0, #2
0005074e  40 f0 a7 80                                      bne.w #0x508a0
00050752  48 46                                            mov r0, sb
00050754  44 21                                            movs r1, #0x44
00050756  e1 f7 e4 ef                                      blx #0x32720
0005075a  0a 9e                                            ldr r6, [sp, #0x28]
0005075c  4d 46                                            mov r5, sb
0005075e  83 46                                            mov fp, r0
00050760  31 46                                            mov r1, r6
00050762  e2 f7 ce e8                                      blx #0x32900
00050766  da e9 04 10                                      ldrd r1, r0, [sl, #0x10]
0005076a  0f f2 78 52                                      addw r2, pc, #0x578
0005076e  0a 23                                            movs r3, #0xa
00050770  00 90                                            str r0, [sp]
00050772  58 46                                            mov r0, fp
00050774  e2 f7 00 e9                                      blx #0x32978
00050778  bb f1 00 0f                                      cmp.w fp, #0
0005077c  18 bf                                            it ne
0005077e  04 30                                            addne r0, #4
00050780  dd f8 2c 90                                      ldr.w sb, [sp, #0x2c]
00050784  c0 f8 00 90                                      str.w sb, [r0]
00050788  d9 f8 04 10                                      ldr.w r1, [sb, #4]
0005078c  41 60                                            str r1, [r0, #4]
0005078e  08 60                                            str r0, [r1]
00050790  20 21                                            movs r1, #0x20
00050792  c9 f8 04 00                                      str.w r0, [sb, #4]
00050796  28 46                                            mov r0, r5
00050798  e1 f7 c2 ef                                      blx #0x32720
0005079c  31 46                                            mov r1, r6
0005079e  04 46                                            mov r4, r0
000507a0  e2 f7 ae e8                                      blx #0x32900
000507a4  28 46                                            mov r0, r5
000507a6  1c 21                                            movs r1, #0x1c
000507a8  e1 f7 ba ef                                      blx #0x32720
000507ac  31 46                                            mov r1, r6
000507ae  05 46                                            mov r5, r0
000507b0  e2 f7 a6 e8                                      blx #0x32900
000507b4  28 46                                            mov r0, r5
000507b6  59 46                                            mov r1, fp
000507b8  e2 f7 fc e8                                      blx #0x329b4
000507bc  20 46                                            mov r0, r4
000507be  29 46                                            mov r1, r5
000507c0  52 46                                            mov r2, sl
000507c2  00 23                                            movs r3, #0
000507c4  e2 f7 20 e9                                      blx #0x32a08
000507c8  00 2c                                            cmp r4, #0
000507ca  18 bf                                            it ne
000507cc  04 34                                            addne r4, #4
000507ce  c4 f8 00 90                                      str.w sb, [r4]
000507d2  00 21                                            movs r1, #0
000507d4  d9 f8 04 00                                      ldr.w r0, [sb, #4]
000507d8  60 60                                            str r0, [r4, #4]
000507da  04 60                                            str r4, [r0]
000507dc  c9 f8 04 40                                      str.w r4, [sb, #4]
000507e0  da f8 00 00                                      ldr.w r0, [sl]
000507e4  82 69                                            ldr r2, [r0, #0x18]
000507e6  50 46                                            mov r0, sl
000507e8  90 47                                            blx r2
000507ea  cb f8 34 00                                      str.w r0, [fp, #0x34]
000507ee  da f8 10 00                                      ldr.w r0, [sl, #0x10]
000507f2  40 7a                                            ldrb r0, [r0, #9]
000507f4  10 f0 70 0f                                      tst.w r0, #0x70
000507f8  42 d0                                            beq #0x50880
000507fa  dd f8 3c 90                                      ldr.w sb, [sp, #0x3c]
000507fe  5e 46                                            mov r6, fp
00050800  09 9d                                            ldr r5, [sp, #0x24]
00050802  0a f1 04 00                                      add.w r0, sl, #4
00050806  cd f8 30 80                                      str.w r8, [sp, #0x30]
0005080a  4f f0 00 08                                      mov.w r8, #0
0005080e  10 90                                            str r0, [sp, #0x40]
00050810  48 46                                            mov r0, sb
00050812  20 21                                            movs r1, #0x20
00050814  e1 f7 84 ef                                      blx #0x32720
00050818  29 46                                            mov r1, r5
0005081a  83 46                                            mov fp, r0
0005081c  e2 f7 70 e8                                      blx #0x32900
00050820  48 46                                            mov r0, sb
00050822  68 21                                            movs r1, #0x68
00050824  e1 f7 7c ef                                      blx #0x32720
00050828  29 46                                            mov r1, r5
0005082a  04 46                                            mov r4, r0
0005082c  e2 f7 68 e8                                      blx #0x32900
00050830  20 46                                            mov r0, r4
00050832  41 46                                            mov r1, r8
00050834  01 22                                            movs r2, #1
00050836  e2 f7 6c e9                                      blx #0x32b10
0005083a  58 46                                            mov r0, fp
0005083c  31 46                                            mov r1, r6
0005083e  22 46                                            mov r2, r4
00050840  e2 f7 d6 e8                                      blx #0x329f0
00050844  bb f1 00 0f                                      cmp.w fp, #0
00050848  18 bf                                            it ne
0005084a  0b f1 04 0b                                      addne.w fp, fp, #4
0005084e  10 98                                            ldr r0, [sp, #0x40]
00050850  08 f1 01 08                                      add.w r8, r8, #1
00050854  cb f8 00 00                                      str.w r0, [fp]
00050858  da f8 08 00                                      ldr.w r0, [sl, #8]
0005085c  cb f8 04 00                                      str.w r0, [fp, #4]
00050860  da f8 08 00                                      ldr.w r0, [sl, #8]
00050864  c0 f8 00 b0                                      str.w fp, [r0]
00050868  da f8 10 00                                      ldr.w r0, [sl, #0x10]
0005086c  ca f8 08 b0                                      str.w fp, [sl, #8]
00050870  00 89                                            ldrh r0, [r0, #8]
00050872  c0 f3 02 30                                      ubfx r0, r0, #0xc, #3
00050876  80 45                                            cmp r8, r0
00050878  ca db                                            blt #0x50810
0005087a  dd f8 30 80                                      ldr.w r8, [sp, #0x30]
0005087e  01 e0                                            b #0x50884
00050880  da f8 08 b0                                      ldr.w fp, [sl, #8]
00050884  da f8 04 00                                      ldr.w r0, [sl, #4]
00050888  c0 f8 04 b0                                      str.w fp, [r0, #4]
0005088c  da f8 08 10                                      ldr.w r1, [sl, #8]
00050890  08 60                                            str r0, [r1]
00050892  00 20                                            movs r0, #0
00050894  ca f8 08 00                                      str.w r0, [sl, #8]
00050898  ca f8 04 00                                      str.w r0, [sl, #4]
0005089c  dd f8 3c 90                                      ldr.w sb, [sp, #0x3c]
000508a0  d8 f8 04 00                                      ldr.w r0, [r8, #4]
000508a4  00 28                                            cmp r0, #0
000508a6  18 bf                                            it ne
000508a8  04 38                                            subne r0, #4
000508aa  00 28                                            cmp r0, #0
000508ac  7f f4 44 af                                      bne.w #0x50738
000508b0  dd f8 34 a0                                      ldr.w sl, [sp, #0x34]
000508b4  08 9c                                            ldr r4, [sp, #0x20]
000508b6  14 9e                                            ldr r6, [sp, #0x50]
000508b8  a3 46                                            mov fp, r4
000508ba  00 2e                                            cmp r6, #0
000508bc  18 bf                                            it ne
000508be  04 3e                                            subne r6, #4
000508c0  70 68                                            ldr r0, [r6, #4]
000508c2  a8 b3                                            cbz r0, #0x50930
000508c4  04 38                                            subs r0, #4
000508c6  33 d0                                            beq #0x50930
000508c8  4f f0 01 08                                      mov.w r8, #1
000508cc  05 46                                            mov r5, r0
000508ce  30 69                                            ldr r0, [r6, #0x10]
000508d0  02 89                                            ldrh r2, [r0, #8]
000508d2  da f8 04 00                                      ldr.w r0, [sl, #4]
000508d6  c2 f3 42 21                                      ubfx r1, r2, #9, #3
000508da  c2 f3 02 32                                      ubfx r2, r2, #0xc, #3
000508de  e2 f7 22 e8                                      blx #0x32924
000508e2  01 46                                            mov r1, r0
000508e4  30 46                                            mov r0, r6
000508e6  00 f0 cb fc                                      bl #0x51280
000508ea  04 46                                            mov r4, r0
000508ec  00 21                                            movs r1, #0
000508ee  20 68                                            ldr r0, [r4]
000508f0  82 69                                            ldr r2, [r0, #0x18]
000508f2  20 46                                            mov r0, r4
000508f4  90 47                                            blx r2
000508f6  00 28                                            cmp r0, #0
000508f8  1c bf                                            itt ne
000508fa  04 46                                            movne r4, r0
000508fc  01 20                                            movne r0, #1
000508fe  08 ea 00 08                                      and.w r8, r8, r0
00050902  b4 42                                            cmp r4, r6
00050904  0a d0                                            beq #0x5091c
00050906  b0 68                                            ldr r0, [r6, #8]
00050908  00 2c                                            cmp r4, #0
0005090a  18 bf                                            it ne
0005090c  04 34                                            addne r4, #4
0005090e  60 60                                            str r0, [r4, #4]
00050910  70 68                                            ldr r0, [r6, #4]
00050912  20 60                                            str r0, [r4]
00050914  b0 68                                            ldr r0, [r6, #8]
00050916  04 60                                            str r4, [r0]
00050918  70 68                                            ldr r0, [r6, #4]
0005091a  44 60                                            str r4, [r0, #4]
0005091c  68 68                                            ldr r0, [r5, #4]
0005091e  2e 46                                            mov r6, r5
00050920  00 28                                            cmp r0, #0
00050922  18 bf                                            it ne
00050924  04 38                                            subne r0, #4
00050926  00 28                                            cmp r0, #0
00050928  d0 d1                                            bne #0x508cc
0005092a  b8 f1 00 0f                                      cmp.w r8, #0
0005092e  12 d0                                            beq #0x50956
00050930  48 46                                            mov r0, sb
00050932  68 21                                            movs r1, #0x68
00050934  e1 f7 f4 ee                                      blx #0x32720
00050938  05 46                                            mov r5, r0
0005093a  df f8 c4 03                                      ldr.w r0, [pc, #0x3c4]
0005093e  78 44                                            add r0, pc
00050940  01 68                                            ldr r1, [r0]
00050942  28 46                                            mov r0, r5
00050944  e1 f7 dc ef                                      blx #0x32900
00050948  14 aa                                            add r2, sp, #0x50
0005094a  28 46                                            mov r0, r5
0005094c  51 46                                            mov r1, sl
0005094e  e2 f7 e6 e8                                      blx #0x32b1c
00050952  ff f7 bc bb                                      b.w #0x500ce
00050956  ba f8 08 00                                      ldrh.w r0, [sl, #8]
0005095a  00 f4 60 61                                      and r1, r0, #0xe00
0005095e  b1 f5 00 7f                                      cmp.w r1, #0x200
00050962  16 d1                                            bne #0x50992
00050964  da f8 04 10                                      ldr.w r1, [sl, #4]
00050968  03 29                                            cmp r1, #3
0005096a  12 d8                                            bhi #0x50992
0005096c  14 9e                                            ldr r6, [sp, #0x50]
0005096e  00 2e                                            cmp r6, #0
00050970  18 bf                                            it ne
00050972  04 3e                                            subne r6, #4
00050974  30 46                                            mov r0, r6
00050976  e2 f7 d8 e8                                      blx #0x32b28
0005097a  82 46                                            mov sl, r0
0005097c  f0 68                                            ldr r0, [r6, #0xc]
0005097e  03 28                                            cmp r0, #3
00050980  40 f0 d3 80                                      bne.w #0x50b2a
00050984  00 2e                                            cmp r6, #0
00050986  00 f0 d0 80                                      beq.w #0x50b2a
0005098a  4f f0 00 09                                      mov.w sb, #0
0005098e  34 46                                            mov r4, r6
00050990  24 e1                                            b #0x50bdc
00050992  00 f4 40 61                                      and r1, r0, #0xc00
00050996  b1 f5 00 7f                                      cmp.w r1, #0x200
0005099a  12 d9                                            bls #0x509c2
0005099c  00 f4 e0 40                                      and r0, r0, #0x7000
000509a0  b0 f5 80 5f                                      cmp.w r0, #0x1000
000509a4  0d d1                                            bne #0x509c2
000509a6  da f8 04 00                                      ldr.w r0, [sl, #4]
000509aa  03 28                                            cmp r0, #3
000509ac  09 d8                                            bhi #0x509c2
000509ae  0e 9a                                            ldr r2, [sp, #0x38]
000509b0  14 ab                                            add r3, sp, #0x50
000509b2  50 46                                            mov r0, sl
000509b4  59 46                                            mov r1, fp
000509b6  cd f8 00 90                                      str.w sb, [sp]
000509ba  e2 f7 bc e8                                      blx #0x32b34
000509be  ff f7 85 bb                                      b.w #0x500cc
000509c2  0e 9a                                            ldr r2, [sp, #0x38]
000509c4  14 ab                                            add r3, sp, #0x50
000509c6  50 46                                            mov r0, sl
000509c8  59 46                                            mov r1, fp
000509ca  cd f8 00 90                                      str.w sb, [sp]
000509ce  e2 f7 b8 e8                                      blx #0x32b40
000509d2  ff f7 7b bb                                      b.w #0x500cc
000509d6  d0 4a                                            ldr r2, [pc, #0x340]
000509d8  7a 44                                            add r2, pc
000509da  1f e1                                            b #0x50c1c
000509dc  d0 4a                                            ldr r2, [pc, #0x340]
000509de  7a 44                                            add r2, pc
000509e0  1c e1                                            b #0x50c1c
000509e2  d1 4e                                            ldr r6, [pc, #0x344]
000509e4  d1 a3                                            adr r3, #0x344
000509e6  61 69                                            ldr r1, [r4, #0x14]
000509e8  ce 4a                                            ldr r2, [pc, #0x338]
000509ea  7e 44                                            add r6, pc
000509ec  cd e9 00 10                                      strd r1, r0, [sp]
000509f0  0b f0 0f 00                                      and r0, fp, #0xf
000509f4  07 28                                            cmp r0, #7
000509f6  18 bf                                            it ne
000509f8  00 26                                            movne r6, #0
000509fa  06 28                                            cmp r0, #6
000509fc  7a 44                                            add r2, pc
000509fe  18 bf                                            it ne
00050a00  33 46                                            movne r3, r6
00050a02  ff f7 db bb                                      b.w #0x501bc
00050a06  cc 4a                                            ldr r2, [pc, #0x330]
00050a08  cc 49                                            ldr r1, [pc, #0x330]
00050a0a  7a 44                                            add r2, pc
00050a0c  60 69                                            ldr r0, [r4, #0x14]
00050a0e  79 44                                            add r1, pc
00050a10  00 90                                            str r0, [sp]
00050a12  7f e0                                            b #0x50b14
00050a14  00 25                                            movs r5, #0
00050a16  30 46                                            mov r0, r6
00050a18  44 21                                            movs r1, #0x44
00050a1a  e1 f7 82 ee                                      blx #0x32720
00050a1e  04 46                                            mov r4, r0
00050a20  d3 48                                            ldr r0, [pc, #0x34c]
00050a22  78 44                                            add r0, pc
00050a24  d0 f8 00 90                                      ldr.w sb, [r0]
00050a28  20 46                                            mov r0, r4
00050a2a  49 46                                            mov r1, sb
00050a2c  e1 f7 68 ef                                      blx #0x32900
00050a30  11 a9                                            add r1, sp, #0x44
00050a32  50 46                                            mov r0, sl
00050a34  da f8 10 60                                      ldr.w r6, [sl, #0x10]
00050a38  01 f0 06 f8                                      bl #0x51a48
00050a3c  00 90                                            str r0, [sp]
00050a3e  20 46                                            mov r0, r4
00050a40  31 46                                            mov r1, r6
00050a42  2a 46                                            mov r2, r5
00050a44  0a 23                                            movs r3, #0xa
00050a46  e1 f7 98 ef                                      blx #0x32978
00050a4a  00 2c                                            cmp r4, #0
00050a4c  18 bf                                            it ne
00050a4e  04 30                                            addne r0, #4
00050a50  0e 9e                                            ldr r6, [sp, #0x38]
00050a52  06 f1 04 08                                      add.w r8, r6, #4
00050a56  c0 f8 00 80                                      str.w r8, [r0]
00050a5a  56 f8 08 1f                                      ldr r1, [r6, #8]!
00050a5e  41 60                                            str r1, [r0, #4]
00050a60  08 60                                            str r0, [r1]
00050a62  30 60                                            str r0, [r6]
00050a64  28 46                                            mov r0, r5
00050a66  e1 f7 3e ee                                      blx #0x326e4
00050a6a  0f 98                                            ldr r0, [sp, #0x3c]
00050a6c  1c 21                                            movs r1, #0x1c
00050a6e  e1 f7 58 ee                                      blx #0x32720
00050a72  49 46                                            mov r1, sb
00050a74  b1 46                                            mov sb, r6
00050a76  05 46                                            mov r5, r0
00050a78  0f 9e                                            ldr r6, [sp, #0x3c]
00050a7a  e1 f7 42 ef                                      blx #0x32900
00050a7e  28 46                                            mov r0, r5
00050a80  21 46                                            mov r1, r4
00050a82  e1 f7 98 ef                                      blx #0x329b4
00050a86  30 46                                            mov r0, r6
00050a88  28 21                                            movs r1, #0x28
00050a8a  e1 f7 4a ee                                      blx #0x32720
00050a8e  04 46                                            mov r4, r0
00050a90  b8 48                                            ldr r0, [pc, #0x2e0]
00050a92  78 44                                            add r0, pc
00050a94  01 68                                            ldr r1, [r0]
00050a96  20 46                                            mov r0, r4
00050a98  e1 f7 32 ef                                      blx #0x32900
00050a9c  11 ab                                            add r3, sp, #0x44
00050a9e  20 46                                            mov r0, r4
00050aa0  51 46                                            mov r1, sl
00050aa2  2a 46                                            mov r2, r5
00050aa4  e2 f7 52 e8                                      blx #0x32b4c
00050aa8  00 2c                                            cmp r4, #0
00050aaa  18 bf                                            it ne
00050aac  04 34                                            addne r4, #4
00050aae  c4 f8 00 80                                      str.w r8, [r4]
00050ab2  d9 f8 00 00                                      ldr.w r0, [sb]
00050ab6  60 60                                            str r0, [r4, #4]
00050ab8  04 60                                            str r4, [r0]
00050aba  c9 f8 00 40                                      str.w r4, [sb]
00050abe  19 98                                            ldr r0, [sp, #0x64]
00050ac0  0a 99                                            ldr r1, [sp, #0x28]
00050ac2  88 42                                            cmp r0, r1
00050ac4  0b d0                                            beq #0x50ade
00050ac6  20 60                                            str r0, [r4]
00050ac8  44 60                                            str r4, [r0, #4]
00050aca  1b 98                                            ldr r0, [sp, #0x6c]
00050acc  c9 f8 00 00                                      str.w r0, [sb]
00050ad0  c0 f8 00 80                                      str.w r8, [r0]
00050ad4  00 20                                            movs r0, #0
00050ad6  cd e9 19 10                                      strd r1, r0, [sp, #0x64]
00050ada  19 a8                                            add r0, sp, #0x64
00050adc  1b 90                                            str r0, [sp, #0x6c]
00050ade  3d b1                                            cbz r5, #0x50af0
00050ae0  28 68                                            ldr r0, [r5]
00050ae2  31 46                                            mov r1, r6
00050ae4  00 22                                            movs r2, #0
00050ae6  03 69                                            ldr r3, [r0, #0x10]
00050ae8  28 46                                            mov r0, r5
00050aea  98 47                                            blx r3
00050aec  ff f7 ee ba                                      b.w #0x500cc
00050af0  00 25                                            movs r5, #0
00050af2  ff f7 ec ba                                      b.w #0x500ce
00050af6  89 4a                                            ldr r2, [pc, #0x224]
00050af8  7a 44                                            add r2, pc
00050afa  8f e0                                            b #0x50c1c
00050afc  28 68                                            ldr r0, [r5]
00050afe  64 69                                            ldr r4, [r4, #0x14]
00050b00  01 6a                                            ldr r1, [r0, #0x20]
00050b02  28 46                                            mov r0, r5
00050b04  88 47                                            blx r1
00050b06  40 69                                            ldr r0, [r0, #0x14]
00050b08  89 4a                                            ldr r2, [pc, #0x224]
00050b0a  8a 49                                            ldr r1, [pc, #0x228]
00050b0c  7a 44                                            add r2, pc
00050b0e  cd e9 00 40                                      strd r4, r0, [sp]
00050b12  79 44                                            add r1, pc
00050b14  0b f0 0f 00                                      and r0, fp, #0xf
00050b18  84 a3                                            adr r3, #0x210
00050b1a  07 28                                            cmp r0, #7
00050b1c  18 bf                                            it ne
00050b1e  00 21                                            movne r1, #0
00050b20  06 28                                            cmp r0, #6
00050b22  18 bf                                            it ne
00050b24  0b 46                                            movne r3, r1
00050b26  ff f7 49 bb                                      b.w #0x501bc
00050b2a  72 48                                            ldr r0, [pc, #0x1c8]
00050b2c  4f f0 00 09                                      mov.w sb, #0
00050b30  78 44                                            add r0, pc
00050b32  d0 f8 00 80                                      ldr.w r8, [r0]
00050b36  30 69                                            ldr r0, [r6, #0x10]
00050b38  01 89                                            ldrh r1, [r0, #8]
00050b3a  01 f4 60 62                                      and r2, r1, #0xe00
00050b3e  b2 f5 00 7f                                      cmp.w r2, #0x200
00050b42  02 d1                                            bne #0x50b4a
00050b44  42 68                                            ldr r2, [r0, #4]
00050b46  04 2a                                            cmp r2, #4
00050b48  6b d3                                            blo #0x50c22
00050b4a  01 f4 40 62                                      and r2, r1, #0xc00
00050b4e  b2 f5 00 7f                                      cmp.w r2, #0x200
00050b52  07 d9                                            bls #0x50b64
00050b54  01 f4 e0 41                                      and r1, r1, #0x7000
00050b58  b1 f5 80 5f                                      cmp.w r1, #0x1000
00050b5c  02 d1                                            bne #0x50b64
00050b5e  41 68                                            ldr r1, [r0, #4]
00050b60  03 29                                            cmp r1, #3
00050b62  61 d9                                            bls #0x50c28
00050b64  e1 f7 4a ef                                      blx #0x329fc
00050b68  04 89                                            ldrh r4, [r0, #8]
00050b6a  30 69                                            ldr r0, [r6, #0x10]
00050b6c  e1 f7 46 ef                                      blx #0x329fc
00050b70  b0 f8 08 b0                                      ldrh.w fp, [r0, #8]
00050b74  50 46                                            mov r0, sl
00050b76  68 21                                            movs r1, #0x68
00050b78  e1 f7 d2 ed                                      blx #0x32720
00050b7c  41 46                                            mov r1, r8
00050b7e  05 46                                            mov r5, r0
00050b80  e1 f7 be ee                                      blx #0x32900
00050b84  c4 f3 42 21                                      ubfx r1, r4, #9, #3
00050b88  48 46                                            mov r0, sb
00050b8a  e1 f7 82 ea                                      blx #0x32090
00050b8e  01 46                                            mov r1, r0
00050b90  28 46                                            mov r0, r5
00050b92  01 22                                            movs r2, #1
00050b94  e1 f7 bc ef                                      blx #0x32b10
00050b98  50 46                                            mov r0, sl
00050b9a  20 21                                            movs r1, #0x20
00050b9c  e1 f7 c0 ed                                      blx #0x32720
00050ba0  41 46                                            mov r1, r8
00050ba2  04 46                                            mov r4, r0
00050ba4  e1 f7 ac ee                                      blx #0x32900
00050ba8  20 46                                            mov r0, r4
00050baa  31 46                                            mov r1, r6
00050bac  2a 46                                            mov r2, r5
00050bae  e1 f7 ae ee                                      blx #0x3290c
00050bb2  30 69                                            ldr r0, [r6, #0x10]
00050bb4  e1 f7 22 ef                                      blx #0x329fc
00050bb8  20 61                                            str r0, [r4, #0x10]
00050bba  cb f3 42 21                                      ubfx r1, fp, #9, #3
00050bbe  48 46                                            mov r0, sb
00050bc0  e1 f7 b8 e9                                      blx #0x31f34
00050bc4  20 46                                            mov r0, r4
00050bc6  89 46                                            mov sb, r1
00050bc8  e1 f7 ae ef                                      blx #0x32b28
00050bcc  82 46                                            mov sl, r0
00050bce  00 2c                                            cmp r4, #0
00050bd0  26 46                                            mov r6, r4
00050bd2  b0 d0                                            beq #0x50b36
00050bd4  e0 68                                            ldr r0, [r4, #0xc]
00050bd6  26 46                                            mov r6, r4
00050bd8  03 28                                            cmp r0, #3
00050bda  ac d1                                            bne #0x50b36
00050bdc  50 46                                            mov r0, sl
00050bde  68 21                                            movs r1, #0x68
00050be0  e1 f7 9e ed                                      blx #0x32720
00050be4  05 46                                            mov r5, r0
00050be6  44 48                                            ldr r0, [pc, #0x110]
00050be8  78 44                                            add r0, pc
00050bea  01 68                                            ldr r1, [r0]
00050bec  28 46                                            mov r0, r5
00050bee  e1 f7 88 ee                                      blx #0x32900
00050bf2  28 46                                            mov r0, r5
00050bf4  21 46                                            mov r1, r4
00050bf6  4a 46                                            mov r2, sb
00050bf8  e1 f7 ae ef                                      blx #0x32b58
00050bfc  ff f7 67 ba                                      b.w #0x500ce
00050c00  4f 4a                                            ldr r2, [pc, #0x13c]
00050c02  7a 44                                            add r2, pc
00050c04  0a e0                                            b #0x50c1c
00050c06  4f 4a                                            ldr r2, [pc, #0x13c]
00050c08  7a 44                                            add r2, pc
00050c0a  07 e0                                            b #0x50c1c
00050c0c  4f 4a                                            ldr r2, [pc, #0x13c]
00050c0e  7a 44                                            add r2, pc
00050c10  04 e0                                            b #0x50c1c
00050c12  4f 4a                                            ldr r2, [pc, #0x13c]
00050c14  7a 44                                            add r2, pc
00050c16  01 e0                                            b #0x50c1c
00050c18  4b 4a                                            ldr r2, [pc, #0x12c]
00050c1a  7a 44                                            add r2, pc
00050c1c  63 69                                            ldr r3, [r4, #0x14]
00050c1e  ff f7 cd ba                                      b.w #0x501bc
00050c22  35 46                                            mov r5, r6
00050c24  ff f7 53 ba                                      b.w #0x500ce
00050c28  50 46                                            mov r0, sl
00050c2a  20 21                                            movs r1, #0x20
00050c2c  e1 f7 78 ed                                      blx #0x32720
00050c30  05 46                                            mov r5, r0
00050c32  32 48                                            ldr r0, [pc, #0xc8]
00050c34  78 44                                            add r0, pc
00050c36  01 68                                            ldr r1, [r0]
00050c38  28 46                                            mov r0, r5
00050c3a  e1 f7 62 ee                                      blx #0x32900
00050c3e  00 21                                            movs r1, #0
00050c40  01 20                                            movs r0, #1
00050c42  cd e9 00 11                                      strd r1, r1, [sp]
00050c46  31 46                                            mov r1, r6
00050c48  02 90                                            str r0, [sp, #8]
00050c4a  28 46                                            mov r0, r5
00050c4c  4a 46                                            mov r2, sb
00050c4e  00 23                                            movs r3, #0
00050c50  e1 f7 c2 ee                                      blx #0x329d8
00050c54  ff f7 3b ba                                      b.w #0x500ce
00050c58  24 c6                                            stm r6!, {r2, r5}
00050c5a  08 00                                            movs r0, r1
00050c5c  74 6f                                            ldr r4, [r6, #0x74]
00050c5e  6f 20                                            movs r0, #0x6f
00050c60  6d 61                                            str r5, [r5, #0x14]
00050c62  6e 79                                            ldrb r6, [r5, #5]
00050c64  20 70                                            strb r0, [r4]
00050c66  61 72                                            strb r1, [r4, #9]
00050c68  61 6d                                            ldr r1, [r4, #0x54]
00050c6a  65 74                                            strb r5, [r4, #0x11]
00050c6c  65 72                                            strb r5, [r4, #9]
00050c6e  73 20                                            movs r0, #0x73
00050c70  74 6f                                            ldr r4, [r6, #0x74]
00050c72  20 60                                            str r0, [r4]
00050c74  25 73                                            strb r5, [r4, #0xc]
00050c76  27 20                                            movs r0, #0x27
00050c78  63 6f                                            ldr r3, [r4, #0x74]
00050c7a  6e 73                                            strb r6, [r5, #0xd]
00050c7c  74 72                                            strb r4, [r6, #9]
00050c7e  75 63                                            str r5, [r6, #0x34]
00050c80  74 6f                                            ldr r4, [r6, #0x74]
00050c82  72 00                                            lsls r2, r6, #1
00050c84  63 61                                            str r3, [r4, #0x14]
00050c86  6e 6e                                            ldr r6, [r5, #0x64]
00050c88  6f 74                                            strb r7, [r5, #0x11]
00050c8a  20 63                                            str r0, [r4, #0x30]
00050c8c  6f 6e                                            ldr r7, [r5, #0x64]
00050c8e  73 74                                            strb r3, [r6, #0x11]
00050c90  72 75                                            strb r2, [r6, #0x15]
00050c92  63 74                                            strb r3, [r4, #0x11]
00050c94  20 60                                            str r0, [r4]
00050c96  25 73                                            strb r5, [r4, #0xc]
00050c98  27 20                                            movs r0, #0x27
00050c9a  66 72                                            strb r6, [r4, #9]
00050c9c  6f 6d                                            ldr r7, [r5, #0x54]
00050c9e  20 61                                            str r0, [r4, #0x10]
00050ca0  20 6e                                            ldr r0, [r4, #0x60]
00050ca2  6f 6e                                            ldr r7, [r5, #0x64]
00050ca4  2d 6e                                            ldr r5, [r5, #0x60]
00050ca6  75 6d                                            ldr r5, [r6, #0x54]
00050ca8  65 72                                            strb r5, [r4, #9]
00050caa  69 63                                            str r1, [r5, #0x34]
00050cac  20 64                                            str r0, [r4, #0x40]
00050cae  61 74                                            strb r1, [r4, #0x11]
00050cb0  61 20                                            movs r0, #0x61
00050cb2  74 79                                            ldrb r4, [r6, #5]
00050cb4  70 65                                            str r0, [r6, #0x54]
00050cb6  00 00                                            movs r0, r0
00050cb8  63 61                                            str r3, [r4, #0x14]
00050cba  6e 6e                                            ldr r6, [r5, #0x64]
00050cbc  6f 74                                            strb r7, [r5, #0x11]
00050cbe  20 63                                            str r0, [r4, #0x30]
00050cc0  6f 6e                                            ldr r7, [r5, #0x64]
00050cc2  73 74                                            strb r3, [r6, #0x11]
00050cc4  72 75                                            strb r2, [r6, #0x15]
00050cc6  63 74                                            strb r3, [r4, #0x11]
00050cc8  20 60                                            str r0, [r4]
00050cca  25 73                                            strb r5, [r4, #0xc]
00050ccc  27 20                                            movs r0, #0x27
00050cce  66 72                                            strb r6, [r4, #9]
00050cd0  6f 6d                                            ldr r7, [r5, #0x54]
00050cd2  20 61                                            str r0, [r4, #0x10]
00050cd4  20 6d                                            ldr r0, [r4, #0x50]
00050cd6  61 74                                            strb r1, [r4, #0x11]
00050cd8  72 69                                            ldr r2, [r6, #0x14]
00050cda  78 00                                            lsls r0, r7, #1
00050cdc  24 9f                                            ldr r7, [sp, #0x90]
00050cde  06 00                                            movs r6, r0
00050ce0  10 be                                            bkpt #0x10
00050ce2  08 00                                            movs r0, r1
00050ce4  6d 61                                            str r5, [r5, #0x14]
00050ce6  74 72                                            strb r4, [r6, #9]
00050ce8  69 78                                            ldrb r1, [r5, #1]
00050cea  5f 74                                            strb r7, [r3, #0x11]
00050cec  6d 70                                            strb r5, [r5, #1]
00050cee  00 00                                            movs r0, r0
00050cf0  06 be                                            bkpt #6
00050cf2  08 00                                            movs r0, r1
00050cf4  08 ba                                            rev r0, r1
00050cf6  08 00                                            movs r0, r1
00050cf8  50 b9                                            cbnz r0, #0x50d10
00050cfa  08 00                                            movs r0, r1
00050cfc  04 b9                                            cbnz r4, #0x50d00
00050cfe  08 00                                            movs r0, r1
00050d00  fa bb                                            cbnz r2, #0x50d82
00050d02  08 00                                            movs r0, r1
00050d04  2b 9e                                            ldr r6, [sp, #0xac]
00050d06  06 00                                            movs r6, r0
00050d08  89 9d                                            ldr r5, [sp, #0x224]
00050d0a  06 00                                            movs r6, r0
00050d0c  88 9d                                            ldr r5, [sp, #0x220]
00050d0e  06 00                                            movs r6, r0
00050d10  e2 9d                                            ldr r5, [sp, #0x388]
00050d12  06 00                                            movs r6, r0
00050d14  0e c3                                            stm r3!, {r1, r2, r3}
00050d16  08 00                                            movs r0, r1
00050d18  aa 96                                            str r6, [sp, #0x2a8]
00050d1a  06 00                                            movs r6, r0
00050d1c  ba 95                                            str r5, [sp, #0x2e8]
00050d1e  06 00                                            movs r6, r0
00050d20  fa 96                                            str r6, [sp, #0x3e8]
00050d22  06 00                                            movs r6, r0
00050d24  06 97                                            str r7, [sp, #0x18]
00050d26  06 00                                            movs r6, r0
00050d28  12 97                                            str r7, [sp, #0x48]
00050d2a  06 00                                            movs r6, r0
00050d2c  6f 75                                            strb r7, [r5, #0x15]
00050d2e  74 00                                            lsls r4, r6, #1
00050d30  21 96                                            str r6, [sp, #0x84]
00050d32  06 00                                            movs r6, r0
00050d34  ea 95                                            str r5, [sp, #0x3a8]
00050d36  06 00                                            movs r6, r0
00050d38  65 97                                            str r7, [sp, #0x194]
00050d3a  06 00                                            movs r6, r0
00050d3c  ee 96                                            str r6, [sp, #0x3b8]
00050d3e  06 00                                            movs r6, r0
00050d40  99 95                                            str r5, [sp, #0x264]
00050d42  06 00                                            movs r6, r0
00050d44  cb 95                                            str r5, [sp, #0x32c]
00050d46  06 00                                            movs r6, r0
00050d48  f1 95                                            str r5, [sp, #0x3c4]
00050d4a  06 00                                            movs r6, r0
00050d4c  35 96                                            str r6, [sp, #0xd4]
00050d4e  06 00                                            movs r6, r0
00050d50  67 96                                            str r6, [sp, #0x19c]
00050d52  06 00                                            movs r6, r0
00050d54  24 c1                                            stm r1!, {r2, r5}
00050d56  08 00                                            movs r0, r1
00050d58  1a c1                                            stm r1!, {r1, r3, r4}
00050d5a  08 00                                            movs r0, r1
00050d5c  10 c1                                            stm r1!, {r4}
00050d5e  08 00                                            movs r0, r1
00050d60  fc c0                                            stm r0!, {r2, r3, r4, r5, r6, r7}
00050d62  08 00                                            movs r0, r1
00050d64  06 c1                                            stm r1!, {r1, r2}
00050d66  08 00                                            movs r0, r1
00050d68  7e be                                            bkpt #0x7e
00050d6a  08 00                                            movs r0, r1
00050d6c  d4 9b                                            ldr r3, [sp, #0x350]
00050d6e  06 00                                            movs r6, r0
00050d70  16 bb                                            cbnz r6, #0x50db8
00050d72  08 00                                            movs r0, r1
00050d74  a6 ba                                            .byte 0xa6, 0xba
00050d76  08 00                                            movs r0, r1
00050d78  d3 9f                                            ldr r7, [sp, #0x34c]
00050d7a  06 00                                            movs r6, r0
00050d7c  0c 9f                                            ldr r7, [sp, #0x30]
00050d7e  06 00                                            movs r6, r0
00050d80  e0 c3                                            stm r3!, {r5, r6, r7}
00050d82  08 00                                            movs r0, r1
00050d84  cc 9d                                            ldr r5, [sp, #0x330]
00050d86  06 00                                            movs r6, r0

; FUNCTION 0x00052160, declared_size=6, range_size=6, mode=thumb
; class-group: ast_function_expression
; alias: _ZN23ast_function_expression13hir_no_rvalueEP9exec_listP22_mesa_glsl_parse_state
; demangled: ast_function_expression::hir_no_rvalue(exec_list*, _mesa_glsl_parse_state*)
; decoder-mode: thumb
00052160  03 68                                            ldr r3, [r0]
00052162  5b 68                                            ldr r3, [r3, #4]
00052164  18 47                                            bx r3
