; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00090e18, declared_size=378, range_size=378, mode=thumb
; class-group: parcel_out_uniform_storage
; alias: _ZN26parcel_out_uniform_storage15set_and_processEP17gl_shader_programP11ir_variable
; demangled: parcel_out_uniform_storage::set_and_process(gl_shader_program*, ir_variable*)
; decoder-mode: thumb
00090e18  f0 b5                                            push {r4, r5, r6, r7, lr}
00090e1a  03 af                                            add r7, sp, #0xc
00090e1c  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
00090e20  85 b0                                            sub sp, #0x14
00090e22  83 46                                            mov fp, r0
00090e24  92 46                                            mov sl, r2
00090e26  00 20                                            movs r0, #0
00090e28  0c 46                                            mov r4, r1
00090e2a  cb e9 29 a0                                      strd sl, r0, [fp, #0xa4]
00090e2e  4f f0 ff 30                                      mov.w r0, #-1
00090e32  cb f8 04 00                                      str.w r0, [fp, #4]
00090e36  da f8 18 00                                      ldr.w r0, [sl, #0x18]
00090e3a  00 f4 f0 50                                      and r0, r0, #0x1e00
00090e3e  90 f4 00 7f                                      teq.w r0, #0x200
00090e42  40 f0 94 80                                      bne.w #0x90f6e
00090e46  da f8 40 10                                      ldr.w r1, [sl, #0x40]
00090e4a  00 29                                            cmp r1, #0
00090e4c  00 f0 8f 80                                      beq.w #0x90f6e
00090e50  da f8 10 50                                      ldr.w r5, [sl, #0x10]
00090e54  8d 42                                            cmp r5, r1
00090e56  0a d0                                            beq #0x90e6e
00090e58  d5 f8 04 90                                      ldr.w sb, [r5, #4]
00090e5c  b9 f1 09 0f                                      cmp.w sb, #9
00090e60  32 d1                                            bne #0x90ec8
00090e62  68 69                                            ldr r0, [r5, #0x14]
00090e64  88 42                                            cmp r0, r1
00090e66  07 d0                                            beq #0x90e78
00090e68  4f f0 09 09                                      mov.w sb, #9
00090e6c  2c e0                                            b #0x90ec8
00090e6e  d1 f8 04 90                                      ldr.w sb, [r1, #4]
00090e72  b9 f1 09 0f                                      cmp.w sb, #9
00090e76  27 d1                                            bne #0x90ec8
00090e78  cd e9 03 51                                      strd r5, r1, [sp, #0xc]
00090e7c  ce 68                                            ldr r6, [r1, #0xc]
00090e7e  30 46                                            mov r0, r6
00090e80  a1 f7 70 e8                                      blx #0x31f64
00090e84  d4 f8 a8 90                                      ldr.w sb, [r4, #0xa8]
00090e88  05 46                                            mov r5, r0
00090e8a  b9 f1 00 0f                                      cmp.w sb, #0
00090e8e  39 d0                                            beq #0x90f04
00090e90  cd e9 01 a4                                      strd sl, r4, [sp, #4]
00090e94  4f f0 00 08                                      mov.w r8, #0
00090e98  d4 f8 a4 a0                                      ldr.w sl, [r4, #0xa4]
00090e9c  da f8 00 40                                      ldr.w r4, [sl]
00090ea0  30 46                                            mov r0, r6
00090ea2  2a 46                                            mov r2, r5
00090ea4  21 46                                            mov r1, r4
00090ea6  a1 f7 9c e9                                      blx #0x321e0
00090eaa  10 b9                                            cbnz r0, #0x90eb2
00090eac  60 5d                                            ldrb r0, [r4, r5]
00090eae  5b 28                                            cmp r0, #0x5b
00090eb0  2e d0                                            beq #0x90f10
00090eb2  08 f1 01 08                                      add.w r8, r8, #1
00090eb6  0a f1 18 0a                                      add.w sl, sl, #0x18
00090eba  c8 45                                            cmp r8, sb
00090ebc  ee d3                                            blo #0x90e9c
00090ebe  4f f0 09 09                                      mov.w sb, #9
00090ec2  4f f0 ff 38                                      mov.w r8, #-1
00090ec6  27 e0                                            b #0x90f18
00090ec8  d4 f8 a8 60                                      ldr.w r6, [r4, #0xa8]
00090ecc  a6 b1                                            cbz r6, #0x90ef8
00090ece  cd e9 02 45                                      strd r4, r5, [sp, #8]
00090ed2  4f f0 00 08                                      mov.w r8, #0
00090ed6  d4 f8 a4 40                                      ldr.w r4, [r4, #0xa4]
00090eda  04 91                                            str r1, [sp, #0x10]
00090edc  cd 68                                            ldr r5, [r1, #0xc]
00090ede  21 68                                            ldr r1, [r4]
00090ee0  28 46                                            mov r0, r5
00090ee2  a1 f7 2e e8                                      blx #0x31f40
00090ee6  50 b1                                            cbz r0, #0x90efe
00090ee8  08 f1 01 08                                      add.w r8, r8, #1
00090eec  18 34                                            adds r4, #0x18
00090eee  b0 45                                            cmp r8, r6
00090ef0  f5 d3                                            blo #0x90ede
00090ef2  4f f0 ff 38                                      mov.w r8, #-1
00090ef6  11 e0                                            b #0x90f1c
00090ef8  4f f0 ff 38                                      mov.w r8, #-1
00090efc  11 e0                                            b #0x90f22
00090efe  cb f8 04 80                                      str.w r8, [fp, #4]
00090f02  0b e0                                            b #0x90f1c
00090f04  4f f0 09 09                                      mov.w sb, #9
00090f08  4f f0 ff 38                                      mov.w r8, #-1
00090f0c  04 99                                            ldr r1, [sp, #0x10]
00090f0e  07 e0                                            b #0x90f20
00090f10  cb f8 04 80                                      str.w r8, [fp, #4]
00090f14  4f f0 09 09                                      mov.w sb, #9
00090f18  dd f8 04 a0                                      ldr.w sl, [sp, #4]
00090f1c  04 99                                            ldr r1, [sp, #0x10]
00090f1e  02 9c                                            ldr r4, [sp, #8]
00090f20  03 9d                                            ldr r5, [sp, #0xc]
00090f22  8d 42                                            cmp r5, r1
00090f24  19 d0                                            beq #0x90f5a
00090f26  b9 f1 09 0f                                      cmp.w sb, #9
00090f2a  04 bf                                            itt eq
00090f2c  68 69                                            ldreq r0, [r5, #0x14]
00090f2e  88 42                                            cmpeq r0, r1
00090f30  17 d0                                            beq #0x90f62
00090f32  d4 f8 a4 30                                      ldr.w r3, [r4, #0xa4]
00090f36  08 eb 48 02                                      add.w r2, r8, r8, lsl #1
00090f3a  da f8 24 00                                      ldr.w r0, [sl, #0x24]
00090f3e  b9 f1 09 0f                                      cmp.w sb, #9
00090f42  03 eb c2 02                                      add.w r2, r3, r2, lsl #3
00090f46  52 68                                            ldr r2, [r2, #4]
00090f48  00 eb 80 00                                      add.w r0, r0, r0, lsl #2
00090f4c  02 eb 80 00                                      add.w r0, r2, r0, lsl #2
00090f50  c0 68                                            ldr r0, [r0, #0xc]
00090f52  cb f8 08 00                                      str.w r0, [fp, #8]
00090f56  07 d0                                            beq #0x90f68
00090f58  09 e0                                            b #0x90f6e
00090f5a  00 20                                            movs r0, #0
00090f5c  cb f8 08 00                                      str.w r0, [fp, #8]
00090f60  0e e0                                            b #0x90f80
00090f62  00 20                                            movs r0, #0
00090f64  cb f8 08 00                                      str.w r0, [fp, #8]
00090f68  68 69                                            ldr r0, [r5, #0x14]
00090f6a  88 42                                            cmp r0, r1
00090f6c  08 d0                                            beq #0x90f80
00090f6e  58 46                                            mov r0, fp
00090f70  51 46                                            mov r1, sl
00090f72  05 b0                                            add sp, #0x14
00090f74  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
00090f78  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
00090f7c  1f f0 54 bf                                      b.w #0xb0e28
00090f80  ca 68                                            ldr r2, [r1, #0xc]
00090f82  58 46                                            mov r0, fp
00090f84  05 b0                                            add sp, #0x14
00090f86  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
00090f8a  bd e8 f0 40                                      pop.w {r4, r5, r6, r7, lr}
00090f8e  1f f0 53 bf                                      b.w #0xb0e38

; FUNCTION 0x00091054, declared_size=500, range_size=500, mode=thumb
; class-group: parcel_out_uniform_storage
; alias: _ZN26parcel_out_uniform_storage11visit_fieldEPK9glsl_typePKcbS2_b
; demangled: parcel_out_uniform_storage::visit_field(glsl_type const*, char const*, bool, glsl_type const*, bool)
; decoder-mode: thumb
00091054  f0 b5                                            push {r4, r5, r6, r7, lr}
00091056  03 af                                            add r7, sp, #0xc
00091058  2d e9 00 0f                                      push.w {r8, sb, sl, fp}
0009105c  81 b0                                            sub sp, #4
0009105e  04 46                                            mov r4, r0
00091060  16 46                                            mov r6, r2
00091062  20 69                                            ldr r0, [r4, #0x10]
00091064  89 46                                            mov sb, r1
00091066  31 46                                            mov r1, r6
00091068  9a 46                                            mov sl, r3
0009106a  00 68                                            ldr r0, [r0]
0009106c  a1 f7 40 eb                                      blx #0x326f0
00091070  00 28                                            cmp r0, #0
00091072  00 f0 e5 80                                      beq.w #0x91240
00091076  d9 f8 04 10                                      ldr.w r1, [sb, #4]
0009107a  01 38                                            subs r0, #1
0009107c  09 29                                            cmp r1, #9
0009107e  0c d1                                            bne #0x9109a
00091080  a0 46                                            mov r8, r4
00091082  00 eb c0 03                                      add.w r3, r0, r0, lsl #3
00091086  58 f8 14 1f                                      ldr r1, [r8, #0x14]!
0009108a  d9 f8 10 20                                      ldr.w r2, [sb, #0x10]
0009108e  01 eb c3 03                                      add.w r3, r1, r3, lsl #3
00091092  9a 60                                            str r2, [r3, #8]
00091094  d9 f8 14 50                                      ldr.w r5, [sb, #0x14]
00091098  09 e0                                            b #0x910ae
0009109a  a0 46                                            mov r8, r4
0009109c  00 eb c0 02                                      add.w r2, r0, r0, lsl #3
000910a0  58 f8 14 1f                                      ldr r1, [r8, #0x14]!
000910a4  4d 46                                            mov r5, sb
000910a6  00 23                                            movs r3, #0
000910a8  01 eb c2 02                                      add.w r2, r1, r2, lsl #3
000910ac  93 60                                            str r3, [r2, #8]
000910ae  00 eb c0 0b                                      add.w fp, r0, r0, lsl #3
000910b2  20 46                                            mov r0, r4
000910b4  01 eb cb 02                                      add.w r2, r1, fp, lsl #3
000910b8  29 46                                            mov r1, r5
000910ba  a3 f7 5c ed                                      blx #0x34b74
000910be  60 69                                            ldr r0, [r4, #0x14]
000910c0  29 46                                            mov r1, r5
000910c2  00 eb cb 02                                      add.w r2, r0, fp, lsl #3
000910c6  20 46                                            mov r0, r4
000910c8  a3 f7 5a ed                                      blx #0x34b80
000910cc  60 69                                            ldr r0, [r4, #0x14]
000910ce  00 eb cb 01                                      add.w r1, r0, fp, lsl #3
000910d2  8a 6a                                            ldr r2, [r1, #0x28]
000910d4  00 2a                                            cmp r2, #0
000910d6  40 f0 b3 80                                      bne.w #0x91240
000910da  cd f8 00 a0                                      str.w sl, [sp]
000910de  d4 f8 a4 20                                      ldr.w r2, [r4, #0xa4]
000910e2  d7 f8 08 a0                                      ldr.w sl, [r7, #8]
000910e6  93 69                                            ldr r3, [r2, #0x18]
000910e8  1b 03                                            lsls r3, r3, #0xc
000910ea  02 d4                                            bmi #0x910f2
000910ec  4f f0 ff 32                                      mov.w r2, #-1
000910f0  13 e0                                            b #0x9111a
000910f2  ba f1 00 0f                                      cmp.w sl, #0
000910f6  0f d0                                            beq #0x91118
000910f8  d2 f8 24 c0                                      ldr.w ip, [r2, #0x24]
000910fc  d4 f8 a8 e0                                      ldr.w lr, [r4, #0xa8]
00091100  8a 68                                            ldr r2, [r1, #8]
00091102  0e eb 0c 03                                      add.w r3, lr, ip
00091106  4b 64                                            str r3, [r1, #0x44]
00091108  00 2a                                            cmp r2, #0
0009110a  08 bf                                            it eq
0009110c  01 22                                            moveq r2, #1
0009110e  0e eb 02 01                                      add.w r1, lr, r2
00091112  c4 f8 a8 10                                      str.w r1, [r4, #0xa8]
00091116  01 e0                                            b #0x9111c
00091118  52 6a                                            ldr r2, [r2, #0x24]
0009111a  4a 64                                            str r2, [r1, #0x44]
0009111c  31 46                                            mov r1, r6
0009111e  a1 f7 9a ea                                      blx #0x32654
00091122  61 69                                            ldr r1, [r4, #0x14]
00091124  01 eb cb 02                                      add.w r2, r1, fp, lsl #3
00091128  41 f8 3b 00                                      str.w r0, [r1, fp, lsl #3]
0009112c  00 20                                            movs r0, #0
0009112e  10 73                                            strb r0, [r2, #0xc]
00091130  55 60                                            str r5, [r2, #4]
00091132  c2 e9 08 00                                      strd r0, r0, [r2, #0x20]
00091136  4f f0 ff 30                                      mov.w r0, #-1
0009113a  23 6a                                            ldr r3, [r4, #0x20]
0009113c  10 64                                            str r0, [r2, #0x40]
0009113e  93 62                                            str r3, [r2, #0x28]
00091140  2c 32                                            adds r2, #0x2c
00091142  63 68                                            ldr r3, [r4, #4]
00091144  5e 1c                                            adds r6, r3, #1
00091146  3e d0                                            beq #0x911c6
00091148  13 60                                            str r3, [r2]
0009114a  ba f1 00 0f                                      cmp.w sl, #0
0009114e  08 bf                                            it eq
00091150  ca 46                                            moveq sl, sb
00091152  50 46                                            mov r0, sl
00091154  dd f8 00 a0                                      ldr.w sl, [sp]
00091158  51 46                                            mov r1, sl
0009115a  a2 f7 08 ed                                      blx #0x33b6c
0009115e  01 46                                            mov r1, r0
00091160  a0 68                                            ldr r0, [r4, #8]
00091162  66 69                                            ldr r6, [r4, #0x14]
00091164  08 44                                            add r0, r1
00091166  45 1e                                            subs r5, r0, #1
00091168  28 46                                            mov r0, r5
0009116a  a0 f7 e4 ee                                      blx #0x31f34
0009116e  68 1a                                            subs r0, r5, r1
00091170  06 eb cb 01                                      add.w r1, r6, fp, lsl #3
00091174  a0 60                                            str r0, [r4, #8]
00091176  08 63                                            str r0, [r1, #0x30]
00091178  48 46                                            mov r0, sb
0009117a  51 46                                            mov r1, sl
0009117c  a2 f7 fc ec                                      blx #0x33b78
00091180  a1 68                                            ldr r1, [r4, #8]
00091182  fa 68                                            ldr r2, [r7, #0xc]
00091184  08 44                                            add r0, r1
00091186  00 f1 0f 01                                      add.w r1, r0, #0xf
0009118a  00 2a                                            cmp r2, #0
0009118c  18 bf                                            it ne
0009118e  21 f0 0f 00                                      bicne r0, r1, #0xf
00091192  a0 60                                            str r0, [r4, #8]
00091194  d9 f8 04 20                                      ldr.w r2, [sb, #4]
00091198  09 2a                                            cmp r2, #9
0009119a  1d d1                                            bne #0x911d8
0009119c  d9 f8 14 00                                      ldr.w r0, [sb, #0x14]
000911a0  51 46                                            mov r1, sl
000911a2  a2 f7 ea ec                                      blx #0x33b78
000911a6  d8 f8 00 10                                      ldr.w r1, [r8]
000911aa  0f 30                                            adds r0, #0xf
000911ac  d9 f8 04 20                                      ldr.w r2, [sb, #4]
000911b0  20 f0 0f 00                                      bic r0, r0, #0xf
000911b4  01 eb cb 03                                      add.w r3, r1, fp, lsl #3
000911b8  09 2a                                            cmp r2, #9
000911ba  98 63                                            str r0, [r3, #0x38]
000911bc  12 d1                                            bne #0x911e4
000911be  d9 f8 14 00                                      ldr.w r0, [sb, #0x14]
000911c2  09 22                                            movs r2, #9
000911c4  0f e0                                            b #0x911e6
000911c6  c2 e9 00 00                                      strd r0, r0, [r2]
000911ca  4f f0 00 0a                                      mov.w sl, #0
000911ce  c2 e9 02 00                                      strd r0, r0, [r2, #8]
000911d2  d9 f8 04 20                                      ldr.w r2, [sb, #4]
000911d6  1a e0                                            b #0x9120e
000911d8  d8 f8 00 10                                      ldr.w r1, [r8]
000911dc  00 23                                            movs r3, #0
000911de  01 eb cb 00                                      add.w r0, r1, fp, lsl #3
000911e2  83 63                                            str r3, [r0, #0x38]
000911e4  48 46                                            mov r0, sb
000911e6  43 7a                                            ldrb r3, [r0, #9]
000911e8  13 f0 60 0f                                      tst.w r3, #0x60
000911ec  08 d0                                            beq #0x91200
000911ee  43 68                                            ldr r3, [r0, #4]
000911f0  01 eb cb 00                                      add.w r0, r1, fp, lsl #3
000911f4  34 30                                            adds r0, #0x34
000911f6  02 2b                                            cmp r3, #2
000911f8  05 d1                                            bne #0x91206
000911fa  10 23                                            movs r3, #0x10
000911fc  03 60                                            str r3, [r0]
000911fe  06 e0                                            b #0x9120e
00091200  01 eb cb 00                                      add.w r0, r1, fp, lsl #3
00091204  34 30                                            adds r0, #0x34
00091206  4f f0 00 0a                                      mov.w sl, #0
0009120a  c0 f8 00 a0                                      str.w sl, [r0]
0009120e  01 eb cb 00                                      add.w r0, r1, fp, lsl #3
00091212  04 2a                                            cmp r2, #4
00091214  80 f8 3c a0                                      strb.w sl, [r0, #0x3c]
00091218  0d d0                                            beq #0x91236
0009121a  09 2a                                            cmp r2, #9
0009121c  07 d1                                            bne #0x9122e
0009121e  d9 f8 14 00                                      ldr.w r0, [sb, #0x14]
00091222  40 68                                            ldr r0, [r0, #4]
00091224  04 28                                            cmp r0, #4
00091226  02 d1                                            bne #0x9122e
00091228  d9 f8 10 00                                      ldr.w r0, [sb, #0x10]
0009122c  04 e0                                            b #0x91238
0009122e  48 46                                            mov r0, sb
00091230  a2 f7 96 ec                                      blx #0x33b60
00091234  00 e0                                            b #0x91238
00091236  01 20                                            movs r0, #1
00091238  21 6a                                            ldr r1, [r4, #0x20]
0009123a  01 eb 80 00                                      add.w r0, r1, r0, lsl #2
0009123e  20 62                                            str r0, [r4, #0x20]
00091240  01 b0                                            add sp, #4
00091242  bd e8 00 0f                                      pop.w {r8, sb, sl, fp}
00091246  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00091248, declared_size=2, range_size=2, mode=thumb
; class-group: parcel_out_uniform_storage
; alias: _ZN26parcel_out_uniform_storage11visit_fieldEPK9glsl_typePKcb
; demangled: parcel_out_uniform_storage::visit_field(glsl_type const*, char const*, bool)
; decoder-mode: thumb
00091248  70 47                                            bx lr

; FUNCTION 0x0009124a, declared_size=158, range_size=158, mode=thumb
; class-group: parcel_out_uniform_storage
; alias: _ZN26parcel_out_uniform_storage15handle_samplersEPK9glsl_typeP18gl_uniform_storage
; demangled: parcel_out_uniform_storage::handle_samplers(glsl_type const*, gl_uniform_storage*)
; decoder-mode: thumb
0009124a  f0 b5                                            push {r4, r5, r6, r7, lr}
0009124c  03 af                                            add r7, sp, #0xc
0009124e  2d e9 00 07                                      push.w {r8, sb, sl}
00091252  89 46                                            mov sb, r1
00091254  04 46                                            mov r4, r0
00091256  d9 f8 04 00                                      ldr.w r0, [sb, #4]
0009125a  04 28                                            cmp r0, #4
0009125c  3b d1                                            bne #0x912d6
0009125e  e0 68                                            ldr r0, [r4, #0xc]
00091260  02 f1 0d 08                                      add.w r8, r2, #0xd
00091264  a1 69                                            ldr r1, [r4, #0x18]
00091266  4f f0 01 0a                                      mov.w sl, #1
0009126a  08 f8 10 10                                      strb.w r1, [r8, r0, lsl #1]
0009126e  08 eb 40 00                                      add.w r0, r8, r0, lsl #1
00091272  80 f8 01 a0                                      strb.w sl, [r0, #1]
00091276  90 68                                            ldr r0, [r2, #8]
00091278  00 28                                            cmp r0, #0
0009127a  08 bf                                            it eq
0009127c  01 20                                            moveq r0, #1
0009127e  08 44                                            add r0, r1
00091280  a0 61                                            str r0, [r4, #0x18]
00091282  48 46                                            mov r0, sb
00091284  a3 f7 82 ec                                      blx #0x34b8c
00091288  e1 68                                            ldr r1, [r4, #0xc]
0009128a  4f f0 20 0c                                      mov.w ip, #0x20
0009128e  b9 f8 08 30                                      ldrh.w r3, [sb, #8]
00091292  a5 69                                            ldr r5, [r4, #0x18]
00091294  18 f8 11 10                                      ldrb.w r1, [r8, r1, lsl #1]
00091298  20 2d                                            cmp r5, #0x20
0009129a  28 bf                                            it hs
0009129c  65 46                                            movhs r5, ip
0009129e  c3 f3 c0 0e                                      ubfx lr, r3, #3, #1
000912a2  8d 42                                            cmp r5, r1
000912a4  1d d9                                            bls #0x912e2
000912a6  04 eb 81 05                                      add.w r5, r4, r1, lsl #2
000912aa  0a fa 01 f3                                      lsl.w r3, sl, r1
000912ae  68 62                                            str r0, [r5, #0x24]
000912b0  a5 69                                            ldr r5, [r4, #0x18]
000912b2  d4 e9 2b 62                                      ldrd r6, r2, [r4, #0xac]
000912b6  20 2d                                            cmp r5, #0x20
000912b8  43 ea 06 03                                      orr.w r3, r3, r6
000912bc  0e fa 01 f6                                      lsl.w r6, lr, r1
000912c0  42 ea 06 02                                      orr.w r2, r2, r6
000912c4  01 f1 01 01                                      add.w r1, r1, #1
000912c8  c4 e9 2b 32                                      strd r3, r2, [r4, #0xac]
000912cc  28 bf                                            it hs
000912ce  65 46                                            movhs r5, ip
000912d0  a9 42                                            cmp r1, r5
000912d2  e8 d3                                            blo #0x912a6
000912d4  05 e0                                            b #0x912e2
000912d6  e0 68                                            ldr r0, [r4, #0xc]
000912d8  ff 21                                            movs r1, #0xff
000912da  02 eb 40 00                                      add.w r0, r2, r0, lsl #1
000912de  a0 f8 0d 10                                      strh.w r1, [r0, #0xd]
000912e2  bd e8 00 07                                      pop.w {r8, sb, sl}
000912e6  f0 bd                                            pop {r4, r5, r6, r7, pc}

; FUNCTION 0x000912e8, declared_size=52, range_size=52, mode=thumb
; class-group: parcel_out_uniform_storage
; alias: _ZN26parcel_out_uniform_storage13handle_imagesEPK9glsl_typeP18gl_uniform_storage
; demangled: parcel_out_uniform_storage::handle_images(glsl_type const*, gl_uniform_storage*)
; decoder-mode: thumb
000912e8  49 68                                            ldr r1, [r1, #4]
000912ea  05 29                                            cmp r1, #5
000912ec  0f d1                                            bne #0x9130e
000912ee  c1 68                                            ldr r1, [r0, #0xc]
000912f0  01 23                                            movs r3, #1
000912f2  d0 f8 1c c0                                      ldr.w ip, [r0, #0x1c]
000912f6  02 eb 41 01                                      add.w r1, r2, r1, lsl #1
000912fa  8b 75                                            strb r3, [r1, #0x16]
000912fc  81 f8 15 c0                                      strb.w ip, [r1, #0x15]
00091300  91 68                                            ldr r1, [r2, #8]
00091302  00 29                                            cmp r1, #0
00091304  08 bf                                            it eq
00091306  01 21                                            moveq r1, #1
00091308  61 44                                            add r1, ip
0009130a  c1 61                                            str r1, [r0, #0x1c]
0009130c  70 47                                            bx lr
0009130e  c0 68                                            ldr r0, [r0, #0xc]
00091310  ff 21                                            movs r1, #0xff
00091312  02 eb 40 00                                      add.w r0, r2, r0, lsl #1
00091316  a0 f8 15 10                                      strh.w r1, [r0, #0x15]
0009131a  70 47                                            bx lr
