; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00057c64, declared_size=332, range_size=332, mode=thumb
; class-group: ast_case_statement
; alias: _ZN18ast_case_statement3hirEP9exec_listP22_mesa_glsl_parse_state
; demangled: ast_case_statement::hir(exec_list*, _mesa_glsl_parse_state*)
; decoder-mode: thumb
00057c64  f0 b5                                            push {r4, r5, r6, r7, lr}
00057c66  03 af                                            add r7, sp, #0xc
00057c68  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
00057c6c  81 b0                                            sub sp, #4
00057c6e  00 90                                            str r0, [sp]
00057c70  0c 46                                            mov r4, r1
00057c72  00 6a                                            ldr r0, [r0, #0x20]
00057c74  91 46                                            mov sb, r2
00057c76  01 68                                            ldr r1, [r0]
00057c78  4b 68                                            ldr r3, [r1, #4]
00057c7a  21 46                                            mov r1, r4
00057c7c  98 47                                            blx r3
00057c7e  48 46                                            mov r0, sb
00057c80  68 21                                            movs r1, #0x68
00057c82  da f7 4e ed                                      blx #0x32720
00057c86  82 46                                            mov sl, r0
00057c88  47 48                                            ldr r0, [pc, #0x11c]
00057c8a  78 44                                            add r0, pc
00057c8c  d0 f8 00 b0                                      ldr.w fp, [r0]
00057c90  50 46                                            mov r0, sl
00057c92  59 46                                            mov r1, fp
00057c94  da f7 34 ee                                      blx #0x32900
00057c98  50 46                                            mov r0, sl
00057c9a  00 21                                            movs r1, #0
00057c9c  01 22                                            movs r2, #1
00057c9e  da f7 da ef                                      blx #0x32c54
00057ca2  48 46                                            mov r0, sb
00057ca4  1c 21                                            movs r1, #0x1c
00057ca6  da f7 3c ed                                      blx #0x32720
00057caa  59 46                                            mov r1, fp
00057cac  05 46                                            mov r5, r0
00057cae  da f7 28 ee                                      blx #0x32900
00057cb2  d9 f8 68 11                                      ldr.w r1, [sb, #0x168]
00057cb6  28 46                                            mov r0, r5
00057cb8  da f7 7c ee                                      blx #0x329b4
00057cbc  48 46                                            mov r0, sb
00057cbe  1c 21                                            movs r1, #0x1c
00057cc0  da f7 2e ed                                      blx #0x32720
00057cc4  59 46                                            mov r1, fp
00057cc6  06 46                                            mov r6, r0
00057cc8  da f7 1a ee                                      blx #0x32900
00057ccc  d9 f8 6c 11                                      ldr.w r1, [sb, #0x16c]
00057cd0  30 46                                            mov r0, r6
00057cd2  da f7 70 ee                                      blx #0x329b4
00057cd6  48 46                                            mov r0, sb
00057cd8  20 21                                            movs r1, #0x20
00057cda  da f7 22 ed                                      blx #0x32720
00057cde  59 46                                            mov r1, fp
00057ce0  80 46                                            mov r8, r0
00057ce2  da f7 0e ee                                      blx #0x32900
00057ce6  40 46                                            mov r0, r8
00057ce8  29 46                                            mov r1, r5
00057cea  52 46                                            mov r2, sl
00057cec  33 46                                            mov r3, r6
00057cee  da f7 8c ee                                      blx #0x32a08
00057cf2  b8 f1 00 0f                                      cmp.w r8, #0
00057cf6  18 bf                                            it ne
00057cf8  08 f1 04 08                                      addne.w r8, r8, #4
00057cfc  04 f1 04 0a                                      add.w sl, r4, #4
00057d00  c8 f8 00 a0                                      str.w sl, [r8]
00057d04  a0 68                                            ldr r0, [r4, #8]
00057d06  1c 21                                            movs r1, #0x1c
00057d08  c8 f8 04 00                                      str.w r0, [r8, #4]
00057d0c  c0 f8 00 80                                      str.w r8, [r0]
00057d10  48 46                                            mov r0, sb
00057d12  c4 f8 08 80                                      str.w r8, [r4, #8]
00057d16  da f7 04 ed                                      blx #0x32720
00057d1a  59 46                                            mov r1, fp
00057d1c  06 46                                            mov r6, r0
00057d1e  da f7 f0 ed                                      blx #0x32900
00057d22  d9 f8 68 11                                      ldr.w r1, [sb, #0x168]
00057d26  30 46                                            mov r0, r6
00057d28  da f7 44 ee                                      blx #0x329b4
00057d2c  48 46                                            mov r0, sb
00057d2e  2c 21                                            movs r1, #0x2c
00057d30  da f7 f6 ec                                      blx #0x32720
00057d34  59 46                                            mov r1, fp
00057d36  05 46                                            mov r5, r0
00057d38  da f7 e2 ed                                      blx #0x32900
00057d3c  1b 48                                            ldr r0, [pc, #0x6c]
00057d3e  00 21                                            movs r1, #0
00057d40  78 44                                            add r0, pc
00057d42  00 68                                            ldr r0, [r0]
00057d44  08 30                                            adds r0, #8
00057d46  28 60                                            str r0, [r5]
00057d48  0c 20                                            movs r0, #0xc
00057d4a  c5 e9 03 06                                      strd r0, r6, [r5, #0xc]
00057d4e  28 46                                            mov r0, r5
00057d50  40 f8 18 1f                                      str r1, [r0, #0x18]!
00057d54  05 f1 14 06                                      add.w r6, r5, #0x14
00057d58  68 61                                            str r0, [r5, #0x14]
00057d5a  28 46                                            mov r0, r5
00057d5c  ee 61                                            str r6, [r5, #0x1c]
00057d5e  40 f8 24 1f                                      str r1, [r0, #0x24]!
00057d62  28 62                                            str r0, [r5, #0x20]
00057d64  05 f1 20 00                                      add.w r0, r5, #0x20
00057d68  a8 62                                            str r0, [r5, #0x28]
00057d6a  00 98                                            ldr r0, [sp]
00057d6c  44 6a                                            ldr r4, [r0, #0x24]
00057d6e  07 e0                                            b #0x57d80
00057d70  20 46                                            mov r0, r4
00057d72  4a 46                                            mov r2, sb
00057d74  50 f8 18 1d                                      ldr r1, [r0, #-0x18]!
00057d78  4b 68                                            ldr r3, [r1, #4]
00057d7a  31 46                                            mov r1, r6
00057d7c  98 47                                            blx r3
00057d7e  24 68                                            ldr r4, [r4]
00057d80  20 68                                            ldr r0, [r4]
00057d82  00 28                                            cmp r0, #0
00057d84  f4 d1                                            bne #0x57d70
00057d86  00 2d                                            cmp r5, #0
00057d88  18 bf                                            it ne
00057d8a  04 35                                            addne r5, #4
00057d8c  c5 f8 00 a0                                      str.w sl, [r5]
00057d90  da f8 04 00                                      ldr.w r0, [sl, #4]
00057d94  68 60                                            str r0, [r5, #4]
00057d96  05 60                                            str r5, [r0]
00057d98  00 20                                            movs r0, #0
00057d9a  ca f8 04 50                                      str.w r5, [sl, #4]
00057d9e  01 b0                                            add sp, #4
00057da0  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
00057da4  f0 bd                                            pop {r4, r5, r6, r7, pc}
00057da6  00 bf                                            nop
00057da8  ae 48                                            ldr r0, [pc, #0x2b8]
00057daa  08 00                                            movs r0, r1
00057dac  18 48                                            ldr r0, [pc, #0x60]
00057dae  08 00                                            movs r0, r1

; FUNCTION 0x0007e160, declared_size=44, range_size=44, mode=thumb
; class-group: ast_case_statement
; alias: _ZNK18ast_case_statement5printEv
; demangled: ast_case_statement::print() const
; decoder-mode: thumb
0007e160  d0 b5                                            push {r4, r6, r7, lr}
0007e162  02 af                                            add r7, sp, #8
0007e164  04 46                                            mov r4, r0
0007e166  20 6a                                            ldr r0, [r4, #0x20]
0007e168  01 68                                            ldr r1, [r0]
0007e16a  09 68                                            ldr r1, [r1]
0007e16c  88 47                                            blx r1
0007e16e  64 6a                                            ldr r4, [r4, #0x24]
0007e170  20 68                                            ldr r0, [r4]
0007e172  00 28                                            cmp r0, #0
0007e174  08 bf                                            it eq
0007e176  d0 bd                                            popeq {r4, r6, r7, pc}
0007e178  20 46                                            mov r0, r4
0007e17a  50 f8 18 1d                                      ldr r1, [r0, #-0x18]!
0007e17e  09 68                                            ldr r1, [r1]
0007e180  88 47                                            blx r1
0007e182  0a 20                                            movs r0, #0xa
0007e184  b5 f7 90 eb                                      blx #0x338a8
0007e188  24 68                                            ldr r4, [r4]
0007e18a  f1 e7                                            b #0x7e170

; FUNCTION 0x0007e18c, declared_size=52, range_size=52, mode=thumb
; class-group: ast_case_statement
; alias: _ZN18ast_case_statementC1EP19ast_case_label_list
; demangled: ast_case_statement::ast_case_statement(ast_case_label_list*)
; alias: _ZN18ast_case_statementC2EP19ast_case_label_list
; demangled: ast_case_statement::ast_case_statement(ast_case_label_list*)
; decoder-mode: thumb
0007e18c  b0 b5                                            push {r4, r5, r7, lr}
0007e18e  02 af                                            add r7, sp, #8
0007e190  05 46                                            mov r5, r0
0007e192  28 1d                                            adds r0, r5, #4
0007e194  0c 46                                            mov r4, r1
0007e196  14 21                                            movs r1, #0x14
0007e198  b4 f7 62 ea                                      blx #0x32660
0007e19c  07 48                                            ldr r0, [pc, #0x1c]
0007e19e  00 21                                            movs r1, #0
0007e1a0  2a 46                                            mov r2, r5
0007e1a2  78 44                                            add r0, pc
0007e1a4  42 f8 28 1f                                      str r1, [r2, #0x28]!
0007e1a8  6a 62                                            str r2, [r5, #0x24]
0007e1aa  05 f1 24 01                                      add.w r1, r5, #0x24
0007e1ae  00 68                                            ldr r0, [r0]
0007e1b0  e9 62                                            str r1, [r5, #0x2c]
0007e1b2  08 30                                            adds r0, #8
0007e1b4  2c 62                                            str r4, [r5, #0x20]
0007e1b6  28 60                                            str r0, [r5]
0007e1b8  28 46                                            mov r0, r5
0007e1ba  b0 bd                                            pop {r4, r5, r7, pc}
0007e1bc  9a e7                                            b #0x7e0f4
0007e1be  05 00                                            movs r5, r0
