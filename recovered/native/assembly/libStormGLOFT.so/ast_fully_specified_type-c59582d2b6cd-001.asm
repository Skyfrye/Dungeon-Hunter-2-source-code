; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00054a24, declared_size=6, range_size=6, mode=thumb
; class-group: ast_fully_specified_type
; alias: _ZNK24ast_fully_specified_type9glsl_typeEPPKcP22_mesa_glsl_parse_state
; demangled: ast_fully_specified_type::glsl_type(char const**, _mesa_glsl_parse_state*) const
; decoder-mode: thumb
00054a24  00 6e                                            ldr r0, [r0, #0x60]
00054a26  5c f0 67 b8                                      b.w #0xb0af8

; FUNCTION 0x00059940, declared_size=12, range_size=12, mode=thumb
; class-group: ast_fully_specified_type
; alias: _ZNK24ast_fully_specified_type14has_qualifiersEv
; demangled: ast_fully_specified_type::has_qualifiers() const
; decoder-mode: thumb
00059940  d0 e9 08 01                                      ldrd r0, r1, [r0, #0x20]
00059944  08 43                                            orrs r0, r1
00059946  18 bf                                            it ne
00059948  01 20                                            movne r0, #1
0005994a  70 47                                            bx lr

; FUNCTION 0x0007dd14, declared_size=26, range_size=26, mode=thumb
; class-group: ast_fully_specified_type
; alias: _ZNK24ast_fully_specified_type5printEv
; demangled: ast_fully_specified_type::print() const
; decoder-mode: thumb
0007dd14  d0 b5                                            push {r4, r6, r7, lr}
0007dd16  02 af                                            add r7, sp, #8
0007dd18  04 46                                            mov r4, r0
0007dd1a  04 f1 20 00                                      add.w r0, r4, #0x20
0007dd1e  b5 f7 ca ed                                      blx #0x338b4
0007dd22  20 6e                                            ldr r0, [r4, #0x60]
0007dd24  01 68                                            ldr r1, [r0]
0007dd26  09 68                                            ldr r1, [r1]
0007dd28  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0007dd2c  08 47                                            bx r1
