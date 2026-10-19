; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0004e940, declared_size=88, range_size=88, mode=thumb
; class-group: ast_array_specifier
; alias: _ZNK19ast_array_specifier5printEv
; demangled: ast_array_specifier::print() const
; decoder-mode: thumb
0004e940  f0 b5                                            push {r4, r5, r6, r7, lr}
0004e942  03 af                                            add r7, sp, #0xc
0004e944  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0004e948  04 46                                            mov r4, r0
0004e94a  94 f8 20 00                                      ldrb.w r0, [r4, #0x20]
0004e94e  10 b1                                            cbz r0, #0x4e956
0004e950  0d a0                                            adr r0, #0x34
0004e952  e3 f7 ca ec                                      blx #0x322e8
0004e956  d4 f8 21 60                                      ldr.w r6, [r4, #0x21]
0004e95a  30 68                                            ldr r0, [r6]
0004e95c  80 b1                                            cbz r0, #0x4e980
0004e95e  0c a4                                            adr r4, #0x30
0004e960  0c a5                                            adr r5, #0x30
0004e962  20 46                                            mov r0, r4
0004e964  e3 f7 c0 ec                                      blx #0x322e8
0004e968  30 46                                            mov r0, r6
0004e96a  50 f8 18 1d                                      ldr r1, [r0, #-0x18]!
0004e96e  09 68                                            ldr r1, [r1]
0004e970  88 47                                            blx r1
0004e972  28 46                                            mov r0, r5
0004e974  e3 f7 b8 ec                                      blx #0x322e8
0004e978  36 68                                            ldr r6, [r6]
0004e97a  30 68                                            ldr r0, [r6]
0004e97c  00 28                                            cmp r0, #0
0004e97e  f0 d1                                            bne #0x4e962
0004e980  5d f8 04 bb                                      ldr fp, [sp], #4
0004e984  f0 bd                                            pop {r4, r5, r6, r7, pc}
0004e986  00 bf                                            nop
0004e988  5b 20                                            movs r0, #0x5b
0004e98a  5d 20                                            movs r0, #0x5d
0004e98c  00 00                                            movs r0, r0
0004e98e  00 00                                            movs r0, r0
0004e990  5b 20                                            movs r0, #0x5b
0004e992  00 00                                            movs r0, r0
0004e994  5d 20                                            movs r0, #0x5d
0004e996  00 00                                            movs r0, r0

; FUNCTION 0x0007c788, declared_size=80, range_size=80, mode=thumb
; class-group: ast_array_specifier
; alias: _ZN19ast_array_specifierC2ERK7YYLTYPEP14ast_expression
; demangled: ast_array_specifier::ast_array_specifier(YYLTYPE const&, ast_expression*)
; decoder-mode: thumb
0007c788  b0 b5                                            push {r4, r5, r7, lr}
0007c78a  02 af                                            add r7, sp, #8
0007c78c  14 46                                            mov r4, r2
0007c78e  0d 46                                            mov r5, r1
0007c790  b6 f7 9a ec                                      blx #0x330c8
0007c794  0f 49                                            ldr r1, [pc, #0x3c]
0007c796  00 22                                            movs r2, #0
0007c798  80 f8 20 20                                      strb.w r2, [r0, #0x20]
0007c79c  79 44                                            add r1, pc
0007c79e  09 68                                            ldr r1, [r1]
0007c7a0  08 31                                            adds r1, #8
0007c7a2  01 60                                            str r1, [r0]
0007c7a4  01 46                                            mov r1, r0
0007c7a6  41 f8 25 2f                                      str r2, [r1, #0x25]!
0007c7aa  2a 69                                            ldr r2, [r5, #0x10]
0007c7ac  42 60                                            str r2, [r0, #4]
0007c7ae  2a 68                                            ldr r2, [r5]
0007c7b0  82 60                                            str r2, [r0, #8]
0007c7b2  6a 68                                            ldr r2, [r5, #4]
0007c7b4  c2 60                                            str r2, [r0, #0xc]
0007c7b6  aa 68                                            ldr r2, [r5, #8]
0007c7b8  02 61                                            str r2, [r0, #0x10]
0007c7ba  ea 68                                            ldr r2, [r5, #0xc]
0007c7bc  42 61                                            str r2, [r0, #0x14]
0007c7be  44 f8 18 1f                                      str r1, [r4, #0x18]!
0007c7c2  00 f1 21 01                                      add.w r1, r0, #0x21
0007c7c6  61 60                                            str r1, [r4, #4]
0007c7c8  c0 f8 29 40                                      str.w r4, [r0, #0x29]
0007c7cc  c0 f8 21 40                                      str.w r4, [r0, #0x21]
0007c7d0  b0 bd                                            pop {r4, r5, r7, pc}
0007c7d2  00 bf                                            nop
0007c7d4  58 01                                            lsls r0, r3, #5
0007c7d6  06 00                                            movs r6, r0
