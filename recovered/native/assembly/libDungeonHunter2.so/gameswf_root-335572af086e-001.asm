; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00773d48, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root17get_movie_versionEv
; demangled: gameswf::root::get_movie_version()
; decoder-mode: arm
00773d48  10 40 2d e9                                      push {r4, lr}
00773d4c  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00773d50  03 00 a0 e1                                      mov r0, r3
00773d54  00 30 93 e5                                      ldr r3, [r3]
00773d58  0f e0 a0 e1                                      mov lr, pc
00773d5c  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00773d60  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00773d64, declared_size=32, range_size=32, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root15get_movie_widthEv
; demangled: gameswf::root::get_movie_width()
; decoder-mode: arm
00773d64  10 40 2d e9                                      push {r4, lr}
00773d68  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00773d6c  03 00 a0 e1                                      mov r0, r3
00773d70  00 30 93 e5                                      ldr r3, [r3]
00773d74  0f e0 a0 e1                                      mov lr, pc
00773d78  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00773d7c  d2 69 ee eb                                      bl #0x30e4cc
00773d80  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00773d84, declared_size=32, range_size=32, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root16get_movie_heightEv
; demangled: gameswf::root::get_movie_height()
; decoder-mode: arm
00773d84  10 40 2d e9                                      push {r4, lr}
00773d88  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00773d8c  03 00 a0 e1                                      mov r0, r3
00773d90  00 30 93 e5                                      ldr r3, [r3]
00773d94  0f e0 a0 e1                                      mov lr, pc
00773d98  34 f0 93 e5                                      ldr pc, [r3, #0x34]
00773d9c  ca 69 ee eb                                      bl #0x30e4cc
00773da0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00773da4, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root13get_movie_fpsEv
; demangled: gameswf::root::get_movie_fps()
; decoder-mode: arm
00773da4  10 40 2d e9                                      push {r4, lr}
00773da8  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00773dac  03 00 a0 e1                                      mov r0, r3
00773db0  00 30 93 e5                                      ldr r3, [r3]
00773db4  0f e0 a0 e1                                      mov lr, pc
00773db8  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00773dbc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00773dc0, declared_size=400, range_size=400, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root17screen_to_logicalERNS_5pointE
; demangled: gameswf::root::screen_to_logical(gameswf::point&)
; decoder-mode: arm
00773dc0  80 31 9f e5                                      ldr r3, [pc, #0x180]
00773dc4  80 21 9f e5                                      ldr r2, [pc, #0x180]
00773dc8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00773dcc  03 30 8f e0                                      add r3, pc, r3
00773dd0  02 20 93 e7                                      ldr r2, [r3, r2]
00773dd4  00 40 a0 e1                                      mov r4, r0
00773dd8  01 50 a0 e1                                      mov r5, r1
00773ddc  00 30 92 e5                                      ldr r3, [r2]
00773de0  03 00 a0 e1                                      mov r0, r3
00773de4  00 30 93 e5                                      ldr r3, [r3]
00773de8  0f e0 a0 e1                                      mov lr, pc
00773dec  ac f0 93 e5                                      ldr pc, [r3, #0xac]
00773df0  00 00 50 e3                                      cmp r0, #0
00773df4  02 00 50 13                                      cmpne r0, #2
00773df8  2c 00 00 1a                                      bne #0x773eb0
00773dfc  30 00 94 e5                                      ldr r0, [r4, #0x30]
00773e00  d7 6a ee eb                                      bl #0x30e964
00773e04  0c 60 94 e5                                      ldr r6, [r4, #0xc]
00773e08  00 70 a0 e1                                      mov r7, r0
00773e0c  bc 10 96 e5                                      ldr r1, [r6, #0xbc]
00773e10  c0 00 96 e5                                      ldr r0, [r6, #0xc0]
00773e14  64 69 ee eb                                      bl #0x30e3ac
00773e18  41 14 a0 e3                                      mov r1, #0x41000000
00773e1c  0a 16 81 e2                                      add r1, r1, #0xa00000
00773e20  9b 6b ee eb                                      bl #0x30ec94
00773e24  00 10 a0 e1                                      mov r1, r0
00773e28  07 00 a0 e1                                      mov r0, r7
00773e2c  98 6b ee eb                                      bl #0x30ec94
00773e30  00 70 a0 e1                                      mov r7, r0
00773e34  24 00 94 e5                                      ldr r0, [r4, #0x24]
00773e38  c9 6a ee eb                                      bl #0x30e964
00773e3c  00 10 a0 e1                                      mov r1, r0
00773e40  00 00 95 e5                                      ldr r0, [r5]
00773e44  58 69 ee eb                                      bl #0x30e3ac
00773e48  00 80 a0 e1                                      mov r8, r0
00773e4c  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00773e50  c3 6a ee eb                                      bl #0x30e964
00773e54  b4 10 96 e5                                      ldr r1, [r6, #0xb4]
00773e58  00 a0 a0 e1                                      mov sl, r0
00773e5c  b8 00 96 e5                                      ldr r0, [r6, #0xb8]
00773e60  51 69 ee eb                                      bl #0x30e3ac
00773e64  41 14 a0 e3                                      mov r1, #0x41000000
00773e68  0a 16 81 e2                                      add r1, r1, #0xa00000
00773e6c  88 6b ee eb                                      bl #0x30ec94
00773e70  00 10 a0 e1                                      mov r1, r0
00773e74  0a 00 a0 e1                                      mov r0, sl
00773e78  85 6b ee eb                                      bl #0x30ec94
00773e7c  00 10 a0 e1                                      mov r1, r0
00773e80  08 00 a0 e1                                      mov r0, r8
00773e84  82 6b ee eb                                      bl #0x30ec94
00773e88  00 00 85 e5                                      str r0, [r5]
00773e8c  28 00 94 e5                                      ldr r0, [r4, #0x28]
00773e90  b3 6a ee eb                                      bl #0x30e964
00773e94  00 10 a0 e1                                      mov r1, r0
00773e98  04 00 95 e5                                      ldr r0, [r5, #4]
00773e9c  42 69 ee eb                                      bl #0x30e3ac
00773ea0  07 10 a0 e1                                      mov r1, r7
00773ea4  7a 6b ee eb                                      bl #0x30ec94
00773ea8  04 00 85 e5                                      str r0, [r5, #4]
00773eac  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00773eb0  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00773eb4  aa 6a ee eb                                      bl #0x30e964
00773eb8  0c 60 94 e5                                      ldr r6, [r4, #0xc]
00773ebc  00 70 a0 e1                                      mov r7, r0
00773ec0  bc 10 96 e5                                      ldr r1, [r6, #0xbc]
00773ec4  c0 00 96 e5                                      ldr r0, [r6, #0xc0]
00773ec8  37 69 ee eb                                      bl #0x30e3ac
00773ecc  41 14 a0 e3                                      mov r1, #0x41000000
00773ed0  0a 16 81 e2                                      add r1, r1, #0xa00000
00773ed4  6e 6b ee eb                                      bl #0x30ec94
00773ed8  00 10 a0 e1                                      mov r1, r0
00773edc  07 00 a0 e1                                      mov r0, r7
00773ee0  6b 6b ee eb                                      bl #0x30ec94
00773ee4  00 70 a0 e1                                      mov r7, r0
00773ee8  28 00 94 e5                                      ldr r0, [r4, #0x28]
00773eec  9c 6a ee eb                                      bl #0x30e964
00773ef0  00 10 a0 e1                                      mov r1, r0
00773ef4  00 00 95 e5                                      ldr r0, [r5]
00773ef8  2b 69 ee eb                                      bl #0x30e3ac
00773efc  00 80 a0 e1                                      mov r8, r0
00773f00  30 00 94 e5                                      ldr r0, [r4, #0x30]
00773f04  96 6a ee eb                                      bl #0x30e964
00773f08  b4 10 96 e5                                      ldr r1, [r6, #0xb4]
00773f0c  00 a0 a0 e1                                      mov sl, r0
00773f10  b8 00 96 e5                                      ldr r0, [r6, #0xb8]
00773f14  24 69 ee eb                                      bl #0x30e3ac
00773f18  41 14 a0 e3                                      mov r1, #0x41000000
00773f1c  0a 16 81 e2                                      add r1, r1, #0xa00000
00773f20  5b 6b ee eb                                      bl #0x30ec94
00773f24  00 10 a0 e1                                      mov r1, r0
00773f28  0a 00 a0 e1                                      mov r0, sl
00773f2c  58 6b ee eb                                      bl #0x30ec94
00773f30  00 10 a0 e1                                      mov r1, r0
00773f34  08 00 a0 e1                                      mov r0, r8
00773f38  55 6b ee eb                                      bl #0x30ec94
00773f3c  00 00 85 e5                                      str r0, [r5]
00773f40  24 00 94 e5                                      ldr r0, [r4, #0x24]
00773f44  d1 ff ff ea                                      b #0x773e90
; mapping-symbol data/literal pool
00773f48  c4 0c 22 00 b4 39 00 00                          .byte 0xc4, 0x0c, 0x22, 0x00, 0xb4, 0x39, 0x00, 0x00

; FUNCTION 0x00773f50, declared_size=472, range_size=472, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root17logical_to_screenERNS_5pointE
; demangled: gameswf::root::logical_to_screen(gameswf::point&)
; decoder-mode: arm
00773f50  c8 31 9f e5                                      ldr r3, [pc, #0x1c8]
00773f54  c8 21 9f e5                                      ldr r2, [pc, #0x1c8]
00773f58  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00773f5c  03 30 8f e0                                      add r3, pc, r3
00773f60  02 20 93 e7                                      ldr r2, [r3, r2]
00773f64  0c d0 4d e2                                      sub sp, sp, #0xc
00773f68  00 40 a0 e1                                      mov r4, r0
00773f6c  00 30 92 e5                                      ldr r3, [r2]
00773f70  01 50 a0 e1                                      mov r5, r1
00773f74  03 00 a0 e1                                      mov r0, r3
00773f78  00 30 93 e5                                      ldr r3, [r3]
00773f7c  0f e0 a0 e1                                      mov lr, pc
00773f80  ac f0 93 e5                                      ldr pc, [r3, #0xac]
00773f84  00 00 50 e3                                      cmp r0, #0
00773f88  02 00 50 13                                      cmpne r0, #2
00773f8c  00 80 a0 13                                      movne r8, #0
00773f90  01 80 a0 03                                      moveq r8, #1
00773f94  4a 00 00 1a                                      bne #0x7740c4
00773f98  0c 60 94 e5                                      ldr r6, [r4, #0xc]
00773f9c  b4 10 96 e5                                      ldr r1, [r6, #0xb4]
00773fa0  b8 00 96 e5                                      ldr r0, [r6, #0xb8]
00773fa4  00 69 ee eb                                      bl #0x30e3ac
00773fa8  bc 10 96 e5                                      ldr r1, [r6, #0xbc]
00773fac  00 b0 a0 e1                                      mov fp, r0
00773fb0  c0 00 96 e5                                      ldr r0, [r6, #0xc0]
00773fb4  fc 68 ee eb                                      bl #0x30e3ac
00773fb8  00 a0 a0 e1                                      mov sl, r0
00773fbc  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00773fc0  67 6a ee eb                                      bl #0x30e964
00773fc4  00 70 a0 e1                                      mov r7, r0
00773fc8  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
00773fcc  64 6a ee eb                                      bl #0x30e964
00773fd0  07 10 a0 e1                                      mov r1, r7
00773fd4  2e 6b ee eb                                      bl #0x30ec94
00773fd8  00 00 8d e5                                      str r0, [sp]
00773fdc  30 00 94 e5                                      ldr r0, [r4, #0x30]
00773fe0  5f 6a ee eb                                      bl #0x30e964
00773fe4  00 60 a0 e1                                      mov r6, r0
00773fe8  20 00 94 e5                                      ldr r0, [r4, #0x20]
00773fec  5c 6a ee eb                                      bl #0x30e964
00773ff0  06 10 a0 e1                                      mov r1, r6
00773ff4  26 6b ee eb                                      bl #0x30ec94
00773ff8  04 00 8d e5                                      str r0, [sp, #4]
00773ffc  24 00 94 e5                                      ldr r0, [r4, #0x24]
00774000  57 6a ee eb                                      bl #0x30e964
00774004  41 14 a0 e3                                      mov r1, #0x41000000
00774008  0a 16 81 e2                                      add r1, r1, #0xa00000
0077400c  56 6b ee eb                                      bl #0x30ed6c
00774010  41 14 a0 e3                                      mov r1, #0x41000000
00774014  00 90 a0 e1                                      mov sb, r0
00774018  0a 16 81 e2                                      add r1, r1, #0xa00000
0077401c  0b 00 a0 e1                                      mov r0, fp
00774020  1b 6b ee eb                                      bl #0x30ec94
00774024  00 10 a0 e1                                      mov r1, r0
00774028  07 00 a0 e1                                      mov r0, r7
0077402c  18 6b ee eb                                      bl #0x30ec94
00774030  00 10 a0 e1                                      mov r1, r0
00774034  09 00 a0 e1                                      mov r0, sb
00774038  15 6b ee eb                                      bl #0x30ec94
0077403c  00 70 a0 e1                                      mov r7, r0
00774040  28 00 94 e5                                      ldr r0, [r4, #0x28]
00774044  46 6a ee eb                                      bl #0x30e964
00774048  41 14 a0 e3                                      mov r1, #0x41000000
0077404c  0a 16 81 e2                                      add r1, r1, #0xa00000
00774050  45 6b ee eb                                      bl #0x30ed6c
00774054  41 14 a0 e3                                      mov r1, #0x41000000
00774058  00 40 a0 e1                                      mov r4, r0
0077405c  0a 16 81 e2                                      add r1, r1, #0xa00000
00774060  0a 00 a0 e1                                      mov r0, sl
00774064  0a 6b ee eb                                      bl #0x30ec94
00774068  00 10 a0 e1                                      mov r1, r0
0077406c  06 00 a0 e1                                      mov r0, r6
00774070  07 6b ee eb                                      bl #0x30ec94
00774074  00 10 a0 e1                                      mov r1, r0
00774078  04 00 a0 e1                                      mov r0, r4
0077407c  04 6b ee eb                                      bl #0x30ec94
00774080  00 00 58 e3                                      cmp r8, #0
00774084  00 40 a0 e1                                      mov r4, r0
00774088  17 00 00 1a                                      bne #0x7740ec
0077408c  04 00 9d e5                                      ldr r0, [sp, #4]
00774090  00 10 95 e5                                      ldr r1, [r5]
00774094  34 6b ee eb                                      bl #0x30ed6c
00774098  04 10 a0 e1                                      mov r1, r4
0077409c  c2 68 ee eb                                      bl #0x30e3ac
007740a0  00 00 85 e5                                      str r0, [r5]
007740a4  04 10 95 e5                                      ldr r1, [r5, #4]
007740a8  00 00 9d e5                                      ldr r0, [sp]
007740ac  2e 6b ee eb                                      bl #0x30ed6c
007740b0  07 10 a0 e1                                      mov r1, r7
007740b4  bc 68 ee eb                                      bl #0x30e3ac
007740b8  04 00 85 e5                                      str r0, [r5, #4]
007740bc  0c d0 8d e2                                      add sp, sp, #0xc
007740c0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007740c4  0c 60 94 e5                                      ldr r6, [r4, #0xc]
007740c8  bc 10 96 e5                                      ldr r1, [r6, #0xbc]
007740cc  c0 00 96 e5                                      ldr r0, [r6, #0xc0]
007740d0  b5 68 ee eb                                      bl #0x30e3ac
007740d4  b4 10 96 e5                                      ldr r1, [r6, #0xb4]
007740d8  00 b0 a0 e1                                      mov fp, r0
007740dc  b8 00 96 e5                                      ldr r0, [r6, #0xb8]
007740e0  b1 68 ee eb                                      bl #0x30e3ac
007740e4  00 a0 a0 e1                                      mov sl, r0
007740e8  b3 ff ff ea                                      b #0x773fbc
007740ec  00 00 9d e5                                      ldr r0, [sp]
007740f0  00 10 95 e5                                      ldr r1, [r5]
007740f4  1c 6b ee eb                                      bl #0x30ed6c
007740f8  07 10 a0 e1                                      mov r1, r7
007740fc  aa 68 ee eb                                      bl #0x30e3ac
00774100  00 00 85 e5                                      str r0, [r5]
00774104  04 10 95 e5                                      ldr r1, [r5, #4]
00774108  04 00 9d e5                                      ldr r0, [sp, #4]
0077410c  16 6b ee eb                                      bl #0x30ed6c
00774110  04 10 a0 e1                                      mov r1, r4
00774114  a4 68 ee eb                                      bl #0x30e3ac
00774118  04 00 85 e5                                      str r0, [r5, #4]
0077411c  e6 ff ff ea                                      b #0x7740bc
; mapping-symbol data/literal pool
00774120  34 0b 22 00 b4 39 00 00                          .byte 0x34, 0x0b, 0x22, 0x00, 0xb4, 0x39, 0x00, 0x00

; FUNCTION 0x00774128, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root18notify_mouse_stateEiii
; demangled: gameswf::root::notify_mouse_state(int, int, int)
; decoder-mode: arm
00774128  44 30 80 e5                                      str r3, [r0, #0x44]
0077412c  3c 10 80 e5                                      str r1, [r0, #0x3c]
00774130  40 20 80 e5                                      str r2, [r0, #0x40]
00774134  1e ff 2f e1                                      bx lr

; FUNCTION 0x00774138, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root15get_mouse_stateEPiS1_S1_
; demangled: gameswf::root::get_mouse_state(int*, int*, int*)
; decoder-mode: arm
00774138  3c c0 90 e5                                      ldr ip, [r0, #0x3c]
0077413c  00 c0 81 e5                                      str ip, [r1]
00774140  40 10 90 e5                                      ldr r1, [r0, #0x40]
00774144  00 10 82 e5                                      str r1, [r2]
00774148  44 20 90 e5                                      ldr r2, [r0, #0x44]
0077414c  00 20 83 e5                                      str r2, [r3]
00774150  1e ff 2f e1                                      bx lr

; FUNCTION 0x00774154, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root14get_root_movieEv
; demangled: gameswf::root::get_root_movie()
; decoder-mode: arm
00774154  10 00 90 e5                                      ldr r0, [r0, #0x10]
00774158  1e ff 2f e1                                      bx lr

; FUNCTION 0x0077415c, declared_size=12, range_size=12, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root9stop_dragEv
; demangled: gameswf::root::stop_drag()
; decoder-mode: arm
0077415c  00 30 a0 e3                                      mov r3, #0
00774160  58 30 80 e5                                      str r3, [r0, #0x58]
00774164  1e ff 2f e1                                      bx lr

; FUNCTION 0x00774168, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root20get_movie_definitionEv
; demangled: gameswf::root::get_movie_definition()
; decoder-mode: arm
00774168  10 40 2d e9                                      push {r4, lr}
0077416c  10 30 90 e5                                      ldr r3, [r0, #0x10]
00774170  03 00 a0 e1                                      mov r0, r3
00774174  00 30 93 e5                                      ldr r3, [r3]
00774178  0f e0 a0 e1                                      mov lr, pc
0077417c  80 f0 93 e5                                      ldr pc, [r3, #0x80]
00774180  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00774184, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::root
; alias: _ZNK7gameswf4root17get_current_frameEv
; demangled: gameswf::root::get_current_frame() const
; decoder-mode: arm
00774184  10 40 2d e9                                      push {r4, lr}
00774188  10 30 90 e5                                      ldr r3, [r0, #0x10]
0077418c  03 00 a0 e1                                      mov r0, r3
00774190  00 30 93 e5                                      ldr r3, [r3]
00774194  0f e0 a0 e1                                      mov lr, pc
00774198  38 f1 93 e5                                      ldr pc, [r3, #0x138]
0077419c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007741a0, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::root
; alias: _ZNK7gameswf4root14get_frame_rateEv
; demangled: gameswf::root::get_frame_rate() const
; decoder-mode: arm
007741a0  10 40 2d e9                                      push {r4, lr}
007741a4  0c 30 90 e5                                      ldr r3, [r0, #0xc]
007741a8  03 00 a0 e1                                      mov r0, r3
007741ac  00 30 93 e5                                      ldr r3, [r3]
007741b0  0f e0 a0 e1                                      mov lr, pc
007741b4  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
007741b8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007741bc, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::root
; alias: _ZNK7gameswf4root15get_pixel_scaleEv
; demangled: gameswf::root::get_pixel_scale() const
; decoder-mode: arm
007741bc  34 00 90 e5                                      ldr r0, [r0, #0x34]
007741c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x007741c4, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root13get_characterEi
; demangled: gameswf::root::get_character(int)
; decoder-mode: arm
007741c4  10 40 2d e9                                      push {r4, lr}
007741c8  10 30 90 e5                                      ldr r3, [r0, #0x10]
007741cc  03 00 a0 e1                                      mov r0, r3
007741d0  00 30 93 e5                                      ldr r3, [r3]
007741d4  0f e0 a0 e1                                      mov lr, pc
007741d8  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
007741dc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007741e0, declared_size=20, range_size=20, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root20set_background_colorERKNS_4rgbaE
; demangled: gameswf::root::set_background_color(gameswf::rgba const&)
; decoder-mode: arm
007741e0  10 40 2d e9                                      push {r4, lr}
007741e4  04 20 a0 e3                                      mov r2, #4
007741e8  38 00 80 e2                                      add r0, r0, #0x38
007741ec  9d 69 ee eb                                      bl #0x30e868
007741f0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007741f4, declared_size=80, range_size=80, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root20set_background_alphaEf
; demangled: gameswf::root::set_background_alpha(float)
; decoder-mode: arm
007741f4  10 40 2d e9                                      push {r4, lr}
007741f8  00 40 a0 e1                                      mov r4, r0
007741fc  01 00 a0 e1                                      mov r0, r1
00774200  43 14 a0 e3                                      mov r1, #0x43000000
00774204  7f 18 81 e2                                      add r1, r1, #0x7f0000
00774208  d7 6a ee eb                                      bl #0x30ed6c
0077420c  3f 14 a0 e3                                      mov r1, #0x3f000000
00774210  63 6a ee eb                                      bl #0x30eba4
00774214  ac 68 ee eb                                      bl #0x30e4cc
00774218  fe 00 50 e3                                      cmp r0, #0xfe
0077421c  ff 00 a0 c3                                      movgt r0, #0xff
00774220  04 00 00 ca                                      bgt #0x774238
00774224  00 00 50 e3                                      cmp r0, #0
00774228  00 00 a0 d3                                      movle r0, #0
0077422c  01 00 00 ca                                      bgt #0x774238
00774230  3b 00 c4 e5                                      strb r0, [r4, #0x3b]
00774234  10 80 bd e8                                      pop {r4, pc}
00774238  70 00 ef e6                                      uxtb r0, r0
0077423c  3b 00 c4 e5                                      strb r0, [r4, #0x3b]
00774240  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00774244, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::root
; alias: _ZNK7gameswf4root20get_background_alphaEv
; demangled: gameswf::root::get_background_alpha() const
; decoder-mode: arm
00774244  10 40 2d e9                                      push {r4, lr}
00774248  3b 00 d0 e5                                      ldrb r0, [r0, #0x3b]
0077424c  c4 69 ee eb                                      bl #0x30e964
00774250  43 14 a0 e3                                      mov r1, #0x43000000
00774254  7f 18 81 e2                                      add r1, r1, #0x7f0000
00774258  8d 6a ee eb                                      bl #0x30ec94
0077425c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00774260, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root10goto_frameEi
; demangled: gameswf::root::goto_frame(int)
; decoder-mode: arm
00774260  10 40 2d e9                                      push {r4, lr}
00774264  10 30 90 e5                                      ldr r3, [r0, #0x10]
00774268  03 00 a0 e1                                      mov r0, r3
0077426c  00 30 93 e5                                      ldr r3, [r3]
00774270  0f e0 a0 e1                                      mov lr, pc
00774274  4c f1 93 e5                                      ldr pc, [r3, #0x14c]
00774278  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0077427c, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::root
; alias: _ZNK7gameswf4root10has_loopedEv
; demangled: gameswf::root::has_looped() const
; decoder-mode: arm
0077427c  10 40 2d e9                                      push {r4, lr}
00774280  10 30 90 e5                                      ldr r3, [r0, #0x10]
00774284  03 00 a0 e1                                      mov r0, r3
00774288  00 30 93 e5                                      ldr r3, [r3]
0077428c  0f e0 a0 e1                                      mov lr, pc
00774290  44 f1 93 e5                                      ldr pc, [r3, #0x144]
00774294  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00774298, declared_size=92, range_size=92, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root11end_displayEv
; demangled: gameswf::root::end_display()
; decoder-mode: arm
00774298  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0077429c  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
007742a0  10 40 2d e9                                      push {r4, lr}
007742a4  03 30 8f e0                                      add r3, pc, r3
007742a8  02 40 93 e7                                      ldr r4, [r3, r2]
007742ac  00 30 94 e5                                      ldr r3, [r4]
007742b0  00 00 53 e3                                      cmp r3, #0
007742b4  0b 00 00 0a                                      beq #0x7742e8
007742b8  03 00 a0 e1                                      mov r0, r3
007742bc  00 30 93 e5                                      ldr r3, [r3]
007742c0  0f e0 a0 e1                                      mov lr, pc
007742c4  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
007742c8  00 30 94 e5                                      ldr r3, [r4]
007742cc  00 00 53 e3                                      cmp r3, #0
007742d0  04 00 00 0a                                      beq #0x7742e8
007742d4  03 00 a0 e1                                      mov r0, r3
007742d8  00 10 a0 e3                                      mov r1, #0
007742dc  00 30 93 e5                                      ldr r3, [r3]
007742e0  0f e0 a0 e1                                      mov lr, pc
007742e4  48 f0 93 e5                                      ldr pc, [r3, #0x48]
007742e8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007742ec  ec 07 22 00 b4 39 00 00                          .byte 0xec, 0x07, 0x22, 0x00, 0xb4, 0x39, 0x00, 0x00

; FUNCTION 0x007742f4, declared_size=76, range_size=76, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root18goto_labeled_frameERKNS_10tu_stringiE
; demangled: gameswf::root::goto_labeled_frame(gameswf::tu_stringi const&)
; decoder-mode: arm
007742f4  10 40 2d e9                                      push {r4, lr}
007742f8  0c 30 90 e5                                      ldr r3, [r0, #0xc]
007742fc  08 d0 4d e2                                      sub sp, sp, #8
00774300  08 20 8d e2                                      add r2, sp, #8
00774304  00 40 a0 e1                                      mov r4, r0
00774308  00 00 e0 e3                                      mvn r0, #0
0077430c  04 00 22 e5                                      str r0, [r2, #-4]!
00774310  03 00 a0 e1                                      mov r0, r3
00774314  00 30 93 e5                                      ldr r3, [r3]
00774318  0f e0 a0 e1                                      mov lr, pc
0077431c  60 f0 93 e5                                      ldr pc, [r3, #0x60]
00774320  00 00 50 e3                                      cmp r0, #0
00774324  03 00 00 0a                                      beq #0x774338
00774328  04 00 a0 e1                                      mov r0, r4
0077432c  04 10 9d e5                                      ldr r1, [sp, #4]
00774330  ca ff ff eb                                      bl #0x774260
00774334  01 00 a0 e3                                      mov r0, #1
00774338  08 d0 8d e2                                      add sp, sp, #8
0077433c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00774340, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root14set_play_stateENS_9character10play_stateE
; demangled: gameswf::root::set_play_state(gameswf::character::play_state)
; decoder-mode: arm
00774340  10 40 2d e9                                      push {r4, lr}
00774344  10 30 90 e5                                      ldr r3, [r0, #0x10]
00774348  03 00 a0 e1                                      mov r0, r3
0077434c  00 30 93 e5                                      ldr r3, [r3]
00774350  0f e0 a0 e1                                      mov lr, pc
00774354  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00774358  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0077435c, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::root
; alias: _ZNK7gameswf4root14get_play_stateEv
; demangled: gameswf::root::get_play_state() const
; decoder-mode: arm
0077435c  10 40 2d e9                                      push {r4, lr}
00774360  10 30 90 e5                                      ldr r3, [r0, #0x10]
00774364  03 00 a0 e1                                      mov r0, r3
00774368  00 30 93 e5                                      ldr r3, [r3]
0077436c  0f e0 a0 e1                                      mov lr, pc
00774370  98 f0 93 e5                                      ldr pc, [r3, #0x98]
00774374  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00774378, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root12set_variableEPKcS2_
; demangled: gameswf::root::set_variable(char const*, char const*)
; decoder-mode: arm
00774378  10 40 2d e9                                      push {r4, lr}
0077437c  10 30 90 e5                                      ldr r3, [r0, #0x10]
00774380  03 00 a0 e1                                      mov r0, r3
00774384  00 30 93 e5                                      ldr r3, [r3]
00774388  0f e0 a0 e1                                      mov lr, pc
0077438c  08 f1 93 e5                                      ldr pc, [r3, #0x108]
00774390  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00774394, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root12set_variableEPKcPKw
; demangled: gameswf::root::set_variable(char const*, wchar_t const*)
; decoder-mode: arm
00774394  10 40 2d e9                                      push {r4, lr}
00774398  10 30 90 e5                                      ldr r3, [r0, #0x10]
0077439c  03 00 a0 e1                                      mov r0, r3
007743a0  00 30 93 e5                                      ldr r3, [r3]
007743a4  0f e0 a0 e1                                      mov lr, pc
007743a8  0c f1 93 e5                                      ldr pc, [r3, #0x10c]
007743ac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007743b0, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::root
; alias: _ZNK7gameswf4root12get_variableEPKc
; demangled: gameswf::root::get_variable(char const*) const
; decoder-mode: arm
007743b0  10 40 2d e9                                      push {r4, lr}
007743b4  10 30 90 e5                                      ldr r3, [r0, #0x10]
007743b8  03 00 a0 e1                                      mov r0, r3
007743bc  00 30 93 e5                                      ldr r3, [r3]
007743c0  0f e0 a0 e1                                      mov lr, pc
007743c4  10 f1 93 e5                                      ldr pc, [r3, #0x110]
007743c8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007743cc, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root16call_method_argsEPKcS2_St9__va_list
; demangled: gameswf::root::call_method_args(char const*, char const*, std::__va_list)
; decoder-mode: arm
007743cc  10 40 2d e9                                      push {r4, lr}
007743d0  10 c0 90 e5                                      ldr ip, [r0, #0x10]
007743d4  0c 00 a0 e1                                      mov r0, ip
007743d8  00 c0 9c e5                                      ldr ip, [ip]
007743dc  0f e0 a0 e1                                      mov lr, pc
007743e0  8c f0 9c e5                                      ldr pc, [ip, #0x8c]
007743e4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007743e8, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root11call_methodEPKcPNS_8as_valueEi
; demangled: gameswf::root::call_method(char const*, gameswf::as_value*, int)
; decoder-mode: arm
007743e8  10 40 2d e9                                      push {r4, lr}
007743ec  08 d0 4d e2                                      sub sp, sp, #8
007743f0  10 c0 91 e5                                      ldr ip, [r1, #0x10]
007743f4  10 e0 9d e5                                      ldr lr, [sp, #0x10]
007743f8  00 40 a0 e1                                      mov r4, r0
007743fc  0c 10 a0 e1                                      mov r1, ip
00774400  00 c0 9c e5                                      ldr ip, [ip]
00774404  00 e0 8d e5                                      str lr, [sp]
00774408  0f e0 a0 e1                                      mov lr, pc
0077440c  90 f0 9c e5                                      ldr pc, [ip, #0x90]
00774410  04 00 a0 e1                                      mov r0, r4
00774414  08 d0 8d e2                                      add sp, sp, #8
00774418  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0077441c, declared_size=12, range_size=12, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root11set_visibleEb
; demangled: gameswf::root::set_visible(bool)
; decoder-mode: arm
0077441c  10 30 90 e5                                      ldr r3, [r0, #0x10]
00774420  9b 10 c3 e5                                      strb r1, [r3, #0x9b]
00774424  1e ff 2f e1                                      bx lr

; FUNCTION 0x00774428, declared_size=12, range_size=12, mode=arm
; class-group: gameswf::root
; alias: _ZNK7gameswf4root11get_visibleEv
; demangled: gameswf::root::get_visible() const
; decoder-mode: arm
00774428  10 30 90 e5                                      ldr r3, [r0, #0x10]
0077442c  9b 00 d3 e5                                      ldrb r0, [r3, #0x9b]
00774430  1e ff 2f e1                                      bx lr

; FUNCTION 0x00774434, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root12get_userdataEv
; demangled: gameswf::root::get_userdata()
; decoder-mode: arm
00774434  54 00 90 e5                                      ldr r0, [r0, #0x54]
00774438  1e ff 2f e1                                      bx lr

; FUNCTION 0x0077443c, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root12set_userdataEPv
; demangled: gameswf::root::set_userdata(void*)
; decoder-mode: arm
0077443c  54 10 80 e5                                      str r1, [r0, #0x54]
00774440  1e ff 2f e1                                      bx lr

; FUNCTION 0x00774444, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root23attach_display_callbackEPKcPFvPvES3_
; demangled: gameswf::root::attach_display_callback(char const*, void (*)(void*), void*)
; decoder-mode: arm
00774444  10 40 2d e9                                      push {r4, lr}
00774448  10 c0 90 e5                                      ldr ip, [r0, #0x10]
0077444c  0c 00 a0 e1                                      mov r0, ip
00774450  00 c0 9c e5                                      ldr ip, [ip]
00774454  0f e0 a0 e1                                      mov lr, pc
00774458  14 f1 9c e5                                      ldr pc, [ip, #0x114]
0077445c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007744a4, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root11call_methodEPKcS2_z
; demangled: gameswf::root::call_method(char const*, char const*, ...)
; decoder-mode: arm
007744a4  0c 00 2d e9                                      push {r2, r3}
007744a8  04 e0 2d e5                                      str lr, [sp, #-4]!
007744ac  0c d0 4d e2                                      sub sp, sp, #0xc
007744b0  14 30 8d e2                                      add r3, sp, #0x14
007744b4  04 30 8d e5                                      str r3, [sp, #4]
007744b8  10 c0 90 e5                                      ldr ip, [r0, #0x10]
007744bc  10 20 9d e5                                      ldr r2, [sp, #0x10]
007744c0  0c 00 a0 e1                                      mov r0, ip
007744c4  00 c0 9c e5                                      ldr ip, [ip]
007744c8  0f e0 a0 e1                                      mov lr, pc
007744cc  8c f0 9c e5                                      ldr pc, [ip, #0x8c]
007744d0  0c d0 8d e2                                      add sp, sp, #0xc
007744d4  04 e0 9d e4                                      pop {lr}
007744d8  08 d0 8d e2                                      add sp, sp, #8
007744dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x007744e0, declared_size=92, range_size=92, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root14set_frame_rateEf
; demangled: gameswf::root::set_frame_rate(float)
; decoder-mode: arm
007744e0  70 40 2d e9                                      push {r4, r5, r6, lr}
007744e4  01 40 a0 e1                                      mov r4, r1
007744e8  00 50 a0 e1                                      mov r5, r0
007744ec  fe 15 a0 e3                                      mov r1, #0x3f800000
007744f0  04 00 a0 e1                                      mov r0, r4
007744f4  ee 67 ee eb                                      bl #0x30e4b4
007744f8  00 00 50 e3                                      cmp r0, #0
007744fc  05 00 00 0a                                      beq #0x774518
00774500  42 14 a0 e3                                      mov r1, #0x42000000
00774504  04 00 a0 e1                                      mov r0, r4
00774508  0f 16 81 e2                                      add r1, r1, #0xf00000
0077450c  26 69 ee eb                                      bl #0x30e9ac
00774510  00 00 50 e3                                      cmp r0, #0
00774514  00 00 00 1a                                      bne #0x77451c
00774518  70 80 bd e8                                      pop {r4, r5, r6, pc}
0077451c  04 10 a0 e1                                      mov r1, r4
00774520  fe 05 a0 e3                                      mov r0, #0x3f800000
00774524  da 69 ee eb                                      bl #0x30ec94
00774528  90 00 85 e5                                      str r0, [r5, #0x90]
0077452c  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00774530  04 10 a0 e1                                      mov r1, r4
00774534  70 40 bd e8                                      pop {r4, r5, r6, lr}
00774538  65 bc ff ea                                      b #0x7636d4

; FUNCTION 0x0077453c, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root14set_root_movieEPNS_9characterE
; demangled: gameswf::root::set_root_movie(gameswf::character*)
; decoder-mode: arm
0077453c  10 00 80 e2                                      add r0, r0, #0x10
00774540  11 83 ff ea                                      b #0x75518c

; FUNCTION 0x00774544, declared_size=100, range_size=100, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root16notify_key_eventEPNS_6playerENS_3key4codeEb
; demangled: gameswf::root::notify_key_event(gameswf::player*, gameswf::key::code, bool)
; decoder-mode: arm
00774544  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00774548  03 40 a0 e1                                      mov r4, r3
0077454c  01 70 a0 e1                                      mov r7, r1
00774550  02 50 a0 e1                                      mov r5, r2
00774554  0c d0 4d e2                                      sub sp, sp, #0xc
00774558  00 60 a0 e1                                      mov r6, r0
0077455c  f5 fd ff eb                                      bl #0x773d38
00774560  07 00 a0 e1                                      mov r0, r7
00774564  05 10 a0 e1                                      mov r1, r5
00774568  04 20 a0 e1                                      mov r2, r4
0077456c  9a e6 ff eb                                      bl #0x76dfdc
00774570  00 00 54 e3                                      cmp r4, #0
00774574  08 00 00 0a                                      beq #0x77459c
00774578  00 30 a0 e3                                      mov r3, #0
0077457c  08 20 a0 e3                                      mov r2, #8
00774580  a8 00 86 e2                                      add r0, r6, #0xa8
00774584  0d 10 a0 e1                                      mov r1, sp
00774588  00 20 cd e5                                      strb r2, [sp]
0077458c  01 50 cd e5                                      strb r5, [sp, #1]
00774590  04 30 8d e5                                      str r3, [sp, #4]
00774594  b2 30 cd e1                                      strh r3, [sp, #2]
00774598  86 b0 ff eb                                      bl #0x7607b8
0077459c  e5 fd ff eb                                      bl #0x773d38
007745a0  0c d0 8d e2                                      add sp, sp, #0xc
007745a4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00774660, declared_size=488, range_size=488, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root14set_flash_varsERKNS_9tu_stringE
; demangled: gameswf::root::set_flash_vars(gameswf::tu_string const&)
; decoder-mode: arm
00774660  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00774664  d4 21 9f e5                                      ldr r2, [pc, #0x1d4]
00774668  d4 31 9f e5                                      ldr r3, [pc, #0x1d4]
0077466c  6c d0 4d e2                                      sub sp, sp, #0x6c
00774670  02 20 8f e0                                      add r2, pc, r2
00774674  08 20 8d e5                                      str r2, [sp, #8]
00774678  03 20 92 e7                                      ldr r2, [r2, r3]
0077467c  0c 10 8d e5                                      str r1, [sp, #0xc]
00774680  10 30 8d e5                                      str r3, [sp, #0x10]
00774684  d0 30 d1 e1                                      ldrsb r3, [r1]
00774688  00 20 92 e5                                      ldr r2, [r2]
0077468c  00 00 8d e5                                      str r0, [sp]
00774690  01 00 73 e3                                      cmn r3, #1
00774694  64 20 8d e5                                      str r2, [sp, #0x64]
00774698  0c 20 9d 05                                      ldreq r2, [sp, #0xc]
0077469c  3c 90 8d e2                                      add sb, sp, #0x3c
007746a0  01 10 81 12                                      addne r1, r1, #1
007746a4  01 30 82 02                                      addeq r3, r2, #1
007746a8  0c 40 92 05                                      ldreq r4, [r2, #0xc]
007746ac  14 30 8d 05                                      streq r3, [sp, #0x14]
007746b0  01 30 89 e2                                      add r3, sb, #1
007746b4  14 10 8d 15                                      strne r1, [sp, #0x14]
007746b8  01 40 a0 11                                      movne r4, r1
007746bc  50 a0 8d e2                                      add sl, sp, #0x50
007746c0  28 80 8d e2                                      add r8, sp, #0x28
007746c4  04 30 8d e5                                      str r3, [sp, #4]
007746c8  00 70 a0 e3                                      mov r7, #0
007746cc  1c 50 8d e2                                      add r5, sp, #0x1c
007746d0  d0 30 d4 e1                                      ldrsb r3, [r4]
007746d4  00 00 53 e3                                      cmp r3, #0
007746d8  38 00 00 0a                                      beq #0x7747c0
007746dc  04 00 a0 e1                                      mov r0, r4
007746e0  3d 10 a0 e3                                      mov r1, #0x3d
007746e4  4f 69 ee eb                                      bl #0x30ec28
007746e8  00 00 50 e3                                      cmp r0, #0
007746ec  33 00 00 0a                                      beq #0x7747c0
007746f0  00 20 64 e0                                      rsb r2, r4, r0
007746f4  04 10 a0 e1                                      mov r1, r4
007746f8  01 60 80 e2                                      add r6, r0, #1
007746fc  0a 00 a0 e1                                      mov r0, sl
00774700  eb 75 ff eb                                      bl #0x751eb4
00774704  06 00 a0 e1                                      mov r0, r6
00774708  2c 10 a0 e3                                      mov r1, #0x2c
0077470c  45 69 ee eb                                      bl #0x30ec28
00774710  00 40 50 e2                                      subs r4, r0, #0
00774714  3d 00 00 0a                                      beq #0x774810
00774718  04 20 66 e0                                      rsb r2, r6, r4
0077471c  06 10 a0 e1                                      mov r1, r6
00774720  09 00 a0 e1                                      mov r0, sb
00774724  e2 75 ff eb                                      bl #0x751eb4
00774728  00 00 9d e5                                      ldr r0, [sp]
0077472c  88 fe ff eb                                      bl #0x774154
00774730  00 30 90 e5                                      ldr r3, [r0]
00774734  0a 10 a0 e1                                      mov r1, sl
00774738  00 b0 a0 e1                                      mov fp, r0
0077473c  08 00 a0 e1                                      mov r0, r8
00774740  1c 60 93 e5                                      ldr r6, [r3, #0x1c]
00774744  38 7a ff eb                                      bl #0x75302c
00774748  dc 33 dd e1                                      ldrsb r3, [sp, #0x3c]
0077474c  05 00 a0 e1                                      mov r0, r5
00774750  1c 70 cd e5                                      strb r7, [sp, #0x1c]
00774754  01 00 73 e3                                      cmn r3, #1
00774758  04 10 9d 15                                      ldrne r1, [sp, #4]
0077475c  48 10 9d 05                                      ldreq r1, [sp, #0x48]
00774760  1d 70 cd e5                                      strb r7, [sp, #0x1d]
00774764  f9 8a 00 eb                                      bl #0x797350
00774768  08 10 a0 e1                                      mov r1, r8
0077476c  05 20 a0 e1                                      mov r2, r5
00774770  0b 00 a0 e1                                      mov r0, fp
00774774  36 ff 2f e1                                      blx r6
00774778  05 00 a0 e1                                      mov r0, r5
0077477c  68 8a 00 eb                                      bl #0x797124
00774780  d8 32 dd e1                                      ldrsb r3, [sp, #0x28]
00774784  01 00 73 e3                                      cmn r3, #1
00774788  15 00 00 0a                                      beq #0x7747e4
0077478c  dc 33 dd e1                                      ldrsb r3, [sp, #0x3c]
00774790  01 40 84 e2                                      add r4, r4, #1
00774794  01 00 73 e3                                      cmn r3, #1
00774798  18 00 00 0a                                      beq #0x774800
0077479c  d0 35 dd e1                                      ldrsb r3, [sp, #0x50]
007747a0  01 00 73 e3                                      cmn r3, #1
007747a4  c9 ff ff 1a                                      bne #0x7746d0
007747a8  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
007747ac  58 10 9d e5                                      ldr r1, [sp, #0x58]
007747b0  e0 78 ff eb                                      bl #0x752b38
007747b4  d0 30 d4 e1                                      ldrsb r3, [r4]
007747b8  00 00 53 e3                                      cmp r3, #0
007747bc  c6 ff ff 1a                                      bne #0x7746dc
007747c0  08 20 9d e5                                      ldr r2, [sp, #8]
007747c4  10 10 9d e5                                      ldr r1, [sp, #0x10]
007747c8  01 30 92 e7                                      ldr r3, [r2, r1]
007747cc  64 20 9d e5                                      ldr r2, [sp, #0x64]
007747d0  00 30 93 e5                                      ldr r3, [r3]
007747d4  03 00 52 e1                                      cmp r2, r3
007747d8  17 00 00 1a                                      bne #0x77483c
007747dc  6c d0 8d e2                                      add sp, sp, #0x6c
007747e0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007747e4  34 00 9d e5                                      ldr r0, [sp, #0x34]
007747e8  30 10 9d e5                                      ldr r1, [sp, #0x30]
007747ec  d1 78 ff eb                                      bl #0x752b38
007747f0  dc 33 dd e1                                      ldrsb r3, [sp, #0x3c]
007747f4  01 40 84 e2                                      add r4, r4, #1
007747f8  01 00 73 e3                                      cmn r3, #1
007747fc  e6 ff ff 1a                                      bne #0x77479c
00774800  48 00 9d e5                                      ldr r0, [sp, #0x48]
00774804  44 10 9d e5                                      ldr r1, [sp, #0x44]
00774808  ca 78 ff eb                                      bl #0x752b38
0077480c  e2 ff ff ea                                      b #0x77479c
00774810  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00774814  d0 40 d1 e1                                      ldrsb r4, [r1]
00774818  01 00 74 e3                                      cmn r4, #1
0077481c  0c 20 9d 05                                      ldreq r2, [sp, #0xc]
00774820  14 30 9d 15                                      ldrne r3, [sp, #0x14]
00774824  01 40 44 12                                      subne r4, r4, #1
00774828  04 40 92 05                                      ldreq r4, [r2, #4]
0077482c  0c 30 92 05                                      ldreq r3, [r2, #0xc]
00774830  01 40 44 02                                      subeq r4, r4, #1
00774834  04 40 83 e0                                      add r4, r3, r4
00774838  b6 ff ff ea                                      b #0x774718
0077483c  b3 66 ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00774840  20 04 22 00 ac 40 00 00                          .byte 0x20, 0x04, 0x22, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x007748b8, declared_size=96, range_size=96, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root19flush_buffered_textEv
; demangled: gameswf::root::flush_buffered_text()
; decoder-mode: arm
007748b8  70 40 2d e9                                      push {r4, r5, r6, lr}
007748bc  9c 30 90 e5                                      ldr r3, [r0, #0x9c]
007748c0  00 50 a0 e1                                      mov r5, r0
007748c4  00 00 53 e3                                      cmp r3, #0
007748c8  11 00 00 da                                      ble #0x774914
007748cc  01 30 a0 e3                                      mov r3, #1
007748d0  86 30 c0 e5                                      strb r3, [r0, #0x86]
007748d4  00 40 a0 e3                                      mov r4, #0
007748d8  98 30 95 e5                                      ldr r3, [r5, #0x98]
007748dc  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
007748e0  01 40 84 e2                                      add r4, r4, #1
007748e4  03 00 a0 e1                                      mov r0, r3
007748e8  00 30 93 e5                                      ldr r3, [r3]
007748ec  0f e0 a0 e1                                      mov lr, pc
007748f0  20 f1 93 e5                                      ldr pc, [r3, #0x120]
007748f4  9c 30 95 e5                                      ldr r3, [r5, #0x9c]
007748f8  03 00 54 e1                                      cmp r4, r3
007748fc  f5 ff ff ba                                      blt #0x7748d8
00774900  00 30 a0 e3                                      mov r3, #0
00774904  98 00 85 e2                                      add r0, r5, #0x98
00774908  86 30 c5 e5                                      strb r3, [r5, #0x86]
0077490c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00774910  cc ff ff ea                                      b #0x774848
00774914  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00774918, declared_size=236, range_size=236, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root17set_active_entityEPNS_9characterE
; demangled: gameswf::root::set_active_entity(gameswf::character*)
; decoder-mode: arm
00774918  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0077491c  88 40 90 e5                                      ldr r4, [r0, #0x88]
00774920  14 d0 4d e2                                      sub sp, sp, #0x14
00774924  00 50 a0 e1                                      mov r5, r0
00774928  00 00 54 e3                                      cmp r4, #0
0077492c  01 70 a0 e1                                      mov r7, r1
00774930  2c 00 00 0a                                      beq #0x7749e8
00774934  04 00 a0 e1                                      mov r0, r4
00774938  c9 94 ff eb                                      bl #0x759c64
0077493c  88 00 95 e5                                      ldr r0, [r5, #0x88]
00774940  00 00 54 e1                                      cmp r4, r0
00774944  2a 00 00 0a                                      beq #0x7749f4
00774948  00 00 50 e3                                      cmp r0, #0
0077494c  88 50 85 02                                      addeq r5, r5, #0x88
00774950  0d 00 00 0a                                      beq #0x77498c
00774954  00 30 90 e5                                      ldr r3, [r0]
00774958  00 60 a0 e3                                      mov r6, #0
0077495c  15 20 a0 e3                                      mov r2, #0x15
00774960  2c 30 93 e5                                      ldr r3, [r3, #0x2c]
00774964  08 10 8d e2                                      add r1, sp, #8
00774968  08 20 cd e5                                      strb r2, [sp, #8]
0077496c  09 60 cd e5                                      strb r6, [sp, #9]
00774970  ba 60 cd e1                                      strh r6, [sp, #0xa]
00774974  0c 60 8d e5                                      str r6, [sp, #0xc]
00774978  88 50 85 e2                                      add r5, r5, #0x88
0077497c  33 ff 2f e1                                      blx r3
00774980  06 10 a0 e1                                      mov r1, r6
00774984  05 00 a0 e1                                      mov r0, r5
00774988  ff 81 ff eb                                      bl #0x75518c
0077498c  00 30 94 e5                                      ldr r3, [r4]
00774990  00 20 a0 e3                                      mov r2, #0
00774994  14 10 a0 e3                                      mov r1, #0x14
00774998  2c 30 93 e5                                      ldr r3, [r3, #0x2c]
0077499c  04 00 a0 e1                                      mov r0, r4
007749a0  00 10 cd e5                                      strb r1, [sp]
007749a4  04 20 8d e5                                      str r2, [sp, #4]
007749a8  01 20 cd e5                                      strb r2, [sp, #1]
007749ac  b2 20 cd e1                                      strh r2, [sp, #2]
007749b0  0d 10 a0 e1                                      mov r1, sp
007749b4  33 ff 2f e1                                      blx r3
007749b8  00 00 50 e3                                      cmp r0, #0
007749bc  02 00 00 0a                                      beq #0x7749cc
007749c0  05 00 a0 e1                                      mov r0, r5
007749c4  04 10 a0 e1                                      mov r1, r4
007749c8  ef 81 ff eb                                      bl #0x75518c
007749cc  05 00 a0 e1                                      mov r0, r5
007749d0  07 10 a0 e1                                      mov r1, r7
007749d4  ec 81 ff eb                                      bl #0x75518c
007749d8  04 00 a0 e1                                      mov r0, r4
007749dc  17 96 ff eb                                      bl #0x75a240
007749e0  14 d0 8d e2                                      add sp, sp, #0x14
007749e4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
007749e8  88 00 80 e2                                      add r0, r0, #0x88
007749ec  e6 81 ff eb                                      bl #0x75518c
007749f0  fa ff ff ea                                      b #0x7749e0
007749f4  88 00 85 e2                                      add r0, r5, #0x88
007749f8  07 10 a0 e1                                      mov r1, r7
007749fc  e2 81 ff eb                                      bl #0x75518c
00774a00  f4 ff ff ea                                      b #0x7749d8

; FUNCTION 0x00774a04, declared_size=1208, range_size=1208, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root28generate_mouse_button_eventsEPNS_18mouse_button_stateE
; demangled: gameswf::root::generate_mouse_button_events(gameswf::mouse_button_state*)
; decoder-mode: arm
00774a04  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00774a08  00 30 91 e5                                      ldr r3, [r1]
00774a0c  a0 74 9f e5                                      ldr r7, [pc, #0x4a0]
00774a10  5c d0 4d e2                                      sub sp, sp, #0x5c
00774a14  00 00 53 e3                                      cmp r3, #0
00774a18  54 30 8d e5                                      str r3, [sp, #0x54]
00774a1c  01 40 a0 e1                                      mov r4, r1
00774a20  00 60 a0 e1                                      mov r6, r0
00774a24  07 70 8f e0                                      add r7, pc, r7
00774a28  01 00 00 0a                                      beq #0x774a34
00774a2c  03 00 a0 e1                                      mov r0, r3
00774a30  8b 94 ff eb                                      bl #0x759c64
00774a34  04 50 94 e5                                      ldr r5, [r4, #4]
00774a38  00 00 55 e3                                      cmp r5, #0
00774a3c  01 00 00 0a                                      beq #0x774a48
00774a40  05 00 a0 e1                                      mov r0, r5
00774a44  86 94 ff eb                                      bl #0x759c64
00774a48  54 20 9d e5                                      ldr r2, [sp, #0x54]
00774a4c  00 00 52 e3                                      cmp r2, #0
00774a50  fe 00 00 0a                                      beq #0x774e50
00774a54  02 00 a0 e1                                      mov r0, r2
00774a58  00 30 92 e5                                      ldr r3, [r2]
00774a5c  0f e0 a0 e1                                      mov lr, pc
00774a60  5c f1 93 e5                                      ldr pc, [r3, #0x15c]
00774a64  00 10 50 e2                                      subs r1, r0, #0
00774a68  7b 00 00 0a                                      beq #0x774c5c
00774a6c  44 34 9f e5                                      ldr r3, [pc, #0x444]
00774a70  03 30 97 e7                                      ldr r3, [r7, r3]
00774a74  00 30 93 e5                                      ldr r3, [r3]
00774a78  00 00 53 e3                                      cmp r3, #0
00774a7c  04 00 00 0a                                      beq #0x774a94
00774a80  03 00 a0 e1                                      mov r0, r3
00774a84  01 10 a0 e3                                      mov r1, #1
00774a88  00 30 93 e5                                      ldr r3, [r3]
00774a8c  0f e0 a0 e1                                      mov lr, pc
00774a90  98 f0 93 e5                                      ldr pc, [r3, #0x98]
00774a94  08 30 d4 e5                                      ldrb r3, [r4, #8]
00774a98  54 20 9d e5                                      ldr r2, [sp, #0x54]
00774a9c  00 00 53 e3                                      cmp r3, #0
00774aa0  02 10 a0 e1                                      mov r1, r2
00774aa4  7a 00 00 1a                                      bne #0x774c94
00774aa8  01 00 55 e1                                      cmp r5, r1
00774aac  05 10 a0 01                                      moveq r1, r5
00774ab0  21 00 00 0a                                      beq #0x774b3c
00774ab4  00 00 51 e3                                      cmp r1, #0
00774ab8  0a 00 00 0a                                      beq #0x774ae8
00774abc  00 30 91 e5                                      ldr r3, [r1]
00774ac0  00 20 a0 e3                                      mov r2, #0
00774ac4  05 00 a0 e3                                      mov r0, #5
00774ac8  2c 30 93 e5                                      ldr r3, [r3, #0x2c]
00774acc  24 00 cd e5                                      strb r0, [sp, #0x24]
00774ad0  28 20 8d e5                                      str r2, [sp, #0x28]
00774ad4  01 00 a0 e1                                      mov r0, r1
00774ad8  25 20 cd e5                                      strb r2, [sp, #0x25]
00774adc  b6 22 cd e1                                      strh r2, [sp, #0x26]
00774ae0  24 10 8d e2                                      add r1, sp, #0x24
00774ae4  33 ff 2f e1                                      blx r3
00774ae8  54 00 8d e2                                      add r0, sp, #0x54
00774aec  05 10 a0 e1                                      mov r1, r5
00774af0  a5 81 ff eb                                      bl #0x75518c
00774af4  54 20 9d e5                                      ldr r2, [sp, #0x54]
00774af8  00 00 52 e3                                      cmp r2, #0
00774afc  0b 00 00 0a                                      beq #0x774b30
00774b00  00 30 92 e5                                      ldr r3, [r2]
00774b04  00 10 a0 e3                                      mov r1, #0
00774b08  04 00 a0 e3                                      mov r0, #4
00774b0c  2c 30 93 e5                                      ldr r3, [r3, #0x2c]
00774b10  1c 00 cd e5                                      strb r0, [sp, #0x1c]
00774b14  20 10 8d e5                                      str r1, [sp, #0x20]
00774b18  02 00 a0 e1                                      mov r0, r2
00774b1c  1d 10 cd e5                                      strb r1, [sp, #0x1d]
00774b20  be 11 cd e1                                      strh r1, [sp, #0x1e]
00774b24  1c 10 8d e2                                      add r1, sp, #0x1c
00774b28  33 ff 2f e1                                      blx r3
00774b2c  54 20 9d e5                                      ldr r2, [sp, #0x54]
00774b30  01 30 a0 e3                                      mov r3, #1
00774b34  0a 30 c4 e5                                      strb r3, [r4, #0xa]
00774b38  02 10 a0 e1                                      mov r1, r2
00774b3c  09 30 d4 e5                                      ldrb r3, [r4, #9]
00774b40  00 00 53 e3                                      cmp r3, #0
00774b44  35 00 00 0a                                      beq #0x774c20
00774b48  88 00 96 e5                                      ldr r0, [r6, #0x88]
00774b4c  01 00 50 e1                                      cmp r0, r1
00774b50  21 00 00 0a                                      beq #0x774bdc
00774b54  00 00 50 e3                                      cmp r0, #0
00774b58  0e 00 00 0a                                      beq #0x774b98
00774b5c  00 30 90 e5                                      ldr r3, [r0]
00774b60  00 70 a0 e3                                      mov r7, #0
00774b64  15 20 a0 e3                                      mov r2, #0x15
00774b68  2c 30 93 e5                                      ldr r3, [r3, #0x2c]
00774b6c  14 10 8d e2                                      add r1, sp, #0x14
00774b70  14 20 cd e5                                      strb r2, [sp, #0x14]
00774b74  15 70 cd e5                                      strb r7, [sp, #0x15]
00774b78  b6 71 cd e1                                      strh r7, [sp, #0x16]
00774b7c  18 70 8d e5                                      str r7, [sp, #0x18]
00774b80  33 ff 2f e1                                      blx r3
00774b84  07 10 a0 e1                                      mov r1, r7
00774b88  88 00 86 e2                                      add r0, r6, #0x88
00774b8c  7e 81 ff eb                                      bl #0x75518c
00774b90  54 20 9d e5                                      ldr r2, [sp, #0x54]
00774b94  02 10 a0 e1                                      mov r1, r2
00774b98  00 00 51 e3                                      cmp r1, #0
00774b9c  1b 00 00 0a                                      beq #0x774c10
00774ba0  00 30 91 e5                                      ldr r3, [r1]
00774ba4  00 20 a0 e3                                      mov r2, #0
00774ba8  14 00 a0 e3                                      mov r0, #0x14
00774bac  2c 30 93 e5                                      ldr r3, [r3, #0x2c]
00774bb0  0c 00 cd e5                                      strb r0, [sp, #0xc]
00774bb4  10 20 8d e5                                      str r2, [sp, #0x10]
00774bb8  01 00 a0 e1                                      mov r0, r1
00774bbc  0d 20 cd e5                                      strb r2, [sp, #0xd]
00774bc0  be 20 cd e1                                      strh r2, [sp, #0xe]
00774bc4  0c 10 8d e2                                      add r1, sp, #0xc
00774bc8  33 ff 2f e1                                      blx r3
00774bcc  00 00 50 e3                                      cmp r0, #0
00774bd0  88 00 00 1a                                      bne #0x774df8
00774bd4  54 20 9d e5                                      ldr r2, [sp, #0x54]
00774bd8  02 00 a0 e1                                      mov r0, r2
00774bdc  00 00 50 e3                                      cmp r0, #0
00774be0  0a 00 00 0a                                      beq #0x774c10
00774be4  00 30 90 e5                                      ldr r3, [r0]
00774be8  00 20 a0 e3                                      mov r2, #0
00774bec  01 10 a0 e3                                      mov r1, #1
00774bf0  2c 30 93 e5                                      ldr r3, [r3, #0x2c]
00774bf4  04 10 cd e5                                      strb r1, [sp, #4]
00774bf8  08 20 8d e5                                      str r2, [sp, #8]
00774bfc  05 20 cd e5                                      strb r2, [sp, #5]
00774c00  b6 20 cd e1                                      strh r2, [sp, #6]
00774c04  04 10 8d e2                                      add r1, sp, #4
00774c08  33 ff 2f e1                                      blx r3
00774c0c  54 20 9d e5                                      ldr r2, [sp, #0x54]
00774c10  01 30 a0 e3                                      mov r3, #1
00774c14  08 30 c4 e5                                      strb r3, [r4, #8]
00774c18  0a 30 c4 e5                                      strb r3, [r4, #0xa]
00774c1c  02 10 a0 e1                                      mov r1, r2
00774c20  04 00 a0 e1                                      mov r0, r4
00774c24  58 81 ff eb                                      bl #0x75518c
00774c28  04 00 84 e2                                      add r0, r4, #4
00774c2c  05 10 a0 e1                                      mov r1, r5
00774c30  55 81 ff eb                                      bl #0x75518c
00774c34  00 00 55 e3                                      cmp r5, #0
00774c38  01 00 00 0a                                      beq #0x774c44
00774c3c  05 00 a0 e1                                      mov r0, r5
00774c40  7e 95 ff eb                                      bl #0x75a240
00774c44  54 00 9d e5                                      ldr r0, [sp, #0x54]
00774c48  00 00 50 e3                                      cmp r0, #0
00774c4c  00 00 00 0a                                      beq #0x774c54
00774c50  7a 95 ff eb                                      bl #0x75a240
00774c54  5c d0 8d e2                                      add sp, sp, #0x5c
00774c58  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00774c5c  54 32 9f e5                                      ldr r3, [pc, #0x254]
00774c60  03 30 97 e7                                      ldr r3, [r7, r3]
00774c64  00 30 93 e5                                      ldr r3, [r3]
00774c68  00 00 53 e3                                      cmp r3, #0
00774c6c  88 ff ff 0a                                      beq #0x774a94
00774c70  03 00 a0 e1                                      mov r0, r3
00774c74  00 30 93 e5                                      ldr r3, [r3]
00774c78  0f e0 a0 e1                                      mov lr, pc
00774c7c  98 f0 93 e5                                      ldr pc, [r3, #0x98]
00774c80  54 20 9d e5                                      ldr r2, [sp, #0x54]
00774c84  08 30 d4 e5                                      ldrb r3, [r4, #8]
00774c88  02 10 a0 e1                                      mov r1, r2
00774c8c  00 00 53 e3                                      cmp r3, #0
00774c90  84 ff ff 0a                                      beq #0x774aa8
00774c94  00 00 51 e3                                      cmp r1, #0
00774c98  27 00 00 0a                                      beq #0x774d3c
00774c9c  01 00 a0 e1                                      mov r0, r1
00774ca0  00 30 91 e5                                      ldr r3, [r1]
00774ca4  0f e0 a0 e1                                      mov lr, pc
00774ca8  74 f0 93 e5                                      ldr pc, [r3, #0x74]
00774cac  00 00 50 e3                                      cmp r0, #0
00774cb0  1f 00 00 1a                                      bne #0x774d34
00774cb4  54 20 9d e5                                      ldr r2, [sp, #0x54]
00774cb8  02 10 a0 e1                                      mov r1, r2
00774cbc  0a c0 d4 e5                                      ldrb ip, [r4, #0xa]
00774cc0  00 00 5c e3                                      cmp ip, #0
00774cc4  38 00 00 1a                                      bne #0x774dac
00774cc8  01 00 55 e1                                      cmp r5, r1
00774ccc  68 00 00 0a                                      beq #0x774e74
00774cd0  09 10 d4 e5                                      ldrb r1, [r4, #9]
00774cd4  00 00 51 e3                                      cmp r1, #0
00774cd8  10 00 00 1a                                      bne #0x774d20
00774cdc  00 00 52 e3                                      cmp r2, #0
00774ce0  08 10 c4 e5                                      strb r1, [r4, #8]
00774ce4  10 00 00 0a                                      beq #0x774d2c
00774ce8  0a 30 d4 e5                                      ldrb r3, [r4, #0xa]
00774cec  00 00 53 e3                                      cmp r3, #0
00774cf0  44 00 00 0a                                      beq #0x774e08
00774cf4  00 30 92 e5                                      ldr r3, [r2]
00774cf8  02 00 a0 e1                                      mov r0, r2
00774cfc  02 20 a0 e3                                      mov r2, #2
00774d00  2c 30 93 e5                                      ldr r3, [r3, #0x2c]
00774d04  34 20 cd e5                                      strb r2, [sp, #0x34]
00774d08  38 10 8d e5                                      str r1, [sp, #0x38]
00774d0c  35 10 cd e5                                      strb r1, [sp, #0x35]
00774d10  b6 13 cd e1                                      strh r1, [sp, #0x36]
00774d14  34 10 8d e2                                      add r1, sp, #0x34
00774d18  33 ff 2f e1                                      blx r3
00774d1c  54 20 9d e5                                      ldr r2, [sp, #0x54]
00774d20  08 30 d4 e5                                      ldrb r3, [r4, #8]
00774d24  00 00 53 e3                                      cmp r3, #0
00774d28  bb ff ff 1a                                      bne #0x774c1c
00774d2c  02 10 a0 e1                                      mov r1, r2
00774d30  5c ff ff ea                                      b #0x774aa8
00774d34  54 20 9d e5                                      ldr r2, [sp, #0x54]
00774d38  02 10 a0 e1                                      mov r1, r2
00774d3c  00 00 55 e3                                      cmp r5, #0
00774d40  dd ff ff 0a                                      beq #0x774cbc
00774d44  01 00 55 e1                                      cmp r5, r1
00774d48  47 00 00 0a                                      beq #0x774e6c
00774d4c  00 30 95 e5                                      ldr r3, [r5]
00774d50  05 00 a0 e1                                      mov r0, r5
00774d54  0f e0 a0 e1                                      mov lr, pc
00774d58  74 f0 93 e5                                      ldr pc, [r3, #0x74]
00774d5c  00 00 50 e3                                      cmp r0, #0
00774d60  d3 ff ff 0a                                      beq #0x774cb4
00774d64  54 00 8d e2                                      add r0, sp, #0x54
00774d68  05 10 a0 e1                                      mov r1, r5
00774d6c  06 81 ff eb                                      bl #0x75518c
00774d70  54 00 9d e5                                      ldr r0, [sp, #0x54]
00774d74  00 20 a0 e3                                      mov r2, #0
00774d78  06 c0 a0 e3                                      mov ip, #6
00774d7c  00 30 90 e5                                      ldr r3, [r0]
00774d80  4c 10 8d e2                                      add r1, sp, #0x4c
00774d84  2c 30 93 e5                                      ldr r3, [r3, #0x2c]
00774d88  50 20 8d e5                                      str r2, [sp, #0x50]
00774d8c  4d 20 cd e5                                      strb r2, [sp, #0x4d]
00774d90  be 24 cd e1                                      strh r2, [sp, #0x4e]
00774d94  4c c0 cd e5                                      strb ip, [sp, #0x4c]
00774d98  33 ff 2f e1                                      blx r3
00774d9c  54 20 9d e5                                      ldr r2, [sp, #0x54]
00774da0  01 30 a0 e3                                      mov r3, #1
00774da4  0a 30 c4 e5                                      strb r3, [r4, #0xa]
00774da8  02 10 a0 e1                                      mov r1, r2
00774dac  05 00 51 e1                                      cmp r1, r5
00774db0  c6 ff ff 0a                                      beq #0x774cd0
00774db4  00 00 51 e3                                      cmp r1, #0
00774db8  0b 00 00 0a                                      beq #0x774dec
00774dbc  00 30 91 e5                                      ldr r3, [r1]
00774dc0  00 20 a0 e3                                      mov r2, #0
00774dc4  07 00 a0 e3                                      mov r0, #7
00774dc8  2c 30 93 e5                                      ldr r3, [r3, #0x2c]
00774dcc  3c 00 cd e5                                      strb r0, [sp, #0x3c]
00774dd0  40 20 8d e5                                      str r2, [sp, #0x40]
00774dd4  3d 20 cd e5                                      strb r2, [sp, #0x3d]
00774dd8  be 23 cd e1                                      strh r2, [sp, #0x3e]
00774ddc  01 00 a0 e1                                      mov r0, r1
00774de0  3c 10 8d e2                                      add r1, sp, #0x3c
00774de4  33 ff 2f e1                                      blx r3
00774de8  54 20 9d e5                                      ldr r2, [sp, #0x54]
00774dec  00 30 a0 e3                                      mov r3, #0
00774df0  0a 30 c4 e5                                      strb r3, [r4, #0xa]
00774df4  b5 ff ff ea                                      b #0x774cd0
00774df8  88 00 86 e2                                      add r0, r6, #0x88
00774dfc  54 10 9d e5                                      ldr r1, [sp, #0x54]
00774e00  e1 80 ff eb                                      bl #0x75518c
00774e04  72 ff ff ea                                      b #0x774bd4
00774e08  02 00 a0 e1                                      mov r0, r2
00774e0c  00 30 92 e5                                      ldr r3, [r2]
00774e10  0f e0 a0 e1                                      mov lr, pc
00774e14  74 f0 93 e5                                      ldr pc, [r3, #0x74]
00774e18  00 20 50 e2                                      subs r2, r0, #0
00774e1c  09 00 00 1a                                      bne #0x774e48
00774e20  54 00 9d e5                                      ldr r0, [sp, #0x54]
00774e24  03 c0 a0 e3                                      mov ip, #3
00774e28  2c 10 8d e2                                      add r1, sp, #0x2c
00774e2c  00 30 90 e5                                      ldr r3, [r0]
00774e30  2c 30 93 e5                                      ldr r3, [r3, #0x2c]
00774e34  2c c0 cd e5                                      strb ip, [sp, #0x2c]
00774e38  30 20 8d e5                                      str r2, [sp, #0x30]
00774e3c  2d 20 cd e5                                      strb r2, [sp, #0x2d]
00774e40  be 22 cd e1                                      strh r2, [sp, #0x2e]
00774e44  33 ff 2f e1                                      blx r3
00774e48  54 20 9d e5                                      ldr r2, [sp, #0x54]
00774e4c  b3 ff ff ea                                      b #0x774d20
00774e50  60 30 9f e5                                      ldr r3, [pc, #0x60]
00774e54  03 30 97 e7                                      ldr r3, [r7, r3]
00774e58  00 30 93 e5                                      ldr r3, [r3]
00774e5c  00 00 53 e3                                      cmp r3, #0
00774e60  02 10 a0 11                                      movne r1, r2
00774e64  81 ff ff 1a                                      bne #0x774c70
00774e68  85 ff ff ea                                      b #0x774c84
00774e6c  05 10 a0 e1                                      mov r1, r5
00774e70  91 ff ff ea                                      b #0x774cbc
00774e74  00 00 55 e3                                      cmp r5, #0
00774e78  0a 00 00 0a                                      beq #0x774ea8
00774e7c  00 30 95 e5                                      ldr r3, [r5]
00774e80  06 20 a0 e3                                      mov r2, #6
00774e84  05 00 a0 e1                                      mov r0, r5
00774e88  2c 30 93 e5                                      ldr r3, [r3, #0x2c]
00774e8c  44 10 8d e2                                      add r1, sp, #0x44
00774e90  44 20 cd e5                                      strb r2, [sp, #0x44]
00774e94  48 c0 8d e5                                      str ip, [sp, #0x48]
00774e98  45 c0 cd e5                                      strb ip, [sp, #0x45]
00774e9c  b6 c4 cd e1                                      strh ip, [sp, #0x46]
00774ea0  33 ff 2f e1                                      blx r3
00774ea4  54 20 9d e5                                      ldr r2, [sp, #0x54]
00774ea8  01 30 a0 e3                                      mov r3, #1
00774eac  0a 30 c4 e5                                      strb r3, [r4, #0xa]
00774eb0  86 ff ff ea                                      b #0x774cd0
; mapping-symbol data/literal pool
00774eb4  6c 00 22 00 b4 39 00 00                          .byte 0x6c, 0x00, 0x22, 0x00, 0xb4, 0x39, 0x00, 0x00

; FUNCTION 0x00774ebc, declared_size=264, range_size=264, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4rootD2Ev
; demangled: gameswf::root::~root()
; decoder-mode: arm
00774ebc  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
00774ec0  f8 20 9f e5                                      ldr r2, [pc, #0xf8]
00774ec4  70 40 2d e9                                      push {r4, r5, r6, lr}
00774ec8  03 30 8f e0                                      add r3, pc, r3
00774ecc  02 20 93 e7                                      ldr r2, [r3, r2]
00774ed0  00 40 a0 e1                                      mov r4, r0
00774ed4  00 10 a0 e3                                      mov r1, #0
00774ed8  08 20 82 e2                                      add r2, r2, #8
00774edc  10 20 80 e4                                      str r2, [r0], #0x10
00774ee0  a9 80 ff eb                                      bl #0x75518c
00774ee4  0c 00 84 e2                                      add r0, r4, #0xc
00774ee8  d3 fd ff eb                                      bl #0x77463c
00774eec  c8 00 94 e5                                      ldr r0, [r4, #0xc8]
00774ef0  00 00 50 e3                                      cmp r0, #0
00774ef4  04 00 00 0a                                      beq #0x774f0c
00774ef8  00 10 90 e5                                      ldr r1, [r0]
00774efc  01 10 41 e2                                      sub r1, r1, #1
00774f00  00 00 51 e3                                      cmp r1, #0
00774f04  00 10 80 e5                                      str r1, [r0]
00774f08  29 00 00 0a                                      beq #0x774fb4
00774f0c  b8 50 84 e2                                      add r5, r4, #0xb8
00774f10  05 00 a0 e1                                      mov r0, r5
00774f14  a3 fd ff eb                                      bl #0x7745a8
00774f18  05 00 a0 e1                                      mov r0, r5
00774f1c  00 10 a0 e3                                      mov r1, #0
00774f20  a8 50 84 e2                                      add r5, r4, #0xa8
00774f24  8d ad ff eb                                      bl #0x760560
00774f28  05 00 a0 e1                                      mov r0, r5
00774f2c  9d fd ff eb                                      bl #0x7745a8
00774f30  05 00 a0 e1                                      mov r0, r5
00774f34  00 10 a0 e3                                      mov r1, #0
00774f38  98 50 84 e2                                      add r5, r4, #0x98
00774f3c  87 ad ff eb                                      bl #0x760560
00774f40  05 00 a0 e1                                      mov r0, r5
00774f44  3f fe ff eb                                      bl #0x774848
00774f48  05 00 a0 e1                                      mov r0, r5
00774f4c  00 10 a0 e3                                      mov r1, #0
00774f50  12 82 ff eb                                      bl #0x7557a0
00774f54  88 00 94 e5                                      ldr r0, [r4, #0x88]
00774f58  00 00 50 e3                                      cmp r0, #0
00774f5c  00 00 00 0a                                      beq #0x774f64
00774f60  b6 94 ff eb                                      bl #0x75a240
00774f64  7c 00 94 e5                                      ldr r0, [r4, #0x7c]
00774f68  00 00 50 e3                                      cmp r0, #0
00774f6c  00 00 00 0a                                      beq #0x774f74
00774f70  b2 94 ff eb                                      bl #0x75a240
00774f74  78 00 94 e5                                      ldr r0, [r4, #0x78]
00774f78  00 00 50 e3                                      cmp r0, #0
00774f7c  00 00 00 0a                                      beq #0x774f84
00774f80  ae 94 ff eb                                      bl #0x75a240
00774f84  10 00 94 e5                                      ldr r0, [r4, #0x10]
00774f88  00 00 50 e3                                      cmp r0, #0
00774f8c  00 00 00 0a                                      beq #0x774f94
00774f90  aa 94 ff eb                                      bl #0x75a240
00774f94  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00774f98  00 00 50 e3                                      cmp r0, #0
00774f9c  00 00 00 0a                                      beq #0x774fa4
00774fa0  a6 94 ff eb                                      bl #0x75a240
00774fa4  04 00 a0 e1                                      mov r0, r4
00774fa8  3d a3 ff eb                                      bl #0x75dca4
00774fac  04 00 a0 e1                                      mov r0, r4
00774fb0  70 80 bd e8                                      pop {r4, r5, r6, pc}
00774fb4  df 76 ff eb                                      bl #0x752b38
00774fb8  d3 ff ff ea                                      b #0x774f0c
; mapping-symbol data/literal pool
00774fbc  c8 fb 21 00 c0 36 00 00                          .byte 0xc8, 0xfb, 0x21, 0x00, 0xc0, 0x36, 0x00, 0x00

; FUNCTION 0x00774fc4, declared_size=264, range_size=264, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4rootD1Ev
; demangled: gameswf::root::~root()
; decoder-mode: arm
00774fc4  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
00774fc8  f8 20 9f e5                                      ldr r2, [pc, #0xf8]
00774fcc  70 40 2d e9                                      push {r4, r5, r6, lr}
00774fd0  03 30 8f e0                                      add r3, pc, r3
00774fd4  02 20 93 e7                                      ldr r2, [r3, r2]
00774fd8  00 40 a0 e1                                      mov r4, r0
00774fdc  00 10 a0 e3                                      mov r1, #0
00774fe0  08 20 82 e2                                      add r2, r2, #8
00774fe4  10 20 80 e4                                      str r2, [r0], #0x10
00774fe8  67 80 ff eb                                      bl #0x75518c
00774fec  0c 00 84 e2                                      add r0, r4, #0xc
00774ff0  91 fd ff eb                                      bl #0x77463c
00774ff4  c8 00 94 e5                                      ldr r0, [r4, #0xc8]
00774ff8  00 00 50 e3                                      cmp r0, #0
00774ffc  04 00 00 0a                                      beq #0x775014
00775000  00 10 90 e5                                      ldr r1, [r0]
00775004  01 10 41 e2                                      sub r1, r1, #1
00775008  00 00 51 e3                                      cmp r1, #0
0077500c  00 10 80 e5                                      str r1, [r0]
00775010  29 00 00 0a                                      beq #0x7750bc
00775014  b8 50 84 e2                                      add r5, r4, #0xb8
00775018  05 00 a0 e1                                      mov r0, r5
0077501c  61 fd ff eb                                      bl #0x7745a8
00775020  05 00 a0 e1                                      mov r0, r5
00775024  00 10 a0 e3                                      mov r1, #0
00775028  a8 50 84 e2                                      add r5, r4, #0xa8
0077502c  4b ad ff eb                                      bl #0x760560
00775030  05 00 a0 e1                                      mov r0, r5
00775034  5b fd ff eb                                      bl #0x7745a8
00775038  05 00 a0 e1                                      mov r0, r5
0077503c  00 10 a0 e3                                      mov r1, #0
00775040  98 50 84 e2                                      add r5, r4, #0x98
00775044  45 ad ff eb                                      bl #0x760560
00775048  05 00 a0 e1                                      mov r0, r5
0077504c  fd fd ff eb                                      bl #0x774848
00775050  05 00 a0 e1                                      mov r0, r5
00775054  00 10 a0 e3                                      mov r1, #0
00775058  d0 81 ff eb                                      bl #0x7557a0
0077505c  88 00 94 e5                                      ldr r0, [r4, #0x88]
00775060  00 00 50 e3                                      cmp r0, #0
00775064  00 00 00 0a                                      beq #0x77506c
00775068  74 94 ff eb                                      bl #0x75a240
0077506c  7c 00 94 e5                                      ldr r0, [r4, #0x7c]
00775070  00 00 50 e3                                      cmp r0, #0
00775074  00 00 00 0a                                      beq #0x77507c
00775078  70 94 ff eb                                      bl #0x75a240
0077507c  78 00 94 e5                                      ldr r0, [r4, #0x78]
00775080  00 00 50 e3                                      cmp r0, #0
00775084  00 00 00 0a                                      beq #0x77508c
00775088  6c 94 ff eb                                      bl #0x75a240
0077508c  10 00 94 e5                                      ldr r0, [r4, #0x10]
00775090  00 00 50 e3                                      cmp r0, #0
00775094  00 00 00 0a                                      beq #0x77509c
00775098  68 94 ff eb                                      bl #0x75a240
0077509c  0c 00 94 e5                                      ldr r0, [r4, #0xc]
007750a0  00 00 50 e3                                      cmp r0, #0
007750a4  00 00 00 0a                                      beq #0x7750ac
007750a8  64 94 ff eb                                      bl #0x75a240
007750ac  04 00 a0 e1                                      mov r0, r4
007750b0  fb a2 ff eb                                      bl #0x75dca4
007750b4  04 00 a0 e1                                      mov r0, r4
007750b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
007750bc  9d 76 ff eb                                      bl #0x752b38
007750c0  d3 ff ff ea                                      b #0x775014
; mapping-symbol data/literal pool
007750c4  c0 fa 21 00 c0 36 00 00                          .byte 0xc0, 0xfa, 0x21, 0x00, 0xc0, 0x36, 0x00, 0x00

; FUNCTION 0x007750cc, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4rootD0Ev
; demangled: gameswf::root::~root()
; decoder-mode: arm
007750cc  10 40 2d e9                                      push {r4, lr}
007750d0  00 40 a0 e1                                      mov r4, r0
007750d4  ba ff ff eb                                      bl #0x774fc4
007750d8  04 00 a0 e1                                      mov r0, r4
007750dc  73 64 ee eb                                      bl #0x30e2b0
007750e0  04 00 a0 e1                                      mov r0, r4
007750e4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00775154, declared_size=104, range_size=104, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root10start_dragEPNS_9characterEbbRNS_4rectE
; demangled: gameswf::root::start_drag(gameswf::character*, bool, bool, gameswf::rect&)
; decoder-mode: arm
00775154  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00775158  58 c0 90 e5                                      ldr ip, [r0, #0x58]
0077515c  00 40 a0 e1                                      mov r4, r0
00775160  01 50 a0 e1                                      mov r5, r1
00775164  00 00 5c e3                                      cmp ip, #0
00775168  02 60 a0 e1                                      mov r6, r2
0077516c  03 80 a0 e1                                      mov r8, r3
00775170  18 70 9d e5                                      ldr r7, [sp, #0x18]
00775174  00 00 00 0a                                      beq #0x77517c
00775178  f7 fb ff eb                                      bl #0x77415c
0077517c  5d 60 c4 e5                                      strb r6, [r4, #0x5d]
00775180  5e 80 c4 e5                                      strb r8, [r4, #0x5e]
00775184  58 50 84 e5                                      str r5, [r4, #0x58]
00775188  00 30 97 e5                                      ldr r3, [r7]
0077518c  00 20 a0 e3                                      mov r2, #0
00775190  05 00 a0 e1                                      mov r0, r5
00775194  60 30 84 e5                                      str r3, [r4, #0x60]
00775198  08 30 97 e5                                      ldr r3, [r7, #8]
0077519c  64 30 84 e5                                      str r3, [r4, #0x64]
007751a0  04 30 97 e5                                      ldr r3, [r7, #4]
007751a4  68 30 84 e5                                      str r3, [r4, #0x68]
007751a8  0c 30 97 e5                                      ldr r3, [r7, #0xc]
007751ac  5c 20 c4 e5                                      strb r2, [r4, #0x5c]
007751b0  6c 30 84 e5                                      str r3, [r4, #0x6c]
007751b4  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
007751b8  ca ff ff ea                                      b #0x7750e8

; FUNCTION 0x007751bc, declared_size=328, range_size=328, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root13begin_displayEv
; demangled: gameswf::root::begin_display()
; decoder-mode: arm
007751bc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
007751c0  0c 30 90 e5                                      ldr r3, [r0, #0xc]
007751c4  34 d0 4d e2                                      sub sp, sp, #0x34
007751c8  2c 51 9f e5                                      ldr r5, [pc, #0x12c]
007751cc  bc c0 93 e5                                      ldr ip, [r3, #0xbc]
007751d0  b4 20 93 e5                                      ldr r2, [r3, #0xb4]
007751d4  24 61 9f e5                                      ldr r6, [pc, #0x124]
007751d8  28 c0 8d e5                                      str ip, [sp, #0x28]
007751dc  24 20 8d e5                                      str r2, [sp, #0x24]
007751e0  b8 20 93 e5                                      ldr r2, [r3, #0xb8]
007751e4  c0 30 93 e5                                      ldr r3, [r3, #0xc0]
007751e8  00 40 a0 e1                                      mov r4, r0
007751ec  24 10 8d e2                                      add r1, sp, #0x24
007751f0  20 30 8d e5                                      str r3, [sp, #0x20]
007751f4  05 50 8f e0                                      add r5, pc, r5
007751f8  1c 20 8d e5                                      str r2, [sp, #0x1c]
007751fc  53 fb ff eb                                      bl #0x773f50
00775200  04 00 a0 e1                                      mov r0, r4
00775204  1c 10 8d e2                                      add r1, sp, #0x1c
00775208  50 fb ff eb                                      bl #0x773f50
0077520c  06 30 95 e7                                      ldr r3, [r5, r6]
00775210  00 30 93 e5                                      ldr r3, [r3]
00775214  00 00 53 e3                                      cmp r3, #0
00775218  04 00 00 0a                                      beq #0x775230
0077521c  03 00 a0 e1                                      mov r0, r3
00775220  00 10 a0 e3                                      mov r1, #0
00775224  00 30 93 e5                                      ldr r3, [r3]
00775228  0f e0 a0 e1                                      mov lr, pc
0077522c  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00775230  cc 30 94 e5                                      ldr r3, [r4, #0xcc]
00775234  00 00 53 e3                                      cmp r3, #0
00775238  03 00 00 0a                                      beq #0x77524c
0077523c  c8 00 94 e5                                      ldr r0, [r4, #0xc8]
00775240  04 20 d0 e5                                      ldrb r2, [r0, #4]
00775244  00 00 52 e3                                      cmp r2, #0
00775248  21 00 00 0a                                      beq #0x7752d4
0077524c  06 50 95 e7                                      ldr r5, [r5, r6]
00775250  ac 10 93 e5                                      ldr r1, [r3, #0xac]
00775254  00 30 95 e5                                      ldr r3, [r5]
00775258  00 00 53 e3                                      cmp r3, #0
0077525c  1a 00 00 0a                                      beq #0x7752cc
00775260  03 00 a0 e1                                      mov r0, r3
00775264  00 30 93 e5                                      ldr r3, [r3]
00775268  0f e0 a0 e1                                      mov lr, pc
0077526c  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00775270  00 c0 95 e5                                      ldr ip, [r5]
00775274  38 10 94 e5                                      ldr r1, [r4, #0x38]
00775278  14 20 94 e5                                      ldr r2, [r4, #0x14]
0077527c  00 00 5c e3                                      cmp ip, #0
00775280  2c 10 8d e5                                      str r1, [sp, #0x2c]
00775284  18 30 94 e5                                      ldr r3, [r4, #0x18]
00775288  1c 60 94 e5                                      ldr r6, [r4, #0x1c]
0077528c  20 50 94 e5                                      ldr r5, [r4, #0x20]
00775290  1c 70 9d e5                                      ldr r7, [sp, #0x1c]
00775294  24 40 9d e5                                      ldr r4, [sp, #0x24]
00775298  28 80 9d e5                                      ldr r8, [sp, #0x28]
0077529c  20 a0 9d e5                                      ldr sl, [sp, #0x20]
007752a0  09 00 00 0a                                      beq #0x7752cc
007752a4  0c 00 a0 e1                                      mov r0, ip
007752a8  00 c0 9c e5                                      ldr ip, [ip]
007752ac  00 60 8d e5                                      str r6, [sp]
007752b0  04 50 8d e5                                      str r5, [sp, #4]
007752b4  08 40 8d e5                                      str r4, [sp, #8]
007752b8  0c 70 8d e5                                      str r7, [sp, #0xc]
007752bc  10 80 8d e5                                      str r8, [sp, #0x10]
007752c0  14 a0 8d e5                                      str sl, [sp, #0x14]
007752c4  0f e0 a0 e1                                      mov lr, pc
007752c8  28 f0 9c e5                                      ldr pc, [ip, #0x28]
007752cc  34 d0 8d e2                                      add sp, sp, #0x34
007752d0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
007752d4  00 10 90 e5                                      ldr r1, [r0]
007752d8  01 10 41 e2                                      sub r1, r1, #1
007752dc  00 00 51 e3                                      cmp r1, #0
007752e0  00 10 80 e5                                      str r1, [r0]
007752e4  00 00 00 1a                                      bne #0x7752ec
007752e8  12 76 ff eb                                      bl #0x752b38
007752ec  00 30 a0 e3                                      mov r3, #0
007752f0  c8 30 84 e5                                      str r3, [r4, #0xc8]
007752f4  cc 30 84 e5                                      str r3, [r4, #0xcc]
007752f8  d3 ff ff ea                                      b #0x77524c
; mapping-symbol data/literal pool
007752fc  9c f8 21 00 b4 39 00 00                          .byte 0x9c, 0xf8, 0x21, 0x00, 0xb4, 0x39, 0x00, 0x00

; FUNCTION 0x00775304, declared_size=624, range_size=624, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root7advanceEfb
; demangled: gameswf::root::advance(float, bool)
; decoder-mode: arm
00775304  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00775308  01 50 a0 e1                                      mov r5, r1
0077530c  0c d0 4d e2                                      sub sp, sp, #0xc
00775310  b8 60 80 e2                                      add r6, r0, #0xb8
00775314  00 40 a0 e1                                      mov r4, r0
00775318  02 70 a0 e1                                      mov r7, r2
0077531c  85 fa ff eb                                      bl #0x773d38
00775320  05 10 a0 e1                                      mov r1, r5
00775324  06 00 a0 e1                                      mov r0, r6
00775328  8a ae ff eb                                      bl #0x760d58
0077532c  8c 10 94 e5                                      ldr r1, [r4, #0x8c]
00775330  05 00 a0 e1                                      mov r0, r5
00775334  1a 66 ee eb                                      bl #0x30eba4
00775338  05 10 a0 e1                                      mov r1, r5
0077533c  00 80 a0 e1                                      mov r8, r0
00775340  8c 00 84 e5                                      str r0, [r4, #0x8c]
00775344  94 00 94 e5                                      ldr r0, [r4, #0x94]
00775348  17 64 ee eb                                      bl #0x30e3ac
0077534c  90 10 94 e5                                      ldr r1, [r4, #0x90]
00775350  94 00 84 e5                                      str r0, [r4, #0x94]
00775354  08 00 a0 e1                                      mov r0, r8
00775358  55 64 ee eb                                      bl #0x30e4b4
0077535c  00 00 50 e3                                      cmp r0, #0
00775360  02 00 00 1a                                      bne #0x775370
00775364  73 fa ff eb                                      bl #0x773d38
00775368  0c d0 8d e2                                      add sp, sp, #0xc
0077536c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00775370  48 09 01 eb                                      bl #0x7b7898
00775374  84 30 d4 e5                                      ldrb r3, [r4, #0x84]
00775378  00 00 53 e3                                      cmp r3, #0
0077537c  42 00 00 0a                                      beq #0x77548c
00775380  8c 10 94 e5                                      ldr r1, [r4, #0x8c]
00775384  01 90 a0 e3                                      mov sb, #1
00775388  0a a0 a0 e3                                      mov sl, #0xa
0077538c  0d b0 a0 e1                                      mov fp, sp
00775390  90 00 94 e5                                      ldr r0, [r4, #0x90]
00775394  84 65 ee eb                                      bl #0x30e9ac
00775398  00 00 50 e3                                      cmp r0, #0
0077539c  2e 00 00 0a                                      beq #0x77545c
007753a0  84 30 d4 e5                                      ldrb r3, [r4, #0x84]
007753a4  00 00 53 e3                                      cmp r3, #0
007753a8  10 00 00 1a                                      bne #0x7753f0
007753ac  10 80 94 e5                                      ldr r8, [r4, #0x10]
007753b0  00 00 58 e3                                      cmp r8, #0
007753b4  32 00 00 0a                                      beq #0x775484
007753b8  00 30 98 e5                                      ldr r3, [r8]
007753bc  08 00 a0 e1                                      mov r0, r8
007753c0  02 10 a0 e3                                      mov r1, #2
007753c4  0f e0 a0 e1                                      mov lr, pc
007753c8  08 f0 93 e5                                      ldr pc, [r3, #8]
007753cc  00 00 50 e3                                      cmp r0, #0
007753d0  08 00 a0 11                                      movne r0, r8
007753d4  2a 00 00 0a                                      beq #0x775484
007753d8  af 2c 00 eb                                      bl #0x78069c
007753dc  10 30 94 e5                                      ldr r3, [r4, #0x10]
007753e0  03 00 a0 e1                                      mov r0, r3
007753e4  00 30 93 e5                                      ldr r3, [r3]
007753e8  0f e0 a0 e1                                      mov lr, pc
007753ec  48 f1 93 e5                                      ldr pc, [r3, #0x148]
007753f0  10 00 94 e5                                      ldr r0, [r4, #0x10]
007753f4  00 00 57 e3                                      cmp r7, #0
007753f8  05 10 a0 01                                      moveq r1, r5
007753fc  00 30 90 e5                                      ldr r3, [r0]
00775400  90 10 94 15                                      ldrne r1, [r4, #0x90]
00775404  5c 30 93 e5                                      ldr r3, [r3, #0x5c]
00775408  33 ff 2f e1                                      blx r3
0077540c  84 20 d4 e5                                      ldrb r2, [r4, #0x84]
00775410  00 00 52 e3                                      cmp r2, #0
00775414  09 00 00 1a                                      bne #0x775440
00775418  10 00 94 e5                                      ldr r0, [r4, #0x10]
0077541c  84 90 c4 e5                                      strb sb, [r4, #0x84]
00775420  0d 10 a0 e1                                      mov r1, sp
00775424  00 30 90 e5                                      ldr r3, [r0]
00775428  2c 30 93 e5                                      ldr r3, [r3, #0x2c]
0077542c  04 20 8d e5                                      str r2, [sp, #4]
00775430  00 a0 cd e5                                      strb sl, [sp]
00775434  01 20 cd e5                                      strb r2, [sp, #1]
00775438  b2 20 cd e1                                      strh r2, [sp, #2]
0077543c  33 ff 2f e1                                      blx r3
00775440  8c 00 94 e5                                      ldr r0, [r4, #0x8c]
00775444  90 10 94 e5                                      ldr r1, [r4, #0x90]
00775448  d7 63 ee eb                                      bl #0x30e3ac
0077544c  00 00 57 e3                                      cmp r7, #0
00775450  00 10 a0 e1                                      mov r1, r0
00775454  8c 00 84 e5                                      str r0, [r4, #0x8c]
00775458  cc ff ff 1a                                      bne #0x775390
0077545c  94 00 94 e5                                      ldr r0, [r4, #0x94]
00775460  00 10 a0 e3                                      mov r1, #0
00775464  50 65 ee eb                                      bl #0x30e9ac
00775468  00 00 50 e3                                      cmp r0, #0
0077546c  16 00 00 1a                                      bne #0x7754cc
00775470  8c 00 94 e5                                      ldr r0, [r4, #0x8c]
00775474  90 10 94 e5                                      ldr r1, [r4, #0x90]
00775478  dc 64 ee eb                                      bl #0x30e7f0
0077547c  8c 00 84 e5                                      str r0, [r4, #0x8c]
00775480  b7 ff ff ea                                      b #0x775364
00775484  00 00 a0 e3                                      mov r0, #0
00775488  d2 ff ff ea                                      b #0x7753d8
0077548c  cc 10 94 e5                                      ldr r1, [r4, #0xcc]
00775490  00 00 51 e3                                      cmp r1, #0
00775494  08 00 00 0a                                      beq #0x7754bc
00775498  c8 30 94 e5                                      ldr r3, [r4, #0xc8]
0077549c  04 80 d3 e5                                      ldrb r8, [r3, #4]
007754a0  00 00 58 e3                                      cmp r8, #0
007754a4  04 00 00 1a                                      bne #0x7754bc
007754a8  08 10 a0 e1                                      mov r1, r8
007754ac  c8 00 84 e2                                      add r0, r4, #0xc8
007754b0  73 aa f2 eb                                      bl #0x41fe84
007754b4  cc 80 84 e5                                      str r8, [r4, #0xcc]
007754b8  08 10 a0 e1                                      mov r1, r8
007754bc  68 10 81 e2                                      add r1, r1, #0x68
007754c0  04 00 a0 e1                                      mov r0, r4
007754c4  65 fc ff eb                                      bl #0x774660
007754c8  ac ff ff ea                                      b #0x775380
007754cc  cc 00 94 e5                                      ldr r0, [r4, #0xcc]
007754d0  00 00 50 e3                                      cmp r0, #0
007754d4  03 00 00 0a                                      beq #0x7754e8
007754d8  c8 30 94 e5                                      ldr r3, [r4, #0xc8]
007754dc  04 20 d3 e5                                      ldrb r2, [r3, #4]
007754e0  00 00 52 e3                                      cmp r2, #0
007754e4  17 00 00 0a                                      beq #0x775548
007754e8  c6 dc ff eb                                      bl #0x76c808
007754ec  06 00 a0 e1                                      mov r0, r6
007754f0  12 ad ff eb                                      bl #0x760940
007754f4  10 30 94 e5                                      ldr r3, [r4, #0x10]
007754f8  03 00 a0 e1                                      mov r0, r3
007754fc  00 30 93 e5                                      ldr r3, [r3]
00775500  0f e0 a0 e1                                      mov lr, pc
00775504  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00775508  cc 00 94 e5                                      ldr r0, [r4, #0xcc]
0077550c  00 00 50 e3                                      cmp r0, #0
00775510  08 00 00 0a                                      beq #0x775538
00775514  c8 30 94 e5                                      ldr r3, [r4, #0xc8]
00775518  04 50 d3 e5                                      ldrb r5, [r3, #4]
0077551c  00 00 55 e3                                      cmp r5, #0
00775520  04 00 00 1a                                      bne #0x775538
00775524  c8 00 84 e2                                      add r0, r4, #0xc8
00775528  05 10 a0 e1                                      mov r1, r5
0077552c  54 aa f2 eb                                      bl #0x41fe84
00775530  cc 50 84 e5                                      str r5, [r4, #0xcc]
00775534  05 00 a0 e1                                      mov r0, r5
00775538  6e df ff eb                                      bl #0x76d2f8
0077553c  01 31 a0 e3                                      mov r3, #0x40000000
00775540  94 30 84 e5                                      str r3, [r4, #0x94]
00775544  c9 ff ff ea                                      b #0x775470
00775548  00 10 93 e5                                      ldr r1, [r3]
0077554c  01 10 41 e2                                      sub r1, r1, #1
00775550  00 00 51 e3                                      cmp r1, #0
00775554  00 10 83 e5                                      str r1, [r3]
00775558  01 00 00 1a                                      bne #0x775564
0077555c  03 00 a0 e1                                      mov r0, r3
00775560  74 75 ff eb                                      bl #0x752b38
00775564  00 00 a0 e3                                      mov r0, #0
00775568  c8 00 84 e5                                      str r0, [r4, #0xc8]
0077556c  cc 00 84 e5                                      str r0, [r4, #0xcc]
00775570  dc ff ff ea                                      b #0x7754e8

; FUNCTION 0x00775574, declared_size=128, range_size=128, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root7displayEv
; demangled: gameswf::root::display()
; decoder-mode: arm
00775574  10 40 2d e9                                      push {r4, lr}
00775578  10 30 90 e5                                      ldr r3, [r0, #0x10]
0077557c  00 40 a0 e1                                      mov r4, r0
00775580  9b 30 d3 e5                                      ldrb r3, [r3, #0x9b]
00775584  00 00 53 e3                                      cmp r3, #0
00775588  10 00 00 0a                                      beq #0x7755d0
0077558c  84 20 d0 e5                                      ldrb r2, [r0, #0x84]
00775590  00 00 52 e3                                      cmp r2, #0
00775594  0e 00 00 0a                                      beq #0x7755d4
00775598  04 00 a0 e1                                      mov r0, r4
0077559c  06 ff ff eb                                      bl #0x7751bc
007755a0  10 30 94 e5                                      ldr r3, [r4, #0x10]
007755a4  00 00 53 e3                                      cmp r3, #0
007755a8  03 00 00 0a                                      beq #0x7755bc
007755ac  03 00 a0 e1                                      mov r0, r3
007755b0  00 30 93 e5                                      ldr r3, [r3]
007755b4  0f e0 a0 e1                                      mov lr, pc
007755b8  20 f1 93 e5                                      ldr pc, [r3, #0x120]
007755bc  04 00 a0 e1                                      mov r0, r4
007755c0  bc fc ff eb                                      bl #0x7748b8
007755c4  04 00 a0 e1                                      mov r0, r4
007755c8  10 40 bd e8                                      pop {r4, lr}
007755cc  31 fb ff ea                                      b #0x774298
007755d0  10 80 bd e8                                      pop {r4, pc}
007755d4  fe 15 a0 e3                                      mov r1, #0x3f800000
007755d8  49 ff ff eb                                      bl #0x775304
007755dc  04 00 a0 e1                                      mov r0, r4
007755e0  f5 fe ff eb                                      bl #0x7751bc
007755e4  10 30 94 e5                                      ldr r3, [r4, #0x10]
007755e8  00 00 53 e3                                      cmp r3, #0
007755ec  ee ff ff 1a                                      bne #0x7755ac
007755f0  f1 ff ff ea                                      b #0x7755bc

; FUNCTION 0x007755f4, declared_size=1860, range_size=1860, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root18set_display_boundsEiiiiNS_10scale_modeE
; demangled: gameswf::root::set_display_bounds(int, int, int, int, gameswf::scale_mode)
; decoder-mode: arm
007755f4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007755f8  18 57 9f e5                                      ldr r5, [pc, #0x718]
007755fc  18 67 9f e5                                      ldr r6, [pc, #0x718]
00775600  18 e7 9f e5                                      ldr lr, [pc, #0x718]
00775604  05 50 8f e0                                      add r5, pc, r5
00775608  06 c0 95 e7                                      ldr ip, [r5, r6]
0077560c  0e 80 95 e7                                      ldr r8, [r5, lr]
00775610  00 40 a0 e1                                      mov r4, r0
00775614  00 00 9c e5                                      ldr r0, [ip]
00775618  00 c0 98 e5                                      ldr ip, [r8]
0077561c  d4 d0 4d e2                                      sub sp, sp, #0xd4
00775620  cc 00 8d e5                                      str r0, [sp, #0xcc]
00775624  01 70 a0 e1                                      mov r7, r1
00775628  0c 00 a0 e1                                      mov r0, ip
0077562c  00 10 9c e5                                      ldr r1, [ip]
00775630  02 a0 a0 e1                                      mov sl, r2
00775634  03 90 a0 e1                                      mov sb, r3
00775638  f8 b0 9d e5                                      ldr fp, [sp, #0xf8]
0077563c  0f e0 a0 e1                                      mov lr, pc
00775640  ac f0 91 e5                                      ldr pc, [r1, #0xac]
00775644  00 00 50 e3                                      cmp r0, #0
00775648  55 01 00 1a                                      bne #0x775ba4
0077564c  09 00 a0 e1                                      mov r0, sb
00775650  c3 64 ee eb                                      bl #0x30e964
00775654  0c 80 94 e5                                      ldr r8, [r4, #0xc]
00775658  00 30 a0 e1                                      mov r3, r0
0077565c  b4 10 98 e5                                      ldr r1, [r8, #0xb4]
00775660  b8 00 98 e5                                      ldr r0, [r8, #0xb8]
00775664  00 30 8d e5                                      str r3, [sp]
00775668  4f 63 ee eb                                      bl #0x30e3ac
0077566c  41 14 a0 e3                                      mov r1, #0x41000000
00775670  0a 16 81 e2                                      add r1, r1, #0xa00000
00775674  86 65 ee eb                                      bl #0x30ec94
00775678  00 30 9d e5                                      ldr r3, [sp]
0077567c  00 10 a0 e1                                      mov r1, r0
00775680  03 00 a0 e1                                      mov r0, r3
00775684  82 65 ee eb                                      bl #0x30ec94
00775688  00 30 a0 e1                                      mov r3, r0
0077568c  0b 00 a0 e1                                      mov r0, fp
00775690  00 30 8d e5                                      str r3, [sp]
00775694  b2 64 ee eb                                      bl #0x30e964
00775698  bc 10 98 e5                                      ldr r1, [r8, #0xbc]
0077569c  00 20 a0 e1                                      mov r2, r0
007756a0  c0 00 98 e5                                      ldr r0, [r8, #0xc0]
007756a4  04 20 8d e5                                      str r2, [sp, #4]
007756a8  3f 63 ee eb                                      bl #0x30e3ac
007756ac  41 14 a0 e3                                      mov r1, #0x41000000
007756b0  0a 16 81 e2                                      add r1, r1, #0xa00000
007756b4  76 65 ee eb                                      bl #0x30ec94
007756b8  04 20 9d e5                                      ldr r2, [sp, #4]
007756bc  00 10 a0 e1                                      mov r1, r0
007756c0  02 00 a0 e1                                      mov r0, r2
007756c4  72 65 ee eb                                      bl #0x30ec94
007756c8  00 30 9d e5                                      ldr r3, [sp]
007756cc  01 20 a0 e3                                      mov r2, #1
007756d0  0c 20 8d e5                                      str r2, [sp, #0xc]
007756d4  03 10 a0 e1                                      mov r1, r3
007756d8  6d 65 ee eb                                      bl #0x30ec94
007756dc  fc 30 9d e5                                      ldr r3, [sp, #0xfc]
007756e0  08 00 8d e5                                      str r0, [sp, #8]
007756e4  01 00 53 e3                                      cmp r3, #1
007756e8  1f 01 00 0a                                      beq #0x775b6c
007756ec  02 00 53 e3                                      cmp r3, #2
007756f0  03 01 00 0a                                      beq #0x775b04
007756f4  24 30 94 e5                                      ldr r3, [r4, #0x24]
007756f8  07 00 53 e1                                      cmp r3, r7
007756fc  10 01 00 0a                                      beq #0x775b44
00775700  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00775704  24 70 84 e5                                      str r7, [r4, #0x24]
00775708  28 a0 84 e5                                      str sl, [r4, #0x28]
0077570c  00 00 52 e3                                      cmp r2, #0
00775710  2c 90 84 e5                                      str sb, [r4, #0x2c]
00775714  30 b0 84 e5                                      str fp, [r4, #0x30]
00775718  e6 00 00 1a                                      bne #0x775ab8
0077571c  09 00 a0 e1                                      mov r0, sb
00775720  8f 64 ee eb                                      bl #0x30e964
00775724  bc 10 98 e5                                      ldr r1, [r8, #0xbc]
00775728  00 70 a0 e1                                      mov r7, r0
0077572c  c0 00 98 e5                                      ldr r0, [r8, #0xc0]
00775730  1d 63 ee eb                                      bl #0x30e3ac
00775734  41 14 a0 e3                                      mov r1, #0x41000000
00775738  0a 16 81 e2                                      add r1, r1, #0xa00000
0077573c  54 65 ee eb                                      bl #0x30ec94
00775740  00 10 a0 e1                                      mov r1, r0
00775744  07 00 a0 e1                                      mov r0, r7
00775748  51 65 ee eb                                      bl #0x30ec94
0077574c  00 a0 a0 e1                                      mov sl, r0
00775750  0b 00 a0 e1                                      mov r0, fp
00775754  82 64 ee eb                                      bl #0x30e964
00775758  b4 10 98 e5                                      ldr r1, [r8, #0xb4]
0077575c  00 70 a0 e1                                      mov r7, r0
00775760  b8 00 98 e5                                      ldr r0, [r8, #0xb8]
00775764  10 63 ee eb                                      bl #0x30e3ac
00775768  41 14 a0 e3                                      mov r1, #0x41000000
0077576c  0a 16 81 e2                                      add r1, r1, #0xa00000
00775770  47 65 ee eb                                      bl #0x30ec94
00775774  00 10 a0 e1                                      mov r1, r0
00775778  07 00 a0 e1                                      mov r0, r7
0077577c  44 65 ee eb                                      bl #0x30ec94
00775780  00 70 a0 e1                                      mov r7, r0
00775784  07 10 a0 e1                                      mov r1, r7
00775788  0a 00 a0 e1                                      mov r0, sl
0077578c  de 63 ee eb                                      bl #0x30e70c
00775790  cc 30 94 e5                                      ldr r3, [r4, #0xcc]
00775794  00 00 50 e3                                      cmp r0, #0
00775798  0a 70 a0 01                                      moveq r7, sl
0077579c  00 00 53 e3                                      cmp r3, #0
007757a0  34 70 84 e5                                      str r7, [r4, #0x34]
007757a4  bc 00 00 0a                                      beq #0x775a9c
007757a8  c8 00 94 e5                                      ldr r0, [r4, #0xc8]
007757ac  04 30 d0 e5                                      ldrb r3, [r0, #4]
007757b0  00 00 53 e3                                      cmp r3, #0
007757b4  2e 01 00 0a                                      beq #0x775c74
007757b8  00 30 a0 e3                                      mov r3, #0
007757bc  18 00 94 e5                                      ldr r0, [r4, #0x18]
007757c0  64 30 8d e5                                      str r3, [sp, #0x64]
007757c4  60 30 8d e5                                      str r3, [sp, #0x60]
007757c8  65 64 ee eb                                      bl #0x30e964
007757cc  00 70 a0 e1                                      mov r7, r0
007757d0  20 00 94 e5                                      ldr r0, [r4, #0x20]
007757d4  62 64 ee eb                                      bl #0x30e964
007757d8  00 10 a0 e1                                      mov r1, r0
007757dc  07 00 a0 e1                                      mov r0, r7
007757e0  ef 64 ee eb                                      bl #0x30eba4
007757e4  00 70 a0 e1                                      mov r7, r0
007757e8  14 00 94 e5                                      ldr r0, [r4, #0x14]
007757ec  5c 64 ee eb                                      bl #0x30e964
007757f0  00 80 a0 e1                                      mov r8, r0
007757f4  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
007757f8  59 64 ee eb                                      bl #0x30e964
007757fc  00 10 a0 e1                                      mov r1, r0
00775800  08 00 a0 e1                                      mov r0, r8
00775804  e6 64 ee eb                                      bl #0x30eba4
00775808  60 10 8d e2                                      add r1, sp, #0x60
0077580c  58 00 8d e5                                      str r0, [sp, #0x58]
00775810  04 00 a0 e1                                      mov r0, r4
00775814  5c 70 8d e5                                      str r7, [sp, #0x5c]
00775818  68 f9 ff eb                                      bl #0x773dc0
0077581c  04 00 a0 e1                                      mov r0, r4
00775820  58 10 8d e2                                      add r1, sp, #0x58
00775824  65 f9 ff eb                                      bl #0x773dc0
00775828  cc 80 94 e5                                      ldr r8, [r4, #0xcc]
0077582c  00 00 58 e3                                      cmp r8, #0
00775830  03 00 00 0a                                      beq #0x775844
00775834  c8 00 94 e5                                      ldr r0, [r4, #0xc8]
00775838  04 30 d0 e5                                      ldrb r3, [r0, #4]
0077583c  00 00 53 e3                                      cmp r3, #0
00775840  29 01 00 0a                                      beq #0x775cec
00775844  00 10 a0 e3                                      mov r1, #0
00775848  38 00 a0 e3                                      mov r0, #0x38
0077584c  d5 74 ff eb                                      bl #0x752ba8
00775850  08 10 a0 e1                                      mov r1, r8
00775854  00 70 a0 e1                                      mov r7, r0
00775858  f0 d7 ff eb                                      bl #0x76b820
0077585c  c0 14 9f e5                                      ldr r1, [pc, #0x4c0]
00775860  00 30 97 e5                                      ldr r3, [r7]
00775864  b8 90 8d e2                                      add sb, sp, #0xb8
00775868  01 10 8f e0                                      add r1, pc, r1
0077586c  09 00 a0 e1                                      mov r0, sb
00775870  1c a0 93 e5                                      ldr sl, [r3, #0x1c]
00775874  80 78 f2 eb                                      bl #0x413a7c
00775878  00 30 a0 e3                                      mov r3, #0
0077587c  60 00 9d e5                                      ldr r0, [sp, #0x60]
00775880  44 30 cd e5                                      strb r3, [sp, #0x44]
00775884  02 30 a0 e3                                      mov r3, #2
00775888  45 30 cd e5                                      strb r3, [sp, #0x45]
0077588c  04 64 ee eb                                      bl #0x30e8a4
00775890  f0 05 cd e1                                      strd r0, r1, [sp, #0x50]
00775894  50 30 9d e5                                      ldr r3, [sp, #0x50]
00775898  44 80 8d e2                                      add r8, sp, #0x44
0077589c  09 10 a0 e1                                      mov r1, sb
007758a0  48 30 8d e5                                      str r3, [sp, #0x48]
007758a4  54 30 9d e5                                      ldr r3, [sp, #0x54]
007758a8  08 20 a0 e1                                      mov r2, r8
007758ac  07 00 a0 e1                                      mov r0, r7
007758b0  08 30 88 e5                                      str r3, [r8, #8]
007758b4  3a ff 2f e1                                      blx sl
007758b8  08 00 a0 e1                                      mov r0, r8
007758bc  18 86 00 eb                                      bl #0x797124
007758c0  d8 3b dd e1                                      ldrsb r3, [sp, #0xb8]
007758c4  01 00 73 e3                                      cmn r3, #1
007758c8  f7 00 00 0a                                      beq #0x775cac
007758cc  54 14 9f e5                                      ldr r1, [pc, #0x454]
007758d0  00 30 97 e5                                      ldr r3, [r7]
007758d4  a4 90 8d e2                                      add sb, sp, #0xa4
007758d8  01 10 8f e0                                      add r1, pc, r1
007758dc  09 00 a0 e1                                      mov r0, sb
007758e0  1c a0 93 e5                                      ldr sl, [r3, #0x1c]
007758e4  64 78 f2 eb                                      bl #0x413a7c
007758e8  00 30 a0 e3                                      mov r3, #0
007758ec  64 00 9d e5                                      ldr r0, [sp, #0x64]
007758f0  38 30 cd e5                                      strb r3, [sp, #0x38]
007758f4  02 30 a0 e3                                      mov r3, #2
007758f8  39 30 cd e5                                      strb r3, [sp, #0x39]
007758fc  e8 63 ee eb                                      bl #0x30e8a4
00775900  f0 05 cd e1                                      strd r0, r1, [sp, #0x50]
00775904  50 30 9d e5                                      ldr r3, [sp, #0x50]
00775908  38 80 8d e2                                      add r8, sp, #0x38
0077590c  09 10 a0 e1                                      mov r1, sb
00775910  3c 30 8d e5                                      str r3, [sp, #0x3c]
00775914  54 30 9d e5                                      ldr r3, [sp, #0x54]
00775918  08 20 a0 e1                                      mov r2, r8
0077591c  07 00 a0 e1                                      mov r0, r7
00775920  08 30 88 e5                                      str r3, [r8, #8]
00775924  3a ff 2f e1                                      blx sl
00775928  08 00 a0 e1                                      mov r0, r8
0077592c  fc 85 00 eb                                      bl #0x797124
00775930  d4 3a dd e1                                      ldrsb r3, [sp, #0xa4]
00775934  01 00 73 e3                                      cmn r3, #1
00775938  d7 00 00 0a                                      beq #0x775c9c
0077593c  e8 13 9f e5                                      ldr r1, [pc, #0x3e8]
00775940  00 30 97 e5                                      ldr r3, [r7]
00775944  90 90 8d e2                                      add sb, sp, #0x90
00775948  01 10 8f e0                                      add r1, pc, r1
0077594c  09 00 a0 e1                                      mov r0, sb
00775950  1c a0 93 e5                                      ldr sl, [r3, #0x1c]
00775954  48 78 f2 eb                                      bl #0x413a7c
00775958  00 30 a0 e3                                      mov r3, #0
0077595c  58 00 9d e5                                      ldr r0, [sp, #0x58]
00775960  2c 30 cd e5                                      strb r3, [sp, #0x2c]
00775964  02 30 a0 e3                                      mov r3, #2
00775968  2d 30 cd e5                                      strb r3, [sp, #0x2d]
0077596c  cc 63 ee eb                                      bl #0x30e8a4
00775970  f0 05 cd e1                                      strd r0, r1, [sp, #0x50]
00775974  50 30 9d e5                                      ldr r3, [sp, #0x50]
00775978  2c 80 8d e2                                      add r8, sp, #0x2c
0077597c  09 10 a0 e1                                      mov r1, sb
00775980  30 30 8d e5                                      str r3, [sp, #0x30]
00775984  54 30 9d e5                                      ldr r3, [sp, #0x54]
00775988  08 20 a0 e1                                      mov r2, r8
0077598c  07 00 a0 e1                                      mov r0, r7
00775990  08 30 88 e5                                      str r3, [r8, #8]
00775994  3a ff 2f e1                                      blx sl
00775998  08 00 a0 e1                                      mov r0, r8
0077599c  e0 85 00 eb                                      bl #0x797124
007759a0  d0 39 dd e1                                      ldrsb r3, [sp, #0x90]
007759a4  01 00 73 e3                                      cmn r3, #1
007759a8  cb 00 00 0a                                      beq #0x775cdc
007759ac  7c 13 9f e5                                      ldr r1, [pc, #0x37c]
007759b0  00 30 97 e5                                      ldr r3, [r7]
007759b4  7c 90 8d e2                                      add sb, sp, #0x7c
007759b8  01 10 8f e0                                      add r1, pc, r1
007759bc  09 00 a0 e1                                      mov r0, sb
007759c0  1c a0 93 e5                                      ldr sl, [r3, #0x1c]
007759c4  2c 78 f2 eb                                      bl #0x413a7c
007759c8  00 30 a0 e3                                      mov r3, #0
007759cc  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
007759d0  20 30 cd e5                                      strb r3, [sp, #0x20]
007759d4  02 30 a0 e3                                      mov r3, #2
007759d8  21 30 cd e5                                      strb r3, [sp, #0x21]
007759dc  b0 63 ee eb                                      bl #0x30e8a4
007759e0  f0 05 cd e1                                      strd r0, r1, [sp, #0x50]
007759e4  50 30 9d e5                                      ldr r3, [sp, #0x50]
007759e8  20 80 8d e2                                      add r8, sp, #0x20
007759ec  09 10 a0 e1                                      mov r1, sb
007759f0  24 30 8d e5                                      str r3, [sp, #0x24]
007759f4  54 30 9d e5                                      ldr r3, [sp, #0x54]
007759f8  08 20 a0 e1                                      mov r2, r8
007759fc  07 00 a0 e1                                      mov r0, r7
00775a00  08 30 88 e5                                      str r3, [r8, #8]
00775a04  3a ff 2f e1                                      blx sl
00775a08  08 00 a0 e1                                      mov r0, r8
00775a0c  c4 85 00 eb                                      bl #0x797124
00775a10  dc 37 dd e1                                      ldrsb r3, [sp, #0x7c]
00775a14  01 00 73 e3                                      cmn r3, #1
00775a18  ab 00 00 0a                                      beq #0x775ccc
00775a1c  00 30 a0 e3                                      mov r3, #0
00775a20  14 30 cd e5                                      strb r3, [sp, #0x14]
00775a24  07 00 a0 e1                                      mov r0, r7
00775a28  05 30 a0 e3                                      mov r3, #5
00775a2c  15 30 cd e5                                      strb r3, [sp, #0x15]
00775a30  18 70 8d e5                                      str r7, [sp, #0x18]
00775a34  8a 90 ff eb                                      bl #0x759c64
00775a38  cc 30 94 e5                                      ldr r3, [r4, #0xcc]
00775a3c  00 00 53 e3                                      cmp r3, #0
00775a40  03 00 00 0a                                      beq #0x775a54
00775a44  c8 00 94 e5                                      ldr r0, [r4, #0xc8]
00775a48  04 20 d0 e5                                      ldrb r2, [r0, #4]
00775a4c  00 00 52 e3                                      cmp r2, #0
00775a50  7d 00 00 0a                                      beq #0x775c4c
00775a54  34 a0 93 e5                                      ldr sl, [r3, #0x34]
00775a58  d4 12 9f e5                                      ldr r1, [pc, #0x2d4]
00775a5c  68 80 8d e2                                      add r8, sp, #0x68
00775a60  00 30 9a e5                                      ldr r3, [sl]
00775a64  01 10 8f e0                                      add r1, pc, r1
00775a68  08 00 a0 e1                                      mov r0, r8
00775a6c  14 40 8d e2                                      add r4, sp, #0x14
00775a70  1c 70 93 e5                                      ldr r7, [r3, #0x1c]
00775a74  00 78 f2 eb                                      bl #0x413a7c
00775a78  0a 00 a0 e1                                      mov r0, sl
00775a7c  08 10 a0 e1                                      mov r1, r8
00775a80  04 20 a0 e1                                      mov r2, r4
00775a84  37 ff 2f e1                                      blx r7
00775a88  d8 36 dd e1                                      ldrsb r3, [sp, #0x68]
00775a8c  01 00 73 e3                                      cmn r3, #1
00775a90  89 00 00 0a                                      beq #0x775cbc
00775a94  04 00 a0 e1                                      mov r0, r4
00775a98  a1 85 00 eb                                      bl #0x797124
00775a9c  06 30 95 e7                                      ldr r3, [r5, r6]
00775aa0  cc 20 9d e5                                      ldr r2, [sp, #0xcc]
00775aa4  00 30 93 e5                                      ldr r3, [r3]
00775aa8  03 00 52 e1                                      cmp r2, r3
00775aac  98 00 00 1a                                      bne #0x775d14
00775ab0  d4 d0 8d e2                                      add sp, sp, #0xd4
00775ab4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00775ab8  09 00 a0 e1                                      mov r0, sb
00775abc  a8 63 ee eb                                      bl #0x30e964
00775ac0  b4 10 98 e5                                      ldr r1, [r8, #0xb4]
00775ac4  00 70 a0 e1                                      mov r7, r0
00775ac8  b8 00 98 e5                                      ldr r0, [r8, #0xb8]
00775acc  36 62 ee eb                                      bl #0x30e3ac
00775ad0  41 14 a0 e3                                      mov r1, #0x41000000
00775ad4  0a 16 81 e2                                      add r1, r1, #0xa00000
00775ad8  6d 64 ee eb                                      bl #0x30ec94
00775adc  00 10 a0 e1                                      mov r1, r0
00775ae0  07 00 a0 e1                                      mov r0, r7
00775ae4  6a 64 ee eb                                      bl #0x30ec94
00775ae8  00 a0 a0 e1                                      mov sl, r0
00775aec  0b 00 a0 e1                                      mov r0, fp
00775af0  9b 63 ee eb                                      bl #0x30e964
00775af4  bc 10 98 e5                                      ldr r1, [r8, #0xbc]
00775af8  00 70 a0 e1                                      mov r7, r0
00775afc  c0 00 98 e5                                      ldr r0, [r8, #0xc0]
00775b00  17 ff ff ea                                      b #0x775764
00775b04  fe 15 a0 e3                                      mov r1, #0x3f800000
00775b08  69 62 ee eb                                      bl #0x30e4b4
00775b0c  00 00 50 e3                                      cmp r0, #0
00775b10  19 00 00 0a                                      beq #0x775b7c
00775b14  0b 00 a0 e1                                      mov r0, fp
00775b18  91 63 ee eb                                      bl #0x30e964
00775b1c  08 10 9d e5                                      ldr r1, [sp, #8]
00775b20  5b 64 ee eb                                      bl #0x30ec94
00775b24  68 62 ee eb                                      bl #0x30e4cc
00775b28  00 00 6b e0                                      rsb r0, fp, r0
00775b2c  a0 3f 80 e0                                      add r3, r0, r0, lsr #31
00775b30  00 b0 8b e0                                      add fp, fp, r0
00775b34  c3 a0 4a e0                                      sub sl, sl, r3, asr #1
00775b38  24 30 94 e5                                      ldr r3, [r4, #0x24]
00775b3c  07 00 53 e1                                      cmp r3, r7
00775b40  ee fe ff 1a                                      bne #0x775700
00775b44  28 30 94 e5                                      ldr r3, [r4, #0x28]
00775b48  0a 00 53 e1                                      cmp r3, sl
00775b4c  eb fe ff 1a                                      bne #0x775700
00775b50  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00775b54  09 00 53 e1                                      cmp r3, sb
00775b58  e8 fe ff 1a                                      bne #0x775700
00775b5c  30 30 94 e5                                      ldr r3, [r4, #0x30]
00775b60  0b 00 53 e1                                      cmp r3, fp
00775b64  e5 fe ff 1a                                      bne #0x775700
00775b68  cb ff ff ea                                      b #0x775a9c
00775b6c  fe 15 a0 e3                                      mov r1, #0x3f800000
00775b70  4f 62 ee eb                                      bl #0x30e4b4
00775b74  00 00 50 e3                                      cmp r0, #0
00775b78  e5 ff ff 0a                                      beq #0x775b14
00775b7c  09 00 a0 e1                                      mov r0, sb
00775b80  77 63 ee eb                                      bl #0x30e964
00775b84  08 10 9d e5                                      ldr r1, [sp, #8]
00775b88  77 64 ee eb                                      bl #0x30ed6c
00775b8c  4e 62 ee eb                                      bl #0x30e4cc
00775b90  00 00 69 e0                                      rsb r0, sb, r0
00775b94  a0 3f 80 e0                                      add r3, r0, r0, lsr #31
00775b98  00 90 89 e0                                      add sb, sb, r0
00775b9c  c3 70 47 e0                                      sub r7, r7, r3, asr #1
00775ba0  d3 fe ff ea                                      b #0x7756f4
00775ba4  00 30 98 e5                                      ldr r3, [r8]
00775ba8  03 00 a0 e1                                      mov r0, r3
00775bac  00 30 93 e5                                      ldr r3, [r3]
00775bb0  0f e0 a0 e1                                      mov lr, pc
00775bb4  ac f0 93 e5                                      ldr pc, [r3, #0xac]
00775bb8  02 00 50 e3                                      cmp r0, #2
00775bbc  a2 fe ff 0a                                      beq #0x77564c
00775bc0  09 00 a0 e1                                      mov r0, sb
00775bc4  66 63 ee eb                                      bl #0x30e964
00775bc8  0c 80 94 e5                                      ldr r8, [r4, #0xc]
00775bcc  00 30 a0 e1                                      mov r3, r0
00775bd0  bc 10 98 e5                                      ldr r1, [r8, #0xbc]
00775bd4  c0 00 98 e5                                      ldr r0, [r8, #0xc0]
00775bd8  00 30 8d e5                                      str r3, [sp]
00775bdc  f2 61 ee eb                                      bl #0x30e3ac
00775be0  41 14 a0 e3                                      mov r1, #0x41000000
00775be4  0a 16 81 e2                                      add r1, r1, #0xa00000
00775be8  29 64 ee eb                                      bl #0x30ec94
00775bec  00 30 9d e5                                      ldr r3, [sp]
00775bf0  00 10 a0 e1                                      mov r1, r0
00775bf4  03 00 a0 e1                                      mov r0, r3
00775bf8  25 64 ee eb                                      bl #0x30ec94
00775bfc  00 30 a0 e1                                      mov r3, r0
00775c00  0b 00 a0 e1                                      mov r0, fp
00775c04  00 30 8d e5                                      str r3, [sp]
00775c08  55 63 ee eb                                      bl #0x30e964
00775c0c  b4 10 98 e5                                      ldr r1, [r8, #0xb4]
00775c10  00 20 a0 e1                                      mov r2, r0
00775c14  b8 00 98 e5                                      ldr r0, [r8, #0xb8]
00775c18  04 20 8d e5                                      str r2, [sp, #4]
00775c1c  e2 61 ee eb                                      bl #0x30e3ac
00775c20  41 14 a0 e3                                      mov r1, #0x41000000
00775c24  0a 16 81 e2                                      add r1, r1, #0xa00000
00775c28  19 64 ee eb                                      bl #0x30ec94
00775c2c  04 20 9d e5                                      ldr r2, [sp, #4]
00775c30  00 10 a0 e1                                      mov r1, r0
00775c34  02 00 a0 e1                                      mov r0, r2
00775c38  15 64 ee eb                                      bl #0x30ec94
00775c3c  00 20 a0 e3                                      mov r2, #0
00775c40  0c 20 8d e5                                      str r2, [sp, #0xc]
00775c44  00 30 9d e5                                      ldr r3, [sp]
00775c48  a1 fe ff ea                                      b #0x7756d4
00775c4c  00 10 90 e5                                      ldr r1, [r0]
00775c50  01 10 41 e2                                      sub r1, r1, #1
00775c54  00 00 51 e3                                      cmp r1, #0
00775c58  00 10 80 e5                                      str r1, [r0]
00775c5c  00 00 00 1a                                      bne #0x775c64
00775c60  b4 73 ff eb                                      bl #0x752b38
00775c64  00 30 a0 e3                                      mov r3, #0
00775c68  cc 30 84 e5                                      str r3, [r4, #0xcc]
00775c6c  c8 30 84 e5                                      str r3, [r4, #0xc8]
00775c70  77 ff ff ea                                      b #0x775a54
00775c74  00 10 90 e5                                      ldr r1, [r0]
00775c78  01 10 41 e2                                      sub r1, r1, #1
00775c7c  00 00 51 e3                                      cmp r1, #0
00775c80  00 10 80 e5                                      str r1, [r0]
00775c84  00 00 00 1a                                      bne #0x775c8c
00775c88  aa 73 ff eb                                      bl #0x752b38
00775c8c  00 30 a0 e3                                      mov r3, #0
00775c90  cc 30 84 e5                                      str r3, [r4, #0xcc]
00775c94  c8 30 84 e5                                      str r3, [r4, #0xc8]
00775c98  7f ff ff ea                                      b #0x775a9c
00775c9c  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
00775ca0  ac 10 9d e5                                      ldr r1, [sp, #0xac]
00775ca4  a3 73 ff eb                                      bl #0x752b38
00775ca8  23 ff ff ea                                      b #0x77593c
00775cac  c4 00 9d e5                                      ldr r0, [sp, #0xc4]
00775cb0  c0 10 9d e5                                      ldr r1, [sp, #0xc0]
00775cb4  9f 73 ff eb                                      bl #0x752b38
00775cb8  03 ff ff ea                                      b #0x7758cc
00775cbc  74 00 9d e5                                      ldr r0, [sp, #0x74]
00775cc0  70 10 9d e5                                      ldr r1, [sp, #0x70]
00775cc4  9b 73 ff eb                                      bl #0x752b38
00775cc8  71 ff ff ea                                      b #0x775a94
00775ccc  88 00 9d e5                                      ldr r0, [sp, #0x88]
00775cd0  84 10 9d e5                                      ldr r1, [sp, #0x84]
00775cd4  97 73 ff eb                                      bl #0x752b38
00775cd8  4f ff ff ea                                      b #0x775a1c
00775cdc  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
00775ce0  98 10 9d e5                                      ldr r1, [sp, #0x98]
00775ce4  93 73 ff eb                                      bl #0x752b38
00775ce8  2f ff ff ea                                      b #0x7759ac
00775cec  00 10 90 e5                                      ldr r1, [r0]
00775cf0  01 10 41 e2                                      sub r1, r1, #1
00775cf4  00 00 51 e3                                      cmp r1, #0
00775cf8  00 10 80 e5                                      str r1, [r0]
00775cfc  00 00 00 1a                                      bne #0x775d04
00775d00  8c 73 ff eb                                      bl #0x752b38
00775d04  00 80 a0 e3                                      mov r8, #0
00775d08  c8 80 84 e5                                      str r8, [r4, #0xc8]
00775d0c  cc 80 84 e5                                      str r8, [r4, #0xcc]
00775d10  cb fe ff ea                                      b #0x775844
00775d14  7d 61 ee eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00775d18  8c f4 21 00 ac 40 00 00 b4 39 00 00 80 40 19 00  .byte 0x8c, 0xf4, 0x21, 0x00, 0xac, 0x40, 0x00, 0x00, 0xb4, 0x39, 0x00, 0x00, 0x80, 0x40, 0x19, 0x00
00775d28  18 40 19 00 b0 3f 19 00 48 3f 19 00 2c d8 16 00  .byte 0x18, 0x40, 0x19, 0x00, 0xb0, 0x3f, 0x19, 0x00, 0x48, 0x3f, 0x19, 0x00, 0x2c, 0xd8, 0x16, 0x00

; FUNCTION 0x00775d38, declared_size=104, range_size=104, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4root20set_display_viewportEiiii
; demangled: gameswf::root::set_display_viewport(int, int, int, int)
; decoder-mode: arm
00775d38  10 40 2d e9                                      push {r4, lr}
00775d3c  14 c0 90 e5                                      ldr ip, [r0, #0x14]
00775d40  08 d0 4d e2                                      sub sp, sp, #8
00775d44  01 00 5c e1                                      cmp ip, r1
00775d48  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00775d4c  09 00 00 0a                                      beq #0x775d78
00775d50  20 c0 80 e5                                      str ip, [r0, #0x20]
00775d54  00 c0 8d e5                                      str ip, [sp]
00775d58  14 10 80 e5                                      str r1, [r0, #0x14]
00775d5c  00 c0 a0 e3                                      mov ip, #0
00775d60  18 20 80 e5                                      str r2, [r0, #0x18]
00775d64  1c 30 80 e5                                      str r3, [r0, #0x1c]
00775d68  04 c0 8d e5                                      str ip, [sp, #4]
00775d6c  20 fe ff eb                                      bl #0x7755f4
00775d70  08 d0 8d e2                                      add sp, sp, #8
00775d74  10 80 bd e8                                      pop {r4, pc}
00775d78  18 40 90 e5                                      ldr r4, [r0, #0x18]
00775d7c  02 00 54 e1                                      cmp r4, r2
00775d80  f2 ff ff 1a                                      bne #0x775d50
00775d84  1c 40 90 e5                                      ldr r4, [r0, #0x1c]
00775d88  03 00 54 e1                                      cmp r4, r3
00775d8c  ef ff ff 1a                                      bne #0x775d50
00775d90  20 40 90 e5                                      ldr r4, [r0, #0x20]
00775d94  0c 00 54 e1                                      cmp r4, ip
00775d98  ec ff ff 1a                                      bne #0x775d50
00775d9c  f3 ff ff ea                                      b #0x775d70

; FUNCTION 0x00775da0, declared_size=464, range_size=464, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4rootC1EPNS_6playerEPNS_14movie_def_implE
; demangled: gameswf::root::root(gameswf::player*, gameswf::movie_def_impl*)
; decoder-mode: arm
00775da0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00775da4  bc 51 9f e5                                      ldr r5, [pc, #0x1bc]
00775da8  0c d0 4d e2                                      sub sp, sp, #0xc
00775dac  02 70 a0 e1                                      mov r7, r2
00775db0  00 40 a0 e1                                      mov r4, r0
00775db4  01 60 a0 e1                                      mov r6, r1
00775db8  91 8f ff eb                                      bl #0x759c04
00775dbc  a8 31 9f e5                                      ldr r3, [pc, #0x1a8]
00775dc0  05 50 8f e0                                      add r5, pc, r5
00775dc4  00 00 57 e3                                      cmp r7, #0
00775dc8  03 30 95 e7                                      ldr r3, [r5, r3]
00775dcc  0c 70 84 e5                                      str r7, [r4, #0xc]
00775dd0  08 30 83 e2                                      add r3, r3, #8
00775dd4  00 30 84 e5                                      str r3, [r4]
00775dd8  01 00 00 0a                                      beq #0x775de4
00775ddc  07 00 a0 e1                                      mov r0, r7
00775de0  9f 8f ff eb                                      bl #0x759c64
00775de4  00 70 a0 e3                                      mov r7, #0
00775de8  00 30 a0 e3                                      mov r3, #0
00775dec  01 20 a0 e3                                      mov r2, #1
00775df0  fe 55 a0 e3                                      mov r5, #0x3f800000
00775df4  00 10 e0 e3                                      mvn r1, #0
00775df8  20 20 84 e5                                      str r2, [r4, #0x20]
00775dfc  1c 20 84 e5                                      str r2, [r4, #0x1c]
00775e00  48 30 84 e5                                      str r3, [r4, #0x48]
00775e04  4c 30 84 e5                                      str r3, [r4, #0x4c]
00775e08  60 30 84 e5                                      str r3, [r4, #0x60]
00775e0c  64 30 84 e5                                      str r3, [r4, #0x64]
00775e10  70 30 84 e5                                      str r3, [r4, #0x70]
00775e14  74 30 84 e5                                      str r3, [r4, #0x74]
00775e18  3b 10 c4 e5                                      strb r1, [r4, #0x3b]
00775e1c  c8 00 84 e2                                      add r0, r4, #0xc8
00775e20  06 10 a0 e1                                      mov r1, r6
00775e24  10 70 84 e5                                      str r7, [r4, #0x10]
00775e28  14 70 84 e5                                      str r7, [r4, #0x14]
00775e2c  18 70 84 e5                                      str r7, [r4, #0x18]
00775e30  34 50 84 e5                                      str r5, [r4, #0x34]
00775e34  38 70 c4 e5                                      strb r7, [r4, #0x38]
00775e38  39 70 c4 e5                                      strb r7, [r4, #0x39]
00775e3c  3a 70 c4 e5                                      strb r7, [r4, #0x3a]
00775e40  3c 70 84 e5                                      str r7, [r4, #0x3c]
00775e44  40 70 84 e5                                      str r7, [r4, #0x40]
00775e48  44 70 84 e5                                      str r7, [r4, #0x44]
00775e4c  50 70 84 e5                                      str r7, [r4, #0x50]
00775e50  54 70 84 e5                                      str r7, [r4, #0x54]
00775e54  58 70 84 e5                                      str r7, [r4, #0x58]
00775e58  5c 70 c4 e5                                      strb r7, [r4, #0x5c]
00775e5c  5d 70 c4 e5                                      strb r7, [r4, #0x5d]
00775e60  5e 70 c4 e5                                      strb r7, [r4, #0x5e]
00775e64  68 50 84 e5                                      str r5, [r4, #0x68]
00775e68  6c 50 84 e5                                      str r5, [r4, #0x6c]
00775e6c  78 70 84 e5                                      str r7, [r4, #0x78]
00775e70  7c 70 84 e5                                      str r7, [r4, #0x7c]
00775e74  80 70 c4 e5                                      strb r7, [r4, #0x80]
00775e78  81 70 c4 e5                                      strb r7, [r4, #0x81]
00775e7c  82 70 c4 e5                                      strb r7, [r4, #0x82]
00775e80  84 70 c4 e5                                      strb r7, [r4, #0x84]
00775e84  85 70 c4 e5                                      strb r7, [r4, #0x85]
00775e88  94 30 84 e5                                      str r3, [r4, #0x94]
00775e8c  86 70 c4 e5                                      strb r7, [r4, #0x86]
00775e90  87 70 c4 e5                                      strb r7, [r4, #0x87]
00775e94  88 70 84 e5                                      str r7, [r4, #0x88]
00775e98  8c 50 84 e5                                      str r5, [r4, #0x8c]
00775e9c  90 50 84 e5                                      str r5, [r4, #0x90]
00775ea0  98 70 84 e5                                      str r7, [r4, #0x98]
00775ea4  9c 70 84 e5                                      str r7, [r4, #0x9c]
00775ea8  a0 70 84 e5                                      str r7, [r4, #0xa0]
00775eac  a4 70 c4 e5                                      strb r7, [r4, #0xa4]
00775eb0  a8 70 84 e5                                      str r7, [r4, #0xa8]
00775eb4  ac 70 84 e5                                      str r7, [r4, #0xac]
00775eb8  b0 70 84 e5                                      str r7, [r4, #0xb0]
00775ebc  b4 70 c4 e5                                      strb r7, [r4, #0xb4]
00775ec0  b8 70 84 e5                                      str r7, [r4, #0xb8]
00775ec4  bc 70 84 e5                                      str r7, [r4, #0xbc]
00775ec8  c0 70 84 e5                                      str r7, [r4, #0xc0]
00775ecc  c4 70 c4 e5                                      strb r7, [r4, #0xc4]
00775ed0  c8 70 84 e5                                      str r7, [r4, #0xc8]
00775ed4  cc 70 84 e5                                      str r7, [r4, #0xcc]
00775ed8  b3 a2 ff eb                                      bl #0x75e9ac
00775edc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00775ee0  03 00 a0 e1                                      mov r0, r3
00775ee4  00 30 93 e5                                      ldr r3, [r3]
00775ee8  0f e0 a0 e1                                      mov lr, pc
00775eec  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00775ef0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00775ef4  00 80 a0 e1                                      mov r8, r0
00775ef8  03 00 a0 e1                                      mov r0, r3
00775efc  00 30 93 e5                                      ldr r3, [r3]
00775f00  0f e0 a0 e1                                      mov lr, pc
00775f04  34 f0 93 e5                                      ldr pc, [r3, #0x34]
00775f08  00 a0 a0 e1                                      mov sl, r0
00775f0c  08 00 a0 e1                                      mov r0, r8
00775f10  6d 61 ee eb                                      bl #0x30e4cc
00775f14  00 80 a0 e1                                      mov r8, r0
00775f18  0a 00 a0 e1                                      mov r0, sl
00775f1c  6a 61 ee eb                                      bl #0x30e4cc
00775f20  08 30 a0 e1                                      mov r3, r8
00775f24  07 20 a0 e1                                      mov r2, r7
00775f28  07 10 a0 e1                                      mov r1, r7
00775f2c  00 00 8d e5                                      str r0, [sp]
00775f30  04 00 a0 e1                                      mov r0, r4
00775f34  7f ff ff eb                                      bl #0x775d38
00775f38  04 00 a0 e1                                      mov r0, r4
00775f3c  97 f8 ff eb                                      bl #0x7741a0
00775f40  00 10 a0 e1                                      mov r1, r0
00775f44  05 00 a0 e1                                      mov r0, r5
00775f48  51 63 ee eb                                      bl #0x30ec94
00775f4c  04 10 a0 e1                                      mov r1, r4
00775f50  90 00 84 e5                                      str r0, [r4, #0x90]
00775f54  06 00 a0 e1                                      mov r0, r6
00775f58  ef dd ff eb                                      bl #0x76d71c
00775f5c  04 00 a0 e1                                      mov r0, r4
00775f60  0c d0 8d e2                                      add sp, sp, #0xc
00775f64  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
00775f68  d0 ec 21 00 c0 36 00 00                          .byte 0xd0, 0xec, 0x21, 0x00, 0xc0, 0x36, 0x00, 0x00

; FUNCTION 0x00775f70, declared_size=464, range_size=464, mode=arm
; class-group: gameswf::root
; alias: _ZN7gameswf4rootC2EPNS_6playerEPNS_14movie_def_implE
; demangled: gameswf::root::root(gameswf::player*, gameswf::movie_def_impl*)
; decoder-mode: arm
00775f70  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00775f74  bc 51 9f e5                                      ldr r5, [pc, #0x1bc]
00775f78  0c d0 4d e2                                      sub sp, sp, #0xc
00775f7c  02 70 a0 e1                                      mov r7, r2
00775f80  00 40 a0 e1                                      mov r4, r0
00775f84  01 60 a0 e1                                      mov r6, r1
00775f88  1d 8f ff eb                                      bl #0x759c04
00775f8c  a8 31 9f e5                                      ldr r3, [pc, #0x1a8]
00775f90  05 50 8f e0                                      add r5, pc, r5
00775f94  00 00 57 e3                                      cmp r7, #0
00775f98  03 30 95 e7                                      ldr r3, [r5, r3]
00775f9c  0c 70 84 e5                                      str r7, [r4, #0xc]
00775fa0  08 30 83 e2                                      add r3, r3, #8
00775fa4  00 30 84 e5                                      str r3, [r4]
00775fa8  01 00 00 0a                                      beq #0x775fb4
00775fac  07 00 a0 e1                                      mov r0, r7
00775fb0  2b 8f ff eb                                      bl #0x759c64
00775fb4  00 70 a0 e3                                      mov r7, #0
00775fb8  00 30 a0 e3                                      mov r3, #0
00775fbc  01 20 a0 e3                                      mov r2, #1
00775fc0  fe 55 a0 e3                                      mov r5, #0x3f800000
00775fc4  00 10 e0 e3                                      mvn r1, #0
00775fc8  20 20 84 e5                                      str r2, [r4, #0x20]
00775fcc  1c 20 84 e5                                      str r2, [r4, #0x1c]
00775fd0  48 30 84 e5                                      str r3, [r4, #0x48]
00775fd4  4c 30 84 e5                                      str r3, [r4, #0x4c]
00775fd8  60 30 84 e5                                      str r3, [r4, #0x60]
00775fdc  64 30 84 e5                                      str r3, [r4, #0x64]
00775fe0  70 30 84 e5                                      str r3, [r4, #0x70]
00775fe4  74 30 84 e5                                      str r3, [r4, #0x74]
00775fe8  3b 10 c4 e5                                      strb r1, [r4, #0x3b]
00775fec  c8 00 84 e2                                      add r0, r4, #0xc8
00775ff0  06 10 a0 e1                                      mov r1, r6
00775ff4  10 70 84 e5                                      str r7, [r4, #0x10]
00775ff8  14 70 84 e5                                      str r7, [r4, #0x14]
00775ffc  18 70 84 e5                                      str r7, [r4, #0x18]
00776000  34 50 84 e5                                      str r5, [r4, #0x34]
00776004  38 70 c4 e5                                      strb r7, [r4, #0x38]
00776008  39 70 c4 e5                                      strb r7, [r4, #0x39]
0077600c  3a 70 c4 e5                                      strb r7, [r4, #0x3a]
00776010  3c 70 84 e5                                      str r7, [r4, #0x3c]
00776014  40 70 84 e5                                      str r7, [r4, #0x40]
00776018  44 70 84 e5                                      str r7, [r4, #0x44]
0077601c  50 70 84 e5                                      str r7, [r4, #0x50]
00776020  54 70 84 e5                                      str r7, [r4, #0x54]
00776024  58 70 84 e5                                      str r7, [r4, #0x58]
00776028  5c 70 c4 e5                                      strb r7, [r4, #0x5c]
0077602c  5d 70 c4 e5                                      strb r7, [r4, #0x5d]
00776030  5e 70 c4 e5                                      strb r7, [r4, #0x5e]
00776034  68 50 84 e5                                      str r5, [r4, #0x68]
00776038  6c 50 84 e5                                      str r5, [r4, #0x6c]
0077603c  78 70 84 e5                                      str r7, [r4, #0x78]
00776040  7c 70 84 e5                                      str r7, [r4, #0x7c]
00776044  80 70 c4 e5                                      strb r7, [r4, #0x80]
00776048  81 70 c4 e5                                      strb r7, [r4, #0x81]
0077604c  82 70 c4 e5                                      strb r7, [r4, #0x82]
00776050  84 70 c4 e5                                      strb r7, [r4, #0x84]
00776054  85 70 c4 e5                                      strb r7, [r4, #0x85]
00776058  94 30 84 e5                                      str r3, [r4, #0x94]
0077605c  86 70 c4 e5                                      strb r7, [r4, #0x86]
00776060  87 70 c4 e5                                      strb r7, [r4, #0x87]
00776064  88 70 84 e5                                      str r7, [r4, #0x88]
00776068  8c 50 84 e5                                      str r5, [r4, #0x8c]
0077606c  90 50 84 e5                                      str r5, [r4, #0x90]
00776070  98 70 84 e5                                      str r7, [r4, #0x98]
00776074  9c 70 84 e5                                      str r7, [r4, #0x9c]
00776078  a0 70 84 e5                                      str r7, [r4, #0xa0]
0077607c  a4 70 c4 e5                                      strb r7, [r4, #0xa4]
00776080  a8 70 84 e5                                      str r7, [r4, #0xa8]
00776084  ac 70 84 e5                                      str r7, [r4, #0xac]
00776088  b0 70 84 e5                                      str r7, [r4, #0xb0]
0077608c  b4 70 c4 e5                                      strb r7, [r4, #0xb4]
00776090  b8 70 84 e5                                      str r7, [r4, #0xb8]
00776094  bc 70 84 e5                                      str r7, [r4, #0xbc]
00776098  c0 70 84 e5                                      str r7, [r4, #0xc0]
0077609c  c4 70 c4 e5                                      strb r7, [r4, #0xc4]
007760a0  c8 70 84 e5                                      str r7, [r4, #0xc8]
007760a4  cc 70 84 e5                                      str r7, [r4, #0xcc]
007760a8  3f a2 ff eb                                      bl #0x75e9ac
007760ac  0c 30 94 e5                                      ldr r3, [r4, #0xc]
007760b0  03 00 a0 e1                                      mov r0, r3
007760b4  00 30 93 e5                                      ldr r3, [r3]
007760b8  0f e0 a0 e1                                      mov lr, pc
007760bc  30 f0 93 e5                                      ldr pc, [r3, #0x30]
007760c0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
007760c4  00 80 a0 e1                                      mov r8, r0
007760c8  03 00 a0 e1                                      mov r0, r3
007760cc  00 30 93 e5                                      ldr r3, [r3]
007760d0  0f e0 a0 e1                                      mov lr, pc
007760d4  34 f0 93 e5                                      ldr pc, [r3, #0x34]
007760d8  00 a0 a0 e1                                      mov sl, r0
007760dc  08 00 a0 e1                                      mov r0, r8
007760e0  f9 60 ee eb                                      bl #0x30e4cc
007760e4  00 80 a0 e1                                      mov r8, r0
007760e8  0a 00 a0 e1                                      mov r0, sl
007760ec  f6 60 ee eb                                      bl #0x30e4cc
007760f0  08 30 a0 e1                                      mov r3, r8
007760f4  07 20 a0 e1                                      mov r2, r7
007760f8  07 10 a0 e1                                      mov r1, r7
007760fc  00 00 8d e5                                      str r0, [sp]
00776100  04 00 a0 e1                                      mov r0, r4
00776104  0b ff ff eb                                      bl #0x775d38
00776108  04 00 a0 e1                                      mov r0, r4
0077610c  23 f8 ff eb                                      bl #0x7741a0
00776110  00 10 a0 e1                                      mov r1, r0
00776114  05 00 a0 e1                                      mov r0, r5
00776118  dd 62 ee eb                                      bl #0x30ec94
0077611c  04 10 a0 e1                                      mov r1, r4
00776120  90 00 84 e5                                      str r0, [r4, #0x90]
00776124  06 00 a0 e1                                      mov r0, r6
00776128  7b dd ff eb                                      bl #0x76d71c
0077612c  04 00 a0 e1                                      mov r0, r4
00776130  0c d0 8d e2                                      add sp, sp, #0xc
00776134  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
00776138  00 eb 21 00 c0 36 00 00                          .byte 0x00, 0xeb, 0x21, 0x00, 0xc0, 0x36, 0x00, 0x00
