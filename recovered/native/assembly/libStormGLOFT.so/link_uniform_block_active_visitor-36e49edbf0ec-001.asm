; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0008f93c, declared_size=112, range_size=112, mode=thumb
; class-group: link_uniform_block_active_visitor
; alias: _ZN33link_uniform_block_active_visitor5visitEP11ir_variable
; demangled: link_uniform_block_active_visitor::visit(ir_variable*)
; decoder-mode: thumb
0008f93c  f0 b5                                            push {r4, r5, r6, r7, lr}
0008f93e  03 af                                            add r7, sp, #0xc
0008f940  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0008f944  0d 46                                            mov r5, r1
0008f946  04 46                                            mov r4, r0
0008f948  a8 69                                            ldr r0, [r5, #0x18]
0008f94a  00 f4 f0 50                                      and r0, r0, #0x1e00
0008f94e  90 f4 00 7f                                      teq.w r0, #0x200
0008f952  11 d1                                            bne #0x8f978
0008f954  28 6c                                            ldr r0, [r5, #0x40]
0008f956  78 b1                                            cbz r0, #0x8f978
0008f958  29 69                                            ldr r1, [r5, #0x10]
0008f95a  81 42                                            cmp r1, r0
0008f95c  05 d0                                            beq #0x8f96a
0008f95e  4a 68                                            ldr r2, [r1, #4]
0008f960  09 2a                                            cmp r2, #9
0008f962  04 bf                                            itt eq
0008f964  4a 69                                            ldreq r2, [r1, #0x14]
0008f966  82 42                                            cmpeq r2, r0
0008f968  00 d1                                            bne #0x8f96c
0008f96a  08 46                                            mov r0, r1
0008f96c  00 89                                            ldrh r0, [r0, #8]
0008f96e  00 f4 c0 70                                      and r0, r0, #0x180
0008f972  b0 f5 80 7f                                      cmp.w r0, #0x100
0008f976  04 d1                                            bne #0x8f982
0008f978  00 26                                            movs r6, #0
0008f97a  30 46                                            mov r0, r6
0008f97c  5d f8 04 bb                                      ldr fp, [sp], #4
0008f980  f0 bd                                            pop {r4, r5, r6, r7, pc}
0008f982  d4 e9 08 10                                      ldrd r1, r0, [r4, #0x20]
0008f986  2a 46                                            mov r2, r5
0008f988  a5 f7 82 e8                                      blx #0x34a90
0008f98c  00 26                                            movs r6, #0
0008f98e  00 28                                            cmp r0, #0
0008f990  f3 d1                                            bne #0x8f97a
0008f992  2a 6c                                            ldr r2, [r5, #0x40]
0008f994  04 49                                            ldr r1, [pc, #0x10]
0008f996  e0 69                                            ldr r0, [r4, #0x1c]
0008f998  d2 68                                            ldr r2, [r2, #0xc]
0008f99a  79 44                                            add r1, pc
0008f99c  a4 f7 06 ed                                      blx #0x343ac
0008f9a0  66 76                                            strb r6, [r4, #0x19]
0008f9a2  02 26                                            movs r6, #2
0008f9a4  e9 e7                                            b #0x8f97a
0008f9a6  00 bf                                            nop
0008f9a8  b2 1e                                            subs r2, r6, #2
0008f9aa  03 00                                            movs r3, r0

; FUNCTION 0x0008f9ac, declared_size=268, range_size=268, mode=thumb
; class-group: link_uniform_block_active_visitor
; alias: _ZN33link_uniform_block_active_visitor11visit_enterEP20ir_dereference_array
; demangled: link_uniform_block_active_visitor::visit_enter(ir_dereference_array*)
; decoder-mode: thumb
0008f9ac  f0 b5                                            push {r4, r5, r6, r7, lr}
0008f9ae  03 af                                            add r7, sp, #0xc
0008f9b0  4d f8 04 8d                                      str r8, [sp, #-0x4]!
0008f9b4  0e 46                                            mov r6, r1
0008f9b6  04 46                                            mov r4, r0
0008f9b8  b1 69                                            ldr r1, [r6, #0x18]
0008f9ba  00 20                                            movs r0, #0
0008f9bc  b1 b1                                            cbz r1, #0x8f9ec
0008f9be  ca 68                                            ldr r2, [r1, #0xc]
0008f9c0  02 2a                                            cmp r2, #2
0008f9c2  13 d1                                            bne #0x8f9ec
0008f9c4  8d 69                                            ldr r5, [r1, #0x18]
0008f9c6  85 b1                                            cbz r5, #0x8f9ea
0008f9c8  a8 69                                            ldr r0, [r5, #0x18]
0008f9ca  00 f4 f0 50                                      and r0, r0, #0x1e00
0008f9ce  90 f4 00 7f                                      teq.w r0, #0x200
0008f9d2  0a d1                                            bne #0x8f9ea
0008f9d4  28 6c                                            ldr r0, [r5, #0x40]
0008f9d6  40 b1                                            cbz r0, #0x8f9ea
0008f9d8  29 69                                            ldr r1, [r5, #0x10]
0008f9da  81 42                                            cmp r1, r0
0008f9dc  09 d0                                            beq #0x8f9f2
0008f9de  4a 68                                            ldr r2, [r1, #4]
0008f9e0  09 2a                                            cmp r2, #9
0008f9e2  04 bf                                            itt eq
0008f9e4  49 69                                            ldreq r1, [r1, #0x14]
0008f9e6  81 42                                            cmpeq r1, r0
0008f9e8  03 d0                                            beq #0x8f9f2
0008f9ea  00 20                                            movs r0, #0
0008f9ec  5d f8 04 8b                                      ldr r8, [sp], #4
0008f9f0  f0 bd                                            pop {r4, r5, r6, r7, pc}
0008f9f2  d4 e9 08 10                                      ldrd r1, r0, [r4, #0x20]
0008f9f6  2a 46                                            mov r2, r5
0008f9f8  a5 f7 4a e8                                      blx #0x34a90
0008f9fc  80 46                                            mov r8, r0
0008f9fe  b8 f1 00 0f                                      cmp.w r8, #0
0008fa02  2b d0                                            beq #0x8fa5c
0008fa04  f0 69                                            ldr r0, [r6, #0x1c]
0008fa06  a0 b3                                            cbz r0, #0x8fa72
0008fa08  c1 68                                            ldr r1, [r0, #0xc]
0008fa0a  03 29                                            cmp r1, #3
0008fa0c  31 d1                                            bne #0x8fa72
0008fa0e  00 21                                            movs r1, #0
0008fa10  00 25                                            movs r5, #0
0008fa12  a2 f7 b8 ef                                      blx #0x32984
0008fa16  d8 f8 08 20                                      ldr.w r2, [r8, #8]
0008fa1a  06 46                                            mov r6, r0
0008fa1c  4a b1                                            cbz r2, #0x8fa32
0008fa1e  d8 f8 04 00                                      ldr.w r0, [r8, #4]
0008fa22  00 25                                            movs r5, #0
0008fa24  50 f8 25 10                                      ldr.w r1, [r0, r5, lsl #2]
0008fa28  b1 42                                            cmp r1, r6
0008fa2a  02 d0                                            beq #0x8fa32
0008fa2c  01 35                                            adds r5, #1
0008fa2e  95 42                                            cmp r5, r2
0008fa30  f8 d3                                            blo #0x8fa24
0008fa32  95 42                                            cmp r5, r2
0008fa34  3c d1                                            bne #0x8fab0
0008fa36  d8 f8 04 10                                      ldr.w r1, [r8, #4]
0008fa3a  53 1c                                            adds r3, r2, #1
0008fa3c  60 6a                                            ldr r0, [r4, #0x24]
0008fa3e  04 22                                            movs r2, #4
0008fa40  a3 f7 2e ea                                      blx #0x32ea0
0008fa44  d8 f8 08 10                                      ldr.w r1, [r8, #8]
0008fa48  c8 f8 04 00                                      str.w r0, [r8, #4]
0008fa4c  40 f8 21 60                                      str.w r6, [r0, r1, lsl #2]
0008fa50  d8 f8 08 00                                      ldr.w r0, [r8, #8]
0008fa54  01 30                                            adds r0, #1
0008fa56  c8 f8 08 00                                      str.w r0, [r8, #8]
0008fa5a  29 e0                                            b #0x8fab0
0008fa5c  2a 6c                                            ldr r2, [r5, #0x40]
0008fa5e  15 49                                            ldr r1, [pc, #0x54]
0008fa60  e0 69                                            ldr r0, [r4, #0x1c]
0008fa62  d2 68                                            ldr r2, [r2, #0xc]
0008fa64  79 44                                            add r1, pc
0008fa66  a4 f7 a2 ec                                      blx #0x343ac
0008fa6a  00 20                                            movs r0, #0
0008fa6c  60 76                                            strb r0, [r4, #0x19]
0008fa6e  02 20                                            movs r0, #2
0008fa70  bc e7                                            b #0x8f9ec
0008fa72  d8 f8 00 00                                      ldr.w r0, [r8]
0008fa76  d8 f8 08 10                                      ldr.w r1, [r8, #8]
0008fa7a  03 69                                            ldr r3, [r0, #0x10]
0008fa7c  99 42                                            cmp r1, r3
0008fa7e  17 d2                                            bhs #0x8fab0
0008fa80  c8 f8 08 30                                      str.w r3, [r8, #8]
0008fa84  04 22                                            movs r2, #4
0008fa86  d8 f8 04 10                                      ldr.w r1, [r8, #4]
0008fa8a  60 6a                                            ldr r0, [r4, #0x24]
0008fa8c  a3 f7 08 ea                                      blx #0x32ea0
0008fa90  01 46                                            mov r1, r0
0008fa92  c8 f8 04 10                                      str.w r1, [r8, #4]
0008fa96  d8 f8 08 00                                      ldr.w r0, [r8, #8]
0008fa9a  48 b1                                            cbz r0, #0x8fab0
0008fa9c  00 22                                            movs r2, #0
0008fa9e  01 20                                            movs r0, #1
0008faa0  41 f8 22 20                                      str.w r2, [r1, r2, lsl #2]
0008faa4  01 32                                            adds r2, #1
0008faa6  d8 f8 08 30                                      ldr.w r3, [r8, #8]
0008faaa  9a 42                                            cmp r2, r3
0008faac  f8 d3                                            blo #0x8faa0
0008faae  9d e7                                            b #0x8f9ec
0008fab0  01 20                                            movs r0, #1
0008fab2  9b e7                                            b #0x8f9ec
0008fab4  e8 1d                                            adds r0, r5, #7
0008fab6  03 00                                            movs r3, r0

; FUNCTION 0x0008fab8, declared_size=76, range_size=76, mode=thumb
; class-group: link_uniform_block_active_visitor
; alias: _ZN33link_uniform_block_active_visitor5visitEP23ir_dereference_variable
; demangled: link_uniform_block_active_visitor::visit(ir_dereference_variable*)
; decoder-mode: thumb
0008fab8  f0 b5                                            push {r4, r5, r6, r7, lr}
0008faba  03 af                                            add r7, sp, #0xc
0008fabc  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0008fac0  8e 69                                            ldr r6, [r1, #0x18]
0008fac2  04 46                                            mov r4, r0
0008fac4  b0 69                                            ldr r0, [r6, #0x18]
0008fac6  00 f4 f0 50                                      and r0, r0, #0x1e00
0008faca  90 f4 00 7f                                      teq.w r0, #0x200
0008face  12 d1                                            bne #0x8faf6
0008fad0  30 6c                                            ldr r0, [r6, #0x40]
0008fad2  80 b1                                            cbz r0, #0x8faf6
0008fad4  d4 e9 08 10                                      ldrd r1, r0, [r4, #0x20]
0008fad8  32 46                                            mov r2, r6
0008fada  a4 f7 da ef                                      blx #0x34a90
0008fade  00 25                                            movs r5, #0
0008fae0  50 b9                                            cbnz r0, #0x8faf8
0008fae2  32 6c                                            ldr r2, [r6, #0x40]
0008fae4  06 49                                            ldr r1, [pc, #0x18]
0008fae6  e0 69                                            ldr r0, [r4, #0x1c]
0008fae8  d2 68                                            ldr r2, [r2, #0xc]
0008faea  79 44                                            add r1, pc
0008faec  a4 f7 5e ec                                      blx #0x343ac
0008faf0  65 76                                            strb r5, [r4, #0x19]
0008faf2  02 25                                            movs r5, #2
0008faf4  00 e0                                            b #0x8faf8
0008faf6  00 25                                            movs r5, #0
0008faf8  28 46                                            mov r0, r5
0008fafa  5d f8 04 bb                                      ldr fp, [sp], #4
0008fafe  f0 bd                                            pop {r4, r5, r6, r7, pc}
0008fb00  62 1d                                            adds r2, r4, #5
0008fb02  03 00                                            movs r3, r0
