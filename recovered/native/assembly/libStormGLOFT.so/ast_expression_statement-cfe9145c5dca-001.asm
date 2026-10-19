; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0005477c, declared_size=22, range_size=22, mode=thumb
; class-group: ast_expression_statement
; alias: _ZN24ast_expression_statement3hirEP9exec_listP22_mesa_glsl_parse_state
; demangled: ast_expression_statement::hir(exec_list*, _mesa_glsl_parse_state*)
; decoder-mode: thumb
0005477c  00 6a                                            ldr r0, [r0, #0x20]
0005477e  30 b1                                            cbz r0, #0x5478e
00054780  80 b5                                            push {r7, lr}
00054782  6f 46                                            mov r7, sp
00054784  03 68                                            ldr r3, [r0]
00054786  9b 68                                            ldr r3, [r3, #8]
00054788  98 47                                            blx r3
0005478a  bd e8 80 40                                      pop.w {r7, lr}
0005478e  00 20                                            movs r0, #0
00054790  70 47                                            bx lr

; FUNCTION 0x0007dc58, declared_size=28, range_size=28, mode=thumb
; class-group: ast_expression_statement
; alias: _ZNK24ast_expression_statement5printEv
; demangled: ast_expression_statement::print() const
; decoder-mode: thumb
0007dc58  00 6a                                            ldr r0, [r0, #0x20]
0007dc5a  30 b1                                            cbz r0, #0x7dc6a
0007dc5c  80 b5                                            push {r7, lr}
0007dc5e  6f 46                                            mov r7, sp
0007dc60  01 68                                            ldr r1, [r0]
0007dc62  09 68                                            ldr r1, [r1]
0007dc64  88 47                                            blx r1
0007dc66  bd e8 80 40                                      pop.w {r7, lr}
0007dc6a  01 a0                                            adr r0, #4
0007dc6c  32 f0 9c bf                                      b.w #0xb0ba8
0007dc70  3b 20                                            movs r0, #0x3b
0007dc72  00 00                                            movs r0, r0

; FUNCTION 0x0007dc74, declared_size=36, range_size=36, mode=thumb
; class-group: ast_expression_statement
; alias: _ZN24ast_expression_statementC1EP14ast_expression
; demangled: ast_expression_statement::ast_expression_statement(ast_expression*)
; alias: _ZN24ast_expression_statementC2EP14ast_expression
; demangled: ast_expression_statement::ast_expression_statement(ast_expression*)
; decoder-mode: thumb
0007dc74  b0 b5                                            push {r4, r5, r7, lr}
0007dc76  02 af                                            add r7, sp, #8
0007dc78  05 46                                            mov r5, r0
0007dc7a  28 1d                                            adds r0, r5, #4
0007dc7c  0c 46                                            mov r4, r1
0007dc7e  14 21                                            movs r1, #0x14
0007dc80  b4 f7 ee ec                                      blx #0x32660
0007dc84  03 48                                            ldr r0, [pc, #0xc]
0007dc86  2c 62                                            str r4, [r5, #0x20]
0007dc88  78 44                                            add r0, pc
0007dc8a  00 68                                            ldr r0, [r0]
0007dc8c  08 30                                            adds r0, #8
0007dc8e  28 60                                            str r0, [r5]
0007dc90  28 46                                            mov r0, r5
0007dc92  b0 bd                                            pop {r4, r5, r7, pc}
0007dc94  8c ec 05 00                                      stc p0, c0, [ip], {5}
