; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00093940, declared_size=64, range_size=64, mode=thumb
; class-group: array_sizing_visitor
; alias: _ZN20array_sizing_visitorC2Ev
; demangled: array_sizing_visitor::array_sizing_visitor()
; decoder-mode: thumb
00093940  d0 b5                                            push {r4, r6, r7, lr}
00093942  02 af                                            add r7, sp, #8
00093944  04 46                                            mov r4, r0
00093946  9f f7 6e e9                                      blx #0x32c24
0009394a  0a 48                                            ldr r0, [pc, #0x28]
0009394c  78 44                                            add r0, pc
0009394e  00 68                                            ldr r0, [r0]
00093950  08 30                                            adds r0, #8
00093952  20 60                                            str r0, [r4]
00093954  00 20                                            movs r0, #0
00093956  9f f7 ca eb                                      blx #0x330ec
0009395a  07 49                                            ldr r1, [pc, #0x1c]
0009395c  07 4a                                            ldr r2, [pc, #0x1c]
0009395e  79 44                                            add r1, pc
00093960  e0 61                                            str r0, [r4, #0x1c]
00093962  7a 44                                            add r2, pc
00093964  00 20                                            movs r0, #0
00093966  09 68                                            ldr r1, [r1]
00093968  12 68                                            ldr r2, [r2]
0009396a  9e f7 04 ef                                      blx #0x32774
0009396e  20 62                                            str r0, [r4, #0x20]
00093970  20 46                                            mov r0, r4
00093972  d0 bd                                            pop {r4, r6, r7, pc}
00093974  9c 90                                            str r0, [sp, #0x270]
00093976  04 00                                            movs r4, r0
00093978  0e 8c                                            ldrh r6, [r1, #0x20]
0009397a  04 00                                            movs r4, r0
0009397c  0e 8c                                            ldrh r6, [r1, #0x20]
0009397e  04 00                                            movs r4, r0

; FUNCTION 0x00094d48, declared_size=202, range_size=202, mode=thumb
; class-group: array_sizing_visitor
; alias: _ZN20array_sizing_visitor5visitEP11ir_variable
; demangled: array_sizing_visitor::visit(ir_variable*)
; decoder-mode: thumb
00094d48  f0 b5                                            push {r4, r5, r6, r7, lr}
00094d4a  03 af                                            add r7, sp, #0xc
00094d4c  4d f8 04 8d                                      str r8, [sp, #-0x4]!
00094d50  0c 46                                            mov r4, r1
00094d52  80 46                                            mov r8, r0
00094d54  21 6b                                            ldr r1, [r4, #0x30]
00094d56  04 f1 10 00                                      add.w r0, r4, #0x10
00094d5a  a0 f7 44 e8                                      blx #0x34de4
00094d5e  20 69                                            ldr r0, [r4, #0x10]
00094d60  41 68                                            ldr r1, [r0, #4]
00094d62  09 29                                            cmp r1, #9
00094d64  11 d0                                            beq #0x94d8a
00094d66  08 29                                            cmp r1, #8
00094d68  23 d1                                            bne #0x94db2
00094d6a  01 69                                            ldr r1, [r0, #0x10]
00094d6c  e9 b3                                            cbz r1, #0x94dea
00094d6e  42 69                                            ldr r2, [r0, #0x14]
00094d70  00 23                                            movs r3, #0
00094d72  16 68                                            ldr r6, [r2]
00094d74  75 68                                            ldr r5, [r6, #4]
00094d76  09 2d                                            cmp r5, #9
00094d78  04 bf                                            itt eq
00094d7a  36 69                                            ldreq r6, [r6, #0x10]
00094d7c  00 2e                                            cmpeq r6, #0
00094d7e  38 d0                                            beq #0x94df2
00094d80  01 33                                            adds r3, #1
00094d82  18 32                                            adds r2, #0x18
00094d84  8b 42                                            cmp r3, r1
00094d86  f4 d3                                            blo #0x94d72
00094d88  2f e0                                            b #0x94dea
00094d8a  40 69                                            ldr r0, [r0, #0x14]
00094d8c  41 68                                            ldr r1, [r0, #4]
00094d8e  08 29                                            cmp r1, #8
00094d90  0f d1                                            bne #0x94db2
00094d92  01 69                                            ldr r1, [r0, #0x10]
00094d94  49 b3                                            cbz r1, #0x94dea
00094d96  42 69                                            ldr r2, [r0, #0x14]
00094d98  00 23                                            movs r3, #0
00094d9a  16 68                                            ldr r6, [r2]
00094d9c  75 68                                            ldr r5, [r6, #4]
00094d9e  09 2d                                            cmp r5, #9
00094da0  04 bf                                            itt eq
00094da2  36 69                                            ldreq r6, [r6, #0x10]
00094da4  00 2e                                            cmpeq r6, #0
00094da6  2a d0                                            beq #0x94dfe
00094da8  01 33                                            adds r3, #1
00094daa  18 32                                            adds r2, #0x18
00094dac  8b 42                                            cmp r3, r1
00094dae  f4 d3                                            blo #0x94d9a
00094db0  1b e0                                            b #0x94dea
00094db2  26 6c                                            ldr r6, [r4, #0x40]
00094db4  ce b1                                            cbz r6, #0x94dea
00094db6  d8 f8 20 00                                      ldr.w r0, [r8, #0x20]
00094dba  31 46                                            mov r1, r6
00094dbc  9d f7 98 ec                                      blx #0x326f0
00094dc0  05 46                                            mov r5, r0
00094dc2  65 b9                                            cbnz r5, #0x94dde
00094dc4  32 69                                            ldr r2, [r6, #0x10]
00094dc6  04 21                                            movs r1, #4
00094dc8  d8 f8 1c 00                                      ldr.w r0, [r8, #0x1c]
00094dcc  9d f7 56 ed                                      blx #0x3287c
00094dd0  05 46                                            mov r5, r0
00094dd2  d8 f8 20 00                                      ldr.w r0, [r8, #0x20]
00094dd6  29 46                                            mov r1, r5
00094dd8  32 46                                            mov r2, r6
00094dda  9d f7 c0 ec                                      blx #0x3275c
00094dde  61 69                                            ldr r1, [r4, #0x14]
00094de0  30 46                                            mov r0, r6
00094de2  9d f7 82 ed                                      blx #0x328e8
00094de6  45 f8 20 40                                      str.w r4, [r5, r0, lsl #2]
00094dea  00 20                                            movs r0, #0
00094dec  5d f8 04 8b                                      ldr r8, [sp], #4
00094df0  f0 bd                                            pop {r4, r5, r6, r7, pc}
00094df2  e1 6b                                            ldr r1, [r4, #0x3c]
00094df4  9f f7 fc ef                                      blx #0x34df0
00094df8  20 61                                            str r0, [r4, #0x10]
00094dfa  20 64                                            str r0, [r4, #0x40]
00094dfc  f5 e7                                            b #0x94dea
00094dfe  e1 6b                                            ldr r1, [r4, #0x3c]
00094e00  9f f7 f6 ef                                      blx #0x34df0
00094e04  21 69                                            ldr r1, [r4, #0x10]
00094e06  20 64                                            str r0, [r4, #0x40]
00094e08  09 69                                            ldr r1, [r1, #0x10]
00094e0a  9d f7 ac ee                                      blx #0x32b64
00094e0e  20 61                                            str r0, [r4, #0x10]
00094e10  eb e7                                            b #0x94dea

; FUNCTION 0x00094e12, declared_size=34, range_size=34, mode=thumb
; class-group: array_sizing_visitor
; alias: _ZN20array_sizing_visitor10fixup_typeEPPK9glsl_typej
; demangled: array_sizing_visitor::fixup_type(glsl_type const**, unsigned int)
; decoder-mode: thumb
00094e12  d0 b5                                            push {r4, r6, r7, lr}
00094e14  02 af                                            add r7, sp, #8
00094e16  04 46                                            mov r4, r0
00094e18  20 68                                            ldr r0, [r4]
00094e1a  42 68                                            ldr r2, [r0, #4]
00094e1c  09 2a                                            cmp r2, #9
00094e1e  04 bf                                            itt eq
00094e20  02 69                                            ldreq r2, [r0, #0x10]
00094e22  00 2a                                            cmpeq r2, #0
00094e24  00 d0                                            beq #0x94e28
00094e26  d0 bd                                            pop {r4, r6, r7, pc}
00094e28  40 69                                            ldr r0, [r0, #0x14]
00094e2a  01 31                                            adds r1, #1
00094e2c  9d f7 9a ee                                      blx #0x32b64
00094e30  20 60                                            str r0, [r4]
00094e32  d0 bd                                            pop {r4, r6, r7, pc}

; FUNCTION 0x00094e34, declared_size=116, range_size=116, mode=thumb
; class-group: array_sizing_visitor
; alias: _ZN20array_sizing_visitor24resize_interface_membersEPK9glsl_typePKj
; demangled: array_sizing_visitor::resize_interface_members(glsl_type const*, unsigned int const*)
; decoder-mode: thumb
00094e34  f0 b5                                            push {r4, r5, r6, r7, lr}
00094e36  03 af                                            add r7, sp, #0xc
00094e38  2d e9 00 07                                      push.w {r8, sb, sl}
00094e3c  82 46                                            mov sl, r0
00094e3e  18 20                                            movs r0, #0x18
00094e40  da f8 10 80                                      ldr.w r8, [sl, #0x10]
00094e44  0e 46                                            mov r6, r1
00094e46  a8 fb 00 40                                      umull r4, r0, r8, r0
00094e4a  00 28                                            cmp r0, #0
00094e4c  18 bf                                            it ne
00094e4e  01 20                                            movne r0, #1
00094e50  00 28                                            cmp r0, #0
00094e52  20 46                                            mov r0, r4
00094e54  18 bf                                            it ne
00094e56  4f f0 ff 30                                      movne.w r0, #-1
00094e5a  9d f7 8a e8                                      blx #0x31f70
00094e5e  da f8 14 10                                      ldr.w r1, [sl, #0x14]
00094e62  22 46                                            mov r2, r4
00094e64  81 46                                            mov sb, r0
00094e66  9d f7 ec e9                                      blx #0x32240
00094e6a  b8 f1 00 0f                                      cmp.w r8, #0
00094e6e  09 d0                                            beq #0x94e84
00094e70  4c 46                                            mov r4, sb
00094e72  45 46                                            mov r5, r8
00094e74  56 f8 04 1b                                      ldr r1, [r6], #4
00094e78  20 46                                            mov r0, r4
00094e7a  9f f7 b4 ef                                      blx #0x34de4
00094e7e  18 34                                            adds r4, #0x18
00094e80  01 3d                                            subs r5, #1
00094e82  f7 d1                                            bne #0x94e74
00094e84  ba f8 08 00                                      ldrh.w r0, [sl, #8]
00094e88  41 46                                            mov r1, r8
00094e8a  da f8 0c 30                                      ldr.w r3, [sl, #0xc]
00094e8e  c0 f3 c1 12                                      ubfx r2, r0, #7, #2
00094e92  48 46                                            mov r0, sb
00094e94  9e f7 0a e8                                      blx #0x32eac
00094e98  04 46                                            mov r4, r0
00094e9a  48 46                                            mov r0, sb
00094e9c  9d f7 d4 e8                                      blx #0x32048
00094ea0  20 46                                            mov r0, r4
00094ea2  bd e8 00 07                                      pop.w {r8, sb, sl}
00094ea6  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00094ea8, declared_size=154, range_size=154, mode=thumb
; class-group: array_sizing_visitor
; alias: _ZN20array_sizing_visitor28fixup_unnamed_interface_typeEPKvPvS2_
; demangled: array_sizing_visitor::fixup_unnamed_interface_type(void const*, void*, void*)
; decoder-mode: thumb
00094ea8  f0 b5                                            push {r4, r5, r6, r7, lr}
00094eaa  03 af                                            add r7, sp, #0xc
00094eac  2d e9 00 0b                                      push.w {r8, sb, fp}
00094eb0  80 46                                            mov r8, r0
00094eb2  18 20                                            movs r0, #0x18
00094eb4  d8 f8 10 50                                      ldr.w r5, [r8, #0x10]
00094eb8  0c 46                                            mov r4, r1
00094eba  a5 fb 00 60                                      umull r6, r0, r5, r0
00094ebe  00 28                                            cmp r0, #0
00094ec0  18 bf                                            it ne
00094ec2  01 20                                            movne r0, #1
00094ec4  00 28                                            cmp r0, #0
00094ec6  30 46                                            mov r0, r6
00094ec8  18 bf                                            it ne
00094eca  4f f0 ff 30                                      movne.w r0, #-1
00094ece  9d f7 50 e8                                      blx #0x31f70
00094ed2  d8 f8 14 10                                      ldr.w r1, [r8, #0x14]
00094ed6  32 46                                            mov r2, r6
00094ed8  81 46                                            mov sb, r0
00094eda  9d f7 b2 e9                                      blx #0x32240
00094ede  4d b3                                            cbz r5, #0x94f34
00094ee0  00 20                                            movs r0, #0
00094ee2  49 46                                            mov r1, sb
00094ee4  00 22                                            movs r2, #0
00094ee6  54 f8 22 30                                      ldr.w r3, [r4, r2, lsl #2]
00094eea  2b b1                                            cbz r3, #0x94ef8
00094eec  1b 69                                            ldr r3, [r3, #0x10]
00094eee  0e 68                                            ldr r6, [r1]
00094ef0  9e 42                                            cmp r6, r3
00094ef2  1c bf                                            itt ne
00094ef4  0b 60                                            strne r3, [r1]
00094ef6  01 20                                            movne r0, #1
00094ef8  01 32                                            adds r2, #1
00094efa  18 31                                            adds r1, #0x18
00094efc  95 42                                            cmp r5, r2
00094efe  f2 d1                                            bne #0x94ee6
00094f00  c0 07                                            lsls r0, r0, #0x1f
00094f02  17 d0                                            beq #0x94f34
00094f04  b8 f8 08 00                                      ldrh.w r0, [r8, #8]
00094f08  29 46                                            mov r1, r5
00094f0a  d8 f8 0c 30                                      ldr.w r3, [r8, #0xc]
00094f0e  c0 f3 c1 12                                      ubfx r2, r0, #7, #2
00094f12  48 46                                            mov r0, sb
00094f14  9d f7 ca ef                                      blx #0x32eac
00094f18  06 46                                            mov r6, r0
00094f1a  48 46                                            mov r0, sb
00094f1c  9d f7 94 e8                                      blx #0x32048
00094f20  20 68                                            ldr r0, [r4]
00094f22  00 b1                                            cbz r0, #0x94f26
00094f24  06 64                                            str r6, [r0, #0x40]
00094f26  01 3d                                            subs r5, #1
00094f28  04 f1 04 04                                      add.w r4, r4, #4
00094f2c  f8 d1                                            bne #0x94f20
00094f2e  bd e8 00 0b                                      pop.w {r8, sb, fp}
00094f32  f0 bd                                            pop {r4, r5, r6, r7, pc}
00094f34  48 46                                            mov r0, sb
00094f36  bd e8 00 0b                                      pop.w {r8, sb, fp}
00094f3a  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
00094f3e  1b f0 8b bf                                      b.w #0xb0e58
