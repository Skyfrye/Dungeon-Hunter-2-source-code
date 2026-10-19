; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000962b4, declared_size=10, range_size=10, mode=thumb
; class-group: loop_unroll_count
; alias: _ZN17loop_unroll_count11visit_enterEP7ir_loop
; demangled: loop_unroll_count::visit_enter(ir_loop*)
; decoder-mode: thumb
000962b4  01 21                                            movs r1, #1
000962b6  80 f8 21 10                                      strb.w r1, [r0, #0x21]
000962ba  00 20                                            movs r0, #0
000962bc  70 47                                            bx lr

; FUNCTION 0x000962be, declared_size=10, range_size=10, mode=thumb
; class-group: loop_unroll_count
; alias: _ZN17loop_unroll_count11visit_enterEP13ir_expression
; demangled: loop_unroll_count::visit_enter(ir_expression*)
; decoder-mode: thumb
000962be  c1 69                                            ldr r1, [r0, #0x1c]
000962c0  01 31                                            adds r1, #1
000962c2  c1 61                                            str r1, [r0, #0x1c]
000962c4  00 20                                            movs r0, #0
000962c6  70 47                                            bx lr

; FUNCTION 0x000962c8, declared_size=142, range_size=142, mode=thumb
; class-group: loop_unroll_count
; alias: _ZN17loop_unroll_count11visit_enterEP20ir_dereference_array
; demangled: loop_unroll_count::visit_enter(ir_dereference_array*)
; decoder-mode: thumb
000962c8  f0 b5                                            push {r4, r5, r6, r7, lr}
000962ca  03 af                                            add r7, sp, #0xc
000962cc  4d f8 04 bd                                      str fp, [sp, #-0x4]!
000962d0  0d 46                                            mov r5, r1
000962d2  04 46                                            mov r4, r0
000962d4  a8 69                                            ldr r0, [r5, #0x18]
000962d6  01 69                                            ldr r1, [r0, #0x10]
000962d8  4a 68                                            ldr r2, [r1, #4]
000962da  09 2a                                            cmp r2, #9
000962dc  05 d0                                            beq #0x962ea
000962de  02 2a                                            cmp r2, #2
000962e0  2c d1                                            bne #0x9633c
000962e2  09 89                                            ldrh r1, [r1, #8]
000962e4  11 f4 c0 41                                      ands r1, r1, #0x6000
000962e8  28 d0                                            beq #0x9633c
000962ea  e9 69                                            ldr r1, [r5, #0x1c]
000962ec  11 b1                                            cbz r1, #0x962f4
000962ee  c9 68                                            ldr r1, [r1, #0xc]
000962f0  03 29                                            cmp r1, #3
000962f2  23 d0                                            beq #0x9633c
000962f4  01 68                                            ldr r1, [r0]
000962f6  09 6a                                            ldr r1, [r1, #0x20]
000962f8  88 47                                            blx r1
000962fa  06 46                                            mov r6, r0
000962fc  e8 69                                            ldr r0, [r5, #0x1c]
000962fe  65 6a                                            ldr r5, [r4, #0x24]
00096300  01 68                                            ldr r1, [r0]
00096302  09 6a                                            ldr r1, [r1, #0x20]
00096304  88 47                                            blx r1
00096306  01 46                                            mov r1, r0
00096308  28 46                                            mov r0, r5
0009630a  9e f7 cc ed                                      blx #0x34ea4
0009630e  ae b1                                            cbz r6, #0x9633c
00096310  a0 b1                                            cbz r0, #0x9633c
00096312  00 6a                                            ldr r0, [r0, #0x20]
00096314  90 b1                                            cbz r0, #0x9633c
00096316  b0 69                                            ldr r0, [r6, #0x18]
00096318  c0 f3 43 20                                      ubfx r0, r0, #9, #4
0009631c  0a 28                                            cmp r0, #0xa
0009631e  0d d8                                            bhi #0x9633c
00096320  df e8 00 f0                                      tbb [pc, r0]
00096324  06 10                                            asrs r6, r0, #0x20
00096326  13 16                                            asrs r3, r2, #0x18
00096328  0c 06                                            lsls r4, r1, #0x18
0009632a  06 06                                            lsls r6, r0, #0x18
0009632c  06 0c                                            lsrs r6, r0, #0x10
0009632e  06 00                                            movs r6, r0
00096330  a0 6a                                            ldr r0, [r4, #0x28]
00096332  80 7a                                            ldrb r0, [r0, #0xa]
00096334  10 b1                                            cbz r0, #0x9633c
00096336  01 20                                            movs r0, #1
00096338  84 f8 20 00                                      strb.w r0, [r4, #0x20]
0009633c  00 20                                            movs r0, #0
0009633e  5d f8 04 bb                                      ldr fp, [sp], #4
00096342  f0 bd                                            pop {r4, r5, r6, r7, pc}
00096344  a0 6a                                            ldr r0, [r4, #0x28]
00096346  c0 7a                                            ldrb r0, [r0, #0xb]
00096348  f4 e7                                            b #0x96334
0009634a  a0 6a                                            ldr r0, [r4, #0x28]
0009634c  00 7a                                            ldrb r0, [r0, #8]
0009634e  f1 e7                                            b #0x96334
00096350  a0 6a                                            ldr r0, [r4, #0x28]
00096352  40 7a                                            ldrb r0, [r0, #9]
00096354  ee e7                                            b #0x96334

; FUNCTION 0x00096358, declared_size=10, range_size=10, mode=thumb
; class-group: loop_unroll_count
; alias: _ZN17loop_unroll_count11visit_enterEP13ir_assignment
; demangled: loop_unroll_count::visit_enter(ir_assignment*)
; decoder-mode: thumb
00096358  c1 69                                            ldr r1, [r0, #0x1c]
0009635a  01 31                                            adds r1, #1
0009635c  c1 61                                            str r1, [r0, #0x1c]
0009635e  00 20                                            movs r0, #0
00096360  70 47                                            bx lr
