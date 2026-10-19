; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00080564, declared_size=92, range_size=92, mode=thumb
; class-group: ir_expression
; alias: _ZN13ir_expressionC1EiPK9glsl_typeP9ir_rvalueS4_S4_S4_
; demangled: ir_expression::ir_expression(int, glsl_type const*, ir_rvalue*, ir_rvalue*, ir_rvalue*, ir_rvalue*)
; alias: _ZN13ir_expressionC2EiPK9glsl_typeP9ir_rvalueS4_S4_S4_
; demangled: ir_expression::ir_expression(int, glsl_type const*, ir_rvalue*, ir_rvalue*, ir_rvalue*, ir_rvalue*)
; decoder-mode: thumb
00080564  f0 b5                                            push {r4, r5, r6, r7, lr}
00080566  03 af                                            add r7, sp, #0xc
00080568  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
0008056c  81 b0                                            sub sp, #4
0008056e  88 46                                            mov r8, r1
00080570  b9 68                                            ldr r1, [r7, #8]
00080572  1c 46                                            mov r4, r3
00080574  06 46                                            mov r6, r0
00080576  20 46                                            mov r0, r4
00080578  92 46                                            mov sl, r2
0008057a  b2 f7 7e eb                                      blx #0x32c78
0008057e  d7 e9 03 b9                                      ldrd fp, sb, [r7, #0xc]
00080582  05 46                                            mov r5, r0
00080584  49 46                                            mov r1, sb
00080586  58 46                                            mov r0, fp
00080588  b2 f7 76 eb                                      blx #0x32c78
0008058c  04 21                                            movs r1, #4
0008058e  85 42                                            cmp r5, r0
00080590  f1 60                                            str r1, [r6, #0xc]
00080592  b8 bf                                            it lt
00080594  28 46                                            movlt r0, r5
00080596  09 49                                            ldr r1, [pc, #0x24]
00080598  c6 e9 04 a0                                      strd sl, r0, [r6, #0x10]
0008059c  79 44                                            add r1, pc
0008059e  c6 e9 06 84                                      strd r8, r4, [r6, #0x18]
000805a2  c6 f8 28 90                                      str.w sb, [r6, #0x28]
000805a6  08 68                                            ldr r0, [r1]
000805a8  b9 68                                            ldr r1, [r7, #8]
000805aa  08 30                                            adds r0, #8
000805ac  c6 e9 08 1b                                      strd r1, fp, [r6, #0x20]
000805b0  30 60                                            str r0, [r6]
000805b2  30 46                                            mov r0, r6
000805b4  01 b0                                            add sp, #4
000805b6  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
000805ba  f0 bd                                            pop {r4, r5, r6, r7, pc}
000805bc  d4 c3                                            stm r3!, {r2, r4, r6, r7}
000805be  05 00                                            movs r5, r0

; FUNCTION 0x000805c0, declared_size=264, range_size=264, mode=thumb
; class-group: ir_expression
; alias: _ZN13ir_expressionC1EiP9ir_rvalue
; demangled: ir_expression::ir_expression(int, ir_rvalue*)
; alias: _ZN13ir_expressionC2EiP9ir_rvalue
; demangled: ir_expression::ir_expression(int, ir_rvalue*)
; decoder-mode: thumb
000805c0  f0 b5                                            push {r4, r5, r6, r7, lr}
000805c2  03 af                                            add r7, sp, #0xc
000805c4  4d f8 04 bd                                      str fp, [sp, #-0x4]!
000805c8  15 46                                            mov r5, r2
000805ca  04 46                                            mov r4, r0
000805cc  28 46                                            mov r0, r5
000805ce  0e 46                                            mov r6, r1
000805d0  b2 f7 6a eb                                      blx #0x32ca8
000805d4  35 49                                            ldr r1, [pc, #0xd4]
000805d6  04 23                                            movs r3, #4
000805d8  35 4a                                            ldr r2, [pc, #0xd4]
000805da  3d 2e                                            cmp r6, #0x3d
000805dc  79 44                                            add r1, pc
000805de  e3 60                                            str r3, [r4, #0xc]
000805e0  7a 44                                            add r2, pc
000805e2  c4 e9 05 06                                      strd r0, r6, [r4, #0x14]
000805e6  09 68                                            ldr r1, [r1]
000805e8  10 68                                            ldr r0, [r2]
000805ea  4f f0 00 02                                      mov.w r2, #0
000805ee  e5 61                                            str r5, [r4, #0x1c]
000805f0  09 68                                            ldr r1, [r1]
000805f2  00 f1 08 00                                      add.w r0, r0, #8
000805f6  a2 62                                            str r2, [r4, #0x28]
000805f8  c4 e9 08 22                                      strd r2, r2, [r4, #0x20]
000805fc  20 60                                            str r0, [r4]
000805fe  21 61                                            str r1, [r4, #0x10]
00080600  00 f2 21 80                                      bhi.w #0x80646
00080604  df e8 06 f0                                      tbb [pc, r6]
00080608  1f 1f                                            subs r7, r3, #4
0008060a  1f 1f                                            subs r7, r3, #4
0008060c  1f 1f                                            subs r7, r3, #4
0008060e  1f 1f                                            subs r7, r3, #4
00080610  1f 1f                                            subs r7, r3, #4
00080612  1f 1f                                            subs r7, r3, #4
00080614  1f 21                                            movs r1, #0x1f
00080616  30 27                                            movs r7, #0x30
00080618  3c 27                                            movs r7, #0x3c
0008061a  3c 21                                            movs r1, #0x3c
0008061c  27 30                                            adds r0, #0x27
0008061e  21 27                                            movs r7, #0x21
00080620  21 27                                            movs r7, #0x21
00080622  30 48                                            ldr r0, [pc, #0xc0]
00080624  1f 1f                                            subs r7, r3, #4
00080626  1f 1f                                            subs r7, r3, #4
00080628  1f 1f                                            subs r7, r3, #4
0008062a  1f 1f                                            subs r7, r3, #4
0008062c  1f 1f                                            subs r7, r3, #4
0008062e  1f 1f                                            subs r7, r3, #4
00080630  1f 1f                                            subs r7, r3, #4
00080632  1f 2d                                            cmp r5, #0x1f
00080634  2d 2d                                            cmp r5, #0x2d
00080636  2d 2d                                            cmp r5, #0x2d
00080638  36 45                                            cmp r6, r6
0008063a  36 45                                            cmp r6, r6
0008063c  36 39                                            subs r1, #0x36
0008063e  39 1f                                            subs r1, r7, #4
00080640  21 21                                            movs r1, #0x21
00080642  21 1f                                            subs r1, r4, #4
00080644  39 1f                                            subs r1, r7, #4
00080646  28 69                                            ldr r0, [r5, #0x10]
00080648  2a e0                                            b #0x806a0
0008064a  28 69                                            ldr r0, [r5, #0x10]
0008064c  00 89                                            ldrh r0, [r0, #8]
0008064e  c0 f3 42 21                                      ubfx r1, r0, #9, #3
00080652  01 20                                            movs r0, #1
00080654  19 e0                                            b #0x8068a
00080656  28 69                                            ldr r0, [r5, #0x10]
00080658  00 89                                            ldrh r0, [r0, #8]
0008065a  c0 f3 42 21                                      ubfx r1, r0, #9, #3
0008065e  02 20                                            movs r0, #2
00080660  13 e0                                            b #0x8068a
00080662  16 48                                            ldr r0, [pc, #0x58]
00080664  78 44                                            add r0, pc
00080666  19 e0                                            b #0x8069c
00080668  28 69                                            ldr r0, [r5, #0x10]
0008066a  00 89                                            ldrh r0, [r0, #8]
0008066c  c0 f3 42 21                                      ubfx r1, r0, #9, #3
00080670  00 20                                            movs r0, #0
00080672  0a e0                                            b #0x8068a
00080674  10 48                                            ldr r0, [pc, #0x40]
00080676  78 44                                            add r0, pc
00080678  10 e0                                            b #0x8069c
0008067a  12 48                                            ldr r0, [pc, #0x48]
0008067c  78 44                                            add r0, pc
0008067e  0d e0                                            b #0x8069c
00080680  28 69                                            ldr r0, [r5, #0x10]
00080682  00 89                                            ldrh r0, [r0, #8]
00080684  c0 f3 42 21                                      ubfx r1, r0, #9, #3
00080688  03 20                                            movs r0, #3
0008068a  01 22                                            movs r2, #1
0008068c  b2 f7 4a e9                                      blx #0x32924
00080690  06 e0                                            b #0x806a0
00080692  08 48                                            ldr r0, [pc, #0x20]
00080694  78 44                                            add r0, pc
00080696  01 e0                                            b #0x8069c
00080698  09 48                                            ldr r0, [pc, #0x24]
0008069a  78 44                                            add r0, pc
0008069c  00 68                                            ldr r0, [r0]
0008069e  00 68                                            ldr r0, [r0]
000806a0  20 61                                            str r0, [r4, #0x10]
000806a2  20 46                                            mov r0, r4
000806a4  5d f8 04 bb                                      ldr fp, [sp], #4
000806a8  f0 bd                                            pop {r4, r5, r6, r7, pc}
000806aa  00 bf                                            nop
000806ac  60 bf                                            hint #6
000806ae  05 00                                            movs r5, r0
000806b0  90 c3                                            stm r3!, {r4, r7}
000806b2  05 00                                            movs r5, r0
000806b4  b0 be                                            bkpt #0xb0
000806b6  05 00                                            movs r5, r0
000806b8  2a bf                                            itet hs
000806ba  05 00                                            movs r5, r0
000806bc  14 bf                                            ite ne
000806be  05 00                                            movs r5, r0
000806c0  ba be                                            bkpt #0xba
000806c2  05 00                                            movs r5, r0
000806c4  20 bf                                            wfe
000806c6  05 00                                            movs r5, r0

; FUNCTION 0x000806c8, declared_size=232, range_size=232, mode=thumb
; class-group: ir_expression
; alias: _ZN13ir_expressionC1EiP9ir_rvalueS1_
; demangled: ir_expression::ir_expression(int, ir_rvalue*, ir_rvalue*)
; alias: _ZN13ir_expressionC2EiP9ir_rvalueS1_
; demangled: ir_expression::ir_expression(int, ir_rvalue*, ir_rvalue*)
; decoder-mode: thumb
000806c8  f0 b5                                            push {r4, r5, r6, r7, lr}
000806ca  03 af                                            add r7, sp, #0xc
000806cc  4d f8 04 8d                                      str r8, [sp, #-0x4]!
000806d0  98 46                                            mov r8, r3
000806d2  16 46                                            mov r6, r2
000806d4  0d 46                                            mov r5, r1
000806d6  04 46                                            mov r4, r0
000806d8  30 46                                            mov r0, r6
000806da  41 46                                            mov r1, r8
000806dc  b2 f7 cc ea                                      blx #0x32c78
000806e0  2e 4a                                            ldr r2, [pc, #0xb8]
000806e2  04 23                                            movs r3, #4
000806e4  2c 49                                            ldr r1, [pc, #0xb0]
000806e6  7a 44                                            add r2, pc
000806e8  e3 60                                            str r3, [r4, #0xc]
000806ea  04 f1 14 03                                      add.w r3, r4, #0x14
000806ee  79 44                                            add r1, pc
000806f0  83 e8 61 01                                      stm.w r3, {r0, r5, r6, r8}
000806f4  10 68                                            ldr r0, [r2]
000806f6  00 22                                            movs r2, #0
000806f8  09 68                                            ldr r1, [r1]
000806fa  c4 e9 09 22                                      strd r2, r2, [r4, #0x24]
000806fe  00 68                                            ldr r0, [r0]
00080700  08 31                                            adds r1, #8
00080702  21 60                                            str r1, [r4]
00080704  20 61                                            str r0, [r4, #0x10]
00080706  a5 f1 3e 00                                      sub.w r0, r5, #0x3e
0008070a  22 28                                            cmp r0, #0x22
0008070c  37 d8                                            bhi #0x8077e
0008070e  df e8 00 f0                                      tbb [pc, r0]
00080712  12 12                                            asrs r2, r2, #8
00080714  12 1f                                            subs r2, r2, #4
00080716  12 1f                                            subs r2, r2, #4
00080718  1f 12                                            asrs r7, r3, #8
0008071a  24 24                                            movs r4, #0x24
0008071c  24 24                                            movs r4, #0x24
0008071e  24 24                                            movs r4, #0x24
00080720  2d 2d                                            cmp r5, #0x2d
00080722  1f 1f                                            subs r7, r3, #4
00080724  12 12                                            asrs r2, r2, #8
00080726  12 12                                            asrs r2, r2, #8
00080728  12 12                                            asrs r2, r2, #8
0008072a  30 12                                            asrs r0, r6, #8
0008072c  12 12                                            asrs r2, r2, #8
0008072e  33 1f                                            subs r3, r6, #4
00080730  36 1f                                            subs r6, r6, #4
00080732  3f 1f                                            subs r7, r7, #4
00080734  1f 00                                            movs r7, r3
00080736  30 69                                            ldr r0, [r6, #0x10]
00080738  01 89                                            ldrh r1, [r0, #8]
0008073a  01 f4 60 61                                      and r1, r1, #0xe00
0008073e  b1 f5 00 7f                                      cmp.w r1, #0x200
00080742  20 d1                                            bne #0x80786
00080744  41 68                                            ldr r1, [r0, #4]
00080746  03 29                                            cmp r1, #3
00080748  98 bf                                            it ls
0008074a  d8 f8 10 00                                      ldrls.w r0, [r8, #0x10]
0008074e  1a e0                                            b #0x80786
00080750  30 69                                            ldr r0, [r6, #0x10]
00080752  20 61                                            str r0, [r4, #0x10]
00080754  70 69                                            ldr r0, [r6, #0x14]
00080756  60 61                                            str r0, [r4, #0x14]
00080758  16 e0                                            b #0x80788
0008075a  30 69                                            ldr r0, [r6, #0x10]
0008075c  01 22                                            movs r2, #1
0008075e  00 89                                            ldrh r0, [r0, #8]
00080760  c0 f3 42 21                                      ubfx r1, r0, #9, #3
00080764  03 20                                            movs r0, #3
00080766  b2 f7 de e8                                      blx #0x32924
0008076a  0c e0                                            b #0x80786
0008076c  0e 48                                            ldr r0, [pc, #0x38]
0008076e  78 44                                            add r0, pc
00080770  07 e0                                            b #0x80782
00080772  0c 48                                            ldr r0, [pc, #0x30]
00080774  78 44                                            add r0, pc
00080776  04 e0                                            b #0x80782
00080778  09 48                                            ldr r0, [pc, #0x24]
0008077a  78 44                                            add r0, pc
0008077c  01 e0                                            b #0x80782
0008077e  0b 48                                            ldr r0, [pc, #0x2c]
00080780  78 44                                            add r0, pc
00080782  00 68                                            ldr r0, [r0]
00080784  00 68                                            ldr r0, [r0]
00080786  20 61                                            str r0, [r4, #0x10]
00080788  20 46                                            mov r0, r4
0008078a  5d f8 04 8b                                      ldr r8, [sp], #4
0008078e  f0 bd                                            pop {r4, r5, r6, r7, pc}
00080790  30 69                                            ldr r0, [r6, #0x10]
00080792  b2 f7 06 ea                                      blx #0x32ba0
00080796  dc e7                                            b #0x80752
00080798  82 c2                                            stm r2!, {r1, r7}
0008079a  05 00                                            movs r5, r0
0008079c  56 be                                            bkpt #0x56
0008079e  05 00                                            movs r5, r0
000807a0  fe bd                                            pop {r1, r2, r3, r4, r5, r6, r7, pc}
000807a2  05 00                                            movs r5, r0
000807a4  28 be                                            bkpt #0x28
000807a6  05 00                                            movs r5, r0
000807a8  e6 bd                                            pop {r1, r2, r5, r6, r7, pc}
000807aa  05 00                                            movs r5, r0
000807ac  1c be                                            bkpt #0x1c
000807ae  05 00                                            movs r5, r0

; FUNCTION 0x000807b0, declared_size=140, range_size=140, mode=thumb
; class-group: ir_expression
; alias: _ZN13ir_expressionC1EiP9ir_rvalueS1_S1_
; demangled: ir_expression::ir_expression(int, ir_rvalue*, ir_rvalue*, ir_rvalue*)
; alias: _ZN13ir_expressionC2EiP9ir_rvalueS1_S1_
; demangled: ir_expression::ir_expression(int, ir_rvalue*, ir_rvalue*, ir_rvalue*)
; decoder-mode: thumb
000807b0  f0 b5                                            push {r4, r5, r6, r7, lr}
000807b2  03 af                                            add r7, sp, #0xc
000807b4  2d e9 00 07                                      push.w {r8, sb, sl}
000807b8  16 46                                            mov r6, r2
000807ba  04 46                                            mov r4, r0
000807bc  30 46                                            mov r0, r6
000807be  98 46                                            mov r8, r3
000807c0  89 46                                            mov sb, r1
000807c2  b2 f7 72 ea                                      blx #0x32ca8
000807c6  d7 f8 08 a0                                      ldr.w sl, [r7, #8]
000807ca  05 46                                            mov r5, r0
000807cc  40 46                                            mov r0, r8
000807ce  51 46                                            mov r1, sl
000807d0  b2 f7 52 ea                                      blx #0x32c78
000807d4  16 49                                            ldr r1, [pc, #0x58]
000807d6  04 22                                            movs r2, #4
000807d8  e2 60                                            str r2, [r4, #0xc]
000807da  85 42                                            cmp r5, r0
000807dc  15 4a                                            ldr r2, [pc, #0x54]
000807de  79 44                                            add r1, pc
000807e0  b8 bf                                            it lt
000807e2  28 46                                            movlt r0, r5
000807e4  c4 e9 05 09                                      strd r0, sb, [r4, #0x14]
000807e8  7a 44                                            add r2, pc
000807ea  08 68                                            ldr r0, [r1]
000807ec  11 68                                            ldr r1, [r2]
000807ee  00 22                                            movs r2, #0
000807f0  c4 e9 07 68                                      strd r6, r8, [r4, #0x1c]
000807f4  00 68                                            ldr r0, [r0]
000807f6  08 31                                            adds r1, #8
000807f8  c4 e9 09 a2                                      strd sl, r2, [r4, #0x24]
000807fc  21 60                                            str r1, [r4]
000807fe  20 61                                            str r0, [r4, #0x10]
00080800  a9 f1 61 00                                      sub.w r0, sb, #0x61
00080804  06 28                                            cmp r0, #6
00080806  0f d8                                            bhi #0x80828
00080808  01 21                                            movs r1, #1
0008080a  01 fa 00 f0                                      lsl.w r0, r1, r0
0008080e  10 f0 67 0f                                      tst.w r0, #0x67
00080812  0c bf                                            ite eq
00080814  08 f1 10 00                                      addeq.w r0, r8, #0x10
00080818  06 f1 10 00                                      addne.w r0, r6, #0x10
0008081c  00 68                                            ldr r0, [r0]
0008081e  20 61                                            str r0, [r4, #0x10]
00080820  20 46                                            mov r0, r4
00080822  bd e8 00 07                                      pop.w {r8, sb, sl}
00080826  f0 bd                                            pop {r4, r5, r6, r7, pc}
00080828  03 48                                            ldr r0, [pc, #0xc]
0008082a  78 44                                            add r0, pc
0008082c  00 68                                            ldr r0, [r0]
0008082e  f5 e7                                            b #0x8081c
00080830  5e bd                                            pop {r1, r2, r3, r4, r6, pc}
00080832  05 00                                            movs r5, r0
00080834  88 c1                                            stm r1!, {r3, r7}
00080836  05 00                                            movs r5, r0
00080838  72 bd                                            pop {r1, r4, r5, r6, pc}
0008083a  05 00                                            movs r5, r0

; FUNCTION 0x0008083c, declared_size=36, range_size=36, mode=thumb
; class-group: ir_expression
; alias: _ZN13ir_expression16get_num_operandsE23ir_expression_operation
; demangled: ir_expression::get_num_operands(ir_expression_operation)
; decoder-mode: thumb
0008083c  01 46                                            mov r1, r0
0008083e  3e 29                                            cmp r1, #0x3e
00080840  bc bf                                            itt lt
00080842  01 20                                            movlt r0, #1
00080844  70 47                                            bxlt lr
00080846  61 29                                            cmp r1, #0x61
00080848  01 da                                            bge #0x8084e
0008084a  02 20                                            movs r0, #2
0008084c  70 47                                            bx lr
0008084e  68 29                                            cmp r1, #0x68
00080850  bc bf                                            itt lt
00080852  03 20                                            movlt r0, #3
00080854  70 47                                            bxlt lr
00080856  00 20                                            movs r0, #0
00080858  6a 29                                            cmp r1, #0x6a
0008085a  b8 bf                                            it lt
0008085c  04 20                                            movlt r0, #4
0008085e  70 47                                            bx lr

; FUNCTION 0x00080860, declared_size=16, range_size=16, mode=thumb
; class-group: ir_expression
; alias: _ZN13ir_expression15operator_stringE23ir_expression_operation
; demangled: ir_expression::operator_string(ir_expression_operation)
; decoder-mode: thumb
00080860  02 49                                            ldr r1, [pc, #8]
00080862  79 44                                            add r1, pc
00080864  51 f8 20 00                                      ldr.w r0, [r1, r0, lsl #2]
00080868  70 47                                            bx lr
0008086a  00 bf                                            nop
0008086c  da 6f                                            ldr r2, [r3, #0x7c]
0008086e  05 00                                            movs r5, r0

; FUNCTION 0x00080870, declared_size=16, range_size=16, mode=thumb
; class-group: ir_expression
; alias: _ZN13ir_expression15operator_stringEv
; demangled: ir_expression::operator_string()
; decoder-mode: thumb
00080870  02 49                                            ldr r1, [pc, #8]
00080872  80 69                                            ldr r0, [r0, #0x18]
00080874  79 44                                            add r1, pc
00080876  51 f8 20 00                                      ldr.w r0, [r1, r0, lsl #2]
0008087a  70 47                                            bx lr
0008087c  c8 6f                                            ldr r0, [r1, #0x7c]
0008087e  05 00                                            movs r5, r0

; FUNCTION 0x000808a0, declared_size=52, range_size=52, mode=thumb
; class-group: ir_expression
; alias: _ZN13ir_expression12get_operatorEPKc
; demangled: ir_expression::get_operator(char const*)
; decoder-mode: thumb
000808a0  f0 b5                                            push {r4, r5, r6, r7, lr}
000808a2  03 af                                            add r7, sp, #0xc
000808a4  4d f8 04 bd                                      str fp, [sp, #-0x4]!
000808a8  09 4e                                            ldr r6, [pc, #0x24]
000808aa  05 46                                            mov r5, r0
000808ac  00 24                                            movs r4, #0
000808ae  7e 44                                            add r6, pc
000808b0  56 f8 24 10                                      ldr.w r1, [r6, r4, lsl #2]
000808b4  28 46                                            mov r0, r5
000808b6  b1 f7 44 eb                                      blx #0x31f40
000808ba  28 b1                                            cbz r0, #0x808c8
000808bc  60 1c                                            adds r0, r4, #1
000808be  69 2c                                            cmp r4, #0x69
000808c0  04 46                                            mov r4, r0
000808c2  f5 db                                            blt #0x808b0
000808c4  4f f0 ff 34                                      mov.w r4, #-1
000808c8  20 46                                            mov r0, r4
000808ca  5d f8 04 bb                                      ldr fp, [sp], #4
000808ce  f0 bd                                            pop {r4, r5, r6, r7, pc}
000808d0  8e 6f                                            ldr r6, [r1, #0x78]
000808d2  05 00                                            movs r5, r0

; FUNCTION 0x00082f08, declared_size=180, range_size=180, mode=thumb
; class-group: ir_expression
; alias: _ZNK13ir_expression5cloneEPvP10hash_table
; demangled: ir_expression::clone(void*, hash_table*) const
; decoder-mode: thumb
00082f08  f0 b5                                            push {r4, r5, r6, r7, lr}
00082f0a  03 af                                            add r7, sp, #0xc
00082f0c  2d e9 00 07                                      push.w {r8, sb, sl}
00082f10  8a b0                                            sub sp, #0x28
00082f12  04 46                                            mov r4, r0
00082f14  26 48                                            ldr r0, [pc, #0x98]
00082f16  04 f1 1c 05                                      add.w r5, r4, #0x1c
00082f1a  0d f1 10 0a                                      add.w sl, sp, #0x10
00082f1e  78 44                                            add r0, pc
00082f20  90 46                                            mov r8, r2
00082f22  89 46                                            mov sb, r1
00082f24  00 26                                            movs r6, #0
00082f26  00 68                                            ldr r0, [r0]
00082f28  00 68                                            ldr r0, [r0]
00082f2a  09 90                                            str r0, [sp, #0x24]
00082f2c  cd e9 06 66                                      strd r6, r6, [sp, #0x18]
00082f30  cd e9 04 66                                      strd r6, r6, [sp, #0x10]
00082f34  09 e0                                            b #0x82f4a
00082f36  55 f8 26 00                                      ldr.w r0, [r5, r6, lsl #2]
00082f3a  42 46                                            mov r2, r8
00082f3c  01 68                                            ldr r1, [r0]
00082f3e  0b 69                                            ldr r3, [r1, #0x10]
00082f40  49 46                                            mov r1, sb
00082f42  98 47                                            blx r3
00082f44  4a f8 26 00                                      str.w r0, [sl, r6, lsl #2]
00082f48  01 36                                            adds r6, #1
00082f4a  a0 69                                            ldr r0, [r4, #0x18]
00082f4c  69 28                                            cmp r0, #0x69
00082f4e  04 d1                                            bne #0x82f5a
00082f50  20 69                                            ldr r0, [r4, #0x10]
00082f52  00 89                                            ldrh r0, [r0, #8]
00082f54  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00082f58  01 e0                                            b #0x82f5e
00082f5a  b0 f7 ec eb                                      blx #0x33734
00082f5e  86 42                                            cmp r6, r0
00082f60  e9 d3                                            blo #0x82f36
00082f62  48 46                                            mov r0, sb
00082f64  2c 21                                            movs r1, #0x2c
00082f66  af f7 dc eb                                      blx #0x32720
00082f6a  05 46                                            mov r5, r0
00082f6c  11 48                                            ldr r0, [pc, #0x44]
00082f6e  78 44                                            add r0, pc
00082f70  01 68                                            ldr r1, [r0]
00082f72  28 46                                            mov r0, r5
00082f74  af f7 c4 ec                                      blx #0x32900
00082f78  dd e9 04 30                                      ldrd r3, r0, [sp, #0x10]
00082f7c  dd e9 06 6c                                      ldrd r6, ip, [sp, #0x18]
00082f80  22 69                                            ldr r2, [r4, #0x10]
00082f82  a1 69                                            ldr r1, [r4, #0x18]
00082f84  8d e8 41 10                                      stm.w sp, {r0, r6, ip}
00082f88  28 46                                            mov r0, r5
00082f8a  af f7 b6 ed                                      blx #0x32af8
00082f8e  60 69                                            ldr r0, [r4, #0x14]
00082f90  68 61                                            str r0, [r5, #0x14]
00082f92  09 48                                            ldr r0, [pc, #0x24]
00082f94  09 99                                            ldr r1, [sp, #0x24]
00082f96  78 44                                            add r0, pc
00082f98  00 68                                            ldr r0, [r0]
00082f9a  00 68                                            ldr r0, [r0]
00082f9c  40 1a                                            subs r0, r0, r1
00082f9e  01 bf                                            itttt eq
00082fa0  28 46                                            moveq r0, r5
00082fa2  0a b0                                            addeq sp, #0x28
00082fa4  bd e8 00 07                                      popeq.w {r8, sb, sl}
00082fa8  f0 bd                                            popeq {r4, r5, r6, r7, pc}
00082faa  af f7 5a e8                                      blx #0x32060
00082fae  00 bf                                            nop
00082fb0  96 95                                            str r5, [sp, #0x258]
00082fb2  05 00                                            movs r5, r0
00082fb4  ca 95                                            str r5, [sp, #0x328]
00082fb6  05 00                                            movs r5, r0
00082fb8  1e 95                                            str r5, [sp, #0x78]
00082fba  05 00                                            movs r5, r0

; FUNCTION 0x0008389c, declared_size=9128, range_size=9128, mode=thumb
; class-group: ir_expression
; alias: _ZN13ir_expression25constant_expression_valueEP10hash_table
; demangled: ir_expression::constant_expression_value(hash_table*)
; decoder-mode: thumb
0008389c  f0 b5                                            push {r4, r5, r6, r7, lr}
0008389e  03 af                                            add r7, sp, #0xc
000838a0  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
000838a4  81 b0                                            sub sp, #4
000838a6  2d ed 0a 8b                                      vpush {d8, d9, d10, d11, d12}
000838aa  9c b0                                            sub sp, #0x70
000838ac  81 46                                            mov sb, r0
000838ae  df f8 54 0e                                      ldr.w r0, [pc, #0xe54]
000838b2  0e 46                                            mov r6, r1
000838b4  00 25                                            movs r5, #0
000838b6  78 44                                            add r0, pc
000838b8  00 68                                            ldr r0, [r0]
000838ba  00 68                                            ldr r0, [r0]
000838bc  1b 90                                            str r0, [sp, #0x6c]
000838be  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
000838c2  40 68                                            ldr r0, [r0, #4]
000838c4  0b 28                                            cmp r0, #0xb
000838c6  02 f0 a2 81                                      beq.w #0x85c0e
000838ca  06 a8                                            add r0, sp, #0x18
000838cc  40 21                                            movs r1, #0x40
000838ce  cd e9 18 55                                      strd r5, r5, [sp, #0x60]
000838d2  cd e9 16 55                                      strd r5, r5, [sp, #0x58]
000838d6  ae f7 b6 ed                                      blx #0x32444
000838da  09 f1 1c 04                                      add.w r4, sb, #0x1c
000838de  0d f1 58 0b                                      add.w fp, sp, #0x58
000838e2  d9 f8 18 00                                      ldr.w r0, [sb, #0x18]
000838e6  69 28                                            cmp r0, #0x69
000838e8  05 d1                                            bne #0x838f6
000838ea  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
000838ee  00 89                                            ldrh r0, [r0, #8]
000838f0  c0 f3 42 20                                      ubfx r0, r0, #9, #3
000838f4  01 e0                                            b #0x838fa
000838f6  af f7 1e ef                                      blx #0x33734
000838fa  85 42                                            cmp r5, r0
000838fc  0d d2                                            bhs #0x8391a
000838fe  54 f8 25 00                                      ldr.w r0, [r4, r5, lsl #2]
00083902  01 68                                            ldr r1, [r0]
00083904  8a 69                                            ldr r2, [r1, #0x18]
00083906  31 46                                            mov r1, r6
00083908  90 47                                            blx r2
0008390a  4b f8 25 00                                      str.w r0, [fp, r5, lsl #2]
0008390e  01 35                                            adds r5, #1
00083910  00 28                                            cmp r0, #0
00083912  e6 d1                                            bne #0x838e2
00083914  00 25                                            movs r5, #0
00083916  02 f0 7a b9                                      b.w #0x85c0e
0008391a  dd f8 58 a0                                      ldr.w sl, [sp, #0x58]
0008391e  00 26                                            movs r6, #0
00083920  50 46                                            mov r0, sl
00083922  04 90                                            str r0, [sp, #0x10]
00083924  5a f8 10 0f                                      ldr r0, [sl, #0x10]!
00083928  01 89                                            ldrh r1, [r0, #8]
0008392a  01 f4 60 61                                      and r1, r1, #0xe00
0008392e  b1 f5 00 7f                                      cmp.w r1, #0x200
00083932  03 d1                                            bne #0x8393c
00083934  40 68                                            ldr r0, [r0, #4]
00083936  04 28                                            cmp r0, #4
00083938  38 bf                                            it lo
0008393a  01 26                                            movlo r6, #1
0008393c  17 9a                                            ldr r2, [sp, #0x5c]
0008393e  03 92                                            str r2, [sp, #0xc]
00083940  aa b1                                            cbz r2, #0x8396e
00083942  10 69                                            ldr r0, [r2, #0x10]
00083944  01 89                                            ldrh r1, [r0, #8]
00083946  01 f4 60 61                                      and r1, r1, #0xe00
0008394a  b1 f5 00 7f                                      cmp.w r1, #0x200
0008394e  17 d1                                            bne #0x83980
00083950  40 68                                            ldr r0, [r0, #4]
00083952  00 21                                            movs r1, #0
00083954  03 28                                            cmp r0, #3
00083956  88 bf                                            it hi
00083958  01 21                                            movhi r1, #1
0008395a  04 28                                            cmp r0, #4
0008395c  02 91                                            str r1, [sp, #8]
0008395e  86 f0 01 01                                      eor r1, r6, #1
00083962  01 91                                            str r1, [sp, #4]
00083964  11 d2                                            bhs #0x8398a
00083966  4f f0 01 08                                      mov.w r8, #1
0008396a  50 46                                            mov r0, sl
0008396c  11 e0                                            b #0x83992
0008396e  86 f0 01 00                                      eor r0, r6, #1
00083972  01 90                                            str r0, [sp, #4]
00083974  01 20                                            movs r0, #1
00083976  4f f0 00 08                                      mov.w r8, #0
0008397a  02 90                                            str r0, [sp, #8]
0008397c  50 46                                            mov r0, sl
0008397e  08 e0                                            b #0x83992
00083980  86 f0 01 00                                      eor r0, r6, #1
00083984  01 90                                            str r0, [sp, #4]
00083986  01 20                                            movs r0, #1
00083988  02 90                                            str r0, [sp, #8]
0008398a  02 f1 10 00                                      add.w r0, r2, #0x10
0008398e  4f f0 00 08                                      mov.w r8, #0
00083992  00 68                                            ldr r0, [r0]
00083994  05 89                                            ldrh r5, [r0, #8]
00083996  48 46                                            mov r0, sb
00083998  af f7 c6 e8                                      blx #0x32b28
0008399c  da f8 00 e0                                      ldr.w lr, [sl]
000839a0  c5 f3 02 32                                      ubfx r2, r5, #0xc, #3
000839a4  c5 f3 42 23                                      ubfx r3, r5, #9, #3
000839a8  d9 f8 18 10                                      ldr.w r1, [sb, #0x18]
000839ac  de f8 04 40                                      ldr.w r4, [lr, #4]
000839b0  09 2c                                            cmp r4, #9
000839b2  17 d1                                            bne #0x839e4
000839b4  4d 29                                            cmp r1, #0x4d
000839b6  00 f0 a7 80                                      beq.w #0x83b08
000839ba  dd e9 03 64                                      ldrd r6, r4, [sp, #0xc]
000839be  4c 29                                            cmp r1, #0x4c
000839c0  a8 d1                                            bne #0x83914
000839c2  68 21                                            movs r1, #0x68
000839c4  ae f7 ac ee                                      blx #0x32720
000839c8  05 46                                            mov r5, r0
000839ca  df f8 3c 0d                                      ldr.w r0, [pc, #0xd3c]
000839ce  78 44                                            add r0, pc
000839d0  01 68                                            ldr r1, [r0]
000839d2  28 46                                            mov r0, r5
000839d4  ae f7 94 ef                                      blx #0x32900
000839d8  20 46                                            mov r0, r4
000839da  31 46                                            mov r1, r6
000839dc  b0 f7 f6 e8                                      blx #0x33bcc
000839e0  01 46                                            mov r1, r0
000839e2  a2 e0                                            b #0x83b2a
000839e4  00 25                                            movs r5, #0
000839e6  69 29                                            cmp r1, #0x69
000839e8  02 f2 11 81                                      bhi.w #0x85c0e
000839ec  13 fb 02 fc                                      smulbb ip, r3, r2
000839f0  00 90                                            str r0, [sp]
000839f2  cd f8 14 c0                                      str.w ip, [sp, #0x14]
000839f6  df e8 11 f0                                      tbh [pc, r1, lsl #1]
000839fa  fc 00                                            lsls r4, r7, #3
000839fc  16 01                                            lsls r6, r2, #4
000839fe  36 01                                            lsls r6, r6, #4
00083a00  6c 01                                            lsls r4, r5, #5
00083a02  aa 01                                            lsls r2, r5, #6
00083a04  f7 01                                            lsls r7, r6, #7
00083a06  3f 02                                            lsls r7, r7, #8
00083a08  74 02                                            lsls r4, r6, #9
00083a0a  a6 02                                            lsls r6, r4, #0xa
00083a0c  00 03                                            lsls r0, r0, #0xc
00083a0e  2f 03                                            lsls r7, r5, #0xc
00083a10  5e 03                                            lsls r6, r3, #0xd
00083a12  8d 03                                            lsls r5, r1, #0xe
00083a14  c0 03                                            lsls r0, r0, #0xf
00083a16  e5 03                                            lsls r5, r4, #0xf
00083a18  0a 04                                            lsls r2, r1, #0x10
00083a1a  30 04                                            lsls r0, r6, #0x10
00083a1c  57 04                                            lsls r7, r2, #0x11
00083a1e  85 04                                            lsls r5, r0, #0x12
00083a20  a8 04                                            lsls r0, r5, #0x12
00083a22  c7 04                                            lsls r7, r0, #0x13
00083a24  ed 04                                            lsls r5, r5, #0x13
00083a26  0e 05                                            lsls r6, r1, #0x14
00083a28  2f 05                                            lsls r7, r5, #0x14
00083a2a  50 05                                            lsls r0, r2, #0x15
00083a2c  70 05                                            lsls r0, r6, #0x15
00083a2e  91 05                                            lsls r1, r2, #0x16
00083a30  b1 05                                            lsls r1, r6, #0x16
00083a32  d5 05                                            lsls r5, r2, #0x17
00083a34  fa 05                                            lsls r2, r7, #0x17
00083a36  1f 06                                            lsls r7, r3, #0x18
00083a38  44 06                                            lsls r4, r0, #0x19
00083a3a  99 06                                            lsls r1, r3, #0x1a
00083a3c  9e 00                                            lsls r6, r3, #2
00083a3e  cd 00                                            lsls r5, r1, #3
00083a40  9e 00                                            lsls r6, r3, #2
00083a42  cd 00                                            lsls r5, r1, #3
00083a44  6a 00                                            lsls r2, r5, #1
00083a46  6a 00                                            lsls r2, r5, #1
00083a48  6a 00                                            lsls r2, r5, #1
00083a4a  6a 00                                            lsls r2, r5, #1
00083a4c  6a 00                                            lsls r2, r5, #1
00083a4e  6a 00                                            lsls r2, r5, #1
00083a50  c3 06                                            lsls r3, r0, #0x1b
00083a52  f7 06                                            lsls r7, r6, #0x1b
00083a54  66 07                                            lsls r6, r4, #0x1d
00083a56  a1 07                                            lsls r1, r4, #0x1e
00083a58  17 08                                            lsrs r7, r2, #0x20
00083a5a  26 08                                            lsrs r6, r4, #0x20
00083a5c  5e 08                                            lsrs r6, r3, #1
00083a5e  ca 08                                            lsrs r2, r1, #3
00083a60  e2 08                                            lsrs r2, r4, #3
00083a62  0e 09                                            lsrs r6, r1, #4
00083a64  0a 11                                            asrs r2, r1, #4
00083a66  0a 11                                            asrs r2, r1, #4
00083a68  1a 09                                            lsrs r2, r3, #4
00083a6a  41 09                                            lsrs r1, r0, #5
00083a6c  5b 09                                            lsrs r3, r3, #5
00083a6e  97 09                                            lsrs r7, r2, #6
00083a70  b9 09                                            lsrs r1, r7, #6
00083a72  0a 11                                            asrs r2, r1, #4
00083a74  0a 11                                            asrs r2, r1, #4
00083a76  e0 09                                            lsrs r0, r4, #7
00083a78  17 0a                                            lsrs r7, r2, #8
00083a7a  4e 0a                                            lsrs r6, r1, #9
00083a7c  0a 11                                            asrs r2, r1, #4
00083a7e  5b 0a                                            lsrs r3, r3, #9
00083a80  0a 11                                            asrs r2, r1, #4
00083a82  0a 11                                            asrs r2, r1, #4
00083a84  a6 0a                                            lsrs r6, r4, #0xa
00083a86  f7 0a                                            lsrs r7, r6, #0xb
00083a88  3f 0b                                            lsrs r7, r7, #0xc
00083a8a  84 0b                                            lsrs r4, r0, #0xe
00083a8c  c9 0b                                            lsrs r1, r1, #0xf
00083a8e  0e 0c                                            lsrs r6, r1, #0x10
00083a90  40 0c                                            lsrs r0, r0, #0x11
00083a92  72 0c                                            lsrs r2, r6, #0x11
00083a94  77 0c                                            lsrs r7, r6, #0x11
00083a96  81 0c                                            lsrs r1, r0, #0x12
00083a98  b9 0c                                            lsrs r1, r7, #0x12
00083a9a  fa 0c                                            lsrs r2, r7, #0x13
00083a9c  1a 0d                                            lsrs r2, r3, #0x14
00083a9e  3a 0d                                            lsrs r2, r7, #0x14
00083aa0  5a 0d                                            lsrs r2, r3, #0x15
00083aa2  81 0d                                            lsrs r1, r0, #0x16
00083aa4  a2 0d                                            lsrs r2, r4, #0x16
00083aa6  c8 0d                                            lsrs r0, r1, #0x17
00083aa8  e9 0d                                            lsrs r1, r5, #0x17
00083aaa  28 0e                                            lsrs r0, r5, #0x18
00083aac  67 0e                                            lsrs r7, r4, #0x19
00083aae  0a 11                                            asrs r2, r1, #4
00083ab0  9f 0e                                            lsrs r7, r3, #0x1a
00083ab2  0a 11                                            asrs r2, r1, #4
00083ab4  c6 0e                                            lsrs r6, r0, #0x1b
00083ab6  02 0f                                            lsrs r2, r0, #0x1c
00083ab8  0a 11                                            asrs r2, r1, #4
00083aba  0a 11                                            asrs r2, r1, #4
00083abc  0f 0f                                            lsrs r7, r1, #0x1c
00083abe  0a 11                                            asrs r2, r1, #4
00083ac0  30 0f                                            lsrs r0, r6, #0x1c
00083ac2  3f 0f                                            lsrs r7, r7, #0x1c
00083ac4  0a 11                                            asrs r2, r1, #4
00083ac6  58 0f                                            lsrs r0, r3, #0x1d
00083ac8  99 0f                                            lsrs r1, r3, #0x1e
00083aca  bb 0f                                            lsrs r3, r7, #0x1e
00083acc  fb 0f                                            lsrs r3, r7, #0x1f
00083ace  be f8 08 00                                      ldrh.w r0, [lr, #8]
00083ad2  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00083ad6  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00083ada  10 fb 01 f0                                      smulbb r0, r0, r1
00083ade  00 28                                            cmp r0, #0
00083ae0  02 f0 84 80                                      beq.w #0x85bec
00083ae4  06 a9                                            add r1, sp, #0x18
00083ae6  00 20                                            movs r0, #0
00083ae8  00 22                                            movs r2, #0
00083aea  41 f8 04 0b                                      str r0, [r1], #4
00083aee  01 32                                            adds r2, #1
00083af0  be f8 08 30                                      ldrh.w r3, [lr, #8]
00083af4  c3 f3 02 36                                      ubfx r6, r3, #0xc, #3
00083af8  c3 f3 42 23                                      ubfx r3, r3, #9, #3
00083afc  13 fb 06 f3                                      smulbb r3, r3, r6
00083b00  9a 42                                            cmp r2, r3
00083b02  f2 d3                                            blo #0x83aea
00083b04  02 f0 72 b8                                      b.w #0x85bec
00083b08  68 21                                            movs r1, #0x68
00083b0a  ae f7 0a ee                                      blx #0x32720
00083b0e  05 46                                            mov r5, r0
00083b10  df f8 f8 0b                                      ldr.w r0, [pc, #0xbf8]
00083b14  78 44                                            add r0, pc
00083b16  01 68                                            ldr r1, [r0]
00083b18  28 46                                            mov r0, r5
00083b1a  ae f7 f2 ee                                      blx #0x32900
00083b1e  dd e9 03 10                                      ldrd r1, r0, [sp, #0xc]
00083b22  b0 f7 54 e8                                      blx #0x33bcc
00083b26  80 f0 01 01                                      eor r1, r0, #1
00083b2a  28 46                                            mov r0, r5
00083b2c  01 22                                            movs r2, #1
00083b2e  af f7 92 e8                                      blx #0x32c54
00083b32  02 f0 6c b8                                      b.w #0x85c0e
00083b36  be f8 08 00                                      ldrh.w r0, [lr, #8]
00083b3a  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00083b3e  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00083b42  dd f8 10 80                                      ldr.w r8, [sp, #0x10]
00083b46  10 fb 01 f0                                      smulbb r0, r0, r1
00083b4a  00 28                                            cmp r0, #0
00083b4c  02 f0 4e 80                                      beq.w #0x85bec
00083b50  08 f1 18 04                                      add.w r4, r8, #0x18
00083b54  06 ae                                            add r6, sp, #0x18
00083b56  00 25                                            movs r5, #0
00083b58  94 ed 00 0a                                      vldr s0, [r4]
00083b5c  b7 ee c0 0a                                      vcvt.f64.f32 d0, s0
00083b60  51 ec 10 0b                                      vmov r0, r1, d0
00083b64  b0 f7 26 eb                                      blx #0x341b4
00083b68  41 ec 10 0b                                      vmov d0, r0, r1
00083b6c  04 34                                            adds r4, #4
00083b6e  01 35                                            adds r5, #1
00083b70  b7 ee c0 0b                                      vcvt.f32.f64 s0, d0
00083b74  86 ed 00 0a                                      vstr s0, [r6]
00083b78  04 36                                            adds r6, #4
00083b7a  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
00083b7e  00 89                                            ldrh r0, [r0, #8]
00083b80  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00083b84  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00083b88  10 fb 01 f0                                      smulbb r0, r0, r1
00083b8c  85 42                                            cmp r5, r0
00083b8e  e3 d3                                            blo #0x83b58
00083b90  02 f0 2c b8                                      b.w #0x85bec
00083b94  be f8 08 00                                      ldrh.w r0, [lr, #8]
00083b98  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00083b9c  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00083ba0  dd f8 10 80                                      ldr.w r8, [sp, #0x10]
00083ba4  10 fb 01 f0                                      smulbb r0, r0, r1
00083ba8  00 28                                            cmp r0, #0
00083baa  02 f0 1f 80                                      beq.w #0x85bec
00083bae  08 f1 18 04                                      add.w r4, r8, #0x18
00083bb2  06 ae                                            add r6, sp, #0x18
00083bb4  00 25                                            movs r5, #0
00083bb6  94 ed 00 0a                                      vldr s0, [r4]
00083bba  b7 ee c0 0a                                      vcvt.f64.f32 d0, s0
00083bbe  51 ec 10 0b                                      vmov r0, r1, d0
00083bc2  b0 f7 fe ea                                      blx #0x341c0
00083bc6  41 ec 10 0b                                      vmov d0, r0, r1
00083bca  04 34                                            adds r4, #4
00083bcc  01 35                                            adds r5, #1
00083bce  b7 ee c0 0b                                      vcvt.f32.f64 s0, d0
00083bd2  86 ed 00 0a                                      vstr s0, [r6]
00083bd6  04 36                                            adds r6, #4
00083bd8  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
00083bdc  00 89                                            ldrh r0, [r0, #8]
00083bde  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00083be2  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00083be6  10 fb 01 f0                                      smulbb r0, r0, r1
00083bea  85 42                                            cmp r5, r0
00083bec  e3 d3                                            blo #0x83bb6
00083bee  01 f0 fd bf                                      b.w #0x85bec
00083bf2  01 2c                                            cmp r4, #1
00083bf4  01 f0 a0 87                                      beq.w #0x85b38
00083bf8  04 99                                            ldr r1, [sp, #0x10]
00083bfa  00 2c                                            cmp r4, #0
00083bfc  41 f0 f6 87                                      bne.w #0x85bec
00083c00  05 98                                            ldr r0, [sp, #0x14]
00083c02  00 28                                            cmp r0, #0
00083c04  01 f0 f2 87                                      beq.w #0x85bec
00083c08  01 f1 18 00                                      add.w r0, r1, #0x18
00083c0c  00 21                                            movs r1, #0
00083c0e  50 f8 21 20                                      ldr.w r2, [r0, r1, lsl #2]
00083c12  06 ab                                            add r3, sp, #0x18
00083c14  d2 43                                            mvns r2, r2
00083c16  43 f8 21 20                                      str.w r2, [r3, r1, lsl #2]
00083c1a  01 31                                            adds r1, #1
00083c1c  05 9a                                            ldr r2, [sp, #0x14]
00083c1e  91 42                                            cmp r1, r2
00083c20  f5 d3                                            blo #0x83c0e
00083c22  01 f0 e3 bf                                      b.w #0x85bec
00083c26  be f8 08 00                                      ldrh.w r0, [lr, #8]
00083c2a  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00083c2e  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00083c32  10 fb 01 f0                                      smulbb r0, r0, r1
00083c36  04 99                                            ldr r1, [sp, #0x10]
00083c38  00 28                                            cmp r0, #0
00083c3a  01 f0 d7 87                                      beq.w #0x85bec
00083c3e  08 69                                            ldr r0, [r1, #0x10]
00083c40  18 31                                            adds r1, #0x18
00083c42  00 22                                            movs r2, #0
00083c44  8b 5c                                            ldrb r3, [r1, r2]
00083c46  06 ae                                            add r6, sp, #0x18
00083c48  83 f0 01 03                                      eor r3, r3, #1
00083c4c  b3 54                                            strb r3, [r6, r2]
00083c4e  01 32                                            adds r2, #1
00083c50  03 89                                            ldrh r3, [r0, #8]
00083c52  c3 f3 02 36                                      ubfx r6, r3, #0xc, #3
00083c56  c3 f3 42 23                                      ubfx r3, r3, #9, #3
00083c5a  13 fb 06 f3                                      smulbb r3, r3, r6
00083c5e  9a 42                                            cmp r2, r3
00083c60  f0 d3                                            blo #0x83c44
00083c62  01 f0 c3 bf                                      b.w #0x85bec
00083c66  be f8 08 00                                      ldrh.w r0, [lr, #8]
00083c6a  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00083c6e  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00083c72  10 fb 01 f0                                      smulbb r0, r0, r1
00083c76  00 28                                            cmp r0, #0
00083c78  04 98                                            ldr r0, [sp, #0x10]
00083c7a  01 f0 b7 87                                      beq.w #0x85bec
00083c7e  d9 f8 10 10                                      ldr.w r1, [sb, #0x10]
00083c82  18 30                                            adds r0, #0x18
00083c84  00 22                                            movs r2, #0
00083c86  49 68                                            ldr r1, [r1, #4]
00083c88  02 29                                            cmp r1, #2
00083c8a  0a d0                                            beq #0x83ca2
00083c8c  01 29                                            cmp r1, #1
00083c8e  18 bf                                            it ne
00083c90  00 29                                            cmpne r1, #0
00083c92  11 d1                                            bne #0x83cb8
00083c94  50 f8 22 30                                      ldr.w r3, [r0, r2, lsl #2]
00083c98  06 ae                                            add r6, sp, #0x18
00083c9a  5b 42                                            rsbs r3, r3, #0
00083c9c  46 f8 22 30                                      str.w r3, [r6, r2, lsl #2]
00083ca0  0a e0                                            b #0x83cb8
00083ca2  00 eb 82 03                                      add.w r3, r0, r2, lsl #2
00083ca6  93 ed 00 0a                                      vldr s0, [r3]
00083caa  06 ab                                            add r3, sp, #0x18
00083cac  03 eb 82 03                                      add.w r3, r3, r2, lsl #2
00083cb0  b1 ee 40 0a                                      vneg.f32 s0, s0
00083cb4  83 ed 00 0a                                      vstr s0, [r3]
00083cb8  be f8 08 30                                      ldrh.w r3, [lr, #8]
00083cbc  01 32                                            adds r2, #1
00083cbe  c3 f3 02 36                                      ubfx r6, r3, #0xc, #3
00083cc2  c3 f3 42 23                                      ubfx r3, r3, #9, #3
00083cc6  13 fb 06 f3                                      smulbb r3, r3, r6
00083cca  9a 42                                            cmp r2, r3
00083ccc  dc d3                                            blo #0x83c88
00083cce  01 f0 8d bf                                      b.w #0x85bec
00083cd2  be f8 08 00                                      ldrh.w r0, [lr, #8]
00083cd6  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00083cda  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00083cde  10 fb 01 f0                                      smulbb r0, r0, r1
00083ce2  00 28                                            cmp r0, #0
00083ce4  04 98                                            ldr r0, [sp, #0x10]
00083ce6  01 f0 81 87                                      beq.w #0x85bec
00083cea  d9 f8 10 10                                      ldr.w r1, [sb, #0x10]
00083cee  18 30                                            adds r0, #0x18
00083cf0  00 22                                            movs r2, #0
00083cf2  49 68                                            ldr r1, [r1, #4]
00083cf4  02 29                                            cmp r1, #2
00083cf6  05 d0                                            beq #0x83d04
00083cf8  01 29                                            cmp r1, #1
00083cfa  0f d0                                            beq #0x83d1c
00083cfc  d1 b9                                            cbnz r1, #0x83d34
00083cfe  50 f8 22 30                                      ldr.w r3, [r0, r2, lsl #2]
00083d02  14 e0                                            b #0x83d2e
00083d04  00 eb 82 03                                      add.w r3, r0, r2, lsl #2
00083d08  93 ed 00 0a                                      vldr s0, [r3]
00083d0c  06 ab                                            add r3, sp, #0x18
00083d0e  03 eb 82 03                                      add.w r3, r3, r2, lsl #2
00083d12  b0 ee c0 0a                                      vabs.f32 s0, s0
00083d16  83 ed 00 0a                                      vstr s0, [r3]
00083d1a  0b e0                                            b #0x83d34
00083d1c  50 f8 22 30                                      ldr.w r3, [r0, r2, lsl #2]
00083d20  06 ae                                            add r6, sp, #0x18
00083d22  b3 f1 ff 3f                                      cmp.w r3, #-1
00083d26  46 f8 22 30                                      str.w r3, [r6, r2, lsl #2]
00083d2a  03 dc                                            bgt #0x83d34
00083d2c  5b 42                                            rsbs r3, r3, #0
00083d2e  06 ae                                            add r6, sp, #0x18
00083d30  46 f8 22 30                                      str.w r3, [r6, r2, lsl #2]
00083d34  be f8 08 30                                      ldrh.w r3, [lr, #8]
00083d38  01 32                                            adds r2, #1
00083d3a  c3 f3 02 36                                      ubfx r6, r3, #0xc, #3
00083d3e  c3 f3 42 23                                      ubfx r3, r3, #9, #3
00083d42  13 fb 06 f3                                      smulbb r3, r3, r6
00083d46  9a 42                                            cmp r2, r3
00083d48  d4 d3                                            blo #0x83cf4
00083d4a  01 f0 4f bf                                      b.w #0x85bec
00083d4e  be f8 08 00                                      ldrh.w r0, [lr, #8]
00083d52  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00083d56  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00083d5a  10 fb 01 f0                                      smulbb r0, r0, r1
00083d5e  00 28                                            cmp r0, #0
00083d60  04 98                                            ldr r0, [sp, #0x10]
00083d62  01 f0 43 87                                      beq.w #0x85bec
00083d66  d9 f8 10 10                                      ldr.w r1, [sb, #0x10]
00083d6a  18 30                                            adds r0, #0x18
00083d6c  00 22                                            movs r2, #0
00083d6e  49 68                                            ldr r1, [r1, #4]
00083d70  02 29                                            cmp r1, #2
00083d72  0a d0                                            beq #0x83d8a
00083d74  01 29                                            cmp r1, #1
00083d76  1f d0                                            beq #0x83db8
00083d78  49 bb                                            cbnz r1, #0x83dce
00083d7a  50 f8 22 30                                      ldr.w r3, [r0, r2, lsl #2]
00083d7e  00 2b                                            cmp r3, #0
00083d80  4f f0 00 03                                      mov.w r3, #0
00083d84  c8 bf                                            it gt
00083d86  01 23                                            movgt r3, #1
00083d88  1e e0                                            b #0x83dc8
00083d8a  00 eb 82 03                                      add.w r3, r0, r2, lsl #2
00083d8e  93 ed 00 0a                                      vldr s0, [r3]
00083d92  00 23                                            movs r3, #0
00083d94  b5 ee c0 0a                                      vcmpe.f32 s0, #0
00083d98  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
00083d9c  c8 bf                                            it gt
00083d9e  01 23                                            movgt r3, #1
00083da0  48 bf                                            it mi
00083da2  01 3b                                            submi r3, #1
00083da4  00 ee 10 3a                                      vmov s0, r3
00083da8  06 ab                                            add r3, sp, #0x18
00083daa  03 eb 82 03                                      add.w r3, r3, r2, lsl #2
00083dae  b8 ee c0 0a                                      vcvt.f32.s32 s0, s0
00083db2  83 ed 00 0a                                      vstr s0, [r3]
00083db6  0a e0                                            b #0x83dce
00083db8  50 f8 22 30                                      ldr.w r3, [r0, r2, lsl #2]
00083dbc  00 26                                            movs r6, #0
00083dbe  00 2b                                            cmp r3, #0
00083dc0  c8 bf                                            it gt
00083dc2  01 26                                            movgt r6, #1
00083dc4  a6 eb d3 73                                      sub.w r3, r6, r3, lsr #31
00083dc8  06 ae                                            add r6, sp, #0x18
00083dca  46 f8 22 30                                      str.w r3, [r6, r2, lsl #2]
00083dce  be f8 08 30                                      ldrh.w r3, [lr, #8]
00083dd2  01 32                                            adds r2, #1
00083dd4  c3 f3 02 36                                      ubfx r6, r3, #0xc, #3
00083dd8  c3 f3 42 23                                      ubfx r3, r3, #9, #3
00083ddc  13 fb 06 f3                                      smulbb r3, r3, r6
00083de0  9a 42                                            cmp r2, r3
00083de2  c5 d3                                            blo #0x83d70
00083de4  01 f0 02 bf                                      b.w #0x85bec
00083de8  be f8 08 00                                      ldrh.w r0, [lr, #8]
00083dec  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00083df0  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00083df4  10 fb 01 f0                                      smulbb r0, r0, r1
00083df8  00 28                                            cmp r0, #0
00083dfa  04 98                                            ldr r0, [sp, #0x10]
00083dfc  01 f0 f6 86                                      beq.w #0x85bec
00083e00  b7 ee 00 0a                                      vmov.f32 s0, #1.000000e+00
00083e04  d9 f8 10 10                                      ldr.w r1, [sb, #0x10]
00083e08  18 30                                            adds r0, #0x18
00083e0a  00 22                                            movs r2, #0
00083e0c  00 23                                            movs r3, #0
00083e0e  49 68                                            ldr r1, [r1, #4]
00083e10  02 29                                            cmp r1, #2
00083e12  09 d0                                            beq #0x83e28
00083e14  01 29                                            cmp r1, #1
00083e16  18 d0                                            beq #0x83e4a
00083e18  09 bb                                            cbnz r1, #0x83e5e
00083e1a  50 f8 23 60                                      ldr.w r6, [r0, r3, lsl #2]
00083e1e  f6 b1                                            cbz r6, #0x83e5e
00083e20  01 2e                                            cmp r6, #1
00083e22  18 bf                                            it ne
00083e24  00 26                                            movne r6, #0
00083e26  17 e0                                            b #0x83e58
00083e28  00 eb 83 06                                      add.w r6, r0, r3, lsl #2
00083e2c  96 ed 00 1a                                      vldr s2, [r6]
00083e30  b5 ee 40 1a                                      vcmp.f32 s2, #0
00083e34  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
00083e38  11 d0                                            beq #0x83e5e
00083e3a  80 ee 01 1a                                      vdiv.f32 s2, s0, s2
00083e3e  06 ae                                            add r6, sp, #0x18
00083e40  06 eb 83 06                                      add.w r6, r6, r3, lsl #2
00083e44  86 ed 00 1a                                      vstr s2, [r6]
00083e48  09 e0                                            b #0x83e5e
00083e4a  50 f8 23 60                                      ldr.w r6, [r0, r3, lsl #2]
00083e4e  36 b1                                            cbz r6, #0x83e5e
00083e50  75 1c                                            adds r5, r6, #1
00083e52  03 2d                                            cmp r5, #3
00083e54  28 bf                                            it hs
00083e56  16 46                                            movhs r6, r2
00083e58  06 ad                                            add r5, sp, #0x18
00083e5a  45 f8 23 60                                      str.w r6, [r5, r3, lsl #2]
00083e5e  be f8 08 60                                      ldrh.w r6, [lr, #8]
00083e62  01 33                                            adds r3, #1
00083e64  c6 f3 02 35                                      ubfx r5, r6, #0xc, #3
00083e68  c6 f3 42 26                                      ubfx r6, r6, #9, #3
00083e6c  16 fb 05 f6                                      smulbb r6, r6, r5
00083e70  b3 42                                            cmp r3, r6
00083e72  cd d3                                            blo #0x83e10
00083e74  01 f0 ba be                                      b.w #0x85bec
00083e78  be f8 08 00                                      ldrh.w r0, [lr, #8]
00083e7c  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00083e80  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00083e84  04 9c                                            ldr r4, [sp, #0x10]
00083e86  10 fb 01 f0                                      smulbb r0, r0, r1
00083e8a  00 28                                            cmp r0, #0
00083e8c  01 f0 ae 86                                      beq.w #0x85bec
00083e90  b7 ee 00 8a                                      vmov.f32 s16, #1.000000e+00
00083e94  04 f1 18 08                                      add.w r8, r4, #0x18
00083e98  06 ad                                            add r5, sp, #0x18
00083e9a  00 26                                            movs r6, #0
00083e9c  98 ed 00 1a                                      vldr s2, [r8]
00083ea0  b1 ee c1 0a                                      vsqrt.f32 s0, s2
00083ea4  b4 ee c0 0a                                      vcmpe.f32 s0, s0
00083ea8  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
00083eac  05 d7                                            bvc #0x83eba
00083eae  11 ee 10 0a                                      vmov r0, s2
00083eb2  b0 f7 8c e9                                      blx #0x341cc
00083eb6  00 ee 10 0a                                      vmov s0, r0
00083eba  88 ee 00 0a                                      vdiv.f32 s0, s16, s0
00083ebe  08 f1 04 08                                      add.w r8, r8, #4
00083ec2  01 36                                            adds r6, #1
00083ec4  85 ed 00 0a                                      vstr s0, [r5]
00083ec8  04 35                                            adds r5, #4
00083eca  20 69                                            ldr r0, [r4, #0x10]
00083ecc  00 89                                            ldrh r0, [r0, #8]
00083ece  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00083ed2  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00083ed6  10 fb 01 f0                                      smulbb r0, r0, r1
00083eda  86 42                                            cmp r6, r0
00083edc  de d3                                            blo #0x83e9c
00083ede  01 f0 85 be                                      b.w #0x85bec
00083ee2  be f8 08 00                                      ldrh.w r0, [lr, #8]
00083ee6  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00083eea  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00083eee  dd f8 10 80                                      ldr.w r8, [sp, #0x10]
00083ef2  10 fb 01 f0                                      smulbb r0, r0, r1
00083ef6  00 28                                            cmp r0, #0
00083ef8  01 f0 78 86                                      beq.w #0x85bec
00083efc  08 f1 18 05                                      add.w r5, r8, #0x18
00083f00  06 ac                                            add r4, sp, #0x18
00083f02  00 26                                            movs r6, #0
00083f04  95 ed 00 1a                                      vldr s2, [r5]
00083f08  b1 ee c1 0a                                      vsqrt.f32 s0, s2
00083f0c  b4 ee c0 0a                                      vcmpe.f32 s0, s0
00083f10  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
00083f14  05 d7                                            bvc #0x83f22
00083f16  11 ee 10 0a                                      vmov r0, s2
00083f1a  b0 f7 58 e9                                      blx #0x341cc
00083f1e  00 ee 10 0a                                      vmov s0, r0
00083f22  84 ed 00 0a                                      vstr s0, [r4]
00083f26  04 34                                            adds r4, #4
00083f28  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
00083f2c  04 35                                            adds r5, #4
00083f2e  01 36                                            adds r6, #1
00083f30  00 89                                            ldrh r0, [r0, #8]
00083f32  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00083f36  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00083f3a  10 fb 01 f0                                      smulbb r0, r0, r1
00083f3e  86 42                                            cmp r6, r0
00083f40  e0 d3                                            blo #0x83f04
00083f42  01 f0 53 be                                      b.w #0x85bec
00083f46  be f8 08 20                                      ldrh.w r2, [lr, #8]
00083f4a  c2 f3 02 31                                      ubfx r1, r2, #0xc, #3
00083f4e  c2 f3 42 22                                      ubfx r2, r2, #9, #3
00083f52  12 fb 01 f1                                      smulbb r1, r2, r1
00083f56  00 29                                            cmp r1, #0
00083f58  3f f4 dc ac                                      beq.w #0x83914
00083f5c  04 9c                                            ldr r4, [sp, #0x10]
00083f5e  9f ed e7 1a                                      vldr s2, [pc, #0x39c]
00083f62  04 f1 18 05                                      add.w r5, r4, #0x18
00083f66  21 69                                            ldr r1, [r4, #0x10]
00083f68  0a 89                                            ldrh r2, [r1, #8]
00083f6a  c2 f3 02 31                                      ubfx r1, r2, #0xc, #3
00083f6e  c2 f3 42 22                                      ubfx r2, r2, #9, #3
00083f72  12 fb 01 f3                                      smulbb r3, r2, r1
00083f76  00 21                                            movs r1, #0
00083f78  2a 46                                            mov r2, r5
00083f7a  92 ed 00 0a                                      vldr s0, [r2]
00083f7e  01 31                                            adds r1, #1
00083f80  04 32                                            adds r2, #4
00083f82  99 42                                            cmp r1, r3
00083f84  20 ee 00 0a                                      vmul.f32 s0, s0, s0
00083f88  31 ee 00 1a                                      vadd.f32 s2, s2, s0
00083f8c  f5 d3                                            blo #0x83f7a
00083f8e  b5 ee 40 1a                                      vcmp.f32 s2, #0
00083f92  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
00083f96  3f f4 bd ac                                      beq.w #0x83914
00083f9a  b1 ee c1 0a                                      vsqrt.f32 s0, s2
00083f9e  b4 ee c0 0a                                      vcmpe.f32 s0, s0
00083fa2  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
00083fa6  05 d7                                            bvc #0x83fb4
00083fa8  11 ee 10 0a                                      vmov r0, s2
00083fac  b0 f7 0e e9                                      blx #0x341cc
00083fb0  00 ee 10 0a                                      vmov s0, r0
00083fb4  da f8 00 00                                      ldr.w r0, [sl]
00083fb8  00 89                                            ldrh r0, [r0, #8]
00083fba  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00083fbe  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00083fc2  10 fb 01 f0                                      smulbb r0, r0, r1
00083fc6  00 28                                            cmp r0, #0
00083fc8  01 f0 10 86                                      beq.w #0x85bec
00083fcc  20 69                                            ldr r0, [r4, #0x10]
00083fce  06 aa                                            add r2, sp, #0x18
00083fd0  00 21                                            movs r1, #0
00083fd2  95 ed 00 1a                                      vldr s2, [r5]
00083fd6  04 35                                            adds r5, #4
00083fd8  01 31                                            adds r1, #1
00083fda  81 ee 00 1a                                      vdiv.f32 s2, s2, s0
00083fde  82 ed 00 1a                                      vstr s2, [r2]
00083fe2  04 32                                            adds r2, #4
00083fe4  03 89                                            ldrh r3, [r0, #8]
00083fe6  c3 f3 02 36                                      ubfx r6, r3, #0xc, #3
00083fea  c3 f3 42 23                                      ubfx r3, r3, #9, #3
00083fee  13 fb 06 f3                                      smulbb r3, r3, r6
00083ff2  99 42                                            cmp r1, r3
00083ff4  ed d3                                            blo #0x83fd2
00083ff6  01 f0 f9 bd                                      b.w #0x85bec
00083ffa  be f8 08 00                                      ldrh.w r0, [lr, #8]
00083ffe  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00084002  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00084006  dd f8 10 80                                      ldr.w r8, [sp, #0x10]
0008400a  10 fb 01 f0                                      smulbb r0, r0, r1
0008400e  00 28                                            cmp r0, #0
00084010  01 f0 ec 85                                      beq.w #0x85bec
00084014  08 f1 18 04                                      add.w r4, r8, #0x18
00084018  06 ae                                            add r6, sp, #0x18
0008401a  00 25                                            movs r5, #0
0008401c  94 ed 00 0a                                      vldr s0, [r4]
00084020  b7 ee c0 0a                                      vcvt.f64.f32 d0, s0
00084024  51 ec 10 0b                                      vmov r0, r1, d0
00084028  b0 f7 d6 e8                                      blx #0x341d8
0008402c  41 ec 10 0b                                      vmov d0, r0, r1
00084030  04 34                                            adds r4, #4
00084032  01 35                                            adds r5, #1
00084034  b7 ee c0 0b                                      vcvt.f32.f64 s0, d0
00084038  86 ed 00 0a                                      vstr s0, [r6]
0008403c  04 36                                            adds r6, #4
0008403e  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
00084042  00 89                                            ldrh r0, [r0, #8]
00084044  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00084048  c0 f3 42 20                                      ubfx r0, r0, #9, #3
0008404c  10 fb 01 f0                                      smulbb r0, r0, r1
00084050  85 42                                            cmp r5, r0
00084052  e3 d3                                            blo #0x8401c
00084054  01 f0 ca bd                                      b.w #0x85bec
00084058  be f8 08 00                                      ldrh.w r0, [lr, #8]
0008405c  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00084060  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00084064  dd f8 10 80                                      ldr.w r8, [sp, #0x10]
00084068  10 fb 01 f0                                      smulbb r0, r0, r1
0008406c  00 28                                            cmp r0, #0
0008406e  01 f0 bd 85                                      beq.w #0x85bec
00084072  08 f1 18 04                                      add.w r4, r8, #0x18
00084076  06 ae                                            add r6, sp, #0x18
00084078  00 25                                            movs r5, #0
0008407a  94 ed 00 0a                                      vldr s0, [r4]
0008407e  b7 ee c0 0a                                      vcvt.f64.f32 d0, s0
00084082  51 ec 10 0b                                      vmov r0, r1, d0
00084086  b0 f7 ae e8                                      blx #0x341e4
0008408a  41 ec 10 0b                                      vmov d0, r0, r1
0008408e  04 34                                            adds r4, #4
00084090  01 35                                            adds r5, #1
00084092  b7 ee c0 0b                                      vcvt.f32.f64 s0, d0
00084096  86 ed 00 0a                                      vstr s0, [r6]
0008409a  04 36                                            adds r6, #4
0008409c  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
000840a0  00 89                                            ldrh r0, [r0, #8]
000840a2  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
000840a6  c0 f3 42 20                                      ubfx r0, r0, #9, #3
000840aa  10 fb 01 f0                                      smulbb r0, r0, r1
000840ae  85 42                                            cmp r5, r0
000840b0  e3 d3                                            blo #0x8407a
000840b2  01 f0 9b bd                                      b.w #0x85bec
000840b6  be f8 08 00                                      ldrh.w r0, [lr, #8]
000840ba  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
000840be  c0 f3 42 20                                      ubfx r0, r0, #9, #3
000840c2  dd f8 10 80                                      ldr.w r8, [sp, #0x10]
000840c6  10 fb 01 f0                                      smulbb r0, r0, r1
000840ca  00 28                                            cmp r0, #0
000840cc  01 f0 8e 85                                      beq.w #0x85bec
000840d0  08 f1 18 04                                      add.w r4, r8, #0x18
000840d4  06 ae                                            add r6, sp, #0x18
000840d6  00 25                                            movs r5, #0
000840d8  94 ed 00 0a                                      vldr s0, [r4]
000840dc  b7 ee c0 0a                                      vcvt.f64.f32 d0, s0
000840e0  51 ec 10 0b                                      vmov r0, r1, d0
000840e4  b0 f7 84 e8                                      blx #0x341f0
000840e8  41 ec 10 0b                                      vmov d0, r0, r1
000840ec  04 34                                            adds r4, #4
000840ee  01 35                                            adds r5, #1
000840f0  b7 ee c0 0b                                      vcvt.f32.f64 s0, d0
000840f4  86 ed 00 0a                                      vstr s0, [r6]
000840f8  04 36                                            adds r6, #4
000840fa  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
000840fe  00 89                                            ldrh r0, [r0, #8]
00084100  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00084104  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00084108  10 fb 01 f0                                      smulbb r0, r0, r1
0008410c  85 42                                            cmp r5, r0
0008410e  e3 d3                                            blo #0x840d8
00084110  01 f0 6c bd                                      b.w #0x85bec
00084114  be f8 08 00                                      ldrh.w r0, [lr, #8]
00084118  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
0008411c  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00084120  dd f8 10 80                                      ldr.w r8, [sp, #0x10]
00084124  10 fb 01 f0                                      smulbb r0, r0, r1
00084128  00 28                                            cmp r0, #0
0008412a  01 f0 5f 85                                      beq.w #0x85bec
0008412e  08 f1 18 04                                      add.w r4, r8, #0x18
00084132  06 ae                                            add r6, sp, #0x18
00084134  9f ed 72 8a                                      vldr s16, [pc, #0x1c8]
00084138  00 25                                            movs r5, #0
0008413a  94 ed 00 0a                                      vldr s0, [r4]
0008413e  b7 ee c0 0a                                      vcvt.f64.f32 d0, s0
00084142  51 ec 10 0b                                      vmov r0, r1, d0
00084146  b0 f7 4e e8                                      blx #0x341e4
0008414a  41 ec 10 0b                                      vmov d0, r0, r1
0008414e  04 34                                            adds r4, #4
00084150  01 35                                            adds r5, #1
00084152  b7 ee c0 0b                                      vcvt.f32.f64 s0, d0
00084156  20 ee 08 0a                                      vmul.f32 s0, s0, s16
0008415a  86 ed 00 0a                                      vstr s0, [r6]
0008415e  04 36                                            adds r6, #4
00084160  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
00084164  00 89                                            ldrh r0, [r0, #8]
00084166  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
0008416a  c0 f3 42 20                                      ubfx r0, r0, #9, #3
0008416e  10 fb 01 f0                                      smulbb r0, r0, r1
00084172  85 42                                            cmp r5, r0
00084174  e1 d3                                            blo #0x8413a
00084176  01 f0 39 bd                                      b.w #0x85bec
0008417a  be f8 08 00                                      ldrh.w r0, [lr, #8]
0008417e  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00084182  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00084186  10 fb 01 f0                                      smulbb r0, r0, r1
0008418a  04 99                                            ldr r1, [sp, #0x10]
0008418c  00 28                                            cmp r0, #0
0008418e  01 f0 2d 85                                      beq.w #0x85bec
00084192  08 69                                            ldr r0, [r1, #0x10]
00084194  18 31                                            adds r1, #0x18
00084196  00 22                                            movs r2, #0
00084198  91 ed 00 0a                                      vldr s0, [r1]
0008419c  06 ae                                            add r6, sp, #0x18
0008419e  04 31                                            adds r1, #4
000841a0  bd ee c0 0a                                      vcvt.s32.f32 s0, s0
000841a4  10 ee 10 3a                                      vmov r3, s0
000841a8  46 f8 22 30                                      str.w r3, [r6, r2, lsl #2]
000841ac  01 32                                            adds r2, #1
000841ae  03 89                                            ldrh r3, [r0, #8]
000841b0  c3 f3 02 36                                      ubfx r6, r3, #0xc, #3
000841b4  c3 f3 42 23                                      ubfx r3, r3, #9, #3
000841b8  13 fb 06 f3                                      smulbb r3, r3, r6
000841bc  9a 42                                            cmp r2, r3
000841be  eb d3                                            blo #0x84198
000841c0  01 f0 14 bd                                      b.w #0x85bec
000841c4  be f8 08 00                                      ldrh.w r0, [lr, #8]
000841c8  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
000841cc  c0 f3 42 20                                      ubfx r0, r0, #9, #3
000841d0  10 fb 01 f0                                      smulbb r0, r0, r1
000841d4  04 99                                            ldr r1, [sp, #0x10]
000841d6  00 28                                            cmp r0, #0
000841d8  01 f0 08 85                                      beq.w #0x85bec
000841dc  08 69                                            ldr r0, [r1, #0x10]
000841de  18 31                                            adds r1, #0x18
000841e0  00 22                                            movs r2, #0
000841e2  91 ed 00 0a                                      vldr s0, [r1]
000841e6  06 ae                                            add r6, sp, #0x18
000841e8  04 31                                            adds r1, #4
000841ea  bc ee c0 0a                                      vcvt.u32.f32 s0, s0
000841ee  10 ee 10 3a                                      vmov r3, s0
000841f2  46 f8 22 30                                      str.w r3, [r6, r2, lsl #2]
000841f6  01 32                                            adds r2, #1
000841f8  03 89                                            ldrh r3, [r0, #8]
000841fa  c3 f3 02 36                                      ubfx r6, r3, #0xc, #3
000841fe  c3 f3 42 23                                      ubfx r3, r3, #9, #3
00084202  13 fb 06 f3                                      smulbb r3, r3, r6
00084206  9a 42                                            cmp r2, r3
00084208  eb d3                                            blo #0x841e2
0008420a  01 f0 ef bc                                      b.w #0x85bec
0008420e  be f8 08 00                                      ldrh.w r0, [lr, #8]
00084212  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00084216  c0 f3 42 20                                      ubfx r0, r0, #9, #3
0008421a  04 9a                                            ldr r2, [sp, #0x10]
0008421c  10 fb 01 f0                                      smulbb r0, r0, r1
00084220  00 28                                            cmp r0, #0
00084222  01 f0 e3 84                                      beq.w #0x85bec
00084226  02 f1 18 00                                      add.w r0, r2, #0x18
0008422a  12 69                                            ldr r2, [r2, #0x10]
0008422c  06 ab                                            add r3, sp, #0x18
0008422e  00 21                                            movs r1, #0
00084230  00 eb 81 06                                      add.w r6, r0, r1, lsl #2
00084234  01 31                                            adds r1, #1
00084236  96 ed 00 0a                                      vldr s0, [r6]
0008423a  b8 ee c0 0a                                      vcvt.f32.s32 s0, s0
0008423e  83 ed 00 0a                                      vstr s0, [r3]
00084242  04 33                                            adds r3, #4
00084244  16 89                                            ldrh r6, [r2, #8]
00084246  c6 f3 02 35                                      ubfx r5, r6, #0xc, #3
0008424a  c6 f3 42 26                                      ubfx r6, r6, #9, #3
0008424e  16 fb 05 f6                                      smulbb r6, r6, r5
00084252  b1 42                                            cmp r1, r6
00084254  ec d3                                            blo #0x84230
00084256  01 f0 c9 bc                                      b.w #0x85bec
0008425a  be f8 08 00                                      ldrh.w r0, [lr, #8]
0008425e  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00084262  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00084266  10 fb 01 f0                                      smulbb r0, r0, r1
0008426a  04 99                                            ldr r1, [sp, #0x10]
0008426c  00 28                                            cmp r0, #0
0008426e  01 f0 bd 84                                      beq.w #0x85bec
00084272  08 69                                            ldr r0, [r1, #0x10]
00084274  18 31                                            adds r1, #0x18
00084276  00 22                                            movs r2, #0
00084278  91 ed 00 0a                                      vldr s0, [r1]
0008427c  00 23                                            movs r3, #0
0008427e  06 ae                                            add r6, sp, #0x18
00084280  04 31                                            adds r1, #4
00084282  b5 ee 40 0a                                      vcmp.f32 s0, #0
00084286  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
0008428a  18 bf                                            it ne
0008428c  01 23                                            movne r3, #1
0008428e  b3 54                                            strb r3, [r6, r2]
00084290  01 32                                            adds r2, #1
00084292  03 89                                            ldrh r3, [r0, #8]
00084294  c3 f3 02 36                                      ubfx r6, r3, #0xc, #3
00084298  c3 f3 42 23                                      ubfx r3, r3, #9, #3
0008429c  13 fb 06 f3                                      smulbb r3, r3, r6
000842a0  9a 42                                            cmp r2, r3
000842a2  e9 d3                                            blo #0x84278
000842a4  01 f0 a2 bc                                      b.w #0x85bec
000842a8  be f8 08 00                                      ldrh.w r0, [lr, #8]
000842ac  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
000842b0  c0 f3 42 20                                      ubfx r0, r0, #9, #3
000842b4  10 fb 01 f0                                      smulbb r0, r0, r1
000842b8  04 99                                            ldr r1, [sp, #0x10]
000842ba  00 28                                            cmp r0, #0
000842bc  01 f0 96 84                                      beq.w #0x85bec
000842c0  b7 ee 00 1a                                      vmov.f32 s2, #1.000000e+00
000842c4  08 69                                            ldr r0, [r1, #0x10]
000842c6  18 31                                            adds r1, #0x18
000842c8  06 ab                                            add r3, sp, #0x18
000842ca  9f ed 0c 0a                                      vldr s0, [pc, #0x30]
000842ce  00 22                                            movs r2, #0
000842d0  8e 5c                                            ldrb r6, [r1, r2]
000842d2  b0 ee 40 2a                                      vmov.f32 s4, s0
000842d6  01 32                                            adds r2, #1
000842d8  00 2e                                            cmp r6, #0
000842da  18 bf                                            it ne
000842dc  b0 ee 41 2a                                      vmovne.f32 s4, s2
000842e0  83 ed 00 2a                                      vstr s4, [r3]
000842e4  04 33                                            adds r3, #4
000842e6  06 89                                            ldrh r6, [r0, #8]
000842e8  c6 f3 02 35                                      ubfx r5, r6, #0xc, #3
000842ec  c6 f3 42 26                                      ubfx r6, r6, #9, #3
000842f0  16 fb 05 f6                                      smulbb r6, r6, r5
000842f4  b2 42                                            cmp r2, r6
000842f6  eb d3                                            blo #0x842d0
000842f8  01 f0 78 bc                                      b.w #0x85bec
000842fc  00 00                                            movs r0, r0
000842fe  00 00                                            movs r0, r0
00084300  3b aa                                            add r2, sp, #0xec
00084302  b8 3f                                            subs r7, #0xb8
00084304  be f8 08 00                                      ldrh.w r0, [lr, #8]
00084308  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
0008430c  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00084310  10 fb 01 f0                                      smulbb r0, r0, r1
00084314  04 99                                            ldr r1, [sp, #0x10]
00084316  00 28                                            cmp r0, #0
00084318  01 f0 68 84                                      beq.w #0x85bec
0008431c  01 f1 18 00                                      add.w r0, r1, #0x18
00084320  09 69                                            ldr r1, [r1, #0x10]
00084322  00 22                                            movs r2, #0
00084324  50 f8 22 30                                      ldr.w r3, [r0, r2, lsl #2]
00084328  06 ae                                            add r6, sp, #0x18
0008432a  00 2b                                            cmp r3, #0
0008432c  18 bf                                            it ne
0008432e  01 23                                            movne r3, #1
00084330  b3 54                                            strb r3, [r6, r2]
00084332  01 32                                            adds r2, #1
00084334  0b 89                                            ldrh r3, [r1, #8]
00084336  c3 f3 02 36                                      ubfx r6, r3, #0xc, #3
0008433a  c3 f3 42 23                                      ubfx r3, r3, #9, #3
0008433e  13 fb 06 f3                                      smulbb r3, r3, r6
00084342  9a 42                                            cmp r2, r3
00084344  ee d3                                            blo #0x84324
00084346  01 f0 51 bc                                      b.w #0x85bec
0008434a  be f8 08 00                                      ldrh.w r0, [lr, #8]
0008434e  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00084352  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00084356  10 fb 01 f0                                      smulbb r0, r0, r1
0008435a  04 99                                            ldr r1, [sp, #0x10]
0008435c  00 28                                            cmp r0, #0
0008435e  01 f0 45 84                                      beq.w #0x85bec
00084362  08 69                                            ldr r0, [r1, #0x10]
00084364  18 31                                            adds r1, #0x18
00084366  00 22                                            movs r2, #0
00084368  06 ae                                            add r6, sp, #0x18
0008436a  8b 5c                                            ldrb r3, [r1, r2]
0008436c  46 f8 22 30                                      str.w r3, [r6, r2, lsl #2]
00084370  01 32                                            adds r2, #1
00084372  03 89                                            ldrh r3, [r0, #8]
00084374  c3 f3 02 36                                      ubfx r6, r3, #0xc, #3
00084378  c3 f3 42 23                                      ubfx r3, r3, #9, #3
0008437c  13 fb 06 f3                                      smulbb r3, r3, r6
00084380  9a 42                                            cmp r2, r3
00084382  f1 d3                                            blo #0x84368
00084384  01 f0 32 bc                                      b.w #0x85bec
00084388  be f8 08 00                                      ldrh.w r0, [lr, #8]
0008438c  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00084390  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00084394  04 9a                                            ldr r2, [sp, #0x10]
00084396  10 fb 01 f0                                      smulbb r0, r0, r1
0008439a  00 28                                            cmp r0, #0
0008439c  01 f0 26 84                                      beq.w #0x85bec
000843a0  02 f1 18 00                                      add.w r0, r2, #0x18
000843a4  12 69                                            ldr r2, [r2, #0x10]
000843a6  06 ab                                            add r3, sp, #0x18
000843a8  00 21                                            movs r1, #0
000843aa  00 eb 81 06                                      add.w r6, r0, r1, lsl #2
000843ae  01 31                                            adds r1, #1
000843b0  96 ed 00 0a                                      vldr s0, [r6]
000843b4  b8 ee 40 0a                                      vcvt.f32.u32 s0, s0
000843b8  83 ed 00 0a                                      vstr s0, [r3]
000843bc  04 33                                            adds r3, #4
000843be  16 89                                            ldrh r6, [r2, #8]
000843c0  c6 f3 02 35                                      ubfx r5, r6, #0xc, #3
000843c4  c6 f3 42 26                                      ubfx r6, r6, #9, #3
000843c8  16 fb 05 f6                                      smulbb r6, r6, r5
000843cc  b1 42                                            cmp r1, r6
000843ce  ec d3                                            blo #0x843aa
000843d0  01 f0 0c bc                                      b.w #0x85bec
000843d4  be f8 08 00                                      ldrh.w r0, [lr, #8]
000843d8  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
000843dc  c0 f3 42 20                                      ubfx r0, r0, #9, #3
000843e0  10 fb 01 f0                                      smulbb r0, r0, r1
000843e4  04 99                                            ldr r1, [sp, #0x10]
000843e6  00 28                                            cmp r0, #0
000843e8  01 f0 00 84                                      beq.w #0x85bec
000843ec  01 f1 18 00                                      add.w r0, r1, #0x18
000843f0  09 69                                            ldr r1, [r1, #0x10]
000843f2  00 22                                            movs r2, #0
000843f4  06 ae                                            add r6, sp, #0x18
000843f6  50 f8 22 30                                      ldr.w r3, [r0, r2, lsl #2]
000843fa  46 f8 22 30                                      str.w r3, [r6, r2, lsl #2]
000843fe  01 32                                            adds r2, #1
00084400  0b 89                                            ldrh r3, [r1, #8]
00084402  c3 f3 02 36                                      ubfx r6, r3, #0xc, #3
00084406  c3 f3 42 23                                      ubfx r3, r3, #9, #3
0008440a  13 fb 06 f3                                      smulbb r3, r3, r6
0008440e  9a 42                                            cmp r2, r3
00084410  f0 d3                                            blo #0x843f4
00084412  01 f0 eb bb                                      b.w #0x85bec
00084416  be f8 08 00                                      ldrh.w r0, [lr, #8]
0008441a  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
0008441e  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00084422  10 fb 01 f0                                      smulbb r0, r0, r1
00084426  04 99                                            ldr r1, [sp, #0x10]
00084428  00 28                                            cmp r0, #0
0008442a  01 f0 df 83                                      beq.w #0x85bec
0008442e  01 f1 18 00                                      add.w r0, r1, #0x18
00084432  09 69                                            ldr r1, [r1, #0x10]
00084434  00 22                                            movs r2, #0
00084436  06 ae                                            add r6, sp, #0x18
00084438  50 f8 22 30                                      ldr.w r3, [r0, r2, lsl #2]
0008443c  46 f8 22 30                                      str.w r3, [r6, r2, lsl #2]
00084440  01 32                                            adds r2, #1
00084442  0b 89                                            ldrh r3, [r1, #8]
00084444  c3 f3 02 36                                      ubfx r6, r3, #0xc, #3
00084448  c3 f3 42 23                                      ubfx r3, r3, #9, #3
0008444c  13 fb 06 f3                                      smulbb r3, r3, r6
00084450  9a 42                                            cmp r2, r3
00084452  f0 d3                                            blo #0x84436
00084454  01 f0 ca bb                                      b.w #0x85bec
00084458  be f8 08 00                                      ldrh.w r0, [lr, #8]
0008445c  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00084460  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00084464  10 fb 01 f0                                      smulbb r0, r0, r1
00084468  04 99                                            ldr r1, [sp, #0x10]
0008446a  00 28                                            cmp r0, #0
0008446c  01 f0 be 83                                      beq.w #0x85bec
00084470  01 f1 18 00                                      add.w r0, r1, #0x18
00084474  09 69                                            ldr r1, [r1, #0x10]
00084476  00 22                                            movs r2, #0
00084478  06 ae                                            add r6, sp, #0x18
0008447a  50 f8 22 30                                      ldr.w r3, [r0, r2, lsl #2]
0008447e  46 f8 22 30                                      str.w r3, [r6, r2, lsl #2]
00084482  01 32                                            adds r2, #1
00084484  0b 89                                            ldrh r3, [r1, #8]
00084486  c3 f3 02 36                                      ubfx r6, r3, #0xc, #3
0008448a  c3 f3 42 23                                      ubfx r3, r3, #9, #3
0008448e  13 fb 06 f3                                      smulbb r3, r3, r6
00084492  9a 42                                            cmp r2, r3
00084494  f0 d3                                            blo #0x84478
00084496  01 f0 a9 bb                                      b.w #0x85bec
0008449a  be f8 08 00                                      ldrh.w r0, [lr, #8]
0008449e  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
000844a2  c0 f3 42 20                                      ubfx r0, r0, #9, #3
000844a6  10 fb 01 f0                                      smulbb r0, r0, r1
000844aa  04 99                                            ldr r1, [sp, #0x10]
000844ac  00 28                                            cmp r0, #0
000844ae  01 f0 9d 83                                      beq.w #0x85bec
000844b2  08 69                                            ldr r0, [r1, #0x10]
000844b4  18 31                                            adds r1, #0x18
000844b6  00 22                                            movs r2, #0
000844b8  06 ae                                            add r6, sp, #0x18
000844ba  51 f8 22 30                                      ldr.w r3, [r1, r2, lsl #2]
000844be  46 f8 22 30                                      str.w r3, [r6, r2, lsl #2]
000844c2  01 32                                            adds r2, #1
000844c4  03 89                                            ldrh r3, [r0, #8]
000844c6  c3 f3 02 36                                      ubfx r6, r3, #0xc, #3
000844ca  c3 f3 42 23                                      ubfx r3, r3, #9, #3
000844ce  13 fb 06 f3                                      smulbb r3, r3, r6
000844d2  9a 42                                            cmp r2, r3
000844d4  f0 d3                                            blo #0x844b8
000844d6  01 f0 89 bb                                      b.w #0x85bec
000844da  be f8 08 00                                      ldrh.w r0, [lr, #8]
000844de  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
000844e2  c0 f3 42 20                                      ubfx r0, r0, #9, #3
000844e6  10 fb 01 f0                                      smulbb r0, r0, r1
000844ea  04 99                                            ldr r1, [sp, #0x10]
000844ec  00 28                                            cmp r0, #0
000844ee  01 f0 7d 83                                      beq.w #0x85bec
000844f2  01 f1 18 00                                      add.w r0, r1, #0x18
000844f6  09 69                                            ldr r1, [r1, #0x10]
000844f8  00 22                                            movs r2, #0
000844fa  06 ae                                            add r6, sp, #0x18
000844fc  50 f8 22 30                                      ldr.w r3, [r0, r2, lsl #2]
00084500  46 f8 22 30                                      str.w r3, [r6, r2, lsl #2]
00084504  01 32                                            adds r2, #1
00084506  0b 89                                            ldrh r3, [r1, #8]
00084508  c3 f3 02 36                                      ubfx r6, r3, #0xc, #3
0008450c  c3 f3 42 23                                      ubfx r3, r3, #9, #3
00084510  13 fb 06 f3                                      smulbb r3, r3, r6
00084514  9a 42                                            cmp r2, r3
00084516  f0 d3                                            blo #0x844fa
00084518  01 f0 68 bb                                      b.w #0x85bec
0008451c  be f8 08 00                                      ldrh.w r0, [lr, #8]
00084520  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00084524  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00084528  10 fb 01 f0                                      smulbb r0, r0, r1
0008452c  04 99                                            ldr r1, [sp, #0x10]
0008452e  00 28                                            cmp r0, #0
00084530  01 f0 5c 83                                      beq.w #0x85bec
00084534  08 69                                            ldr r0, [r1, #0x10]
00084536  18 31                                            adds r1, #0x18
00084538  00 22                                            movs r2, #0
0008453a  06 ae                                            add r6, sp, #0x18
0008453c  51 f8 22 30                                      ldr.w r3, [r1, r2, lsl #2]
00084540  46 f8 22 30                                      str.w r3, [r6, r2, lsl #2]
00084544  01 32                                            adds r2, #1
00084546  03 89                                            ldrh r3, [r0, #8]
00084548  c3 f3 02 36                                      ubfx r6, r3, #0xc, #3
0008454c  c3 f3 42 23                                      ubfx r3, r3, #9, #3
00084550  13 fb 06 f3                                      smulbb r3, r3, r6
00084554  9a 42                                            cmp r2, r3
00084556  f0 d3                                            blo #0x8453a
00084558  01 f0 48 bb                                      b.w #0x85bec
0008455c  00 20                                            movs r0, #0
0008455e  8d f8 18 00                                      strb.w r0, [sp, #0x18]
00084562  be f8 08 00                                      ldrh.w r0, [lr, #8]
00084566  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
0008456a  c0 f3 42 20                                      ubfx r0, r0, #9, #3
0008456e  04 9a                                            ldr r2, [sp, #0x10]
00084570  10 fb 01 f0                                      smulbb r0, r0, r1
00084574  00 28                                            cmp r0, #0
00084576  01 f0 39 83                                      beq.w #0x85bec
0008457a  10 69                                            ldr r0, [r2, #0x10]
0008457c  01 23                                            movs r3, #1
0008457e  00 89                                            ldrh r0, [r0, #8]
00084580  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00084584  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00084588  10 fb 01 f0                                      smulbb r0, r0, r1
0008458c  02 f1 18 01                                      add.w r1, r2, #0x18
00084590  00 22                                            movs r2, #0
00084592  8e 5c                                            ldrb r6, [r1, r2]
00084594  0e b1                                            cbz r6, #0x8459a
00084596  8d f8 18 30                                      strb.w r3, [sp, #0x18]
0008459a  01 32                                            adds r2, #1
0008459c  82 42                                            cmp r2, r0
0008459e  f8 d3                                            blo #0x84592
000845a0  01 f0 24 bb                                      b.w #0x85bec
000845a4  be f8 08 00                                      ldrh.w r0, [lr, #8]
000845a8  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
000845ac  c0 f3 42 20                                      ubfx r0, r0, #9, #3
000845b0  10 fb 01 f0                                      smulbb r0, r0, r1
000845b4  00 28                                            cmp r0, #0
000845b6  04 98                                            ldr r0, [sp, #0x10]
000845b8  01 f0 18 83                                      beq.w #0x85bec
000845bc  d0 f8 10 80                                      ldr.w r8, [r0, #0x10]
000845c0  00 f1 18 05                                      add.w r5, r0, #0x18
000845c4  06 ac                                            add r4, sp, #0x18
000845c6  00 26                                            movs r6, #0
000845c8  55 f8 04 0b                                      ldr r0, [r5], #4
000845cc  af f7 16 ee                                      blx #0x341fc
000845d0  44 f8 04 0b                                      str r0, [r4], #4
000845d4  01 36                                            adds r6, #1
000845d6  b8 f8 08 00                                      ldrh.w r0, [r8, #8]
000845da  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
000845de  c0 f3 42 20                                      ubfx r0, r0, #9, #3
000845e2  10 fb 01 f0                                      smulbb r0, r0, r1
000845e6  86 42                                            cmp r6, r0
000845e8  ee d3                                            blo #0x845c8
000845ea  01 f0 ff ba                                      b.w #0x85bec
000845ee  be f8 08 00                                      ldrh.w r0, [lr, #8]
000845f2  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
000845f6  c0 f3 42 20                                      ubfx r0, r0, #9, #3
000845fa  10 fb 01 f0                                      smulbb r0, r0, r1
000845fe  00 28                                            cmp r0, #0
00084600  04 98                                            ldr r0, [sp, #0x10]
00084602  01 f0 f3 82                                      beq.w #0x85bec
00084606  d0 f8 10 80                                      ldr.w r8, [r0, #0x10]
0008460a  00 f1 18 05                                      add.w r5, r0, #0x18
0008460e  06 ac                                            add r4, sp, #0x18
00084610  00 26                                            movs r6, #0
00084612  55 f8 04 0b                                      ldr r0, [r5], #4
00084616  af f7 f8 ed                                      blx #0x34208
0008461a  44 f8 04 0b                                      str r0, [r4], #4
0008461e  01 36                                            adds r6, #1
00084620  b8 f8 08 00                                      ldrh.w r0, [r8, #8]
00084624  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00084628  c0 f3 42 20                                      ubfx r0, r0, #9, #3
0008462c  10 fb 01 f0                                      smulbb r0, r0, r1
00084630  86 42                                            cmp r6, r0
00084632  ee d3                                            blo #0x84612
00084634  01 f0 da ba                                      b.w #0x85bec
00084638  be f8 08 00                                      ldrh.w r0, [lr, #8]
0008463c  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00084640  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00084644  10 fb 01 f0                                      smulbb r0, r0, r1
00084648  00 28                                            cmp r0, #0
0008464a  04 98                                            ldr r0, [sp, #0x10]
0008464c  01 f0 ce 82                                      beq.w #0x85bec
00084650  d0 f8 10 80                                      ldr.w r8, [r0, #0x10]
00084654  00 f1 18 05                                      add.w r5, r0, #0x18
00084658  06 ac                                            add r4, sp, #0x18
0008465a  00 26                                            movs r6, #0
0008465c  55 f8 04 0b                                      ldr r0, [r5], #4
00084660  af f7 d8 ed                                      blx #0x34214
00084664  44 f8 04 0b                                      str r0, [r4], #4
00084668  01 36                                            adds r6, #1
0008466a  b8 f8 08 00                                      ldrh.w r0, [r8, #8]
0008466e  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00084672  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00084676  10 fb 01 f0                                      smulbb r0, r0, r1
0008467a  86 42                                            cmp r6, r0
0008467c  ee d3                                            blo #0x8465c
0008467e  01 f0 b5 ba                                      b.w #0x85bec
00084682  be f8 08 00                                      ldrh.w r0, [lr, #8]
00084686  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
0008468a  c0 f3 42 20                                      ubfx r0, r0, #9, #3
0008468e  10 fb 01 f0                                      smulbb r0, r0, r1
00084692  04 99                                            ldr r1, [sp, #0x10]
00084694  00 28                                            cmp r0, #0
00084696  01 f0 a9 82                                      beq.w #0x85bec
0008469a  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
0008469e  01 f1 18 05                                      add.w r5, r1, #0x18
000846a2  4f f0 00 08                                      mov.w r8, #0
000846a6  00 26                                            movs r6, #0
000846a8  44 68                                            ldr r4, [r0, #4]
000846aa  02 2c                                            cmp r4, #2
000846ac  07 d0                                            beq #0x846be
000846ae  01 2c                                            cmp r4, #1
000846b0  18 bf                                            it ne
000846b2  00 2c                                            cmpne r4, #0
000846b4  18 d1                                            bne #0x846e8
000846b6  06 a8                                            add r0, sp, #0x18
000846b8  40 f8 26 80                                      str.w r8, [r0, r6, lsl #2]
000846bc  14 e0                                            b #0x846e8
000846be  95 ed 00 0a                                      vldr s0, [r5]
000846c2  f2 46                                            mov sl, lr
000846c4  b7 ee c0 8a                                      vcvt.f64.f32 d8, s0
000846c8  51 ec 18 0b                                      vmov r0, r1, d8
000846cc  ae f7 ac e8                                      blx #0x32828
000846d0  41 ec 10 0b                                      vmov d0, r0, r1
000846d4  06 a8                                            add r0, sp, #0x18
000846d6  00 eb 86 00                                      add.w r0, r0, r6, lsl #2
000846da  d6 46                                            mov lr, sl
000846dc  38 ee 40 0b                                      vsub.f64 d0, d8, d0
000846e0  b7 ee c0 0b                                      vcvt.f32.f64 s0, d0
000846e4  80 ed 00 0a                                      vstr s0, [r0]
000846e8  be f8 08 00                                      ldrh.w r0, [lr, #8]
000846ec  04 35                                            adds r5, #4
000846ee  01 36                                            adds r6, #1
000846f0  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
000846f4  c0 f3 42 20                                      ubfx r0, r0, #9, #3
000846f8  10 fb 01 f0                                      smulbb r0, r0, r1
000846fc  86 42                                            cmp r6, r0
000846fe  d4 d3                                            blo #0x846aa
00084700  01 f0 74 ba                                      b.w #0x85bec
00084704  fe 8b                                            ldrh r6, [r7, #0x1e]
00084706  05 00                                            movs r5, r0
00084708  6a 8b                                            ldrh r2, [r5, #0x1a]
0008470a  05 00                                            movs r5, r0
0008470c  24 8a                                            ldrh r4, [r4, #0x10]
0008470e  05 00                                            movs r5, r0
00084710  00 fe ff c6                                      mcr2 p6, #0, ip, c0, c15, #7
00084714  00 fe ff 46                                      mcr2 p6, #0, r4, c0, c15, #7
00084718  00 00                                            movs r0, r0
0008471a  fe c2                                            stm r2!, {r1, r2, r3, r4, r5, r6, r7}
0008471c  00 00                                            movs r0, r0
0008471e  fe 42                                            cmn r6, r7
00084720  00 00                                            movs r0, r0
00084722  00 00                                            movs r0, r0
00084724  00 ff                                            .byte 0x00, 0xff
00084726  7f 47                                            bxns pc
00084728  00 00                                            movs r0, r0
0008472a  7f 43                                            muls r7, r7, r7
0008472c  be f8 08 00                                      ldrh.w r0, [lr, #8]
00084730  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00084734  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00084738  dd f8 10 80                                      ldr.w r8, [sp, #0x10]
0008473c  10 fb 01 f0                                      smulbb r0, r0, r1
00084740  00 28                                            cmp r0, #0
00084742  01 f0 53 82                                      beq.w #0x85bec
00084746  08 f1 18 04                                      add.w r4, r8, #0x18
0008474a  06 ae                                            add r6, sp, #0x18
0008474c  00 25                                            movs r5, #0
0008474e  54 f8 04 0b                                      ldr r0, [r4], #4
00084752  af f7 66 ed                                      blx #0x34220
00084756  00 ee 10 0a                                      vmov s0, r0
0008475a  01 35                                            adds r5, #1
0008475c  b8 ee c0 0a                                      vcvt.f32.s32 s0, s0
00084760  86 ed 00 0a                                      vstr s0, [r6]
00084764  04 36                                            adds r6, #4
00084766  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
0008476a  00 89                                            ldrh r0, [r0, #8]
0008476c  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00084770  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00084774  10 fb 01 f0                                      smulbb r0, r0, r1
00084778  85 42                                            cmp r5, r0
0008477a  e8 d3                                            blo #0x8474e
0008477c  01 f0 36 ba                                      b.w #0x85bec
00084780  1f ed 1d 9a                                      vldr s18, [pc, #-0x74]
00084784  bf ee 00 aa                                      vmov.f32 s20, #-1.000000e+00
00084788  04 98                                            ldr r0, [sp, #0x10]
0008478a  b0 ee 49 1a                                      vmov.f32 s2, s18
0008478e  90 ed 06 0a                                      vldr s0, [r0, #0x18]
00084792  90 ed 07 8a                                      vldr s16, [r0, #0x1c]
00084796  b4 ee ca 0a                                      vcmpe.f32 s0, s20
0008479a  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
0008479e  0c d4                                            bmi #0x847ba
000847a0  b7 ee 00 1a                                      vmov.f32 s2, #1.000000e+00
000847a4  b4 ee c1 0a                                      vcmpe.f32 s0, s2
000847a8  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
000847ac  c8 bf                                            it gt
000847ae  b0 ee 41 0a                                      vmovgt.f32 s0, s2
000847b2  1f ed 28 1a                                      vldr s2, [pc, #-0xa0]
000847b6  20 ee 01 1a                                      vmul.f32 s2, s0, s2
000847ba  11 ee 10 0a                                      vmov r0, s2
000847be  af f7 30 ed                                      blx #0x34220
000847c2  b4 ee ca 8a                                      vcmpe.f32 s16, s20
000847c6  84 b2                                            uxth r4, r0
000847c8  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
000847cc  00 f1 ad 80                                      bmi.w #0x8492a
000847d0  b7 ee 00 0a                                      vmov.f32 s0, #1.000000e+00
000847d4  b4 ee c0 8a                                      vcmpe.f32 s16, s0
000847d8  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
000847dc  c8 bf                                            it gt
000847de  b0 ee 40 8a                                      vmovgt.f32 s16, s0
000847e2  1f ed 34 0a                                      vldr s0, [pc, #-0xd0]
000847e6  9e e0                                            b #0x84926
000847e8  1f ed 35 8a                                      vldr s16, [pc, #-0xd4]
000847ec  bf ee 00 aa                                      vmov.f32 s20, #-1.000000e+00
000847f0  04 98                                            ldr r0, [sp, #0x10]
000847f2  b0 ee 48 1a                                      vmov.f32 s2, s16
000847f6  90 ed 06 0a                                      vldr s0, [r0, #0x18]
000847fa  90 ed 07 ca                                      vldr s24, [r0, #0x1c]
000847fe  90 ed 08 ba                                      vldr s22, [r0, #0x20]
00084802  b4 ee ca 0a                                      vcmpe.f32 s0, s20
00084806  90 ed 09 9a                                      vldr s18, [r0, #0x24]
0008480a  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
0008480e  0c d4                                            bmi #0x8482a
00084810  b7 ee 00 1a                                      vmov.f32 s2, #1.000000e+00
00084814  b4 ee c1 0a                                      vcmpe.f32 s0, s2
00084818  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
0008481c  c8 bf                                            it gt
0008481e  b0 ee 41 0a                                      vmovgt.f32 s0, s2
00084822  1f ed 42 1a                                      vldr s2, [pc, #-0x108]
00084826  20 ee 01 1a                                      vmul.f32 s2, s0, s2
0008482a  11 ee 10 0a                                      vmov r0, s2
0008482e  af f7 f8 ec                                      blx #0x34220
00084832  b0 ee 48 0a                                      vmov.f32 s0, s16
00084836  c5 b2                                            uxtb r5, r0
00084838  b4 ee ca ca                                      vcmpe.f32 s24, s20
0008483c  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
00084840  0c d4                                            bmi #0x8485c
00084842  b7 ee 00 0a                                      vmov.f32 s0, #1.000000e+00
00084846  b4 ee c0 ca                                      vcmpe.f32 s24, s0
0008484a  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
0008484e  c8 bf                                            it gt
00084850  b0 ee 40 ca                                      vmovgt.f32 s24, s0
00084854  1f ed 4f 0a                                      vldr s0, [pc, #-0x13c]
00084858  2c ee 00 0a                                      vmul.f32 s0, s24, s0
0008485c  10 ee 10 0a                                      vmov r0, s0
00084860  af f7 de ec                                      blx #0x34220
00084864  b0 ee 48 0a                                      vmov.f32 s0, s16
00084868  60 f3 0f 25                                      bfi r5, r0, #8, #8
0008486c  b4 ee ca ba                                      vcmpe.f32 s22, s20
00084870  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
00084874  0c d4                                            bmi #0x84890
00084876  b7 ee 00 0a                                      vmov.f32 s0, #1.000000e+00
0008487a  b4 ee c0 ba                                      vcmpe.f32 s22, s0
0008487e  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
00084882  c8 bf                                            it gt
00084884  b0 ee 40 ba                                      vmovgt.f32 s22, s0
00084888  1f ed 5c 0a                                      vldr s0, [pc, #-0x170]
0008488c  2b ee 00 0a                                      vmul.f32 s0, s22, s0
00084890  10 ee 10 0a                                      vmov r0, s0
00084894  af f7 c4 ec                                      blx #0x34220
00084898  00 04                                            lsls r0, r0, #0x10
0008489a  b4 ee ca 9a                                      vcmpe.f32 s18, s20
0008489e  3f fa 80 f0                                      uxtb16 r0, r0
000848a2  45 ea 00 04                                      orr.w r4, r5, r0
000848a6  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
000848aa  00 f1 b4 80                                      bmi.w #0x84a16
000848ae  b7 ee 00 0a                                      vmov.f32 s0, #1.000000e+00
000848b2  b4 ee c0 9a                                      vcmpe.f32 s18, s0
000848b6  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
000848ba  c8 bf                                            it gt
000848bc  b0 ee 40 9a                                      vmovgt.f32 s18, s0
000848c0  1f ed 6a 0a                                      vldr s0, [pc, #-0x1a8]
000848c4  a5 e0                                            b #0x84a12
000848c6  1f ed 6a 9a                                      vldr s18, [pc, #-0x1a8]
000848ca  04 98                                            ldr r0, [sp, #0x10]
000848cc  b0 ee 49 1a                                      vmov.f32 s2, s18
000848d0  90 ed 06 0a                                      vldr s0, [r0, #0x18]
000848d4  90 ed 07 8a                                      vldr s16, [r0, #0x1c]
000848d8  b5 ee c0 0a                                      vcmpe.f32 s0, #0
000848dc  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
000848e0  0c d4                                            bmi #0x848fc
000848e2  b7 ee 00 1a                                      vmov.f32 s2, #1.000000e+00
000848e6  b4 ee c1 0a                                      vcmpe.f32 s0, s2
000848ea  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
000848ee  c8 bf                                            it gt
000848f0  b0 ee 41 0a                                      vmovgt.f32 s0, s2
000848f4  1f ed 75 1a                                      vldr s2, [pc, #-0x1d4]
000848f8  20 ee 01 1a                                      vmul.f32 s2, s0, s2
000848fc  11 ee 10 0a                                      vmov r0, s2
00084900  af f7 8e ec                                      blx #0x34220
00084904  b5 ee c0 8a                                      vcmpe.f32 s16, #0
00084908  84 b2                                            uxth r4, r0
0008490a  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
0008490e  0c d4                                            bmi #0x8492a
00084910  b7 ee 00 0a                                      vmov.f32 s0, #1.000000e+00
00084914  b4 ee c0 8a                                      vcmpe.f32 s16, s0
00084918  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
0008491c  c8 bf                                            it gt
0008491e  b0 ee 40 8a                                      vmovgt.f32 s16, s0
00084922  1f ed 80 0a                                      vldr s0, [pc, #-0x200]
00084926  28 ee 00 9a                                      vmul.f32 s18, s16, s0
0008492a  19 ee 10 0a                                      vmov r0, s18
0008492e  af f7 78 ec                                      blx #0x34220
00084932  44 ea 00 40                                      orr.w r0, r4, r0, lsl #16
00084936  06 90                                            str r0, [sp, #0x18]
00084938  01 f0 58 b9                                      b.w #0x85bec
0008493c  1f ed 88 8a                                      vldr s16, [pc, #-0x220]
00084940  04 98                                            ldr r0, [sp, #0x10]
00084942  b0 ee 48 1a                                      vmov.f32 s2, s16
00084946  90 ed 06 0a                                      vldr s0, [r0, #0x18]
0008494a  90 ed 07 ba                                      vldr s22, [r0, #0x1c]
0008494e  b5 ee c0 0a                                      vcmpe.f32 s0, #0
00084952  90 ed 08 aa                                      vldr s20, [r0, #0x20]
00084956  90 ed 09 9a                                      vldr s18, [r0, #0x24]
0008495a  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
0008495e  0c d4                                            bmi #0x8497a
00084960  b7 ee 00 1a                                      vmov.f32 s2, #1.000000e+00
00084964  b4 ee c1 0a                                      vcmpe.f32 s0, s2
00084968  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
0008496c  c8 bf                                            it gt
0008496e  b0 ee 41 0a                                      vmovgt.f32 s0, s2
00084972  1f ed 93 1a                                      vldr s2, [pc, #-0x24c]
00084976  20 ee 01 1a                                      vmul.f32 s2, s0, s2
0008497a  11 ee 10 0a                                      vmov r0, s2
0008497e  af f7 50 ec                                      blx #0x34220
00084982  b0 ee 48 0a                                      vmov.f32 s0, s16
00084986  c5 b2                                            uxtb r5, r0
00084988  b5 ee c0 ba                                      vcmpe.f32 s22, #0
0008498c  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
00084990  0c d4                                            bmi #0x849ac
00084992  b7 ee 00 0a                                      vmov.f32 s0, #1.000000e+00
00084996  b4 ee c0 ba                                      vcmpe.f32 s22, s0
0008499a  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
0008499e  c8 bf                                            it gt
000849a0  b0 ee 40 ba                                      vmovgt.f32 s22, s0
000849a4  1f ed a0 0a                                      vldr s0, [pc, #-0x280]
000849a8  2b ee 00 0a                                      vmul.f32 s0, s22, s0
000849ac  10 ee 10 0a                                      vmov r0, s0
000849b0  af f7 36 ec                                      blx #0x34220
000849b4  b0 ee 48 0a                                      vmov.f32 s0, s16
000849b8  60 f3 0f 25                                      bfi r5, r0, #8, #8
000849bc  b5 ee c0 aa                                      vcmpe.f32 s20, #0
000849c0  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
000849c4  0c d4                                            bmi #0x849e0
000849c6  b7 ee 00 0a                                      vmov.f32 s0, #1.000000e+00
000849ca  b4 ee c0 aa                                      vcmpe.f32 s20, s0
000849ce  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
000849d2  c8 bf                                            it gt
000849d4  b0 ee 40 aa                                      vmovgt.f32 s20, s0
000849d8  1f ed ad 0a                                      vldr s0, [pc, #-0x2b4]
000849dc  2a ee 00 0a                                      vmul.f32 s0, s20, s0
000849e0  10 ee 10 0a                                      vmov r0, s0
000849e4  af f7 1c ec                                      blx #0x34220
000849e8  00 04                                            lsls r0, r0, #0x10
000849ea  b5 ee c0 9a                                      vcmpe.f32 s18, #0
000849ee  3f fa 80 f0                                      uxtb16 r0, r0
000849f2  45 ea 00 04                                      orr.w r4, r5, r0
000849f6  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
000849fa  0c d4                                            bmi #0x84a16
000849fc  b7 ee 00 0a                                      vmov.f32 s0, #1.000000e+00
00084a00  b4 ee c0 9a                                      vcmpe.f32 s18, s0
00084a04  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
00084a08  c8 bf                                            it gt
00084a0a  b0 ee 40 9a                                      vmovgt.f32 s18, s0
00084a0e  1f ed ba 0a                                      vldr s0, [pc, #-0x2e8]
00084a12  29 ee 00 8a                                      vmul.f32 s16, s18, s0
00084a16  18 ee 10 0a                                      vmov r0, s16
00084a1a  af f7 02 ec                                      blx #0x34220
00084a1e  44 ea 00 60                                      orr.w r0, r4, r0, lsl #24
00084a22  06 90                                            str r0, [sp, #0x18]
00084a24  01 f0 e2 b8                                      b.w #0x85bec
00084a28  04 98                                            ldr r0, [sp, #0x10]
00084a2a  01 46                                            mov r1, r0
00084a2c  d1 e9 06 05                                      ldrd r0, r5, [r1, #0x18]
00084a30  af f7 fc eb                                      blx #0x3422c
00084a34  06 46                                            mov r6, r0
00084a36  28 46                                            mov r0, r5
00084a38  af f7 f8 eb                                      blx #0x3422c
00084a3c  46 ea 00 40                                      orr.w r0, r6, r0, lsl #16
00084a40  06 90                                            str r0, [sp, #0x18]
00084a42  01 f0 d3 b8                                      b.w #0x85bec
00084a46  04 98                                            ldr r0, [sp, #0x10]
00084a48  1f ed ce 1a                                      vldr s2, [pc, #-0x338]
00084a4c  80 69                                            ldr r0, [r0, #0x18]
00084a4e  01 b2                                            sxth r1, r0
00084a50  00 ee 10 1a                                      vmov s0, r1
00084a54  b8 ee c0 0a                                      vcvt.f32.s32 s0, s0
00084a58  80 ee 01 3a                                      vdiv.f32 s6, s0, s2
00084a5c  bf ee 00 0a                                      vmov.f32 s0, #-1.000000e+00
00084a60  b0 ee 40 2a                                      vmov.f32 s4, s0
00084a64  b4 ee c0 3a                                      vcmpe.f32 s6, s0
00084a68  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
00084a6c  08 d4                                            bmi #0x84a80
00084a6e  b7 ee 00 2a                                      vmov.f32 s4, #1.000000e+00
00084a72  b4 ee c2 3a                                      vcmpe.f32 s6, s4
00084a76  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
00084a7a  d8 bf                                            it le
00084a7c  b0 ee 43 2a                                      vmovle.f32 s4, s6
00084a80  00 14                                            asrs r0, r0, #0x10
00084a82  03 ee 10 0a                                      vmov s6, r0
00084a86  b8 ee c3 3a                                      vcvt.f32.s32 s6, s6
00084a8a  8d ed 06 2a                                      vstr s4, [sp, #0x18]
00084a8e  83 ee 01 1a                                      vdiv.f32 s2, s6, s2
00084a92  b4 ee c0 1a                                      vcmpe.f32 s2, s0
00084a96  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
00084a9a  08 d4                                            bmi #0x84aae
00084a9c  b7 ee 00 0a                                      vmov.f32 s0, #1.000000e+00
00084aa0  b4 ee c0 1a                                      vcmpe.f32 s2, s0
00084aa4  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
00084aa8  d8 bf                                            it le
00084aaa  b0 ee 41 0a                                      vmovle.f32 s0, s2
00084aae  8d ed 07 0a                                      vstr s0, [sp, #0x1c]
00084ab2  01 f0 9b b8                                      b.w #0x85bec
00084ab6  04 99                                            ldr r1, [sp, #0x10]
00084ab8  1f ed e8 1a                                      vldr s2, [pc, #-0x3a0]
00084abc  8a 69                                            ldr r2, [r1, #0x18]
00084abe  51 b2                                            sxtb r1, r2
00084ac0  00 ee 10 1a                                      vmov s0, r1
00084ac4  b8 ee c0 0a                                      vcvt.f32.s32 s0, s0
00084ac8  80 ee 01 3a                                      vdiv.f32 s6, s0, s2
00084acc  bf ee 00 0a                                      vmov.f32 s0, #-1.000000e+00
00084ad0  b0 ee 40 2a                                      vmov.f32 s4, s0
00084ad4  b4 ee c0 3a                                      vcmpe.f32 s6, s0
00084ad8  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
00084adc  08 d4                                            bmi #0x84af0
00084ade  b7 ee 00 2a                                      vmov.f32 s4, #1.000000e+00
00084ae2  b4 ee c2 3a                                      vcmpe.f32 s6, s4
00084ae6  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
00084aea  d8 bf                                            it le
00084aec  b0 ee 43 2a                                      vmovle.f32 s4, s6
00084af0  42 f3 07 21                                      sbfx r1, r2, #8, #8
00084af4  03 ee 10 1a                                      vmov s6, r1
00084af8  b8 ee c3 3a                                      vcvt.f32.s32 s6, s6
00084afc  8d ed 06 2a                                      vstr s4, [sp, #0x18]
00084b00  b0 ee 40 2a                                      vmov.f32 s4, s0
00084b04  83 ee 01 3a                                      vdiv.f32 s6, s6, s2
00084b08  b4 ee c0 3a                                      vcmpe.f32 s6, s0
00084b0c  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
00084b10  08 d4                                            bmi #0x84b24
00084b12  b7 ee 00 2a                                      vmov.f32 s4, #1.000000e+00
00084b16  b4 ee c2 3a                                      vcmpe.f32 s6, s4
00084b1a  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
00084b1e  d8 bf                                            it le
00084b20  b0 ee 43 2a                                      vmovle.f32 s4, s6
00084b24  42 f3 07 41                                      sbfx r1, r2, #0x10, #8
00084b28  03 ee 10 1a                                      vmov s6, r1
00084b2c  b8 ee c3 3a                                      vcvt.f32.s32 s6, s6
00084b30  8d ed 07 2a                                      vstr s4, [sp, #0x1c]
00084b34  b0 ee 40 2a                                      vmov.f32 s4, s0
00084b38  83 ee 01 3a                                      vdiv.f32 s6, s6, s2
00084b3c  b4 ee c0 3a                                      vcmpe.f32 s6, s0
00084b40  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
00084b44  08 d4                                            bmi #0x84b58
00084b46  b7 ee 00 2a                                      vmov.f32 s4, #1.000000e+00
00084b4a  b4 ee c2 3a                                      vcmpe.f32 s6, s4
00084b4e  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
00084b52  d8 bf                                            it le
00084b54  b0 ee 43 2a                                      vmovle.f32 s4, s6
00084b58  10 16                                            asrs r0, r2, #0x18
00084b5a  03 ee 10 0a                                      vmov s6, r0
00084b5e  b8 ee c3 3a                                      vcvt.f32.s32 s6, s6
00084b62  8d ed 08 2a                                      vstr s4, [sp, #0x20]
00084b66  83 ee 01 1a                                      vdiv.f32 s2, s6, s2
00084b6a  b4 ee c0 1a                                      vcmpe.f32 s2, s0
00084b6e  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
00084b72  08 d4                                            bmi #0x84b86
00084b74  b7 ee 00 0a                                      vmov.f32 s0, #1.000000e+00
00084b78  b4 ee c0 1a                                      vcmpe.f32 s2, s0
00084b7c  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
00084b80  d8 bf                                            it le
00084b82  b0 ee 41 0a                                      vmovle.f32 s0, s2
00084b86  8d ed 09 0a                                      vstr s0, [sp, #0x24]
00084b8a  01 f0 2f b8                                      b.w #0x85bec
00084b8e  04 98                                            ldr r0, [sp, #0x10]
00084b90  9f ed e4 1a                                      vldr s2, [pc, #0x390]
00084b94  80 69                                            ldr r0, [r0, #0x18]
00084b96  01 0c                                            lsrs r1, r0, #0x10
00084b98  80 b2                                            uxth r0, r0
00084b9a  00 ee 10 1a                                      vmov s0, r1
00084b9e  02 ee 10 0a                                      vmov s4, r0
00084ba2  b8 ee 40 0a                                      vcvt.f32.u32 s0, s0
00084ba6  b8 ee 42 2a                                      vcvt.f32.u32 s4, s4
00084baa  80 ee 01 0a                                      vdiv.f32 s0, s0, s2
00084bae  82 ee 01 1a                                      vdiv.f32 s2, s4, s2
00084bb2  8d ed 07 0a                                      vstr s0, [sp, #0x1c]
00084bb6  8d ed 06 1a                                      vstr s2, [sp, #0x18]
00084bba  01 f0 17 b8                                      b.w #0x85bec
00084bbe  04 98                                            ldr r0, [sp, #0x10]
00084bc0  9f ed d9 1a                                      vldr s2, [pc, #0x364]
00084bc4  80 69                                            ldr r0, [r0, #0x18]
00084bc6  c0 f3 07 21                                      ubfx r1, r0, #8, #8
00084bca  c2 b2                                            uxtb r2, r0
00084bcc  03 ee 10 2a                                      vmov s6, r2
00084bd0  00 ee 10 1a                                      vmov s0, r1
00084bd4  b8 ee 40 0a                                      vcvt.f32.u32 s0, s0
00084bd8  c0 f3 07 41                                      ubfx r1, r0, #0x10, #8
00084bdc  00 0e                                            lsrs r0, r0, #0x18
00084bde  02 ee 10 1a                                      vmov s4, r1
00084be2  04 ee 10 0a                                      vmov s8, r0
00084be6  b8 ee 42 2a                                      vcvt.f32.u32 s4, s4
00084bea  b8 ee 43 3a                                      vcvt.f32.u32 s6, s6
00084bee  b8 ee 44 4a                                      vcvt.f32.u32 s8, s8
00084bf2  80 ee 01 0a                                      vdiv.f32 s0, s0, s2
00084bf6  83 ee 01 3a                                      vdiv.f32 s6, s6, s2
00084bfa  82 ee 01 2a                                      vdiv.f32 s4, s4, s2
00084bfe  84 ee 01 1a                                      vdiv.f32 s2, s8, s2
00084c02  8d ed 07 0a                                      vstr s0, [sp, #0x1c]
00084c06  8d ed 06 3a                                      vstr s6, [sp, #0x18]
00084c0a  8d ed 08 2a                                      vstr s4, [sp, #0x20]
00084c0e  8d ed 09 1a                                      vstr s2, [sp, #0x24]
00084c12  00 f0 eb bf                                      b.w #0x85bec
00084c16  04 98                                            ldr r0, [sp, #0x10]
00084c18  84 69                                            ldr r4, [r0, #0x18]
00084c1a  a0 b2                                            uxth r0, r4
00084c1c  af f7 0c eb                                      blx #0x34238
00084c20  06 90                                            str r0, [sp, #0x18]
00084c22  20 0c                                            lsrs r0, r4, #0x10
00084c24  af f7 08 eb                                      blx #0x34238
00084c28  07 90                                            str r0, [sp, #0x1c]
00084c2a  00 f0 df bf                                      b.w #0x85bec
00084c2e  bc f1 00 0f                                      cmp.w ip, #0
00084c32  dd f8 10 c0                                      ldr.w ip, [sp, #0x10]
00084c36  00 f0 d9 87                                      beq.w #0x85bec
00084c3a  00 20                                            movs r0, #0
00084c3c  00 21                                            movs r1, #0
00084c3e  0c eb 81 02                                      add.w r2, ip, r1, lsl #2
00084c42  92 69                                            ldr r2, [r2, #0x18]
00084c44  b0 eb 52 0f                                      cmp.w r0, r2, lsr #1
00084c48  0d d0                                            beq #0x84c66
00084c4a  05 9c                                            ldr r4, [sp, #0x14]
00084c4c  56 08                                            lsrs r6, r2, #1
00084c4e  1f 23                                            movs r3, #0x1f
00084c50  06 f0 01 05                                      and r5, r6, #1
00084c54  01 3b                                            subs r3, #1
00084c56  45 ea 42 02                                      orr.w r2, r5, r2, lsl #1
00084c5a  75 08                                            lsrs r5, r6, #1
00084c5c  b0 eb 56 0f                                      cmp.w r0, r6, lsr #1
00084c60  2e 46                                            mov r6, r5
00084c62  f5 d1                                            bne #0x84c50
00084c64  01 e0                                            b #0x84c6a
00084c66  1f 23                                            movs r3, #0x1f
00084c68  05 9c                                            ldr r4, [sp, #0x14]
00084c6a  9a 40                                            lsls r2, r3
00084c6c  06 ab                                            add r3, sp, #0x18
00084c6e  43 f8 21 20                                      str.w r2, [r3, r1, lsl #2]
00084c72  01 31                                            adds r1, #1
00084c74  a1 42                                            cmp r1, r4
00084c76  e2 d3                                            blo #0x84c3e
00084c78  00 f0 b8 bf                                      b.w #0x85bec
00084c7c  04 9d                                            ldr r5, [sp, #0x10]
00084c7e  bc f1 00 0f                                      cmp.w ip, #0
00084c82  00 f0 b3 87                                      beq.w #0x85bec
00084c86  00 20                                            movs r0, #0
00084c88  05 eb 80 01                                      add.w r1, r5, r0, lsl #2
00084c8c  8a 69                                            ldr r2, [r1, #0x18]
00084c8e  00 21                                            movs r1, #0
00084c90  2a b1                                            cbz r2, #0x84c9e
00084c92  05 9e                                            ldr r6, [sp, #0x14]
00084c94  53 1e                                            subs r3, r2, #1
00084c96  01 31                                            adds r1, #1
00084c98  1a 40                                            ands r2, r3
00084c9a  fb d1                                            bne #0x84c94
00084c9c  00 e0                                            b #0x84ca0
00084c9e  05 9e                                            ldr r6, [sp, #0x14]
00084ca0  06 aa                                            add r2, sp, #0x18
00084ca2  42 f8 20 10                                      str.w r1, [r2, r0, lsl #2]
00084ca6  01 30                                            adds r0, #1
00084ca8  b0 42                                            cmp r0, r6
00084caa  ed d3                                            blo #0x84c88
00084cac  00 f0 9e bf                                      b.w #0x85bec
00084cb0  dd f8 10 e0                                      ldr.w lr, [sp, #0x10]
00084cb4  bc f1 00 0f                                      cmp.w ip, #0
00084cb8  00 f0 98 87                                      beq.w #0x85bec
00084cbc  00 20                                            movs r0, #0
00084cbe  4f f0 00 41                                      mov.w r1, #-0x80000000
00084cc2  0e eb 80 02                                      add.w r2, lr, r0, lsl #2
00084cc6  92 69                                            ldr r2, [r2, #0x18]
00084cc8  5a b1                                            cbz r2, #0x84ce2
00084cca  de f8 10 30                                      ldr.w r3, [lr, #0x10]
00084cce  56 1c                                            adds r6, r2, #1
00084cd0  dd f8 14 c0                                      ldr.w ip, [sp, #0x14]
00084cd4  5e 68                                            ldr r6, [r3, #4]
00084cd6  08 bf                                            it eq
00084cd8  01 2e                                            cmpeq r6, #1
00084cda  07 d1                                            bne #0x84cec
00084cdc  4f f0 ff 32                                      mov.w r2, #-1
00084ce0  1a e0                                            b #0x84d18
00084ce2  4f f0 ff 32                                      mov.w r2, #-1
00084ce6  dd f8 14 c0                                      ldr.w ip, [sp, #0x14]
00084cea  15 e0                                            b #0x84d18
00084cec  02 f0 00 43                                      and r3, r2, #0x80000000
00084cf0  00 2e                                            cmp r6, #0
00084cf2  18 bf                                            it ne
00084cf4  1e 46                                            movne r6, r3
00084cf6  b3 42                                            cmp r3, r6
00084cf8  0b d1                                            bne #0x84d12
00084cfa  00 26                                            movs r6, #0
00084cfc  01 ea 42 04                                      and.w r4, r1, r2, lsl #1
00084d00  75 1c                                            adds r5, r6, #1
00084d02  9c 42                                            cmp r4, r3
00084d04  06 d1                                            bne #0x84d14
00084d06  1f 2e                                            cmp r6, #0x1f
00084d08  4f ea 42 02                                      lsl.w r2, r2, #1
00084d0c  2e 46                                            mov r6, r5
00084d0e  f5 d1                                            bne #0x84cfc
00084d10  00 e0                                            b #0x84d14
00084d12  00 25                                            movs r5, #0
00084d14  c5 f1 1f 02                                      rsb.w r2, r5, #0x1f
00084d18  06 ab                                            add r3, sp, #0x18
00084d1a  43 f8 20 20                                      str.w r2, [r3, r0, lsl #2]
00084d1e  01 30                                            adds r0, #1
00084d20  60 45                                            cmp r0, ip
00084d22  ce d3                                            blo #0x84cc2
00084d24  00 f0 62 bf                                      b.w #0x85bec
00084d28  04 9c                                            ldr r4, [sp, #0x10]
00084d2a  bc f1 00 0f                                      cmp.w ip, #0
00084d2e  00 f0 5d 87                                      beq.w #0x85bec
00084d32  00 20                                            movs r0, #0
00084d34  01 21                                            movs r1, #1
00084d36  04 eb 80 02                                      add.w r2, r4, r0, lsl #2
00084d3a  93 69                                            ldr r3, [r2, #0x18]
00084d3c  5b b1                                            cbz r3, #0x84d56
00084d3e  05 9d                                            ldr r5, [sp, #0x14]
00084d40  da 07                                            lsls r2, r3, #0x1f
00084d42  4f f0 00 02                                      mov.w r2, #0
00084d46  09 d1                                            bne #0x84d5c
00084d48  5e 08                                            lsrs r6, r3, #1
00084d4a  01 32                                            adds r2, #1
00084d4c  11 ea 53 0f                                      tst.w r1, r3, lsr #1
00084d50  33 46                                            mov r3, r6
00084d52  f9 d0                                            beq #0x84d48
00084d54  02 e0                                            b #0x84d5c
00084d56  4f f0 ff 32                                      mov.w r2, #-1
00084d5a  05 9d                                            ldr r5, [sp, #0x14]
00084d5c  06 ab                                            add r3, sp, #0x18
00084d5e  43 f8 20 20                                      str.w r2, [r3, r0, lsl #2]
00084d62  01 30                                            adds r0, #1
00084d64  a8 42                                            cmp r0, r5
00084d66  e6 d3                                            blo #0x84d36
00084d68  00 f0 40 bf                                      b.w #0x85bec
00084d6c  04 98                                            ldr r0, [sp, #0x10]
00084d6e  bc f1 00 0f                                      cmp.w ip, #0
00084d72  00 f0 3b 87                                      beq.w #0x85bec
00084d76  b7 ee 00 1a                                      vmov.f32 s2, #1.000000e+00
00084d7a  05 9b                                            ldr r3, [sp, #0x14]
00084d7c  18 30                                            adds r0, #0x18
00084d7e  06 aa                                            add r2, sp, #0x18
00084d80  9f ed 6a 0a                                      vldr s0, [pc, #0x1a8]
00084d84  00 21                                            movs r1, #0
00084d86  b0 ee 40 3a                                      vmov.f32 s6, s0
00084d8a  90 ed 00 2a                                      vldr s4, [r0]
00084d8e  b5 ee c0 2a                                      vcmpe.f32 s4, #0
00084d92  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
00084d96  08 d4                                            bmi #0x84daa
00084d98  b4 ee c1 2a                                      vcmpe.f32 s4, s2
00084d9c  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
00084da0  b0 ee 41 3a                                      vmov.f32 s6, s2
00084da4  d8 bf                                            it le
00084da6  b0 ee 42 3a                                      vmovle.f32 s6, s4
00084daa  01 31                                            adds r1, #1
00084dac  a2 ec 01 3a                                      vstmia r2!, {s6}
00084db0  04 30                                            adds r0, #4
00084db2  99 42                                            cmp r1, r3
00084db4  e7 d3                                            blo #0x84d86
00084db6  00 f0 19 bf                                      b.w #0x85bec
00084dba  dd e9 03 10                                      ldrd r1, r0, [sp, #0xc]
00084dbe  bc f1 00 0f                                      cmp.w ip, #0
00084dc2  00 f0 13 87                                      beq.w #0x85bec
00084dc6  01 9a                                            ldr r2, [sp, #4]
00084dc8  00 f1 18 03                                      add.w r3, r0, #0x18
00084dcc  06 69                                            ldr r6, [r0, #0x10]
00084dce  00 25                                            movs r5, #0
00084dd0  4f ea 82 0c                                      lsl.w ip, r2, #2
00084dd4  02 9a                                            ldr r2, [sp, #8]
00084dd6  76 68                                            ldr r6, [r6, #4]
00084dd8  4f ea 82 0e                                      lsl.w lr, r2, #2
00084ddc  01 f1 18 02                                      add.w r2, r1, #0x18
00084de0  02 2e                                            cmp r6, #2
00084de2  07 d0                                            beq #0x84df4
00084de4  05 99                                            ldr r1, [sp, #0x14]
00084de6  01 2e                                            cmp r6, #1
00084de8  11 d0                                            beq #0x84e0e
00084dea  b6 b9                                            cbnz r6, #0x84e1a
00084dec  1c 68                                            ldr r4, [r3]
00084dee  10 68                                            ldr r0, [r2]
00084df0  20 44                                            add r0, r4
00084df2  0f e0                                            b #0x84e14
00084df4  92 ed 00 0a                                      vldr s0, [r2]
00084df8  06 a8                                            add r0, sp, #0x18
00084dfa  93 ed 00 1a                                      vldr s2, [r3]
00084dfe  00 eb 85 00                                      add.w r0, r0, r5, lsl #2
00084e02  05 99                                            ldr r1, [sp, #0x14]
00084e04  31 ee 00 0a                                      vadd.f32 s0, s2, s0
00084e08  80 ed 00 0a                                      vstr s0, [r0]
00084e0c  05 e0                                            b #0x84e1a
00084e0e  18 68                                            ldr r0, [r3]
00084e10  14 68                                            ldr r4, [r2]
00084e12  20 44                                            add r0, r4
00084e14  06 ac                                            add r4, sp, #0x18
00084e16  44 f8 25 00                                      str.w r0, [r4, r5, lsl #2]
00084e1a  01 35                                            adds r5, #1
00084e1c  63 44                                            add r3, ip
00084e1e  72 44                                            add r2, lr
00084e20  8d 42                                            cmp r5, r1
00084e22  dd d3                                            blo #0x84de0
00084e24  00 f0 e2 be                                      b.w #0x85bec
00084e28  dd e9 03 10                                      ldrd r1, r0, [sp, #0xc]
00084e2c  bc f1 00 0f                                      cmp.w ip, #0
00084e30  00 f0 dc 86                                      beq.w #0x85bec
00084e34  01 9a                                            ldr r2, [sp, #4]
00084e36  00 f1 18 03                                      add.w r3, r0, #0x18
00084e3a  06 69                                            ldr r6, [r0, #0x10]
00084e3c  00 25                                            movs r5, #0
00084e3e  4f ea 82 0c                                      lsl.w ip, r2, #2
00084e42  02 9a                                            ldr r2, [sp, #8]
00084e44  76 68                                            ldr r6, [r6, #4]
00084e46  4f ea 82 0e                                      lsl.w lr, r2, #2
00084e4a  01 f1 18 02                                      add.w r2, r1, #0x18
00084e4e  02 2e                                            cmp r6, #2
00084e50  07 d0                                            beq #0x84e62
00084e52  05 99                                            ldr r1, [sp, #0x14]
00084e54  01 2e                                            cmp r6, #1
00084e56  11 d0                                            beq #0x84e7c
00084e58  b6 b9                                            cbnz r6, #0x84e88
00084e5a  14 68                                            ldr r4, [r2]
00084e5c  18 68                                            ldr r0, [r3]
00084e5e  00 1b                                            subs r0, r0, r4
00084e60  0f e0                                            b #0x84e82
00084e62  92 ed 00 0a                                      vldr s0, [r2]
00084e66  06 a8                                            add r0, sp, #0x18
00084e68  93 ed 00 1a                                      vldr s2, [r3]
00084e6c  00 eb 85 00                                      add.w r0, r0, r5, lsl #2
00084e70  05 99                                            ldr r1, [sp, #0x14]
00084e72  31 ee 40 0a                                      vsub.f32 s0, s2, s0
00084e76  80 ed 00 0a                                      vstr s0, [r0]
00084e7a  05 e0                                            b #0x84e88
00084e7c  10 68                                            ldr r0, [r2]
00084e7e  1c 68                                            ldr r4, [r3]
00084e80  20 1a                                            subs r0, r4, r0
00084e82  06 ac                                            add r4, sp, #0x18
00084e84  44 f8 25 00                                      str.w r0, [r4, r5, lsl #2]
00084e88  01 35                                            adds r5, #1
00084e8a  63 44                                            add r3, ip
00084e8c  72 44                                            add r2, lr
00084e8e  8d 42                                            cmp r5, r1
00084e90  dd d3                                            blo #0x84e4e
00084e92  00 f0 ab be                                      b.w #0x85bec
00084e96  03 98                                            ldr r0, [sp, #0xc]
00084e98  01 69                                            ldr r1, [r0, #0x10]
00084e9a  8e 45                                            cmp lr, r1
00084e9c  00 f0 ec 85                                      beq.w #0x85a78
00084ea0  56 ea 08 02                                      orrs.w r2, r6, r8
00084ea4  40 f0 f5 85                                      bne.w #0x85a92
00084ea8  be f8 08 20                                      ldrh.w r2, [lr, #8]
00084eac  00 f0 27 be                                      b.w #0x85afe
00084eb0  dd e9 03 01                                      ldrd r0, r1, [sp, #0xc]
00084eb4  bc f1 00 0f                                      cmp.w ip, #0
00084eb8  00 f0 98 86                                      beq.w #0x85bec
00084ebc  02 46                                            mov r2, r0
00084ebe  01 98                                            ldr r0, [sp, #4]
00084ec0  02 9b                                            ldr r3, [sp, #8]
00084ec2  02 f1 18 05                                      add.w r5, r2, #0x18
00084ec6  01 f1 18 0b                                      add.w fp, r1, #0x18
00084eca  00 26                                            movs r6, #0
00084ecc  4f ea 80 08                                      lsl.w r8, r0, #2
00084ed0  08 69                                            ldr r0, [r1, #0x10]
00084ed2  9c 00                                            lsls r4, r3, #2
00084ed4  d0 f8 04 a0                                      ldr.w sl, [r0, #4]
00084ed8  ba f1 02 0f                                      cmp.w sl, #2
00084edc  0d d0                                            beq #0x84efa
00084ede  05 9a                                            ldr r2, [sp, #0x14]
00084ee0  ba f1 01 0f                                      cmp.w sl, #1
00084ee4  16 d0                                            beq #0x84f14
00084ee6  ba f1 00 0f                                      cmp.w sl, #0
00084eea  25 d1                                            bne #0x84f38
00084eec  29 68                                            ldr r1, [r5]
00084eee  f9 b1                                            cbz r1, #0x84f30
00084ef0  db f8 00 00                                      ldr.w r0, [fp]
00084ef4  ad f7 cc e8                                      blx #0x32090
00084ef8  12 e0                                            b #0x84f20
00084efa  95 ed 00 0a                                      vldr s0, [r5]
00084efe  06 a8                                            add r0, sp, #0x18
00084f00  9b ed 00 1a                                      vldr s2, [fp]
00084f04  00 eb 86 00                                      add.w r0, r0, r6, lsl #2
00084f08  05 9a                                            ldr r2, [sp, #0x14]
00084f0a  81 ee 00 0a                                      vdiv.f32 s0, s2, s0
00084f0e  80 ed 00 0a                                      vstr s0, [r0]
00084f12  11 e0                                            b #0x84f38
00084f14  29 68                                            ldr r1, [r5]
00084f16  59 b1                                            cbz r1, #0x84f30
00084f18  db f8 00 00                                      ldr.w r0, [fp]
00084f1c  ad f7 0e ea                                      blx #0x3233c
00084f20  05 9a                                            ldr r2, [sp, #0x14]
00084f22  06 e0                                            b #0x84f32
00084f24  00 ff                                            .byte 0x00, 0xff
00084f26  7f 47                                            bxns pc
00084f28  00 00                                            movs r0, r0
00084f2a  7f 43                                            muls r7, r7, r7
00084f2c  00 00                                            movs r0, r0
00084f2e  00 00                                            movs r0, r0
00084f30  00 20                                            movs r0, #0
00084f32  06 a9                                            add r1, sp, #0x18
00084f34  41 f8 26 00                                      str.w r0, [r1, r6, lsl #2]
00084f38  01 36                                            adds r6, #1
00084f3a  c3 44                                            add fp, r8
00084f3c  25 44                                            add r5, r4
00084f3e  96 42                                            cmp r6, r2
00084f40  ca d3                                            blo #0x84ed8
00084f42  00 f0 53 be                                      b.w #0x85bec
00084f46  dd e9 03 01                                      ldrd r0, r1, [sp, #0xc]
00084f4a  bc f1 00 0f                                      cmp.w ip, #0
00084f4e  00 f0 4d 86                                      beq.w #0x85bec
00084f52  02 46                                            mov r2, r0
00084f54  01 98                                            ldr r0, [sp, #4]
00084f56  02 9b                                            ldr r3, [sp, #8]
00084f58  02 f1 18 05                                      add.w r5, r2, #0x18
00084f5c  01 f1 18 0b                                      add.w fp, r1, #0x18
00084f60  00 26                                            movs r6, #0
00084f62  4f ea 80 08                                      lsl.w r8, r0, #2
00084f66  08 69                                            ldr r0, [r1, #0x10]
00084f68  9c 00                                            lsls r4, r3, #2
00084f6a  d0 f8 04 a0                                      ldr.w sl, [r0, #4]
00084f6e  ba f1 02 0f                                      cmp.w sl, #2
00084f72  0d d0                                            beq #0x84f90
00084f74  ba f1 01 0f                                      cmp.w sl, #1
00084f78  21 d0                                            beq #0x84fbe
00084f7a  05 9a                                            ldr r2, [sp, #0x14]
00084f7c  ba f1 00 0f                                      cmp.w sl, #0
00084f80  2b d1                                            bne #0x84fda
00084f82  29 68                                            ldr r1, [r5]
00084f84  11 b3                                            cbz r1, #0x84fcc
00084f86  db f8 00 00                                      ldr.w r0, [fp]
00084f8a  ac f7 d4 ef                                      blx #0x31f34
00084f8e  20 e0                                            b #0x84fd2
00084f90  95 ed 00 8a                                      vldr s16, [r5]
00084f94  9b ed 00 9a                                      vldr s18, [fp]
00084f98  89 ee 08 0a                                      vdiv.f32 s0, s18, s16
00084f9c  10 ee 10 0a                                      vmov r0, s0
00084fa0  af f7 38 e9                                      blx #0x34214
00084fa4  00 ee 10 0a                                      vmov s0, r0
00084fa8  06 a8                                            add r0, sp, #0x18
00084faa  05 9a                                            ldr r2, [sp, #0x14]
00084fac  00 eb 86 00                                      add.w r0, r0, r6, lsl #2
00084fb0  28 ee 00 0a                                      vmul.f32 s0, s16, s0
00084fb4  39 ee 40 0a                                      vsub.f32 s0, s18, s0
00084fb8  80 ed 00 0a                                      vstr s0, [r0]
00084fbc  0d e0                                            b #0x84fda
00084fbe  29 68                                            ldr r1, [r5]
00084fc0  31 b1                                            cbz r1, #0x84fd0
00084fc2  db f8 00 00                                      ldr.w r0, [fp]
00084fc6  ad f7 16 eb                                      blx #0x325f4
00084fca  02 e0                                            b #0x84fd2
00084fcc  00 21                                            movs r1, #0
00084fce  01 e0                                            b #0x84fd4
00084fd0  00 21                                            movs r1, #0
00084fd2  05 9a                                            ldr r2, [sp, #0x14]
00084fd4  06 a8                                            add r0, sp, #0x18
00084fd6  40 f8 26 10                                      str.w r1, [r0, r6, lsl #2]
00084fda  01 36                                            adds r6, #1
00084fdc  c3 44                                            add fp, r8
00084fde  25 44                                            add r5, r4
00084fe0  96 42                                            cmp r6, r2
00084fe2  c4 d3                                            blo #0x84f6e
00084fe4  00 f0 02 be                                      b.w #0x85bec
00084fe8  be f8 08 00                                      ldrh.w r0, [lr, #8]
00084fec  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00084ff0  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00084ff4  10 fb 01 f0                                      smulbb r0, r0, r1
00084ff8  dd e9 03 12                                      ldrd r1, r2, [sp, #0xc]
00084ffc  00 28                                            cmp r0, #0
00084ffe  00 f0 f5 85                                      beq.w #0x85bec
00085002  10 69                                            ldr r0, [r2, #0x10]
00085004  18 31                                            adds r1, #0x18
00085006  18 32                                            adds r2, #0x18
00085008  00 26                                            movs r6, #0
0008500a  43 68                                            ldr r3, [r0, #4]
0008500c  02 2b                                            cmp r3, #2
0008500e  0c d0                                            beq #0x8502a
00085010  01 2b                                            cmp r3, #1
00085012  1a d0                                            beq #0x8504a
00085014  23 bb                                            cbnz r3, #0x85060
00085016  51 f8 26 50                                      ldr.w r5, [r1, r6, lsl #2]
0008501a  52 f8 26 40                                      ldr.w r4, [r2, r6, lsl #2]
0008501e  ac 42                                            cmp r4, r5
00085020  4f f0 00 05                                      mov.w r5, #0
00085024  38 bf                                            it lo
00085026  01 25                                            movlo r5, #1
00085028  18 e0                                            b #0x8505c
0008502a  01 eb 86 05                                      add.w r5, r1, r6, lsl #2
0008502e  95 ed 00 0a                                      vldr s0, [r5]
00085032  02 eb 86 05                                      add.w r5, r2, r6, lsl #2
00085036  95 ed 00 1a                                      vldr s2, [r5]
0008503a  00 25                                            movs r5, #0
0008503c  b4 ee c0 1a                                      vcmpe.f32 s2, s0
00085040  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
00085044  48 bf                                            it mi
00085046  01 25                                            movmi r5, #1
00085048  08 e0                                            b #0x8505c
0008504a  51 f8 26 50                                      ldr.w r5, [r1, r6, lsl #2]
0008504e  52 f8 26 40                                      ldr.w r4, [r2, r6, lsl #2]
00085052  ac 42                                            cmp r4, r5
00085054  4f f0 00 05                                      mov.w r5, #0
00085058  b8 bf                                            it lt
0008505a  01 25                                            movlt r5, #1
0008505c  06 ac                                            add r4, sp, #0x18
0008505e  a5 55                                            strb r5, [r4, r6]
00085060  05 89                                            ldrh r5, [r0, #8]
00085062  01 36                                            adds r6, #1
00085064  c5 f3 02 34                                      ubfx r4, r5, #0xc, #3
00085068  c5 f3 42 25                                      ubfx r5, r5, #9, #3
0008506c  15 fb 04 f5                                      smulbb r5, r5, r4
00085070  ae 42                                            cmp r6, r5
00085072  cb d3                                            blo #0x8500c
00085074  00 f0 ba bd                                      b.w #0x85bec
00085078  be f8 08 00                                      ldrh.w r0, [lr, #8]
0008507c  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00085080  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00085084  10 fb 01 f0                                      smulbb r0, r0, r1
00085088  dd e9 03 12                                      ldrd r1, r2, [sp, #0xc]
0008508c  00 28                                            cmp r0, #0
0008508e  00 f0 ad 85                                      beq.w #0x85bec
00085092  10 69                                            ldr r0, [r2, #0x10]
00085094  18 31                                            adds r1, #0x18
00085096  18 32                                            adds r2, #0x18
00085098  00 26                                            movs r6, #0
0008509a  43 68                                            ldr r3, [r0, #4]
0008509c  02 2b                                            cmp r3, #2
0008509e  0c d0                                            beq #0x850ba
000850a0  01 2b                                            cmp r3, #1
000850a2  17 d0                                            beq #0x850d4
000850a4  0b bb                                            cbnz r3, #0x850ea
000850a6  51 f8 26 50                                      ldr.w r5, [r1, r6, lsl #2]
000850aa  52 f8 26 40                                      ldr.w r4, [r2, r6, lsl #2]
000850ae  ac 42                                            cmp r4, r5
000850b0  4f f0 00 05                                      mov.w r5, #0
000850b4  88 bf                                            it hi
000850b6  01 25                                            movhi r5, #1
000850b8  15 e0                                            b #0x850e6
000850ba  01 eb 86 05                                      add.w r5, r1, r6, lsl #2
000850be  95 ed 00 0a                                      vldr s0, [r5]
000850c2  02 eb 86 05                                      add.w r5, r2, r6, lsl #2
000850c6  95 ed 00 1a                                      vldr s2, [r5]
000850ca  b4 ee c0 1a                                      vcmpe.f32 s2, s0
000850ce  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
000850d2  04 e0                                            b #0x850de
000850d4  51 f8 26 50                                      ldr.w r5, [r1, r6, lsl #2]
000850d8  52 f8 26 40                                      ldr.w r4, [r2, r6, lsl #2]
000850dc  ac 42                                            cmp r4, r5
000850de  4f f0 00 05                                      mov.w r5, #0
000850e2  c8 bf                                            it gt
000850e4  01 25                                            movgt r5, #1
000850e6  06 ac                                            add r4, sp, #0x18
000850e8  a5 55                                            strb r5, [r4, r6]
000850ea  05 89                                            ldrh r5, [r0, #8]
000850ec  01 36                                            adds r6, #1
000850ee  c5 f3 02 34                                      ubfx r4, r5, #0xc, #3
000850f2  c5 f3 42 25                                      ubfx r5, r5, #9, #3
000850f6  15 fb 04 f5                                      smulbb r5, r5, r4
000850fa  ae 42                                            cmp r6, r5
000850fc  ce d3                                            blo #0x8509c
000850fe  00 f0 75 bd                                      b.w #0x85bec
00085102  be f8 08 00                                      ldrh.w r0, [lr, #8]
00085106  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
0008510a  c0 f3 42 20                                      ubfx r0, r0, #9, #3
0008510e  10 fb 01 f0                                      smulbb r0, r0, r1
00085112  dd e9 03 12                                      ldrd r1, r2, [sp, #0xc]
00085116  00 28                                            cmp r0, #0
00085118  00 f0 68 85                                      beq.w #0x85bec
0008511c  10 69                                            ldr r0, [r2, #0x10]
0008511e  18 31                                            adds r1, #0x18
00085120  18 32                                            adds r2, #0x18
00085122  00 26                                            movs r6, #0
00085124  43 68                                            ldr r3, [r0, #4]
00085126  02 2b                                            cmp r3, #2
00085128  08 d0                                            beq #0x8513c
0008512a  01 2b                                            cmp r3, #1
0008512c  17 d0                                            beq #0x8515e
0008512e  0b bb                                            cbnz r3, #0x85174
00085130  51 f8 26 50                                      ldr.w r5, [r1, r6, lsl #2]
00085134  52 f8 26 40                                      ldr.w r4, [r2, r6, lsl #2]
00085138  ac 42                                            cmp r4, r5
0008513a  0b e0                                            b #0x85154
0008513c  01 eb 86 05                                      add.w r5, r1, r6, lsl #2
00085140  95 ed 00 0a                                      vldr s0, [r5]
00085144  02 eb 86 05                                      add.w r5, r2, r6, lsl #2
00085148  95 ed 00 1a                                      vldr s2, [r5]
0008514c  b4 ee c0 1a                                      vcmpe.f32 s2, s0
00085150  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
00085154  4f f0 00 05                                      mov.w r5, #0
00085158  98 bf                                            it ls
0008515a  01 25                                            movls r5, #1
0008515c  08 e0                                            b #0x85170
0008515e  51 f8 26 50                                      ldr.w r5, [r1, r6, lsl #2]
00085162  52 f8 26 40                                      ldr.w r4, [r2, r6, lsl #2]
00085166  ac 42                                            cmp r4, r5
00085168  4f f0 00 05                                      mov.w r5, #0
0008516c  d8 bf                                            it le
0008516e  01 25                                            movle r5, #1
00085170  06 ac                                            add r4, sp, #0x18
00085172  a5 55                                            strb r5, [r4, r6]
00085174  05 89                                            ldrh r5, [r0, #8]
00085176  01 36                                            adds r6, #1
00085178  c5 f3 02 34                                      ubfx r4, r5, #0xc, #3
0008517c  c5 f3 42 25                                      ubfx r5, r5, #9, #3
00085180  15 fb 04 f5                                      smulbb r5, r5, r4
00085184  ae 42                                            cmp r6, r5
00085186  ce d3                                            blo #0x85126
00085188  00 f0 30 bd                                      b.w #0x85bec
0008518c  be f8 08 00                                      ldrh.w r0, [lr, #8]
00085190  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00085194  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00085198  10 fb 01 f0                                      smulbb r0, r0, r1
0008519c  dd e9 03 12                                      ldrd r1, r2, [sp, #0xc]
000851a0  00 28                                            cmp r0, #0
000851a2  00 f0 23 85                                      beq.w #0x85bec
000851a6  10 69                                            ldr r0, [r2, #0x10]
000851a8  18 31                                            adds r1, #0x18
000851aa  18 32                                            adds r2, #0x18
000851ac  00 26                                            movs r6, #0
000851ae  43 68                                            ldr r3, [r0, #4]
000851b0  02 2b                                            cmp r3, #2
000851b2  0c d0                                            beq #0x851ce
000851b4  01 2b                                            cmp r3, #1
000851b6  17 d0                                            beq #0x851e8
000851b8  0b bb                                            cbnz r3, #0x851fe
000851ba  51 f8 26 50                                      ldr.w r5, [r1, r6, lsl #2]
000851be  52 f8 26 40                                      ldr.w r4, [r2, r6, lsl #2]
000851c2  ac 42                                            cmp r4, r5
000851c4  4f f0 00 05                                      mov.w r5, #0
000851c8  28 bf                                            it hs
000851ca  01 25                                            movhs r5, #1
000851cc  15 e0                                            b #0x851fa
000851ce  01 eb 86 05                                      add.w r5, r1, r6, lsl #2
000851d2  95 ed 00 0a                                      vldr s0, [r5]
000851d6  02 eb 86 05                                      add.w r5, r2, r6, lsl #2
000851da  95 ed 00 1a                                      vldr s2, [r5]
000851de  b4 ee c0 1a                                      vcmpe.f32 s2, s0
000851e2  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
000851e6  04 e0                                            b #0x851f2
000851e8  51 f8 26 50                                      ldr.w r5, [r1, r6, lsl #2]
000851ec  52 f8 26 40                                      ldr.w r4, [r2, r6, lsl #2]
000851f0  ac 42                                            cmp r4, r5
000851f2  4f f0 00 05                                      mov.w r5, #0
000851f6  a8 bf                                            it ge
000851f8  01 25                                            movge r5, #1
000851fa  06 ac                                            add r4, sp, #0x18
000851fc  a5 55                                            strb r5, [r4, r6]
000851fe  05 89                                            ldrh r5, [r0, #8]
00085200  01 36                                            adds r6, #1
00085202  c5 f3 02 34                                      ubfx r4, r5, #0xc, #3
00085206  c5 f3 42 25                                      ubfx r5, r5, #9, #3
0008520a  15 fb 04 f5                                      smulbb r5, r5, r4
0008520e  ae 42                                            cmp r6, r5
00085210  ce d3                                            blo #0x851b0
00085212  00 f0 eb bc                                      b.w #0x85bec
00085216  dd e9 03 01                                      ldrd r0, r1, [sp, #0xc]
0008521a  bc f1 00 0f                                      cmp.w ip, #0
0008521e  00 f0 e5 84                                      beq.w #0x85bec
00085222  0a 69                                            ldr r2, [r1, #0x10]
00085224  18 30                                            adds r0, #0x18
00085226  05 9c                                            ldr r4, [sp, #0x14]
00085228  18 31                                            adds r1, #0x18
0008522a  00 23                                            movs r3, #0
0008522c  52 68                                            ldr r2, [r2, #4]
0008522e  03 2a                                            cmp r2, #3
00085230  1e d8                                            bhi #0x85270
00085232  df e8 02 f0                                      tbb [pc, r2]
00085236  02 02                                            lsls r2, r0, #8
00085238  07 14                                            asrs r7, r0, #0x10
0008523a  50 f8 23 60                                      ldr.w r6, [r0, r3, lsl #2]
0008523e  51 f8 23 50                                      ldr.w r5, [r1, r3, lsl #2]
00085242  0e e0                                            b #0x85262
00085244  00 eb 83 06                                      add.w r6, r0, r3, lsl #2
00085248  96 ed 00 0a                                      vldr s0, [r6]
0008524c  01 eb 83 06                                      add.w r6, r1, r3, lsl #2
00085250  96 ed 00 1a                                      vldr s2, [r6]
00085254  b4 ee 40 1a                                      vcmp.f32 s2, s0
00085258  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
0008525c  02 e0                                            b #0x85264
0008525e  c6 5c                                            ldrb r6, [r0, r3]
00085260  cd 5c                                            ldrb r5, [r1, r3]
00085262  b5 42                                            cmp r5, r6
00085264  4f f0 00 06                                      mov.w r6, #0
00085268  06 ad                                            add r5, sp, #0x18
0008526a  08 bf                                            it eq
0008526c  01 26                                            moveq r6, #1
0008526e  ee 54                                            strb r6, [r5, r3]
00085270  01 33                                            adds r3, #1
00085272  a3 42                                            cmp r3, r4
00085274  db d3                                            blo #0x8522e
00085276  00 f0 b9 bc                                      b.w #0x85bec
0008527a  dd e9 03 01                                      ldrd r0, r1, [sp, #0xc]
0008527e  bc f1 00 0f                                      cmp.w ip, #0
00085282  00 f0 b3 84                                      beq.w #0x85bec
00085286  0a 69                                            ldr r2, [r1, #0x10]
00085288  18 30                                            adds r0, #0x18
0008528a  05 9c                                            ldr r4, [sp, #0x14]
0008528c  18 31                                            adds r1, #0x18
0008528e  00 23                                            movs r3, #0
00085290  52 68                                            ldr r2, [r2, #4]
00085292  03 2a                                            cmp r2, #3
00085294  1e d8                                            bhi #0x852d4
00085296  df e8 02 f0                                      tbb [pc, r2]
0008529a  02 02                                            lsls r2, r0, #8
0008529c  07 14                                            asrs r7, r0, #0x10
0008529e  50 f8 23 60                                      ldr.w r6, [r0, r3, lsl #2]
000852a2  51 f8 23 50                                      ldr.w r5, [r1, r3, lsl #2]
000852a6  0e e0                                            b #0x852c6
000852a8  00 eb 83 06                                      add.w r6, r0, r3, lsl #2
000852ac  96 ed 00 0a                                      vldr s0, [r6]
000852b0  01 eb 83 06                                      add.w r6, r1, r3, lsl #2
000852b4  96 ed 00 1a                                      vldr s2, [r6]
000852b8  b4 ee 40 1a                                      vcmp.f32 s2, s0
000852bc  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
000852c0  02 e0                                            b #0x852c8
000852c2  c6 5c                                            ldrb r6, [r0, r3]
000852c4  cd 5c                                            ldrb r5, [r1, r3]
000852c6  b5 42                                            cmp r5, r6
000852c8  4f f0 00 06                                      mov.w r6, #0
000852cc  06 ad                                            add r5, sp, #0x18
000852ce  18 bf                                            it ne
000852d0  01 26                                            movne r6, #1
000852d2  ee 54                                            strb r6, [r5, r3]
000852d4  01 33                                            adds r3, #1
000852d6  a3 42                                            cmp r3, r4
000852d8  db d3                                            blo #0x85292
000852da  00 f0 87 bc                                      b.w #0x85bec
000852de  dd e9 03 10                                      ldrd r1, r0, [sp, #0xc]
000852e2  ae f7 74 ec                                      blx #0x33bcc
000852e6  05 e0                                            b #0x852f4
000852e8  dd e9 03 10                                      ldrd r1, r0, [sp, #0xc]
000852ec  ae f7 6e ec                                      blx #0x33bcc
000852f0  80 f0 01 00                                      eor r0, r0, #1
000852f4  8d f8 18 00                                      strb.w r0, [sp, #0x18]
000852f8  00 f0 78 bc                                      b.w #0x85bec
000852fc  dd e9 03 80                                      ldrd r8, r0, [sp, #0xc]
00085300  bc f1 00 0f                                      cmp.w ip, #0
00085304  00 f0 72 84                                      beq.w #0x85bec
00085308  01 99                                            ldr r1, [sp, #4]
0008530a  08 f1 18 03                                      add.w r3, r8, #0x18
0008530e  06 69                                            ldr r6, [r0, #0x10]
00085310  00 25                                            movs r5, #0
00085312  4f ea 81 0c                                      lsl.w ip, r1, #2
00085316  00 f1 18 01                                      add.w r1, r0, #0x18
0008531a  02 98                                            ldr r0, [sp, #8]
0008531c  76 68                                            ldr r6, [r6, #4]
0008531e  4f ea 80 0e                                      lsl.w lr, r0, #2
00085322  5e b1                                            cbz r6, #0x8533c
00085324  05 9a                                            ldr r2, [sp, #0x14]
00085326  01 2e                                            cmp r6, #1
00085328  19 d1                                            bne #0x8535e
0008532a  d8 f8 10 40                                      ldr.w r4, [r8, #0x10]
0008532e  64 68                                            ldr r4, [r4, #4]
00085330  01 2c                                            cmp r4, #1
00085332  09 d1                                            bne #0x85348
00085334  1c 68                                            ldr r4, [r3]
00085336  08 68                                            ldr r0, [r1]
00085338  a0 40                                            lsls r0, r4
0008533a  0d e0                                            b #0x85358
0008533c  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
00085340  05 9a                                            ldr r2, [sp, #0x14]
00085342  40 68                                            ldr r0, [r0, #4]
00085344  01 28                                            cmp r0, #1
00085346  03 d0                                            beq #0x85350
00085348  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
0008534c  40 68                                            ldr r0, [r0, #4]
0008534e  30 b9                                            cbnz r0, #0x8535e
00085350  18 68                                            ldr r0, [r3]
00085352  0c 68                                            ldr r4, [r1]
00085354  04 fa 00 f0                                      lsl.w r0, r4, r0
00085358  06 ac                                            add r4, sp, #0x18
0008535a  44 f8 25 00                                      str.w r0, [r4, r5, lsl #2]
0008535e  01 35                                            adds r5, #1
00085360  61 44                                            add r1, ip
00085362  73 44                                            add r3, lr
00085364  95 42                                            cmp r5, r2
00085366  dc d3                                            blo #0x85322
00085368  00 f0 40 bc                                      b.w #0x85bec
0008536c  dd e9 03 80                                      ldrd r8, r0, [sp, #0xc]
00085370  bc f1 00 0f                                      cmp.w ip, #0
00085374  00 f0 3a 84                                      beq.w #0x85bec
00085378  01 99                                            ldr r1, [sp, #4]
0008537a  08 f1 18 03                                      add.w r3, r8, #0x18
0008537e  06 69                                            ldr r6, [r0, #0x10]
00085380  00 25                                            movs r5, #0
00085382  4f ea 81 0c                                      lsl.w ip, r1, #2
00085386  00 f1 18 01                                      add.w r1, r0, #0x18
0008538a  02 98                                            ldr r0, [sp, #8]
0008538c  76 68                                            ldr r6, [r6, #4]
0008538e  4f ea 80 0e                                      lsl.w lr, r0, #2
00085392  5e b1                                            cbz r6, #0x853ac
00085394  05 9a                                            ldr r2, [sp, #0x14]
00085396  01 2e                                            cmp r6, #1
00085398  22 d1                                            bne #0x853e0
0008539a  d8 f8 10 40                                      ldr.w r4, [r8, #0x10]
0008539e  64 68                                            ldr r4, [r4, #4]
000853a0  01 2c                                            cmp r4, #1
000853a2  12 d1                                            bne #0x853ca
000853a4  1c 68                                            ldr r4, [r3]
000853a6  08 68                                            ldr r0, [r1]
000853a8  20 41                                            asrs r0, r4
000853aa  16 e0                                            b #0x853da
000853ac  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
000853b0  05 9a                                            ldr r2, [sp, #0x14]
000853b2  40 68                                            ldr r0, [r0, #4]
000853b4  01 28                                            cmp r0, #1
000853b6  03 d0                                            beq #0x853c0
000853b8  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
000853bc  40 68                                            ldr r0, [r0, #4]
000853be  78 b9                                            cbnz r0, #0x853e0
000853c0  18 68                                            ldr r0, [r3]
000853c2  0c 68                                            ldr r4, [r1]
000853c4  24 fa 00 f0                                      lsr.w r0, r4, r0
000853c8  07 e0                                            b #0x853da
000853ca  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
000853ce  40 68                                            ldr r0, [r0, #4]
000853d0  30 b9                                            cbnz r0, #0x853e0
000853d2  18 68                                            ldr r0, [r3]
000853d4  0c 68                                            ldr r4, [r1]
000853d6  44 fa 00 f0                                      asr.w r0, r4, r0
000853da  06 ac                                            add r4, sp, #0x18
000853dc  44 f8 25 00                                      str.w r0, [r4, r5, lsl #2]
000853e0  01 35                                            adds r5, #1
000853e2  61 44                                            add r1, ip
000853e4  73 44                                            add r3, lr
000853e6  95 42                                            cmp r5, r2
000853e8  d3 d3                                            blo #0x85392
000853ea  00 f0 ff bb                                      b.w #0x85bec
000853ee  dd e9 03 30                                      ldrd r3, r0, [sp, #0xc]
000853f2  bc f1 00 0f                                      cmp.w ip, #0
000853f6  00 f0 f9 83                                      beq.w #0x85bec
000853fa  01 99                                            ldr r1, [sp, #4]
000853fc  18 33                                            adds r3, #0x18
000853fe  06 69                                            ldr r6, [r0, #0x10]
00085400  00 25                                            movs r5, #0
00085402  4f ea 81 0c                                      lsl.w ip, r1, #2
00085406  00 f1 18 01                                      add.w r1, r0, #0x18
0008540a  02 98                                            ldr r0, [sp, #8]
0008540c  76 68                                            ldr r6, [r6, #4]
0008540e  82 00                                            lsls r2, r0, #2
00085410  01 2e                                            cmp r6, #1
00085412  05 d8                                            bhi #0x85420
00085414  0c 68                                            ldr r4, [r1]
00085416  18 68                                            ldr r0, [r3]
00085418  20 40                                            ands r0, r4
0008541a  06 ac                                            add r4, sp, #0x18
0008541c  44 f8 25 00                                      str.w r0, [r4, r5, lsl #2]
00085420  05 98                                            ldr r0, [sp, #0x14]
00085422  01 35                                            adds r5, #1
00085424  61 44                                            add r1, ip
00085426  13 44                                            add r3, r2
00085428  85 42                                            cmp r5, r0
0008542a  f1 d3                                            blo #0x85410
0008542c  de e3                                            b #0x85bec
0008542e  dd e9 03 30                                      ldrd r3, r0, [sp, #0xc]
00085432  bc f1 00 0f                                      cmp.w ip, #0
00085436  00 f0 d9 83                                      beq.w #0x85bec
0008543a  01 99                                            ldr r1, [sp, #4]
0008543c  18 33                                            adds r3, #0x18
0008543e  06 69                                            ldr r6, [r0, #0x10]
00085440  00 25                                            movs r5, #0
00085442  4f ea 81 0c                                      lsl.w ip, r1, #2
00085446  00 f1 18 01                                      add.w r1, r0, #0x18
0008544a  02 98                                            ldr r0, [sp, #8]
0008544c  76 68                                            ldr r6, [r6, #4]
0008544e  82 00                                            lsls r2, r0, #2
00085450  01 2e                                            cmp r6, #1
00085452  05 d8                                            bhi #0x85460
00085454  0c 68                                            ldr r4, [r1]
00085456  18 68                                            ldr r0, [r3]
00085458  60 40                                            eors r0, r4
0008545a  06 ac                                            add r4, sp, #0x18
0008545c  44 f8 25 00                                      str.w r0, [r4, r5, lsl #2]
00085460  05 98                                            ldr r0, [sp, #0x14]
00085462  01 35                                            adds r5, #1
00085464  61 44                                            add r1, ip
00085466  13 44                                            add r3, r2
00085468  85 42                                            cmp r5, r0
0008546a  f1 d3                                            blo #0x85450
0008546c  be e3                                            b #0x85bec
0008546e  dd e9 03 30                                      ldrd r3, r0, [sp, #0xc]
00085472  bc f1 00 0f                                      cmp.w ip, #0
00085476  00 f0 b9 83                                      beq.w #0x85bec
0008547a  01 99                                            ldr r1, [sp, #4]
0008547c  18 33                                            adds r3, #0x18
0008547e  06 69                                            ldr r6, [r0, #0x10]
00085480  00 25                                            movs r5, #0
00085482  4f ea 81 0c                                      lsl.w ip, r1, #2
00085486  00 f1 18 01                                      add.w r1, r0, #0x18
0008548a  02 98                                            ldr r0, [sp, #8]
0008548c  76 68                                            ldr r6, [r6, #4]
0008548e  82 00                                            lsls r2, r0, #2
00085490  01 2e                                            cmp r6, #1
00085492  05 d8                                            bhi #0x854a0
00085494  0c 68                                            ldr r4, [r1]
00085496  18 68                                            ldr r0, [r3]
00085498  20 43                                            orrs r0, r4
0008549a  06 ac                                            add r4, sp, #0x18
0008549c  44 f8 25 00                                      str.w r0, [r4, r5, lsl #2]
000854a0  05 98                                            ldr r0, [sp, #0x14]
000854a2  01 35                                            adds r5, #1
000854a4  61 44                                            add r1, ip
000854a6  13 44                                            add r3, r2
000854a8  85 42                                            cmp r5, r0
000854aa  f1 d3                                            blo #0x85490
000854ac  9e e3                                            b #0x85bec
000854ae  be f8 08 00                                      ldrh.w r0, [lr, #8]
000854b2  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
000854b6  c0 f3 42 20                                      ubfx r0, r0, #9, #3
000854ba  10 fb 01 f0                                      smulbb r0, r0, r1
000854be  00 28                                            cmp r0, #0
000854c0  dd e9 03 05                                      ldrd r0, r5, [sp, #0xc]
000854c4  00 f0 92 83                                      beq.w #0x85bec
000854c8  18 30                                            adds r0, #0x18
000854ca  05 f1 18 01                                      add.w r1, r5, #0x18
000854ce  00 22                                            movs r2, #0
000854d0  8b 5c                                            ldrb r3, [r1, r2]
000854d2  23 b1                                            cbz r3, #0x854de
000854d4  83 5c                                            ldrb r3, [r0, r2]
000854d6  00 2b                                            cmp r3, #0
000854d8  18 bf                                            it ne
000854da  01 23                                            movne r3, #1
000854dc  00 e0                                            b #0x854e0
000854de  00 23                                            movs r3, #0
000854e0  06 ae                                            add r6, sp, #0x18
000854e2  b3 54                                            strb r3, [r6, r2]
000854e4  01 32                                            adds r2, #1
000854e6  2b 69                                            ldr r3, [r5, #0x10]
000854e8  1b 89                                            ldrh r3, [r3, #8]
000854ea  c3 f3 02 36                                      ubfx r6, r3, #0xc, #3
000854ee  c3 f3 42 23                                      ubfx r3, r3, #9, #3
000854f2  13 fb 06 f3                                      smulbb r3, r3, r6
000854f6  9a 42                                            cmp r2, r3
000854f8  ea d3                                            blo #0x854d0
000854fa  77 e3                                            b #0x85bec
000854fc  be f8 08 00                                      ldrh.w r0, [lr, #8]
00085500  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00085504  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00085508  10 fb 01 f0                                      smulbb r0, r0, r1
0008550c  00 28                                            cmp r0, #0
0008550e  dd e9 03 01                                      ldrd r0, r1, [sp, #0xc]
00085512  00 f0 6b 83                                      beq.w #0x85bec
00085516  18 30                                            adds r0, #0x18
00085518  18 31                                            adds r1, #0x18
0008551a  00 22                                            movs r2, #0
0008551c  8b 5c                                            ldrb r3, [r1, r2]
0008551e  86 5c                                            ldrb r6, [r0, r2]
00085520  73 40                                            eors r3, r6
00085522  06 ae                                            add r6, sp, #0x18
00085524  b3 54                                            strb r3, [r6, r2]
00085526  01 32                                            adds r2, #1
00085528  be f8 08 30                                      ldrh.w r3, [lr, #8]
0008552c  c3 f3 02 36                                      ubfx r6, r3, #0xc, #3
00085530  c3 f3 42 23                                      ubfx r3, r3, #9, #3
00085534  13 fb 06 f3                                      smulbb r3, r3, r6
00085538  9a 42                                            cmp r2, r3
0008553a  ef d3                                            blo #0x8551c
0008553c  56 e3                                            b #0x85bec
0008553e  be f8 08 00                                      ldrh.w r0, [lr, #8]
00085542  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00085546  c0 f3 42 20                                      ubfx r0, r0, #9, #3
0008554a  10 fb 01 f0                                      smulbb r0, r0, r1
0008554e  00 28                                            cmp r0, #0
00085550  dd e9 03 01                                      ldrd r0, r1, [sp, #0xc]
00085554  00 f0 4a 83                                      beq.w #0x85bec
00085558  18 30                                            adds r0, #0x18
0008555a  18 31                                            adds r1, #0x18
0008555c  00 22                                            movs r2, #0
0008555e  8b 5c                                            ldrb r3, [r1, r2]
00085560  0b b1                                            cbz r3, #0x85566
00085562  01 23                                            movs r3, #1
00085564  03 e0                                            b #0x8556e
00085566  83 5c                                            ldrb r3, [r0, r2]
00085568  00 2b                                            cmp r3, #0
0008556a  18 bf                                            it ne
0008556c  01 23                                            movne r3, #1
0008556e  06 ae                                            add r6, sp, #0x18
00085570  b3 54                                            strb r3, [r6, r2]
00085572  01 32                                            adds r2, #1
00085574  be f8 08 30                                      ldrh.w r3, [lr, #8]
00085578  c3 f3 02 36                                      ubfx r6, r3, #0xc, #3
0008557c  c3 f3 42 23                                      ubfx r3, r3, #9, #3
00085580  13 fb 06 f3                                      smulbb r3, r3, r6
00085584  9a 42                                            cmp r2, r3
00085586  ea d3                                            blo #0x8555e
00085588  30 e3                                            b #0x85bec
0008558a  04 9a                                            ldr r2, [sp, #0x10]
0008558c  9f ed e4 0a                                      vldr s0, [pc, #0x390]
00085590  10 69                                            ldr r0, [r2, #0x10]
00085592  00 89                                            ldrh r0, [r0, #8]
00085594  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
00085598  c0 f3 42 20                                      ubfx r0, r0, #9, #3
0008559c  10 fb 01 f1                                      smulbb r1, r0, r1
000855a0  89 b1                                            cbz r1, #0x855c6
000855a2  03 98                                            ldr r0, [sp, #0xc]
000855a4  18 32                                            adds r2, #0x18
000855a6  89 b2                                            uxth r1, r1
000855a8  00 23                                            movs r3, #0
000855aa  18 30                                            adds r0, #0x18
000855ac  90 ed 00 1a                                      vldr s2, [r0]
000855b0  01 33                                            adds r3, #1
000855b2  92 ed 00 2a                                      vldr s4, [r2]
000855b6  04 32                                            adds r2, #4
000855b8  04 30                                            adds r0, #4
000855ba  8b 42                                            cmp r3, r1
000855bc  22 ee 01 1a                                      vmul.f32 s2, s4, s2
000855c0  30 ee 01 0a                                      vadd.f32 s0, s0, s2
000855c4  f2 d3                                            blo #0x855ac
000855c6  8d ed 06 0a                                      vstr s0, [sp, #0x18]
000855ca  0f e3                                            b #0x85bec
000855cc  dd e9 03 10                                      ldrd r1, r0, [sp, #0xc]
000855d0  bc f1 00 0f                                      cmp.w ip, #0
000855d4  00 f0 0a 83                                      beq.w #0x85bec
000855d8  01 9a                                            ldr r2, [sp, #4]
000855da  00 f1 18 03                                      add.w r3, r0, #0x18
000855de  06 69                                            ldr r6, [r0, #0x10]
000855e0  00 25                                            movs r5, #0
000855e2  4f ea 82 0c                                      lsl.w ip, r2, #2
000855e6  02 9a                                            ldr r2, [sp, #8]
000855e8  76 68                                            ldr r6, [r6, #4]
000855ea  4f ea 82 0e                                      lsl.w lr, r2, #2
000855ee  01 f1 18 02                                      add.w r2, r1, #0x18
000855f2  02 2e                                            cmp r6, #2
000855f4  0c d0                                            beq #0x85610
000855f6  05 99                                            ldr r1, [sp, #0x14]
000855f8  01 2e                                            cmp r6, #1
000855fa  18 d0                                            beq #0x8562e
000855fc  fe b9                                            cbnz r6, #0x8563e
000855fe  18 68                                            ldr r0, [r3]
00085600  14 68                                            ldr r4, [r2]
00085602  a0 42                                            cmp r0, r4
00085604  38 bf                                            it lo
00085606  04 46                                            movlo r4, r0
00085608  06 a8                                            add r0, sp, #0x18
0008560a  40 f8 25 40                                      str.w r4, [r0, r5, lsl #2]
0008560e  16 e0                                            b #0x8563e
00085610  92 ed 00 0a                                      vldr s0, [r2]
00085614  10 46                                            mov r0, r2
00085616  93 ed 00 1a                                      vldr s2, [r3]
0008561a  06 ac                                            add r4, sp, #0x18
0008561c  b4 ee c0 1a                                      vcmpe.f32 s2, s0
00085620  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
00085624  48 bf                                            it mi
00085626  18 46                                            movmi r0, r3
00085628  05 99                                            ldr r1, [sp, #0x14]
0008562a  00 68                                            ldr r0, [r0]
0008562c  05 e0                                            b #0x8563a
0008562e  1c 68                                            ldr r4, [r3]
00085630  10 68                                            ldr r0, [r2]
00085632  84 42                                            cmp r4, r0
00085634  b8 bf                                            it lt
00085636  20 46                                            movlt r0, r4
00085638  06 ac                                            add r4, sp, #0x18
0008563a  44 f8 25 00                                      str.w r0, [r4, r5, lsl #2]
0008563e  01 35                                            adds r5, #1
00085640  63 44                                            add r3, ip
00085642  72 44                                            add r2, lr
00085644  8d 42                                            cmp r5, r1
00085646  d4 d3                                            blo #0x855f2
00085648  d0 e2                                            b #0x85bec
0008564a  dd e9 03 10                                      ldrd r1, r0, [sp, #0xc]
0008564e  bc f1 00 0f                                      cmp.w ip, #0
00085652  00 f0 cb 82                                      beq.w #0x85bec
00085656  01 9a                                            ldr r2, [sp, #4]
00085658  00 f1 18 03                                      add.w r3, r0, #0x18
0008565c  06 69                                            ldr r6, [r0, #0x10]
0008565e  00 25                                            movs r5, #0
00085660  4f ea 82 0c                                      lsl.w ip, r2, #2
00085664  02 9a                                            ldr r2, [sp, #8]
00085666  76 68                                            ldr r6, [r6, #4]
00085668  4f ea 82 0e                                      lsl.w lr, r2, #2
0008566c  01 f1 18 02                                      add.w r2, r1, #0x18
00085670  02 2e                                            cmp r6, #2
00085672  0c d0                                            beq #0x8568e
00085674  05 99                                            ldr r1, [sp, #0x14]
00085676  01 2e                                            cmp r6, #1
00085678  18 d0                                            beq #0x856ac
0008567a  fe b9                                            cbnz r6, #0x856bc
0008567c  18 68                                            ldr r0, [r3]
0008567e  14 68                                            ldr r4, [r2]
00085680  a0 42                                            cmp r0, r4
00085682  88 bf                                            it hi
00085684  04 46                                            movhi r4, r0
00085686  06 a8                                            add r0, sp, #0x18
00085688  40 f8 25 40                                      str.w r4, [r0, r5, lsl #2]
0008568c  16 e0                                            b #0x856bc
0008568e  92 ed 00 0a                                      vldr s0, [r2]
00085692  10 46                                            mov r0, r2
00085694  93 ed 00 1a                                      vldr s2, [r3]
00085698  06 ac                                            add r4, sp, #0x18
0008569a  b4 ee c0 1a                                      vcmpe.f32 s2, s0
0008569e  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
000856a2  c8 bf                                            it gt
000856a4  18 46                                            movgt r0, r3
000856a6  05 99                                            ldr r1, [sp, #0x14]
000856a8  00 68                                            ldr r0, [r0]
000856aa  05 e0                                            b #0x856b8
000856ac  1c 68                                            ldr r4, [r3]
000856ae  10 68                                            ldr r0, [r2]
000856b0  84 42                                            cmp r4, r0
000856b2  c8 bf                                            it gt
000856b4  20 46                                            movgt r0, r4
000856b6  06 ac                                            add r4, sp, #0x18
000856b8  44 f8 25 00                                      str.w r0, [r4, r5, lsl #2]
000856bc  01 35                                            adds r5, #1
000856be  63 44                                            add r3, ip
000856c0  72 44                                            add r2, lr
000856c2  8d 42                                            cmp r5, r1
000856c4  d4 d3                                            blo #0x85670
000856c6  91 e2                                            b #0x85bec
000856c8  be f8 08 00                                      ldrh.w r0, [lr, #8]
000856cc  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
000856d0  c0 f3 42 20                                      ubfx r0, r0, #9, #3
000856d4  10 fb 01 f0                                      smulbb r0, r0, r1
000856d8  00 28                                            cmp r0, #0
000856da  dd e9 03 10                                      ldrd r1, r0, [sp, #0xc]
000856de  00 f0 85 82                                      beq.w #0x85bec
000856e2  01 f1 18 08                                      add.w r8, r1, #0x18
000856e6  00 f1 18 04                                      add.w r4, r0, #0x18
000856ea  06 ae                                            add r6, sp, #0x18
000856ec  00 25                                            movs r5, #0
000856ee  94 ed 00 0a                                      vldr s0, [r4]
000856f2  98 ed 00 1a                                      vldr s2, [r8]
000856f6  b7 ee c0 0a                                      vcvt.f64.f32 d0, s0
000856fa  b7 ee c1 1a                                      vcvt.f64.f32 d1, s2
000856fe  51 ec 10 0b                                      vmov r0, r1, d0
00085702  53 ec 11 2b                                      vmov r2, r3, d1
00085706  ae f7 9e ed                                      blx #0x34244
0008570a  41 ec 10 0b                                      vmov d0, r0, r1
0008570e  08 f1 04 08                                      add.w r8, r8, #4
00085712  04 34                                            adds r4, #4
00085714  01 35                                            adds r5, #1
00085716  b7 ee c0 0b                                      vcvt.f32.f64 s0, d0
0008571a  86 ed 00 0a                                      vstr s0, [r6]
0008571e  04 36                                            adds r6, #4
00085720  da f8 00 00                                      ldr.w r0, [sl]
00085724  00 89                                            ldrh r0, [r0, #8]
00085726  c0 f3 02 31                                      ubfx r1, r0, #0xc, #3
0008572a  c0 f3 42 20                                      ubfx r0, r0, #9, #3
0008572e  10 fb 01 f0                                      smulbb r0, r0, r1
00085732  85 42                                            cmp r5, r0
00085734  db d3                                            blo #0x856ee
00085736  59 e2                                            b #0x85bec
00085738  dd e9 03 05                                      ldrd r0, r5, [sp, #0xc]
0008573c  bc f1 00 0f                                      cmp.w ip, #0
00085740  00 f0 54 82                                      beq.w #0x85bec
00085744  81 69                                            ldr r1, [r0, #0x18]
00085746  01 23                                            movs r3, #1
00085748  a8 69                                            ldr r0, [r5, #0x18]
0008574a  0a 18                                            adds r2, r1, r0
0008574c  83 40                                            lsls r3, r0
0008574e  20 2a                                            cmp r2, #0x20
00085750  a3 f1 01 03                                      sub.w r3, r3, #1
00085754  05 f1 18 02                                      add.w r2, r5, #0x18
00085758  03 fa 01 f6                                      lsl.w r6, r3, r1
0008575c  41 ea 00 01                                      orr.w r1, r1, r0
00085760  c8 bf                                            it gt
00085762  00 26                                            movgt r6, #0
00085764  00 29                                            cmp r1, #0
00085766  b8 bf                                            it lt
00085768  00 26                                            movlt r6, #0
0008576a  00 23                                            movs r3, #0
0008576c  31 46                                            mov r1, r6
0008576e  00 28                                            cmp r0, #0
00085770  08 bf                                            it eq
00085772  52 f8 23 10                                      ldreq.w r1, [r2, r3, lsl #2]
00085776  06 ad                                            add r5, sp, #0x18
00085778  45 f8 23 10                                      str.w r1, [r5, r3, lsl #2]
0008577c  01 33                                            adds r3, #1
0008577e  05 99                                            ldr r1, [sp, #0x14]
00085780  8b 42                                            cmp r3, r1
00085782  f3 d3                                            blo #0x8576c
00085784  32 e2                                            b #0x85bec
00085786  dd e9 03 10                                      ldrd r1, r0, [sp, #0xc]
0008578a  bc f1 00 0f                                      cmp.w ip, #0
0008578e  00 f0 2d 82                                      beq.w #0x85bec
00085792  01 f1 18 08                                      add.w r8, r1, #0x18
00085796  00 f1 18 04                                      add.w r4, r0, #0x18
0008579a  06 ae                                            add r6, sp, #0x18
0008579c  9f ed 61 8a                                      vldr s16, [pc, #0x184]
000857a0  9f ed 61 9a                                      vldr s18, [pc, #0x184]
000857a4  00 25                                            movs r5, #0
000857a6  94 ed 00 0a                                      vldr s0, [r4]
000857aa  58 f8 25 20                                      ldr.w r2, [r8, r5, lsl #2]
000857ae  b7 ee c0 0a                                      vcvt.f64.f32 d0, s0
000857b2  51 ec 10 0b                                      vmov r0, r1, d0
000857b6  ae f7 4c ed                                      blx #0x34250
000857ba  41 ec 10 0b                                      vmov d0, r0, r1
000857be  b7 ee c0 1b                                      vcvt.f32.f64 s2, d0
000857c2  b0 ee c1 0a                                      vabs.f32 s0, s2
000857c6  86 ed 00 1a                                      vstr s2, [r6]
000857ca  b4 ee c8 0a                                      vcmpe.f32 s0, s16
000857ce  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
000857d2  09 d4                                            bmi #0x857e8
000857d4  b4 ee c1 1a                                      vcmpe.f32 s2, s2
000857d8  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
000857dc  04 d6                                            bvs #0x857e8
000857de  b4 ee c9 0a                                      vcmpe.f32 s0, s18
000857e2  f1 ee 10 fa                                      vmrs apsr_nzcv, fpscr
000857e6  03 db                                            blt #0x857f0
000857e8  20 68                                            ldr r0, [r4]
000857ea  00 f0 00 40                                      and r0, r0, #0x80000000
000857ee  30 60                                            str r0, [r6]
000857f0  05 98                                            ldr r0, [sp, #0x14]
000857f2  01 35                                            adds r5, #1
000857f4  04 36                                            adds r6, #4
000857f6  04 34                                            adds r4, #4
000857f8  85 42                                            cmp r5, r0
000857fa  d4 d3                                            blo #0x857a6
000857fc  f6 e1                                            b #0x85bec
000857fe  03 98                                            ldr r0, [sp, #0xc]
00085800  80 69                                            ldr r0, [r0, #0x18]
00085802  00 28                                            cmp r0, #0
00085804  c0 f2 89 81                                      blt.w #0x85b1a
00085808  be f8 08 10                                      ldrh.w r1, [lr, #8]
0008580c  c1 f3 42 21                                      ubfx r1, r1, #9, #3
00085810  88 42                                            cmp r0, r1
00085812  a8 bf                                            it ge
00085814  48 1e                                            subge r0, r1, #1
00085816  81 e1                                            b #0x85b1c
00085818  dd e9 03 01                                      ldrd r0, r1, [sp, #0xc]
0008581c  bc f1 00 0f                                      cmp.w ip, #0
00085820  00 f0 e4 81                                      beq.w #0x85bec
00085824  18 9a                                            ldr r2, [sp, #0x60]
00085826  18 30                                            adds r0, #0x18
00085828  05 9d                                            ldr r5, [sp, #0x14]
0008582a  18 31                                            adds r1, #0x18
0008582c  18 32                                            adds r2, #0x18
0008582e  06 ae                                            add r6, sp, #0x18
00085830  00 23                                            movs r3, #0
00085832  90 ed 00 0a                                      vldr s0, [r0]
00085836  01 33                                            adds r3, #1
00085838  91 ed 00 1a                                      vldr s2, [r1]
0008583c  04 30                                            adds r0, #4
0008583e  04 31                                            adds r1, #4
00085840  ab 42                                            cmp r3, r5
00085842  21 ee 00 0a                                      vmul.f32 s0, s2, s0
00085846  92 ed 00 1a                                      vldr s2, [r2]
0008584a  02 f1 04 02                                      add.w r2, r2, #4
0008584e  30 ee 01 0a                                      vadd.f32 s0, s0, s2
00085852  a6 ec 01 0a                                      vstmia r6!, {s0}
00085856  ec d3                                            blo #0x85832
00085858  c8 e1                                            b #0x85bec
0008585a  18 9a                                            ldr r2, [sp, #0x60]
0008585c  10 69                                            ldr r0, [r2, #0x10]
0008585e  01 89                                            ldrh r1, [r0, #8]
00085860  01 f4 60 61                                      and r1, r1, #0xe00
00085864  b1 f5 00 7f                                      cmp.w r1, #0x200
00085868  40 f0 dd 80                                      bne.w #0x85a26
0008586c  40 68                                            ldr r0, [r0, #4]
0008586e  00 21                                            movs r1, #0
00085870  03 28                                            cmp r0, #3
00085872  88 bf                                            it hi
00085874  01 21                                            movhi r1, #1
00085876  d7 e0                                            b #0x85a28
00085878  dd e9 03 51                                      ldrd r5, r1, [sp, #0xc]
0008587c  bc f1 00 0f                                      cmp.w ip, #0
00085880  00 f0 b4 81                                      beq.w #0x85bec
00085884  18 98                                            ldr r0, [sp, #0x60]
00085886  18 31                                            adds r1, #0x18
00085888  00 22                                            movs r2, #0
0008588a  8b 5c                                            ldrb r3, [r1, r2]
0008588c  06 ae                                            add r6, sp, #0x18
0008588e  00 2b                                            cmp r3, #0
00085890  2b 46                                            mov r3, r5
00085892  08 bf                                            it eq
00085894  03 46                                            moveq r3, r0
00085896  03 eb 82 03                                      add.w r3, r3, r2, lsl #2
0008589a  9b 69                                            ldr r3, [r3, #0x18]
0008589c  46 f8 22 30                                      str.w r3, [r6, r2, lsl #2]
000858a0  01 32                                            adds r2, #1
000858a2  05 9b                                            ldr r3, [sp, #0x14]
000858a4  9a 42                                            cmp r2, r3
000858a6  f0 d3                                            blo #0x8588a
000858a8  a0 e1                                            b #0x85bec
000858aa  dd e9 03 1e                                      ldrd r1, lr, [sp, #0xc]
000858ae  bc f1 00 0f                                      cmp.w ip, #0
000858b2  00 f0 9b 81                                      beq.w #0x85bec
000858b6  18 98                                            ldr r0, [sp, #0x60]
000858b8  8b 69                                            ldr r3, [r1, #0x18]
000858ba  00 21                                            movs r1, #0
000858bc  82 69                                            ldr r2, [r0, #0x18]
000858be  00 20                                            movs r0, #0
000858c0  00 2a                                            cmp r2, #0
000858c2  42 ea 03 06                                      orr.w r6, r2, r3
000858c6  08 bf                                            it eq
000858c8  01 21                                            moveq r1, #1
000858ca  00 2e                                            cmp r6, #0
000858cc  4f f0 00 06                                      mov.w r6, #0
000858d0  b8 bf                                            it lt
000858d2  01 26                                            movlt r6, #1
000858d4  31 43                                            orrs r1, r6
000858d6  d6 18                                            adds r6, r2, r3
000858d8  20 2e                                            cmp r6, #0x20
000858da  4f f0 00 06                                      mov.w r6, #0
000858de  c8 bf                                            it gt
000858e0  01 26                                            movgt r6, #1
000858e2  c2 f1 20 02                                      rsb.w r2, r2, #0x20
000858e6  31 43                                            orrs r1, r6
000858e8  a2 eb 03 0c                                      sub.w ip, r2, r3
000858ec  0e f1 18 06                                      add.w r6, lr, #0x18
000858f0  11 b1                                            cbz r1, #0x858f8
000858f2  00 25                                            movs r5, #0
000858f4  05 9b                                            ldr r3, [sp, #0x14]
000858f6  0b e0                                            b #0x85910
000858f8  de f8 10 40                                      ldr.w r4, [lr, #0x10]
000858fc  56 f8 20 50                                      ldr.w r5, [r6, r0, lsl #2]
00085900  05 9b                                            ldr r3, [sp, #0x14]
00085902  64 68                                            ldr r4, [r4, #4]
00085904  05 fa 0c f5                                      lsl.w r5, r5, ip
00085908  01 2c                                            cmp r4, #1
0008590a  14 bf                                            ite ne
0008590c  d5 40                                            lsrne r5, r2
0008590e  15 41                                            asreq r5, r2
00085910  06 ac                                            add r4, sp, #0x18
00085912  44 f8 20 50                                      str.w r5, [r4, r0, lsl #2]
00085916  01 30                                            adds r0, #1
00085918  98 42                                            cmp r0, r3
0008591a  e9 d3                                            blo #0x858f0
0008591c  66 e1                                            b #0x85bec
0008591e  00 bf                                            nop
00085920  00 00                                            movs r0, r0
00085922  00 00                                            movs r0, r0
00085924  00 00                                            movs r0, r0
00085926  80 00                                            lsls r0, r0, #2
00085928  00 00                                            movs r0, r0
0008592a  80 7f                                            ldrb r0, [r0, #0x1e]
0008592c  04 99                                            ldr r1, [sp, #0x10]
0008592e  06 aa                                            add r2, sp, #0x18
00085930  18 98                                            ldr r0, [sp, #0x60]
00085932  01 f1 18 0e                                      add.w lr, r1, #0x18
00085936  d0 f8 18 c0                                      ldr.w ip, [r0, #0x18]
0008593a  be e8 79 00                                      ldm.w lr!, {r0, r3, r4, r5, r6}
0008593e  79 c2                                            stm r2!, {r0, r3, r4, r5, r6}
00085940  be e8 79 00                                      ldm.w lr!, {r0, r3, r4, r5, r6}
00085944  79 c2                                            stm r2!, {r0, r3, r4, r5, r6}
00085946  9e e8 7b 00                                      ldm.w lr, {r0, r1, r3, r4, r5, r6}
0008594a  7b c2                                            stm r2!, {r0, r1, r3, r4, r5, r6}
0008594c  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
00085950  03 9a                                            ldr r2, [sp, #0xc]
00085952  41 68                                            ldr r1, [r0, #4]
00085954  03 29                                            cmp r1, #3
00085956  00 f2 49 81                                      bhi.w #0x85bec
0008595a  df e8 11 f0                                      tbh [pc, r1, lsl #1]
0008595e  04 00                                            movs r4, r0
00085960  04 00                                            movs r4, r0
00085962  04 00                                            movs r4, r0
00085964  43 01                                            lsls r3, r0, #5
00085966  06 a9                                            add r1, sp, #0x18
00085968  90 69                                            ldr r0, [r2, #0x18]
0008596a  41 f8 2c 00                                      str.w r0, [r1, ip, lsl #2]
0008596e  3d e1                                            b #0x85bec
00085970  dd e9 03 25                                      ldrd r2, r5, [sp, #0xc]
00085974  bc f1 00 0f                                      cmp.w ip, #0
00085978  00 f0 38 81                                      beq.w #0x85bec
0008597c  dd e9 18 10                                      ldrd r1, r0, [sp, #0x60]
00085980  96 46                                            mov lr, r2
00085982  80 69                                            ldr r0, [r0, #0x18]
00085984  05 f1 18 04                                      add.w r4, r5, #0x18
00085988  0e f1 18 0e                                      add.w lr, lr, #0x18
0008598c  00 22                                            movs r2, #0
0008598e  d1 f8 18 80                                      ldr.w r8, [r1, #0x18]
00085992  00 eb 08 03                                      add.w r3, r0, r8
00085996  40 ea 08 06                                      orr.w r6, r0, r8
0008599a  20 2b                                            cmp r3, #0x20
0008599c  4f f0 00 03                                      mov.w r3, #0
000859a0  c8 bf                                            it gt
000859a2  01 23                                            movgt r3, #1
000859a4  00 2e                                            cmp r6, #0
000859a6  4f f0 00 06                                      mov.w r6, #0
000859aa  b8 bf                                            it lt
000859ac  01 26                                            movlt r6, #1
000859ae  33 43                                            orrs r3, r6
000859b0  01 26                                            movs r6, #1
000859b2  86 40                                            lsls r6, r0
000859b4  01 3e                                            subs r6, #1
000859b6  06 fa 08 f6                                      lsl.w r6, r6, r8
000859ba  6f ea 06 0c                                      mvn.w ip, r6
000859be  10 b1                                            cbz r0, #0x859c6
000859c0  23 b1                                            cbz r3, #0x859cc
000859c2  00 25                                            movs r5, #0
000859c4  0c e0                                            b #0x859e0
000859c6  54 f8 22 50                                      ldr.w r5, [r4, r2, lsl #2]
000859ca  09 e0                                            b #0x859e0
000859cc  5e f8 22 50                                      ldr.w r5, [lr, r2, lsl #2]
000859d0  54 f8 22 10                                      ldr.w r1, [r4, r2, lsl #2]
000859d4  05 fa 08 f5                                      lsl.w r5, r5, r8
000859d8  01 ea 0c 01                                      and.w r1, r1, ip
000859dc  35 40                                            ands r5, r6
000859de  0d 43                                            orrs r5, r1
000859e0  06 a9                                            add r1, sp, #0x18
000859e2  41 f8 22 50                                      str.w r5, [r1, r2, lsl #2]
000859e6  01 32                                            adds r2, #1
000859e8  05 99                                            ldr r1, [sp, #0x14]
000859ea  8a 42                                            cmp r2, r1
000859ec  e7 d3                                            blo #0x859be
000859ee  fd e0                                            b #0x85bec
000859f0  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
000859f4  41 7a                                            ldrb r1, [r0, #9]
000859f6  11 f0 0e 0f                                      tst.w r1, #0xe
000859fa  00 f0 f7 80                                      beq.w #0x85bec
000859fe  41 68                                            ldr r1, [r0, #4]
00085a00  00 22                                            movs r2, #0
00085a02  19 b1                                            cbz r1, #0x85a0c
00085a04  02 29                                            cmp r1, #2
00085a06  18 bf                                            it ne
00085a08  01 29                                            cmpne r1, #1
00085a0a  05 d1                                            bne #0x85a18
00085a0c  5b f8 22 30                                      ldr.w r3, [fp, r2, lsl #2]
00085a10  06 ae                                            add r6, sp, #0x18
00085a12  9b 69                                            ldr r3, [r3, #0x18]
00085a14  46 f8 22 30                                      str.w r3, [r6, r2, lsl #2]
00085a18  03 89                                            ldrh r3, [r0, #8]
00085a1a  01 32                                            adds r2, #1
00085a1c  c3 f3 42 23                                      ubfx r3, r3, #9, #3
00085a20  9a 42                                            cmp r2, r3
00085a22  ee d3                                            blo #0x85a02
00085a24  e2 e0                                            b #0x85bec
00085a26  01 21                                            movs r1, #1
00085a28  03 98                                            ldr r0, [sp, #0xc]
00085a2a  bc f1 00 0f                                      cmp.w ip, #0
00085a2e  04 9b                                            ldr r3, [sp, #0x10]
00085a30  00 f0 dc 80                                      beq.w #0x85bec
00085a34  b7 ee 00 0a                                      vmov.f32 s0, #1.000000e+00
00085a38  05 9c                                            ldr r4, [sp, #0x14]
00085a3a  18 30                                            adds r0, #0x18
00085a3c  18 32                                            adds r2, #0x18
00085a3e  18 33                                            adds r3, #0x18
00085a40  06 ad                                            add r5, sp, #0x18
00085a42  89 00                                            lsls r1, r1, #2
00085a44  00 26                                            movs r6, #0
00085a46  92 ed 00 1a                                      vldr s2, [r2]
00085a4a  01 36                                            adds r6, #1
00085a4c  90 ed 00 3a                                      vldr s6, [r0]
00085a50  0a 44                                            add r2, r1
00085a52  30 ee 41 2a                                      vsub.f32 s4, s0, s2
00085a56  93 ed 00 4a                                      vldr s8, [r3]
00085a5a  21 ee 03 1a                                      vmul.f32 s2, s2, s6
00085a5e  04 30                                            adds r0, #4
00085a60  04 33                                            adds r3, #4
00085a62  a6 42                                            cmp r6, r4
00085a64  24 ee 02 2a                                      vmul.f32 s4, s8, s4
00085a68  32 ee 01 1a                                      vadd.f32 s2, s4, s2
00085a6c  85 ed 00 1a                                      vstr s2, [r5]
00085a70  05 f1 04 05                                      add.w r5, r5, #4
00085a74  e7 d3                                            blo #0x85a46
00085a76  b9 e0                                            b #0x85bec
00085a78  be f8 08 20                                      ldrh.w r2, [lr, #8]
00085a7c  12 f4 c0 4f                                      tst.w r2, #0x6000
00085a80  07 d0                                            beq #0x85a92
00085a82  00 23                                            movs r3, #0
00085a84  02 2c                                            cmp r4, #2
00085a86  18 bf                                            it ne
00085a88  01 23                                            movne r3, #1
00085a8a  33 43                                            orrs r3, r6
00085a8c  53 ea 08 03                                      orrs.w r3, r3, r8
00085a90  35 d0                                            beq #0x85afe
00085a92  dd e9 03 10                                      ldrd r1, r0, [sp, #0xc]
00085a96  bc f1 00 0f                                      cmp.w ip, #0
00085a9a  00 f0 a7 80                                      beq.w #0x85bec
00085a9e  01 9a                                            ldr r2, [sp, #4]
00085aa0  00 f1 18 03                                      add.w r3, r0, #0x18
00085aa4  06 69                                            ldr r6, [r0, #0x10]
00085aa6  00 25                                            movs r5, #0
00085aa8  4f ea 82 0c                                      lsl.w ip, r2, #2
00085aac  02 9a                                            ldr r2, [sp, #8]
00085aae  76 68                                            ldr r6, [r6, #4]
00085ab0  4f ea 82 0e                                      lsl.w lr, r2, #2
00085ab4  01 f1 18 02                                      add.w r2, r1, #0x18
00085ab8  02 2e                                            cmp r6, #2
00085aba  07 d0                                            beq #0x85acc
00085abc  05 99                                            ldr r1, [sp, #0x14]
00085abe  01 2e                                            cmp r6, #1
00085ac0  11 d0                                            beq #0x85ae6
00085ac2  b6 b9                                            cbnz r6, #0x85af2
00085ac4  1c 68                                            ldr r4, [r3]
00085ac6  10 68                                            ldr r0, [r2]
00085ac8  60 43                                            muls r0, r4, r0
00085aca  0f e0                                            b #0x85aec
00085acc  92 ed 00 0a                                      vldr s0, [r2]
00085ad0  06 a8                                            add r0, sp, #0x18
00085ad2  93 ed 00 1a                                      vldr s2, [r3]
00085ad6  00 eb 85 00                                      add.w r0, r0, r5, lsl #2
00085ada  05 99                                            ldr r1, [sp, #0x14]
00085adc  21 ee 00 0a                                      vmul.f32 s0, s2, s0
00085ae0  80 ed 00 0a                                      vstr s0, [r0]
00085ae4  05 e0                                            b #0x85af2
00085ae6  18 68                                            ldr r0, [r3]
00085ae8  14 68                                            ldr r4, [r2]
00085aea  60 43                                            muls r0, r4, r0
00085aec  06 ac                                            add r4, sp, #0x18
00085aee  44 f8 25 00                                      str.w r0, [r4, r5, lsl #2]
00085af2  01 35                                            adds r5, #1
00085af4  63 44                                            add r3, ip
00085af6  72 44                                            add r2, lr
00085af8  8d 42                                            cmp r5, r1
00085afa  dd d3                                            blo #0x85ab8
00085afc  76 e0                                            b #0x85bec
00085afe  02 f4 40 63                                      and r3, r2, #0xc00
00085b02  b3 f5 00 7f                                      cmp.w r3, #0x200
00085b06  28 d9                                            bls #0x85b5a
00085b08  02 f4 e0 43                                      and r3, r2, #0x7000
00085b0c  b3 f5 80 5f                                      cmp.w r3, #0x1000
00085b10  23 d1                                            bne #0x85b5a
00085b12  04 2c                                            cmp r4, #4
00085b14  21 d2                                            bhs #0x85b5a
00085b16  01 20                                            movs r0, #1
00085b18  21 e0                                            b #0x85b5e
00085b1a  00 20                                            movs r0, #0
00085b1c  04 9b                                            ldr r3, [sp, #0x10]
00085b1e  19 69                                            ldr r1, [r3, #0x10]
00085b20  49 68                                            ldr r1, [r1, #4]
00085b22  03 29                                            cmp r1, #3
00085b24  62 d8                                            bhi #0x85bec
00085b26  df e8 01 f0                                      tbb [pc, r1]
00085b2a  02 02                                            lsls r2, r0, #8
00085b2c  02 84                                            strh r2, [r0, #0x20]
00085b2e  03 eb 80 00                                      add.w r0, r3, r0, lsl #2
00085b32  80 69                                            ldr r0, [r0, #0x18]
00085b34  06 90                                            str r0, [sp, #0x18]
00085b36  59 e0                                            b #0x85bec
00085b38  04 98                                            ldr r0, [sp, #0x10]
00085b3a  bc f1 00 0f                                      cmp.w ip, #0
00085b3e  55 d0                                            beq #0x85bec
00085b40  18 30                                            adds r0, #0x18
00085b42  00 21                                            movs r1, #0
00085b44  50 f8 21 20                                      ldr.w r2, [r0, r1, lsl #2]
00085b48  06 ab                                            add r3, sp, #0x18
00085b4a  d2 43                                            mvns r2, r2
00085b4c  43 f8 21 20                                      str.w r2, [r3, r1, lsl #2]
00085b50  01 31                                            adds r1, #1
00085b52  05 9a                                            ldr r2, [sp, #0x14]
00085b54  91 42                                            cmp r1, r2
00085b56  f5 d3                                            blo #0x85b44
00085b58  48 e0                                            b #0x85bec
00085b5a  c2 f3 42 20                                      ubfx r0, r2, #9, #3
00085b5e  dd e9 03 63                                      ldrd r6, r3, [sp, #0xc]
00085b62  09 89                                            ldrh r1, [r1, #8]
00085b64  c1 f3 02 35                                      ubfx r5, r1, #0xc, #3
00085b68  c1 f3 42 22                                      ubfx r2, r1, #9, #3
00085b6c  00 2d                                            cmp r5, #0
00085b6e  05 95                                            str r5, [sp, #0x14]
00085b70  3c d0                                            beq #0x85bec
00085b72  06 f1 18 0e                                      add.w lr, r6, #0x18
00085b76  91 00                                            lsls r1, r2, #2
00085b78  85 00                                            lsls r5, r0, #2
00085b7a  4f f0 00 0b                                      mov.w fp, #0
00085b7e  04 91                                            str r1, [sp, #0x10]
00085b80  03 f1 18 01                                      add.w r1, r3, #0x18
00085b84  03 91                                            str r1, [sp, #0xc]
00085b86  28 b3                                            cbz r0, #0x85bd4
00085b88  0b fb 00 fa                                      mul sl, fp, r0
00085b8c  dd f8 0c 80                                      ldr.w r8, [sp, #0xc]
00085b90  00 23                                            movs r3, #0
00085b92  d2 b1                                            cbz r2, #0x85bca
00085b94  03 eb 0a 01                                      add.w r1, r3, sl
00085b98  06 ae                                            add r6, sp, #0x18
00085b9a  4f f0 00 0c                                      mov.w ip, #0
00085b9e  06 eb 81 04                                      add.w r4, r6, r1, lsl #2
00085ba2  76 46                                            mov r6, lr
00085ba4  41 46                                            mov r1, r8
00085ba6  94 ed 00 0a                                      vldr s0, [r4]
00085baa  96 ed 00 1a                                      vldr s2, [r6]
00085bae  0c f1 01 0c                                      add.w ip, ip, #1
00085bb2  91 ed 00 2a                                      vldr s4, [r1]
00085bb6  29 44                                            add r1, r5
00085bb8  04 36                                            adds r6, #4
00085bba  94 45                                            cmp ip, r2
00085bbc  22 ee 01 1a                                      vmul.f32 s2, s4, s2
00085bc0  30 ee 01 0a                                      vadd.f32 s0, s0, s2
00085bc4  84 ed 00 0a                                      vstr s0, [r4]
00085bc8  ef d3                                            blo #0x85baa
00085bca  01 33                                            adds r3, #1
00085bcc  08 f1 04 08                                      add.w r8, r8, #4
00085bd0  83 42                                            cmp r3, r0
00085bd2  de d1                                            bne #0x85b92
00085bd4  04 99                                            ldr r1, [sp, #0x10]
00085bd6  0b f1 01 0b                                      add.w fp, fp, #1
00085bda  8e 44                                            add lr, r1
00085bdc  05 99                                            ldr r1, [sp, #0x14]
00085bde  8b 45                                            cmp fp, r1
00085be0  d1 d3                                            blo #0x85b86
00085be2  03 e0                                            b #0x85bec
00085be4  06 a9                                            add r1, sp, #0x18
00085be6  10 7e                                            ldrb r0, [r2, #0x18]
00085be8  01 f8 0c 00                                      strb.w r0, [r1, ip]
00085bec  00 98                                            ldr r0, [sp]
00085bee  68 21                                            movs r1, #0x68
00085bf0  ac f7 96 ed                                      blx #0x32720
00085bf4  05 46                                            mov r5, r0
00085bf6  11 48                                            ldr r0, [pc, #0x44]
00085bf8  78 44                                            add r0, pc
00085bfa  01 68                                            ldr r1, [r0]
00085bfc  28 46                                            mov r0, r5
00085bfe  ac f7 80 ee                                      blx #0x32900
00085c02  d9 f8 10 10                                      ldr.w r1, [sb, #0x10]
00085c06  06 aa                                            add r2, sp, #0x18
00085c08  28 46                                            mov r0, r5
00085c0a  ac f7 da ee                                      blx #0x329c0
00085c0e  0c 48                                            ldr r0, [pc, #0x30]
00085c10  1b 99                                            ldr r1, [sp, #0x6c]
00085c12  78 44                                            add r0, pc
00085c14  00 68                                            ldr r0, [r0]
00085c16  00 68                                            ldr r0, [r0]
00085c18  40 1a                                            subs r0, r0, r1
00085c1a  01 bf                                            itttt eq
00085c1c  28 46                                            moveq r0, r5
00085c1e  1c b0                                            addeq sp, #0x70
00085c20  bd ec 0a 8b                                      vpopeq {d8, d9, d10, d11, d12}
00085c24  01 b0                                            addeq sp, #4
00085c26  04 bf                                            itt eq
00085c28  bd e8 00 0f                                      popeq.w {r8, sb, sl, fp}
00085c2c  f0 bd                                            popeq {r4, r5, r6, r7, pc}
00085c2e  ac f7 18 ea                                      blx #0x32060
00085c32  18 44                                            add r0, r3
00085c34  00 7e                                            ldrb r0, [r0, #0x18]
00085c36  ff f7 5d bb                                      b.w #0x852f4
00085c3a  00 bf                                            nop
00085c3c  40 69                                            ldr r0, [r0, #0x14]
00085c3e  05 00                                            movs r5, r0
00085c40  a2 68                                            ldr r2, [r4, #8]
00085c42  05 00                                            movs r5, r0

; FUNCTION 0x000864ac, declared_size=108, range_size=108, mode=thumb
; class-group: ir_expression
; alias: _ZN13ir_expression6equalsEP14ir_instruction12ir_node_type
; demangled: ir_expression::equals(ir_instruction*, ir_node_type)
; decoder-mode: thumb
000864ac  f0 b5                                            push {r4, r5, r6, r7, lr}
000864ae  03 af                                            add r7, sp, #0xc
000864b0  2d e9 00 0b                                      push.w {r8, sb, fp}
000864b4  05 46                                            mov r5, r0
000864b6  14 46                                            mov r4, r2
000864b8  00 20                                            movs r0, #0
000864ba  51 b3                                            cbz r1, #0x86512
000864bc  ca 68                                            ldr r2, [r1, #0xc]
000864be  04 2a                                            cmp r2, #4
000864c0  27 d1                                            bne #0x86512
000864c2  08 69                                            ldr r0, [r1, #0x10]
000864c4  2a 69                                            ldr r2, [r5, #0x10]
000864c6  82 42                                            cmp r2, r0
000864c8  22 d1                                            bne #0x86510
000864ca  a8 69                                            ldr r0, [r5, #0x18]
000864cc  8a 69                                            ldr r2, [r1, #0x18]
000864ce  90 42                                            cmp r0, r2
000864d0  1e d1                                            bne #0x86510
000864d2  05 f1 1c 08                                      add.w r8, r5, #0x1c
000864d6  01 f1 1c 09                                      add.w sb, r1, #0x1c
000864da  00 26                                            movs r6, #0
000864dc  0b e0                                            b #0x864f6
000864de  58 f8 26 00                                      ldr.w r0, [r8, r6, lsl #2]
000864e2  59 f8 26 10                                      ldr.w r1, [sb, r6, lsl #2]
000864e6  02 68                                            ldr r2, [r0]
000864e8  53 69                                            ldr r3, [r2, #0x14]
000864ea  22 46                                            mov r2, r4
000864ec  98 47                                            blx r3
000864ee  01 28                                            cmp r0, #1
000864f0  0e d1                                            bne #0x86510
000864f2  a8 69                                            ldr r0, [r5, #0x18]
000864f4  01 36                                            adds r6, #1
000864f6  69 28                                            cmp r0, #0x69
000864f8  04 d1                                            bne #0x86504
000864fa  28 69                                            ldr r0, [r5, #0x10]
000864fc  00 89                                            ldrh r0, [r0, #8]
000864fe  c0 f3 42 20                                      ubfx r0, r0, #9, #3
00086502  01 e0                                            b #0x86508
00086504  ad f7 16 e9                                      blx #0x33734
00086508  86 42                                            cmp r6, r0
0008650a  e8 d3                                            blo #0x864de
0008650c  01 20                                            movs r0, #1
0008650e  00 e0                                            b #0x86512
00086510  00 20                                            movs r0, #0
00086512  bd e8 00 0b                                      pop.w {r8, sb, fp}
00086516  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0008651a, declared_size=22, range_size=22, mode=thumb
; class-group: ir_expression
; alias: _ZN13ir_expressionD0Ev
; demangled: ir_expression::~ir_expression()
; decoder-mode: thumb
0008651a  d0 b5                                            push {r4, r6, r7, lr}
0008651c  02 af                                            add r7, sp, #8
0008651e  00 21                                            movs r1, #0
00086520  04 46                                            mov r4, r0
00086522  ac f7 ee e9                                      blx #0x32900
00086526  20 46                                            mov r0, r4
00086528  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0008652c  2a f0 9c ba                                      b.w #0xb0a68

; FUNCTION 0x00086530, declared_size=12, range_size=12, mode=thumb
; class-group: ir_expression
; alias: _ZN13ir_expression6acceptEP10ir_visitor
; demangled: ir_expression::accept(ir_visitor*)
; decoder-mode: thumb
00086530  02 46                                            mov r2, r0
00086532  08 68                                            ldr r0, [r1]
00086534  83 69                                            ldr r3, [r0, #0x18]
00086536  08 46                                            mov r0, r1
00086538  11 46                                            mov r1, r2
0008653a  18 47                                            bx r3

; FUNCTION 0x000874fc, declared_size=110, range_size=110, mode=thumb
; class-group: ir_expression
; alias: _ZN13ir_expression6acceptEP23ir_hierarchical_visitor
; demangled: ir_expression::accept(ir_hierarchical_visitor*)
; decoder-mode: thumb
000874fc  f0 b5                                            push {r4, r5, r6, r7, lr}
000874fe  03 af                                            add r7, sp, #0xc
00087500  4d f8 04 bd                                      str fp, [sp, #-0x4]!
00087504  0d 46                                            mov r5, r1
00087506  04 46                                            mov r4, r0
00087508  28 68                                            ldr r0, [r5]
0008750a  21 46                                            mov r1, r4
0008750c  42 6b                                            ldr r2, [r0, #0x34]
0008750e  28 46                                            mov r0, r5
00087510  90 47                                            blx r2
00087512  28 b1                                            cbz r0, #0x87520
00087514  01 28                                            cmp r0, #1
00087516  08 bf                                            it eq
00087518  00 20                                            moveq r0, #0
0008751a  5d f8 04 bb                                      ldr fp, [sp], #4
0008751e  f0 bd                                            pop {r4, r5, r6, r7, pc}
00087520  00 26                                            movs r6, #0
00087522  0b e0                                            b #0x8753c
00087524  04 eb 86 00                                      add.w r0, r4, r6, lsl #2
00087528  c0 69                                            ldr r0, [r0, #0x1c]
0008752a  01 68                                            ldr r1, [r0]
0008752c  ca 68                                            ldr r2, [r1, #0xc]
0008752e  29 46                                            mov r1, r5
00087530  90 47                                            blx r2
00087532  01 28                                            cmp r0, #1
00087534  0e d0                                            beq #0x87554
00087536  02 28                                            cmp r0, #2
00087538  15 d0                                            beq #0x87566
0008753a  01 36                                            adds r6, #1
0008753c  a0 69                                            ldr r0, [r4, #0x18]
0008753e  69 28                                            cmp r0, #0x69
00087540  04 d1                                            bne #0x8754c
00087542  20 69                                            ldr r0, [r4, #0x10]
00087544  00 89                                            ldrh r0, [r0, #8]
00087546  c0 f3 42 20                                      ubfx r0, r0, #9, #3
0008754a  01 e0                                            b #0x87550
0008754c  ac f7 f2 e8                                      blx #0x33734
00087550  86 42                                            cmp r6, r0
00087552  e7 d3                                            blo #0x87524
00087554  28 68                                            ldr r0, [r5]
00087556  21 46                                            mov r1, r4
00087558  82 6b                                            ldr r2, [r0, #0x38]
0008755a  28 46                                            mov r0, r5
0008755c  5d f8 04 bb                                      ldr fp, [sp], #4
00087560  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
00087564  10 47                                            bx r2
00087566  00 20                                            movs r0, #0
00087568  d7 e7                                            b #0x8751a
