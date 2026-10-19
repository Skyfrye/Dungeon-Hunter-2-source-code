; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000a5c20, declared_size=112, range_size=112, mode=thumb
; class-group: ir_vector_splitting_visitor
; alias: _ZN27ir_vector_splitting_visitor12split_rvalueEPP9ir_rvalue
; demangled: ir_vector_splitting_visitor::split_rvalue(ir_rvalue**)
; decoder-mode: thumb
000a5c20  f0 b5                                            push {r4, r5, r6, r7, lr}
000a5c22  03 af                                            add r7, sp, #0xc
000a5c24  4d f8 04 8d                                      str r8, [sp, #-0x4]!
000a5c28  0c 46                                            mov r4, r1
000a5c2a  06 46                                            mov r6, r0
000a5c2c  25 68                                            ldr r5, [r4]
000a5c2e  4d b3                                            cbz r5, #0xa5c84
000a5c30  e8 68                                            ldr r0, [r5, #0xc]
000a5c32  05 28                                            cmp r0, #5
000a5c34  26 d1                                            bne #0xa5c84
000a5c36  28 68                                            ldr r0, [r5]
000a5c38  01 6a                                            ldr r1, [r0, #0x20]
000a5c3a  28 46                                            mov r0, r5
000a5c3c  88 47                                            blx r1
000a5c3e  08 b3                                            cbz r0, #0xa5c84
000a5c40  f1 69                                            ldr r1, [r6, #0x1c]
000a5c42  0e 68                                            ldr r6, [r1]
000a5c44  03 e0                                            b #0xa5c4e
000a5c46  b1 68                                            ldr r1, [r6, #8]
000a5c48  81 42                                            cmp r1, r0
000a5c4a  04 d0                                            beq #0xa5c56
000a5c4c  36 68                                            ldr r6, [r6]
000a5c4e  31 68                                            ldr r1, [r6]
000a5c50  00 29                                            cmp r1, #0
000a5c52  f8 d1                                            bne #0xa5c46
000a5c54  16 e0                                            b #0xa5c84
000a5c56  ae b1                                            cbz r6, #0xa5c84
000a5c58  f0 69                                            ldr r0, [r6, #0x1c]
000a5c5a  1c 21                                            movs r1, #0x1c
000a5c5c  8c f7 60 ed                                      blx #0x32720
000a5c60  80 46                                            mov r8, r0
000a5c62  0a 48                                            ldr r0, [pc, #0x28]
000a5c64  78 44                                            add r0, pc
000a5c66  01 68                                            ldr r1, [r0]
000a5c68  40 46                                            mov r0, r8
000a5c6a  8c f7 4a ee                                      blx #0x32900
000a5c6e  a8 8b                                            ldrh r0, [r5, #0x1c]
000a5c70  b1 69                                            ldr r1, [r6, #0x18]
000a5c72  00 f0 03 00                                      and r0, r0, #3
000a5c76  51 f8 20 10                                      ldr.w r1, [r1, r0, lsl #2]
000a5c7a  40 46                                            mov r0, r8
000a5c7c  8c f7 9a ee                                      blx #0x329b4
000a5c80  c4 f8 00 80                                      str.w r8, [r4]
000a5c84  5d f8 04 8b                                      ldr r8, [sp], #4
000a5c88  f0 bd                                            pop {r4, r5, r6, r7, pc}
000a5c8a  00 bf                                            nop
000a5c8c  d4 68                                            ldr r4, [r2, #0xc]
000a5c8e  03 00                                            movs r3, r0

; FUNCTION 0x000a5c90, declared_size=64, range_size=64, mode=thumb
; class-group: ir_vector_splitting_visitor
; alias: _ZN27ir_vector_splitting_visitor13handle_rvalueEPP9ir_rvalue
; demangled: ir_vector_splitting_visitor::handle_rvalue(ir_rvalue**)
; decoder-mode: thumb
000a5c90  d0 b5                                            push {r4, r6, r7, lr}
000a5c92  02 af                                            add r7, sp, #8
000a5c94  82 b0                                            sub sp, #8
000a5c96  0c 46                                            mov r4, r1
000a5c98  0b 49                                            ldr r1, [pc, #0x2c]
000a5c9a  79 44                                            add r1, pc
000a5c9c  09 68                                            ldr r1, [r1]
000a5c9e  09 68                                            ldr r1, [r1]
000a5ca0  01 91                                            str r1, [sp, #4]
000a5ca2  21 68                                            ldr r1, [r4]
000a5ca4  29 b1                                            cbz r1, #0xa5cb2
000a5ca6  00 91                                            str r1, [sp]
000a5ca8  69 46                                            mov r1, sp
000a5caa  8f f7 82 ea                                      blx #0x351b0
000a5cae  00 98                                            ldr r0, [sp]
000a5cb0  20 60                                            str r0, [r4]
000a5cb2  06 48                                            ldr r0, [pc, #0x18]
000a5cb4  01 99                                            ldr r1, [sp, #4]
000a5cb6  78 44                                            add r0, pc
000a5cb8  00 68                                            ldr r0, [r0]
000a5cba  00 68                                            ldr r0, [r0]
000a5cbc  40 1a                                            subs r0, r0, r1
000a5cbe  04 bf                                            itt eq
000a5cc0  02 b0                                            addeq sp, #8
000a5cc2  d0 bd                                            popeq {r4, r6, r7, pc}
000a5cc4  8c f7 cc e9                                      blx #0x32060
000a5cc8  1a 68                                            ldr r2, [r3]
000a5cca  03 00                                            movs r3, r0
000a5ccc  fe 67                                            str r6, [r7, #0x7c]
000a5cce  03 00                                            movs r3, r0

; FUNCTION 0x000a5cd0, declared_size=212, range_size=212, mode=thumb
; class-group: ir_vector_splitting_visitor
; alias: _ZN27ir_vector_splitting_visitor11visit_leaveEP13ir_assignment
; demangled: ir_vector_splitting_visitor::visit_leave(ir_assignment*)
; decoder-mode: thumb
000a5cd0  f0 b5                                            push {r4, r5, r6, r7, lr}
000a5cd2  03 af                                            add r7, sp, #0xc
000a5cd4  2d e9 00 0b                                      push.w {r8, sb, fp}
000a5cd8  0d 46                                            mov r5, r1
000a5cda  81 46                                            mov sb, r0
000a5cdc  28 69                                            ldr r0, [r5, #0x10]
000a5cde  00 28                                            cmp r0, #0
000a5ce0  c1 68                                            ldr r1, [r0, #0xc]
000a5ce2  0f d0                                            beq #0xa5d04
000a5ce4  02 29                                            cmp r1, #2
000a5ce6  0d d1                                            bne #0xa5d04
000a5ce8  d9 f8 1c 10                                      ldr.w r1, [sb, #0x1c]
000a5cec  0e 68                                            ldr r6, [r1]
000a5cee  31 68                                            ldr r1, [r6]
000a5cf0  81 b1                                            cbz r1, #0xa5d14
000a5cf2  80 69                                            ldr r0, [r0, #0x18]
000a5cf4  b1 68                                            ldr r1, [r6, #8]
000a5cf6  81 42                                            cmp r1, r0
000a5cf8  2c d0                                            beq #0xa5d54
000a5cfa  36 68                                            ldr r6, [r6]
000a5cfc  31 68                                            ldr r1, [r6]
000a5cfe  00 29                                            cmp r1, #0
000a5d00  f8 d1                                            bne #0xa5cf4
000a5d02  07 e0                                            b #0xa5d14
000a5d04  03 29                                            cmp r1, #3
000a5d06  28 bf                                            it hs
000a5d08  00 20                                            movhs r0, #0
000a5d0a  28 61                                            str r0, [r5, #0x10]
000a5d0c  01 68                                            ldr r1, [r0]
000a5d0e  ca 68                                            ldr r2, [r1, #0xc]
000a5d10  49 46                                            mov r1, sb
000a5d12  90 47                                            blx r2
000a5d14  d9 f8 00 00                                      ldr.w r0, [sb]
000a5d18  05 f1 14 01                                      add.w r1, r5, #0x14
000a5d1c  d0 f8 94 20                                      ldr.w r2, [r0, #0x94]
000a5d20  48 46                                            mov r0, sb
000a5d22  90 47                                            blx r2
000a5d24  68 69                                            ldr r0, [r5, #0x14]
000a5d26  01 68                                            ldr r1, [r0]
000a5d28  ca 68                                            ldr r2, [r1, #0xc]
000a5d2a  49 46                                            mov r1, sb
000a5d2c  90 47                                            blx r2
000a5d2e  55 f8 18 0f                                      ldr r0, [r5, #0x18]!
000a5d32  58 b1                                            cbz r0, #0xa5d4c
000a5d34  d9 f8 00 00                                      ldr.w r0, [sb]
000a5d38  29 46                                            mov r1, r5
000a5d3a  d0 f8 94 20                                      ldr.w r2, [r0, #0x94]
000a5d3e  48 46                                            mov r0, sb
000a5d40  90 47                                            blx r2
000a5d42  28 68                                            ldr r0, [r5]
000a5d44  01 68                                            ldr r1, [r0]
000a5d46  ca 68                                            ldr r2, [r1, #0xc]
000a5d48  49 46                                            mov r1, sb
000a5d4a  90 47                                            blx r2
000a5d4c  00 20                                            movs r0, #0
000a5d4e  bd e8 00 0b                                      pop.w {r8, sb, fp}
000a5d52  f0 bd                                            pop {r4, r5, r6, r7, pc}
000a5d54  00 2e                                            cmp r6, #0
000a5d56  dd d0                                            beq #0xa5d14
000a5d58  28 7f                                            ldrb r0, [r5, #0x1c]
000a5d5a  4f f0 ff 34                                      mov.w r4, #-1
000a5d5e  01 21                                            movs r1, #1
000a5d60  00 f0 0f 00                                      and r0, r0, #0xf
000a5d64  01 34                                            adds r4, #1
000a5d66  03 2c                                            cmp r4, #3
000a5d68  03 dc                                            bgt #0xa5d72
000a5d6a  01 fa 04 f2                                      lsl.w r2, r1, r4
000a5d6e  02 40                                            ands r2, r0
000a5d70  f8 d0                                            beq #0xa5d64
000a5d72  f0 69                                            ldr r0, [r6, #0x1c]
000a5d74  1c 21                                            movs r1, #0x1c
000a5d76  8c f7 d4 ec                                      blx #0x32720
000a5d7a  80 46                                            mov r8, r0
000a5d7c  08 48                                            ldr r0, [pc, #0x20]
000a5d7e  78 44                                            add r0, pc
000a5d80  01 68                                            ldr r1, [r0]
000a5d82  40 46                                            mov r0, r8
000a5d84  8c f7 bc ed                                      blx #0x32900
000a5d88  b0 69                                            ldr r0, [r6, #0x18]
000a5d8a  50 f8 24 10                                      ldr.w r1, [r0, r4, lsl #2]
000a5d8e  40 46                                            mov r0, r8
000a5d90  8c f7 10 ee                                      blx #0x329b4
000a5d94  28 46                                            mov r0, r5
000a5d96  41 46                                            mov r1, r8
000a5d98  8d f7 06 ef                                      blx #0x33ba8
000a5d9c  ba e7                                            b #0xa5d14
000a5d9e  00 bf                                            nop
000a5da0  ba 67                                            str r2, [r7, #0x78]
000a5da2  03 00                                            movs r3, r0

; FUNCTION 0x000a6038, declared_size=2, range_size=2, mode=thumb
; class-group: ir_vector_splitting_visitor
; alias: _ZN27ir_vector_splitting_visitorD2Ev
; demangled: ir_vector_splitting_visitor::~ir_vector_splitting_visitor()
; decoder-mode: thumb
000a6038  70 47                                            bx lr

; FUNCTION 0x000a603a, declared_size=4, range_size=4, mode=thumb
; class-group: ir_vector_splitting_visitor
; alias: _ZN27ir_vector_splitting_visitorD0Ev
; demangled: ir_vector_splitting_visitor::~ir_vector_splitting_visitor()
; decoder-mode: thumb
000a603a  0a f0 8d be                                      b.w #0xb0d58
