; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00051b28, declared_size=128, range_size=128, mode=thumb
; class-group: ir_call
; alias: _ZN7ir_callC2EP21ir_function_signatureP23ir_dereference_variableP9exec_list
; demangled: ir_call::ir_call(ir_function_signature*, ir_dereference_variable*, exec_list*)
; decoder-mode: thumb
00051b28  f0 b5                                            push {r4, r5, r6, r7, lr}
00051b2a  03 af                                            add r7, sp, #0xc
00051b2c  4d f8 04 bd                                      str fp, [sp, #-0x4]!
00051b30  04 46                                            mov r4, r0
00051b32  1c 48                                            ldr r0, [pc, #0x70]
00051b34  09 25                                            movs r5, #9
00051b36  04 f1 18 0c                                      add.w ip, r4, #0x18
00051b3a  78 44                                            add r0, pc
00051b3c  c4 f8 20 c0                                      str.w ip, [r4, #0x20]
00051b40  c4 e9 03 52                                      strd r5, r2, [r4, #0xc]
00051b44  4f f0 00 0e                                      mov.w lr, #0
00051b48  00 68                                            ldr r0, [r0]
00051b4a  22 46                                            mov r2, r4
00051b4c  61 61                                            str r1, [r4, #0x14]
00051b4e  08 30                                            adds r0, #8
00051b50  42 f8 1c ef                                      str lr, [r2, #0x1c]!
00051b54  a2 61                                            str r2, [r4, #0x18]
00051b56  20 60                                            str r0, [r4]
00051b58  18 46                                            mov r0, r3
00051b5a  50 f8 04 6b                                      ldr r6, [r0], #4
00051b5e  86 42                                            cmp r6, r0
00051b60  0f d0                                            beq #0x51b82
00051b62  cc f8 00 60                                      str.w r6, [ip]
00051b66  c2 f8 00 e0                                      str.w lr, [r2]
00051b6a  00 f1 04 0e                                      add.w lr, r0, #4
00051b6e  9d 68                                            ldr r5, [r3, #8]
00051b70  55 60                                            str r5, [r2, #4]
00051b72  c6 f8 04 c0                                      str.w ip, [r6, #4]
00051b76  9c 46                                            mov ip, r3
00051b78  56 68                                            ldr r6, [r2, #4]
00051b7a  32 60                                            str r2, [r6]
00051b7c  02 46                                            mov r2, r0
00051b7e  18 60                                            str r0, [r3]
00051b80  03 e0                                            b #0x51b8a
00051b82  04 f1 20 0e                                      add.w lr, r4, #0x20
00051b86  cc f8 00 20                                      str.w r2, [ip]
00051b8a  00 20                                            movs r0, #0
00051b8c  10 60                                            str r0, [r2]
00051b8e  08 46                                            mov r0, r1
00051b90  ce f8 00 c0                                      str.w ip, [lr]
00051b94  e1 f7 0a e8                                      blx #0x32bac
00051b98  84 f8 24 00                                      strb.w r0, [r4, #0x24]
00051b9c  20 46                                            mov r0, r4
00051b9e  5d f8 04 bb                                      ldr fp, [sp], #4
00051ba2  f0 bd                                            pop {r4, r5, r6, r7, pc}
00051ba4  12 aa                                            add r2, sp, #0x48
00051ba6  08 00                                            movs r0, r1

; FUNCTION 0x00082e4c, declared_size=188, range_size=188, mode=thumb
; class-group: ir_call
; alias: _ZNK7ir_call5cloneEPvP10hash_table
; demangled: ir_call::clone(void*, hash_table*) const
; decoder-mode: thumb
00082e4c  f0 b5                                            push {r4, r5, r6, r7, lr}
00082e4e  03 af                                            add r7, sp, #0xc
00082e50  2d e9 00 07                                      push.w {r8, sb, sl}
00082e54  84 b0                                            sub sp, #0x10
00082e56  81 46                                            mov sb, r0
00082e58  28 48                                            ldr r0, [pc, #0xa0]
00082e5a  92 46                                            mov sl, r2
00082e5c  0d 46                                            mov r5, r1
00082e5e  78 44                                            add r0, pc
00082e60  00 24                                            movs r4, #0
00082e62  00 68                                            ldr r0, [r0]
00082e64  00 68                                            ldr r0, [r0]
00082e66  03 90                                            str r0, [sp, #0xc]
00082e68  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
00082e6c  30 b1                                            cbz r0, #0x82e7c
00082e6e  01 68                                            ldr r1, [r0]
00082e70  52 46                                            mov r2, sl
00082e72  0b 69                                            ldr r3, [r1, #0x10]
00082e74  29 46                                            mov r1, r5
00082e76  98 47                                            blx r3
00082e78  80 46                                            mov r8, r0
00082e7a  01 e0                                            b #0x82e80
00082e7c  4f f0 00 08                                      mov.w r8, #0
00082e80  68 46                                            mov r0, sp
00082e82  01 94                                            str r4, [sp, #4]
00082e84  04 1d                                            adds r4, r0, #4
00082e86  00 94                                            str r4, [sp]
00082e88  02 90                                            str r0, [sp, #8]
00082e8a  d9 f8 18 00                                      ldr.w r0, [sb, #0x18]
00082e8e  0d e0                                            b #0x82eac
00082e90  01 68                                            ldr r1, [r0]
00082e92  52 46                                            mov r2, sl
00082e94  0b 69                                            ldr r3, [r1, #0x10]
00082e96  29 46                                            mov r1, r5
00082e98  98 47                                            blx r3
00082e9a  00 28                                            cmp r0, #0
00082e9c  18 bf                                            it ne
00082e9e  04 30                                            addne r0, #4
00082ea0  04 60                                            str r4, [r0]
00082ea2  02 99                                            ldr r1, [sp, #8]
00082ea4  41 60                                            str r1, [r0, #4]
00082ea6  08 60                                            str r0, [r1]
00082ea8  02 90                                            str r0, [sp, #8]
00082eaa  30 68                                            ldr r0, [r6]
00082eac  00 28                                            cmp r0, #0
00082eae  18 bf                                            it ne
00082eb0  04 38                                            subne r0, #4
00082eb2  06 46                                            mov r6, r0
00082eb4  56 f8 04 1f                                      ldr r1, [r6, #4]!
00082eb8  00 29                                            cmp r1, #0
00082eba  e9 d1                                            bne #0x82e90
00082ebc  28 46                                            mov r0, r5
00082ebe  28 21                                            movs r1, #0x28
00082ec0  af f7 2e ec                                      blx #0x32720
00082ec4  05 46                                            mov r5, r0
00082ec6  0e 48                                            ldr r0, [pc, #0x38]
00082ec8  78 44                                            add r0, pc
00082eca  01 68                                            ldr r1, [r0]
00082ecc  28 46                                            mov r0, r5
00082ece  af f7 18 ed                                      blx #0x32900
00082ed2  d9 f8 14 10                                      ldr.w r1, [sb, #0x14]
00082ed6  6b 46                                            mov r3, sp
00082ed8  28 46                                            mov r0, r5
00082eda  42 46                                            mov r2, r8
00082edc  af f7 36 ee                                      blx #0x32b4c
00082ee0  08 48                                            ldr r0, [pc, #0x20]
00082ee2  03 99                                            ldr r1, [sp, #0xc]
00082ee4  78 44                                            add r0, pc
00082ee6  00 68                                            ldr r0, [r0]
00082ee8  00 68                                            ldr r0, [r0]
00082eea  40 1a                                            subs r0, r0, r1
00082eec  01 bf                                            itttt eq
00082eee  28 46                                            moveq r0, r5
00082ef0  04 b0                                            addeq sp, #0x10
00082ef2  bd e8 00 07                                      popeq.w {r8, sb, sl}
00082ef6  f0 bd                                            popeq {r4, r5, r6, r7, pc}
00082ef8  af f7 b2 e8                                      blx #0x32060
00082efc  56 96                                            str r6, [sp, #0x158]
00082efe  05 00                                            movs r5, r0
00082f00  70 96                                            str r6, [sp, #0x1c0]
00082f02  05 00                                            movs r5, r0
00082f04  d0 95                                            str r5, [sp, #0x340]
00082f06  05 00                                            movs r5, r0

; FUNCTION 0x000835e6, declared_size=22, range_size=22, mode=thumb
; class-group: ir_call
; alias: _ZN7ir_callD0Ev
; demangled: ir_call::~ir_call()
; decoder-mode: thumb
000835e6  d0 b5                                            push {r4, r6, r7, lr}
000835e8  02 af                                            add r7, sp, #8
000835ea  00 21                                            movs r1, #0
000835ec  04 46                                            mov r4, r0
000835ee  af f7 88 e9                                      blx #0x32900
000835f2  20 46                                            mov r0, r4
000835f4  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
000835f8  2d f0 36 ba                                      b.w #0xb0a68

; FUNCTION 0x000835fc, declared_size=12, range_size=12, mode=thumb
; class-group: ir_call
; alias: _ZN7ir_call6acceptEP10ir_visitor
; demangled: ir_call::accept(ir_visitor*)
; decoder-mode: thumb
000835fc  02 46                                            mov r2, r0
000835fe  08 68                                            ldr r0, [r1]
00083600  83 6b                                            ldr r3, [r0, #0x38]
00083602  08 46                                            mov r0, r1
00083604  11 46                                            mov r1, r2
00083606  18 47                                            bx r3

; FUNCTION 0x00085f2a, declared_size=14, range_size=14, mode=thumb
; class-group: ir_call
; alias: _ZN7ir_call25constant_expression_valueEP10hash_table
; demangled: ir_call::constant_expression_value(hash_table*)
; decoder-mode: thumb
00085f2a  43 69                                            ldr r3, [r0, #0x14]
00085f2c  0a 46                                            mov r2, r1
00085f2e  00 f1 18 01                                      add.w r1, r0, #0x18
00085f32  18 46                                            mov r0, r3
00085f34  2a f0 08 bf                                      b.w #0xb0d48

; FUNCTION 0x00087746, declared_size=120, range_size=120, mode=thumb
; class-group: ir_call
; alias: _ZN7ir_call6acceptEP23ir_hierarchical_visitor
; demangled: ir_call::accept(ir_hierarchical_visitor*)
; decoder-mode: thumb
00087746  f0 b5                                            push {r4, r5, r6, r7, lr}
00087748  03 af                                            add r7, sp, #0xc
0008774a  4d f8 04 bd                                      str fp, [sp, #-0x4]!
0008774e  0d 46                                            mov r5, r1
00087750  04 46                                            mov r4, r0
00087752  28 68                                            ldr r0, [r5]
00087754  21 46                                            mov r1, r4
00087756  42 6e                                            ldr r2, [r0, #0x64]
00087758  28 46                                            mov r0, r5
0008775a  90 47                                            blx r2
0008775c  28 b1                                            cbz r0, #0x8776a
0008775e  01 28                                            cmp r0, #1
00087760  08 bf                                            it eq
00087762  00 20                                            moveq r0, #0
00087764  5d f8 04 bb                                      ldr fp, [sp], #4
00087768  f0 bd                                            pop {r4, r5, r6, r7, pc}
0008776a  20 69                                            ldr r0, [r4, #0x10]
0008776c  48 b1                                            cbz r0, #0x87782
0008776e  01 21                                            movs r1, #1
00087770  29 76                                            strb r1, [r5, #0x18]
00087772  01 68                                            ldr r1, [r0]
00087774  ca 68                                            ldr r2, [r1, #0xc]
00087776  29 46                                            mov r1, r5
00087778  90 47                                            blx r2
0008777a  00 21                                            movs r1, #0
0008777c  00 28                                            cmp r0, #0
0008777e  29 76                                            strb r1, [r5, #0x18]
00087780  ed d1                                            bne #0x8775e
00087782  a0 69                                            ldr r0, [r4, #0x18]
00087784  00 28                                            cmp r0, #0
00087786  18 bf                                            it ne
00087788  04 38                                            subne r0, #4
0008778a  46 68                                            ldr r6, [r0, #4]
0008778c  00 2e                                            cmp r6, #0
0008778e  18 bf                                            it ne
00087790  04 3e                                            subne r6, #4
00087792  5e b1                                            cbz r6, #0x877ac
00087794  01 68                                            ldr r1, [r0]
00087796  ca 68                                            ldr r2, [r1, #0xc]
00087798  29 46                                            mov r1, r5
0008779a  90 47                                            blx r2
0008779c  01 46                                            mov r1, r0
0008779e  00 29                                            cmp r1, #0
000877a0  30 46                                            mov r0, r6
000877a2  f2 d0                                            beq #0x8778a
000877a4  02 29                                            cmp r1, #2
000877a6  01 d1                                            bne #0x877ac
000877a8  02 20                                            movs r0, #2
000877aa  db e7                                            b #0x87764
000877ac  28 68                                            ldr r0, [r5]
000877ae  21 46                                            mov r1, r4
000877b0  82 6e                                            ldr r2, [r0, #0x68]
000877b2  28 46                                            mov r0, r5
000877b4  5d f8 04 bb                                      ldr fp, [sp], #4
000877b8  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
000877bc  10 47                                            bx r2

; FUNCTION 0x000a3e20, declared_size=960, range_size=960, mode=thumb
; class-group: ir_call
; alias: _ZN7ir_call15generate_inlineEP14ir_instruction
; demangled: ir_call::generate_inline(ir_instruction*)
; decoder-mode: thumb
000a3e20  f0 b5                                            push {r4, r5, r6, r7, lr}
000a3e22  03 af                                            add r7, sp, #0xc
000a3e24  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
000a3e28  95 b0                                            sub sp, #0x54
000a3e2a  05 46                                            mov r5, r0
000a3e2c  e4 48                                            ldr r0, [pc, #0x390]
000a3e2e  0c 46                                            mov r4, r1
000a3e30  78 44                                            add r0, pc
000a3e32  00 68                                            ldr r0, [r0]
000a3e34  00 68                                            ldr r0, [r0]
000a3e36  14 90                                            str r0, [sp, #0x50]
000a3e38  28 46                                            mov r0, r5
000a3e3a  8e f7 76 ee                                      blx #0x32b28
000a3e3e  e2 4a                                            ldr r2, [pc, #0x388]
000a3e40  83 46                                            mov fp, r0
000a3e42  e0 48                                            ldr r0, [pc, #0x380]
000a3e44  7a 44                                            add r2, pc
000a3e46  78 44                                            add r0, pc
000a3e48  12 68                                            ldr r2, [r2]
000a3e4a  01 68                                            ldr r1, [r0]
000a3e4c  00 20                                            movs r0, #0
000a3e4e  8e f7 92 ec                                      blx #0x32774
000a3e52  04 90                                            str r0, [sp, #0x10]
000a3e54  4f f0 ff 30                                      mov.w r0, #-1
000a3e58  d5 f8 14 90                                      ldr.w sb, [r5, #0x14]
000a3e5c  d9 f8 18 10                                      ldr.w r1, [sb, #0x18]
000a3e60  09 68                                            ldr r1, [r1]
000a3e62  01 30                                            adds r0, #1
000a3e64  00 29                                            cmp r1, #0
000a3e66  fb d1                                            bne #0xa3e60
000a3e68  04 21                                            movs r1, #4
000a3e6a  a0 fb 01 01                                      umull r0, r1, r0, r1
000a3e6e  00 29                                            cmp r1, #0
000a3e70  18 bf                                            it ne
000a3e72  01 21                                            movne r1, #1
000a3e74  00 29                                            cmp r1, #0
000a3e76  18 bf                                            it ne
000a3e78  4f f0 ff 30                                      movne.w r0, #-1
000a3e7c  8e f7 78 e8                                      blx #0x31f70
000a3e80  01 90                                            str r0, [sp, #4]
000a3e82  d9 f8 18 80                                      ldr.w r8, [sb, #0x18]
000a3e86  d8 f8 00 00                                      ldr.w r0, [r8]
000a3e8a  05 94                                            str r4, [sp, #0x14]
000a3e8c  00 28                                            cmp r0, #0
000a3e8e  cd f8 1c b0                                      str.w fp, [sp, #0x1c]
000a3e92  02 95                                            str r5, [sp, #8]
000a3e94  1e bf                                            ittt ne
000a3e96  ae 69                                            ldrne r6, [r5, #0x18]
000a3e98  31 68                                            ldrne r1, [r6]
000a3e9a  00 29                                            cmpne r1, #0
000a3e9c  00 f0 95 80                                      beq.w #0xa3fca
000a3ea0  22 1d                                            adds r2, r4, #4
000a3ea2  06 92                                            str r2, [sp, #0x18]
000a3ea4  c9 4a                                            ldr r2, [pc, #0x324]
000a3ea6  dd f8 04 b0                                      ldr.w fp, [sp, #4]
000a3eaa  7a 44                                            add r2, pc
000a3eac  12 68                                            ldr r2, [r2]
000a3eae  03 92                                            str r2, [sp, #0xc]
000a3eb0  b8 f1 00 0f                                      cmp.w r8, #0
000a3eb4  18 bf                                            it ne
000a3eb6  a8 f1 04 08                                      subne.w r8, r8, #4
000a3eba  81 46                                            mov sb, r0
000a3ebc  d8 f8 10 00                                      ldr.w r0, [r8, #0x10]
000a3ec0  00 2e                                            cmp r6, #0
000a3ec2  8a 46                                            mov sl, r1
000a3ec4  18 bf                                            it ne
000a3ec6  04 3e                                            subne r6, #4
000a3ec8  8e f7 f4 ee                                      blx #0x32cb4
000a3ecc  01 28                                            cmp r0, #1
000a3ece  03 d1                                            bne #0xa3ed8
000a3ed0  00 20                                            movs r0, #0
000a3ed2  cb f8 00 00                                      str.w r0, [fp]
000a3ed6  67 e0                                            b #0xa3fa8
000a3ed8  d8 f8 00 00                                      ldr.w r0, [r8]
000a3edc  07 99                                            ldr r1, [sp, #0x1c]
000a3ede  04 9a                                            ldr r2, [sp, #0x10]
000a3ee0  03 69                                            ldr r3, [r0, #0x10]
000a3ee2  40 46                                            mov r0, r8
000a3ee4  98 47                                            blx r3
000a3ee6  cb f8 00 00                                      str.w r0, [fp]
000a3eea  81 69                                            ldr r1, [r0, #0x18]
000a3eec  21 f4 f0 51                                      bic r1, r1, #0x1e00
000a3ef0  81 61                                            str r1, [r0, #0x18]
000a3ef2  db f8 00 00                                      ldr.w r0, [fp]
000a3ef6  03 46                                            mov r3, r0
000a3ef8  02 7f                                            ldrb r2, [r0, #0x1c]
000a3efa  53 f8 18 1f                                      ldr r1, [r3, #0x18]!
000a3efe  cd 43                                            mvns r5, r1
000a3f00  15 f4 c0 3f                                      tst.w r5, #0x18000
000a3f04  08 d1                                            bne #0xa3f18
000a3f06  70 69                                            ldr r0, [r6, #0x14]
000a3f08  1a 71                                            strb r2, [r3, #4]
000a3f0a  60 f3 d0 31                                      bfi r1, r0, #0xf, #2
000a3f0e  19 60                                            str r1, [r3]
000a3f10  db f8 00 00                                      ldr.w r0, [fp]
000a3f14  02 7f                                            ldrb r2, [r0, #0x1c]
000a3f16  81 69                                            ldr r1, [r0, #0x18]
000a3f18  21 f0 01 01                                      bic r1, r1, #1
000a3f1c  81 61                                            str r1, [r0, #0x18]
000a3f1e  02 77                                            strb r2, [r0, #0x1c]
000a3f20  db f8 00 00                                      ldr.w r0, [fp]
000a3f24  00 28                                            cmp r0, #0
000a3f26  18 bf                                            it ne
000a3f28  04 30                                            addne r0, #4
000a3f2a  06 99                                            ldr r1, [sp, #0x18]
000a3f2c  01 60                                            str r1, [r0]
000a3f2e  a1 68                                            ldr r1, [r4, #8]
000a3f30  41 60                                            str r1, [r0, #4]
000a3f32  a1 68                                            ldr r1, [r4, #8]
000a3f34  08 60                                            str r0, [r1]
000a3f36  a0 60                                            str r0, [r4, #8]
000a3f38  db f8 00 00                                      ldr.w r0, [fp]
000a3f3c  a0 b3                                            cbz r0, #0xa3fa8
000a3f3e  d8 f8 18 00                                      ldr.w r0, [r8, #0x18]
000a3f42  c0 f3 43 20                                      ubfx r0, r0, #9, #4
000a3f46  08 28                                            cmp r0, #8
000a3f48  2e d8                                            bhi #0xa3fa8
000a3f4a  01 21                                            movs r1, #1
000a3f4c  01 fa 00 f0                                      lsl.w r0, r1, r0
000a3f50  10 f4 d0 7f                                      tst.w r0, #0x1a0
000a3f54  28 d0                                            beq #0xa3fa8
000a3f56  07 9c                                            ldr r4, [sp, #0x1c]
000a3f58  20 21                                            movs r1, #0x20
000a3f5a  20 46                                            mov r0, r4
000a3f5c  8e f7 e0 eb                                      blx #0x32720
000a3f60  dd f8 0c 80                                      ldr.w r8, [sp, #0xc]
000a3f64  05 46                                            mov r5, r0
000a3f66  41 46                                            mov r1, r8
000a3f68  8e f7 ca ec                                      blx #0x32900
000a3f6c  20 46                                            mov r0, r4
000a3f6e  1c 21                                            movs r1, #0x1c
000a3f70  8e f7 d6 eb                                      blx #0x32720
000a3f74  41 46                                            mov r1, r8
000a3f76  04 46                                            mov r4, r0
000a3f78  8e f7 c2 ec                                      blx #0x32900
000a3f7c  db f8 00 10                                      ldr.w r1, [fp]
000a3f80  20 46                                            mov r0, r4
000a3f82  8e f7 18 ed                                      blx #0x329b4
000a3f86  21 46                                            mov r1, r4
000a3f88  28 46                                            mov r0, r5
000a3f8a  32 46                                            mov r2, r6
000a3f8c  00 23                                            movs r3, #0
000a3f8e  05 9c                                            ldr r4, [sp, #0x14]
000a3f90  8e f7 3a ed                                      blx #0x32a08
000a3f94  00 2d                                            cmp r5, #0
000a3f96  18 bf                                            it ne
000a3f98  04 35                                            addne r5, #4
000a3f9a  06 98                                            ldr r0, [sp, #0x18]
000a3f9c  28 60                                            str r0, [r5]
000a3f9e  a0 68                                            ldr r0, [r4, #8]
000a3fa0  68 60                                            str r0, [r5, #4]
000a3fa2  a0 68                                            ldr r0, [r4, #8]
000a3fa4  05 60                                            str r5, [r0]
000a3fa6  a5 60                                            str r5, [r4, #8]
000a3fa8  d9 f8 00 00                                      ldr.w r0, [sb]
000a3fac  40 b1                                            cbz r0, #0xa3fc0
000a3fae  da f8 00 10                                      ldr.w r1, [sl]
000a3fb2  0b f1 04 0b                                      add.w fp, fp, #4
000a3fb6  c8 46                                            mov r8, sb
000a3fb8  56 46                                            mov r6, sl
000a3fba  00 29                                            cmp r1, #0
000a3fbc  7f f4 78 af                                      bne.w #0xa3eb0
000a3fc0  02 9d                                            ldr r5, [sp, #8]
000a3fc2  dd f8 1c b0                                      ldr.w fp, [sp, #0x1c]
000a3fc6  d5 f8 14 90                                      ldr.w sb, [r5, #0x14]
000a3fca  4f f0 00 08                                      mov.w r8, #0
000a3fce  08 a8                                            add r0, sp, #0x20
000a3fd0  cd f8 24 80                                      str.w r8, [sp, #0x24]
000a3fd4  00 f1 04 0a                                      add.w sl, r0, #4
000a3fd8  cd f8 20 a0                                      str.w sl, [sp, #0x20]
000a3fdc  0a 90                                            str r0, [sp, #0x28]
000a3fde  d9 f8 26 00                                      ldr.w r0, [sb, #0x26]
000a3fe2  00 28                                            cmp r0, #0
000a3fe4  18 bf                                            it ne
000a3fe6  04 38                                            subne r0, #4
000a3fe8  06 46                                            mov r6, r0
000a3fea  56 f8 04 1f                                      ldr r1, [r6, #4]!
000a3fee  21 b3                                            cbz r1, #0xa403a
000a3ff0  df f8 dc 91                                      ldr.w sb, [pc, #0x1dc]
000a3ff4  04 9c                                            ldr r4, [sp, #0x10]
000a3ff6  f9 44                                            add sb, pc
000a3ff8  01 68                                            ldr r1, [r0]
000a3ffa  22 46                                            mov r2, r4
000a3ffc  0b 69                                            ldr r3, [r1, #0x10]
000a3ffe  59 46                                            mov r1, fp
000a4000  98 47                                            blx r3
000a4002  01 46                                            mov r1, r0
000a4004  00 28                                            cmp r0, #0
000a4006  18 bf                                            it ne
000a4008  04 31                                            addne r1, #4
000a400a  00 23                                            movs r3, #0
000a400c  c1 f8 00 a0                                      str.w sl, [r1]
000a4010  0a 9a                                            ldr r2, [sp, #0x28]
000a4012  4a 60                                            str r2, [r1, #4]
000a4014  11 60                                            str r1, [r2]
000a4016  0a 91                                            str r1, [sp, #0x28]
000a4018  49 46                                            mov r1, sb
000a401a  2a 69                                            ldr r2, [r5, #0x10]
000a401c  cd f8 00 80                                      str.w r8, [sp]
000a4020  8f f7 82 eb                                      blx #0x33728
000a4024  30 68                                            ldr r0, [r6]
000a4026  00 28                                            cmp r0, #0
000a4028  18 bf                                            it ne
000a402a  04 38                                            subne r0, #4
000a402c  06 46                                            mov r6, r0
000a402e  56 f8 04 1f                                      ldr r1, [r6, #4]!
000a4032  00 29                                            cmp r1, #0
000a4034  e0 d1                                            bne #0xa3ff8
000a4036  d5 f8 14 90                                      ldr.w sb, [r5, #0x14]
000a403a  ae 69                                            ldr r6, [r5, #0x18]
000a403c  30 68                                            ldr r0, [r6]
000a403e  70 b3                                            cbz r0, #0xa409e
000a4040  d9 f8 18 50                                      ldr.w r5, [sb, #0x18]
000a4044  29 68                                            ldr r1, [r5]
000a4046  51 b3                                            cbz r1, #0xa409e
000a4048  62 4a                                            ldr r2, [pc, #0x188]
000a404a  7a 44                                            add r2, pc
000a404c  12 68                                            ldr r2, [r2]
000a404e  02 f1 08 04                                      add.w r4, r2, #8
000a4052  00 2d                                            cmp r5, #0
000a4054  18 bf                                            it ne
000a4056  04 3d                                            subne r5, #4
000a4058  83 46                                            mov fp, r0
000a405a  28 69                                            ldr r0, [r5, #0x10]
000a405c  88 46                                            mov r8, r1
000a405e  8e f7 2a ee                                      blx #0x32cb4
000a4062  01 28                                            cmp r0, #1
000a4064  12 d1                                            bne #0xa408c
000a4066  0b a8                                            add r0, sp, #0x2c
000a4068  00 2e                                            cmp r6, #0
000a406a  18 bf                                            it ne
000a406c  04 3e                                            subne r6, #4
000a406e  d6 f8 0c 90                                      ldr.w sb, [r6, #0xc]
000a4072  8e f7 d8 ed                                      blx #0x32c24
000a4076  08 a9                                            add r1, sp, #0x20
000a4078  12 95                                            str r5, [sp, #0x48]
000a407a  01 22                                            movs r2, #1
000a407c  0b 94                                            str r4, [sp, #0x2c]
000a407e  b9 f1 03 0f                                      cmp.w sb, #3
000a4082  28 bf                                            it hs
000a4084  00 26                                            movhs r6, #0
000a4086  13 96                                            str r6, [sp, #0x4c]
000a4088  90 f7 96 e9                                      blx #0x343b8
000a408c  db f8 00 00                                      ldr.w r0, [fp]
000a4090  28 b1                                            cbz r0, #0xa409e
000a4092  d8 f8 00 10                                      ldr.w r1, [r8]
000a4096  5e 46                                            mov r6, fp
000a4098  45 46                                            mov r5, r8
000a409a  00 29                                            cmp r1, #0
000a409c  d9 d1                                            bne #0xa4052
000a409e  05 9a                                            ldr r2, [sp, #0x14]
000a40a0  08 98                                            ldr r0, [sp, #0x20]
000a40a2  02 f1 04 0c                                      add.w ip, r2, #4
000a40a6  50 45                                            cmp r0, sl
000a40a8  0e d0                                            beq #0xa40c8
000a40aa  0a 98                                            ldr r0, [sp, #0x28]
000a40ac  c0 f8 00 c0                                      str.w ip, [r0]
000a40b0  08 98                                            ldr r0, [sp, #0x20]
000a40b2  91 68                                            ldr r1, [r2, #8]
000a40b4  41 60                                            str r1, [r0, #4]
000a40b6  91 68                                            ldr r1, [r2, #8]
000a40b8  08 60                                            str r0, [r1]
000a40ba  0a 98                                            ldr r0, [sp, #0x28]
000a40bc  90 60                                            str r0, [r2, #8]
000a40be  00 20                                            movs r0, #0
000a40c0  cd e9 08 a0                                      strd sl, r0, [sp, #0x20]
000a40c4  08 a8                                            add r0, sp, #0x20
000a40c6  0a 90                                            str r0, [sp, #0x28]
000a40c8  02 99                                            ldr r1, [sp, #8]
000a40ca  8e 69                                            ldr r6, [r1, #0x18]
000a40cc  30 68                                            ldr r0, [r6]
000a40ce  00 28                                            cmp r0, #0
000a40d0  62 d0                                            beq #0xa4198
000a40d2  49 69                                            ldr r1, [r1, #0x14]
000a40d4  89 69                                            ldr r1, [r1, #0x18]
000a40d6  0a 68                                            ldr r2, [r1]
000a40d8  00 2a                                            cmp r2, #0
000a40da  5d d0                                            beq #0xa4198
000a40dc  3e 4b                                            ldr r3, [pc, #0xf8]
000a40de  01 9c                                            ldr r4, [sp, #4]
000a40e0  7b 44                                            add r3, pc
000a40e2  cd f8 0c c0                                      str.w ip, [sp, #0xc]
000a40e6  1b 68                                            ldr r3, [r3]
000a40e8  02 93                                            str r3, [sp, #8]
000a40ea  dd f8 08 80                                      ldr.w r8, [sp, #8]
000a40ee  81 46                                            mov sb, r0
000a40f0  20 68                                            ldr r0, [r4]
000a40f2  00 2e                                            cmp r6, #0
000a40f4  18 bf                                            it ne
000a40f6  04 3e                                            subne r6, #4
000a40f8  92 46                                            mov sl, r2
000a40fa  00 28                                            cmp r0, #0
000a40fc  42 d0                                            beq #0xa4184
000a40fe  01 f1 14 00                                      add.w r0, r1, #0x14
000a4102  00 29                                            cmp r1, #0
000a4104  08 bf                                            it eq
000a4106  18 20                                            moveq r0, #0x18
000a4108  00 68                                            ldr r0, [r0]
000a410a  00 f4 e0 50                                      and r0, r0, #0x1c00
000a410e  90 f4 40 6f                                      teq.w r0, #0xc00
000a4112  37 d1                                            bne #0xa4184
000a4114  dd f8 1c b0                                      ldr.w fp, [sp, #0x1c]
000a4118  20 21                                            movs r1, #0x20
000a411a  58 46                                            mov r0, fp
000a411c  8e f7 00 eb                                      blx #0x32720
000a4120  41 46                                            mov r1, r8
000a4122  05 46                                            mov r5, r0
000a4124  8e f7 ec eb                                      blx #0x32900
000a4128  30 68                                            ldr r0, [r6]
000a412a  59 46                                            mov r1, fp
000a412c  00 22                                            movs r2, #0
000a412e  03 69                                            ldr r3, [r0, #0x10]
000a4130  30 46                                            mov r0, r6
000a4132  98 47                                            blx r3
000a4134  06 46                                            mov r6, r0
000a4136  1c 21                                            movs r1, #0x1c
000a4138  f0 68                                            ldr r0, [r6, #0xc]
000a413a  06 90                                            str r0, [sp, #0x18]
000a413c  58 46                                            mov r0, fp
000a413e  8e f7 f0 ea                                      blx #0x32720
000a4142  41 46                                            mov r1, r8
000a4144  83 46                                            mov fp, r0
000a4146  8e f7 dc eb                                      blx #0x32900
000a414a  21 68                                            ldr r1, [r4]
000a414c  58 46                                            mov r0, fp
000a414e  8e f7 32 ec                                      blx #0x329b4
000a4152  06 98                                            ldr r0, [sp, #0x18]
000a4154  5a 46                                            mov r2, fp
000a4156  00 23                                            movs r3, #0
000a4158  07 28                                            cmp r0, #7
000a415a  4f f0 00 00                                      mov.w r0, #0
000a415e  28 bf                                            it hs
000a4160  06 46                                            movhs r6, r0
000a4162  28 46                                            mov r0, r5
000a4164  31 46                                            mov r1, r6
000a4166  8e f7 50 ec                                      blx #0x32a08
000a416a  dd f8 0c c0                                      ldr.w ip, [sp, #0xc]
000a416e  00 2d                                            cmp r5, #0
000a4170  18 bf                                            it ne
000a4172  04 35                                            addne r5, #4
000a4174  c5 f8 00 c0                                      str.w ip, [r5]
000a4178  05 99                                            ldr r1, [sp, #0x14]
000a417a  88 68                                            ldr r0, [r1, #8]
000a417c  68 60                                            str r0, [r5, #4]
000a417e  88 68                                            ldr r0, [r1, #8]
000a4180  05 60                                            str r5, [r0]
000a4182  8d 60                                            str r5, [r1, #8]
000a4184  d9 f8 00 00                                      ldr.w r0, [sb]
000a4188  30 b1                                            cbz r0, #0xa4198
000a418a  da f8 00 20                                      ldr.w r2, [sl]
000a418e  04 34                                            adds r4, #4
000a4190  4e 46                                            mov r6, sb
000a4192  51 46                                            mov r1, sl
000a4194  00 2a                                            cmp r2, #0
000a4196  aa d1                                            bne #0xa40ee
000a4198  01 98                                            ldr r0, [sp, #4]
000a419a  8d f7 56 ef                                      blx #0x32048
000a419e  04 98                                            ldr r0, [sp, #0x10]
000a41a0  8e f7 f4 ea                                      blx #0x3278c
000a41a4  0d 48                                            ldr r0, [pc, #0x34]
000a41a6  14 99                                            ldr r1, [sp, #0x50]
000a41a8  78 44                                            add r0, pc
000a41aa  00 68                                            ldr r0, [r0]
000a41ac  00 68                                            ldr r0, [r0]
000a41ae  40 1a                                            subs r0, r0, r1
000a41b0  02 bf                                            ittt eq
000a41b2  15 b0                                            addeq sp, #0x54
000a41b4  bd e8 00 0f                                      popeq.w {r8, sb, sl, fp}
000a41b8  f0 bd                                            popeq {r4, r5, r6, r7, pc}
000a41ba  8d f7 52 ef                                      blx #0x32060
000a41be  00 bf                                            nop
000a41c0  84 86                                            strh r4, [r0, #0x34]
000a41c2  03 00                                            movs r3, r0
000a41c4  26 87                                            strh r6, [r4, #0x38]
000a41c6  03 00                                            movs r3, r0
000a41c8  2c 87                                            strh r4, [r5, #0x38]
000a41ca  03 00                                            movs r3, r0
000a41cc  8e 86                                            strh r6, [r1, #0x34]
000a41ce  03 00                                            movs r3, r0
000a41d0  e7 01                                            lsls r7, r4, #7
000a41d2  00 00                                            movs r0, r0
000a41d4  d2 89                                            ldrh r2, [r2, #0xe]
000a41d6  03 00                                            movs r3, r0
000a41d8  58 84                                            strh r0, [r3, #0x22]
000a41da  03 00                                            movs r3, r0
000a41dc  0c 83                                            strh r4, [r1, #0x18]
000a41de  03 00                                            movs r3, r0
