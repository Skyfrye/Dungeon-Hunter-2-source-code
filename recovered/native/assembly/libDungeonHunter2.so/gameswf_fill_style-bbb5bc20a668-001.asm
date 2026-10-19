; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00761878, declared_size=248, range_size=248, mode=arm
; class-group: gameswf::fill_style
; alias: _ZN7gameswf10fill_styleC1ERKS0_
; demangled: gameswf::fill_style::fill_style(gameswf::fill_style const&)
; decoder-mode: arm
00761878  e8 30 9f e5                                      ldr r3, [pc, #0xe8]
0076187c  e8 20 9f e5                                      ldr r2, [pc, #0xe8]
00761880  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00761884  03 30 8f e0                                      add r3, pc, r3
00761888  02 20 93 e7                                      ldr r2, [r3, r2]
0076188c  0c c0 80 e2                                      add ip, r0, #0xc
00761890  0c e0 81 e2                                      add lr, r1, #0xc
00761894  08 20 82 e2                                      add r2, r2, #8
00761898  00 20 80 e5                                      str r2, [r0]
0076189c  04 20 91 e5                                      ldr r2, [r1, #4]
007618a0  00 40 a0 e1                                      mov r4, r0
007618a4  01 50 a0 e1                                      mov r5, r1
007618a8  04 20 80 e5                                      str r2, [r0, #4]
007618ac  08 20 91 e5                                      ldr r2, [r1, #8]
007618b0  00 60 a0 e3                                      mov r6, #0
007618b4  08 20 80 e5                                      str r2, [r0, #8]
007618b8  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
007618bc  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
007618c0  03 00 9e e8                                      ldm lr, {r0, r1}
007618c4  03 00 8c e8                                      stm ip, {r0, r1}
007618c8  24 60 84 e5                                      str r6, [r4, #0x24]
007618cc  28 60 84 e5                                      str r6, [r4, #0x28]
007618d0  2c 60 84 e5                                      str r6, [r4, #0x2c]
007618d4  30 60 c4 e5                                      strb r6, [r4, #0x30]
007618d8  24 00 84 e2                                      add r0, r4, #0x24
007618dc  28 10 95 e5                                      ldr r1, [r5, #0x28]
007618e0  cd ff ff eb                                      bl #0x76181c
007618e4  28 30 94 e5                                      ldr r3, [r4, #0x28]
007618e8  06 00 53 e1                                      cmp r3, r6
007618ec  0b 00 00 da                                      ble #0x761920
007618f0  06 70 a0 e1                                      mov r7, r6
007618f4  24 00 94 e5                                      ldr r0, [r4, #0x24]
007618f8  24 10 95 e5                                      ldr r1, [r5, #0x24]
007618fc  05 20 a0 e3                                      mov r2, #5
00761900  06 00 80 e0                                      add r0, r0, r6
00761904  06 10 81 e0                                      add r1, r1, r6
00761908  d6 b3 ee eb                                      bl #0x30e868
0076190c  28 30 94 e5                                      ldr r3, [r4, #0x28]
00761910  01 70 87 e2                                      add r7, r7, #1
00761914  05 60 86 e2                                      add r6, r6, #5
00761918  03 00 57 e1                                      cmp r7, r3
0076191c  f4 ff ff ba                                      blt #0x7618f4
00761920  34 00 95 e5                                      ldr r0, [r5, #0x34]
00761924  00 00 50 e3                                      cmp r0, #0
00761928  34 00 84 e5                                      str r0, [r4, #0x34]
0076192c  00 00 00 0a                                      beq #0x761934
00761930  cb e0 ff eb                                      bl #0x759c64
00761934  38 00 95 e5                                      ldr r0, [r5, #0x38]
00761938  00 00 50 e3                                      cmp r0, #0
0076193c  38 00 84 e5                                      str r0, [r4, #0x38]
00761940  00 00 00 0a                                      beq #0x761948
00761944  c6 e0 ff eb                                      bl #0x759c64
00761948  3c c0 84 e2                                      add ip, r4, #0x3c
0076194c  3c 50 85 e2                                      add r5, r5, #0x3c
00761950  0f 00 b5 e8                                      ldm r5!, {r0, r1, r2, r3}
00761954  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00761958  03 00 95 e8                                      ldm r5, {r0, r1}
0076195c  03 00 8c e8                                      stm ip, {r0, r1}
00761960  04 00 a0 e1                                      mov r0, r4
00761964  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00761968  0c 32 23 00 d8 47 00 00                          .byte 0x0c, 0x32, 0x23, 0x00, 0xd8, 0x47, 0x00, 0x00

; FUNCTION 0x0077a780, declared_size=184, range_size=184, mode=arm
; class-group: gameswf::fill_style
; alias: _ZN7gameswf10fill_styleaSERKS0_
; demangled: gameswf::fill_style::operator=(gameswf::fill_style const&)
; decoder-mode: arm
0077a780  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0077a784  04 30 91 e5                                      ldr r3, [r1, #4]
0077a788  0c c0 80 e2                                      add ip, r0, #0xc
0077a78c  0c e0 81 e2                                      add lr, r1, #0xc
0077a790  04 30 80 e5                                      str r3, [r0, #4]
0077a794  08 30 91 e5                                      ldr r3, [r1, #8]
0077a798  00 40 a0 e1                                      mov r4, r0
0077a79c  01 50 a0 e1                                      mov r5, r1
0077a7a0  08 30 80 e5                                      str r3, [r0, #8]
0077a7a4  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
0077a7a8  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0077a7ac  03 00 9e e8                                      ldm lr, {r0, r1}
0077a7b0  03 00 8c e8                                      stm ip, {r0, r1}
0077a7b4  28 10 95 e5                                      ldr r1, [r5, #0x28]
0077a7b8  24 00 84 e2                                      add r0, r4, #0x24
0077a7bc  16 9c ff eb                                      bl #0x76181c
0077a7c0  28 30 94 e5                                      ldr r3, [r4, #0x28]
0077a7c4  00 00 53 e3                                      cmp r3, #0
0077a7c8  0c 00 00 da                                      ble #0x77a800
0077a7cc  00 60 a0 e3                                      mov r6, #0
0077a7d0  06 70 a0 e1                                      mov r7, r6
0077a7d4  24 00 94 e5                                      ldr r0, [r4, #0x24]
0077a7d8  24 10 95 e5                                      ldr r1, [r5, #0x24]
0077a7dc  05 20 a0 e3                                      mov r2, #5
0077a7e0  06 00 80 e0                                      add r0, r0, r6
0077a7e4  06 10 81 e0                                      add r1, r1, r6
0077a7e8  1e 50 ee eb                                      bl #0x30e868
0077a7ec  28 30 94 e5                                      ldr r3, [r4, #0x28]
0077a7f0  01 70 87 e2                                      add r7, r7, #1
0077a7f4  05 60 86 e2                                      add r6, r6, #5
0077a7f8  03 00 57 e1                                      cmp r7, r3
0077a7fc  f4 ff ff ba                                      blt #0x77a7d4
0077a800  34 00 84 e2                                      add r0, r4, #0x34
0077a804  34 10 95 e5                                      ldr r1, [r5, #0x34]
0077a808  cc ff ff eb                                      bl #0x77a740
0077a80c  38 00 84 e2                                      add r0, r4, #0x38
0077a810  38 10 95 e5                                      ldr r1, [r5, #0x38]
0077a814  f0 9b ff eb                                      bl #0x7617dc
0077a818  3c 50 85 e2                                      add r5, r5, #0x3c
0077a81c  3c c0 84 e2                                      add ip, r4, #0x3c
0077a820  0f 00 b5 e8                                      ldm r5!, {r0, r1, r2, r3}
0077a824  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0077a828  03 00 95 e8                                      ldm r5, {r0, r1}
0077a82c  03 00 8c e8                                      stm ip, {r0, r1}
0077a830  04 00 a0 e1                                      mov r0, r4
0077a834  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00784434, declared_size=280, range_size=280, mode=arm
; class-group: gameswf::fill_style
; alias: _ZNK7gameswf10fill_style15sample_gradientEi
; demangled: gameswf::fill_style::sample_gradient(int) const
; decoder-mode: arm
00784434  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00784438  24 50 90 e5                                      ldr r5, [r0, #0x24]
0078443c  0c d0 4d e2                                      sub sp, sp, #0xc
00784440  00 30 d5 e5                                      ldrb r3, [r5]
00784444  01 00 53 e1                                      cmp r3, r1
00784448  15 00 00 ca                                      bgt #0x7844a4
0078444c  28 20 90 e5                                      ldr r2, [r0, #0x28]
00784450  01 00 52 e3                                      cmp r2, #1
00784454  0f 00 00 da                                      ble #0x784498
00784458  05 70 d5 e5                                      ldrb r7, [r5, #5]
0078445c  07 00 51 e1                                      cmp r1, r7
00784460  00 60 a0 d3                                      movle r6, #0
00784464  05 40 a0 d3                                      movle r4, #5
00784468  1a 00 00 da                                      ble #0x7844d8
0078446c  0a 40 a0 e3                                      mov r4, #0xa
00784470  01 60 a0 e3                                      mov r6, #1
00784474  04 00 00 ea                                      b #0x78448c
00784478  04 70 d5 e7                                      ldrb r7, [r5, r4]
0078447c  05 30 84 e2                                      add r3, r4, #5
00784480  07 00 51 e1                                      cmp r1, r7
00784484  11 00 00 da                                      ble #0x7844d0
00784488  03 40 a0 e1                                      mov r4, r3
0078448c  01 60 86 e2                                      add r6, r6, #1
00784490  02 00 56 e1                                      cmp r6, r2
00784494  f7 ff ff 1a                                      bne #0x784478
00784498  01 20 42 e2                                      sub r2, r2, #1
0078449c  02 21 82 e0                                      add r2, r2, r2, lsl #2
007844a0  02 50 85 e0                                      add r5, r5, r2
007844a4  01 c0 d5 e5                                      ldrb ip, [r5, #1]
007844a8  04 30 d5 e5                                      ldrb r3, [r5, #4]
007844ac  03 20 d5 e5                                      ldrb r2, [r5, #3]
007844b0  02 10 d5 e5                                      ldrb r1, [r5, #2]
007844b4  00 00 a0 e3                                      mov r0, #0
007844b8  1c 00 c7 e7                                      bfi r0, ip, #0, #8
007844bc  11 04 cf e7                                      bfi r0, r1, #8, #8
007844c0  12 08 d7 e7                                      bfi r0, r2, #0x10, #8
007844c4  13 0c df e7                                      bfi r0, r3, #0x18, #8
007844c8  0c d0 8d e2                                      add sp, sp, #0xc
007844cc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
007844d0  01 60 46 e2                                      sub r6, r6, #1
007844d4  06 61 86 e0                                      add r6, r6, r6, lsl #2
007844d8  06 80 d5 e7                                      ldrb r8, [r5, r6]
007844dc  07 00 58 e1                                      cmp r8, r7
007844e0  00 30 a0 03                                      moveq r3, #0
007844e4  08 00 00 0a                                      beq #0x78450c
007844e8  01 00 68 e0                                      rsb r0, r8, r1
007844ec  1c 29 ee eb                                      bl #0x30e964
007844f0  00 a0 a0 e1                                      mov sl, r0
007844f4  07 00 68 e0                                      rsb r0, r8, r7
007844f8  19 29 ee eb                                      bl #0x30e964
007844fc  00 10 a0 e1                                      mov r1, r0
00784500  0a 00 a0 e1                                      mov r0, sl
00784504  e2 29 ee eb                                      bl #0x30ec94
00784508  00 30 a0 e1                                      mov r3, r0
0078450c  04 20 85 e0                                      add r2, r5, r4
00784510  06 10 85 e0                                      add r1, r5, r6
00784514  00 c0 e0 e3                                      mvn ip, #0
00784518  01 10 81 e2                                      add r1, r1, #1
0078451c  01 20 82 e2                                      add r2, r2, #1
00784520  04 00 8d e2                                      add r0, sp, #4
00784524  07 c0 cd e5                                      strb ip, [sp, #7]
00784528  04 c0 cd e5                                      strb ip, [sp, #4]
0078452c  05 c0 cd e5                                      strb ip, [sp, #5]
00784530  06 c0 cd e5                                      strb ip, [sp, #6]
00784534  e7 43 00 eb                                      bl #0x7954d8
00784538  07 30 dd e5                                      ldrb r3, [sp, #7]
0078453c  06 20 dd e5                                      ldrb r2, [sp, #6]
00784540  05 10 dd e5                                      ldrb r1, [sp, #5]
00784544  04 c0 dd e5                                      ldrb ip, [sp, #4]
00784548  d9 ff ff ea                                      b #0x7844b4

; FUNCTION 0x0078454c, declared_size=364, range_size=364, mode=arm
; class-group: gameswf::fill_style
; alias: _ZN7gameswf10fill_style8set_lerpERKS0_S2_f
; demangled: gameswf::fill_style::set_lerp(gameswf::fill_style const&, gameswf::fill_style const&, float)
; decoder-mode: arm
0078454c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00784550  01 60 a0 e1                                      mov r6, r1
00784554  04 10 91 e5                                      ldr r1, [r1, #4]
00784558  02 70 a0 e1                                      mov r7, r2
0078455c  14 d0 4d e2                                      sub sp, sp, #0x14
00784560  04 10 80 e5                                      str r1, [r0, #4]
00784564  0a b0 d2 e5                                      ldrb fp, [r2, #0xa]
00784568  09 20 d2 e5                                      ldrb r2, [r2, #9]
0078456c  0a c0 d6 e5                                      ldrb ip, [r6, #0xa]
00784570  0b e0 d6 e5                                      ldrb lr, [r6, #0xb]
00784574  09 40 d6 e5                                      ldrb r4, [r6, #9]
00784578  08 80 d6 e5                                      ldrb r8, [r6, #8]
0078457c  00 20 8d e5                                      str r2, [sp]
00784580  08 20 d7 e5                                      ldrb r2, [r7, #8]
00784584  00 50 a0 e1                                      mov r5, r0
00784588  03 a0 a0 e1                                      mov sl, r3
0078458c  04 20 8d e5                                      str r2, [sp, #4]
00784590  0b 90 d7 e5                                      ldrb sb, [r7, #0xb]
00784594  0e c0 cd e5                                      strb ip, [sp, #0xe]
00784598  00 c0 9d e5                                      ldr ip, [sp]
0078459c  08 00 80 e2                                      add r0, r0, #8
007845a0  0c 10 8d e2                                      add r1, sp, #0xc
007845a4  09 c0 cd e5                                      strb ip, [sp, #9]
007845a8  04 c0 9d e5                                      ldr ip, [sp, #4]
007845ac  08 20 8d e2                                      add r2, sp, #8
007845b0  0f e0 cd e5                                      strb lr, [sp, #0xf]
007845b4  08 c0 cd e5                                      strb ip, [sp, #8]
007845b8  0d 40 cd e5                                      strb r4, [sp, #0xd]
007845bc  0c 80 cd e5                                      strb r8, [sp, #0xc]
007845c0  0b 90 cd e5                                      strb sb, [sp, #0xb]
007845c4  0a b0 cd e5                                      strb fp, [sp, #0xa]
007845c8  c2 43 00 eb                                      bl #0x7954d8
007845cc  0a 30 a0 e1                                      mov r3, sl
007845d0  0c 00 85 e2                                      add r0, r5, #0xc
007845d4  0c 10 86 e2                                      add r1, r6, #0xc
007845d8  0c 20 87 e2                                      add r2, r7, #0xc
007845dc  75 40 00 eb                                      bl #0x7947b8
007845e0  28 30 95 e5                                      ldr r3, [r5, #0x28]
007845e4  00 00 53 e3                                      cmp r3, #0
007845e8  25 00 00 da                                      ble #0x784684
007845ec  00 40 a0 e3                                      mov r4, #0
007845f0  04 80 a0 e1                                      mov r8, r4
007845f4  24 30 96 e5                                      ldr r3, [r6, #0x24]
007845f8  01 80 88 e2                                      add r8, r8, #1
007845fc  04 00 d3 e7                                      ldrb r0, [r3, r4]
00784600  36 27 ee eb                                      bl #0x30e2e0
00784604  24 30 97 e5                                      ldr r3, [r7, #0x24]
00784608  00 90 a0 e1                                      mov sb, r0
0078460c  24 b0 95 e5                                      ldr fp, [r5, #0x24]
00784610  04 00 d3 e7                                      ldrb r0, [r3, r4]
00784614  31 27 ee eb                                      bl #0x30e2e0
00784618  09 10 a0 e1                                      mov r1, sb
0078461c  62 27 ee eb                                      bl #0x30e3ac
00784620  00 10 a0 e1                                      mov r1, r0
00784624  0a 00 a0 e1                                      mov r0, sl
00784628  cf 29 ee eb                                      bl #0x30ed6c
0078462c  00 10 a0 e1                                      mov r1, r0
00784630  09 00 a0 e1                                      mov r0, sb
00784634  5a 29 ee eb                                      bl #0x30eba4
00784638  3f 14 a0 e3                                      mov r1, #0x3f000000
0078463c  58 29 ee eb                                      bl #0x30eba4
00784640  a1 27 ee eb                                      bl #0x30e4cc
00784644  04 00 cb e7                                      strb r0, [fp, r4]
00784648  24 00 95 e5                                      ldr r0, [r5, #0x24]
0078464c  24 10 96 e5                                      ldr r1, [r6, #0x24]
00784650  24 20 97 e5                                      ldr r2, [r7, #0x24]
00784654  04 00 80 e0                                      add r0, r0, r4
00784658  04 10 81 e0                                      add r1, r1, r4
0078465c  04 20 82 e0                                      add r2, r2, r4
00784660  0a 30 a0 e1                                      mov r3, sl
00784664  01 00 80 e2                                      add r0, r0, #1
00784668  01 10 81 e2                                      add r1, r1, #1
0078466c  01 20 82 e2                                      add r2, r2, #1
00784670  98 43 00 eb                                      bl #0x7954d8
00784674  28 30 95 e5                                      ldr r3, [r5, #0x28]
00784678  05 40 84 e2                                      add r4, r4, #5
0078467c  03 00 58 e1                                      cmp r8, r3
00784680  db ff ff ba                                      blt #0x7845f4
00784684  34 00 85 e2                                      add r0, r5, #0x34
00784688  00 10 a0 e3                                      mov r1, #0
0078468c  2b d8 ff eb                                      bl #0x77a740
00784690  38 00 85 e2                                      add r0, r5, #0x38
00784694  38 10 96 e5                                      ldr r1, [r6, #0x38]
00784698  4f 74 ff eb                                      bl #0x7617dc
0078469c  3c 00 85 e2                                      add r0, r5, #0x3c
007846a0  3c 10 86 e2                                      add r1, r6, #0x3c
007846a4  3c 20 87 e2                                      add r2, r7, #0x3c
007846a8  0a 30 a0 e1                                      mov r3, sl
007846ac  41 40 00 eb                                      bl #0x7947b8
007846b0  14 d0 8d e2                                      add sp, sp, #0x14
007846b4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007846b8, declared_size=520, range_size=520, mode=arm
; class-group: gameswf::fill_style
; alias: _ZNK7gameswf10fill_style22create_gradient_bitmapEv
; demangled: gameswf::fill_style::create_gradient_bitmap() const
; decoder-mode: arm
007846b8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
007846bc  04 30 90 e5                                      ldr r3, [r0, #4]
007846c0  24 d0 4d e2                                      sub sp, sp, #0x24
007846c4  00 a0 a0 e1                                      mov sl, r0
007846c8  10 00 53 e3                                      cmp r3, #0x10
007846cc  59 00 00 0a                                      beq #0x784838
007846d0  12 00 53 e3                                      cmp r3, #0x12
007846d4  00 50 a0 13                                      movne r5, #0
007846d8  07 00 00 0a                                      beq #0x7846fc
007846dc  05 00 a0 e1                                      mov r0, r5
007846e0  f9 bc ff eb                                      bl #0x773acc
007846e4  00 40 a0 e1                                      mov r4, r0
007846e8  05 00 a0 e1                                      mov r0, r5
007846ec  bd 56 ff eb                                      bl #0x75a1e8
007846f0  04 00 a0 e1                                      mov r0, r4
007846f4  24 d0 8d e2                                      add sp, sp, #0x24
007846f8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
007846fc  40 00 a0 e3                                      mov r0, #0x40
00784700  00 10 a0 e1                                      mov r1, r0
00784704  6a c5 00 eb                                      bl #0x7b5cb4
00784708  00 50 a0 e1                                      mov r5, r0
0078470c  10 00 90 e5                                      ldr r0, [r0, #0x10]
00784710  00 00 50 e3                                      cmp r0, #0
00784714  f0 ff ff da                                      ble #0x7846dc
00784718  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0078471c  00 60 a0 e3                                      mov r6, #0
00784720  00 00 53 e3                                      cmp r3, #0
00784724  00 40 a0 c3                                      movgt r4, #0
00784728  01 00 00 ca                                      bgt #0x784734
0078472c  3d 00 00 ea                                      b #0x784828
00784730  10 00 95 e5                                      ldr r0, [r5, #0x10]
00784734  01 00 40 e2                                      sub r0, r0, #1
00784738  89 28 ee eb                                      bl #0x30e964
0078473c  3f 14 a0 e3                                      mov r1, #0x3f000000
00784740  89 29 ee eb                                      bl #0x30ed6c
00784744  00 70 a0 e1                                      mov r7, r0
00784748  06 00 a0 e1                                      mov r0, r6
0078474c  84 28 ee eb                                      bl #0x30e964
00784750  07 10 a0 e1                                      mov r1, r7
00784754  14 27 ee eb                                      bl #0x30e3ac
00784758  07 10 a0 e1                                      mov r1, r7
0078475c  4c 29 ee eb                                      bl #0x30ec94
00784760  00 80 a0 e1                                      mov r8, r0
00784764  04 00 a0 e1                                      mov r0, r4
00784768  7d 28 ee eb                                      bl #0x30e964
0078476c  07 10 a0 e1                                      mov r1, r7
00784770  0d 27 ee eb                                      bl #0x30e3ac
00784774  07 10 a0 e1                                      mov r1, r7
00784778  45 29 ee eb                                      bl #0x30ec94
0078477c  00 10 a0 e1                                      mov r1, r0
00784780  79 29 ee eb                                      bl #0x30ed6c
00784784  08 10 a0 e1                                      mov r1, r8
00784788  00 70 a0 e1                                      mov r7, r0
0078478c  08 00 a0 e1                                      mov r0, r8
00784790  75 29 ee eb                                      bl #0x30ed6c
00784794  00 10 a0 e1                                      mov r1, r0
00784798  07 00 a0 e1                                      mov r0, r7
0078479c  00 29 ee eb                                      bl #0x30eba4
007847a0  5f 26 ee eb                                      bl #0x30e124
007847a4  00 10 08 e3                                      movw r1, #0x8000
007847a8  7f 13 44 e3                                      movt r1, #0x437f
007847ac  6e 29 ee eb                                      bl #0x30ed6c
007847b0  40 29 ee eb                                      bl #0x30ecb8
007847b4  44 27 ee eb                                      bl #0x30e4cc
007847b8  ff 00 50 e3                                      cmp r0, #0xff
007847bc  00 10 a0 b1                                      movlt r1, r0
007847c0  ff 10 a0 a3                                      movge r1, #0xff
007847c4  0a 00 a0 e1                                      mov r0, sl
007847c8  19 ff ff eb                                      bl #0x784434
007847cc  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
007847d0  50 14 e7 e7                                      ubfx r1, r0, #8, #8
007847d4  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
007847d8  11 10 cd e5                                      strb r1, [sp, #0x11]
007847dc  12 20 cd e5                                      strb r2, [sp, #0x12]
007847e0  13 30 cd e5                                      strb r3, [sp, #0x13]
007847e4  10 00 cd e5                                      strb r0, [sp, #0x10]
007847e8  10 c0 9d e5                                      ldr ip, [sp, #0x10]
007847ec  04 10 a0 e1                                      mov r1, r4
007847f0  05 00 a0 e1                                      mov r0, r5
007847f4  7c 30 ef e6                                      uxtb r3, ip
007847f8  5c 74 e7 e7                                      ubfx r7, ip, #8, #8
007847fc  5c 88 e7 e7                                      ubfx r8, ip, #0x10, #8
00784800  2c ec a0 e1                                      lsr lr, ip, #0x18
00784804  06 20 a0 e1                                      mov r2, r6
00784808  80 41 8d e8                                      stm sp, {r7, r8, lr}
0078480c  1c c0 8d e5                                      str ip, [sp, #0x1c]
00784810  9d c2 00 eb                                      bl #0x7b528c
00784814  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00784818  01 40 84 e2                                      add r4, r4, #1
0078481c  04 00 53 e1                                      cmp r3, r4
00784820  c2 ff ff ca                                      bgt #0x784730
00784824  10 00 95 e5                                      ldr r0, [r5, #0x10]
00784828  01 60 86 e2                                      add r6, r6, #1
0078482c  00 00 56 e1                                      cmp r6, r0
00784830  ba ff ff ba                                      blt #0x784720
00784834  a8 ff ff ea                                      b #0x7846dc
00784838  01 0c a0 e3                                      mov r0, #0x100
0078483c  01 10 a0 e3                                      mov r1, #1
00784840  1b c5 00 eb                                      bl #0x7b5cb4
00784844  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00784848  00 50 a0 e1                                      mov r5, r0
0078484c  00 00 53 e3                                      cmp r3, #0
00784850  a1 ff ff da                                      ble #0x7846dc
00784854  00 40 a0 e3                                      mov r4, #0
00784858  04 10 a0 e1                                      mov r1, r4
0078485c  0a 00 a0 e1                                      mov r0, sl
00784860  f3 fe ff eb                                      bl #0x784434
00784864  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
00784868  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0078486c  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
00784870  11 10 cd e5                                      strb r1, [sp, #0x11]
00784874  12 20 cd e5                                      strb r2, [sp, #0x12]
00784878  13 30 cd e5                                      strb r3, [sp, #0x13]
0078487c  10 00 cd e5                                      strb r0, [sp, #0x10]
00784880  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00784884  04 10 a0 e1                                      mov r1, r4
00784888  05 00 a0 e1                                      mov r0, r5
0078488c  7c 30 ef e6                                      uxtb r3, ip
00784890  5c 64 e7 e7                                      ubfx r6, ip, #8, #8
00784894  5c 78 e7 e7                                      ubfx r7, ip, #0x10, #8
00784898  2c ec a0 e1                                      lsr lr, ip, #0x18
0078489c  00 20 a0 e3                                      mov r2, #0
007848a0  c0 40 8d e8                                      stm sp, {r6, r7, lr}
007848a4  1c c0 8d e5                                      str ip, [sp, #0x1c]
007848a8  77 c2 00 eb                                      bl #0x7b528c
007848ac  0c 30 95 e5                                      ldr r3, [r5, #0xc]
007848b0  01 40 84 e2                                      add r4, r4, #1
007848b4  04 00 53 e1                                      cmp r3, r4
007848b8  e6 ff ff ca                                      bgt #0x784858
007848bc  86 ff ff ea                                      b #0x7846dc

; FUNCTION 0x007848c0, declared_size=304, range_size=304, mode=arm
; class-group: gameswf::fill_style
; alias: _ZNK7gameswf10fill_style5applyEif
; demangled: gameswf::fill_style::apply(int, float) const
; decoder-mode: arm
007848c0  70 40 2d e9                                      push {r4, r5, r6, lr}
007848c4  04 30 90 e5                                      ldr r3, [r0, #4]
007848c8  18 51 9f e5                                      ldr r5, [pc, #0x118]
007848cc  08 d0 4d e2                                      sub sp, sp, #8
007848d0  00 00 53 e3                                      cmp r3, #0
007848d4  00 40 a0 e1                                      mov r4, r0
007848d8  01 60 a0 e1                                      mov r6, r1
007848dc  05 50 8f e0                                      add r5, pc, r5
007848e0  0b 00 00 1a                                      bne #0x784914
007848e4  00 31 9f e5                                      ldr r3, [pc, #0x100]
007848e8  03 30 95 e7                                      ldr r3, [r5, r3]
007848ec  00 30 93 e5                                      ldr r3, [r3]
007848f0  00 00 53 e3                                      cmp r3, #0
007848f4  04 00 00 0a                                      beq #0x78490c
007848f8  03 00 a0 e1                                      mov r0, r3
007848fc  08 20 84 e2                                      add r2, r4, #8
00784900  00 30 93 e5                                      ldr r3, [r3]
00784904  0f e0 a0 e1                                      mov lr, pc
00784908  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
0078490c  08 d0 8d e2                                      add sp, sp, #8
00784910  70 80 bd e8                                      pop {r4, r5, r6, pc}
00784914  10 00 53 e3                                      cmp r3, #0x10
00784918  12 00 53 13                                      cmpne r3, #0x12
0078491c  10 00 00 1a                                      bne #0x784964
00784920  34 20 90 e5                                      ldr r2, [r0, #0x34]
00784924  00 00 52 e3                                      cmp r2, #0
00784928  26 00 00 0a                                      beq #0x7849c8
0078492c  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
00784930  03 30 95 e7                                      ldr r3, [r5, r3]
00784934  00 c0 93 e5                                      ldr ip, [r3]
00784938  00 00 5c e3                                      cmp ip, #0
0078493c  f2 ff ff 0a                                      beq #0x78490c
00784940  01 e0 a0 e3                                      mov lr, #1
00784944  0c 00 a0 e1                                      mov r0, ip
00784948  06 10 a0 e1                                      mov r1, r6
0078494c  00 c0 9c e5                                      ldr ip, [ip]
00784950  0c 30 84 e2                                      add r3, r4, #0xc
00784954  00 e0 8d e5                                      str lr, [sp]
00784958  0f e0 a0 e1                                      mov lr, pc
0078495c  70 f0 9c e5                                      ldr pc, [ip, #0x70]
00784960  e9 ff ff ea                                      b #0x78490c
00784964  38 30 90 e5                                      ldr r3, [r0, #0x38]
00784968  00 00 53 e3                                      cmp r3, #0
0078496c  e6 ff ff 0a                                      beq #0x78490c
00784970  03 00 a0 e1                                      mov r0, r3
00784974  00 30 93 e5                                      ldr r3, [r3]
00784978  0f e0 a0 e1                                      mov lr, pc
0078497c  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00784980  00 20 50 e2                                      subs r2, r0, #0
00784984  e0 ff ff 0a                                      beq #0x78490c
00784988  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
0078498c  04 10 94 e5                                      ldr r1, [r4, #4]
00784990  03 30 95 e7                                      ldr r3, [r5, r3]
00784994  00 c0 93 e5                                      ldr ip, [r3]
00784998  00 00 5c e3                                      cmp ip, #0
0078499c  da ff ff 0a                                      beq #0x78490c
007849a0  42 e0 51 e2                                      subs lr, r1, #0x42
007849a4  01 e0 a0 13                                      movne lr, #1
007849a8  0c 00 a0 e1                                      mov r0, ip
007849ac  06 10 a0 e1                                      mov r1, r6
007849b0  00 c0 9c e5                                      ldr ip, [ip]
007849b4  3c 30 84 e2                                      add r3, r4, #0x3c
007849b8  00 e0 8d e5                                      str lr, [sp]
007849bc  0f e0 a0 e1                                      mov lr, pc
007849c0  70 f0 9c e5                                      ldr pc, [ip, #0x70]
007849c4  d0 ff ff ea                                      b #0x78490c
007849c8  3a ff ff eb                                      bl #0x7846b8
007849cc  00 10 a0 e1                                      mov r1, r0
007849d0  34 00 84 e2                                      add r0, r4, #0x34
007849d4  59 d7 ff eb                                      bl #0x77a740
007849d8  34 20 94 e5                                      ldr r2, [r4, #0x34]
007849dc  00 00 52 e3                                      cmp r2, #0
007849e0  c9 ff ff 0a                                      beq #0x78490c
007849e4  d0 ff ff ea                                      b #0x78492c
; mapping-symbol data/literal pool
007849e8  b4 01 21 00 b4 39 00 00                          .byte 0xb4, 0x01, 0x21, 0x00, 0xb4, 0x39, 0x00, 0x00

; FUNCTION 0x00784a20, declared_size=108, range_size=108, mode=arm
; class-group: gameswf::fill_style
; alias: _ZN7gameswf10fill_styleD2Ev
; demangled: gameswf::fill_style::~fill_style()
; decoder-mode: arm
00784a20  70 40 2d e9                                      push {r4, r5, r6, lr}
00784a24  58 30 9f e5                                      ldr r3, [pc, #0x58]
00784a28  58 20 9f e5                                      ldr r2, [pc, #0x58]
00784a2c  00 40 a0 e1                                      mov r4, r0
00784a30  03 30 8f e0                                      add r3, pc, r3
00784a34  38 00 90 e5                                      ldr r0, [r0, #0x38]
00784a38  02 20 93 e7                                      ldr r2, [r3, r2]
00784a3c  00 00 50 e3                                      cmp r0, #0
00784a40  08 20 82 e2                                      add r2, r2, #8
00784a44  00 20 84 e5                                      str r2, [r4]
00784a48  00 00 00 0a                                      beq #0x784a50
00784a4c  fb 55 ff eb                                      bl #0x75a240
00784a50  34 00 94 e5                                      ldr r0, [r4, #0x34]
00784a54  00 00 50 e3                                      cmp r0, #0
00784a58  00 00 00 0a                                      beq #0x784a60
00784a5c  f7 55 ff eb                                      bl #0x75a240
00784a60  24 50 84 e2                                      add r5, r4, #0x24
00784a64  05 00 a0 e1                                      mov r0, r5
00784a68  00 10 a0 e3                                      mov r1, #0
00784a6c  6a 73 ff eb                                      bl #0x76181c
00784a70  05 00 a0 e1                                      mov r0, r5
00784a74  00 10 a0 e3                                      mov r1, #0
00784a78  ed 72 ff eb                                      bl #0x761634
00784a7c  04 00 a0 e1                                      mov r0, r4
00784a80  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00784a84  60 00 21 00 d8 47 00 00                          .byte 0x60, 0x00, 0x21, 0x00, 0xd8, 0x47, 0x00, 0x00

; FUNCTION 0x00784a8c, declared_size=148, range_size=148, mode=arm
; class-group: gameswf::fill_style
; alias: _ZN7gameswf10fill_styleC1Ev
; demangled: gameswf::fill_style::fill_style()
; decoder-mode: arm
00784a8c  30 00 2d e9                                      push {r4, r5}
00784a90  80 40 9f e5                                      ldr r4, [pc, #0x80]
00784a94  80 c0 9f e5                                      ldr ip, [pc, #0x80]
00784a98  00 20 a0 e3                                      mov r2, #0
00784a9c  04 40 8f e0                                      add r4, pc, r4
00784aa0  0c c0 94 e7                                      ldr ip, [r4, ip]
00784aa4  fe 15 a0 e3                                      mov r1, #0x3f800000
00784aa8  4c 10 80 e5                                      str r1, [r0, #0x4c]
00784aac  08 50 8c e2                                      add r5, ip, #8
00784ab0  00 c0 e0 e3                                      mvn ip, #0
00784ab4  00 50 80 e5                                      str r5, [r0]
00784ab8  0b c0 c0 e5                                      strb ip, [r0, #0xb]
00784abc  50 20 80 e5                                      str r2, [r0, #0x50]
00784ac0  04 20 80 e5                                      str r2, [r0, #4]
00784ac4  08 c0 c0 e5                                      strb ip, [r0, #8]
00784ac8  09 c0 c0 e5                                      strb ip, [r0, #9]
00784acc  0a c0 c0 e5                                      strb ip, [r0, #0xa]
00784ad0  10 20 80 e5                                      str r2, [r0, #0x10]
00784ad4  14 20 80 e5                                      str r2, [r0, #0x14]
00784ad8  18 20 80 e5                                      str r2, [r0, #0x18]
00784adc  20 20 80 e5                                      str r2, [r0, #0x20]
00784ae0  0c 10 80 e5                                      str r1, [r0, #0xc]
00784ae4  1c 10 80 e5                                      str r1, [r0, #0x1c]
00784ae8  24 20 80 e5                                      str r2, [r0, #0x24]
00784aec  28 20 80 e5                                      str r2, [r0, #0x28]
00784af0  2c 20 80 e5                                      str r2, [r0, #0x2c]
00784af4  30 20 c0 e5                                      strb r2, [r0, #0x30]
00784af8  34 20 80 e5                                      str r2, [r0, #0x34]
00784afc  38 20 80 e5                                      str r2, [r0, #0x38]
00784b00  40 20 80 e5                                      str r2, [r0, #0x40]
00784b04  44 20 80 e5                                      str r2, [r0, #0x44]
00784b08  48 20 80 e5                                      str r2, [r0, #0x48]
00784b0c  3c 10 80 e5                                      str r1, [r0, #0x3c]
00784b10  30 00 bd e8                                      pop {r4, r5}
00784b14  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00784b18  f4 ff 20 00 d8 47 00 00                          .byte 0xf4, 0xff, 0x20, 0x00, 0xd8, 0x47, 0x00, 0x00

; FUNCTION 0x00784c18, declared_size=148, range_size=148, mode=arm
; class-group: gameswf::fill_style
; alias: _ZN7gameswf10fill_styleC2Ev
; demangled: gameswf::fill_style::fill_style()
; decoder-mode: arm
00784c18  30 00 2d e9                                      push {r4, r5}
00784c1c  80 40 9f e5                                      ldr r4, [pc, #0x80]
00784c20  80 c0 9f e5                                      ldr ip, [pc, #0x80]
00784c24  00 20 a0 e3                                      mov r2, #0
00784c28  04 40 8f e0                                      add r4, pc, r4
00784c2c  0c c0 94 e7                                      ldr ip, [r4, ip]
00784c30  fe 15 a0 e3                                      mov r1, #0x3f800000
00784c34  4c 10 80 e5                                      str r1, [r0, #0x4c]
00784c38  08 50 8c e2                                      add r5, ip, #8
00784c3c  00 c0 e0 e3                                      mvn ip, #0
00784c40  00 50 80 e5                                      str r5, [r0]
00784c44  0b c0 c0 e5                                      strb ip, [r0, #0xb]
00784c48  50 20 80 e5                                      str r2, [r0, #0x50]
00784c4c  04 20 80 e5                                      str r2, [r0, #4]
00784c50  08 c0 c0 e5                                      strb ip, [r0, #8]
00784c54  09 c0 c0 e5                                      strb ip, [r0, #9]
00784c58  0a c0 c0 e5                                      strb ip, [r0, #0xa]
00784c5c  10 20 80 e5                                      str r2, [r0, #0x10]
00784c60  14 20 80 e5                                      str r2, [r0, #0x14]
00784c64  18 20 80 e5                                      str r2, [r0, #0x18]
00784c68  20 20 80 e5                                      str r2, [r0, #0x20]
00784c6c  0c 10 80 e5                                      str r1, [r0, #0xc]
00784c70  1c 10 80 e5                                      str r1, [r0, #0x1c]
00784c74  24 20 80 e5                                      str r2, [r0, #0x24]
00784c78  28 20 80 e5                                      str r2, [r0, #0x28]
00784c7c  2c 20 80 e5                                      str r2, [r0, #0x2c]
00784c80  30 20 c0 e5                                      strb r2, [r0, #0x30]
00784c84  34 20 80 e5                                      str r2, [r0, #0x34]
00784c88  38 20 80 e5                                      str r2, [r0, #0x38]
00784c8c  40 20 80 e5                                      str r2, [r0, #0x40]
00784c90  44 20 80 e5                                      str r2, [r0, #0x44]
00784c94  48 20 80 e5                                      str r2, [r0, #0x48]
00784c98  3c 10 80 e5                                      str r1, [r0, #0x3c]
00784c9c  30 00 bd e8                                      pop {r4, r5}
00784ca0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00784ca4  68 fe 20 00 d8 47 00 00                          .byte 0x68, 0xfe, 0x20, 0x00, 0xd8, 0x47, 0x00, 0x00

; FUNCTION 0x00784cac, declared_size=108, range_size=108, mode=arm
; class-group: gameswf::fill_style
; alias: _ZN7gameswf10fill_styleD1Ev
; demangled: gameswf::fill_style::~fill_style()
; decoder-mode: arm
00784cac  70 40 2d e9                                      push {r4, r5, r6, lr}
00784cb0  58 30 9f e5                                      ldr r3, [pc, #0x58]
00784cb4  58 20 9f e5                                      ldr r2, [pc, #0x58]
00784cb8  00 40 a0 e1                                      mov r4, r0
00784cbc  03 30 8f e0                                      add r3, pc, r3
00784cc0  38 00 90 e5                                      ldr r0, [r0, #0x38]
00784cc4  02 20 93 e7                                      ldr r2, [r3, r2]
00784cc8  00 00 50 e3                                      cmp r0, #0
00784ccc  08 20 82 e2                                      add r2, r2, #8
00784cd0  00 20 84 e5                                      str r2, [r4]
00784cd4  00 00 00 0a                                      beq #0x784cdc
00784cd8  58 55 ff eb                                      bl #0x75a240
00784cdc  34 00 94 e5                                      ldr r0, [r4, #0x34]
00784ce0  00 00 50 e3                                      cmp r0, #0
00784ce4  00 00 00 0a                                      beq #0x784cec
00784ce8  54 55 ff eb                                      bl #0x75a240
00784cec  24 50 84 e2                                      add r5, r4, #0x24
00784cf0  05 00 a0 e1                                      mov r0, r5
00784cf4  00 10 a0 e3                                      mov r1, #0
00784cf8  c7 72 ff eb                                      bl #0x76181c
00784cfc  05 00 a0 e1                                      mov r0, r5
00784d00  00 10 a0 e3                                      mov r1, #0
00784d04  4a 72 ff eb                                      bl #0x761634
00784d08  04 00 a0 e1                                      mov r0, r4
00784d0c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00784d10  d4 fd 20 00 d8 47 00 00                          .byte 0xd4, 0xfd, 0x20, 0x00, 0xd8, 0x47, 0x00, 0x00

; FUNCTION 0x00784d4c, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::fill_style
; alias: _ZN7gameswf10fill_styleD0Ev
; demangled: gameswf::fill_style::~fill_style()
; decoder-mode: arm
00784d4c  10 40 2d e9                                      push {r4, lr}
00784d50  00 40 a0 e1                                      mov r4, r0
00784d54  d4 ff ff eb                                      bl #0x784cac
00784d58  04 00 a0 e1                                      mov r0, r4
00784d5c  53 25 ee eb                                      bl #0x30e2b0
00784d60  04 00 a0 e1                                      mov r0, r4
00784d64  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00784da4, declared_size=1056, range_size=1056, mode=arm
; class-group: gameswf::fill_style
; alias: _ZN7gameswf10fill_style4readEPNS_6streamEiPNS_20movie_definition_subE
; demangled: gameswf::fill_style::read(gameswf::stream*, int, gameswf::movie_definition_sub*)
; decoder-mode: arm
00784da4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00784da8  00 40 a0 e1                                      mov r4, r0
00784dac  34 d0 4d e2                                      sub sp, sp, #0x34
00784db0  01 00 a0 e1                                      mov r0, r1
00784db4  01 50 a0 e1                                      mov r5, r1
00784db8  02 60 a0 e1                                      mov r6, r2
00784dbc  03 80 a0 e1                                      mov r8, r3
00784dc0  58 fb ff eb                                      bl #0x783b28
00784dc4  00 00 50 e3                                      cmp r0, #0
00784dc8  04 00 84 e5                                      str r0, [r4, #4]
00784dcc  06 00 00 1a                                      bne #0x784dec
00784dd0  16 00 56 e3                                      cmp r6, #0x16
00784dd4  29 00 00 da                                      ble #0x784e80
00784dd8  08 00 84 e2                                      add r0, r4, #8
00784ddc  05 10 a0 e1                                      mov r1, r5
00784de0  a8 46 00 eb                                      bl #0x796888
00784de4  34 d0 8d e2                                      add sp, sp, #0x34
00784de8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00784dec  10 00 50 e3                                      cmp r0, #0x10
00784df0  12 00 50 13                                      cmpne r0, #0x12
00784df4  00 70 a0 13                                      movne r7, #0
00784df8  01 70 a0 03                                      moveq r7, #1
00784dfc  23 00 00 0a                                      beq #0x784e90
00784e00  13 00 50 e3                                      cmp r0, #0x13
00784e04  a3 00 00 0a                                      beq #0x785098
00784e08  40 00 40 e2                                      sub r0, r0, #0x40
00784e0c  03 00 50 e3                                      cmp r0, #3
00784e10  f3 ff ff 8a                                      bhi #0x784de4
00784e14  05 00 a0 e1                                      mov r0, r5
00784e18  7d fb ff eb                                      bl #0x783c14
00784e1c  00 30 98 e5                                      ldr r3, [r8]
00784e20  00 10 a0 e1                                      mov r1, r0
00784e24  08 00 a0 e1                                      mov r0, r8
00784e28  0f e0 a0 e1                                      mov lr, pc
00784e2c  98 f0 93 e5                                      ldr pc, [r3, #0x98]
00784e30  00 10 a0 e1                                      mov r1, r0
00784e34  38 00 84 e2                                      add r0, r4, #0x38
00784e38  67 72 ff eb                                      bl #0x7617dc
00784e3c  08 30 8d e2                                      add r3, sp, #8
00784e40  04 70 83 e4                                      str r7, [r3], #4
00784e44  04 70 83 e4                                      str r7, [r3], #4
00784e48  04 70 83 e4                                      str r7, [r3], #4
00784e4c  fe 25 a0 e3                                      mov r2, #0x3f800000
00784e50  00 70 83 e5                                      str r7, [r3]
00784e54  05 10 a0 e1                                      mov r1, r5
00784e58  0d 00 a0 e1                                      mov r0, sp
00784e5c  10 20 8d e5                                      str r2, [sp, #0x10]
00784e60  04 70 8d e5                                      str r7, [sp, #4]
00784e64  00 20 8d e5                                      str r2, [sp]
00784e68  d9 45 00 eb                                      bl #0x7965d4
00784e6c  3c 00 84 e2                                      add r0, r4, #0x3c
00784e70  0d 10 a0 e1                                      mov r1, sp
00784e74  0d 60 a0 e1                                      mov r6, sp
00784e78  17 43 00 eb                                      bl #0x795adc
00784e7c  d8 ff ff ea                                      b #0x784de4
00784e80  08 00 84 e2                                      add r0, r4, #8
00784e84  05 10 a0 e1                                      mov r1, r5
00784e88  6f 46 00 eb                                      bl #0x79684c
00784e8c  d4 ff ff ea                                      b #0x784de4
00784e90  18 a0 8d e2                                      add sl, sp, #0x18
00784e94  08 30 8a e2                                      add r3, sl, #8
00784e98  00 70 a0 e3                                      mov r7, #0
00784e9c  04 70 83 e4                                      str r7, [r3], #4
00784ea0  04 70 83 e4                                      str r7, [r3], #4
00784ea4  04 70 83 e4                                      str r7, [r3], #4
00784ea8  00 70 83 e5                                      str r7, [r3]
00784eac  fe 95 a0 e3                                      mov sb, #0x3f800000
00784eb0  0a 00 a0 e1                                      mov r0, sl
00784eb4  05 10 a0 e1                                      mov r1, r5
00784eb8  1c 70 8d e5                                      str r7, [sp, #0x1c]
00784ebc  18 90 8d e5                                      str sb, [sp, #0x18]
00784ec0  28 90 8d e5                                      str sb, [sp, #0x28]
00784ec4  c2 45 00 eb                                      bl #0x7965d4
00784ec8  04 30 94 e5                                      ldr r3, [r4, #4]
00784ecc  10 00 53 e3                                      cmp r3, #0x10
00784ed0  86 00 00 0a                                      beq #0x7850f0
00784ed4  20 70 84 e5                                      str r7, [r4, #0x20]
00784ed8  10 70 84 e5                                      str r7, [r4, #0x10]
00784edc  14 70 84 e5                                      str r7, [r4, #0x14]
00784ee0  18 70 84 e5                                      str r7, [r4, #0x18]
00784ee4  42 14 a0 e3                                      mov r1, #0x42000000
00784ee8  1c 90 84 e5                                      str sb, [r4, #0x1c]
00784eec  0c 90 84 e5                                      str sb, [r4, #0xc]
00784ef0  00 00 a0 e3                                      mov r0, #0
00784ef4  9c 27 ee eb                                      bl #0x30ed6c
00784ef8  42 14 a0 e3                                      mov r1, #0x42000000
00784efc  28 27 ee eb                                      bl #0x30eba4
00784f00  14 10 94 e5                                      ldr r1, [r4, #0x14]
00784f04  26 27 ee eb                                      bl #0x30eba4
00784f08  02 15 e0 e3                                      mvn r1, #0x800000
00784f0c  00 70 a0 e1                                      mov r7, r0
00784f10  67 25 ee eb                                      bl #0x30e4b4
00784f14  00 00 50 e3                                      cmp r0, #0
00784f18  57 00 00 0a                                      beq #0x78507c
00784f1c  02 11 e0 e3                                      mvn r1, #0x80000000
00784f20  07 00 a0 e1                                      mov r0, r7
00784f24  02 15 41 e2                                      sub r1, r1, #0x800000
00784f28  9f 26 ee eb                                      bl #0x30e9ac
00784f2c  00 00 50 e3                                      cmp r0, #0
00784f30  51 00 00 0a                                      beq #0x78507c
00784f34  14 70 84 e5                                      str r7, [r4, #0x14]
00784f38  42 14 a0 e3                                      mov r1, #0x42000000
00784f3c  18 00 94 e5                                      ldr r0, [r4, #0x18]
00784f40  89 27 ee eb                                      bl #0x30ed6c
00784f44  42 14 a0 e3                                      mov r1, #0x42000000
00784f48  15 27 ee eb                                      bl #0x30eba4
00784f4c  20 10 94 e5                                      ldr r1, [r4, #0x20]
00784f50  13 27 ee eb                                      bl #0x30eba4
00784f54  02 15 e0 e3                                      mvn r1, #0x800000
00784f58  00 70 a0 e1                                      mov r7, r0
00784f5c  54 25 ee eb                                      bl #0x30e4b4
00784f60  00 00 50 e3                                      cmp r0, #0
00784f64  42 00 00 0a                                      beq #0x785074
00784f68  02 11 e0 e3                                      mvn r1, #0x80000000
00784f6c  07 00 a0 e1                                      mov r0, r7
00784f70  02 15 41 e2                                      sub r1, r1, #0x800000
00784f74  8c 26 ee eb                                      bl #0x30e9ac
00784f78  00 00 50 e3                                      cmp r0, #0
00784f7c  3c 00 00 0a                                      beq #0x785074
00784f80  0c b0 84 e2                                      add fp, r4, #0xc
00784f84  20 70 84 e5                                      str r7, [r4, #0x20]
00784f88  0b 00 a0 e1                                      mov r0, fp
00784f8c  3b 14 a0 e3                                      mov r1, #0x3b000000
00784f90  bd 70 ff eb                                      bl #0x76128c
00784f94  08 30 8d e2                                      add r3, sp, #8
00784f98  00 70 a0 e3                                      mov r7, #0
00784f9c  04 70 83 e4                                      str r7, [r3], #4
00784fa0  04 70 83 e4                                      str r7, [r3], #4
00784fa4  04 70 83 e4                                      str r7, [r3], #4
00784fa8  fe 25 a0 e3                                      mov r2, #0x3f800000
00784fac  00 70 83 e5                                      str r7, [r3]
00784fb0  0a 10 a0 e1                                      mov r1, sl
00784fb4  0d 00 a0 e1                                      mov r0, sp
00784fb8  10 20 8d e5                                      str r2, [sp, #0x10]
00784fbc  00 20 8d e5                                      str r2, [sp]
00784fc0  04 70 8d e5                                      str r7, [sp, #4]
00784fc4  c4 42 00 eb                                      bl #0x795adc
00784fc8  0d 10 a0 e1                                      mov r1, sp
00784fcc  0b 00 a0 e1                                      mov r0, fp
00784fd0  78 45 f2 eb                                      bl #0x4165b8
00784fd4  05 00 a0 e1                                      mov r0, r5
00784fd8  d2 fa ff eb                                      bl #0x783b28
00784fdc  0f a0 00 e2                                      and sl, r0, #0xf
00784fe0  0a 10 a0 e1                                      mov r1, sl
00784fe4  24 00 84 e2                                      add r0, r4, #0x24
00784fe8  0b 72 ff eb                                      bl #0x76181c
00784fec  07 00 5a e1                                      cmp sl, r7
00784ff0  0d 90 a0 e1                                      mov sb, sp
00784ff4  0d 00 00 0a                                      beq #0x785030
00784ff8  0a a1 8a e0                                      add sl, sl, sl, lsl #2
00784ffc  24 00 94 e5                                      ldr r0, [r4, #0x24]
00785000  05 10 a0 e1                                      mov r1, r5
00785004  06 20 a0 e1                                      mov r2, r6
00785008  07 00 80 e0                                      add r0, r0, r7
0078500c  05 70 87 e2                                      add r7, r7, #5
00785010  76 fe ff eb                                      bl #0x7849f0
00785014  0a 00 57 e1                                      cmp r7, sl
00785018  f7 ff ff 1a                                      bne #0x784ffc
0078501c  24 10 94 e5                                      ldr r1, [r4, #0x24]
00785020  08 00 84 e2                                      add r0, r4, #8
00785024  04 20 a0 e3                                      mov r2, #4
00785028  01 10 81 e2                                      add r1, r1, #1
0078502c  0d 26 ee eb                                      bl #0x30e868
00785030  00 30 98 e5                                      ldr r3, [r8]
00785034  08 00 a0 e1                                      mov r0, r8
00785038  0f e0 a0 e1                                      mov lr, pc
0078503c  b4 f0 93 e5                                      ldr pc, [r3, #0xb4]
00785040  00 00 50 e3                                      cmp r0, #0
00785044  0e 00 00 1a                                      bne #0x785084
00785048  04 00 a0 e1                                      mov r0, r4
0078504c  99 fd ff eb                                      bl #0x7846b8
00785050  00 10 a0 e1                                      mov r1, r0
00785054  34 00 84 e2                                      add r0, r4, #0x34
00785058  b8 d5 ff eb                                      bl #0x77a740
0078505c  08 00 a0 e1                                      mov r0, r8
00785060  34 10 94 e5                                      ldr r1, [r4, #0x34]
00785064  00 30 98 e5                                      ldr r3, [r8]
00785068  0f e0 a0 e1                                      mov lr, pc
0078506c  b0 f0 93 e5                                      ldr pc, [r3, #0xb0]
00785070  5b ff ff ea                                      b #0x784de4
00785074  00 70 a0 e3                                      mov r7, #0
00785078  c0 ff ff ea                                      b #0x784f80
0078507c  00 70 a0 e3                                      mov r7, #0
00785080  ab ff ff ea                                      b #0x784f34
00785084  e8 ba ff eb                                      bl #0x773c2c
00785088  00 10 a0 e1                                      mov r1, r0
0078508c  34 00 84 e2                                      add r0, r4, #0x34
00785090  aa d5 ff eb                                      bl #0x77a740
00785094  f0 ff ff ea                                      b #0x78505c
00785098  05 00 a0 e1                                      mov r0, r5
0078509c  a1 fa ff eb                                      bl #0x783b28
007850a0  0f 80 10 e2                                      ands r8, r0, #0xf
007850a4  0e 00 00 0a                                      beq #0x7850e4
007850a8  07 60 a0 e1                                      mov r6, r7
007850ac  18 a0 8d e2                                      add sl, sp, #0x18
007850b0  00 40 e0 e3                                      mvn r4, #0
007850b4  05 00 a0 e1                                      mov r0, r5
007850b8  9a fa ff eb                                      bl #0x783b28
007850bc  01 60 86 e2                                      add r6, r6, #1
007850c0  0a 00 a0 e1                                      mov r0, sl
007850c4  05 10 a0 e1                                      mov r1, r5
007850c8  18 40 cd e5                                      strb r4, [sp, #0x18]
007850cc  19 40 cd e5                                      strb r4, [sp, #0x19]
007850d0  1a 40 cd e5                                      strb r4, [sp, #0x1a]
007850d4  1b 40 cd e5                                      strb r4, [sp, #0x1b]
007850d8  ea 45 00 eb                                      bl #0x796888
007850dc  08 00 56 e1                                      cmp r6, r8
007850e0  f3 ff ff 1a                                      bne #0x7850b4
007850e4  05 00 a0 e1                                      mov r0, r5
007850e8  8e fa ff eb                                      bl #0x783b28
007850ec  3c ff ff ea                                      b #0x784de4
007850f0  00 10 a0 e3                                      mov r1, #0
007850f4  20 70 84 e5                                      str r7, [r4, #0x20]
007850f8  10 70 84 e5                                      str r7, [r4, #0x10]
007850fc  14 70 84 e5                                      str r7, [r4, #0x14]
00785100  18 70 84 e5                                      str r7, [r4, #0x18]
00785104  01 00 a0 e1                                      mov r0, r1
00785108  1c 90 84 e5                                      str sb, [r4, #0x1c]
0078510c  0c 90 84 e5                                      str sb, [r4, #0xc]
00785110  15 27 ee eb                                      bl #0x30ed6c
00785114  43 14 a0 e3                                      mov r1, #0x43000000
00785118  a1 26 ee eb                                      bl #0x30eba4
0078511c  14 10 94 e5                                      ldr r1, [r4, #0x14]
00785120  9f 26 ee eb                                      bl #0x30eba4
00785124  02 15 e0 e3                                      mvn r1, #0x800000
00785128  00 70 a0 e1                                      mov r7, r0
0078512c  e0 24 ee eb                                      bl #0x30e4b4
00785130  00 00 50 e3                                      cmp r0, #0
00785134  20 00 00 0a                                      beq #0x7851bc
00785138  02 11 e0 e3                                      mvn r1, #0x80000000
0078513c  07 00 a0 e1                                      mov r0, r7
00785140  02 15 41 e2                                      sub r1, r1, #0x800000
00785144  18 26 ee eb                                      bl #0x30e9ac
00785148  00 00 50 e3                                      cmp r0, #0
0078514c  1a 00 00 0a                                      beq #0x7851bc
00785150  14 70 84 e5                                      str r7, [r4, #0x14]
00785154  43 14 a0 e3                                      mov r1, #0x43000000
00785158  18 00 94 e5                                      ldr r0, [r4, #0x18]
0078515c  02 27 ee eb                                      bl #0x30ed6c
00785160  00 10 a0 e3                                      mov r1, #0
00785164  8e 26 ee eb                                      bl #0x30eba4
00785168  20 10 94 e5                                      ldr r1, [r4, #0x20]
0078516c  8c 26 ee eb                                      bl #0x30eba4
00785170  02 15 e0 e3                                      mvn r1, #0x800000
00785174  00 70 a0 e1                                      mov r7, r0
00785178  cd 24 ee eb                                      bl #0x30e4b4
0078517c  00 00 50 e3                                      cmp r0, #0
00785180  0b 00 00 0a                                      beq #0x7851b4
00785184  02 11 e0 e3                                      mvn r1, #0x80000000
00785188  07 00 a0 e1                                      mov r0, r7
0078518c  02 15 41 e2                                      sub r1, r1, #0x800000
00785190  05 26 ee eb                                      bl #0x30e9ac
00785194  00 00 50 e3                                      cmp r0, #0
00785198  05 00 00 0a                                      beq #0x7851b4
0078519c  0c b0 84 e2                                      add fp, r4, #0xc
007851a0  20 70 84 e5                                      str r7, [r4, #0x20]
007851a4  0b 00 a0 e1                                      mov r0, fp
007851a8  0f 13 a0 e3                                      mov r1, #0x3c000000
007851ac  36 70 ff eb                                      bl #0x76128c
007851b0  77 ff ff ea                                      b #0x784f94
007851b4  00 70 a0 e3                                      mov r7, #0
007851b8  f7 ff ff ea                                      b #0x78519c
007851bc  00 70 a0 e3                                      mov r7, #0
007851c0  e2 ff ff ea                                      b #0x785150
