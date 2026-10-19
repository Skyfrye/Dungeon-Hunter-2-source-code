; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0005949c, declared_size=576, range_size=576, mode=thumb
; class-group: ast_cs_input_layout
; alias: _ZN19ast_cs_input_layout3hirEP9exec_listP22_mesa_glsl_parse_state
; demangled: ast_cs_input_layout::hir(exec_list*, _mesa_glsl_parse_state*)
; decoder-mode: thumb
0005949c  f0 b5                                            push {r4, r5, r6, r7, lr}
0005949e  03 af                                            add r7, sp, #0xc
000594a0  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
000594a4  97 b0                                            sub sp, #0x5c
000594a6  88 46                                            mov r8, r1
000594a8  68 49                                            ldr r1, [pc, #0x1a0]
000594aa  06 1d                                            adds r6, r0, #4
000594ac  93 46                                            mov fp, r2
000594ae  79 44                                            add r1, pc
000594b0  0d f1 04 0c                                      add.w ip, sp, #4
000594b4  09 68                                            ldr r1, [r1]
000594b6  09 68                                            ldr r1, [r1]
000594b8  16 91                                            str r1, [sp, #0x58]
000594ba  4e ce                                            ldm r6, {r1, r2, r3, r6}
000594bc  45 69                                            ldr r5, [r0, #0x14]
000594be  8c e8 4c 00                                      stm.w ip, {r2, r3, r6}
000594c2  cd e9 04 51                                      strd r5, r1, [sp, #0x10]
000594c6  9b f8 a0 10                                      ldrb.w r1, [fp, #0xa0]
000594ca  71 b1                                            cbz r1, #0x594ea
000594cc  00 f1 20 01                                      add.w r1, r0, #0x20
000594d0  00 22                                            movs r2, #0
000594d2  0b eb 82 06                                      add.w r6, fp, r2, lsl #2
000594d6  51 f8 22 30                                      ldr.w r3, [r1, r2, lsl #2]
000594da  d6 f8 a4 60                                      ldr.w r6, [r6, #0xa4]
000594de  9e 42                                            cmp r6, r3
000594e0  23 d1                                            bne #0x5952a
000594e2  53 1c                                            adds r3, r2, #1
000594e4  01 2a                                            cmp r2, #1
000594e6  1a 46                                            mov r2, r3
000594e8  f3 dd                                            ble #0x594d2
000594ea  db f8 00 10                                      ldr.w r1, [fp]
000594ee  00 f1 20 05                                      add.w r5, r0, #0x20
000594f2  4f f0 00 0c                                      mov.w ip, #0
000594f6  01 26                                            movs r6, #1
000594f8  01 f5 58 7e                                      add.w lr, r1, #0x360
000594fc  00 22                                            movs r2, #0
000594fe  00 24                                            movs r4, #0
00059500  5e f8 22 30                                      ldr.w r3, [lr, r2, lsl #2]
00059504  55 f8 22 00                                      ldr.w r0, [r5, r2, lsl #2]
00059508  98 42                                            cmp r0, r3
0005950a  14 d8                                            bhi #0x59536
0005950c  a6 fb 00 63                                      umull r6, r3, r6, r0
00059510  04 fb 00 34                                      mla r4, r4, r0, r3
00059514  d1 f8 6c 33                                      ldr.w r3, [r1, #0x36c]
00059518  98 1b                                            subs r0, r3, r6
0005951a  7c eb 04 00                                      sbcs.w r0, ip, r4
0005951e  10 d3                                            blo #0x59542
00059520  50 1c                                            adds r0, r2, #1
00059522  02 2a                                            cmp r2, #2
00059524  02 46                                            mov r2, r0
00059526  eb db                                            blt #0x59500
00059528  11 e0                                            b #0x5954e
0005952a  01 a8                                            add r0, sp, #4
0005952c  48 a2                                            adr r2, #0x120
0005952e  59 46                                            mov r1, fp
00059530  d9 f7 c2 e9                                      blx #0x328b8
00059534  7b e0                                            b #0x5962e
00059536  00 93                                            str r3, [sp]
00059538  02 f1 78 03                                      add.w r3, r2, #0x78
0005953c  01 a8                                            add r0, sp, #4
0005953e  55 a2                                            adr r2, #0x154
00059540  02 e0                                            b #0x59548
00059542  53 4a                                            ldr r2, [pc, #0x14c]
00059544  01 a8                                            add r0, sp, #4
00059546  7a 44                                            add r2, pc
00059548  59 46                                            mov r1, fp
0005954a  d9 f7 b6 e9                                      blx #0x328b8
0005954e  01 20                                            movs r0, #1
00059550  00 21                                            movs r1, #0
00059552  8b f8 a0 00                                      strb.w r0, [fp, #0xa0]
00059556  0b f1 a4 00                                      add.w r0, fp, #0xa4
0005955a  55 f8 21 20                                      ldr.w r2, [r5, r1, lsl #2]
0005955e  40 f8 21 20                                      str.w r2, [r0, r1, lsl #2]
00059562  01 31                                            adds r1, #1
00059564  03 29                                            cmp r1, #3
00059566  f8 d1                                            bne #0x5955a
00059568  db f8 14 00                                      ldr.w r0, [fp, #0x14]
0005956c  44 21                                            movs r1, #0x44
0005956e  d9 f7 d8 e8                                      blx #0x32720
00059572  06 46                                            mov r6, r0
00059574  55 48                                            ldr r0, [pc, #0x154]
00059576  78 44                                            add r0, pc
00059578  d0 f8 00 90                                      ldr.w sb, [r0]
0005957c  30 46                                            mov r0, r6
0005957e  49 46                                            mov r1, sb
00059580  d9 f7 be e9                                      blx #0x32900
00059584  52 48                                            ldr r0, [pc, #0x148]
00059586  03 21                                            movs r1, #3
00059588  52 4a                                            ldr r2, [pc, #0x148]
0005958a  00 23                                            movs r3, #0
0005958c  78 44                                            add r0, pc
0005958e  00 91                                            str r1, [sp]
00059590  7a 44                                            add r2, pc
00059592  00 68                                            ldr r0, [r0]
00059594  d0 f8 00 a0                                      ldr.w sl, [r0]
00059598  30 46                                            mov r0, r6
0005959a  51 46                                            mov r1, sl
0005959c  d9 f7 ec e9                                      blx #0x32978
000595a0  b0 69                                            ldr r0, [r6, #0x18]
000595a2  40 f2 81 11                                      movw r1, #0x181
000595a6  00 2e                                            cmp r6, #0
000595a8  20 ea 01 00                                      bic.w r0, r0, r1
000595ac  40 f2 01 11                                      movw r1, #0x101
000595b0  40 ea 01 00                                      orr.w r0, r0, r1
000595b4  b0 61                                            str r0, [r6, #0x18]
000595b6  30 46                                            mov r0, r6
000595b8  08 f1 04 01                                      add.w r1, r8, #4
000595bc  18 bf                                            it ne
000595be  04 30                                            addne r0, #4
000595c0  01 60                                            str r1, [r0]
000595c2  d8 f8 08 10                                      ldr.w r1, [r8, #8]
000595c6  41 60                                            str r1, [r0, #4]
000595c8  08 60                                            str r0, [r1]
000595ca  31 46                                            mov r1, r6
000595cc  c8 f8 08 00                                      str.w r0, [r8, #8]
000595d0  db f8 14 00                                      ldr.w r0, [fp, #0x14]
000595d4  d9 f7 c8 eb                                      blx #0x32d68
000595d8  0d f1 18 08                                      add.w r8, sp, #0x18
000595dc  34 21                                            movs r1, #0x34
000595de  08 f1 0c 00                                      add.w r0, r8, #0xc
000595e2  d9 f7 3e e8                                      blx #0x32660
000595e6  40 46                                            mov r0, r8
000595e8  95 e8 0e 00                                      ldm.w r5, {r1, r2, r3}
000595ec  0e c0                                            stm r0!, {r1, r2, r3}
000595ee  30 46                                            mov r0, r6
000595f0  68 21                                            movs r1, #0x68
000595f2  d9 f7 96 e8                                      blx #0x32720
000595f6  49 46                                            mov r1, sb
000595f8  04 46                                            mov r4, r0
000595fa  d9 f7 82 e9                                      blx #0x32900
000595fe  20 46                                            mov r0, r4
00059600  51 46                                            mov r1, sl
00059602  42 46                                            mov r2, r8
00059604  d9 f7 dc e9                                      blx #0x329c0
00059608  30 46                                            mov r0, r6
0005960a  68 21                                            movs r1, #0x68
0005960c  74 63                                            str r4, [r6, #0x34]
0005960e  d9 f7 88 e8                                      blx #0x32720
00059612  49 46                                            mov r1, sb
00059614  04 46                                            mov r4, r0
00059616  d9 f7 74 e9                                      blx #0x32900
0005961a  20 46                                            mov r0, r4
0005961c  51 46                                            mov r1, sl
0005961e  42 46                                            mov r2, r8
00059620  d9 f7 ce e9                                      blx #0x329c0
00059624  b0 69                                            ldr r0, [r6, #0x18]
00059626  b4 63                                            str r4, [r6, #0x38]
00059628  40 f4 80 00                                      orr r0, r0, #0x400000
0005962c  b0 61                                            str r0, [r6, #0x18]
0005962e  2a 48                                            ldr r0, [pc, #0xa8]
00059630  16 99                                            ldr r1, [sp, #0x58]
00059632  78 44                                            add r0, pc
00059634  00 68                                            ldr r0, [r0]
00059636  00 68                                            ldr r0, [r0]
00059638  40 1a                                            subs r0, r0, r1
0005963a  01 bf                                            itttt eq
0005963c  00 20                                            moveq r0, #0
0005963e  17 b0                                            addeq sp, #0x5c
00059640  bd e8 00 0f                                      popeq.w {r8, sb, sl, fp}
00059644  f0 bd                                            popeq {r4, r5, r6, r7, pc}
00059646  d8 f7 0c ed                                      blx #0x32060
0005964a  00 bf                                            nop
0005964c  06 30                                            adds r0, #6
0005964e  08 00                                            movs r0, r1
00059650  63 6f                                            ldr r3, [r4, #0x74]
00059652  6d 70                                            strb r5, [r5, #1]
00059654  75 74                                            strb r5, [r6, #0x11]
00059656  65 20                                            movs r0, #0x65
00059658  73 68                                            ldr r3, [r6, #4]
0005965a  61 64                                            str r1, [r4, #0x44]
0005965c  65 72                                            strb r5, [r4, #9]
0005965e  20 69                                            ldr r0, [r4, #0x10]
00059660  6e 70                                            strb r6, [r5, #1]
00059662  75 74                                            strb r5, [r6, #0x11]
00059664  20 6c                                            ldr r0, [r4, #0x40]
00059666  61 79                                            ldrb r1, [r4, #5]
00059668  6f 75                                            strb r7, [r5, #0x15]
0005966a  74 20                                            movs r0, #0x74
0005966c  64 6f                                            ldr r4, [r4, #0x74]
0005966e  65 73                                            strb r5, [r4, #0xd]
00059670  20 6e                                            ldr r0, [r4, #0x60]
00059672  6f 74                                            strb r7, [r5, #0x11]
00059674  20 6d                                            ldr r0, [r4, #0x50]
00059676  61 74                                            strb r1, [r4, #0x11]
00059678  63 68                                            ldr r3, [r4, #4]
0005967a  20 70                                            strb r0, [r4]
0005967c  72 65                                            str r2, [r6, #0x54]
0005967e  76 69                                            ldr r6, [r6, #0x14]
00059680  6f 75                                            strb r7, [r5, #0x15]
00059682  73 20                                            movs r0, #0x73
00059684  64 65                                            str r4, [r4, #0x54]
00059686  63 6c                                            ldr r3, [r4, #0x44]
00059688  61 72                                            strb r1, [r4, #9]
0005968a  61 74                                            strb r1, [r4, #0x11]
0005968c  69 6f                                            ldr r1, [r5, #0x74]
0005968e  6e 00                                            lsls r6, r5, #1
00059690  08 22                                            movs r2, #8
00059692  06 00                                            movs r6, r0
00059694  6c 6f                                            ldr r4, [r5, #0x74]
00059696  63 61                                            str r3, [r4, #0x14]
00059698  6c 5f                                            ldrsh r4, [r5, r5]
0005969a  73 69                                            ldr r3, [r6, #0x14]
0005969c  7a 65                                            str r2, [r7, #0x54]
0005969e  5f 25                                            movs r5, #0x5f
000596a0  63 20                                            movs r0, #0x63
000596a2  65 78                                            ldrb r5, [r4, #1]
000596a4  63 65                                            str r3, [r4, #0x54]
000596a6  65 64                                            str r5, [r4, #0x44]
000596a8  73 20                                            movs r0, #0x73
000596aa  4d 41                                            adcs r5, r1
000596ac  58 5f                                            ldrsh r0, [r3, r5]
000596ae  43 4f                                            ldr r7, [pc, #0x10c]
000596b0  4d 50                                            str r5, [r1, r1]
000596b2  55 54                                            strb r5, [r2, r1]
000596b4  45 5f                                            ldrsh r5, [r0, r5]
000596b6  57 4f                                            ldr r7, [pc, #0x15c]
000596b8  52 4b                                            ldr r3, [pc, #0x148]
000596ba  5f 47                                            bxns fp
000596bc  52 4f                                            ldr r7, [pc, #0x148]
000596be  55 50                                            str r5, [r2, r1]
000596c0  5f 53                                            strh r7, [r3, r5]
000596c2  49 5a                                            ldrh r1, [r1, r1]
000596c4  45 20                                            movs r0, #0x45
000596c6  28 25                                            movs r5, #0x28
000596c8  64 29                                            cmp r1, #0x64
000596ca  00 00                                            movs r0, r0
000596cc  c2 2f                                            cmp r7, #0xc2
000596ce  08 00                                            movs r0, r1
000596d0  f8 2f                                            cmp r7, #0xf8
000596d2  08 00                                            movs r0, r1
000596d4  05 22                                            movs r2, #5
000596d6  06 00                                            movs r6, r0
000596d8  82 2e                                            cmp r6, #0x82
000596da  08 00                                            movs r0, r1
