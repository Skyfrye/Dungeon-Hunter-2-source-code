; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00081f54, declared_size=52, range_size=52, mode=thumb
; class-group: ir_function
; alias: _ZN11ir_functionC1EPKc
; demangled: ir_function::ir_function(char const*)
; alias: _ZN11ir_functionC2EPKc
; demangled: ir_function::ir_function(char const*)
; decoder-mode: thumb
00081f54  d0 b5                                            push {r4, r6, r7, lr}
00081f56  02 af                                            add r7, sp, #8
00081f58  04 46                                            mov r4, r0
00081f5a  0a 48                                            ldr r0, [pc, #0x28]
00081f5c  0a 22                                            movs r2, #0xa
00081f5e  23 46                                            mov r3, r4
00081f60  78 44                                            add r0, pc
00081f62  e2 60                                            str r2, [r4, #0xc]
00081f64  00 22                                            movs r2, #0
00081f66  00 68                                            ldr r0, [r0]
00081f68  43 f8 18 2f                                      str r2, [r3, #0x18]!
00081f6c  04 f1 14 02                                      add.w r2, r4, #0x14
00081f70  08 30                                            adds r0, #8
00081f72  63 61                                            str r3, [r4, #0x14]
00081f74  e2 61                                            str r2, [r4, #0x1c]
00081f76  20 60                                            str r0, [r4]
00081f78  20 46                                            mov r0, r4
00081f7a  b0 f7 6c eb                                      blx #0x32654
00081f7e  20 61                                            str r0, [r4, #0x10]
00081f80  20 46                                            mov r0, r4
00081f82  d0 bd                                            pop {r4, r6, r7, pc}
00081f84  3c aa                                            add r2, sp, #0xf0
00081f86  05 00                                            movs r5, r0

; FUNCTION 0x00081f88, declared_size=32, range_size=32, mode=thumb
; class-group: ir_function
; alias: _ZN11ir_function18has_user_signatureEv
; demangled: ir_function::has_user_signature()
; decoder-mode: thumb
00081f88  40 69                                            ldr r0, [r0, #0x14]
00081f8a  05 e0                                            b #0x81f98
00081f8c  40 6b                                            ldr r0, [r0, #0x34]
00081f8e  00 28                                            cmp r0, #0
00081f90  08 46                                            mov r0, r1
00081f92  04 bf                                            itt eq
00081f94  01 20                                            moveq r0, #1
00081f96  70 47                                            bxeq lr
00081f98  00 28                                            cmp r0, #0
00081f9a  18 bf                                            it ne
00081f9c  04 38                                            subne r0, #4
00081f9e  41 68                                            ldr r1, [r0, #4]
00081fa0  00 29                                            cmp r1, #0
00081fa2  f3 d1                                            bne #0x81f8c
00081fa4  00 20                                            movs r0, #0
00081fa6  70 47                                            bx lr

; FUNCTION 0x000831ec, declared_size=144, range_size=144, mode=thumb
; class-group: ir_function
; alias: _ZNK11ir_function5cloneEPvP10hash_table
; demangled: ir_function::clone(void*, hash_table*) const
; decoder-mode: thumb
000831ec  f0 b5                                            push {r4, r5, r6, r7, lr}
000831ee  03 af                                            add r7, sp, #0xc
000831f0  2d e9 00 07                                      push.w {r8, sb, sl}
000831f4  88 46                                            mov r8, r1
000831f6  05 46                                            mov r5, r0
000831f8  40 46                                            mov r0, r8
000831fa  20 21                                            movs r1, #0x20
000831fc  91 46                                            mov sb, r2
000831fe  af f7 90 ea                                      blx #0x32720
00083202  06 46                                            mov r6, r0
00083204  1c 48                                            ldr r0, [pc, #0x70]
00083206  78 44                                            add r0, pc
00083208  01 68                                            ldr r1, [r0]
0008320a  30 46                                            mov r0, r6
0008320c  af f7 78 eb                                      blx #0x32900
00083210  29 69                                            ldr r1, [r5, #0x10]
00083212  30 46                                            mov r0, r6
00083214  af f7 58 ec                                      blx #0x32ac8
00083218  6d 69                                            ldr r5, [r5, #0x14]
0008321a  00 2d                                            cmp r5, #0
0008321c  18 bf                                            it ne
0008321e  04 3d                                            subne r5, #4
00083220  2c 46                                            mov r4, r5
00083222  54 f8 04 0f                                      ldr r0, [r4, #4]!
00083226  10 b3                                            cbz r0, #0x8326e
00083228  06 f1 18 0a                                      add.w sl, r6, #0x18
0008322c  28 68                                            ldr r0, [r5]
0008322e  41 46                                            mov r1, r8
00083230  4a 46                                            mov r2, sb
00083232  03 69                                            ldr r3, [r0, #0x10]
00083234  28 46                                            mov r0, r5
00083236  98 47                                            blx r3
00083238  01 46                                            mov r1, r0
0008323a  00 29                                            cmp r1, #0
0008323c  8e 63                                            str r6, [r1, #0x38]
0008323e  18 bf                                            it ne
00083240  04 30                                            addne r0, #4
00083242  c0 f8 00 a0                                      str.w sl, [r0]
00083246  b9 f1 00 0f                                      cmp.w sb, #0
0008324a  f2 69                                            ldr r2, [r6, #0x1c]
0008324c  42 60                                            str r2, [r0, #4]
0008324e  10 60                                            str r0, [r2]
00083250  f0 61                                            str r0, [r6, #0x1c]
00083252  03 d0                                            beq #0x8325c
00083254  48 46                                            mov r0, sb
00083256  2a 46                                            mov r2, r5
00083258  af f7 80 ea                                      blx #0x3275c
0008325c  25 68                                            ldr r5, [r4]
0008325e  00 2d                                            cmp r5, #0
00083260  18 bf                                            it ne
00083262  04 3d                                            subne r5, #4
00083264  2c 46                                            mov r4, r5
00083266  54 f8 04 0f                                      ldr r0, [r4, #4]!
0008326a  00 28                                            cmp r0, #0
0008326c  de d1                                            bne #0x8322c
0008326e  30 46                                            mov r0, r6
00083270  bd e8 00 07                                      pop.w {r8, sb, sl}
00083274  f0 bd                                            pop {r4, r5, r6, r7, pc}
00083276  00 bf                                            nop
00083278  32 93                                            str r3, [sp, #0xc8]
0008327a  05 00                                            movs r5, r0

; FUNCTION 0x0008381a, declared_size=22, range_size=22, mode=thumb
; class-group: ir_function
; alias: _ZN11ir_functionD0Ev
; demangled: ir_function::~ir_function()
; decoder-mode: thumb
0008381a  d0 b5                                            push {r4, r6, r7, lr}
0008381c  02 af                                            add r7, sp, #8
0008381e  00 21                                            movs r1, #0
00083820  04 46                                            mov r4, r0
00083822  af f7 6e e8                                      blx #0x32900
00083826  20 46                                            mov r0, r4
00083828  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
0008382c  2d f0 1c b9                                      b.w #0xb0a68

; FUNCTION 0x00083830, declared_size=12, range_size=12, mode=thumb
; class-group: ir_function
; alias: _ZN11ir_function6acceptEP10ir_visitor
; demangled: ir_function::accept(ir_visitor*)
; decoder-mode: thumb
00083830  02 46                                            mov r2, r0
00083832  08 68                                            ldr r0, [r1]
00083834  43 69                                            ldr r3, [r0, #0x14]
00083836  08 46                                            mov r0, r1
00083838  11 46                                            mov r1, r2
0008383a  18 47                                            bx r3

; FUNCTION 0x000866b4, declared_size=68, range_size=68, mode=thumb
; class-group: ir_function
; alias: _ZN11ir_function18matching_signatureEP22_mesa_glsl_parse_statePK9exec_listb
; demangled: ir_function::matching_signature(_mesa_glsl_parse_state*, exec_list const*, bool)
; decoder-mode: thumb
000866b4  80 b5                                            push {r7, lr}
000866b6  6f 46                                            mov r7, sp
000866b8  84 b0                                            sub sp, #0x10
000866ba  df f8 34 c0                                      ldr.w ip, [pc, #0x34]
000866be  fc 44                                            add ip, pc
000866c0  dc f8 00 c0                                      ldr.w ip, [ip]
000866c4  dc f8 00 c0                                      ldr.w ip, [ip]
000866c8  cd f8 0c c0                                      str.w ip, [sp, #0xc]
000866cc  a7 f1 05 0c                                      sub.w ip, r7, #5
000866d0  cd f8 00 c0                                      str.w ip, [sp]
000866d4  ac f7 e6 e9                                      blx #0x32aa4
000866d8  06 49                                            ldr r1, [pc, #0x18]
000866da  03 9a                                            ldr r2, [sp, #0xc]
000866dc  79 44                                            add r1, pc
000866de  09 68                                            ldr r1, [r1]
000866e0  09 68                                            ldr r1, [r1]
000866e2  89 1a                                            subs r1, r1, r2
000866e4  04 bf                                            itt eq
000866e6  04 b0                                            addeq sp, #0x10
000866e8  80 bd                                            popeq {r7, pc}
000866ea  ab f7 ba ec                                      blx #0x32060
000866ee  00 bf                                            nop
000866f0  f6 5d                                            ldrb r6, [r6, r7]
000866f2  05 00                                            movs r5, r0
000866f4  d8 5d                                            ldrb r0, [r3, r7]
000866f6  05 00                                            movs r5, r0

; FUNCTION 0x000866f8, declared_size=760, range_size=760, mode=thumb
; class-group: ir_function
; alias: _ZN11ir_function18matching_signatureEP22_mesa_glsl_parse_statePK9exec_listbPb
; demangled: ir_function::matching_signature(_mesa_glsl_parse_state*, exec_list const*, bool, bool*)
; decoder-mode: thumb
000866f8  f0 b5                                            push {r4, r5, r6, r7, lr}
000866fa  03 af                                            add r7, sp, #0xc
000866fc  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
00086700  83 b0                                            sub sp, #0xc
00086702  d0 f8 14 b0                                      ldr.w fp, [r0, #0x14]
00086706  0c 46                                            mov r4, r1
00086708  b9 68                                            ldr r1, [r7, #8]
0008670a  1e 46                                            mov r6, r3
0008670c  bb f1 00 0f                                      cmp.w fp, #0
00086710  18 bf                                            it ne
00086712  ab f1 04 0b                                      subne.w fp, fp, #4
00086716  5d 46                                            mov r5, fp
00086718  92 46                                            mov sl, r2
0008671a  55 f8 04 0f                                      ldr r0, [r5, #4]!
0008671e  00 28                                            cmp r0, #0
00086720  00 f0 ad 80                                      beq.w #0x8687e
00086724  00 20                                            movs r0, #0
00086726  00 22                                            movs r2, #0
00086728  02 90                                            str r0, [sp, #8]
0008672a  00 20                                            movs r0, #0
0008672c  01 90                                            str r0, [sp, #4]
0008672e  00 92                                            str r2, [sp]
00086730  58 46                                            mov r0, fp
00086732  ac f7 3c ea                                      blx #0x32bac
00086736  01 28                                            cmp r0, #1
00086738  07 d1                                            bne #0x8674a
0008673a  01 2e                                            cmp r6, #1
0008673c  57 d1                                            bne #0x867ee
0008673e  58 46                                            mov r0, fp
00086740  21 46                                            mov r1, r4
00086742  ac f7 3a ea                                      blx #0x32bb8
00086746  01 28                                            cmp r0, #1
00086748  51 d1                                            bne #0x867ee
0008674a  db f8 18 90                                      ldr.w sb, [fp, #0x18]
0008674e  00 21                                            movs r1, #0
00086750  da f8 00 80                                      ldr.w r8, [sl]
00086754  d9 f8 00 20                                      ldr.w r2, [sb]
00086758  d8 f8 00 00                                      ldr.w r0, [r8]
0008675c  00 28                                            cmp r0, #0
0008675e  08 bf                                            it eq
00086760  01 21                                            moveq r1, #1
00086762  ea b3                                            cbz r2, #0x867e0
00086764  00 20                                            movs r0, #0
00086766  c9 07                                            lsls r1, r1, #0x1f
00086768  41 d1                                            bne #0x867ee
0008676a  08 f1 0c 01                                      add.w r1, r8, #0xc
0008676e  b8 f1 00 0f                                      cmp.w r8, #0
00086772  08 bf                                            it eq
00086774  10 21                                            moveq r1, #0x10
00086776  4b 46                                            mov r3, sb
00086778  0a 68                                            ldr r2, [r1]
0008677a  b9 f1 00 0f                                      cmp.w sb, #0
0008677e  18 bf                                            it ne
00086780  04 3b                                            subne r3, #4
00086782  19 69                                            ldr r1, [r3, #0x10]
00086784  91 42                                            cmp r1, r2
00086786  16 d0                                            beq #0x867b6
00086788  98 69                                            ldr r0, [r3, #0x18]
0008678a  c0 f3 43 20                                      ubfx r0, r0, #9, #4
0008678e  08 28                                            cmp r0, #8
00086790  03 d0                                            beq #0x8679a
00086792  06 28                                            cmp r0, #6
00086794  07 d0                                            beq #0x867a6
00086796  05 28                                            cmp r0, #5
00086798  29 d1                                            bne #0x867ee
0008679a  10 46                                            mov r0, r2
0008679c  22 46                                            mov r2, r4
0008679e  ac f7 e8 e9                                      blx #0x32b70
000867a2  38 b9                                            cbnz r0, #0x867b4
000867a4  23 e0                                            b #0x867ee
000867a6  08 46                                            mov r0, r1
000867a8  11 46                                            mov r1, r2
000867aa  22 46                                            mov r2, r4
000867ac  ac f7 e0 e9                                      blx #0x32b70
000867b0  01 28                                            cmp r0, #1
000867b2  1c d1                                            bne #0x867ee
000867b4  01 20                                            movs r0, #1
000867b6  d8 f8 00 80                                      ldr.w r8, [r8]
000867ba  d9 f8 00 90                                      ldr.w sb, [sb]
000867be  d8 f8 00 10                                      ldr.w r1, [r8]
000867c2  d9 f8 00 20                                      ldr.w r2, [sb]
000867c6  00 29                                            cmp r1, #0
000867c8  4f f0 00 01                                      mov.w r1, #0
000867cc  08 bf                                            it eq
000867ce  01 21                                            moveq r1, #1
000867d0  00 2a                                            cmp r2, #0
000867d2  c8 d1                                            bne #0x86766
000867d4  c0 07                                            lsls r0, r0, #0x1f
000867d6  4f f0 01 00                                      mov.w r0, #1
000867da  18 bf                                            it ne
000867dc  02 20                                            movne r0, #2
000867de  00 e0                                            b #0x867e2
000867e0  01 20                                            movs r0, #1
000867e2  00 29                                            cmp r1, #0
000867e4  08 bf                                            it eq
000867e6  08 46                                            moveq r0, r1
000867e8  10 f0 03 00                                      ands r0, r0, #3
000867ec  0c d1                                            bne #0x86808
000867ee  d5 f8 00 b0                                      ldr.w fp, [r5]
000867f2  bb f1 00 0f                                      cmp.w fp, #0
000867f6  18 bf                                            it ne
000867f8  ab f1 04 0b                                      subne.w fp, fp, #4
000867fc  5d 46                                            mov r5, fp
000867fe  55 f8 04 0f                                      ldr r0, [r5, #4]!
00086802  00 28                                            cmp r0, #0
00086804  94 d1                                            bne #0x86730
00086806  28 e0                                            b #0x8685a
00086808  01 28                                            cmp r0, #1
0008680a  00 f0 d2 80                                      beq.w #0x869b2
0008680e  02 28                                            cmp r0, #2
00086810  40 f0 e0 80                                      bne.w #0x869d4
00086814  00 98                                            ldr r0, [sp]
00086816  dd f8 04 90                                      ldr.w sb, [sp, #4]
0008681a  00 f1 01 08                                      add.w r8, r0, #1
0008681e  4f ea 88 01                                      lsl.w r1, r8, #2
00086822  48 46                                            mov r0, sb
00086824  ab f7 f8 eb                                      blx #0x32018
00086828  00 28                                            cmp r0, #0
0008682a  00 f0 cd 80                                      beq.w #0x869c8
0008682e  00 99                                            ldr r1, [sp]
00086830  42 46                                            mov r2, r8
00086832  40 f8 21 b0                                      str.w fp, [r0, r1, lsl #2]
00086836  01 46                                            mov r1, r0
00086838  d5 f8 00 b0                                      ldr.w fp, [r5]
0008683c  bb f1 00 0f                                      cmp.w fp, #0
00086840  18 bf                                            it ne
00086842  ab f1 04 0b                                      subne.w fp, fp, #4
00086846  5d 46                                            mov r5, fp
00086848  55 f8 04 0f                                      ldr r0, [r5, #4]!
0008684c  00 28                                            cmp r0, #0
0008684e  08 46                                            mov r0, r1
00086850  cd e9 01 10                                      strd r1, r0, [sp, #4]
00086854  7f f4 6b af                                      bne.w #0x8672e
00086858  01 e0                                            b #0x8685e
0008685a  dd f8 00 80                                      ldr.w r8, [sp]
0008685e  b8 68                                            ldr r0, [r7, #8]
00086860  4f f0 00 0b                                      mov.w fp, #0
00086864  b8 f1 00 0f                                      cmp.w r8, #0
00086868  80 f8 00 b0                                      strb.w fp, [r0]
0008686c  00 f0 a4 80                                      beq.w #0x869b8
00086870  b8 f1 01 0f                                      cmp.w r8, #1
00086874  08 d1                                            bne #0x86888
00086876  02 98                                            ldr r0, [sp, #8]
00086878  d0 f8 00 b0                                      ldr.w fp, [r0]
0008687c  9c e0                                            b #0x869b8
0008687e  00 20                                            movs r0, #0
00086880  4f f0 00 0b                                      mov.w fp, #0
00086884  08 70                                            strb r0, [r1]
00086886  98 e0                                            b #0x869ba
00086888  64 b1                                            cbz r4, #0x868a4
0008688a  94 f8 7c 00                                      ldrb.w r0, [r4, #0x7c]
0008688e  20 b9                                            cbnz r0, #0x8689a
00086890  d4 f8 80 00                                      ldr.w r0, [r4, #0x80]
00086894  00 09                                            lsrs r0, r0, #4
00086896  18 28                                            cmp r0, #0x18
00086898  04 d8                                            bhi #0x868a4
0008689a  94 f8 a4 01                                      ldrb.w r0, [r4, #0x1a4]
0008689e  00 28                                            cmp r0, #0
000868a0  00 f0 84 80                                      beq.w #0x869ac
000868a4  4f f0 00 0b                                      mov.w fp, #0
000868a8  b8 f1 01 0f                                      cmp.w r8, #1
000868ac  c0 f2 84 80                                      blt.w #0x869b8
000868b0  02 98                                            ldr r0, [sp, #8]
000868b2  00 eb 88 0c                                      add.w ip, r0, r8, lsl #2
000868b6  86 46                                            mov lr, r0
000868b8  de f8 00 b0                                      ldr.w fp, [lr]
000868bc  80 46                                            mov r8, r0
000868be  d8 f8 00 00                                      ldr.w r0, [r8]
000868c2  58 45                                            cmp r0, fp
000868c4  67 d0                                            beq #0x86996
000868c6  db f8 18 40                                      ldr.w r4, [fp, #0x18]
000868ca  83 69                                            ldr r3, [r0, #0x18]
000868cc  da f8 00 60                                      ldr.w r6, [sl]
000868d0  20 68                                            ldr r0, [r4]
000868d2  00 28                                            cmp r0, #0
000868d4  64 d0                                            beq #0x869a0
000868d6  00 25                                            movs r5, #0
000868d8  00 2c                                            cmp r4, #0
000868da  18 bf                                            it ne
000868dc  04 3c                                            subne r4, #4
000868de  81 46                                            mov sb, r0
000868e0  a0 69                                            ldr r0, [r4, #0x18]
000868e2  06 f1 0c 01                                      add.w r1, r6, #0xc
000868e6  00 2e                                            cmp r6, #0
000868e8  08 bf                                            it eq
000868ea  10 21                                            moveq r1, #0x10
000868ec  04 f1 10 02                                      add.w r2, r4, #0x10
000868f0  00 f4 f0 50                                      and r0, r0, #0x1e00
000868f4  0c 46                                            mov r4, r1
000868f6  90 f4 40 60                                      eors r0, r0, #0xc00
000868fa  04 bf                                            itt eq
000868fc  14 46                                            moveq r4, r2
000868fe  0a 46                                            moveq r2, r1
00086900  10 68                                            ldr r0, [r2]
00086902  22 68                                            ldr r2, [r4]
00086904  82 42                                            cmp r2, r0
00086906  04 d0                                            beq #0x86912
00086908  40 68                                            ldr r0, [r0, #4]
0008690a  02 28                                            cmp r0, #2
0008690c  18 bf                                            it ne
0008690e  04 20                                            movne r0, #4
00086910  00 e0                                            b #0x86914
00086912  00 20                                            movs r0, #0
00086914  1a 46                                            mov r2, r3
00086916  00 2b                                            cmp r3, #0
00086918  18 bf                                            it ne
0008691a  04 3a                                            subne r2, #4
0008691c  94 69                                            ldr r4, [r2, #0x18]
0008691e  10 32                                            adds r2, #0x10
00086920  04 f4 f0 54                                      and r4, r4, #0x1e00
00086924  94 f4 40 64                                      eors r4, r4, #0xc00
00086928  0c 46                                            mov r4, r1
0008692a  04 bf                                            itt eq
0008692c  14 46                                            moveq r4, r2
0008692e  0a 46                                            moveq r2, r1
00086930  11 68                                            ldr r1, [r2]
00086932  22 68                                            ldr r2, [r4]
00086934  8a 42                                            cmp r2, r1
00086936  04 d0                                            beq #0x86942
00086938  49 68                                            ldr r1, [r1, #4]
0008693a  02 29                                            cmp r1, #2
0008693c  18 bf                                            it ne
0008693e  04 21                                            movne r1, #4
00086940  00 e0                                            b #0x86944
00086942  00 21                                            movs r1, #0
00086944  02 29                                            cmp r1, #2
00086946  4f f0 00 04                                      mov.w r4, #0
0008694a  38 bf                                            it lo
0008694c  01 24                                            movlo r4, #1
0008694e  04 28                                            cmp r0, #4
00086950  4f f0 00 02                                      mov.w r2, #0
00086954  18 bf                                            it ne
00086956  01 22                                            movne r2, #1
00086958  81 42                                            cmp r1, r0
0008695a  01 d2                                            bhs #0x86960
0008695c  22 43                                            orrs r2, r4
0008695e  1f d1                                            bne #0x869a0
00086960  88 42                                            cmp r0, r1
00086962  4f f0 00 02                                      mov.w r2, #0
00086966  38 bf                                            it lo
00086968  01 22                                            movlo r2, #1
0008696a  04 29                                            cmp r1, #4
0008696c  4f f0 00 01                                      mov.w r1, #0
00086970  4f f0 00 04                                      mov.w r4, #0
00086974  18 bf                                            it ne
00086976  01 21                                            movne r1, #1
00086978  02 28                                            cmp r0, #2
0008697a  38 bf                                            it lo
0008697c  01 24                                            movlo r4, #1
0008697e  d9 f8 00 00                                      ldr.w r0, [sb]
00086982  21 43                                            orrs r1, r4
00086984  36 68                                            ldr r6, [r6]
00086986  11 40                                            ands r1, r2
00086988  1b 68                                            ldr r3, [r3]
0008698a  0d 43                                            orrs r5, r1
0008698c  00 28                                            cmp r0, #0
0008698e  4c 46                                            mov r4, sb
00086990  a2 d1                                            bne #0x868d8
00086992  e8 07                                            lsls r0, r5, #0x1f
00086994  04 d0                                            beq #0x869a0
00086996  08 f1 04 08                                      add.w r8, r8, #4
0008699a  e0 45                                            cmp r8, ip
0008699c  8f d3                                            blo #0x868be
0008699e  0b e0                                            b #0x869b8
000869a0  02 98                                            ldr r0, [sp, #8]
000869a2  0e f1 04 0e                                      add.w lr, lr, #4
000869a6  e6 45                                            cmp lr, ip
000869a8  ff f4 86 af                                      blo.w #0x868b8
000869ac  4f f0 00 0b                                      mov.w fp, #0
000869b0  02 e0                                            b #0x869b8
000869b2  b9 68                                            ldr r1, [r7, #8]
000869b4  01 20                                            movs r0, #1
000869b6  08 70                                            strb r0, [r1]
000869b8  01 98                                            ldr r0, [sp, #4]
000869ba  ab f7 40 eb                                      blx #0x3203c
000869be  58 46                                            mov r0, fp
000869c0  03 b0                                            add sp, #0xc
000869c2  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
000869c6  f0 bd                                            pop {r4, r5, r6, r7, pc}
000869c8  04 a0                                            adr r0, #0x10
000869ca  ab f7 40 ef                                      blx #0x3284c
000869ce  48 46                                            mov r0, sb
000869d0  ab f7 34 eb                                      blx #0x3203c
000869d4  4f f0 00 0b                                      mov.w fp, #0
000869d8  f1 e7                                            b #0x869be
000869da  00 bf                                            nop
000869dc  6d 61                                            str r5, [r5, #0x14]
000869de  74 63                                            str r4, [r6, #0x34]
000869e0  68 69                                            ldr r0, [r5, #0x14]
000869e2  6e 67                                            str r6, [r5, #0x74]
000869e4  5f 73                                            strb r7, [r3, #0xd]
000869e6  69 67                                            str r1, [r5, #0x74]
000869e8  6e 61                                            str r6, [r5, #0x14]
000869ea  74 75                                            strb r4, [r6, #0x15]
000869ec  72 65                                            str r2, [r6, #0x54]
000869ee  00 00                                            movs r0, r0

; FUNCTION 0x000869f0, declared_size=152, range_size=152, mode=thumb
; class-group: ir_function
; alias: _ZN11ir_function24exact_matching_signatureEP22_mesa_glsl_parse_statePK9exec_list
; demangled: ir_function::exact_matching_signature(_mesa_glsl_parse_state*, exec_list const*)
; decoder-mode: thumb
000869f0  f0 b5                                            push {r4, r5, r6, r7, lr}
000869f2  03 af                                            add r7, sp, #0xc
000869f4  2d e9 00 0b                                      push.w {r8, sb, fp}
000869f8  40 69                                            ldr r0, [r0, #0x14]
000869fa  88 46                                            mov r8, r1
000869fc  91 46                                            mov sb, r2
000869fe  00 26                                            movs r6, #0
00086a00  00 28                                            cmp r0, #0
00086a02  18 bf                                            it ne
00086a04  04 38                                            subne r0, #4
00086a06  05 46                                            mov r5, r0
00086a08  55 f8 04 1f                                      ldr r1, [r5, #4]!
00086a0c  c1 b3                                            cbz r1, #0x86a80
00086a0e  06 46                                            mov r6, r0
00086a10  30 46                                            mov r0, r6
00086a12  ac f7 cc e8                                      blx #0x32bac
00086a16  01 28                                            cmp r0, #1
00086a18  04 d1                                            bne #0x86a24
00086a1a  30 46                                            mov r0, r6
00086a1c  41 46                                            mov r1, r8
00086a1e  ac f7 cc e8                                      blx #0x32bb8
00086a22  18 b3                                            cbz r0, #0x86a6c
00086a24  b1 69                                            ldr r1, [r6, #0x18]
00086a26  d9 f8 00 30                                      ldr.w r3, [sb]
00086a2a  08 68                                            ldr r0, [r1]
00086a2c  1a 68                                            ldr r2, [r3]
00086a2e  60 b1                                            cbz r0, #0x86a4a
00086a30  5a b1                                            cbz r2, #0x86a4a
00086a32  01 f1 0c 04                                      add.w r4, r1, #0xc
00086a36  db 68                                            ldr r3, [r3, #0xc]
00086a38  00 29                                            cmp r1, #0
00086a3a  08 bf                                            it eq
00086a3c  10 24                                            moveq r4, #0x10
00086a3e  21 68                                            ldr r1, [r4]
00086a40  99 42                                            cmp r1, r3
00086a42  13 46                                            mov r3, r2
00086a44  01 46                                            mov r1, r0
00086a46  f0 d0                                            beq #0x86a2a
00086a48  10 e0                                            b #0x86a6c
00086a4a  00 28                                            cmp r0, #0
00086a4c  4f f0 00 01                                      mov.w r1, #0
00086a50  08 bf                                            it eq
00086a52  01 21                                            moveq r1, #1
00086a54  00 2a                                            cmp r2, #0
00086a56  4f f0 00 02                                      mov.w r2, #0
00086a5a  08 bf                                            it eq
00086a5c  01 22                                            moveq r2, #1
00086a5e  00 28                                            cmp r0, #0
00086a60  18 bf                                            it ne
00086a62  01 20                                            movne r0, #1
00086a64  10 43                                            orrs r0, r2
00086a66  91 ea 00 0f                                      teq.w r1, r0
00086a6a  09 d0                                            beq #0x86a80
00086a6c  2e 68                                            ldr r6, [r5]
00086a6e  00 2e                                            cmp r6, #0
00086a70  18 bf                                            it ne
00086a72  04 3e                                            subne r6, #4
00086a74  35 46                                            mov r5, r6
00086a76  55 f8 04 0f                                      ldr r0, [r5, #4]!
00086a7a  00 28                                            cmp r0, #0
00086a7c  c8 d1                                            bne #0x86a10
00086a7e  00 26                                            movs r6, #0
00086a80  30 46                                            mov r0, r6
00086a82  bd e8 00 0b                                      pop.w {r8, sb, fp}
00086a86  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0008749c, declared_size=96, range_size=96, mode=thumb
; class-group: ir_function
; alias: _ZN11ir_function6acceptEP23ir_hierarchical_visitor
; demangled: ir_function::accept(ir_hierarchical_visitor*)
; decoder-mode: thumb
0008749c  f0 b5                                            push {r4, r5, r6, r7, lr}
0008749e  03 af                                            add r7, sp, #0xc
000874a0  4d f8 04 bd                                      str fp, [sp, #-0x4]!
000874a4  0d 46                                            mov r5, r1
000874a6  04 46                                            mov r4, r0
000874a8  28 68                                            ldr r0, [r5]
000874aa  21 46                                            mov r1, r4
000874ac  c2 6a                                            ldr r2, [r0, #0x2c]
000874ae  28 46                                            mov r0, r5
000874b0  90 47                                            blx r2
000874b2  28 b1                                            cbz r0, #0x874c0
000874b4  01 28                                            cmp r0, #1
000874b6  08 bf                                            it eq
000874b8  00 20                                            moveq r0, #0
000874ba  5d f8 04 bb                                      ldr fp, [sp], #4
000874be  f0 bd                                            pop {r4, r5, r6, r7, pc}
000874c0  60 69                                            ldr r0, [r4, #0x14]
000874c2  00 28                                            cmp r0, #0
000874c4  18 bf                                            it ne
000874c6  04 38                                            subne r0, #4
000874c8  46 68                                            ldr r6, [r0, #4]
000874ca  00 2e                                            cmp r6, #0
000874cc  18 bf                                            it ne
000874ce  04 3e                                            subne r6, #4
000874d0  5e b1                                            cbz r6, #0x874ea
000874d2  01 68                                            ldr r1, [r0]
000874d4  ca 68                                            ldr r2, [r1, #0xc]
000874d6  29 46                                            mov r1, r5
000874d8  90 47                                            blx r2
000874da  01 46                                            mov r1, r0
000874dc  00 29                                            cmp r1, #0
000874de  30 46                                            mov r0, r6
000874e0  f2 d0                                            beq #0x874c8
000874e2  02 29                                            cmp r1, #2
000874e4  01 d1                                            bne #0x874ea
000874e6  02 20                                            movs r0, #2
000874e8  e7 e7                                            b #0x874ba
000874ea  28 68                                            ldr r0, [r5]
000874ec  21 46                                            mov r1, r4
000874ee  02 6b                                            ldr r2, [r0, #0x30]
000874f0  28 46                                            mov r0, r5
000874f2  5d f8 04 bb                                      ldr fp, [sp], #4
000874f6  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
000874fa  10 47                                            bx r2
