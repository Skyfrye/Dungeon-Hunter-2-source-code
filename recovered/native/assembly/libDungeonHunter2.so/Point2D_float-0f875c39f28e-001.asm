; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00312848, declared_size=760, range_size=760, mode=arm
; class-group: Point2D<float>
; alias: _ZN7Point2DIfE16lineIntersectionERKS0_S2_S2_S2_RS0_RfS4_
; demangled: Point2D<float>::lineIntersection(Point2D<float> const&, Point2D<float> const&, Point2D<float> const&, Point2D<float> const&, Point2D<float>&, float&, float&)
; decoder-mode: arm
00312848  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0031284c  00 c0 90 e5                                      ldr ip, [r0]
00312850  14 d0 4d e2                                      sub sp, sp, #0x14
00312854  01 50 a0 e1                                      mov r5, r1
00312858  00 40 a0 e1                                      mov r4, r0
0031285c  00 00 91 e5                                      ldr r0, [r1]
00312860  0c 10 a0 e1                                      mov r1, ip
00312864  02 60 a0 e1                                      mov r6, r2
00312868  04 c0 8d e5                                      str ip, [sp, #4]
0031286c  03 90 a0 e1                                      mov sb, r3
00312870  cd ee ff eb                                      bl #0x30e3ac
00312874  04 30 94 e5                                      ldr r3, [r4, #4]
00312878  00 80 a0 e1                                      mov r8, r0
0031287c  04 00 95 e5                                      ldr r0, [r5, #4]
00312880  03 10 a0 e1                                      mov r1, r3
00312884  08 30 8d e5                                      str r3, [sp, #8]
00312888  c7 ee ff eb                                      bl #0x30e3ac
0031288c  00 a0 96 e5                                      ldr sl, [r6]
00312890  00 70 a0 e1                                      mov r7, r0
00312894  00 00 99 e5                                      ldr r0, [sb]
00312898  0a 10 a0 e1                                      mov r1, sl
0031289c  c2 ee ff eb                                      bl #0x30e3ac
003128a0  0c 00 8d e5                                      str r0, [sp, #0xc]
003128a4  04 b0 96 e5                                      ldr fp, [r6, #4]
003128a8  04 00 99 e5                                      ldr r0, [sb, #4]
003128ac  38 50 9d e5                                      ldr r5, [sp, #0x38]
003128b0  0b 10 a0 e1                                      mov r1, fp
003128b4  bc ee ff eb                                      bl #0x30e3ac
003128b8  00 90 a0 e1                                      mov sb, r0
003128bc  09 10 a0 e1                                      mov r1, sb
003128c0  08 00 a0 e1                                      mov r0, r8
003128c4  28 f1 ff eb                                      bl #0x30ed6c
003128c8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
003128cc  00 60 a0 e1                                      mov r6, r0
003128d0  07 00 a0 e1                                      mov r0, r7
003128d4  24 f1 ff eb                                      bl #0x30ed6c
003128d8  00 10 a0 e1                                      mov r1, r0
003128dc  06 00 a0 e1                                      mov r0, r6
003128e0  b1 ee ff eb                                      bl #0x30e3ac
003128e4  08 30 9d e5                                      ldr r3, [sp, #8]
003128e8  0b 10 a0 e1                                      mov r1, fp
003128ec  00 60 a0 e1                                      mov r6, r0
003128f0  03 00 a0 e1                                      mov r0, r3
003128f4  ac ee ff eb                                      bl #0x30e3ac
003128f8  04 c0 9d e5                                      ldr ip, [sp, #4]
003128fc  00 b0 a0 e1                                      mov fp, r0
00312900  0a 10 a0 e1                                      mov r1, sl
00312904  0c 00 a0 e1                                      mov r0, ip
00312908  a7 ee ff eb                                      bl #0x30e3ac
0031290c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00312910  00 a0 a0 e1                                      mov sl, r0
00312914  0b 00 a0 e1                                      mov r0, fp
00312918  13 f1 ff eb                                      bl #0x30ed6c
0031291c  09 10 a0 e1                                      mov r1, sb
00312920  00 30 a0 e1                                      mov r3, r0
00312924  0a 00 a0 e1                                      mov r0, sl
00312928  08 30 8d e5                                      str r3, [sp, #8]
0031292c  0e f1 ff eb                                      bl #0x30ed6c
00312930  08 30 9d e5                                      ldr r3, [sp, #8]
00312934  00 10 a0 e1                                      mov r1, r0
00312938  03 00 a0 e1                                      mov r0, r3
0031293c  9a ee ff eb                                      bl #0x30e3ac
00312940  08 10 a0 e1                                      mov r1, r8
00312944  00 90 a0 e1                                      mov sb, r0
00312948  0b 00 a0 e1                                      mov r0, fp
0031294c  06 f1 ff eb                                      bl #0x30ed6c
00312950  07 10 a0 e1                                      mov r1, r7
00312954  00 b0 a0 e1                                      mov fp, r0
00312958  0a 00 a0 e1                                      mov r0, sl
0031295c  02 f1 ff eb                                      bl #0x30ed6c
00312960  00 10 a0 e1                                      mov r1, r0
00312964  0b 00 a0 e1                                      mov r0, fp
00312968  8f ee ff eb                                      bl #0x30e3ac
0031296c  17 17 0b e3                                      movw r1, #0xb717
00312970  00 a0 a0 e1                                      mov sl, r0
00312974  d1 18 43 e3                                      movt r1, #0x38d1
00312978  06 00 a0 e1                                      mov r0, r6
0031297c  62 ef ff eb                                      bl #0x30e70c
00312980  00 00 50 e3                                      cmp r0, #0
00312984  1b 00 00 0a                                      beq #0x3129f8
00312988  17 17 0b e3                                      movw r1, #0xb717
0031298c  06 00 a0 e1                                      mov r0, r6
00312990  d1 18 4b e3                                      movt r1, #0xb8d1
00312994  57 ee ff eb                                      bl #0x30e2f8
00312998  00 00 50 e3                                      cmp r0, #0
0031299c  15 00 00 0a                                      beq #0x3129f8
003129a0  17 17 0b e3                                      movw r1, #0xb717
003129a4  09 00 a0 e1                                      mov r0, sb
003129a8  d1 18 43 e3                                      movt r1, #0x38d1
003129ac  56 ef ff eb                                      bl #0x30e70c
003129b0  00 00 50 e3                                      cmp r0, #0
003129b4  5f 00 00 0a                                      beq #0x312b38
003129b8  17 17 0b e3                                      movw r1, #0xb717
003129bc  09 00 a0 e1                                      mov r0, sb
003129c0  d1 18 4b e3                                      movt r1, #0xb8d1
003129c4  4b ee ff eb                                      bl #0x30e2f8
003129c8  00 00 50 e3                                      cmp r0, #0
003129cc  59 00 00 0a                                      beq #0x312b38
003129d0  0a 10 a0 e1                                      mov r1, sl
003129d4  09 00 a0 e1                                      mov r0, sb
003129d8  73 ee ff eb                                      bl #0x30e3ac
003129dc  17 17 0b e3                                      movw r1, #0xb717
003129e0  02 01 c0 e3                                      bic r0, r0, #0x80000000
003129e4  d1 18 43 e3                                      movt r1, #0x38d1
003129e8  47 ef ff eb                                      bl #0x30e70c
003129ec  00 00 50 e2                                      subs r0, r0, #0
003129f0  01 00 a0 13                                      movne r0, #1
003129f4  46 00 00 ea                                      b #0x312b14
003129f8  06 10 a0 e1                                      mov r1, r6
003129fc  fe 05 a0 e3                                      mov r0, #0x3f800000
00312a00  a3 f0 ff eb                                      bl #0x30ec94
00312a04  00 60 a0 e1                                      mov r6, r0
00312a08  06 10 a0 e1                                      mov r1, r6
00312a0c  09 00 a0 e1                                      mov r0, sb
00312a10  d5 f0 ff eb                                      bl #0x30ed6c
00312a14  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
00312a18  06 10 a0 e1                                      mov r1, r6
00312a1c  00 00 82 e5                                      str r0, [r2]
00312a20  0a 00 a0 e1                                      mov r0, sl
00312a24  d0 f0 ff eb                                      bl #0x30ed6c
00312a28  40 30 9d e5                                      ldr r3, [sp, #0x40]
00312a2c  00 00 83 e5                                      str r0, [r3]
00312a30  00 80 85 e5                                      str r8, [r5]
00312a34  04 70 85 e5                                      str r7, [r5, #4]
00312a38  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
00312a3c  08 00 a0 e1                                      mov r0, r8
00312a40  00 10 92 e5                                      ldr r1, [r2]
00312a44  c8 f0 ff eb                                      bl #0x30ed6c
00312a48  00 00 85 e5                                      str r0, [r5]
00312a4c  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00312a50  00 80 a0 e1                                      mov r8, r0
00312a54  07 00 a0 e1                                      mov r0, r7
00312a58  00 10 93 e5                                      ldr r1, [r3]
00312a5c  c2 f0 ff eb                                      bl #0x30ed6c
00312a60  04 00 85 e5                                      str r0, [r5, #4]
00312a64  00 10 94 e5                                      ldr r1, [r4]
00312a68  00 60 a0 e1                                      mov r6, r0
00312a6c  08 00 a0 e1                                      mov r0, r8
00312a70  4b f0 ff eb                                      bl #0x30eba4
00312a74  00 00 85 e5                                      str r0, [r5]
00312a78  04 10 94 e5                                      ldr r1, [r4, #4]
00312a7c  06 00 a0 e1                                      mov r0, r6
00312a80  47 f0 ff eb                                      bl #0x30eba4
00312a84  04 00 85 e5                                      str r0, [r5, #4]
00312a88  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
00312a8c  00 10 a0 e3                                      mov r1, #0
00312a90  00 40 92 e5                                      ldr r4, [r2]
00312a94  04 00 a0 e1                                      mov r0, r4
00312a98  85 ee ff eb                                      bl #0x30e4b4
00312a9c  00 00 50 e3                                      cmp r0, #0
00312aa0  13 00 00 0a                                      beq #0x312af4
00312aa4  04 00 a0 e1                                      mov r0, r4
00312aa8  fe 15 a0 e3                                      mov r1, #0x3f800000
00312aac  be ef ff eb                                      bl #0x30e9ac
00312ab0  00 00 50 e3                                      cmp r0, #0
00312ab4  0e 00 00 0a                                      beq #0x312af4
00312ab8  40 30 9d e5                                      ldr r3, [sp, #0x40]
00312abc  00 10 a0 e3                                      mov r1, #0
00312ac0  00 40 93 e5                                      ldr r4, [r3]
00312ac4  04 00 a0 e1                                      mov r0, r4
00312ac8  79 ee ff eb                                      bl #0x30e4b4
00312acc  00 00 50 e3                                      cmp r0, #0
00312ad0  05 00 00 0a                                      beq #0x312aec
00312ad4  04 00 a0 e1                                      mov r0, r4
00312ad8  fe 15 a0 e3                                      mov r1, #0x3f800000
00312adc  b2 ef ff eb                                      bl #0x30e9ac
00312ae0  00 00 50 e3                                      cmp r0, #0
00312ae4  05 00 a0 13                                      movne r0, #5
00312ae8  09 00 00 1a                                      bne #0x312b14
00312aec  03 00 a0 e3                                      mov r0, #3
00312af0  07 00 00 ea                                      b #0x312b14
00312af4  40 20 9d e5                                      ldr r2, [sp, #0x40]
00312af8  00 10 a0 e3                                      mov r1, #0
00312afc  00 40 92 e5                                      ldr r4, [r2]
00312b00  04 00 a0 e1                                      mov r0, r4
00312b04  6a ee ff eb                                      bl #0x30e4b4
00312b08  00 00 50 e3                                      cmp r0, #0
00312b0c  02 00 00 1a                                      bne #0x312b1c
00312b10  02 00 a0 e3                                      mov r0, #2
00312b14  14 d0 8d e2                                      add sp, sp, #0x14
00312b18  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00312b1c  04 00 a0 e1                                      mov r0, r4
00312b20  fe 15 a0 e3                                      mov r1, #0x3f800000
00312b24  a0 ef ff eb                                      bl #0x30e9ac
00312b28  00 00 50 e3                                      cmp r0, #0
00312b2c  04 00 a0 13                                      movne r0, #4
00312b30  f6 ff ff 0a                                      beq #0x312b10
00312b34  f6 ff ff ea                                      b #0x312b14
00312b38  00 00 a0 e3                                      mov r0, #0
00312b3c  f4 ff ff ea                                      b #0x312b14

; FUNCTION 0x00312b40, declared_size=44, range_size=44, mode=arm
; class-group: Point2D<float>
; alias: _ZN7Point2DIfE16lineIntersectionERKS0_S2_S2_S2_RS0_
; demangled: Point2D<float>::lineIntersection(Point2D<float> const&, Point2D<float> const&, Point2D<float> const&, Point2D<float> const&, Point2D<float>&)
; decoder-mode: arm
00312b40  04 e0 2d e5                                      str lr, [sp, #-4]!
00312b44  1c d0 4d e2                                      sub sp, sp, #0x1c
00312b48  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00312b4c  00 c0 8d e5                                      str ip, [sp]
00312b50  14 c0 8d e2                                      add ip, sp, #0x14
00312b54  04 c0 8d e5                                      str ip, [sp, #4]
00312b58  10 c0 8d e2                                      add ip, sp, #0x10
00312b5c  08 c0 8d e5                                      str ip, [sp, #8]
00312b60  38 ff ff eb                                      bl #0x312848
00312b64  1c d0 8d e2                                      add sp, sp, #0x1c
00312b68  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00412258, declared_size=100, range_size=100, mode=arm
; class-group: Point2D<float>
; alias: _ZN7Point2DIfE9normalizeEv
; demangled: Point2D<float>::normalize()
; decoder-mode: arm
00412258  70 40 2d e9                                      push {r4, r5, r6, lr}
0041225c  00 40 a0 e1                                      mov r4, r0
00412260  00 00 90 e5                                      ldr r0, [r0]
00412264  04 60 94 e5                                      ldr r6, [r4, #4]
00412268  00 10 a0 e1                                      mov r1, r0
0041226c  be f2 fb eb                                      bl #0x30ed6c
00412270  06 10 a0 e1                                      mov r1, r6
00412274  00 50 a0 e1                                      mov r5, r0
00412278  06 00 a0 e1                                      mov r0, r6
0041227c  ba f2 fb eb                                      bl #0x30ed6c
00412280  00 10 a0 e1                                      mov r1, r0
00412284  05 00 a0 e1                                      mov r0, r5
00412288  45 f2 fb eb                                      bl #0x30eba4
0041228c  a4 ef fb eb                                      bl #0x30e124
00412290  00 50 a0 e1                                      mov r5, r0
00412294  00 10 a0 e1                                      mov r1, r0
00412298  00 00 94 e5                                      ldr r0, [r4]
0041229c  7c f2 fb eb                                      bl #0x30ec94
004122a0  05 10 a0 e1                                      mov r1, r5
004122a4  00 00 84 e5                                      str r0, [r4]
004122a8  04 00 94 e5                                      ldr r0, [r4, #4]
004122ac  78 f2 fb eb                                      bl #0x30ec94
004122b0  04 00 84 e5                                      str r0, [r4, #4]
004122b4  04 00 a0 e1                                      mov r0, r4
004122b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
