; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00081918, declared_size=16, range_size=16, mode=thumb
; class-group: ir_texture
; alias: _ZN10ir_texture13opcode_stringEv
; demangled: ir_texture::opcode_string()
; decoder-mode: thumb
00081918  02 49                                            ldr r1, [pc, #8]
0008191a  80 69                                            ldr r0, [r0, #0x18]
0008191c  79 44                                            add r1, pc
0008191e  51 f8 20 00                                      ldr.w r0, [r1, r0, lsl #2]
00081922  70 47                                            bx lr
00081924  c8 60                                            str r0, [r1, #0xc]
00081926  05 00                                            movs r5, r0

; FUNCTION 0x00081928, declared_size=52, range_size=52, mode=thumb
; class-group: ir_texture
; alias: _ZN10ir_texture10get_opcodeEPKc
; demangled: ir_texture::get_opcode(char const*)
; decoder-mode: thumb
00081928  f0 b5                                            push {r4, r5, r6, r7, lr}
0008192a  03 af                                            add r7, sp, #0xc
0008192c  4d f8 04 bd                                      str fp, [sp, #-0x4]!
00081930  09 4e                                            ldr r6, [pc, #0x24]
00081932  05 46                                            mov r5, r0
00081934  00 24                                            movs r4, #0
00081936  7e 44                                            add r6, pc
00081938  56 f8 24 10                                      ldr.w r1, [r6, r4, lsl #2]
0008193c  28 46                                            mov r0, r5
0008193e  b0 f7 00 eb                                      blx #0x31f40
00081942  28 b1                                            cbz r0, #0x81950
00081944  60 1c                                            adds r0, r4, #1
00081946  09 2c                                            cmp r4, #9
00081948  04 46                                            mov r4, r0
0008194a  f5 db                                            blt #0x81938
0008194c  4f f0 ff 34                                      mov.w r4, #-1
00081950  20 46                                            mov r0, r4
00081952  5d f8 04 bb                                      ldr fp, [sp], #4
00081956  f0 bd                                            pop {r4, r5, r6, r7, pc}
00081958  ae 60                                            str r6, [r5, #8]
0008195a  05 00                                            movs r5, r0

; FUNCTION 0x0008195c, declared_size=6, range_size=6, mode=thumb
; class-group: ir_texture
; alias: _ZN10ir_texture11set_samplerEP14ir_dereferencePK9glsl_type
; demangled: ir_texture::set_sampler(ir_dereference*, glsl_type const*)
; decoder-mode: thumb
0008195c  02 61                                            str r2, [r0, #0x10]
0008195e  c1 61                                            str r1, [r0, #0x1c]
00081960  70 47                                            bx lr

; FUNCTION 0x000830a4, declared_size=204, range_size=204, mode=thumb
; class-group: ir_texture
; alias: _ZNK10ir_texture5cloneEPvP10hash_table
; demangled: ir_texture::clone(void*, hash_table*) const
; decoder-mode: thumb
000830a4  f0 b5                                            push {r4, r5, r6, r7, lr}
000830a6  03 af                                            add r7, sp, #0xc
000830a8  2d e9 00 0b                                      push.w {r8, sb, fp}
000830ac  89 46                                            mov sb, r1
000830ae  05 46                                            mov r5, r0
000830b0  48 46                                            mov r0, sb
000830b2  30 21                                            movs r1, #0x30
000830b4  90 46                                            mov r8, r2
000830b6  af f7 34 eb                                      blx #0x32720
000830ba  04 46                                            mov r4, r0
000830bc  2a 48                                            ldr r0, [pc, #0xa8]
000830be  78 44                                            add r0, pc
000830c0  01 68                                            ldr r1, [r0]
000830c2  20 46                                            mov r0, r4
000830c4  af f7 1c ec                                      blx #0x32900
000830c8  20 46                                            mov r0, r4
000830ca  06 21                                            movs r1, #6
000830cc  02 22                                            movs r2, #2
000830ce  ae 69                                            ldr r6, [r5, #0x18]
000830d0  b0 f7 72 e8                                      blx #0x331b8
000830d4  25 48                                            ldr r0, [pc, #0x94]
000830d6  14 21                                            movs r1, #0x14
000830d8  a6 61                                            str r6, [r4, #0x18]
000830da  78 44                                            add r0, pc
000830dc  00 68                                            ldr r0, [r0]
000830de  08 30                                            adds r0, #8
000830e0  20 60                                            str r0, [r4]
000830e2  04 f1 1c 00                                      add.w r0, r4, #0x1c
000830e6  af f7 bc ea                                      blx #0x32660
000830ea  28 69                                            ldr r0, [r5, #0x10]
000830ec  42 46                                            mov r2, r8
000830ee  20 61                                            str r0, [r4, #0x10]
000830f0  e8 69                                            ldr r0, [r5, #0x1c]
000830f2  01 68                                            ldr r1, [r0]
000830f4  0b 69                                            ldr r3, [r1, #0x10]
000830f6  49 46                                            mov r1, sb
000830f8  98 47                                            blx r3
000830fa  e0 61                                            str r0, [r4, #0x1c]
000830fc  28 6a                                            ldr r0, [r5, #0x20]
000830fe  28 b1                                            cbz r0, #0x8310c
00083100  01 68                                            ldr r1, [r0]
00083102  42 46                                            mov r2, r8
00083104  0b 69                                            ldr r3, [r1, #0x10]
00083106  49 46                                            mov r1, sb
00083108  98 47                                            blx r3
0008310a  20 62                                            str r0, [r4, #0x20]
0008310c  68 6a                                            ldr r0, [r5, #0x24]
0008310e  28 b1                                            cbz r0, #0x8311c
00083110  01 68                                            ldr r1, [r0]
00083112  42 46                                            mov r2, r8
00083114  0b 69                                            ldr r3, [r1, #0x10]
00083116  49 46                                            mov r1, sb
00083118  98 47                                            blx r3
0008311a  60 62                                            str r0, [r4, #0x24]
0008311c  a8 69                                            ldr r0, [r5, #0x18]
0008311e  01 38                                            subs r0, #1
00083120  07 28                                            cmp r0, #7
00083122  0d d8                                            bhi #0x83140
00083124  df e8 00 f0                                      tbb [pc, r0]
00083128  04 04                                            lsls r4, r0, #0x10
0008312a  10 04                                            lsls r0, r2, #0x10
0008312c  04 04                                            lsls r4, r0, #0x10
0008312e  0c 04                                            lsls r4, r1, #0x10
00083130  a8 6a                                            ldr r0, [r5, #0x28]
00083132  42 46                                            mov r2, r8
00083134  01 68                                            ldr r1, [r0]
00083136  0b 69                                            ldr r3, [r1, #0x10]
00083138  49 46                                            mov r1, sb
0008313a  98 47                                            blx r3
0008313c  28 21                                            movs r1, #0x28
0008313e  60 50                                            str r0, [r4, r1]
00083140  20 46                                            mov r0, r4
00083142  bd e8 00 0b                                      pop.w {r8, sb, fp}
00083146  f0 bd                                            pop {r4, r5, r6, r7, pc}
00083148  a8 6a                                            ldr r0, [r5, #0x28]
0008314a  42 46                                            mov r2, r8
0008314c  01 68                                            ldr r1, [r0]
0008314e  0b 69                                            ldr r3, [r1, #0x10]
00083150  49 46                                            mov r1, sb
00083152  98 47                                            blx r3
00083154  a0 62                                            str r0, [r4, #0x28]
00083156  42 46                                            mov r2, r8
00083158  e8 6a                                            ldr r0, [r5, #0x2c]
0008315a  01 68                                            ldr r1, [r0]
0008315c  0b 69                                            ldr r3, [r1, #0x10]
0008315e  49 46                                            mov r1, sb
00083160  98 47                                            blx r3
00083162  2c 21                                            movs r1, #0x2c
00083164  eb e7                                            b #0x8313e
00083166  00 bf                                            nop
00083168  7a 94                                            str r4, [sp, #0x1e8]
0008316a  05 00                                            movs r5, r0
0008316c  ae 95                                            str r5, [sp, #0x2b8]
0008316e  05 00                                            movs r5, r0

; FUNCTION 0x0008368c, declared_size=22, range_size=22, mode=thumb
; class-group: ir_texture
; alias: _ZN10ir_textureD0Ev
; demangled: ir_texture::~ir_texture()
; decoder-mode: thumb
0008368c  d0 b5                                            push {r4, r6, r7, lr}
0008368e  02 af                                            add r7, sp, #8
00083690  00 21                                            movs r1, #0
00083692  04 46                                            mov r4, r0
00083694  af f7 34 e9                                      blx #0x32900
00083698  20 46                                            mov r0, r4
0008369a  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0008369e  2d f0 e3 b9                                      b.w #0xb0a68

; FUNCTION 0x000836a2, declared_size=12, range_size=12, mode=thumb
; class-group: ir_texture
; alias: _ZN10ir_texture6acceptEP10ir_visitor
; demangled: ir_texture::accept(ir_visitor*)
; decoder-mode: thumb
000836a2  02 46                                            mov r2, r0
000836a4  08 68                                            ldr r0, [r1]
000836a6  c3 69                                            ldr r3, [r0, #0x1c]
000836a8  08 46                                            mov r0, r1
000836aa  11 46                                            mov r1, r2
000836ac  18 47                                            bx r3

; FUNCTION 0x00085c44, declared_size=4, range_size=4, mode=thumb
; class-group: ir_texture
; alias: _ZN10ir_texture25constant_expression_valueEP10hash_table
; demangled: ir_texture::constant_expression_value(hash_table*)
; decoder-mode: thumb
00085c44  00 20                                            movs r0, #0
00085c46  70 47                                            bx lr

; FUNCTION 0x000863ec, declared_size=190, range_size=190, mode=thumb
; class-group: ir_texture
; alias: _ZN10ir_texture6equalsEP14ir_instruction12ir_node_type
; demangled: ir_texture::equals(ir_instruction*, ir_node_type)
; decoder-mode: thumb
000863ec  f0 b5                                            push {r4, r5, r6, r7, lr}
000863ee  03 af                                            add r7, sp, #0xc
000863f0  4d f8 04 bd                                      str fp, [sp, #-0x4]!
000863f4  0d 46                                            mov r5, r1
000863f6  06 46                                            mov r6, r0
000863f8  14 46                                            mov r4, r2
000863fa  00 20                                            movs r0, #0
000863fc  00 2d                                            cmp r5, #0
000863fe  51 d0                                            beq #0x864a4
00086400  e9 68                                            ldr r1, [r5, #0xc]
00086402  06 29                                            cmp r1, #6
00086404  4e d1                                            bne #0x864a4
00086406  28 69                                            ldr r0, [r5, #0x10]
00086408  31 69                                            ldr r1, [r6, #0x10]
0008640a  81 42                                            cmp r1, r0
0008640c  49 d1                                            bne #0x864a2
0008640e  a8 69                                            ldr r0, [r5, #0x18]
00086410  b1 69                                            ldr r1, [r6, #0x18]
00086412  81 42                                            cmp r1, r0
00086414  45 d1                                            bne #0x864a2
00086416  30 6a                                            ldr r0, [r6, #0x20]
00086418  29 6a                                            ldr r1, [r5, #0x20]
0008641a  30 b1                                            cbz r0, #0x8642a
0008641c  29 b1                                            cbz r1, #0x8642a
0008641e  02 68                                            ldr r2, [r0]
00086420  53 69                                            ldr r3, [r2, #0x14]
00086422  22 46                                            mov r2, r4
00086424  98 47                                            blx r3
00086426  10 b9                                            cbnz r0, #0x8642e
00086428  3b e0                                            b #0x864a2
0008642a  08 43                                            orrs r0, r1
0008642c  39 d1                                            bne #0x864a2
0008642e  70 6a                                            ldr r0, [r6, #0x24]
00086430  69 6a                                            ldr r1, [r5, #0x24]
00086432  30 b1                                            cbz r0, #0x86442
00086434  29 b1                                            cbz r1, #0x86442
00086436  02 68                                            ldr r2, [r0]
00086438  53 69                                            ldr r3, [r2, #0x14]
0008643a  22 46                                            mov r2, r4
0008643c  98 47                                            blx r3
0008643e  10 b9                                            cbnz r0, #0x86446
00086440  2f e0                                            b #0x864a2
00086442  08 43                                            orrs r0, r1
00086444  2d d1                                            bne #0x864a2
00086446  f0 69                                            ldr r0, [r6, #0x1c]
00086448  e9 69                                            ldr r1, [r5, #0x1c]
0008644a  02 68                                            ldr r2, [r0]
0008644c  53 69                                            ldr r3, [r2, #0x14]
0008644e  22 46                                            mov r2, r4
00086450  98 47                                            blx r3
00086452  01 28                                            cmp r0, #1
00086454  25 d1                                            bne #0x864a2
00086456  b0 69                                            ldr r0, [r6, #0x18]
00086458  01 38                                            subs r0, #1
0008645a  07 28                                            cmp r0, #7
0008645c  0c d8                                            bhi #0x86478
0008645e  df e8 00 f0                                      tbb [pc, r0]
00086462  04 04                                            lsls r4, r0, #0x10
00086464  0d 04                                            lsls r5, r1, #0x10
00086466  04 04                                            lsls r4, r0, #0x10
00086468  0b 18                                            adds r3, r1, r0
0008646a  b0 6a                                            ldr r0, [r6, #0x28]
0008646c  a9 6a                                            ldr r1, [r5, #0x28]
0008646e  02 68                                            ldr r2, [r0]
00086470  53 69                                            ldr r3, [r2, #0x14]
00086472  22 46                                            mov r2, r4
00086474  98 47                                            blx r3
00086476  a0 b1                                            cbz r0, #0x864a2
00086478  01 20                                            movs r0, #1
0008647a  13 e0                                            b #0x864a4
0008647c  b0 6a                                            ldr r0, [r6, #0x28]
0008647e  a9 6a                                            ldr r1, [r5, #0x28]
00086480  02 68                                            ldr r2, [r0]
00086482  53 69                                            ldr r3, [r2, #0x14]
00086484  22 46                                            mov r2, r4
00086486  98 47                                            blx r3
00086488  01 28                                            cmp r0, #1
0008648a  0a d1                                            bne #0x864a2
0008648c  f0 6a                                            ldr r0, [r6, #0x2c]
0008648e  e9 6a                                            ldr r1, [r5, #0x2c]
00086490  ed e7                                            b #0x8646e
00086492  b0 6a                                            ldr r0, [r6, #0x28]
00086494  a9 6a                                            ldr r1, [r5, #0x28]
00086496  02 68                                            ldr r2, [r0]
00086498  53 69                                            ldr r3, [r2, #0x14]
0008649a  22 46                                            mov r2, r4
0008649c  98 47                                            blx r3
0008649e  01 28                                            cmp r0, #1
000864a0  ea d0                                            beq #0x86478
000864a2  00 20                                            movs r0, #0
000864a4  5d f8 04 bb                                      ldr fp, [sp], #4
000864a8  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0008756c, declared_size=138, range_size=138, mode=thumb
; class-group: ir_texture
; alias: _ZN10ir_texture6acceptEP23ir_hierarchical_visitor
; demangled: ir_texture::accept(ir_hierarchical_visitor*)
; decoder-mode: thumb
0008756c  b0 b5                                            push {r4, r5, r7, lr}
0008756e  02 af                                            add r7, sp, #8
00087570  0d 46                                            mov r5, r1
00087572  04 46                                            mov r4, r0
00087574  28 68                                            ldr r0, [r5]
00087576  21 46                                            mov r1, r4
00087578  c2 6b                                            ldr r2, [r0, #0x3c]
0008757a  28 46                                            mov r0, r5
0008757c  90 47                                            blx r2
0008757e  28 b9                                            cbnz r0, #0x8758c
00087580  e0 69                                            ldr r0, [r4, #0x1c]
00087582  01 68                                            ldr r1, [r0]
00087584  ca 68                                            ldr r2, [r1, #0xc]
00087586  29 46                                            mov r1, r5
00087588  90 47                                            blx r2
0008758a  18 b1                                            cbz r0, #0x87594
0008758c  01 28                                            cmp r0, #1
0008758e  08 bf                                            it eq
00087590  00 20                                            moveq r0, #0
00087592  b0 bd                                            pop {r4, r5, r7, pc}
00087594  20 6a                                            ldr r0, [r4, #0x20]
00087596  28 b1                                            cbz r0, #0x875a4
00087598  01 68                                            ldr r1, [r0]
0008759a  ca 68                                            ldr r2, [r1, #0xc]
0008759c  29 46                                            mov r1, r5
0008759e  90 47                                            blx r2
000875a0  00 28                                            cmp r0, #0
000875a2  f3 d1                                            bne #0x8758c
000875a4  60 6a                                            ldr r0, [r4, #0x24]
000875a6  28 b1                                            cbz r0, #0x875b4
000875a8  01 68                                            ldr r1, [r0]
000875aa  ca 68                                            ldr r2, [r1, #0xc]
000875ac  29 46                                            mov r1, r5
000875ae  90 47                                            blx r2
000875b0  00 28                                            cmp r0, #0
000875b2  eb d1                                            bne #0x8758c
000875b4  a0 69                                            ldr r0, [r4, #0x18]
000875b6  01 38                                            subs r0, #1
000875b8  07 28                                            cmp r0, #7
000875ba  0c d8                                            bhi #0x875d6
000875bc  df e8 00 f0                                      tbb [pc, r0]
000875c0  04 04                                            lsls r4, r0, #0x10
000875c2  12 04                                            lsls r2, r2, #0x10
000875c4  04 04                                            lsls r4, r0, #0x10
000875c6  0b 04                                            lsls r3, r1, #0x10
000875c8  a0 6a                                            ldr r0, [r4, #0x28]
000875ca  01 68                                            ldr r1, [r0]
000875cc  ca 68                                            ldr r2, [r1, #0xc]
000875ce  29 46                                            mov r1, r5
000875d0  90 47                                            blx r2
000875d2  00 28                                            cmp r0, #0
000875d4  da d1                                            bne #0x8758c
000875d6  28 68                                            ldr r0, [r5]
000875d8  21 46                                            mov r1, r4
000875da  02 6c                                            ldr r2, [r0, #0x40]
000875dc  28 46                                            mov r0, r5
000875de  bd e8 b0 40                                      pop.w {r4, r5, r7, lr}
000875e2  10 47                                            bx r2
000875e4  a0 6a                                            ldr r0, [r4, #0x28]
000875e6  01 68                                            ldr r1, [r0]
000875e8  ca 68                                            ldr r2, [r1, #0xc]
000875ea  29 46                                            mov r1, r5
000875ec  90 47                                            blx r2
000875ee  00 28                                            cmp r0, #0
000875f0  cc d1                                            bne #0x8758c
000875f2  e0 6a                                            ldr r0, [r4, #0x2c]
000875f4  e9 e7                                            b #0x875ca
