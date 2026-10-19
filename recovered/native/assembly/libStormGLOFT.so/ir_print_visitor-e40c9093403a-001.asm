; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0008d260, declared_size=72, range_size=72, mode=thumb
; class-group: ir_print_visitor
; alias: _ZN16ir_print_visitorC1EP7__sFILE
; demangled: ir_print_visitor::ir_print_visitor(__sFILE*)
; alias: _ZN16ir_print_visitorC2EP7__sFILE
; demangled: ir_print_visitor::ir_print_visitor(__sFILE*)
; decoder-mode: thumb
0008d260  d0 b5                                            push {r4, r6, r7, lr}
0008d262  02 af                                            add r7, sp, #8
0008d264  04 46                                            mov r4, r0
0008d266  0d 48                                            ldr r0, [pc, #0x34]
0008d268  0d 4a                                            ldr r2, [pc, #0x34]
0008d26a  0e 4b                                            ldr r3, [pc, #0x38]
0008d26c  78 44                                            add r0, pc
0008d26e  7a 44                                            add r2, pc
0008d270  21 61                                            str r1, [r4, #0x10]
0008d272  7b 44                                            add r3, pc
0008d274  01 68                                            ldr r1, [r0]
0008d276  10 68                                            ldr r0, [r2]
0008d278  00 22                                            movs r2, #0
0008d27a  62 61                                            str r2, [r4, #0x14]
0008d27c  1a 68                                            ldr r2, [r3]
0008d27e  08 30                                            adds r0, #8
0008d280  20 60                                            str r0, [r4]
0008d282  20 20                                            movs r0, #0x20
0008d284  a5 f7 76 ea                                      blx #0x32774
0008d288  60 60                                            str r0, [r4, #4]
0008d28a  a6 f7 16 ec                                      blx #0x33ab8
0008d28e  a0 60                                            str r0, [r4, #8]
0008d290  00 20                                            movs r0, #0
0008d292  a5 f7 2c ef                                      blx #0x330ec
0008d296  e0 60                                            str r0, [r4, #0xc]
0008d298  20 46                                            mov r0, r4
0008d29a  d0 bd                                            pop {r4, r6, r7, pc}
0008d29c  00 f3 04 00                                      ssat r0, #5, r0
0008d2a0  4a f7 04 00                                      sbfx r0, sl, #0, #5
0008d2a4  fe f2                                            .byte 0xfe, 0xf2
0008d2a6  04 00                                            movs r4, r0

; FUNCTION 0x0008d2a8, declared_size=44, range_size=44, mode=thumb
; class-group: ir_print_visitor
; alias: _ZN16ir_print_visitorD1Ev
; demangled: ir_print_visitor::~ir_print_visitor()
; alias: _ZN16ir_print_visitorD2Ev
; demangled: ir_print_visitor::~ir_print_visitor()
; decoder-mode: thumb
0008d2a8  d0 b5                                            push {r4, r6, r7, lr}
0008d2aa  02 af                                            add r7, sp, #8
0008d2ac  04 46                                            mov r4, r0
0008d2ae  08 48                                            ldr r0, [pc, #0x20]
0008d2b0  78 44                                            add r0, pc
0008d2b2  01 68                                            ldr r1, [r0]
0008d2b4  60 68                                            ldr r0, [r4, #4]
0008d2b6  08 31                                            adds r1, #8
0008d2b8  21 60                                            str r1, [r4]
0008d2ba  a5 f7 68 ea                                      blx #0x3278c
0008d2be  a0 68                                            ldr r0, [r4, #8]
0008d2c0  a6 f7 00 ec                                      blx #0x33ac4
0008d2c4  e0 68                                            ldr r0, [r4, #0xc]
0008d2c6  a5 f7 0e ea                                      blx #0x326e4
0008d2ca  20 46                                            mov r0, r4
0008d2cc  d0 bd                                            pop {r4, r6, r7, pc}
0008d2ce  00 bf                                            nop
0008d2d0  08 f7                                            .byte 0x08, 0xf7
0008d2d2  04 00                                            movs r4, r0

; FUNCTION 0x0008d2d4, declared_size=16, range_size=16, mode=thumb
; class-group: ir_print_visitor
; alias: _ZN16ir_print_visitorD0Ev
; demangled: ir_print_visitor::~ir_print_visitor()
; decoder-mode: thumb
0008d2d4  80 b5                                            push {r7, lr}
0008d2d6  6f 46                                            mov r7, sp
0008d2d8  a7 f7 54 ea                                      blx #0x34784
0008d2dc  bd e8 80 40                                      pop.w {r7, lr}
0008d2e0  23 f0 3a bd                                      b.w #0xb0d58

; FUNCTION 0x0008d2e4, declared_size=52, range_size=52, mode=thumb
; class-group: ir_print_visitor
; alias: _ZN16ir_print_visitor6indentEv
; demangled: ir_print_visitor::indent()
; decoder-mode: thumb
0008d2e4  f0 b5                                            push {r4, r5, r6, r7, lr}
0008d2e6  03 af                                            add r7, sp, #0xc
0008d2e8  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0008d2ec  04 46                                            mov r4, r0
0008d2ee  60 69                                            ldr r0, [r4, #0x14]
0008d2f0  01 28                                            cmp r0, #1
0008d2f2  0b db                                            blt #0x8d30c
0008d2f4  07 a5                                            adr r5, #0x1c
0008d2f6  00 26                                            movs r6, #0
0008d2f8  23 69                                            ldr r3, [r4, #0x10]
0008d2fa  28 46                                            mov r0, r5
0008d2fc  02 21                                            movs r1, #2
0008d2fe  01 22                                            movs r2, #1
0008d300  a5 f7 de e9                                      blx #0x326c0
0008d304  60 69                                            ldr r0, [r4, #0x14]
0008d306  01 36                                            adds r6, #1
0008d308  86 42                                            cmp r6, r0
0008d30a  f5 db                                            blt #0x8d2f8
0008d30c  5d f8 04 bb                                      ldr fp, [sp], #4
0008d310  f0 bd                                            pop {r4, r5, r6, r7, pc}
0008d312  00 bf                                            nop
0008d314  20 20                                            movs r0, #0x20
0008d316  00 00                                            movs r0, r0

; FUNCTION 0x0008d318, declared_size=160, range_size=160, mode=thumb
; class-group: ir_print_visitor
; alias: _ZN16ir_print_visitor11unique_nameEP11ir_variable
; demangled: ir_print_visitor::unique_name(ir_variable*)
; decoder-mode: thumb
0008d318  f0 b5                                            push {r4, r5, r6, r7, lr}
0008d31a  03 af                                            add r7, sp, #0xc
0008d31c  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0008d320  0c 46                                            mov r4, r1
0008d322  05 46                                            mov r5, r0
0008d324  60 69                                            ldr r0, [r4, #0x14]
0008d326  c0 b1                                            cbz r0, #0x8d35a
0008d328  68 68                                            ldr r0, [r5, #4]
0008d32a  21 46                                            mov r1, r4
0008d32c  a5 f7 e0 e9                                      blx #0x326f0
0008d330  06 46                                            mov r6, r0
0008d332  66 bb                                            cbnz r6, #0x8d38e
0008d334  62 69                                            ldr r2, [r4, #0x14]
0008d336  4f f0 ff 31                                      mov.w r1, #-1
0008d33a  a8 68                                            ldr r0, [r5, #8]
0008d33c  a6 f7 ce eb                                      blx #0x33adc
0008d340  c0 b1                                            cbz r0, #0x8d374
0008d342  15 49                                            ldr r1, [pc, #0x54]
0008d344  62 69                                            ldr r2, [r4, #0x14]
0008d346  79 44                                            add r1, pc
0008d348  e8 68                                            ldr r0, [r5, #0xc]
0008d34a  0b 68                                            ldr r3, [r1]
0008d34c  01 33                                            adds r3, #1
0008d34e  0b 60                                            str r3, [r1]
0008d350  12 a1                                            adr r1, #0x48
0008d352  a5 f7 2e ea                                      blx #0x327b0
0008d356  06 46                                            mov r6, r0
0008d358  0d e0                                            b #0x8d376
0008d35a  12 49                                            ldr r1, [pc, #0x48]
0008d35c  e8 68                                            ldr r0, [r5, #0xc]
0008d35e  79 44                                            add r1, pc
0008d360  0a 68                                            ldr r2, [r1]
0008d362  53 1c                                            adds r3, r2, #1
0008d364  0b 60                                            str r3, [r1]
0008d366  10 a1                                            adr r1, #0x40
0008d368  5d f8 04 bb                                      ldr fp, [sp], #4
0008d36c  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0008d370  23 f0 52 bd                                      b.w #0xb0e18
0008d374  66 69                                            ldr r6, [r4, #0x14]
0008d376  68 68                                            ldr r0, [r5, #4]
0008d378  31 46                                            mov r1, r6
0008d37a  22 46                                            mov r2, r4
0008d37c  a5 f7 ee e9                                      blx #0x3275c
0008d380  a8 68                                            ldr r0, [r5, #8]
0008d382  4f f0 ff 31                                      mov.w r1, #-1
0008d386  32 46                                            mov r2, r6
0008d388  23 46                                            mov r3, r4
0008d38a  a6 f7 ae eb                                      blx #0x33ae8
0008d38e  30 46                                            mov r0, r6
0008d390  5d f8 04 bb                                      ldr fp, [sp], #4
0008d394  f0 bd                                            pop {r4, r5, r6, r7, pc}
0008d396  00 bf                                            nop
0008d398  4e 10                                            asrs r6, r1, #1
0008d39a  05 00                                            movs r5, r0
0008d39c  25 73                                            strb r5, [r4, #0xc]
0008d39e  40 25                                            movs r5, #0x40
0008d3a0  75 00                                            lsls r5, r6, #1
0008d3a2  00 00                                            movs r0, r0
0008d3a4  32 10                                            asrs r2, r6, #0x20
0008d3a6  05 00                                            movs r5, r0
0008d3a8  70 61                                            str r0, [r6, #0x14]
0008d3aa  72 61                                            str r2, [r6, #0x14]
0008d3ac  6d 65                                            str r5, [r5, #0x54]
0008d3ae  74 65                                            str r4, [r6, #0x54]
0008d3b0  72 40                                            eors r2, r6
0008d3b2  25 75                                            strb r5, [r4, #0x14]
0008d3b4  00 00                                            movs r0, r0
0008d3b6  00 00                                            movs r0, r0

; FUNCTION 0x0008d3b8, declared_size=24, range_size=24, mode=thumb
; class-group: ir_print_visitor
; alias: _ZN16ir_print_visitor5visitEP9ir_rvalue
; demangled: ir_print_visitor::visit(ir_rvalue*)
; decoder-mode: thumb
0008d3b8  03 a1                                            adr r1, #0xc
0008d3ba  03 69                                            ldr r3, [r0, #0x10]
0008d3bc  01 22                                            movs r2, #1
0008d3be  08 46                                            mov r0, r1
0008d3c0  05 21                                            movs r1, #5
0008d3c2  23 f0 11 bd                                      b.w #0xb0de8
0008d3c6  00 bf                                            nop
0008d3c8  65 72                                            strb r5, [r4, #9]
0008d3ca  72 6f                                            ldr r2, [r6, #0x74]
0008d3cc  72 00                                            lsls r2, r6, #1
0008d3ce  00 00                                            movs r0, r0

; FUNCTION 0x0008d3d0, declared_size=236, range_size=236, mode=thumb
; class-group: ir_print_visitor
; alias: _ZN16ir_print_visitor5visitEP11ir_variable
; demangled: ir_print_visitor::visit(ir_variable*)
; decoder-mode: thumb
0008d3d0  f0 b5                                            push {r4, r5, r6, r7, lr}
0008d3d2  03 af                                            add r7, sp, #0xc
0008d3d4  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0008d3d8  84 b0                                            sub sp, #0x10
0008d3da  05 46                                            mov r5, r0
0008d3dc  22 a0                                            adr r0, #0x88
0008d3de  2b 69                                            ldr r3, [r5, #0x10]
0008d3e0  0c 46                                            mov r4, r1
0008d3e2  09 21                                            movs r1, #9
0008d3e4  01 22                                            movs r2, #1
0008d3e6  a5 f7 6c e9                                      blx #0x326c0
0008d3ea  22 49                                            ldr r1, [pc, #0x88]
0008d3ec  22 a3                                            adr r3, #0x88
0008d3ee  a6 69                                            ldr r6, [r4, #0x18]
0008d3f0  79 44                                            add r1, pc
0008d3f2  a2 6a                                            ldr r2, [r4, #0x28]
0008d3f4  28 69                                            ldr r0, [r5, #0x10]
0008d3f6  16 f0 08 0f                                      tst.w r6, #8
0008d3fa  08 bf                                            it eq
0008d3fc  0b 46                                            moveq r3, r1
0008d3fe  16 f0 02 0f                                      tst.w r6, #2
0008d402  00 93                                            str r3, [sp]
0008d404  1f 4b                                            ldr r3, [pc, #0x7c]
0008d406  7b 44                                            add r3, pc
0008d408  53 f8 22 20                                      ldr.w r2, [r3, r2, lsl #2]
0008d40c  02 92                                            str r2, [sp, #8]
0008d40e  1e 4a                                            ldr r2, [pc, #0x78]
0008d410  c6 f3 41 33                                      ubfx r3, r6, #0xd, #2
0008d414  7a 44                                            add r2, pc
0008d416  52 f8 23 20                                      ldr.w r2, [r2, r3, lsl #2]
0008d41a  03 92                                            str r2, [sp, #0xc]
0008d41c  1b 4a                                            ldr r2, [pc, #0x6c]
0008d41e  c6 f3 43 23                                      ubfx r3, r6, #9, #4
0008d422  7a 44                                            add r2, pc
0008d424  52 f8 23 20                                      ldr.w r2, [r2, r3, lsl #2]
0008d428  1c a3                                            adr r3, #0x70
0008d42a  01 92                                            str r2, [sp, #4]
0008d42c  18 a2                                            adr r2, #0x60
0008d42e  08 bf                                            it eq
0008d430  0a 46                                            moveq r2, r1
0008d432  16 f0 04 0f                                      tst.w r6, #4
0008d436  08 bf                                            it eq
0008d438  0b 46                                            moveq r3, r1
0008d43a  1a a1                                            adr r1, #0x68
0008d43c  a5 f7 d4 e8                                      blx #0x325e8
0008d440  21 69                                            ldr r1, [r4, #0x10]
0008d442  28 69                                            ldr r0, [r5, #0x10]
0008d444  ff f7 c6 fe                                      bl #0x8d1d4
0008d448  28 46                                            mov r0, r5
0008d44a  21 46                                            mov r1, r4
0008d44c  2e 69                                            ldr r6, [r5, #0x10]
0008d44e  a7 f7 a0 e9                                      blx #0x34790
0008d452  02 46                                            mov r2, r0
0008d454  17 a1                                            adr r1, #0x5c
0008d456  30 46                                            mov r0, r6
0008d458  04 b0                                            add sp, #0x10
0008d45a  5d f8 04 bb                                      ldr fp, [sp], #4
0008d45e  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0008d462  23 f0 c9 bc                                      b.w #0xb0df8
0008d466  00 bf                                            nop
0008d468  28 64                                            str r0, [r5, #0x40]
0008d46a  65 63                                            str r5, [r4, #0x34]
0008d46c  6c 61                                            str r4, [r5, #0x14]
0008d46e  72 65                                            str r2, [r6, #0x54]
0008d470  20 00                                            movs r0, r4
0008d472  00 00                                            movs r0, r0
0008d474  cf bd                                            pop {r0, r1, r2, r3, r6, r7, pc}
0008d476  02 00                                            movs r2, r0
0008d478  69 6e                                            ldr r1, [r5, #0x64]
0008d47a  76 61                                            str r6, [r6, #0x14]
0008d47c  72 69                                            ldr r2, [r6, #0x14]
0008d47e  61 6e                                            ldr r1, [r4, #0x64]
0008d480  74 20                                            movs r0, #0x74
0008d482  00 00                                            movs r0, r0
0008d484  be b5                                            push {r1, r2, r3, r4, r5, r7, lr}
0008d486  04 00                                            movs r4, r0
0008d488  c0 b5                                            push {r6, r7, lr}
0008d48a  04 00                                            movs r4, r0
0008d48c  76 b5                                            push {r1, r2, r4, r5, r6, lr}
0008d48e  04 00                                            movs r4, r0
0008d490  63 65                                            str r3, [r4, #0x54]
0008d492  6e 74                                            strb r6, [r5, #0x11]
0008d494  72 6f                                            ldr r2, [r6, #0x74]
0008d496  69 64                                            str r1, [r5, #0x44]
0008d498  20 00                                            movs r0, r4
0008d49a  00 00                                            movs r0, r0
0008d49c  73 61                                            str r3, [r6, #0x14]
0008d49e  6d 70                                            strb r5, [r5, #1]
0008d4a0  6c 65                                            str r4, [r5, #0x54]
0008d4a2  20 00                                            movs r0, r4
0008d4a4  28 25                                            movs r5, #0x28
0008d4a6  73 25                                            movs r5, #0x73
0008d4a8  73 25                                            movs r5, #0x73
0008d4aa  73 25                                            movs r5, #0x73
0008d4ac  73 25                                            movs r5, #0x73
0008d4ae  73 25                                            movs r5, #0x73
0008d4b0  73 29                                            cmp r1, #0x73
0008d4b2  20 00                                            movs r0, r4
0008d4b4  20 25                                            movs r5, #0x20
0008d4b6  73 29                                            cmp r1, #0x73
0008d4b8  00 00                                            movs r0, r0
0008d4ba  00 00                                            movs r0, r0

; FUNCTION 0x0008d4bc, declared_size=332, range_size=332, mode=thumb
; class-group: ir_print_visitor
; alias: _ZN16ir_print_visitor5visitEP21ir_function_signature
; demangled: ir_print_visitor::visit(ir_function_signature*)
; decoder-mode: thumb
0008d4bc  f0 b5                                            push {r4, r5, r6, r7, lr}
0008d4be  03 af                                            add r7, sp, #0xc
0008d4c0  4d f8 04 8d                                      str r8, [sp, #-0x4]!
0008d4c4  04 46                                            mov r4, r0
0008d4c6  88 46                                            mov r8, r1
0008d4c8  a0 68                                            ldr r0, [r4, #8]
0008d4ca  a5 f7 cc e9                                      blx #0x32864
0008d4ce  23 69                                            ldr r3, [r4, #0x10]
0008d4d0  43 a0                                            adr r0, #0x10c
0008d4d2  0b 21                                            movs r1, #0xb
0008d4d4  01 22                                            movs r2, #1
0008d4d6  a5 f7 f4 e8                                      blx #0x326c0
0008d4da  d4 e9 04 01                                      ldrd r0, r1, [r4, #0x10]
0008d4de  01 31                                            adds r1, #1
0008d4e0  61 61                                            str r1, [r4, #0x14]
0008d4e2  d8 f8 10 10                                      ldr.w r1, [r8, #0x10]
0008d4e6  ff f7 75 fe                                      bl #0x8d1d4
0008d4ea  21 69                                            ldr r1, [r4, #0x10]
0008d4ec  0a 20                                            movs r0, #0xa
0008d4ee  a5 f7 ee e8                                      blx #0x326cc
0008d4f2  20 46                                            mov r0, r4
0008d4f4  a7 f7 52 e9                                      blx #0x3479c
0008d4f8  23 69                                            ldr r3, [r4, #0x10]
0008d4fa  3c a0                                            adr r0, #0xf0
0008d4fc  0c 21                                            movs r1, #0xc
0008d4fe  01 22                                            movs r2, #1
0008d500  a5 f7 de e8                                      blx #0x326c0
0008d504  60 69                                            ldr r0, [r4, #0x14]
0008d506  01 30                                            adds r0, #1
0008d508  60 61                                            str r0, [r4, #0x14]
0008d50a  d8 f8 18 60                                      ldr.w r6, [r8, #0x18]
0008d50e  00 2e                                            cmp r6, #0
0008d510  18 bf                                            it ne
0008d512  04 3e                                            subne r6, #4
0008d514  35 46                                            mov r5, r6
0008d516  55 f8 04 1f                                      ldr r1, [r5, #4]!
0008d51a  a9 b1                                            cbz r1, #0x8d548
0008d51c  20 46                                            mov r0, r4
0008d51e  a7 f7 3e e9                                      blx #0x3479c
0008d522  30 68                                            ldr r0, [r6]
0008d524  21 46                                            mov r1, r4
0008d526  82 68                                            ldr r2, [r0, #8]
0008d528  30 46                                            mov r0, r6
0008d52a  90 47                                            blx r2
0008d52c  21 69                                            ldr r1, [r4, #0x10]
0008d52e  0a 20                                            movs r0, #0xa
0008d530  a5 f7 cc e8                                      blx #0x326cc
0008d534  2e 68                                            ldr r6, [r5]
0008d536  00 2e                                            cmp r6, #0
0008d538  18 bf                                            it ne
0008d53a  04 3e                                            subne r6, #4
0008d53c  35 46                                            mov r5, r6
0008d53e  55 f8 04 0f                                      ldr r0, [r5, #4]!
0008d542  00 28                                            cmp r0, #0
0008d544  ea d1                                            bne #0x8d51c
0008d546  60 69                                            ldr r0, [r4, #0x14]
0008d548  01 38                                            subs r0, #1
0008d54a  60 61                                            str r0, [r4, #0x14]
0008d54c  20 46                                            mov r0, r4
0008d54e  a7 f7 26 e9                                      blx #0x3479c
0008d552  23 69                                            ldr r3, [r4, #0x10]
0008d554  29 a0                                            adr r0, #0xa4
0008d556  02 21                                            movs r1, #2
0008d558  01 22                                            movs r2, #1
0008d55a  a5 f7 b2 e8                                      blx #0x326c0
0008d55e  20 46                                            mov r0, r4
0008d560  a7 f7 1c e9                                      blx #0x3479c
0008d564  23 69                                            ldr r3, [r4, #0x10]
0008d566  26 a0                                            adr r0, #0x98
0008d568  02 21                                            movs r1, #2
0008d56a  01 22                                            movs r2, #1
0008d56c  a5 f7 a8 e8                                      blx #0x326c0
0008d570  60 69                                            ldr r0, [r4, #0x14]
0008d572  01 30                                            adds r0, #1
0008d574  60 61                                            str r0, [r4, #0x14]
0008d576  d8 f8 26 50                                      ldr.w r5, [r8, #0x26]
0008d57a  00 2d                                            cmp r5, #0
0008d57c  18 bf                                            it ne
0008d57e  04 3d                                            subne r5, #4
0008d580  2e 46                                            mov r6, r5
0008d582  56 f8 04 1f                                      ldr r1, [r6, #4]!
0008d586  a9 b1                                            cbz r1, #0x8d5b4
0008d588  20 46                                            mov r0, r4
0008d58a  a7 f7 08 e9                                      blx #0x3479c
0008d58e  28 68                                            ldr r0, [r5]
0008d590  21 46                                            mov r1, r4
0008d592  82 68                                            ldr r2, [r0, #8]
0008d594  28 46                                            mov r0, r5
0008d596  90 47                                            blx r2
0008d598  21 69                                            ldr r1, [r4, #0x10]
0008d59a  0a 20                                            movs r0, #0xa
0008d59c  a5 f7 96 e8                                      blx #0x326cc
0008d5a0  35 68                                            ldr r5, [r6]
0008d5a2  00 2d                                            cmp r5, #0
0008d5a4  18 bf                                            it ne
0008d5a6  04 3d                                            subne r5, #4
0008d5a8  2e 46                                            mov r6, r5
0008d5aa  56 f8 04 0f                                      ldr r0, [r6, #4]!
0008d5ae  00 28                                            cmp r0, #0
0008d5b0  ea d1                                            bne #0x8d588
0008d5b2  60 69                                            ldr r0, [r4, #0x14]
0008d5b4  01 38                                            subs r0, #1
0008d5b6  60 61                                            str r0, [r4, #0x14]
0008d5b8  20 46                                            mov r0, r4
0008d5ba  a7 f7 f0 e8                                      blx #0x3479c
0008d5be  23 69                                            ldr r3, [r4, #0x10]
0008d5c0  10 a0                                            adr r0, #0x40
0008d5c2  03 21                                            movs r1, #3
0008d5c4  01 22                                            movs r2, #1
0008d5c6  a5 f7 7c e8                                      blx #0x326c0
0008d5ca  61 69                                            ldr r1, [r4, #0x14]
0008d5cc  a0 68                                            ldr r0, [r4, #8]
0008d5ce  01 39                                            subs r1, #1
0008d5d0  61 61                                            str r1, [r4, #0x14]
0008d5d2  5d f8 04 8b                                      ldr r8, [sp], #4
0008d5d6  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0008d5da  23 f0 15 bb                                      b.w #0xb0c08
0008d5de  00 bf                                            nop
0008d5e0  28 73                                            strb r0, [r5, #0xc]
0008d5e2  69 67                                            str r1, [r5, #0x74]
0008d5e4  6e 61                                            str r6, [r5, #0x14]
0008d5e6  74 75                                            strb r4, [r6, #0x15]
0008d5e8  72 65                                            str r2, [r6, #0x54]
0008d5ea  20 00                                            movs r0, r4
0008d5ec  28 70                                            strb r0, [r5]
0008d5ee  61 72                                            strb r1, [r4, #9]
0008d5f0  61 6d                                            ldr r1, [r4, #0x54]
0008d5f2  65 74                                            strb r5, [r4, #0x11]
0008d5f4  65 72                                            strb r5, [r4, #9]
0008d5f6  73 0a                                            lsrs r3, r6, #9
0008d5f8  00 00                                            movs r0, r0
0008d5fa  00 00                                            movs r0, r0
0008d5fc  29 0a                                            lsrs r1, r5, #8
0008d5fe  00 00                                            movs r0, r0
0008d600  28 0a                                            lsrs r0, r5, #8
0008d602  00 00                                            movs r0, r0
0008d604  29 29                                            cmp r1, #0x29
0008d606  0a 00                                            movs r2, r1

; FUNCTION 0x0008d608, declared_size=140, range_size=140, mode=thumb
; class-group: ir_print_visitor
; alias: _ZN16ir_print_visitor5visitEP11ir_function
; demangled: ir_print_visitor::visit(ir_function*)
; decoder-mode: thumb
0008d608  f0 b5                                            push {r4, r5, r6, r7, lr}
0008d60a  03 af                                            add r7, sp, #0xc
0008d60c  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0008d610  0d 46                                            mov r5, r1
0008d612  04 46                                            mov r4, r0
0008d614  2a 69                                            ldr r2, [r5, #0x10]
0008d616  1a a1                                            adr r1, #0x68
0008d618  20 69                                            ldr r0, [r4, #0x10]
0008d61a  a4 f7 e6 ef                                      blx #0x325e8
0008d61e  60 69                                            ldr r0, [r4, #0x14]
0008d620  01 30                                            adds r0, #1
0008d622  60 61                                            str r0, [r4, #0x14]
0008d624  6d 69                                            ldr r5, [r5, #0x14]
0008d626  00 2d                                            cmp r5, #0
0008d628  18 bf                                            it ne
0008d62a  04 3d                                            subne r5, #4
0008d62c  2e 46                                            mov r6, r5
0008d62e  56 f8 04 1f                                      ldr r1, [r6, #4]!
0008d632  a9 b1                                            cbz r1, #0x8d660
0008d634  20 46                                            mov r0, r4
0008d636  a7 f7 b2 e8                                      blx #0x3479c
0008d63a  28 68                                            ldr r0, [r5]
0008d63c  21 46                                            mov r1, r4
0008d63e  82 68                                            ldr r2, [r0, #8]
0008d640  28 46                                            mov r0, r5
0008d642  90 47                                            blx r2
0008d644  21 69                                            ldr r1, [r4, #0x10]
0008d646  0a 20                                            movs r0, #0xa
0008d648  a5 f7 40 e8                                      blx #0x326cc
0008d64c  35 68                                            ldr r5, [r6]
0008d64e  00 2d                                            cmp r5, #0
0008d650  18 bf                                            it ne
0008d652  04 3d                                            subne r5, #4
0008d654  2e 46                                            mov r6, r5
0008d656  56 f8 04 0f                                      ldr r0, [r6, #4]!
0008d65a  00 28                                            cmp r0, #0
0008d65c  ea d1                                            bne #0x8d634
0008d65e  60 69                                            ldr r0, [r4, #0x14]
0008d660  01 38                                            subs r0, #1
0008d662  60 61                                            str r0, [r4, #0x14]
0008d664  20 46                                            mov r0, r4
0008d666  a7 f7 9a e8                                      blx #0x3479c
0008d66a  09 a0                                            adr r0, #0x24
0008d66c  23 69                                            ldr r3, [r4, #0x10]
0008d66e  03 21                                            movs r1, #3
0008d670  01 22                                            movs r2, #1
0008d672  5d f8 04 bb                                      ldr fp, [sp], #4
0008d676  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0008d67a  23 f0 b5 bb                                      b.w #0xb0de8
0008d67e  00 bf                                            nop
0008d680  28 66                                            str r0, [r5, #0x60]
0008d682  75 6e                                            ldr r5, [r6, #0x64]
0008d684  63 74                                            strb r3, [r4, #0x11]
0008d686  69 6f                                            ldr r1, [r5, #0x74]
0008d688  6e 20                                            movs r0, #0x6e
0008d68a  25 73                                            strb r5, [r4, #0xc]
0008d68c  0a 00                                            movs r2, r1
0008d68e  00 00                                            movs r0, r0
0008d690  29 0a                                            lsrs r1, r5, #8
0008d692  0a 00                                            movs r2, r1

; FUNCTION 0x0008d694, declared_size=152, range_size=152, mode=thumb
; class-group: ir_print_visitor
; alias: _ZN16ir_print_visitor5visitEP13ir_expression
; demangled: ir_print_visitor::visit(ir_expression*)
; decoder-mode: thumb
0008d694  f0 b5                                            push {r4, r5, r6, r7, lr}
0008d696  03 af                                            add r7, sp, #0xc
0008d698  4d f8 04 8d                                      str r8, [sp, #-0x4]!
0008d69c  80 46                                            mov r8, r0
0008d69e  1c a0                                            adr r0, #0x70
0008d6a0  d8 f8 10 30                                      ldr.w r3, [r8, #0x10]
0008d6a4  0d 46                                            mov r5, r1
0008d6a6  0c 21                                            movs r1, #0xc
0008d6a8  01 22                                            movs r2, #1
0008d6aa  a5 f7 0a e8                                      blx #0x326c0
0008d6ae  29 69                                            ldr r1, [r5, #0x10]
0008d6b0  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
0008d6b4  ff f7 8e fd                                      bl #0x8d1d4
0008d6b8  28 46                                            mov r0, r5
0008d6ba  d8 f8 10 60                                      ldr.w r6, [r8, #0x10]
0008d6be  a7 f7 74 e8                                      blx #0x347a8
0008d6c2  17 a1                                            adr r1, #0x5c
0008d6c4  02 46                                            mov r2, r0
0008d6c6  30 46                                            mov r0, r6
0008d6c8  a4 f7 8e ef                                      blx #0x325e8
0008d6cc  05 f1 1c 06                                      add.w r6, r5, #0x1c
0008d6d0  00 24                                            movs r4, #0
0008d6d2  06 e0                                            b #0x8d6e2
0008d6d4  56 f8 24 00                                      ldr.w r0, [r6, r4, lsl #2]
0008d6d8  01 68                                            ldr r1, [r0]
0008d6da  8a 68                                            ldr r2, [r1, #8]
0008d6dc  41 46                                            mov r1, r8
0008d6de  90 47                                            blx r2
0008d6e0  01 34                                            adds r4, #1
0008d6e2  a8 69                                            ldr r0, [r5, #0x18]
0008d6e4  69 28                                            cmp r0, #0x69
0008d6e6  04 d1                                            bne #0x8d6f2
0008d6e8  28 69                                            ldr r0, [r5, #0x10]
0008d6ea  00 89                                            ldrh r0, [r0, #8]
0008d6ec  c0 f3 42 20                                      ubfx r0, r0, #9, #3
0008d6f0  01 e0                                            b #0x8d6f6
0008d6f2  a6 f7 20 e8                                      blx #0x33734
0008d6f6  84 42                                            cmp r4, r0
0008d6f8  ec d3                                            blo #0x8d6d4
0008d6fa  0b a0                                            adr r0, #0x2c
0008d6fc  d8 f8 10 30                                      ldr.w r3, [r8, #0x10]
0008d700  02 21                                            movs r1, #2
0008d702  01 22                                            movs r2, #1
0008d704  5d f8 04 8b                                      ldr r8, [sp], #4
0008d708  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0008d70c  23 f0 6c bb                                      b.w #0xb0de8
0008d710  28 65                                            str r0, [r5, #0x50]
0008d712  78 70                                            strb r0, [r7, #1]
0008d714  72 65                                            str r2, [r6, #0x54]
0008d716  73 73                                            strb r3, [r6, #0xd]
0008d718  69 6f                                            ldr r1, [r5, #0x74]
0008d71a  6e 20                                            movs r0, #0x6e
0008d71c  00 00                                            movs r0, r0
0008d71e  00 00                                            movs r0, r0
0008d720  20 25                                            movs r5, #0x20
0008d722  73 20                                            movs r0, #0x73
0008d724  00 00                                            movs r0, r0
0008d726  00 00                                            movs r0, r0
0008d728  29 20                                            movs r0, #0x29
0008d72a  00 00                                            movs r0, r0

; FUNCTION 0x0008d72c, declared_size=228, range_size=228, mode=thumb
; class-group: ir_print_visitor
; alias: _ZN16ir_print_visitor5visitEP10ir_texture
; demangled: ir_print_visitor::visit(ir_texture*)
; decoder-mode: thumb
0008d72c  f0 b5                                            push {r4, r5, r6, r7, lr}
0008d72e  03 af                                            add r7, sp, #0xc
0008d730  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0008d734  0d 46                                            mov r5, r1
0008d736  04 46                                            mov r4, r0
0008d738  28 46                                            mov r0, r5
0008d73a  26 69                                            ldr r6, [r4, #0x10]
0008d73c  a7 f7 3a e8                                      blx #0x347b4
0008d740  32 49                                            ldr r1, [pc, #0xc8]
0008d742  02 46                                            mov r2, r0
0008d744  30 46                                            mov r0, r6
0008d746  79 44                                            add r1, pc
0008d748  a4 f7 4e ef                                      blx #0x325e8
0008d74c  29 69                                            ldr r1, [r5, #0x10]
0008d74e  20 69                                            ldr r0, [r4, #0x10]
0008d750  ff f7 40 fd                                      bl #0x8d1d4
0008d754  21 69                                            ldr r1, [r4, #0x10]
0008d756  20 20                                            movs r0, #0x20
0008d758  a4 f7 b8 ef                                      blx #0x326cc
0008d75c  e8 69                                            ldr r0, [r5, #0x1c]
0008d75e  01 68                                            ldr r1, [r0]
0008d760  8a 68                                            ldr r2, [r1, #8]
0008d762  21 46                                            mov r1, r4
0008d764  90 47                                            blx r2
0008d766  21 69                                            ldr r1, [r4, #0x10]
0008d768  20 20                                            movs r0, #0x20
0008d76a  a4 f7 b0 ef                                      blx #0x326cc
0008d76e  a8 69                                            ldr r0, [r5, #0x18]
0008d770  06 28                                            cmp r0, #6
0008d772  18 bf                                            it ne
0008d774  09 28                                            cmpne r0, #9
0008d776  17 d0                                            beq #0x8d7a8
0008d778  28 6a                                            ldr r0, [r5, #0x20]
0008d77a  01 68                                            ldr r1, [r0]
0008d77c  8a 68                                            ldr r2, [r1, #8]
0008d77e  21 46                                            mov r1, r4
0008d780  90 47                                            blx r2
0008d782  21 69                                            ldr r1, [r4, #0x10]
0008d784  20 20                                            movs r0, #0x20
0008d786  a4 f7 a2 ef                                      blx #0x326cc
0008d78a  68 6a                                            ldr r0, [r5, #0x24]
0008d78c  20 b1                                            cbz r0, #0x8d798
0008d78e  01 68                                            ldr r1, [r0]
0008d790  8a 68                                            ldr r2, [r1, #8]
0008d792  21 46                                            mov r1, r4
0008d794  90 47                                            blx r2
0008d796  03 e0                                            b #0x8d7a0
0008d798  21 69                                            ldr r1, [r4, #0x10]
0008d79a  30 20                                            movs r0, #0x30
0008d79c  a4 f7 96 ef                                      blx #0x326cc
0008d7a0  21 69                                            ldr r1, [r4, #0x10]
0008d7a2  20 20                                            movs r0, #0x20
0008d7a4  a4 f7 92 ef                                      blx #0x326cc
0008d7a8  21 69                                            ldr r1, [r4, #0x10]
0008d7aa  20 20                                            movs r0, #0x20
0008d7ac  a4 f7 8e ef                                      blx #0x326cc
0008d7b0  a8 69                                            ldr r0, [r5, #0x18]
0008d7b2  01 38                                            subs r0, #1
0008d7b4  07 28                                            cmp r0, #7
0008d7b6  0a d8                                            bhi #0x8d7ce
0008d7b8  df e8 00 f0                                      tbb [pc, r0]
0008d7bc  04 04                                            lsls r4, r0, #0x10
0008d7be  11 04                                            lsls r1, r2, #0x10
0008d7c0  04 04                                            lsls r4, r0, #0x10
0008d7c2  09 04                                            lsls r1, r1, #0x10
0008d7c4  a8 6a                                            ldr r0, [r5, #0x28]
0008d7c6  01 68                                            ldr r1, [r0]
0008d7c8  8a 68                                            ldr r2, [r1, #8]
0008d7ca  21 46                                            mov r1, r4
0008d7cc  90 47                                            blx r2
0008d7ce  21 69                                            ldr r1, [r4, #0x10]
0008d7d0  29 20                                            movs r0, #0x29
0008d7d2  5d f8 04 bb                                      ldr fp, [sp], #4
0008d7d6  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0008d7da  23 f0 3d b9                                      b.w #0xb0a58
0008d7de  21 69                                            ldr r1, [r4, #0x10]
0008d7e0  28 20                                            movs r0, #0x28
0008d7e2  a4 f7 74 ef                                      blx #0x326cc
0008d7e6  a8 6a                                            ldr r0, [r5, #0x28]
0008d7e8  01 68                                            ldr r1, [r0]
0008d7ea  8a 68                                            ldr r2, [r1, #8]
0008d7ec  21 46                                            mov r1, r4
0008d7ee  90 47                                            blx r2
0008d7f0  21 69                                            ldr r1, [r4, #0x10]
0008d7f2  20 20                                            movs r0, #0x20
0008d7f4  a4 f7 6a ef                                      blx #0x326cc
0008d7f8  e8 6a                                            ldr r0, [r5, #0x2c]
0008d7fa  01 68                                            ldr r1, [r0]
0008d7fc  8a 68                                            ldr r2, [r1, #8]
0008d7fe  21 46                                            mov r1, r4
0008d800  90 47                                            blx r2
0008d802  21 69                                            ldr r1, [r4, #0x10]
0008d804  29 20                                            movs r0, #0x29
0008d806  a4 f7 62 ef                                      blx #0x326cc
0008d80a  e0 e7                                            b #0x8d7ce
0008d80c  6d 40                                            eors r5, r5
0008d80e  03 00                                            movs r3, r0

; FUNCTION 0x0008d810, declared_size=204, range_size=204, mode=thumb
; class-group: ir_print_visitor
; alias: _ZN16ir_print_visitor5visitEP10ir_swizzle
; demangled: ir_print_visitor::visit(ir_swizzle*)
; decoder-mode: thumb
0008d810  f0 b5                                            push {r4, r5, r6, r7, lr}
0008d812  03 af                                            add r7, sp, #0xc
0008d814  2d e9 00 0b                                      push.w {r8, sb, fp}
0008d818  86 b0                                            sub sp, #0x18
0008d81a  04 46                                            mov r4, r0
0008d81c  29 48                                            ldr r0, [pc, #0xa4]
0008d81e  0d 46                                            mov r5, r1
0008d820  01 22                                            movs r2, #1
0008d822  78 44                                            add r0, pc
0008d824  00 68                                            ldr r0, [r0]
0008d826  00 68                                            ldr r0, [r0]
0008d828  05 90                                            str r0, [sp, #0x14]
0008d82a  a8 8b                                            ldrh r0, [r5, #0x1c]
0008d82c  00 f0 03 06                                      and r6, r0, #3
0008d830  01 96                                            str r6, [sp, #4]
0008d832  c0 f3 81 01                                      ubfx r1, r0, #2, #2
0008d836  02 91                                            str r1, [sp, #8]
0008d838  c0 f3 01 11                                      ubfx r1, r0, #4, #2
0008d83c  03 91                                            str r1, [sp, #0xc]
0008d83e  c0 f3 81 10                                      ubfx r0, r0, #6, #2
0008d842  04 90                                            str r0, [sp, #0x10]
0008d844  23 69                                            ldr r3, [r4, #0x10]
0008d846  20 a0                                            adr r0, #0x80
0008d848  06 21                                            movs r1, #6
0008d84a  a4 f7 3a ef                                      blx #0x326c0
0008d84e  68 7f                                            ldrb r0, [r5, #0x1d]
0008d850  21 69                                            ldr r1, [r4, #0x10]
0008d852  40 07                                            lsls r0, r0, #0x1d
0008d854  1c d0                                            beq #0x8d890
0008d856  1e 48                                            ldr r0, [pc, #0x78]
0008d858  78 44                                            add r0, pc
0008d85a  80 5d                                            ldrb r0, [r0, r6]
0008d85c  a4 f7 36 ef                                      blx #0x326cc
0008d860  68 7f                                            ldrb r0, [r5, #0x1d]
0008d862  21 69                                            ldr r1, [r4, #0x10]
0008d864  10 f0 06 0f                                      tst.w r0, #6
0008d868  12 d0                                            beq #0x8d890
0008d86a  df f8 68 80                                      ldr.w r8, [pc, #0x68]
0008d86e  0d f1 04 09                                      add.w sb, sp, #4
0008d872  01 26                                            movs r6, #1
0008d874  f8 44                                            add r8, pc
0008d876  59 f8 26 00                                      ldr.w r0, [sb, r6, lsl #2]
0008d87a  18 f8 00 00                                      ldrb.w r0, [r8, r0]
0008d87e  a4 f7 26 ef                                      blx #0x326cc
0008d882  68 7f                                            ldrb r0, [r5, #0x1d]
0008d884  01 36                                            adds r6, #1
0008d886  21 69                                            ldr r1, [r4, #0x10]
0008d888  00 f0 07 00                                      and r0, r0, #7
0008d88c  86 42                                            cmp r6, r0
0008d88e  f2 d3                                            blo #0x8d876
0008d890  20 20                                            movs r0, #0x20
0008d892  a4 f7 1c ef                                      blx #0x326cc
0008d896  a8 69                                            ldr r0, [r5, #0x18]
0008d898  01 68                                            ldr r1, [r0]
0008d89a  8a 68                                            ldr r2, [r1, #8]
0008d89c  21 46                                            mov r1, r4
0008d89e  90 47                                            blx r2
0008d8a0  21 69                                            ldr r1, [r4, #0x10]
0008d8a2  29 20                                            movs r0, #0x29
0008d8a4  a4 f7 12 ef                                      blx #0x326cc
0008d8a8  0b 48                                            ldr r0, [pc, #0x2c]
0008d8aa  05 99                                            ldr r1, [sp, #0x14]
0008d8ac  78 44                                            add r0, pc
0008d8ae  00 68                                            ldr r0, [r0]
0008d8b0  00 68                                            ldr r0, [r0]
0008d8b2  40 1a                                            subs r0, r0, r1
0008d8b4  02 bf                                            ittt eq
0008d8b6  06 b0                                            addeq sp, #0x18
0008d8b8  bd e8 00 0b                                      popeq.w {r8, sb, fp}
0008d8bc  f0 bd                                            popeq {r4, r5, r6, r7, pc}
0008d8be  a4 f7 d0 eb                                      blx #0x32060
0008d8c2  00 bf                                            nop
0008d8c4  92 ec 04 00                                      ldc p0, c0, [r2], {4}
0008d8c8  28 73                                            strb r0, [r5, #0xc]
0008d8ca  77 69                                            ldr r7, [r6, #0x14]
0008d8cc  7a 20                                            movs r0, #0x7a
0008d8ce  00 00                                            movs r0, r0
0008d8d0  64 32                                            adds r2, #0x64
0008d8d2  03 00                                            movs r3, r0
0008d8d4  48 32                                            adds r2, #0x48
0008d8d6  03 00                                            movs r3, r0
0008d8d8  08 ec                                            .byte 0x08, 0xec
0008d8da  04 00                                            movs r4, r0

; FUNCTION 0x0008d8dc, declared_size=56, range_size=56, mode=thumb
; class-group: ir_print_visitor
; alias: _ZN16ir_print_visitor5visitEP23ir_dereference_variable
; demangled: ir_print_visitor::visit(ir_dereference_variable*)
; decoder-mode: thumb
0008d8dc  b0 b5                                            push {r4, r5, r7, lr}
0008d8de  02 af                                            add r7, sp, #8
0008d8e0  04 46                                            mov r4, r0
0008d8e2  08 68                                            ldr r0, [r1]
0008d8e4  02 6a                                            ldr r2, [r0, #0x20]
0008d8e6  08 46                                            mov r0, r1
0008d8e8  90 47                                            blx r2
0008d8ea  01 46                                            mov r1, r0
0008d8ec  20 46                                            mov r0, r4
0008d8ee  25 69                                            ldr r5, [r4, #0x10]
0008d8f0  a6 f7 4e ef                                      blx #0x34790
0008d8f4  02 46                                            mov r2, r0
0008d8f6  03 a1                                            adr r1, #0xc
0008d8f8  28 46                                            mov r0, r5
0008d8fa  bd e8 b0 40                                      pop.w {r4, r5, r7, lr}
0008d8fe  23 f0 7b ba                                      b.w #0xb0df8
0008d902  00 bf                                            nop
0008d904  28 76                                            strb r0, [r5, #0x18]
0008d906  61 72                                            strb r1, [r4, #9]
0008d908  5f 72                                            strb r7, [r3, #9]
0008d90a  65 66                                            str r5, [r4, #0x64]
0008d90c  20 25                                            movs r5, #0x20
0008d90e  73 29                                            cmp r1, #0x73
0008d910  20 00                                            movs r0, r4
0008d912  00 00                                            movs r0, r0

; FUNCTION 0x0008d914, declared_size=72, range_size=72, mode=thumb
; class-group: ir_print_visitor
; alias: _ZN16ir_print_visitor5visitEP20ir_dereference_array
; demangled: ir_print_visitor::visit(ir_dereference_array*)
; decoder-mode: thumb
0008d914  b0 b5                                            push {r4, r5, r7, lr}
0008d916  02 af                                            add r7, sp, #8
0008d918  05 46                                            mov r5, r0
0008d91a  0c a0                                            adr r0, #0x30
0008d91c  2b 69                                            ldr r3, [r5, #0x10]
0008d91e  0c 46                                            mov r4, r1
0008d920  0b 21                                            movs r1, #0xb
0008d922  01 22                                            movs r2, #1
0008d924  a4 f7 cc ee                                      blx #0x326c0
0008d928  a0 69                                            ldr r0, [r4, #0x18]
0008d92a  01 68                                            ldr r1, [r0]
0008d92c  8a 68                                            ldr r2, [r1, #8]
0008d92e  29 46                                            mov r1, r5
0008d930  90 47                                            blx r2
0008d932  e0 69                                            ldr r0, [r4, #0x1c]
0008d934  01 68                                            ldr r1, [r0]
0008d936  8a 68                                            ldr r2, [r1, #8]
0008d938  29 46                                            mov r1, r5
0008d93a  90 47                                            blx r2
0008d93c  06 a0                                            adr r0, #0x18
0008d93e  2b 69                                            ldr r3, [r5, #0x10]
0008d940  02 21                                            movs r1, #2
0008d942  01 22                                            movs r2, #1
0008d944  bd e8 b0 40                                      pop.w {r4, r5, r7, lr}
0008d948  23 f0 4e ba                                      b.w #0xb0de8
0008d94c  28 61                                            str r0, [r5, #0x10]
0008d94e  72 72                                            strb r2, [r6, #9]
0008d950  61 79                                            ldrb r1, [r4, #5]
0008d952  5f 72                                            strb r7, [r3, #9]
0008d954  65 66                                            str r5, [r4, #0x64]
0008d956  20 00                                            movs r0, r4
0008d958  29 20                                            movs r0, #0x29
0008d95a  00 00                                            movs r0, r0

; FUNCTION 0x0008d95c, declared_size=68, range_size=68, mode=thumb
; class-group: ir_print_visitor
; alias: _ZN16ir_print_visitor5visitEP21ir_dereference_record
; demangled: ir_print_visitor::visit(ir_dereference_record*)
; decoder-mode: thumb
0008d95c  b0 b5                                            push {r4, r5, r7, lr}
0008d95e  02 af                                            add r7, sp, #8
0008d960  05 46                                            mov r5, r0
0008d962  09 a0                                            adr r0, #0x24
0008d964  2b 69                                            ldr r3, [r5, #0x10]
0008d966  0c 46                                            mov r4, r1
0008d968  0c 21                                            movs r1, #0xc
0008d96a  01 22                                            movs r2, #1
0008d96c  a4 f7 a8 ee                                      blx #0x326c0
0008d970  a0 69                                            ldr r0, [r4, #0x18]
0008d972  01 68                                            ldr r1, [r0]
0008d974  8a 68                                            ldr r2, [r1, #8]
0008d976  29 46                                            mov r1, r5
0008d978  90 47                                            blx r2
0008d97a  e2 69                                            ldr r2, [r4, #0x1c]
0008d97c  06 a1                                            adr r1, #0x18
0008d97e  28 69                                            ldr r0, [r5, #0x10]
0008d980  bd e8 b0 40                                      pop.w {r4, r5, r7, lr}
0008d984  23 f0 38 ba                                      b.w #0xb0df8
0008d988  28 72                                            strb r0, [r5, #8]
0008d98a  65 63                                            str r5, [r4, #0x34]
0008d98c  6f 72                                            strb r7, [r5, #9]
0008d98e  64 5f                                            ldrsh r4, [r4, r5]
0008d990  72 65                                            str r2, [r6, #0x54]
0008d992  66 20                                            movs r0, #0x66
0008d994  00 00                                            movs r0, r0
0008d996  00 00                                            movs r0, r0
0008d998  20 25                                            movs r5, #0x20
0008d99a  73 29                                            cmp r1, #0x73
0008d99c  20 00                                            movs r0, r4
0008d99e  00 00                                            movs r0, r0

; FUNCTION 0x0008d9a0, declared_size=220, range_size=220, mode=thumb
; class-group: ir_print_visitor
; alias: _ZN16ir_print_visitor5visitEP13ir_assignment
; demangled: ir_print_visitor::visit(ir_assignment*)
; decoder-mode: thumb
0008d9a0  f0 b5                                            push {r4, r5, r6, r7, lr}
0008d9a2  03 af                                            add r7, sp, #0xc
0008d9a4  2d e9 00 0b                                      push.w {r8, sb, fp}
0008d9a8  84 b0                                            sub sp, #0x10
0008d9aa  81 46                                            mov sb, r0
0008d9ac  2a 48                                            ldr r0, [pc, #0xa8]
0008d9ae  88 46                                            mov r8, r1
0008d9b0  08 21                                            movs r1, #8
0008d9b2  78 44                                            add r0, pc
0008d9b4  01 22                                            movs r2, #1
0008d9b6  01 26                                            movs r6, #1
0008d9b8  00 68                                            ldr r0, [r0]
0008d9ba  00 68                                            ldr r0, [r0]
0008d9bc  03 90                                            str r0, [sp, #0xc]
0008d9be  27 a0                                            adr r0, #0x9c
0008d9c0  d9 f8 10 30                                      ldr.w r3, [sb, #0x10]
0008d9c4  a4 f7 7c ee                                      blx #0x326c0
0008d9c8  d8 f8 18 00                                      ldr.w r0, [r8, #0x18]
0008d9cc  18 b1                                            cbz r0, #0x8d9d6
0008d9ce  01 68                                            ldr r1, [r0]
0008d9d0  8a 68                                            ldr r2, [r1, #8]
0008d9d2  49 46                                            mov r1, sb
0008d9d4  90 47                                            blx r2
0008d9d6  98 f8 1c 00                                      ldrb.w r0, [r8, #0x1c]
0008d9da  a7 f1 21 02                                      sub.w r2, r7, #0x21
0008d9de  22 4b                                            ldr r3, [pc, #0x88]
0008d9e0  00 21                                            movs r1, #0
0008d9e2  00 f0 0f 00                                      and r0, r0, #0xf
0008d9e6  00 25                                            movs r5, #0
0008d9e8  7b 44                                            add r3, pc
0008d9ea  06 fa 01 f4                                      lsl.w r4, r6, r1
0008d9ee  04 42                                            tst r4, r0
0008d9f0  1e bf                                            ittt ne
0008d9f2  5c 5c                                            ldrbne r4, [r3, r1]
0008d9f4  54 55                                            strbne r4, [r2, r5]
0008d9f6  01 35                                            addne r5, #1
0008d9f8  01 31                                            adds r1, #1
0008d9fa  04 29                                            cmp r1, #4
0008d9fc  f5 d1                                            bne #0x8d9ea
0008d9fe  00 20                                            movs r0, #0
0008da00  1a a1                                            adr r1, #0x68
0008da02  50 55                                            strb r0, [r2, r5]
0008da04  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
0008da08  a4 f7 ee ed                                      blx #0x325e8
0008da0c  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
0008da10  01 68                                            ldr r1, [r0]
0008da12  8a 68                                            ldr r2, [r1, #8]
0008da14  49 46                                            mov r1, sb
0008da16  90 47                                            blx r2
0008da18  d9 f8 10 10                                      ldr.w r1, [sb, #0x10]
0008da1c  20 20                                            movs r0, #0x20
0008da1e  a4 f7 56 ee                                      blx #0x326cc
0008da22  d8 f8 14 00                                      ldr.w r0, [r8, #0x14]
0008da26  01 68                                            ldr r1, [r0]
0008da28  8a 68                                            ldr r2, [r1, #8]
0008da2a  49 46                                            mov r1, sb
0008da2c  90 47                                            blx r2
0008da2e  d9 f8 10 30                                      ldr.w r3, [sb, #0x10]
0008da32  10 a0                                            adr r0, #0x40
0008da34  02 21                                            movs r1, #2
0008da36  01 22                                            movs r2, #1
0008da38  a4 f7 42 ee                                      blx #0x326c0
0008da3c  0e 48                                            ldr r0, [pc, #0x38]
0008da3e  03 99                                            ldr r1, [sp, #0xc]
0008da40  78 44                                            add r0, pc
0008da42  00 68                                            ldr r0, [r0]
0008da44  00 68                                            ldr r0, [r0]
0008da46  40 1a                                            subs r0, r0, r1
0008da48  02 bf                                            ittt eq
0008da4a  04 b0                                            addeq sp, #0x10
0008da4c  bd e8 00 0b                                      popeq.w {r8, sb, fp}
0008da50  f0 bd                                            popeq {r4, r5, r6, r7, pc}
0008da52  a4 f7 06 eb                                      blx #0x32060
0008da56  00 bf                                            nop
0008da58  02 eb 04 00                                      add.w r0, r2, r4
0008da5c  28 61                                            str r0, [r5, #0x10]
0008da5e  73 73                                            strb r3, [r6, #0xd]
0008da60  69 67                                            str r1, [r5, #0x74]
0008da62  6e 20                                            movs r0, #0x6e
0008da64  00 00                                            movs r0, r0
0008da66  00 00                                            movs r0, r0
0008da68  d4 30                                            adds r0, #0xd4
0008da6a  03 00                                            movs r3, r0
0008da6c  20 28                                            cmp r0, #0x20
0008da6e  25 73                                            strb r5, [r4, #0xc]
0008da70  29 20                                            movs r0, #0x29
0008da72  00 00                                            movs r0, r0
0008da74  29 20                                            movs r0, #0x29
0008da76  00 00                                            movs r0, r0
0008da78  74 ea 04 00                                      orns r0, r4, r4

; FUNCTION 0x0008da80, declared_size=532, range_size=532, mode=thumb
; class-group: ir_print_visitor
; alias: _ZN16ir_print_visitor5visitEP11ir_constant
; demangled: ir_print_visitor::visit(ir_constant*)
; decoder-mode: thumb
0008da80  f0 b5                                            push {r4, r5, r6, r7, lr}
0008da82  03 af                                            add r7, sp, #0xc
0008da84  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
0008da88  81 b0                                            sub sp, #4
0008da8a  2d ed 04 8b                                      vpush {d8, d9}
0008da8e  83 46                                            mov fp, r0
0008da90  75 a0                                            adr r0, #0x1d4
0008da92  db f8 10 30                                      ldr.w r3, [fp, #0x10]
0008da96  89 46                                            mov sb, r1
0008da98  0a 21                                            movs r1, #0xa
0008da9a  01 22                                            movs r2, #1
0008da9c  a4 f7 10 ee                                      blx #0x326c0
0008daa0  d9 f8 10 10                                      ldr.w r1, [sb, #0x10]
0008daa4  db f8 10 00                                      ldr.w r0, [fp, #0x10]
0008daa8  ff f7 94 fb                                      bl #0x8d1d4
0008daac  db f8 10 30                                      ldr.w r3, [fp, #0x10]
0008dab0  70 a0                                            adr r0, #0x1c0
0008dab2  02 21                                            movs r1, #2
0008dab4  01 22                                            movs r2, #1
0008dab6  a4 f7 04 ee                                      blx #0x326c0
0008daba  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
0008dabe  41 68                                            ldr r1, [r0, #4]
0008dac0  07 29                                            cmp r1, #7
0008dac2  15 d0                                            beq #0x8daf0
0008dac4  09 29                                            cmp r1, #9
0008dac6  43 d1                                            bne #0x8db50
0008dac8  00 69                                            ldr r0, [r0, #0x10]
0008daca  00 28                                            cmp r0, #0
0008dacc  00 f0 b3 80                                      beq.w #0x8dc36
0008dad0  00 26                                            movs r6, #0
0008dad2  48 46                                            mov r0, sb
0008dad4  31 46                                            mov r1, r6
0008dad6  a6 f7 c2 eb                                      blx #0x3425c
0008dada  01 68                                            ldr r1, [r0]
0008dadc  8a 68                                            ldr r2, [r1, #8]
0008dade  59 46                                            mov r1, fp
0008dae0  90 47                                            blx r2
0008dae2  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
0008dae6  01 36                                            adds r6, #1
0008dae8  00 69                                            ldr r0, [r0, #0x10]
0008daea  86 42                                            cmp r6, r0
0008daec  f1 d3                                            blo #0x8dad2
0008daee  a2 e0                                            b #0x8dc36
0008daf0  d9 f8 5c 60                                      ldr.w r6, [sb, #0x5c]
0008daf4  09 f1 60 02                                      add.w r2, sb, #0x60
0008daf8  01 69                                            ldr r1, [r0, #0x10]
0008dafa  96 42                                            cmp r6, r2
0008dafc  08 bf                                            it eq
0008dafe  00 26                                            moveq r6, #0
0008db00  00 29                                            cmp r1, #0
0008db02  00 f0 98 80                                      beq.w #0x8dc36
0008db06  df f8 70 81                                      ldr.w r8, [pc, #0x170]
0008db0a  00 2e                                            cmp r6, #0
0008db0c  18 bf                                            it ne
0008db0e  04 3e                                            subne r6, #4
0008db10  00 25                                            movs r5, #0
0008db12  f8 44                                            add r8, pc
0008db14  04 24                                            movs r4, #4
0008db16  41 69                                            ldr r1, [r0, #0x14]
0008db18  db f8 10 00                                      ldr.w r0, [fp, #0x10]
0008db1c  0a 59                                            ldr r2, [r1, r4]
0008db1e  41 46                                            mov r1, r8
0008db20  a4 f7 62 ed                                      blx #0x325e8
0008db24  30 68                                            ldr r0, [r6]
0008db26  59 46                                            mov r1, fp
0008db28  82 68                                            ldr r2, [r0, #8]
0008db2a  30 46                                            mov r0, r6
0008db2c  90 47                                            blx r2
0008db2e  db f8 10 10                                      ldr.w r1, [fp, #0x10]
0008db32  29 20                                            movs r0, #0x29
0008db34  a4 f7 ca ed                                      blx #0x326cc
0008db38  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
0008db3c  18 34                                            adds r4, #0x18
0008db3e  76 68                                            ldr r6, [r6, #4]
0008db40  01 35                                            adds r5, #1
0008db42  00 2e                                            cmp r6, #0
0008db44  18 bf                                            it ne
0008db46  04 3e                                            subne r6, #4
0008db48  01 69                                            ldr r1, [r0, #0x10]
0008db4a  8d 42                                            cmp r5, r1
0008db4c  e3 d3                                            blo #0x8db16
0008db4e  72 e0                                            b #0x8dc36
0008db50  01 89                                            ldrh r1, [r0, #8]
0008db52  c1 f3 02 32                                      ubfx r2, r1, #0xc, #3
0008db56  c1 f3 42 21                                      ubfx r1, r1, #9, #3
0008db5a  11 fb 02 f1                                      smulbb r1, r1, r2
0008db5e  00 29                                            cmp r1, #0
0008db60  69 d0                                            beq #0x8dc36
0008db62  09 f1 18 04                                      add.w r4, sb, #0x18
0008db66  0f f2 24 18                                      addw r8, pc, #0x124
0008db6a  44 a6                                            adr r6, #0x110
0008db6c  44 a5                                            adr r5, #0x110
0008db6e  9f ed 3a 8b                                      vldr d8, [pc, #0xe8]
0008db72  4f f0 00 0a                                      mov.w sl, #0
0008db76  9f ed 3a 9b                                      vldr d9, [pc, #0xe8]
0008db7a  1b e0                                            b #0x8dbb4
0008db7c  b0 ee c0 1b                                      vabs.f64 d1, d0
0008db80  b4 ee c8 1b                                      vcmpe.f64 d1, d8
0008db84  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
0008db88  07 d5                                            bpl #0x8db9a
0008db8a  53 ec 10 2b                                      vmov r2, r3, d0
0008db8e  db f8 10 00                                      ldr.w r0, [fp, #0x10]
0008db92  3d a1                                            adr r1, #0xf4
0008db94  a4 f7 28 ed                                      blx #0x325e8
0008db98  40 e0                                            b #0x8dc1c
0008db9a  53 ec 10 2b                                      vmov r2, r3, d0
0008db9e  db f8 10 00                                      ldr.w r0, [fp, #0x10]
0008dba2  b4 ee c9 1b                                      vcmpe.f64 d1, d9
0008dba6  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
0008dbaa  2c dd                                            ble #0x8dc06
0008dbac  35 a1                                            adr r1, #0xd4
0008dbae  a4 f7 1c ed                                      blx #0x325e8
0008dbb2  33 e0                                            b #0x8dc1c
0008dbb4  ba f1 00 0f                                      cmp.w sl, #0
0008dbb8  06 d0                                            beq #0x8dbc8
0008dbba  db f8 10 10                                      ldr.w r1, [fp, #0x10]
0008dbbe  20 20                                            movs r0, #0x20
0008dbc0  a4 f7 84 ed                                      blx #0x326cc
0008dbc4  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
0008dbc8  40 68                                            ldr r0, [r0, #4]
0008dbca  03 28                                            cmp r0, #3
0008dbcc  26 d8                                            bhi #0x8dc1c
0008dbce  df e8 00 f0                                      tbb [pc, r0]
0008dbd2  02 08                                            lsrs r2, r0, #0x20
0008dbd4  0b 1e                                            subs r3, r1, #0
0008dbd6  54 f8 2a 20                                      ldr.w r2, [r4, sl, lsl #2]
0008dbda  41 46                                            mov r1, r8
0008dbdc  db f8 10 00                                      ldr.w r0, [fp, #0x10]
0008dbe0  1a e0                                            b #0x8dc18
0008dbe2  54 f8 2a 20                                      ldr.w r2, [r4, sl, lsl #2]
0008dbe6  14 e0                                            b #0x8dc12
0008dbe8  04 eb 8a 00                                      add.w r0, r4, sl, lsl #2
0008dbec  90 ed 00 0a                                      vldr s0, [r0]
0008dbf0  b5 ee 40 0a                                      vcmp.f32 s0, #0
0008dbf4  b7 ee c0 0a                                      vcvt.f64.f32 d0, s0
0008dbf8  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
0008dbfc  be d1                                            bne #0x8db7c
0008dbfe  53 ec 10 2b                                      vmov r2, r3, d0
0008dc02  db f8 10 00                                      ldr.w r0, [fp, #0x10]
0008dc06  29 46                                            mov r1, r5
0008dc08  a4 f7 ee ec                                      blx #0x325e8
0008dc0c  06 e0                                            b #0x8dc1c
0008dc0e  14 f8 0a 20                                      ldrb.w r2, [r4, sl]
0008dc12  db f8 10 00                                      ldr.w r0, [fp, #0x10]
0008dc16  31 46                                            mov r1, r6
0008dc18  a4 f7 e6 ec                                      blx #0x325e8
0008dc1c  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
0008dc20  0a f1 01 0a                                      add.w sl, sl, #1
0008dc24  01 89                                            ldrh r1, [r0, #8]
0008dc26  c1 f3 02 32                                      ubfx r2, r1, #0xc, #3
0008dc2a  c1 f3 42 21                                      ubfx r1, r1, #9, #3
0008dc2e  11 fb 02 f1                                      smulbb r1, r1, r2
0008dc32  8a 45                                            cmp sl, r1
0008dc34  be d3                                            blo #0x8dbb4
0008dc36  16 a0                                            adr r0, #0x58
0008dc38  db f8 10 30                                      ldr.w r3, [fp, #0x10]
0008dc3c  03 21                                            movs r1, #3
0008dc3e  01 22                                            movs r2, #1
0008dc40  bd ec 04 8b                                      vpop {d8, d9}
0008dc44  01 b0                                            add sp, #4
0008dc46  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
0008dc4a  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0008dc4e  23 f0 cb b8                                      b.w #0xb0de8
0008dc52  00 bf                                            nop
0008dc54  af f3 00 80                                      nop.w
0008dc58  00 00                                            movs r0, r0
0008dc5a  00 a0                                            adr r0, #0
0008dc5c  f7 c6                                            stm r6!, {r0, r1, r2, r4, r5, r6, r7}
0008dc5e  b0 3e                                            subs r6, #0xb0
0008dc60  00 00                                            movs r0, r0
0008dc62  00 00                                            movs r0, r0
0008dc64  80 84                                            strh r0, [r0, #0x24]
0008dc66  2e 41                                            asrs r6, r5
0008dc68  28 63                                            str r0, [r5, #0x30]
0008dc6a  6f 6e                                            ldr r7, [r5, #0x64]
0008dc6c  73 74                                            strb r3, [r6, #0x11]
0008dc6e  61 6e                                            ldr r1, [r4, #0x64]
0008dc70  74 20                                            movs r0, #0x74
0008dc72  00 00                                            movs r0, r0
0008dc74  20 28                                            cmp r0, #0x20
0008dc76  00 00                                            movs r0, r0
0008dc78  a1 3c                                            subs r4, #0xa1
0008dc7a  03 00                                            movs r3, r0
0008dc7c  25 64                                            str r5, [r4, #0x40]
0008dc7e  00 00                                            movs r0, r0
0008dc80  25 66                                            str r5, [r4, #0x60]
0008dc82  00 00                                            movs r0, r0
0008dc84  25 65                                            str r5, [r4, #0x50]
0008dc86  00 00                                            movs r0, r0
0008dc88  25 61                                            str r5, [r4, #0x10]
0008dc8a  00 00                                            movs r0, r0
0008dc8c  25 75                                            strb r5, [r4, #0x14]
0008dc8e  00 00                                            movs r0, r0
0008dc90  29 29                                            cmp r1, #0x29
0008dc92  20 00                                            movs r0, r4

; FUNCTION 0x0008dc94, declared_size=112, range_size=112, mode=thumb
; class-group: ir_print_visitor
; alias: _ZN16ir_print_visitor5visitEP7ir_call
; demangled: ir_print_visitor::visit(ir_call*)
; decoder-mode: thumb
0008dc94  b0 b5                                            push {r4, r5, r7, lr}
0008dc96  02 af                                            add r7, sp, #8
0008dc98  0d 46                                            mov r5, r1
0008dc9a  04 46                                            mov r4, r0
0008dc9c  68 69                                            ldr r0, [r5, #0x14]
0008dc9e  81 6b                                            ldr r1, [r0, #0x38]
0008dca0  20 69                                            ldr r0, [r4, #0x10]
0008dca2  0a 69                                            ldr r2, [r1, #0x10]
0008dca4  12 a1                                            adr r1, #0x48
0008dca6  a4 f7 a0 ec                                      blx #0x325e8
0008dcaa  28 69                                            ldr r0, [r5, #0x10]
0008dcac  18 b1                                            cbz r0, #0x8dcb6
0008dcae  01 68                                            ldr r1, [r0]
0008dcb0  8a 68                                            ldr r2, [r1, #8]
0008dcb2  21 46                                            mov r1, r4
0008dcb4  90 47                                            blx r2
0008dcb6  23 69                                            ldr r3, [r4, #0x10]
0008dcb8  10 a0                                            adr r0, #0x40
0008dcba  02 21                                            movs r1, #2
0008dcbc  01 22                                            movs r2, #1
0008dcbe  a4 f7 00 ed                                      blx #0x326c0
0008dcc2  a8 69                                            ldr r0, [r5, #0x18]
0008dcc4  04 e0                                            b #0x8dcd0
0008dcc6  01 68                                            ldr r1, [r0]
0008dcc8  8a 68                                            ldr r2, [r1, #8]
0008dcca  21 46                                            mov r1, r4
0008dccc  90 47                                            blx r2
0008dcce  28 68                                            ldr r0, [r5]
0008dcd0  00 28                                            cmp r0, #0
0008dcd2  18 bf                                            it ne
0008dcd4  04 38                                            subne r0, #4
0008dcd6  05 46                                            mov r5, r0
0008dcd8  55 f8 04 1f                                      ldr r1, [r5, #4]!
0008dcdc  00 29                                            cmp r1, #0
0008dcde  f2 d1                                            bne #0x8dcc6
0008dce0  07 a0                                            adr r0, #0x1c
0008dce2  23 69                                            ldr r3, [r4, #0x10]
0008dce4  03 21                                            movs r1, #3
0008dce6  01 22                                            movs r2, #1
0008dce8  bd e8 b0 40                                      pop.w {r4, r5, r7, lr}
0008dcec  23 f0 7c b8                                      b.w #0xb0de8
0008dcf0  28 63                                            str r0, [r5, #0x30]
0008dcf2  61 6c                                            ldr r1, [r4, #0x44]
0008dcf4  6c 20                                            movs r0, #0x6c
0008dcf6  25 73                                            strb r5, [r4, #0xc]
0008dcf8  20 00                                            movs r0, r4
0008dcfa  00 00                                            movs r0, r0
0008dcfc  20 28                                            cmp r0, #0x20
0008dcfe  00 00                                            movs r0, r0
0008dd00  29 29                                            cmp r1, #0x29
0008dd02  0a 00                                            movs r2, r1

; FUNCTION 0x0008dd04, declared_size=64, range_size=64, mode=thumb
; class-group: ir_print_visitor
; alias: _ZN16ir_print_visitor5visitEP9ir_return
; demangled: ir_print_visitor::visit(ir_return*)
; decoder-mode: thumb
0008dd04  b0 b5                                            push {r4, r5, r7, lr}
0008dd06  02 af                                            add r7, sp, #8
0008dd08  04 46                                            mov r4, r0
0008dd0a  0c a0                                            adr r0, #0x30
0008dd0c  23 69                                            ldr r3, [r4, #0x10]
0008dd0e  0d 46                                            mov r5, r1
0008dd10  07 21                                            movs r1, #7
0008dd12  01 22                                            movs r2, #1
0008dd14  a4 f7 d4 ec                                      blx #0x326c0
0008dd18  2d 69                                            ldr r5, [r5, #0x10]
0008dd1a  45 b1                                            cbz r5, #0x8dd2e
0008dd1c  21 69                                            ldr r1, [r4, #0x10]
0008dd1e  20 20                                            movs r0, #0x20
0008dd20  a4 f7 d4 ec                                      blx #0x326cc
0008dd24  28 68                                            ldr r0, [r5]
0008dd26  21 46                                            mov r1, r4
0008dd28  82 68                                            ldr r2, [r0, #8]
0008dd2a  28 46                                            mov r0, r5
0008dd2c  90 47                                            blx r2
0008dd2e  21 69                                            ldr r1, [r4, #0x10]
0008dd30  29 20                                            movs r0, #0x29
0008dd32  bd e8 b0 40                                      pop.w {r4, r5, r7, lr}
0008dd36  22 f0 8f be                                      b.w #0xb0a58
0008dd3a  00 bf                                            nop
0008dd3c  28 72                                            strb r0, [r5, #8]
0008dd3e  65 74                                            strb r5, [r4, #0x11]
0008dd40  75 72                                            strb r5, [r6, #9]
0008dd42  6e 00                                            lsls r6, r5, #1

; FUNCTION 0x0008dd44, declared_size=68, range_size=68, mode=thumb
; class-group: ir_print_visitor
; alias: _ZN16ir_print_visitor5visitEP10ir_discard
; demangled: ir_print_visitor::visit(ir_discard*)
; decoder-mode: thumb
0008dd44  b0 b5                                            push {r4, r5, r7, lr}
0008dd46  02 af                                            add r7, sp, #8
0008dd48  04 46                                            mov r4, r0
0008dd4a  0c a0                                            adr r0, #0x30
0008dd4c  23 69                                            ldr r3, [r4, #0x10]
0008dd4e  0d 46                                            mov r5, r1
0008dd50  09 21                                            movs r1, #9
0008dd52  01 22                                            movs r2, #1
0008dd54  a4 f7 b4 ec                                      blx #0x326c0
0008dd58  28 69                                            ldr r0, [r5, #0x10]
0008dd5a  40 b1                                            cbz r0, #0x8dd6e
0008dd5c  21 69                                            ldr r1, [r4, #0x10]
0008dd5e  20 20                                            movs r0, #0x20
0008dd60  a4 f7 b4 ec                                      blx #0x326cc
0008dd64  28 69                                            ldr r0, [r5, #0x10]
0008dd66  01 68                                            ldr r1, [r0]
0008dd68  8a 68                                            ldr r2, [r1, #8]
0008dd6a  21 46                                            mov r1, r4
0008dd6c  90 47                                            blx r2
0008dd6e  21 69                                            ldr r1, [r4, #0x10]
0008dd70  29 20                                            movs r0, #0x29
0008dd72  bd e8 b0 40                                      pop.w {r4, r5, r7, lr}
0008dd76  22 f0 6f be                                      b.w #0xb0a58
0008dd7a  00 bf                                            nop
0008dd7c  28 64                                            str r0, [r5, #0x40]
0008dd7e  69 73                                            strb r1, [r5, #0xd]
0008dd80  63 61                                            str r3, [r4, #0x14]
0008dd82  72 64                                            str r2, [r6, #0x44]
0008dd84  20 00                                            movs r0, r4
0008dd86  00 00                                            movs r0, r0

; FUNCTION 0x0008dd88, declared_size=300, range_size=300, mode=thumb
; class-group: ir_print_visitor
; alias: _ZN16ir_print_visitor5visitEP5ir_if
; demangled: ir_print_visitor::visit(ir_if*)
; decoder-mode: thumb
0008dd88  f0 b5                                            push {r4, r5, r6, r7, lr}
0008dd8a  03 af                                            add r7, sp, #0xc
0008dd8c  4d f8 04 8d                                      str r8, [sp, #-0x4]!
0008dd90  04 46                                            mov r4, r0
0008dd92  41 a0                                            adr r0, #0x104
0008dd94  23 69                                            ldr r3, [r4, #0x10]
0008dd96  88 46                                            mov r8, r1
0008dd98  04 21                                            movs r1, #4
0008dd9a  01 22                                            movs r2, #1
0008dd9c  a4 f7 90 ec                                      blx #0x326c0
0008dda0  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
0008dda4  01 68                                            ldr r1, [r0]
0008dda6  8a 68                                            ldr r2, [r1, #8]
0008dda8  21 46                                            mov r1, r4
0008ddaa  90 47                                            blx r2
0008ddac  23 69                                            ldr r3, [r4, #0x10]
0008ddae  3c a0                                            adr r0, #0xf0
0008ddb0  02 21                                            movs r1, #2
0008ddb2  01 22                                            movs r2, #1
0008ddb4  a4 f7 84 ec                                      blx #0x326c0
0008ddb8  60 69                                            ldr r0, [r4, #0x14]
0008ddba  01 30                                            adds r0, #1
0008ddbc  60 61                                            str r0, [r4, #0x14]
0008ddbe  d8 f8 14 60                                      ldr.w r6, [r8, #0x14]
0008ddc2  00 2e                                            cmp r6, #0
0008ddc4  18 bf                                            it ne
0008ddc6  04 3e                                            subne r6, #4
0008ddc8  35 46                                            mov r5, r6
0008ddca  55 f8 04 1f                                      ldr r1, [r5, #4]!
0008ddce  a9 b1                                            cbz r1, #0x8ddfc
0008ddd0  20 46                                            mov r0, r4
0008ddd2  a6 f7 e4 ec                                      blx #0x3479c
0008ddd6  30 68                                            ldr r0, [r6]
0008ddd8  21 46                                            mov r1, r4
0008ddda  82 68                                            ldr r2, [r0, #8]
0008dddc  30 46                                            mov r0, r6
0008ddde  90 47                                            blx r2
0008dde0  21 69                                            ldr r1, [r4, #0x10]
0008dde2  0a 20                                            movs r0, #0xa
0008dde4  a4 f7 72 ec                                      blx #0x326cc
0008dde8  2e 68                                            ldr r6, [r5]
0008ddea  00 2e                                            cmp r6, #0
0008ddec  18 bf                                            it ne
0008ddee  04 3e                                            subne r6, #4
0008ddf0  35 46                                            mov r5, r6
0008ddf2  55 f8 04 0f                                      ldr r0, [r5, #4]!
0008ddf6  00 28                                            cmp r0, #0
0008ddf8  ea d1                                            bne #0x8ddd0
0008ddfa  60 69                                            ldr r0, [r4, #0x14]
0008ddfc  01 38                                            subs r0, #1
0008ddfe  60 61                                            str r0, [r4, #0x14]
0008de00  20 46                                            mov r0, r4
0008de02  a6 f7 cc ec                                      blx #0x3479c
0008de06  23 69                                            ldr r3, [r4, #0x10]
0008de08  26 a0                                            adr r0, #0x98
0008de0a  02 21                                            movs r1, #2
0008de0c  01 22                                            movs r2, #1
0008de0e  a4 f7 58 ec                                      blx #0x326c0
0008de12  20 46                                            mov r0, r4
0008de14  a6 f7 c2 ec                                      blx #0x3479c
0008de18  23 69                                            ldr r3, [r4, #0x10]
0008de1a  08 f1 24 01                                      add.w r1, r8, #0x24
0008de1e  d8 f8 20 00                                      ldr.w r0, [r8, #0x20]
0008de22  88 42                                            cmp r0, r1
0008de24  2f d0                                            beq #0x8de86
0008de26  1e a0                                            adr r0, #0x78
0008de28  02 21                                            movs r1, #2
0008de2a  01 22                                            movs r2, #1
0008de2c  a4 f7 48 ec                                      blx #0x326c0
0008de30  60 69                                            ldr r0, [r4, #0x14]
0008de32  01 30                                            adds r0, #1
0008de34  60 61                                            str r0, [r4, #0x14]
0008de36  d8 f8 20 50                                      ldr.w r5, [r8, #0x20]
0008de3a  00 2d                                            cmp r5, #0
0008de3c  18 bf                                            it ne
0008de3e  04 3d                                            subne r5, #4
0008de40  2e 46                                            mov r6, r5
0008de42  56 f8 04 1f                                      ldr r1, [r6, #4]!
0008de46  a9 b1                                            cbz r1, #0x8de74
0008de48  20 46                                            mov r0, r4
0008de4a  a6 f7 a8 ec                                      blx #0x3479c
0008de4e  28 68                                            ldr r0, [r5]
0008de50  21 46                                            mov r1, r4
0008de52  82 68                                            ldr r2, [r0, #8]
0008de54  28 46                                            mov r0, r5
0008de56  90 47                                            blx r2
0008de58  21 69                                            ldr r1, [r4, #0x10]
0008de5a  0a 20                                            movs r0, #0xa
0008de5c  a4 f7 36 ec                                      blx #0x326cc
0008de60  35 68                                            ldr r5, [r6]
0008de62  00 2d                                            cmp r5, #0
0008de64  18 bf                                            it ne
0008de66  04 3d                                            subne r5, #4
0008de68  2e 46                                            mov r6, r5
0008de6a  56 f8 04 0f                                      ldr r0, [r6, #4]!
0008de6e  00 28                                            cmp r0, #0
0008de70  ea d1                                            bne #0x8de48
0008de72  60 69                                            ldr r0, [r4, #0x14]
0008de74  01 38                                            subs r0, #1
0008de76  60 61                                            str r0, [r4, #0x14]
0008de78  20 46                                            mov r0, r4
0008de7a  a6 f7 90 ec                                      blx #0x3479c
0008de7e  0a a0                                            adr r0, #0x28
0008de80  23 69                                            ldr r3, [r4, #0x10]
0008de82  03 21                                            movs r1, #3
0008de84  01 e0                                            b #0x8de8a
0008de86  09 a0                                            adr r0, #0x24
0008de88  04 21                                            movs r1, #4
0008de8a  01 22                                            movs r2, #1
0008de8c  5d f8 04 8b                                      ldr r8, [sp], #4
0008de90  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0008de94  22 f0 a8 bf                                      b.w #0xb0de8
0008de98  28 69                                            ldr r0, [r5, #0x10]
0008de9a  66 20                                            movs r0, #0x66
0008de9c  00 00                                            movs r0, r0
0008de9e  00 00                                            movs r0, r0
0008dea0  28 0a                                            lsrs r0, r5, #8
0008dea2  00 00                                            movs r0, r0
0008dea4  29 0a                                            lsrs r1, r5, #8
0008dea6  00 00                                            movs r0, r0
0008dea8  29 29                                            cmp r1, #0x29
0008deaa  0a 00                                            movs r2, r1
0008deac  28 29                                            cmp r1, #0x28
0008deae  29 0a                                            lsrs r1, r5, #8
0008deb0  00 00                                            movs r0, r0
0008deb2  00 00                                            movs r0, r0

; FUNCTION 0x0008deb4, declared_size=136, range_size=136, mode=thumb
; class-group: ir_print_visitor
; alias: _ZN16ir_print_visitor5visitEP7ir_loop
; demangled: ir_print_visitor::visit(ir_loop*)
; decoder-mode: thumb
0008deb4  f0 b5                                            push {r4, r5, r6, r7, lr}
0008deb6  03 af                                            add r7, sp, #0xc
0008deb8  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0008debc  04 46                                            mov r4, r0
0008debe  1b a0                                            adr r0, #0x6c
0008dec0  23 69                                            ldr r3, [r4, #0x10]
0008dec2  0d 46                                            mov r5, r1
0008dec4  08 21                                            movs r1, #8
0008dec6  01 22                                            movs r2, #1
0008dec8  a4 f7 fa eb                                      blx #0x326c0
0008decc  60 69                                            ldr r0, [r4, #0x14]
0008dece  01 30                                            adds r0, #1
0008ded0  60 61                                            str r0, [r4, #0x14]
0008ded2  2d 69                                            ldr r5, [r5, #0x10]
0008ded4  00 2d                                            cmp r5, #0
0008ded6  18 bf                                            it ne
0008ded8  04 3d                                            subne r5, #4
0008deda  2e 46                                            mov r6, r5
0008dedc  56 f8 04 1f                                      ldr r1, [r6, #4]!
0008dee0  a9 b1                                            cbz r1, #0x8df0e
0008dee2  20 46                                            mov r0, r4
0008dee4  a6 f7 5a ec                                      blx #0x3479c
0008dee8  28 68                                            ldr r0, [r5]
0008deea  21 46                                            mov r1, r4
0008deec  82 68                                            ldr r2, [r0, #8]
0008deee  28 46                                            mov r0, r5
0008def0  90 47                                            blx r2
0008def2  21 69                                            ldr r1, [r4, #0x10]
0008def4  0a 20                                            movs r0, #0xa
0008def6  a4 f7 ea eb                                      blx #0x326cc
0008defa  35 68                                            ldr r5, [r6]
0008defc  00 2d                                            cmp r5, #0
0008defe  18 bf                                            it ne
0008df00  04 3d                                            subne r5, #4
0008df02  2e 46                                            mov r6, r5
0008df04  56 f8 04 0f                                      ldr r0, [r6, #4]!
0008df08  00 28                                            cmp r0, #0
0008df0a  ea d1                                            bne #0x8dee2
0008df0c  60 69                                            ldr r0, [r4, #0x14]
0008df0e  01 38                                            subs r0, #1
0008df10  60 61                                            str r0, [r4, #0x14]
0008df12  20 46                                            mov r0, r4
0008df14  a6 f7 42 ec                                      blx #0x3479c
0008df18  07 a0                                            adr r0, #0x1c
0008df1a  23 69                                            ldr r3, [r4, #0x10]
0008df1c  03 21                                            movs r1, #3
0008df1e  01 22                                            movs r2, #1
0008df20  5d f8 04 bb                                      ldr fp, [sp], #4
0008df24  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
0008df28  22 f0 5e bf                                      b.w #0xb0de8
0008df2c  28 6c                                            ldr r0, [r5, #0x40]
0008df2e  6f 6f                                            ldr r7, [r5, #0x74]
0008df30  70 20                                            movs r0, #0x70
0008df32  28 0a                                            lsrs r0, r5, #8
0008df34  00 00                                            movs r0, r0
0008df36  00 00                                            movs r0, r0
0008df38  29 29                                            cmp r1, #0x29
0008df3a  0a 00                                            movs r2, r1

; FUNCTION 0x0008df3c, declared_size=44, range_size=44, mode=thumb
; class-group: ir_print_visitor
; alias: _ZN16ir_print_visitor5visitEP12ir_loop_jump
; demangled: ir_print_visitor::visit(ir_loop_jump*)
; decoder-mode: thumb
0008df3c  0b 69                                            ldr r3, [r1, #0x10]
0008df3e  0f f2 14 0c                                      addw ip, pc, #0x14
0008df42  07 a2                                            adr r2, #0x1c
0008df44  01 69                                            ldr r1, [r0, #0x10]
0008df46  00 2b                                            cmp r3, #0
0008df48  18 bf                                            it ne
0008df4a  62 46                                            movne r2, ip
0008df4c  10 46                                            mov r0, r2
0008df4e  22 f0 5b bf                                      b.w #0xb0e08
0008df52  00 bf                                            nop
0008df54  63 6f                                            ldr r3, [r4, #0x74]
0008df56  6e 74                                            strb r6, [r5, #0x11]
0008df58  69 6e                                            ldr r1, [r5, #0x64]
0008df5a  75 65                                            str r5, [r6, #0x54]
0008df5c  00 00                                            movs r0, r0
0008df5e  00 00                                            movs r0, r0
0008df60  62 72                                            strb r2, [r4, #9]
0008df62  65 61                                            str r5, [r4, #0x14]
0008df64  6b 00                                            lsls r3, r5, #1
0008df66  00 00                                            movs r0, r0

; FUNCTION 0x0008df68, declared_size=2, range_size=2, mode=thumb
; class-group: ir_print_visitor
; alias: _ZN16ir_print_visitor5visitEP22ir_precision_statement
; demangled: ir_print_visitor::visit(ir_precision_statement*)
; decoder-mode: thumb
0008df68  70 47                                            bx lr

; FUNCTION 0x0008df6a, declared_size=2, range_size=2, mode=thumb
; class-group: ir_print_visitor
; alias: _ZN16ir_print_visitor5visitEP21ir_typedecl_statement
; demangled: ir_print_visitor::visit(ir_typedecl_statement*)
; decoder-mode: thumb
0008df6a  70 47                                            bx lr

; FUNCTION 0x0008df6c, declared_size=68, range_size=68, mode=thumb
; class-group: ir_print_visitor
; alias: _ZN16ir_print_visitor5visitEP14ir_emit_vertex
; demangled: ir_print_visitor::visit(ir_emit_vertex*)
; decoder-mode: thumb
0008df6c  b0 b5                                            push {r4, r5, r7, lr}
0008df6e  02 af                                            add r7, sp, #8
0008df70  05 46                                            mov r5, r0
0008df72  0a a0                                            adr r0, #0x28
0008df74  2b 69                                            ldr r3, [r5, #0x10]
0008df76  0c 46                                            mov r4, r1
0008df78  0d 21                                            movs r1, #0xd
0008df7a  01 22                                            movs r2, #1
0008df7c  a4 f7 a0 eb                                      blx #0x326c0
0008df80  20 69                                            ldr r0, [r4, #0x10]
0008df82  01 68                                            ldr r1, [r0]
0008df84  8a 68                                            ldr r2, [r1, #8]
0008df86  29 46                                            mov r1, r5
0008df88  90 47                                            blx r2
0008df8a  08 a0                                            adr r0, #0x20
0008df8c  2b 69                                            ldr r3, [r5, #0x10]
0008df8e  02 21                                            movs r1, #2
0008df90  01 22                                            movs r2, #1
0008df92  bd e8 b0 40                                      pop.w {r4, r5, r7, lr}
0008df96  22 f0 27 bf                                      b.w #0xb0de8
0008df9a  00 bf                                            nop
0008df9c  28 65                                            str r0, [r5, #0x50]
0008df9e  6d 69                                            ldr r5, [r5, #0x14]
0008dfa0  74 2d                                            cmp r5, #0x74
0008dfa2  76 65                                            str r6, [r6, #0x54]
0008dfa4  72 74                                            strb r2, [r6, #0x11]
0008dfa6  65 78                                            ldrb r5, [r4, #1]
0008dfa8  20 00                                            movs r0, r4
0008dfaa  00 00                                            movs r0, r0
0008dfac  29 0a                                            lsrs r1, r5, #8
0008dfae  00 00                                            movs r0, r0

; FUNCTION 0x0008dfb0, declared_size=68, range_size=68, mode=thumb
; class-group: ir_print_visitor
; alias: _ZN16ir_print_visitor5visitEP16ir_end_primitive
; demangled: ir_print_visitor::visit(ir_end_primitive*)
; decoder-mode: thumb
0008dfb0  b0 b5                                            push {r4, r5, r7, lr}
0008dfb2  02 af                                            add r7, sp, #8
0008dfb4  05 46                                            mov r5, r0
0008dfb6  0a a0                                            adr r0, #0x28
0008dfb8  2b 69                                            ldr r3, [r5, #0x10]
0008dfba  0c 46                                            mov r4, r1
0008dfbc  0f 21                                            movs r1, #0xf
0008dfbe  01 22                                            movs r2, #1
0008dfc0  a4 f7 7e eb                                      blx #0x326c0
0008dfc4  20 69                                            ldr r0, [r4, #0x10]
0008dfc6  01 68                                            ldr r1, [r0]
0008dfc8  8a 68                                            ldr r2, [r1, #8]
0008dfca  29 46                                            mov r1, r5
0008dfcc  90 47                                            blx r2
0008dfce  08 a0                                            adr r0, #0x20
0008dfd0  2b 69                                            ldr r3, [r5, #0x10]
0008dfd2  02 21                                            movs r1, #2
0008dfd4  01 22                                            movs r2, #1
0008dfd6  bd e8 b0 40                                      pop.w {r4, r5, r7, lr}
0008dfda  22 f0 05 bf                                      b.w #0xb0de8
0008dfde  00 bf                                            nop
0008dfe0  28 65                                            str r0, [r5, #0x50]
0008dfe2  6e 64                                            str r6, [r5, #0x44]
0008dfe4  2d 70                                            strb r5, [r5]
0008dfe6  72 69                                            ldr r2, [r6, #0x14]
0008dfe8  6d 69                                            ldr r5, [r5, #0x14]
0008dfea  74 69                                            ldr r4, [r6, #0x14]
0008dfec  76 65                                            str r6, [r6, #0x54]
0008dfee  20 00                                            movs r0, r4
0008dff0  29 0a                                            lsrs r1, r5, #8
0008dff2  00 00                                            movs r0, r0
