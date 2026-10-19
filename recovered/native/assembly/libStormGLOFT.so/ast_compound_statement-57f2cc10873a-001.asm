; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00054792, declared_size=74, range_size=74, mode=thumb
; class-group: ast_compound_statement
; alias: _ZN22ast_compound_statement3hirEP9exec_listP22_mesa_glsl_parse_state
; demangled: ast_compound_statement::hir(exec_list*, _mesa_glsl_parse_state*)
; decoder-mode: thumb
00054792  f0 b5                                            push {r4, r5, r6, r7, lr}
00054794  03 af                                            add r7, sp, #0xc
00054796  4d f8 04 8d                                      str r8, [sp, #-0x4]!
0005479a  80 46                                            mov r8, r0
0005479c  14 46                                            mov r4, r2
0005479e  d8 f8 20 00                                      ldr.w r0, [r8, #0x20]
000547a2  0e 46                                            mov r6, r1
000547a4  10 b1                                            cbz r0, #0x547ac
000547a6  60 69                                            ldr r0, [r4, #0x14]
000547a8  de f7 30 ea                                      blx #0x32c0c
000547ac  d8 f8 24 50                                      ldr.w r5, [r8, #0x24]
000547b0  07 e0                                            b #0x547c2
000547b2  28 46                                            mov r0, r5
000547b4  22 46                                            mov r2, r4
000547b6  50 f8 18 1d                                      ldr r1, [r0, #-0x18]!
000547ba  4b 68                                            ldr r3, [r1, #4]
000547bc  31 46                                            mov r1, r6
000547be  98 47                                            blx r3
000547c0  2d 68                                            ldr r5, [r5]
000547c2  28 68                                            ldr r0, [r5]
000547c4  00 28                                            cmp r0, #0
000547c6  f4 d1                                            bne #0x547b2
000547c8  d8 f8 20 00                                      ldr.w r0, [r8, #0x20]
000547cc  10 b1                                            cbz r0, #0x547d4
000547ce  60 69                                            ldr r0, [r4, #0x14]
000547d0  de f7 88 ea                                      blx #0x32ce4
000547d4  00 20                                            movs r0, #0
000547d6  5d f8 04 8b                                      ldr r8, [sp], #4
000547da  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0007d904, declared_size=52, range_size=52, mode=thumb
; class-group: ast_compound_statement
; alias: _ZNK22ast_compound_statement5printEv
; demangled: ast_compound_statement::print() const
; decoder-mode: thumb
0007d904  d0 b5                                            push {r4, r6, r7, lr}
0007d906  02 af                                            add r7, sp, #8
0007d908  04 46                                            mov r4, r0
0007d90a  09 a0                                            adr r0, #0x24
0007d90c  b4 f7 d0 ed                                      blx #0x324b0
0007d910  64 6a                                            ldr r4, [r4, #0x24]
0007d912  05 e0                                            b #0x7d920
0007d914  20 46                                            mov r0, r4
0007d916  50 f8 18 1d                                      ldr r1, [r0, #-0x18]!
0007d91a  09 68                                            ldr r1, [r1]
0007d91c  88 47                                            blx r1
0007d91e  24 68                                            ldr r4, [r4]
0007d920  20 68                                            ldr r0, [r4]
0007d922  00 28                                            cmp r0, #0
0007d924  f6 d1                                            bne #0x7d914
0007d926  03 a0                                            adr r0, #0xc
0007d928  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0007d92c  33 f0 44 b9                                      b.w #0xb0bb8
0007d930  7b 00                                            lsls r3, r7, #1
0007d932  00 00                                            movs r0, r0
0007d934  7d 00                                            lsls r5, r7, #1
0007d936  00 00                                            movs r0, r0

; FUNCTION 0x0007d938, declared_size=84, range_size=84, mode=thumb
; class-group: ast_compound_statement
; alias: _ZN22ast_compound_statementC1EiP8ast_node
; demangled: ast_compound_statement::ast_compound_statement(int, ast_node*)
; alias: _ZN22ast_compound_statementC2EiP8ast_node
; demangled: ast_compound_statement::ast_compound_statement(int, ast_node*)
; decoder-mode: thumb
0007d938  f0 b5                                            push {r4, r5, r6, r7, lr}
0007d93a  03 af                                            add r7, sp, #0xc
0007d93c  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0007d940  04 46                                            mov r4, r0
0007d942  20 1d                                            adds r0, r4, #4
0007d944  0e 46                                            mov r6, r1
0007d946  14 21                                            movs r1, #0x14
0007d948  15 46                                            mov r5, r2
0007d94a  b4 f7 8a ee                                      blx #0x32660
0007d94e  0e 4a                                            ldr r2, [pc, #0x38]
0007d950  00 20                                            movs r0, #0
0007d952  21 46                                            mov r1, r4
0007d954  00 2d                                            cmp r5, #0
0007d956  7a 44                                            add r2, pc
0007d958  41 f8 28 0f                                      str r0, [r1, #0x28]!
0007d95c  04 f1 24 00                                      add.w r0, r4, #0x24
0007d960  61 62                                            str r1, [r4, #0x24]
0007d962  12 68                                            ldr r2, [r2]
0007d964  e0 62                                            str r0, [r4, #0x2c]
0007d966  26 62                                            str r6, [r4, #0x20]
0007d968  02 f1 08 02                                      add.w r2, r2, #8
0007d96c  22 60                                            str r2, [r4]
0007d96e  07 d0                                            beq #0x7d980
0007d970  ea 69                                            ldr r2, [r5, #0x1c]
0007d972  11 60                                            str r1, [r2]
0007d974  01 68                                            ldr r1, [r0]
0007d976  4a 60                                            str r2, [r1, #4]
0007d978  05 f1 18 01                                      add.w r1, r5, #0x18
0007d97c  e8 61                                            str r0, [r5, #0x1c]
0007d97e  01 60                                            str r1, [r0]
0007d980  20 46                                            mov r0, r4
0007d982  5d f8 04 bb                                      ldr fp, [sp], #4
0007d986  f0 bd                                            pop {r4, r5, r6, r7, pc}
0007d988  ba ef 05 00                                      vext.32 d0, d10, d5, #0
