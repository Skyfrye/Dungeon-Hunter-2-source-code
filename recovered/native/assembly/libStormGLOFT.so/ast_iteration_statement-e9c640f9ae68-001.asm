; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0005731c, declared_size=368, range_size=368, mode=thumb
; class-group: ast_iteration_statement
; alias: _ZN23ast_iteration_statement16condition_to_hirEP9exec_listP22_mesa_glsl_parse_state
; demangled: ast_iteration_statement::condition_to_hir(exec_list*, _mesa_glsl_parse_state*)
; decoder-mode: thumb
0005731c  f0 b5                                            push {r4, r5, r6, r7, lr}
0005731e  03 af                                            add r7, sp, #0xc
00057320  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
00057324  87 b0                                            sub sp, #0x1c
00057326  04 46                                            mov r4, r0
00057328  49 48                                            ldr r0, [pc, #0x124]
0005732a  15 46                                            mov r5, r2
0005732c  89 46                                            mov sb, r1
0005732e  78 44                                            add r0, pc
00057330  00 68                                            ldr r0, [r0]
00057332  00 68                                            ldr r0, [r0]
00057334  06 90                                            str r0, [sp, #0x18]
00057336  a0 6a                                            ldr r0, [r4, #0x28]
00057338  00 28                                            cmp r0, #0
0005733a  7c d0                                            beq #0x57436
0005733c  01 68                                            ldr r1, [r0]
0005733e  2a 46                                            mov r2, r5
00057340  4b 68                                            ldr r3, [r1, #4]
00057342  49 46                                            mov r1, sb
00057344  98 47                                            blx r3
00057346  06 46                                            mov r6, r0
00057348  00 2e                                            cmp r6, #0
0005734a  64 d0                                            beq #0x57416
0005734c  30 69                                            ldr r0, [r6, #0x10]
0005734e  41 68                                            ldr r1, [r0, #4]
00057350  03 29                                            cmp r1, #3
00057352  60 d1                                            bne #0x57416
00057354  00 89                                            ldrh r0, [r0, #8]
00057356  00 f4 60 60                                      and r0, r0, #0xe00
0005735a  b0 f5 00 7f                                      cmp.w r0, #0x200
0005735e  5a d1                                            bne #0x57416
00057360  28 46                                            mov r0, r5
00057362  2c 21                                            movs r1, #0x2c
00057364  db f7 dc e9                                      blx #0x32720
00057368  04 46                                            mov r4, r0
0005736a  3a 48                                            ldr r0, [pc, #0xe8]
0005736c  78 44                                            add r0, pc
0005736e  d0 f8 00 80                                      ldr.w r8, [r0]
00057372  20 46                                            mov r0, r4
00057374  41 46                                            mov r1, r8
00057376  db f7 c4 ea                                      blx #0x32900
0005737a  20 46                                            mov r0, r4
0005737c  01 21                                            movs r1, #1
0005737e  32 46                                            mov r2, r6
00057380  db f7 08 ec                                      blx #0x32b94
00057384  28 46                                            mov r0, r5
00057386  2c 21                                            movs r1, #0x2c
00057388  db f7 ca e9                                      blx #0x32720
0005738c  41 46                                            mov r1, r8
0005738e  06 46                                            mov r6, r0
00057390  db f7 b6 ea                                      blx #0x32900
00057394  30 48                                            ldr r0, [pc, #0xc0]
00057396  4f f0 00 0b                                      mov.w fp, #0
0005739a  b2 46                                            mov sl, r6
0005739c  14 21                                            movs r1, #0x14
0005739e  78 44                                            add r0, pc
000573a0  00 68                                            ldr r0, [r0]
000573a2  08 30                                            adds r0, #8
000573a4  30 60                                            str r0, [r6]
000573a6  0c 20                                            movs r0, #0xc
000573a8  c6 e9 03 04                                      strd r0, r4, [r6, #0xc]
000573ac  06 f1 14 00                                      add.w r0, r6, #0x14
000573b0  4a f8 18 bf                                      str fp, [sl, #0x18]!
000573b4  c6 f8 14 a0                                      str.w sl, [r6, #0x14]
000573b8  f0 61                                            str r0, [r6, #0x1c]
000573ba  30 46                                            mov r0, r6
000573bc  40 f8 24 bf                                      str fp, [r0, #0x24]!
000573c0  30 62                                            str r0, [r6, #0x20]
000573c2  06 f1 20 00                                      add.w r0, r6, #0x20
000573c6  b0 62                                            str r0, [r6, #0x28]
000573c8  28 46                                            mov r0, r5
000573ca  db f7 aa e9                                      blx #0x32720
000573ce  41 46                                            mov r1, r8
000573d0  04 46                                            mov r4, r0
000573d2  db f7 96 ea                                      blx #0x32900
000573d6  21 48                                            ldr r0, [pc, #0x84]
000573d8  00 2c                                            cmp r4, #0
000573da  78 44                                            add r0, pc
000573dc  00 68                                            ldr r0, [r0]
000573de  00 f1 08 00                                      add.w r0, r0, #8
000573e2  20 60                                            str r0, [r4]
000573e4  4f f0 0e 00                                      mov.w r0, #0xe
000573e8  c4 e9 03 0b                                      strd r0, fp, [r4, #0xc]
000573ec  18 bf                                            it ne
000573ee  04 34                                            addne r4, #4
000573f0  c4 f8 00 a0                                      str.w sl, [r4]
000573f4  00 2e                                            cmp r6, #0
000573f6  f0 69                                            ldr r0, [r6, #0x1c]
000573f8  60 60                                            str r0, [r4, #4]
000573fa  04 60                                            str r4, [r0]
000573fc  09 f1 04 00                                      add.w r0, sb, #4
00057400  f4 61                                            str r4, [r6, #0x1c]
00057402  18 bf                                            it ne
00057404  04 36                                            addne r6, #4
00057406  30 60                                            str r0, [r6]
00057408  d9 f8 08 00                                      ldr.w r0, [sb, #8]
0005740c  70 60                                            str r0, [r6, #4]
0005740e  06 60                                            str r6, [r0]
00057410  c9 f8 08 60                                      str.w r6, [sb, #8]
00057414  0f e0                                            b #0x57436
00057416  a0 6a                                            ldr r0, [r4, #0x28]
00057418  11 a2                                            adr r2, #0x44
0005741a  41 68                                            ldr r1, [r0, #4]
0005741c  05 91                                            str r1, [sp, #0x14]
0005741e  81 68                                            ldr r1, [r0, #8]
00057420  01 91                                            str r1, [sp, #4]
00057422  c1 68                                            ldr r1, [r0, #0xc]
00057424  02 91                                            str r1, [sp, #8]
00057426  01 69                                            ldr r1, [r0, #0x10]
00057428  03 91                                            str r1, [sp, #0xc]
0005742a  29 46                                            mov r1, r5
0005742c  40 69                                            ldr r0, [r0, #0x14]
0005742e  04 90                                            str r0, [sp, #0x10]
00057430  01 a8                                            add r0, sp, #4
00057432  db f7 42 ea                                      blx #0x328b8
00057436  14 48                                            ldr r0, [pc, #0x50]
00057438  06 99                                            ldr r1, [sp, #0x18]
0005743a  78 44                                            add r0, pc
0005743c  00 68                                            ldr r0, [r0]
0005743e  00 68                                            ldr r0, [r0]
00057440  40 1a                                            subs r0, r0, r1
00057442  02 bf                                            ittt eq
00057444  07 b0                                            addeq sp, #0x1c
00057446  bd e8 00 0f                                      popeq.w {r8, sb, sl, fp}
0005744a  f0 bd                                            popeq {r4, r5, r6, r7, pc}
0005744c  da f7 08 ee                                      blx #0x32060
00057450  86 51                                            str r6, [r0, r6]
00057452  08 00                                            movs r0, r1
00057454  cc 51                                            str r4, [r1, r7]
00057456  08 00                                            movs r0, r1
00057458  ba 51                                            str r2, [r7, r6]
0005745a  08 00                                            movs r0, r1
0005745c  82 51                                            str r2, [r0, r6]
0005745e  08 00                                            movs r0, r1
00057460  6c 6f                                            ldr r4, [r5, #0x74]
00057462  6f 70                                            strb r7, [r5, #1]
00057464  20 63                                            str r0, [r4, #0x30]
00057466  6f 6e                                            ldr r7, [r5, #0x64]
00057468  64 69                                            ldr r4, [r4, #0x14]
0005746a  74 69                                            ldr r4, [r6, #0x14]
0005746c  6f 6e                                            ldr r7, [r5, #0x64]
0005746e  20 6d                                            ldr r0, [r4, #0x50]
00057470  75 73                                            strb r5, [r6, #0xd]
00057472  74 20                                            movs r0, #0x74
00057474  62 65                                            str r2, [r4, #0x54]
00057476  20 73                                            strb r0, [r4, #0xc]
00057478  63 61                                            str r3, [r4, #0x14]
0005747a  6c 61                                            str r4, [r5, #0x14]
0005747c  72 20                                            movs r0, #0x72
0005747e  62 6f                                            ldr r2, [r4, #0x74]
00057480  6f 6c                                            ldr r7, [r5, #0x44]
00057482  65 61                                            str r5, [r4, #0x14]
00057484  6e 00                                            lsls r6, r5, #1
00057486  00 00                                            movs r0, r0
00057488  7a 50                                            str r2, [r7, r1]
0005748a  08 00                                            movs r0, r1

; FUNCTION 0x000581b4, declared_size=212, range_size=212, mode=thumb
; class-group: ast_iteration_statement
; alias: _ZN23ast_iteration_statement3hirEP9exec_listP22_mesa_glsl_parse_state
; demangled: ast_iteration_statement::hir(exec_list*, _mesa_glsl_parse_state*)
; decoder-mode: thumb
000581b4  f0 b5                                            push {r4, r5, r6, r7, lr}
000581b6  03 af                                            add r7, sp, #0xc
000581b8  2d e9 00 0b                                      push.w {r8, sb, fp}
000581bc  05 46                                            mov r5, r0
000581be  14 46                                            mov r4, r2
000581c0  28 6a                                            ldr r0, [r5, #0x20]
000581c2  88 46                                            mov r8, r1
000581c4  02 28                                            cmp r0, #2
000581c6  1c bf                                            itt ne
000581c8  60 69                                            ldrne r0, [r4, #0x14]
000581ca  da f7 20 ed                                      blxne #0x32c0c
000581ce  68 6a                                            ldr r0, [r5, #0x24]
000581d0  20 b1                                            cbz r0, #0x581dc
000581d2  01 68                                            ldr r1, [r0]
000581d4  22 46                                            mov r2, r4
000581d6  4b 68                                            ldr r3, [r1, #4]
000581d8  41 46                                            mov r1, r8
000581da  98 47                                            blx r3
000581dc  20 46                                            mov r0, r4
000581de  1c 21                                            movs r1, #0x1c
000581e0  da f7 9e ea                                      blx #0x32720
000581e4  06 46                                            mov r6, r0
000581e6  27 48                                            ldr r0, [pc, #0x9c]
000581e8  78 44                                            add r0, pc
000581ea  01 68                                            ldr r1, [r0]
000581ec  30 46                                            mov r0, r6
000581ee  da f7 88 eb                                      blx #0x32900
000581f2  30 46                                            mov r0, r6
000581f4  da f7 2a ee                                      blx #0x32e4c
000581f8  00 2e                                            cmp r6, #0
000581fa  18 bf                                            it ne
000581fc  04 30                                            addne r0, #4
000581fe  08 f1 04 01                                      add.w r1, r8, #4
00058202  01 60                                            str r1, [r0]
00058204  d8 f8 08 10                                      ldr.w r1, [r8, #8]
00058208  41 60                                            str r1, [r0, #4]
0005820a  08 60                                            str r0, [r1]
0005820c  c8 f8 08 00                                      str.w r0, [r8, #8]
00058210  00 20                                            movs r0, #0
00058212  d4 f8 60 81                                      ldr.w r8, [r4, #0x160]
00058216  94 f8 80 91                                      ldrb.w sb, [r4, #0x180]
0005821a  c4 f8 60 51                                      str.w r5, [r4, #0x160]
0005821e  84 f8 80 01                                      strb.w r0, [r4, #0x180]
00058222  28 6a                                            ldr r0, [r5, #0x20]
00058224  02 28                                            cmp r0, #2
00058226  05 d0                                            beq #0x58234
00058228  06 f1 10 01                                      add.w r1, r6, #0x10
0005822c  28 46                                            mov r0, r5
0005822e  22 46                                            mov r2, r4
00058230  da f7 00 ee                                      blx #0x32e34
00058234  28 6b                                            ldr r0, [r5, #0x30]
00058236  28 b1                                            cbz r0, #0x58244
00058238  01 68                                            ldr r1, [r0]
0005823a  22 46                                            mov r2, r4
0005823c  4b 68                                            ldr r3, [r1, #4]
0005823e  06 f1 10 01                                      add.w r1, r6, #0x10
00058242  98 47                                            blx r3
00058244  e8 6a                                            ldr r0, [r5, #0x2c]
00058246  28 b1                                            cbz r0, #0x58254
00058248  01 68                                            ldr r1, [r0]
0005824a  22 46                                            mov r2, r4
0005824c  4b 68                                            ldr r3, [r1, #4]
0005824e  06 f1 10 01                                      add.w r1, r6, #0x10
00058252  98 47                                            blx r3
00058254  28 6a                                            ldr r0, [r5, #0x20]
00058256  02 28                                            cmp r0, #2
00058258  08 d1                                            bne #0x5826c
0005825a  06 f1 10 01                                      add.w r1, r6, #0x10
0005825e  28 46                                            mov r0, r5
00058260  22 46                                            mov r2, r4
00058262  da f7 e8 ed                                      blx #0x32e34
00058266  28 6a                                            ldr r0, [r5, #0x20]
00058268  02 28                                            cmp r0, #2
0005826a  02 d0                                            beq #0x58272
0005826c  60 69                                            ldr r0, [r4, #0x14]
0005826e  da f7 3a ed                                      blx #0x32ce4
00058272  84 f8 80 91                                      strb.w sb, [r4, #0x180]
00058276  00 20                                            movs r0, #0
00058278  c4 f8 60 81                                      str.w r8, [r4, #0x160]
0005827c  bd e8 00 0b                                      pop.w {r8, sb, fp}
00058280  f0 bd                                            pop {r4, r5, r6, r7, pc}
00058282  00 bf                                            nop
00058284  50 43                                            muls r0, r2, r0
00058286  08 00                                            movs r0, r1

; FUNCTION 0x0007e20c, declared_size=172, range_size=172, mode=thumb
; class-group: ast_iteration_statement
; alias: _ZNK23ast_iteration_statement5printEv
; demangled: ast_iteration_statement::print() const
; decoder-mode: thumb
0007e20c  d0 b5                                            push {r4, r6, r7, lr}
0007e20e  02 af                                            add r7, sp, #8
0007e210  04 46                                            mov r4, r0
0007e212  20 6a                                            ldr r0, [r4, #0x20]
0007e214  02 28                                            cmp r0, #2
0007e216  17 d0                                            beq #0x7e248
0007e218  01 28                                            cmp r0, #1
0007e21a  29 d0                                            beq #0x7e270
0007e21c  c8 bb                                            cbnz r0, #0x7e292
0007e21e  23 a0                                            adr r0, #0x8c
0007e220  b4 f7 62 e8                                      blx #0x322e8
0007e224  60 6a                                            ldr r0, [r4, #0x24]
0007e226  10 b1                                            cbz r0, #0x7e22e
0007e228  01 68                                            ldr r1, [r0]
0007e22a  09 68                                            ldr r1, [r1]
0007e22c  88 47                                            blx r1
0007e22e  21 a0                                            adr r0, #0x84
0007e230  b4 f7 5a e8                                      blx #0x322e8
0007e234  a0 6a                                            ldr r0, [r4, #0x28]
0007e236  10 b1                                            cbz r0, #0x7e23e
0007e238  01 68                                            ldr r1, [r0]
0007e23a  09 68                                            ldr r1, [r1]
0007e23c  88 47                                            blx r1
0007e23e  1d a0                                            adr r0, #0x74
0007e240  b4 f7 52 e8                                      blx #0x322e8
0007e244  e0 6a                                            ldr r0, [r4, #0x2c]
0007e246  17 e0                                            b #0x7e278
0007e248  12 a0                                            adr r0, #0x48
0007e24a  b4 f7 4e e8                                      blx #0x322e8
0007e24e  20 6b                                            ldr r0, [r4, #0x30]
0007e250  01 68                                            ldr r1, [r0]
0007e252  09 68                                            ldr r1, [r1]
0007e254  88 47                                            blx r1
0007e256  10 a0                                            adr r0, #0x40
0007e258  b4 f7 46 e8                                      blx #0x322e8
0007e25c  a0 6a                                            ldr r0, [r4, #0x28]
0007e25e  10 b1                                            cbz r0, #0x7e266
0007e260  01 68                                            ldr r1, [r0]
0007e262  09 68                                            ldr r1, [r1]
0007e264  88 47                                            blx r1
0007e266  0f a0                                            adr r0, #0x3c
0007e268  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0007e26c  32 f0 9c bc                                      b.w #0xb0ba8
0007e270  09 a0                                            adr r0, #0x24
0007e272  b4 f7 3a e8                                      blx #0x322e8
0007e276  a0 6a                                            ldr r0, [r4, #0x28]
0007e278  10 b1                                            cbz r0, #0x7e280
0007e27a  01 68                                            ldr r1, [r0]
0007e27c  09 68                                            ldr r1, [r1]
0007e27e  88 47                                            blx r1
0007e280  09 a0                                            adr r0, #0x24
0007e282  b4 f7 32 e8                                      blx #0x322e8
0007e286  20 6b                                            ldr r0, [r4, #0x30]
0007e288  01 68                                            ldr r1, [r0]
0007e28a  09 68                                            ldr r1, [r1]
0007e28c  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0007e290  08 47                                            bx r1
0007e292  d0 bd                                            pop {r4, r6, r7, pc}
0007e294  64 6f                                            ldr r4, [r4, #0x74]
0007e296  20 00                                            movs r0, r4
0007e298  77 68                                            ldr r7, [r6, #4]
0007e29a  69 6c                                            ldr r1, [r5, #0x44]
0007e29c  65 20                                            movs r0, #0x65
0007e29e  28 20                                            movs r0, #0x28
0007e2a0  00 00                                            movs r0, r0
0007e2a2  00 00                                            movs r0, r0
0007e2a4  29 3b                                            subs r3, #0x29
0007e2a6  20 00                                            movs r0, r4
0007e2a8  29 20                                            movs r0, #0x29
0007e2aa  00 00                                            movs r0, r0
0007e2ac  66 6f                                            ldr r6, [r4, #0x74]
0007e2ae  72 28                                            cmp r0, #0x72
0007e2b0  20 00                                            movs r0, r4
0007e2b2  00 00                                            movs r0, r0
0007e2b4  3b 20                                            movs r0, #0x3b
0007e2b6  00 00                                            movs r0, r0

; FUNCTION 0x0007e2b8, declared_size=60, range_size=60, mode=thumb
; class-group: ast_iteration_statement
; alias: _ZN23ast_iteration_statementC1EiP8ast_nodeS1_P14ast_expressionS1_
; demangled: ast_iteration_statement::ast_iteration_statement(int, ast_node*, ast_node*, ast_expression*, ast_node*)
; alias: _ZN23ast_iteration_statementC2EiP8ast_nodeS1_P14ast_expressionS1_
; demangled: ast_iteration_statement::ast_iteration_statement(int, ast_node*, ast_node*, ast_expression*, ast_node*)
; decoder-mode: thumb
0007e2b8  f0 b5                                            push {r4, r5, r6, r7, lr}
0007e2ba  03 af                                            add r7, sp, #0xc
0007e2bc  4d f8 04 8d                                      str r8, [sp, #-0x4]!
0007e2c0  04 46                                            mov r4, r0
0007e2c2  20 1d                                            adds r0, r4, #4
0007e2c4  0e 46                                            mov r6, r1
0007e2c6  14 21                                            movs r1, #0x14
0007e2c8  98 46                                            mov r8, r3
0007e2ca  15 46                                            mov r5, r2
0007e2cc  b4 f7 c8 e9                                      blx #0x32660
0007e2d0  07 48                                            ldr r0, [pc, #0x1c]
0007e2d2  d7 e9 02 21                                      ldrd r2, r1, [r7, #8]
0007e2d6  78 44                                            add r0, pc
0007e2d8  c4 e9 08 65                                      strd r6, r5, [r4, #0x20]
0007e2dc  00 68                                            ldr r0, [r0]
0007e2de  c4 e9 0a 82                                      strd r8, r2, [r4, #0x28]
0007e2e2  08 30                                            adds r0, #8
0007e2e4  21 63                                            str r1, [r4, #0x30]
0007e2e6  20 60                                            str r0, [r4]
0007e2e8  20 46                                            mov r0, r4
0007e2ea  5d f8 04 8b                                      ldr r8, [sp], #4
0007e2ee  f0 bd                                            pop {r4, r5, r6, r7, pc}
0007e2f0  6e e6                                            b #0x7dfd0
0007e2f2  05 00                                            movs r5, r0
