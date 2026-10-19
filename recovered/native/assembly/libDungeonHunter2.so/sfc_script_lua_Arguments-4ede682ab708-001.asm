; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00319228, declared_size=56, range_size=56, mode=arm
; class-group: sfc::script::lua::Arguments
; alias: _ZN3sfc6script3lua9ArgumentsD1Ev
; demangled: sfc::script::lua::Arguments::~Arguments()
; decoder-mode: arm
00319228  28 30 9f e5                                      ldr r3, [pc, #0x28]
0031922c  28 20 9f e5                                      ldr r2, [pc, #0x28]
00319230  10 40 2d e9                                      push {r4, lr}
00319234  03 30 8f e0                                      add r3, pc, r3
00319238  02 20 93 e7                                      ldr r2, [r3, r2]
0031923c  00 40 a0 e1                                      mov r4, r0
00319240  04 00 90 e5                                      ldr r0, [r0, #4]
00319244  08 20 82 e2                                      add r2, r2, #8
00319248  00 20 84 e5                                      str r2, [r4]
0031924c  d0 0f 00 eb                                      bl #0x31d194
00319250  04 00 a0 e1                                      mov r0, r4
00319254  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00319258  5c b8 67 00 60 23 00 00                          .byte 0x5c, 0xb8, 0x67, 0x00, 0x60, 0x23, 0x00, 0x00

; FUNCTION 0x00319260, declared_size=28, range_size=28, mode=arm
; class-group: sfc::script::lua::Arguments
; alias: _ZN3sfc6script3lua9ArgumentsD0Ev
; demangled: sfc::script::lua::Arguments::~Arguments()
; decoder-mode: arm
00319260  10 40 2d e9                                      push {r4, lr}
00319264  00 40 a0 e1                                      mov r4, r0
00319268  ee ff ff eb                                      bl #0x319228
0031926c  04 00 a0 e1                                      mov r0, r4
00319270  72 dc ff eb                                      bl #0x310440
00319274  04 00 a0 e1                                      mov r0, r4
00319278  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0031927c, declared_size=56, range_size=56, mode=arm
; class-group: sfc::script::lua::Arguments
; alias: _ZN3sfc6script3lua9ArgumentsD2Ev
; demangled: sfc::script::lua::Arguments::~Arguments()
; decoder-mode: arm
0031927c  28 30 9f e5                                      ldr r3, [pc, #0x28]
00319280  28 20 9f e5                                      ldr r2, [pc, #0x28]
00319284  10 40 2d e9                                      push {r4, lr}
00319288  03 30 8f e0                                      add r3, pc, r3
0031928c  02 20 93 e7                                      ldr r2, [r3, r2]
00319290  00 40 a0 e1                                      mov r4, r0
00319294  04 00 90 e5                                      ldr r0, [r0, #4]
00319298  08 20 82 e2                                      add r2, r2, #8
0031929c  00 20 84 e5                                      str r2, [r4]
003192a0  bb 0f 00 eb                                      bl #0x31d194
003192a4  04 00 a0 e1                                      mov r0, r4
003192a8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003192ac  08 b8 67 00 60 23 00 00                          .byte 0x08, 0xb8, 0x67, 0x00, 0x60, 0x23, 0x00, 0x00

; FUNCTION 0x003192b4, declared_size=56, range_size=56, mode=arm
; class-group: sfc::script::lua::Arguments
; alias: _ZN3sfc6script3lua9ArgumentsC1Ev
; demangled: sfc::script::lua::Arguments::Arguments()
; decoder-mode: arm
003192b4  28 30 9f e5                                      ldr r3, [pc, #0x28]
003192b8  28 20 9f e5                                      ldr r2, [pc, #0x28]
003192bc  10 40 2d e9                                      push {r4, lr}
003192c0  03 30 8f e0                                      add r3, pc, r3
003192c4  02 20 93 e7                                      ldr r2, [r3, r2]
003192c8  00 40 a0 e1                                      mov r4, r0
003192cc  08 20 82 e2                                      add r2, r2, #8
003192d0  00 20 80 e5                                      str r2, [r0]
003192d4  ea 0e 00 eb                                      bl #0x31ce84
003192d8  04 00 84 e5                                      str r0, [r4, #4]
003192dc  04 00 a0 e1                                      mov r0, r4
003192e0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003192e4  d0 b7 67 00 60 23 00 00                          .byte 0xd0, 0xb7, 0x67, 0x00, 0x60, 0x23, 0x00, 0x00

; FUNCTION 0x003192ec, declared_size=56, range_size=56, mode=arm
; class-group: sfc::script::lua::Arguments
; alias: _ZN3sfc6script3lua9ArgumentsC2Ev
; demangled: sfc::script::lua::Arguments::Arguments()
; decoder-mode: arm
003192ec  28 30 9f e5                                      ldr r3, [pc, #0x28]
003192f0  28 20 9f e5                                      ldr r2, [pc, #0x28]
003192f4  10 40 2d e9                                      push {r4, lr}
003192f8  03 30 8f e0                                      add r3, pc, r3
003192fc  02 20 93 e7                                      ldr r2, [r3, r2]
00319300  00 40 a0 e1                                      mov r4, r0
00319304  08 20 82 e2                                      add r2, r2, #8
00319308  00 20 80 e5                                      str r2, [r0]
0031930c  dc 0e 00 eb                                      bl #0x31ce84
00319310  04 00 84 e5                                      str r0, [r4, #4]
00319314  04 00 a0 e1                                      mov r0, r4
00319318  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0031931c  98 b7 67 00 60 23 00 00                          .byte 0x98, 0xb7, 0x67, 0x00, 0x60, 0x23, 0x00, 0x00

; FUNCTION 0x003196ec, declared_size=500, range_size=500, mode=arm
; class-group: sfc::script::lua::Arguments
; alias: _ZN3sfc6script3lua9ArgumentsC1EP9lua_Statei
; demangled: sfc::script::lua::Arguments::Arguments(lua_State*, int)
; decoder-mode: arm
003196ec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003196f0  d4 31 9f e5                                      ldr r3, [pc, #0x1d4]
003196f4  fc d0 4d e2                                      sub sp, sp, #0xfc
003196f8  d0 91 9f e5                                      ldr sb, [pc, #0x1d0]
003196fc  0c 30 8d e5                                      str r3, [sp, #0xc]
00319700  0c e0 9d e5                                      ldr lr, [sp, #0xc]
00319704  c8 31 9f e5                                      ldr r3, [pc, #0x1c8]
00319708  09 90 8f e0                                      add sb, pc, sb
0031970c  0e c0 99 e7                                      ldr ip, [sb, lr]
00319710  03 30 99 e7                                      ldr r3, [sb, r3]
00319714  00 60 a0 e1                                      mov r6, r0
00319718  00 00 9c e5                                      ldr r0, [ip]
0031971c  08 30 83 e2                                      add r3, r3, #8
00319720  00 30 86 e5                                      str r3, [r6]
00319724  02 80 a0 e1                                      mov r8, r2
00319728  f4 00 8d e5                                      str r0, [sp, #0xf4]
0031972c  01 70 a0 e1                                      mov r7, r1
00319730  d3 0d 00 eb                                      bl #0x31ce84
00319734  00 00 58 e3                                      cmp r8, #0
00319738  00 b0 a0 e1                                      mov fp, r0
0031973c  04 00 86 e5                                      str r0, [r6, #4]
00319740  31 00 00 da                                      ble #0x31980c
00319744  8c 31 9f e5                                      ldr r3, [pc, #0x18c]
00319748  01 40 a0 e3                                      mov r4, #1
0031974c  84 50 8d e2                                      add r5, sp, #0x84
00319750  03 30 8f e0                                      add r3, pc, r3
00319754  08 30 8d e5                                      str r3, [sp, #8]
00319758  70 a0 a0 e3                                      mov sl, #0x70
0031975c  00 00 00 ea                                      b #0x319764
00319760  04 b0 96 e5                                      ldr fp, [r6, #4]
00319764  05 00 a0 e1                                      mov r0, r5
00319768  5c ff ff eb                                      bl #0x3194e0
0031976c  0b 00 a0 e1                                      mov r0, fp
00319770  05 10 a0 e1                                      mov r1, r5
00319774  91 ff ff eb                                      bl #0x3195c0
00319778  05 00 a0 e1                                      mov r0, r5
0031977c  19 ff ff eb                                      bl #0x3193e8
00319780  04 30 96 e5                                      ldr r3, [r6, #4]
00319784  05 00 93 e8                                      ldm r3, {r0, r2}
00319788  02 20 60 e0                                      rsb r2, r0, r2
0031978c  42 22 a0 e1                                      asr r2, r2, #4
00319790  82 b1 82 e0                                      add fp, r2, r2, lsl #3
00319794  0b b3 8b e0                                      add fp, fp, fp, lsl #6
00319798  8b b1 82 e0                                      add fp, r2, fp, lsl #3
0031979c  8b b7 8b e0                                      add fp, fp, fp, lsl #15
003197a0  8b b1 82 e0                                      add fp, r2, fp, lsl #3
003197a4  00 b0 6b e2                                      rsb fp, fp, #0
003197a8  01 b0 5b e2                                      subs fp, fp, #1
003197ac  04 00 00 2a                                      bhs #0x3197c4
003197b0  08 00 9d e5                                      ldr r0, [sp, #8]
003197b4  04 30 8d e5                                      str r3, [sp, #4]
003197b8  bc bd 0f eb                                      bl #0x708eb0
003197bc  04 30 9d e5                                      ldr r3, [sp, #4]
003197c0  00 00 93 e5                                      ldr r0, [r3]
003197c4  ee 28 0d e3                                      movw r2, #0xd8ee
003197c8  ff 2f 4f e3                                      movt r2, #0xffff
003197cc  02 20 64 e0                                      rsb r2, r4, r2
003197d0  9a 0b 20 e0                                      mla r0, sl, fp, r0
003197d4  01 40 84 e2                                      add r4, r4, #1
003197d8  07 10 a0 e1                                      mov r1, r7
003197dc  79 0c 00 eb                                      bl #0x31c9c8
003197e0  04 00 58 e1                                      cmp r8, r4
003197e4  dd ff ff aa                                      bge #0x319760
003197e8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
003197ec  06 00 a0 e1                                      mov r0, r6
003197f0  02 30 99 e7                                      ldr r3, [sb, r2]
003197f4  f4 20 9d e5                                      ldr r2, [sp, #0xf4]
003197f8  00 30 93 e5                                      ldr r3, [r3]
003197fc  03 00 52 e1                                      cmp r2, r3
00319800  30 00 00 1a                                      bne #0x3198c8
00319804  fc d0 8d e2                                      add sp, sp, #0xfc
00319808  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0031980c  07 00 a0 e1                                      mov r0, r7
00319810  45 c6 14 eb                                      bl #0x84b12c
00319814  01 80 68 e2                                      rsb r8, r8, #1
00319818  08 00 50 e1                                      cmp r0, r8
0031981c  00 50 a0 e1                                      mov r5, r0
00319820  24 00 00 ba                                      blt #0x3198b8
00319824  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
00319828  14 40 8d e2                                      add r4, sp, #0x14
0031982c  70 a0 a0 e3                                      mov sl, #0x70
00319830  03 30 8f e0                                      add r3, pc, r3
00319834  08 30 8d e5                                      str r3, [sp, #8]
00319838  04 b0 96 e5                                      ldr fp, [r6, #4]
0031983c  04 00 a0 e1                                      mov r0, r4
00319840  26 ff ff eb                                      bl #0x3194e0
00319844  0b 00 a0 e1                                      mov r0, fp
00319848  04 10 a0 e1                                      mov r1, r4
0031984c  5b ff ff eb                                      bl #0x3195c0
00319850  04 00 a0 e1                                      mov r0, r4
00319854  e3 fe ff eb                                      bl #0x3193e8
00319858  04 b0 96 e5                                      ldr fp, [r6, #4]
0031985c  05 00 9b e8                                      ldm fp, {r0, r2}
00319860  02 20 60 e0                                      rsb r2, r0, r2
00319864  42 22 a0 e1                                      asr r2, r2, #4
00319868  82 31 82 e0                                      add r3, r2, r2, lsl #3
0031986c  03 33 83 e0                                      add r3, r3, r3, lsl #6
00319870  83 31 82 e0                                      add r3, r2, r3, lsl #3
00319874  83 37 83 e0                                      add r3, r3, r3, lsl #15
00319878  83 31 82 e0                                      add r3, r2, r3, lsl #3
0031987c  00 30 63 e2                                      rsb r3, r3, #0
00319880  01 30 53 e2                                      subs r3, r3, #1
00319884  04 00 00 2a                                      bhs #0x31989c
00319888  08 00 9d e5                                      ldr r0, [sp, #8]
0031988c  04 30 8d e5                                      str r3, [sp, #4]
00319890  86 bd 0f eb                                      bl #0x708eb0
00319894  00 00 9b e5                                      ldr r0, [fp]
00319898  04 30 9d e5                                      ldr r3, [sp, #4]
0031989c  08 20 a0 e1                                      mov r2, r8
003198a0  9a 03 20 e0                                      mla r0, sl, r3, r0
003198a4  01 80 88 e2                                      add r8, r8, #1
003198a8  07 10 a0 e1                                      mov r1, r7
003198ac  45 0c 00 eb                                      bl #0x31c9c8
003198b0  08 00 55 e1                                      cmp r5, r8
003198b4  df ff ff aa                                      bge #0x319838
003198b8  07 00 a0 e1                                      mov r0, r7
003198bc  05 10 e0 e1                                      mvn r1, r5
003198c0  1e c6 14 eb                                      bl #0x84b140
003198c4  c7 ff ff ea                                      b #0x3197e8
003198c8  90 d2 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003198cc  ac 40 00 00 88 b3 67 00 60 23 00 00 18 4d 5a 00  .byte 0xac, 0x40, 0x00, 0x00, 0x88, 0xb3, 0x67, 0x00, 0x60, 0x23, 0x00, 0x00, 0x18, 0x4d, 0x5a, 0x00
003198dc  38 4c 5a 00                                      .byte 0x38, 0x4c, 0x5a, 0x00

; FUNCTION 0x003198e0, declared_size=500, range_size=500, mode=arm
; class-group: sfc::script::lua::Arguments
; alias: _ZN3sfc6script3lua9ArgumentsC2EP9lua_Statei
; demangled: sfc::script::lua::Arguments::Arguments(lua_State*, int)
; decoder-mode: arm
003198e0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003198e4  d4 31 9f e5                                      ldr r3, [pc, #0x1d4]
003198e8  fc d0 4d e2                                      sub sp, sp, #0xfc
003198ec  d0 91 9f e5                                      ldr sb, [pc, #0x1d0]
003198f0  0c 30 8d e5                                      str r3, [sp, #0xc]
003198f4  0c e0 9d e5                                      ldr lr, [sp, #0xc]
003198f8  c8 31 9f e5                                      ldr r3, [pc, #0x1c8]
003198fc  09 90 8f e0                                      add sb, pc, sb
00319900  0e c0 99 e7                                      ldr ip, [sb, lr]
00319904  03 30 99 e7                                      ldr r3, [sb, r3]
00319908  00 60 a0 e1                                      mov r6, r0
0031990c  00 00 9c e5                                      ldr r0, [ip]
00319910  08 30 83 e2                                      add r3, r3, #8
00319914  00 30 86 e5                                      str r3, [r6]
00319918  02 80 a0 e1                                      mov r8, r2
0031991c  f4 00 8d e5                                      str r0, [sp, #0xf4]
00319920  01 70 a0 e1                                      mov r7, r1
00319924  56 0d 00 eb                                      bl #0x31ce84
00319928  00 00 58 e3                                      cmp r8, #0
0031992c  00 b0 a0 e1                                      mov fp, r0
00319930  04 00 86 e5                                      str r0, [r6, #4]
00319934  31 00 00 da                                      ble #0x319a00
00319938  8c 31 9f e5                                      ldr r3, [pc, #0x18c]
0031993c  01 40 a0 e3                                      mov r4, #1
00319940  84 50 8d e2                                      add r5, sp, #0x84
00319944  03 30 8f e0                                      add r3, pc, r3
00319948  08 30 8d e5                                      str r3, [sp, #8]
0031994c  70 a0 a0 e3                                      mov sl, #0x70
00319950  00 00 00 ea                                      b #0x319958
00319954  04 b0 96 e5                                      ldr fp, [r6, #4]
00319958  05 00 a0 e1                                      mov r0, r5
0031995c  df fe ff eb                                      bl #0x3194e0
00319960  0b 00 a0 e1                                      mov r0, fp
00319964  05 10 a0 e1                                      mov r1, r5
00319968  14 ff ff eb                                      bl #0x3195c0
0031996c  05 00 a0 e1                                      mov r0, r5
00319970  9c fe ff eb                                      bl #0x3193e8
00319974  04 30 96 e5                                      ldr r3, [r6, #4]
00319978  05 00 93 e8                                      ldm r3, {r0, r2}
0031997c  02 20 60 e0                                      rsb r2, r0, r2
00319980  42 22 a0 e1                                      asr r2, r2, #4
00319984  82 b1 82 e0                                      add fp, r2, r2, lsl #3
00319988  0b b3 8b e0                                      add fp, fp, fp, lsl #6
0031998c  8b b1 82 e0                                      add fp, r2, fp, lsl #3
00319990  8b b7 8b e0                                      add fp, fp, fp, lsl #15
00319994  8b b1 82 e0                                      add fp, r2, fp, lsl #3
00319998  00 b0 6b e2                                      rsb fp, fp, #0
0031999c  01 b0 5b e2                                      subs fp, fp, #1
003199a0  04 00 00 2a                                      bhs #0x3199b8
003199a4  08 00 9d e5                                      ldr r0, [sp, #8]
003199a8  04 30 8d e5                                      str r3, [sp, #4]
003199ac  3f bd 0f eb                                      bl #0x708eb0
003199b0  04 30 9d e5                                      ldr r3, [sp, #4]
003199b4  00 00 93 e5                                      ldr r0, [r3]
003199b8  ee 28 0d e3                                      movw r2, #0xd8ee
003199bc  ff 2f 4f e3                                      movt r2, #0xffff
003199c0  02 20 64 e0                                      rsb r2, r4, r2
003199c4  9a 0b 20 e0                                      mla r0, sl, fp, r0
003199c8  01 40 84 e2                                      add r4, r4, #1
003199cc  07 10 a0 e1                                      mov r1, r7
003199d0  fc 0b 00 eb                                      bl #0x31c9c8
003199d4  04 00 58 e1                                      cmp r8, r4
003199d8  dd ff ff aa                                      bge #0x319954
003199dc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
003199e0  06 00 a0 e1                                      mov r0, r6
003199e4  02 30 99 e7                                      ldr r3, [sb, r2]
003199e8  f4 20 9d e5                                      ldr r2, [sp, #0xf4]
003199ec  00 30 93 e5                                      ldr r3, [r3]
003199f0  03 00 52 e1                                      cmp r2, r3
003199f4  30 00 00 1a                                      bne #0x319abc
003199f8  fc d0 8d e2                                      add sp, sp, #0xfc
003199fc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00319a00  07 00 a0 e1                                      mov r0, r7
00319a04  c8 c5 14 eb                                      bl #0x84b12c
00319a08  01 80 68 e2                                      rsb r8, r8, #1
00319a0c  08 00 50 e1                                      cmp r0, r8
00319a10  00 50 a0 e1                                      mov r5, r0
00319a14  24 00 00 ba                                      blt #0x319aac
00319a18  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
00319a1c  14 40 8d e2                                      add r4, sp, #0x14
00319a20  70 a0 a0 e3                                      mov sl, #0x70
00319a24  03 30 8f e0                                      add r3, pc, r3
00319a28  08 30 8d e5                                      str r3, [sp, #8]
00319a2c  04 b0 96 e5                                      ldr fp, [r6, #4]
00319a30  04 00 a0 e1                                      mov r0, r4
00319a34  a9 fe ff eb                                      bl #0x3194e0
00319a38  0b 00 a0 e1                                      mov r0, fp
00319a3c  04 10 a0 e1                                      mov r1, r4
00319a40  de fe ff eb                                      bl #0x3195c0
00319a44  04 00 a0 e1                                      mov r0, r4
00319a48  66 fe ff eb                                      bl #0x3193e8
00319a4c  04 b0 96 e5                                      ldr fp, [r6, #4]
00319a50  05 00 9b e8                                      ldm fp, {r0, r2}
00319a54  02 20 60 e0                                      rsb r2, r0, r2
00319a58  42 22 a0 e1                                      asr r2, r2, #4
00319a5c  82 31 82 e0                                      add r3, r2, r2, lsl #3
00319a60  03 33 83 e0                                      add r3, r3, r3, lsl #6
00319a64  83 31 82 e0                                      add r3, r2, r3, lsl #3
00319a68  83 37 83 e0                                      add r3, r3, r3, lsl #15
00319a6c  83 31 82 e0                                      add r3, r2, r3, lsl #3
00319a70  00 30 63 e2                                      rsb r3, r3, #0
00319a74  01 30 53 e2                                      subs r3, r3, #1
00319a78  04 00 00 2a                                      bhs #0x319a90
00319a7c  08 00 9d e5                                      ldr r0, [sp, #8]
00319a80  04 30 8d e5                                      str r3, [sp, #4]
00319a84  09 bd 0f eb                                      bl #0x708eb0
00319a88  00 00 9b e5                                      ldr r0, [fp]
00319a8c  04 30 9d e5                                      ldr r3, [sp, #4]
00319a90  08 20 a0 e1                                      mov r2, r8
00319a94  9a 03 20 e0                                      mla r0, sl, r3, r0
00319a98  01 80 88 e2                                      add r8, r8, #1
00319a9c  07 10 a0 e1                                      mov r1, r7
00319aa0  c8 0b 00 eb                                      bl #0x31c9c8
00319aa4  08 00 55 e1                                      cmp r5, r8
00319aa8  df ff ff aa                                      bge #0x319a2c
00319aac  07 00 a0 e1                                      mov r0, r7
00319ab0  05 10 e0 e1                                      mvn r1, r5
00319ab4  a1 c5 14 eb                                      bl #0x84b140
00319ab8  c7 ff ff ea                                      b #0x3199dc
00319abc  13 d2 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00319ac0  ac 40 00 00 94 b1 67 00 60 23 00 00 24 4b 5a 00  .byte 0xac, 0x40, 0x00, 0x00, 0x94, 0xb1, 0x67, 0x00, 0x60, 0x23, 0x00, 0x00, 0x24, 0x4b, 0x5a, 0x00
00319ad0  44 4a 5a 00                                      .byte 0x44, 0x4a, 0x5a, 0x00

; FUNCTION 0x0031a46c, declared_size=104, range_size=104, mode=arm
; class-group: sfc::script::lua::Arguments
; alias: _ZN3sfc6script3lua9Arguments11pushPointerEPv
; demangled: sfc::script::lua::Arguments::pushPointer(void*)
; decoder-mode: arm
0031a46c  58 30 9f e5                                      ldr r3, [pc, #0x58]
0031a470  58 20 9f e5                                      ldr r2, [pc, #0x58]
0031a474  70 40 2d e9                                      push {r4, r5, r6, lr}
0031a478  03 30 8f e0                                      add r3, pc, r3
0031a47c  02 50 93 e7                                      ldr r5, [r3, r2]
0031a480  78 d0 4d e2                                      sub sp, sp, #0x78
0031a484  04 40 8d e2                                      add r4, sp, #4
0031a488  00 30 95 e5                                      ldr r3, [r5]
0031a48c  74 30 8d e5                                      str r3, [sp, #0x74]
0031a490  04 60 90 e5                                      ldr r6, [r0, #4]
0031a494  04 00 a0 e1                                      mov r0, r4
0031a498  dd ff ff eb                                      bl #0x31a414
0031a49c  06 00 a0 e1                                      mov r0, r6
0031a4a0  04 10 a0 e1                                      mov r1, r4
0031a4a4  45 fc ff eb                                      bl #0x3195c0
0031a4a8  04 00 a0 e1                                      mov r0, r4
0031a4ac  cd fb ff eb                                      bl #0x3193e8
0031a4b0  74 20 9d e5                                      ldr r2, [sp, #0x74]
0031a4b4  00 30 95 e5                                      ldr r3, [r5]
0031a4b8  03 00 52 e1                                      cmp r2, r3
0031a4bc  01 00 00 1a                                      bne #0x31a4c8
0031a4c0  78 d0 8d e2                                      add sp, sp, #0x78
0031a4c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0031a4c8  90 cf ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0031a4cc  18 a6 67 00 ac 40 00 00                          .byte 0x18, 0xa6, 0x67, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0037baf8, declared_size=88, range_size=88, mode=arm
; class-group: sfc::script::lua::Arguments
; alias: _ZNK3sfc6script3lua9ArgumentsixEj
; demangled: sfc::script::lua::Arguments::operator[](unsigned int) const
; decoder-mode: arm
0037baf8  70 40 2d e9                                      push {r4, r5, r6, lr}
0037bafc  04 40 90 e5                                      ldr r4, [r0, #4]
0037bb00  01 50 a0 e1                                      mov r5, r1
0037bb04  0c 00 94 e8                                      ldm r4, {r2, r3}
0037bb08  03 30 62 e0                                      rsb r3, r2, r3
0037bb0c  43 32 a0 e1                                      asr r3, r3, #4
0037bb10  83 11 83 e0                                      add r1, r3, r3, lsl #3
0037bb14  01 13 81 e0                                      add r1, r1, r1, lsl #6
0037bb18  81 11 83 e0                                      add r1, r3, r1, lsl #3
0037bb1c  81 17 81 e0                                      add r1, r1, r1, lsl #15
0037bb20  81 31 83 e0                                      add r3, r3, r1, lsl #3
0037bb24  00 30 63 e2                                      rsb r3, r3, #0
0037bb28  03 00 55 e1                                      cmp r5, r3
0037bb2c  03 00 00 3a                                      blo #0x37bb40
0037bb30  14 00 9f e5                                      ldr r0, [pc, #0x14]
0037bb34  00 00 8f e0                                      add r0, pc, r0
0037bb38  dc 34 0e eb                                      bl #0x708eb0
0037bb3c  00 20 94 e5                                      ldr r2, [r4]
0037bb40  70 00 a0 e3                                      mov r0, #0x70
0037bb44  90 25 20 e0                                      mla r0, r0, r5, r2
0037bb48  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0037bb4c  34 29 54 00                                      .byte 0x34, 0x29, 0x54, 0x00

; FUNCTION 0x00386f28, declared_size=104, range_size=104, mode=arm
; class-group: sfc::script::lua::Arguments
; alias: _ZN3sfc6script3lua9Arguments12pushUserDataEPNS1_8UserDataE
; demangled: sfc::script::lua::Arguments::pushUserData(sfc::script::lua::UserData*)
; decoder-mode: arm
00386f28  58 30 9f e5                                      ldr r3, [pc, #0x58]
00386f2c  58 20 9f e5                                      ldr r2, [pc, #0x58]
00386f30  70 40 2d e9                                      push {r4, r5, r6, lr}
00386f34  03 30 8f e0                                      add r3, pc, r3
00386f38  02 50 93 e7                                      ldr r5, [r3, r2]
00386f3c  78 d0 4d e2                                      sub sp, sp, #0x78
00386f40  04 40 8d e2                                      add r4, sp, #4
00386f44  00 30 95 e5                                      ldr r3, [r5]
00386f48  74 30 8d e5                                      str r3, [sp, #0x74]
00386f4c  04 60 90 e5                                      ldr r6, [r0, #4]
00386f50  04 00 a0 e1                                      mov r0, r4
00386f54  87 d6 ff eb                                      bl #0x37c978
00386f58  06 00 a0 e1                                      mov r0, r6
00386f5c  04 10 a0 e1                                      mov r1, r4
00386f60  96 49 fe eb                                      bl #0x3195c0
00386f64  04 00 a0 e1                                      mov r0, r4
00386f68  1e 49 fe eb                                      bl #0x3193e8
00386f6c  74 20 9d e5                                      ldr r2, [sp, #0x74]
00386f70  00 30 95 e5                                      ldr r3, [r5]
00386f74  03 00 52 e1                                      cmp r2, r3
00386f78  01 00 00 1a                                      bne #0x386f84
00386f7c  78 d0 8d e2                                      add sp, sp, #0x78
00386f80  70 80 bd e8                                      pop {r4, r5, r6, pc}
00386f84  e1 1c fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00386f88  5c db 60 00 ac 40 00 00                          .byte 0x5c, 0xdb, 0x60, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0039eba8, declared_size=104, range_size=104, mode=arm
; class-group: sfc::script::lua::Arguments
; alias: _ZN3sfc6script3lua9Arguments7pushNilEv
; demangled: sfc::script::lua::Arguments::pushNil()
; decoder-mode: arm
0039eba8  58 30 9f e5                                      ldr r3, [pc, #0x58]
0039ebac  58 20 9f e5                                      ldr r2, [pc, #0x58]
0039ebb0  70 40 2d e9                                      push {r4, r5, r6, lr}
0039ebb4  03 30 8f e0                                      add r3, pc, r3
0039ebb8  02 50 93 e7                                      ldr r5, [r3, r2]
0039ebbc  78 d0 4d e2                                      sub sp, sp, #0x78
0039ebc0  04 40 8d e2                                      add r4, sp, #4
0039ebc4  00 30 95 e5                                      ldr r3, [r5]
0039ebc8  74 30 8d e5                                      str r3, [sp, #0x74]
0039ebcc  04 60 90 e5                                      ldr r6, [r0, #4]
0039ebd0  04 00 a0 e1                                      mov r0, r4
0039ebd4  41 ea fd eb                                      bl #0x3194e0
0039ebd8  06 00 a0 e1                                      mov r0, r6
0039ebdc  04 10 a0 e1                                      mov r1, r4
0039ebe0  76 ea fd eb                                      bl #0x3195c0
0039ebe4  04 00 a0 e1                                      mov r0, r4
0039ebe8  fe e9 fd eb                                      bl #0x3193e8
0039ebec  74 20 9d e5                                      ldr r2, [sp, #0x74]
0039ebf0  00 30 95 e5                                      ldr r3, [r5]
0039ebf4  03 00 52 e1                                      cmp r2, r3
0039ebf8  01 00 00 1a                                      bne #0x39ec04
0039ebfc  78 d0 8d e2                                      add sp, sp, #0x78
0039ec00  70 80 bd e8                                      pop {r4, r5, r6, pc}
0039ec04  c1 bd fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0039ec08  dc 5e 5f 00 ac 40 00 00                          .byte 0xdc, 0x5e, 0x5f, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0039ec10, declared_size=104, range_size=104, mode=arm
; class-group: sfc::script::lua::Arguments
; alias: _ZN3sfc6script3lua9Arguments10pushStringEPKc
; demangled: sfc::script::lua::Arguments::pushString(char const*)
; decoder-mode: arm
0039ec10  58 30 9f e5                                      ldr r3, [pc, #0x58]
0039ec14  58 20 9f e5                                      ldr r2, [pc, #0x58]
0039ec18  70 40 2d e9                                      push {r4, r5, r6, lr}
0039ec1c  03 30 8f e0                                      add r3, pc, r3
0039ec20  02 50 93 e7                                      ldr r5, [r3, r2]
0039ec24  78 d0 4d e2                                      sub sp, sp, #0x78
0039ec28  04 40 8d e2                                      add r4, sp, #4
0039ec2c  00 30 95 e5                                      ldr r3, [r5]
0039ec30  74 30 8d e5                                      str r3, [sp, #0x74]
0039ec34  04 60 90 e5                                      ldr r6, [r0, #4]
0039ec38  04 00 a0 e1                                      mov r0, r4
0039ec3c  02 77 ff eb                                      bl #0x37c84c
0039ec40  06 00 a0 e1                                      mov r0, r6
0039ec44  04 10 a0 e1                                      mov r1, r4
0039ec48  5c ea fd eb                                      bl #0x3195c0
0039ec4c  04 00 a0 e1                                      mov r0, r4
0039ec50  e4 e9 fd eb                                      bl #0x3193e8
0039ec54  74 20 9d e5                                      ldr r2, [sp, #0x74]
0039ec58  00 30 95 e5                                      ldr r3, [r5]
0039ec5c  03 00 52 e1                                      cmp r2, r3
0039ec60  01 00 00 1a                                      bne #0x39ec6c
0039ec64  78 d0 8d e2                                      add sp, sp, #0x78
0039ec68  70 80 bd e8                                      pop {r4, r5, r6, pc}
0039ec6c  a7 bd fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0039ec70  74 5e 5f 00 ac 40 00 00                          .byte 0x74, 0x5e, 0x5f, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x003cdd78, declared_size=180, range_size=180, mode=arm
; class-group: sfc::script::lua::Arguments
; alias: _ZN3sfc6script3lua9Arguments11pushIntegerEi
; demangled: sfc::script::lua::Arguments::pushInteger(int)
; decoder-mode: arm
003cdd78  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003cdd7c  9c 40 9f e5                                      ldr r4, [pc, #0x9c]
003cdd80  9c 60 9f e5                                      ldr r6, [pc, #0x9c]
003cdd84  7c d0 4d e2                                      sub sp, sp, #0x7c
003cdd88  04 40 8f e0                                      add r4, pc, r4
003cdd8c  06 30 94 e7                                      ldr r3, [r4, r6]
003cdd90  04 50 8d e2                                      add r5, sp, #4
003cdd94  00 30 93 e5                                      ldr r3, [r3]
003cdd98  74 30 8d e5                                      str r3, [sp, #0x74]
003cdd9c  04 70 90 e5                                      ldr r7, [r0, #4]
003cdda0  05 00 a0 e1                                      mov r0, r5
003cdda4  3c bb fe eb                                      bl #0x37ca9c
003cdda8  05 10 a0 e1                                      mov r1, r5
003cddac  07 00 a0 e1                                      mov r0, r7
003cddb0  02 2e fd eb                                      bl #0x3195c0
003cddb4  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
003cddb8  24 00 85 e2                                      add r0, r5, #0x24
003cddbc  0c 50 85 e2                                      add r5, r5, #0xc
003cddc0  03 30 94 e7                                      ldr r3, [r4, r3]
003cddc4  08 30 83 e2                                      add r3, r3, #8
003cddc8  04 30 8d e5                                      str r3, [sp, #4]
003cddcc  77 2d fd eb                                      bl #0x3193b0
003cddd0  24 00 9d e5                                      ldr r0, [sp, #0x24]
003cddd4  05 00 50 e1                                      cmp r0, r5
003cddd8  06 00 00 0a                                      beq #0x3cddf8
003cdddc  00 00 50 e3                                      cmp r0, #0
003cdde0  04 00 00 0a                                      beq #0x3cddf8
003cdde4  10 10 9d e5                                      ldr r1, [sp, #0x10]
003cdde8  01 10 60 e0                                      rsb r1, r0, r1
003cddec  80 00 51 e3                                      cmp r1, #0x80
003cddf0  07 00 00 8a                                      bhi #0x3cde14
003cddf4  41 ec 0c eb                                      bl #0x708f00
003cddf8  06 30 94 e7                                      ldr r3, [r4, r6]
003cddfc  74 20 9d e5                                      ldr r2, [sp, #0x74]
003cde00  00 30 93 e5                                      ldr r3, [r3]
003cde04  03 00 52 e1                                      cmp r2, r3
003cde08  03 00 00 1a                                      bne #0x3cde1c
003cde0c  7c d0 8d e2                                      add sp, sp, #0x7c
003cde10  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003cde14  89 09 fd eb                                      bl #0x310440
003cde18  f6 ff ff ea                                      b #0x3cddf8
003cde1c  3b 01 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003cde20  08 6d 5c 00 ac 40 00 00 98 07 00 00              .byte 0x08, 0x6d, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x98, 0x07, 0x00, 0x00
