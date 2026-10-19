; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007d1a28, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::glyph_texture_cache
; alias: _ZN7gameswf19glyph_texture_cacheD1Ev
; demangled: gameswf::glyph_texture_cache::~glyph_texture_cache()
; decoder-mode: arm
007d1a28  10 40 2d e9                                      push {r4, lr}
007d1a2c  44 30 90 e5                                      ldr r3, [r0, #0x44]
007d1a30  00 40 a0 e1                                      mov r4, r0
007d1a34  40 00 80 e2                                      add r0, r0, #0x40
007d1a38  00 00 53 e3                                      cmp r3, #0
007d1a3c  07 00 00 da                                      ble #0x7d1a60
007d1a40  00 30 a0 e3                                      mov r3, #0
007d1a44  03 10 a0 e1                                      mov r1, r3
007d1a48  44 30 84 e5                                      str r3, [r4, #0x44]
007d1a4c  f6 15 fe eb                                      bl #0x75722c
007d1a50  04 00 a0 e1                                      mov r0, r4
007d1a54  4c 1c fe eb                                      bl #0x758b8c
007d1a58  04 00 a0 e1                                      mov r0, r4
007d1a5c  10 80 bd e8                                      pop {r4, pc}
007d1a60  f6 ff ff aa                                      bge #0x7d1a40
007d1a64  00 10 a0 e3                                      mov r1, #0
007d1a68  00 20 90 e5                                      ldr r2, [r0]
007d1a6c  03 10 c2 e7                                      strb r1, [r2, r3]
007d1a70  01 30 93 e2                                      adds r3, r3, #1
007d1a74  fb ff ff 1a                                      bne #0x7d1a68
007d1a78  f0 ff ff ea                                      b #0x7d1a40

; FUNCTION 0x007d1da4, declared_size=2248, range_size=2248, mode=arm
; class-group: gameswf::glyph_texture_cache
; alias: _ZN7gameswf19glyph_texture_cache16add_glyph_regionEtPviRNS0_11filter_infoEb
; demangled: gameswf::glyph_texture_cache::add_glyph_region(unsigned short, void*, int, gameswf::glyph_texture_cache::filter_info&, bool)
; decoder-mode: arm
007d1da4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007d1da8  4f df 4d e2                                      sub sp, sp, #0x13c
007d1dac  60 61 9d e5                                      ldr r6, [sp, #0x160]
007d1db0  10 00 8d e5                                      str r0, [sp, #0x10]
007d1db4  50 c0 90 e5                                      ldr ip, [r0, #0x50]
007d1db8  18 10 8d e5                                      str r1, [sp, #0x18]
007d1dbc  01 10 d6 e5                                      ldrb r1, [r6, #1]
007d1dc0  04 80 9c e5                                      ldr r8, [ip, #4]
007d1dc4  00 b0 d6 e5                                      ldrb fp, [r6]
007d1dc8  28 10 8d e5                                      str r1, [sp, #0x28]
007d1dcc  02 50 a0 e1                                      mov r5, r2
007d1dd0  02 20 d6 e5                                      ldrb r2, [r6, #2]
007d1dd4  03 90 a0 e1                                      mov sb, r3
007d1dd8  64 a1 dd e5                                      ldrb sl, [sp, #0x164]
007d1ddc  08 20 8d e5                                      str r2, [sp, #8]
007d1de0  bc c9 ff eb                                      bl #0x7c44d8
007d1de4  24 00 8d e5                                      str r0, [sp, #0x24]
007d1de8  09 00 a0 e1                                      mov r0, sb
007d1dec  dc f2 ec eb                                      bl #0x30e964
007d1df0  08 10 a0 e1                                      mov r1, r8
007d1df4  dc f3 ec eb                                      bl #0x30ed6c
007d1df8  b3 f1 ec eb                                      bl #0x30e4cc
007d1dfc  00 10 a0 e3                                      mov r1, #0
007d1e00  00 20 a0 e1                                      mov r2, r0
007d1e04  24 00 95 e5                                      ldr r0, [r5, #0x24]
007d1e08  7b e2 fc eb                                      bl #0x70a7fc
007d1e0c  24 00 95 e5                                      ldr r0, [r5, #0x24]
007d1e10  18 10 9d e5                                      ldr r1, [sp, #0x18]
007d1e14  04 20 a0 e3                                      mov r2, #4
007d1e18  10 de fc eb                                      bl #0x709660
007d1e1c  40 38 9f e5                                      ldr r3, [pc, #0x840]
007d1e20  00 70 50 e2                                      subs r7, r0, #0
007d1e24  03 30 8f e0                                      add r3, pc, r3
007d1e28  14 30 8d e5                                      str r3, [sp, #0x14]
007d1e2c  c1 00 00 1a                                      bne #0x7d2138
007d1e30  24 30 95 e5                                      ldr r3, [r5, #0x24]
007d1e34  54 40 93 e5                                      ldr r4, [r3, #0x54]
007d1e38  de 35 d4 e1                                      ldrsb r3, [r4, #0x5e]
007d1e3c  01 00 53 e3                                      cmp r3, #1
007d1e40  00 30 a0 13                                      movne r3, #0
007d1e44  01 30 a0 03                                      moveq r3, #1
007d1e48  00 00 53 e3                                      cmp r3, #0
007d1e4c  54 30 8d e5                                      str r3, [sp, #0x54]
007d1e50  4c 40 84 02                                      addeq r4, r4, #0x4c
007d1e54  6a 01 00 1a                                      bne #0x7d2404
007d1e58  0b 00 a0 e1                                      mov r0, fp
007d1e5c  c0 f2 ec eb                                      bl #0x30e964
007d1e60  08 10 a0 e1                                      mov r1, r8
007d1e64  c0 f3 ec eb                                      bl #0x30ed6c
007d1e68  0c b1 03 eb                                      bl #0x8be2a0
007d1e6c  70 b0 ef e6                                      uxtb fp, r0
007d1e70  28 00 9d e5                                      ldr r0, [sp, #0x28]
007d1e74  ba f2 ec eb                                      bl #0x30e964
007d1e78  08 10 a0 e1                                      mov r1, r8
007d1e7c  ba f3 ec eb                                      bl #0x30ed6c
007d1e80  06 b1 03 eb                                      bl #0x8be2a0
007d1e84  70 70 ef e6                                      uxtb r7, r0
007d1e88  08 00 9d e5                                      ldr r0, [sp, #8]
007d1e8c  b4 f2 ec eb                                      bl #0x30e964
007d1e90  08 10 a0 e1                                      mov r1, r8
007d1e94  b4 f3 ec eb                                      bl #0x30ed6c
007d1e98  00 b1 03 eb                                      bl #0x8be2a0
007d1e9c  08 20 94 e5                                      ldr r2, [r4, #8]
007d1ea0  00 00 5b e3                                      cmp fp, #0
007d1ea4  70 80 ef e6                                      uxtb r8, r0
007d1ea8  01 20 82 e2                                      add r2, r2, #1
007d1eac  34 21 8d e5                                      str r2, [sp, #0x134]
007d1eb0  00 30 94 e5                                      ldr r3, [r4]
007d1eb4  01 30 83 e2                                      add r3, r3, #1
007d1eb8  30 31 8d e5                                      str r3, [sp, #0x130]
007d1ebc  a0 00 00 1a                                      bne #0x7d2144
007d1ec0  07 e0 98 e1                                      orrs lr, r8, r7
007d1ec4  87 20 82 10                                      addne r2, r2, r7, lsl #1
007d1ec8  88 30 83 10                                      addne r3, r3, r8, lsl #1
007d1ecc  34 21 8d 15                                      strne r2, [sp, #0x134]
007d1ed0  30 31 8d 15                                      strne r3, [sp, #0x130]
007d1ed4  4d 0f 8d e2                                      add r0, sp, #0x134
007d1ed8  13 1e 8d e2                                      add r1, sp, #0x130
007d1edc  9f 05 ff eb                                      bl #0x793560
007d1ee0  00 00 5a e3                                      cmp sl, #0
007d1ee4  a8 00 00 0a                                      beq #0x7d218c
007d1ee8  10 00 9d e5                                      ldr r0, [sp, #0x10]
007d1eec  34 11 9d e5                                      ldr r1, [sp, #0x134]
007d1ef0  30 21 9d e5                                      ldr r2, [sp, #0x130]
007d1ef4  63 09 ff eb                                      bl #0x794488
007d1ef8  00 a0 a0 e1                                      mov sl, r0
007d1efc  00 00 5a e3                                      cmp sl, #0
007d1f00  8c 00 00 0a                                      beq #0x7d2138
007d1f04  10 30 9d e5                                      ldr r3, [sp, #0x10]
007d1f08  10 c0 9d e5                                      ldr ip, [sp, #0x10]
007d1f0c  01 00 a0 e3                                      mov r0, #1
007d1f10  d0 20 c3 e1                                      ldrd r2, r3, [r3]
007d1f14  00 10 a0 e3                                      mov r1, #0
007d1f18  02 00 90 e0                                      adds r0, r0, r2
007d1f1c  03 10 a1 e0                                      adc r1, r1, r3
007d1f20  f0 20 ca e1                                      strd r2, r3, [sl]
007d1f24  f0 03 cc e0                                      strd r0, r1, [ip], #0x30
007d1f28  02 e0 d6 e5                                      ldrb lr, [r6, #2]
007d1f2c  01 00 d6 e5                                      ldrb r0, [r6, #1]
007d1f30  18 30 9d e5                                      ldr r3, [sp, #0x18]
007d1f34  00 10 d6 e5                                      ldrb r1, [r6]
007d1f38  0e e4 a0 e1                                      lsl lr, lr, #8
007d1f3c  0c 30 8d e5                                      str r3, [sp, #0xc]
007d1f40  00 38 8e e1                                      orr r3, lr, r0, lsl #16
007d1f44  00 e0 a0 e3                                      mov lr, #0
007d1f48  08 e0 8d e5                                      str lr, [sp, #8]
007d1f4c  79 90 ef e6                                      uxtb sb, sb
007d1f50  01 e0 83 e1                                      orr lr, r3, r1
007d1f54  d8 00 cd e1                                      ldrd r0, r1, [sp, #8]
007d1f58  05 00 80 e1                                      orr r0, r0, r5
007d1f5c  f8 02 cd e1                                      strd r0, r1, [sp, #0x28]
007d1f60  d8 22 cd e1                                      ldrd r2, r3, [sp, #0x28]
007d1f64  00 10 a0 e3                                      mov r1, #0
007d1f68  09 98 a0 e1                                      lsl sb, sb, #0x10
007d1f6c  1c 90 8d e5                                      str sb, [sp, #0x1c]
007d1f70  18 10 8d e5                                      str r1, [sp, #0x18]
007d1f74  d8 01 cd e1                                      ldrd r0, r1, [sp, #0x18]
007d1f78  00 20 82 e1                                      orr r2, r2, r0
007d1f7c  01 30 83 e1                                      orr r3, r3, r1
007d1f80  12 1e 8d e2                                      add r1, sp, #0x120
007d1f84  f0 20 c1 e1                                      strd r2, r3, [r1]
007d1f88  13 0e 8d e2                                      add r0, sp, #0x130
007d1f8c  0e 20 a0 e1                                      mov r2, lr
007d1f90  c2 3f a0 e1                                      asr r3, r2, #0x1f
007d1f94  f8 20 40 e1                                      strd r2, r3, [r0, #-8]
007d1f98  0c 00 a0 e1                                      mov r0, ip
007d1f9c  f2 cc ff eb                                      bl #0x7c536c
007d1fa0  00 a0 80 e5                                      str sl, [r0]
007d1fa4  0a 10 a0 e1                                      mov r1, sl
007d1fa8  11 2e 8d e2                                      add r2, sp, #0x110
007d1fac  10 00 9d e5                                      ldr r0, [sp, #0x10]
007d1fb0  1e 13 fe eb                                      bl #0x756c30
007d1fb4  10 10 9d e5                                      ldr r1, [sp, #0x10]
007d1fb8  18 a1 9d e5                                      ldr sl, [sp, #0x118]
007d1fbc  38 20 91 e5                                      ldr r2, [r1, #0x38]
007d1fc0  34 30 91 e5                                      ldr r3, [r1, #0x34]
007d1fc4  40 20 8d e5                                      str r2, [sp, #0x40]
007d1fc8  03 00 a0 e1                                      mov r0, r3
007d1fcc  00 30 93 e5                                      ldr r3, [r3]
007d1fd0  0f e0 a0 e1                                      mov lr, pc
007d1fd4  24 f0 93 e5                                      ldr pc, [r3, #0x24]
007d1fd8  00 60 a0 e1                                      mov r6, r0
007d1fdc  40 00 9d e5                                      ldr r0, [sp, #0x40]
007d1fe0  5f f2 ec eb                                      bl #0x30e964
007d1fe4  00 50 a0 e1                                      mov r5, r0
007d1fe8  06 00 a0 e1                                      mov r0, r6
007d1fec  5c f2 ec eb                                      bl #0x30e964
007d1ff0  00 10 a0 e1                                      mov r1, r0
007d1ff4  0a 00 a0 e1                                      mov r0, sl
007d1ff8  5b f3 ec eb                                      bl #0x30ed6c
007d1ffc  05 10 a0 e1                                      mov r1, r5
007d2000  59 f3 ec eb                                      bl #0x30ed6c
007d2004  10 11 9d e5                                      ldr r1, [sp, #0x110]
007d2008  00 60 a0 e1                                      mov r6, r0
007d200c  05 00 a0 e1                                      mov r0, r5
007d2010  55 f3 ec eb                                      bl #0x30ed6c
007d2014  00 10 a0 e1                                      mov r1, r0
007d2018  06 00 a0 e1                                      mov r0, r6
007d201c  e0 f2 ec eb                                      bl #0x30eba4
007d2020  29 f1 ec eb                                      bl #0x30e4cc
007d2024  10 c0 9d e5                                      ldr ip, [sp, #0x10]
007d2028  24 e0 9d e5                                      ldr lr, [sp, #0x24]
007d202c  34 30 9c e5                                      ldr r3, [ip, #0x34]
007d2030  00 00 8e e0                                      add r0, lr, r0
007d2034  50 00 8d e5                                      str r0, [sp, #0x50]
007d2038  03 00 a0 e1                                      mov r0, r3
007d203c  00 30 93 e5                                      ldr r3, [r3]
007d2040  0f e0 a0 e1                                      mov lr, pc
007d2044  24 f0 93 e5                                      ldr pc, [r3, #0x24]
007d2048  40 10 9d e5                                      ldr r1, [sp, #0x40]
007d204c  30 31 9d e5                                      ldr r3, [sp, #0x130]
007d2050  91 00 00 e0                                      mul r0, r1, r0
007d2054  00 00 53 e3                                      cmp r3, #0
007d2058  3c 00 8d e5                                      str r0, [sp, #0x3c]
007d205c  0d 00 00 da                                      ble #0x7d2098
007d2060  08 60 9d e5                                      ldr r6, [sp, #8]
007d2064  50 50 9d e5                                      ldr r5, [sp, #0x50]
007d2068  00 90 a0 e1                                      mov sb, r0
007d206c  01 a0 a0 e1                                      mov sl, r1
007d2070  34 21 9d e5                                      ldr r2, [sp, #0x134]
007d2074  05 00 a0 e1                                      mov r0, r5
007d2078  00 10 a0 e3                                      mov r1, #0
007d207c  92 0a 02 e0                                      mul r2, r2, sl
007d2080  f6 f0 ec eb                                      bl #0x30e460
007d2084  30 31 9d e5                                      ldr r3, [sp, #0x130]
007d2088  01 60 86 e2                                      add r6, r6, #1
007d208c  09 50 85 e0                                      add r5, r5, sb
007d2090  06 00 53 e1                                      cmp r3, r6
007d2094  f5 ff ff ca                                      bgt #0x7d2070
007d2098  00 00 5b e3                                      cmp fp, #0
007d209c  0c 60 94 e5                                      ldr r6, [r4, #0xc]
007d20a0  08 50 94 e5                                      ldr r5, [r4, #8]
007d20a4  04 90 94 e5                                      ldr sb, [r4, #4]
007d20a8  00 a0 94 e5                                      ldr sl, [r4]
007d20ac  3c 00 00 1a                                      bne #0x7d21a4
007d20b0  07 10 98 e1                                      orrs r1, r8, r7
007d20b4  eb 00 00 1a                                      bne #0x7d2468
007d20b8  00 00 5a e3                                      cmp sl, #0
007d20bc  18 00 00 da                                      ble #0x7d2124
007d20c0  50 70 9d e5                                      ldr r7, [sp, #0x50]
007d20c4  40 b0 9d e5                                      ldr fp, [sp, #0x40]
007d20c8  00 80 a0 e3                                      mov r8, #0
007d20cc  00 40 e0 e3                                      mvn r4, #0
007d20d0  01 00 5b e3                                      cmp fp, #1
007d20d4  07 30 a0 e1                                      mov r3, r7
007d20d8  26 00 00 0a                                      beq #0x7d2178
007d20dc  00 00 59 e3                                      cmp sb, #0
007d20e0  00 20 a0 c3                                      movgt r2, #0
007d20e4  08 00 00 da                                      ble #0x7d210c
007d20e8  00 40 c3 e5                                      strb r4, [r3]
007d20ec  01 40 c3 e5                                      strb r4, [r3, #1]
007d20f0  02 40 c3 e5                                      strb r4, [r3, #2]
007d20f4  02 10 d6 e7                                      ldrb r1, [r6, r2]
007d20f8  01 20 82 e2                                      add r2, r2, #1
007d20fc  09 00 52 e1                                      cmp r2, sb
007d2100  03 10 c3 e5                                      strb r1, [r3, #3]
007d2104  04 30 83 e2                                      add r3, r3, #4
007d2108  f6 ff ff 1a                                      bne #0x7d20e8
007d210c  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
007d2110  01 80 88 e2                                      add r8, r8, #1
007d2114  0a 00 58 e1                                      cmp r8, sl
007d2118  00 70 87 e0                                      add r7, r7, r0
007d211c  05 60 86 e0                                      add r6, r6, r5
007d2120  ea ff ff 1a                                      bne #0x7d20d0
007d2124  54 10 9d e5                                      ldr r1, [sp, #0x54]
007d2128  00 00 51 e3                                      cmp r1, #0
007d212c  0a 00 00 1a                                      bne #0x7d215c
007d2130  01 00 a0 e3                                      mov r0, #1
007d2134  00 00 00 ea                                      b #0x7d213c
007d2138  00 00 a0 e3                                      mov r0, #0
007d213c  4f df 8d e2                                      add sp, sp, #0x13c
007d2140  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007d2144  8b 10 a0 e1                                      lsl r1, fp, #1
007d2148  03 30 81 e0                                      add r3, r1, r3
007d214c  02 20 81 e0                                      add r2, r1, r2
007d2150  34 21 8d e5                                      str r2, [sp, #0x134]
007d2154  30 31 8d e5                                      str r3, [sp, #0x130]
007d2158  5d ff ff ea                                      b #0x7d1ed4
007d215c  10 20 9d e5                                      ldr r2, [sp, #0x10]
007d2160  f8 10 8d e2                                      add r1, sp, #0xf8
007d2164  50 30 92 e5                                      ldr r3, [r2, #0x50]
007d2168  00 00 93 e5                                      ldr r0, [r3]
007d216c  ec e9 fc eb                                      bl #0x70c924
007d2170  01 00 a0 e3                                      mov r0, #1
007d2174  f0 ff ff ea                                      b #0x7d213c
007d2178  07 00 a0 e1                                      mov r0, r7
007d217c  06 10 a0 e1                                      mov r1, r6
007d2180  09 20 a0 e1                                      mov r2, sb
007d2184  b7 f1 ec eb                                      bl #0x30e868
007d2188  df ff ff ea                                      b #0x7d210c
007d218c  10 00 9d e5                                      ldr r0, [sp, #0x10]
007d2190  34 11 9d e5                                      ldr r1, [sp, #0x134]
007d2194  30 21 9d e5                                      ldr r2, [sp, #0x130]
007d2198  32 09 ff eb                                      bl #0x794668
007d219c  00 a0 a0 e1                                      mov sl, r0
007d21a0  55 ff ff ea                                      b #0x7d1efc
007d21a4  34 51 9d e5                                      ldr r5, [sp, #0x134]
007d21a8  10 20 9d e5                                      ldr r2, [sp, #0x10]
007d21ac  95 03 05 e0                                      mul r5, r5, r3
007d21b0  40 70 82 e2                                      add r7, r2, #0x40
007d21b4  00 00 55 e3                                      cmp r5, #0
007d21b8  44 60 92 e5                                      ldr r6, [r2, #0x44]
007d21bc  02 00 00 0a                                      beq #0x7d21cc
007d21c0  48 30 92 e5                                      ldr r3, [r2, #0x48]
007d21c4  03 00 55 e1                                      cmp r5, r3
007d21c8  17 01 00 ca                                      bgt #0x7d262c
007d21cc  06 00 55 e1                                      cmp r5, r6
007d21d0  05 00 00 da                                      ble #0x7d21ec
007d21d4  00 30 a0 e3                                      mov r3, #0
007d21d8  00 20 97 e5                                      ldr r2, [r7]
007d21dc  06 30 c2 e7                                      strb r3, [r2, r6]
007d21e0  01 60 86 e2                                      add r6, r6, #1
007d21e4  05 00 56 e1                                      cmp r6, r5
007d21e8  fa ff ff 1a                                      bne #0x7d21d8
007d21ec  10 30 9d e5                                      ldr r3, [sp, #0x10]
007d21f0  05 20 a0 e1                                      mov r2, r5
007d21f4  00 10 a0 e3                                      mov r1, #0
007d21f8  44 50 83 e5                                      str r5, [r3, #0x44]
007d21fc  40 00 93 e5                                      ldr r0, [r3, #0x40]
007d2200  96 f0 ec eb                                      bl #0x30e460
007d2204  0b 00 a0 e1                                      mov r0, fp
007d2208  d5 f1 ec eb                                      bl #0x30e964
007d220c  00 10 a0 e1                                      mov r1, r0
007d2210  63 f2 ec eb                                      bl #0x30eba4
007d2214  4c 24 9f e5                                      ldr r2, [pc, #0x44c]
007d2218  14 c0 9d e5                                      ldr ip, [sp, #0x14]
007d221c  8b 30 a0 e1                                      lsl r3, fp, #1
007d2220  03 b0 6b e0                                      rsb fp, fp, r3
007d2224  02 20 9c e7                                      ldr r2, [ip, r2]
007d2228  10 e0 9d e5                                      ldr lr, [sp, #0x10]
007d222c  01 b0 8b e2                                      add fp, fp, #1
007d2230  01 30 83 e2                                      add r3, r3, #1
007d2234  34 91 9d e5                                      ldr sb, [sp, #0x134]
007d2238  18 00 8d e5                                      str r0, [sp, #0x18]
007d223c  28 20 8d e5                                      str r2, [sp, #0x28]
007d2240  48 b0 8d e5                                      str fp, [sp, #0x48]
007d2244  4c 30 8d e5                                      str r3, [sp, #0x4c]
007d2248  44 b0 8d e5                                      str fp, [sp, #0x44]
007d224c  24 30 8d e5                                      str r3, [sp, #0x24]
007d2250  00 b0 94 e5                                      ldr fp, [r4]
007d2254  40 60 9e e5                                      ldr r6, [lr, #0x40]
007d2258  38 20 8d e5                                      str r2, [sp, #0x38]
007d225c  44 30 8d e2                                      add r3, sp, #0x44
007d2260  08 50 93 e8                                      ldm r3, {r3, ip, lr}
007d2264  00 00 53 e3                                      cmp r3, #0
007d2268  00 30 63 b2                                      rsblt r3, r3, #0
007d226c  34 30 8d e5                                      str r3, [sp, #0x34]
007d2270  09 50 a0 e1                                      mov r5, sb
007d2274  14 c0 8d e5                                      str ip, [sp, #0x14]
007d2278  08 e0 8d e5                                      str lr, [sp, #8]
007d227c  14 00 9d e5                                      ldr r0, [sp, #0x14]
007d2280  00 00 50 e3                                      cmp r0, #0
007d2284  00 00 60 b2                                      rsblt r0, r0, #0
007d2288  b5 f1 ec eb                                      bl #0x30e964
007d228c  00 10 a0 e1                                      mov r1, r0
007d2290  18 00 9d e5                                      ldr r0, [sp, #0x18]
007d2294  44 f0 ec eb                                      bl #0x30e3ac
007d2298  00 70 a0 e1                                      mov r7, r0
007d229c  34 00 9d e5                                      ldr r0, [sp, #0x34]
007d22a0  af f1 ec eb                                      bl #0x30e964
007d22a4  00 10 a0 e1                                      mov r1, r0
007d22a8  07 00 a0 e1                                      mov r0, r7
007d22ac  3e f0 ec eb                                      bl #0x30e3ac
007d22b0  18 10 9d e5                                      ldr r1, [sp, #0x18]
007d22b4  76 f2 ec eb                                      bl #0x30ec94
007d22b8  43 14 a0 e3                                      mov r1, #0x43000000
007d22bc  7f 18 81 e2                                      add r1, r1, #0x7f0000
007d22c0  a9 f2 ec eb                                      bl #0x30ed6c
007d22c4  00 10 a0 e3                                      mov r1, #0
007d22c8  00 80 a0 e1                                      mov r8, r0
007d22cc  0e f1 ec eb                                      bl #0x30e70c
007d22d0  00 00 50 e3                                      cmp r0, #0
007d22d4  0c 70 94 e5                                      ldr r7, [r4, #0xc]
007d22d8  00 00 a0 13                                      movne r0, #0
007d22dc  06 00 00 1a                                      bne #0x7d22fc
007d22e0  43 14 a0 e3                                      mov r1, #0x43000000
007d22e4  08 00 a0 e1                                      mov r0, r8
007d22e8  7f 18 81 e2                                      add r1, r1, #0x7f0000
007d22ec  06 f1 ec eb                                      bl #0x30e70c
007d22f0  00 00 50 e3                                      cmp r0, #0
007d22f4  ff 00 a0 03                                      moveq r0, #0xff
007d22f8  d2 00 00 1a                                      bne #0x7d2648
007d22fc  28 10 9d e5                                      ldr r1, [sp, #0x28]
007d2300  00 00 d1 e7                                      ldrb r0, [r1, r0]
007d2304  96 f1 ec eb                                      bl #0x30e964
007d2308  43 14 a0 e3                                      mov r1, #0x43000000
007d230c  7f 18 81 e2                                      add r1, r1, #0x7f0000
007d2310  5f f2 ec eb                                      bl #0x30ec94
007d2314  43 14 a0 e3                                      mov r1, #0x43000000
007d2318  7f 18 81 e2                                      add r1, r1, #0x7f0000
007d231c  92 f2 ec eb                                      bl #0x30ed6c
007d2320  00 10 a0 e3                                      mov r1, #0
007d2324  00 80 a0 e1                                      mov r8, r0
007d2328  f7 f0 ec eb                                      bl #0x30e70c
007d232c  00 00 50 e3                                      cmp r0, #0
007d2330  00 00 a0 13                                      movne r0, #0
007d2334  06 00 00 1a                                      bne #0x7d2354
007d2338  43 14 a0 e3                                      mov r1, #0x43000000
007d233c  08 00 a0 e1                                      mov r0, r8
007d2340  7f 18 81 e2                                      add r1, r1, #0x7f0000
007d2344  f0 f0 ec eb                                      bl #0x30e70c
007d2348  00 00 50 e3                                      cmp r0, #0
007d234c  ff 00 a0 03                                      moveq r0, #0xff
007d2350  b9 00 00 1a                                      bne #0x7d263c
007d2354  38 20 9d e5                                      ldr r2, [sp, #0x38]
007d2358  00 00 d2 e7                                      ldrb r0, [r2, r0]
007d235c  80 f1 ec eb                                      bl #0x30e964
007d2360  43 14 a0 e3                                      mov r1, #0x43000000
007d2364  7f 18 81 e2                                      add r1, r1, #0x7f0000
007d2368  49 f2 ec eb                                      bl #0x30ec94
007d236c  00 00 5b e3                                      cmp fp, #0
007d2370  00 80 a0 e1                                      mov r8, r0
007d2374  9a 00 00 da                                      ble #0x7d25e4
007d2378  24 c0 9d e5                                      ldr ip, [sp, #0x24]
007d237c  08 00 9d e5                                      ldr r0, [sp, #8]
007d2380  00 a0 a0 e3                                      mov sl, #0
007d2384  9c 09 23 e0                                      mla r3, ip, sb, r0
007d2388  03 60 86 e0                                      add r6, r6, r3
007d238c  04 30 94 e5                                      ldr r3, [r4, #4]
007d2390  00 00 53 e3                                      cmp r3, #0
007d2394  00 50 a0 c3                                      movgt r5, #0
007d2398  11 00 00 da                                      ble #0x7d23e4
007d239c  05 00 d7 e7                                      ldrb r0, [r7, r5]
007d23a0  6f f1 ec eb                                      bl #0x30e964
007d23a4  08 10 a0 e1                                      mov r1, r8
007d23a8  6f f2 ec eb                                      bl #0x30ed6c
007d23ac  46 f0 ec eb                                      bl #0x30e4cc
007d23b0  05 30 d6 e7                                      ldrb r3, [r6, r5]
007d23b4  ff 00 50 e3                                      cmp r0, #0xff
007d23b8  ff 00 a0 a3                                      movge r0, #0xff
007d23bc  03 00 50 e1                                      cmp r0, r3
007d23c0  00 30 a0 a1                                      movge r3, r0
007d23c4  03 30 a0 b1                                      movlt r3, r3
007d23c8  05 30 c6 e7                                      strb r3, [r6, r5]
007d23cc  04 30 94 e5                                      ldr r3, [r4, #4]
007d23d0  01 50 85 e2                                      add r5, r5, #1
007d23d4  05 00 53 e1                                      cmp r3, r5
007d23d8  ef ff ff ca                                      bgt #0x7d239c
007d23dc  00 b0 94 e5                                      ldr fp, [r4]
007d23e0  34 91 9d e5                                      ldr sb, [sp, #0x134]
007d23e4  01 a0 8a e2                                      add sl, sl, #1
007d23e8  0a 00 5b e1                                      cmp fp, sl
007d23ec  08 20 94 e5                                      ldr r2, [r4, #8]
007d23f0  09 50 a0 e1                                      mov r5, sb
007d23f4  78 00 00 da                                      ble #0x7d25dc
007d23f8  02 70 87 e0                                      add r7, r7, r2
007d23fc  09 60 86 e0                                      add r6, r6, sb
007d2400  e2 ff ff ea                                      b #0x7d2390
007d2404  f8 40 8d e2                                      add r4, sp, #0xf8
007d2408  04 00 a0 e1                                      mov r0, r4
007d240c  3a e9 fc eb                                      bl #0x70c8fc
007d2410  24 30 95 e5                                      ldr r3, [r5, #0x24]
007d2414  10 c0 9d e5                                      ldr ip, [sp, #0x10]
007d2418  04 20 a0 e1                                      mov r2, r4
007d241c  54 10 93 e5                                      ldr r1, [r3, #0x54]
007d2420  50 00 9c e5                                      ldr r0, [ip, #0x50]
007d2424  01 30 a0 e3                                      mov r3, #1
007d2428  4c 10 81 e2                                      add r1, r1, #0x4c
007d242c  00 00 90 e5                                      ldr r0, [r0]
007d2430  52 e9 fc eb                                      bl #0x70c980
007d2434  fc 20 9d e5                                      ldr r2, [sp, #0xfc]
007d2438  f8 30 9d e5                                      ldr r3, [sp, #0xf8]
007d243c  92 03 03 e0                                      mul r3, r2, r3
007d2440  00 00 53 e3                                      cmp r3, #0
007d2444  83 fe ff da                                      ble #0x7d1e58
007d2448  04 21 9d e5                                      ldr r2, [sp, #0x104]
007d244c  07 10 d2 e7                                      ldrb r1, [r2, r7]
007d2450  00 10 61 e2                                      rsb r1, r1, #0
007d2454  07 10 c2 e7                                      strb r1, [r2, r7]
007d2458  01 70 87 e2                                      add r7, r7, #1
007d245c  03 00 57 e1                                      cmp r7, r3
007d2460  f8 ff ff 1a                                      bne #0x7d2448
007d2464  7b fe ff ea                                      b #0x7d1e58
007d2468  34 91 9d e5                                      ldr sb, [sp, #0x134]
007d246c  88 30 83 e0                                      add r3, r3, r8, lsl #1
007d2470  10 20 9d e5                                      ldr r2, [sp, #0x10]
007d2474  87 90 89 e0                                      add sb, sb, r7, lsl #1
007d2478  99 03 09 e0                                      mul sb, sb, r3
007d247c  40 a0 82 e2                                      add sl, r2, #0x40
007d2480  89 50 b0 e1                                      lsls r5, sb, #1
007d2484  44 60 92 e5                                      ldr r6, [r2, #0x44]
007d2488  02 00 00 0a                                      beq #0x7d2498
007d248c  48 30 92 e5                                      ldr r3, [r2, #0x48]
007d2490  03 00 55 e1                                      cmp r5, r3
007d2494  6e 00 00 ca                                      bgt #0x7d2654
007d2498  00 30 a0 e3                                      mov r3, #0
007d249c  02 00 00 ea                                      b #0x7d24ac
007d24a0  00 20 9a e5                                      ldr r2, [sl]
007d24a4  06 30 c2 e7                                      strb r3, [r2, r6]
007d24a8  01 60 86 e2                                      add r6, r6, #1
007d24ac  06 00 55 e1                                      cmp r5, r6
007d24b0  fa ff ff ca                                      bgt #0x7d24a0
007d24b4  10 30 9d e5                                      ldr r3, [sp, #0x10]
007d24b8  05 20 a0 e1                                      mov r2, r5
007d24bc  00 10 a0 e3                                      mov r1, #0
007d24c0  44 50 83 e5                                      str r5, [r3, #0x44]
007d24c4  40 00 93 e5                                      ldr r0, [r3, #0x40]
007d24c8  01 50 a0 e3                                      mov r5, #1
007d24cc  e3 ef ec eb                                      bl #0x30e460
007d24d0  f4 50 8d e5                                      str r5, [sp, #0xf4]
007d24d4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
007d24d8  00 60 a0 e3                                      mov r6, #0
007d24dc  e4 60 8d e5                                      str r6, [sp, #0xe4]
007d24e0  e0 60 8d e5                                      str r6, [sp, #0xe0]
007d24e4  dc 30 8d e5                                      str r3, [sp, #0xdc]
007d24e8  08 30 94 e5                                      ldr r3, [r4, #8]
007d24ec  10 c0 9d e5                                      ldr ip, [sp, #0x10]
007d24f0  34 e1 9d e5                                      ldr lr, [sp, #0x134]
007d24f4  f0 30 8d e5                                      str r3, [sp, #0xf0]
007d24f8  04 20 94 e5                                      ldr r2, [r4, #4]
007d24fc  40 30 9c e5                                      ldr r3, [ip, #0x40]
007d2500  c0 10 8d e2                                      add r1, sp, #0xc0
007d2504  e8 20 8d e5                                      str r2, [sp, #0xe8]
007d2508  30 21 9d e5                                      ldr r2, [sp, #0x130]
007d250c  00 40 94 e5                                      ldr r4, [r4]
007d2510  01 c0 4e e2                                      sub ip, lr, #1
007d2514  01 20 42 e2                                      sub r2, r2, #1
007d2518  dc 00 8d e2                                      add r0, sp, #0xdc
007d251c  c0 30 8d e5                                      str r3, [sp, #0xc0]
007d2520  cc c0 8d e5                                      str ip, [sp, #0xcc]
007d2524  d0 20 8d e5                                      str r2, [sp, #0xd0]
007d2528  d4 e0 8d e5                                      str lr, [sp, #0xd4]
007d252c  d8 50 8d e5                                      str r5, [sp, #0xd8]
007d2530  ec 40 8d e5                                      str r4, [sp, #0xec]
007d2534  c4 70 8d e5                                      str r7, [sp, #0xc4]
007d2538  c8 80 8d e5                                      str r8, [sp, #0xc8]
007d253c  ce 16 fe eb                                      bl #0x75807c
007d2540  07 00 a0 e1                                      mov r0, r7
007d2544  94 50 8d e5                                      str r5, [sp, #0x94]
007d2548  64 ef ec eb                                      bl #0x30e2e0
007d254c  b4 00 8d e5                                      str r0, [sp, #0xb4]
007d2550  08 00 a0 e1                                      mov r0, r8
007d2554  61 ef ec eb                                      bl #0x30e2e0
007d2558  10 e0 9d e5                                      ldr lr, [sp, #0x10]
007d255c  34 31 9d e5                                      ldr r3, [sp, #0x134]
007d2560  30 21 9d e5                                      ldr r2, [sp, #0x130]
007d2564  40 c0 9e e5                                      ldr ip, [lr, #0x40]
007d2568  01 10 43 e2                                      sub r1, r3, #1
007d256c  01 20 42 e2                                      sub r2, r2, #1
007d2570  09 90 8c e0                                      add sb, ip, sb
007d2574  b8 00 8d e5                                      str r0, [sp, #0xb8]
007d2578  94 e0 8d e2                                      add lr, sp, #0x94
007d257c  58 00 8d e2                                      add r0, sp, #0x58
007d2580  90 50 8d e5                                      str r5, [sp, #0x90]
007d2584  78 90 8d e5                                      str sb, [sp, #0x78]
007d2588  80 60 8d e5                                      str r6, [sp, #0x80]
007d258c  bc 50 8d e5                                      str r5, [sp, #0xbc]
007d2590  74 50 8d e5                                      str r5, [sp, #0x74]
007d2594  60 60 8d e5                                      str r6, [sp, #0x60]
007d2598  64 60 8d e5                                      str r6, [sp, #0x64]
007d259c  7c 60 8d e5                                      str r6, [sp, #0x7c]
007d25a0  58 e0 8d e5                                      str lr, [sp, #0x58]
007d25a4  8c 30 8d e5                                      str r3, [sp, #0x8c]
007d25a8  84 10 8d e5                                      str r1, [sp, #0x84]
007d25ac  88 20 8d e5                                      str r2, [sp, #0x88]
007d25b0  5c c0 8d e5                                      str ip, [sp, #0x5c]
007d25b4  70 30 8d e5                                      str r3, [sp, #0x70]
007d25b8  68 10 8d e5                                      str r1, [sp, #0x68]
007d25bc  6c 20 8d e5                                      str r2, [sp, #0x6c]
007d25c0  de 16 fe eb                                      bl #0x758140
007d25c4  34 51 9d e5                                      ldr r5, [sp, #0x134]
007d25c8  30 a1 9d e5                                      ldr sl, [sp, #0x130]
007d25cc  78 60 9d e5                                      ldr r6, [sp, #0x78]
007d25d0  01 90 45 e2                                      sub sb, r5, #1
007d25d4  01 a0 4a e2                                      sub sl, sl, #1
007d25d8  b6 fe ff ea                                      b #0x7d20b8
007d25dc  10 10 9d e5                                      ldr r1, [sp, #0x10]
007d25e0  40 60 91 e5                                      ldr r6, [r1, #0x40]
007d25e4  08 20 9d e5                                      ldr r2, [sp, #8]
007d25e8  14 30 9d e5                                      ldr r3, [sp, #0x14]
007d25ec  01 20 52 e2                                      subs r2, r2, #1
007d25f0  01 30 43 e2                                      sub r3, r3, #1
007d25f4  08 20 8d e5                                      str r2, [sp, #8]
007d25f8  14 30 8d e5                                      str r3, [sp, #0x14]
007d25fc  1e ff ff 5a                                      bpl #0x7d227c
007d2600  24 c0 9d e5                                      ldr ip, [sp, #0x24]
007d2604  44 00 9d e5                                      ldr r0, [sp, #0x44]
007d2608  01 c0 5c e2                                      subs ip, ip, #1
007d260c  01 00 40 e2                                      sub r0, r0, #1
007d2610  24 c0 8d e5                                      str ip, [sp, #0x24]
007d2614  44 00 8d e5                                      str r0, [sp, #0x44]
007d2618  0f ff ff 5a                                      bpl #0x7d225c
007d261c  30 a1 9d e5                                      ldr sl, [sp, #0x130]
007d2620  01 90 49 e2                                      sub sb, sb, #1
007d2624  01 a0 4a e2                                      sub sl, sl, #1
007d2628  a2 fe ff ea                                      b #0x7d20b8
007d262c  07 00 a0 e1                                      mov r0, r7
007d2630  c5 10 85 e0                                      add r1, r5, r5, asr #1
007d2634  fc 12 fe eb                                      bl #0x75722c
007d2638  e3 fe ff ea                                      b #0x7d21cc
007d263c  08 00 a0 e1                                      mov r0, r8
007d2640  a1 ef ec eb                                      bl #0x30e4cc
007d2644  42 ff ff ea                                      b #0x7d2354
007d2648  08 00 a0 e1                                      mov r0, r8
007d264c  9e ef ec eb                                      bl #0x30e4cc
007d2650  29 ff ff ea                                      b #0x7d22fc
007d2654  0a 00 a0 e1                                      mov r0, sl
007d2658  c5 10 85 e0                                      add r1, r5, r5, asr #1
007d265c  f2 12 fe eb                                      bl #0x75722c
007d2660  8c ff ff ea                                      b #0x7d2498
; mapping-symbol data/literal pool
007d2664  6c 2c 1c 00 90 1e 00 00                          .byte 0x6c, 0x2c, 0x1c, 0x00, 0x90, 0x1e, 0x00, 0x00

; FUNCTION 0x007d266c, declared_size=360, range_size=360, mode=arm
; class-group: gameswf::glyph_texture_cache
; alias: _ZN7gameswf19glyph_texture_cache16get_glyph_regionEtPviRNS0_11filter_infoERNS_4rectE
; demangled: gameswf::glyph_texture_cache::get_glyph_region(unsigned short, void*, int, gameswf::glyph_texture_cache::filter_info&, gameswf::rect&)
; decoder-mode: arm
007d266c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007d2670  34 d0 4d e2                                      sub sp, sp, #0x34
007d2674  1c 30 8d e5                                      str r3, [sp, #0x1c]
007d2678  58 60 9d e5                                      ldr r6, [sp, #0x58]
007d267c  1c 40 9d e5                                      ldr r4, [sp, #0x1c]
007d2680  01 a0 a0 e1                                      mov sl, r1
007d2684  02 10 d6 e5                                      ldrb r1, [r6, #2]
007d2688  01 e0 d6 e5                                      ldrb lr, [r6, #1]
007d268c  74 c0 ef e6                                      uxtb ip, r4
007d2690  00 30 d6 e5                                      ldrb r3, [r6]
007d2694  0c c8 a0 e1                                      lsl ip, ip, #0x10
007d2698  00 40 a0 e3                                      mov r4, #0
007d269c  01 14 a0 e1                                      lsl r1, r1, #8
007d26a0  0e 18 81 e1                                      orr r1, r1, lr, lsl #16
007d26a4  14 c0 8d e5                                      str ip, [sp, #0x14]
007d26a8  00 70 a0 e1                                      mov r7, r0
007d26ac  10 40 8d e5                                      str r4, [sp, #0x10]
007d26b0  02 00 84 e1                                      orr r0, r4, r2
007d26b4  03 c0 81 e1                                      orr ip, r1, r3
007d26b8  18 20 8d e5                                      str r2, [sp, #0x18]
007d26bc  d0 21 cd e1                                      ldrd r2, r3, [sp, #0x10]
007d26c0  02 00 80 e1                                      orr r0, r0, r2
007d26c4  03 10 8a e1                                      orr r1, sl, r3
007d26c8  f0 02 cd e1                                      strd r0, r1, [sp, #0x20]
007d26cc  30 90 87 e2                                      add sb, r7, #0x30
007d26d0  0c 00 a0 e1                                      mov r0, ip
007d26d4  c0 1f a0 e1                                      asr r1, r0, #0x1f
007d26d8  20 b0 8d e2                                      add fp, sp, #0x20
007d26dc  f8 02 cd e1                                      strd r0, r1, [sp, #0x28]
007d26e0  09 00 a0 e1                                      mov r0, sb
007d26e4  0b 10 a0 e1                                      mov r1, fp
007d26e8  0b 12 fe eb                                      bl #0x756f1c
007d26ec  d8 80 9f e5                                      ldr r8, [pc, #0xd8]
007d26f0  00 00 50 e3                                      cmp r0, #0
007d26f4  0a 50 a0 e1                                      mov r5, sl
007d26f8  08 80 8f e0                                      add r8, pc, r8
007d26fc  09 00 00 ba                                      blt #0x7d2728
007d2700  30 30 97 e5                                      ldr r3, [r7, #0x30]
007d2704  80 02 83 e0                                      add r0, r3, r0, lsl #5
007d2708  20 10 90 e5                                      ldr r1, [r0, #0x20]
007d270c  00 00 51 e3                                      cmp r1, #0
007d2710  02 00 00 0a                                      beq #0x7d2720
007d2714  07 00 a0 e1                                      mov r0, r7
007d2718  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
007d271c  43 11 fe eb                                      bl #0x756c30
007d2720  34 d0 8d e2                                      add sp, sp, #0x34
007d2724  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007d2728  07 00 a0 e1                                      mov r0, r7
007d272c  0a 10 a0 e1                                      mov r1, sl
007d2730  18 20 9d e5                                      ldr r2, [sp, #0x18]
007d2734  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
007d2738  04 40 8d e5                                      str r4, [sp, #4]
007d273c  00 60 8d e5                                      str r6, [sp]
007d2740  97 fd ff eb                                      bl #0x7d1da4
007d2744  00 00 50 e3                                      cmp r0, #0
007d2748  05 00 00 0a                                      beq #0x7d2764
007d274c  09 00 a0 e1                                      mov r0, sb
007d2750  0b 10 a0 e1                                      mov r1, fp
007d2754  f0 11 fe eb                                      bl #0x756f1c
007d2758  00 00 50 e3                                      cmp r0, #0
007d275c  e7 ff ff aa                                      bge #0x7d2700
007d2760  ee ff ff ea                                      b #0x7d2720
007d2764  64 30 9f e5                                      ldr r3, [pc, #0x64]
007d2768  03 30 98 e7                                      ldr r3, [r8, r3]
007d276c  00 30 93 e5                                      ldr r3, [r3]
007d2770  03 00 a0 e1                                      mov r0, r3
007d2774  00 30 93 e5                                      ldr r3, [r3]
007d2778  0f e0 a0 e1                                      mov lr, pc
007d277c  94 f0 93 e5                                      ldr pc, [r3, #0x94]
007d2780  01 c0 a0 e3                                      mov ip, #1
007d2784  07 00 a0 e1                                      mov r0, r7
007d2788  0a 10 a0 e1                                      mov r1, sl
007d278c  18 20 9d e5                                      ldr r2, [sp, #0x18]
007d2790  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
007d2794  40 10 8d e8                                      stm sp, {r6, ip}
007d2798  81 fd ff eb                                      bl #0x7d1da4
007d279c  00 40 50 e2                                      subs r4, r0, #0
007d27a0  e9 ff ff 1a                                      bne #0x7d274c
007d27a4  07 00 a0 e1                                      mov r0, r7
007d27a8  ca 05 ff eb                                      bl #0x793ed8
007d27ac  0a 10 a0 e1                                      mov r1, sl
007d27b0  18 20 9d e5                                      ldr r2, [sp, #0x18]
007d27b4  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
007d27b8  07 00 a0 e1                                      mov r0, r7
007d27bc  00 60 8d e5                                      str r6, [sp]
007d27c0  04 40 8d e5                                      str r4, [sp, #4]
007d27c4  76 fd ff eb                                      bl #0x7d1da4
007d27c8  df ff ff ea                                      b #0x7d274c
; mapping-symbol data/literal pool
007d27cc  98 23 1c 00 b4 39 00 00                          .byte 0x98, 0x23, 0x1c, 0x00, 0xb4, 0x39, 0x00, 0x00
