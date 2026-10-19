; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00057db0, declared_size=46, range_size=46, mode=thumb
; class-group: ast_case_label_list
; alias: _ZN19ast_case_label_list3hirEP9exec_listP22_mesa_glsl_parse_state
; demangled: ast_case_label_list::hir(exec_list*, _mesa_glsl_parse_state*)
; decoder-mode: thumb
00057db0  f0 b5                                            push {r4, r5, r6, r7, lr}
00057db2  03 af                                            add r7, sp, #0xc
00057db4  4d f8 04 bd                                      str fp, [sp, #-0x4]!
00057db8  14 46                                            mov r4, r2
00057dba  0d 46                                            mov r5, r1
00057dbc  06 6a                                            ldr r6, [r0, #0x20]
00057dbe  07 e0                                            b #0x57dd0
00057dc0  30 46                                            mov r0, r6
00057dc2  22 46                                            mov r2, r4
00057dc4  50 f8 18 1d                                      ldr r1, [r0, #-0x18]!
00057dc8  4b 68                                            ldr r3, [r1, #4]
00057dca  29 46                                            mov r1, r5
00057dcc  98 47                                            blx r3
00057dce  36 68                                            ldr r6, [r6]
00057dd0  30 68                                            ldr r0, [r6]
00057dd2  00 28                                            cmp r0, #0
00057dd4  f4 d1                                            bne #0x57dc0
00057dd6  00 20                                            movs r0, #0
00057dd8  5d f8 04 bb                                      ldr fp, [sp], #4
00057ddc  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0007e10c, declared_size=36, range_size=36, mode=thumb
; class-group: ast_case_label_list
; alias: _ZNK19ast_case_label_list5printEv
; demangled: ast_case_label_list::print() const
; decoder-mode: thumb
0007e10c  d0 b5                                            push {r4, r6, r7, lr}
0007e10e  02 af                                            add r7, sp, #8
0007e110  04 6a                                            ldr r4, [r0, #0x20]
0007e112  05 e0                                            b #0x7e120
0007e114  20 46                                            mov r0, r4
0007e116  50 f8 18 1d                                      ldr r1, [r0, #-0x18]!
0007e11a  09 68                                            ldr r1, [r1]
0007e11c  88 47                                            blx r1
0007e11e  24 68                                            ldr r4, [r4]
0007e120  20 68                                            ldr r0, [r4]
0007e122  00 28                                            cmp r0, #0
0007e124  f6 d1                                            bne #0x7e114
0007e126  0a 20                                            movs r0, #0xa
0007e128  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0007e12c  32 f0 4c bd                                      b.w #0xb0bc8

; FUNCTION 0x0007e130, declared_size=48, range_size=48, mode=thumb
; class-group: ast_case_label_list
; alias: _ZN19ast_case_label_listC1Ev
; demangled: ast_case_label_list::ast_case_label_list()
; alias: _ZN19ast_case_label_listC2Ev
; demangled: ast_case_label_list::ast_case_label_list()
; decoder-mode: thumb
0007e130  d0 b5                                            push {r4, r6, r7, lr}
0007e132  02 af                                            add r7, sp, #8
0007e134  04 46                                            mov r4, r0
0007e136  20 1d                                            adds r0, r4, #4
0007e138  14 21                                            movs r1, #0x14
0007e13a  b4 f7 92 ea                                      blx #0x32660
0007e13e  07 48                                            ldr r0, [pc, #0x1c]
0007e140  00 21                                            movs r1, #0
0007e142  22 46                                            mov r2, r4
0007e144  78 44                                            add r0, pc
0007e146  42 f8 24 1f                                      str r1, [r2, #0x24]!
0007e14a  22 62                                            str r2, [r4, #0x20]
0007e14c  04 f1 20 01                                      add.w r1, r4, #0x20
0007e150  00 68                                            ldr r0, [r0]
0007e152  a1 62                                            str r1, [r4, #0x28]
0007e154  08 30                                            adds r0, #8
0007e156  20 60                                            str r0, [r4]
0007e158  20 46                                            mov r0, r4
0007e15a  d0 bd                                            pop {r4, r6, r7, pc}
0007e15c  f4 e7                                            b #0x7e148
0007e15e  05 00                                            movs r5, r0
