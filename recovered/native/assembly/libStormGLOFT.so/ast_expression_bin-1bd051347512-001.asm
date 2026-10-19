; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0004ede8, declared_size=36, range_size=36, mode=thumb
; class-group: ast_expression_bin
; alias: _ZN18ast_expression_binC1EiP14ast_expressionS1_
; demangled: ast_expression_bin::ast_expression_bin(int, ast_expression*, ast_expression*)
; alias: _ZN18ast_expression_binC2EiP14ast_expressionS1_
; demangled: ast_expression_bin::ast_expression_bin(int, ast_expression*, ast_expression*)
; decoder-mode: thumb
0004ede8  80 b5                                            push {r7, lr}
0004edea  6f 46                                            mov r7, sp
0004edec  82 b0                                            sub sp, #8
0004edee  4f f0 00 0c                                      mov.w ip, #0
0004edf2  cd f8 00 c0                                      str.w ip, [sp]
0004edf6  e3 f7 a8 ed                                      blx #0x32948
0004edfa  03 49                                            ldr r1, [pc, #0xc]
0004edfc  79 44                                            add r1, pc
0004edfe  09 68                                            ldr r1, [r1]
0004ee00  08 31                                            adds r1, #8
0004ee02  01 60                                            str r1, [r0]
0004ee04  02 b0                                            add sp, #8
0004ee06  80 bd                                            pop {r7, pc}
0004ee08  44 d7                                            bvc #0x4ee94
0004ee0a  08 00                                            movs r0, r1

; FUNCTION 0x0004ee0c, declared_size=52, range_size=52, mode=thumb
; class-group: ast_expression_bin
; alias: _ZNK18ast_expression_bin5printEv
; demangled: ast_expression_bin::print() const
; decoder-mode: thumb
0004ee0c  d0 b5                                            push {r4, r6, r7, lr}
0004ee0e  02 af                                            add r7, sp, #8
0004ee10  04 46                                            mov r4, r0
0004ee12  60 6a                                            ldr r0, [r4, #0x24]
0004ee14  01 68                                            ldr r1, [r0]
0004ee16  09 68                                            ldr r1, [r1]
0004ee18  88 47                                            blx r1
0004ee1a  07 48                                            ldr r0, [pc, #0x1c]
0004ee1c  21 6a                                            ldr r1, [r4, #0x20]
0004ee1e  78 44                                            add r0, pc
0004ee20  50 f8 21 10                                      ldr.w r1, [r0, r1, lsl #2]
0004ee24  05 a0                                            adr r0, #0x14
0004ee26  e3 f7 60 ea                                      blx #0x322e8
0004ee2a  a0 6a                                            ldr r0, [r4, #0x28]
0004ee2c  01 68                                            ldr r1, [r0]
0004ee2e  09 68                                            ldr r1, [r1]
0004ee30  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0004ee34  08 47                                            bx r1
0004ee36  00 bf                                            nop
0004ee38  12 69                                            ldr r2, [r2, #0x10]
0004ee3a  08 00                                            movs r0, r1
0004ee3c  25 73                                            strb r5, [r4, #0xc]
0004ee3e  20 00                                            movs r0, r4
