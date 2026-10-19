; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0005748c, declared_size=348, range_size=348, mode=thumb
; class-group: ast_selection_statement
; alias: _ZN23ast_selection_statement3hirEP9exec_listP22_mesa_glsl_parse_state
; demangled: ast_selection_statement::hir(exec_list*, _mesa_glsl_parse_state*)
; decoder-mode: thumb
0005748c  f0 b5                                            push {r4, r5, r6, r7, lr}
0005748e  03 af                                            add r7, sp, #0xc
00057490  2d e9 00 07                                      push.w {r8, sb, sl}
00057494  86 b0                                            sub sp, #0x18
00057496  82 46                                            mov sl, r0
00057498  43 48                                            ldr r0, [pc, #0x10c]
0005749a  88 46                                            mov r8, r1
0005749c  15 46                                            mov r5, r2
0005749e  78 44                                            add r0, pc
000574a0  00 68                                            ldr r0, [r0]
000574a2  00 68                                            ldr r0, [r0]
000574a4  05 90                                            str r0, [sp, #0x14]
000574a6  da f8 20 00                                      ldr.w r0, [sl, #0x20]
000574aa  01 68                                            ldr r1, [r0]
000574ac  4b 68                                            ldr r3, [r1, #4]
000574ae  41 46                                            mov r1, r8
000574b0  98 47                                            blx r3
000574b2  81 46                                            mov sb, r0
000574b4  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
000574b8  41 68                                            ldr r1, [r0, #4]
000574ba  03 29                                            cmp r1, #3
000574bc  05 d1                                            bne #0x574ca
000574be  00 89                                            ldrh r0, [r0, #8]
000574c0  00 f4 60 60                                      and r0, r0, #0xe00
000574c4  b0 f5 00 7f                                      cmp.w r0, #0x200
000574c8  10 d0                                            beq #0x574ec
000574ca  da f8 20 00                                      ldr.w r0, [sl, #0x20]
000574ce  37 a2                                            adr r2, #0xdc
000574d0  41 68                                            ldr r1, [r0, #4]
000574d2  04 91                                            str r1, [sp, #0x10]
000574d4  81 68                                            ldr r1, [r0, #8]
000574d6  00 91                                            str r1, [sp]
000574d8  c1 68                                            ldr r1, [r0, #0xc]
000574da  01 91                                            str r1, [sp, #4]
000574dc  01 69                                            ldr r1, [r0, #0x10]
000574de  02 91                                            str r1, [sp, #8]
000574e0  29 46                                            mov r1, r5
000574e2  40 69                                            ldr r0, [r0, #0x14]
000574e4  03 90                                            str r0, [sp, #0xc]
000574e6  68 46                                            mov r0, sp
000574e8  db f7 e6 e9                                      blx #0x328b8
000574ec  28 46                                            mov r0, r5
000574ee  2c 21                                            movs r1, #0x2c
000574f0  db f7 16 e9                                      blx #0x32720
000574f4  04 46                                            mov r4, r0
000574f6  39 48                                            ldr r0, [pc, #0xe4]
000574f8  78 44                                            add r0, pc
000574fa  01 68                                            ldr r1, [r0]
000574fc  20 46                                            mov r0, r4
000574fe  db f7 00 ea                                      blx #0x32900
00057502  37 48                                            ldr r0, [pc, #0xdc]
00057504  21 46                                            mov r1, r4
00057506  04 f1 14 06                                      add.w r6, r4, #0x14
0005750a  78 44                                            add r0, pc
0005750c  00 68                                            ldr r0, [r0]
0005750e  08 30                                            adds r0, #8
00057510  20 60                                            str r0, [r4]
00057512  0c 20                                            movs r0, #0xc
00057514  c4 e9 03 09                                      strd r0, sb, [r4, #0xc]
00057518  00 20                                            movs r0, #0
0005751a  41 f8 18 0f                                      str r0, [r1, #0x18]!
0005751e  04 f1 20 09                                      add.w sb, r4, #0x20
00057522  61 61                                            str r1, [r4, #0x14]
00057524  21 46                                            mov r1, r4
00057526  e6 61                                            str r6, [r4, #0x1c]
00057528  41 f8 24 0f                                      str r0, [r1, #0x24]!
0005752c  21 62                                            str r1, [r4, #0x20]
0005752e  c4 f8 28 90                                      str.w sb, [r4, #0x28]
00057532  da f8 24 00                                      ldr.w r0, [sl, #0x24]
00057536  60 b1                                            cbz r0, #0x57552
00057538  68 69                                            ldr r0, [r5, #0x14]
0005753a  db f7 68 eb                                      blx #0x32c0c
0005753e  da f8 24 00                                      ldr.w r0, [sl, #0x24]
00057542  2a 46                                            mov r2, r5
00057544  01 68                                            ldr r1, [r0]
00057546  4b 68                                            ldr r3, [r1, #4]
00057548  31 46                                            mov r1, r6
0005754a  98 47                                            blx r3
0005754c  68 69                                            ldr r0, [r5, #0x14]
0005754e  db f7 ca eb                                      blx #0x32ce4
00057552  da f8 28 00                                      ldr.w r0, [sl, #0x28]
00057556  60 b1                                            cbz r0, #0x57572
00057558  68 69                                            ldr r0, [r5, #0x14]
0005755a  db f7 58 eb                                      blx #0x32c0c
0005755e  da f8 28 00                                      ldr.w r0, [sl, #0x28]
00057562  2a 46                                            mov r2, r5
00057564  01 68                                            ldr r1, [r0]
00057566  4b 68                                            ldr r3, [r1, #4]
00057568  49 46                                            mov r1, sb
0005756a  98 47                                            blx r3
0005756c  68 69                                            ldr r0, [r5, #0x14]
0005756e  db f7 ba eb                                      blx #0x32ce4
00057572  00 2c                                            cmp r4, #0
00057574  18 bf                                            it ne
00057576  04 34                                            addne r4, #4
00057578  08 f1 04 00                                      add.w r0, r8, #4
0005757c  20 60                                            str r0, [r4]
0005757e  d8 f8 08 00                                      ldr.w r0, [r8, #8]
00057582  60 60                                            str r0, [r4, #4]
00057584  04 60                                            str r4, [r0]
00057586  17 48                                            ldr r0, [pc, #0x5c]
00057588  c8 f8 08 40                                      str.w r4, [r8, #8]
0005758c  78 44                                            add r0, pc
0005758e  05 99                                            ldr r1, [sp, #0x14]
00057590  00 68                                            ldr r0, [r0]
00057592  00 68                                            ldr r0, [r0]
00057594  40 1a                                            subs r0, r0, r1
00057596  01 bf                                            itttt eq
00057598  00 20                                            moveq r0, #0
0005759a  06 b0                                            addeq sp, #0x18
0005759c  bd e8 00 07                                      popeq.w {r8, sb, sl}
000575a0  f0 bd                                            popeq {r4, r5, r6, r7, pc}
000575a2  da f7 5e ed                                      blx #0x32060
000575a6  00 bf                                            nop
000575a8  16 50                                            str r6, [r2, r0]
000575aa  08 00                                            movs r0, r1
000575ac  69 66                                            str r1, [r5, #0x64]
000575ae  2d 73                                            strb r5, [r5, #0xc]
000575b0  74 61                                            str r4, [r6, #0x14]
000575b2  74 65                                            str r4, [r6, #0x54]
000575b4  6d 65                                            str r5, [r5, #0x54]
000575b6  6e 74                                            strb r6, [r5, #0x11]
000575b8  20 63                                            str r0, [r4, #0x30]
000575ba  6f 6e                                            ldr r7, [r5, #0x64]
000575bc  64 69                                            ldr r4, [r4, #0x14]
000575be  74 69                                            ldr r4, [r6, #0x14]
000575c0  6f 6e                                            ldr r7, [r5, #0x64]
000575c2  20 6d                                            ldr r0, [r4, #0x50]
000575c4  75 73                                            strb r5, [r6, #0xd]
000575c6  74 20                                            movs r0, #0x74
000575c8  62 65                                            str r2, [r4, #0x54]
000575ca  20 73                                            strb r0, [r4, #0xc]
000575cc  63 61                                            str r3, [r4, #0x14]
000575ce  6c 61                                            str r4, [r5, #0x14]
000575d0  72 20                                            movs r0, #0x72
000575d2  62 6f                                            ldr r2, [r4, #0x74]
000575d4  6f 6c                                            ldr r7, [r5, #0x44]
000575d6  65 61                                            str r5, [r4, #0x14]
000575d8  6e 00                                            lsls r6, r5, #1
000575da  00 00                                            movs r0, r0
000575dc  40 50                                            str r0, [r0, r1]
000575de  08 00                                            movs r0, r1
000575e0  4e 50                                            str r6, [r1, r1]
000575e2  08 00                                            movs r0, r1
000575e4  28 4f                                            ldr r7, [pc, #0xa0]
000575e6  08 00                                            movs r0, r1

; FUNCTION 0x0007df68, declared_size=80, range_size=80, mode=thumb
; class-group: ast_selection_statement
; alias: _ZNK23ast_selection_statement5printEv
; demangled: ast_selection_statement::print() const
; decoder-mode: thumb
0007df68  d0 b5                                            push {r4, r6, r7, lr}
0007df6a  02 af                                            add r7, sp, #8
0007df6c  04 46                                            mov r4, r0
0007df6e  0d a0                                            adr r0, #0x34
0007df70  b4 f7 ba e9                                      blx #0x322e8
0007df74  20 6a                                            ldr r0, [r4, #0x20]
0007df76  01 68                                            ldr r1, [r0]
0007df78  09 68                                            ldr r1, [r1]
0007df7a  88 47                                            blx r1
0007df7c  0b a0                                            adr r0, #0x2c
0007df7e  b4 f7 b4 e9                                      blx #0x322e8
0007df82  60 6a                                            ldr r0, [r4, #0x24]
0007df84  01 68                                            ldr r1, [r0]
0007df86  09 68                                            ldr r1, [r1]
0007df88  88 47                                            blx r1
0007df8a  a0 6a                                            ldr r0, [r4, #0x28]
0007df8c  40 b1                                            cbz r0, #0x7dfa0
0007df8e  08 a0                                            adr r0, #0x20
0007df90  b4 f7 aa e9                                      blx #0x322e8
0007df94  a0 6a                                            ldr r0, [r4, #0x28]
0007df96  01 68                                            ldr r1, [r0]
0007df98  09 68                                            ldr r1, [r1]
0007df9a  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0007df9e  08 47                                            bx r1
0007dfa0  d0 bd                                            pop {r4, r6, r7, pc}
0007dfa2  00 bf                                            nop
0007dfa4  69 66                                            str r1, [r5, #0x64]
0007dfa6  20 28                                            cmp r0, #0x20
0007dfa8  20 00                                            movs r0, r4
0007dfaa  00 00                                            movs r0, r0
0007dfac  29 20                                            movs r0, #0x29
0007dfae  00 00                                            movs r0, r0
0007dfb0  65 6c                                            ldr r5, [r4, #0x44]
0007dfb2  73 65                                            str r3, [r6, #0x54]
0007dfb4  20 00                                            movs r0, r4
0007dfb6  00 00                                            movs r0, r0

; FUNCTION 0x0007dfb8, declared_size=56, range_size=56, mode=thumb
; class-group: ast_selection_statement
; alias: _ZN23ast_selection_statementC1EP14ast_expressionP8ast_nodeS3_
; demangled: ast_selection_statement::ast_selection_statement(ast_expression*, ast_node*, ast_node*)
; alias: _ZN23ast_selection_statementC2EP14ast_expressionP8ast_nodeS3_
; demangled: ast_selection_statement::ast_selection_statement(ast_expression*, ast_node*, ast_node*)
; decoder-mode: thumb
0007dfb8  f0 b5                                            push {r4, r5, r6, r7, lr}
0007dfba  03 af                                            add r7, sp, #0xc
0007dfbc  4d f8 04 8d                                      str r8, [sp, #-0x4]!
0007dfc0  04 46                                            mov r4, r0
0007dfc2  20 1d                                            adds r0, r4, #4
0007dfc4  0e 46                                            mov r6, r1
0007dfc6  14 21                                            movs r1, #0x14
0007dfc8  98 46                                            mov r8, r3
0007dfca  15 46                                            mov r5, r2
0007dfcc  b4 f7 48 eb                                      blx #0x32660
0007dfd0  06 48                                            ldr r0, [pc, #0x18]
0007dfd2  c4 e9 08 65                                      strd r6, r5, [r4, #0x20]
0007dfd6  78 44                                            add r0, pc
0007dfd8  c4 f8 28 80                                      str.w r8, [r4, #0x28]
0007dfdc  00 68                                            ldr r0, [r0]
0007dfde  08 30                                            adds r0, #8
0007dfe0  20 60                                            str r0, [r4]
0007dfe2  20 46                                            mov r0, r4
0007dfe4  5d f8 04 8b                                      ldr r8, [sp], #4
0007dfe8  f0 bd                                            pop {r4, r5, r6, r7, pc}
0007dfea  00 bf                                            nop
0007dfec  52 e9 05 00                                      ldrd r0, r0, [r2, #-0x14]
