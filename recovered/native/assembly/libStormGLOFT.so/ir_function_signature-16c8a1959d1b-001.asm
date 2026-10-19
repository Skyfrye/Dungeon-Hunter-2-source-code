; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00081df8, declared_size=92, range_size=92, mode=thumb
; class-group: ir_function_signature
; alias: _ZN21ir_function_signatureC1EPK9glsl_type14glsl_precisionPFbPK22_mesa_glsl_parse_stateE
; demangled: ir_function_signature::ir_function_signature(glsl_type const*, glsl_precision, bool (*)(_mesa_glsl_parse_state const*))
; alias: _ZN21ir_function_signatureC2EPK9glsl_type14glsl_precisionPFbPK22_mesa_glsl_parse_stateE
; demangled: ir_function_signature::ir_function_signature(glsl_type const*, glsl_precision, bool (*)(_mesa_glsl_parse_state const*))
; decoder-mode: thumb
00081df8  80 b5                                            push {r7, lr}
00081dfa  6f 46                                            mov r7, sp
00081dfc  4f f0 0b 0e                                      mov.w lr, #0xb
00081e00  df f8 4c c0                                      ldr.w ip, [pc, #0x4c]
00081e04  c0 e9 03 e1                                      strd lr, r1, [r0, #0xc]
00081e08  00 21                                            movs r1, #0
00081e0a  42 61                                            str r2, [r0, #0x14]
00081e0c  02 46                                            mov r2, r0
00081e0e  42 f8 1c 1f                                      str r1, [r2, #0x1c]!
00081e12  fc 44                                            add ip, pc
00081e14  82 61                                            str r2, [r0, #0x18]
00081e16  00 f1 18 02                                      add.w r2, r0, #0x18
00081e1a  02 62                                            str r2, [r0, #0x20]
00081e1c  02 46                                            mov r2, r0
00081e1e  42 f8 2a 1f                                      str r1, [r2, #0x2a]!
00081e22  c0 f8 26 20                                      str.w r2, [r0, #0x26]
00081e26  00 f1 26 02                                      add.w r2, r0, #0x26
00081e2a  80 f8 25 10                                      strb.w r1, [r0, #0x25]
00081e2e  c0 f8 2e 20                                      str.w r2, [r0, #0x2e]
00081e32  90 f8 24 20                                      ldrb.w r2, [r0, #0x24]
00081e36  c0 e9 0d 31                                      strd r3, r1, [r0, #0x34]
00081e3a  c1 63                                            str r1, [r0, #0x3c]
00081e3c  02 f0 fe 02                                      and r2, r2, #0xfe
00081e40  dc f8 00 10                                      ldr.w r1, [ip]
00081e44  80 f8 24 20                                      strb.w r2, [r0, #0x24]
00081e48  08 31                                            adds r1, #8
00081e4a  01 60                                            str r1, [r0]
00081e4c  80 bd                                            pop {r7, pc}
00081e4e  00 bf                                            nop
00081e50  86 ab                                            add r3, sp, #0x218
00081e52  05 00                                            movs r5, r0

; FUNCTION 0x00081e54, declared_size=10, range_size=10, mode=thumb
; class-group: ir_function_signature
; alias: _ZNK21ir_function_signature10is_builtinEv
; demangled: ir_function_signature::is_builtin() const
; decoder-mode: thumb
00081e54  40 6b                                            ldr r0, [r0, #0x34]
00081e56  00 28                                            cmp r0, #0
00081e58  18 bf                                            it ne
00081e5a  01 20                                            movne r0, #1
00081e5c  70 47                                            bx lr

; FUNCTION 0x00081e5e, declared_size=12, range_size=12, mode=thumb
; class-group: ir_function_signature
; alias: _ZNK21ir_function_signature20is_builtin_availableEPK22_mesa_glsl_parse_state
; demangled: ir_function_signature::is_builtin_available(_mesa_glsl_parse_state const*) const
; decoder-mode: thumb
00081e5e  11 b1                                            cbz r1, #0x81e66
00081e60  42 6b                                            ldr r2, [r0, #0x34]
00081e62  08 46                                            mov r0, r1
00081e64  10 47                                            bx r2
00081e66  01 20                                            movs r0, #1
00081e68  70 47                                            bx lr

; FUNCTION 0x00081e6a, declared_size=156, range_size=156, mode=thumb
; class-group: ir_function_signature
; alias: _ZN21ir_function_signature16qualifiers_matchEP9exec_list
; demangled: ir_function_signature::qualifiers_match(exec_list*)
; decoder-mode: thumb
00081e6a  f0 b5                                            push {r4, r5, r6, r7, lr}
00081e6c  03 af                                            add r7, sp, #0xc
00081e6e  2d e9 00 0b                                      push.w {r8, sb, fp}
00081e72  0a 68                                            ldr r2, [r1]
00081e74  4f f0 78 0c                                      mov.w ip, #0x78
00081e78  84 69                                            ldr r4, [r0, #0x18]
00081e7a  46 f2 06 0e                                      movw lr, #0x6006
00081e7e  13 68                                            ldr r3, [r2]
00081e80  00 20                                            movs r0, #0
00081e82  eb b3                                            cbz r3, #0x81f00
00081e84  21 68                                            ldr r1, [r4]
00081e86  d9 b3                                            cbz r1, #0x81f00
00081e88  00 2c                                            cmp r4, #0
00081e8a  20 46                                            mov r0, r4
00081e8c  02 f1 14 04                                      add.w r4, r2, #0x14
00081e90  18 bf                                            it ne
00081e92  04 38                                            subne r0, #4
00081e94  00 2a                                            cmp r2, #0
00081e96  08 bf                                            it eq
00081e98  18 24                                            moveq r4, #0x18
00081e9a  82 69                                            ldr r2, [r0, #0x18]
00081e9c  26 68                                            ldr r6, [r4]
00081e9e  86 ea 02 05                                      eor.w r5, r6, r2
00081ea2  15 f0 01 0f                                      tst.w r5, #1
00081ea6  2a d1                                            bne #0x81efe
00081ea8  90 f8 1c 90                                      ldrb.w sb, [r0, #0x1c]
00081eac  24 79                                            ldrb r4, [r4, #4]
00081eae  c6 f3 43 26                                      ubfx r6, r6, #9, #4
00081eb2  c2 f3 43 22                                      ubfx r2, r2, #9, #4
00081eb6  84 ea 09 08                                      eor.w r8, r4, sb
00081eba  b2 42                                            cmp r2, r6
00081ebc  0f d0                                            beq #0x81ede
00081ebe  08 2a                                            cmp r2, #8
00081ec0  08 bf                                            it eq
00081ec2  05 2e                                            cmpeq r6, #5
00081ec4  0b d0                                            beq #0x81ede
00081ec6  05 2a                                            cmp r2, #5
00081ec8  08 bf                                            it eq
00081eca  08 2e                                            cmpeq r6, #8
00081ecc  17 d1                                            bne #0x81efe
00081ece  05 ea 0e 02                                      and.w r2, r5, lr
00081ed2  08 ea 0c 05                                      and.w r5, r8, ip
00081ed6  ed b2                                            uxtb r5, r5
00081ed8  2a 43                                            orrs r2, r5
00081eda  07 d0                                            beq #0x81eec
00081edc  0f e0                                            b #0x81efe
00081ede  08 ea 0c 02                                      and.w r2, r8, ip
00081ee2  05 ea 0e 05                                      and.w r5, r5, lr
00081ee6  d2 b2                                            uxtb r2, r2
00081ee8  2a 43                                            orrs r2, r5
00081eea  08 d1                                            bne #0x81efe
00081eec  04 f0 80 02                                      and r2, r4, #0x80
00081ef0  c9 f3 c0 14                                      ubfx r4, sb, #7, #1
00081ef4  b4 eb d2 1f                                      cmp.w r4, r2, lsr #7
00081ef8  1a 46                                            mov r2, r3
00081efa  0c 46                                            mov r4, r1
00081efc  bf d0                                            beq #0x81e7e
00081efe  40 69                                            ldr r0, [r0, #0x14]
00081f00  bd e8 00 0b                                      pop.w {r8, sb, fp}
00081f04  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00081f06, declared_size=76, range_size=76, mode=thumb
; class-group: ir_function_signature
; alias: _ZN21ir_function_signature18replace_parametersEP9exec_list
; demangled: ir_function_signature::replace_parameters(exec_list*)
; decoder-mode: thumb
00081f06  0b 46                                            mov r3, r1
00081f08  00 f1 18 0c                                      add.w ip, r0, #0x18
00081f0c  53 f8 04 2b                                      ldr r2, [r3], #4
00081f10  9a 42                                            cmp r2, r3
00081f12  15 d0                                            beq #0x81f40
00081f14  d0 b5                                            push {r4, r6, r7, lr}
00081f16  02 af                                            add r7, sp, #8
00081f18  4f f0 00 0e                                      mov.w lr, #0
00081f1c  40 f8 1c ef                                      str lr, [r0, #0x1c]!
00081f20  40 f8 04 2c                                      str r2, [r0, #-0x4]
00081f24  8c 68                                            ldr r4, [r1, #8]
00081f26  44 60                                            str r4, [r0, #4]
00081f28  c2 f8 04 c0                                      str.w ip, [r2, #4]
00081f2c  8c 46                                            mov ip, r1
00081f2e  42 68                                            ldr r2, [r0, #4]
00081f30  10 60                                            str r0, [r2]
00081f32  18 1d                                            adds r0, r3, #4
00081f34  c1 f8 04 e0                                      str.w lr, [r1, #4]
00081f38  0b 60                                            str r3, [r1]
00081f3a  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
00081f3e  05 e0                                            b #0x81f4c
00081f40  00 21                                            movs r1, #0
00081f42  40 f8 1c 1f                                      str r1, [r0, #0x1c]!
00081f46  40 f8 04 0c                                      str r0, [r0, #-0x4]
00081f4a  04 30                                            adds r0, #4
00081f4c  c0 f8 00 c0                                      str.w ip, [r0]
00081f50  70 47                                            bx lr

; FUNCTION 0x0008327c, declared_size=116, range_size=116, mode=thumb
; class-group: ir_function_signature
; alias: _ZNK21ir_function_signature5cloneEPvP10hash_table
; demangled: ir_function_signature::clone(void*, hash_table*) const
; decoder-mode: thumb
0008327c  f0 b5                                            push {r4, r5, r6, r7, lr}
0008327e  03 af                                            add r7, sp, #0xc
00083280  2d e9 00 0b                                      push.w {r8, sb, fp}
00083284  91 46                                            mov sb, r2
00083286  0d 46                                            mov r5, r1
00083288  06 46                                            mov r6, r0
0008328a  af f7 30 ec                                      blx #0x32aec
0008328e  80 46                                            mov r8, r0
00083290  96 f8 24 10                                      ldrb.w r1, [r6, #0x24]
00083294  98 f8 24 00                                      ldrb.w r0, [r8, #0x24]
00083298  01 f0 01 01                                      and r1, r1, #1
0008329c  00 f0 fe 00                                      and r0, r0, #0xfe
000832a0  08 43                                            orrs r0, r1
000832a2  88 f8 24 00                                      strb.w r0, [r8, #0x24]
000832a6  d6 f8 26 00                                      ldr.w r0, [r6, #0x26]
000832aa  00 28                                            cmp r0, #0
000832ac  18 bf                                            it ne
000832ae  04 38                                            subne r0, #4
000832b0  06 46                                            mov r6, r0
000832b2  56 f8 04 1f                                      ldr r1, [r6, #4]!
000832b6  b9 b1                                            cbz r1, #0x832e8
000832b8  08 f1 2a 04                                      add.w r4, r8, #0x2a
000832bc  01 68                                            ldr r1, [r0]
000832be  4a 46                                            mov r2, sb
000832c0  0b 69                                            ldr r3, [r1, #0x10]
000832c2  29 46                                            mov r1, r5
000832c4  98 47                                            blx r3
000832c6  00 28                                            cmp r0, #0
000832c8  18 bf                                            it ne
000832ca  04 30                                            addne r0, #4
000832cc  04 60                                            str r4, [r0]
000832ce  61 68                                            ldr r1, [r4, #4]
000832d0  41 60                                            str r1, [r0, #4]
000832d2  08 60                                            str r0, [r1]
000832d4  60 60                                            str r0, [r4, #4]
000832d6  30 68                                            ldr r0, [r6]
000832d8  00 28                                            cmp r0, #0
000832da  18 bf                                            it ne
000832dc  04 38                                            subne r0, #4
000832de  06 46                                            mov r6, r0
000832e0  56 f8 04 1f                                      ldr r1, [r6, #4]!
000832e4  00 29                                            cmp r1, #0
000832e6  e9 d1                                            bne #0x832bc
000832e8  40 46                                            mov r0, r8
000832ea  bd e8 00 0b                                      pop.w {r8, sb, fp}
000832ee  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x000832f0, declared_size=148, range_size=148, mode=thumb
; class-group: ir_function_signature
; alias: _ZNK21ir_function_signature15clone_prototypeEPvP10hash_table
; demangled: ir_function_signature::clone_prototype(void*, hash_table*) const
; decoder-mode: thumb
000832f0  f0 b5                                            push {r4, r5, r6, r7, lr}
000832f2  03 af                                            add r7, sp, #0xc
000832f4  2d e9 00 07                                      push.w {r8, sb, sl}
000832f8  8a 46                                            mov sl, r1
000832fa  80 46                                            mov r8, r0
000832fc  50 46                                            mov r0, sl
000832fe  40 21                                            movs r1, #0x40
00083300  91 46                                            mov sb, r2
00083302  af f7 0e ea                                      blx #0x32720
00083306  06 46                                            mov r6, r0
00083308  1d 48                                            ldr r0, [pc, #0x74]
0008330a  78 44                                            add r0, pc
0008330c  01 68                                            ldr r1, [r0]
0008330e  30 46                                            mov r0, r6
00083310  af f7 f6 ea                                      blx #0x32900
00083314  d8 e9 04 12                                      ldrd r1, r2, [r8, #0x10]
00083318  30 46                                            mov r0, r6
0008331a  00 23                                            movs r3, #0
0008331c  af f7 7e ed                                      blx #0x32e1c
00083320  96 f8 24 00                                      ldrb.w r0, [r6, #0x24]
00083324  00 f0 fe 00                                      and r0, r0, #0xfe
00083328  86 f8 24 00                                      strb.w r0, [r6, #0x24]
0008332c  d8 f8 34 00                                      ldr.w r0, [r8, #0x34]
00083330  c6 f8 3c 80                                      str.w r8, [r6, #0x3c]
00083334  70 63                                            str r0, [r6, #0x34]
00083336  d8 f8 18 00                                      ldr.w r0, [r8, #0x18]
0008333a  00 28                                            cmp r0, #0
0008333c  18 bf                                            it ne
0008333e  04 38                                            subne r0, #4
00083340  04 46                                            mov r4, r0
00083342  54 f8 04 1f                                      ldr r1, [r4, #4]!
00083346  b9 b1                                            cbz r1, #0x83378
00083348  06 f1 1c 05                                      add.w r5, r6, #0x1c
0008334c  01 68                                            ldr r1, [r0]
0008334e  4a 46                                            mov r2, sb
00083350  0b 69                                            ldr r3, [r1, #0x10]
00083352  51 46                                            mov r1, sl
00083354  98 47                                            blx r3
00083356  00 28                                            cmp r0, #0
00083358  18 bf                                            it ne
0008335a  04 30                                            addne r0, #4
0008335c  05 60                                            str r5, [r0]
0008335e  31 6a                                            ldr r1, [r6, #0x20]
00083360  41 60                                            str r1, [r0, #4]
00083362  08 60                                            str r0, [r1]
00083364  30 62                                            str r0, [r6, #0x20]
00083366  20 68                                            ldr r0, [r4]
00083368  00 28                                            cmp r0, #0
0008336a  18 bf                                            it ne
0008336c  04 38                                            subne r0, #4
0008336e  04 46                                            mov r4, r0
00083370  54 f8 04 1f                                      ldr r1, [r4, #4]!
00083374  00 29                                            cmp r1, #0
00083376  e9 d1                                            bne #0x8334c
00083378  30 46                                            mov r0, r6
0008337a  bd e8 00 07                                      pop.w {r8, sb, sl}
0008337e  f0 bd                                            pop {r4, r5, r6, r7, pc}
00083380  2e 92                                            str r2, [sp, #0xb8]
00083382  05 00                                            movs r5, r0

; FUNCTION 0x0008383c, declared_size=22, range_size=22, mode=thumb
; class-group: ir_function_signature
; alias: _ZN21ir_function_signatureD0Ev
; demangled: ir_function_signature::~ir_function_signature()
; decoder-mode: thumb
0008383c  d0 b5                                            push {r4, r6, r7, lr}
0008383e  02 af                                            add r7, sp, #8
00083840  00 21                                            movs r1, #0
00083842  04 46                                            mov r4, r0
00083844  af f7 5c e8                                      blx #0x32900
00083848  20 46                                            mov r0, r4
0008384a  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0008384e  2d f0 0b b9                                      b.w #0xb0a68

; FUNCTION 0x00083852, declared_size=12, range_size=12, mode=thumb
; class-group: ir_function_signature
; alias: _ZN21ir_function_signature6acceptEP10ir_visitor
; demangled: ir_function_signature::accept(ir_visitor*)
; decoder-mode: thumb
00083852  02 46                                            mov r2, r0
00083854  08 68                                            ldr r0, [r1]
00083856  03 69                                            ldr r3, [r0, #0x10]
00083858  08 46                                            mov r0, r1
0008385a  11 46                                            mov r1, r2
0008385c  18 47                                            bx r3

; FUNCTION 0x00085f38, declared_size=268, range_size=268, mode=thumb
; class-group: ir_function_signature
; alias: _ZN21ir_function_signature25constant_expression_valueEP9exec_listP10hash_table
; demangled: ir_function_signature::constant_expression_value(exec_list*, hash_table*)
; decoder-mode: thumb
00085f38  f0 b5                                            push {r4, r5, r6, r7, lr}
00085f3a  03 af                                            add r7, sp, #0xc
00085f3c  2d e9 00 07                                      push.w {r8, sb, sl}
00085f40  82 b0                                            sub sp, #8
00085f42  81 46                                            mov sb, r0
00085f44  3a 48                                            ldr r0, [pc, #0xe8]
00085f46  88 46                                            mov r8, r1
00085f48  3a 49                                            ldr r1, [pc, #0xe8]
00085f4a  78 44                                            add r0, pc
00085f4c  16 46                                            mov r6, r2
00085f4e  79 44                                            add r1, pc
00085f50  00 68                                            ldr r0, [r0]
00085f52  09 68                                            ldr r1, [r1]
00085f54  00 68                                            ldr r0, [r0]
00085f56  01 90                                            str r0, [sp, #4]
00085f58  09 68                                            ldr r1, [r1]
00085f5a  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
00085f5e  88 42                                            cmp r0, r1
00085f60  58 d0                                            beq #0x86014
00085f62  48 46                                            mov r0, sb
00085f64  ac f7 22 ee                                      blx #0x32bac
00085f68  01 28                                            cmp r0, #1
00085f6a  53 d1                                            bne #0x86014
00085f6c  32 48                                            ldr r0, [pc, #0xc8]
00085f6e  33 4a                                            ldr r2, [pc, #0xcc]
00085f70  78 44                                            add r0, pc
00085f72  7a 44                                            add r2, pc
00085f74  01 68                                            ldr r1, [r0]
00085f76  08 20                                            movs r0, #8
00085f78  12 68                                            ldr r2, [r2]
00085f7a  ac f7 fc eb                                      blx #0x32774
00085f7e  d9 f8 3c 10                                      ldr.w r1, [sb, #0x3c]
00085f82  82 46                                            mov sl, r0
00085f84  00 29                                            cmp r1, #0
00085f86  08 46                                            mov r0, r1
00085f88  08 bf                                            it eq
00085f8a  48 46                                            moveq r0, sb
00085f8c  84 69                                            ldr r4, [r0, #0x18]
00085f8e  d8 f8 00 00                                      ldr.w r0, [r8]
00085f92  00 28                                            cmp r0, #0
00085f94  18 bf                                            it ne
00085f96  04 38                                            subne r0, #4
00085f98  05 46                                            mov r5, r0
00085f9a  55 f8 04 2f                                      ldr r2, [r5, #4]!
00085f9e  c2 b1                                            cbz r2, #0x85fd2
00085fa0  01 68                                            ldr r1, [r0]
00085fa2  8a 69                                            ldr r2, [r1, #0x18]
00085fa4  31 46                                            mov r1, r6
00085fa6  90 47                                            blx r2
00085fa8  01 46                                            mov r1, r0
00085faa  81 b3                                            cbz r1, #0x8600e
00085fac  22 46                                            mov r2, r4
00085fae  00 2c                                            cmp r4, #0
00085fb0  18 bf                                            it ne
00085fb2  04 3a                                            subne r2, #4
00085fb4  50 46                                            mov r0, sl
00085fb6  ac f7 d2 eb                                      blx #0x3275c
00085fba  28 68                                            ldr r0, [r5]
00085fbc  24 68                                            ldr r4, [r4]
00085fbe  00 28                                            cmp r0, #0
00085fc0  18 bf                                            it ne
00085fc2  04 38                                            subne r0, #4
00085fc4  05 46                                            mov r5, r0
00085fc6  55 f8 04 1f                                      ldr r1, [r5, #4]!
00085fca  00 29                                            cmp r1, #0
00085fcc  e8 d1                                            bne #0x85fa0
00085fce  d9 f8 3c 10                                      ldr.w r1, [sb, #0x3c]
00085fd2  00 20                                            movs r0, #0
00085fd4  00 29                                            cmp r1, #0
00085fd6  00 90                                            str r0, [sp]
00085fd8  08 bf                                            it eq
00085fda  49 46                                            moveq r1, sb
00085fdc  26 31                                            adds r1, #0x26
00085fde  6b 46                                            mov r3, sp
00085fe0  48 46                                            mov r0, sb
00085fe2  52 46                                            mov r2, sl
00085fe4  ae f7 46 e9                                      blx #0x34274
00085fe8  01 28                                            cmp r0, #1
00085fea  0b d1                                            bne #0x86004
00085fec  00 9e                                            ldr r6, [sp]
00085fee  4e b1                                            cbz r6, #0x86004
00085ff0  30 68                                            ldr r0, [r6]
00085ff2  04 69                                            ldr r4, [r0, #0x10]
00085ff4  48 46                                            mov r0, sb
00085ff6  ac f7 98 ed                                      blx #0x32b28
00085ffa  01 46                                            mov r1, r0
00085ffc  30 46                                            mov r0, r6
00085ffe  00 22                                            movs r2, #0
00086000  a0 47                                            blx r4
00086002  00 90                                            str r0, [sp]
00086004  50 46                                            mov r0, sl
00086006  ac f7 c2 eb                                      blx #0x3278c
0008600a  00 98                                            ldr r0, [sp]
0008600c  03 e0                                            b #0x86016
0008600e  50 46                                            mov r0, sl
00086010  ac f7 bc eb                                      blx #0x3278c
00086014  00 20                                            movs r0, #0
00086016  0a 49                                            ldr r1, [pc, #0x28]
00086018  01 9a                                            ldr r2, [sp, #4]
0008601a  79 44                                            add r1, pc
0008601c  09 68                                            ldr r1, [r1]
0008601e  09 68                                            ldr r1, [r1]
00086020  89 1a                                            subs r1, r1, r2
00086022  02 bf                                            ittt eq
00086024  02 b0                                            addeq sp, #8
00086026  bd e8 00 07                                      popeq.w {r8, sb, sl}
0008602a  f0 bd                                            popeq {r4, r5, r6, r7, pc}
0008602c  ac f7 18 e8                                      blx #0x32060
00086030  6a 65                                            str r2, [r5, #0x54]
00086032  05 00                                            movs r5, r0
00086034  16 66                                            str r6, [r2, #0x60]
00086036  05 00                                            movs r5, r0
00086038  fc 65                                            str r4, [r7, #0x5c]
0008603a  05 00                                            movs r5, r0
0008603c  fe 65                                            str r6, [r7, #0x5c]
0008603e  05 00                                            movs r5, r0
00086040  9a 64                                            str r2, [r3, #0x48]
00086042  05 00                                            movs r5, r0

; FUNCTION 0x00086044, declared_size=388, range_size=388, mode=thumb
; class-group: ir_function_signature
; alias: _ZN21ir_function_signature44constant_expression_evaluate_expression_listERK9exec_listP10hash_tablePP11ir_constant
; demangled: ir_function_signature::constant_expression_evaluate_expression_list(exec_list const&, hash_table*, ir_constant**)
; decoder-mode: thumb
00086044  f0 b5                                            push {r4, r5, r6, r7, lr}
00086046  03 af                                            add r7, sp, #0xc
00086048  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
0008604c  83 b0                                            sub sp, #0xc
0008604e  82 46                                            mov sl, r0
00086050  5b 48                                            ldr r0, [pc, #0x16c]
00086052  9b 46                                            mov fp, r3
00086054  15 46                                            mov r5, r2
00086056  78 44                                            add r0, pc
00086058  00 68                                            ldr r0, [r0]
0008605a  00 68                                            ldr r0, [r0]
0008605c  02 90                                            str r0, [sp, #8]
0008605e  0e 68                                            ldr r6, [r1]
00086060  00 2e                                            cmp r6, #0
00086062  18 bf                                            it ne
00086064  04 3e                                            subne r6, #4
00086066  b0 46                                            mov r8, r6
00086068  58 f8 04 0f                                      ldr r0, [r8, #4]!
0008606c  00 28                                            cmp r0, #0
0008606e  00 f0 83 80                                      beq.w #0x86178
00086072  4f f0 00 09                                      mov.w sb, #0
00086076  f0 68                                            ldr r0, [r6, #0xc]
00086078  00 24                                            movs r4, #0
0008607a  07 38                                            subs r0, #7
0008607c  08 28                                            cmp r0, #8
0008607e  00 f2 90 80                                      bhi.w #0x861a2
00086082  df e8 00 f0                                      tbb [pc, r0]
00086086  05 0f                                            lsrs r5, r0, #0x1c
00086088  36 8e                                            ldrh r6, [r6, #0x30]
0008608a  8e 4e                                            ldr r6, [pc, #0x238]
0008608c  8e 8e                                            ldrh r6, [r1, #0x34]
0008608e  83 00                                            lsls r3, r0, #2
00086090  31 69                                            ldr r1, [r6, #0x10]
00086092  50 46                                            mov r0, sl
00086094  ac f7 38 ee                                      blx #0x32d08
00086098  01 46                                            mov r1, r0
0008609a  28 46                                            mov r0, r5
0008609c  32 46                                            mov r2, r6
0008609e  ac f7 5e eb                                      blx #0x3275c
000860a2  5e e0                                            b #0x86162
000860a4  b0 69                                            ldr r0, [r6, #0x18]
000860a6  50 b1                                            cbz r0, #0x860be
000860a8  01 68                                            ldr r1, [r0]
000860aa  8a 69                                            ldr r2, [r1, #0x18]
000860ac  29 46                                            mov r1, r5
000860ae  90 47                                            blx r2
000860b0  00 28                                            cmp r0, #0
000860b2  69 d0                                            beq #0x86188
000860b4  00 21                                            movs r1, #0
000860b6  ac f7 78 ec                                      blx #0x329a8
000860ba  00 28                                            cmp r0, #0
000860bc  51 d0                                            beq #0x86162
000860be  cd e9 00 99                                      strd sb, sb, [sp]
000860c2  01 aa                                            add r2, sp, #4
000860c4  30 69                                            ldr r0, [r6, #0x10]
000860c6  29 46                                            mov r1, r5
000860c8  6b 46                                            mov r3, sp
000860ca  00 f0 7d f8                                      bl #0x861c8
000860ce  01 28                                            cmp r0, #1
000860d0  5a d1                                            bne #0x86188
000860d2  70 69                                            ldr r0, [r6, #0x14]
000860d4  01 68                                            ldr r1, [r0]
000860d6  8a 69                                            ldr r2, [r1, #0x18]
000860d8  29 46                                            mov r1, r5
000860da  90 47                                            blx r2
000860dc  01 46                                            mov r1, r0
000860de  00 29                                            cmp r1, #0
000860e0  52 d0                                            beq #0x86188
000860e2  dd e9 00 20                                      ldrd r2, r0, [sp]
000860e6  33 7f                                            ldrb r3, [r6, #0x1c]
000860e8  03 f0 0f 03                                      and r3, r3, #0xf
000860ec  ae f7 c8 e8                                      blx #0x34280
000860f0  37 e0                                            b #0x86162
000860f2  30 69                                            ldr r0, [r6, #0x10]
000860f4  00 28                                            cmp r0, #0
000860f6  47 d0                                            beq #0x86188
000860f8  01 aa                                            add r2, sp, #4
000860fa  29 46                                            mov r1, r5
000860fc  6b 46                                            mov r3, sp
000860fe  cd e9 00 99                                      strd sb, sb, [sp]
00086102  00 f0 61 f8                                      bl #0x861c8
00086106  01 28                                            cmp r0, #1
00086108  3e d1                                            bne #0x86188
0008610a  30 68                                            ldr r0, [r6]
0008610c  29 46                                            mov r1, r5
0008610e  82 69                                            ldr r2, [r0, #0x18]
00086110  30 46                                            mov r0, r6
00086112  90 47                                            blx r2
00086114  01 46                                            mov r1, r0
00086116  b9 b3                                            cbz r1, #0x86188
00086118  dd e9 00 20                                      ldrd r2, r0, [sp]
0008611c  ae f7 b6 e8                                      blx #0x3428c
00086120  1f e0                                            b #0x86162
00086122  30 69                                            ldr r0, [r6, #0x10]
00086124  01 68                                            ldr r1, [r0]
00086126  8a 69                                            ldr r2, [r1, #0x18]
00086128  29 46                                            mov r1, r5
0008612a  90 47                                            blx r2
0008612c  60 b3                                            cbz r0, #0x86188
0008612e  01 69                                            ldr r1, [r0, #0x10]
00086130  00 24                                            movs r4, #0
00086132  49 68                                            ldr r1, [r1, #4]
00086134  03 29                                            cmp r1, #3
00086136  34 d1                                            bne #0x861a2
00086138  00 21                                            movs r1, #0
0008613a  ac f7 36 ec                                      blx #0x329a8
0008613e  06 f1 20 01                                      add.w r1, r6, #0x20
00086142  00 28                                            cmp r0, #0
00086144  cb f8 00 40                                      str.w r4, [fp]
00086148  18 bf                                            it ne
0008614a  06 f1 14 01                                      addne.w r1, r6, #0x14
0008614e  50 46                                            mov r0, sl
00086150  2a 46                                            mov r2, r5
00086152  5b 46                                            mov r3, fp
00086154  ae f7 8e e8                                      blx #0x34274
00086158  01 28                                            cmp r0, #1
0008615a  22 d1                                            bne #0x861a2
0008615c  db f8 00 00                                      ldr.w r0, [fp]
00086160  80 b9                                            cbnz r0, #0x86184
00086162  d8 f8 00 60                                      ldr.w r6, [r8]
00086166  00 2e                                            cmp r6, #0
00086168  18 bf                                            it ne
0008616a  04 3e                                            subne r6, #4
0008616c  b0 46                                            mov r8, r6
0008616e  58 f8 04 0f                                      ldr r0, [r8, #4]!
00086172  00 28                                            cmp r0, #0
00086174  7f f4 7f af                                      bne.w #0x86076
00086178  bb f1 00 0f                                      cmp.w fp, #0
0008617c  1c bf                                            itt ne
0008617e  00 20                                            movne r0, #0
00086180  cb f8 00 00                                      strne.w r0, [fp]
00086184  01 24                                            movs r4, #1
00086186  0c e0                                            b #0x861a2
00086188  00 24                                            movs r4, #0
0008618a  0a e0                                            b #0x861a2
0008618c  30 69                                            ldr r0, [r6, #0x10]
0008618e  01 68                                            ldr r1, [r0]
00086190  8a 69                                            ldr r2, [r1, #0x18]
00086192  29 46                                            mov r1, r5
00086194  90 47                                            blx r2
00086196  04 46                                            mov r4, r0
00086198  00 2c                                            cmp r4, #0
0008619a  cb f8 00 40                                      str.w r4, [fp]
0008619e  18 bf                                            it ne
000861a0  01 24                                            movne r4, #1
000861a2  08 48                                            ldr r0, [pc, #0x20]
000861a4  02 99                                            ldr r1, [sp, #8]
000861a6  78 44                                            add r0, pc
000861a8  00 68                                            ldr r0, [r0]
000861aa  00 68                                            ldr r0, [r0]
000861ac  40 1a                                            subs r0, r0, r1
000861ae  01 bf                                            itttt eq
000861b0  20 46                                            moveq r0, r4
000861b2  03 b0                                            addeq sp, #0xc
000861b4  bd e8 00 0f                                      popeq.w {r8, sb, sl, fp}
000861b8  f0 bd                                            popeq {r4, r5, r6, r7, pc}
000861ba  ab f7 52 ef                                      blx #0x32060
000861be  00 bf                                            nop
000861c0  5e 64                                            str r6, [r3, #0x44]
000861c2  05 00                                            movs r5, r0
000861c4  0e 63                                            str r6, [r1, #0x30]
000861c6  05 00                                            movs r5, r0

; FUNCTION 0x000873fe, declared_size=158, range_size=158, mode=thumb
; class-group: ir_function_signature
; alias: _ZN21ir_function_signature6acceptEP23ir_hierarchical_visitor
; demangled: ir_function_signature::accept(ir_hierarchical_visitor*)
; decoder-mode: thumb
000873fe  f0 b5                                            push {r4, r5, r6, r7, lr}
00087400  03 af                                            add r7, sp, #0xc
00087402  4d f8 04 8d                                      str r8, [sp, #-0x4]!
00087406  0d 46                                            mov r5, r1
00087408  04 46                                            mov r4, r0
0008740a  28 68                                            ldr r0, [r5]
0008740c  21 46                                            mov r1, r4
0008740e  42 6a                                            ldr r2, [r0, #0x24]
00087410  28 46                                            mov r0, r5
00087412  90 47                                            blx r2
00087414  18 b1                                            cbz r0, #0x8741e
00087416  01 28                                            cmp r0, #1
00087418  08 bf                                            it eq
0008741a  00 20                                            moveq r0, #0
0008741c  30 e0                                            b #0x87480
0008741e  a0 69                                            ldr r0, [r4, #0x18]
00087420  d5 f8 04 80                                      ldr.w r8, [r5, #4]
00087424  00 28                                            cmp r0, #0
00087426  18 bf                                            it ne
00087428  04 38                                            subne r0, #4
0008742a  46 68                                            ldr r6, [r0, #4]
0008742c  00 2e                                            cmp r6, #0
0008742e  18 bf                                            it ne
00087430  04 3e                                            subne r6, #4
00087432  6e b1                                            cbz r6, #0x87450
00087434  68 60                                            str r0, [r5, #4]
00087436  01 68                                            ldr r1, [r0]
00087438  ca 68                                            ldr r2, [r1, #0xc]
0008743a  29 46                                            mov r1, r5
0008743c  90 47                                            blx r2
0008743e  01 46                                            mov r1, r0
00087440  00 29                                            cmp r1, #0
00087442  30 46                                            mov r0, r6
00087444  f1 d0                                            beq #0x8742a
00087446  02 29                                            cmp r1, #2
00087448  19 d0                                            beq #0x8747e
0008744a  d5 f8 04 80                                      ldr.w r8, [r5, #4]
0008744e  01 e0                                            b #0x87454
00087450  c5 f8 04 80                                      str.w r8, [r5, #4]
00087454  d4 f8 26 00                                      ldr.w r0, [r4, #0x26]
00087458  00 28                                            cmp r0, #0
0008745a  18 bf                                            it ne
0008745c  04 38                                            subne r0, #4
0008745e  46 68                                            ldr r6, [r0, #4]
00087460  00 2e                                            cmp r6, #0
00087462  18 bf                                            it ne
00087464  04 3e                                            subne r6, #4
00087466  76 b1                                            cbz r6, #0x87486
00087468  68 60                                            str r0, [r5, #4]
0008746a  01 68                                            ldr r1, [r0]
0008746c  ca 68                                            ldr r2, [r1, #0xc]
0008746e  29 46                                            mov r1, r5
00087470  90 47                                            blx r2
00087472  01 46                                            mov r1, r0
00087474  00 29                                            cmp r1, #0
00087476  30 46                                            mov r0, r6
00087478  f1 d0                                            beq #0x8745e
0008747a  02 29                                            cmp r1, #2
0008747c  05 d1                                            bne #0x8748a
0008747e  02 20                                            movs r0, #2
00087480  5d f8 04 8b                                      ldr r8, [sp], #4
00087484  f0 bd                                            pop {r4, r5, r6, r7, pc}
00087486  c5 f8 04 80                                      str.w r8, [r5, #4]
0008748a  28 68                                            ldr r0, [r5]
0008748c  21 46                                            mov r1, r4
0008748e  82 6a                                            ldr r2, [r0, #0x28]
00087490  28 46                                            mov r0, r5
00087492  5d f8 04 8b                                      ldr r8, [sp], #4
00087496  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0008749a  10 47                                            bx r2
