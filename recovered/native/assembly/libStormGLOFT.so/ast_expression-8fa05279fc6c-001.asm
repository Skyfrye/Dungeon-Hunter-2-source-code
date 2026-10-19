; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0004edd8, declared_size=16, range_size=16, mode=thumb
; class-group: ast_expression
; alias: _ZN14ast_expression15operator_stringE13ast_operators
; demangled: ast_expression::operator_string(ast_operators)
; decoder-mode: thumb
0004edd8  02 49                                            ldr r1, [pc, #8]
0004edda  79 44                                            add r1, pc
0004eddc  51 f8 20 00                                      ldr.w r0, [r1, r0, lsl #2]
0004ede0  70 47                                            bx lr
0004ede2  00 bf                                            nop
0004ede4  56 69                                            ldr r6, [r2, #0x14]
0004ede6  08 00                                            movs r0, r1

; FUNCTION 0x000522f8, declared_size=6, range_size=6, mode=thumb
; class-group: ast_expression
; alias: _ZN14ast_expression3hirEP9exec_listP22_mesa_glsl_parse_state
; demangled: ast_expression::hir(exec_list*, _mesa_glsl_parse_state*)
; decoder-mode: thumb
000522f8  01 23                                            movs r3, #1
000522fa  5e f0 f5 bb                                      b.w #0xb0ae8

; FUNCTION 0x00052300, declared_size=5636, range_size=5636, mode=thumb
; class-group: ast_expression
; alias: _ZN14ast_expression6do_hirEP9exec_listP22_mesa_glsl_parse_stateb
; demangled: ast_expression::do_hir(exec_list*, _mesa_glsl_parse_state*, bool)
; decoder-mode: thumb
00052300  f0 b5                                            push {r4, r5, r6, r7, lr}
00052302  03 af                                            add r7, sp, #0xc
00052304  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
00052308  a5 b0                                            sub sp, #0x94
0005230a  06 46                                            mov r6, r0
0005230c  df f8 08 0f                                      ldr.w r0, [pc, #0xf08]
00052310  35 1d                                            adds r5, r6, #4
00052312  99 46                                            mov sb, r3
00052314  78 44                                            add r0, pc
00052316  92 46                                            mov sl, r2
00052318  88 46                                            mov r8, r1
0005231a  0d f1 68 0c                                      add.w ip, sp, #0x68
0005231e  00 68                                            ldr r0, [r0]
00052320  00 68                                            ldr r0, [r0]
00052322  24 90                                            str r0, [sp, #0x90]
00052324  00 20                                            movs r0, #0
00052326  20 90                                            str r0, [sp, #0x80]
00052328  07 f8 31 0c                                      strb r0, [r7, #-0x31]
0005232c  2f cd                                            ldm r5, {r0, r1, r2, r3, r5}
0005232e  8c e8 2e 00                                      stm.w ip, {r1, r2, r3, r5}
00052332  1e 90                                            str r0, [sp, #0x78]
00052334  31 6a                                            ldr r1, [r6, #0x20]
00052336  2f 29                                            cmp r1, #0x2f
00052338  00 f2 d6 85                                      bhi.w #0x52ee8
0005233c  df e8 11 f0                                      tbh [pc, r1, lsl #1]
00052340  6b 02                                            lsls r3, r5, #9
00052342  92 02                                            lsls r2, r2, #0xa
00052344  b4 02                                            lsls r4, r6, #0xa
00052346  30 00                                            movs r0, r6
00052348  30 00                                            movs r0, r6
0005234a  30 00                                            movs r0, r6
0005234c  30 00                                            movs r0, r6
0005234e  f2 02                                            lsls r2, r6, #0xb
00052350  53 01                                            lsls r3, r2, #5
00052352  53 01                                            lsls r3, r2, #5
00052354  6c 00                                            lsls r4, r5, #1
00052356  6c 00                                            lsls r4, r5, #1
00052358  6c 00                                            lsls r4, r5, #1
0005235a  6c 00                                            lsls r4, r5, #1
0005235c  a2 01                                            lsls r2, r4, #6
0005235e  a2 01                                            lsls r2, r4, #6
00052360  fb 00                                            lsls r3, r7, #3
00052362  fb 00                                            lsls r3, r7, #3
00052364  fb 00                                            lsls r3, r7, #3
00052366  2c 03                                            lsls r4, r5, #0xc
00052368  50 03                                            lsls r0, r2, #0xd
0005236a  49 04                                            lsls r1, r1, #0x11
0005236c  82 04                                            lsls r2, r0, #0x12
0005236e  4f 05                                            lsls r7, r1, #0x15
00052370  ab 00                                            lsls r3, r5, #2
00052372  ab 00                                            lsls r3, r5, #2
00052374  7e 05                                            lsls r6, r7, #0x15
00052376  ab 00                                            lsls r3, r5, #2
00052378  ab 00                                            lsls r3, r5, #2
0005237a  e9 01                                            lsls r1, r5, #7
0005237c  e9 01                                            lsls r1, r5, #7
0005237e  23 01                                            lsls r3, r4, #4
00052380  23 01                                            lsls r3, r4, #4
00052382  23 01                                            lsls r3, r4, #4
00052384  d7 05                                            lsls r7, r2, #0x17
00052386  18 02                                            lsls r0, r3, #8
00052388  18 02                                            lsls r0, r3, #8
0005238a  4c 02                                            lsls r4, r1, #9
0005238c  4c 02                                            lsls r4, r1, #9
0005238e  d1 06                                            lsls r1, r2, #0x1b
00052390  d8 06                                            lsls r0, r3, #0x1b
00052392  d4 05                                            lsls r4, r2, #0x17
00052394  05 07                                            lsls r5, r0, #0x1c
00052396  21 07                                            lsls r1, r4, #0x1c
00052398  33 07                                            lsls r3, r6, #0x1c
0005239a  45 07                                            lsls r5, r0, #0x1d
0005239c  57 07                                            lsls r7, r2, #0x1d
0005239e  e2 07                                            lsls r2, r4, #0x1f
000523a0  70 6a                                            ldr r0, [r6, #0x24]
000523a2  52 46                                            mov r2, sl
000523a4  01 68                                            ldr r1, [r0]
000523a6  4b 68                                            ldr r3, [r1, #4]
000523a8  41 46                                            mov r1, r8
000523aa  98 47                                            blx r3
000523ac  21 90                                            str r0, [sp, #0x84]
000523ae  52 46                                            mov r2, sl
000523b0  b0 6a                                            ldr r0, [r6, #0x28]
000523b2  01 68                                            ldr r1, [r0]
000523b4  4b 68                                            ldr r3, [r1, #4]
000523b6  41 46                                            mov r1, r8
000523b8  98 47                                            blx r3
000523ba  22 90                                            str r0, [sp, #0x88]
000523bc  1a a9                                            add r1, sp, #0x68
000523be  30 6a                                            ldr r0, [r6, #0x20]
000523c0  00 22                                            movs r2, #0
000523c2  00 91                                            str r1, [sp]
000523c4  53 46                                            mov r3, sl
000523c6  05 28                                            cmp r0, #5
000523c8  21 a8                                            add r0, sp, #0x84
000523ca  00 f1 04 01                                      add.w r1, r0, #4
000523ce  08 bf                                            it eq
000523d0  01 22                                            moveq r2, #1
000523d2  4f f0 00 08                                      mov.w r8, #0
000523d6  01 f0 eb fc                                      bl #0x53db0
000523da  05 46                                            mov r5, r0
000523dc  2c 21                                            movs r1, #0x2c
000523de  68 68                                            ldr r0, [r5, #4]
000523e0  0b 28                                            cmp r0, #0xb
000523e2  4f f0 00 00                                      mov.w r0, #0
000523e6  08 bf                                            it eq
000523e8  01 20                                            moveq r0, #1
000523ea  07 f8 31 0c                                      strb r0, [r7, #-0x31]
000523ee  50 46                                            mov r0, sl
000523f0  e0 f7 96 e9                                      blx #0x32720
000523f4  04 46                                            mov r4, r0
000523f6  df f8 24 0e                                      ldr.w r0, [pc, #0xe24]
000523fa  78 44                                            add r0, pc
000523fc  01 68                                            ldr r1, [r0]
000523fe  20 46                                            mov r0, r4
00052400  e0 f7 7e ea                                      blx #0x32900
00052404  df f8 18 0e                                      ldr.w r0, [pc, #0xe18]
00052408  31 6a                                            ldr r1, [r6, #0x20]
0005240a  dd e9 21 32                                      ldrd r3, r2, [sp, #0x84]
0005240e  78 44                                            add r0, pc
00052410  50 f8 21 10                                      ldr.w r1, [r0, r1, lsl #2]
00052414  00 92                                            str r2, [sp]
00052416  7d e2                                            b #0x52914
00052418  70 6a                                            ldr r0, [r6, #0x24]
0005241a  52 46                                            mov r2, sl
0005241c  01 68                                            ldr r1, [r0]
0005241e  4b 68                                            ldr r3, [r1, #4]
00052420  41 46                                            mov r1, r8
00052422  98 47                                            blx r3
00052424  04 46                                            mov r4, r0
00052426  52 46                                            mov r2, sl
00052428  21 94                                            str r4, [sp, #0x84]
0005242a  b0 6a                                            ldr r0, [r6, #0x28]
0005242c  01 68                                            ldr r1, [r0]
0005242e  4b 68                                            ldr r3, [r1, #4]
00052430  41 46                                            mov r1, r8
00052432  98 47                                            blx r3
00052434  01 46                                            mov r1, r0
00052436  22 91                                            str r1, [sp, #0x88]
00052438  20 69                                            ldr r0, [r4, #0x10]
0005243a  42 68                                            ldr r2, [r0, #4]
0005243c  02 2a                                            cmp r2, #2
0005243e  5e d8                                            bhi #0x524fe
00052440  0c 69                                            ldr r4, [r1, #0x10]
00052442  61 68                                            ldr r1, [r4, #4]
00052444  02 29                                            cmp r1, #2
00052446  5a d8                                            bhi #0x524fe
00052448  01 89                                            ldrh r1, [r0, #8]
0005244a  01 f4 60 61                                      and r1, r1, #0xe00
0005244e  b1 f5 00 7f                                      cmp.w r1, #0x200
00052452  54 d1                                            bne #0x524fe
00052454  21 89                                            ldrh r1, [r4, #8]
00052456  01 f4 60 61                                      and r1, r1, #0xe00
0005245a  b1 f5 00 7f                                      cmp.w r1, #0x200
0005245e  4e d1                                            bne #0x524fe
00052460  21 a9                                            add r1, sp, #0x84
00052462  52 46                                            mov r2, sl
00052464  04 31                                            adds r1, #4
00052466  e0 f7 8a eb                                      blx #0x32b7c
0005246a  38 b9                                            cbnz r0, #0x5247c
0005246c  21 a9                                            add r1, sp, #0x84
0005246e  20 46                                            mov r0, r4
00052470  52 46                                            mov r2, sl
00052472  e0 f7 84 eb                                      blx #0x32b7c
00052476  00 28                                            cmp r0, #0
00052478  01 f0 ba 81                                      beq.w #0x537f0
0005247c  dd e9 21 01                                      ldrd r0, r1, [sp, #0x84]
00052480  09 69                                            ldr r1, [r1, #0x10]
00052482  00 69                                            ldr r0, [r0, #0x10]
00052484  49 68                                            ldr r1, [r1, #4]
00052486  40 68                                            ldr r0, [r0, #4]
00052488  88 42                                            cmp r0, r1
0005248a  41 f0 a7 81                                      bne.w #0x537dc
0005248e  df f8 94 0d                                      ldr.w r0, [pc, #0xd94]
00052492  78 44                                            add r0, pc
00052494  3d e0                                            b #0x52512
00052496  70 6a                                            ldr r0, [r6, #0x24]
00052498  52 46                                            mov r2, sl
0005249a  01 68                                            ldr r1, [r0]
0005249c  4b 68                                            ldr r3, [r1, #4]
0005249e  41 46                                            mov r1, r8
000524a0  98 47                                            blx r3
000524a2  21 90                                            str r0, [sp, #0x84]
000524a4  52 46                                            mov r2, sl
000524a6  b0 6a                                            ldr r0, [r6, #0x28]
000524a8  01 68                                            ldr r1, [r0]
000524aa  4b 68                                            ldr r3, [r1, #4]
000524ac  41 46                                            mov r1, r8
000524ae  98 47                                            blx r3
000524b0  22 90                                            str r0, [sp, #0x88]
000524b2  1a a9                                            add r1, sp, #0x68
000524b4  30 6a                                            ldr r0, [r6, #0x20]
000524b6  00 22                                            movs r2, #0
000524b8  00 91                                            str r1, [sp]
000524ba  53 46                                            mov r3, sl
000524bc  18 28                                            cmp r0, #0x18
000524be  21 a8                                            add r0, sp, #0x84
000524c0  00 f1 04 01                                      add.w r1, r0, #4
000524c4  08 bf                                            it eq
000524c6  01 22                                            moveq r2, #1
000524c8  01 f0 72 fc                                      bl #0x53db0
000524cc  05 46                                            mov r5, r0
000524ce  50 46                                            mov r0, sl
000524d0  2c 21                                            movs r1, #0x2c
000524d2  e0 f7 26 e9                                      blx #0x32720
000524d6  04 46                                            mov r4, r0
000524d8  df f8 4c 0d                                      ldr.w r0, [pc, #0xd4c]
000524dc  78 44                                            add r0, pc
000524de  01 68                                            ldr r1, [r0]
000524e0  20 46                                            mov r0, r4
000524e2  e0 f7 0e ea                                      blx #0x32900
000524e6  dd e9 21 30                                      ldrd r3, r0, [sp, #0x84]
000524ea  31 6a                                            ldr r1, [r6, #0x20]
000524ec  00 90                                            str r0, [sp]
000524ee  00 20                                            movs r0, #0
000524f0  cd e9 01 00                                      strd r0, r0, [sp, #4]
000524f4  df f8 34 0d                                      ldr.w r0, [pc, #0xd34]
000524f8  78 44                                            add r0, pc
000524fa  00 f0 cb bc                                      b.w #0x52e94
000524fe  df f8 30 2d                                      ldr.w r2, [pc, #0xd30]
00052502  1a a8                                            add r0, sp, #0x68
00052504  51 46                                            mov r1, sl
00052506  7a 44                                            add r2, pc
00052508  e0 f7 d6 e9                                      blx #0x328b8
0005250c  df f8 24 0d                                      ldr.w r0, [pc, #0xd24]
00052510  78 44                                            add r0, pc
00052512  00 68                                            ldr r0, [r0]
00052514  2c 21                                            movs r1, #0x2c
00052516  04 68                                            ldr r4, [r0]
00052518  50 46                                            mov r0, sl
0005251a  e0 f7 02 e9                                      blx #0x32720
0005251e  05 46                                            mov r5, r0
00052520  df f8 14 0d                                      ldr.w r0, [pc, #0xd14]
00052524  78 44                                            add r0, pc
00052526  01 68                                            ldr r1, [r0]
00052528  28 46                                            mov r0, r5
0005252a  e0 f7 ea e9                                      blx #0x32900
0005252e  df f8 0c 0d                                      ldr.w r0, [pc, #0xd0c]
00052532  78 44                                            add r0, pc
00052534  1b e2                                            b #0x5296e
00052536  70 6a                                            ldr r0, [r6, #0x24]
00052538  52 46                                            mov r2, sl
0005253a  01 68                                            ldr r1, [r0]
0005253c  4b 68                                            ldr r3, [r1, #4]
0005253e  41 46                                            mov r1, r8
00052540  98 47                                            blx r3
00052542  04 46                                            mov r4, r0
00052544  52 46                                            mov r2, sl
00052546  21 94                                            str r4, [sp, #0x84]
00052548  b0 6a                                            ldr r0, [r6, #0x28]
0005254a  01 68                                            ldr r1, [r0]
0005254c  4b 68                                            ldr r3, [r1, #4]
0005254e  41 46                                            mov r1, r8
00052550  98 47                                            blx r3
00052552  22 90                                            str r0, [sp, #0x88]
00052554  1a ab                                            add r3, sp, #0x68
00052556  01 69                                            ldr r1, [r0, #0x10]
00052558  20 69                                            ldr r0, [r4, #0x10]
0005255a  32 6a                                            ldr r2, [r6, #0x20]
0005255c  00 93                                            str r3, [sp]
0005255e  53 46                                            mov r3, sl
00052560  02 f0 0e f8                                      bl #0x54580
00052564  04 46                                            mov r4, r0
00052566  50 46                                            mov r0, sl
00052568  2c 21                                            movs r1, #0x2c
0005256a  e0 f7 da e8                                      blx #0x32720
0005256e  05 46                                            mov r5, r0
00052570  df f8 cc 0c                                      ldr.w r0, [pc, #0xccc]
00052574  78 44                                            add r0, pc
00052576  01 68                                            ldr r1, [r0]
00052578  28 46                                            mov r0, r5
0005257a  e0 f7 c2 e9                                      blx #0x32900
0005257e  df f8 c4 0c                                      ldr.w r0, [pc, #0xcc4]
00052582  78 44                                            add r0, pc
00052584  65 e0                                            b #0x52652
00052586  70 6a                                            ldr r0, [r6, #0x24]
00052588  52 46                                            mov r2, sl
0005258a  01 68                                            ldr r1, [r0]
0005258c  4b 68                                            ldr r3, [r1, #4]
0005258e  41 46                                            mov r1, r8
00052590  98 47                                            blx r3
00052592  04 46                                            mov r4, r0
00052594  52 46                                            mov r2, sl
00052596  21 94                                            str r4, [sp, #0x84]
00052598  b0 6a                                            ldr r0, [r6, #0x28]
0005259a  01 68                                            ldr r1, [r0]
0005259c  4b 68                                            ldr r3, [r1, #4]
0005259e  41 46                                            mov r1, r8
000525a0  98 47                                            blx r3
000525a2  22 90                                            str r0, [sp, #0x88]
000525a4  1a ab                                            add r3, sp, #0x68
000525a6  01 69                                            ldr r1, [r0, #0x10]
000525a8  20 69                                            ldr r0, [r4, #0x10]
000525aa  32 6a                                            ldr r2, [r6, #0x20]
000525ac  00 93                                            str r3, [sp]
000525ae  53 46                                            mov r3, sl
000525b0  01 f0 e6 ff                                      bl #0x54580
000525b4  05 46                                            mov r5, r0
000525b6  50 46                                            mov r0, sl
000525b8  2c 21                                            movs r1, #0x2c
000525ba  e0 f7 b2 e8                                      blx #0x32720
000525be  04 46                                            mov r4, r0
000525c0  df f8 84 0c                                      ldr.w r0, [pc, #0xc84]
000525c4  78 44                                            add r0, pc
000525c6  01 68                                            ldr r1, [r0]
000525c8  20 46                                            mov r0, r4
000525ca  e0 f7 9a e9                                      blx #0x32900
000525ce  dd e9 21 30                                      ldrd r3, r0, [sp, #0x84]
000525d2  00 22                                            movs r2, #0
000525d4  31 6a                                            ldr r1, [r6, #0x20]
000525d6  cd e9 00 02                                      strd r0, r2, [sp]
000525da  df f8 70 0c                                      ldr.w r0, [pc, #0xc70]
000525de  02 92                                            str r2, [sp, #8]
000525e0  78 44                                            add r0, pc
000525e2  00 f0 57 bc                                      b.w #0x52e94
000525e6  df f8 68 0c                                      ldr.w r0, [pc, #0xc68]
000525ea  1a ac                                            add r4, sp, #0x68
000525ec  82 21                                            movs r1, #0x82
000525ee  4f f4 96 72                                      mov.w r2, #0x12c
000525f2  78 44                                            add r0, pc
000525f4  00 90                                            str r0, [sp]
000525f6  50 46                                            mov r0, sl
000525f8  23 46                                            mov r3, r4
000525fa  e0 f7 24 ea                                      blx #0x32a44
000525fe  10 b9                                            cbnz r0, #0x52606
00052600  01 20                                            movs r0, #1
00052602  07 f8 31 0c                                      strb r0, [r7, #-0x31]
00052606  70 6a                                            ldr r0, [r6, #0x24]
00052608  52 46                                            mov r2, sl
0005260a  01 68                                            ldr r1, [r0]
0005260c  4b 68                                            ldr r3, [r1, #4]
0005260e  41 46                                            mov r1, r8
00052610  98 47                                            blx r3
00052612  21 90                                            str r0, [sp, #0x84]
00052614  52 46                                            mov r2, sl
00052616  b0 6a                                            ldr r0, [r6, #0x28]
00052618  01 68                                            ldr r1, [r0]
0005261a  4b 68                                            ldr r3, [r1, #4]
0005261c  41 46                                            mov r1, r8
0005261e  98 47                                            blx r3
00052620  21 9b                                            ldr r3, [sp, #0x84]
00052622  22 90                                            str r0, [sp, #0x88]
00052624  01 69                                            ldr r1, [r0, #0x10]
00052626  18 69                                            ldr r0, [r3, #0x10]
00052628  53 46                                            mov r3, sl
0005262a  32 6a                                            ldr r2, [r6, #0x20]
0005262c  00 94                                            str r4, [sp]
0005262e  01 f0 99 fd                                      bl #0x54164
00052632  04 46                                            mov r4, r0
00052634  50 46                                            mov r0, sl
00052636  2c 21                                            movs r1, #0x2c
00052638  e0 f7 72 e8                                      blx #0x32720
0005263c  05 46                                            mov r5, r0
0005263e  df f8 14 0c                                      ldr.w r0, [pc, #0xc14]
00052642  78 44                                            add r0, pc
00052644  01 68                                            ldr r1, [r0]
00052646  28 46                                            mov r0, r5
00052648  e0 f7 5a e9                                      blx #0x32900
0005264c  df f8 08 0c                                      ldr.w r0, [pc, #0xc08]
00052650  78 44                                            add r0, pc
00052652  31 6a                                            ldr r1, [r6, #0x20]
00052654  00 26                                            movs r6, #0
00052656  21 9b                                            ldr r3, [sp, #0x84]
00052658  22 9a                                            ldr r2, [sp, #0x88]
0005265a  50 f8 21 10                                      ldr.w r1, [r0, r1, lsl #2]
0005265e  28 46                                            mov r0, r5
00052660  cd e9 00 26                                      strd r2, r6, [sp]
00052664  22 46                                            mov r2, r4
00052666  02 96                                            str r6, [sp, #8]
00052668  e0 f7 46 ea                                      blx #0x32af8
0005266c  21 98                                            ldr r0, [sp, #0x84]
0005266e  20 95                                            str r5, [sp, #0x80]
00052670  00 69                                            ldr r0, [r0, #0x10]
00052672  40 68                                            ldr r0, [r0, #4]
00052674  0b 28                                            cmp r0, #0xb
00052676  01 d1                                            bne #0x5267c
00052678  01 26                                            movs r6, #1
0005267a  8a e1                                            b #0x52992
0005267c  22 98                                            ldr r0, [sp, #0x88]
0005267e  00 69                                            ldr r0, [r0, #0x10]
00052680  40 68                                            ldr r0, [r0, #4]
00052682  83 e1                                            b #0x5298c
00052684  70 6a                                            ldr r0, [r6, #0x24]
00052686  52 46                                            mov r2, sl
00052688  01 68                                            ldr r1, [r0]
0005268a  4b 68                                            ldr r3, [r1, #4]
0005268c  41 46                                            mov r1, r8
0005268e  98 47                                            blx r3
00052690  04 46                                            mov r4, r0
00052692  52 46                                            mov r2, sl
00052694  21 94                                            str r4, [sp, #0x84]
00052696  b0 6a                                            ldr r0, [r6, #0x28]
00052698  01 68                                            ldr r1, [r0]
0005269a  4b 68                                            ldr r3, [r1, #4]
0005269c  41 46                                            mov r1, r8
0005269e  98 47                                            blx r3
000526a0  22 90                                            str r0, [sp, #0x88]
000526a2  21 a9                                            add r1, sp, #0x84
000526a4  20 69                                            ldr r0, [r4, #0x10]
000526a6  04 31                                            adds r1, #4
000526a8  52 46                                            mov r2, sl
000526aa  e0 f7 68 ea                                      blx #0x32b7c
000526ae  38 b9                                            cbnz r0, #0x526c0
000526b0  22 98                                            ldr r0, [sp, #0x88]
000526b2  21 a9                                            add r1, sp, #0x84
000526b4  52 46                                            mov r2, sl
000526b6  00 69                                            ldr r0, [r0, #0x10]
000526b8  e0 f7 60 ea                                      blx #0x32b7c
000526bc  01 28                                            cmp r0, #1
000526be  06 d1                                            bne #0x526ce
000526c0  dd e9 21 01                                      ldrd r0, r1, [sp, #0x84]
000526c4  09 69                                            ldr r1, [r1, #0x10]
000526c6  00 69                                            ldr r0, [r0, #0x10]
000526c8  88 42                                            cmp r0, r1
000526ca  00 f0 fd 86                                      beq.w #0x534c8
000526ce  df f8 8c 2b                                      ldr.w r2, [pc, #0xb8c]
000526d2  0f f6 8c 31                                      addw r1, pc, #0xb8c
000526d6  30 6a                                            ldr r0, [r6, #0x20]
000526d8  0f f6 88 33                                      addw r3, pc, #0xb88
000526dc  7a 44                                            add r2, pc
000526de  0e 28                                            cmp r0, #0xe
000526e0  1a a8                                            add r0, sp, #0x68
000526e2  18 bf                                            it ne
000526e4  0b 46                                            movne r3, r1
000526e6  51 46                                            mov r1, sl
000526e8  e0 f7 e6 e8                                      blx #0x328b8
000526ec  01 20                                            movs r0, #1
000526ee  07 f8 31 0c                                      strb r0, [r7, #-0x31]
000526f2  50 46                                            mov r0, sl
000526f4  68 21                                            movs r1, #0x68
000526f6  e0 f7 14 e8                                      blx #0x32720
000526fa  04 46                                            mov r4, r0
000526fc  df f8 68 0b                                      ldr.w r0, [pc, #0xb68]
00052700  78 44                                            add r0, pc
00052702  01 68                                            ldr r1, [r0]
00052704  20 46                                            mov r0, r4
00052706  e0 f7 fc e8                                      blx #0x32900
0005270a  20 46                                            mov r0, r4
0005270c  00 21                                            movs r1, #0
0005270e  00 f0 7f bd                                      b.w #0x53210
00052712  70 6a                                            ldr r0, [r6, #0x24]
00052714  52 46                                            mov r2, sl
00052716  01 68                                            ldr r1, [r0]
00052718  4b 68                                            ldr r3, [r1, #4]
0005271a  41 46                                            mov r1, r8
0005271c  98 47                                            blx r3
0005271e  04 46                                            mov r4, r0
00052720  52 46                                            mov r2, sl
00052722  21 94                                            str r4, [sp, #0x84]
00052724  b0 6a                                            ldr r0, [r6, #0x28]
00052726  01 68                                            ldr r1, [r0]
00052728  4b 68                                            ldr r3, [r1, #4]
0005272a  41 46                                            mov r1, r8
0005272c  98 47                                            blx r3
0005272e  22 90                                            str r0, [sp, #0x88]
00052730  1a ab                                            add r3, sp, #0x68
00052732  01 69                                            ldr r1, [r0, #0x10]
00052734  20 69                                            ldr r0, [r4, #0x10]
00052736  32 6a                                            ldr r2, [r6, #0x20]
00052738  00 93                                            str r3, [sp]
0005273a  53 46                                            mov r3, sl
0005273c  01 f0 12 fd                                      bl #0x54164
00052740  05 46                                            mov r5, r0
00052742  50 46                                            mov r0, sl
00052744  2c 21                                            movs r1, #0x2c
00052746  df f7 ec ef                                      blx #0x32720
0005274a  04 46                                            mov r4, r0
0005274c  df f8 1c 0b                                      ldr.w r0, [pc, #0xb1c]
00052750  78 44                                            add r0, pc
00052752  01 68                                            ldr r1, [r0]
00052754  20 46                                            mov r0, r4
00052756  e0 f7 d4 e8                                      blx #0x32900
0005275a  dd e9 21 30                                      ldrd r3, r0, [sp, #0x84]
0005275e  00 22                                            movs r2, #0
00052760  31 6a                                            ldr r1, [r6, #0x20]
00052762  cd e9 00 02                                      strd r0, r2, [sp]
00052766  df f8 08 0b                                      ldr.w r0, [pc, #0xb08]
0005276a  02 92                                            str r2, [sp, #8]
0005276c  78 44                                            add r0, pc
0005276e  91 e3                                            b #0x52e94
00052770  0f f6 00 32                                      addw r2, pc, #0xb00
00052774  70 6a                                            ldr r0, [r6, #0x24]
00052776  0f f6 14 33                                      addw r3, pc, #0xb14
0005277a  23 29                                            cmp r1, #0x23
0005277c  18 bf                                            it ne
0005277e  13 46                                            movne r3, r2
00052780  52 46                                            mov r2, sl
00052782  33 64                                            str r3, [r6, #0x40]
00052784  01 68                                            ldr r1, [r0]
00052786  4b 68                                            ldr r3, [r1, #4]
00052788  41 46                                            mov r1, r8
0005278a  98 47                                            blx r3
0005278c  21 90                                            str r0, [sp, #0x84]
0005278e  01 69                                            ldr r1, [r0, #0x10]
00052790  50 46                                            mov r0, sl
00052792  01 f0 b5 ff                                      bl #0x54700
00052796  22 90                                            str r0, [sp, #0x88]
00052798  1a a8                                            add r0, sp, #0x68
0005279a  00 90                                            str r0, [sp]
0005279c  21 a8                                            add r0, sp, #0x84
0005279e  01 1d                                            adds r1, r0, #4
000527a0  00 22                                            movs r2, #0
000527a2  53 46                                            mov r3, sl
000527a4  01 f0 04 fb                                      bl #0x53db0
000527a8  05 46                                            mov r5, r0
000527aa  50 46                                            mov r0, sl
000527ac  2c 21                                            movs r1, #0x2c
000527ae  df f7 b8 ef                                      blx #0x32720
000527b2  04 46                                            mov r4, r0
000527b4  df f8 ec 0a                                      ldr.w r0, [pc, #0xaec]
000527b8  78 44                                            add r0, pc
000527ba  01 68                                            ldr r1, [r0]
000527bc  20 46                                            mov r0, r4
000527be  e0 f7 a0 e8                                      blx #0x32900
000527c2  dd e9 21 30                                      ldrd r3, r0, [sp, #0x84]
000527c6  31 6a                                            ldr r1, [r6, #0x20]
000527c8  00 90                                            str r0, [sp]
000527ca  00 20                                            movs r0, #0
000527cc  cd e9 01 00                                      strd r0, r0, [sp, #4]
000527d0  df f8 d4 0a                                      ldr.w r0, [pc, #0xad4]
000527d4  78 44                                            add r0, pc
000527d6  5d e3                                            b #0x52e94
000527d8  0f f6 d0 22                                      addw r2, pc, #0xad0
000527dc  70 6a                                            ldr r0, [r6, #0x24]
000527de  0f f6 e8 23                                      addw r3, pc, #0xae8
000527e2  25 29                                            cmp r1, #0x25
000527e4  18 bf                                            it ne
000527e6  13 46                                            movne r3, r2
000527e8  52 46                                            mov r2, sl
000527ea  33 64                                            str r3, [r6, #0x40]
000527ec  01 68                                            ldr r1, [r0]
000527ee  4b 68                                            ldr r3, [r1, #4]
000527f0  41 46                                            mov r1, r8
000527f2  98 47                                            blx r3
000527f4  04 46                                            mov r4, r0
000527f6  50 46                                            mov r0, sl
000527f8  21 94                                            str r4, [sp, #0x84]
000527fa  21 69                                            ldr r1, [r4, #0x10]
000527fc  01 f0 80 ff                                      bl #0x54700
00052800  22 90                                            str r0, [sp, #0x88]
00052802  21 a9                                            add r1, sp, #0x84
00052804  22 69                                            ldr r2, [r4, #0x10]
00052806  04 31                                            adds r1, #4
00052808  52 68                                            ldr r2, [r2, #4]
0005280a  0b 2a                                            cmp r2, #0xb
0005280c  40 f0 ac 85                                      bne.w #0x53368
00052810  01 20                                            movs r0, #1
00052812  00 f0 af bd                                      b.w #0x53374
00052816  70 6a                                            ldr r0, [r6, #0x24]
00052818  52 46                                            mov r2, sl
0005281a  01 68                                            ldr r1, [r0]
0005281c  4b 68                                            ldr r3, [r1, #4]
0005281e  41 46                                            mov r1, r8
00052820  98 47                                            blx r3
00052822  54 46                                            mov r4, sl
00052824  82 46                                            mov sl, r0
00052826  cd f8 84 a0                                      str.w sl, [sp, #0x84]
0005282a  22 46                                            mov r2, r4
0005282c  b0 6a                                            ldr r0, [r6, #0x28]
0005282e  01 68                                            ldr r1, [r0]
00052830  4b 68                                            ldr r3, [r1, #4]
00052832  41 46                                            mov r1, r8
00052834  98 47                                            blx r3
00052836  22 90                                            str r0, [sp, #0x88]
00052838  4f f0 00 0c                                      mov.w ip, #0
0005283c  71 6a                                            ldr r1, [r6, #0x24]
0005283e  0a 6c                                            ldr r2, [r1, #0x40]
00052840  d1 e9 01 36                                      ldrd r3, r6, [r1, #4]
00052844  d1 e9 03 5e                                      ldrd r5, lr, [r1, #0xc]
00052848  49 69                                            ldr r1, [r1, #0x14]
0005284a  08 93                                            str r3, [sp, #0x20]
0005284c  20 ab                                            add r3, sp, #0x80
0005284e  8d e8 09 12                                      stm.w sp, {r0, r3, sb, ip}
00052852  53 46                                            mov r3, sl
00052854  40 46                                            mov r0, r8
00052856  cd e9 04 65                                      strd r6, r5, [sp, #0x10]
0005285a  a2 46                                            mov sl, r4
0005285c  cd e9 06 e1                                      strd lr, r1, [sp, #0x18]
00052860  21 46                                            mov r1, r4
00052862  3d e3                                            b #0x52ee0
00052864  70 6a                                            ldr r0, [r6, #0x24]
00052866  52 46                                            mov r2, sl
00052868  01 68                                            ldr r1, [r0]
0005286a  4b 68                                            ldr r3, [r1, #4]
0005286c  41 46                                            mov r1, r8
0005286e  98 47                                            blx r3
00052870  04 46                                            mov r4, r0
00052872  21 94                                            str r4, [sp, #0x84]
00052874  20 69                                            ldr r0, [r4, #0x10]
00052876  40 68                                            ldr r0, [r0, #4]
00052878  02 28                                            cmp r0, #2
0005287a  0d d9                                            bls #0x52898
0005287c  df f8 64 2a                                      ldr.w r2, [pc, #0xa64]
00052880  1a a8                                            add r0, sp, #0x68
00052882  51 46                                            mov r1, sl
00052884  7a 44                                            add r2, pc
00052886  e0 f7 18 e8                                      blx #0x328b8
0005288a  df f8 5c 0a                                      ldr.w r0, [pc, #0xa5c]
0005288e  21 9c                                            ldr r4, [sp, #0x84]
00052890  78 44                                            add r0, pc
00052892  00 68                                            ldr r0, [r0]
00052894  00 68                                            ldr r0, [r0]
00052896  40 68                                            ldr r0, [r0, #4]
00052898  00 21                                            movs r1, #0
0005289a  0b 28                                            cmp r0, #0xb
0005289c  08 bf                                            it eq
0005289e  01 21                                            moveq r1, #1
000528a0  07 f8 31 1c                                      strb r1, [r7, #-0x31]
000528a4  00 f0 6b bf                                      b.w #0x5377e
000528a8  70 6a                                            ldr r0, [r6, #0x24]
000528aa  52 46                                            mov r2, sl
000528ac  01 68                                            ldr r1, [r0]
000528ae  4b 68                                            ldr r3, [r1, #4]
000528b0  41 46                                            mov r1, r8
000528b2  98 47                                            blx r3
000528b4  21 90                                            str r0, [sp, #0x84]
000528b6  05 69                                            ldr r5, [r0, #0x10]
000528b8  68 68                                            ldr r0, [r5, #4]
000528ba  03 28                                            cmp r0, #3
000528bc  0c d3                                            blo #0x528d8
000528be  df f8 2c 2a                                      ldr.w r2, [pc, #0xa2c]
000528c2  1a a8                                            add r0, sp, #0x68
000528c4  51 46                                            mov r1, sl
000528c6  7a 44                                            add r2, pc
000528c8  df f7 f6 ef                                      blx #0x328b8
000528cc  df f8 20 0a                                      ldr.w r0, [pc, #0xa20]
000528d0  78 44                                            add r0, pc
000528d2  00 68                                            ldr r0, [r0]
000528d4  05 68                                            ldr r5, [r0]
000528d6  68 68                                            ldr r0, [r5, #4]
000528d8  0b 28                                            cmp r0, #0xb
000528da  4f f0 00 00                                      mov.w r0, #0
000528de  08 bf                                            it eq
000528e0  01 20                                            moveq r0, #1
000528e2  2c 21                                            movs r1, #0x2c
000528e4  07 f8 31 0c                                      strb r0, [r7, #-0x31]
000528e8  50 46                                            mov r0, sl
000528ea  4f f0 00 08                                      mov.w r8, #0
000528ee  df f7 18 ef                                      blx #0x32720
000528f2  04 46                                            mov r4, r0
000528f4  df f8 fc 09                                      ldr.w r0, [pc, #0x9fc]
000528f8  78 44                                            add r0, pc
000528fa  01 68                                            ldr r1, [r0]
000528fc  20 46                                            mov r0, r4
000528fe  e0 f7 00 e8                                      blx #0x32900
00052902  df f8 f4 09                                      ldr.w r0, [pc, #0x9f4]
00052906  31 6a                                            ldr r1, [r6, #0x20]
00052908  78 44                                            add r0, pc
0005290a  21 9b                                            ldr r3, [sp, #0x84]
0005290c  cd f8 00 80                                      str.w r8, [sp]
00052910  50 f8 21 10                                      ldr.w r1, [r0, r1, lsl #2]
00052914  20 46                                            mov r0, r4
00052916  cd e9 01 88                                      strd r8, r8, [sp, #4]
0005291a  2a 46                                            mov r2, r5
0005291c  e0 f7 ec e8                                      blx #0x32af8
00052920  00 f0 2d bf                                      b.w #0x5377e
00052924  70 6a                                            ldr r0, [r6, #0x24]
00052926  52 46                                            mov r2, sl
00052928  01 68                                            ldr r1, [r0]
0005292a  4b 68                                            ldr r3, [r1, #4]
0005292c  41 46                                            mov r1, r8
0005292e  98 47                                            blx r3
00052930  04 46                                            mov r4, r0
00052932  52 46                                            mov r2, sl
00052934  21 94                                            str r4, [sp, #0x84]
00052936  b0 6a                                            ldr r0, [r6, #0x28]
00052938  01 68                                            ldr r1, [r0]
0005293a  4b 68                                            ldr r3, [r1, #4]
0005293c  41 46                                            mov r1, r8
0005293e  98 47                                            blx r3
00052940  22 90                                            str r0, [sp, #0x88]
00052942  1a ab                                            add r3, sp, #0x68
00052944  01 69                                            ldr r1, [r0, #0x10]
00052946  52 46                                            mov r2, sl
00052948  20 69                                            ldr r0, [r4, #0x10]
0005294a  01 f0 63 fb                                      bl #0x54014
0005294e  04 46                                            mov r4, r0
00052950  50 46                                            mov r0, sl
00052952  2c 21                                            movs r1, #0x2c
00052954  df f7 e4 ee                                      blx #0x32720
00052958  05 46                                            mov r5, r0
0005295a  df f8 a0 09                                      ldr.w r0, [pc, #0x9a0]
0005295e  78 44                                            add r0, pc
00052960  01 68                                            ldr r1, [r0]
00052962  28 46                                            mov r0, r5
00052964  df f7 cc ef                                      blx #0x32900
00052968  df f8 94 09                                      ldr.w r0, [pc, #0x994]
0005296c  78 44                                            add r0, pc
0005296e  31 6a                                            ldr r1, [r6, #0x20]
00052970  00 26                                            movs r6, #0
00052972  21 9b                                            ldr r3, [sp, #0x84]
00052974  22 9a                                            ldr r2, [sp, #0x88]
00052976  50 f8 21 10                                      ldr.w r1, [r0, r1, lsl #2]
0005297a  28 46                                            mov r0, r5
0005297c  cd e9 00 26                                      strd r2, r6, [sp]
00052980  22 46                                            mov r2, r4
00052982  02 96                                            str r6, [sp, #8]
00052984  e0 f7 b8 e8                                      blx #0x32af8
00052988  20 95                                            str r5, [sp, #0x80]
0005298a  60 68                                            ldr r0, [r4, #4]
0005298c  0b 28                                            cmp r0, #0xb
0005298e  08 bf                                            it eq
00052990  01 26                                            moveq r6, #1
00052992  07 f8 31 6c                                      strb r6, [r7, #-0x31]
00052996  a7 e2                                            b #0x52ee8
00052998  70 6a                                            ldr r0, [r6, #0x24]
0005299a  52 46                                            mov r2, sl
0005299c  01 68                                            ldr r1, [r0]
0005299e  4b 68                                            ldr r3, [r1, #4]
000529a0  41 46                                            mov r1, r8
000529a2  98 47                                            blx r3
000529a4  df f8 24 1f                                      ldr.w r1, [pc, #0xf24]
000529a8  1a ab                                            add r3, sp, #0x68
000529aa  21 90                                            str r0, [sp, #0x84]
000529ac  50 46                                            mov r0, sl
000529ae  79 44                                            add r1, pc
000529b0  00 91                                            str r1, [sp]
000529b2  82 21                                            movs r1, #0x82
000529b4  4f f4 96 72                                      mov.w r2, #0x12c
000529b8  e0 f7 44 e8                                      blx #0x32a44
000529bc  10 b9                                            cbnz r0, #0x529c4
000529be  01 20                                            movs r0, #1
000529c0  07 f8 31 0c                                      strb r0, [r7, #-0x31]
000529c4  21 98                                            ldr r0, [sp, #0x84]
000529c6  01 69                                            ldr r1, [r0, #0x10]
000529c8  49 68                                            ldr r1, [r1, #4]
000529ca  02 29                                            cmp r1, #2
000529cc  80 f0 a2 85                                      bhs.w #0x53514
000529d0  17 f8 31 1c                                      ldrb r1, [r7, #-0x31]
000529d4  00 29                                            cmp r1, #0
000529d6  40 f0 a6 85                                      bne.w #0x53526
000529da  10 30                                            adds r0, #0x10
000529dc  00 f0 a6 bd                                      b.w #0x5352c
000529e0  00 20                                            movs r0, #0
000529e2  a7 f1 31 09                                      sub.w sb, r7, #0x31
000529e6  0f 90                                            str r0, [sp, #0x3c]
000529e8  0e ad                                            add r5, sp, #0x38
000529ea  0f f6 9c 60                                      addw r0, pc, #0xe9c
000529ee  2c 1d                                            adds r4, r5, #4
000529f0  0e 94                                            str r4, [sp, #0x38]
000529f2  51 46                                            mov r1, sl
000529f4  10 95                                            str r5, [sp, #0x40]
000529f6  32 46                                            mov r2, r6
000529f8  cd e9 00 09                                      strd r0, sb, [sp]
000529fc  40 46                                            mov r0, r8
000529fe  00 23                                            movs r3, #0
00052a00  e0 f7 34 e9                                      blx #0x32c6c
00052a04  21 90                                            str r0, [sp, #0x84]
00052a06  0f f6 84 60                                      addw r0, pc, #0xe84
00052a0a  cd e9 00 09                                      strd r0, sb, [sp]
00052a0e  28 46                                            mov r0, r5
00052a10  51 46                                            mov r1, sl
00052a12  32 46                                            mov r2, r6
00052a14  01 23                                            movs r3, #1
00052a16  e0 f7 2a e9                                      blx #0x32c6c
00052a1a  0e 99                                            ldr r1, [sp, #0x38]
00052a1c  22 90                                            str r0, [sp, #0x88]
00052a1e  50 46                                            mov r0, sl
00052a20  a1 42                                            cmp r1, r4
00052a22  00 f0 98 85                                      beq.w #0x53556
00052a26  44 21                                            movs r1, #0x44
00052a28  df f7 7a ee                                      blx #0x32720
00052a2c  56 46                                            mov r6, sl
00052a2e  82 46                                            mov sl, r0
00052a30  df f8 80 0e                                      ldr.w r0, [pc, #0xe80]
00052a34  78 44                                            add r0, pc
00052a36  d0 f8 00 b0                                      ldr.w fp, [r0]
00052a3a  50 46                                            mov r0, sl
00052a3c  59 46                                            mov r1, fp
00052a3e  df f7 60 ef                                      blx #0x32900
00052a42  df f8 74 0e                                      ldr.w r0, [pc, #0xe74]
00052a46  02 23                                            movs r3, #2
00052a48  df f8 70 2e                                      ldr.w r2, [pc, #0xe70]
00052a4c  78 44                                            add r0, pc
00052a4e  00 93                                            str r3, [sp]
00052a50  7a 44                                            add r2, pc
00052a52  0a 23                                            movs r3, #0xa
00052a54  00 68                                            ldr r0, [r0]
00052a56  01 68                                            ldr r1, [r0]
00052a58  50 46                                            mov r0, sl
00052a5a  df f7 8e ef                                      blx #0x32978
00052a5e  ba f1 00 0f                                      cmp.w sl, #0
00052a62  18 bf                                            it ne
00052a64  04 30                                            addne r0, #4
00052a66  08 f1 04 09                                      add.w sb, r8, #4
00052a6a  c0 f8 00 90                                      str.w sb, [r0]
00052a6e  d8 f8 08 10                                      ldr.w r1, [r8, #8]
00052a72  25 46                                            mov r5, r4
00052a74  41 60                                            str r1, [r0, #4]
00052a76  08 60                                            str r0, [r1]
00052a78  2c 21                                            movs r1, #0x2c
00052a7a  c8 f8 08 00                                      str.w r0, [r8, #8]
00052a7e  30 46                                            mov r0, r6
00052a80  0d 96                                            str r6, [sp, #0x34]
00052a82  df f7 4e ee                                      blx #0x32720
00052a86  59 46                                            mov r1, fp
00052a88  04 46                                            mov r4, r0
00052a8a  df f7 3a ef                                      blx #0x32900
00052a8e  df f8 30 0e                                      ldr.w r0, [pc, #0xe30]
00052a92  a3 46                                            mov fp, r4
00052a94  21 99                                            ldr r1, [sp, #0x84]
00052a96  00 2c                                            cmp r4, #0
00052a98  78 44                                            add r0, pc
00052a9a  00 68                                            ldr r0, [r0]
00052a9c  00 f1 08 00                                      add.w r0, r0, #8
00052aa0  20 60                                            str r0, [r4]
00052aa2  4f f0 0c 00                                      mov.w r0, #0xc
00052aa6  c4 e9 03 01                                      strd r0, r1, [r4, #0xc]
00052aaa  4f f0 00 01                                      mov.w r1, #0
00052aae  04 f1 14 00                                      add.w r0, r4, #0x14
00052ab2  4b f8 18 1f                                      str r1, [fp, #0x18]!
00052ab6  c4 f8 14 b0                                      str.w fp, [r4, #0x14]
00052aba  e0 61                                            str r0, [r4, #0x1c]
00052abc  20 46                                            mov r0, r4
00052abe  40 f8 24 1f                                      str r1, [r0, #0x24]!
00052ac2  0c 90                                            str r0, [sp, #0x30]
00052ac4  20 62                                            str r0, [r4, #0x20]
00052ac6  04 f1 20 00                                      add.w r0, r4, #0x20
00052aca  a0 62                                            str r0, [r4, #0x28]
00052acc  20 46                                            mov r0, r4
00052ace  18 bf                                            it ne
00052ad0  04 30                                            addne r0, #4
00052ad2  c0 f8 00 90                                      str.w sb, [r0]
00052ad6  d8 f8 08 10                                      ldr.w r1, [r8, #8]
00052ada  41 60                                            str r1, [r0, #4]
00052adc  08 60                                            str r0, [r1]
00052ade  c8 f8 08 00                                      str.w r0, [r8, #8]
00052ae2  0e 98                                            ldr r0, [sp, #0x38]
00052ae4  a8 42                                            cmp r0, r5
00052ae6  0c d0                                            beq #0x52b02
00052ae8  e1 69                                            ldr r1, [r4, #0x1c]
00052aea  08 60                                            str r0, [r1]
00052aec  0e 98                                            ldr r0, [sp, #0x38]
00052aee  41 60                                            str r1, [r0, #4]
00052af0  10 98                                            ldr r0, [sp, #0x40]
00052af2  e0 61                                            str r0, [r4, #0x1c]
00052af4  c0 f8 00 b0                                      str.w fp, [r0]
00052af8  00 20                                            movs r0, #0
00052afa  cd e9 0e 50                                      strd r5, r0, [sp, #0x38]
00052afe  0e a8                                            add r0, sp, #0x38
00052b00  10 90                                            str r0, [sp, #0x40]
00052b02  dd f8 34 80                                      ldr.w r8, [sp, #0x34]
00052b06  1c 21                                            movs r1, #0x1c
00052b08  40 46                                            mov r0, r8
00052b0a  df f7 0a ee                                      blx #0x32720
00052b0e  05 46                                            mov r5, r0
00052b10  df f8 b0 0d                                      ldr.w r0, [pc, #0xdb0]
00052b14  78 44                                            add r0, pc
00052b16  d0 f8 00 90                                      ldr.w sb, [r0]
00052b1a  28 46                                            mov r0, r5
00052b1c  49 46                                            mov r1, sb
00052b1e  df f7 f0 ee                                      blx #0x32900
00052b22  28 46                                            mov r0, r5
00052b24  51 46                                            mov r1, sl
00052b26  df f7 46 ef                                      blx #0x329b4
00052b2a  40 46                                            mov r0, r8
00052b2c  20 21                                            movs r1, #0x20
00052b2e  df f7 f8 ed                                      blx #0x32720
00052b32  49 46                                            mov r1, sb
00052b34  06 46                                            mov r6, r0
00052b36  df f7 e4 ee                                      blx #0x32900
00052b3a  22 9a                                            ldr r2, [sp, #0x88]
00052b3c  30 46                                            mov r0, r6
00052b3e  29 46                                            mov r1, r5
00052b40  00 23                                            movs r3, #0
00052b42  df f7 62 ef                                      blx #0x32a08
00052b46  00 2e                                            cmp r6, #0
00052b48  18 bf                                            it ne
00052b4a  04 36                                            addne r6, #4
00052b4c  c6 f8 00 b0                                      str.w fp, [r6]
00052b50  1c 21                                            movs r1, #0x1c
00052b52  e0 69                                            ldr r0, [r4, #0x1c]
00052b54  70 60                                            str r0, [r6, #4]
00052b56  06 60                                            str r6, [r0]
00052b58  40 46                                            mov r0, r8
00052b5a  e6 61                                            str r6, [r4, #0x1c]
00052b5c  df f7 e0 ed                                      blx #0x32720
00052b60  49 46                                            mov r1, sb
00052b62  83 46                                            mov fp, r0
00052b64  df f7 cc ee                                      blx #0x32900
00052b68  58 46                                            mov r0, fp
00052b6a  51 46                                            mov r1, sl
00052b6c  df f7 22 ef                                      blx #0x329b4
00052b70  40 46                                            mov r0, r8
00052b72  20 21                                            movs r1, #0x20
00052b74  df f7 d4 ed                                      blx #0x32720
00052b78  49 46                                            mov r1, sb
00052b7a  05 46                                            mov r5, r0
00052b7c  df f7 c0 ee                                      blx #0x32900
00052b80  40 46                                            mov r0, r8
00052b82  68 21                                            movs r1, #0x68
00052b84  df f7 cc ed                                      blx #0x32720
00052b88  49 46                                            mov r1, sb
00052b8a  06 46                                            mov r6, r0
00052b8c  df f7 b8 ee                                      blx #0x32900
00052b90  30 46                                            mov r0, r6
00052b92  00 21                                            movs r1, #0
00052b94  01 22                                            movs r2, #1
00052b96  e0 f7 5e e8                                      blx #0x32c54
00052b9a  28 46                                            mov r0, r5
00052b9c  59 46                                            mov r1, fp
00052b9e  32 46                                            mov r2, r6
00052ba0  00 23                                            movs r3, #0
00052ba2  df f7 32 ef                                      blx #0x32a08
00052ba6  00 2d                                            cmp r5, #0
00052ba8  18 bf                                            it ne
00052baa  04 35                                            addne r5, #4
00052bac  0c 98                                            ldr r0, [sp, #0x30]
00052bae  1c 21                                            movs r1, #0x1c
00052bb0  28 60                                            str r0, [r5]
00052bb2  a0 6a                                            ldr r0, [r4, #0x28]
00052bb4  68 60                                            str r0, [r5, #4]
00052bb6  05 60                                            str r5, [r0]
00052bb8  40 46                                            mov r0, r8
00052bba  a5 62                                            str r5, [r4, #0x28]
00052bbc  df f7 b0 ed                                      blx #0x32720
00052bc0  49 46                                            mov r1, sb
00052bc2  04 46                                            mov r4, r0
00052bc4  df f7 9c ee                                      blx #0x32900
00052bc8  51 46                                            mov r1, sl
00052bca  20 46                                            mov r0, r4
00052bcc  c2 46                                            mov sl, r8
00052bce  00 f0 d4 bd                                      b.w #0x5377a
00052bd2  a7 f1 31 04                                      sub.w r4, r7, #0x31
00052bd6  0f f6 b0 40                                      addw r0, pc, #0xcb0
00052bda  51 46                                            mov r1, sl
00052bdc  32 46                                            mov r2, r6
00052bde  cd e9 00 04                                      strd r0, r4, [sp]
00052be2  40 46                                            mov r0, r8
00052be4  00 23                                            movs r3, #0
00052be6  4f f0 00 09                                      mov.w sb, #0
00052bea  e0 f7 40 e8                                      blx #0x32c6c
00052bee  21 90                                            str r0, [sp, #0x84]
00052bf0  0f f6 98 40                                      addw r0, pc, #0xc98
00052bf4  cd e9 00 04                                      strd r0, r4, [sp]
00052bf8  40 46                                            mov r0, r8
00052bfa  51 46                                            mov r1, sl
00052bfc  32 46                                            mov r2, r6
00052bfe  01 23                                            movs r3, #1
00052c00  e0 f7 34 e8                                      blx #0x32c6c
00052c04  05 46                                            mov r5, r0
00052c06  50 46                                            mov r0, sl
00052c08  2c 21                                            movs r1, #0x2c
00052c0a  22 95                                            str r5, [sp, #0x88]
00052c0c  df f7 88 ed                                      blx #0x32720
00052c10  04 46                                            mov r4, r0
00052c12  df f8 7c 0c                                      ldr.w r0, [pc, #0xc7c]
00052c16  78 44                                            add r0, pc
00052c18  01 68                                            ldr r1, [r0]
00052c1a  20 46                                            mov r0, r4
00052c1c  df f7 70 ee                                      blx #0x32900
00052c20  df f8 70 0c                                      ldr.w r0, [pc, #0xc70]
00052c24  df f8 70 1c                                      ldr.w r1, [pc, #0xc70]
00052c28  78 44                                            add r0, pc
00052c2a  36 6a                                            ldr r6, [r6, #0x20]
00052c2c  79 44                                            add r1, pc
00052c2e  21 9b                                            ldr r3, [sp, #0x84]
00052c30  00 68                                            ldr r0, [r0]
00052c32  cd e9 00 59                                      strd r5, sb, [sp]
00052c36  51 f8 26 10                                      ldr.w r1, [r1, r6, lsl #2]
00052c3a  02 68                                            ldr r2, [r0]
00052c3c  cd f8 08 90                                      str.w sb, [sp, #8]
00052c40  20 46                                            mov r0, r4
00052c42  6b e6                                            b #0x5291c
00052c44  a7 f1 31 09                                      sub.w sb, r7, #0x31
00052c48  4f f0 00 0b                                      mov.w fp, #0
00052c4c  0e ac                                            add r4, sp, #0x38
00052c4e  0f f6 38 40                                      addw r0, pc, #0xc38
00052c52  cd f8 3c b0                                      str.w fp, [sp, #0x3c]
00052c56  25 1d                                            adds r5, r4, #4
00052c58  0e 95                                            str r5, [sp, #0x38]
00052c5a  51 46                                            mov r1, sl
00052c5c  10 94                                            str r4, [sp, #0x40]
00052c5e  32 46                                            mov r2, r6
00052c60  cd e9 00 09                                      strd r0, sb, [sp]
00052c64  40 46                                            mov r0, r8
00052c66  00 23                                            movs r3, #0
00052c68  e0 f7 00 e8                                      blx #0x32c6c
00052c6c  21 90                                            str r0, [sp, #0x84]
00052c6e  0f f6 1c 40                                      addw r0, pc, #0xc1c
00052c72  cd e9 00 09                                      strd r0, sb, [sp]
00052c76  20 46                                            mov r0, r4
00052c78  51 46                                            mov r1, sl
00052c7a  32 46                                            mov r2, r6
00052c7c  01 23                                            movs r3, #1
00052c7e  df f7 f6 ef                                      blx #0x32c6c
00052c82  0e 99                                            ldr r1, [sp, #0x38]
00052c84  22 90                                            str r0, [sp, #0x88]
00052c86  50 46                                            mov r0, sl
00052c88  a9 42                                            cmp r1, r5
00052c8a  00 f0 75 84                                      beq.w #0x53578
00052c8e  44 21                                            movs r1, #0x44
00052c90  df f7 46 ed                                      blx #0x32720
00052c94  81 46                                            mov sb, r0
00052c96  df f8 04 0c                                      ldr.w r0, [pc, #0xc04]
00052c9a  0b 95                                            str r5, [sp, #0x2c]
00052c9c  78 44                                            add r0, pc
00052c9e  05 68                                            ldr r5, [r0]
00052ca0  48 46                                            mov r0, sb
00052ca2  09 95                                            str r5, [sp, #0x24]
00052ca4  29 46                                            mov r1, r5
00052ca6  df f7 2c ee                                      blx #0x32900
00052caa  df f8 f4 0b                                      ldr.w r0, [pc, #0xbf4]
00052cae  02 23                                            movs r3, #2
00052cb0  df f8 f0 2b                                      ldr.w r2, [pc, #0xbf0]
00052cb4  78 44                                            add r0, pc
00052cb6  00 93                                            str r3, [sp]
00052cb8  7a 44                                            add r2, pc
00052cba  0a 23                                            movs r3, #0xa
00052cbc  00 68                                            ldr r0, [r0]
00052cbe  01 68                                            ldr r1, [r0]
00052cc0  48 46                                            mov r0, sb
00052cc2  df f7 5a ee                                      blx #0x32978
00052cc6  b9 f1 00 0f                                      cmp.w sb, #0
00052cca  18 bf                                            it ne
00052ccc  04 30                                            addne r0, #4
00052cce  08 f1 04 04                                      add.w r4, r8, #4
00052cd2  04 60                                            str r4, [r0]
00052cd4  d8 f8 08 10                                      ldr.w r1, [r8, #8]
00052cd8  41 60                                            str r1, [r0, #4]
00052cda  08 60                                            str r0, [r1]
00052cdc  2c 21                                            movs r1, #0x2c
00052cde  c8 f8 08 00                                      str.w r0, [r8, #8]
00052ce2  50 46                                            mov r0, sl
00052ce4  df f7 1c ed                                      blx #0x32720
00052ce8  29 46                                            mov r1, r5
00052cea  06 46                                            mov r6, r0
00052cec  df f7 08 ee                                      blx #0x32900
00052cf0  df f8 b4 0b                                      ldr.w r0, [pc, #0xbb4]
00052cf4  55 46                                            mov r5, sl
00052cf6  21 99                                            ldr r1, [sp, #0x84]
00052cf8  00 2e                                            cmp r6, #0
00052cfa  78 44                                            add r0, pc
00052cfc  b2 46                                            mov sl, r6
00052cfe  32 46                                            mov r2, r6
00052d00  00 68                                            ldr r0, [r0]
00052d02  00 f1 08 00                                      add.w r0, r0, #8
00052d06  30 60                                            str r0, [r6]
00052d08  4f f0 0c 00                                      mov.w r0, #0xc
00052d0c  c6 e9 03 01                                      strd r0, r1, [r6, #0xc]
00052d10  06 f1 14 00                                      add.w r0, r6, #0x14
00052d14  f0 61                                            str r0, [r6, #0x1c]
00052d16  06 f1 20 00                                      add.w r0, r6, #0x20
00052d1a  b0 62                                            str r0, [r6, #0x28]
00052d1c  30 46                                            mov r0, r6
00052d1e  18 bf                                            it ne
00052d20  04 30                                            addne r0, #4
00052d22  00 21                                            movs r1, #0
00052d24  4a f8 18 bf                                      str fp, [sl, #0x18]!
00052d28  c6 f8 14 a0                                      str.w sl, [r6, #0x14]
00052d2c  42 f8 24 1f                                      str r1, [r2, #0x24]!
00052d30  0a 92                                            str r2, [sp, #0x28]
00052d32  32 62                                            str r2, [r6, #0x20]
00052d34  04 60                                            str r4, [r0]
00052d36  d8 f8 08 10                                      ldr.w r1, [r8, #8]
00052d3a  41 60                                            str r1, [r0, #4]
00052d3c  08 60                                            str r0, [r1]
00052d3e  1c 21                                            movs r1, #0x1c
00052d40  c8 f8 08 00                                      str.w r0, [r8, #8]
00052d44  28 46                                            mov r0, r5
00052d46  df f7 ec ec                                      blx #0x32720
00052d4a  dd f8 24 b0                                      ldr.w fp, [sp, #0x24]
00052d4e  80 46                                            mov r8, r0
00052d50  59 46                                            mov r1, fp
00052d52  df f7 d6 ed                                      blx #0x32900
00052d56  40 46                                            mov r0, r8
00052d58  49 46                                            mov r1, sb
00052d5a  cd f8 30 90                                      str.w sb, [sp, #0x30]
00052d5e  df f7 2a ee                                      blx #0x329b4
00052d62  28 46                                            mov r0, r5
00052d64  20 21                                            movs r1, #0x20
00052d66  df f7 dc ec                                      blx #0x32720
00052d6a  59 46                                            mov r1, fp
00052d6c  04 46                                            mov r4, r0
00052d6e  df f7 c8 ed                                      blx #0x32900
00052d72  28 46                                            mov r0, r5
00052d74  68 21                                            movs r1, #0x68
00052d76  0d 95                                            str r5, [sp, #0x34]
00052d78  df f7 d2 ec                                      blx #0x32720
00052d7c  59 46                                            mov r1, fp
00052d7e  81 46                                            mov sb, r0
00052d80  df f7 be ed                                      blx #0x32900
00052d84  48 46                                            mov r0, sb
00052d86  01 21                                            movs r1, #1
00052d88  01 22                                            movs r2, #1
00052d8a  df f7 64 ef                                      blx #0x32c54
00052d8e  20 46                                            mov r0, r4
00052d90  41 46                                            mov r1, r8
00052d92  4a 46                                            mov r2, sb
00052d94  00 23                                            movs r3, #0
00052d96  0b 9d                                            ldr r5, [sp, #0x2c]
00052d98  df f7 36 ee                                      blx #0x32a08
00052d9c  00 2c                                            cmp r4, #0
00052d9e  18 bf                                            it ne
00052da0  04 34                                            addne r4, #4
00052da2  c4 f8 00 a0                                      str.w sl, [r4]
00052da6  06 f1 28 08                                      add.w r8, r6, #0x28
00052daa  f0 69                                            ldr r0, [r6, #0x1c]
00052dac  60 60                                            str r0, [r4, #4]
00052dae  04 60                                            str r4, [r0]
00052db0  f4 61                                            str r4, [r6, #0x1c]
00052db2  0e 98                                            ldr r0, [sp, #0x38]
00052db4  a8 42                                            cmp r0, r5
00052db6  00 f0 a7 84                                      beq.w #0x53708
00052dba  d8 f8 00 10                                      ldr.w r1, [r8]
00052dbe  08 60                                            str r0, [r1]
00052dc0  0e 98                                            ldr r0, [sp, #0x38]
00052dc2  41 60                                            str r1, [r0, #4]
00052dc4  10 98                                            ldr r0, [sp, #0x40]
00052dc6  c8 f8 00 00                                      str.w r0, [r8]
00052dca  0a 99                                            ldr r1, [sp, #0x28]
00052dcc  01 60                                            str r1, [r0]
00052dce  00 20                                            movs r0, #0
00052dd0  cd e9 0e 50                                      strd r5, r0, [sp, #0x38]
00052dd4  0e a8                                            add r0, sp, #0x38
00052dd6  8b 46                                            mov fp, r1
00052dd8  10 90                                            str r0, [sp, #0x40]
00052dda  00 f0 97 bc                                      b.w #0x5370c
00052dde  df f8 98 0a                                      ldr.w r0, [pc, #0xa98]
00052de2  a7 f1 31 01                                      sub.w r1, r7, #0x31
00052de6  32 46                                            mov r2, r6
00052de8  00 23                                            movs r3, #0
00052dea  78 44                                            add r0, pc
00052dec  cd e9 00 01                                      strd r0, r1, [sp]
00052df0  40 46                                            mov r0, r8
00052df2  51 46                                            mov r1, sl
00052df4  4f f0 00 09                                      mov.w sb, #0
00052df8  df f7 38 ef                                      blx #0x32c6c
00052dfc  05 46                                            mov r5, r0
00052dfe  50 46                                            mov r0, sl
00052e00  2c 21                                            movs r1, #0x2c
00052e02  21 95                                            str r5, [sp, #0x84]
00052e04  df f7 8c ec                                      blx #0x32720
00052e08  04 46                                            mov r4, r0
00052e0a  df f8 70 0a                                      ldr.w r0, [pc, #0xa70]
00052e0e  78 44                                            add r0, pc
00052e10  01 68                                            ldr r1, [r0]
00052e12  20 46                                            mov r0, r4
00052e14  df f7 74 ed                                      blx #0x32900
00052e18  df f8 64 0a                                      ldr.w r0, [pc, #0xa64]
00052e1c  df f8 64 1a                                      ldr.w r1, [pc, #0xa64]
00052e20  78 44                                            add r0, pc
00052e22  33 6a                                            ldr r3, [r6, #0x20]
00052e24  79 44                                            add r1, pc
00052e26  cd e9 00 99                                      strd sb, sb, [sp]
00052e2a  00 68                                            ldr r0, [r0]
00052e2c  51 f8 23 10                                      ldr.w r1, [r1, r3, lsl #2]
00052e30  2b 46                                            mov r3, r5
00052e32  cd f8 08 90                                      str.w sb, [sp, #8]
00052e36  02 68                                            ldr r2, [r0]
00052e38  20 46                                            mov r0, r4
00052e3a  6f e5                                            b #0x5291c
00052e3c  70 6a                                            ldr r0, [r6, #0x24]
00052e3e  52 46                                            mov r2, sl
00052e40  01 68                                            ldr r1, [r0]
00052e42  4b 68                                            ldr r3, [r1, #4]
00052e44  41 46                                            mov r1, r8
00052e46  98 47                                            blx r3
00052e48  04 46                                            mov r4, r0
00052e4a  52 46                                            mov r2, sl
00052e4c  21 94                                            str r4, [sp, #0x84]
00052e4e  b0 6a                                            ldr r0, [r6, #0x28]
00052e50  01 68                                            ldr r1, [r0]
00052e52  4b 68                                            ldr r3, [r1, #4]
00052e54  41 46                                            mov r1, r8
00052e56  98 47                                            blx r3
00052e58  22 90                                            str r0, [sp, #0x88]
00052e5a  1a ab                                            add r3, sp, #0x68
00052e5c  01 69                                            ldr r1, [r0, #0x10]
00052e5e  52 46                                            mov r2, sl
00052e60  20 69                                            ldr r0, [r4, #0x10]
00052e62  01 f0 d7 f8                                      bl #0x54014
00052e66  05 46                                            mov r5, r0
00052e68  50 46                                            mov r0, sl
00052e6a  2c 21                                            movs r1, #0x2c
00052e6c  df f7 58 ec                                      blx #0x32720
00052e70  04 46                                            mov r4, r0
00052e72  df f8 fc 09                                      ldr.w r0, [pc, #0x9fc]
00052e76  78 44                                            add r0, pc
00052e78  01 68                                            ldr r1, [r0]
00052e7a  20 46                                            mov r0, r4
00052e7c  df f7 40 ed                                      blx #0x32900
00052e80  dd e9 21 30                                      ldrd r3, r0, [sp, #0x84]
00052e84  00 22                                            movs r2, #0
00052e86  31 6a                                            ldr r1, [r6, #0x20]
00052e88  cd e9 00 02                                      strd r0, r2, [sp]
00052e8c  df f8 e4 09                                      ldr.w r0, [pc, #0x9e4]
00052e90  02 92                                            str r2, [sp, #8]
00052e92  78 44                                            add r0, pc
00052e94  50 f8 21 10                                      ldr.w r1, [r0, r1, lsl #2]
00052e98  20 46                                            mov r0, r4
00052e9a  2a 46                                            mov r2, r5
00052e9c  df f7 2c ee                                      blx #0x32af8
00052ea0  71 6a                                            ldr r1, [r6, #0x24]
00052ea2  00 22                                            movs r2, #0
00052ea4  21 98                                            ldr r0, [sp, #0x84]
00052ea6  d1 f8 40 b0                                      ldr.w fp, [r1, #0x40]
00052eaa  01 68                                            ldr r1, [r0]
00052eac  0b 69                                            ldr r3, [r1, #0x10]
00052eae  51 46                                            mov r1, sl
00052eb0  98 47                                            blx r3
00052eb2  03 46                                            mov r3, r0
00052eb4  70 6a                                            ldr r0, [r6, #0x24]
00052eb6  0d f1 0c 0c                                      add.w ip, sp, #0xc
00052eba  41 68                                            ldr r1, [r0, #4]
00052ebc  82 68                                            ldr r2, [r0, #8]
00052ebe  c6 68                                            ldr r6, [r0, #0xc]
00052ec0  05 69                                            ldr r5, [r0, #0x10]
00052ec2  40 69                                            ldr r0, [r0, #0x14]
00052ec4  08 91                                            str r1, [sp, #0x20]
00052ec6  20 a9                                            add r1, sp, #0x80
00052ec8  cd e9 00 41                                      strd r4, r1, [sp]
00052ecc  00 21                                            movs r1, #0
00052ece  cd f8 08 90                                      str.w sb, [sp, #8]
00052ed2  8c e8 46 00                                      stm.w ip, {r1, r2, r6}
00052ed6  51 46                                            mov r1, sl
00052ed8  5a 46                                            mov r2, fp
00052eda  cd e9 06 50                                      strd r5, r0, [sp, #0x18]
00052ede  40 46                                            mov r0, r8
00052ee0  00 f0 14 fd                                      bl #0x5390c
00052ee4  07 f8 31 0c                                      strb r0, [r7, #-0x31]
00052ee8  20 9c                                            ldr r4, [sp, #0x80]
00052eea  00 f0 49 bc                                      b.w #0x53780
00052eee  a7 f1 31 00                                      sub.w r0, r7, #0x31
00052ef2  0f f6 50 11                                      addw r1, pc, #0x950
00052ef6  32 46                                            mov r2, r6
00052ef8  00 23                                            movs r3, #0
00052efa  cd e9 00 10                                      strd r1, r0, [sp]
00052efe  40 46                                            mov r0, r8
00052f00  51 46                                            mov r1, sl
00052f02  00 24                                            movs r4, #0
00052f04  df f7 b2 ee                                      blx #0x32c6c
00052f08  18 94                                            str r4, [sp, #0x60]
00052f0a  17 a9                                            add r1, sp, #0x5c
00052f0c  15 94                                            str r4, [sp, #0x54]
00052f0e  14 ac                                            add r4, sp, #0x50
00052f10  22 1d                                            adds r2, r4, #4
00052f12  21 90                                            str r0, [sp, #0x84]
00052f14  01 f1 04 09                                      add.w sb, r1, #4
00052f18  cd f8 5c 90                                      str.w sb, [sp, #0x5c]
00052f1c  10 46                                            mov r0, r2
00052f1e  14 92                                            str r2, [sp, #0x50]
00052f20  19 91                                            str r1, [sp, #0x64]
00052f22  0b 90                                            str r0, [sp, #0x2c]
00052f24  16 94                                            str r4, [sp, #0x58]
00052f26  b0 6a                                            ldr r0, [r6, #0x28]
00052f28  02 68                                            ldr r2, [r0]
00052f2a  53 68                                            ldr r3, [r2, #4]
00052f2c  52 46                                            mov r2, sl
00052f2e  98 47                                            blx r3
00052f30  22 90                                            str r0, [sp, #0x88]
00052f32  52 46                                            mov r2, sl
00052f34  f0 6a                                            ldr r0, [r6, #0x2c]
00052f36  01 68                                            ldr r1, [r0]
00052f38  4b 68                                            ldr r3, [r1, #4]
00052f3a  21 46                                            mov r1, r4
00052f3c  98 47                                            blx r3
00052f3e  22 99                                            ldr r1, [sp, #0x88]
00052f40  21 ac                                            add r4, sp, #0x84
00052f42  23 90                                            str r0, [sp, #0x8c]
00052f44  52 46                                            mov r2, sl
00052f46  08 69                                            ldr r0, [r1, #0x10]
00052f48  04 f1 08 01                                      add.w r1, r4, #8
00052f4c  df f7 16 ee                                      blx #0x32b7c
00052f50  38 b9                                            cbnz r0, #0x52f62
00052f52  23 98                                            ldr r0, [sp, #0x8c]
00052f54  21 1d                                            adds r1, r4, #4
00052f56  52 46                                            mov r2, sl
00052f58  00 69                                            ldr r0, [r0, #0x10]
00052f5a  df f7 10 ee                                      blx #0x32b7c
00052f5e  01 28                                            cmp r0, #1
00052f60  05 d1                                            bne #0x52f6e
00052f62  dd e9 22 01                                      ldrd r0, r1, [sp, #0x88]
00052f66  04 69                                            ldr r4, [r0, #0x10]
00052f68  08 69                                            ldr r0, [r1, #0x10]
00052f6a  84 42                                            cmp r4, r0
00052f6c  19 d0                                            beq #0x52fa2
00052f6e  b0 6a                                            ldr r0, [r6, #0x28]
00052f70  df f8 dc 28                                      ldr.w r2, [pc, #0x8dc]
00052f74  41 68                                            ldr r1, [r0, #4]
00052f76  7a 44                                            add r2, pc
00052f78  12 91                                            str r1, [sp, #0x48]
00052f7a  81 68                                            ldr r1, [r0, #8]
00052f7c  0e 91                                            str r1, [sp, #0x38]
00052f7e  c1 68                                            ldr r1, [r0, #0xc]
00052f80  0f 91                                            str r1, [sp, #0x3c]
00052f82  01 69                                            ldr r1, [r0, #0x10]
00052f84  10 91                                            str r1, [sp, #0x40]
00052f86  51 46                                            mov r1, sl
00052f88  40 69                                            ldr r0, [r0, #0x14]
00052f8a  11 90                                            str r0, [sp, #0x44]
00052f8c  0e a8                                            add r0, sp, #0x38
00052f8e  df f7 94 ec                                      blx #0x328b8
00052f92  df f8 c0 08                                      ldr.w r0, [pc, #0x8c0]
00052f96  78 44                                            add r0, pc
00052f98  00 68                                            ldr r0, [r0]
00052f9a  04 68                                            ldr r4, [r0]
00052f9c  01 20                                            movs r0, #1
00052f9e  07 f8 31 0c                                      strb r0, [r7, #-0x31]
00052fa2  60 68                                            ldr r0, [r4, #4]
00052fa4  09 28                                            cmp r0, #9
00052fa6  0e d1                                            bne #0x52fc6
00052fa8  df f8 ac 08                                      ldr.w r0, [pc, #0x8ac]
00052fac  1a ab                                            add r3, sp, #0x68
00052fae  78 21                                            movs r1, #0x78
00052fb0  4f f4 96 72                                      mov.w r2, #0x12c
00052fb4  78 44                                            add r0, pc
00052fb6  00 90                                            str r0, [sp]
00052fb8  50 46                                            mov r0, sl
00052fba  df f7 44 ed                                      blx #0x32a44
00052fbe  10 b9                                            cbnz r0, #0x52fc6
00052fc0  01 20                                            movs r0, #1
00052fc2  07 f8 31 0c                                      strb r0, [r7, #-0x31]
00052fc6  21 98                                            ldr r0, [sp, #0x84]
00052fc8  01 68                                            ldr r1, [r0]
00052fca  8a 69                                            ldr r2, [r1, #0x18]
00052fcc  00 21                                            movs r1, #0
00052fce  90 47                                            blx r2
00052fd0  83 46                                            mov fp, r0
00052fd2  22 98                                            ldr r0, [sp, #0x88]
00052fd4  01 68                                            ldr r1, [r0]
00052fd6  8a 69                                            ldr r2, [r1, #0x18]
00052fd8  00 21                                            movs r1, #0
00052fda  90 47                                            blx r2
00052fdc  06 46                                            mov r6, r0
00052fde  23 98                                            ldr r0, [sp, #0x8c]
00052fe0  01 68                                            ldr r1, [r0]
00052fe2  8a 69                                            ldr r2, [r1, #0x18]
00052fe4  00 21                                            movs r1, #0
00052fe6  90 47                                            blx r2
00052fe8  17 99                                            ldr r1, [sp, #0x5c]
00052fea  49 45                                            cmp r1, sb
00052fec  00 f0 d5 82                                      beq.w #0x5359a
00052ff0  50 46                                            mov r0, sl
00052ff2  44 21                                            movs r1, #0x44
00052ff4  df f7 94 eb                                      blx #0x32720
00052ff8  05 46                                            mov r5, r0
00052ffa  df f8 60 08                                      ldr.w r0, [pc, #0x860]
00052ffe  78 44                                            add r0, pc
00053000  06 68                                            ldr r6, [r0]
00053002  28 46                                            mov r0, r5
00053004  31 46                                            mov r1, r6
00053006  df f7 7c ec                                      blx #0x32900
0005300a  dd e9 22 01                                      ldrd r0, r1, [sp, #0x88]
0005300e  df f7 34 ee                                      blx #0x32c78
00053012  df f8 4c 28                                      ldr.w r2, [pc, #0x84c]
00053016  21 46                                            mov r1, r4
00053018  00 90                                            str r0, [sp]
0005301a  28 46                                            mov r0, r5
0005301c  7a 44                                            add r2, pc
0005301e  0a 23                                            movs r3, #0xa
00053020  df f7 aa ec                                      blx #0x32978
00053024  00 2d                                            cmp r5, #0
00053026  0c 95                                            str r5, [sp, #0x30]
00053028  18 bf                                            it ne
0005302a  04 30                                            addne r0, #4
0005302c  cd f8 28 90                                      str.w sb, [sp, #0x28]
00053030  08 f1 04 05                                      add.w r5, r8, #4
00053034  05 60                                            str r5, [r0]
00053036  d8 f8 08 10                                      ldr.w r1, [r8, #8]
0005303a  41 60                                            str r1, [r0, #4]
0005303c  08 60                                            str r0, [r1]
0005303e  2c 21                                            movs r1, #0x2c
00053040  c8 f8 08 00                                      str.w r0, [r8, #8]
00053044  50 46                                            mov r0, sl
00053046  cd f8 34 a0                                      str.w sl, [sp, #0x34]
0005304a  df f7 6a eb                                      blx #0x32720
0005304e  31 46                                            mov r1, r6
00053050  04 46                                            mov r4, r0
00053052  df f7 56 ec                                      blx #0x32900
00053056  df f8 0c 08                                      ldr.w r0, [pc, #0x80c]
0005305a  a3 46                                            mov fp, r4
0005305c  21 99                                            ldr r1, [sp, #0x84]
0005305e  00 2c                                            cmp r4, #0
00053060  78 44                                            add r0, pc
00053062  a2 46                                            mov sl, r4
00053064  04 f1 20 09                                      add.w sb, r4, #0x20
00053068  00 68                                            ldr r0, [r0]
0005306a  00 f1 08 00                                      add.w r0, r0, #8
0005306e  20 60                                            str r0, [r4]
00053070  4f f0 0c 00                                      mov.w r0, #0xc
00053074  c4 e9 03 01                                      strd r0, r1, [r4, #0xc]
00053078  4f f0 00 00                                      mov.w r0, #0
0005307c  21 46                                            mov r1, r4
0005307e  4b f8 18 0f                                      str r0, [fp, #0x18]!
00053082  c4 f8 14 b0                                      str.w fp, [r4, #0x14]
00053086  18 bf                                            it ne
00053088  04 31                                            addne r1, #4
0005308a  4a f8 24 0f                                      str r0, [sl, #0x24]!
0005308e  04 f1 14 00                                      add.w r0, r4, #0x14
00053092  e0 61                                            str r0, [r4, #0x1c]
00053094  c4 f8 20 a0                                      str.w sl, [r4, #0x20]
00053098  c4 f8 28 90                                      str.w sb, [r4, #0x28]
0005309c  0d 60                                            str r5, [r1]
0005309e  d8 f8 08 20                                      ldr.w r2, [r8, #8]
000530a2  0a 9d                                            ldr r5, [sp, #0x28]
000530a4  4a 60                                            str r2, [r1, #4]
000530a6  11 60                                            str r1, [r2]
000530a8  c8 f8 08 10                                      str.w r1, [r8, #8]
000530ac  04 f1 1c 08                                      add.w r8, r4, #0x1c
000530b0  17 9a                                            ldr r2, [sp, #0x5c]
000530b2  04 f1 28 01                                      add.w r1, r4, #0x28
000530b6  09 91                                            str r1, [sp, #0x24]
000530b8  aa 42                                            cmp r2, r5
000530ba  00 f0 93 82                                      beq.w #0x535e4
000530be  00 23                                            movs r3, #0
000530c0  02 60                                            str r2, [r0]
000530c2  cb f8 00 30                                      str.w r3, [fp]
000530c6  17 a9                                            add r1, sp, #0x5c
000530c8  19 9e                                            ldr r6, [sp, #0x64]
000530ca  08 31                                            adds r1, #8
000530cc  c8 f8 00 60                                      str.w r6, [r8]
000530d0  50 60                                            str r0, [r2, #4]
000530d2  d8 f8 00 00                                      ldr.w r0, [r8]
000530d6  c0 f8 00 b0                                      str.w fp, [r0]
000530da  17 a8                                            add r0, sp, #0x5c
000530dc  cd e9 17 53                                      strd r5, r3, [sp, #0x5c]
000530e0  86 e2                                            b #0x535f0
000530e2  30 46                                            mov r0, r6
000530e4  41 46                                            mov r1, r8
000530e6  52 46                                            mov r2, sl
000530e8  df f7 cc ed                                      blx #0x32c84
000530ec  04 46                                            mov r4, r0
000530ee  46 e3                                            b #0x5377e
000530f0  b0 6a                                            ldr r0, [r6, #0x28]
000530f2  52 46                                            mov r2, sl
000530f4  41 68                                            ldr r1, [r0, #4]
000530f6  12 91                                            str r1, [sp, #0x48]
000530f8  81 68                                            ldr r1, [r0, #8]
000530fa  0e 91                                            str r1, [sp, #0x38]
000530fc  c1 68                                            ldr r1, [r0, #0xc]
000530fe  0f 91                                            str r1, [sp, #0x3c]
00053100  01 69                                            ldr r1, [r0, #0x10]
00053102  10 91                                            str r1, [sp, #0x40]
00053104  40 69                                            ldr r0, [r0, #0x14]
00053106  11 90                                            str r0, [sp, #0x44]
00053108  70 6a                                            ldr r0, [r6, #0x24]
0005310a  01 68                                            ldr r1, [r0]
0005310c  4b 68                                            ldr r3, [r1, #4]
0005310e  41 46                                            mov r1, r8
00053110  98 47                                            blx r3
00053112  04 46                                            mov r4, r0
00053114  52 46                                            mov r2, sl
00053116  21 94                                            str r4, [sp, #0x84]
00053118  b0 6a                                            ldr r0, [r6, #0x28]
0005311a  01 68                                            ldr r1, [r0]
0005311c  4b 68                                            ldr r3, [r1, #4]
0005311e  41 46                                            mov r1, r8
00053120  98 47                                            blx r3
00053122  03 46                                            mov r3, r0
00053124  0e a8                                            add r0, sp, #0x38
00053126  1a a9                                            add r1, sp, #0x68
00053128  22 93                                            str r3, [sp, #0x88]
0005312a  cd e9 00 10                                      strd r1, r0, [sp]
0005312e  50 46                                            mov r0, sl
00053130  51 46                                            mov r1, sl
00053132  22 46                                            mov r2, r4
00053134  df f7 ac ed                                      blx #0x32c90
00053138  20 90                                            str r0, [sp, #0x80]
0005313a  00 69                                            ldr r0, [r0, #0x10]
0005313c  40 68                                            ldr r0, [r0, #4]
0005313e  0b 28                                            cmp r0, #0xb
00053140  04 bf                                            itt eq
00053142  01 20                                            moveq r0, #1
00053144  07 f8 31 0c                                      strbeq r0, [r7, #-0x31]
00053148  ce e6                                            b #0x52ee8
0005314a  31 6b                                            ldr r1, [r6, #0x30]
0005314c  da f8 14 00                                      ldr.w r0, [sl, #0x14]
00053150  df f7 9c ec                                      blx #0x32a8c
00053154  05 46                                            mov r5, r0
00053156  00 2d                                            cmp r5, #0
00053158  00 f0 35 82                                      beq.w #0x535c6
0005315c  a8 69                                            ldr r0, [r5, #0x18]
0005315e  1c 21                                            movs r1, #0x1c
00053160  40 f0 20 00                                      orr r0, r0, #0x20
00053164  a8 61                                            str r0, [r5, #0x18]
00053166  50 46                                            mov r0, sl
00053168  df f7 da ea                                      blx #0x32720
0005316c  04 46                                            mov r4, r0
0005316e  df f8 a0 06                                      ldr.w r0, [pc, #0x6a0]
00053172  78 44                                            add r0, pc
00053174  01 68                                            ldr r1, [r0]
00053176  20 46                                            mov r0, r4
00053178  df f7 c2 eb                                      blx #0x32900
0005317c  20 46                                            mov r0, r4
0005317e  29 46                                            mov r1, r5
00053180  fb e2                                            b #0x5377a
00053182  50 46                                            mov r0, sl
00053184  68 21                                            movs r1, #0x68
00053186  df f7 cc ea                                      blx #0x32720
0005318a  04 46                                            mov r4, r0
0005318c  df f8 7c 06                                      ldr.w r0, [pc, #0x67c]
00053190  78 44                                            add r0, pc
00053192  01 68                                            ldr r1, [r0]
00053194  20 46                                            mov r0, r4
00053196  df f7 b4 eb                                      blx #0x32900
0005319a  31 6b                                            ldr r1, [r6, #0x30]
0005319c  20 46                                            mov r0, r4
0005319e  01 22                                            movs r2, #1
000531a0  df f7 b6 ec                                      blx #0x32b10
000531a4  eb e2                                            b #0x5377e
000531a6  50 46                                            mov r0, sl
000531a8  68 21                                            movs r1, #0x68
000531aa  df f7 ba ea                                      blx #0x32720
000531ae  04 46                                            mov r4, r0
000531b0  df f8 54 06                                      ldr.w r0, [pc, #0x654]
000531b4  78 44                                            add r0, pc
000531b6  01 68                                            ldr r1, [r0]
000531b8  20 46                                            mov r0, r4
000531ba  df f7 a2 eb                                      blx #0x32900
000531be  31 6b                                            ldr r1, [r6, #0x30]
000531c0  20 46                                            mov r0, r4
000531c2  01 22                                            movs r2, #1
000531c4  df f7 0e ec                                      blx #0x329e4
000531c8  d9 e2                                            b #0x5377e
000531ca  50 46                                            mov r0, sl
000531cc  68 21                                            movs r1, #0x68
000531ce  df f7 a8 ea                                      blx #0x32720
000531d2  04 46                                            mov r4, r0
000531d4  df f8 2c 06                                      ldr.w r0, [pc, #0x62c]
000531d8  78 44                                            add r0, pc
000531da  01 68                                            ldr r1, [r0]
000531dc  20 46                                            mov r0, r4
000531de  df f7 90 eb                                      blx #0x32900
000531e2  31 6b                                            ldr r1, [r6, #0x30]
000531e4  20 46                                            mov r0, r4
000531e6  01 22                                            movs r2, #1
000531e8  df f7 58 ed                                      blx #0x32c9c
000531ec  c7 e2                                            b #0x5377e
000531ee  50 46                                            mov r0, sl
000531f0  68 21                                            movs r1, #0x68
000531f2  df f7 96 ea                                      blx #0x32720
000531f6  04 46                                            mov r4, r0
000531f8  df f8 28 06                                      ldr.w r0, [pc, #0x628]
000531fc  78 44                                            add r0, pc
000531fe  01 68                                            ldr r1, [r0]
00053200  20 46                                            mov r0, r4
00053202  df f7 7e eb                                      blx #0x32900
00053206  31 6b                                            ldr r1, [r6, #0x30]
00053208  20 46                                            mov r0, r4
0005320a  00 29                                            cmp r1, #0
0005320c  18 bf                                            it ne
0005320e  01 21                                            movne r1, #1
00053210  01 22                                            movs r2, #1
00053212  df f7 20 ed                                      blx #0x32c54
00053216  b2 e2                                            b #0x5377e
00053218  a0 a1                                            adr r1, #0x280
0005321a  08 00                                            movs r0, r1
0005321c  3e a1                                            adr r1, #0xf8
0005321e  08 00                                            movs r0, r1
00053220  be 54                                            strb r6, [r7, r2]
00053222  07 00                                            movs r7, r0
00053224  c2 a0                                            adr r0, #0x308
00053226  08 00                                            movs r0, r1
00053228  5c a0                                            adr r0, #0x170
0005322a  08 00                                            movs r0, r1
0005322c  d4 53                                            strh r4, [r2, r7]
0005322e  07 00                                            movs r7, r0
00053230  2c 94                                            str r4, [sp, #0xb0]
00053232  06 00                                            movs r6, r0
00053234  2c a0                                            adr r0, #0xb0
00053236  08 00                                            movs r0, r1
00053238  14 a0                                            adr r0, #0x50
0005323a  08 00                                            movs r0, r1
0005323c  9a 53                                            strh r2, [r3, r6]
0005323e  07 00                                            movs r7, r0
00053240  c4 9f                                            ldr r7, [sp, #0x310]
00053242  08 00                                            movs r0, r1
00053244  4a 53                                            strh r2, [r1, r5]
00053246  07 00                                            movs r7, r0
00053248  74 9f                                            ldr r7, [sp, #0x1d0]
0005324a  08 00                                            movs r0, r1
0005324c  ec 52                                            strh r4, [r5, r3]
0005324e  07 00                                            movs r7, r0
00053250  95 92                                            str r2, [sp, #0x254]
00053252  06 00                                            movs r6, r0
00053254  f6 9e                                            ldr r6, [sp, #0x3d8]
00053256  08 00                                            movs r0, r1
00053258  7c 52                                            strh r4, [r7, r1]
0005325a  07 00                                            movs r7, r0
0005325c  08 7d                                            ldrb r0, [r1, #0x14]
0005325e  06 00                                            movs r6, r0
00053260  21 3d                                            subs r5, #0x21
00053262  00 00                                            movs r0, r0
00053264  3d 3d                                            subs r5, #0x3d
00053266  00 00                                            movs r0, r0
00053268  38 9e                                            ldr r6, [sp, #0xe0]
0005326a  08 00                                            movs r0, r1
0005326c  e8 9d                                            ldr r5, [sp, #0x3a0]
0005326e  08 00                                            movs r0, r1
00053270  60 51                                            str r0, [r4, r5]
00053272  07 00                                            movs r7, r0
00053274  70 72                                            strb r0, [r6, #9]
00053276  65 2d                                            cmp r5, #0x65
00053278  64 65                                            str r4, [r4, #0x54]
0005327a  63 72                                            strb r3, [r4, #9]
0005327c  65 6d                                            ldr r5, [r4, #0x54]
0005327e  65 6e                                            ldr r5, [r4, #0x64]
00053280  74 20                                            movs r0, #0x74
00053282  6f 70                                            strb r7, [r5, #1]
00053284  65 72                                            strb r5, [r4, #9]
00053286  61 74                                            strb r1, [r4, #0x11]
00053288  69 6f                                            ldr r1, [r5, #0x74]
0005328a  6e 00                                            lsls r6, r5, #1
0005328c  70 72                                            strb r0, [r6, #9]
0005328e  65 2d                                            cmp r5, #0x65
00053290  69 6e                                            ldr r1, [r5, #0x64]
00053292  63 72                                            strb r3, [r4, #9]
00053294  65 6d                                            ldr r5, [r4, #0x54]
00053296  65 6e                                            ldr r5, [r4, #0x64]
00053298  74 20                                            movs r0, #0x74
0005329a  6f 70                                            strb r7, [r5, #1]
0005329c  65 72                                            strb r5, [r4, #9]
0005329e  61 74                                            strb r1, [r4, #0x11]
000532a0  69 6f                                            ldr r1, [r5, #0x74]
000532a2  6e 00                                            lsls r6, r5, #1
000532a4  80 9d                                            ldr r5, [sp, #0x200]
000532a6  08 00                                            movs r0, r1
000532a8  f8 50                                            str r0, [r7, r3]
000532aa  07 00                                            movs r7, r0
000532ac  70 6f                                            ldr r0, [r6, #0x74]
000532ae  73 74                                            strb r3, [r6, #0x11]
000532b0  2d 64                                            str r5, [r5, #0x40]
000532b2  65 63                                            str r5, [r4, #0x34]
000532b4  72 65                                            str r2, [r6, #0x54]
000532b6  6d 65                                            str r5, [r5, #0x54]
000532b8  6e 74                                            strb r6, [r5, #0x11]
000532ba  20 6f                                            ldr r0, [r4, #0x70]
000532bc  70 65                                            str r0, [r6, #0x54]
000532be  72 61                                            str r2, [r6, #0x14]
000532c0  74 69                                            ldr r4, [r6, #0x14]
000532c2  6f 6e                                            ldr r7, [r5, #0x64]
000532c4  00 00                                            movs r0, r0
000532c6  00 00                                            movs r0, r0
000532c8  70 6f                                            ldr r0, [r6, #0x74]
000532ca  73 74                                            strb r3, [r6, #0x11]
000532cc  2d 69                                            ldr r5, [r5, #0x10]
000532ce  6e 63                                            str r6, [r5, #0x34]
000532d0  72 65                                            str r2, [r6, #0x54]
000532d2  6d 65                                            str r5, [r5, #0x54]
000532d4  6e 74                                            strb r6, [r5, #0x11]
000532d6  20 6f                                            ldr r0, [r4, #0x70]
000532d8  70 65                                            str r0, [r6, #0x54]
000532da  72 61                                            str r2, [r6, #0x14]
000532dc  74 69                                            ldr r4, [r6, #0x14]
000532de  6f 6e                                            ldr r7, [r5, #0x64]
000532e0  00 00                                            movs r0, r0
000532e2  00 00                                            movs r0, r0
000532e4  51 8f                                            ldrh r1, [r2, #0x3a]
000532e6  06 00                                            movs r6, r0
000532e8  ac 9c                                            ldr r4, [sp, #0x2b0]
000532ea  08 00                                            movs r0, r1
000532ec  0f 8f                                            ldrh r7, [r1, #0x38]
000532ee  06 00                                            movs r6, r0
000532f0  6c 9c                                            ldr r4, [sp, #0x1b0]
000532f2  08 00                                            movs r0, r1
000532f4  40 9c                                            ldr r4, [sp, #0x100]
000532f6  08 00                                            movs r0, r1
000532f8  c4 4f                                            ldr r7, [pc, #0x310]
000532fa  07 00                                            movs r7, r0
000532fc  da 9b                                            ldr r3, [sp, #0x368]
000532fe  08 00                                            movs r0, r1
00053300  60 4f                                            ldr r7, [pc, #0x180]
00053302  07 00                                            movs r7, r0
00053304  0d f1 68 0c                                      add.w ip, sp, #0x68
00053308  0e a9                                            add r1, sp, #0x38
0005330a  d1 46                                            mov sb, sl
0005330c  9c e8 3d 00                                      ldm.w ip, {r0, r2, r3, r4, r5}
00053310  3d c1                                            stm r1!, {r0, r2, r3, r4, r5}
00053312  75 6b                                            ldr r5, [r6, #0x34]
00053314  28 68                                            ldr r0, [r5]
00053316  20 b3                                            cbz r0, #0x53362
00053318  0d f1 38 0a                                      add.w sl, sp, #0x38
0005331c  00 26                                            movs r6, #0
0005331e  d8 f8 08 00                                      ldr.w r0, [r8, #8]
00053322  a5 f1 18 0b                                      sub.w fp, r5, #0x18
00053326  86 42                                            cmp r6, r0
00053328  06 d1                                            bne #0x53338
0005332a  df f8 d4 25                                      ldr.w r2, [pc, #0x5d4]
0005332e  50 46                                            mov r0, sl
00053330  49 46                                            mov r1, sb
00053332  7a 44                                            add r2, pc
00053334  df f7 d2 ea                                      blx #0x328dc
00053338  d8 f8 08 60                                      ldr.w r6, [r8, #8]
0005333c  0d f1 38 0c                                      add.w ip, sp, #0x38
00053340  15 e9 1f 00                                      ldmdb r5, {r0, r1, r2, r3, r4}
00053344  8c e8 1e 00                                      stm.w ip, {r1, r2, r3, r4}
00053348  41 46                                            mov r1, r8
0005334a  4a 46                                            mov r2, sb
0005334c  12 90                                            str r0, [sp, #0x48]
0005334e  55 f8 18 0c                                      ldr r0, [r5, #-0x18]
00053352  43 68                                            ldr r3, [r0, #4]
00053354  58 46                                            mov r0, fp
00053356  98 47                                            blx r3
00053358  20 90                                            str r0, [sp, #0x80]
0005335a  2d 68                                            ldr r5, [r5]
0005335c  28 68                                            ldr r0, [r5]
0005335e  00 28                                            cmp r0, #0
00053360  dd d1                                            bne #0x5331e
00053362  01 20                                            movs r0, #1
00053364  ca 46                                            mov sl, sb
00053366  bd e5                                            b #0x52ee4
00053368  00 69                                            ldr r0, [r0, #0x10]
0005336a  42 68                                            ldr r2, [r0, #4]
0005336c  00 20                                            movs r0, #0
0005336e  0b 2a                                            cmp r2, #0xb
00053370  08 bf                                            it eq
00053372  01 20                                            moveq r0, #1
00053374  07 f8 31 0c                                      strb r0, [r7, #-0x31]
00053378  1a a8                                            add r0, sp, #0x68
0005337a  00 90                                            str r0, [sp]
0005337c  21 a8                                            add r0, sp, #0x84
0005337e  00 22                                            movs r2, #0
00053380  53 46                                            mov r3, sl
00053382  00 f0 15 fd                                      bl #0x53db0
00053386  04 46                                            mov r4, r0
00053388  50 46                                            mov r0, sl
0005338a  2c 21                                            movs r1, #0x2c
0005338c  df f7 c8 e9                                      blx #0x32720
00053390  df f8 94 14                                      ldr.w r1, [pc, #0x494]
00053394  05 46                                            mov r5, r0
00053396  0b 95                                            str r5, [sp, #0x2c]
00053398  79 44                                            add r1, pc
0005339a  d1 f8 00 b0                                      ldr.w fp, [r1]
0005339e  59 46                                            mov r1, fp
000533a0  df f7 ae ea                                      blx #0x32900
000533a4  dd e9 21 30                                      ldrd r3, r0, [sp, #0x84]
000533a8  22 46                                            mov r2, r4
000533aa  31 6a                                            ldr r1, [r6, #0x20]
000533ac  00 90                                            str r0, [sp]
000533ae  00 20                                            movs r0, #0
000533b0  cd e9 01 00                                      strd r0, r0, [sp, #4]
000533b4  df f8 74 04                                      ldr.w r0, [pc, #0x474]
000533b8  78 44                                            add r0, pc
000533ba  50 f8 21 10                                      ldr.w r1, [r0, r1, lsl #2]
000533be  28 46                                            mov r0, r5
000533c0  df f7 9a eb                                      blx #0x32af8
000533c4  21 98                                            ldr r0, [sp, #0x84]
000533c6  00 22                                            movs r2, #0
000533c8  01 68                                            ldr r1, [r0]
000533ca  0b 69                                            ldr r3, [r1, #0x10]
000533cc  51 46                                            mov r1, sl
000533ce  98 47                                            blx r3
000533d0  81 46                                            mov sb, r0
000533d2  df f7 aa eb                                      blx #0x32b28
000533d6  44 21                                            movs r1, #0x44
000533d8  0c 90                                            str r0, [sp, #0x30]
000533da  df f7 a2 e9                                      blx #0x32720
000533de  59 46                                            mov r1, fp
000533e0  04 46                                            mov r4, r0
000533e2  df f7 8e ea                                      blx #0x32900
000533e6  48 46                                            mov r0, sb
000533e8  d9 f8 10 50                                      ldr.w r5, [sb, #0x10]
000533ec  df f7 5c ec                                      blx #0x32ca8
000533f0  0f f2 3c 42                                      addw r2, pc, #0x43c
000533f4  00 90                                            str r0, [sp]
000533f6  20 46                                            mov r0, r4
000533f8  29 46                                            mov r1, r5
000533fa  0a 23                                            movs r3, #0xa
000533fc  df f7 bc ea                                      blx #0x32978
00053400  00 2c                                            cmp r4, #0
00053402  18 bf                                            it ne
00053404  04 30                                            addne r0, #4
00053406  08 f1 04 01                                      add.w r1, r8, #4
0005340a  0a 91                                            str r1, [sp, #0x28]
0005340c  01 60                                            str r1, [r0]
0005340e  d8 f8 08 10                                      ldr.w r1, [r8, #8]
00053412  41 60                                            str r1, [r0, #4]
00053414  08 60                                            str r0, [r1]
00053416  20 21                                            movs r1, #0x20
00053418  c8 f8 08 00                                      str.w r0, [r8, #8]
0005341c  0c 9d                                            ldr r5, [sp, #0x30]
0005341e  28 46                                            mov r0, r5
00053420  df f7 7e e9                                      blx #0x32720
00053424  59 46                                            mov r1, fp
00053426  cd f8 34 a0                                      str.w sl, [sp, #0x34]
0005342a  82 46                                            mov sl, r0
0005342c  df f7 68 ea                                      blx #0x32900
00053430  28 46                                            mov r0, r5
00053432  1c 21                                            movs r1, #0x1c
00053434  df f7 74 e9                                      blx #0x32720
00053438  59 46                                            mov r1, fp
0005343a  05 46                                            mov r5, r0
0005343c  df f7 60 ea                                      blx #0x32900
00053440  28 46                                            mov r0, r5
00053442  21 46                                            mov r1, r4
00053444  df f7 b6 ea                                      blx #0x329b4
00053448  50 46                                            mov r0, sl
0005344a  29 46                                            mov r1, r5
0005344c  4a 46                                            mov r2, sb
0005344e  00 23                                            movs r3, #0
00053450  df f7 da ea                                      blx #0x32a08
00053454  ba f1 00 0f                                      cmp.w sl, #0
00053458  18 bf                                            it ne
0005345a  0a f1 04 0a                                      addne.w sl, sl, #4
0005345e  0a 98                                            ldr r0, [sp, #0x28]
00053460  1c 21                                            movs r1, #0x1c
00053462  ca f8 00 00                                      str.w r0, [sl]
00053466  d8 f8 08 00                                      ldr.w r0, [r8, #8]
0005346a  ca f8 04 00                                      str.w r0, [sl, #4]
0005346e  c0 f8 00 a0                                      str.w sl, [r0]
00053472  c8 f8 08 a0                                      str.w sl, [r8, #8]
00053476  dd e9 0c 0a                                      ldrd r0, sl, [sp, #0x30]
0005347a  df f7 52 e9                                      blx #0x32720
0005347e  59 46                                            mov r1, fp
00053480  05 46                                            mov r5, r0
00053482  df f7 3e ea                                      blx #0x32900
00053486  28 46                                            mov r0, r5
00053488  21 46                                            mov r1, r4
0005348a  df f7 94 ea                                      blx #0x329b4
0005348e  20 95                                            str r5, [sp, #0x80]
00053490  00 22                                            movs r2, #0
00053492  71 6a                                            ldr r1, [r6, #0x24]
00053494  21 98                                            ldr r0, [sp, #0x84]
00053496  d1 f8 40 90                                      ldr.w sb, [r1, #0x40]
0005349a  01 68                                            ldr r1, [r0]
0005349c  0b 69                                            ldr r3, [r1, #0x10]
0005349e  51 46                                            mov r1, sl
000534a0  98 47                                            blx r3
000534a2  03 46                                            mov r3, r0
000534a4  70 6a                                            ldr r0, [r6, #0x24]
000534a6  06 1d                                            adds r6, r0, #4
000534a8  46 ce                                            ldm r6, {r1, r2, r6}
000534aa  d0 e9 04 50                                      ldrd r5, r0, [r0, #0x10]
000534ae  08 91                                            str r1, [sp, #0x20]
000534b0  0e a9                                            add r1, sp, #0x38
000534b2  0b 9c                                            ldr r4, [sp, #0x2c]
000534b4  cd e9 00 41                                      strd r4, r1, [sp]
000534b8  00 21                                            movs r1, #0
000534ba  cd e9 02 11                                      strd r1, r1, [sp, #8]
000534be  51 46                                            mov r1, sl
000534c0  cd e9 04 26                                      strd r2, r6, [sp, #0x10]
000534c4  4a 46                                            mov r2, sb
000534c6  08 e5                                            b #0x52eda
000534c8  41 68                                            ldr r1, [r0, #4]
000534ca  09 29                                            cmp r1, #9
000534cc  0f d1                                            bne #0x534ee
000534ce  df f8 0c 04                                      ldr.w r0, [pc, #0x40c]
000534d2  1a ab                                            add r3, sp, #0x68
000534d4  78 21                                            movs r1, #0x78
000534d6  4f f4 96 72                                      mov.w r2, #0x12c
000534da  78 44                                            add r0, pc
000534dc  00 90                                            str r0, [sp]
000534de  50 46                                            mov r0, sl
000534e0  df f7 b0 ea                                      blx #0x32a44
000534e4  01 28                                            cmp r0, #1
000534e6  7f f4 01 a9                                      bne.w #0x526ec
000534ea  21 98                                            ldr r0, [sp, #0x84]
000534ec  00 69                                            ldr r0, [r0, #0x10]
000534ee  df f7 e2 eb                                      blx #0x32cb4
000534f2  30 b9                                            cbnz r0, #0x53502
000534f4  22 98                                            ldr r0, [sp, #0x88]
000534f6  00 69                                            ldr r0, [r0, #0x10]
000534f8  df f7 dc eb                                      blx #0x32cb4
000534fc  01 28                                            cmp r0, #1
000534fe  40 f0 5d 81                                      bne.w #0x537bc
00053502  df f8 e0 23                                      ldr.w r2, [pc, #0x3e0]
00053506  1a a8                                            add r0, sp, #0x68
00053508  51 46                                            mov r1, sl
0005350a  7a 44                                            add r2, pc
0005350c  df f7 d4 e9                                      blx #0x328b8
00053510  ff f7 ec b8                                      b.w #0x526ec
00053514  ee 4a                                            ldr r2, [pc, #0x3b8]
00053516  1a a8                                            add r0, sp, #0x68
00053518  51 46                                            mov r1, sl
0005351a  7a 44                                            add r2, pc
0005351c  df f7 cc e9                                      blx #0x328b8
00053520  01 20                                            movs r0, #1
00053522  07 f8 31 0c                                      strb r0, [r7, #-0x31]
00053526  eb 48                                            ldr r0, [pc, #0x3ac]
00053528  78 44                                            add r0, pc
0005352a  00 68                                            ldr r0, [r0]
0005352c  05 68                                            ldr r5, [r0]
0005352e  50 46                                            mov r0, sl
00053530  2c 21                                            movs r1, #0x2c
00053532  df f7 f6 e8                                      blx #0x32720
00053536  04 46                                            mov r4, r0
00053538  e7 48                                            ldr r0, [pc, #0x39c]
0005353a  78 44                                            add r0, pc
0005353c  01 68                                            ldr r1, [r0]
0005353e  20 46                                            mov r0, r4
00053540  df f7 de e9                                      blx #0x32900
00053544  00 20                                            movs r0, #0
00053546  21 9b                                            ldr r3, [sp, #0x84]
00053548  cd e9 00 00                                      strd r0, r0, [sp]
0005354c  00 21                                            movs r1, #0
0005354e  02 90                                            str r0, [sp, #8]
00053550  20 46                                            mov r0, r4
00053552  ff f7 e2 b9                                      b.w #0x5291a
00053556  2c 21                                            movs r1, #0x2c
00053558  df f7 e2 e8                                      blx #0x32720
0005355c  04 46                                            mov r4, r0
0005355e  da 48                                            ldr r0, [pc, #0x368]
00053560  78 44                                            add r0, pc
00053562  01 68                                            ldr r1, [r0]
00053564  20 46                                            mov r0, r4
00053566  df f7 cc e9                                      blx #0x32900
0005356a  dd e9 21 23                                      ldrd r2, r3, [sp, #0x84]
0005356e  20 46                                            mov r0, r4
00053570  53 21                                            movs r1, #0x53
00053572  df f7 d2 e9                                      blx #0x32918
00053576  02 e1                                            b #0x5377e
00053578  2c 21                                            movs r1, #0x2c
0005357a  df f7 d2 e8                                      blx #0x32720
0005357e  04 46                                            mov r4, r0
00053580  cb 48                                            ldr r0, [pc, #0x32c]
00053582  78 44                                            add r0, pc
00053584  01 68                                            ldr r1, [r0]
00053586  20 46                                            mov r0, r4
00053588  df f7 ba e9                                      blx #0x32900
0005358c  dd e9 21 23                                      ldrd r2, r3, [sp, #0x84]
00053590  20 46                                            mov r0, r4
00053592  55 21                                            movs r1, #0x55
00053594  df f7 c0 e9                                      blx #0x32918
00053598  f1 e0                                            b #0x5377e
0005359a  00 28                                            cmp r0, #0
0005359c  3f f4 28 ad                                      beq.w #0x52ff0
000535a0  00 2e                                            cmp r6, #0
000535a2  3f f4 25 ad                                      beq.w #0x52ff0
000535a6  bb f1 00 0f                                      cmp.w fp, #0
000535aa  3f f4 21 ad                                      beq.w #0x52ff0
000535ae  14 99                                            ldr r1, [sp, #0x50]
000535b0  0b 9a                                            ldr r2, [sp, #0x2c]
000535b2  91 42                                            cmp r1, r2
000535b4  7f f4 1c ad                                      bne.w #0x52ff0
000535b8  9b f8 18 10                                      ldrb.w r1, [fp, #0x18]
000535bc  00 29                                            cmp r1, #0
000535be  18 bf                                            it ne
000535c0  30 46                                            movne r0, r6
000535c2  20 90                                            str r0, [sp, #0x80]
000535c4  90 e4                                            b #0x52ee8
000535c6  33 6b                                            ldr r3, [r6, #0x30]
000535c8  1a a8                                            add r0, sp, #0x68
000535ca  92 a2                                            adr r2, #0x248
000535cc  51 46                                            mov r1, sl
000535ce  df f7 74 e9                                      blx #0x328b8
000535d2  50 46                                            mov r0, sl
000535d4  df f7 54 ea                                      blx #0x32a80
000535d8  04 46                                            mov r4, r0
000535da  01 20                                            movs r0, #1
000535dc  20 94                                            str r4, [sp, #0x80]
000535de  07 f8 31 0c                                      strb r0, [r7, #-0x31]
000535e2  cd e0                                            b #0x53780
000535e4  00 21                                            movs r1, #0
000535e6  c0 f8 00 b0                                      str.w fp, [r0]
000535ea  cb f8 00 10                                      str.w r1, [fp]
000535ee  41 46                                            mov r1, r8
000535f0  08 60                                            str r0, [r1]
000535f2  1c 21                                            movs r1, #0x1c
000535f4  0d 9e                                            ldr r6, [sp, #0x34]
000535f6  30 46                                            mov r0, r6
000535f8  df f7 92 e8                                      blx #0x32720
000535fc  04 46                                            mov r4, r0
000535fe  9a 48                                            ldr r0, [pc, #0x268]
00053600  78 44                                            add r0, pc
00053602  05 68                                            ldr r5, [r0]
00053604  20 46                                            mov r0, r4
00053606  29 46                                            mov r1, r5
00053608  df f7 7a e9                                      blx #0x32900
0005360c  0c 99                                            ldr r1, [sp, #0x30]
0005360e  20 46                                            mov r0, r4
00053610  df f7 d0 e9                                      blx #0x329b4
00053614  30 46                                            mov r0, r6
00053616  20 21                                            movs r1, #0x20
00053618  df f7 82 e8                                      blx #0x32720
0005361c  29 46                                            mov r1, r5
0005361e  06 46                                            mov r6, r0
00053620  df f7 6e e9                                      blx #0x32900
00053624  22 9a                                            ldr r2, [sp, #0x88]
00053626  30 46                                            mov r0, r6
00053628  21 46                                            mov r1, r4
0005362a  00 23                                            movs r3, #0
0005362c  00 25                                            movs r5, #0
0005362e  df f7 ec e9                                      blx #0x32a08
00053632  00 2e                                            cmp r6, #0
00053634  18 bf                                            it ne
00053636  04 36                                            addne r6, #4
00053638  c6 f8 00 b0                                      str.w fp, [r6]
0005363c  d8 f8 00 00                                      ldr.w r0, [r8]
00053640  70 60                                            str r0, [r6, #4]
00053642  06 60                                            str r6, [r0]
00053644  c8 f8 00 60                                      str.w r6, [r8]
00053648  14 99                                            ldr r1, [sp, #0x50]
0005364a  0b 9b                                            ldr r3, [sp, #0x2c]
0005364c  99 42                                            cmp r1, r3
0005364e  15 d0                                            beq #0x5367c
00053650  c9 f8 00 10                                      str.w r1, [sb]
00053654  14 a8                                            add r0, sp, #0x50
00053656  ca f8 00 50                                      str.w r5, [sl]
0005365a  08 30                                            adds r0, #8
0005365c  dd f8 24 b0                                      ldr.w fp, [sp, #0x24]
00053660  16 9a                                            ldr r2, [sp, #0x58]
00053662  cb f8 00 20                                      str.w r2, [fp]
00053666  c1 f8 04 90                                      str.w sb, [r1, #4]
0005366a  0d f1 50 09                                      add.w sb, sp, #0x50
0005366e  db f8 00 10                                      ldr.w r1, [fp]
00053672  c1 f8 00 a0                                      str.w sl, [r1]
00053676  cd e9 14 35                                      strd r3, r5, [sp, #0x50]
0005367a  06 e0                                            b #0x5368a
0005367c  c9 f8 00 a0                                      str.w sl, [sb]
00053680  ca f8 00 50                                      str.w r5, [sl]
00053684  dd f8 24 b0                                      ldr.w fp, [sp, #0x24]
00053688  58 46                                            mov r0, fp
0005368a  c0 f8 00 90                                      str.w sb, [r0]
0005368e  1c 21                                            movs r1, #0x1c
00053690  0d 9c                                            ldr r4, [sp, #0x34]
00053692  20 46                                            mov r0, r4
00053694  df f7 44 e8                                      blx #0x32720
00053698  05 46                                            mov r5, r0
0005369a  74 48                                            ldr r0, [pc, #0x1d0]
0005369c  78 44                                            add r0, pc
0005369e  d0 f8 00 80                                      ldr.w r8, [r0]
000536a2  28 46                                            mov r0, r5
000536a4  41 46                                            mov r1, r8
000536a6  df f7 2c e9                                      blx #0x32900
000536aa  dd f8 30 90                                      ldr.w sb, [sp, #0x30]
000536ae  28 46                                            mov r0, r5
000536b0  49 46                                            mov r1, sb
000536b2  df f7 80 e9                                      blx #0x329b4
000536b6  20 46                                            mov r0, r4
000536b8  20 21                                            movs r1, #0x20
000536ba  df f7 32 e8                                      blx #0x32720
000536be  41 46                                            mov r1, r8
000536c0  06 46                                            mov r6, r0
000536c2  df f7 1e e9                                      blx #0x32900
000536c6  23 9a                                            ldr r2, [sp, #0x8c]
000536c8  30 46                                            mov r0, r6
000536ca  29 46                                            mov r1, r5
000536cc  00 23                                            movs r3, #0
000536ce  df f7 9c e9                                      blx #0x32a08
000536d2  00 2e                                            cmp r6, #0
000536d4  18 bf                                            it ne
000536d6  04 36                                            addne r6, #4
000536d8  c6 f8 00 a0                                      str.w sl, [r6]
000536dc  a2 46                                            mov sl, r4
000536de  db f8 00 00                                      ldr.w r0, [fp]
000536e2  1c 21                                            movs r1, #0x1c
000536e4  70 60                                            str r0, [r6, #4]
000536e6  06 60                                            str r6, [r0]
000536e8  50 46                                            mov r0, sl
000536ea  cb f8 00 60                                      str.w r6, [fp]
000536ee  df f7 18 e8                                      blx #0x32720
000536f2  41 46                                            mov r1, r8
000536f4  05 46                                            mov r5, r0
000536f6  df f7 04 e9                                      blx #0x32900
000536fa  28 46                                            mov r0, r5
000536fc  49 46                                            mov r1, sb
000536fe  df f7 5a e9                                      blx #0x329b4
00053702  20 95                                            str r5, [sp, #0x80]
00053704  ff f7 f0 bb                                      b.w #0x52ee8
00053708  dd f8 28 b0                                      ldr.w fp, [sp, #0x28]
0005370c  dd f8 34 a0                                      ldr.w sl, [sp, #0x34]
00053710  1c 21                                            movs r1, #0x1c
00053712  50 46                                            mov r0, sl
00053714  df f7 04 e8                                      blx #0x32720
00053718  04 46                                            mov r4, r0
0005371a  64 48                                            ldr r0, [pc, #0x190]
0005371c  78 44                                            add r0, pc
0005371e  05 68                                            ldr r5, [r0]
00053720  20 46                                            mov r0, r4
00053722  29 46                                            mov r1, r5
00053724  df f7 ec e8                                      blx #0x32900
00053728  dd f8 30 90                                      ldr.w sb, [sp, #0x30]
0005372c  20 46                                            mov r0, r4
0005372e  49 46                                            mov r1, sb
00053730  df f7 40 e9                                      blx #0x329b4
00053734  50 46                                            mov r0, sl
00053736  20 21                                            movs r1, #0x20
00053738  de f7 f2 ef                                      blx #0x32720
0005373c  29 46                                            mov r1, r5
0005373e  06 46                                            mov r6, r0
00053740  df f7 de e8                                      blx #0x32900
00053744  22 9a                                            ldr r2, [sp, #0x88]
00053746  30 46                                            mov r0, r6
00053748  21 46                                            mov r1, r4
0005374a  00 23                                            movs r3, #0
0005374c  df f7 5c e9                                      blx #0x32a08
00053750  00 2e                                            cmp r6, #0
00053752  18 bf                                            it ne
00053754  04 36                                            addne r6, #4
00053756  c6 f8 00 b0                                      str.w fp, [r6]
0005375a  1c 21                                            movs r1, #0x1c
0005375c  d8 f8 00 00                                      ldr.w r0, [r8]
00053760  70 60                                            str r0, [r6, #4]
00053762  06 60                                            str r6, [r0]
00053764  50 46                                            mov r0, sl
00053766  c8 f8 00 60                                      str.w r6, [r8]
0005376a  de f7 da ef                                      blx #0x32720
0005376e  29 46                                            mov r1, r5
00053770  04 46                                            mov r4, r0
00053772  df f7 c6 e8                                      blx #0x32900
00053776  20 46                                            mov r0, r4
00053778  49 46                                            mov r1, sb
0005377a  df f7 1c e9                                      blx #0x329b4
0005377e  20 94                                            str r4, [sp, #0x80]
00053780  74 b1                                            cbz r4, #0x537a0
00053782  20 69                                            ldr r0, [r4, #0x10]
00053784  40 68                                            ldr r0, [r0, #4]
00053786  0b 28                                            cmp r0, #0xb
00053788  04 bf                                            itt eq
0005378a  17 f8 31 0c                                      ldrbeq r0, [r7, #-0x31]
0005378e  00 28                                            cmpeq r0, #0
00053790  06 d1                                            bne #0x537a0
00053792  59 4a                                            ldr r2, [pc, #0x164]
00053794  1a a8                                            add r0, sp, #0x68
00053796  51 46                                            mov r1, sl
00053798  7a 44                                            add r2, pc
0005379a  df f7 8e e8                                      blx #0x328b8
0005379e  20 9c                                            ldr r4, [sp, #0x80]
000537a0  56 48                                            ldr r0, [pc, #0x158]
000537a2  24 99                                            ldr r1, [sp, #0x90]
000537a4  78 44                                            add r0, pc
000537a6  00 68                                            ldr r0, [r0]
000537a8  00 68                                            ldr r0, [r0]
000537aa  40 1a                                            subs r0, r0, r1
000537ac  01 bf                                            itttt eq
000537ae  20 46                                            moveq r0, r4
000537b0  25 b0                                            addeq sp, #0x94
000537b2  bd e8 00 0f                                      popeq.w {r8, sb, sl, fp}
000537b6  f0 bd                                            popeq {r4, r5, r6, r7, pc}
000537b8  de f7 52 ec                                      blx #0x32060
000537bc  17 f8 31 0c                                      ldrb r0, [r7, #-0x31]
000537c0  00 28                                            cmp r0, #0
000537c2  7e f4 96 af                                      bne.w #0x526f2
000537c6  46 48                                            ldr r0, [pc, #0x118]
000537c8  31 6a                                            ldr r1, [r6, #0x20]
000537ca  78 44                                            add r0, pc
000537cc  dd e9 21 23                                      ldrd r2, r3, [sp, #0x84]
000537d0  50 f8 21 10                                      ldr.w r1, [r0, r1, lsl #2]
000537d4  50 46                                            mov r0, sl
000537d6  00 f0 89 fd                                      bl #0x542ec
000537da  87 e4                                            b #0x530ec
000537dc  44 4a                                            ldr r2, [pc, #0x110]
000537de  1a a8                                            add r0, sp, #0x68
000537e0  51 46                                            mov r1, sl
000537e2  7a 44                                            add r2, pc
000537e4  df f7 68 e8                                      blx #0x328b8
000537e8  42 48                                            ldr r0, [pc, #0x108]
000537ea  78 44                                            add r0, pc
000537ec  fe f7 91 be                                      b.w #0x52512
000537f0  3d 4a                                            ldr r2, [pc, #0xf4]
000537f2  1a a8                                            add r0, sp, #0x68
000537f4  51 46                                            mov r1, sl
000537f6  7a 44                                            add r2, pc
000537f8  df f7 5e e8                                      blx #0x328b8
000537fc  3b 48                                            ldr r0, [pc, #0xec]
000537fe  78 44                                            add r0, pc
00053800  fe f7 87 be                                      b.w #0x52512
00053804  60 93                                            str r3, [sp, #0x180]
00053806  08 00                                            movs r0, r1
00053808  84 93                                            str r3, [sp, #0x210]
0005380a  08 00                                            movs r0, r1
0005380c  a8 93                                            str r3, [sp, #0x2a0]
0005380e  08 00                                            movs r0, r1
00053810  c6 93                                            str r3, [sp, #0x318]
00053812  08 00                                            movs r0, r1
00053814  60 25                                            movs r5, #0x60
00053816  73 27                                            movs r7, #0x73
00053818  20 75                                            strb r0, [r4, #0x14]
0005381a  6e 64                                            str r6, [r5, #0x44]
0005381c  65 63                                            str r5, [r4, #0x34]
0005381e  6c 61                                            str r4, [r5, #0x14]
00053820  72 65                                            str r2, [r6, #0x54]
00053822  64 00                                            lsls r4, r4, #1
00053824  3c 93                                            str r3, [sp, #0xf0]
00053826  08 00                                            movs r0, r1
00053828  a0 91                                            str r1, [sp, #0x280]
0005382a  08 00                                            movs r0, r1
0005382c  14 45                                            cmp r4, r2
0005382e  07 00                                            movs r7, r0
00053830  5f 70                                            strb r7, [r3, #1]
00053832  6f 73                                            strb r7, [r5, #0xd]
00053834  74 5f                                            ldrsh r4, [r6, r5]
00053836  69 6e                                            ldr r1, [r5, #0x64]
00053838  63 64                                            str r3, [r4, #0x44]
0005383a  65 63                                            str r5, [r4, #0x34]
0005383c  5f 74                                            strb r7, [r3, #0x11]
0005383e  6d 70                                            strb r5, [r5, #1]
00053840  00 00                                            movs r0, r0
00053842  00 00                                            movs r0, r0
00053844  63 6f                                            ldr r3, [r4, #0x74]
00053846  6e 64                                            str r6, [r5, #0x44]
00053848  69 74                                            strb r1, [r5, #0x11]
0005384a  69 6f                                            ldr r1, [r5, #0x74]
0005384c  6e 00                                            lsls r6, r5, #1
0005384e  00 00                                            movs r0, r0
00053850  0e 75                                            strb r6, [r1, #0x14]
00053852  06 00                                            movs r6, r0
00053854  a6 95                                            str r5, [sp, #0x298]
00053856  08 00                                            movs r0, r1
00053858  12 75                                            strb r2, [r2, #0x14]
0005385a  06 00                                            movs r6, r0
0005385c  3a 95                                            str r5, [sp, #0xe8]
0005385e  08 00                                            movs r0, r1
00053860  e4 74                                            strb r4, [r4, #0x13]
00053862  06 00                                            movs r6, r0
00053864  f8 94                                            str r4, [sp, #0x3e0]
00053866  08 00                                            movs r0, r1
00053868  38 8f                                            ldrh r0, [r7, #0x38]
0005386a  08 00                                            movs r0, r1
0005386c  9c 8e                                            ldrh r4, [r3, #0x34]
0005386e  08 00                                            movs r0, r1
00053870  c2 96                                            str r6, [sp, #0x308]
00053872  08 00                                            movs r0, r1
00053874  3a 4a                                            ldr r2, [pc, #0xe8]
00053876  07 00                                            movs r7, r0
00053878  92 76                                            strb r2, [r2, #0x1a]
0005387a  06 00                                            movs r6, r0
0005387c  2a 97                                            str r7, [sp, #0xa8]
0005387e  08 00                                            movs r0, r1
00053880  34 97                                            str r7, [sp, #0xd0]
00053882  08 00                                            movs r0, r1
00053884  a8 4a                                            ldr r2, [pc, #0x2a0]
00053886  07 00                                            movs r7, r0
00053888  4c 48                                            ldr r0, [pc, #0x130]
0005388a  53 00                                            lsls r3, r2, #1
0005388c  52 48                                            ldr r0, [pc, #0x148]
0005388e  53 00                                            lsls r3, r2, #1
00053890  22 99                                            ldr r1, [sp, #0x88]
00053892  08 00                                            movs r0, r1
00053894  2c 99                                            ldr r1, [sp, #0xb0]
00053896  08 00                                            movs r0, r1
00053898  a0 4c                                            ldr r4, [pc, #0x280]
0005389a  07 00                                            movs r7, r0
0005389c  9c 98                                            ldr r0, [sp, #0x270]
0005389e  08 00                                            movs r0, r1
000538a0  a0 98                                            ldr r0, [sp, #0x280]
000538a2  08 00                                            movs r0, r1
000538a4  bd 77                                            strb r5, [r7, #0x1e]
000538a6  06 00                                            movs r6, r0
000538a8  5e 98                                            ldr r0, [sp, #0x178]
000538aa  08 00                                            movs r0, r1
000538ac  1c 8e                                            ldrh r4, [r3, #0x30]
000538ae  08 00                                            movs r0, r1
000538b0  b6 8f                                            ldrh r6, [r6, #0x3c]
000538b2  08 00                                            movs r0, r1
000538b4  04 9b                                            ldr r3, [sp, #0x10]
000538b6  08 00                                            movs r0, r1
000538b8  08 9b                                            ldr r3, [sp, #0x20]
000538ba  08 00                                            movs r0, r1
000538bc  1d 7a                                            ldrb r5, [r3, #8]
000538be  06 00                                            movs r6, r0
000538c0  c0 9a                                            ldr r2, [sp, #0x300]
000538c2  08 00                                            movs r0, r1
000538c4  24 9a                                            ldr r2, [sp, #0x90]
000538c6  08 00                                            movs r0, r1
000538c8  d8 8f                                            ldrh r0, [r3, #0x3e]
000538ca  08 00                                            movs r0, r1
000538cc  d9 8e                                            ldrh r1, [r3, #0x36]
000538ce  06 00                                            movs r6, r0
000538d0  31 6f                                            ldr r1, [r6, #0x70]
000538d2  06 00                                            movs r6, r0
000538d4  14 90                                            str r0, [sp, #0x50]
000538d6  08 00                                            movs r0, r1
000538d8  fe 8f                                            ldrh r6, [r7, #0x3e]
000538da  08 00                                            movs r0, r1
000538dc  33 6f                                            ldr r3, [r6, #0x70]
000538de  06 00                                            movs r6, r0
000538e0  02 41                                            asrs r2, r0
000538e2  07 00                                            movs r7, r0
000538e4  1f 6f                                            ldr r7, [r3, #0x70]
000538e6  06 00                                            movs r6, r0
000538e8  78 81                                            strh r0, [r7, #0xa]
000538ea  06 00                                            movs r6, r0
000538ec  3e 8d                                            ldrh r6, [r7, #0x28]
000538ee  08 00                                            movs r0, r1
000538f0  c9 81                                            strh r1, [r1, #0xe]
000538f2  06 00                                            movs r6, r0
000538f4  52 8d                                            ldrh r2, [r2, #0x2a]
000538f6  08 00                                            movs r0, r1
000538f8  ac 6d                                            ldr r4, [r5, #0x58]
000538fa  06 00                                            movs r6, r0
000538fc  10 8d                                            ldrh r0, [r2, #0x28]
000538fe  08 00                                            movs r0, r1
00053900  de 71                                            strb r6, [r3, #7]
00053902  06 00                                            movs r6, r0

; FUNCTION 0x00053904, declared_size=6, range_size=6, mode=thumb
; class-group: ast_expression
; alias: _ZN14ast_expression13hir_no_rvalueEP9exec_listP22_mesa_glsl_parse_state
; demangled: ast_expression::hir_no_rvalue(exec_list*, _mesa_glsl_parse_state*)
; decoder-mode: thumb
00053904  00 23                                            movs r3, #0
00053906  5d f0 ef b8                                      b.w #0xb0ae8

; FUNCTION 0x0007d98c, declared_size=636, range_size=636, mode=thumb
; class-group: ast_expression
; alias: _ZNK14ast_expression5printEv
; demangled: ast_expression::print() const
; decoder-mode: thumb
0007d98c  f0 b5                                            push {r4, r5, r6, r7, lr}
0007d98e  03 af                                            add r7, sp, #0xc
0007d990  2d e9 00 0b                                      push.w {r8, sb, fp}
0007d994  04 46                                            mov r4, r0
0007d996  20 6a                                            ldr r0, [r4, #0x20]
0007d998  30 28                                            cmp r0, #0x30
0007d99a  00 f2 57 80                                      bhi.w #0x7da4c
0007d99e  df e8 10 f0                                      tbh [pc, r0, lsl #1]
0007d9a2  31 00                                            movs r1, r6
0007d9a4  3e 00                                            movs r6, r7
0007d9a6  3e 00                                            movs r6, r7
0007d9a8  55 00                                            lsls r5, r2, #1
0007d9aa  55 00                                            lsls r5, r2, #1
0007d9ac  55 00                                            lsls r5, r2, #1
0007d9ae  55 00                                            lsls r5, r2, #1
0007d9b0  55 00                                            lsls r5, r2, #1
0007d9b2  55 00                                            lsls r5, r2, #1
0007d9b4  55 00                                            lsls r5, r2, #1
0007d9b6  55 00                                            lsls r5, r2, #1
0007d9b8  55 00                                            lsls r5, r2, #1
0007d9ba  55 00                                            lsls r5, r2, #1
0007d9bc  55 00                                            lsls r5, r2, #1
0007d9be  55 00                                            lsls r5, r2, #1
0007d9c0  55 00                                            lsls r5, r2, #1
0007d9c2  55 00                                            lsls r5, r2, #1
0007d9c4  55 00                                            lsls r5, r2, #1
0007d9c6  55 00                                            lsls r5, r2, #1
0007d9c8  3e 00                                            movs r6, r7
0007d9ca  55 00                                            lsls r5, r2, #1
0007d9cc  55 00                                            lsls r5, r2, #1
0007d9ce  55 00                                            lsls r5, r2, #1
0007d9d0  3e 00                                            movs r6, r7
0007d9d2  31 00                                            movs r1, r6
0007d9d4  31 00                                            movs r1, r6
0007d9d6  31 00                                            movs r1, r6
0007d9d8  31 00                                            movs r1, r6
0007d9da  31 00                                            movs r1, r6
0007d9dc  31 00                                            movs r1, r6
0007d9de  31 00                                            movs r1, r6
0007d9e0  31 00                                            movs r1, r6
0007d9e2  31 00                                            movs r1, r6
0007d9e4  31 00                                            movs r1, r6
0007d9e6  58 00                                            lsls r0, r3, #1
0007d9e8  3e 00                                            movs r6, r7
0007d9ea  3e 00                                            movs r6, r7
0007d9ec  4c 00                                            lsls r4, r1, #1
0007d9ee  4c 00                                            lsls r4, r1, #1
0007d9f0  68 00                                            lsls r0, r5, #1
0007d9f2  6f 00                                            lsls r7, r5, #1
0007d9f4  7c 00                                            lsls r4, r7, #1
0007d9f6  a2 00                                            lsls r2, r4, #2
0007d9f8  a4 00                                            lsls r4, r4, #2
0007d9fa  a7 00                                            lsls r7, r4, #2
0007d9fc  aa 00                                            lsls r2, r5, #2
0007d9fe  b7 00                                            lsls r7, r6, #2
0007da00  c4 00                                            lsls r4, r0, #3
0007da02  e6 00                                            lsls r6, r4, #3
0007da04  60 6a                                            ldr r0, [r4, #0x24]
0007da06  01 68                                            ldr r1, [r0]
0007da08  09 68                                            ldr r1, [r1]
0007da0a  88 47                                            blx r1
0007da0c  20 6a                                            ldr r0, [r4, #0x20]
0007da0e  b5 f7 1c e9                                      blx #0x32c48
0007da12  01 46                                            mov r1, r0
0007da14  72 a0                                            adr r0, #0x1c8
0007da16  b4 f7 68 ec                                      blx #0x322e8
0007da1a  a0 6a                                            ldr r0, [r4, #0x28]
0007da1c  06 e0                                            b #0x7da2c
0007da1e  b5 f7 14 e9                                      blx #0x32c48
0007da22  01 46                                            mov r1, r0
0007da24  6e a0                                            adr r0, #0x1b8
0007da26  b4 f7 60 ec                                      blx #0x322e8
0007da2a  60 6a                                            ldr r0, [r4, #0x24]
0007da2c  01 68                                            ldr r1, [r0]
0007da2e  09 68                                            ldr r1, [r1]
0007da30  bd e8 00 0b                                      pop.w {r8, sb, fp}
0007da34  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0007da38  08 47                                            bx r1
0007da3a  60 6a                                            ldr r0, [r4, #0x24]
0007da3c  01 68                                            ldr r1, [r0]
0007da3e  09 68                                            ldr r1, [r1]
0007da40  88 47                                            blx r1
0007da42  20 6a                                            ldr r0, [r4, #0x20]
0007da44  b5 f7 00 e9                                      blx #0x32c48
0007da48  01 46                                            mov r1, r0
0007da4a  67 e0                                            b #0x7db1c
0007da4c  bd e8 00 0b                                      pop.w {r8, sb, fp}
0007da50  f0 bd                                            pop {r4, r5, r6, r7, pc}
0007da52  60 6a                                            ldr r0, [r4, #0x24]
0007da54  01 68                                            ldr r1, [r0]
0007da56  09 68                                            ldr r1, [r1]
0007da58  88 47                                            blx r1
0007da5a  67 a0                                            adr r0, #0x19c
0007da5c  b4 f7 44 ec                                      blx #0x322e8
0007da60  a0 6a                                            ldr r0, [r4, #0x28]
0007da62  01 68                                            ldr r1, [r0]
0007da64  09 68                                            ldr r1, [r1]
0007da66  88 47                                            blx r1
0007da68  64 a0                                            adr r0, #0x190
0007da6a  b4 f7 3e ec                                      blx #0x322e8
0007da6e  e0 6a                                            ldr r0, [r4, #0x2c]
0007da70  dc e7                                            b #0x7da2c
0007da72  60 6a                                            ldr r0, [r4, #0x24]
0007da74  01 68                                            ldr r1, [r0]
0007da76  09 68                                            ldr r1, [r1]
0007da78  88 47                                            blx r1
0007da7a  21 6b                                            ldr r1, [r4, #0x30]
0007da7c  60 a0                                            adr r0, #0x180
0007da7e  4e e0                                            b #0x7db1e
0007da80  60 6a                                            ldr r0, [r4, #0x24]
0007da82  01 68                                            ldr r1, [r0]
0007da84  09 68                                            ldr r1, [r1]
0007da86  88 47                                            blx r1
0007da88  59 a0                                            adr r0, #0x164
0007da8a  b4 f7 2e ec                                      blx #0x322e8
0007da8e  a0 6a                                            ldr r0, [r4, #0x28]
0007da90  01 68                                            ldr r1, [r0]
0007da92  09 68                                            ldr r1, [r1]
0007da94  88 47                                            blx r1
0007da96  57 a0                                            adr r0, #0x15c
0007da98  8a e0                                            b #0x7dbb0
0007da9a  60 6a                                            ldr r0, [r4, #0x24]
0007da9c  01 68                                            ldr r1, [r0]
0007da9e  09 68                                            ldr r1, [r1]
0007daa0  88 47                                            blx r1
0007daa2  49 a0                                            adr r0, #0x124
0007daa4  b4 f7 20 ec                                      blx #0x322e8
0007daa8  60 6b                                            ldr r0, [r4, #0x34]
0007daaa  01 68                                            ldr r1, [r0]
0007daac  00 29                                            cmp r1, #0
0007daae  5c d0                                            beq #0x7db6a
0007dab0  04 f1 38 09                                      add.w sb, r4, #0x38
0007dab4  0f f2 08 18                                      addw r8, pc, #0x108
0007dab8  05 46                                            mov r5, r0
0007daba  00 e0                                            b #0x7dabe
0007dabc  60 6b                                            ldr r0, [r4, #0x34]
0007dabe  48 45                                            cmp r0, sb
0007dac0  08 bf                                            it eq
0007dac2  00 20                                            moveq r0, #0
0007dac4  a8 42                                            cmp r0, r5
0007dac6  a5 f1 18 06                                      sub.w r6, r5, #0x18
0007daca  1c bf                                            itt ne
0007dacc  40 46                                            movne r0, r8
0007dace  b4 f7 0c ec                                      blxne #0x322e8
0007dad2  55 f8 18 0c                                      ldr r0, [r5, #-0x18]
0007dad6  01 68                                            ldr r1, [r0]
0007dad8  30 46                                            mov r0, r6
0007dada  88 47                                            blx r1
0007dadc  2d 68                                            ldr r5, [r5]
0007dade  28 68                                            ldr r0, [r5]
0007dae0  00 28                                            cmp r0, #0
0007dae2  eb d1                                            bne #0x7dabc
0007dae4  41 e0                                            b #0x7db6a
0007dae6  21 6b                                            ldr r1, [r4, #0x30]
0007dae8  18 e0                                            b #0x7db1c
0007daea  21 6b                                            ldr r1, [r4, #0x30]
0007daec  3f a0                                            adr r0, #0xfc
0007daee  16 e0                                            b #0x7db1e
0007daf0  21 6b                                            ldr r1, [r4, #0x30]
0007daf2  3d a0                                            adr r0, #0xf4
0007daf4  13 e0                                            b #0x7db1e
0007daf6  94 ed 0c 0a                                      vldr s0, [r4, #0x30]
0007dafa  3a a0                                            adr r0, #0xe8
0007dafc  b7 ee c0 0a                                      vcvt.f64.f32 d0, s0
0007db00  53 ec 10 2b                                      vmov r2, r3, d0
0007db04  bd e8 00 0b                                      pop.w {r8, sb, fp}
0007db08  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0007db0c  33 f0 4c b8                                      b.w #0xb0ba8
0007db10  20 6b                                            ldr r0, [r4, #0x30]
0007db12  2f a2                                            adr r2, #0xbc
0007db14  30 a1                                            adr r1, #0xc0
0007db16  00 28                                            cmp r0, #0
0007db18  08 bf                                            it eq
0007db1a  11 46                                            moveq r1, r2
0007db1c  30 a0                                            adr r0, #0xc0
0007db1e  bd e8 00 0b                                      pop.w {r8, sb, fp}
0007db22  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0007db26  33 f0 3f b8                                      b.w #0xb0ba8
0007db2a  27 a0                                            adr r0, #0x9c
0007db2c  b4 f7 dc eb                                      blx #0x322e8
0007db30  60 6b                                            ldr r0, [r4, #0x34]
0007db32  01 68                                            ldr r1, [r0]
0007db34  c9 b1                                            cbz r1, #0x7db6a
0007db36  04 f1 38 09                                      add.w sb, r4, #0x38
0007db3a  0f f2 84 08                                      addw r8, pc, #0x84
0007db3e  05 46                                            mov r5, r0
0007db40  00 e0                                            b #0x7db44
0007db42  60 6b                                            ldr r0, [r4, #0x34]
0007db44  48 45                                            cmp r0, sb
0007db46  08 bf                                            it eq
0007db48  00 20                                            moveq r0, #0
0007db4a  a8 42                                            cmp r0, r5
0007db4c  a5 f1 18 06                                      sub.w r6, r5, #0x18
0007db50  1c bf                                            itt ne
0007db52  40 46                                            movne r0, r8
0007db54  b4 f7 c8 eb                                      blxne #0x322e8
0007db58  55 f8 18 0c                                      ldr r0, [r5, #-0x18]
0007db5c  01 68                                            ldr r1, [r0]
0007db5e  30 46                                            mov r0, r6
0007db60  88 47                                            blx r1
0007db62  2d 68                                            ldr r5, [r5]
0007db64  28 68                                            ldr r0, [r5]
0007db66  00 28                                            cmp r0, #0
0007db68  eb d1                                            bne #0x7db42
0007db6a  18 a0                                            adr r0, #0x60
0007db6c  20 e0                                            b #0x7dbb0
0007db6e  13 a0                                            adr r0, #0x4c
0007db70  b4 f7 ba eb                                      blx #0x322e8
0007db74  60 6b                                            ldr r0, [r4, #0x34]
0007db76  01 68                                            ldr r1, [r0]
0007db78  c9 b1                                            cbz r1, #0x7dbae
0007db7a  04 f1 38 09                                      add.w sb, r4, #0x38
0007db7e  0f f2 40 08                                      addw r8, pc, #0x40
0007db82  05 46                                            mov r5, r0
0007db84  00 e0                                            b #0x7db88
0007db86  60 6b                                            ldr r0, [r4, #0x34]
0007db88  48 45                                            cmp r0, sb
0007db8a  08 bf                                            it eq
0007db8c  00 20                                            moveq r0, #0
0007db8e  a8 42                                            cmp r0, r5
0007db90  a5 f1 18 06                                      sub.w r6, r5, #0x18
0007db94  1c bf                                            itt ne
0007db96  40 46                                            movne r0, r8
0007db98  b4 f7 a6 eb                                      blxne #0x322e8
0007db9c  55 f8 18 0c                                      ldr r0, [r5, #-0x18]
0007dba0  01 68                                            ldr r1, [r0]
0007dba2  30 46                                            mov r0, r6
0007dba4  88 47                                            blx r1
0007dba6  2d 68                                            ldr r5, [r5]
0007dba8  28 68                                            ldr r0, [r5]
0007dbaa  00 28                                            cmp r0, #0
0007dbac  eb d1                                            bne #0x7db86
0007dbae  05 a0                                            adr r0, #0x14
0007dbb0  bd e8 00 0b                                      pop.w {r8, sb, fp}
0007dbb4  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0007dbb8  32 f0 f6 bf                                      b.w #0xb0ba8
0007dbbc  7b 20                                            movs r0, #0x7b
0007dbbe  00 00                                            movs r0, r0
0007dbc0  2c 20                                            movs r0, #0x2c
0007dbc2  00 00                                            movs r0, r0
0007dbc4  7d 20                                            movs r0, #0x7d
0007dbc6  00 00                                            movs r0, r0
0007dbc8  28 20                                            movs r0, #0x28
0007dbca  00 00                                            movs r0, r0
0007dbcc  29 20                                            movs r0, #0x29
0007dbce  00 00                                            movs r0, r0
0007dbd0  66 61                                            str r6, [r4, #0x14]
0007dbd2  6c 73                                            strb r4, [r5, #0xd]
0007dbd4  65 00                                            lsls r5, r4, #1
0007dbd6  00 00                                            movs r0, r0
0007dbd8  74 72                                            strb r4, [r6, #9]
0007dbda  75 65                                            str r5, [r6, #0x54]
0007dbdc  00 00                                            movs r0, r0
0007dbde  00 00                                            movs r0, r0
0007dbe0  25 73                                            strb r5, [r4, #0xc]
0007dbe2  20 00                                            movs r0, r4
0007dbe4  25 66                                            str r5, [r4, #0x60]
0007dbe6  20 00                                            movs r0, r4
0007dbe8  25 75                                            strb r5, [r4, #0x14]
0007dbea  20 00                                            movs r0, r4
0007dbec  25 64                                            str r5, [r4, #0x40]
0007dbee  20 00                                            movs r0, r4
0007dbf0  5b 20                                            movs r0, #0x5b
0007dbf2  00 00                                            movs r0, r0
0007dbf4  5d 20                                            movs r0, #0x5d
0007dbf6  00 00                                            movs r0, r0
0007dbf8  3f 20                                            movs r0, #0x3f
0007dbfa  00 00                                            movs r0, r0
0007dbfc  3a 20                                            movs r0, #0x3a
0007dbfe  00 00                                            movs r0, r0
0007dc00  2e 20                                            movs r0, #0x2e
0007dc02  25 73                                            strb r5, [r4, #0xc]
0007dc04  20 00                                            movs r0, r4
0007dc06  00 00                                            movs r0, r0

; FUNCTION 0x0007dc08, declared_size=80, range_size=80, mode=thumb
; class-group: ast_expression
; alias: _ZN14ast_expressionC1EiPS_S0_S0_
; demangled: ast_expression::ast_expression(int, ast_expression*, ast_expression*, ast_expression*)
; alias: _ZN14ast_expressionC2EiPS_S0_S0_
; demangled: ast_expression::ast_expression(int, ast_expression*, ast_expression*, ast_expression*)
; decoder-mode: thumb
0007dc08  f0 b5                                            push {r4, r5, r6, r7, lr}
0007dc0a  03 af                                            add r7, sp, #0xc
0007dc0c  4d f8 04 8d                                      str r8, [sp, #-0x4]!
0007dc10  04 46                                            mov r4, r0
0007dc12  20 1d                                            adds r0, r4, #4
0007dc14  0e 46                                            mov r6, r1
0007dc16  14 21                                            movs r1, #0x14
0007dc18  98 46                                            mov r8, r3
0007dc1a  15 46                                            mov r5, r2
0007dc1c  b4 f7 20 ed                                      blx #0x32660
0007dc20  0c 48                                            ldr r0, [pc, #0x30]
0007dc22  00 22                                            movs r2, #0
0007dc24  23 46                                            mov r3, r4
0007dc26  22 63                                            str r2, [r4, #0x30]
0007dc28  78 44                                            add r0, pc
0007dc2a  43 f8 38 2f                                      str r2, [r3, #0x38]!
0007dc2e  b9 68                                            ldr r1, [r7, #8]
0007dc30  00 68                                            ldr r0, [r0]
0007dc32  63 63                                            str r3, [r4, #0x34]
0007dc34  04 f1 34 03                                      add.w r3, r4, #0x34
0007dc38  08 30                                            adds r0, #8
0007dc3a  e3 63                                            str r3, [r4, #0x3c]
0007dc3c  c4 e9 08 65                                      strd r6, r5, [r4, #0x20]
0007dc40  e1 62                                            str r1, [r4, #0x2c]
0007dc42  c4 f8 28 80                                      str.w r8, [r4, #0x28]
0007dc46  22 64                                            str r2, [r4, #0x40]
0007dc48  20 60                                            str r0, [r4]
0007dc4a  20 46                                            mov r0, r4
0007dc4c  5d f8 04 8b                                      ldr r8, [sp], #4
0007dc50  f0 bd                                            pop {r4, r5, r6, r7, pc}
0007dc52  00 bf                                            nop
0007dc54  c0 ec 05 00                                      stcl p0, c0, [r0], {5}
