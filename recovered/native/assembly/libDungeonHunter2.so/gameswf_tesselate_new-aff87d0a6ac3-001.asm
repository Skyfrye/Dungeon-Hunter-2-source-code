; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0078544c, declared_size=88, range_size=88, mode=arm
; class-group: gameswf::tesselate_new
; alias: _ZN7gameswf13tesselate_new11begin_shapeEPNS0_13mesh_accepterEf
; demangled: gameswf::tesselate_new::begin_shape(gameswf::tesselate_new::mesh_accepter*, float)
; decoder-mode: arm
0078544c  44 30 9f e5                                      ldr r3, [pc, #0x44]
00785450  10 40 2d e9                                      push {r4, lr}
00785454  03 30 8f e0                                      add r3, pc, r3
00785458  01 40 a0 e1                                      mov r4, r1
0078545c  00 00 83 e5                                      str r0, [r3]
00785460  00 10 a0 e3                                      mov r1, #0
00785464  04 00 a0 e1                                      mov r0, r4
00785468  a2 23 ee eb                                      bl #0x30e2f8
0078546c  00 00 50 e3                                      cmp r0, #0
00785470  04 00 00 1a                                      bne #0x785488
00785474  20 30 9f e5                                      ldr r3, [pc, #0x20]
00785478  fe 25 a0 e3                                      mov r2, #0x3f800000
0078547c  03 30 8f e0                                      add r3, pc, r3
00785480  00 20 83 e5                                      str r2, [r3]
00785484  10 80 bd e8                                      pop {r4, pc}
00785488  10 30 9f e5                                      ldr r3, [pc, #0x10]
0078548c  03 30 8f e0                                      add r3, pc, r3
00785490  00 40 83 e5                                      str r4, [r3]
00785494  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00785498  7c 75 27 00 5c 88 21 00 4c 88 21 00              .byte 0x7c, 0x75, 0x27, 0x00, 0x5c, 0x88, 0x21, 0x00, 0x4c, 0x88, 0x21, 0x00

; FUNCTION 0x007854a4, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::tesselate_new
; alias: _ZN7gameswf13tesselate_new8end_pathEv
; demangled: gameswf::tesselate_new::end_path()
; decoder-mode: arm
007854a4  10 40 2d e9                                      push {r4, lr}
007854a8  44 00 9f e5                                      ldr r0, [pc, #0x44]
007854ac  00 00 8f e0                                      add r0, pc, r0
007854b0  08 20 90 e5                                      ldr r2, [r0, #8]
007854b4  04 30 90 e5                                      ldr r3, [r0, #4]
007854b8  01 20 42 e2                                      sub r2, r2, #1
007854bc  82 22 83 e0                                      add r2, r3, r2, lsl #5
007854c0  08 10 92 e5                                      ldr r1, [r2, #8]
007854c4  00 00 51 e3                                      cmp r1, #0
007854c8  08 00 00 ba                                      blt #0x7854f0
007854cc  14 30 92 e5                                      ldr r3, [r2, #0x14]
007854d0  01 00 53 e3                                      cmp r3, #1
007854d4  05 00 00 da                                      ble #0x7854f0
007854d8  00 c0 90 e5                                      ldr ip, [r0]
007854dc  10 20 92 e5                                      ldr r2, [r2, #0x10]
007854e0  0c 00 a0 e1                                      mov r0, ip
007854e4  00 c0 9c e5                                      ldr ip, [ip]
007854e8  0f e0 a0 e1                                      mov lr, pc
007854ec  14 f0 9c e5                                      ldr pc, [ip, #0x14]
007854f0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007854f4  24 75 27 00                                      .byte 0x24, 0x75, 0x27, 0x00

; FUNCTION 0x007858dc, declared_size=196, range_size=196, mode=arm
; class-group: gameswf::tesselate_new
; alias: _ZN7gameswf13tesselate_new22copy_points_into_arrayEPNS_5arrayIfEERKNS1_INS_5pointEEE
; demangled: gameswf::tesselate_new::copy_points_into_array(gameswf::array<float>*, gameswf::array<gameswf::point> const&)
; decoder-mode: arm
007858dc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007858e0  04 70 91 e5                                      ldr r7, [r1, #4]
007858e4  01 40 a0 e1                                      mov r4, r1
007858e8  00 50 a0 e1                                      mov r5, r0
007858ec  00 00 57 e3                                      cmp r7, #0
007858f0  23 00 00 da                                      ble #0x785984
007858f4  01 70 47 e2                                      sub r7, r7, #1
007858f8  87 70 b0 e1                                      lsls r7, r7, #1
007858fc  04 60 90 e5                                      ldr r6, [r0, #4]
00785900  20 00 00 1a                                      bne #0x785988
00785904  06 00 57 e1                                      cmp r7, r6
00785908  07 00 00 da                                      ble #0x78592c
0078590c  00 10 a0 e3                                      mov r1, #0
00785910  06 31 a0 e1                                      lsl r3, r6, #2
00785914  00 20 95 e5                                      ldr r2, [r5]
00785918  01 60 86 e2                                      add r6, r6, #1
0078591c  07 00 56 e1                                      cmp r6, r7
00785920  03 10 82 e7                                      str r1, [r2, r3]
00785924  04 30 83 e2                                      add r3, r3, #4
00785928  f9 ff ff 1a                                      bne #0x785914
0078592c  04 70 85 e5                                      str r7, [r5, #4]
00785930  04 30 94 e5                                      ldr r3, [r4, #4]
00785934  01 00 53 e3                                      cmp r3, #1
00785938  11 00 00 da                                      ble #0x785984
0078593c  00 30 a0 e3                                      mov r3, #0
00785940  03 20 a0 e1                                      mov r2, r3
00785944  00 00 94 e5                                      ldr r0, [r4]
00785948  00 10 95 e5                                      ldr r1, [r5]
0078594c  01 20 82 e2                                      add r2, r2, #1
00785950  03 00 90 e7                                      ldr r0, [r0, r3]
00785954  03 00 81 e7                                      str r0, [r1, r3]
00785958  00 00 94 e5                                      ldr r0, [r4]
0078595c  00 10 95 e5                                      ldr r1, [r5]
00785960  03 00 80 e0                                      add r0, r0, r3
00785964  04 00 90 e5                                      ldr r0, [r0, #4]
00785968  03 10 81 e0                                      add r1, r1, r3
0078596c  08 30 83 e2                                      add r3, r3, #8
00785970  04 00 81 e5                                      str r0, [r1, #4]
00785974  04 10 94 e5                                      ldr r1, [r4, #4]
00785978  01 10 41 e2                                      sub r1, r1, #1
0078597c  02 00 51 e1                                      cmp r1, r2
00785980  ef ff ff ca                                      bgt #0x785944
00785984  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00785988  08 30 90 e5                                      ldr r3, [r0, #8]
0078598c  03 00 57 e1                                      cmp r7, r3
00785990  db ff ff da                                      ble #0x785904
00785994  c7 10 87 e0                                      add r1, r7, r7, asr #1
00785998  14 d1 ff eb                                      bl #0x779df0
0078599c  d8 ff ff ea                                      b #0x785904

; FUNCTION 0x007865f0, declared_size=128, range_size=128, mode=arm
; class-group: gameswf::tesselate_new
; alias: _ZN7gameswf13tesselate_new16add_line_segmentEff
; demangled: gameswf::tesselate_new::add_line_segment(float, float)
; decoder-mode: arm
007865f0  70 40 2d e9                                      push {r4, r5, r6, lr}
007865f4  68 20 9f e5                                      ldr r2, [pc, #0x68]
007865f8  68 30 9f e5                                      ldr r3, [pc, #0x68]
007865fc  02 20 8f e0                                      add r2, pc, r2
00786600  14 00 92 e9                                      ldmib r2, {r2, r4}
00786604  03 30 8f e0                                      add r3, pc, r3
00786608  01 40 44 e2                                      sub r4, r4, #1
0078660c  0c 11 83 e5                                      str r1, [r3, #0x10c]
00786610  08 01 83 e5                                      str r0, [r3, #0x108]
00786614  84 42 82 e0                                      add r4, r2, r4, lsl #5
00786618  14 20 94 e5                                      ldr r2, [r4, #0x14]
0078661c  18 30 94 e5                                      ldr r3, [r4, #0x18]
00786620  01 50 82 e2                                      add r5, r2, #1
00786624  03 00 55 e1                                      cmp r5, r3
00786628  03 00 00 da                                      ble #0x78663c
0078662c  10 00 84 e2                                      add r0, r4, #0x10
00786630  c5 10 85 e0                                      add r1, r5, r5, asr #1
00786634  f4 fb ff eb                                      bl #0x78560c
00786638  14 20 94 e5                                      ldr r2, [r4, #0x14]
0078663c  28 30 9f e5                                      ldr r3, [pc, #0x28]
00786640  10 10 94 e5                                      ldr r1, [r4, #0x10]
00786644  03 30 8f e0                                      add r3, pc, r3
00786648  08 c1 93 e5                                      ldr ip, [r3, #0x108]
0078664c  82 01 81 e0                                      add r0, r1, r2, lsl #3
00786650  82 c1 81 e7                                      str ip, [r1, r2, lsl #3]
00786654  0c 31 93 e5                                      ldr r3, [r3, #0x10c]
00786658  04 30 80 e5                                      str r3, [r0, #4]
0078665c  14 50 84 e5                                      str r5, [r4, #0x14]
00786660  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00786664  d4 63 27 00 0c 63 2a 00 cc 62 2a 00              .byte 0xd4, 0x63, 0x27, 0x00, 0x0c, 0x63, 0x2a, 0x00, 0xcc, 0x62, 0x2a, 0x00

; FUNCTION 0x00786670, declared_size=528, range_size=528, mode=arm
; class-group: gameswf::tesselate_new
; alias: _ZN7gameswf13tesselate_newL5curveEffffff
; demangled: gameswf::tesselate_new::curve(float, float, float, float, float, float)
; decoder-mode: arm
00786670  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00786674  1c d0 4d e2                                      sub sp, sp, #0x1c
00786678  40 c0 9d e5                                      ldr ip, [sp, #0x40]
0078667c  03 50 a0 e1                                      mov r5, r3
00786680  44 30 9d e5                                      ldr r3, [sp, #0x44]
00786684  01 80 a0 e1                                      mov r8, r1
00786688  0c 10 a0 e1                                      mov r1, ip
0078668c  02 40 a0 e1                                      mov r4, r2
00786690  0c c0 8d e5                                      str ip, [sp, #0xc]
00786694  10 30 8d e5                                      str r3, [sp, #0x10]
00786698  00 a0 a0 e1                                      mov sl, r0
0078669c  40 21 ee eb                                      bl #0x30eba4
007866a0  3f 14 a0 e3                                      mov r1, #0x3f000000
007866a4  b0 21 ee eb                                      bl #0x30ed6c
007866a8  10 10 9d e5                                      ldr r1, [sp, #0x10]
007866ac  00 90 a0 e1                                      mov sb, r0
007866b0  08 00 a0 e1                                      mov r0, r8
007866b4  3a 21 ee eb                                      bl #0x30eba4
007866b8  3f 14 a0 e3                                      mov r1, #0x3f000000
007866bc  aa 21 ee eb                                      bl #0x30ed6c
007866c0  09 10 a0 e1                                      mov r1, sb
007866c4  00 b0 a0 e1                                      mov fp, r0
007866c8  04 00 a0 e1                                      mov r0, r4
007866cc  34 21 ee eb                                      bl #0x30eba4
007866d0  3f 14 a0 e3                                      mov r1, #0x3f000000
007866d4  a4 21 ee eb                                      bl #0x30ed6c
007866d8  0b 10 a0 e1                                      mov r1, fp
007866dc  00 70 a0 e1                                      mov r7, r0
007866e0  05 00 a0 e1                                      mov r0, r5
007866e4  2e 21 ee eb                                      bl #0x30eba4
007866e8  3f 14 a0 e3                                      mov r1, #0x3f000000
007866ec  9e 21 ee eb                                      bl #0x30ed6c
007866f0  07 10 a0 e1                                      mov r1, r7
007866f4  00 60 a0 e1                                      mov r6, r0
007866f8  09 00 a0 e1                                      mov r0, sb
007866fc  2a 1f ee eb                                      bl #0x30e3ac
00786700  06 10 a0 e1                                      mov r1, r6
00786704  02 31 c0 e3                                      bic r3, r0, #0x80000000
00786708  0b 00 a0 e1                                      mov r0, fp
0078670c  08 30 8d e5                                      str r3, [sp, #8]
00786710  25 1f ee eb                                      bl #0x30e3ac
00786714  60 91 9f e5                                      ldr sb, [pc, #0x160]
00786718  08 30 9d e5                                      ldr r3, [sp, #8]
0078671c  02 11 c0 e3                                      bic r1, r0, #0x80000000
00786720  09 90 8f e0                                      add sb, pc, sb
00786724  03 00 a0 e1                                      mov r0, r3
00786728  1d 21 ee eb                                      bl #0x30eba4
0078672c  00 10 99 e5                                      ldr r1, [sb]
00786730  f5 1f ee eb                                      bl #0x30e70c
00786734  00 00 50 e3                                      cmp r0, #0
00786738  14 90 8d 05                                      streq sb, [sp, #0x14]
0078673c  02 00 00 0a                                      beq #0x78674c
00786740  48 00 00 ea                                      b #0x786868
00786744  09 60 a0 e1                                      mov r6, sb
00786748  0b 70 a0 e1                                      mov r7, fp
0078674c  04 10 a0 e1                                      mov r1, r4
00786750  0a 00 a0 e1                                      mov r0, sl
00786754  12 21 ee eb                                      bl #0x30eba4
00786758  3f 14 a0 e3                                      mov r1, #0x3f000000
0078675c  82 21 ee eb                                      bl #0x30ed6c
00786760  05 10 a0 e1                                      mov r1, r5
00786764  00 90 a0 e1                                      mov sb, r0
00786768  08 00 a0 e1                                      mov r0, r8
0078676c  0c 21 ee eb                                      bl #0x30eba4
00786770  3f 14 a0 e3                                      mov r1, #0x3f000000
00786774  7c 21 ee eb                                      bl #0x30ed6c
00786778  09 20 a0 e1                                      mov r2, sb
0078677c  00 30 a0 e1                                      mov r3, r0
00786780  08 10 a0 e1                                      mov r1, r8
00786784  0a 00 a0 e1                                      mov r0, sl
00786788  00 70 8d e5                                      str r7, [sp]
0078678c  04 60 8d e5                                      str r6, [sp, #4]
00786790  b6 ff ff eb                                      bl #0x786670
00786794  04 00 a0 e1                                      mov r0, r4
00786798  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0078679c  00 21 ee eb                                      bl #0x30eba4
007867a0  3f 14 a0 e3                                      mov r1, #0x3f000000
007867a4  70 21 ee eb                                      bl #0x30ed6c
007867a8  10 10 9d e5                                      ldr r1, [sp, #0x10]
007867ac  00 40 a0 e1                                      mov r4, r0
007867b0  05 00 a0 e1                                      mov r0, r5
007867b4  fa 20 ee eb                                      bl #0x30eba4
007867b8  3f 14 a0 e3                                      mov r1, #0x3f000000
007867bc  6a 21 ee eb                                      bl #0x30ed6c
007867c0  07 10 a0 e1                                      mov r1, r7
007867c4  00 50 a0 e1                                      mov r5, r0
007867c8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007867cc  f4 20 ee eb                                      bl #0x30eba4
007867d0  3f 14 a0 e3                                      mov r1, #0x3f000000
007867d4  64 21 ee eb                                      bl #0x30ed6c
007867d8  06 10 a0 e1                                      mov r1, r6
007867dc  00 a0 a0 e1                                      mov sl, r0
007867e0  10 00 9d e5                                      ldr r0, [sp, #0x10]
007867e4  ee 20 ee eb                                      bl #0x30eba4
007867e8  3f 14 a0 e3                                      mov r1, #0x3f000000
007867ec  5e 21 ee eb                                      bl #0x30ed6c
007867f0  04 10 a0 e1                                      mov r1, r4
007867f4  00 80 a0 e1                                      mov r8, r0
007867f8  0a 00 a0 e1                                      mov r0, sl
007867fc  e8 20 ee eb                                      bl #0x30eba4
00786800  3f 14 a0 e3                                      mov r1, #0x3f000000
00786804  58 21 ee eb                                      bl #0x30ed6c
00786808  05 10 a0 e1                                      mov r1, r5
0078680c  00 b0 a0 e1                                      mov fp, r0
00786810  08 00 a0 e1                                      mov r0, r8
00786814  e2 20 ee eb                                      bl #0x30eba4
00786818  3f 14 a0 e3                                      mov r1, #0x3f000000
0078681c  52 21 ee eb                                      bl #0x30ed6c
00786820  0b 10 a0 e1                                      mov r1, fp
00786824  00 90 a0 e1                                      mov sb, r0
00786828  0a 00 a0 e1                                      mov r0, sl
0078682c  de 1e ee eb                                      bl #0x30e3ac
00786830  09 10 a0 e1                                      mov r1, sb
00786834  02 a1 c0 e3                                      bic sl, r0, #0x80000000
00786838  08 00 a0 e1                                      mov r0, r8
0078683c  da 1e ee eb                                      bl #0x30e3ac
00786840  02 11 c0 e3                                      bic r1, r0, #0x80000000
00786844  0a 00 a0 e1                                      mov r0, sl
00786848  d5 20 ee eb                                      bl #0x30eba4
0078684c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00786850  07 a0 a0 e1                                      mov sl, r7
00786854  06 80 a0 e1                                      mov r8, r6
00786858  00 10 9c e5                                      ldr r1, [ip]
0078685c  aa 1f ee eb                                      bl #0x30e70c
00786860  00 00 50 e3                                      cmp r0, #0
00786864  b6 ff ff 0a                                      beq #0x786744
00786868  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0078686c  10 10 9d e5                                      ldr r1, [sp, #0x10]
00786870  1c d0 8d e2                                      add sp, sp, #0x1c
00786874  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00786878  5c ff ff ea                                      b #0x7865f0
; mapping-symbol data/literal pool
0078687c  b8 75 21 00                                      .byte 0xb8, 0x75, 0x21, 0x00

; FUNCTION 0x00786880, declared_size=128, range_size=128, mode=arm
; class-group: gameswf::tesselate_new
; alias: _ZN7gameswf13tesselate_new17add_curve_segmentEffff
; demangled: gameswf::tesselate_new::add_curve_segment(float, float, float, float)
; decoder-mode: arm
00786880  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00786884  01 60 a0 e1                                      mov r6, r1
00786888  0c d0 4d e2                                      sub sp, sp, #0xc
0078688c  02 10 a0 e1                                      mov r1, r2
00786890  02 40 a0 e1                                      mov r4, r2
00786894  03 50 a0 e1                                      mov r5, r3
00786898  00 70 a0 e1                                      mov r7, r0
0078689c  ba 1d ee eb                                      bl #0x30df8c
007868a0  00 00 50 e3                                      cmp r0, #0
007868a4  04 00 00 0a                                      beq #0x7868bc
007868a8  06 00 a0 e1                                      mov r0, r6
007868ac  05 10 a0 e1                                      mov r1, r5
007868b0  b5 1d ee eb                                      bl #0x30df8c
007868b4  00 00 50 e3                                      cmp r0, #0
007868b8  0a 00 00 1a                                      bne #0x7868e8
007868bc  38 00 9f e5                                      ldr r0, [pc, #0x38]
007868c0  07 20 a0 e1                                      mov r2, r7
007868c4  06 30 a0 e1                                      mov r3, r6
007868c8  00 00 8f e0                                      add r0, pc, r0
007868cc  0c 11 90 e5                                      ldr r1, [r0, #0x10c]
007868d0  08 01 90 e5                                      ldr r0, [r0, #0x108]
007868d4  00 40 8d e5                                      str r4, [sp]
007868d8  04 50 8d e5                                      str r5, [sp, #4]
007868dc  63 ff ff eb                                      bl #0x786670
007868e0  0c d0 8d e2                                      add sp, sp, #0xc
007868e4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
007868e8  04 00 a0 e1                                      mov r0, r4
007868ec  05 10 a0 e1                                      mov r1, r5
007868f0  0c d0 8d e2                                      add sp, sp, #0xc
007868f4  f0 40 bd e8                                      pop {r4, r5, r6, r7, lr}
007868f8  3c ff ff ea                                      b #0x7865f0
; mapping-symbol data/literal pool
007868fc  48 60 2a 00                                      .byte 0x48, 0x60, 0x2a, 0x00

; FUNCTION 0x00786d28, declared_size=644, range_size=644, mode=arm
; class-group: gameswf::tesselate_new
; alias: _ZN7gameswf13tesselate_new19try_to_combine_pathEi
; demangled: gameswf::tesselate_new::try_to_combine_path(int)
; decoder-mode: arm
00786d28  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00786d2c  70 32 9f e5                                      ldr r3, [pc, #0x270]
00786d30  1c d0 4d e2                                      sub sp, sp, #0x1c
00786d34  00 60 a0 e1                                      mov r6, r0
00786d38  03 30 8f e0                                      add r3, pc, r3
00786d3c  04 50 93 e5                                      ldr r5, [r3, #4]
00786d40  80 a2 85 e0                                      add sl, r5, r0, lsl #5
00786d44  0c 30 da e5                                      ldrb r3, [sl, #0xc]
00786d48  00 00 53 e3                                      cmp r3, #0
00786d4c  59 00 00 1a                                      bne #0x786eb8
00786d50  04 20 9a e5                                      ldr r2, [sl, #4]
00786d54  01 00 72 e3                                      cmn r2, #1
00786d58  04 20 8d e5                                      str r2, [sp, #4]
00786d5c  55 00 00 0a                                      beq #0x786eb8
00786d60  14 b0 9a e5                                      ldr fp, [sl, #0x14]
00786d64  00 00 5b e3                                      cmp fp, #0
00786d68  52 00 00 da                                      ble #0x786eb8
00786d6c  10 30 9a e5                                      ldr r3, [sl, #0x10]
00786d70  08 30 8d e5                                      str r3, [sp, #8]
00786d74  08 20 9d e5                                      ldr r2, [sp, #8]
00786d78  01 30 4b e2                                      sub r3, fp, #1
00786d7c  83 21 92 e7                                      ldr r2, [r2, r3, lsl #3]
00786d80  14 20 8d e5                                      str r2, [sp, #0x14]
00786d84  08 20 9d e5                                      ldr r2, [sp, #8]
00786d88  14 10 9d e5                                      ldr r1, [sp, #0x14]
00786d8c  00 20 92 e5                                      ldr r2, [r2]
00786d90  0c 20 8d e5                                      str r2, [sp, #0xc]
00786d94  08 20 9d e5                                      ldr r2, [sp, #8]
00786d98  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00786d9c  83 31 82 e0                                      add r3, r2, r3, lsl #3
00786da0  10 30 8d e5                                      str r3, [sp, #0x10]
00786da4  78 1c ee eb                                      bl #0x30df8c
00786da8  00 00 50 e3                                      cmp r0, #0
00786dac  44 00 00 1a                                      bne #0x786ec4
00786db0  f0 31 9f e5                                      ldr r3, [pc, #0x1f0]
00786db4  03 30 8f e0                                      add r3, pc, r3
00786db8  08 70 93 e5                                      ldr r7, [r3, #8]
00786dbc  00 00 57 e3                                      cmp r7, #0
00786dc0  00 40 a0 c3                                      movgt r4, #0
00786dc4  04 00 00 ca                                      bgt #0x786ddc
00786dc8  3a 00 00 ea                                      b #0x786eb8
00786dcc  01 40 84 e2                                      add r4, r4, #1
00786dd0  07 00 54 e1                                      cmp r4, r7
00786dd4  20 50 85 e2                                      add r5, r5, #0x20
00786dd8  36 00 00 0a                                      beq #0x786eb8
00786ddc  06 00 54 e1                                      cmp r4, r6
00786de0  f9 ff ff 0a                                      beq #0x786dcc
00786de4  0c 30 d5 e5                                      ldrb r3, [r5, #0xc]
00786de8  00 00 53 e3                                      cmp r3, #0
00786dec  f6 ff ff 1a                                      bne #0x786dcc
00786df0  04 30 95 e5                                      ldr r3, [r5, #4]
00786df4  04 20 9d e5                                      ldr r2, [sp, #4]
00786df8  03 00 52 e1                                      cmp r2, r3
00786dfc  f2 ff ff 1a                                      bne #0x786dcc
00786e00  14 90 95 e5                                      ldr sb, [r5, #0x14]
00786e04  14 00 9d e5                                      ldr r0, [sp, #0x14]
00786e08  00 00 59 e3                                      cmp sb, #0
00786e0c  ee ff ff da                                      ble #0x786dcc
00786e10  10 80 95 e5                                      ldr r8, [r5, #0x10]
00786e14  00 10 98 e5                                      ldr r1, [r8]
00786e18  5b 1c ee eb                                      bl #0x30df8c
00786e1c  00 00 50 e3                                      cmp r0, #0
00786e20  31 00 00 0a                                      beq #0x786eec
00786e24  10 30 9d e5                                      ldr r3, [sp, #0x10]
00786e28  04 00 98 e5                                      ldr r0, [r8, #4]
00786e2c  04 10 93 e5                                      ldr r1, [r3, #4]
00786e30  55 1c ee eb                                      bl #0x30df8c
00786e34  00 00 50 e3                                      cmp r0, #0
00786e38  2b 00 00 0a                                      beq #0x786eec
00786e3c  01 00 59 e3                                      cmp sb, #1
00786e40  18 00 00 0a                                      beq #0x786ea8
00786e44  10 70 8a e2                                      add r7, sl, #0x10
00786e48  01 60 a0 e3                                      mov r6, #1
00786e4c  00 00 00 ea                                      b #0x786e54
00786e50  10 80 95 e5                                      ldr r8, [r5, #0x10]
00786e54  18 30 9a e5                                      ldr r3, [sl, #0x18]
00786e58  01 40 8b e2                                      add r4, fp, #1
00786e5c  86 81 88 e0                                      add r8, r8, r6, lsl #3
00786e60  03 00 54 e1                                      cmp r4, r3
00786e64  01 60 86 e2                                      add r6, r6, #1
00786e68  03 00 00 da                                      ble #0x786e7c
00786e6c  07 00 a0 e1                                      mov r0, r7
00786e70  c4 10 84 e0                                      add r1, r4, r4, asr #1
00786e74  e4 f9 ff eb                                      bl #0x78560c
00786e78  14 b0 9a e5                                      ldr fp, [sl, #0x14]
00786e7c  10 30 9a e5                                      ldr r3, [sl, #0x10]
00786e80  00 10 98 e5                                      ldr r1, [r8]
00786e84  8b 21 83 e0                                      add r2, r3, fp, lsl #3
00786e88  8b 11 83 e7                                      str r1, [r3, fp, lsl #3]
00786e8c  04 30 98 e5                                      ldr r3, [r8, #4]
00786e90  04 b0 a0 e1                                      mov fp, r4
00786e94  04 30 82 e5                                      str r3, [r2, #4]
00786e98  14 40 8a e5                                      str r4, [sl, #0x14]
00786e9c  14 30 95 e5                                      ldr r3, [r5, #0x14]
00786ea0  03 00 56 e1                                      cmp r6, r3
00786ea4  e9 ff ff ba                                      blt #0x786e50
00786ea8  00 30 e0 e3                                      mvn r3, #0
00786eac  04 30 85 e5                                      str r3, [r5, #4]
00786eb0  01 00 a0 e3                                      mov r0, #1
00786eb4  00 00 00 ea                                      b #0x786ebc
00786eb8  00 00 a0 e3                                      mov r0, #0
00786ebc  1c d0 8d e2                                      add sp, sp, #0x1c
00786ec0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00786ec4  08 30 9d e5                                      ldr r3, [sp, #8]
00786ec8  10 20 9d e5                                      ldr r2, [sp, #0x10]
00786ecc  04 00 93 e5                                      ldr r0, [r3, #4]
00786ed0  04 10 92 e5                                      ldr r1, [r2, #4]
00786ed4  2c 1c ee eb                                      bl #0x30df8c
00786ed8  00 00 50 e3                                      cmp r0, #0
00786edc  01 00 a0 13                                      movne r0, #1
00786ee0  0c 00 ca 15                                      strbne r0, [sl, #0xc]
00786ee4  f4 ff ff 1a                                      bne #0x786ebc
00786ee8  b0 ff ff ea                                      b #0x786db0
00786eec  01 30 49 e2                                      sub r3, sb, #1
00786ef0  83 11 98 e7                                      ldr r1, [r8, r3, lsl #3]
00786ef4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00786ef8  83 81 88 e0                                      add r8, r8, r3, lsl #3
00786efc  22 1c ee eb                                      bl #0x30df8c
00786f00  00 00 50 e3                                      cmp r0, #0
00786f04  b0 ff ff 0a                                      beq #0x786dcc
00786f08  08 20 9d e5                                      ldr r2, [sp, #8]
00786f0c  04 00 98 e5                                      ldr r0, [r8, #4]
00786f10  04 10 92 e5                                      ldr r1, [r2, #4]
00786f14  1c 1c ee eb                                      bl #0x30df8c
00786f18  00 00 50 e3                                      cmp r0, #0
00786f1c  aa ff ff 0a                                      beq #0x786dcc
00786f20  01 00 5b e3                                      cmp fp, #1
00786f24  1a 00 00 0a                                      beq #0x786f94
00786f28  10 80 85 e2                                      add r8, r5, #0x10
00786f2c  01 60 a0 e3                                      mov r6, #1
00786f30  08 70 9d e5                                      ldr r7, [sp, #8]
00786f34  00 00 00 ea                                      b #0x786f3c
00786f38  10 70 9a e5                                      ldr r7, [sl, #0x10]
00786f3c  18 20 95 e5                                      ldr r2, [r5, #0x18]
00786f40  01 40 89 e2                                      add r4, sb, #1
00786f44  86 71 87 e0                                      add r7, r7, r6, lsl #3
00786f48  02 00 54 e1                                      cmp r4, r2
00786f4c  09 30 a0 e1                                      mov r3, sb
00786f50  01 60 86 e2                                      add r6, r6, #1
00786f54  03 00 00 da                                      ble #0x786f68
00786f58  08 00 a0 e1                                      mov r0, r8
00786f5c  c4 10 84 e0                                      add r1, r4, r4, asr #1
00786f60  a9 f9 ff eb                                      bl #0x78560c
00786f64  14 30 95 e5                                      ldr r3, [r5, #0x14]
00786f68  10 20 95 e5                                      ldr r2, [r5, #0x10]
00786f6c  00 00 97 e5                                      ldr r0, [r7]
00786f70  04 90 a0 e1                                      mov sb, r4
00786f74  83 11 82 e0                                      add r1, r2, r3, lsl #3
00786f78  83 01 82 e7                                      str r0, [r2, r3, lsl #3]
00786f7c  04 30 97 e5                                      ldr r3, [r7, #4]
00786f80  04 30 81 e5                                      str r3, [r1, #4]
00786f84  14 40 85 e5                                      str r4, [r5, #0x14]
00786f88  14 30 9a e5                                      ldr r3, [sl, #0x14]
00786f8c  03 00 56 e1                                      cmp r6, r3
00786f90  e8 ff ff ba                                      blt #0x786f38
00786f94  00 30 e0 e3                                      mvn r3, #0
00786f98  04 30 8a e5                                      str r3, [sl, #4]
00786f9c  01 00 a0 e3                                      mov r0, #1
00786fa0  c5 ff ff ea                                      b #0x786ebc
; mapping-symbol data/literal pool
00786fa4  98 5c 27 00 1c 5c 27 00                          .byte 0x98, 0x5c, 0x27, 0x00, 0x1c, 0x5c, 0x27, 0x00

; FUNCTION 0x0078787c, declared_size=216, range_size=216, mode=arm
; class-group: gameswf::tesselate_new
; alias: _ZN7gameswf13tesselate_new10begin_pathEiiiff
; demangled: gameswf::tesselate_new::begin_path(int, int, int, float, float)
; decoder-mode: arm
0078787c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00787880  c0 40 9f e5                                      ldr r4, [pc, #0xc0]
00787884  01 50 a0 e1                                      mov r5, r1
00787888  00 60 a0 e1                                      mov r6, r0
0078788c  04 40 8f e0                                      add r4, pc, r4
00787890  08 10 94 e5                                      ldr r1, [r4, #8]
00787894  04 00 84 e2                                      add r0, r4, #4
00787898  02 70 a0 e1                                      mov r7, r2
0078789c  01 10 81 e2                                      add r1, r1, #1
007878a0  03 80 a0 e1                                      mov r8, r3
007878a4  a3 ff ff eb                                      bl #0x787738
007878a8  08 10 94 e5                                      ldr r1, [r4, #8]
007878ac  04 20 94 e5                                      ldr r2, [r4, #4]
007878b0  94 30 9f e5                                      ldr r3, [pc, #0x94]
007878b4  01 10 41 e2                                      sub r1, r1, #1
007878b8  81 62 82 e7                                      str r6, [r2, r1, lsl #5]
007878bc  08 10 94 e5                                      ldr r1, [r4, #8]
007878c0  04 20 94 e5                                      ldr r2, [r4, #4]
007878c4  03 30 8f e0                                      add r3, pc, r3
007878c8  81 22 82 e0                                      add r2, r2, r1, lsl #5
007878cc  1c 50 02 e5                                      str r5, [r2, #-0x1c]
007878d0  08 10 94 e5                                      ldr r1, [r4, #8]
007878d4  04 20 94 e5                                      ldr r2, [r4, #4]
007878d8  81 22 82 e0                                      add r2, r2, r1, lsl #5
007878dc  18 70 02 e5                                      str r7, [r2, #-0x18]
007878e0  08 10 94 e5                                      ldr r1, [r4, #8]
007878e4  04 20 94 e5                                      ldr r2, [r4, #4]
007878e8  18 00 9d e5                                      ldr r0, [sp, #0x18]
007878ec  01 40 41 e2                                      sub r4, r1, #1
007878f0  08 81 83 e5                                      str r8, [r3, #0x108]
007878f4  0c 01 83 e5                                      str r0, [r3, #0x10c]
007878f8  84 42 82 e0                                      add r4, r2, r4, lsl #5
007878fc  14 20 94 e5                                      ldr r2, [r4, #0x14]
00787900  18 30 94 e5                                      ldr r3, [r4, #0x18]
00787904  01 50 82 e2                                      add r5, r2, #1
00787908  03 00 55 e1                                      cmp r5, r3
0078790c  03 00 00 da                                      ble #0x787920
00787910  10 00 84 e2                                      add r0, r4, #0x10
00787914  c5 10 85 e0                                      add r1, r5, r5, asr #1
00787918  3b f7 ff eb                                      bl #0x78560c
0078791c  14 20 94 e5                                      ldr r2, [r4, #0x14]
00787920  28 30 9f e5                                      ldr r3, [pc, #0x28]
00787924  10 10 94 e5                                      ldr r1, [r4, #0x10]
00787928  03 30 8f e0                                      add r3, pc, r3
0078792c  08 c1 93 e5                                      ldr ip, [r3, #0x108]
00787930  82 01 81 e0                                      add r0, r1, r2, lsl #3
00787934  82 c1 81 e7                                      str ip, [r1, r2, lsl #3]
00787938  0c 31 93 e5                                      ldr r3, [r3, #0x10c]
0078793c  04 30 80 e5                                      str r3, [r0, #4]
00787940  14 50 84 e5                                      str r5, [r4, #0x14]
00787944  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00787948  44 51 27 00 4c 50 2a 00 e8 4f 2a 00              .byte 0x44, 0x51, 0x27, 0x00, 0x4c, 0x50, 0x2a, 0x00, 0xe8, 0x4f, 0x2a, 0x00

; FUNCTION 0x00787954, declared_size=1324, range_size=1324, mode=arm
; class-group: gameswf::tesselate_new
; alias: _ZN7gameswf13tesselate_new9end_shapeEv
; demangled: gameswf::tesselate_new::end_shape()
; decoder-mode: arm
00787954  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00787958  f8 b4 9f e5                                      ldr fp, [pc, #0x4f8]
0078795c  4c d0 4d e2                                      sub sp, sp, #0x4c
00787960  0b b0 8f e0                                      add fp, pc, fp
00787964  08 a0 9b e5                                      ldr sl, [fp, #8]
00787968  00 00 5a e3                                      cmp sl, #0
0078796c  36 00 00 da                                      ble #0x787a4c
00787970  e4 24 9f e5                                      ldr r2, [pc, #0x4e4]
00787974  00 30 a0 e3                                      mov r3, #0
00787978  04 00 8b e2                                      add r0, fp, #4
0078797c  02 20 8f e0                                      add r2, pc, r2
00787980  18 a0 8d e5                                      str sl, [sp, #0x18]
00787984  24 20 8d e5                                      str r2, [sp, #0x24]
00787988  20 00 8d e5                                      str r0, [sp, #0x20]
0078798c  03 a0 a0 e1                                      mov sl, r3
00787990  04 30 9b e5                                      ldr r3, [fp, #4]
00787994  8a 82 a0 e1                                      lsl r8, sl, #5
00787998  8a 42 93 e7                                      ldr r4, [r3, sl, lsl #5]
0078799c  08 30 83 e0                                      add r3, r3, r8
007879a0  04 20 93 e5                                      ldr r2, [r3, #4]
007879a4  00 00 54 e3                                      cmp r4, #0
007879a8  20 00 00 ba                                      blt #0x787a30
007879ac  01 00 72 e3                                      cmn r2, #1
007879b0  3d 00 00 1a                                      bne #0x787aac
007879b4  04 40 83 e5                                      str r4, [r3, #4]
007879b8  04 30 9b e5                                      ldr r3, [fp, #4]
007879bc  08 20 83 e7                                      str r2, [r3, r8]
007879c0  04 30 9b e5                                      ldr r3, [fp, #4]
007879c4  08 30 83 e0                                      add r3, r3, r8
007879c8  14 10 93 e5                                      ldr r1, [r3, #0x14]
007879cc  c1 60 a0 e1                                      asr r6, r1, #1
007879d0  00 00 56 e3                                      cmp r6, #0
007879d4  15 00 00 da                                      ble #0x787a30
007879d8  01 10 41 e2                                      sub r1, r1, #1
007879dc  81 11 a0 e1                                      lsl r1, r1, #3
007879e0  00 20 a0 e3                                      mov r2, #0
007879e4  24 70 9d e5                                      ldr r7, [sp, #0x24]
007879e8  01 00 00 ea                                      b #0x7879f4
007879ec  04 30 97 e5                                      ldr r3, [r7, #4]
007879f0  08 30 83 e0                                      add r3, r3, r8
007879f4  10 30 93 e5                                      ldr r3, [r3, #0x10]
007879f8  01 00 93 e7                                      ldr r0, [r3, r1]
007879fc  82 c1 83 e0                                      add ip, r3, r2, lsl #3
00787a00  82 e1 93 e7                                      ldr lr, [r3, r2, lsl #3]
00787a04  04 40 9c e5                                      ldr r4, [ip, #4]
00787a08  82 01 83 e7                                      str r0, [r3, r2, lsl #3]
00787a0c  01 00 83 e0                                      add r0, r3, r1
00787a10  04 50 90 e5                                      ldr r5, [r0, #4]
00787a14  01 20 82 e2                                      add r2, r2, #1
00787a18  06 00 52 e1                                      cmp r2, r6
00787a1c  04 50 8c e5                                      str r5, [ip, #4]
00787a20  04 40 80 e5                                      str r4, [r0, #4]
00787a24  01 e0 83 e7                                      str lr, [r3, r1]
00787a28  08 10 41 e2                                      sub r1, r1, #8
00787a2c  ee ff ff 1a                                      bne #0x7879ec
00787a30  18 10 9d e5                                      ldr r1, [sp, #0x18]
00787a34  01 a0 8a e2                                      add sl, sl, #1
00787a38  01 00 5a e1                                      cmp sl, r1
00787a3c  d3 ff ff 1a                                      bne #0x787990
00787a40  18 34 9f e5                                      ldr r3, [pc, #0x418]
00787a44  03 30 8f e0                                      add r3, pc, r3
00787a48  08 a0 93 e5                                      ldr sl, [r3, #8]
00787a4c  10 54 9f e5                                      ldr r5, [pc, #0x410]
00787a50  00 40 a0 e3                                      mov r4, #0
00787a54  0a 00 54 e1                                      cmp r4, sl
00787a58  04 80 a0 e1                                      mov r8, r4
00787a5c  05 50 8f e0                                      add r5, pc, r5
00787a60  06 00 00 ba                                      blt #0x787a80
00787a64  00 00 58 e3                                      cmp r8, #0
00787a68  44 00 00 0a                                      beq #0x787b80
00787a6c  08 a0 95 e5                                      ldr sl, [r5, #8]
00787a70  00 40 a0 e3                                      mov r4, #0
00787a74  04 80 a0 e1                                      mov r8, r4
00787a78  0a 00 54 e1                                      cmp r4, sl
00787a7c  f8 ff ff aa                                      bge #0x787a64
00787a80  00 00 58 e3                                      cmp r8, #0
00787a84  02 00 00 0a                                      beq #0x787a94
00787a88  01 40 84 e2                                      add r4, r4, #1
00787a8c  08 a0 95 e5                                      ldr sl, [r5, #8]
00787a90  f8 ff ff ea                                      b #0x787a78
00787a94  04 00 a0 e1                                      mov r0, r4
00787a98  a2 fc ff eb                                      bl #0x786d28
00787a9c  00 00 50 e3                                      cmp r0, #0
00787aa0  01 80 a0 13                                      movne r8, #1
00787aa4  01 40 84 e2                                      add r4, r4, #1
00787aa8  f7 ff ff ea                                      b #0x787a8c
00787aac  08 10 9b e5                                      ldr r1, [fp, #8]
00787ab0  20 00 9d e5                                      ldr r0, [sp, #0x20]
00787ab4  01 10 81 e2                                      add r1, r1, #1
00787ab8  1e ff ff eb                                      bl #0x787738
00787abc  22 00 9b e9                                      ldmib fp, {r1, r5}
00787ac0  01 50 45 e2                                      sub r5, r5, #1
00787ac4  85 52 81 e0                                      add r5, r1, r5, lsl #5
00787ac8  10 20 85 e2                                      add r2, r5, #0x10
00787acc  14 10 8d e5                                      str r1, [sp, #0x14]
00787ad0  08 90 81 e0                                      add sb, r1, r8
00787ad4  04 40 85 e5                                      str r4, [r5, #4]
00787ad8  10 20 8d e5                                      str r2, [sp, #0x10]
00787adc  02 00 a0 e1                                      mov r0, r2
00787ae0  14 10 99 e5                                      ldr r1, [sb, #0x14]
00787ae4  c8 f6 ff eb                                      bl #0x78560c
00787ae8  14 30 99 e5                                      ldr r3, [sb, #0x14]
00787aec  01 60 53 e2                                      subs r6, r3, #1
00787af0  1a 00 00 4a                                      bmi #0x787b60
00787af4  14 20 95 e5                                      ldr r2, [r5, #0x14]
00787af8  86 61 a0 e1                                      lsl r6, r6, #3
00787afc  1c 80 8d e5                                      str r8, [sp, #0x1c]
00787b00  03 30 82 e0                                      add r3, r2, r3
00787b04  03 80 a0 e1                                      mov r8, r3
00787b08  18 30 95 e5                                      ldr r3, [r5, #0x18]
00787b0c  10 70 99 e5                                      ldr r7, [sb, #0x10]
00787b10  01 40 82 e2                                      add r4, r2, #1
00787b14  03 00 54 e1                                      cmp r4, r3
00787b18  06 70 87 e0                                      add r7, r7, r6
00787b1c  03 00 00 da                                      ble #0x787b30
00787b20  10 00 9d e5                                      ldr r0, [sp, #0x10]
00787b24  c4 10 84 e0                                      add r1, r4, r4, asr #1
00787b28  b7 f6 ff eb                                      bl #0x78560c
00787b2c  14 20 95 e5                                      ldr r2, [r5, #0x14]
00787b30  10 30 95 e5                                      ldr r3, [r5, #0x10]
00787b34  00 00 97 e5                                      ldr r0, [r7]
00787b38  08 00 54 e1                                      cmp r4, r8
00787b3c  82 11 83 e0                                      add r1, r3, r2, lsl #3
00787b40  82 01 83 e7                                      str r0, [r3, r2, lsl #3]
00787b44  04 30 97 e5                                      ldr r3, [r7, #4]
00787b48  08 60 46 e2                                      sub r6, r6, #8
00787b4c  04 20 a0 e1                                      mov r2, r4
00787b50  04 30 81 e5                                      str r3, [r1, #4]
00787b54  14 40 85 e5                                      str r4, [r5, #0x14]
00787b58  ea ff ff 1a                                      bne #0x787b08
00787b5c  1c 80 9d e5                                      ldr r8, [sp, #0x1c]
00787b60  14 30 9d e5                                      ldr r3, [sp, #0x14]
00787b64  00 00 e0 e3                                      mvn r0, #0
00787b68  01 a0 8a e2                                      add sl, sl, #1
00787b6c  08 00 83 e7                                      str r0, [r3, r8]
00787b70  18 10 9d e5                                      ldr r1, [sp, #0x18]
00787b74  01 00 5a e1                                      cmp sl, r1
00787b78  84 ff ff 1a                                      bne #0x787990
00787b7c  af ff ff ea                                      b #0x787a40
00787b80  00 00 5a e3                                      cmp sl, #0
00787b84  9c 00 00 da                                      ble #0x787dfc
00787b88  d8 32 9f e5                                      ldr r3, [pc, #0x2d8]
00787b8c  d8 22 9f e5                                      ldr r2, [pc, #0x2d8]
00787b90  d8 52 9f e5                                      ldr r5, [pc, #0x2d8]
00787b94  03 30 8f e0                                      add r3, pc, r3
00787b98  18 30 8d e5                                      str r3, [sp, #0x18]
00787b9c  d0 32 9f e5                                      ldr r3, [pc, #0x2d0]
00787ba0  d0 42 9f e5                                      ldr r4, [pc, #0x2d0]
00787ba4  1c 20 8d e5                                      str r2, [sp, #0x1c]
00787ba8  03 30 8f e0                                      add r3, pc, r3
00787bac  20 30 8d e5                                      str r3, [sp, #0x20]
00787bb0  05 50 8f e0                                      add r5, pc, r5
00787bb4  04 40 8f e0                                      add r4, pc, r4
00787bb8  01 60 a0 e3                                      mov r6, #1
00787bbc  18 30 9d e5                                      ldr r3, [sp, #0x18]
00787bc0  04 a0 93 e5                                      ldr sl, [r3, #4]
00787bc4  08 a0 8a e0                                      add sl, sl, r8
00787bc8  0d 30 da e5                                      ldrb r3, [sl, #0xd]
00787bcc  00 00 53 e3                                      cmp r3, #0
00787bd0  80 00 00 1a                                      bne #0x787dd8
00787bd4  04 70 9a e5                                      ldr r7, [sl, #4]
00787bd8  01 00 77 e3                                      cmn r7, #1
00787bdc  7d 00 00 0a                                      beq #0x787dd8
00787be0  0c 20 da e5                                      ldrb r2, [sl, #0xc]
00787be4  00 00 52 e3                                      cmp r2, #0
00787be8  7a 00 00 0a                                      beq #0x787dd8
00787bec  14 20 9a e5                                      ldr r2, [sl, #0x14]
00787bf0  00 00 52 e3                                      cmp r2, #0
00787bf4  77 00 00 da                                      ble #0x787dd8
00787bf8  01 90 a0 e3                                      mov sb, #1
00787bfc  38 00 8d e2                                      add r0, sp, #0x38
00787c00  14 00 8d e5                                      str r0, [sp, #0x14]
00787c04  0d 90 ca e5                                      strb sb, [sl, #0xd]
00787c08  14 00 9d e5                                      ldr r0, [sp, #0x14]
00787c0c  09 10 a0 e1                                      mov r1, sb
00787c10  44 30 cd e5                                      strb r3, [sp, #0x44]
00787c14  38 30 8d e5                                      str r3, [sp, #0x38]
00787c18  3c 30 8d e5                                      str r3, [sp, #0x3c]
00787c1c  40 30 8d e5                                      str r3, [sp, #0x40]
00787c20  1d f8 ff eb                                      bl #0x785c9c
00787c24  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00787c28  38 30 9d e5                                      ldr r3, [sp, #0x38]
00787c2c  10 10 8a e2                                      add r1, sl, #0x10
00787c30  01 00 40 e2                                      sub r0, r0, #1
00787c34  00 02 83 e0                                      add r0, r3, r0, lsl #4
00787c38  27 f7 ff eb                                      bl #0x7858dc
00787c3c  18 10 9d e5                                      ldr r1, [sp, #0x18]
00787c40  10 60 8d e5                                      str r6, [sp, #0x10]
00787c44  08 30 91 e5                                      ldr r3, [r1, #8]
00787c48  06 00 53 e1                                      cmp r3, r6
00787c4c  28 00 00 da                                      ble #0x787cf4
00787c50  09 20 a0 e1                                      mov r2, sb
00787c54  06 a0 a0 e1                                      mov sl, r6
00787c58  86 92 a0 e1                                      lsl sb, r6, #5
00787c5c  06 b0 a0 e1                                      mov fp, r6
00787c60  02 00 00 ea                                      b #0x787c70
00787c64  08 30 94 e5                                      ldr r3, [r4, #8]
00787c68  03 00 5a e1                                      cmp sl, r3
00787c6c  1f 00 00 aa                                      bge #0x787cf0
00787c70  04 60 95 e5                                      ldr r6, [r5, #4]
00787c74  01 a0 8a e2                                      add sl, sl, #1
00787c78  09 60 86 e0                                      add r6, r6, sb
00787c7c  0d 30 d6 e5                                      ldrb r3, [r6, #0xd]
00787c80  20 90 89 e2                                      add sb, sb, #0x20
00787c84  00 00 53 e3                                      cmp r3, #0
00787c88  f5 ff ff 1a                                      bne #0x787c64
00787c8c  04 30 96 e5                                      ldr r3, [r6, #4]
00787c90  07 00 53 e1                                      cmp r3, r7
00787c94  f2 ff ff 1a                                      bne #0x787c64
00787c98  0c 30 d6 e5                                      ldrb r3, [r6, #0xc]
00787c9c  00 00 53 e3                                      cmp r3, #0
00787ca0  ef ff ff 0a                                      beq #0x787c64
00787ca4  14 30 96 e5                                      ldr r3, [r6, #0x14]
00787ca8  14 00 9d e5                                      ldr r0, [sp, #0x14]
00787cac  00 00 53 e3                                      cmp r3, #0
00787cb0  eb ff ff da                                      ble #0x787c64
00787cb4  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
00787cb8  0c 20 8d e5                                      str r2, [sp, #0xc]
00787cbc  01 10 81 e2                                      add r1, r1, #1
00787cc0  f5 f7 ff eb                                      bl #0x785c9c
00787cc4  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00787cc8  38 30 9d e5                                      ldr r3, [sp, #0x38]
00787ccc  10 10 86 e2                                      add r1, r6, #0x10
00787cd0  01 00 40 e2                                      sub r0, r0, #1
00787cd4  00 02 83 e0                                      add r0, r3, r0, lsl #4
00787cd8  ff f6 ff eb                                      bl #0x7858dc
00787cdc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00787ce0  0d 20 c6 e5                                      strb r2, [r6, #0xd]
00787ce4  08 30 94 e5                                      ldr r3, [r4, #8]
00787ce8  03 00 5a e1                                      cmp sl, r3
00787cec  df ff ff ba                                      blt #0x787c70
00787cf0  0b 60 a0 e1                                      mov r6, fp
00787cf4  28 a0 8d e2                                      add sl, sp, #0x28
00787cf8  00 c0 a0 e3                                      mov ip, #0
00787cfc  38 20 9d e5                                      ldr r2, [sp, #0x38]
00787d00  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
00787d04  0a 00 a0 e1                                      mov r0, sl
00787d08  00 30 e0 e3                                      mvn r3, #0
00787d0c  00 c0 8d e5                                      str ip, [sp]
00787d10  28 c0 8d e5                                      str ip, [sp, #0x28]
00787d14  2c c0 8d e5                                      str ip, [sp, #0x2c]
00787d18  30 c0 8d e5                                      str ip, [sp, #0x30]
00787d1c  34 c0 cd e5                                      strb ip, [sp, #0x34]
00787d20  21 b5 00 eb                                      bl #0x7b51ac
00787d24  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00787d28  00 00 52 e3                                      cmp r2, #0
00787d2c  3f 00 00 da                                      ble #0x787e30
00787d30  ab 3a 0a e3                                      movw r3, #0xaaab
00787d34  aa 3a 42 e3                                      movt r3, #0x2aaa
00787d38  93 02 c1 e0                                      smull r0, r1, r3, r2
00787d3c  20 00 9d e5                                      ldr r0, [sp, #0x20]
00787d40  c2 2f 41 e0                                      sub r2, r1, r2, asr #31
00787d44  07 10 a0 e1                                      mov r1, r7
00787d48  00 30 90 e5                                      ldr r3, [r0]
00787d4c  03 00 a0 e1                                      mov r0, r3
00787d50  00 30 93 e5                                      ldr r3, [r3]
00787d54  0f e0 a0 e1                                      mov lr, pc
00787d58  08 f0 93 e5                                      ldr pc, [r3, #8]
00787d5c  20 10 9d e5                                      ldr r1, [sp, #0x20]
00787d60  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00787d64  00 30 91 e5                                      ldr r3, [r1]
00787d68  a2 2f 82 e0                                      add r2, r2, r2, lsr #31
00787d6c  28 10 9d e5                                      ldr r1, [sp, #0x28]
00787d70  03 00 a0 e1                                      mov r0, r3
00787d74  c2 20 a0 e1                                      asr r2, r2, #1
00787d78  00 30 93 e5                                      ldr r3, [r3]
00787d7c  0f e0 a0 e1                                      mov lr, pc
00787d80  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00787d84  20 20 9d e5                                      ldr r2, [sp, #0x20]
00787d88  00 30 92 e5                                      ldr r3, [r2]
00787d8c  03 00 a0 e1                                      mov r0, r3
00787d90  00 30 93 e5                                      ldr r3, [r3]
00787d94  0f e0 a0 e1                                      mov lr, pc
00787d98  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00787d9c  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00787da0  00 00 52 e3                                      cmp r2, #0
00787da4  21 00 00 da                                      ble #0x787e30
00787da8  00 70 a0 e3                                      mov r7, #0
00787dac  0a 00 a0 e1                                      mov r0, sl
00787db0  07 10 a0 e1                                      mov r1, r7
00787db4  2c 70 8d e5                                      str r7, [sp, #0x2c]
00787db8  0c c8 ff eb                                      bl #0x779df0
00787dbc  14 00 9d e5                                      ldr r0, [sp, #0x14]
00787dc0  07 10 a0 e1                                      mov r1, r7
00787dc4  b4 f7 ff eb                                      bl #0x785c9c
00787dc8  14 00 9d e5                                      ldr r0, [sp, #0x14]
00787dcc  07 10 a0 e1                                      mov r1, r7
00787dd0  a2 f6 ff eb                                      bl #0x785860
00787dd4  00 00 00 ea                                      b #0x787ddc
00787dd8  10 60 8d e5                                      str r6, [sp, #0x10]
00787ddc  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00787de0  10 10 9d e5                                      ldr r1, [sp, #0x10]
00787de4  20 80 88 e2                                      add r8, r8, #0x20
00787de8  00 30 8f e0                                      add r3, pc, r0
00787dec  08 30 93 e5                                      ldr r3, [r3, #8]
00787df0  01 60 86 e2                                      add r6, r6, #1
00787df4  01 00 53 e1                                      cmp r3, r1
00787df8  6f ff ff ca                                      bgt #0x787bbc
00787dfc  78 40 9f e5                                      ldr r4, [pc, #0x78]
00787e00  04 40 8f e0                                      add r4, pc, r4
00787e04  00 30 94 e5                                      ldr r3, [r4]
00787e08  03 00 a0 e1                                      mov r0, r3
00787e0c  00 30 93 e5                                      ldr r3, [r3]
00787e10  0f e0 a0 e1                                      mov lr, pc
00787e14  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00787e18  04 00 a0 e1                                      mov r0, r4
00787e1c  00 10 a0 e3                                      mov r1, #0
00787e20  04 10 80 e4                                      str r1, [r0], #4
00787e24  43 fe ff eb                                      bl #0x787738
00787e28  4c d0 8d e2                                      add sp, sp, #0x4c
00787e2c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00787e30  00 00 52 e3                                      cmp r2, #0
00787e34  db ff ff aa                                      bge #0x787da8
00787e38  00 00 a0 e3                                      mov r0, #0
00787e3c  02 31 a0 e1                                      lsl r3, r2, #2
00787e40  28 10 9d e5                                      ldr r1, [sp, #0x28]
00787e44  01 20 92 e2                                      adds r2, r2, #1
00787e48  03 00 81 e7                                      str r0, [r1, r3]
00787e4c  04 30 83 e2                                      add r3, r3, #4
00787e50  fa ff ff 1a                                      bne #0x787e40
00787e54  d3 ff ff ea                                      b #0x787da8
; mapping-symbol data/literal pool
00787e58  70 50 27 00 54 50 27 00 8c 4f 27 00 74 4f 27 00  .byte 0x70, 0x50, 0x27, 0x00, 0x54, 0x50, 0x27, 0x00, 0x8c, 0x4f, 0x27, 0x00, 0x74, 0x4f, 0x27, 0x00
00787e68  3c 4e 27 00 e8 4b 27 00 20 4e 27 00 28 4e 27 00  .byte 0x3c, 0x4e, 0x27, 0x00, 0xe8, 0x4b, 0x27, 0x00, 0x20, 0x4e, 0x27, 0x00, 0x28, 0x4e, 0x27, 0x00
00787e78  1c 4e 27 00 d0 4b 27 00                          .byte 0x1c, 0x4e, 0x27, 0x00, 0xd0, 0x4b, 0x27, 0x00
