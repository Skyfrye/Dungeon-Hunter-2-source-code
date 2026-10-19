; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0008dff4, declared_size=72, range_size=72, mode=thumb
; class-group: ir_rvalue_base_visitor
; alias: _ZN22ir_rvalue_base_visitor12rvalue_visitEP13ir_expression
; demangled: ir_rvalue_base_visitor::rvalue_visit(ir_expression*)
; decoder-mode: thumb
0008dff4  f0 b5                                            push {r4, r5, r6, r7, lr}
0008dff6  03 af                                            add r7, sp, #0xc
0008dff8  4d f8 04 8d                                      str r8, [sp, #-0x4]!
0008dffc  88 46                                            mov r8, r1
0008dffe  08 f1 1c 06                                      add.w r6, r8, #0x1c
0008e002  05 46                                            mov r5, r0
0008e004  00 24                                            movs r4, #0
0008e006  07 e0                                            b #0x8e018
0008e008  28 68                                            ldr r0, [r5]
0008e00a  31 46                                            mov r1, r6
0008e00c  d0 f8 94 20                                      ldr.w r2, [r0, #0x94]
0008e010  28 46                                            mov r0, r5
0008e012  90 47                                            blx r2
0008e014  04 36                                            adds r6, #4
0008e016  01 34                                            adds r4, #1
0008e018  d8 f8 18 00                                      ldr.w r0, [r8, #0x18]
0008e01c  69 28                                            cmp r0, #0x69
0008e01e  05 d1                                            bne #0x8e02c
0008e020  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
0008e024  00 89                                            ldrh r0, [r0, #8]
0008e026  c0 f3 42 20                                      ubfx r0, r0, #9, #3
0008e02a  01 e0                                            b #0x8e030
0008e02c  a5 f7 82 eb                                      blx #0x33734
0008e030  84 42                                            cmp r4, r0
0008e032  e9 d3                                            blo #0x8e008
0008e034  00 20                                            movs r0, #0
0008e036  5d f8 04 8b                                      ldr r8, [sp], #4
0008e03a  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0008e03c, declared_size=96, range_size=96, mode=thumb
; class-group: ir_rvalue_base_visitor
; alias: _ZN22ir_rvalue_base_visitor12rvalue_visitEP10ir_texture
; demangled: ir_rvalue_base_visitor::rvalue_visit(ir_texture*)
; decoder-mode: thumb
0008e03c  b0 b5                                            push {r4, r5, r7, lr}
0008e03e  02 af                                            add r7, sp, #8
0008e040  04 46                                            mov r4, r0
0008e042  0d 46                                            mov r5, r1
0008e044  20 68                                            ldr r0, [r4]
0008e046  05 f1 20 01                                      add.w r1, r5, #0x20
0008e04a  d0 f8 94 20                                      ldr.w r2, [r0, #0x94]
0008e04e  20 46                                            mov r0, r4
0008e050  90 47                                            blx r2
0008e052  20 68                                            ldr r0, [r4]
0008e054  05 f1 24 01                                      add.w r1, r5, #0x24
0008e058  d0 f8 94 20                                      ldr.w r2, [r0, #0x94]
0008e05c  20 46                                            mov r0, r4
0008e05e  90 47                                            blx r2
0008e060  a8 69                                            ldr r0, [r5, #0x18]
0008e062  01 38                                            subs r0, #1
0008e064  07 28                                            cmp r0, #7
0008e066  0c d8                                            bhi #0x8e082
0008e068  df e8 00 f0                                      tbb [pc, r0]
0008e06c  04 04                                            lsls r4, r0, #0x10
0008e06e  0d 04                                            lsls r5, r1, #0x10
0008e070  04 04                                            lsls r4, r0, #0x10
0008e072  0b 04                                            lsls r3, r1, #0x10
0008e074  20 68                                            ldr r0, [r4]
0008e076  05 f1 28 01                                      add.w r1, r5, #0x28
0008e07a  d0 f8 94 20                                      ldr.w r2, [r0, #0x94]
0008e07e  20 46                                            mov r0, r4
0008e080  90 47                                            blx r2
0008e082  00 20                                            movs r0, #0
0008e084  b0 bd                                            pop {r4, r5, r7, pc}
0008e086  20 68                                            ldr r0, [r4]
0008e088  05 f1 28 01                                      add.w r1, r5, #0x28
0008e08c  d0 f8 94 20                                      ldr.w r2, [r0, #0x94]
0008e090  20 46                                            mov r0, r4
0008e092  90 47                                            blx r2
0008e094  20 68                                            ldr r0, [r4]
0008e096  05 f1 2c 01                                      add.w r1, r5, #0x2c
0008e09a  ee e7                                            b #0x8e07a

; FUNCTION 0x0008e09c, declared_size=18, range_size=18, mode=thumb
; class-group: ir_rvalue_base_visitor
; alias: _ZN22ir_rvalue_base_visitor12rvalue_visitEP10ir_swizzle
; demangled: ir_rvalue_base_visitor::rvalue_visit(ir_swizzle*)
; decoder-mode: thumb
0008e09c  80 b5                                            push {r7, lr}
0008e09e  6f 46                                            mov r7, sp
0008e0a0  02 68                                            ldr r2, [r0]
0008e0a2  18 31                                            adds r1, #0x18
0008e0a4  d2 f8 94 20                                      ldr.w r2, [r2, #0x94]
0008e0a8  90 47                                            blx r2
0008e0aa  00 20                                            movs r0, #0
0008e0ac  80 bd                                            pop {r7, pc}

; FUNCTION 0x0008e0ae, declared_size=56, range_size=56, mode=thumb
; class-group: ir_rvalue_base_visitor
; alias: _ZN22ir_rvalue_base_visitor12rvalue_visitEP20ir_dereference_array
; demangled: ir_rvalue_base_visitor::rvalue_visit(ir_dereference_array*)
; decoder-mode: thumb
0008e0ae  f0 b5                                            push {r4, r5, r6, r7, lr}
0008e0b0  03 af                                            add r7, sp, #0xc
0008e0b2  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0008e0b6  05 46                                            mov r5, r0
0008e0b8  0c 46                                            mov r4, r1
0008e0ba  28 68                                            ldr r0, [r5]
0008e0bc  00 21                                            movs r1, #0
0008e0be  2e 7e                                            ldrb r6, [r5, #0x18]
0008e0c0  29 76                                            strb r1, [r5, #0x18]
0008e0c2  04 f1 1c 01                                      add.w r1, r4, #0x1c
0008e0c6  d0 f8 94 20                                      ldr.w r2, [r0, #0x94]
0008e0ca  28 46                                            mov r0, r5
0008e0cc  90 47                                            blx r2
0008e0ce  28 68                                            ldr r0, [r5]
0008e0d0  04 f1 18 01                                      add.w r1, r4, #0x18
0008e0d4  2e 76                                            strb r6, [r5, #0x18]
0008e0d6  d0 f8 94 20                                      ldr.w r2, [r0, #0x94]
0008e0da  28 46                                            mov r0, r5
0008e0dc  90 47                                            blx r2
0008e0de  00 20                                            movs r0, #0
0008e0e0  5d f8 04 bb                                      ldr fp, [sp], #4
0008e0e4  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0008e0e6, declared_size=18, range_size=18, mode=thumb
; class-group: ir_rvalue_base_visitor
; alias: _ZN22ir_rvalue_base_visitor12rvalue_visitEP21ir_dereference_record
; demangled: ir_rvalue_base_visitor::rvalue_visit(ir_dereference_record*)
; decoder-mode: thumb
0008e0e6  80 b5                                            push {r7, lr}
0008e0e8  6f 46                                            mov r7, sp
0008e0ea  02 68                                            ldr r2, [r0]
0008e0ec  18 31                                            adds r1, #0x18
0008e0ee  d2 f8 94 20                                      ldr.w r2, [r2, #0x94]
0008e0f2  90 47                                            blx r2
0008e0f4  00 20                                            movs r0, #0
0008e0f6  80 bd                                            pop {r7, pc}

; FUNCTION 0x0008e0f8, declared_size=40, range_size=40, mode=thumb
; class-group: ir_rvalue_base_visitor
; alias: _ZN22ir_rvalue_base_visitor12rvalue_visitEP13ir_assignment
; demangled: ir_rvalue_base_visitor::rvalue_visit(ir_assignment*)
; decoder-mode: thumb
0008e0f8  b0 b5                                            push {r4, r5, r7, lr}
0008e0fa  02 af                                            add r7, sp, #8
0008e0fc  05 46                                            mov r5, r0
0008e0fe  0c 46                                            mov r4, r1
0008e100  28 68                                            ldr r0, [r5]
0008e102  04 f1 14 01                                      add.w r1, r4, #0x14
0008e106  d0 f8 94 20                                      ldr.w r2, [r0, #0x94]
0008e10a  28 46                                            mov r0, r5
0008e10c  90 47                                            blx r2
0008e10e  28 68                                            ldr r0, [r5]
0008e110  04 f1 18 01                                      add.w r1, r4, #0x18
0008e114  d0 f8 94 20                                      ldr.w r2, [r0, #0x94]
0008e118  28 46                                            mov r0, r5
0008e11a  90 47                                            blx r2
0008e11c  00 20                                            movs r0, #0
0008e11e  b0 bd                                            pop {r4, r5, r7, pc}

; FUNCTION 0x0008e120, declared_size=136, range_size=136, mode=thumb
; class-group: ir_rvalue_base_visitor
; alias: _ZN22ir_rvalue_base_visitor12rvalue_visitEP7ir_call
; demangled: ir_rvalue_base_visitor::rvalue_visit(ir_call*)
; decoder-mode: thumb
0008e120  f0 b5                                            push {r4, r5, r6, r7, lr}
0008e122  03 af                                            add r7, sp, #0xc
0008e124  4d f8 04 8d                                      str r8, [sp, #-0x4]!
0008e128  82 b0                                            sub sp, #8
0008e12a  04 46                                            mov r4, r0
0008e12c  1c 48                                            ldr r0, [pc, #0x70]
0008e12e  78 44                                            add r0, pc
0008e130  00 68                                            ldr r0, [r0]
0008e132  00 68                                            ldr r0, [r0]
0008e134  01 90                                            str r0, [sp, #4]
0008e136  8e 69                                            ldr r6, [r1, #0x18]
0008e138  00 2e                                            cmp r6, #0
0008e13a  18 bf                                            it ne
0008e13c  04 3e                                            subne r6, #4
0008e13e  70 68                                            ldr r0, [r6, #4]
0008e140  f8 b1                                            cbz r0, #0x8e182
0008e142  04 38                                            subs r0, #4
0008e144  1d d0                                            beq #0x8e182
0008e146  e8 46                                            mov r8, sp
0008e148  00 96                                            str r6, [sp]
0008e14a  05 46                                            mov r5, r0
0008e14c  20 68                                            ldr r0, [r4]
0008e14e  41 46                                            mov r1, r8
0008e150  d0 f8 94 20                                      ldr.w r2, [r0, #0x94]
0008e154  20 46                                            mov r0, r4
0008e156  90 47                                            blx r2
0008e158  00 98                                            ldr r0, [sp]
0008e15a  b0 42                                            cmp r0, r6
0008e15c  0a d0                                            beq #0x8e174
0008e15e  b1 68                                            ldr r1, [r6, #8]
0008e160  00 28                                            cmp r0, #0
0008e162  18 bf                                            it ne
0008e164  04 30                                            addne r0, #4
0008e166  41 60                                            str r1, [r0, #4]
0008e168  71 68                                            ldr r1, [r6, #4]
0008e16a  01 60                                            str r1, [r0]
0008e16c  b1 68                                            ldr r1, [r6, #8]
0008e16e  08 60                                            str r0, [r1]
0008e170  71 68                                            ldr r1, [r6, #4]
0008e172  48 60                                            str r0, [r1, #4]
0008e174  68 68                                            ldr r0, [r5, #4]
0008e176  2e 46                                            mov r6, r5
0008e178  00 28                                            cmp r0, #0
0008e17a  18 bf                                            it ne
0008e17c  04 38                                            subne r0, #4
0008e17e  00 28                                            cmp r0, #0
0008e180  e2 d1                                            bne #0x8e148
0008e182  08 48                                            ldr r0, [pc, #0x20]
0008e184  01 99                                            ldr r1, [sp, #4]
0008e186  78 44                                            add r0, pc
0008e188  00 68                                            ldr r0, [r0]
0008e18a  00 68                                            ldr r0, [r0]
0008e18c  40 1a                                            subs r0, r0, r1
0008e18e  01 bf                                            itttt eq
0008e190  00 20                                            moveq r0, #0
0008e192  02 b0                                            addeq sp, #8
0008e194  5d f8 04 8b                                      ldreq r8, [sp], #4
0008e198  f0 bd                                            popeq {r4, r5, r6, r7, pc}
0008e19a  a3 f7 62 ef                                      blx #0x32060
0008e19e  00 bf                                            nop
0008e1a0  86 e3                                            b #0x8e8b0
0008e1a2  04 00                                            movs r4, r0
0008e1a4  2e e3                                            b #0x8e804
0008e1a6  04 00                                            movs r4, r0

; FUNCTION 0x0008e1a8, declared_size=18, range_size=18, mode=thumb
; class-group: ir_rvalue_base_visitor
; alias: _ZN22ir_rvalue_base_visitor12rvalue_visitEP9ir_return
; demangled: ir_rvalue_base_visitor::rvalue_visit(ir_return*)
; decoder-mode: thumb
0008e1a8  80 b5                                            push {r7, lr}
0008e1aa  6f 46                                            mov r7, sp
0008e1ac  02 68                                            ldr r2, [r0]
0008e1ae  10 31                                            adds r1, #0x10
0008e1b0  d2 f8 94 20                                      ldr.w r2, [r2, #0x94]
0008e1b4  90 47                                            blx r2
0008e1b6  00 20                                            movs r0, #0
0008e1b8  80 bd                                            pop {r7, pc}

; FUNCTION 0x0008e1ba, declared_size=18, range_size=18, mode=thumb
; class-group: ir_rvalue_base_visitor
; alias: _ZN22ir_rvalue_base_visitor12rvalue_visitEP5ir_if
; demangled: ir_rvalue_base_visitor::rvalue_visit(ir_if*)
; decoder-mode: thumb
0008e1ba  80 b5                                            push {r7, lr}
0008e1bc  6f 46                                            mov r7, sp
0008e1be  02 68                                            ldr r2, [r0]
0008e1c0  10 31                                            adds r1, #0x10
0008e1c2  d2 f8 94 20                                      ldr.w r2, [r2, #0x94]
0008e1c6  90 47                                            blx r2
0008e1c8  00 20                                            movs r0, #0
0008e1ca  80 bd                                            pop {r7, pc}

; FUNCTION 0x0008e1cc, declared_size=18, range_size=18, mode=thumb
; class-group: ir_rvalue_base_visitor
; alias: _ZN22ir_rvalue_base_visitor12rvalue_visitEP14ir_emit_vertex
; demangled: ir_rvalue_base_visitor::rvalue_visit(ir_emit_vertex*)
; decoder-mode: thumb
0008e1cc  80 b5                                            push {r7, lr}
0008e1ce  6f 46                                            mov r7, sp
0008e1d0  02 68                                            ldr r2, [r0]
0008e1d2  10 31                                            adds r1, #0x10
0008e1d4  d2 f8 94 20                                      ldr.w r2, [r2, #0x94]
0008e1d8  90 47                                            blx r2
0008e1da  00 20                                            movs r0, #0
0008e1dc  80 bd                                            pop {r7, pc}

; FUNCTION 0x0008e1de, declared_size=18, range_size=18, mode=thumb
; class-group: ir_rvalue_base_visitor
; alias: _ZN22ir_rvalue_base_visitor12rvalue_visitEP16ir_end_primitive
; demangled: ir_rvalue_base_visitor::rvalue_visit(ir_end_primitive*)
; decoder-mode: thumb
0008e1de  80 b5                                            push {r7, lr}
0008e1e0  6f 46                                            mov r7, sp
0008e1e2  02 68                                            ldr r2, [r0]
0008e1e4  10 31                                            adds r1, #0x10
0008e1e6  d2 f8 94 20                                      ldr.w r2, [r2, #0x94]
0008e1ea  90 47                                            blx r2
0008e1ec  00 20                                            movs r0, #0
0008e1ee  80 bd                                            pop {r7, pc}
