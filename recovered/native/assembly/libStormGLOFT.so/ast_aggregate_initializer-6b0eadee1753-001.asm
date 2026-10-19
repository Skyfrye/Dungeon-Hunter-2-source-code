; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00051564, declared_size=1124, range_size=1124, mode=thumb
; class-group: ast_aggregate_initializer
; alias: _ZN25ast_aggregate_initializer3hirEP9exec_listP22_mesa_glsl_parse_state
; demangled: ast_aggregate_initializer::hir(exec_list*, _mesa_glsl_parse_state*)
; decoder-mode: thumb
00051564  f0 b5                                            push {r4, r5, r6, r7, lr}
00051566  03 af                                            add r7, sp, #0xc
00051568  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
0005156c  8f b0                                            sub sp, #0x3c
0005156e  0c 46                                            mov r4, r1
00051570  df f8 94 13                                      ldr.w r1, [pc, #0x394]
00051574  06 1d                                            adds r6, r0, #4
00051576  93 46                                            mov fp, r2
00051578  79 44                                            add r1, pc
0005157a  0d f1 18 0c                                      add.w ip, sp, #0x18
0005157e  09 68                                            ldr r1, [r1]
00051580  09 68                                            ldr r1, [r1]
00051582  0e 91                                            str r1, [sp, #0x38]
00051584  4e ce                                            ldm r6, {r1, r2, r3, r6}
00051586  45 69                                            ldr r5, [r0, #0x14]
00051588  8c e8 4c 00                                      stm.w ip, {r2, r3, r6}
0005158c  cd e9 09 51                                      strd r5, r1, [sp, #0x24]
00051590  45 6c                                            ldr r5, [r0, #0x44]
00051592  7d b1                                            cbz r5, #0x515b4
00051594  9b f8 b4 11                                      ldrb.w r1, [fp, #0x1b4]
00051598  81 b1                                            cbz r1, #0x515bc
0005159a  69 68                                            ldr r1, [r5, #4]
0005159c  09 29                                            cmp r1, #9
0005159e  27 d1                                            bne #0x515f0
000515a0  00 f1 34 03                                      add.w r3, r0, #0x34
000515a4  06 aa                                            add r2, sp, #0x18
000515a6  20 46                                            mov r0, r4
000515a8  29 46                                            mov r1, r5
000515aa  cd f8 00 b0                                      str.w fp, [sp]
000515ae  ff f7 eb fb                                      bl #0x50d88
000515b2  0d e0                                            b #0x515d0
000515b4  df f8 08 24                                      ldr.w r2, [pc, #0x408]
000515b8  7a 44                                            add r2, pc
000515ba  02 e0                                            b #0x515c2
000515bc  df f8 fc 23                                      ldr.w r2, [pc, #0x3fc]
000515c0  7a 44                                            add r2, pc
000515c2  06 a8                                            add r0, sp, #0x18
000515c4  59 46                                            mov r1, fp
000515c6  e1 f7 78 e9                                      blx #0x328b8
000515ca  58 46                                            mov r0, fp
000515cc  e1 f7 58 ea                                      blx #0x32a80
000515d0  04 46                                            mov r4, r0
000515d2  df f8 f0 03                                      ldr.w r0, [pc, #0x3f0]
000515d6  0e 99                                            ldr r1, [sp, #0x38]
000515d8  78 44                                            add r0, pc
000515da  00 68                                            ldr r0, [r0]
000515dc  00 68                                            ldr r0, [r0]
000515de  40 1a                                            subs r0, r0, r1
000515e0  01 bf                                            itttt eq
000515e2  20 46                                            moveq r0, r4
000515e4  0f b0                                            addeq sp, #0x3c
000515e6  bd e8 00 0f                                      popeq.w {r8, sb, sl, fp}
000515ea  f0 bd                                            popeq {r4, r5, r6, r7, pc}
000515ec  e0 f7 38 ed                                      blx #0x32060
000515f0  00 f1 34 03                                      add.w r3, r0, #0x34
000515f4  07 29                                            cmp r1, #7
000515f6  07 d1                                            bne #0x51608
000515f8  06 aa                                            add r2, sp, #0x18
000515fa  20 46                                            mov r0, r4
000515fc  29 46                                            mov r1, r5
000515fe  cd f8 00 b0                                      str.w fp, [sp]
00051602  ff f7 61 fd                                      bl #0x510c8
00051606  e3 e7                                            b #0x515d0
00051608  28 89                                            ldrh r0, [r5, #8]
0005160a  00 f4 40 61                                      and r1, r0, #0xc00
0005160e  00 20                                            movs r0, #0
00051610  b0 eb 91 2f                                      cmp.w r0, r1, lsr #10
00051614  02 d1                                            bne #0x5161c
00051616  e8 4a                                            ldr r2, [pc, #0x3a0]
00051618  7a 44                                            add r2, pc
0005161a  d2 e7                                            b #0x515c2
0005161c  0b a9                                            add r1, sp, #0x2c
0005161e  0c 90                                            str r0, [sp, #0x30]
00051620  08 1d                                            adds r0, r1, #4
00051622  0b 90                                            str r0, [sp, #0x2c]
00051624  1a 46                                            mov r2, r3
00051626  20 46                                            mov r0, r4
00051628  5b 46                                            mov r3, fp
0005162a  0d 91                                            str r1, [sp, #0x34]
0005162c  ff f7 68 ff                                      bl #0x51500
00051630  29 89                                            ldrh r1, [r5, #8]
00051632  00 28                                            cmp r0, #0
00051634  01 f4 40 62                                      and r2, r1, #0xc00
00051638  01 f4 e0 46                                      and r6, r1, #0x7000
0005163c  00 f0 95 80                                      beq.w #0x5176a
00051640  93 b2                                            uxth r3, r2
00051642  b3 f5 00 7f                                      cmp.w r3, #0x200
00051646  0a d9                                            bls #0x5165e
00051648  b6 f5 80 5f                                      cmp.w r6, #0x1000
0005164c  07 d1                                            bne #0x5165e
0005164e  6b 68                                            ldr r3, [r5, #4]
00051650  03 2b                                            cmp r3, #3
00051652  04 d8                                            bhi #0x5165e
00051654  c1 f3 42 23                                      ubfx r3, r1, #9, #3
00051658  98 42                                            cmp r0, r3
0005165a  40 f0 84 80                                      bne.w #0x51766
0005165e  11 f4 c0 4f                                      tst.w r1, #0x6000
00051662  06 d0                                            beq #0x51672
00051664  6b 68                                            ldr r3, [r5, #4]
00051666  02 2b                                            cmp r3, #2
00051668  03 d1                                            bne #0x51672
0005166a  c1 f3 02 33                                      ubfx r3, r1, #0xc, #3
0005166e  98 42                                            cmp r0, r3
00051670  7b d1                                            bne #0x5176a
00051672  0b 9e                                            ldr r6, [sp, #0x2c]
00051674  00 2e                                            cmp r6, #0
00051676  18 bf                                            it ne
00051678  04 3e                                            subne r6, #4
0005167a  70 68                                            ldr r0, [r6, #4]
0005167c  00 28                                            cmp r0, #0
0005167e  5a d0                                            beq #0x51736
00051680  01 1f                                            subs r1, r0, #4
00051682  58 d0                                            beq #0x51736
00051684  4f f0 01 0a                                      mov.w sl, #1
00051688  03 94                                            str r4, [sp, #0xc]
0005168a  05 91                                            str r1, [sp, #0x14]
0005168c  34 46                                            mov r4, r6
0005168e  68 68                                            ldr r0, [r5, #4]
00051690  02 28                                            cmp r0, #2
00051692  16 d1                                            bne #0x516c2
00051694  30 69                                            ldr r0, [r6, #0x10]
00051696  00 89                                            ldrh r0, [r0, #8]
00051698  c0 f3 42 21                                      ubfx r1, r0, #9, #3
0005169c  c0 f3 02 32                                      ubfx r2, r0, #0xc, #3
000516a0  02 20                                            movs r0, #2
000516a2  e1 f7 40 e9                                      blx #0x32924
000516a6  80 46                                            mov r8, r0
000516a8  30 69                                            ldr r0, [r6, #0x10]
000516aa  41 46                                            mov r1, r8
000516ac  5a 46                                            mov r2, fp
000516ae  e1 f7 60 ea                                      blx #0x32b70
000516b2  01 28                                            cmp r0, #1
000516b4  34 46                                            mov r4, r6
000516b6  04 d1                                            bne #0x516c2
000516b8  30 46                                            mov r0, r6
000516ba  41 46                                            mov r1, r8
000516bc  ff f7 e0 fd                                      bl #0x51280
000516c0  04 46                                            mov r4, r0
000516c2  68 7a                                            ldrb r0, [r5, #9]
000516c4  a0 46                                            mov r8, r4
000516c6  10 f0 60 0f                                      tst.w r0, #0x60
000516ca  0a d0                                            beq #0x516e2
000516cc  68 68                                            ldr r0, [r5, #4]
000516ce  58 f8 10 9f                                      ldr sb, [r8, #0x10]!
000516d2  02 28                                            cmp r0, #2
000516d4  07 d1                                            bne #0x516e6
000516d6  28 46                                            mov r0, r5
000516d8  e1 f7 90 e9                                      blx #0x329fc
000516dc  81 45                                            cmp sb, r0
000516de  07 d0                                            beq #0x516f0
000516e0  07 e1                                            b #0x518f2
000516e2  58 f8 10 9f                                      ldr sb, [r8, #0x10]!
000516e6  28 46                                            mov r0, r5
000516e8  e1 f7 5a ea                                      blx #0x32ba0
000516ec  81 45                                            cmp sb, r0
000516ee  33 d1                                            bne #0x51758
000516f0  20 68                                            ldr r0, [r4]
000516f2  00 21                                            movs r1, #0
000516f4  82 69                                            ldr r2, [r0, #0x18]
000516f6  20 46                                            mov r0, r4
000516f8  90 47                                            blx r2
000516fa  00 28                                            cmp r0, #0
000516fc  18 bf                                            it ne
000516fe  04 46                                            movne r4, r0
00051700  b1 68                                            ldr r1, [r6, #8]
00051702  00 2c                                            cmp r4, #0
00051704  18 bf                                            it ne
00051706  04 34                                            addne r4, #4
00051708  00 28                                            cmp r0, #0
0005170a  61 60                                            str r1, [r4, #4]
0005170c  71 68                                            ldr r1, [r6, #4]
0005170e  21 60                                            str r1, [r4]
00051710  b1 68                                            ldr r1, [r6, #8]
00051712  0c 60                                            str r4, [r1]
00051714  71 68                                            ldr r1, [r6, #4]
00051716  4c 60                                            str r4, [r1, #4]
00051718  05 9e                                            ldr r6, [sp, #0x14]
0005171a  71 68                                            ldr r1, [r6, #4]
0005171c  18 bf                                            it ne
0005171e  01 20                                            movne r0, #1
00051720  0a ea 00 0a                                      and.w sl, sl, r0
00051724  00 29                                            cmp r1, #0
00051726  18 bf                                            it ne
00051728  04 39                                            subne r1, #4
0005172a  00 29                                            cmp r1, #0
0005172c  ad d1                                            bne #0x5168a
0005172e  03 9c                                            ldr r4, [sp, #0xc]
00051730  ba f1 01 0f                                      cmp.w sl, #1
00051734  34 d1                                            bne #0x517a0
00051736  58 46                                            mov r0, fp
00051738  68 21                                            movs r1, #0x68
0005173a  e0 f7 f2 ef                                      blx #0x32720
0005173e  04 46                                            mov r4, r0
00051740  98 48                                            ldr r0, [pc, #0x260]
00051742  78 44                                            add r0, pc
00051744  01 68                                            ldr r1, [r0]
00051746  20 46                                            mov r0, r4
00051748  e1 f7 da e8                                      blx #0x32900
0005174c  0b aa                                            add r2, sp, #0x2c
0005174e  20 46                                            mov r0, r4
00051750  29 46                                            mov r1, r5
00051752  e1 f7 e4 e9                                      blx #0x32b1c
00051756  3c e7                                            b #0x515d2
00051758  28 46                                            mov r0, r5
0005175a  e1 f7 22 ea                                      blx #0x32ba0
0005175e  d8 f8 00 10                                      ldr.w r1, [r8]
00051762  79 a2                                            adr r2, #0x1e4
00051764  cb e0                                            b #0x518fe
00051766  4f f4 80 56                                      mov.w r6, #0x1000
0005176a  8f 4b                                            ldr r3, [pc, #0x23c]
0005176c  90 b2                                            uxth r0, r2
0005176e  b0 f5 00 7f                                      cmp.w r0, #0x200
00051772  7b 44                                            add r3, pc
00051774  0a d9                                            bls #0x5178c
00051776  b6 f5 80 5f                                      cmp.w r6, #0x1000
0005177a  07 d1                                            bne #0x5178c
0005177c  8b 48                                            ldr r0, [pc, #0x22c]
0005177e  8c 4b                                            ldr r3, [pc, #0x230]
00051780  6a 68                                            ldr r2, [r5, #4]
00051782  78 44                                            add r0, pc
00051784  7b 44                                            add r3, pc
00051786  04 2a                                            cmp r2, #4
00051788  28 bf                                            it hs
0005178a  03 46                                            movhs r3, r0
0005178c  89 4a                                            ldr r2, [pc, #0x224]
0005178e  c1 f3 42 20                                      ubfx r0, r1, #9, #3
00051792  00 90                                            str r0, [sp]
00051794  06 a8                                            add r0, sp, #0x18
00051796  7a 44                                            add r2, pc
00051798  59 46                                            mov r1, fp
0005179a  e1 f7 8e e8                                      blx #0x328b8
0005179e  14 e7                                            b #0x515ca
000517a0  58 46                                            mov r0, fp
000517a2  44 21                                            movs r1, #0x44
000517a4  e0 f7 bc ef                                      blx #0x32720
000517a8  06 46                                            mov r6, r0
000517aa  76 48                                            ldr r0, [pc, #0x1d8]
000517ac  78 44                                            add r0, pc
000517ae  01 68                                            ldr r1, [r0]
000517b0  30 46                                            mov r0, r6
000517b2  e1 f7 a6 e8                                      blx #0x32900
000517b6  03 20                                            movs r0, #3
000517b8  73 a2                                            adr r2, #0x1cc
000517ba  00 90                                            str r0, [sp]
000517bc  30 46                                            mov r0, r6
000517be  29 46                                            mov r1, r5
000517c0  0a 23                                            movs r3, #0xa
000517c2  e1 f7 da e8                                      blx #0x32978
000517c6  00 2e                                            cmp r6, #0
000517c8  05 96                                            str r6, [sp, #0x14]
000517ca  18 bf                                            it ne
000517cc  04 36                                            addne r6, #4
000517ce  21 1d                                            adds r1, r4, #4
000517d0  04 91                                            str r1, [sp, #0x10]
000517d2  31 60                                            str r1, [r6]
000517d4  a1 68                                            ldr r1, [r4, #8]
000517d6  71 60                                            str r1, [r6, #4]
000517d8  0e 60                                            str r6, [r1]
000517da  a6 60                                            str r6, [r4, #8]
000517dc  0b 9e                                            ldr r6, [sp, #0x2c]
000517de  00 2e                                            cmp r6, #0
000517e0  18 bf                                            it ne
000517e2  04 3e                                            subne r6, #4
000517e4  b0 46                                            mov r8, r6
000517e6  58 f8 04 0f                                      ldr r0, [r8, #4]!
000517ea  00 28                                            cmp r0, #0
000517ec  71 d0                                            beq #0x518d2
000517ee  6b 48                                            ldr r0, [pc, #0x1ac]
000517f0  4f f0 00 0a                                      mov.w sl, #0
000517f4  78 44                                            add r0, pc
000517f6  00 68                                            ldr r0, [r0]
000517f8  03 90                                            str r0, [sp, #0xc]
000517fa  67 48                                            ldr r0, [pc, #0x19c]
000517fc  78 44                                            add r0, pc
000517fe  00 68                                            ldr r0, [r0]
00051800  02 90                                            str r0, [sp, #8]
00051802  05 98                                            ldr r0, [sp, #0x14]
00051804  00 69                                            ldr r0, [r0, #0x10]
00051806  41 7a                                            ldrb r1, [r0, #9]
00051808  11 f0 60 0f                                      tst.w r1, #0x60
0005180c  2c d0                                            beq #0x51868
0005180e  40 68                                            ldr r0, [r0, #4]
00051810  02 28                                            cmp r0, #2
00051812  29 d1                                            bne #0x51868
00051814  58 46                                            mov r0, fp
00051816  20 21                                            movs r1, #0x20
00051818  e0 f7 82 ef                                      blx #0x32720
0005181c  02 9d                                            ldr r5, [sp, #8]
0005181e  81 46                                            mov sb, r0
00051820  29 46                                            mov r1, r5
00051822  e1 f7 6e e8                                      blx #0x32900
00051826  58 46                                            mov r0, fp
00051828  68 21                                            movs r1, #0x68
0005182a  e0 f7 7a ef                                      blx #0x32720
0005182e  29 46                                            mov r1, r5
00051830  04 46                                            mov r4, r0
00051832  e1 f7 66 e8                                      blx #0x32900
00051836  20 46                                            mov r0, r4
00051838  51 46                                            mov r1, sl
0005183a  01 22                                            movs r2, #1
0005183c  e1 f7 68 e9                                      blx #0x32b10
00051840  05 99                                            ldr r1, [sp, #0x14]
00051842  48 46                                            mov r0, sb
00051844  22 46                                            mov r2, r4
00051846  e1 f7 d4 e8                                      blx #0x329f0
0005184a  58 46                                            mov r0, fp
0005184c  20 21                                            movs r1, #0x20
0005184e  e0 f7 68 ef                                      blx #0x32720
00051852  29 46                                            mov r1, r5
00051854  04 46                                            mov r4, r0
00051856  e1 f7 54 e8                                      blx #0x32900
0005185a  20 46                                            mov r0, r4
0005185c  49 46                                            mov r1, sb
0005185e  32 46                                            mov r2, r6
00051860  00 23                                            movs r3, #0
00051862  e1 f7 d2 e8                                      blx #0x32a08
00051866  1f e0                                            b #0x518a8
00051868  58 46                                            mov r0, fp
0005186a  1c 21                                            movs r1, #0x1c
0005186c  e0 f7 58 ef                                      blx #0x32720
00051870  dd f8 0c 90                                      ldr.w sb, [sp, #0xc]
00051874  05 46                                            mov r5, r0
00051876  49 46                                            mov r1, sb
00051878  e1 f7 42 e8                                      blx #0x32900
0005187c  05 99                                            ldr r1, [sp, #0x14]
0005187e  28 46                                            mov r0, r5
00051880  e1 f7 98 e8                                      blx #0x329b4
00051884  58 46                                            mov r0, fp
00051886  20 21                                            movs r1, #0x20
00051888  e0 f7 4a ef                                      blx #0x32720
0005188c  49 46                                            mov r1, sb
0005188e  04 46                                            mov r4, r0
00051890  e1 f7 36 e8                                      blx #0x32900
00051894  01 20                                            movs r0, #1
00051896  29 46                                            mov r1, r5
00051898  00 fa 0a f0                                      lsl.w r0, r0, sl
0005189c  32 46                                            mov r2, r6
0005189e  00 90                                            str r0, [sp]
000518a0  20 46                                            mov r0, r4
000518a2  00 23                                            movs r3, #0
000518a4  e1 f7 92 e8                                      blx #0x329cc
000518a8  00 2c                                            cmp r4, #0
000518aa  18 bf                                            it ne
000518ac  04 34                                            addne r4, #4
000518ae  04 99                                            ldr r1, [sp, #0x10]
000518b0  0a f1 01 0a                                      add.w sl, sl, #1
000518b4  21 60                                            str r1, [r4]
000518b6  48 68                                            ldr r0, [r1, #4]
000518b8  60 60                                            str r0, [r4, #4]
000518ba  04 60                                            str r4, [r0]
000518bc  4c 60                                            str r4, [r1, #4]
000518be  d8 f8 00 60                                      ldr.w r6, [r8]
000518c2  00 2e                                            cmp r6, #0
000518c4  18 bf                                            it ne
000518c6  04 3e                                            subne r6, #4
000518c8  b0 46                                            mov r8, r6
000518ca  58 f8 04 0f                                      ldr r0, [r8, #4]!
000518ce  00 28                                            cmp r0, #0
000518d0  97 d1                                            bne #0x51802
000518d2  58 46                                            mov r0, fp
000518d4  1c 21                                            movs r1, #0x1c
000518d6  e0 f7 24 ef                                      blx #0x32720
000518da  04 46                                            mov r4, r0
000518dc  30 48                                            ldr r0, [pc, #0xc0]
000518de  78 44                                            add r0, pc
000518e0  01 68                                            ldr r1, [r0]
000518e2  20 46                                            mov r0, r4
000518e4  e1 f7 0c e8                                      blx #0x32900
000518e8  05 99                                            ldr r1, [sp, #0x14]
000518ea  20 46                                            mov r0, r4
000518ec  e1 f7 62 e8                                      blx #0x329b4
000518f0  6f e6                                            b #0x515d2
000518f2  28 46                                            mov r0, r5
000518f4  e1 f7 82 e8                                      blx #0x329fc
000518f8  d8 f8 00 10                                      ldr.w r1, [r8]
000518fc  03 a2                                            adr r2, #0xc
000518fe  c3 68                                            ldr r3, [r0, #0xc]
00051900  c8 68                                            ldr r0, [r1, #0xc]
00051902  00 90                                            str r0, [sp]
00051904  06 a8                                            add r0, sp, #0x18
00051906  47 e7                                            b #0x51798
00051908  3c af                                            add r7, sp, #0xf0
0005190a  08 00                                            movs r0, r1
0005190c  74 79                                            ldrb r4, [r6, #5]
0005190e  70 65                                            str r0, [r6, #0x54]
00051910  20 65                                            str r0, [r4, #0x50]
00051912  72 72                                            strb r2, [r6, #9]
00051914  6f 72                                            strb r7, [r5, #9]
00051916  20 69                                            ldr r0, [r4, #0x10]
00051918  6e 20                                            movs r0, #0x6e
0005191a  6d 61                                            str r5, [r5, #0x14]
0005191c  74 72                                            strb r4, [r6, #9]
0005191e  69 78                                            ldrb r1, [r5, #1]
00051920  20 63                                            str r0, [r4, #0x30]
00051922  6f 6e                                            ldr r7, [r5, #0x64]
00051924  73 74                                            strb r3, [r6, #0x11]
00051926  72 75                                            strb r2, [r6, #0x15]
00051928  63 74                                            strb r3, [r4, #0x11]
0005192a  6f 72                                            strb r7, [r5, #9]
0005192c  3a 20                                            movs r0, #0x3a
0005192e  65 78                                            ldrb r5, [r4, #1]
00051930  70 65                                            str r0, [r6, #0x54]
00051932  63 74                                            strb r3, [r4, #0x11]
00051934  65 64                                            str r5, [r4, #0x44]
00051936  3a 20                                            movs r0, #0x3a
00051938  25 73                                            strb r5, [r4, #0xc]
0005193a  2c 20                                            movs r0, #0x2c
0005193c  66 6f                                            ldr r6, [r4, #0x74]
0005193e  75 6e                                            ldr r5, [r6, #0x64]
00051940  64 20                                            movs r0, #0x64
00051942  25 73                                            strb r5, [r4, #0xc]
00051944  00 00                                            movs r0, r0
00051946  00 00                                            movs r0, r0
00051948  74 79                                            ldrb r4, [r6, #5]
0005194a  70 65                                            str r0, [r6, #0x54]
0005194c  20 65                                            str r0, [r4, #0x50]
0005194e  72 72                                            strb r2, [r6, #9]
00051950  6f 72                                            strb r7, [r5, #9]
00051952  20 69                                            ldr r0, [r4, #0x10]
00051954  6e 20                                            movs r0, #0x6e
00051956  76 65                                            str r6, [r6, #0x54]
00051958  63 74                                            strb r3, [r4, #0x11]
0005195a  6f 72                                            strb r7, [r5, #9]
0005195c  20 63                                            str r0, [r4, #0x30]
0005195e  6f 6e                                            ldr r7, [r5, #0x64]
00051960  73 74                                            strb r3, [r6, #0x11]
00051962  72 75                                            strb r2, [r6, #0x15]
00051964  63 74                                            strb r3, [r4, #0x11]
00051966  6f 72                                            strb r7, [r5, #9]
00051968  3a 20                                            movs r0, #0x3a
0005196a  65 78                                            ldrb r5, [r4, #1]
0005196c  70 65                                            str r0, [r6, #0x54]
0005196e  63 74                                            strb r3, [r4, #0x11]
00051970  65 64                                            str r5, [r4, #0x44]
00051972  3a 20                                            movs r0, #0x3a
00051974  25 73                                            strb r5, [r4, #0xc]
00051976  2c 20                                            movs r0, #0x2c
00051978  66 6f                                            ldr r6, [r4, #0x74]
0005197a  75 6e                                            ldr r5, [r6, #0x64]
0005197c  64 20                                            movs r0, #0x64
0005197e  25 73                                            strb r5, [r4, #0xc]
00051980  00 00                                            movs r0, r0
00051982  00 00                                            movs r0, r0
00051984  8c ad                                            add r5, sp, #0x230
00051986  08 00                                            movs r0, r1
00051988  76 65                                            str r6, [r6, #0x54]
0005198a  63 5f                                            ldrsh r3, [r4, r5]
0005198c  6d 61                                            str r5, [r5, #0x14]
0005198e  74 5f                                            ldrsh r4, [r6, r5]
00051990  63 74                                            strb r3, [r4, #0x11]
00051992  6f 72                                            strb r7, [r5, #9]
00051994  00 00                                            movs r0, r0
00051996  00 00                                            movs r0, r0
00051998  3c ad                                            add r5, sp, #0xf0
0005199a  08 00                                            movs r0, r1
0005199c  44 ad                                            add r5, sp, #0x110
0005199e  08 00                                            movs r0, r1
000519a0  5a ac                                            add r4, sp, #0x168
000519a2  08 00                                            movs r0, r1
000519a4  f6 ad                                            add r5, sp, #0x3d8
000519a6  08 00                                            movs r0, r1
000519a8  ca 8b                                            ldrh r2, [r1, #0x1e]
000519aa  06 00                                            movs r6, r0
000519ac  ba 8b                                            ldrh r2, [r7, #0x1c]
000519ae  06 00                                            movs r6, r0
000519b0  b1 8b                                            ldrh r1, [r6, #0x1c]
000519b2  06 00                                            movs r6, r0
000519b4  78 8b                                            ldrh r0, [r7, #0x1a]
000519b6  06 00                                            movs r6, r0
000519b8  b0 8c                                            ldrh r0, [r6, #0x24]
000519ba  06 00                                            movs r6, r0
000519bc  f6 89                                            ldrh r6, [r6, #0xe]
000519be  06 00                                            movs r6, r0
000519c0  da 89                                            ldrh r2, [r3, #0xe]
000519c2  06 00                                            movs r6, r0
000519c4  dc ae                                            add r6, sp, #0x370
000519c6  08 00                                            movs r0, r1

; FUNCTION 0x00052166, declared_size=6, range_size=6, mode=thumb
; class-group: ast_aggregate_initializer
; alias: _ZN25ast_aggregate_initializer13hir_no_rvalueEP9exec_listP22_mesa_glsl_parse_state
; demangled: ast_aggregate_initializer::hir_no_rvalue(exec_list*, _mesa_glsl_parse_state*)
; decoder-mode: thumb
00052166  03 68                                            ldr r3, [r0]
00052168  5b 68                                            ldr r3, [r3, #4]
0005216a  18 47                                            bx r3
