; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003ef184, declared_size=4, range_size=4, mode=arm
; class-group: LevelConfig
; alias: _ZN11LevelConfig6UpdateEv
; demangled: LevelConfig::Update()
; decoder-mode: arm
003ef184  1e ff 2f e1                                      bx lr

; FUNCTION 0x003ef188, declared_size=4, range_size=4, mode=arm
; class-group: LevelConfig
; alias: _ZNK11LevelConfig4DrawEv
; demangled: LevelConfig::Draw() const
; decoder-mode: arm
003ef188  1e ff 2f e1                                      bx lr

; FUNCTION 0x003f20c0, declared_size=8, range_size=8, mode=arm
; class-group: LevelConfig
; alias: _ZThn36_N11LevelConfigD1Ev
; demangled: non-virtual thunk to LevelConfig::~LevelConfig()
; decoder-mode: arm
003f20c0  24 00 40 e2                                      sub r0, r0, #0x24
003f20c4  ff ff ff ea                                      b #0x3f20c8

; FUNCTION 0x003f20c8, declared_size=196, range_size=196, mode=arm
; class-group: LevelConfig
; alias: _ZN11LevelConfigD1Ev
; demangled: LevelConfig::~LevelConfig()
; decoder-mode: arm
003f20c8  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
003f20cc  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
003f20d0  10 40 2d e9                                      push {r4, lr}
003f20d4  02 20 8f e0                                      add r2, pc, r2
003f20d8  03 30 92 e7                                      ldr r3, [r2, r3]
003f20dc  00 40 a0 e1                                      mov r4, r0
003f20e0  03 0c 80 e2                                      add r0, r0, #0x300
003f20e4  74 20 83 e2                                      add r2, r3, #0x74
003f20e8  08 10 83 e2                                      add r1, r3, #8
003f20ec  68 30 83 e2                                      add r3, r3, #0x68
003f20f0  0a 00 84 e8                                      stm r4, {r1, r3}
003f20f4  24 20 84 e5                                      str r2, [r4, #0x24]
003f20f8  2b 86 fc eb                                      bl #0x3139ac
003f20fc  ba 0f 84 e2                                      add r0, r4, #0x2e8
003f2100  29 86 fc eb                                      bl #0x3139ac
003f2104  2d 0e 84 e2                                      add r0, r4, #0x2d0
003f2108  27 86 fc eb                                      bl #0x3139ac
003f210c  ae 0f 84 e2                                      add r0, r4, #0x2b8
003f2110  25 86 fc eb                                      bl #0x3139ac
003f2114  9f 0f 84 e2                                      add r0, r4, #0x27c
003f2118  23 86 fc eb                                      bl #0x3139ac
003f211c  99 0f 84 e2                                      add r0, r4, #0x264
003f2120  21 86 fc eb                                      bl #0x3139ac
003f2124  93 0f 84 e2                                      add r0, r4, #0x24c
003f2128  1f 86 fc eb                                      bl #0x3139ac
003f212c  8d 0f 84 e2                                      add r0, r4, #0x234
003f2130  1d 86 fc eb                                      bl #0x3139ac
003f2134  81 0f 84 e2                                      add r0, r4, #0x204
003f2138  f7 4f fd eb                                      bl #0x34611c
003f213c  1b 0e 84 e2                                      add r0, r4, #0x1b0
003f2140  19 86 fc eb                                      bl #0x3139ac
003f2144  66 0f 84 e2                                      add r0, r4, #0x198
003f2148  17 86 fc eb                                      bl #0x3139ac
003f214c  06 0d 84 e2                                      add r0, r4, #0x180
003f2150  15 86 fc eb                                      bl #0x3139ac
003f2154  5a 0f 84 e2                                      add r0, r4, #0x168
003f2158  13 86 fc eb                                      bl #0x3139ac
003f215c  15 0e 84 e2                                      add r0, r4, #0x150
003f2160  11 86 fc eb                                      bl #0x3139ac
003f2164  4e 0f 84 e2                                      add r0, r4, #0x138
003f2168  0f 86 fc eb                                      bl #0x3139ac
003f216c  12 0e 84 e2                                      add r0, r4, #0x120
003f2170  0d 86 fc eb                                      bl #0x3139ac
003f2174  04 00 a0 e1                                      mov r0, r4
003f2178  06 32 fd eb                                      bl #0x33e998
003f217c  04 00 a0 e1                                      mov r0, r4
003f2180  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003f2184  bc 29 5a 00 18 29 00 00                          .byte 0xbc, 0x29, 0x5a, 0x00, 0x18, 0x29, 0x00, 0x00

; FUNCTION 0x003f218c, declared_size=8, range_size=8, mode=arm
; class-group: LevelConfig
; alias: _ZThn36_N11LevelConfigD0Ev
; demangled: non-virtual thunk to LevelConfig::~LevelConfig()
; decoder-mode: arm
003f218c  24 00 40 e2                                      sub r0, r0, #0x24
003f2190  ff ff ff ea                                      b #0x3f2194

; FUNCTION 0x003f2194, declared_size=28, range_size=28, mode=arm
; class-group: LevelConfig
; alias: _ZN11LevelConfigD0Ev
; demangled: LevelConfig::~LevelConfig()
; decoder-mode: arm
003f2194  10 40 2d e9                                      push {r4, lr}
003f2198  00 40 a0 e1                                      mov r4, r0
003f219c  c9 ff ff eb                                      bl #0x3f20c8
003f21a0  04 00 a0 e1                                      mov r0, r4
003f21a4  a5 78 fc eb                                      bl #0x310440
003f21a8  04 00 a0 e1                                      mov r0, r4
003f21ac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003f21b0, declared_size=196, range_size=196, mode=arm
; class-group: LevelConfig
; alias: _ZN11LevelConfigD2Ev
; demangled: LevelConfig::~LevelConfig()
; decoder-mode: arm
003f21b0  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
003f21b4  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
003f21b8  10 40 2d e9                                      push {r4, lr}
003f21bc  02 20 8f e0                                      add r2, pc, r2
003f21c0  03 30 92 e7                                      ldr r3, [r2, r3]
003f21c4  00 40 a0 e1                                      mov r4, r0
003f21c8  03 0c 80 e2                                      add r0, r0, #0x300
003f21cc  74 20 83 e2                                      add r2, r3, #0x74
003f21d0  08 10 83 e2                                      add r1, r3, #8
003f21d4  68 30 83 e2                                      add r3, r3, #0x68
003f21d8  0a 00 84 e8                                      stm r4, {r1, r3}
003f21dc  24 20 84 e5                                      str r2, [r4, #0x24]
003f21e0  f1 85 fc eb                                      bl #0x3139ac
003f21e4  ba 0f 84 e2                                      add r0, r4, #0x2e8
003f21e8  ef 85 fc eb                                      bl #0x3139ac
003f21ec  2d 0e 84 e2                                      add r0, r4, #0x2d0
003f21f0  ed 85 fc eb                                      bl #0x3139ac
003f21f4  ae 0f 84 e2                                      add r0, r4, #0x2b8
003f21f8  eb 85 fc eb                                      bl #0x3139ac
003f21fc  9f 0f 84 e2                                      add r0, r4, #0x27c
003f2200  e9 85 fc eb                                      bl #0x3139ac
003f2204  99 0f 84 e2                                      add r0, r4, #0x264
003f2208  e7 85 fc eb                                      bl #0x3139ac
003f220c  93 0f 84 e2                                      add r0, r4, #0x24c
003f2210  e5 85 fc eb                                      bl #0x3139ac
003f2214  8d 0f 84 e2                                      add r0, r4, #0x234
003f2218  e3 85 fc eb                                      bl #0x3139ac
003f221c  81 0f 84 e2                                      add r0, r4, #0x204
003f2220  bd 4f fd eb                                      bl #0x34611c
003f2224  1b 0e 84 e2                                      add r0, r4, #0x1b0
003f2228  df 85 fc eb                                      bl #0x3139ac
003f222c  66 0f 84 e2                                      add r0, r4, #0x198
003f2230  dd 85 fc eb                                      bl #0x3139ac
003f2234  06 0d 84 e2                                      add r0, r4, #0x180
003f2238  db 85 fc eb                                      bl #0x3139ac
003f223c  5a 0f 84 e2                                      add r0, r4, #0x168
003f2240  d9 85 fc eb                                      bl #0x3139ac
003f2244  15 0e 84 e2                                      add r0, r4, #0x150
003f2248  d7 85 fc eb                                      bl #0x3139ac
003f224c  4e 0f 84 e2                                      add r0, r4, #0x138
003f2250  d5 85 fc eb                                      bl #0x3139ac
003f2254  12 0e 84 e2                                      add r0, r4, #0x120
003f2258  d3 85 fc eb                                      bl #0x3139ac
003f225c  04 00 a0 e1                                      mov r0, r4
003f2260  cc 31 fd eb                                      bl #0x33e998
003f2264  04 00 a0 e1                                      mov r0, r4
003f2268  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003f226c  d4 28 5a 00 18 29 00 00                          .byte 0xd4, 0x28, 0x5a, 0x00, 0x18, 0x29, 0x00, 0x00

; FUNCTION 0x003f28ec, declared_size=504, range_size=504, mode=arm
; class-group: LevelConfig
; alias: _ZN11LevelConfig8InitPostEv
; demangled: LevelConfig::InitPost()
; decoder-mode: arm
003f28ec  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003f28f0  c8 51 9f e5                                      ldr r5, [pc, #0x1c8]
003f28f4  c8 81 9f e5                                      ldr r8, [pc, #0x1c8]
003f28f8  9c 22 d0 e5                                      ldrb r2, [r0, #0x29c]
003f28fc  05 50 8f e0                                      add r5, pc, r5
003f2900  08 30 95 e7                                      ldr r3, [r5, r8]
003f2904  78 d0 4d e2                                      sub sp, sp, #0x78
003f2908  00 00 52 e3                                      cmp r2, #0
003f290c  00 30 93 e5                                      ldr r3, [r3]
003f2910  00 40 a0 e1                                      mov r4, r0
003f2914  74 30 8d e5                                      str r3, [sp, #0x74]
003f2918  4c 00 00 1a                                      bne #0x3f2a50
003f291c  5c 22 90 e5                                      ldr r2, [r0, #0x25c]
003f2920  60 32 90 e5                                      ldr r3, [r0, #0x260]
003f2924  01 10 a0 e3                                      mov r1, #1
003f2928  9c 12 c0 e5                                      strb r1, [r0, #0x29c]
003f292c  03 00 52 e1                                      cmp r2, r3
003f2930  4d 00 00 0a                                      beq #0x3f2a6c
003f2934  8c 22 94 e5                                      ldr r2, [r4, #0x28c]
003f2938  90 32 94 e5                                      ldr r3, [r4, #0x290]
003f293c  03 00 52 e1                                      cmp r2, r3
003f2940  58 00 00 0a                                      beq #0x3f2aa8
003f2944  c8 22 94 e5                                      ldr r2, [r4, #0x2c8]
003f2948  cc 32 94 e5                                      ldr r3, [r4, #0x2cc]
003f294c  03 00 52 e1                                      cmp r2, r3
003f2950  4f 00 00 0a                                      beq #0x3f2a94
003f2954  e0 22 94 e5                                      ldr r2, [r4, #0x2e0]
003f2958  e4 32 94 e5                                      ldr r3, [r4, #0x2e4]
003f295c  03 00 52 e1                                      cmp r2, r3
003f2960  46 00 00 0a                                      beq #0x3f2a80
003f2964  73 0f 84 e2                                      add r0, r4, #0x1cc
003f2968  12 f2 ff eb                                      bl #0x3ef1b8
003f296c  54 31 9f e5                                      ldr r3, [pc, #0x154]
003f2970  54 71 9f e5                                      ldr r7, [pc, #0x154]
003f2974  5c 90 8d e2                                      add sb, sp, #0x5c
003f2978  03 60 95 e7                                      ldr r6, [r5, r3]
003f297c  07 70 8f e0                                      add r7, pc, r7
003f2980  44 a0 8d e2                                      add sl, sp, #0x44
003f2984  06 00 a0 e1                                      mov r0, r6
003f2988  be 13 fd eb                                      bl #0x337888
003f298c  10 20 8d e2                                      add r2, sp, #0x10
003f2990  07 10 a0 e1                                      mov r1, r7
003f2994  09 00 a0 e1                                      mov r0, sb
003f2998  d3 85 fc eb                                      bl #0x3140ec
003f299c  09 10 a0 e1                                      mov r1, sb
003f29a0  06 00 a0 e1                                      mov r0, r6
003f29a4  37 14 fd eb                                      bl #0x337a88
003f29a8  09 00 a0 e1                                      mov r0, sb
003f29ac  fe 83 fc eb                                      bl #0x3139ac
003f29b0  06 00 a0 e1                                      mov r0, r6
003f29b4  b3 13 fd eb                                      bl #0x337888
003f29b8  0c 20 8d e2                                      add r2, sp, #0xc
003f29bc  0a 00 a0 e1                                      mov r0, sl
003f29c0  07 10 a0 e1                                      mov r1, r7
003f29c4  c8 85 fc eb                                      bl #0x3140ec
003f29c8  0a 10 a0 e1                                      mov r1, sl
003f29cc  06 00 a0 e1                                      mov r0, r6
003f29d0  2c 14 fd eb                                      bl #0x337a88
003f29d4  0a 00 a0 e1                                      mov r0, sl
003f29d8  f3 83 fc eb                                      bl #0x3139ac
003f29dc  2c a0 8d e2                                      add sl, sp, #0x2c
003f29e0  06 00 a0 e1                                      mov r0, r6
003f29e4  a7 13 fd eb                                      bl #0x337888
003f29e8  08 20 8d e2                                      add r2, sp, #8
003f29ec  0a 00 a0 e1                                      mov r0, sl
003f29f0  07 10 a0 e1                                      mov r1, r7
003f29f4  bc 85 fc eb                                      bl #0x3140ec
003f29f8  0a 10 a0 e1                                      mov r1, sl
003f29fc  06 00 a0 e1                                      mov r0, r6
003f2a00  20 14 fd eb                                      bl #0x337a88
003f2a04  0a 00 a0 e1                                      mov r0, sl
003f2a08  e7 83 fc eb                                      bl #0x3139ac
003f2a0c  14 a0 8d e2                                      add sl, sp, #0x14
003f2a10  06 00 a0 e1                                      mov r0, r6
003f2a14  9b 13 fd eb                                      bl #0x337888
003f2a18  04 20 8d e2                                      add r2, sp, #4
003f2a1c  07 10 a0 e1                                      mov r1, r7
003f2a20  0a 00 a0 e1                                      mov r0, sl
003f2a24  b0 85 fc eb                                      bl #0x3140ec
003f2a28  0a 10 a0 e1                                      mov r1, sl
003f2a2c  06 00 a0 e1                                      mov r0, r6
003f2a30  14 14 fd eb                                      bl #0x337a88
003f2a34  0a 00 a0 e1                                      mov r0, sl
003f2a38  db 83 fc eb                                      bl #0x3139ac
003f2a3c  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
003f2a40  03 00 95 e7                                      ldr r0, [r5, r3]
003f2a44  d2 b2 fc eb                                      bl #0x31f594
003f2a48  04 10 a0 e1                                      mov r1, r4
003f2a4c  ae fa ff eb                                      bl #0x3f150c
003f2a50  08 30 95 e7                                      ldr r3, [r5, r8]
003f2a54  74 20 9d e5                                      ldr r2, [sp, #0x74]
003f2a58  00 30 93 e5                                      ldr r3, [r3]
003f2a5c  03 00 52 e1                                      cmp r2, r3
003f2a60  15 00 00 1a                                      bne #0x3f2abc
003f2a64  78 d0 8d e2                                      add sp, sp, #0x78
003f2a68  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003f2a6c  60 10 9f e5                                      ldr r1, [pc, #0x60]
003f2a70  93 0f 80 e2                                      add r0, r0, #0x24c
003f2a74  01 10 8f e0                                      add r1, pc, r1
003f2a78  3b f7 fc eb                                      bl #0x33076c
003f2a7c  ac ff ff ea                                      b #0x3f2934
003f2a80  50 10 9f e5                                      ldr r1, [pc, #0x50]
003f2a84  2d 0e 84 e2                                      add r0, r4, #0x2d0
003f2a88  01 10 8f e0                                      add r1, pc, r1
003f2a8c  36 f7 fc eb                                      bl #0x33076c
003f2a90  b3 ff ff ea                                      b #0x3f2964
003f2a94  40 10 9f e5                                      ldr r1, [pc, #0x40]
003f2a98  ae 0f 84 e2                                      add r0, r4, #0x2b8
003f2a9c  01 10 8f e0                                      add r1, pc, r1
003f2aa0  31 f7 fc eb                                      bl #0x33076c
003f2aa4  aa ff ff ea                                      b #0x3f2954
003f2aa8  30 10 9f e5                                      ldr r1, [pc, #0x30]
003f2aac  9f 0f 84 e2                                      add r0, r4, #0x27c
003f2ab0  01 10 8f e0                                      add r1, pc, r1
003f2ab4  2c f7 fc eb                                      bl #0x33076c
003f2ab8  a1 ff ff ea                                      b #0x3f2944
003f2abc  13 6e fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003f2ac0  94 21 5a 00 ac 40 00 00 84 08 00 00 6c 3c 4d 00  .byte 0x94, 0x21, 0x5a, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x6c, 0x3c, 0x4d, 0x00
003f2ad0  f4 37 00 00 d4 3b 4d 00 f8 3b 4d 00 e4 3b 4d 00  .byte 0xf4, 0x37, 0x00, 0x00, 0xd4, 0x3b, 0x4d, 0x00, 0xf8, 0x3b, 0x4d, 0x00, 0xe4, 0x3b, 0x4d, 0x00
003f2ae0  b8 3b 4d 00                                      .byte 0xb8, 0x3b, 0x4d, 0x00

; FUNCTION 0x003f4910, declared_size=644, range_size=644, mode=arm
; class-group: LevelConfig
; alias: _ZN11LevelConfigC2EN10ObjectBase6GO_IDSE
; demangled: LevelConfig::LevelConfig(ObjectBase::GO_IDS)
; decoder-mode: arm
003f4910  70 40 2d e9                                      push {r4, r5, r6, lr}
003f4914  70 52 9f e5                                      ldr r5, [pc, #0x270]
003f4918  00 40 a0 e1                                      mov r4, r0
003f491c  7b 2a fd eb                                      bl #0x33f310
003f4920  68 32 9f e5                                      ldr r3, [pc, #0x268]
003f4924  05 50 8f e0                                      add r5, pc, r5
003f4928  12 2e 84 e2                                      add r2, r4, #0x120
003f492c  03 30 95 e7                                      ldr r3, [r5, r3]
003f4930  02 00 a0 e1                                      mov r0, r2
003f4934  30 21 84 e5                                      str r2, [r4, #0x130]
003f4938  08 c0 83 e2                                      add ip, r3, #8
003f493c  74 10 83 e2                                      add r1, r3, #0x74
003f4940  68 30 83 e2                                      add r3, r3, #0x68
003f4944  00 c0 84 e5                                      str ip, [r4]
003f4948  04 30 84 e5                                      str r3, [r4, #4]
003f494c  24 10 84 e5                                      str r1, [r4, #0x24]
003f4950  34 21 84 e5                                      str r2, [r4, #0x134]
003f4954  10 10 a0 e3                                      mov r1, #0x10
003f4958  47 73 fc eb                                      bl #0x31167c
003f495c  30 21 94 e5                                      ldr r2, [r4, #0x130]
003f4960  00 50 a0 e3                                      mov r5, #0
003f4964  4e 3f 84 e2                                      add r3, r4, #0x138
003f4968  00 50 c2 e5                                      strb r5, [r2]
003f496c  03 00 a0 e1                                      mov r0, r3
003f4970  48 31 84 e5                                      str r3, [r4, #0x148]
003f4974  4c 31 84 e5                                      str r3, [r4, #0x14c]
003f4978  10 10 a0 e3                                      mov r1, #0x10
003f497c  3e 73 fc eb                                      bl #0x31167c
003f4980  48 21 94 e5                                      ldr r2, [r4, #0x148]
003f4984  15 3e 84 e2                                      add r3, r4, #0x150
003f4988  03 00 a0 e1                                      mov r0, r3
003f498c  00 50 c2 e5                                      strb r5, [r2]
003f4990  10 10 a0 e3                                      mov r1, #0x10
003f4994  60 31 84 e5                                      str r3, [r4, #0x160]
003f4998  64 31 84 e5                                      str r3, [r4, #0x164]
003f499c  36 73 fc eb                                      bl #0x31167c
003f49a0  60 21 94 e5                                      ldr r2, [r4, #0x160]
003f49a4  5a 3f 84 e2                                      add r3, r4, #0x168
003f49a8  03 00 a0 e1                                      mov r0, r3
003f49ac  00 50 c2 e5                                      strb r5, [r2]
003f49b0  10 10 a0 e3                                      mov r1, #0x10
003f49b4  78 31 84 e5                                      str r3, [r4, #0x178]
003f49b8  7c 31 84 e5                                      str r3, [r4, #0x17c]
003f49bc  2e 73 fc eb                                      bl #0x31167c
003f49c0  78 21 94 e5                                      ldr r2, [r4, #0x178]
003f49c4  06 3d 84 e2                                      add r3, r4, #0x180
003f49c8  03 00 a0 e1                                      mov r0, r3
003f49cc  00 50 c2 e5                                      strb r5, [r2]
003f49d0  10 10 a0 e3                                      mov r1, #0x10
003f49d4  90 31 84 e5                                      str r3, [r4, #0x190]
003f49d8  94 31 84 e5                                      str r3, [r4, #0x194]
003f49dc  26 73 fc eb                                      bl #0x31167c
003f49e0  90 21 94 e5                                      ldr r2, [r4, #0x190]
003f49e4  66 3f 84 e2                                      add r3, r4, #0x198
003f49e8  03 00 a0 e1                                      mov r0, r3
003f49ec  00 50 c2 e5                                      strb r5, [r2]
003f49f0  10 10 a0 e3                                      mov r1, #0x10
003f49f4  a8 31 84 e5                                      str r3, [r4, #0x1a8]
003f49f8  ac 31 84 e5                                      str r3, [r4, #0x1ac]
003f49fc  1e 73 fc eb                                      bl #0x31167c
003f4a00  a8 21 94 e5                                      ldr r2, [r4, #0x1a8]
003f4a04  1b 3e 84 e2                                      add r3, r4, #0x1b0
003f4a08  03 00 a0 e1                                      mov r0, r3
003f4a0c  00 50 c2 e5                                      strb r5, [r2]
003f4a10  10 10 a0 e3                                      mov r1, #0x10
003f4a14  c0 31 84 e5                                      str r3, [r4, #0x1c0]
003f4a18  c4 31 84 e5                                      str r3, [r4, #0x1c4]
003f4a1c  16 73 fc eb                                      bl #0x31167c
003f4a20  c0 11 94 e5                                      ldr r1, [r4, #0x1c0]
003f4a24  00 30 a0 e3                                      mov r3, #0
003f4a28  8d 2f 84 e2                                      add r2, r4, #0x234
003f4a2c  00 50 c1 e5                                      strb r5, [r1]
003f4a30  02 00 a0 e1                                      mov r0, r2
003f4a34  2c 32 84 e5                                      str r3, [r4, #0x22c]
003f4a38  cc 31 84 e5                                      str r3, [r4, #0x1cc]
003f4a3c  d0 31 84 e5                                      str r3, [r4, #0x1d0]
003f4a40  d4 31 84 e5                                      str r3, [r4, #0x1d4]
003f4a44  e0 31 84 e5                                      str r3, [r4, #0x1e0]
003f4a48  e4 31 84 e5                                      str r3, [r4, #0x1e4]
003f4a4c  e8 31 84 e5                                      str r3, [r4, #0x1e8]
003f4a50  ec 31 84 e5                                      str r3, [r4, #0x1ec]
003f4a54  f0 31 84 e5                                      str r3, [r4, #0x1f0]
003f4a58  f4 31 84 e5                                      str r3, [r4, #0x1f4]
003f4a5c  f8 31 84 e5                                      str r3, [r4, #0x1f8]
003f4a60  fc 31 84 e5                                      str r3, [r4, #0x1fc]
003f4a64  00 32 84 e5                                      str r3, [r4, #0x200]
003f4a68  18 32 84 e5                                      str r3, [r4, #0x218]
003f4a6c  1c 32 84 e5                                      str r3, [r4, #0x21c]
003f4a70  20 32 84 e5                                      str r3, [r4, #0x220]
003f4a74  24 32 84 e5                                      str r3, [r4, #0x224]
003f4a78  28 32 84 e5                                      str r3, [r4, #0x228]
003f4a7c  44 22 84 e5                                      str r2, [r4, #0x244]
003f4a80  48 22 84 e5                                      str r2, [r4, #0x248]
003f4a84  04 52 84 e5                                      str r5, [r4, #0x204]
003f4a88  08 52 84 e5                                      str r5, [r4, #0x208]
003f4a8c  0c 52 84 e5                                      str r5, [r4, #0x20c]
003f4a90  10 10 a0 e3                                      mov r1, #0x10
003f4a94  f8 72 fc eb                                      bl #0x31167c
003f4a98  44 22 94 e5                                      ldr r2, [r4, #0x244]
003f4a9c  93 3f 84 e2                                      add r3, r4, #0x24c
003f4aa0  03 00 a0 e1                                      mov r0, r3
003f4aa4  00 50 c2 e5                                      strb r5, [r2]
003f4aa8  10 10 a0 e3                                      mov r1, #0x10
003f4aac  5c 32 84 e5                                      str r3, [r4, #0x25c]
003f4ab0  60 32 84 e5                                      str r3, [r4, #0x260]
003f4ab4  f0 72 fc eb                                      bl #0x31167c
003f4ab8  5c 22 94 e5                                      ldr r2, [r4, #0x25c]
003f4abc  99 3f 84 e2                                      add r3, r4, #0x264
003f4ac0  03 00 a0 e1                                      mov r0, r3
003f4ac4  00 50 c2 e5                                      strb r5, [r2]
003f4ac8  10 10 a0 e3                                      mov r1, #0x10
003f4acc  74 32 84 e5                                      str r3, [r4, #0x274]
003f4ad0  78 32 84 e5                                      str r3, [r4, #0x278]
003f4ad4  e8 72 fc eb                                      bl #0x31167c
003f4ad8  74 22 94 e5                                      ldr r2, [r4, #0x274]
003f4adc  9f 3f 84 e2                                      add r3, r4, #0x27c
003f4ae0  03 00 a0 e1                                      mov r0, r3
003f4ae4  00 50 c2 e5                                      strb r5, [r2]
003f4ae8  10 10 a0 e3                                      mov r1, #0x10
003f4aec  8c 32 84 e5                                      str r3, [r4, #0x28c]
003f4af0  90 32 84 e5                                      str r3, [r4, #0x290]
003f4af4  e0 72 fc eb                                      bl #0x31167c
003f4af8  8c 22 94 e5                                      ldr r2, [r4, #0x28c]
003f4afc  ae 3f 84 e2                                      add r3, r4, #0x2b8
003f4b00  03 00 a0 e1                                      mov r0, r3
003f4b04  00 50 c2 e5                                      strb r5, [r2]
003f4b08  10 10 a0 e3                                      mov r1, #0x10
003f4b0c  c8 32 84 e5                                      str r3, [r4, #0x2c8]
003f4b10  cc 32 84 e5                                      str r3, [r4, #0x2cc]
003f4b14  9c 52 c4 e5                                      strb r5, [r4, #0x29c]
003f4b18  d7 72 fc eb                                      bl #0x31167c
003f4b1c  c8 22 94 e5                                      ldr r2, [r4, #0x2c8]
003f4b20  2d 3e 84 e2                                      add r3, r4, #0x2d0
003f4b24  03 00 a0 e1                                      mov r0, r3
003f4b28  00 50 c2 e5                                      strb r5, [r2]
003f4b2c  10 10 a0 e3                                      mov r1, #0x10
003f4b30  e0 32 84 e5                                      str r3, [r4, #0x2e0]
003f4b34  e4 32 84 e5                                      str r3, [r4, #0x2e4]
003f4b38  cf 72 fc eb                                      bl #0x31167c
003f4b3c  e0 22 94 e5                                      ldr r2, [r4, #0x2e0]
003f4b40  ba 3f 84 e2                                      add r3, r4, #0x2e8
003f4b44  03 00 a0 e1                                      mov r0, r3
003f4b48  00 50 c2 e5                                      strb r5, [r2]
003f4b4c  10 10 a0 e3                                      mov r1, #0x10
003f4b50  f8 32 84 e5                                      str r3, [r4, #0x2f8]
003f4b54  fc 32 84 e5                                      str r3, [r4, #0x2fc]
003f4b58  c7 72 fc eb                                      bl #0x31167c
003f4b5c  f8 22 94 e5                                      ldr r2, [r4, #0x2f8]
003f4b60  03 3c 84 e2                                      add r3, r4, #0x300
003f4b64  03 00 a0 e1                                      mov r0, r3
003f4b68  00 50 c2 e5                                      strb r5, [r2]
003f4b6c  10 10 a0 e3                                      mov r1, #0x10
003f4b70  10 33 84 e5                                      str r3, [r4, #0x310]
003f4b74  14 33 84 e5                                      str r3, [r4, #0x314]
003f4b78  bf 72 fc eb                                      bl #0x31167c
003f4b7c  10 33 94 e5                                      ldr r3, [r4, #0x310]
003f4b80  04 00 a0 e1                                      mov r0, r4
003f4b84  00 50 c3 e5                                      strb r5, [r3]
003f4b88  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003f4b8c  6c 01 5a 00 18 29 00 00                          .byte 0x6c, 0x01, 0x5a, 0x00, 0x18, 0x29, 0x00, 0x00

; FUNCTION 0x003f4b94, declared_size=8, range_size=8, mode=arm
; class-group: LevelConfig
; alias: _ZThn4_N11LevelConfig17DeclarePropertiesEv
; demangled: non-virtual thunk to LevelConfig::DeclareProperties()
; decoder-mode: arm
003f4b94  04 00 40 e2                                      sub r0, r0, #4
003f4b98  ff ff ff ea                                      b #0x3f4b9c

; FUNCTION 0x003f4b9c, declared_size=1548, range_size=1548, mode=arm
; class-group: LevelConfig
; alias: _ZN11LevelConfig17DeclarePropertiesEv
; demangled: LevelConfig::DeclareProperties()
; decoder-mode: arm
003f4b9c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003f4ba0  4c 95 9f e5                                      ldr sb, [pc, #0x54c]
003f4ba4  4c 35 9f e5                                      ldr r3, [pc, #0x54c]
003f4ba8  4c 15 9f e5                                      ldr r1, [pc, #0x54c]
003f4bac  09 90 8f e0                                      add sb, pc, sb
003f4bb0  03 c0 99 e7                                      ldr ip, [sb, r3]
003f4bb4  00 40 a0 e1                                      mov r4, r0
003f4bb8  04 50 80 e2                                      add r5, r0, #4
003f4bbc  00 30 9c e5                                      ldr r3, [ip]
003f4bc0  4f df 4d e2                                      sub sp, sp, #0x13c
003f4bc4  01 10 8f e0                                      add r1, pc, r1
003f4bc8  05 00 a0 e1                                      mov r0, r5
003f4bcc  15 2e 84 e2                                      add r2, r4, #0x150
003f4bd0  04 c0 8d e5                                      str ip, [sp, #4]
003f4bd4  34 31 8d e5                                      str r3, [sp, #0x134]
003f4bd8  e7 28 fd eb                                      bl #0x33ef7c
003f4bdc  1c 15 9f e5                                      ldr r1, [pc, #0x51c]
003f4be0  05 00 a0 e1                                      mov r0, r5
003f4be4  93 2f 84 e2                                      add r2, r4, #0x24c
003f4be8  01 10 8f e0                                      add r1, pc, r1
003f4bec  e2 28 fd eb                                      bl #0x33ef7c
003f4bf0  0c 15 9f e5                                      ldr r1, [pc, #0x50c]
003f4bf4  47 6f 8d e2                                      add r6, sp, #0x11c
003f4bf8  88 20 8d e2                                      add r2, sp, #0x88
003f4bfc  01 10 8f e0                                      add r1, pc, r1
003f4c00  06 00 a0 e1                                      mov r0, r6
003f4c04  38 7d fc eb                                      bl #0x3140ec
003f4c08  f8 14 9f e5                                      ldr r1, [pc, #0x4f8]
003f4c0c  06 30 a0 e1                                      mov r3, r6
003f4c10  99 2f 84 e2                                      add r2, r4, #0x264
003f4c14  01 10 8f e0                                      add r1, pc, r1
003f4c18  05 00 a0 e1                                      mov r0, r5
003f4c1c  f8 25 fd eb                                      bl #0x33e404
003f4c20  06 00 a0 e1                                      mov r0, r6
003f4c24  60 7b fc eb                                      bl #0x3139ac
003f4c28  dc 14 9f e5                                      ldr r1, [pc, #0x4dc]
003f4c2c  05 00 a0 e1                                      mov r0, r5
003f4c30  9f 2f 84 e2                                      add r2, r4, #0x27c
003f4c34  01 10 8f e0                                      add r1, pc, r1
003f4c38  cf 28 fd eb                                      bl #0x33ef7c
003f4c3c  cc 14 9f e5                                      ldr r1, [pc, #0x4cc]
003f4c40  05 00 a0 e1                                      mov r0, r5
003f4c44  a5 2f 84 e2                                      add r2, r4, #0x294
003f4c48  01 10 8f e0                                      add r1, pc, r1
003f4c4c  96 3f a0 e3                                      mov r3, #0x258
003f4c50  08 8f fe eb                                      bl #0x398878
003f4c54  b8 14 9f e5                                      ldr r1, [pc, #0x4b8]
003f4c58  10 37 02 e3                                      movw r3, #0x2710
003f4c5c  05 00 a0 e1                                      mov r0, r5
003f4c60  01 10 8f e0                                      add r1, pc, r1
003f4c64  a6 2f 84 e2                                      add r2, r4, #0x298
003f4c68  02 8f fe eb                                      bl #0x398878
003f4c6c  a4 14 9f e5                                      ldr r1, [pc, #0x4a4]
003f4c70  05 00 a0 e1                                      mov r0, r5
003f4c74  8d 2f 84 e2                                      add r2, r4, #0x234
003f4c78  01 10 8f e0                                      add r1, pc, r1
003f4c7c  be 28 fd eb                                      bl #0x33ef7c
003f4c80  94 14 9f e5                                      ldr r1, [pc, #0x494]
003f4c84  05 00 a0 e1                                      mov r0, r5
003f4c88  5a 2f 84 e2                                      add r2, r4, #0x168
003f4c8c  01 10 8f e0                                      add r1, pc, r1
003f4c90  b9 28 fd eb                                      bl #0x33ef7c
003f4c94  84 14 9f e5                                      ldr r1, [pc, #0x484]
003f4c98  05 00 a0 e1                                      mov r0, r5
003f4c9c  66 2f 84 e2                                      add r2, r4, #0x198
003f4ca0  01 10 8f e0                                      add r1, pc, r1
003f4ca4  b4 28 fd eb                                      bl #0x33ef7c
003f4ca8  74 14 9f e5                                      ldr r1, [pc, #0x474]
003f4cac  05 00 a0 e1                                      mov r0, r5
003f4cb0  1b 2e 84 e2                                      add r2, r4, #0x1b0
003f4cb4  01 10 8f e0                                      add r1, pc, r1
003f4cb8  af 28 fd eb                                      bl #0x33ef7c
003f4cbc  64 14 9f e5                                      ldr r1, [pc, #0x464]
003f4cc0  05 00 a0 e1                                      mov r0, r5
003f4cc4  06 2d 84 e2                                      add r2, r4, #0x180
003f4cc8  01 10 8f e0                                      add r1, pc, r1
003f4ccc  aa 28 fd eb                                      bl #0x33ef7c
003f4cd0  54 14 9f e5                                      ldr r1, [pc, #0x454]
003f4cd4  05 00 a0 e1                                      mov r0, r5
003f4cd8  72 2f 84 e2                                      add r2, r4, #0x1c8
003f4cdc  01 10 8f e0                                      add r1, pc, r1
003f4ce0  01 30 a0 e3                                      mov r3, #1
003f4ce4  f0 25 fd eb                                      bl #0x33e4ac
003f4ce8  40 14 9f e5                                      ldr r1, [pc, #0x440]
003f4cec  43 64 a0 e3                                      mov r6, #0x43000000
003f4cf0  7f 68 86 e2                                      add r6, r6, #0x7f0000
003f4cf4  05 00 a0 e1                                      mov r0, r5
003f4cf8  01 10 8f e0                                      add r1, pc, r1
003f4cfc  73 2f 84 e2                                      add r2, r4, #0x1cc
003f4d00  60 30 8d e2                                      add r3, sp, #0x60
003f4d04  60 60 8d e5                                      str r6, [sp, #0x60]
003f4d08  64 60 8d e5                                      str r6, [sp, #0x64]
003f4d0c  68 60 8d e5                                      str r6, [sp, #0x68]
003f4d10  df 52 fe eb                                      bl #0x389894
003f4d14  18 14 9f e5                                      ldr r1, [pc, #0x418]
003f4d18  05 00 a0 e1                                      mov r0, r5
003f4d1c  76 2f 84 e2                                      add r2, r4, #0x1d8
003f4d20  01 10 8f e0                                      add r1, pc, r1
003f4d24  01 30 a0 e3                                      mov r3, #1
003f4d28  d2 8e fe eb                                      bl #0x398878
003f4d2c  04 14 9f e5                                      ldr r1, [pc, #0x404]
003f4d30  05 00 a0 e1                                      mov r0, r5
003f4d34  77 2f 84 e2                                      add r2, r4, #0x1dc
003f4d38  01 10 8f e0                                      add r1, pc, r1
003f4d3c  00 30 a0 e3                                      mov r3, #0
003f4d40  cc 8e fe eb                                      bl #0x398878
003f4d44  f0 13 9f e5                                      ldr r1, [pc, #0x3f0]
003f4d48  05 00 a0 e1                                      mov r0, r5
003f4d4c  1e 2e 84 e2                                      add r2, r4, #0x1e0
003f4d50  01 10 8f e0                                      add r1, pc, r1
003f4d54  54 30 8d e2                                      add r3, sp, #0x54
003f4d58  5c 60 8d e5                                      str r6, [sp, #0x5c]
003f4d5c  54 60 8d e5                                      str r6, [sp, #0x54]
003f4d60  58 60 8d e5                                      str r6, [sp, #0x58]
003f4d64  ca 52 fe eb                                      bl #0x389894
003f4d68  d0 13 9f e5                                      ldr r1, [pc, #0x3d0]
003f4d6c  00 60 a0 e3                                      mov r6, #0
003f4d70  fe e5 a0 e3                                      mov lr, #0x3f800000
003f4d74  01 10 8f e0                                      add r1, pc, r1
003f4d78  05 00 a0 e1                                      mov r0, r5
003f4d7c  7e 2f 84 e2                                      add r2, r4, #0x1f8
003f4d80  48 30 8d e2                                      add r3, sp, #0x48
003f4d84  50 e0 8d e5                                      str lr, [sp, #0x50]
003f4d88  48 60 8d e5                                      str r6, [sp, #0x48]
003f4d8c  4c 60 8d e5                                      str r6, [sp, #0x4c]
003f4d90  bf 52 fe eb                                      bl #0x389894
003f4d94  a8 13 9f e5                                      ldr r1, [pc, #0x3a8]
003f4d98  05 00 a0 e1                                      mov r0, r5
003f4d9c  7b 2f 84 e2                                      add r2, r4, #0x1ec
003f4da0  01 10 8f e0                                      add r1, pc, r1
003f4da4  3c 30 8d e2                                      add r3, sp, #0x3c
003f4da8  3c 60 8d e5                                      str r6, [sp, #0x3c]
003f4dac  40 60 8d e5                                      str r6, [sp, #0x40]
003f4db0  44 60 8d e5                                      str r6, [sp, #0x44]
003f4db4  b6 52 fe eb                                      bl #0x389894
003f4db8  88 13 9f e5                                      ldr r1, [pc, #0x388]
003f4dbc  00 e4 02 e3                                      movw lr, #0x2400
003f4dc0  74 e9 4c e3                                      movt lr, #0xc974
003f4dc4  05 00 a0 e1                                      mov r0, r5
003f4dc8  01 10 8f e0                                      add r1, pc, r1
003f4dcc  86 2f 84 e2                                      add r2, r4, #0x218
003f4dd0  30 30 8d e2                                      add r3, sp, #0x30
003f4dd4  38 e0 8d e5                                      str lr, [sp, #0x38]
003f4dd8  30 e0 8d e5                                      str lr, [sp, #0x30]
003f4ddc  34 e0 8d e5                                      str lr, [sp, #0x34]
003f4de0  ab 52 fe eb                                      bl #0x389894
003f4de4  60 13 9f e5                                      ldr r1, [pc, #0x360]
003f4de8  05 00 a0 e1                                      mov r0, r5
003f4dec  89 2f 84 e2                                      add r2, r4, #0x224
003f4df0  01 10 8f e0                                      add r1, pc, r1
003f4df4  24 30 8d e2                                      add r3, sp, #0x24
003f4df8  24 60 8d e5                                      str r6, [sp, #0x24]
003f4dfc  28 60 8d e5                                      str r6, [sp, #0x28]
003f4e00  2c 60 8d e5                                      str r6, [sp, #0x2c]
003f4e04  a2 52 fe eb                                      bl #0x389894
003f4e08  40 13 9f e5                                      ldr r1, [pc, #0x340]
003f4e0c  06 30 a0 e1                                      mov r3, r6
003f4e10  05 00 a0 e1                                      mov r0, r5
003f4e14  01 10 8f e0                                      add r1, pc, r1
003f4e18  23 2e 84 e2                                      add r2, r4, #0x230
003f4e1c  86 80 fe eb                                      bl #0x39503c
003f4e20  2c 13 9f e5                                      ldr r1, [pc, #0x32c]
003f4e24  41 6f 8d e2                                      add r6, sp, #0x104
003f4e28  84 20 8d e2                                      add r2, sp, #0x84
003f4e2c  01 10 8f e0                                      add r1, pc, r1
003f4e30  06 00 a0 e1                                      mov r0, r6
003f4e34  ac 7c fc eb                                      bl #0x3140ec
003f4e38  18 13 9f e5                                      ldr r1, [pc, #0x318]
003f4e3c  06 30 a0 e1                                      mov r3, r6
003f4e40  12 2e 84 e2                                      add r2, r4, #0x120
003f4e44  01 10 8f e0                                      add r1, pc, r1
003f4e48  05 00 a0 e1                                      mov r0, r5
003f4e4c  6c 25 fd eb                                      bl #0x33e404
003f4e50  06 00 a0 e1                                      mov r0, r6
003f4e54  d4 7a fc eb                                      bl #0x3139ac
003f4e58  fc 12 9f e5                                      ldr r1, [pc, #0x2fc]
003f4e5c  ec 70 8d e2                                      add r7, sp, #0xec
003f4e60  80 20 8d e2                                      add r2, sp, #0x80
003f4e64  01 10 8f e0                                      add r1, pc, r1
003f4e68  07 00 a0 e1                                      mov r0, r7
003f4e6c  9e 7c fc eb                                      bl #0x3140ec
003f4e70  e8 12 9f e5                                      ldr r1, [pc, #0x2e8]
003f4e74  e8 62 9f e5                                      ldr r6, [pc, #0x2e8]
003f4e78  07 30 a0 e1                                      mov r3, r7
003f4e7c  4e 2f 84 e2                                      add r2, r4, #0x138
003f4e80  01 10 8f e0                                      add r1, pc, r1
003f4e84  05 00 a0 e1                                      mov r0, r5
003f4e88  5d 25 fd eb                                      bl #0x33e404
003f4e8c  06 60 8f e0                                      add r6, pc, r6
003f4e90  07 00 a0 e1                                      mov r0, r7
003f4e94  d4 70 8d e2                                      add r7, sp, #0xd4
003f4e98  c3 7a fc eb                                      bl #0x3139ac
003f4e9c  06 10 a0 e1                                      mov r1, r6
003f4ea0  7c 20 8d e2                                      add r2, sp, #0x7c
003f4ea4  07 00 a0 e1                                      mov r0, r7
003f4ea8  8f 7c fc eb                                      bl #0x3140ec
003f4eac  b4 12 9f e5                                      ldr r1, [pc, #0x2b4]
003f4eb0  07 30 a0 e1                                      mov r3, r7
003f4eb4  ae 2f 84 e2                                      add r2, r4, #0x2b8
003f4eb8  01 10 8f e0                                      add r1, pc, r1
003f4ebc  05 00 a0 e1                                      mov r0, r5
003f4ec0  4f 25 fd eb                                      bl #0x33e404
003f4ec4  07 00 a0 e1                                      mov r0, r7
003f4ec8  bc 70 8d e2                                      add r7, sp, #0xbc
003f4ecc  b6 7a fc eb                                      bl #0x3139ac
003f4ed0  06 10 a0 e1                                      mov r1, r6
003f4ed4  78 20 8d e2                                      add r2, sp, #0x78
003f4ed8  07 00 a0 e1                                      mov r0, r7
003f4edc  82 7c fc eb                                      bl #0x3140ec
003f4ee0  84 12 9f e5                                      ldr r1, [pc, #0x284]
003f4ee4  07 30 a0 e1                                      mov r3, r7
003f4ee8  2d 2e 84 e2                                      add r2, r4, #0x2d0
003f4eec  01 10 8f e0                                      add r1, pc, r1
003f4ef0  05 00 a0 e1                                      mov r0, r5
003f4ef4  42 25 fd eb                                      bl #0x33e404
003f4ef8  07 00 a0 e1                                      mov r0, r7
003f4efc  a4 70 8d e2                                      add r7, sp, #0xa4
003f4f00  a9 7a fc eb                                      bl #0x3139ac
003f4f04  06 10 a0 e1                                      mov r1, r6
003f4f08  74 20 8d e2                                      add r2, sp, #0x74
003f4f0c  07 00 a0 e1                                      mov r0, r7
003f4f10  75 7c fc eb                                      bl #0x3140ec
003f4f14  54 12 9f e5                                      ldr r1, [pc, #0x254]
003f4f18  07 30 a0 e1                                      mov r3, r7
003f4f1c  03 2c 84 e2                                      add r2, r4, #0x300
003f4f20  01 10 8f e0                                      add r1, pc, r1
003f4f24  05 00 a0 e1                                      mov r0, r5
003f4f28  35 25 fd eb                                      bl #0x33e404
003f4f2c  07 00 a0 e1                                      mov r0, r7
003f4f30  9d 7a fc eb                                      bl #0x3139ac
003f4f34  38 12 9f e5                                      ldr r1, [pc, #0x238]
003f4f38  8c 60 8d e2                                      add r6, sp, #0x8c
003f4f3c  70 20 8d e2                                      add r2, sp, #0x70
003f4f40  01 10 8f e0                                      add r1, pc, r1
003f4f44  06 00 a0 e1                                      mov r0, r6
003f4f48  67 7c fc eb                                      bl #0x3140ec
003f4f4c  24 12 9f e5                                      ldr r1, [pc, #0x224]
003f4f50  06 30 a0 e1                                      mov r3, r6
003f4f54  ba 2f 84 e2                                      add r2, r4, #0x2e8
003f4f58  01 10 8f e0                                      add r1, pc, r1
003f4f5c  05 00 a0 e1                                      mov r0, r5
003f4f60  27 25 fd eb                                      bl #0x33e404
003f4f64  0c a0 8d e2                                      add sl, sp, #0xc
003f4f68  06 00 a0 e1                                      mov r0, r6
003f4f6c  18 b0 8d e2                                      add fp, sp, #0x18
003f4f70  8d 7a fc eb                                      bl #0x3139ac
003f4f74  00 60 a0 e3                                      mov r6, #0
003f4f78  0b 10 a0 e1                                      mov r1, fp
003f4f7c  0a 00 a0 e1                                      mov r0, sl
003f4f80  18 60 8d e5                                      str r6, [sp, #0x18]
003f4f84  1c 60 8d e5                                      str r6, [sp, #0x1c]
003f4f88  20 60 8d e5                                      str r6, [sp, #0x20]
003f4f8c  49 35 fd eb                                      bl #0x3424b8
003f4f90  06 10 a0 e1                                      mov r1, r6
003f4f94  2c 00 a0 e3                                      mov r0, #0x2c
003f4f98  74 6d fc eb                                      bl #0x310570
003f4f9c  d8 31 9f e5                                      ldr r3, [pc, #0x1d8]
003f4fa0  d8 81 9f e5                                      ldr r8, [pc, #0x1d8]
003f4fa4  00 70 a0 e1                                      mov r7, r0
003f4fa8  03 30 99 e7                                      ldr r3, [sb, r3]
003f4fac  08 80 8f e0                                      add r8, pc, r8
003f4fb0  08 10 a0 e1                                      mov r1, r8
003f4fb4  08 30 83 e2                                      add r3, r3, #8
003f4fb8  08 30 80 e4                                      str r3, [r0], #8
003f4fbc  6c 20 8d e2                                      add r2, sp, #0x6c
003f4fc0  49 7c fc eb                                      bl #0x3140ec
003f4fc4  b8 31 9f e5                                      ldr r3, [pc, #0x1b8]
003f4fc8  81 2f 84 e2                                      add r2, r4, #0x204
003f4fcc  02 20 65 e0                                      rsb r2, r5, r2
003f4fd0  03 30 99 e7                                      ldr r3, [sb, r3]
003f4fd4  07 00 a0 e1                                      mov r0, r7
003f4fd8  04 20 87 e5                                      str r2, [r7, #4]
003f4fdc  08 30 83 e2                                      add r3, r3, #8
003f4fe0  20 30 80 e4                                      str r3, [r0], #0x20
003f4fe4  0a 10 a0 e1                                      mov r1, sl
003f4fe8  32 35 fd eb                                      bl #0x3424b8
003f4fec  08 10 a0 e1                                      mov r1, r8
003f4ff0  07 20 a0 e1                                      mov r2, r7
003f4ff4  05 00 a0 e1                                      mov r0, r5
003f4ff8  39 7b 04 eb                                      bl #0x513ce4
003f4ffc  0a 00 a0 e1                                      mov r0, sl
003f5000  45 44 fd eb                                      bl #0x34611c
003f5004  0b 00 a0 e1                                      mov r0, fp
003f5008  43 44 fd eb                                      bl #0x34611c
003f500c  74 11 9f e5                                      ldr r1, [pc, #0x174]
003f5010  43 34 a0 e3                                      mov r3, #0x43000000
003f5014  05 00 a0 e1                                      mov r0, r5
003f5018  21 2e 84 e2                                      add r2, r4, #0x210
003f501c  01 10 8f e0                                      add r1, pc, r1
003f5020  12 37 83 e2                                      add r3, r3, #0x480000
003f5024  04 80 fe eb                                      bl #0x39503c
003f5028  5c 11 9f e5                                      ldr r1, [pc, #0x15c]
003f502c  42 34 a0 e3                                      mov r3, #0x42000000
003f5030  05 00 a0 e1                                      mov r0, r5
003f5034  85 2f 84 e2                                      add r2, r4, #0x214
003f5038  01 10 8f e0                                      add r1, pc, r1
003f503c  32 37 83 e2                                      add r3, r3, #0xc80000
003f5040  fd 7f fe eb                                      bl #0x39503c
003f5044  44 11 9f e5                                      ldr r1, [pc, #0x144]
003f5048  05 00 a0 e1                                      mov r0, r5
003f504c  2a 2e 84 e2                                      add r2, r4, #0x2a0
003f5050  01 10 8f e0                                      add r1, pc, r1
003f5054  05 36 a0 e3                                      mov r3, #0x500000
003f5058  06 8e fe eb                                      bl #0x398878
003f505c  30 11 9f e5                                      ldr r1, [pc, #0x130]
003f5060  05 00 a0 e1                                      mov r0, r5
003f5064  a9 2f 84 e2                                      add r2, r4, #0x2a4
003f5068  01 10 8f e0                                      add r1, pc, r1
003f506c  0a 38 a0 e3                                      mov r3, #0xa0000
003f5070  00 8e fe eb                                      bl #0x398878
003f5074  1c 11 9f e5                                      ldr r1, [pc, #0x11c]
003f5078  05 00 a0 e1                                      mov r0, r5
003f507c  aa 2f 84 e2                                      add r2, r4, #0x2a8
003f5080  01 10 8f e0                                      add r1, pc, r1
003f5084  06 30 a0 e1                                      mov r3, r6
003f5088  07 25 fd eb                                      bl #0x33e4ac
003f508c  08 11 9f e5                                      ldr r1, [pc, #0x108]
003f5090  05 00 a0 e1                                      mov r0, r5
003f5094  ab 2f 84 e2                                      add r2, r4, #0x2ac
003f5098  01 10 8f e0                                      add r1, pc, r1
003f509c  05 36 a0 e3                                      mov r3, #0x500000
003f50a0  f4 8d fe eb                                      bl #0x398878
003f50a4  f4 10 9f e5                                      ldr r1, [pc, #0xf4]
003f50a8  05 00 a0 e1                                      mov r0, r5
003f50ac  2b 2e 84 e2                                      add r2, r4, #0x2b0
003f50b0  01 10 8f e0                                      add r1, pc, r1
003f50b4  0a 38 a0 e3                                      mov r3, #0xa0000
003f50b8  ee 8d fe eb                                      bl #0x398878
003f50bc  e0 10 9f e5                                      ldr r1, [pc, #0xe0]
003f50c0  ad 2f 84 e2                                      add r2, r4, #0x2b4
003f50c4  06 30 a0 e1                                      mov r3, r6
003f50c8  05 00 a0 e1                                      mov r0, r5
003f50cc  01 10 8f e0                                      add r1, pc, r1
003f50d0  f5 24 fd eb                                      bl #0x33e4ac
003f50d4  04 c0 9d e5                                      ldr ip, [sp, #4]
003f50d8  34 21 9d e5                                      ldr r2, [sp, #0x134]
003f50dc  00 30 9c e5                                      ldr r3, [ip]
003f50e0  03 00 52 e1                                      cmp r2, r3
003f50e4  01 00 00 1a                                      bne #0x3f50f0
003f50e8  4f df 8d e2                                      add sp, sp, #0x13c
003f50ec  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003f50f0  86 64 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003f50f4  e4 fe 59 00 ac 40 00 00 8c 1c 4d 00 78 1c 4d 00  .byte 0xe4, 0xfe, 0x59, 0x00, 0xac, 0x40, 0x00, 0x00, 0x8c, 0x1c, 0x4d, 0x00, 0x78, 0x1c, 0x4d, 0x00
003f5104  74 1c 4d 00 64 1c 4d 00 54 1c 4d 00 50 1c 4d 00  .byte 0x74, 0x1c, 0x4d, 0x00, 0x64, 0x1c, 0x4d, 0x00, 0x54, 0x1c, 0x4d, 0x00, 0x50, 0x1c, 0x4d, 0x00
003f5114  48 1c 4d 00 40 1c 4d 00 4c 1c 4d 00 20 1c 4d 00  .byte 0x48, 0x1c, 0x4d, 0x00, 0x40, 0x1c, 0x4d, 0x00, 0x4c, 0x1c, 0x4d, 0x00, 0x20, 0x1c, 0x4d, 0x00
003f5124  1c 1c 4d 00 18 1c 4d 00 14 1c 4d 00 10 1c 4d 00  .byte 0x1c, 0x1c, 0x4d, 0x00, 0x18, 0x1c, 0x4d, 0x00, 0x14, 0x1c, 0x4d, 0x00, 0x10, 0x1c, 0x4d, 0x00
003f5134  f8 1b 4d 00 f0 1b 4d 00 f0 d5 4c 00 bc 1b 4d 00  .byte 0xf8, 0x1b, 0x4d, 0x00, 0xf0, 0x1b, 0x4d, 0x00, 0xf0, 0xd5, 0x4c, 0x00, 0xbc, 0x1b, 0x4d, 0x00
003f5144  a8 1b 4d 00 90 1b 4d 00 78 1b 4d 00 64 1b 4d 00  .byte 0xa8, 0x1b, 0x4d, 0x00, 0x90, 0x1b, 0x4d, 0x00, 0x78, 0x1b, 0x4d, 0x00, 0x64, 0x1b, 0x4d, 0x00
003f5154  44 b6 4c 00 34 b3 4c 00 24 1b 4d 00 68 c2 4e 00  .byte 0x44, 0xb6, 0x4c, 0x00, 0x34, 0xb3, 0x4c, 0x00, 0x24, 0x1b, 0x4d, 0x00, 0x68, 0xc2, 0x4e, 0x00
003f5164  7c 69 4d 00 e0 1a 4d 00 bc 1a 4d 00 98 1a 4d 00  .byte 0x7c, 0x69, 0x4d, 0x00, 0xe0, 0x1a, 0x4d, 0x00, 0xbc, 0x1a, 0x4d, 0x00, 0x98, 0x1a, 0x4d, 0x00
003f5174  88 1a 4d 00 88 1a 4d 00 30 23 00 00 44 1a 4d 00  .byte 0x88, 0x1a, 0x4d, 0x00, 0x88, 0x1a, 0x4d, 0x00, 0x30, 0x23, 0x00, 0x00, 0x44, 0x1a, 0x4d, 0x00
003f5184  98 36 00 00 e4 19 4d 00 e0 19 4d 00 d8 19 4d 00  .byte 0x98, 0x36, 0x00, 0x00, 0xe4, 0x19, 0x4d, 0x00, 0xe0, 0x19, 0x4d, 0x00, 0xd8, 0x19, 0x4d, 0x00
003f5194  d8 19 4d 00 d8 19 4d 00 d0 19 4d 00 d0 19 4d 00  .byte 0xd8, 0x19, 0x4d, 0x00, 0xd8, 0x19, 0x4d, 0x00, 0xd0, 0x19, 0x4d, 0x00, 0xd0, 0x19, 0x4d, 0x00
003f51a4  cc 19 4d 00                                      .byte 0xcc, 0x19, 0x4d, 0x00

; FUNCTION 0x003f51a8, declared_size=644, range_size=644, mode=arm
; class-group: LevelConfig
; alias: _ZN11LevelConfigC1EN10ObjectBase6GO_IDSE
; demangled: LevelConfig::LevelConfig(ObjectBase::GO_IDS)
; decoder-mode: arm
003f51a8  70 40 2d e9                                      push {r4, r5, r6, lr}
003f51ac  70 52 9f e5                                      ldr r5, [pc, #0x270]
003f51b0  00 40 a0 e1                                      mov r4, r0
003f51b4  55 28 fd eb                                      bl #0x33f310
003f51b8  68 32 9f e5                                      ldr r3, [pc, #0x268]
003f51bc  05 50 8f e0                                      add r5, pc, r5
003f51c0  12 2e 84 e2                                      add r2, r4, #0x120
003f51c4  03 30 95 e7                                      ldr r3, [r5, r3]
003f51c8  02 00 a0 e1                                      mov r0, r2
003f51cc  30 21 84 e5                                      str r2, [r4, #0x130]
003f51d0  08 c0 83 e2                                      add ip, r3, #8
003f51d4  74 10 83 e2                                      add r1, r3, #0x74
003f51d8  68 30 83 e2                                      add r3, r3, #0x68
003f51dc  00 c0 84 e5                                      str ip, [r4]
003f51e0  04 30 84 e5                                      str r3, [r4, #4]
003f51e4  24 10 84 e5                                      str r1, [r4, #0x24]
003f51e8  34 21 84 e5                                      str r2, [r4, #0x134]
003f51ec  10 10 a0 e3                                      mov r1, #0x10
003f51f0  21 71 fc eb                                      bl #0x31167c
003f51f4  30 21 94 e5                                      ldr r2, [r4, #0x130]
003f51f8  00 50 a0 e3                                      mov r5, #0
003f51fc  4e 3f 84 e2                                      add r3, r4, #0x138
003f5200  00 50 c2 e5                                      strb r5, [r2]
003f5204  03 00 a0 e1                                      mov r0, r3
003f5208  48 31 84 e5                                      str r3, [r4, #0x148]
003f520c  4c 31 84 e5                                      str r3, [r4, #0x14c]
003f5210  10 10 a0 e3                                      mov r1, #0x10
003f5214  18 71 fc eb                                      bl #0x31167c
003f5218  48 21 94 e5                                      ldr r2, [r4, #0x148]
003f521c  15 3e 84 e2                                      add r3, r4, #0x150
003f5220  03 00 a0 e1                                      mov r0, r3
003f5224  00 50 c2 e5                                      strb r5, [r2]
003f5228  10 10 a0 e3                                      mov r1, #0x10
003f522c  60 31 84 e5                                      str r3, [r4, #0x160]
003f5230  64 31 84 e5                                      str r3, [r4, #0x164]
003f5234  10 71 fc eb                                      bl #0x31167c
003f5238  60 21 94 e5                                      ldr r2, [r4, #0x160]
003f523c  5a 3f 84 e2                                      add r3, r4, #0x168
003f5240  03 00 a0 e1                                      mov r0, r3
003f5244  00 50 c2 e5                                      strb r5, [r2]
003f5248  10 10 a0 e3                                      mov r1, #0x10
003f524c  78 31 84 e5                                      str r3, [r4, #0x178]
003f5250  7c 31 84 e5                                      str r3, [r4, #0x17c]
003f5254  08 71 fc eb                                      bl #0x31167c
003f5258  78 21 94 e5                                      ldr r2, [r4, #0x178]
003f525c  06 3d 84 e2                                      add r3, r4, #0x180
003f5260  03 00 a0 e1                                      mov r0, r3
003f5264  00 50 c2 e5                                      strb r5, [r2]
003f5268  10 10 a0 e3                                      mov r1, #0x10
003f526c  90 31 84 e5                                      str r3, [r4, #0x190]
003f5270  94 31 84 e5                                      str r3, [r4, #0x194]
003f5274  00 71 fc eb                                      bl #0x31167c
003f5278  90 21 94 e5                                      ldr r2, [r4, #0x190]
003f527c  66 3f 84 e2                                      add r3, r4, #0x198
003f5280  03 00 a0 e1                                      mov r0, r3
003f5284  00 50 c2 e5                                      strb r5, [r2]
003f5288  10 10 a0 e3                                      mov r1, #0x10
003f528c  a8 31 84 e5                                      str r3, [r4, #0x1a8]
003f5290  ac 31 84 e5                                      str r3, [r4, #0x1ac]
003f5294  f8 70 fc eb                                      bl #0x31167c
003f5298  a8 21 94 e5                                      ldr r2, [r4, #0x1a8]
003f529c  1b 3e 84 e2                                      add r3, r4, #0x1b0
003f52a0  03 00 a0 e1                                      mov r0, r3
003f52a4  00 50 c2 e5                                      strb r5, [r2]
003f52a8  10 10 a0 e3                                      mov r1, #0x10
003f52ac  c0 31 84 e5                                      str r3, [r4, #0x1c0]
003f52b0  c4 31 84 e5                                      str r3, [r4, #0x1c4]
003f52b4  f0 70 fc eb                                      bl #0x31167c
003f52b8  c0 11 94 e5                                      ldr r1, [r4, #0x1c0]
003f52bc  00 30 a0 e3                                      mov r3, #0
003f52c0  8d 2f 84 e2                                      add r2, r4, #0x234
003f52c4  00 50 c1 e5                                      strb r5, [r1]
003f52c8  02 00 a0 e1                                      mov r0, r2
003f52cc  2c 32 84 e5                                      str r3, [r4, #0x22c]
003f52d0  cc 31 84 e5                                      str r3, [r4, #0x1cc]
003f52d4  d0 31 84 e5                                      str r3, [r4, #0x1d0]
003f52d8  d4 31 84 e5                                      str r3, [r4, #0x1d4]
003f52dc  e0 31 84 e5                                      str r3, [r4, #0x1e0]
003f52e0  e4 31 84 e5                                      str r3, [r4, #0x1e4]
003f52e4  e8 31 84 e5                                      str r3, [r4, #0x1e8]
003f52e8  ec 31 84 e5                                      str r3, [r4, #0x1ec]
003f52ec  f0 31 84 e5                                      str r3, [r4, #0x1f0]
003f52f0  f4 31 84 e5                                      str r3, [r4, #0x1f4]
003f52f4  f8 31 84 e5                                      str r3, [r4, #0x1f8]
003f52f8  fc 31 84 e5                                      str r3, [r4, #0x1fc]
003f52fc  00 32 84 e5                                      str r3, [r4, #0x200]
003f5300  18 32 84 e5                                      str r3, [r4, #0x218]
003f5304  1c 32 84 e5                                      str r3, [r4, #0x21c]
003f5308  20 32 84 e5                                      str r3, [r4, #0x220]
003f530c  24 32 84 e5                                      str r3, [r4, #0x224]
003f5310  28 32 84 e5                                      str r3, [r4, #0x228]
003f5314  44 22 84 e5                                      str r2, [r4, #0x244]
003f5318  48 22 84 e5                                      str r2, [r4, #0x248]
003f531c  04 52 84 e5                                      str r5, [r4, #0x204]
003f5320  08 52 84 e5                                      str r5, [r4, #0x208]
003f5324  0c 52 84 e5                                      str r5, [r4, #0x20c]
003f5328  10 10 a0 e3                                      mov r1, #0x10
003f532c  d2 70 fc eb                                      bl #0x31167c
003f5330  44 22 94 e5                                      ldr r2, [r4, #0x244]
003f5334  93 3f 84 e2                                      add r3, r4, #0x24c
003f5338  03 00 a0 e1                                      mov r0, r3
003f533c  00 50 c2 e5                                      strb r5, [r2]
003f5340  10 10 a0 e3                                      mov r1, #0x10
003f5344  5c 32 84 e5                                      str r3, [r4, #0x25c]
003f5348  60 32 84 e5                                      str r3, [r4, #0x260]
003f534c  ca 70 fc eb                                      bl #0x31167c
003f5350  5c 22 94 e5                                      ldr r2, [r4, #0x25c]
003f5354  99 3f 84 e2                                      add r3, r4, #0x264
003f5358  03 00 a0 e1                                      mov r0, r3
003f535c  00 50 c2 e5                                      strb r5, [r2]
003f5360  10 10 a0 e3                                      mov r1, #0x10
003f5364  74 32 84 e5                                      str r3, [r4, #0x274]
003f5368  78 32 84 e5                                      str r3, [r4, #0x278]
003f536c  c2 70 fc eb                                      bl #0x31167c
003f5370  74 22 94 e5                                      ldr r2, [r4, #0x274]
003f5374  9f 3f 84 e2                                      add r3, r4, #0x27c
003f5378  03 00 a0 e1                                      mov r0, r3
003f537c  00 50 c2 e5                                      strb r5, [r2]
003f5380  10 10 a0 e3                                      mov r1, #0x10
003f5384  8c 32 84 e5                                      str r3, [r4, #0x28c]
003f5388  90 32 84 e5                                      str r3, [r4, #0x290]
003f538c  ba 70 fc eb                                      bl #0x31167c
003f5390  8c 22 94 e5                                      ldr r2, [r4, #0x28c]
003f5394  ae 3f 84 e2                                      add r3, r4, #0x2b8
003f5398  03 00 a0 e1                                      mov r0, r3
003f539c  00 50 c2 e5                                      strb r5, [r2]
003f53a0  10 10 a0 e3                                      mov r1, #0x10
003f53a4  c8 32 84 e5                                      str r3, [r4, #0x2c8]
003f53a8  cc 32 84 e5                                      str r3, [r4, #0x2cc]
003f53ac  9c 52 c4 e5                                      strb r5, [r4, #0x29c]
003f53b0  b1 70 fc eb                                      bl #0x31167c
003f53b4  c8 22 94 e5                                      ldr r2, [r4, #0x2c8]
003f53b8  2d 3e 84 e2                                      add r3, r4, #0x2d0
003f53bc  03 00 a0 e1                                      mov r0, r3
003f53c0  00 50 c2 e5                                      strb r5, [r2]
003f53c4  10 10 a0 e3                                      mov r1, #0x10
003f53c8  e0 32 84 e5                                      str r3, [r4, #0x2e0]
003f53cc  e4 32 84 e5                                      str r3, [r4, #0x2e4]
003f53d0  a9 70 fc eb                                      bl #0x31167c
003f53d4  e0 22 94 e5                                      ldr r2, [r4, #0x2e0]
003f53d8  ba 3f 84 e2                                      add r3, r4, #0x2e8
003f53dc  03 00 a0 e1                                      mov r0, r3
003f53e0  00 50 c2 e5                                      strb r5, [r2]
003f53e4  10 10 a0 e3                                      mov r1, #0x10
003f53e8  f8 32 84 e5                                      str r3, [r4, #0x2f8]
003f53ec  fc 32 84 e5                                      str r3, [r4, #0x2fc]
003f53f0  a1 70 fc eb                                      bl #0x31167c
003f53f4  f8 22 94 e5                                      ldr r2, [r4, #0x2f8]
003f53f8  03 3c 84 e2                                      add r3, r4, #0x300
003f53fc  03 00 a0 e1                                      mov r0, r3
003f5400  00 50 c2 e5                                      strb r5, [r2]
003f5404  10 10 a0 e3                                      mov r1, #0x10
003f5408  10 33 84 e5                                      str r3, [r4, #0x310]
003f540c  14 33 84 e5                                      str r3, [r4, #0x314]
003f5410  99 70 fc eb                                      bl #0x31167c
003f5414  10 33 94 e5                                      ldr r3, [r4, #0x310]
003f5418  04 00 a0 e1                                      mov r0, r4
003f541c  00 50 c3 e5                                      strb r5, [r3]
003f5420  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003f5424  d4 f8 59 00 18 29 00 00                          .byte 0xd4, 0xf8, 0x59, 0x00, 0x18, 0x29, 0x00, 0x00
