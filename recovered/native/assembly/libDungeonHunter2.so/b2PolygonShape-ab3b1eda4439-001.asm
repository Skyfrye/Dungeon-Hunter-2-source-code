; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007e4670, declared_size=376, range_size=376, mode=arm
; class-group: b2PolygonShape
; alias: _ZNK14b2PolygonShape9TestPointERK7b2XFormRK6b2Vec2
; demangled: b2PolygonShape::TestPoint(b2XForm const&, b2Vec2 const&) const
; decoder-mode: arm
007e4670  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007e4674  18 41 90 e5                                      ldr r4, [r0, #0x118]
007e4678  00 50 a0 e1                                      mov r5, r0
007e467c  04 b0 92 e5                                      ldr fp, [r2, #4]
007e4680  00 00 54 e3                                      cmp r4, #0
007e4684  00 00 92 e5                                      ldr r0, [r2]
007e4688  0c d0 4d e2                                      sub sp, sp, #0xc
007e468c  14 30 91 e5                                      ldr r3, [r1, #0x14]
007e4690  00 20 91 e5                                      ldr r2, [r1]
007e4694  04 90 91 e5                                      ldr sb, [r1, #4]
007e4698  08 a0 91 e5                                      ldr sl, [r1, #8]
007e469c  0c 80 91 e5                                      ldr r8, [r1, #0xc]
007e46a0  10 70 91 e5                                      ldr r7, [r1, #0x10]
007e46a4  4a 00 00 da                                      ble #0x7e47d4
007e46a8  02 10 a0 e1                                      mov r1, r2
007e46ac  04 30 8d e5                                      str r3, [sp, #4]
007e46b0  3d a7 ec eb                                      bl #0x30e3ac
007e46b4  09 10 a0 e1                                      mov r1, sb
007e46b8  00 60 a0 e1                                      mov r6, r0
007e46bc  0b 00 a0 e1                                      mov r0, fp
007e46c0  39 a7 ec eb                                      bl #0x30e3ac
007e46c4  0a 10 a0 e1                                      mov r1, sl
007e46c8  00 90 a0 e1                                      mov sb, r0
007e46cc  06 00 a0 e1                                      mov r0, r6
007e46d0  a5 a9 ec eb                                      bl #0x30ed6c
007e46d4  08 10 a0 e1                                      mov r1, r8
007e46d8  00 a0 a0 e1                                      mov sl, r0
007e46dc  09 00 a0 e1                                      mov r0, sb
007e46e0  a1 a9 ec eb                                      bl #0x30ed6c
007e46e4  00 10 a0 e1                                      mov r1, r0
007e46e8  0a 00 a0 e1                                      mov r0, sl
007e46ec  2c a9 ec eb                                      bl #0x30eba4
007e46f0  07 10 a0 e1                                      mov r1, r7
007e46f4  00 80 a0 e1                                      mov r8, r0
007e46f8  06 00 a0 e1                                      mov r0, r6
007e46fc  9a a9 ec eb                                      bl #0x30ed6c
007e4700  04 30 9d e5                                      ldr r3, [sp, #4]
007e4704  00 60 a0 e1                                      mov r6, r0
007e4708  09 00 a0 e1                                      mov r0, sb
007e470c  03 10 a0 e1                                      mov r1, r3
007e4710  95 a9 ec eb                                      bl #0x30ed6c
007e4714  00 10 a0 e1                                      mov r1, r0
007e4718  06 00 a0 e1                                      mov r0, r6
007e471c  20 a9 ec eb                                      bl #0x30eba4
007e4720  58 10 95 e5                                      ldr r1, [r5, #0x58]
007e4724  00 a0 a0 e1                                      mov sl, r0
007e4728  08 00 a0 e1                                      mov r0, r8
007e472c  1e a7 ec eb                                      bl #0x30e3ac
007e4730  98 10 95 e5                                      ldr r1, [r5, #0x98]
007e4734  8c a9 ec eb                                      bl #0x30ed6c
007e4738  5c 10 95 e5                                      ldr r1, [r5, #0x5c]
007e473c  00 60 a0 e1                                      mov r6, r0
007e4740  0a 00 a0 e1                                      mov r0, sl
007e4744  18 a7 ec eb                                      bl #0x30e3ac
007e4748  9c 10 95 e5                                      ldr r1, [r5, #0x9c]
007e474c  86 a9 ec eb                                      bl #0x30ed6c
007e4750  00 10 a0 e1                                      mov r1, r0
007e4754  06 00 a0 e1                                      mov r0, r6
007e4758  11 a9 ec eb                                      bl #0x30eba4
007e475c  00 10 a0 e3                                      mov r1, #0
007e4760  e4 a6 ec eb                                      bl #0x30e2f8
007e4764  00 60 50 e2                                      subs r6, r0, #0
007e4768  15 00 00 0a                                      beq #0x7e47c4
007e476c  1b 00 00 ea                                      b #0x7e47e0
007e4770  60 10 95 e5                                      ldr r1, [r5, #0x60]
007e4774  0c a7 ec eb                                      bl #0x30e3ac
007e4778  a0 10 95 e5                                      ldr r1, [r5, #0xa0]
007e477c  7a a9 ec eb                                      bl #0x30ed6c
007e4780  64 10 95 e5                                      ldr r1, [r5, #0x64]
007e4784  00 70 a0 e1                                      mov r7, r0
007e4788  0a 00 a0 e1                                      mov r0, sl
007e478c  06 a7 ec eb                                      bl #0x30e3ac
007e4790  a4 10 95 e5                                      ldr r1, [r5, #0xa4]
007e4794  74 a9 ec eb                                      bl #0x30ed6c
007e4798  00 10 a0 e1                                      mov r1, r0
007e479c  07 00 a0 e1                                      mov r0, r7
007e47a0  ff a8 ec eb                                      bl #0x30eba4
007e47a4  00 10 a0 e3                                      mov r1, #0
007e47a8  d2 a6 ec eb                                      bl #0x30e2f8
007e47ac  00 00 50 e3                                      cmp r0, #0
007e47b0  00 30 a0 e3                                      mov r3, #0
007e47b4  01 30 a0 13                                      movne r3, #1
007e47b8  ff 00 13 e3                                      tst r3, #0xff
007e47bc  08 50 85 e2                                      add r5, r5, #8
007e47c0  06 00 00 1a                                      bne #0x7e47e0
007e47c4  01 60 86 e2                                      add r6, r6, #1
007e47c8  04 00 56 e1                                      cmp r6, r4
007e47cc  08 00 a0 e1                                      mov r0, r8
007e47d0  e6 ff ff 1a                                      bne #0x7e4770
007e47d4  01 00 a0 e3                                      mov r0, #1
007e47d8  0c d0 8d e2                                      add sp, sp, #0xc
007e47dc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007e47e0  00 00 a0 e3                                      mov r0, #0
007e47e4  fb ff ff ea                                      b #0x7e47d8

; FUNCTION 0x007e47e8, declared_size=876, range_size=876, mode=arm
; class-group: b2PolygonShape
; alias: _ZNK14b2PolygonShape11TestSegmentERK7b2XFormPfP6b2Vec2RK9b2Segmentf
; demangled: b2PolygonShape::TestSegment(b2XForm const&, float*, b2Vec2*, b2Segment const&, float) const
; decoder-mode: arm
007e47e8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007e47ec  34 d0 4d e2                                      sub sp, sp, #0x34
007e47f0  1c 10 8d e5                                      str r1, [sp, #0x1c]
007e47f4  00 c0 91 e5                                      ldr ip, [r1]
007e47f8  58 40 9d e5                                      ldr r4, [sp, #0x58]
007e47fc  24 00 8d e5                                      str r0, [sp, #0x24]
007e4800  0c 10 a0 e1                                      mov r1, ip
007e4804  00 00 94 e5                                      ldr r0, [r4]
007e4808  08 c0 8d e5                                      str ip, [sp, #8]
007e480c  28 30 8d e5                                      str r3, [sp, #0x28]
007e4810  2c 20 8d e5                                      str r2, [sp, #0x2c]
007e4814  e4 a6 ec eb                                      bl #0x30e3ac
007e4818  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007e481c  00 a0 a0 e1                                      mov sl, r0
007e4820  04 00 94 e5                                      ldr r0, [r4, #4]
007e4824  04 80 91 e5                                      ldr r8, [r1, #4]
007e4828  08 10 a0 e1                                      mov r1, r8
007e482c  de a6 ec eb                                      bl #0x30e3ac
007e4830  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
007e4834  00 50 a0 e1                                      mov r5, r0
007e4838  0a 00 a0 e1                                      mov r0, sl
007e483c  08 70 92 e5                                      ldr r7, [r2, #8]
007e4840  0c 60 92 e5                                      ldr r6, [r2, #0xc]
007e4844  07 10 a0 e1                                      mov r1, r7
007e4848  47 a9 ec eb                                      bl #0x30ed6c
007e484c  06 10 a0 e1                                      mov r1, r6
007e4850  00 90 a0 e1                                      mov sb, r0
007e4854  05 00 a0 e1                                      mov r0, r5
007e4858  43 a9 ec eb                                      bl #0x30ed6c
007e485c  00 10 a0 e1                                      mov r1, r0
007e4860  09 00 a0 e1                                      mov r0, sb
007e4864  ce a8 ec eb                                      bl #0x30eba4
007e4868  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007e486c  0c 00 8d e5                                      str r0, [sp, #0xc]
007e4870  0a 00 a0 e1                                      mov r0, sl
007e4874  10 30 91 e5                                      ldr r3, [r1, #0x10]
007e4878  14 90 91 e5                                      ldr sb, [r1, #0x14]
007e487c  03 10 a0 e1                                      mov r1, r3
007e4880  04 30 8d e5                                      str r3, [sp, #4]
007e4884  38 a9 ec eb                                      bl #0x30ed6c
007e4888  09 10 a0 e1                                      mov r1, sb
007e488c  00 a0 a0 e1                                      mov sl, r0
007e4890  05 00 a0 e1                                      mov r0, r5
007e4894  34 a9 ec eb                                      bl #0x30ed6c
007e4898  00 10 a0 e1                                      mov r1, r0
007e489c  0a 00 a0 e1                                      mov r0, sl
007e48a0  bf a8 ec eb                                      bl #0x30eba4
007e48a4  08 c0 9d e5                                      ldr ip, [sp, #8]
007e48a8  00 b0 a0 e1                                      mov fp, r0
007e48ac  08 00 94 e5                                      ldr r0, [r4, #8]
007e48b0  0c 10 a0 e1                                      mov r1, ip
007e48b4  bc a6 ec eb                                      bl #0x30e3ac
007e48b8  08 10 a0 e1                                      mov r1, r8
007e48bc  00 50 a0 e1                                      mov r5, r0
007e48c0  0c 00 94 e5                                      ldr r0, [r4, #0xc]
007e48c4  b8 a6 ec eb                                      bl #0x30e3ac
007e48c8  05 10 a0 e1                                      mov r1, r5
007e48cc  00 40 a0 e1                                      mov r4, r0
007e48d0  07 00 a0 e1                                      mov r0, r7
007e48d4  24 a9 ec eb                                      bl #0x30ed6c
007e48d8  04 10 a0 e1                                      mov r1, r4
007e48dc  00 70 a0 e1                                      mov r7, r0
007e48e0  06 00 a0 e1                                      mov r0, r6
007e48e4  20 a9 ec eb                                      bl #0x30ed6c
007e48e8  00 10 a0 e1                                      mov r1, r0
007e48ec  07 00 a0 e1                                      mov r0, r7
007e48f0  ab a8 ec eb                                      bl #0x30eba4
007e48f4  04 30 9d e5                                      ldr r3, [sp, #4]
007e48f8  05 10 a0 e1                                      mov r1, r5
007e48fc  00 60 a0 e1                                      mov r6, r0
007e4900  03 00 a0 e1                                      mov r0, r3
007e4904  18 a9 ec eb                                      bl #0x30ed6c
007e4908  04 10 a0 e1                                      mov r1, r4
007e490c  00 50 a0 e1                                      mov r5, r0
007e4910  09 00 a0 e1                                      mov r0, sb
007e4914  14 a9 ec eb                                      bl #0x30ed6c
007e4918  00 10 a0 e1                                      mov r1, r0
007e491c  05 00 a0 e1                                      mov r0, r5
007e4920  9f a8 ec eb                                      bl #0x30eba4
007e4924  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007e4928  00 40 a0 e1                                      mov r4, r0
007e492c  06 00 a0 e1                                      mov r0, r6
007e4930  9d a6 ec eb                                      bl #0x30e3ac
007e4934  0b 10 a0 e1                                      mov r1, fp
007e4938  14 00 8d e5                                      str r0, [sp, #0x14]
007e493c  04 00 a0 e1                                      mov r0, r4
007e4940  99 a6 ec eb                                      bl #0x30e3ac
007e4944  24 20 9d e5                                      ldr r2, [sp, #0x24]
007e4948  18 00 8d e5                                      str r0, [sp, #0x18]
007e494c  18 21 92 e5                                      ldr r2, [r2, #0x118]
007e4950  00 00 52 e3                                      cmp r2, #0
007e4954  10 20 8d e5                                      str r2, [sp, #0x10]
007e4958  52 00 00 da                                      ble #0x7e4aa8
007e495c  00 30 e0 e3                                      mvn r3, #0
007e4960  00 80 a0 e3                                      mov r8, #0
007e4964  5c 90 9d e5                                      ldr sb, [sp, #0x5c]
007e4968  24 40 9d e5                                      ldr r4, [sp, #0x24]
007e496c  00 50 a0 e3                                      mov r5, #0
007e4970  20 30 8d e5                                      str r3, [sp, #0x20]
007e4974  13 00 00 ea                                      b #0x7e49c8
007e4978  fb a8 ec eb                                      bl #0x30ed6c
007e497c  0a 10 a0 e1                                      mov r1, sl
007e4980  5c a6 ec eb                                      bl #0x30e2f8
007e4984  00 00 50 e3                                      cmp r0, #0
007e4988  30 00 00 0a                                      beq #0x7e4a50
007e498c  0a 00 a0 e1                                      mov r0, sl
007e4990  06 10 a0 e1                                      mov r1, r6
007e4994  be a8 ec eb                                      bl #0x30ec94
007e4998  20 50 8d e5                                      str r5, [sp, #0x20]
007e499c  00 80 a0 e1                                      mov r8, r0
007e49a0  09 00 a0 e1                                      mov r0, sb
007e49a4  08 10 a0 e1                                      mov r1, r8
007e49a8  57 a7 ec eb                                      bl #0x30e70c
007e49ac  00 00 50 e3                                      cmp r0, #0
007e49b0  01 50 85 e2                                      add r5, r5, #1
007e49b4  3b 00 00 1a                                      bne #0x7e4aa8
007e49b8  10 10 9d e5                                      ldr r1, [sp, #0x10]
007e49bc  08 40 84 e2                                      add r4, r4, #8
007e49c0  01 00 55 e1                                      cmp r5, r1
007e49c4  3a 00 00 0a                                      beq #0x7e4ab4
007e49c8  98 70 94 e5                                      ldr r7, [r4, #0x98]
007e49cc  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007e49d0  58 00 94 e5                                      ldr r0, [r4, #0x58]
007e49d4  74 a6 ec eb                                      bl #0x30e3ac
007e49d8  07 10 a0 e1                                      mov r1, r7
007e49dc  e2 a8 ec eb                                      bl #0x30ed6c
007e49e0  9c 60 94 e5                                      ldr r6, [r4, #0x9c]
007e49e4  00 a0 a0 e1                                      mov sl, r0
007e49e8  0b 10 a0 e1                                      mov r1, fp
007e49ec  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
007e49f0  6d a6 ec eb                                      bl #0x30e3ac
007e49f4  06 10 a0 e1                                      mov r1, r6
007e49f8  db a8 ec eb                                      bl #0x30ed6c
007e49fc  00 10 a0 e1                                      mov r1, r0
007e4a00  0a 00 a0 e1                                      mov r0, sl
007e4a04  66 a8 ec eb                                      bl #0x30eba4
007e4a08  07 10 a0 e1                                      mov r1, r7
007e4a0c  00 a0 a0 e1                                      mov sl, r0
007e4a10  14 00 9d e5                                      ldr r0, [sp, #0x14]
007e4a14  d4 a8 ec eb                                      bl #0x30ed6c
007e4a18  06 10 a0 e1                                      mov r1, r6
007e4a1c  00 70 a0 e1                                      mov r7, r0
007e4a20  18 00 9d e5                                      ldr r0, [sp, #0x18]
007e4a24  d0 a8 ec eb                                      bl #0x30ed6c
007e4a28  00 10 a0 e1                                      mov r1, r0
007e4a2c  07 00 a0 e1                                      mov r0, r7
007e4a30  5b a8 ec eb                                      bl #0x30eba4
007e4a34  00 10 a0 e3                                      mov r1, #0
007e4a38  00 60 a0 e1                                      mov r6, r0
007e4a3c  32 a7 ec eb                                      bl #0x30e70c
007e4a40  00 00 50 e3                                      cmp r0, #0
007e4a44  06 10 a0 e1                                      mov r1, r6
007e4a48  08 00 a0 e1                                      mov r0, r8
007e4a4c  c9 ff ff 1a                                      bne #0x7e4978
007e4a50  00 10 a0 e3                                      mov r1, #0
007e4a54  06 00 a0 e1                                      mov r0, r6
007e4a58  26 a6 ec eb                                      bl #0x30e2f8
007e4a5c  00 00 50 e3                                      cmp r0, #0
007e4a60  06 10 a0 e1                                      mov r1, r6
007e4a64  09 00 a0 e1                                      mov r0, sb
007e4a68  cc ff ff 0a                                      beq #0x7e49a0
007e4a6c  be a8 ec eb                                      bl #0x30ed6c
007e4a70  0a 10 a0 e1                                      mov r1, sl
007e4a74  1f a6 ec eb                                      bl #0x30e2f8
007e4a78  00 00 50 e3                                      cmp r0, #0
007e4a7c  c7 ff ff 0a                                      beq #0x7e49a0
007e4a80  06 10 a0 e1                                      mov r1, r6
007e4a84  0a 00 a0 e1                                      mov r0, sl
007e4a88  81 a8 ec eb                                      bl #0x30ec94
007e4a8c  00 90 a0 e1                                      mov sb, r0
007e4a90  09 00 a0 e1                                      mov r0, sb
007e4a94  08 10 a0 e1                                      mov r1, r8
007e4a98  1b a7 ec eb                                      bl #0x30e70c
007e4a9c  00 00 50 e3                                      cmp r0, #0
007e4aa0  01 50 85 e2                                      add r5, r5, #1
007e4aa4  c3 ff ff 0a                                      beq #0x7e49b8
007e4aa8  00 00 a0 e3                                      mov r0, #0
007e4aac  34 d0 8d e2                                      add sp, sp, #0x34
007e4ab0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007e4ab4  20 20 9d e5                                      ldr r2, [sp, #0x20]
007e4ab8  01 00 72 e3                                      cmn r2, #1
007e4abc  f9 ff ff 0a                                      beq #0x7e4aa8
007e4ac0  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
007e4ac4  00 80 83 e5                                      str r8, [r3]
007e4ac8  24 10 9d e5                                      ldr r1, [sp, #0x24]
007e4acc  13 30 82 e2                                      add r3, r2, #0x13
007e4ad0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
007e4ad4  83 51 91 e7                                      ldr r5, [r1, r3, lsl #3]
007e4ad8  83 31 81 e0                                      add r3, r1, r3, lsl #3
007e4adc  08 10 92 e5                                      ldr r1, [r2, #8]
007e4ae0  05 00 a0 e1                                      mov r0, r5
007e4ae4  04 40 93 e5                                      ldr r4, [r3, #4]
007e4ae8  9f a8 ec eb                                      bl #0x30ed6c
007e4aec  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
007e4af0  00 60 a0 e1                                      mov r6, r0
007e4af4  04 00 a0 e1                                      mov r0, r4
007e4af8  10 10 93 e5                                      ldr r1, [r3, #0x10]
007e4afc  9a a8 ec eb                                      bl #0x30ed6c
007e4b00  00 10 a0 e1                                      mov r1, r0
007e4b04  06 00 a0 e1                                      mov r0, r6
007e4b08  25 a8 ec eb                                      bl #0x30eba4
007e4b0c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
007e4b10  00 60 a0 e1                                      mov r6, r0
007e4b14  05 00 a0 e1                                      mov r0, r5
007e4b18  0c 10 92 e5                                      ldr r1, [r2, #0xc]
007e4b1c  92 a8 ec eb                                      bl #0x30ed6c
007e4b20  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
007e4b24  00 50 a0 e1                                      mov r5, r0
007e4b28  04 00 a0 e1                                      mov r0, r4
007e4b2c  14 10 93 e5                                      ldr r1, [r3, #0x14]
007e4b30  8d a8 ec eb                                      bl #0x30ed6c
007e4b34  00 10 a0 e1                                      mov r1, r0
007e4b38  05 00 a0 e1                                      mov r0, r5
007e4b3c  18 a8 ec eb                                      bl #0x30eba4
007e4b40  28 10 9d e5                                      ldr r1, [sp, #0x28]
007e4b44  04 00 81 e5                                      str r0, [r1, #4]
007e4b48  00 60 81 e5                                      str r6, [r1]
007e4b4c  01 00 a0 e3                                      mov r0, #1
007e4b50  d5 ff ff ea                                      b #0x7e4aac

; FUNCTION 0x007e4b54, declared_size=628, range_size=628, mode=arm
; class-group: b2PolygonShape
; alias: _ZNK14b2PolygonShape11ComputeAABBEP6b2AABBRK7b2XForm
; demangled: b2PolygonShape::ComputeAABB(b2AABB*, b2XForm const&) const
; decoder-mode: arm
007e4b54  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007e4b58  02 50 a0 e1                                      mov r5, r2
007e4b5c  08 70 92 e5                                      ldr r7, [r2, #8]
007e4b60  10 20 92 e5                                      ldr r2, [r2, #0x10]
007e4b64  38 80 90 e5                                      ldr r8, [r0, #0x38]
007e4b68  14 d0 4d e2                                      sub sp, sp, #0x14
007e4b6c  0c 20 8d e5                                      str r2, [sp, #0xc]
007e4b70  00 40 a0 e1                                      mov r4, r0
007e4b74  3c a0 90 e5                                      ldr sl, [r0, #0x3c]
007e4b78  01 60 a0 e1                                      mov r6, r1
007e4b7c  07 00 a0 e1                                      mov r0, r7
007e4b80  08 10 a0 e1                                      mov r1, r8
007e4b84  78 a8 ec eb                                      bl #0x30ed6c
007e4b88  0a 10 a0 e1                                      mov r1, sl
007e4b8c  00 90 a0 e1                                      mov sb, r0
007e4b90  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007e4b94  74 a8 ec eb                                      bl #0x30ed6c
007e4b98  00 10 a0 e1                                      mov r1, r0
007e4b9c  09 00 a0 e1                                      mov r0, sb
007e4ba0  ff a7 ec eb                                      bl #0x30eba4
007e4ba4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
007e4ba8  00 b0 a0 e1                                      mov fp, r0
007e4bac  08 00 a0 e1                                      mov r0, r8
007e4bb0  08 30 8d e5                                      str r3, [sp, #8]
007e4bb4  14 20 95 e5                                      ldr r2, [r5, #0x14]
007e4bb8  03 10 a0 e1                                      mov r1, r3
007e4bbc  04 20 8d e5                                      str r2, [sp, #4]
007e4bc0  69 a8 ec eb                                      bl #0x30ed6c
007e4bc4  04 10 9d e5                                      ldr r1, [sp, #4]
007e4bc8  00 80 a0 e1                                      mov r8, r0
007e4bcc  0a 00 a0 e1                                      mov r0, sl
007e4bd0  65 a8 ec eb                                      bl #0x30ed6c
007e4bd4  00 10 a0 e1                                      mov r1, r0
007e4bd8  08 00 a0 e1                                      mov r0, r8
007e4bdc  f0 a7 ec eb                                      bl #0x30eba4
007e4be0  40 30 94 e5                                      ldr r3, [r4, #0x40]
007e4be4  00 a0 a0 e1                                      mov sl, r0
007e4be8  07 00 a0 e1                                      mov r0, r7
007e4bec  03 10 a0 e1                                      mov r1, r3
007e4bf0  00 30 8d e5                                      str r3, [sp]
007e4bf4  5c a8 ec eb                                      bl #0x30ed6c
007e4bf8  44 10 94 e5                                      ldr r1, [r4, #0x44]
007e4bfc  00 80 a0 e1                                      mov r8, r0
007e4c00  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007e4c04  58 a8 ec eb                                      bl #0x30ed6c
007e4c08  00 10 a0 e1                                      mov r1, r0
007e4c0c  08 00 a0 e1                                      mov r0, r8
007e4c10  e3 a7 ec eb                                      bl #0x30eba4
007e4c14  00 30 9d e5                                      ldr r3, [sp]
007e4c18  00 90 a0 e1                                      mov sb, r0
007e4c1c  08 00 9d e5                                      ldr r0, [sp, #8]
007e4c20  03 10 a0 e1                                      mov r1, r3
007e4c24  50 a8 ec eb                                      bl #0x30ed6c
007e4c28  44 10 94 e5                                      ldr r1, [r4, #0x44]
007e4c2c  00 80 a0 e1                                      mov r8, r0
007e4c30  04 00 9d e5                                      ldr r0, [sp, #4]
007e4c34  4c a8 ec eb                                      bl #0x30ed6c
007e4c38  00 10 a0 e1                                      mov r1, r0
007e4c3c  08 00 a0 e1                                      mov r0, r8
007e4c40  d7 a7 ec eb                                      bl #0x30eba4
007e4c44  00 10 a0 e3                                      mov r1, #0
007e4c48  00 80 a0 e1                                      mov r8, r0
007e4c4c  0b 00 a0 e1                                      mov r0, fp
007e4c50  a8 a5 ec eb                                      bl #0x30e2f8
007e4c54  00 00 50 e3                                      cmp r0, #0
007e4c58  0b 30 a0 01                                      moveq r3, fp
007e4c5c  02 31 83 02                                      addeq r3, r3, #0x80000000
007e4c60  0a 00 a0 e1                                      mov r0, sl
007e4c64  00 10 a0 e3                                      mov r1, #0
007e4c68  03 b0 a0 01                                      moveq fp, r3
007e4c6c  a1 a5 ec eb                                      bl #0x30e2f8
007e4c70  00 10 a0 e3                                      mov r1, #0
007e4c74  00 00 50 e3                                      cmp r0, #0
007e4c78  09 00 a0 e1                                      mov r0, sb
007e4c7c  02 a1 8a 02                                      addeq sl, sl, #0x80000000
007e4c80  9c a5 ec eb                                      bl #0x30e2f8
007e4c84  00 10 a0 e3                                      mov r1, #0
007e4c88  00 00 50 e3                                      cmp r0, #0
007e4c8c  08 00 a0 e1                                      mov r0, r8
007e4c90  02 91 89 02                                      addeq sb, sb, #0x80000000
007e4c94  97 a5 ec eb                                      bl #0x30e2f8
007e4c98  50 30 94 e5                                      ldr r3, [r4, #0x50]
007e4c9c  00 00 50 e3                                      cmp r0, #0
007e4ca0  0b 00 a0 e1                                      mov r0, fp
007e4ca4  03 10 a0 e1                                      mov r1, r3
007e4ca8  02 81 88 02                                      addeq r8, r8, #0x80000000
007e4cac  00 30 8d e5                                      str r3, [sp]
007e4cb0  2d a8 ec eb                                      bl #0x30ed6c
007e4cb4  54 10 94 e5                                      ldr r1, [r4, #0x54]
007e4cb8  00 b0 a0 e1                                      mov fp, r0
007e4cbc  09 00 a0 e1                                      mov r0, sb
007e4cc0  29 a8 ec eb                                      bl #0x30ed6c
007e4cc4  00 10 a0 e1                                      mov r1, r0
007e4cc8  0b 00 a0 e1                                      mov r0, fp
007e4ccc  b4 a7 ec eb                                      bl #0x30eba4
007e4cd0  00 30 9d e5                                      ldr r3, [sp]
007e4cd4  00 90 a0 e1                                      mov sb, r0
007e4cd8  0a 00 a0 e1                                      mov r0, sl
007e4cdc  03 10 a0 e1                                      mov r1, r3
007e4ce0  21 a8 ec eb                                      bl #0x30ed6c
007e4ce4  54 10 94 e5                                      ldr r1, [r4, #0x54]
007e4ce8  00 a0 a0 e1                                      mov sl, r0
007e4cec  08 00 a0 e1                                      mov r0, r8
007e4cf0  1d a8 ec eb                                      bl #0x30ed6c
007e4cf4  00 10 a0 e1                                      mov r1, r0
007e4cf8  0a 00 a0 e1                                      mov r0, sl
007e4cfc  a8 a7 ec eb                                      bl #0x30eba4
007e4d00  48 80 94 e5                                      ldr r8, [r4, #0x48]
007e4d04  00 a0 a0 e1                                      mov sl, r0
007e4d08  07 00 a0 e1                                      mov r0, r7
007e4d0c  08 10 a0 e1                                      mov r1, r8
007e4d10  15 a8 ec eb                                      bl #0x30ed6c
007e4d14  4c 40 94 e5                                      ldr r4, [r4, #0x4c]
007e4d18  00 70 a0 e1                                      mov r7, r0
007e4d1c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007e4d20  04 10 a0 e1                                      mov r1, r4
007e4d24  10 a8 ec eb                                      bl #0x30ed6c
007e4d28  00 10 a0 e1                                      mov r1, r0
007e4d2c  07 00 a0 e1                                      mov r0, r7
007e4d30  9b a7 ec eb                                      bl #0x30eba4
007e4d34  08 10 a0 e1                                      mov r1, r8
007e4d38  00 70 a0 e1                                      mov r7, r0
007e4d3c  08 00 9d e5                                      ldr r0, [sp, #8]
007e4d40  09 a8 ec eb                                      bl #0x30ed6c
007e4d44  04 10 a0 e1                                      mov r1, r4
007e4d48  00 80 a0 e1                                      mov r8, r0
007e4d4c  04 00 9d e5                                      ldr r0, [sp, #4]
007e4d50  05 a8 ec eb                                      bl #0x30ed6c
007e4d54  00 10 a0 e1                                      mov r1, r0
007e4d58  08 00 a0 e1                                      mov r0, r8
007e4d5c  90 a7 ec eb                                      bl #0x30eba4
007e4d60  00 10 95 e5                                      ldr r1, [r5]
007e4d64  00 80 a0 e1                                      mov r8, r0
007e4d68  07 00 a0 e1                                      mov r0, r7
007e4d6c  8c a7 ec eb                                      bl #0x30eba4
007e4d70  04 10 95 e5                                      ldr r1, [r5, #4]
007e4d74  00 40 a0 e1                                      mov r4, r0
007e4d78  08 00 a0 e1                                      mov r0, r8
007e4d7c  88 a7 ec eb                                      bl #0x30eba4
007e4d80  0a 10 a0 e1                                      mov r1, sl
007e4d84  00 50 a0 e1                                      mov r5, r0
007e4d88  87 a5 ec eb                                      bl #0x30e3ac
007e4d8c  09 10 a0 e1                                      mov r1, sb
007e4d90  04 00 86 e5                                      str r0, [r6, #4]
007e4d94  04 00 a0 e1                                      mov r0, r4
007e4d98  83 a5 ec eb                                      bl #0x30e3ac
007e4d9c  05 10 a0 e1                                      mov r1, r5
007e4da0  00 00 86 e5                                      str r0, [r6]
007e4da4  0a 00 a0 e1                                      mov r0, sl
007e4da8  7d a7 ec eb                                      bl #0x30eba4
007e4dac  04 10 a0 e1                                      mov r1, r4
007e4db0  0c 00 86 e5                                      str r0, [r6, #0xc]
007e4db4  09 00 a0 e1                                      mov r0, sb
007e4db8  79 a7 ec eb                                      bl #0x30eba4
007e4dbc  08 00 86 e5                                      str r0, [r6, #8]
007e4dc0  14 d0 8d e2                                      add sp, sp, #0x14
007e4dc4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007e4dc8, declared_size=196, range_size=196, mode=arm
; class-group: b2PolygonShape
; alias: _ZNK14b2PolygonShape16ComputeSweptAABBEP6b2AABBRK7b2XFormS4_
; demangled: b2PolygonShape::ComputeSweptAABB(b2AABB*, b2XForm const&, b2XForm const&) const
; decoder-mode: arm
007e4dc8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007e4dcc  20 d0 4d e2                                      sub sp, sp, #0x20
007e4dd0  01 50 a0 e1                                      mov r5, r1
007e4dd4  00 40 a0 e1                                      mov r4, r0
007e4dd8  03 60 a0 e1                                      mov r6, r3
007e4ddc  10 10 8d e2                                      add r1, sp, #0x10
007e4de0  00 30 90 e5                                      ldr r3, [r0]
007e4de4  0f e0 a0 e1                                      mov lr, pc
007e4de8  08 f0 93 e5                                      ldr pc, [r3, #8]
007e4dec  06 20 a0 e1                                      mov r2, r6
007e4df0  00 30 94 e5                                      ldr r3, [r4]
007e4df4  04 00 a0 e1                                      mov r0, r4
007e4df8  0d 10 a0 e1                                      mov r1, sp
007e4dfc  0f e0 a0 e1                                      mov lr, pc
007e4e00  08 f0 93 e5                                      ldr pc, [r3, #8]
007e4e04  10 40 9d e5                                      ldr r4, [sp, #0x10]
007e4e08  00 60 9d e5                                      ldr r6, [sp]
007e4e0c  04 00 a0 e1                                      mov r0, r4
007e4e10  06 10 a0 e1                                      mov r1, r6
007e4e14  3c a6 ec eb                                      bl #0x30e70c
007e4e18  00 00 50 e3                                      cmp r0, #0
007e4e1c  14 70 9d e5                                      ldr r7, [sp, #0x14]
007e4e20  06 40 a0 01                                      moveq r4, r6
007e4e24  04 60 9d e5                                      ldr r6, [sp, #4]
007e4e28  07 00 a0 e1                                      mov r0, r7
007e4e2c  06 10 a0 e1                                      mov r1, r6
007e4e30  35 a6 ec eb                                      bl #0x30e70c
007e4e34  00 00 50 e3                                      cmp r0, #0
007e4e38  08 80 9d e5                                      ldr r8, [sp, #8]
007e4e3c  06 70 a0 01                                      moveq r7, r6
007e4e40  18 60 9d e5                                      ldr r6, [sp, #0x18]
007e4e44  08 10 a0 e1                                      mov r1, r8
007e4e48  04 70 85 e5                                      str r7, [r5, #4]
007e4e4c  00 40 85 e5                                      str r4, [r5]
007e4e50  06 00 a0 e1                                      mov r0, r6
007e4e54  27 a5 ec eb                                      bl #0x30e2f8
007e4e58  1c 40 9d e5                                      ldr r4, [sp, #0x1c]
007e4e5c  0c 70 9d e5                                      ldr r7, [sp, #0xc]
007e4e60  00 00 50 e3                                      cmp r0, #0
007e4e64  04 00 a0 e1                                      mov r0, r4
007e4e68  07 10 a0 e1                                      mov r1, r7
007e4e6c  08 60 a0 01                                      moveq r6, r8
007e4e70  20 a5 ec eb                                      bl #0x30e2f8
007e4e74  00 00 50 e3                                      cmp r0, #0
007e4e78  07 40 a0 01                                      moveq r4, r7
007e4e7c  08 60 85 e5                                      str r6, [r5, #8]
007e4e80  0c 40 85 e5                                      str r4, [r5, #0xc]
007e4e84  20 d0 8d e2                                      add sp, sp, #0x20
007e4e88  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007e4e8c, declared_size=848, range_size=848, mode=arm
; class-group: b2PolygonShape
; alias: _ZNK14b2PolygonShape11ComputeMassEP10b2MassData
; demangled: b2PolygonShape::ComputeMass(b2MassData*) const
; decoder-mode: arm
007e4e8c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007e4e90  2c d0 4d e2                                      sub sp, sp, #0x2c
007e4e94  1c 00 8d e5                                      str r0, [sp, #0x1c]
007e4e98  18 21 90 e5                                      ldr r2, [r0, #0x118]
007e4e9c  20 10 8d e5                                      str r1, [sp, #0x20]
007e4ea0  00 00 52 e3                                      cmp r2, #0
007e4ea4  0c 20 8d e5                                      str r2, [sp, #0xc]
007e4ea8  c6 00 00 da                                      ble #0x7e51c8
007e4eac  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
007e4eb0  1c a0 9d e5                                      ldr sl, [sp, #0x1c]
007e4eb4  00 b0 a0 e3                                      mov fp, #0
007e4eb8  58 30 83 e2                                      add r3, r3, #0x58
007e4ebc  24 30 8d e5                                      str r3, [sp, #0x24]
007e4ec0  10 b0 8d e5                                      str fp, [sp, #0x10]
007e4ec4  00 80 a0 e3                                      mov r8, #0
007e4ec8  14 b0 8d e5                                      str fp, [sp, #0x14]
007e4ecc  08 b0 8d e5                                      str fp, [sp, #8]
007e4ed0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
007e4ed4  01 80 88 e2                                      add r8, r8, #1
007e4ed8  58 70 9a e5                                      ldr r7, [sl, #0x58]
007e4edc  02 00 58 e1                                      cmp r8, r2
007e4ee0  1c 20 9d b5                                      ldrlt r2, [sp, #0x1c]
007e4ee4  24 30 9d a5                                      ldrge r3, [sp, #0x24]
007e4ee8  0b 30 88 b2                                      addlt r3, r8, #0xb
007e4eec  83 31 82 b0                                      addlt r3, r2, r3, lsl #3
007e4ef0  04 40 93 e5                                      ldr r4, [r3, #4]
007e4ef4  07 00 a0 e1                                      mov r0, r7
007e4ef8  00 60 93 e5                                      ldr r6, [r3]
007e4efc  04 10 a0 e1                                      mov r1, r4
007e4f00  99 a7 ec eb                                      bl #0x30ed6c
007e4f04  5c 50 9a e5                                      ldr r5, [sl, #0x5c]
007e4f08  00 90 a0 e1                                      mov sb, r0
007e4f0c  06 10 a0 e1                                      mov r1, r6
007e4f10  05 00 a0 e1                                      mov r0, r5
007e4f14  94 a7 ec eb                                      bl #0x30ed6c
007e4f18  00 10 a0 e1                                      mov r1, r0
007e4f1c  09 00 a0 e1                                      mov r0, sb
007e4f20  21 a5 ec eb                                      bl #0x30e3ac
007e4f24  3f 14 a0 e3                                      mov r1, #0x3f000000
007e4f28  18 00 8d e5                                      str r0, [sp, #0x18]
007e4f2c  8e a7 ec eb                                      bl #0x30ed6c
007e4f30  00 90 a0 e1                                      mov sb, r0
007e4f34  09 10 a0 e1                                      mov r1, sb
007e4f38  08 00 9d e5                                      ldr r0, [sp, #8]
007e4f3c  18 a7 ec eb                                      bl #0x30eba4
007e4f40  ab 1a 0a e3                                      movw r1, #0xaaab
007e4f44  08 00 8d e5                                      str r0, [sp, #8]
007e4f48  aa 1e 43 e3                                      movt r1, #0x3eaa
007e4f4c  09 00 a0 e1                                      mov r0, sb
007e4f50  85 a7 ec eb                                      bl #0x30ed6c
007e4f54  00 10 a0 e3                                      mov r1, #0
007e4f58  00 90 a0 e1                                      mov sb, r0
007e4f5c  07 00 a0 e1                                      mov r0, r7
007e4f60  0f a7 ec eb                                      bl #0x30eba4
007e4f64  00 10 a0 e3                                      mov r1, #0
007e4f68  00 30 a0 e1                                      mov r3, r0
007e4f6c  05 00 a0 e1                                      mov r0, r5
007e4f70  04 30 8d e5                                      str r3, [sp, #4]
007e4f74  0a a7 ec eb                                      bl #0x30eba4
007e4f78  04 30 9d e5                                      ldr r3, [sp, #4]
007e4f7c  00 20 a0 e1                                      mov r2, r0
007e4f80  06 10 a0 e1                                      mov r1, r6
007e4f84  03 00 a0 e1                                      mov r0, r3
007e4f88  04 20 8d e5                                      str r2, [sp, #4]
007e4f8c  04 a7 ec eb                                      bl #0x30eba4
007e4f90  04 20 9d e5                                      ldr r2, [sp, #4]
007e4f94  00 c0 a0 e1                                      mov ip, r0
007e4f98  04 10 a0 e1                                      mov r1, r4
007e4f9c  02 00 a0 e1                                      mov r0, r2
007e4fa0  04 c0 8d e5                                      str ip, [sp, #4]
007e4fa4  fe a6 ec eb                                      bl #0x30eba4
007e4fa8  04 c0 9d e5                                      ldr ip, [sp, #4]
007e4fac  00 30 a0 e1                                      mov r3, r0
007e4fb0  09 00 a0 e1                                      mov r0, sb
007e4fb4  0c 10 a0 e1                                      mov r1, ip
007e4fb8  04 30 8d e5                                      str r3, [sp, #4]
007e4fbc  6a a7 ec eb                                      bl #0x30ed6c
007e4fc0  00 10 a0 e1                                      mov r1, r0
007e4fc4  0b 00 a0 e1                                      mov r0, fp
007e4fc8  f5 a6 ec eb                                      bl #0x30eba4
007e4fcc  04 30 9d e5                                      ldr r3, [sp, #4]
007e4fd0  00 b0 a0 e1                                      mov fp, r0
007e4fd4  09 00 a0 e1                                      mov r0, sb
007e4fd8  03 10 a0 e1                                      mov r1, r3
007e4fdc  62 a7 ec eb                                      bl #0x30ed6c
007e4fe0  00 10 a0 e1                                      mov r1, r0
007e4fe4  10 00 9d e5                                      ldr r0, [sp, #0x10]
007e4fe8  ed a6 ec eb                                      bl #0x30eba4
007e4fec  07 10 a0 e1                                      mov r1, r7
007e4ff0  10 00 8d e5                                      str r0, [sp, #0x10]
007e4ff4  07 00 a0 e1                                      mov r0, r7
007e4ff8  5b a7 ec eb                                      bl #0x30ed6c
007e4ffc  06 10 a0 e1                                      mov r1, r6
007e5000  00 90 a0 e1                                      mov sb, r0
007e5004  07 00 a0 e1                                      mov r0, r7
007e5008  57 a7 ec eb                                      bl #0x30ed6c
007e500c  00 10 a0 e1                                      mov r1, r0
007e5010  09 00 a0 e1                                      mov r0, sb
007e5014  e2 a6 ec eb                                      bl #0x30eba4
007e5018  06 10 a0 e1                                      mov r1, r6
007e501c  00 90 a0 e1                                      mov sb, r0
007e5020  06 00 a0 e1                                      mov r0, r6
007e5024  50 a7 ec eb                                      bl #0x30ed6c
007e5028  00 10 a0 e1                                      mov r1, r0
007e502c  09 00 a0 e1                                      mov r0, sb
007e5030  db a6 ec eb                                      bl #0x30eba4
007e5034  fa 15 a0 e3                                      mov r1, #0x3e800000
007e5038  4b a7 ec eb                                      bl #0x30ed6c
007e503c  00 10 a0 e3                                      mov r1, #0
007e5040  00 90 a0 e1                                      mov sb, r0
007e5044  07 00 a0 e1                                      mov r0, r7
007e5048  47 a7 ec eb                                      bl #0x30ed6c
007e504c  00 10 a0 e3                                      mov r1, #0
007e5050  00 70 a0 e1                                      mov r7, r0
007e5054  06 00 a0 e1                                      mov r0, r6
007e5058  43 a7 ec eb                                      bl #0x30ed6c
007e505c  00 10 a0 e1                                      mov r1, r0
007e5060  07 00 a0 e1                                      mov r0, r7
007e5064  ce a6 ec eb                                      bl #0x30eba4
007e5068  00 10 a0 e1                                      mov r1, r0
007e506c  09 00 a0 e1                                      mov r0, sb
007e5070  cb a6 ec eb                                      bl #0x30eba4
007e5074  ab 1a 0a e3                                      movw r1, #0xaaab
007e5078  aa 1e 43 e3                                      movt r1, #0x3eaa
007e507c  3a a7 ec eb                                      bl #0x30ed6c
007e5080  00 10 a0 e3                                      mov r1, #0
007e5084  c6 a6 ec eb                                      bl #0x30eba4
007e5088  05 10 a0 e1                                      mov r1, r5
007e508c  00 60 a0 e1                                      mov r6, r0
007e5090  05 00 a0 e1                                      mov r0, r5
007e5094  34 a7 ec eb                                      bl #0x30ed6c
007e5098  04 10 a0 e1                                      mov r1, r4
007e509c  00 70 a0 e1                                      mov r7, r0
007e50a0  05 00 a0 e1                                      mov r0, r5
007e50a4  30 a7 ec eb                                      bl #0x30ed6c
007e50a8  00 10 a0 e1                                      mov r1, r0
007e50ac  07 00 a0 e1                                      mov r0, r7
007e50b0  bb a6 ec eb                                      bl #0x30eba4
007e50b4  04 10 a0 e1                                      mov r1, r4
007e50b8  00 70 a0 e1                                      mov r7, r0
007e50bc  04 00 a0 e1                                      mov r0, r4
007e50c0  29 a7 ec eb                                      bl #0x30ed6c
007e50c4  00 10 a0 e1                                      mov r1, r0
007e50c8  07 00 a0 e1                                      mov r0, r7
007e50cc  b4 a6 ec eb                                      bl #0x30eba4
007e50d0  fa 15 a0 e3                                      mov r1, #0x3e800000
007e50d4  24 a7 ec eb                                      bl #0x30ed6c
007e50d8  00 10 a0 e3                                      mov r1, #0
007e50dc  00 70 a0 e1                                      mov r7, r0
007e50e0  05 00 a0 e1                                      mov r0, r5
007e50e4  20 a7 ec eb                                      bl #0x30ed6c
007e50e8  00 10 a0 e3                                      mov r1, #0
007e50ec  00 50 a0 e1                                      mov r5, r0
007e50f0  04 00 a0 e1                                      mov r0, r4
007e50f4  1c a7 ec eb                                      bl #0x30ed6c
007e50f8  00 10 a0 e1                                      mov r1, r0
007e50fc  05 00 a0 e1                                      mov r0, r5
007e5100  a7 a6 ec eb                                      bl #0x30eba4
007e5104  00 10 a0 e1                                      mov r1, r0
007e5108  07 00 a0 e1                                      mov r0, r7
007e510c  a4 a6 ec eb                                      bl #0x30eba4
007e5110  ab 1a 0a e3                                      movw r1, #0xaaab
007e5114  aa 1e 43 e3                                      movt r1, #0x3eaa
007e5118  13 a7 ec eb                                      bl #0x30ed6c
007e511c  00 10 a0 e3                                      mov r1, #0
007e5120  9f a6 ec eb                                      bl #0x30eba4
007e5124  00 10 a0 e1                                      mov r1, r0
007e5128  06 00 a0 e1                                      mov r0, r6
007e512c  9c a6 ec eb                                      bl #0x30eba4
007e5130  18 10 9d e5                                      ldr r1, [sp, #0x18]
007e5134  0c a7 ec eb                                      bl #0x30ed6c
007e5138  00 10 a0 e1                                      mov r1, r0
007e513c  14 00 9d e5                                      ldr r0, [sp, #0x14]
007e5140  97 a6 ec eb                                      bl #0x30eba4
007e5144  14 00 8d e5                                      str r0, [sp, #0x14]
007e5148  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007e514c  08 a0 8a e2                                      add sl, sl, #8
007e5150  03 00 58 e1                                      cmp r8, r3
007e5154  5d ff ff 1a                                      bne #0x7e4ed0
007e5158  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
007e515c  08 10 9d e5                                      ldr r1, [sp, #8]
007e5160  14 00 92 e5                                      ldr r0, [r2, #0x14]
007e5164  00 a7 ec eb                                      bl #0x30ed6c
007e5168  20 30 9d e5                                      ldr r3, [sp, #0x20]
007e516c  00 00 83 e5                                      str r0, [r3]
007e5170  08 10 9d e5                                      ldr r1, [sp, #8]
007e5174  fe 05 a0 e3                                      mov r0, #0x3f800000
007e5178  c5 a6 ec eb                                      bl #0x30ec94
007e517c  00 40 a0 e1                                      mov r4, r0
007e5180  04 10 a0 e1                                      mov r1, r4
007e5184  10 00 9d e5                                      ldr r0, [sp, #0x10]
007e5188  f7 a6 ec eb                                      bl #0x30ed6c
007e518c  20 20 9d e5                                      ldr r2, [sp, #0x20]
007e5190  0b 10 a0 e1                                      mov r1, fp
007e5194  08 00 82 e5                                      str r0, [r2, #8]
007e5198  04 00 a0 e1                                      mov r0, r4
007e519c  f2 a6 ec eb                                      bl #0x30ed6c
007e51a0  20 30 9d e5                                      ldr r3, [sp, #0x20]
007e51a4  04 00 83 e5                                      str r0, [r3, #4]
007e51a8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
007e51ac  14 10 9d e5                                      ldr r1, [sp, #0x14]
007e51b0  14 00 92 e5                                      ldr r0, [r2, #0x14]
007e51b4  ec a6 ec eb                                      bl #0x30ed6c
007e51b8  20 30 9d e5                                      ldr r3, [sp, #0x20]
007e51bc  0c 00 83 e5                                      str r0, [r3, #0xc]
007e51c0  2c d0 8d e2                                      add sp, sp, #0x2c
007e51c4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007e51c8  00 b0 a0 e3                                      mov fp, #0
007e51cc  10 b0 8d e5                                      str fp, [sp, #0x10]
007e51d0  14 b0 8d e5                                      str fp, [sp, #0x14]
007e51d4  08 b0 8d e5                                      str fp, [sp, #8]
007e51d8  de ff ff ea                                      b #0x7e5158

; FUNCTION 0x007e51dc, declared_size=144, range_size=144, mode=arm
; class-group: b2PolygonShape
; alias: _ZNK14b2PolygonShape8CentroidERK7b2XForm
; demangled: b2PolygonShape::Centroid(b2XForm const&) const
; decoder-mode: arm
007e51dc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007e51e0  30 40 91 e5                                      ldr r4, [r1, #0x30]
007e51e4  34 70 91 e5                                      ldr r7, [r1, #0x34]
007e51e8  00 60 a0 e1                                      mov r6, r0
007e51ec  08 10 92 e5                                      ldr r1, [r2, #8]
007e51f0  04 00 a0 e1                                      mov r0, r4
007e51f4  02 50 a0 e1                                      mov r5, r2
007e51f8  db a6 ec eb                                      bl #0x30ed6c
007e51fc  10 10 95 e5                                      ldr r1, [r5, #0x10]
007e5200  00 80 a0 e1                                      mov r8, r0
007e5204  07 00 a0 e1                                      mov r0, r7
007e5208  d7 a6 ec eb                                      bl #0x30ed6c
007e520c  00 10 a0 e1                                      mov r1, r0
007e5210  08 00 a0 e1                                      mov r0, r8
007e5214  62 a6 ec eb                                      bl #0x30eba4
007e5218  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007e521c  00 80 a0 e1                                      mov r8, r0
007e5220  04 00 a0 e1                                      mov r0, r4
007e5224  d0 a6 ec eb                                      bl #0x30ed6c
007e5228  14 10 95 e5                                      ldr r1, [r5, #0x14]
007e522c  00 40 a0 e1                                      mov r4, r0
007e5230  07 00 a0 e1                                      mov r0, r7
007e5234  cc a6 ec eb                                      bl #0x30ed6c
007e5238  00 10 a0 e1                                      mov r1, r0
007e523c  04 00 a0 e1                                      mov r0, r4
007e5240  57 a6 ec eb                                      bl #0x30eba4
007e5244  04 10 95 e5                                      ldr r1, [r5, #4]
007e5248  55 a6 ec eb                                      bl #0x30eba4
007e524c  00 10 95 e5                                      ldr r1, [r5]
007e5250  00 40 a0 e1                                      mov r4, r0
007e5254  08 00 a0 e1                                      mov r0, r8
007e5258  51 a6 ec eb                                      bl #0x30eba4
007e525c  04 40 86 e5                                      str r4, [r6, #4]
007e5260  00 00 86 e5                                      str r0, [r6]
007e5264  06 00 a0 e1                                      mov r0, r6
007e5268  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007e526c, declared_size=472, range_size=472, mode=arm
; class-group: b2PolygonShape
; alias: _ZNK14b2PolygonShape7SupportERK7b2XFormRK6b2Vec2
; demangled: b2PolygonShape::Support(b2XForm const&, b2Vec2 const&) const
; decoder-mode: arm
007e526c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007e5270  24 d0 4d e2                                      sub sp, sp, #0x24
007e5274  04 10 8d e5                                      str r1, [sp, #4]
007e5278  18 41 91 e5                                      ldr r4, [r1, #0x118]
007e527c  0c 00 8d e5                                      str r0, [sp, #0xc]
007e5280  08 10 92 e5                                      ldr r1, [r2, #8]
007e5284  04 80 93 e5                                      ldr r8, [r3, #4]
007e5288  00 a0 93 e5                                      ldr sl, [r3]
007e528c  14 10 8d e5                                      str r1, [sp, #0x14]
007e5290  02 50 a0 e1                                      mov r5, r2
007e5294  0c 20 92 e5                                      ldr r2, [r2, #0xc]
007e5298  01 00 54 e3                                      cmp r4, #1
007e529c  10 20 8d e5                                      str r2, [sp, #0x10]
007e52a0  10 30 95 e5                                      ldr r3, [r5, #0x10]
007e52a4  04 20 9d e5                                      ldr r2, [sp, #4]
007e52a8  1c 30 8d e5                                      str r3, [sp, #0x1c]
007e52ac  14 10 95 e5                                      ldr r1, [r5, #0x14]
007e52b0  18 10 8d e5                                      str r1, [sp, #0x18]
007e52b4  d8 70 92 e5                                      ldr r7, [r2, #0xd8]
007e52b8  dc 60 92 e5                                      ldr r6, [r2, #0xdc]
007e52bc  3f 00 00 da                                      ble #0x7e53c0
007e52c0  0a 00 a0 e1                                      mov r0, sl
007e52c4  14 10 9d e5                                      ldr r1, [sp, #0x14]
007e52c8  a7 a6 ec eb                                      bl #0x30ed6c
007e52cc  10 10 9d e5                                      ldr r1, [sp, #0x10]
007e52d0  00 90 a0 e1                                      mov sb, r0
007e52d4  08 00 a0 e1                                      mov r0, r8
007e52d8  a3 a6 ec eb                                      bl #0x30ed6c
007e52dc  00 10 a0 e1                                      mov r1, r0
007e52e0  09 00 a0 e1                                      mov r0, sb
007e52e4  2e a6 ec eb                                      bl #0x30eba4
007e52e8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007e52ec  00 b0 a0 e1                                      mov fp, r0
007e52f0  0a 00 a0 e1                                      mov r0, sl
007e52f4  9c a6 ec eb                                      bl #0x30ed6c
007e52f8  18 10 9d e5                                      ldr r1, [sp, #0x18]
007e52fc  00 a0 a0 e1                                      mov sl, r0
007e5300  08 00 a0 e1                                      mov r0, r8
007e5304  98 a6 ec eb                                      bl #0x30ed6c
007e5308  00 10 a0 e1                                      mov r1, r0
007e530c  0a 00 a0 e1                                      mov r0, sl
007e5310  23 a6 ec eb                                      bl #0x30eba4
007e5314  07 10 a0 e1                                      mov r1, r7
007e5318  00 90 a0 e1                                      mov sb, r0
007e531c  0b 00 a0 e1                                      mov r0, fp
007e5320  91 a6 ec eb                                      bl #0x30ed6c
007e5324  06 10 a0 e1                                      mov r1, r6
007e5328  00 70 a0 e1                                      mov r7, r0
007e532c  09 00 a0 e1                                      mov r0, sb
007e5330  8d a6 ec eb                                      bl #0x30ed6c
007e5334  00 10 a0 e1                                      mov r1, r0
007e5338  07 00 a0 e1                                      mov r0, r7
007e533c  18 a6 ec eb                                      bl #0x30eba4
007e5340  04 60 9d e5                                      ldr r6, [sp, #4]
007e5344  00 30 a0 e3                                      mov r3, #0
007e5348  00 a0 a0 e1                                      mov sl, r0
007e534c  01 70 a0 e3                                      mov r7, #1
007e5350  08 30 8d e5                                      str r3, [sp, #8]
007e5354  e0 10 96 e5                                      ldr r1, [r6, #0xe0]
007e5358  0b 00 a0 e1                                      mov r0, fp
007e535c  82 a6 ec eb                                      bl #0x30ed6c
007e5360  e4 10 96 e5                                      ldr r1, [r6, #0xe4]
007e5364  00 80 a0 e1                                      mov r8, r0
007e5368  09 00 a0 e1                                      mov r0, sb
007e536c  7e a6 ec eb                                      bl #0x30ed6c
007e5370  00 10 a0 e1                                      mov r1, r0
007e5374  08 00 a0 e1                                      mov r0, r8
007e5378  09 a6 ec eb                                      bl #0x30eba4
007e537c  00 80 a0 e1                                      mov r8, r0
007e5380  08 10 a0 e1                                      mov r1, r8
007e5384  0a 00 a0 e1                                      mov r0, sl
007e5388  df a4 ec eb                                      bl #0x30e70c
007e538c  00 00 50 e3                                      cmp r0, #0
007e5390  08 70 8d 15                                      strne r7, [sp, #8]
007e5394  01 70 87 e2                                      add r7, r7, #1
007e5398  08 a0 a0 11                                      movne sl, r8
007e539c  04 00 57 e1                                      cmp r7, r4
007e53a0  08 60 86 e2                                      add r6, r6, #8
007e53a4  ea ff ff 1a                                      bne #0x7e5354
007e53a8  08 10 9d e5                                      ldr r1, [sp, #8]
007e53ac  1b 30 81 e2                                      add r3, r1, #0x1b
007e53b0  04 10 9d e5                                      ldr r1, [sp, #4]
007e53b4  83 21 81 e0                                      add r2, r1, r3, lsl #3
007e53b8  04 60 92 e5                                      ldr r6, [r2, #4]
007e53bc  83 71 91 e7                                      ldr r7, [r1, r3, lsl #3]
007e53c0  14 00 9d e5                                      ldr r0, [sp, #0x14]
007e53c4  07 10 a0 e1                                      mov r1, r7
007e53c8  67 a6 ec eb                                      bl #0x30ed6c
007e53cc  06 10 a0 e1                                      mov r1, r6
007e53d0  00 40 a0 e1                                      mov r4, r0
007e53d4  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007e53d8  63 a6 ec eb                                      bl #0x30ed6c
007e53dc  00 10 a0 e1                                      mov r1, r0
007e53e0  04 00 a0 e1                                      mov r0, r4
007e53e4  ee a5 ec eb                                      bl #0x30eba4
007e53e8  07 10 a0 e1                                      mov r1, r7
007e53ec  00 80 a0 e1                                      mov r8, r0
007e53f0  10 00 9d e5                                      ldr r0, [sp, #0x10]
007e53f4  5c a6 ec eb                                      bl #0x30ed6c
007e53f8  06 10 a0 e1                                      mov r1, r6
007e53fc  00 40 a0 e1                                      mov r4, r0
007e5400  18 00 9d e5                                      ldr r0, [sp, #0x18]
007e5404  58 a6 ec eb                                      bl #0x30ed6c
007e5408  00 10 a0 e1                                      mov r1, r0
007e540c  04 00 a0 e1                                      mov r0, r4
007e5410  e3 a5 ec eb                                      bl #0x30eba4
007e5414  04 10 95 e5                                      ldr r1, [r5, #4]
007e5418  e1 a5 ec eb                                      bl #0x30eba4
007e541c  00 10 95 e5                                      ldr r1, [r5]
007e5420  00 40 a0 e1                                      mov r4, r0
007e5424  08 00 a0 e1                                      mov r0, r8
007e5428  dd a5 ec eb                                      bl #0x30eba4
007e542c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
007e5430  04 40 82 e5                                      str r4, [r2, #4]
007e5434  00 00 82 e5                                      str r0, [r2]
007e5438  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007e543c  24 d0 8d e2                                      add sp, sp, #0x24
007e5440  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007e5444, declared_size=52, range_size=52, mode=arm
; class-group: b2PolygonShape
; alias: _ZN14b2PolygonShapeD1Ev
; demangled: b2PolygonShape::~b2PolygonShape()
; decoder-mode: arm
007e5444  24 30 9f e5                                      ldr r3, [pc, #0x24]
007e5448  24 20 9f e5                                      ldr r2, [pc, #0x24]
007e544c  10 40 2d e9                                      push {r4, lr}
007e5450  03 30 8f e0                                      add r3, pc, r3
007e5454  02 20 93 e7                                      ldr r2, [r3, r2]
007e5458  00 40 a0 e1                                      mov r4, r0
007e545c  08 20 82 e2                                      add r2, r2, #8
007e5460  00 20 80 e5                                      str r2, [r0]
007e5464  43 03 00 eb                                      bl #0x7e6178
007e5468  04 00 a0 e1                                      mov r0, r4
007e546c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007e5470  40 f6 1a 00 88 18 00 00                          .byte 0x40, 0xf6, 0x1a, 0x00, 0x88, 0x18, 0x00, 0x00

; FUNCTION 0x007e5478, declared_size=172, range_size=172, mode=arm
; class-group: b2PolygonShape
; alias: _ZN14b2PolygonShape17UpdateSweepRadiusERK6b2Vec2
; demangled: b2PolygonShape::UpdateSweepRadius(b2Vec2 const&)
; decoder-mode: arm
007e5478  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007e547c  18 31 90 e5                                      ldr r3, [r0, #0x118]
007e5480  00 70 a0 e3                                      mov r7, #0
007e5484  00 80 a0 e1                                      mov r8, r0
007e5488  00 00 53 e3                                      cmp r3, #0
007e548c  01 a0 a0 e1                                      mov sl, r1
007e5490  10 70 80 e5                                      str r7, [r0, #0x10]
007e5494  21 00 00 da                                      ble #0x7e5520
007e5498  00 40 a0 e1                                      mov r4, r0
007e549c  00 60 a0 e3                                      mov r6, #0
007e54a0  00 00 00 ea                                      b #0x7e54a8
007e54a4  05 70 a0 e1                                      mov r7, r5
007e54a8  00 10 9a e5                                      ldr r1, [sl]
007e54ac  d8 00 94 e5                                      ldr r0, [r4, #0xd8]
007e54b0  bd a3 ec eb                                      bl #0x30e3ac
007e54b4  04 10 9a e5                                      ldr r1, [sl, #4]
007e54b8  00 50 a0 e1                                      mov r5, r0
007e54bc  dc 00 94 e5                                      ldr r0, [r4, #0xdc]
007e54c0  b9 a3 ec eb                                      bl #0x30e3ac
007e54c4  05 10 a0 e1                                      mov r1, r5
007e54c8  00 90 a0 e1                                      mov sb, r0
007e54cc  05 00 a0 e1                                      mov r0, r5
007e54d0  25 a6 ec eb                                      bl #0x30ed6c
007e54d4  09 10 a0 e1                                      mov r1, sb
007e54d8  00 50 a0 e1                                      mov r5, r0
007e54dc  09 00 a0 e1                                      mov r0, sb
007e54e0  21 a6 ec eb                                      bl #0x30ed6c
007e54e4  00 10 a0 e1                                      mov r1, r0
007e54e8  05 00 a0 e1                                      mov r0, r5
007e54ec  ac a5 ec eb                                      bl #0x30eba4
007e54f0  0b a3 ec eb                                      bl #0x30e124
007e54f4  07 10 a0 e1                                      mov r1, r7
007e54f8  00 50 a0 e1                                      mov r5, r0
007e54fc  82 a4 ec eb                                      bl #0x30e70c
007e5500  18 31 98 e5                                      ldr r3, [r8, #0x118]
007e5504  00 00 50 e3                                      cmp r0, #0
007e5508  01 60 86 e2                                      add r6, r6, #1
007e550c  07 50 a0 11                                      movne r5, r7
007e5510  06 00 53 e1                                      cmp r3, r6
007e5514  10 50 88 e5                                      str r5, [r8, #0x10]
007e5518  08 40 84 e2                                      add r4, r4, #8
007e551c  e0 ff ff ca                                      bgt #0x7e54a4
007e5520  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x007e5928, declared_size=780, range_size=780, mode=arm
; class-group: b2PolygonShape
; alias: _ZN14b2PolygonShapeC1EPK10b2ShapeDef
; demangled: b2PolygonShape::b2PolygonShape(b2ShapeDef const*)
; decoder-mode: arm
007e5928  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007e592c  f8 62 9f e5                                      ldr r6, [pc, #0x2f8]
007e5930  2c d0 4d e2                                      sub sp, sp, #0x2c
007e5934  00 40 a0 e1                                      mov r4, r0
007e5938  01 50 a0 e1                                      mov r5, r1
007e593c  c9 01 00 eb                                      bl #0x7e6068
007e5940  e8 32 9f e5                                      ldr r3, [pc, #0x2e8]
007e5944  06 60 8f e0                                      add r6, pc, r6
007e5948  01 20 a0 e3                                      mov r2, #1
007e594c  03 30 96 e7                                      ldr r3, [r6, r3]
007e5950  04 20 84 e5                                      str r2, [r4, #4]
007e5954  08 30 83 e2                                      add r3, r3, #8
007e5958  00 30 84 e5                                      str r3, [r4]
007e595c  60 30 95 e5                                      ldr r3, [r5, #0x60]
007e5960  00 00 53 e3                                      cmp r3, #0
007e5964  18 31 84 e5                                      str r3, [r4, #0x118]
007e5968  28 00 00 da                                      ble #0x7e5a10
007e596c  05 20 a0 e1                                      mov r2, r5
007e5970  04 60 a0 e1                                      mov r6, r4
007e5974  04 30 a0 e1                                      mov r3, r4
007e5978  00 10 a0 e3                                      mov r1, #0
007e597c  20 00 92 e5                                      ldr r0, [r2, #0x20]
007e5980  01 10 81 e2                                      add r1, r1, #1
007e5984  58 00 83 e5                                      str r0, [r3, #0x58]
007e5988  24 00 92 e5                                      ldr r0, [r2, #0x24]
007e598c  08 20 82 e2                                      add r2, r2, #8
007e5990  5c 00 83 e5                                      str r0, [r3, #0x5c]
007e5994  18 a1 94 e5                                      ldr sl, [r4, #0x118]
007e5998  08 30 83 e2                                      add r3, r3, #8
007e599c  01 00 5a e1                                      cmp sl, r1
007e59a0  f5 ff ff ca                                      bgt #0x7e597c
007e59a4  00 00 5a e3                                      cmp sl, #0
007e59a8  18 00 00 da                                      ble #0x7e5a10
007e59ac  00 80 a0 e3                                      mov r8, #0
007e59b0  01 70 88 e2                                      add r7, r8, #1
007e59b4  0a 00 57 e1                                      cmp r7, sl
007e59b8  07 a0 a0 b1                                      movlt sl, r7
007e59bc  00 a0 a0 a3                                      movge sl, #0
007e59c0  0b a0 8a e2                                      add sl, sl, #0xb
007e59c4  8a 01 94 e7                                      ldr r0, [r4, sl, lsl #3]
007e59c8  58 10 96 e5                                      ldr r1, [r6, #0x58]
007e59cc  76 a2 ec eb                                      bl #0x30e3ac
007e59d0  8a a1 84 e0                                      add sl, r4, sl, lsl #3
007e59d4  5c 10 96 e5                                      ldr r1, [r6, #0x5c]
007e59d8  00 90 a0 e1                                      mov sb, r0
007e59dc  04 00 9a e5                                      ldr r0, [sl, #4]
007e59e0  71 a2 ec eb                                      bl #0x30e3ac
007e59e4  13 80 88 e2                                      add r8, r8, #0x13
007e59e8  02 91 89 e2                                      add sb, sb, #0x80000000
007e59ec  98 00 86 e5                                      str r0, [r6, #0x98]
007e59f0  9c 90 86 e5                                      str sb, [r6, #0x9c]
007e59f4  88 01 84 e0                                      add r0, r4, r8, lsl #3
007e59f8  c9 fe ff eb                                      bl #0x7e5524
007e59fc  18 a1 94 e5                                      ldr sl, [r4, #0x118]
007e5a00  08 60 86 e2                                      add r6, r6, #8
007e5a04  07 80 a0 e1                                      mov r8, r7
007e5a08  07 00 5a e1                                      cmp sl, r7
007e5a0c  e7 ff ff ca                                      bgt #0x7e59b0
007e5a10  60 20 95 e5                                      ldr r2, [r5, #0x60]
007e5a14  20 00 8d e2                                      add r0, sp, #0x20
007e5a18  20 10 85 e2                                      add r1, r5, #0x20
007e5a1c  b4 fa ff eb                                      bl #0x7e44f4
007e5a20  24 30 9d e5                                      ldr r3, [sp, #0x24]
007e5a24  20 20 9d e5                                      ldr r2, [sp, #0x20]
007e5a28  38 00 84 e2                                      add r0, r4, #0x38
007e5a2c  34 30 84 e5                                      str r3, [r4, #0x34]
007e5a30  30 20 84 e5                                      str r2, [r4, #0x30]
007e5a34  58 10 84 e2                                      add r1, r4, #0x58
007e5a38  18 21 94 e5                                      ldr r2, [r4, #0x118]
007e5a3c  da fe ff eb                                      bl #0x7e55ac
007e5a40  18 31 94 e5                                      ldr r3, [r4, #0x118]
007e5a44  00 00 53 e3                                      cmp r3, #0
007e5a48  18 30 8d e5                                      str r3, [sp, #0x18]
007e5a4c  73 00 00 da                                      ble #0x7e5c20
007e5a50  30 30 94 e5                                      ldr r3, [r4, #0x30]
007e5a54  04 50 a0 e1                                      mov r5, r4
007e5a58  00 60 a0 e3                                      mov r6, #0
007e5a5c  10 30 8d e5                                      str r3, [sp, #0x10]
007e5a60  34 30 94 e5                                      ldr r3, [r4, #0x34]
007e5a64  04 20 a0 e1                                      mov r2, r4
007e5a68  14 30 8d e5                                      str r3, [sp, #0x14]
007e5a6c  18 30 9d e5                                      ldr r3, [sp, #0x18]
007e5a70  01 30 43 e2                                      sub r3, r3, #1
007e5a74  1c 30 8d e5                                      str r3, [sp, #0x1c]
007e5a78  00 00 56 e3                                      cmp r6, #0
007e5a7c  1c 30 9d 05                                      ldreq r3, [sp, #0x1c]
007e5a80  01 30 46 12                                      subne r3, r6, #1
007e5a84  58 00 95 e5                                      ldr r0, [r5, #0x58]
007e5a88  13 30 83 e2                                      add r3, r3, #0x13
007e5a8c  83 c1 82 e0                                      add ip, r2, r3, lsl #3
007e5a90  10 10 9d e5                                      ldr r1, [sp, #0x10]
007e5a94  83 71 92 e7                                      ldr r7, [r2, r3, lsl #3]
007e5a98  04 80 9c e5                                      ldr r8, [ip, #4]
007e5a9c  04 20 8d e5                                      str r2, [sp, #4]
007e5aa0  41 a2 ec eb                                      bl #0x30e3ac
007e5aa4  14 10 9d e5                                      ldr r1, [sp, #0x14]
007e5aa8  00 a0 a0 e1                                      mov sl, r0
007e5aac  5c 00 95 e5                                      ldr r0, [r5, #0x5c]
007e5ab0  3d a2 ec eb                                      bl #0x30e3ac
007e5ab4  0a 10 a0 e1                                      mov r1, sl
007e5ab8  00 b0 a0 e1                                      mov fp, r0
007e5abc  07 00 a0 e1                                      mov r0, r7
007e5ac0  a9 a4 ec eb                                      bl #0x30ed6c
007e5ac4  0b 10 a0 e1                                      mov r1, fp
007e5ac8  00 40 a0 e1                                      mov r4, r0
007e5acc  08 00 a0 e1                                      mov r0, r8
007e5ad0  a5 a4 ec eb                                      bl #0x30ed6c
007e5ad4  00 10 a0 e1                                      mov r1, r0
007e5ad8  04 00 a0 e1                                      mov r0, r4
007e5adc  30 a4 ec eb                                      bl #0x30eba4
007e5ae0  0a 17 0d e3                                      movw r1, #0xd70a
007e5ae4  23 1d 43 e3                                      movt r1, #0x3d23
007e5ae8  2f a2 ec eb                                      bl #0x30e3ac
007e5aec  98 40 95 e5                                      ldr r4, [r5, #0x98]
007e5af0  00 90 a0 e1                                      mov sb, r0
007e5af4  0a 10 a0 e1                                      mov r1, sl
007e5af8  04 00 a0 e1                                      mov r0, r4
007e5afc  9a a4 ec eb                                      bl #0x30ed6c
007e5b00  9c a0 95 e5                                      ldr sl, [r5, #0x9c]
007e5b04  00 30 a0 e1                                      mov r3, r0
007e5b08  0b 10 a0 e1                                      mov r1, fp
007e5b0c  0a 00 a0 e1                                      mov r0, sl
007e5b10  08 30 8d e5                                      str r3, [sp, #8]
007e5b14  94 a4 ec eb                                      bl #0x30ed6c
007e5b18  08 30 9d e5                                      ldr r3, [sp, #8]
007e5b1c  00 10 a0 e1                                      mov r1, r0
007e5b20  01 60 86 e2                                      add r6, r6, #1
007e5b24  03 00 a0 e1                                      mov r0, r3
007e5b28  1d a4 ec eb                                      bl #0x30eba4
007e5b2c  0a 17 0d e3                                      movw r1, #0xd70a
007e5b30  23 1d 43 e3                                      movt r1, #0x3d23
007e5b34  1c a2 ec eb                                      bl #0x30e3ac
007e5b38  07 10 a0 e1                                      mov r1, r7
007e5b3c  00 b0 a0 e1                                      mov fp, r0
007e5b40  0a 00 a0 e1                                      mov r0, sl
007e5b44  88 a4 ec eb                                      bl #0x30ed6c
007e5b48  08 10 a0 e1                                      mov r1, r8
007e5b4c  00 30 a0 e1                                      mov r3, r0
007e5b50  04 00 a0 e1                                      mov r0, r4
007e5b54  08 30 8d e5                                      str r3, [sp, #8]
007e5b58  83 a4 ec eb                                      bl #0x30ed6c
007e5b5c  08 30 9d e5                                      ldr r3, [sp, #8]
007e5b60  00 10 a0 e1                                      mov r1, r0
007e5b64  03 00 a0 e1                                      mov r0, r3
007e5b68  0f a2 ec eb                                      bl #0x30e3ac
007e5b6c  00 10 a0 e1                                      mov r1, r0
007e5b70  fe 05 a0 e3                                      mov r0, #0x3f800000
007e5b74  46 a4 ec eb                                      bl #0x30ec94
007e5b78  09 10 a0 e1                                      mov r1, sb
007e5b7c  0c 00 8d e5                                      str r0, [sp, #0xc]
007e5b80  0a 00 a0 e1                                      mov r0, sl
007e5b84  78 a4 ec eb                                      bl #0x30ed6c
007e5b88  0b 10 a0 e1                                      mov r1, fp
007e5b8c  00 a0 a0 e1                                      mov sl, r0
007e5b90  08 00 a0 e1                                      mov r0, r8
007e5b94  74 a4 ec eb                                      bl #0x30ed6c
007e5b98  00 10 a0 e1                                      mov r1, r0
007e5b9c  0a 00 a0 e1                                      mov r0, sl
007e5ba0  01 a2 ec eb                                      bl #0x30e3ac
007e5ba4  00 10 a0 e1                                      mov r1, r0
007e5ba8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007e5bac  6e a4 ec eb                                      bl #0x30ed6c
007e5bb0  0b 10 a0 e1                                      mov r1, fp
007e5bb4  00 80 a0 e1                                      mov r8, r0
007e5bb8  07 00 a0 e1                                      mov r0, r7
007e5bbc  6a a4 ec eb                                      bl #0x30ed6c
007e5bc0  09 10 a0 e1                                      mov r1, sb
007e5bc4  00 70 a0 e1                                      mov r7, r0
007e5bc8  04 00 a0 e1                                      mov r0, r4
007e5bcc  66 a4 ec eb                                      bl #0x30ed6c
007e5bd0  00 10 a0 e1                                      mov r1, r0
007e5bd4  07 00 a0 e1                                      mov r0, r7
007e5bd8  f3 a1 ec eb                                      bl #0x30e3ac
007e5bdc  00 10 a0 e1                                      mov r1, r0
007e5be0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007e5be4  60 a4 ec eb                                      bl #0x30ed6c
007e5be8  00 10 a0 e1                                      mov r1, r0
007e5bec  14 00 9d e5                                      ldr r0, [sp, #0x14]
007e5bf0  eb a3 ec eb                                      bl #0x30eba4
007e5bf4  08 10 a0 e1                                      mov r1, r8
007e5bf8  dc 00 85 e5                                      str r0, [r5, #0xdc]
007e5bfc  10 00 9d e5                                      ldr r0, [sp, #0x10]
007e5c00  e7 a3 ec eb                                      bl #0x30eba4
007e5c04  18 30 9d e5                                      ldr r3, [sp, #0x18]
007e5c08  d8 00 85 e5                                      str r0, [r5, #0xd8]
007e5c0c  04 20 9d e5                                      ldr r2, [sp, #4]
007e5c10  03 00 56 e1                                      cmp r6, r3
007e5c14  08 50 85 e2                                      add r5, r5, #8
007e5c18  96 ff ff ba                                      blt #0x7e5a78
007e5c1c  02 40 a0 e1                                      mov r4, r2
007e5c20  04 00 a0 e1                                      mov r0, r4
007e5c24  2c d0 8d e2                                      add sp, sp, #0x2c
007e5c28  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
007e5c2c  4c f1 1a 00 88 18 00 00                          .byte 0x4c, 0xf1, 0x1a, 0x00, 0x88, 0x18, 0x00, 0x00

; FUNCTION 0x007e5c34, declared_size=780, range_size=780, mode=arm
; class-group: b2PolygonShape
; alias: _ZN14b2PolygonShapeC2EPK10b2ShapeDef
; demangled: b2PolygonShape::b2PolygonShape(b2ShapeDef const*)
; decoder-mode: arm
007e5c34  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007e5c38  f8 62 9f e5                                      ldr r6, [pc, #0x2f8]
007e5c3c  2c d0 4d e2                                      sub sp, sp, #0x2c
007e5c40  00 40 a0 e1                                      mov r4, r0
007e5c44  01 50 a0 e1                                      mov r5, r1
007e5c48  06 01 00 eb                                      bl #0x7e6068
007e5c4c  e8 32 9f e5                                      ldr r3, [pc, #0x2e8]
007e5c50  06 60 8f e0                                      add r6, pc, r6
007e5c54  01 20 a0 e3                                      mov r2, #1
007e5c58  03 30 96 e7                                      ldr r3, [r6, r3]
007e5c5c  04 20 84 e5                                      str r2, [r4, #4]
007e5c60  08 30 83 e2                                      add r3, r3, #8
007e5c64  00 30 84 e5                                      str r3, [r4]
007e5c68  60 30 95 e5                                      ldr r3, [r5, #0x60]
007e5c6c  00 00 53 e3                                      cmp r3, #0
007e5c70  18 31 84 e5                                      str r3, [r4, #0x118]
007e5c74  28 00 00 da                                      ble #0x7e5d1c
007e5c78  05 20 a0 e1                                      mov r2, r5
007e5c7c  04 60 a0 e1                                      mov r6, r4
007e5c80  04 30 a0 e1                                      mov r3, r4
007e5c84  00 10 a0 e3                                      mov r1, #0
007e5c88  20 00 92 e5                                      ldr r0, [r2, #0x20]
007e5c8c  01 10 81 e2                                      add r1, r1, #1
007e5c90  58 00 83 e5                                      str r0, [r3, #0x58]
007e5c94  24 00 92 e5                                      ldr r0, [r2, #0x24]
007e5c98  08 20 82 e2                                      add r2, r2, #8
007e5c9c  5c 00 83 e5                                      str r0, [r3, #0x5c]
007e5ca0  18 a1 94 e5                                      ldr sl, [r4, #0x118]
007e5ca4  08 30 83 e2                                      add r3, r3, #8
007e5ca8  01 00 5a e1                                      cmp sl, r1
007e5cac  f5 ff ff ca                                      bgt #0x7e5c88
007e5cb0  00 00 5a e3                                      cmp sl, #0
007e5cb4  18 00 00 da                                      ble #0x7e5d1c
007e5cb8  00 80 a0 e3                                      mov r8, #0
007e5cbc  01 70 88 e2                                      add r7, r8, #1
007e5cc0  0a 00 57 e1                                      cmp r7, sl
007e5cc4  07 a0 a0 b1                                      movlt sl, r7
007e5cc8  00 a0 a0 a3                                      movge sl, #0
007e5ccc  0b a0 8a e2                                      add sl, sl, #0xb
007e5cd0  8a 01 94 e7                                      ldr r0, [r4, sl, lsl #3]
007e5cd4  58 10 96 e5                                      ldr r1, [r6, #0x58]
007e5cd8  b3 a1 ec eb                                      bl #0x30e3ac
007e5cdc  8a a1 84 e0                                      add sl, r4, sl, lsl #3
007e5ce0  5c 10 96 e5                                      ldr r1, [r6, #0x5c]
007e5ce4  00 90 a0 e1                                      mov sb, r0
007e5ce8  04 00 9a e5                                      ldr r0, [sl, #4]
007e5cec  ae a1 ec eb                                      bl #0x30e3ac
007e5cf0  13 80 88 e2                                      add r8, r8, #0x13
007e5cf4  02 91 89 e2                                      add sb, sb, #0x80000000
007e5cf8  98 00 86 e5                                      str r0, [r6, #0x98]
007e5cfc  9c 90 86 e5                                      str sb, [r6, #0x9c]
007e5d00  88 01 84 e0                                      add r0, r4, r8, lsl #3
007e5d04  06 fe ff eb                                      bl #0x7e5524
007e5d08  18 a1 94 e5                                      ldr sl, [r4, #0x118]
007e5d0c  08 60 86 e2                                      add r6, r6, #8
007e5d10  07 80 a0 e1                                      mov r8, r7
007e5d14  07 00 5a e1                                      cmp sl, r7
007e5d18  e7 ff ff ca                                      bgt #0x7e5cbc
007e5d1c  60 20 95 e5                                      ldr r2, [r5, #0x60]
007e5d20  20 00 8d e2                                      add r0, sp, #0x20
007e5d24  20 10 85 e2                                      add r1, r5, #0x20
007e5d28  f1 f9 ff eb                                      bl #0x7e44f4
007e5d2c  24 30 9d e5                                      ldr r3, [sp, #0x24]
007e5d30  20 20 9d e5                                      ldr r2, [sp, #0x20]
007e5d34  38 00 84 e2                                      add r0, r4, #0x38
007e5d38  34 30 84 e5                                      str r3, [r4, #0x34]
007e5d3c  30 20 84 e5                                      str r2, [r4, #0x30]
007e5d40  58 10 84 e2                                      add r1, r4, #0x58
007e5d44  18 21 94 e5                                      ldr r2, [r4, #0x118]
007e5d48  17 fe ff eb                                      bl #0x7e55ac
007e5d4c  18 31 94 e5                                      ldr r3, [r4, #0x118]
007e5d50  00 00 53 e3                                      cmp r3, #0
007e5d54  18 30 8d e5                                      str r3, [sp, #0x18]
007e5d58  73 00 00 da                                      ble #0x7e5f2c
007e5d5c  30 30 94 e5                                      ldr r3, [r4, #0x30]
007e5d60  04 50 a0 e1                                      mov r5, r4
007e5d64  00 60 a0 e3                                      mov r6, #0
007e5d68  10 30 8d e5                                      str r3, [sp, #0x10]
007e5d6c  34 30 94 e5                                      ldr r3, [r4, #0x34]
007e5d70  04 20 a0 e1                                      mov r2, r4
007e5d74  14 30 8d e5                                      str r3, [sp, #0x14]
007e5d78  18 30 9d e5                                      ldr r3, [sp, #0x18]
007e5d7c  01 30 43 e2                                      sub r3, r3, #1
007e5d80  1c 30 8d e5                                      str r3, [sp, #0x1c]
007e5d84  00 00 56 e3                                      cmp r6, #0
007e5d88  1c 30 9d 05                                      ldreq r3, [sp, #0x1c]
007e5d8c  01 30 46 12                                      subne r3, r6, #1
007e5d90  58 00 95 e5                                      ldr r0, [r5, #0x58]
007e5d94  13 30 83 e2                                      add r3, r3, #0x13
007e5d98  83 c1 82 e0                                      add ip, r2, r3, lsl #3
007e5d9c  10 10 9d e5                                      ldr r1, [sp, #0x10]
007e5da0  83 71 92 e7                                      ldr r7, [r2, r3, lsl #3]
007e5da4  04 80 9c e5                                      ldr r8, [ip, #4]
007e5da8  04 20 8d e5                                      str r2, [sp, #4]
007e5dac  7e a1 ec eb                                      bl #0x30e3ac
007e5db0  14 10 9d e5                                      ldr r1, [sp, #0x14]
007e5db4  00 a0 a0 e1                                      mov sl, r0
007e5db8  5c 00 95 e5                                      ldr r0, [r5, #0x5c]
007e5dbc  7a a1 ec eb                                      bl #0x30e3ac
007e5dc0  0a 10 a0 e1                                      mov r1, sl
007e5dc4  00 b0 a0 e1                                      mov fp, r0
007e5dc8  07 00 a0 e1                                      mov r0, r7
007e5dcc  e6 a3 ec eb                                      bl #0x30ed6c
007e5dd0  0b 10 a0 e1                                      mov r1, fp
007e5dd4  00 40 a0 e1                                      mov r4, r0
007e5dd8  08 00 a0 e1                                      mov r0, r8
007e5ddc  e2 a3 ec eb                                      bl #0x30ed6c
007e5de0  00 10 a0 e1                                      mov r1, r0
007e5de4  04 00 a0 e1                                      mov r0, r4
007e5de8  6d a3 ec eb                                      bl #0x30eba4
007e5dec  0a 17 0d e3                                      movw r1, #0xd70a
007e5df0  23 1d 43 e3                                      movt r1, #0x3d23
007e5df4  6c a1 ec eb                                      bl #0x30e3ac
007e5df8  98 40 95 e5                                      ldr r4, [r5, #0x98]
007e5dfc  00 90 a0 e1                                      mov sb, r0
007e5e00  0a 10 a0 e1                                      mov r1, sl
007e5e04  04 00 a0 e1                                      mov r0, r4
007e5e08  d7 a3 ec eb                                      bl #0x30ed6c
007e5e0c  9c a0 95 e5                                      ldr sl, [r5, #0x9c]
007e5e10  00 30 a0 e1                                      mov r3, r0
007e5e14  0b 10 a0 e1                                      mov r1, fp
007e5e18  0a 00 a0 e1                                      mov r0, sl
007e5e1c  08 30 8d e5                                      str r3, [sp, #8]
007e5e20  d1 a3 ec eb                                      bl #0x30ed6c
007e5e24  08 30 9d e5                                      ldr r3, [sp, #8]
007e5e28  00 10 a0 e1                                      mov r1, r0
007e5e2c  01 60 86 e2                                      add r6, r6, #1
007e5e30  03 00 a0 e1                                      mov r0, r3
007e5e34  5a a3 ec eb                                      bl #0x30eba4
007e5e38  0a 17 0d e3                                      movw r1, #0xd70a
007e5e3c  23 1d 43 e3                                      movt r1, #0x3d23
007e5e40  59 a1 ec eb                                      bl #0x30e3ac
007e5e44  07 10 a0 e1                                      mov r1, r7
007e5e48  00 b0 a0 e1                                      mov fp, r0
007e5e4c  0a 00 a0 e1                                      mov r0, sl
007e5e50  c5 a3 ec eb                                      bl #0x30ed6c
007e5e54  08 10 a0 e1                                      mov r1, r8
007e5e58  00 30 a0 e1                                      mov r3, r0
007e5e5c  04 00 a0 e1                                      mov r0, r4
007e5e60  08 30 8d e5                                      str r3, [sp, #8]
007e5e64  c0 a3 ec eb                                      bl #0x30ed6c
007e5e68  08 30 9d e5                                      ldr r3, [sp, #8]
007e5e6c  00 10 a0 e1                                      mov r1, r0
007e5e70  03 00 a0 e1                                      mov r0, r3
007e5e74  4c a1 ec eb                                      bl #0x30e3ac
007e5e78  00 10 a0 e1                                      mov r1, r0
007e5e7c  fe 05 a0 e3                                      mov r0, #0x3f800000
007e5e80  83 a3 ec eb                                      bl #0x30ec94
007e5e84  09 10 a0 e1                                      mov r1, sb
007e5e88  0c 00 8d e5                                      str r0, [sp, #0xc]
007e5e8c  0a 00 a0 e1                                      mov r0, sl
007e5e90  b5 a3 ec eb                                      bl #0x30ed6c
007e5e94  0b 10 a0 e1                                      mov r1, fp
007e5e98  00 a0 a0 e1                                      mov sl, r0
007e5e9c  08 00 a0 e1                                      mov r0, r8
007e5ea0  b1 a3 ec eb                                      bl #0x30ed6c
007e5ea4  00 10 a0 e1                                      mov r1, r0
007e5ea8  0a 00 a0 e1                                      mov r0, sl
007e5eac  3e a1 ec eb                                      bl #0x30e3ac
007e5eb0  00 10 a0 e1                                      mov r1, r0
007e5eb4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007e5eb8  ab a3 ec eb                                      bl #0x30ed6c
007e5ebc  0b 10 a0 e1                                      mov r1, fp
007e5ec0  00 80 a0 e1                                      mov r8, r0
007e5ec4  07 00 a0 e1                                      mov r0, r7
007e5ec8  a7 a3 ec eb                                      bl #0x30ed6c
007e5ecc  09 10 a0 e1                                      mov r1, sb
007e5ed0  00 70 a0 e1                                      mov r7, r0
007e5ed4  04 00 a0 e1                                      mov r0, r4
007e5ed8  a3 a3 ec eb                                      bl #0x30ed6c
007e5edc  00 10 a0 e1                                      mov r1, r0
007e5ee0  07 00 a0 e1                                      mov r0, r7
007e5ee4  30 a1 ec eb                                      bl #0x30e3ac
007e5ee8  00 10 a0 e1                                      mov r1, r0
007e5eec  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007e5ef0  9d a3 ec eb                                      bl #0x30ed6c
007e5ef4  00 10 a0 e1                                      mov r1, r0
007e5ef8  14 00 9d e5                                      ldr r0, [sp, #0x14]
007e5efc  28 a3 ec eb                                      bl #0x30eba4
007e5f00  08 10 a0 e1                                      mov r1, r8
007e5f04  dc 00 85 e5                                      str r0, [r5, #0xdc]
007e5f08  10 00 9d e5                                      ldr r0, [sp, #0x10]
007e5f0c  24 a3 ec eb                                      bl #0x30eba4
007e5f10  18 30 9d e5                                      ldr r3, [sp, #0x18]
007e5f14  d8 00 85 e5                                      str r0, [r5, #0xd8]
007e5f18  04 20 9d e5                                      ldr r2, [sp, #4]
007e5f1c  03 00 56 e1                                      cmp r6, r3
007e5f20  08 50 85 e2                                      add r5, r5, #8
007e5f24  96 ff ff ba                                      blt #0x7e5d84
007e5f28  02 40 a0 e1                                      mov r4, r2
007e5f2c  04 00 a0 e1                                      mov r0, r4
007e5f30  2c d0 8d e2                                      add sp, sp, #0x2c
007e5f34  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
007e5f38  40 ee 1a 00 88 18 00 00                          .byte 0x40, 0xee, 0x1a, 0x00, 0x88, 0x18, 0x00, 0x00

; FUNCTION 0x007e602c, declared_size=60, range_size=60, mode=arm
; class-group: b2PolygonShape
; alias: _ZN14b2PolygonShapeD0Ev
; demangled: b2PolygonShape::~b2PolygonShape()
; decoder-mode: arm
007e602c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007e6030  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
007e6034  10 40 2d e9                                      push {r4, lr}
007e6038  03 30 8f e0                                      add r3, pc, r3
007e603c  02 20 93 e7                                      ldr r2, [r3, r2]
007e6040  00 40 a0 e1                                      mov r4, r0
007e6044  08 20 82 e2                                      add r2, r2, #8
007e6048  00 20 80 e5                                      str r2, [r0]
007e604c  49 00 00 eb                                      bl #0x7e6178
007e6050  04 00 a0 e1                                      mov r0, r4
007e6054  95 a0 ec eb                                      bl #0x30e2b0
007e6058  04 00 a0 e1                                      mov r0, r4
007e605c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007e6060  58 ea 1a 00 88 18 00 00                          .byte 0x58, 0xea, 0x1a, 0x00, 0x88, 0x18, 0x00, 0x00
