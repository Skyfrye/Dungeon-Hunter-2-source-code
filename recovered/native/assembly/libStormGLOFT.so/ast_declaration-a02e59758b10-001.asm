; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0007dd78, declared_size=56, range_size=56, mode=thumb
; class-group: ast_declaration
; alias: _ZNK15ast_declaration5printEv
; demangled: ast_declaration::print() const
; decoder-mode: thumb
0007dd78  d0 b5                                            push {r4, r6, r7, lr}
0007dd7a  02 af                                            add r7, sp, #8
0007dd7c  04 46                                            mov r4, r0
0007dd7e  0a a0                                            adr r0, #0x28
0007dd80  21 6a                                            ldr r1, [r4, #0x20]
0007dd82  b4 f7 b2 ea                                      blx #0x322e8
0007dd86  60 6a                                            ldr r0, [r4, #0x24]
0007dd88  10 b1                                            cbz r0, #0x7dd90
0007dd8a  01 68                                            ldr r1, [r0]
0007dd8c  09 68                                            ldr r1, [r1]
0007dd8e  88 47                                            blx r1
0007dd90  a0 6a                                            ldr r0, [r4, #0x28]
0007dd92  40 b1                                            cbz r0, #0x7dda6
0007dd94  05 a0                                            adr r0, #0x14
0007dd96  b4 f7 a8 ea                                      blx #0x322e8
0007dd9a  a0 6a                                            ldr r0, [r4, #0x28]
0007dd9c  01 68                                            ldr r1, [r0]
0007dd9e  09 68                                            ldr r1, [r1]
0007dda0  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0007dda4  08 47                                            bx r1
0007dda6  d0 bd                                            pop {r4, r6, r7, pc}
0007dda8  25 73                                            strb r5, [r4, #0xc]
0007ddaa  20 00                                            movs r0, r4
0007ddac  3d 20                                            movs r0, #0x3d
0007ddae  00 00                                            movs r0, r0

; FUNCTION 0x0007ddb0, declared_size=56, range_size=56, mode=thumb
; class-group: ast_declaration
; alias: _ZN15ast_declarationC1EPKcP19ast_array_specifierP14ast_expression
; demangled: ast_declaration::ast_declaration(char const*, ast_array_specifier*, ast_expression*)
; alias: _ZN15ast_declarationC2EPKcP19ast_array_specifierP14ast_expression
; demangled: ast_declaration::ast_declaration(char const*, ast_array_specifier*, ast_expression*)
; decoder-mode: thumb
0007ddb0  f0 b5                                            push {r4, r5, r6, r7, lr}
0007ddb2  03 af                                            add r7, sp, #0xc
0007ddb4  4d f8 04 8d                                      str r8, [sp, #-0x4]!
0007ddb8  04 46                                            mov r4, r0
0007ddba  20 1d                                            adds r0, r4, #4
0007ddbc  0e 46                                            mov r6, r1
0007ddbe  14 21                                            movs r1, #0x14
0007ddc0  98 46                                            mov r8, r3
0007ddc2  15 46                                            mov r5, r2
0007ddc4  b4 f7 4c ec                                      blx #0x32660
0007ddc8  06 48                                            ldr r0, [pc, #0x18]
0007ddca  c4 e9 08 65                                      strd r6, r5, [r4, #0x20]
0007ddce  78 44                                            add r0, pc
0007ddd0  c4 f8 28 80                                      str.w r8, [r4, #0x28]
0007ddd4  00 68                                            ldr r0, [r0]
0007ddd6  08 30                                            adds r0, #8
0007ddd8  20 60                                            str r0, [r4]
0007ddda  20 46                                            mov r0, r4
0007dddc  5d f8 04 8b                                      ldr r8, [sp], #4
0007dde0  f0 bd                                            pop {r4, r5, r6, r7, pc}
0007dde2  00 bf                                            nop
0007dde4  4e eb 05 00                                      adc.w r0, lr, r5
