; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000579b8, declared_size=22, range_size=22, mode=thumb
; class-group: ast_switch_body
; alias: _ZN15ast_switch_body3hirEP9exec_listP22_mesa_glsl_parse_state
; demangled: ast_switch_body::hir(exec_list*, _mesa_glsl_parse_state*)
; decoder-mode: thumb
000579b8  00 6a                                            ldr r0, [r0, #0x20]
000579ba  30 b1                                            cbz r0, #0x579ca
000579bc  80 b5                                            push {r7, lr}
000579be  6f 46                                            mov r7, sp
000579c0  03 68                                            ldr r3, [r0]
000579c2  5b 68                                            ldr r3, [r3, #4]
000579c4  98 47                                            blx r3
000579c6  bd e8 80 40                                      pop.w {r7, lr}
000579ca  00 20                                            movs r0, #0
000579cc  70 47                                            bx lr

; FUNCTION 0x0007e058, declared_size=40, range_size=40, mode=thumb
; class-group: ast_switch_body
; alias: _ZNK15ast_switch_body5printEv
; demangled: ast_switch_body::print() const
; decoder-mode: thumb
0007e058  d0 b5                                            push {r4, r6, r7, lr}
0007e05a  02 af                                            add r7, sp, #8
0007e05c  04 46                                            mov r4, r0
0007e05e  06 a0                                            adr r0, #0x18
0007e060  b4 f7 26 ea                                      blx #0x324b0
0007e064  20 6a                                            ldr r0, [r4, #0x20]
0007e066  10 b1                                            cbz r0, #0x7e06e
0007e068  01 68                                            ldr r1, [r0]
0007e06a  09 68                                            ldr r1, [r1]
0007e06c  88 47                                            blx r1
0007e06e  03 a0                                            adr r0, #0xc
0007e070  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0007e074  32 f0 a0 bd                                      b.w #0xb0bb8
0007e078  7b 00                                            lsls r3, r7, #1
0007e07a  00 00                                            movs r0, r0
0007e07c  7d 00                                            lsls r5, r7, #1
0007e07e  00 00                                            movs r0, r0

; FUNCTION 0x0007e080, declared_size=36, range_size=36, mode=thumb
; class-group: ast_switch_body
; alias: _ZN15ast_switch_bodyC1EP23ast_case_statement_list
; demangled: ast_switch_body::ast_switch_body(ast_case_statement_list*)
; alias: _ZN15ast_switch_bodyC2EP23ast_case_statement_list
; demangled: ast_switch_body::ast_switch_body(ast_case_statement_list*)
; decoder-mode: thumb
0007e080  b0 b5                                            push {r4, r5, r7, lr}
0007e082  02 af                                            add r7, sp, #8
0007e084  05 46                                            mov r5, r0
0007e086  28 1d                                            adds r0, r5, #4
0007e088  0c 46                                            mov r4, r1
0007e08a  14 21                                            movs r1, #0x14
0007e08c  b4 f7 e8 ea                                      blx #0x32660
0007e090  03 48                                            ldr r0, [pc, #0xc]
0007e092  2c 62                                            str r4, [r5, #0x20]
0007e094  78 44                                            add r0, pc
0007e096  00 68                                            ldr r0, [r0]
0007e098  08 30                                            adds r0, #8
0007e09a  28 60                                            str r0, [r5]
0007e09c  28 46                                            mov r0, r5
0007e09e  b0 bd                                            pop {r4, r5, r7, pc}
0007e0a0  9c e8 05 00                                      ldm.w ip, {r0, r2}
