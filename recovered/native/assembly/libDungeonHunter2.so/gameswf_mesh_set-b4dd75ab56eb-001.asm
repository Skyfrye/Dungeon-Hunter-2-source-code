; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0077956c, declared_size=32, range_size=32, mode=arm
; class-group: gameswf::mesh_set
; alias: _ZN7gameswf8mesh_setC2Ev
; demangled: gameswf::mesh_set::mesh_set()
; decoder-mode: arm
0077956c  00 20 a0 e3                                      mov r2, #0
00779570  00 10 a0 e3                                      mov r1, #0
00779574  10 20 c0 e5                                      strb r2, [r0, #0x10]
00779578  00 10 80 e5                                      str r1, [r0]
0077957c  04 20 80 e5                                      str r2, [r0, #4]
00779580  08 20 80 e5                                      str r2, [r0, #8]
00779584  0c 20 80 e5                                      str r2, [r0, #0xc]
00779588  1e ff 2f e1                                      bx lr

; FUNCTION 0x0077958c, declared_size=32, range_size=32, mode=arm
; class-group: gameswf::mesh_set
; alias: _ZN7gameswf8mesh_setC1Ev
; demangled: gameswf::mesh_set::mesh_set()
; decoder-mode: arm
0077958c  00 20 a0 e3                                      mov r2, #0
00779590  00 10 a0 e3                                      mov r1, #0
00779594  10 20 c0 e5                                      strb r2, [r0, #0x10]
00779598  00 10 80 e5                                      str r1, [r0]
0077959c  04 20 80 e5                                      str r2, [r0, #4]
007795a0  08 20 80 e5                                      str r2, [r0, #8]
007795a4  0c 20 80 e5                                      str r2, [r0, #0xc]
007795a8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007795ac, declared_size=284, range_size=284, mode=arm
; class-group: gameswf::mesh_set
; alias: _ZNK7gameswf8mesh_set7displayERKNS_6matrixERKNS_6cxformERKNS_5arrayINS_10fill_styleEEERKNS7_INS_10line_styleEEE
; demangled: gameswf::mesh_set::display(gameswf::matrix const&, gameswf::cxform const&, gameswf::array<gameswf::fill_style> const&, gameswf::array<gameswf::line_style> const&) const
; decoder-mode: arm
007795ac  0c c1 9f e5                                      ldr ip, [pc, #0x10c]
007795b0  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
007795b4  00 b0 a0 e1                                      mov fp, r0
007795b8  04 01 9f e5                                      ldr r0, [pc, #0x104]
007795bc  0c c0 8f e0                                      add ip, pc, ip
007795c0  03 a0 a0 e1                                      mov sl, r3
007795c4  00 40 9c e7                                      ldr r4, [ip, r0]
007795c8  02 50 a0 e1                                      mov r5, r2
007795cc  28 80 9d e5                                      ldr r8, [sp, #0x28]
007795d0  00 30 94 e5                                      ldr r3, [r4]
007795d4  00 00 53 e3                                      cmp r3, #0
007795d8  0b 00 00 0a                                      beq #0x77960c
007795dc  03 00 a0 e1                                      mov r0, r3
007795e0  00 30 93 e5                                      ldr r3, [r3]
007795e4  0f e0 a0 e1                                      mov lr, pc
007795e8  50 f0 93 e5                                      ldr pc, [r3, #0x50]
007795ec  00 30 94 e5                                      ldr r3, [r4]
007795f0  00 00 53 e3                                      cmp r3, #0
007795f4  04 00 00 0a                                      beq #0x77960c
007795f8  03 00 a0 e1                                      mov r0, r3
007795fc  05 10 a0 e1                                      mov r1, r5
00779600  00 30 93 e5                                      ldr r3, [r3]
00779604  0f e0 a0 e1                                      mov lr, pc
00779608  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0077960c  08 30 9b e5                                      ldr r3, [fp, #8]
00779610  00 00 53 e3                                      cmp r3, #0
00779614  28 00 00 da                                      ble #0x7796bc
00779618  00 90 a0 e3                                      mov sb, #0
0077961c  6c 70 a0 e3                                      mov r7, #0x6c
00779620  04 50 9b e5                                      ldr r5, [fp, #4]
00779624  89 52 85 e0                                      add r5, r5, sb, lsl #5
00779628  04 30 95 e5                                      ldr r3, [r5, #4]
0077962c  00 00 53 e3                                      cmp r3, #0
00779630  0e 00 00 da                                      ble #0x779670
00779634  00 60 a0 e3                                      mov r6, #0
00779638  06 40 a0 e1                                      mov r4, r6
0077963c  00 10 95 e5                                      ldr r1, [r5]
00779640  fe 25 a0 e3                                      mov r2, #0x3f800000
00779644  04 01 91 e7                                      ldr r0, [r1, r4, lsl #2]
00779648  01 40 84 e2                                      add r4, r4, #1
0077964c  00 00 50 e3                                      cmp r0, #0
00779650  03 00 00 0a                                      beq #0x779664
00779654  00 10 9a e5                                      ldr r1, [sl]
00779658  06 10 81 e0                                      add r1, r1, r6
0077965c  65 ff ff eb                                      bl #0x7793f8
00779660  04 30 95 e5                                      ldr r3, [r5, #4]
00779664  03 00 54 e1                                      cmp r4, r3
00779668  54 60 86 e2                                      add r6, r6, #0x54
0077966c  f2 ff ff ba                                      blt #0x77963c
00779670  14 30 95 e5                                      ldr r3, [r5, #0x14]
00779674  00 00 53 e3                                      cmp r3, #0
00779678  0b 00 00 da                                      ble #0x7796ac
0077967c  00 40 a0 e3                                      mov r4, #0
00779680  10 10 95 e5                                      ldr r1, [r5, #0x10]
00779684  00 30 98 e5                                      ldr r3, [r8]
00779688  fe 25 a0 e3                                      mov r2, #0x3f800000
0077968c  04 01 91 e7                                      ldr r0, [r1, r4, lsl #2]
00779690  01 40 84 e2                                      add r4, r4, #1
00779694  00 10 90 e5                                      ldr r1, [r0]
00779698  97 31 21 e0                                      mla r1, r7, r1, r3
0077969c  99 ff ff eb                                      bl #0x779508
007796a0  14 30 95 e5                                      ldr r3, [r5, #0x14]
007796a4  03 00 54 e1                                      cmp r4, r3
007796a8  f4 ff ff ba                                      blt #0x779680
007796ac  08 30 9b e5                                      ldr r3, [fp, #8]
007796b0  01 90 89 e2                                      add sb, sb, #1
007796b4  03 00 59 e1                                      cmp sb, r3
007796b8  d8 ff ff ba                                      blt #0x779620
007796bc  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
007796c0  d4 b4 21 00 b4 39 00 00                          .byte 0xd4, 0xb4, 0x21, 0x00, 0xb4, 0x39, 0x00, 0x00

; FUNCTION 0x007796c8, declared_size=284, range_size=284, mode=arm
; class-group: gameswf::mesh_set
; alias: _ZNK7gameswf8mesh_set7displayERKNS_6matrixERKNS_6cxformERKNS_5arrayINS_16morph_fill_styleEEERKNS7_INS_16morph_line_styleEEEf
; demangled: gameswf::mesh_set::display(gameswf::matrix const&, gameswf::cxform const&, gameswf::array<gameswf::morph_fill_style> const&, gameswf::array<gameswf::morph_line_style> const&, float) const
; decoder-mode: arm
007796c8  0c c1 9f e5                                      ldr ip, [pc, #0x10c]
007796cc  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
007796d0  00 b0 a0 e1                                      mov fp, r0
007796d4  04 01 9f e5                                      ldr r0, [pc, #0x104]
007796d8  0c c0 8f e0                                      add ip, pc, ip
007796dc  03 a0 a0 e1                                      mov sl, r3
007796e0  00 40 9c e7                                      ldr r4, [ip, r0]
007796e4  02 50 a0 e1                                      mov r5, r2
007796e8  28 80 9d e5                                      ldr r8, [sp, #0x28]
007796ec  00 30 94 e5                                      ldr r3, [r4]
007796f0  2c 70 9d e5                                      ldr r7, [sp, #0x2c]
007796f4  00 00 53 e3                                      cmp r3, #0
007796f8  0b 00 00 0a                                      beq #0x77972c
007796fc  03 00 a0 e1                                      mov r0, r3
00779700  00 30 93 e5                                      ldr r3, [r3]
00779704  0f e0 a0 e1                                      mov lr, pc
00779708  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0077970c  00 30 94 e5                                      ldr r3, [r4]
00779710  00 00 53 e3                                      cmp r3, #0
00779714  04 00 00 0a                                      beq #0x77972c
00779718  03 00 a0 e1                                      mov r0, r3
0077971c  05 10 a0 e1                                      mov r1, r5
00779720  00 30 93 e5                                      ldr r3, [r3]
00779724  0f e0 a0 e1                                      mov lr, pc
00779728  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0077972c  08 30 9b e5                                      ldr r3, [fp, #8]
00779730  00 00 53 e3                                      cmp r3, #0
00779734  27 00 00 da                                      ble #0x7797d8
00779738  00 90 a0 e3                                      mov sb, #0
0077973c  04 50 9b e5                                      ldr r5, [fp, #4]
00779740  89 52 85 e0                                      add r5, r5, sb, lsl #5
00779744  04 30 95 e5                                      ldr r3, [r5, #4]
00779748  00 00 53 e3                                      cmp r3, #0
0077974c  0e 00 00 da                                      ble #0x77978c
00779750  00 60 a0 e3                                      mov r6, #0
00779754  06 40 a0 e1                                      mov r4, r6
00779758  00 10 95 e5                                      ldr r1, [r5]
0077975c  07 20 a0 e1                                      mov r2, r7
00779760  04 01 91 e7                                      ldr r0, [r1, r4, lsl #2]
00779764  01 40 84 e2                                      add r4, r4, #1
00779768  00 00 50 e3                                      cmp r0, #0
0077976c  03 00 00 0a                                      beq #0x779780
00779770  00 10 9a e5                                      ldr r1, [sl]
00779774  06 10 81 e0                                      add r1, r1, r6
00779778  1e ff ff eb                                      bl #0x7793f8
0077977c  04 30 95 e5                                      ldr r3, [r5, #4]
00779780  03 00 54 e1                                      cmp r4, r3
00779784  9c 60 86 e2                                      add r6, r6, #0x9c
00779788  f2 ff ff ba                                      blt #0x779758
0077978c  14 30 95 e5                                      ldr r3, [r5, #0x14]
00779790  00 00 53 e3                                      cmp r3, #0
00779794  0b 00 00 da                                      ble #0x7797c8
00779798  00 40 a0 e3                                      mov r4, #0
0077979c  10 10 95 e5                                      ldr r1, [r5, #0x10]
007797a0  00 30 98 e5                                      ldr r3, [r8]
007797a4  07 20 a0 e1                                      mov r2, r7
007797a8  04 01 91 e7                                      ldr r0, [r1, r4, lsl #2]
007797ac  01 40 84 e2                                      add r4, r4, #1
007797b0  00 10 90 e5                                      ldr r1, [r0]
007797b4  01 12 83 e0                                      add r1, r3, r1, lsl #4
007797b8  52 ff ff eb                                      bl #0x779508
007797bc  14 30 95 e5                                      ldr r3, [r5, #0x14]
007797c0  03 00 54 e1                                      cmp r4, r3
007797c4  f4 ff ff ba                                      blt #0x77979c
007797c8  08 30 9b e5                                      ldr r3, [fp, #8]
007797cc  01 90 89 e2                                      add sb, sb, #1
007797d0  03 00 59 e1                                      cmp sb, r3
007797d4  d8 ff ff ba                                      blt #0x77973c
007797d8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
007797dc  b8 b3 21 00 b4 39 00 00                          .byte 0xb8, 0xb3, 0x21, 0x00, 0xb4, 0x39, 0x00, 0x00

; FUNCTION 0x00779ef8, declared_size=176, range_size=176, mode=arm
; class-group: gameswf::mesh_set
; alias: _ZN7gameswf8mesh_set24expand_styles_to_includeEi
; demangled: gameswf::mesh_set::expand_styles_to_include(int)
; decoder-mode: arm
00779ef8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00779efc  00 05 90 e9                                      ldmib r0, {r8, sl}
00779f00  01 70 a0 e1                                      mov r7, r1
00779f04  01 a0 4a e2                                      sub sl, sl, #1
00779f08  8a 52 88 e0                                      add r5, r8, sl, lsl #5
00779f0c  04 40 95 e5                                      ldr r4, [r5, #4]
00779f10  04 00 51 e1                                      cmp r1, r4
00779f14  04 00 00 aa                                      bge #0x779f2c
00779f18  8a 32 98 e7                                      ldr r3, [r8, sl, lsl #5]
00779f1c  07 11 93 e7                                      ldr r1, [r3, r7, lsl #2]
00779f20  00 00 51 e3                                      cmp r1, #0
00779f24  11 00 00 0a                                      beq #0x779f70
00779f28  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00779f2c  01 60 91 e2                                      adds r6, r1, #1
00779f30  15 00 00 1a                                      bne #0x779f8c
00779f34  04 00 56 e1                                      cmp r6, r4
00779f38  07 00 00 da                                      ble #0x779f5c
00779f3c  04 31 a0 e1                                      lsl r3, r4, #2
00779f40  00 10 a0 e3                                      mov r1, #0
00779f44  00 20 95 e5                                      ldr r2, [r5]
00779f48  01 40 84 e2                                      add r4, r4, #1
00779f4c  04 00 56 e1                                      cmp r6, r4
00779f50  03 10 82 e7                                      str r1, [r2, r3]
00779f54  04 30 83 e2                                      add r3, r3, #4
00779f58  f9 ff ff ca                                      bgt #0x779f44
00779f5c  04 60 85 e5                                      str r6, [r5, #4]
00779f60  8a 32 98 e7                                      ldr r3, [r8, sl, lsl #5]
00779f64  07 11 93 e7                                      ldr r1, [r3, r7, lsl #2]
00779f68  00 00 51 e3                                      cmp r1, #0
00779f6c  ed ff ff 1a                                      bne #0x779f28
00779f70  30 00 a0 e3                                      mov r0, #0x30
00779f74  0b 63 ff eb                                      bl #0x752ba8
00779f78  00 40 a0 e1                                      mov r4, r0
00779f7c  0f fd ff eb                                      bl #0x7793c0
00779f80  8a 32 98 e7                                      ldr r3, [r8, sl, lsl #5]
00779f84  07 41 83 e7                                      str r4, [r3, r7, lsl #2]
00779f88  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00779f8c  08 30 95 e5                                      ldr r3, [r5, #8]
00779f90  03 00 56 e1                                      cmp r6, r3
00779f94  e6 ff ff da                                      ble #0x779f34
00779f98  05 00 a0 e1                                      mov r0, r5
00779f9c  c6 10 86 e0                                      add r1, r6, r6, asr #1
00779fa0  54 ff ff eb                                      bl #0x779cf8
00779fa4  e2 ff ff ea                                      b #0x779f34

; FUNCTION 0x00779fa8, declared_size=40, range_size=40, mode=arm
; class-group: gameswf::mesh_set
; alias: _ZN7gameswf8mesh_set16get_mutable_meshEi
; demangled: gameswf::mesh_set::get_mutable_mesh(int)
; decoder-mode: arm
00779fa8  70 40 2d e9                                      push {r4, r5, r6, lr}
00779fac  00 40 a0 e1                                      mov r4, r0
00779fb0  01 50 a0 e1                                      mov r5, r1
00779fb4  cf ff ff eb                                      bl #0x779ef8
00779fb8  08 20 94 e5                                      ldr r2, [r4, #8]
00779fbc  04 30 94 e5                                      ldr r3, [r4, #4]
00779fc0  01 20 42 e2                                      sub r2, r2, #1
00779fc4  82 32 93 e7                                      ldr r3, [r3, r2, lsl #5]
00779fc8  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
00779fcc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0077a95c, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::mesh_set
; alias: _ZN7gameswf8mesh_setC1EPKNS_9tesselate17tesselating_shapeEf
; demangled: gameswf::mesh_set::mesh_set(gameswf::tesselate::tesselating_shape const*, float)
; decoder-mode: arm
0077a95c  00 30 a0 e3                                      mov r3, #0
0077a960  00 00 51 e3                                      cmp r1, #0
0077a964  10 40 2d e9                                      push {r4, lr}
0077a968  20 10 41 12                                      subne r1, r1, #0x20
0077a96c  00 40 a0 e1                                      mov r4, r0
0077a970  10 30 c0 e5                                      strb r3, [r0, #0x10]
0077a974  00 20 80 e5                                      str r2, [r0]
0077a978  04 30 80 e5                                      str r3, [r0, #4]
0077a97c  08 30 80 e5                                      str r3, [r0, #8]
0077a980  0c 30 80 e5                                      str r3, [r0, #0xc]
0077a984  03 3d 00 eb                                      bl #0x789d98
0077a988  04 00 a0 e1                                      mov r0, r4
0077a98c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0077abcc, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::mesh_set
; alias: _ZN7gameswf8mesh_setC2EPKNS_9tesselate17tesselating_shapeEf
; demangled: gameswf::mesh_set::mesh_set(gameswf::tesselate::tesselating_shape const*, float)
; decoder-mode: arm
0077abcc  00 30 a0 e3                                      mov r3, #0
0077abd0  00 00 51 e3                                      cmp r1, #0
0077abd4  10 40 2d e9                                      push {r4, lr}
0077abd8  20 10 41 12                                      subne r1, r1, #0x20
0077abdc  00 40 a0 e1                                      mov r4, r0
0077abe0  10 30 c0 e5                                      strb r3, [r0, #0x10]
0077abe4  00 20 80 e5                                      str r2, [r0]
0077abe8  04 30 80 e5                                      str r3, [r0, #4]
0077abec  08 30 80 e5                                      str r3, [r0, #8]
0077abf0  0c 30 80 e5                                      str r3, [r0, #0xc]
0077abf4  67 3c 00 eb                                      bl #0x789d98
0077abf8  04 00 a0 e1                                      mov r0, r4
0077abfc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0077b694, declared_size=348, range_size=348, mode=arm
; class-group: gameswf::mesh_set
; alias: _ZN7gameswf8mesh_set18output_cached_dataEPNS_7tu_fileE
; demangled: gameswf::mesh_set::output_cached_data(gameswf::tu_file*)
; decoder-mode: arm
0077b694  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0077b698  00 30 90 e5                                      ldr r3, [r0]
0077b69c  14 d0 4d e2                                      sub sp, sp, #0x14
0077b6a0  10 70 8d e2                                      add r7, sp, #0x10
0077b6a4  01 50 a0 e1                                      mov r5, r1
0077b6a8  04 30 27 e5                                      str r3, [r7, #-4]!
0077b6ac  00 b0 a0 e1                                      mov fp, r0
0077b6b0  04 10 a0 e3                                      mov r1, #4
0077b6b4  00 20 95 e5                                      ldr r2, [r5]
0077b6b8  07 00 a0 e1                                      mov r0, r7
0077b6bc  0f e0 a0 e1                                      mov lr, pc
0077b6c0  0c f0 95 e5                                      ldr pc, [r5, #0xc]
0077b6c4  08 30 9b e5                                      ldr r3, [fp, #8]
0077b6c8  07 00 a0 e1                                      mov r0, r7
0077b6cc  04 10 a0 e3                                      mov r1, #4
0077b6d0  04 30 8d e5                                      str r3, [sp, #4]
0077b6d4  0c 30 8d e5                                      str r3, [sp, #0xc]
0077b6d8  00 20 95 e5                                      ldr r2, [r5]
0077b6dc  0f e0 a0 e1                                      mov lr, pc
0077b6e0  0c f0 95 e5                                      ldr pc, [r5, #0xc]
0077b6e4  04 30 9d e5                                      ldr r3, [sp, #4]
0077b6e8  00 00 53 e3                                      cmp r3, #0
0077b6ec  3d 00 00 da                                      ble #0x77b7e8
0077b6f0  00 90 a0 e3                                      mov sb, #0
0077b6f4  01 a0 a0 e3                                      mov sl, #1
0077b6f8  04 60 9b e5                                      ldr r6, [fp, #4]
0077b6fc  00 20 95 e5                                      ldr r2, [r5]
0077b700  07 00 a0 e1                                      mov r0, r7
0077b704  89 62 86 e0                                      add r6, r6, sb, lsl #5
0077b708  04 80 96 e5                                      ldr r8, [r6, #4]
0077b70c  04 10 a0 e3                                      mov r1, #4
0077b710  0c 80 8d e5                                      str r8, [sp, #0xc]
0077b714  0f e0 a0 e1                                      mov lr, pc
0077b718  0c f0 95 e5                                      ldr pc, [r5, #0xc]
0077b71c  00 00 58 e3                                      cmp r8, #0
0077b720  1b 00 00 da                                      ble #0x77b794
0077b724  00 40 a0 e3                                      mov r4, #0
0077b728  0a 00 00 ea                                      b #0x77b758
0077b72c  0c a0 cd e5                                      strb sl, [sp, #0xc]
0077b730  00 20 95 e5                                      ldr r2, [r5]
0077b734  0f e0 a0 e1                                      mov lr, pc
0077b738  0c f0 95 e5                                      ldr pc, [r5, #0xc]
0077b73c  00 30 96 e5                                      ldr r3, [r6]
0077b740  05 10 a0 e1                                      mov r1, r5
0077b744  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
0077b748  01 40 84 e2                                      add r4, r4, #1
0077b74c  b6 ff ff eb                                      bl #0x77b62c
0077b750  08 00 54 e1                                      cmp r4, r8
0077b754  0e 00 00 0a                                      beq #0x77b794
0077b758  00 30 96 e5                                      ldr r3, [r6]
0077b75c  07 00 a0 e1                                      mov r0, r7
0077b760  01 10 a0 e3                                      mov r1, #1
0077b764  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
0077b768  00 00 53 e3                                      cmp r3, #0
0077b76c  ee ff ff 1a                                      bne #0x77b72c
0077b770  0c 30 cd e5                                      strb r3, [sp, #0xc]
0077b774  07 00 a0 e1                                      mov r0, r7
0077b778  01 10 a0 e3                                      mov r1, #1
0077b77c  00 20 95 e5                                      ldr r2, [r5]
0077b780  01 40 84 e2                                      add r4, r4, #1
0077b784  0f e0 a0 e1                                      mov lr, pc
0077b788  0c f0 95 e5                                      ldr pc, [r5, #0xc]
0077b78c  08 00 54 e1                                      cmp r4, r8
0077b790  f0 ff ff 1a                                      bne #0x77b758
0077b794  14 40 96 e5                                      ldr r4, [r6, #0x14]
0077b798  07 00 a0 e1                                      mov r0, r7
0077b79c  04 10 a0 e3                                      mov r1, #4
0077b7a0  0c 40 8d e5                                      str r4, [sp, #0xc]
0077b7a4  00 20 95 e5                                      ldr r2, [r5]
0077b7a8  0f e0 a0 e1                                      mov lr, pc
0077b7ac  0c f0 95 e5                                      ldr pc, [r5, #0xc]
0077b7b0  00 00 54 e3                                      cmp r4, #0
0077b7b4  07 00 00 da                                      ble #0x77b7d8
0077b7b8  00 80 a0 e3                                      mov r8, #0
0077b7bc  10 30 96 e5                                      ldr r3, [r6, #0x10]
0077b7c0  05 10 a0 e1                                      mov r1, r5
0077b7c4  08 01 93 e7                                      ldr r0, [r3, r8, lsl #2]
0077b7c8  01 80 88 e2                                      add r8, r8, #1
0077b7cc  a0 ff ff eb                                      bl #0x77b654
0077b7d0  04 00 58 e1                                      cmp r8, r4
0077b7d4  f8 ff ff 1a                                      bne #0x77b7bc
0077b7d8  04 30 9d e5                                      ldr r3, [sp, #4]
0077b7dc  01 90 89 e2                                      add sb, sb, #1
0077b7e0  03 00 59 e1                                      cmp sb, r3
0077b7e4  c3 ff ff 1a                                      bne #0x77b6f8
0077b7e8  14 d0 8d e2                                      add sp, sp, #0x14
0077b7ec  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0077babc, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::mesh_set
; alias: _ZN7gameswf8mesh_set13set_tri_stripEiPKNS_5pointEi
; demangled: gameswf::mesh_set::set_tri_strip(int, gameswf::point const*, int)
; decoder-mode: arm
0077babc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0077bac0  00 40 a0 e1                                      mov r4, r0
0077bac4  02 60 a0 e1                                      mov r6, r2
0077bac8  03 70 a0 e1                                      mov r7, r3
0077bacc  01 50 a0 e1                                      mov r5, r1
0077bad0  08 f9 ff eb                                      bl #0x779ef8
0077bad4  08 20 94 e5                                      ldr r2, [r4, #8]
0077bad8  04 30 94 e5                                      ldr r3, [r4, #4]
0077badc  06 10 a0 e1                                      mov r1, r6
0077bae0  01 20 42 e2                                      sub r2, r2, #1
0077bae4  82 02 93 e7                                      ldr r0, [r3, r2, lsl #5]
0077bae8  07 20 a0 e1                                      mov r2, r7
0077baec  05 01 90 e7                                      ldr r0, [r0, r5, lsl #2]
0077baf0  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0077baf4  c4 ff ff ea                                      b #0x77ba0c

; FUNCTION 0x0077bccc, declared_size=116, range_size=116, mode=arm
; class-group: gameswf::mesh_set
; alias: _ZN7gameswf8mesh_set14add_line_stripEiPKNS_5pointEi
; demangled: gameswf::mesh_set::add_line_strip(int, gameswf::point const*, int)
; decoder-mode: arm
0077bccc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0077bcd0  08 40 90 e5                                      ldr r4, [r0, #8]
0077bcd4  04 c0 90 e5                                      ldr ip, [r0, #4]
0077bcd8  01 60 a0 e1                                      mov r6, r1
0077bcdc  01 40 44 e2                                      sub r4, r4, #1
0077bce0  00 10 a0 e3                                      mov r1, #0
0077bce4  14 00 a0 e3                                      mov r0, #0x14
0077bce8  84 42 8c e0                                      add r4, ip, r4, lsl #5
0077bcec  02 80 a0 e1                                      mov r8, r2
0077bcf0  03 70 a0 e1                                      mov r7, r3
0077bcf4  ab 5b ff eb                                      bl #0x752ba8
0077bcf8  06 10 a0 e1                                      mov r1, r6
0077bcfc  08 20 a0 e1                                      mov r2, r8
0077bd00  07 30 a0 e1                                      mov r3, r7
0077bd04  00 50 a0 e1                                      mov r5, r0
0077bd08  bf ff ff eb                                      bl #0x77bc0c
0077bd0c  14 30 94 e5                                      ldr r3, [r4, #0x14]
0077bd10  18 20 94 e5                                      ldr r2, [r4, #0x18]
0077bd14  01 60 83 e2                                      add r6, r3, #1
0077bd18  02 00 56 e1                                      cmp r6, r2
0077bd1c  03 00 00 da                                      ble #0x77bd30
0077bd20  10 00 84 e2                                      add r0, r4, #0x10
0077bd24  c6 10 86 e0                                      add r1, r6, r6, asr #1
0077bd28  11 f8 ff eb                                      bl #0x779d74
0077bd2c  14 30 94 e5                                      ldr r3, [r4, #0x14]
0077bd30  10 20 94 e5                                      ldr r2, [r4, #0x10]
0077bd34  03 51 82 e7                                      str r5, [r2, r3, lsl #2]
0077bd38  14 60 84 e5                                      str r6, [r4, #0x14]
0077bd3c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0077c220, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::mesh_set
; alias: _ZN7gameswf8mesh_set9new_layerEv
; demangled: gameswf::mesh_set::new_layer()
; decoder-mode: arm
0077c220  08 10 90 e5                                      ldr r1, [r0, #8]
0077c224  04 00 80 e2                                      add r0, r0, #4
0077c228  01 10 81 e2                                      add r1, r1, #1
0077c22c  ce ff ff ea                                      b #0x77c16c

; FUNCTION 0x0077c230, declared_size=44, range_size=44, mode=arm
; class-group: gameswf::mesh_set
; alias: _ZN7gameswf8mesh_setD2Ev
; demangled: gameswf::mesh_set::~mesh_set()
; decoder-mode: arm
0077c230  70 40 2d e9                                      push {r4, r5, r6, lr}
0077c234  04 50 80 e2                                      add r5, r0, #4
0077c238  00 40 a0 e1                                      mov r4, r0
0077c23c  00 10 a0 e3                                      mov r1, #0
0077c240  05 00 a0 e1                                      mov r0, r5
0077c244  c8 ff ff eb                                      bl #0x77c16c
0077c248  05 00 a0 e1                                      mov r0, r5
0077c24c  00 10 a0 e3                                      mov r1, #0
0077c250  89 f6 ff eb                                      bl #0x779c7c
0077c254  04 00 a0 e1                                      mov r0, r4
0077c258  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0077c25c, declared_size=544, range_size=544, mode=arm
; class-group: gameswf::mesh_set
; alias: _ZN7gameswf8mesh_set17input_cached_dataEPNS_7tu_fileE
; demangled: gameswf::mesh_set::input_cached_data(gameswf::tu_file*)
; decoder-mode: arm
0077c25c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0077c260  14 d0 4d e2                                      sub sp, sp, #0x14
0077c264  01 50 a0 e1                                      mov r5, r1
0077c268  04 00 8d e5                                      str r0, [sp, #4]
0077c26c  0c a0 8d e2                                      add sl, sp, #0xc
0077c270  04 10 a0 e3                                      mov r1, #4
0077c274  00 20 95 e5                                      ldr r2, [r5]
0077c278  0a 00 a0 e1                                      mov r0, sl
0077c27c  0f e0 a0 e1                                      mov lr, pc
0077c280  08 f0 95 e5                                      ldr pc, [r5, #8]
0077c284  04 40 9d e5                                      ldr r4, [sp, #4]
0077c288  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0077c28c  04 10 a0 e3                                      mov r1, #4
0077c290  0a 00 a0 e1                                      mov r0, sl
0077c294  04 30 84 e4                                      str r3, [r4], #4
0077c298  00 20 95 e5                                      ldr r2, [r5]
0077c29c  0f e0 a0 e1                                      mov lr, pc
0077c2a0  08 f0 95 e5                                      ldr pc, [r5, #8]
0077c2a4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0077c2a8  04 00 a0 e1                                      mov r0, r4
0077c2ac  03 10 a0 e1                                      mov r1, r3
0077c2b0  00 30 8d e5                                      str r3, [sp]
0077c2b4  ac ff ff eb                                      bl #0x77c16c
0077c2b8  00 30 9d e5                                      ldr r3, [sp]
0077c2bc  00 00 53 e3                                      cmp r3, #0
0077c2c0  63 00 00 da                                      ble #0x77c454
0077c2c4  00 90 a0 e3                                      mov sb, #0
0077c2c8  09 80 a0 e1                                      mov r8, sb
0077c2cc  04 30 9d e5                                      ldr r3, [sp, #4]
0077c2d0  0a 00 a0 e1                                      mov r0, sl
0077c2d4  04 10 a0 e3                                      mov r1, #4
0077c2d8  00 20 95 e5                                      ldr r2, [r5]
0077c2dc  04 40 93 e5                                      ldr r4, [r3, #4]
0077c2e0  0f e0 a0 e1                                      mov lr, pc
0077c2e4  08 f0 95 e5                                      ldr pc, [r5, #8]
0077c2e8  0c 70 9d e5                                      ldr r7, [sp, #0xc]
0077c2ec  89 42 84 e0                                      add r4, r4, sb, lsl #5
0077c2f0  04 60 94 e5                                      ldr r6, [r4, #4]
0077c2f4  00 00 57 e3                                      cmp r7, #0
0077c2f8  02 00 00 0a                                      beq #0x77c308
0077c2fc  08 30 94 e5                                      ldr r3, [r4, #8]
0077c300  03 00 57 e1                                      cmp r7, r3
0077c304  54 00 00 ca                                      bgt #0x77c45c
0077c308  06 00 57 e1                                      cmp r7, r6
0077c30c  06 00 00 da                                      ble #0x77c32c
0077c310  06 31 a0 e1                                      lsl r3, r6, #2
0077c314  00 20 94 e5                                      ldr r2, [r4]
0077c318  01 60 86 e2                                      add r6, r6, #1
0077c31c  06 00 57 e1                                      cmp r7, r6
0077c320  03 80 82 e7                                      str r8, [r2, r3]
0077c324  04 30 83 e2                                      add r3, r3, #4
0077c328  f9 ff ff 1a                                      bne #0x77c314
0077c32c  00 00 57 e3                                      cmp r7, #0
0077c330  04 70 84 e5                                      str r7, [r4, #4]
0077c334  1a 00 00 da                                      ble #0x77c3a4
0077c338  00 60 a0 e3                                      mov r6, #0
0077c33c  02 00 00 ea                                      b #0x77c34c
0077c340  01 60 86 e2                                      add r6, r6, #1
0077c344  06 00 57 e1                                      cmp r7, r6
0077c348  15 00 00 0a                                      beq #0x77c3a4
0077c34c  00 20 95 e5                                      ldr r2, [r5]
0077c350  01 10 a0 e3                                      mov r1, #1
0077c354  0a 00 a0 e1                                      mov r0, sl
0077c358  0f e0 a0 e1                                      mov lr, pc
0077c35c  08 f0 95 e5                                      ldr pc, [r5, #8]
0077c360  0c 30 dd e5                                      ldrb r3, [sp, #0xc]
0077c364  00 00 53 e3                                      cmp r3, #0
0077c368  f4 ff ff 0a                                      beq #0x77c340
0077c36c  00 10 a0 e3                                      mov r1, #0
0077c370  30 00 a0 e3                                      mov r0, #0x30
0077c374  0b 5a ff eb                                      bl #0x752ba8
0077c378  00 b0 a0 e1                                      mov fp, r0
0077c37c  0f f4 ff eb                                      bl #0x7793c0
0077c380  00 30 94 e5                                      ldr r3, [r4]
0077c384  05 10 a0 e1                                      mov r1, r5
0077c388  06 b1 83 e7                                      str fp, [r3, r6, lsl #2]
0077c38c  00 30 94 e5                                      ldr r3, [r4]
0077c390  06 01 93 e7                                      ldr r0, [r3, r6, lsl #2]
0077c394  01 60 86 e2                                      add r6, r6, #1
0077c398  11 fe ff eb                                      bl #0x77bbe4
0077c39c  06 00 57 e1                                      cmp r7, r6
0077c3a0  e9 ff ff 1a                                      bne #0x77c34c
0077c3a4  0a 00 a0 e1                                      mov r0, sl
0077c3a8  04 10 a0 e3                                      mov r1, #4
0077c3ac  00 20 95 e5                                      ldr r2, [r5]
0077c3b0  0f e0 a0 e1                                      mov lr, pc
0077c3b4  08 f0 95 e5                                      ldr pc, [r5, #8]
0077c3b8  0c 70 9d e5                                      ldr r7, [sp, #0xc]
0077c3bc  10 b0 84 e2                                      add fp, r4, #0x10
0077c3c0  14 60 94 e5                                      ldr r6, [r4, #0x14]
0077c3c4  00 00 57 e3                                      cmp r7, #0
0077c3c8  02 00 00 0a                                      beq #0x77c3d8
0077c3cc  18 30 94 e5                                      ldr r3, [r4, #0x18]
0077c3d0  03 00 57 e1                                      cmp r7, r3
0077c3d4  24 00 00 ca                                      bgt #0x77c46c
0077c3d8  06 00 57 e1                                      cmp r7, r6
0077c3dc  06 00 00 da                                      ble #0x77c3fc
0077c3e0  06 31 a0 e1                                      lsl r3, r6, #2
0077c3e4  00 20 9b e5                                      ldr r2, [fp]
0077c3e8  01 60 86 e2                                      add r6, r6, #1
0077c3ec  06 00 57 e1                                      cmp r7, r6
0077c3f0  03 80 82 e7                                      str r8, [r2, r3]
0077c3f4  04 30 83 e2                                      add r3, r3, #4
0077c3f8  f9 ff ff 1a                                      bne #0x77c3e4
0077c3fc  00 00 57 e3                                      cmp r7, #0
0077c400  14 70 84 e5                                      str r7, [r4, #0x14]
0077c404  0e 00 00 da                                      ble #0x77c444
0077c408  00 60 a0 e3                                      mov r6, #0
0077c40c  00 10 a0 e3                                      mov r1, #0
0077c410  14 00 a0 e3                                      mov r0, #0x14
0077c414  e3 59 ff eb                                      bl #0x752ba8
0077c418  00 b0 a0 e1                                      mov fp, r0
0077c41c  32 f4 ff eb                                      bl #0x7794ec
0077c420  10 30 94 e5                                      ldr r3, [r4, #0x10]
0077c424  05 10 a0 e1                                      mov r1, r5
0077c428  06 b1 83 e7                                      str fp, [r3, r6, lsl #2]
0077c42c  10 30 94 e5                                      ldr r3, [r4, #0x10]
0077c430  06 01 93 e7                                      ldr r0, [r3, r6, lsl #2]
0077c434  01 60 86 e2                                      add r6, r6, #1
0077c438  d9 fd ff eb                                      bl #0x77bba4
0077c43c  06 00 57 e1                                      cmp r7, r6
0077c440  f1 ff ff 1a                                      bne #0x77c40c
0077c444  00 30 9d e5                                      ldr r3, [sp]
0077c448  01 90 89 e2                                      add sb, sb, #1
0077c44c  09 00 53 e1                                      cmp r3, sb
0077c450  9d ff ff 1a                                      bne #0x77c2cc
0077c454  14 d0 8d e2                                      add sp, sp, #0x14
0077c458  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0077c45c  04 00 a0 e1                                      mov r0, r4
0077c460  c7 10 87 e0                                      add r1, r7, r7, asr #1
0077c464  23 f6 ff eb                                      bl #0x779cf8
0077c468  a6 ff ff ea                                      b #0x77c308
0077c46c  0b 00 a0 e1                                      mov r0, fp
0077c470  c7 10 87 e0                                      add r1, r7, r7, asr #1
0077c474  3e f6 ff eb                                      bl #0x779d74
0077c478  d6 ff ff ea                                      b #0x77c3d8

; FUNCTION 0x0077c544, declared_size=44, range_size=44, mode=arm
; class-group: gameswf::mesh_set
; alias: _ZN7gameswf8mesh_setD1Ev
; demangled: gameswf::mesh_set::~mesh_set()
; decoder-mode: arm
0077c544  70 40 2d e9                                      push {r4, r5, r6, lr}
0077c548  04 50 80 e2                                      add r5, r0, #4
0077c54c  00 40 a0 e1                                      mov r4, r0
0077c550  00 10 a0 e3                                      mov r1, #0
0077c554  05 00 a0 e1                                      mov r0, r5
0077c558  03 ff ff eb                                      bl #0x77c16c
0077c55c  05 00 a0 e1                                      mov r0, r5
0077c560  00 10 a0 e3                                      mov r1, #0
0077c564  c4 f5 ff eb                                      bl #0x779c7c
0077c568  04 00 a0 e1                                      mov r0, r4
0077c56c  70 80 bd e8                                      pop {r4, r5, r6, pc}
