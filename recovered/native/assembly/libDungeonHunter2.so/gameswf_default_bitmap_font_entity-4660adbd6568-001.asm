; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007c4698, declared_size=1040, range_size=1040, mode=arm
; class-group: gameswf::default_bitmap_font_entity
; alias: _ZN7gameswf26default_bitmap_font_entity14get_char_imageEPNS_17bitmap_glyph_dataEtiPNS_20bitmap_glyph_metricsE
; demangled: gameswf::default_bitmap_font_entity::get_char_image(gameswf::bitmap_glyph_data*, unsigned short, int, gameswf::bitmap_glyph_metrics*)
; decoder-mode: arm
007c4698  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007c469c  00 40 a0 e1                                      mov r4, r0
007c46a0  54 00 90 e5                                      ldr r0, [r0, #0x54]
007c46a4  44 d0 4d e2                                      sub sp, sp, #0x44
007c46a8  38 30 8d e5                                      str r3, [sp, #0x38]
007c46ac  25 a0 d0 e5                                      ldrb sl, [r0, #0x25]
007c46b0  24 30 d0 e5                                      ldrb r3, [r0, #0x24]
007c46b4  01 50 a0 e1                                      mov r5, r1
007c46b8  27 10 d0 e5                                      ldrb r1, [r0, #0x27]
007c46bc  26 60 d0 e5                                      ldrb r6, [r0, #0x26]
007c46c0  0a a8 a0 e1                                      lsl sl, sl, #0x10
007c46c4  0d 70 d0 e5                                      ldrb r7, [r0, #0xd]
007c46c8  03 ac 8a e1                                      orr sl, sl, r3, lsl #24
007c46cc  0c 80 d0 e5                                      ldrb r8, [r0, #0xc]
007c46d0  01 10 8a e1                                      orr r1, sl, r1
007c46d4  0f c0 d0 e5                                      ldrb ip, [r0, #0xf]
007c46d8  06 64 81 e1                                      orr r6, r1, r6, lsl #8
007c46dc  10 10 d0 e5                                      ldrb r1, [r0, #0x10]
007c46e0  0e 30 d0 e5                                      ldrb r3, [r0, #0xe]
007c46e4  07 78 a0 e1                                      lsl r7, r7, #0x10
007c46e8  08 7c 87 e1                                      orr r7, r7, r8, lsl #24
007c46ec  0c 10 8d e5                                      str r1, [sp, #0xc]
007c46f0  0c c0 87 e1                                      orr ip, r7, ip
007c46f4  03 c4 8c e1                                      orr ip, ip, r3, lsl #8
007c46f8  12 30 d0 e5                                      ldrb r3, [r0, #0x12]
007c46fc  11 80 d0 e5                                      ldrb r8, [r0, #0x11]
007c4700  02 20 66 e0                                      rsb r2, r6, r2
007c4704  10 30 8d e5                                      str r3, [sp, #0x10]
007c4708  13 10 d0 e5                                      ldrb r1, [r0, #0x13]
007c470c  0c 00 52 e1                                      cmp r2, ip
007c4710  00 c0 a0 b3                                      movlt ip, #0
007c4714  01 c0 a0 a3                                      movge ip, #1
007c4718  a2 cf 9c e1                                      orrs ip, ip, r2, lsr #31
007c471c  14 10 8d e5                                      str r1, [sp, #0x14]
007c4720  14 30 d0 e5                                      ldrb r3, [r0, #0x14]
007c4724  00 30 8d e5                                      str r3, [sp]
007c4728  16 10 d0 e5                                      ldrb r1, [r0, #0x16]
007c472c  15 70 d0 e5                                      ldrb r7, [r0, #0x15]
007c4730  04 10 8d e5                                      str r1, [sp, #4]
007c4734  17 30 d0 e5                                      ldrb r3, [r0, #0x17]
007c4738  08 30 8d e5                                      str r3, [sp, #8]
007c473c  18 10 d0 e5                                      ldrb r1, [r0, #0x18]
007c4740  28 10 8d e5                                      str r1, [sp, #0x28]
007c4744  19 30 d0 e5                                      ldrb r3, [r0, #0x19]
007c4748  2c 30 8d e5                                      str r3, [sp, #0x2c]
007c474c  1a 10 d0 e5                                      ldrb r1, [r0, #0x1a]
007c4750  30 10 8d e5                                      str r1, [sp, #0x30]
007c4754  1b 30 d0 e5                                      ldrb r3, [r0, #0x1b]
007c4758  34 30 8d e5                                      str r3, [sp, #0x34]
007c475c  20 10 d0 e5                                      ldrb r1, [r0, #0x20]
007c4760  18 10 8d e5                                      str r1, [sp, #0x18]
007c4764  21 30 d0 e5                                      ldrb r3, [r0, #0x21]
007c4768  1c 30 8d e5                                      str r3, [sp, #0x1c]
007c476c  22 10 d0 e5                                      ldrb r1, [r0, #0x22]
007c4770  20 10 8d e5                                      str r1, [sp, #0x20]
007c4774  23 30 d0 e5                                      ldrb r3, [r0, #0x23]
007c4778  24 30 8d e5                                      str r3, [sp, #0x24]
007c477c  8e 00 00 1a                                      bne #0x7c49bc
007c4780  0b c0 82 e2                                      add ip, r2, #0xb
007c4784  0a 10 82 e2                                      add r1, r2, #0xa
007c4788  01 21 80 e0                                      add r2, r0, r1, lsl #2
007c478c  0c 31 80 e0                                      add r3, r0, ip, lsl #2
007c4790  0c a1 d0 e7                                      ldrb sl, [r0, ip, lsl #2]
007c4794  01 b1 d0 e7                                      ldrb fp, [r0, r1, lsl #2]
007c4798  03 90 d2 e5                                      ldrb sb, [r2, #3]
007c479c  03 c0 d3 e5                                      ldrb ip, [r3, #3]
007c47a0  01 00 d2 e5                                      ldrb r0, [r2, #1]
007c47a4  01 10 d3 e5                                      ldrb r1, [r3, #1]
007c47a8  02 20 d2 e5                                      ldrb r2, [r2, #2]
007c47ac  02 30 d3 e5                                      ldrb r3, [r3, #2]
007c47b0  0b 9c 89 e1                                      orr sb, sb, fp, lsl #24
007c47b4  0a cc 8c e1                                      orr ip, ip, sl, lsl #24
007c47b8  00 98 89 e1                                      orr sb, sb, r0, lsl #16
007c47bc  01 c8 8c e1                                      orr ip, ip, r1, lsl #16
007c47c0  02 94 89 e1                                      orr sb, sb, r2, lsl #8
007c47c4  03 c4 8c e1                                      orr ip, ip, r3, lsl #8
007c47c8  09 60 5c e0                                      subs r6, ip, sb
007c47cc  7a 00 00 0a                                      beq #0x7c49bc
007c47d0  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
007c47d4  00 00 53 e3                                      cmp r3, #0
007c47d8  97 00 00 0a                                      beq #0x7c4a3c
007c47dc  4c 60 94 e5                                      ldr r6, [r4, #0x4c]
007c47e0  08 30 93 e5                                      ldr r3, [r3, #8]
007c47e4  09 60 66 e0                                      rsb r6, r6, sb
007c47e8  06 60 83 e0                                      add r6, r3, r6
007c47ec  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007c47f0  14 30 9d e5                                      ldr r3, [sp, #0x14]
007c47f4  00 20 9d e5                                      ldr r2, [sp]
007c47f8  08 88 a0 e1                                      lsl r8, r8, #0x10
007c47fc  01 8c 88 e1                                      orr r8, r8, r1, lsl #24
007c4800  08 10 9d e5                                      ldr r1, [sp, #8]
007c4804  03 80 88 e1                                      orr r8, r8, r3
007c4808  07 78 a0 e1                                      lsl r7, r7, #0x10
007c480c  04 30 9d e5                                      ldr r3, [sp, #4]
007c4810  02 7c 87 e1                                      orr r7, r7, r2, lsl #24
007c4814  01 70 87 e1                                      orr r7, r7, r1
007c4818  03 74 87 e1                                      orr r7, r7, r3, lsl #8
007c481c  00 70 8d e5                                      str r7, [sp]
007c4820  00 10 d6 e5                                      ldrb r1, [r6]
007c4824  10 20 9d e5                                      ldr r2, [sp, #0x10]
007c4828  00 00 55 e3                                      cmp r5, #0
007c482c  0c 10 8d e5                                      str r1, [sp, #0xc]
007c4830  02 b4 88 e1                                      orr fp, r8, r2, lsl #8
007c4834  01 20 d6 e5                                      ldrb r2, [r6, #1]
007c4838  10 20 8d e5                                      str r2, [sp, #0x10]
007c483c  02 30 d6 e5                                      ldrb r3, [r6, #2]
007c4840  04 30 8d e5                                      str r3, [sp, #4]
007c4844  03 10 d6 e5                                      ldrb r1, [r6, #3]
007c4848  08 10 8d e5                                      str r1, [sp, #8]
007c484c  26 00 00 0a                                      beq #0x7c48ec
007c4850  9b 07 07 e0                                      mul r7, fp, r7
007c4854  30 80 94 e5                                      ldr r8, [r4, #0x30]
007c4858  08 00 57 e1                                      cmp r7, r8
007c485c  69 00 00 ca                                      bgt #0x7c4a08
007c4860  00 00 57 e3                                      cmp r7, #0
007c4864  19 00 00 da                                      ble #0x7c48d0
007c4868  00 10 a0 e3                                      mov r1, #0
007c486c  04 30 a0 e3                                      mov r3, #4
007c4870  14 b0 8d e5                                      str fp, [sp, #0x14]
007c4874  3c 50 8d e5                                      str r5, [sp, #0x3c]
007c4878  03 c0 d6 e7                                      ldrb ip, [r6, r3]
007c487c  00 20 a0 e3                                      mov r2, #0
007c4880  01 30 83 e2                                      add r3, r3, #1
007c4884  7f 50 0c e2                                      and r5, ip, #0x7f
007c4888  01 01 a0 e1                                      lsl r0, r1, #2
007c488c  80 c0 0c e2                                      and ip, ip, #0x80
007c4890  02 80 a0 e1                                      mov r8, r2
007c4894  00 00 5c e3                                      cmp ip, #0
007c4898  4a 00 00 0a                                      beq #0x7c49c8
007c489c  00 00 52 e3                                      cmp r2, #0
007c48a0  48 00 00 0a                                      beq #0x7c49c8
007c48a4  2c 90 94 e5                                      ldr sb, [r4, #0x2c]
007c48a8  01 20 82 e2                                      add r2, r2, #1
007c48ac  02 00 55 e1                                      cmp r5, r2
007c48b0  00 80 89 e7                                      str r8, [sb, r0]
007c48b4  01 10 81 e2                                      add r1, r1, #1
007c48b8  04 00 80 e2                                      add r0, r0, #4
007c48bc  f4 ff ff aa                                      bge #0x7c4894
007c48c0  01 00 57 e1                                      cmp r7, r1
007c48c4  eb ff ff ca                                      bgt #0x7c4878
007c48c8  14 b0 9d e5                                      ldr fp, [sp, #0x14]
007c48cc  3c 50 9d e5                                      ldr r5, [sp, #0x3c]
007c48d0  0b 31 a0 e1                                      lsl r3, fp, #2
007c48d4  00 30 85 e5                                      str r3, [r5]
007c48d8  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
007c48dc  00 20 9d e5                                      ldr r2, [sp]
007c48e0  04 b0 85 e5                                      str fp, [r5, #4]
007c48e4  0c 30 85 e5                                      str r3, [r5, #0xc]
007c48e8  08 20 85 e5                                      str r2, [r5, #8]
007c48ec  68 30 9d e5                                      ldr r3, [sp, #0x68]
007c48f0  00 00 53 e3                                      cmp r3, #0
007c48f4  2e 00 00 0a                                      beq #0x7c49b4
007c48f8  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
007c48fc  18 10 9d e5                                      ldr r1, [sp, #0x18]
007c4900  24 20 9d e5                                      ldr r2, [sp, #0x24]
007c4904  0e 38 a0 e1                                      lsl r3, lr, #0x10
007c4908  2c e0 9d e5                                      ldr lr, [sp, #0x2c]
007c490c  01 3c 83 e1                                      orr r3, r3, r1, lsl #24
007c4910  02 30 83 e1                                      orr r3, r3, r2
007c4914  0e 18 a0 e1                                      lsl r1, lr, #0x10
007c4918  20 e0 9d e5                                      ldr lr, [sp, #0x20]
007c491c  28 20 9d e5                                      ldr r2, [sp, #0x28]
007c4920  0e 04 83 e1                                      orr r0, r3, lr, lsl #8
007c4924  08 30 9d e5                                      ldr r3, [sp, #8]
007c4928  04 e0 9d e5                                      ldr lr, [sp, #4]
007c492c  02 1c 81 e1                                      orr r1, r1, r2, lsl #24
007c4930  34 20 9d e5                                      ldr r2, [sp, #0x34]
007c4934  0e c4 83 e1                                      orr ip, r3, lr, lsl #8
007c4938  10 30 9d e5                                      ldr r3, [sp, #0x10]
007c493c  0c e0 9d e5                                      ldr lr, [sp, #0xc]
007c4940  02 10 81 e1                                      orr r1, r1, r2
007c4944  01 00 80 e2                                      add r0, r0, #1
007c4948  0e 24 83 e1                                      orr r2, r3, lr, lsl #8
007c494c  30 30 9d e5                                      ldr r3, [sp, #0x30]
007c4950  68 e0 9d e5                                      ldr lr, [sp, #0x68]
007c4954  0c 00 80 e0                                      add r0, r0, ip
007c4958  03 14 81 e1                                      orr r1, r1, r3, lsl #8
007c495c  02 08 8e e9                                      stmib lr, {r1, fp}
007c4960  00 10 9d e5                                      ldr r1, [sp]
007c4964  00 00 62 e0                                      rsb r0, r2, r0
007c4968  00 20 8e e5                                      str r2, [lr]
007c496c  0c 10 8e e5                                      str r1, [lr, #0xc]
007c4970  fb 27 ed eb                                      bl #0x30e964
007c4974  00 40 a0 e1                                      mov r4, r0
007c4978  38 00 9d e5                                      ldr r0, [sp, #0x38]
007c497c  f8 27 ed eb                                      bl #0x30e964
007c4980  41 14 a0 e3                                      mov r1, #0x41000000
007c4984  0a 16 81 e2                                      add r1, r1, #0xa00000
007c4988  f7 28 ed eb                                      bl #0x30ed6c
007c498c  00 10 a0 e1                                      mov r1, r0
007c4990  11 03 a0 e3                                      mov r0, #0x44000000
007c4994  02 05 80 e2                                      add r0, r0, #0x800000
007c4998  bd 28 ed eb                                      bl #0x30ec94
007c499c  00 10 a0 e1                                      mov r1, r0
007c49a0  04 00 a0 e1                                      mov r0, r4
007c49a4  f0 28 ed eb                                      bl #0x30ed6c
007c49a8  c7 26 ed eb                                      bl #0x30e4cc
007c49ac  68 20 9d e5                                      ldr r2, [sp, #0x68]
007c49b0  10 00 82 e5                                      str r0, [r2, #0x10]
007c49b4  01 00 a0 e3                                      mov r0, #1
007c49b8  00 00 00 ea                                      b #0x7c49c0
007c49bc  00 00 a0 e3                                      mov r0, #0
007c49c0  44 d0 8d e2                                      add sp, sp, #0x44
007c49c4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007c49c8  03 80 86 e0                                      add r8, r6, r3
007c49cc  03 90 d6 e7                                      ldrb sb, [r6, r3]
007c49d0  03 a0 d8 e5                                      ldrb sl, [r8, #3]
007c49d4  01 b0 d8 e5                                      ldrb fp, [r8, #1]
007c49d8  02 80 d8 e5                                      ldrb r8, [r8, #2]
007c49dc  09 ac 8a e1                                      orr sl, sl, sb, lsl #24
007c49e0  0b b8 8a e1                                      orr fp, sl, fp, lsl #16
007c49e4  08 b4 8b e1                                      orr fp, fp, r8, lsl #8
007c49e8  ff ac 0b e2                                      and sl, fp, #0xff00
007c49ec  0b 8c a0 e1                                      lsl r8, fp, #0x18
007c49f0  2b 8c 88 e1                                      orr r8, r8, fp, lsr #24
007c49f4  0a a4 88 e1                                      orr sl, r8, sl, lsl #8
007c49f8  ff 88 0b e2                                      and r8, fp, #0xff0000
007c49fc  28 84 8a e1                                      orr r8, sl, r8, lsr #8
007c4a00  04 30 83 e2                                      add r3, r3, #4
007c4a04  a6 ff ff ea                                      b #0x7c48a4
007c4a08  00 00 57 e3                                      cmp r7, #0
007c4a0c  2c a0 84 e2                                      add sl, r4, #0x2c
007c4a10  18 00 00 1a                                      bne #0x7c4a78
007c4a14  08 31 a0 e1                                      lsl r3, r8, #2
007c4a18  00 10 a0 e3                                      mov r1, #0
007c4a1c  00 20 9a e5                                      ldr r2, [sl]
007c4a20  01 80 88 e2                                      add r8, r8, #1
007c4a24  07 00 58 e1                                      cmp r8, r7
007c4a28  03 10 82 e7                                      str r1, [r2, r3]
007c4a2c  04 30 83 e2                                      add r3, r3, #4
007c4a30  f9 ff ff 1a                                      bne #0x7c4a1c
007c4a34  30 70 84 e5                                      str r7, [r4, #0x30]
007c4a38  88 ff ff ea                                      b #0x7c4860
007c4a3c  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
007c4a40  03 00 56 e1                                      cmp r6, r3
007c4a44  3c a0 84 d2                                      addle sl, r4, #0x3c
007c4a48  11 00 00 ca                                      bgt #0x7c4a94
007c4a4c  60 30 94 e5                                      ldr r3, [r4, #0x60]
007c4a50  09 00 a0 e1                                      mov r0, sb
007c4a54  00 10 93 e5                                      ldr r1, [r3]
007c4a58  0f e0 a0 e1                                      mov lr, pc
007c4a5c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
007c4a60  06 20 a0 e1                                      mov r2, r6
007c4a64  0a 10 a0 e1                                      mov r1, sl
007c4a68  60 00 94 e5                                      ldr r0, [r4, #0x60]
007c4a6c  03 c8 ff eb                                      bl #0x7b6a80
007c4a70  44 60 94 e5                                      ldr r6, [r4, #0x44]
007c4a74  5c ff ff ea                                      b #0x7c47ec
007c4a78  34 30 94 e5                                      ldr r3, [r4, #0x34]
007c4a7c  03 00 57 e1                                      cmp r7, r3
007c4a80  e3 ff ff da                                      ble #0x7c4a14
007c4a84  0a 00 a0 e1                                      mov r0, sl
007c4a88  c7 10 87 e0                                      add r1, r7, r7, asr #1
007c4a8c  66 cd ff eb                                      bl #0x7b802c
007c4a90  df ff ff ea                                      b #0x7c4a14
007c4a94  3c a0 84 e2                                      add sl, r4, #0x3c
007c4a98  0a 00 a0 e1                                      mov r0, sl
007c4a9c  06 10 a0 e1                                      mov r1, r6
007c4aa0  ed 58 fe eb                                      bl #0x75ae5c
007c4aa4  e8 ff ff ea                                      b #0x7c4a4c

; FUNCTION 0x007c6488, declared_size=204, range_size=204, mode=arm
; class-group: gameswf::default_bitmap_font_entity
; alias: _ZN7gameswf26default_bitmap_font_entityD1Ev
; demangled: gameswf::default_bitmap_font_entity::~default_bitmap_font_entity()
; decoder-mode: arm
007c6488  70 40 2d e9                                      push {r4, r5, r6, lr}
007c648c  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
007c6490  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
007c6494  5c 50 90 e5                                      ldr r5, [r0, #0x5c]
007c6498  03 30 8f e0                                      add r3, pc, r3
007c649c  02 20 93 e7                                      ldr r2, [r3, r2]
007c64a0  00 00 55 e3                                      cmp r5, #0
007c64a4  00 40 a0 e1                                      mov r4, r0
007c64a8  08 20 82 e2                                      add r2, r2, #8
007c64ac  00 20 80 e5                                      str r2, [r0]
007c64b0  04 00 00 0a                                      beq #0x7c64c8
007c64b4  05 00 a0 e1                                      mov r0, r5
007c64b8  22 c0 ff eb                                      bl #0x7b6548
007c64bc  05 00 a0 e1                                      mov r0, r5
007c64c0  00 10 a0 e3                                      mov r1, #0
007c64c4  9b 31 fe eb                                      bl #0x752b38
007c64c8  60 50 94 e5                                      ldr r5, [r4, #0x60]
007c64cc  00 00 55 e3                                      cmp r5, #0
007c64d0  04 00 00 0a                                      beq #0x7c64e8
007c64d4  05 00 a0 e1                                      mov r0, r5
007c64d8  42 c1 ff eb                                      bl #0x7b69e8
007c64dc  05 00 a0 e1                                      mov r0, r5
007c64e0  00 10 a0 e3                                      mov r1, #0
007c64e4  93 31 fe eb                                      bl #0x752b38
007c64e8  4c 00 84 e2                                      add r0, r4, #0x4c
007c64ec  15 c0 ff eb                                      bl #0x7b6548
007c64f0  3c 00 84 e2                                      add r0, r4, #0x3c
007c64f4  13 c0 ff eb                                      bl #0x7b6548
007c64f8  30 30 94 e5                                      ldr r3, [r4, #0x30]
007c64fc  2c 00 84 e2                                      add r0, r4, #0x2c
007c6500  00 00 53 e3                                      cmp r3, #0
007c6504  07 00 00 da                                      ble #0x7c6528
007c6508  00 30 a0 e3                                      mov r3, #0
007c650c  03 10 a0 e1                                      mov r1, r3
007c6510  30 30 84 e5                                      str r3, [r4, #0x30]
007c6514  c4 c6 ff eb                                      bl #0x7b802c
007c6518  04 00 a0 e1                                      mov r0, r4
007c651c  ed f9 ff eb                                      bl #0x7c4cd8
007c6520  04 00 a0 e1                                      mov r0, r4
007c6524  70 80 bd e8                                      pop {r4, r5, r6, pc}
007c6528  f6 ff ff aa                                      bge #0x7c6508
007c652c  03 21 a0 e1                                      lsl r2, r3, #2
007c6530  00 c0 a0 e3                                      mov ip, #0
007c6534  00 10 90 e5                                      ldr r1, [r0]
007c6538  01 30 93 e2                                      adds r3, r3, #1
007c653c  02 c0 81 e7                                      str ip, [r1, r2]
007c6540  04 20 82 e2                                      add r2, r2, #4
007c6544  fa ff ff 1a                                      bne #0x7c6534
007c6548  ee ff ff ea                                      b #0x7c6508
; mapping-symbol data/literal pool
007c654c  f8 e5 1c 00 68 34 00 00                          .byte 0xf8, 0xe5, 0x1c, 0x00, 0x68, 0x34, 0x00, 0x00

; FUNCTION 0x007c6554, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::default_bitmap_font_entity
; alias: _ZN7gameswf26default_bitmap_font_entityD0Ev
; demangled: gameswf::default_bitmap_font_entity::~default_bitmap_font_entity()
; decoder-mode: arm
007c6554  10 40 2d e9                                      push {r4, lr}
007c6558  00 40 a0 e1                                      mov r4, r0
007c655c  c9 ff ff eb                                      bl #0x7c6488
007c6560  04 00 a0 e1                                      mov r0, r4
007c6564  51 1f ed eb                                      bl #0x30e2b0
007c6568  04 00 a0 e1                                      mov r0, r4
007c656c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007c6570, declared_size=204, range_size=204, mode=arm
; class-group: gameswf::default_bitmap_font_entity
; alias: _ZN7gameswf26default_bitmap_font_entityD2Ev
; demangled: gameswf::default_bitmap_font_entity::~default_bitmap_font_entity()
; decoder-mode: arm
007c6570  70 40 2d e9                                      push {r4, r5, r6, lr}
007c6574  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
007c6578  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
007c657c  5c 50 90 e5                                      ldr r5, [r0, #0x5c]
007c6580  03 30 8f e0                                      add r3, pc, r3
007c6584  02 20 93 e7                                      ldr r2, [r3, r2]
007c6588  00 00 55 e3                                      cmp r5, #0
007c658c  00 40 a0 e1                                      mov r4, r0
007c6590  08 20 82 e2                                      add r2, r2, #8
007c6594  00 20 80 e5                                      str r2, [r0]
007c6598  04 00 00 0a                                      beq #0x7c65b0
007c659c  05 00 a0 e1                                      mov r0, r5
007c65a0  e8 bf ff eb                                      bl #0x7b6548
007c65a4  05 00 a0 e1                                      mov r0, r5
007c65a8  00 10 a0 e3                                      mov r1, #0
007c65ac  61 31 fe eb                                      bl #0x752b38
007c65b0  60 50 94 e5                                      ldr r5, [r4, #0x60]
007c65b4  00 00 55 e3                                      cmp r5, #0
007c65b8  04 00 00 0a                                      beq #0x7c65d0
007c65bc  05 00 a0 e1                                      mov r0, r5
007c65c0  08 c1 ff eb                                      bl #0x7b69e8
007c65c4  05 00 a0 e1                                      mov r0, r5
007c65c8  00 10 a0 e3                                      mov r1, #0
007c65cc  59 31 fe eb                                      bl #0x752b38
007c65d0  4c 00 84 e2                                      add r0, r4, #0x4c
007c65d4  db bf ff eb                                      bl #0x7b6548
007c65d8  3c 00 84 e2                                      add r0, r4, #0x3c
007c65dc  d9 bf ff eb                                      bl #0x7b6548
007c65e0  30 30 94 e5                                      ldr r3, [r4, #0x30]
007c65e4  2c 00 84 e2                                      add r0, r4, #0x2c
007c65e8  00 00 53 e3                                      cmp r3, #0
007c65ec  07 00 00 da                                      ble #0x7c6610
007c65f0  00 30 a0 e3                                      mov r3, #0
007c65f4  03 10 a0 e1                                      mov r1, r3
007c65f8  30 30 84 e5                                      str r3, [r4, #0x30]
007c65fc  8a c6 ff eb                                      bl #0x7b802c
007c6600  04 00 a0 e1                                      mov r0, r4
007c6604  b3 f9 ff eb                                      bl #0x7c4cd8
007c6608  04 00 a0 e1                                      mov r0, r4
007c660c  70 80 bd e8                                      pop {r4, r5, r6, pc}
007c6610  f6 ff ff aa                                      bge #0x7c65f0
007c6614  03 21 a0 e1                                      lsl r2, r3, #2
007c6618  00 c0 a0 e3                                      mov ip, #0
007c661c  00 10 90 e5                                      ldr r1, [r0]
007c6620  01 30 93 e2                                      adds r3, r3, #1
007c6624  02 c0 81 e7                                      str ip, [r1, r2]
007c6628  04 20 82 e2                                      add r2, r2, #4
007c662c  fa ff ff 1a                                      bne #0x7c661c
007c6630  ee ff ff ea                                      b #0x7c65f0
; mapping-symbol data/literal pool
007c6634  10 e5 1c 00 68 34 00 00                          .byte 0x10, 0xe5, 0x1c, 0x00, 0x68, 0x34, 0x00, 0x00

; FUNCTION 0x007c663c, declared_size=648, range_size=648, mode=arm
; class-group: gameswf::default_bitmap_font_entity
; alias: _ZN7gameswf26default_bitmap_font_entityC2EPNS_21bitmap_glyph_providerERKNS_9tu_stringE
; demangled: gameswf::default_bitmap_font_entity::default_bitmap_font_entity(gameswf::bitmap_glyph_provider*, gameswf::tu_string const&)
; decoder-mode: arm
007c663c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007c6640  70 62 9f e5                                      ldr r6, [pc, #0x270]
007c6644  00 40 a0 e1                                      mov r4, r0
007c6648  02 70 a0 e1                                      mov r7, r2
007c664c  01 50 a0 e1                                      mov r5, r1
007c6650  6b 4d fe eb                                      bl #0x759c04
007c6654  60 22 9f e5                                      ldr r2, [pc, #0x260]
007c6658  20 30 94 e5                                      ldr r3, [r4, #0x20]
007c665c  06 60 8f e0                                      add r6, pc, r6
007c6660  02 20 96 e7                                      ldr r2, [r6, r2]
007c6664  00 10 e0 e3                                      mvn r1, #0
007c6668  11 30 d7 e7                                      bfi r3, r1, #0, #0x18
007c666c  00 80 a0 e3                                      mov r8, #0
007c6670  23 1c a0 e1                                      lsr r1, r3, #0x18
007c6674  08 20 82 e2                                      add r2, r2, #8
007c6678  18 10 c0 e7                                      bfi r1, r8, #0, #1
007c667c  01 00 a0 e3                                      mov r0, #1
007c6680  00 20 84 e5                                      str r2, [r4]
007c6684  20 30 84 e5                                      str r3, [r4, #0x20]
007c6688  0c 50 84 e5                                      str r5, [r4, #0xc]
007c668c  23 10 c4 e5                                      strb r1, [r4, #0x23]
007c6690  10 00 c4 e5                                      strb r0, [r4, #0x10]
007c6694  11 80 c4 e5                                      strb r8, [r4, #0x11]
007c6698  24 80 84 e5                                      str r8, [r4, #0x24]
007c669c  2c 80 84 e5                                      str r8, [r4, #0x2c]
007c66a0  30 80 84 e5                                      str r8, [r4, #0x30]
007c66a4  34 80 84 e5                                      str r8, [r4, #0x34]
007c66a8  38 80 c4 e5                                      strb r8, [r4, #0x38]
007c66ac  3c 00 84 e2                                      add r0, r4, #0x3c
007c66b0  4c 50 84 e2                                      add r5, r4, #0x4c
007c66b4  f4 be ff eb                                      bl #0x7b628c
007c66b8  05 00 a0 e1                                      mov r0, r5
007c66bc  f2 be ff eb                                      bl #0x7b628c
007c66c0  07 10 a0 e1                                      mov r1, r7
007c66c4  10 00 84 e2                                      add r0, r4, #0x10
007c66c8  60 80 84 e5                                      str r8, [r4, #0x60]
007c66cc  5c 80 84 e5                                      str r8, [r4, #0x5c]
007c66d0  1e 32 fe eb                                      bl #0x752f50
007c66d4  fe 35 a0 e3                                      mov r3, #0x3f800000
007c66d8  28 30 84 e5                                      str r3, [r4, #0x28]
007c66dc  d0 30 d7 e1                                      ldrsb r3, [r7]
007c66e0  00 10 a0 e3                                      mov r1, #0
007c66e4  28 00 a0 e3                                      mov r0, #0x28
007c66e8  01 00 73 e3                                      cmn r3, #1
007c66ec  01 70 87 12                                      addne r7, r7, #1
007c66f0  0c 70 97 05                                      ldreq r7, [r7, #0xc]
007c66f4  2b 31 fe eb                                      bl #0x752ba8
007c66f8  c0 21 9f e5                                      ldr r2, [pc, #0x1c0]
007c66fc  00 60 a0 e1                                      mov r6, r0
007c6700  07 10 a0 e1                                      mov r1, r7
007c6704  02 20 8f e0                                      add r2, pc, r2
007c6708  6e c0 ff eb                                      bl #0x7b68c8
007c670c  60 60 84 e5                                      str r6, [r4, #0x60]
007c6710  00 70 96 e5                                      ldr r7, [r6]
007c6714  00 00 57 e3                                      cmp r7, #0
007c6718  5e 00 00 0a                                      beq #0x7c6898
007c671c  07 00 a0 e1                                      mov r0, r7
007c6720  0f e0 a0 e1                                      mov lr, pc
007c6724  14 f0 96 e5                                      ldr pc, [r6, #0x14]
007c6728  60 30 94 e5                                      ldr r3, [r4, #0x60]
007c672c  00 00 93 e5                                      ldr r0, [r3]
007c6730  0f e0 a0 e1                                      mov lr, pc
007c6734  18 f0 93 e5                                      ldr pc, [r3, #0x18]
007c6738  60 30 94 e5                                      ldr r3, [r4, #0x60]
007c673c  00 60 a0 e1                                      mov r6, r0
007c6740  00 00 a0 e3                                      mov r0, #0
007c6744  00 10 93 e5                                      ldr r1, [r3]
007c6748  0f e0 a0 e1                                      mov lr, pc
007c674c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
007c6750  05 00 a0 e1                                      mov r0, r5
007c6754  28 10 a0 e3                                      mov r1, #0x28
007c6758  bf 51 fe eb                                      bl #0x75ae5c
007c675c  00 20 e0 e3                                      mvn r2, #0
007c6760  05 10 a0 e1                                      mov r1, r5
007c6764  60 00 94 e5                                      ldr r0, [r4, #0x60]
007c6768  c4 c0 ff eb                                      bl #0x7b6a80
007c676c  54 70 94 e5                                      ldr r7, [r4, #0x54]
007c6770  1d 30 d7 e5                                      ldrb r3, [r7, #0x1d]
007c6774  1c 10 d7 e5                                      ldrb r1, [r7, #0x1c]
007c6778  1f 20 d7 e5                                      ldrb r2, [r7, #0x1f]
007c677c  1e 00 d7 e5                                      ldrb r0, [r7, #0x1e]
007c6780  03 38 a0 e1                                      lsl r3, r3, #0x10
007c6784  01 3c 83 e1                                      orr r3, r3, r1, lsl #24
007c6788  02 30 83 e1                                      orr r3, r3, r2
007c678c  00 04 83 e1                                      orr r0, r3, r0, lsl #8
007c6790  d2 1e ed eb                                      bl #0x30e2e0
007c6794  41 14 a0 e3                                      mov r1, #0x41000000
007c6798  0a 16 81 e2                                      add r1, r1, #0xa00000
007c679c  00 80 a0 e1                                      mov r8, r0
007c67a0  71 21 ed eb                                      bl #0x30ed6c
007c67a4  00 10 a0 e1                                      mov r1, r0
007c67a8  11 03 a0 e3                                      mov r0, #0x44000000
007c67ac  02 05 80 e2                                      add r0, r0, #0x800000
007c67b0  37 21 ed eb                                      bl #0x30ec94
007c67b4  00 10 a0 e1                                      mov r1, r0
007c67b8  08 00 a0 e1                                      mov r0, r8
007c67bc  6a 21 ed eb                                      bl #0x30ed6c
007c67c0  28 00 84 e5                                      str r0, [r4, #0x28]
007c67c4  0d 10 d7 e5                                      ldrb r1, [r7, #0xd]
007c67c8  0c 00 d7 e5                                      ldrb r0, [r7, #0xc]
007c67cc  0f 20 d7 e5                                      ldrb r2, [r7, #0xf]
007c67d0  0e 30 d7 e5                                      ldrb r3, [r7, #0xe]
007c67d4  01 18 a0 e1                                      lsl r1, r1, #0x10
007c67d8  00 1c 81 e1                                      orr r1, r1, r0, lsl #24
007c67dc  02 10 81 e1                                      orr r1, r1, r2
007c67e0  03 14 81 e1                                      orr r1, r1, r3, lsl #8
007c67e4  0b 10 81 e2                                      add r1, r1, #0xb
007c67e8  01 11 a0 e1                                      lsl r1, r1, #2
007c67ec  05 00 a0 e1                                      mov r0, r5
007c67f0  99 51 fe eb                                      bl #0x75ae5c
007c67f4  60 30 94 e5                                      ldr r3, [r4, #0x60]
007c67f8  00 00 a0 e3                                      mov r0, #0
007c67fc  00 10 93 e5                                      ldr r1, [r3]
007c6800  0f e0 a0 e1                                      mov lr, pc
007c6804  10 f0 93 e5                                      ldr pc, [r3, #0x10]
007c6808  05 10 a0 e1                                      mov r1, r5
007c680c  60 00 94 e5                                      ldr r0, [r4, #0x60]
007c6810  00 20 e0 e3                                      mvn r2, #0
007c6814  99 c0 ff eb                                      bl #0x7b6a80
007c6818  0c 30 94 e5                                      ldr r3, [r4, #0xc]
007c681c  08 30 d3 e5                                      ldrb r3, [r3, #8]
007c6820  00 00 53 e3                                      cmp r3, #0
007c6824  01 00 00 1a                                      bne #0x7c6830
007c6828  04 00 a0 e1                                      mov r0, r4
007c682c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007c6830  00 10 a0 e3                                      mov r1, #0
007c6834  10 00 a0 e3                                      mov r0, #0x10
007c6838  da 30 fe eb                                      bl #0x752ba8
007c683c  00 50 a0 e1                                      mov r5, r0
007c6840  91 be ff eb                                      bl #0x7b628c
007c6844  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
007c6848  05 00 a0 e1                                      mov r0, r5
007c684c  5c 50 84 e5                                      str r5, [r4, #0x5c]
007c6850  06 10 61 e0                                      rsb r1, r1, r6
007c6854  80 51 fe eb                                      bl #0x75ae5c
007c6858  60 00 94 e5                                      ldr r0, [r4, #0x60]
007c685c  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
007c6860  00 20 e0 e3                                      mvn r2, #0
007c6864  85 c0 ff eb                                      bl #0x7b6a80
007c6868  60 50 94 e5                                      ldr r5, [r4, #0x60]
007c686c  00 00 55 e3                                      cmp r5, #0
007c6870  04 00 00 0a                                      beq #0x7c6888
007c6874  05 00 a0 e1                                      mov r0, r5
007c6878  5a c0 ff eb                                      bl #0x7b69e8
007c687c  05 00 a0 e1                                      mov r0, r5
007c6880  00 10 a0 e3                                      mov r1, #0
007c6884  ab 30 fe eb                                      bl #0x752b38
007c6888  00 30 a0 e3                                      mov r3, #0
007c688c  60 30 84 e5                                      str r3, [r4, #0x60]
007c6890  04 00 a0 e1                                      mov r0, r4
007c6894  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007c6898  06 00 a0 e1                                      mov r0, r6
007c689c  51 c0 ff eb                                      bl #0x7b69e8
007c68a0  06 00 a0 e1                                      mov r0, r6
007c68a4  07 10 a0 e1                                      mov r1, r7
007c68a8  a2 30 fe eb                                      bl #0x752b38
007c68ac  60 70 84 e5                                      str r7, [r4, #0x60]
007c68b0  04 00 a0 e1                                      mov r0, r4
007c68b4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
007c68b8  34 e4 1c 00 68 34 00 00 9c a0 0f 00              .byte 0x34, 0xe4, 0x1c, 0x00, 0x68, 0x34, 0x00, 0x00, 0x9c, 0xa0, 0x0f, 0x00

; FUNCTION 0x007c68c4, declared_size=648, range_size=648, mode=arm
; class-group: gameswf::default_bitmap_font_entity
; alias: _ZN7gameswf26default_bitmap_font_entityC1EPNS_21bitmap_glyph_providerERKNS_9tu_stringE
; demangled: gameswf::default_bitmap_font_entity::default_bitmap_font_entity(gameswf::bitmap_glyph_provider*, gameswf::tu_string const&)
; decoder-mode: arm
007c68c4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007c68c8  70 62 9f e5                                      ldr r6, [pc, #0x270]
007c68cc  00 40 a0 e1                                      mov r4, r0
007c68d0  02 70 a0 e1                                      mov r7, r2
007c68d4  01 50 a0 e1                                      mov r5, r1
007c68d8  c9 4c fe eb                                      bl #0x759c04
007c68dc  60 22 9f e5                                      ldr r2, [pc, #0x260]
007c68e0  20 30 94 e5                                      ldr r3, [r4, #0x20]
007c68e4  06 60 8f e0                                      add r6, pc, r6
007c68e8  02 20 96 e7                                      ldr r2, [r6, r2]
007c68ec  00 10 e0 e3                                      mvn r1, #0
007c68f0  11 30 d7 e7                                      bfi r3, r1, #0, #0x18
007c68f4  00 80 a0 e3                                      mov r8, #0
007c68f8  23 1c a0 e1                                      lsr r1, r3, #0x18
007c68fc  08 20 82 e2                                      add r2, r2, #8
007c6900  18 10 c0 e7                                      bfi r1, r8, #0, #1
007c6904  01 00 a0 e3                                      mov r0, #1
007c6908  00 20 84 e5                                      str r2, [r4]
007c690c  20 30 84 e5                                      str r3, [r4, #0x20]
007c6910  0c 50 84 e5                                      str r5, [r4, #0xc]
007c6914  23 10 c4 e5                                      strb r1, [r4, #0x23]
007c6918  10 00 c4 e5                                      strb r0, [r4, #0x10]
007c691c  11 80 c4 e5                                      strb r8, [r4, #0x11]
007c6920  24 80 84 e5                                      str r8, [r4, #0x24]
007c6924  2c 80 84 e5                                      str r8, [r4, #0x2c]
007c6928  30 80 84 e5                                      str r8, [r4, #0x30]
007c692c  34 80 84 e5                                      str r8, [r4, #0x34]
007c6930  38 80 c4 e5                                      strb r8, [r4, #0x38]
007c6934  3c 00 84 e2                                      add r0, r4, #0x3c
007c6938  4c 50 84 e2                                      add r5, r4, #0x4c
007c693c  52 be ff eb                                      bl #0x7b628c
007c6940  05 00 a0 e1                                      mov r0, r5
007c6944  50 be ff eb                                      bl #0x7b628c
007c6948  07 10 a0 e1                                      mov r1, r7
007c694c  10 00 84 e2                                      add r0, r4, #0x10
007c6950  60 80 84 e5                                      str r8, [r4, #0x60]
007c6954  5c 80 84 e5                                      str r8, [r4, #0x5c]
007c6958  7c 31 fe eb                                      bl #0x752f50
007c695c  fe 35 a0 e3                                      mov r3, #0x3f800000
007c6960  28 30 84 e5                                      str r3, [r4, #0x28]
007c6964  d0 30 d7 e1                                      ldrsb r3, [r7]
007c6968  00 10 a0 e3                                      mov r1, #0
007c696c  28 00 a0 e3                                      mov r0, #0x28
007c6970  01 00 73 e3                                      cmn r3, #1
007c6974  01 70 87 12                                      addne r7, r7, #1
007c6978  0c 70 97 05                                      ldreq r7, [r7, #0xc]
007c697c  89 30 fe eb                                      bl #0x752ba8
007c6980  c0 21 9f e5                                      ldr r2, [pc, #0x1c0]
007c6984  00 60 a0 e1                                      mov r6, r0
007c6988  07 10 a0 e1                                      mov r1, r7
007c698c  02 20 8f e0                                      add r2, pc, r2
007c6990  cc bf ff eb                                      bl #0x7b68c8
007c6994  60 60 84 e5                                      str r6, [r4, #0x60]
007c6998  00 70 96 e5                                      ldr r7, [r6]
007c699c  00 00 57 e3                                      cmp r7, #0
007c69a0  5e 00 00 0a                                      beq #0x7c6b20
007c69a4  07 00 a0 e1                                      mov r0, r7
007c69a8  0f e0 a0 e1                                      mov lr, pc
007c69ac  14 f0 96 e5                                      ldr pc, [r6, #0x14]
007c69b0  60 30 94 e5                                      ldr r3, [r4, #0x60]
007c69b4  00 00 93 e5                                      ldr r0, [r3]
007c69b8  0f e0 a0 e1                                      mov lr, pc
007c69bc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
007c69c0  60 30 94 e5                                      ldr r3, [r4, #0x60]
007c69c4  00 60 a0 e1                                      mov r6, r0
007c69c8  00 00 a0 e3                                      mov r0, #0
007c69cc  00 10 93 e5                                      ldr r1, [r3]
007c69d0  0f e0 a0 e1                                      mov lr, pc
007c69d4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
007c69d8  05 00 a0 e1                                      mov r0, r5
007c69dc  28 10 a0 e3                                      mov r1, #0x28
007c69e0  1d 51 fe eb                                      bl #0x75ae5c
007c69e4  00 20 e0 e3                                      mvn r2, #0
007c69e8  05 10 a0 e1                                      mov r1, r5
007c69ec  60 00 94 e5                                      ldr r0, [r4, #0x60]
007c69f0  22 c0 ff eb                                      bl #0x7b6a80
007c69f4  54 70 94 e5                                      ldr r7, [r4, #0x54]
007c69f8  1d 30 d7 e5                                      ldrb r3, [r7, #0x1d]
007c69fc  1c 10 d7 e5                                      ldrb r1, [r7, #0x1c]
007c6a00  1f 20 d7 e5                                      ldrb r2, [r7, #0x1f]
007c6a04  1e 00 d7 e5                                      ldrb r0, [r7, #0x1e]
007c6a08  03 38 a0 e1                                      lsl r3, r3, #0x10
007c6a0c  01 3c 83 e1                                      orr r3, r3, r1, lsl #24
007c6a10  02 30 83 e1                                      orr r3, r3, r2
007c6a14  00 04 83 e1                                      orr r0, r3, r0, lsl #8
007c6a18  30 1e ed eb                                      bl #0x30e2e0
007c6a1c  41 14 a0 e3                                      mov r1, #0x41000000
007c6a20  0a 16 81 e2                                      add r1, r1, #0xa00000
007c6a24  00 80 a0 e1                                      mov r8, r0
007c6a28  cf 20 ed eb                                      bl #0x30ed6c
007c6a2c  00 10 a0 e1                                      mov r1, r0
007c6a30  11 03 a0 e3                                      mov r0, #0x44000000
007c6a34  02 05 80 e2                                      add r0, r0, #0x800000
007c6a38  95 20 ed eb                                      bl #0x30ec94
007c6a3c  00 10 a0 e1                                      mov r1, r0
007c6a40  08 00 a0 e1                                      mov r0, r8
007c6a44  c8 20 ed eb                                      bl #0x30ed6c
007c6a48  28 00 84 e5                                      str r0, [r4, #0x28]
007c6a4c  0d 10 d7 e5                                      ldrb r1, [r7, #0xd]
007c6a50  0c 00 d7 e5                                      ldrb r0, [r7, #0xc]
007c6a54  0f 20 d7 e5                                      ldrb r2, [r7, #0xf]
007c6a58  0e 30 d7 e5                                      ldrb r3, [r7, #0xe]
007c6a5c  01 18 a0 e1                                      lsl r1, r1, #0x10
007c6a60  00 1c 81 e1                                      orr r1, r1, r0, lsl #24
007c6a64  02 10 81 e1                                      orr r1, r1, r2
007c6a68  03 14 81 e1                                      orr r1, r1, r3, lsl #8
007c6a6c  0b 10 81 e2                                      add r1, r1, #0xb
007c6a70  01 11 a0 e1                                      lsl r1, r1, #2
007c6a74  05 00 a0 e1                                      mov r0, r5
007c6a78  f7 50 fe eb                                      bl #0x75ae5c
007c6a7c  60 30 94 e5                                      ldr r3, [r4, #0x60]
007c6a80  00 00 a0 e3                                      mov r0, #0
007c6a84  00 10 93 e5                                      ldr r1, [r3]
007c6a88  0f e0 a0 e1                                      mov lr, pc
007c6a8c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
007c6a90  05 10 a0 e1                                      mov r1, r5
007c6a94  60 00 94 e5                                      ldr r0, [r4, #0x60]
007c6a98  00 20 e0 e3                                      mvn r2, #0
007c6a9c  f7 bf ff eb                                      bl #0x7b6a80
007c6aa0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
007c6aa4  08 30 d3 e5                                      ldrb r3, [r3, #8]
007c6aa8  00 00 53 e3                                      cmp r3, #0
007c6aac  01 00 00 1a                                      bne #0x7c6ab8
007c6ab0  04 00 a0 e1                                      mov r0, r4
007c6ab4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007c6ab8  00 10 a0 e3                                      mov r1, #0
007c6abc  10 00 a0 e3                                      mov r0, #0x10
007c6ac0  38 30 fe eb                                      bl #0x752ba8
007c6ac4  00 50 a0 e1                                      mov r5, r0
007c6ac8  ef bd ff eb                                      bl #0x7b628c
007c6acc  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
007c6ad0  05 00 a0 e1                                      mov r0, r5
007c6ad4  5c 50 84 e5                                      str r5, [r4, #0x5c]
007c6ad8  06 10 61 e0                                      rsb r1, r1, r6
007c6adc  de 50 fe eb                                      bl #0x75ae5c
007c6ae0  60 00 94 e5                                      ldr r0, [r4, #0x60]
007c6ae4  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
007c6ae8  00 20 e0 e3                                      mvn r2, #0
007c6aec  e3 bf ff eb                                      bl #0x7b6a80
007c6af0  60 50 94 e5                                      ldr r5, [r4, #0x60]
007c6af4  00 00 55 e3                                      cmp r5, #0
007c6af8  04 00 00 0a                                      beq #0x7c6b10
007c6afc  05 00 a0 e1                                      mov r0, r5
007c6b00  b8 bf ff eb                                      bl #0x7b69e8
007c6b04  05 00 a0 e1                                      mov r0, r5
007c6b08  00 10 a0 e3                                      mov r1, #0
007c6b0c  09 30 fe eb                                      bl #0x752b38
007c6b10  00 30 a0 e3                                      mov r3, #0
007c6b14  60 30 84 e5                                      str r3, [r4, #0x60]
007c6b18  04 00 a0 e1                                      mov r0, r4
007c6b1c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007c6b20  06 00 a0 e1                                      mov r0, r6
007c6b24  af bf ff eb                                      bl #0x7b69e8
007c6b28  06 00 a0 e1                                      mov r0, r6
007c6b2c  07 10 a0 e1                                      mov r1, r7
007c6b30  00 30 fe eb                                      bl #0x752b38
007c6b34  60 70 84 e5                                      str r7, [r4, #0x60]
007c6b38  04 00 a0 e1                                      mov r0, r4
007c6b3c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
007c6b40  ac e1 1c 00 68 34 00 00 14 9e 0f 00              .byte 0xac, 0xe1, 0x1c, 0x00, 0x68, 0x34, 0x00, 0x00, 0x14, 0x9e, 0x0f, 0x00
