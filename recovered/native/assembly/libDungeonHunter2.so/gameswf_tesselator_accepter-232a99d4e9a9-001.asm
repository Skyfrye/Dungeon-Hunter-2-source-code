; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007854f8, declared_size=148, range_size=148, mode=arm
; class-group: gameswf::tesselator_accepter
; alias: _ZN7gameswf19tesselator_accepter16callback_combineEPdPPvPfS3_PS0_
; demangled: gameswf::tesselator_accepter::callback_combine(double*, void**, float*, void**, gameswf::tesselator_accepter*)
; decoder-mode: arm
007854f8  f0 03 2d e9                                      push {r4, r5, r6, r7, r8, sb}
007854fc  84 20 9f e5                                      ldr r2, [pc, #0x84]
00785500  03 18 a0 e3                                      mov r1, #0x30000
00785504  18 10 81 e2                                      add r1, r1, #0x18
00785508  02 20 8f e0                                      add r2, pc, r2
0078550c  01 60 92 e7                                      ldr r6, [r2, r1]
00785510  18 c0 a0 e3                                      mov ip, #0x18
00785514  00 40 a0 e3                                      mov r4, #0
00785518  9c 26 26 e0                                      mla r6, ip, r6, r2
0078551c  00 50 a0 e3                                      mov r5, #0
00785520  f8 41 c6 e1                                      strd r4, r5, [r6, #0x18]
00785524  01 70 92 e7                                      ldr r7, [r2, r1]
00785528  0c 60 82 e0                                      add r6, r2, ip
0078552c  87 70 87 e0                                      add r7, r7, r7, lsl #1
00785530  87 71 82 e0                                      add r7, r2, r7, lsl #3
00785534  f0 42 c7 e1                                      strd r4, r5, [r7, #0x20]
00785538  01 70 92 e7                                      ldr r7, [r2, r1]
0078553c  9c 27 27 e0                                      mla r7, ip, r7, r2
00785540  f8 42 c7 e1                                      strd r4, r5, [r7, #0x28]
00785544  01 40 92 e7                                      ldr r4, [r2, r1]
00785548  9c 04 0c e0                                      mul ip, ip, r4
0078554c  01 50 84 e2                                      add r5, r4, #1
00785550  01 50 82 e7                                      str r5, [r2, r1]
00785554  0c 10 82 e0                                      add r1, r2, ip
00785558  d0 80 c0 e1                                      ldrd r8, sb, [r0]
0078555c  84 40 84 e0                                      add r4, r4, r4, lsl #1
00785560  f8 81 c1 e1                                      strd r8, sb, [r1, #0x18]
00785564  84 21 82 e0                                      add r2, r2, r4, lsl #3
00785568  d8 40 c0 e1                                      ldrd r4, r5, [r0, #8]
0078556c  f0 42 c2 e1                                      strd r4, r5, [r2, #0x20]
00785570  0c c0 86 e0                                      add ip, r6, ip
00785574  d0 41 c0 e1                                      ldrd r4, r5, [r0, #0x10]
00785578  f8 42 c1 e1                                      strd r4, r5, [r1, #0x28]
0078557c  00 c0 83 e5                                      str ip, [r3]
00785580  f0 03 bd e8                                      pop {r4, r5, r6, r7, r8, sb}
00785584  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00785588  c8 74 27 00                                      .byte 0xc8, 0x74, 0x27, 0x00

; FUNCTION 0x0078558c, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::tesselator_accepter
; alias: _ZN7gameswf19tesselator_accepter14callback_errorEiPS0_
; demangled: gameswf::tesselator_accepter::callback_error(int, gameswf::tesselator_accepter*)
; decoder-mode: arm
0078558c  1e ff 2f e1                                      bx lr

; FUNCTION 0x007859a0, declared_size=360, range_size=360, mode=arm
; class-group: gameswf::tesselator_accepter
; alias: _ZN7gameswf19tesselator_accepterC1Ebbb
; demangled: gameswf::tesselator_accepter::tesselator_accepter(bool, bool, bool)
; decoder-mode: arm
007859a0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007859a4  00 40 a0 e1                                      mov r4, r0
007859a8  02 70 a0 e1                                      mov r7, r2
007859ac  00 20 a0 e3                                      mov r2, #0
007859b0  30 20 c0 e5                                      strb r2, [r0, #0x30]
007859b4  04 20 80 e5                                      str r2, [r0, #4]
007859b8  08 20 80 e5                                      str r2, [r0, #8]
007859bc  0c 20 80 e5                                      str r2, [r0, #0xc]
007859c0  10 20 c0 e5                                      strb r2, [r0, #0x10]
007859c4  14 20 80 e5                                      str r2, [r0, #0x14]
007859c8  18 20 80 e5                                      str r2, [r0, #0x18]
007859cc  1c 20 80 e5                                      str r2, [r0, #0x1c]
007859d0  20 20 c0 e5                                      strb r2, [r0, #0x20]
007859d4  24 20 80 e5                                      str r2, [r0, #0x24]
007859d8  28 20 80 e5                                      str r2, [r0, #0x28]
007859dc  2c 20 80 e5                                      str r2, [r0, #0x2c]
007859e0  34 70 c0 e5                                      strb r7, [r0, #0x34]
007859e4  35 10 c4 e5                                      strb r1, [r4, #0x35]
007859e8  03 80 a0 e1                                      mov r8, r3
007859ec  01 60 a0 e1                                      mov r6, r1
007859f0  31 a8 00 eb                                      bl #0x7afabc
007859f4  00 00 58 e3                                      cmp r8, #0
007859f8  20 32 07 03                                      movweq r3, #0x7220
007859fc  60 32 07 13                                      movwne r3, #0x7260
00785a00  61 1b a0 e3                                      mov r1, #0x18400
00785a04  f8 30 44 03                                      movteq r3, #0x40f8
00785a08  f8 30 44 13                                      movtne r3, #0x40f8
00785a0c  38 00 84 e5                                      str r0, [r4, #0x38]
00785a10  00 20 a0 e3                                      mov r2, #0
00785a14  cb 1f 81 e2                                      add r1, r1, #0x32c
00785a18  d3 a4 00 eb                                      bl #0x7aed6c
00785a1c  00 00 57 e3                                      cmp r7, #0
00785a20  ff 35 a0 13                                      movne r3, #0x3fc00000
00785a24  62 1b a0 e3                                      mov r1, #0x18800
00785a28  00 30 a0 03                                      moveq r3, #0
00785a2c  03 36 83 12                                      addne r3, r3, #0x300000
00785a30  38 00 94 e5                                      ldr r0, [r4, #0x38]
00785a34  00 20 a0 e3                                      mov r2, #0
00785a38  d3 10 41 e2                                      sub r1, r1, #0xd3
00785a3c  a8 50 9f e5                                      ldr r5, [pc, #0xa8]
00785a40  c9 a4 00 eb                                      bl #0x7aed6c
00785a44  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
00785a48  05 50 8f e0                                      add r5, pc, r5
00785a4c  62 1b a0 e3                                      mov r1, #0x18800
00785a50  03 20 95 e7                                      ldr r2, [r5, r3]
00785a54  f6 10 41 e2                                      sub r1, r1, #0xf6
00785a58  38 00 94 e5                                      ldr r0, [r4, #0x38]
00785a5c  58 a5 00 eb                                      bl #0x7aefc4
00785a60  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
00785a64  62 1b a0 e3                                      mov r1, #0x18800
00785a68  f5 10 41 e2                                      sub r1, r1, #0xf5
00785a6c  03 20 95 e7                                      ldr r2, [r5, r3]
00785a70  38 00 94 e5                                      ldr r0, [r4, #0x38]
00785a74  52 a5 00 eb                                      bl #0x7aefc4
00785a78  78 30 9f e5                                      ldr r3, [pc, #0x78]
00785a7c  62 1b a0 e3                                      mov r1, #0x18800
00785a80  f1 10 41 e2                                      sub r1, r1, #0xf1
00785a84  03 20 95 e7                                      ldr r2, [r5, r3]
00785a88  38 00 94 e5                                      ldr r0, [r4, #0x38]
00785a8c  4c a5 00 eb                                      bl #0x7aefc4
00785a90  64 30 9f e5                                      ldr r3, [pc, #0x64]
00785a94  62 1b a0 e3                                      mov r1, #0x18800
00785a98  38 00 94 e5                                      ldr r0, [r4, #0x38]
00785a9c  f3 10 41 e2                                      sub r1, r1, #0xf3
00785aa0  03 20 95 e7                                      ldr r2, [r5, r3]
00785aa4  46 a5 00 eb                                      bl #0x7aefc4
00785aa8  00 00 56 e3                                      cmp r6, #0
00785aac  38 00 94 e5                                      ldr r0, [r4, #0x38]
00785ab0  06 00 00 1a                                      bne #0x785ad0
00785ab4  44 30 9f e5                                      ldr r3, [pc, #0x44]
00785ab8  61 1b a0 e3                                      mov r1, #0x18400
00785abc  c3 1f 81 e2                                      add r1, r1, #0x30c
00785ac0  03 20 95 e7                                      ldr r2, [r5, r3]
00785ac4  3e a5 00 eb                                      bl #0x7aefc4
00785ac8  04 00 a0 e1                                      mov r0, r4
00785acc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00785ad0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00785ad4  61 1b a0 e3                                      mov r1, #0x18400
00785ad8  c3 1f 81 e2                                      add r1, r1, #0x30c
00785adc  03 20 95 e7                                      ldr r2, [r5, r3]
00785ae0  37 a5 00 eb                                      bl #0x7aefc4
00785ae4  04 00 a0 e1                                      mov r0, r4
00785ae8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00785aec  48 f0 20 00 50 37 00 00 50 33 00 00 88 19 00 00  .byte 0x48, 0xf0, 0x20, 0x00, 0x50, 0x37, 0x00, 0x00, 0x50, 0x33, 0x00, 0x00, 0x88, 0x19, 0x00, 0x00
00785afc  88 06 00 00 d4 12 00 00 68 08 00 00              .byte 0x88, 0x06, 0x00, 0x00, 0xd4, 0x12, 0x00, 0x00, 0x68, 0x08, 0x00, 0x00

; FUNCTION 0x00786cc8, declared_size=96, range_size=96, mode=arm
; class-group: gameswf::tesselator_accepter
; alias: _ZN7gameswf19tesselator_accepter15callback_vertexEPKvPS0_
; demangled: gameswf::tesselator_accepter::callback_vertex(void const*, gameswf::tesselator_accepter*)
; decoder-mode: arm
00786cc8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00786ccc  00 50 a0 e1                                      mov r5, r0
00786cd0  01 40 a0 e1                                      mov r4, r1
00786cd4  d0 00 c0 e1                                      ldrd r0, r1, [r0]
00786cd8  70 1e ee eb                                      bl #0x30e6a0
00786cdc  00 60 a0 e1                                      mov r6, r0
00786ce0  d8 00 c5 e1                                      ldrd r0, r1, [r5, #8]
00786ce4  6d 1e ee eb                                      bl #0x30e6a0
00786ce8  08 30 94 e5                                      ldr r3, [r4, #8]
00786cec  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00786cf0  00 70 a0 e1                                      mov r7, r0
00786cf4  01 50 83 e2                                      add r5, r3, #1
00786cf8  02 00 55 e1                                      cmp r5, r2
00786cfc  03 00 00 da                                      ble #0x786d10
00786d00  04 00 84 e2                                      add r0, r4, #4
00786d04  c5 10 85 e0                                      add r1, r5, r5, asr #1
00786d08  3f fa ff eb                                      bl #0x78560c
00786d0c  08 30 94 e5                                      ldr r3, [r4, #8]
00786d10  04 20 94 e5                                      ldr r2, [r4, #4]
00786d14  83 11 82 e0                                      add r1, r2, r3, lsl #3
00786d18  04 70 81 e5                                      str r7, [r1, #4]
00786d1c  83 61 82 e7                                      str r6, [r2, r3, lsl #3]
00786d20  08 50 84 e5                                      str r5, [r4, #8]
00786d24  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007871f4, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::tesselator_accepter
; alias: _ZN7gameswf19tesselator_accepter14callback_beginEiPS0_
; demangled: gameswf::tesselator_accepter::callback_begin(int, gameswf::tesselator_accepter*)
; decoder-mode: arm
007871f4  01 30 a0 e1                                      mov r3, r1
007871f8  30 00 2d e9                                      push {r4, r5}
007871fc  04 00 83 e4                                      str r0, [r3], #4
00787200  08 00 91 e5                                      ldr r0, [r1, #8]
00787204  00 00 50 e3                                      cmp r0, #0
00787208  03 00 00 da                                      ble #0x78721c
0078720c  00 30 a0 e3                                      mov r3, #0
00787210  08 30 81 e5                                      str r3, [r1, #8]
00787214  30 00 bd e8                                      pop {r4, r5}
00787218  1e ff 2f e1                                      bx lr
0078721c  fa ff ff aa                                      bge #0x78720c
00787220  00 40 a0 e3                                      mov r4, #0
00787224  80 21 a0 e1                                      lsl r2, r0, #3
00787228  00 c0 93 e5                                      ldr ip, [r3]
0078722c  01 00 90 e2                                      adds r0, r0, #1
00787230  02 50 8c e0                                      add r5, ip, r2
00787234  02 40 8c e7                                      str r4, [ip, r2]
00787238  04 40 85 e5                                      str r4, [r5, #4]
0078723c  08 20 82 e2                                      add r2, r2, #8
00787240  f8 ff ff 1a                                      bne #0x787228
00787244  f0 ff ff ea                                      b #0x78720c

; FUNCTION 0x00787578, declared_size=236, range_size=236, mode=arm
; class-group: gameswf::tesselator_accepter
; alias: _ZN7gameswf19tesselator_accepter4initEv
; demangled: gameswf::tesselator_accepter::init()
; decoder-mode: arm
00787578  e0 20 9f e5                                      ldr r2, [pc, #0xe0]
0078757c  03 38 a0 e3                                      mov r3, #0x30000
00787580  00 10 a0 e3                                      mov r1, #0
00787584  02 20 8f e0                                      add r2, pc, r2
00787588  18 30 83 e2                                      add r3, r3, #0x18
0078758c  30 00 2d e9                                      push {r4, r5}
00787590  03 10 82 e7                                      str r1, [r2, r3]
00787594  08 20 90 e5                                      ldr r2, [r0, #8]
00787598  04 50 80 e2                                      add r5, r0, #4
0078759c  01 00 52 e1                                      cmp r2, r1
007875a0  0f 00 00 da                                      ble #0x7875e4
007875a4  18 20 90 e5                                      ldr r2, [r0, #0x18]
007875a8  00 30 a0 e3                                      mov r3, #0
007875ac  08 30 80 e5                                      str r3, [r0, #8]
007875b0  03 00 52 e1                                      cmp r2, r3
007875b4  14 50 80 e2                                      add r5, r0, #0x14
007875b8  14 00 00 da                                      ble #0x787610
007875bc  28 30 90 e5                                      ldr r3, [r0, #0x28]
007875c0  00 20 a0 e3                                      mov r2, #0
007875c4  18 20 80 e5                                      str r2, [r0, #0x18]
007875c8  02 00 53 e1                                      cmp r3, r2
007875cc  24 c0 80 e2                                      add ip, r0, #0x24
007875d0  19 00 00 da                                      ble #0x78763c
007875d4  00 30 a0 e3                                      mov r3, #0
007875d8  28 30 80 e5                                      str r3, [r0, #0x28]
007875dc  30 00 bd e8                                      pop {r4, r5}
007875e0  1e ff 2f e1                                      bx lr
007875e4  ee ff ff aa                                      bge #0x7875a4
007875e8  00 c0 a0 e3                                      mov ip, #0
007875ec  82 31 a0 e1                                      lsl r3, r2, #3
007875f0  00 10 95 e5                                      ldr r1, [r5]
007875f4  01 20 92 e2                                      adds r2, r2, #1
007875f8  03 40 81 e0                                      add r4, r1, r3
007875fc  03 c0 81 e7                                      str ip, [r1, r3]
00787600  04 c0 84 e5                                      str ip, [r4, #4]
00787604  08 30 83 e2                                      add r3, r3, #8
00787608  f8 ff ff 1a                                      bne #0x7875f0
0078760c  e4 ff ff ea                                      b #0x7875a4
00787610  e9 ff ff aa                                      bge #0x7875bc
00787614  00 c0 a0 e3                                      mov ip, #0
00787618  82 31 a0 e1                                      lsl r3, r2, #3
0078761c  00 10 95 e5                                      ldr r1, [r5]
00787620  01 20 92 e2                                      adds r2, r2, #1
00787624  03 40 81 e0                                      add r4, r1, r3
00787628  03 c0 81 e7                                      str ip, [r1, r3]
0078762c  04 c0 84 e5                                      str ip, [r4, #4]
00787630  08 30 83 e2                                      add r3, r3, #8
00787634  f8 ff ff 1a                                      bne #0x78761c
00787638  df ff ff ea                                      b #0x7875bc
0078763c  e4 ff ff aa                                      bge #0x7875d4
00787640  83 20 a0 e1                                      lsl r2, r3, #1
00787644  00 10 9c e5                                      ldr r1, [ip]
00787648  00 40 a0 e3                                      mov r4, #0
0078764c  01 30 93 e2                                      adds r3, r3, #1
00787650  b2 40 81 e1                                      strh r4, [r1, r2]
00787654  02 20 82 e2                                      add r2, r2, #2
00787658  f9 ff ff 1a                                      bne #0x787644
0078765c  dc ff ff ea                                      b #0x7875d4
; mapping-symbol data/literal pool
00787660  4c 54 27 00                                      .byte 0x4c, 0x54, 0x27, 0x00

; FUNCTION 0x0078810c, declared_size=248, range_size=248, mode=arm
; class-group: gameswf::tesselator_accepter
; alias: _ZN7gameswf19tesselator_accepterD1Ev
; demangled: gameswf::tesselator_accepter::~tesselator_accepter()
; decoder-mode: arm
0078810c  10 40 2d e9                                      push {r4, lr}
00788110  00 40 a0 e1                                      mov r4, r0
00788114  38 00 90 e5                                      ldr r0, [r0, #0x38]
00788118  5d 9e 00 eb                                      bl #0x7afa94
0078811c  28 30 94 e5                                      ldr r3, [r4, #0x28]
00788120  24 00 84 e2                                      add r0, r4, #0x24
00788124  00 00 53 e3                                      cmp r3, #0
00788128  12 00 00 da                                      ble #0x788178
0078812c  00 10 a0 e3                                      mov r1, #0
00788130  28 10 84 e5                                      str r1, [r4, #0x28]
00788134  50 c7 ff eb                                      bl #0x779e7c
00788138  18 20 94 e5                                      ldr r2, [r4, #0x18]
0078813c  14 00 84 e2                                      add r0, r4, #0x14
00788140  00 00 52 e3                                      cmp r2, #0
00788144  14 00 00 da                                      ble #0x78819c
00788148  00 10 a0 e3                                      mov r1, #0
0078814c  18 10 84 e5                                      str r1, [r4, #0x18]
00788150  2d f5 ff eb                                      bl #0x78560c
00788154  08 20 94 e5                                      ldr r2, [r4, #8]
00788158  04 00 84 e2                                      add r0, r4, #4
0078815c  00 00 52 e3                                      cmp r2, #0
00788160  18 00 00 da                                      ble #0x7881c8
00788164  00 10 a0 e3                                      mov r1, #0
00788168  08 10 84 e5                                      str r1, [r4, #8]
0078816c  26 f5 ff eb                                      bl #0x78560c
00788170  04 00 a0 e1                                      mov r0, r4
00788174  10 80 bd e8                                      pop {r4, pc}
00788178  eb ff ff aa                                      bge #0x78812c
0078817c  83 20 a0 e1                                      lsl r2, r3, #1
00788180  00 10 90 e5                                      ldr r1, [r0]
00788184  00 c0 a0 e3                                      mov ip, #0
00788188  01 30 93 e2                                      adds r3, r3, #1
0078818c  b2 c0 81 e1                                      strh ip, [r1, r2]
00788190  02 20 82 e2                                      add r2, r2, #2
00788194  f9 ff ff 1a                                      bne #0x788180
00788198  e3 ff ff ea                                      b #0x78812c
0078819c  e9 ff ff aa                                      bge #0x788148
007881a0  00 c0 a0 e3                                      mov ip, #0
007881a4  82 31 a0 e1                                      lsl r3, r2, #3
007881a8  00 10 90 e5                                      ldr r1, [r0]
007881ac  01 20 92 e2                                      adds r2, r2, #1
007881b0  03 e0 81 e0                                      add lr, r1, r3
007881b4  03 c0 81 e7                                      str ip, [r1, r3]
007881b8  04 c0 8e e5                                      str ip, [lr, #4]
007881bc  08 30 83 e2                                      add r3, r3, #8
007881c0  f8 ff ff 1a                                      bne #0x7881a8
007881c4  df ff ff ea                                      b #0x788148
007881c8  e5 ff ff aa                                      bge #0x788164
007881cc  00 c0 a0 e3                                      mov ip, #0
007881d0  82 31 a0 e1                                      lsl r3, r2, #3
007881d4  00 10 90 e5                                      ldr r1, [r0]
007881d8  01 20 92 e2                                      adds r2, r2, #1
007881dc  03 e0 81 e0                                      add lr, r1, r3
007881e0  03 c0 81 e7                                      str ip, [r1, r3]
007881e4  04 c0 8e e5                                      str ip, [lr, #4]
007881e8  08 30 83 e2                                      add r3, r3, #8
007881ec  f8 ff ff 1a                                      bne #0x7881d4
007881f0  00 10 a0 e3                                      mov r1, #0
007881f4  08 10 84 e5                                      str r1, [r4, #8]
007881f8  03 f5 ff eb                                      bl #0x78560c
007881fc  04 00 a0 e1                                      mov r0, r4
00788200  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00788264, declared_size=252, range_size=252, mode=arm
; class-group: gameswf::tesselator_accepter
; alias: _ZN7gameswf19tesselator_accepter9add_pointERNS_5pointE
; demangled: gameswf::tesselator_accepter::add_point(gameswf::point&)
; decoder-mode: arm
00788264  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00788268  00 60 a0 e1                                      mov r6, r0
0078826c  04 00 91 e5                                      ldr r0, [r1, #4]
00788270  01 70 a0 e1                                      mov r7, r1
00788274  8a 19 ee eb                                      bl #0x30e8a4
00788278  00 80 a0 e1                                      mov r8, r0
0078827c  00 00 97 e5                                      ldr r0, [r7]
00788280  01 90 a0 e1                                      mov sb, r1
00788284  86 19 ee eb                                      bl #0x30e8a4
00788288  cc 40 9f e5                                      ldr r4, [pc, #0xcc]
0078828c  03 58 a0 e3                                      mov r5, #0x30000
00788290  18 50 85 e2                                      add r5, r5, #0x18
00788294  04 40 8f e0                                      add r4, pc, r4
00788298  05 a0 94 e7                                      ldr sl, [r4, r5]
0078829c  18 70 a0 e3                                      mov r7, #0x18
007882a0  97 4a 2a e0                                      mla sl, r7, sl, r4
007882a4  f8 01 ca e1                                      strd r0, r1, [sl, #0x18]
007882a8  05 30 94 e7                                      ldr r3, [r4, r5]
007882ac  00 00 a0 e3                                      mov r0, #0
007882b0  00 10 a0 e3                                      mov r1, #0
007882b4  83 30 83 e0                                      add r3, r3, r3, lsl #1
007882b8  83 31 84 e0                                      add r3, r4, r3, lsl #3
007882bc  f0 82 c3 e1                                      strd r8, sb, [r3, #0x20]
007882c0  05 30 94 e7                                      ldr r3, [r4, r5]
007882c4  97 43 23 e0                                      mla r3, r7, r3, r4
007882c8  f8 02 c3 e1                                      strd r0, r1, [r3, #0x28]
007882cc  05 80 94 e7                                      ldr r8, [r4, r5]
007882d0  01 30 88 e2                                      add r3, r8, #1
007882d4  05 30 84 e7                                      str r3, [r4, r5]
007882d8  34 30 d6 e5                                      ldrb r3, [r6, #0x34]
007882dc  00 00 53 e3                                      cmp r3, #0
007882e0  05 00 00 1a                                      bne #0x7882fc
007882e4  18 40 84 e2                                      add r4, r4, #0x18
007882e8  97 48 21 e0                                      mla r1, r7, r8, r4
007882ec  38 00 96 e5                                      ldr r0, [r6, #0x38]
007882f0  01 20 a0 e1                                      mov r2, r1
007882f4  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
007882f8  66 9d 00 ea                                      b #0x7af898
007882fc  97 48 27 e0                                      mla r7, r7, r8, r4
00788300  88 80 88 e0                                      add r8, r8, r8, lsl #1
00788304  d8 01 c7 e1                                      ldrd r0, r1, [r7, #0x18]
00788308  e4 18 ee eb                                      bl #0x30e6a0
0078830c  88 41 84 e0                                      add r4, r4, r8, lsl #3
00788310  00 50 a0 e1                                      mov r5, r0
00788314  d0 02 c4 e1                                      ldrd r0, r1, [r4, #0x20]
00788318  e0 18 ee eb                                      bl #0x30e6a0
0078831c  08 30 96 e5                                      ldr r3, [r6, #8]
00788320  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00788324  00 70 a0 e1                                      mov r7, r0
00788328  01 40 83 e2                                      add r4, r3, #1
0078832c  02 00 54 e1                                      cmp r4, r2
00788330  03 00 00 da                                      ble #0x788344
00788334  04 00 86 e2                                      add r0, r6, #4
00788338  c4 10 84 e0                                      add r1, r4, r4, asr #1
0078833c  b2 f4 ff eb                                      bl #0x78560c
00788340  08 30 96 e5                                      ldr r3, [r6, #8]
00788344  04 20 96 e5                                      ldr r2, [r6, #4]
00788348  83 11 82 e0                                      add r1, r2, r3, lsl #3
0078834c  04 70 81 e5                                      str r7, [r1, #4]
00788350  83 51 82 e7                                      str r5, [r2, r3, lsl #3]
00788354  08 40 86 e5                                      str r4, [r6, #8]
00788358  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
0078835c  3c 47 27 00                                      .byte 0x3c, 0x47, 0x27, 0x00

; FUNCTION 0x00788360, declared_size=1096, range_size=1096, mode=arm
; class-group: gameswf::tesselator_accepter
; alias: _ZN7gameswf19tesselator_accepter18callback_end_stripEPS0_
; demangled: gameswf::tesselator_accepter::callback_end_strip(gameswf::tesselator_accepter*)
; decoder-mode: arm
00788360  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00788364  08 30 90 e5                                      ldr r3, [r0, #8]
00788368  0c d0 4d e2                                      sub sp, sp, #0xc
0078836c  00 40 a0 e1                                      mov r4, r0
00788370  00 00 53 e3                                      cmp r3, #0
00788374  16 00 00 0a                                      beq #0x7883d4
00788378  18 30 90 e5                                      ldr r3, [r0, #0x18]
0078837c  00 00 53 e3                                      cmp r3, #0
00788380  0c 00 00 da                                      ble #0x7883b8
00788384  14 20 90 e5                                      ldr r2, [r0, #0x14]
00788388  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
0078838c  01 10 43 e2                                      sub r1, r3, #1
00788390  01 50 83 e2                                      add r5, r3, #1
00788394  00 00 55 e1                                      cmp r5, r0
00788398  81 01 82 e0                                      add r0, r2, r1, lsl #3
0078839c  04 70 90 e5                                      ldr r7, [r0, #4]
007883a0  81 61 92 e7                                      ldr r6, [r2, r1, lsl #3]
007883a4  34 00 00 ca                                      bgt #0x78847c
007883a8  83 11 82 e0                                      add r1, r2, r3, lsl #3
007883ac  04 70 81 e5                                      str r7, [r1, #4]
007883b0  83 61 82 e7                                      str r6, [r2, r3, lsl #3]
007883b4  18 50 84 e5                                      str r5, [r4, #0x18]
007883b8  00 30 94 e5                                      ldr r3, [r4]
007883bc  05 00 53 e3                                      cmp r3, #5
007883c0  05 00 00 0a                                      beq #0x7883dc
007883c4  06 00 53 e3                                      cmp r3, #6
007883c8  a8 00 00 0a                                      beq #0x788670
007883cc  04 00 53 e3                                      cmp r3, #4
007883d0  33 00 00 0a                                      beq #0x7884a4
007883d4  0c d0 8d e2                                      add sp, sp, #0xc
007883d8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007883dc  18 30 94 e5                                      ldr r3, [r4, #0x18]
007883e0  00 00 53 e3                                      cmp r3, #0
007883e4  02 00 00 da                                      ble #0x7883f4
007883e8  14 00 84 e2                                      add r0, r4, #0x14
007883ec  04 10 94 e5                                      ldr r1, [r4, #4]
007883f0  a4 f4 ff eb                                      bl #0x785688
007883f4  a0 00 94 e9                                      ldmib r4, {r5, r7}
007883f8  00 00 57 e3                                      cmp r7, #0
007883fc  f4 ff ff da                                      ble #0x7883d4
00788400  18 a0 94 e5                                      ldr sl, [r4, #0x18]
00788404  14 60 84 e2                                      add r6, r4, #0x14
00788408  07 80 9a e0                                      adds r8, sl, r7
0078840c  de 00 00 1a                                      bne #0x78878c
00788410  08 00 5a e1                                      cmp sl, r8
00788414  8a 11 a0 a1                                      lslge r1, sl, #3
00788418  0a 00 00 aa                                      bge #0x788448
0078841c  8a 11 a0 e1                                      lsl r1, sl, #3
00788420  00 00 a0 e3                                      mov r0, #0
00788424  01 30 a0 e1                                      mov r3, r1
00788428  00 20 96 e5                                      ldr r2, [r6]
0078842c  01 a0 8a e2                                      add sl, sl, #1
00788430  08 00 5a e1                                      cmp sl, r8
00788434  03 c0 82 e0                                      add ip, r2, r3
00788438  03 00 82 e7                                      str r0, [r2, r3]
0078843c  04 00 8c e5                                      str r0, [ip, #4]
00788440  08 30 83 e2                                      add r3, r3, #8
00788444  f7 ff ff 1a                                      bne #0x788428
00788448  18 80 84 e5                                      str r8, [r4, #0x18]
0078844c  00 30 a0 e3                                      mov r3, #0
00788450  83 c1 95 e7                                      ldr ip, [r5, r3, lsl #3]
00788454  00 20 96 e5                                      ldr r2, [r6]
00788458  83 01 85 e0                                      add r0, r5, r3, lsl #3
0078845c  01 30 83 e2                                      add r3, r3, #1
00788460  01 c0 a2 e7                                      str ip, [r2, r1]!
00788464  04 00 90 e5                                      ldr r0, [r0, #4]
00788468  07 00 53 e1                                      cmp r3, r7
0078846c  08 10 81 e2                                      add r1, r1, #8
00788470  04 00 82 e5                                      str r0, [r2, #4]
00788474  f5 ff ff 1a                                      bne #0x788450
00788478  d5 ff ff ea                                      b #0x7883d4
0078847c  c5 10 85 e0                                      add r1, r5, r5, asr #1
00788480  14 00 84 e2                                      add r0, r4, #0x14
00788484  60 f4 ff eb                                      bl #0x78560c
00788488  18 30 94 e5                                      ldr r3, [r4, #0x18]
0078848c  14 20 94 e5                                      ldr r2, [r4, #0x14]
00788490  83 11 82 e0                                      add r1, r2, r3, lsl #3
00788494  04 70 81 e5                                      str r7, [r1, #4]
00788498  83 61 82 e7                                      str r6, [r2, r3, lsl #3]
0078849c  18 50 84 e5                                      str r5, [r4, #0x18]
007884a0  c4 ff ff ea                                      b #0x7883b8
007884a4  18 30 94 e5                                      ldr r3, [r4, #0x18]
007884a8  00 00 53 e3                                      cmp r3, #0
007884ac  02 00 00 da                                      ble #0x7884bc
007884b0  14 00 84 e2                                      add r0, r4, #0x14
007884b4  04 10 94 e5                                      ldr r1, [r4, #4]
007884b8  72 f4 ff eb                                      bl #0x785688
007884bc  08 30 94 e5                                      ldr r3, [r4, #8]
007884c0  00 00 53 e3                                      cmp r3, #0
007884c4  c2 ff ff da                                      ble #0x7883d4
007884c8  14 30 84 e2                                      add r3, r4, #0x14
007884cc  18 a0 94 e5                                      ldr sl, [r4, #0x18]
007884d0  04 30 8d e5                                      str r3, [sp, #4]
007884d4  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
007884d8  04 30 94 e5                                      ldr r3, [r4, #4]
007884dc  00 70 a0 e3                                      mov r7, #0
007884e0  01 60 8a e2                                      add r6, sl, #1
007884e4  07 90 a0 e1                                      mov sb, r7
007884e8  02 00 56 e1                                      cmp r6, r2
007884ec  10 80 a0 e3                                      mov r8, #0x10
007884f0  09 90 83 e0                                      add sb, r3, sb
007884f4  03 00 00 da                                      ble #0x788508
007884f8  04 00 9d e5                                      ldr r0, [sp, #4]
007884fc  c6 10 86 e0                                      add r1, r6, r6, asr #1
00788500  41 f4 ff eb                                      bl #0x78560c
00788504  18 a0 94 e5                                      ldr sl, [r4, #0x18]
00788508  14 30 94 e5                                      ldr r3, [r4, #0x14]
0078850c  00 10 99 e5                                      ldr r1, [sb]
00788510  01 50 86 e2                                      add r5, r6, #1
00788514  8a 21 83 e0                                      add r2, r3, sl, lsl #3
00788518  8a 11 83 e7                                      str r1, [r3, sl, lsl #3]
0078851c  04 30 99 e5                                      ldr r3, [sb, #4]
00788520  08 a0 48 e2                                      sub sl, r8, #8
00788524  04 30 82 e5                                      str r3, [r2, #4]
00788528  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0078852c  04 90 94 e5                                      ldr sb, [r4, #4]
00788530  18 60 84 e5                                      str r6, [r4, #0x18]
00788534  03 00 55 e1                                      cmp r5, r3
00788538  0a b0 89 e0                                      add fp, sb, sl
0078853c  03 00 00 da                                      ble #0x788550
00788540  04 00 9d e5                                      ldr r0, [sp, #4]
00788544  c5 10 85 e0                                      add r1, r5, r5, asr #1
00788548  2f f4 ff eb                                      bl #0x78560c
0078854c  18 60 94 e5                                      ldr r6, [r4, #0x18]
00788550  0a 20 99 e7                                      ldr r2, [sb, sl]
00788554  14 30 94 e5                                      ldr r3, [r4, #0x14]
00788558  01 a0 85 e2                                      add sl, r5, #1
0078855c  86 21 83 e7                                      str r2, [r3, r6, lsl #3]
00788560  04 20 9b e5                                      ldr r2, [fp, #4]
00788564  86 61 83 e0                                      add r6, r3, r6, lsl #3
00788568  04 20 86 e5                                      str r2, [r6, #4]
0078856c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00788570  04 60 94 e5                                      ldr r6, [r4, #4]
00788574  18 50 84 e5                                      str r5, [r4, #0x18]
00788578  03 00 5a e1                                      cmp sl, r3
0078857c  08 60 86 e0                                      add r6, r6, r8
00788580  03 00 00 da                                      ble #0x788594
00788584  04 00 9d e5                                      ldr r0, [sp, #4]
00788588  ca 10 8a e0                                      add r1, sl, sl, asr #1
0078858c  1e f4 ff eb                                      bl #0x78560c
00788590  18 50 94 e5                                      ldr r5, [r4, #0x18]
00788594  14 30 94 e5                                      ldr r3, [r4, #0x14]
00788598  00 10 96 e5                                      ldr r1, [r6]
0078859c  03 70 87 e2                                      add r7, r7, #3
007885a0  85 21 83 e0                                      add r2, r3, r5, lsl #3
007885a4  85 11 83 e7                                      str r1, [r3, r5, lsl #3]
007885a8  04 30 96 e5                                      ldr r3, [r6, #4]
007885ac  04 30 82 e5                                      str r3, [r2, #4]
007885b0  08 30 94 e5                                      ldr r3, [r4, #8]
007885b4  18 a0 84 e5                                      str sl, [r4, #0x18]
007885b8  03 00 57 e1                                      cmp r7, r3
007885bc  84 ff ff aa                                      bge #0x7883d4
007885c0  14 30 94 e5                                      ldr r3, [r4, #0x14]
007885c4  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
007885c8  01 20 4a e2                                      sub r2, sl, #1
007885cc  01 50 8a e2                                      add r5, sl, #1
007885d0  01 00 55 e1                                      cmp r5, r1
007885d4  82 11 83 e0                                      add r1, r3, r2, lsl #3
007885d8  04 90 91 e5                                      ldr sb, [r1, #4]
007885dc  82 61 93 e7                                      ldr r6, [r3, r2, lsl #3]
007885e0  04 00 00 da                                      ble #0x7885f8
007885e4  04 00 9d e5                                      ldr r0, [sp, #4]
007885e8  c5 10 85 e0                                      add r1, r5, r5, asr #1
007885ec  06 f4 ff eb                                      bl #0x78560c
007885f0  14 30 94 e5                                      ldr r3, [r4, #0x14]
007885f4  18 a0 94 e5                                      ldr sl, [r4, #0x18]
007885f8  8a 21 83 e0                                      add r2, r3, sl, lsl #3
007885fc  04 90 82 e5                                      str sb, [r2, #4]
00788600  8a 61 83 e7                                      str r6, [r3, sl, lsl #3]
00788604  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00788608  04 60 94 e5                                      ldr r6, [r4, #4]
0078860c  01 a0 85 e2                                      add sl, r5, #1
00788610  87 91 a0 e1                                      lsl sb, r7, #3
00788614  03 00 5a e1                                      cmp sl, r3
00788618  18 50 84 e5                                      str r5, [r4, #0x18]
0078861c  09 60 86 e0                                      add r6, r6, sb
00788620  03 00 00 da                                      ble #0x788634
00788624  04 00 9d e5                                      ldr r0, [sp, #4]
00788628  ca 10 8a e0                                      add r1, sl, sl, asr #1
0078862c  f6 f3 ff eb                                      bl #0x78560c
00788630  18 50 94 e5                                      ldr r5, [r4, #0x18]
00788634  14 30 94 e5                                      ldr r3, [r4, #0x14]
00788638  00 10 96 e5                                      ldr r1, [r6]
0078863c  18 80 88 e2                                      add r8, r8, #0x18
00788640  85 21 83 e0                                      add r2, r3, r5, lsl #3
00788644  85 11 83 e7                                      str r1, [r3, r5, lsl #3]
00788648  04 30 96 e5                                      ldr r3, [r6, #4]
0078864c  01 60 8a e2                                      add r6, sl, #1
00788650  04 30 82 e5                                      str r3, [r2, #4]
00788654  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00788658  04 30 94 e5                                      ldr r3, [r4, #4]
0078865c  18 a0 84 e5                                      str sl, [r4, #0x18]
00788660  02 00 56 e1                                      cmp r6, r2
00788664  09 90 83 e0                                      add sb, r3, sb
00788668  a6 ff ff da                                      ble #0x788508
0078866c  a1 ff ff ea                                      b #0x7884f8
00788670  18 30 94 e5                                      ldr r3, [r4, #0x18]
00788674  00 00 53 e3                                      cmp r3, #0
00788678  03 00 00 da                                      ble #0x78868c
0078867c  04 10 94 e5                                      ldr r1, [r4, #4]
00788680  14 00 84 e2                                      add r0, r4, #0x14
00788684  08 10 81 e2                                      add r1, r1, #8
00788688  fe f3 ff eb                                      bl #0x785688
0078868c  08 30 94 e5                                      ldr r3, [r4, #8]
00788690  03 00 53 e3                                      cmp r3, #3
00788694  4e ff ff da                                      ble #0x7883d4
00788698  04 10 94 e5                                      ldr r1, [r4, #4]
0078869c  14 90 84 e2                                      add sb, r4, #0x14
007886a0  09 00 a0 e1                                      mov r0, sb
007886a4  08 10 81 e2                                      add r1, r1, #8
007886a8  f6 f3 ff eb                                      bl #0x785688
007886ac  09 00 a0 e1                                      mov r0, sb
007886b0  04 10 94 e5                                      ldr r1, [r4, #4]
007886b4  f3 f3 ff eb                                      bl #0x785688
007886b8  04 10 94 e5                                      ldr r1, [r4, #4]
007886bc  09 00 a0 e1                                      mov r0, sb
007886c0  10 10 81 e2                                      add r1, r1, #0x10
007886c4  ef f3 ff eb                                      bl #0x785688
007886c8  04 10 94 e5                                      ldr r1, [r4, #4]
007886cc  09 00 a0 e1                                      mov r0, sb
007886d0  18 10 81 e2                                      add r1, r1, #0x18
007886d4  eb f3 ff eb                                      bl #0x785688
007886d8  08 30 94 e5                                      ldr r3, [r4, #8]
007886dc  04 00 53 e3                                      cmp r3, #4
007886e0  3b ff ff da                                      ble #0x7883d4
007886e4  18 50 94 e5                                      ldr r5, [r4, #0x18]
007886e8  04 70 a0 e3                                      mov r7, #4
007886ec  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
007886f0  01 60 85 e2                                      add r6, r5, #1
007886f4  87 81 a0 e1                                      lsl r8, r7, #3
007886f8  06 00 53 e1                                      cmp r3, r6
007886fc  01 70 87 e2                                      add r7, r7, #1
00788700  04 a0 94 e5                                      ldr sl, [r4, #4]
00788704  05 b0 a0 e1                                      mov fp, r5
00788708  03 00 00 aa                                      bge #0x78871c
0078870c  c6 10 86 e0                                      add r1, r6, r6, asr #1
00788710  09 00 a0 e1                                      mov r0, sb
00788714  bc f3 ff eb                                      bl #0x78560c
00788718  18 50 94 e5                                      ldr r5, [r4, #0x18]
0078871c  00 20 9a e5                                      ldr r2, [sl]
00788720  14 30 94 e5                                      ldr r3, [r4, #0x14]
00788724  85 21 83 e7                                      str r2, [r3, r5, lsl #3]
00788728  04 20 9a e5                                      ldr r2, [sl, #4]
0078872c  85 31 83 e0                                      add r3, r3, r5, lsl #3
00788730  02 50 8b e2                                      add r5, fp, #2
00788734  04 20 83 e5                                      str r2, [r3, #4]
00788738  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0078873c  04 a0 94 e5                                      ldr sl, [r4, #4]
00788740  18 60 84 e5                                      str r6, [r4, #0x18]
00788744  03 00 55 e1                                      cmp r5, r3
00788748  08 b0 8a e0                                      add fp, sl, r8
0078874c  03 00 00 da                                      ble #0x788760
00788750  09 00 a0 e1                                      mov r0, sb
00788754  c5 10 85 e0                                      add r1, r5, r5, asr #1
00788758  ab f3 ff eb                                      bl #0x78560c
0078875c  18 60 94 e5                                      ldr r6, [r4, #0x18]
00788760  08 20 9a e7                                      ldr r2, [sl, r8]
00788764  14 30 94 e5                                      ldr r3, [r4, #0x14]
00788768  86 21 83 e7                                      str r2, [r3, r6, lsl #3]
0078876c  04 20 9b e5                                      ldr r2, [fp, #4]
00788770  86 61 83 e0                                      add r6, r3, r6, lsl #3
00788774  04 20 86 e5                                      str r2, [r6, #4]
00788778  08 30 94 e5                                      ldr r3, [r4, #8]
0078877c  18 50 84 e5                                      str r5, [r4, #0x18]
00788780  03 00 57 e1                                      cmp r7, r3
00788784  d8 ff ff ba                                      blt #0x7886ec
00788788  11 ff ff ea                                      b #0x7883d4
0078878c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00788790  03 00 58 e1                                      cmp r8, r3
00788794  1d ff ff da                                      ble #0x788410
00788798  06 00 a0 e1                                      mov r0, r6
0078879c  c8 10 88 e0                                      add r1, r8, r8, asr #1
007887a0  99 f3 ff eb                                      bl #0x78560c
007887a4  19 ff ff ea                                      b #0x788410

; FUNCTION 0x007887a8, declared_size=580, range_size=580, mode=arm
; class-group: gameswf::tesselator_accepter
; alias: _ZN7gameswf19tesselator_accepter9end_shapeERNS_5arrayINS_5pointEEERNS1_ItEE
; demangled: gameswf::tesselator_accepter::end_shape(gameswf::array<gameswf::point>&, gameswf::array<unsigned short>&)
; decoder-mode: arm
007887a8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007887ac  00 50 a0 e1                                      mov r5, r0
007887b0  38 00 90 e5                                      ldr r0, [r0, #0x38]
007887b4  01 40 a0 e1                                      mov r4, r1
007887b8  02 70 a0 e1                                      mov r7, r2
007887bc  75 9b 00 eb                                      bl #0x7af598
007887c0  35 30 d5 e5                                      ldrb r3, [r5, #0x35]
007887c4  00 00 53 e3                                      cmp r3, #0
007887c8  50 00 00 1a                                      bne #0x788910
007887cc  18 a0 95 e5                                      ldr sl, [r5, #0x18]
007887d0  14 60 85 e2                                      add r6, r5, #0x14
007887d4  04 80 94 e5                                      ldr r8, [r4, #4]
007887d8  00 00 5a e3                                      cmp sl, #0
007887dc  44 00 00 1a                                      bne #0x7888f4
007887e0  08 00 5a e1                                      cmp sl, r8
007887e4  09 00 00 da                                      ble #0x788810
007887e8  00 10 a0 e3                                      mov r1, #0
007887ec  88 31 a0 e1                                      lsl r3, r8, #3
007887f0  00 20 94 e5                                      ldr r2, [r4]
007887f4  01 80 88 e2                                      add r8, r8, #1
007887f8  0a 00 58 e1                                      cmp r8, sl
007887fc  03 00 82 e0                                      add r0, r2, r3
00788800  03 10 82 e7                                      str r1, [r2, r3]
00788804  04 10 80 e5                                      str r1, [r0, #4]
00788808  08 30 83 e2                                      add r3, r3, #8
0078880c  f7 ff ff 1a                                      bne #0x7887f0
00788810  00 00 5a e3                                      cmp sl, #0
00788814  04 a0 84 e5                                      str sl, [r4, #4]
00788818  0d 00 00 da                                      ble #0x788854
0078881c  00 30 a0 e3                                      mov r3, #0
00788820  00 00 96 e5                                      ldr r0, [r6]
00788824  00 20 94 e5                                      ldr r2, [r4]
00788828  83 11 a0 e1                                      lsl r1, r3, #3
0078882c  83 c1 90 e7                                      ldr ip, [r0, r3, lsl #3]
00788830  01 00 80 e0                                      add r0, r0, r1
00788834  01 10 82 e0                                      add r1, r2, r1
00788838  83 c1 82 e7                                      str ip, [r2, r3, lsl #3]
0078883c  04 20 90 e5                                      ldr r2, [r0, #4]
00788840  01 30 83 e2                                      add r3, r3, #1
00788844  04 20 81 e5                                      str r2, [r1, #4]
00788848  04 20 94 e5                                      ldr r2, [r4, #4]
0078884c  02 00 53 e1                                      cmp r3, r2
00788850  f2 ff ff ba                                      blt #0x788820
00788854  28 80 95 e5                                      ldr r8, [r5, #0x28]
00788858  04 40 97 e5                                      ldr r4, [r7, #4]
0078885c  00 00 58 e3                                      cmp r8, #0
00788860  1c 00 00 1a                                      bne #0x7888d8
00788864  04 00 58 e1                                      cmp r8, r4
00788868  07 00 00 da                                      ble #0x78888c
0078886c  84 30 a0 e1                                      lsl r3, r4, #1
00788870  00 20 97 e5                                      ldr r2, [r7]
00788874  01 40 84 e2                                      add r4, r4, #1
00788878  00 10 a0 e3                                      mov r1, #0
0078887c  08 00 54 e1                                      cmp r4, r8
00788880  b3 10 82 e1                                      strh r1, [r2, r3]
00788884  02 30 83 e2                                      add r3, r3, #2
00788888  f8 ff ff 1a                                      bne #0x788870
0078888c  00 00 58 e3                                      cmp r8, #0
00788890  04 80 87 e5                                      str r8, [r7, #4]
00788894  09 00 00 da                                      ble #0x7888c0
00788898  00 30 a0 e3                                      mov r3, #0
0078889c  24 00 95 e5                                      ldr r0, [r5, #0x24]
007888a0  83 20 a0 e1                                      lsl r2, r3, #1
007888a4  00 10 97 e5                                      ldr r1, [r7]
007888a8  b2 00 90 e1                                      ldrh r0, [r0, r2]
007888ac  01 30 83 e2                                      add r3, r3, #1
007888b0  b2 00 81 e1                                      strh r0, [r1, r2]
007888b4  04 20 97 e5                                      ldr r2, [r7, #4]
007888b8  02 00 53 e1                                      cmp r3, r2
007888bc  f6 ff ff ba                                      blt #0x78889c
007888c0  18 20 95 e5                                      ldr r2, [r5, #0x18]
007888c4  00 00 52 e3                                      cmp r2, #0
007888c8  3a 00 00 da                                      ble #0x7889b8
007888cc  00 30 a0 e3                                      mov r3, #0
007888d0  18 30 85 e5                                      str r3, [r5, #0x18]
007888d4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007888d8  08 30 97 e5                                      ldr r3, [r7, #8]
007888dc  03 00 58 e1                                      cmp r8, r3
007888e0  df ff ff da                                      ble #0x788864
007888e4  07 00 a0 e1                                      mov r0, r7
007888e8  c8 10 88 e0                                      add r1, r8, r8, asr #1
007888ec  62 c5 ff eb                                      bl #0x779e7c
007888f0  db ff ff ea                                      b #0x788864
007888f4  08 30 94 e5                                      ldr r3, [r4, #8]
007888f8  03 00 5a e1                                      cmp sl, r3
007888fc  b7 ff ff da                                      ble #0x7887e0
00788900  04 00 a0 e1                                      mov r0, r4
00788904  ca 10 8a e0                                      add r1, sl, sl, asr #1
00788908  3f f3 ff eb                                      bl #0x78560c
0078890c  b3 ff ff ea                                      b #0x7887e0
00788910  18 80 95 e5                                      ldr r8, [r5, #0x18]
00788914  14 60 85 e2                                      add r6, r5, #0x14
00788918  04 70 94 e5                                      ldr r7, [r4, #4]
0078891c  00 00 58 e3                                      cmp r8, #0
00788920  1d 00 00 1a                                      bne #0x78899c
00788924  07 00 58 e1                                      cmp r8, r7
00788928  09 00 00 da                                      ble #0x788954
0078892c  00 10 a0 e3                                      mov r1, #0
00788930  87 31 a0 e1                                      lsl r3, r7, #3
00788934  00 20 94 e5                                      ldr r2, [r4]
00788938  01 70 87 e2                                      add r7, r7, #1
0078893c  08 00 57 e1                                      cmp r7, r8
00788940  03 00 82 e0                                      add r0, r2, r3
00788944  03 10 82 e7                                      str r1, [r2, r3]
00788948  04 10 80 e5                                      str r1, [r0, #4]
0078894c  08 30 83 e2                                      add r3, r3, #8
00788950  f7 ff ff 1a                                      bne #0x788934
00788954  00 00 58 e3                                      cmp r8, #0
00788958  04 80 84 e5                                      str r8, [r4, #4]
0078895c  d7 ff ff da                                      ble #0x7888c0
00788960  00 30 a0 e3                                      mov r3, #0
00788964  00 00 96 e5                                      ldr r0, [r6]
00788968  00 20 94 e5                                      ldr r2, [r4]
0078896c  83 11 a0 e1                                      lsl r1, r3, #3
00788970  83 c1 90 e7                                      ldr ip, [r0, r3, lsl #3]
00788974  01 00 80 e0                                      add r0, r0, r1
00788978  01 10 82 e0                                      add r1, r2, r1
0078897c  83 c1 82 e7                                      str ip, [r2, r3, lsl #3]
00788980  04 20 90 e5                                      ldr r2, [r0, #4]
00788984  01 30 83 e2                                      add r3, r3, #1
00788988  04 20 81 e5                                      str r2, [r1, #4]
0078898c  04 20 94 e5                                      ldr r2, [r4, #4]
00788990  02 00 53 e1                                      cmp r3, r2
00788994  f2 ff ff ba                                      blt #0x788964
00788998  c8 ff ff ea                                      b #0x7888c0
0078899c  08 30 94 e5                                      ldr r3, [r4, #8]
007889a0  03 00 58 e1                                      cmp r8, r3
007889a4  de ff ff da                                      ble #0x788924
007889a8  04 00 a0 e1                                      mov r0, r4
007889ac  c8 10 88 e0                                      add r1, r8, r8, asr #1
007889b0  15 f3 ff eb                                      bl #0x78560c
007889b4  da ff ff ea                                      b #0x788924
007889b8  c3 ff ff aa                                      bge #0x7888cc
007889bc  00 00 a0 e3                                      mov r0, #0
007889c0  82 31 a0 e1                                      lsl r3, r2, #3
007889c4  00 10 96 e5                                      ldr r1, [r6]
007889c8  01 20 92 e2                                      adds r2, r2, #1
007889cc  03 c0 81 e0                                      add ip, r1, r3
007889d0  03 00 81 e7                                      str r0, [r1, r3]
007889d4  04 00 8c e5                                      str r0, [ip, #4]
007889d8  08 30 83 e2                                      add r3, r3, #8
007889dc  f8 ff ff 1a                                      bne #0x7889c4
007889e0  00 30 a0 e3                                      mov r3, #0
007889e4  18 30 85 e5                                      str r3, [r5, #0x18]
007889e8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00788cac, declared_size=1516, range_size=1516, mode=arm
; class-group: gameswf::tesselator_accepter
; alias: _ZN7gameswf19tesselator_accepter17callback_end_trisEPS0_
; demangled: gameswf::tesselator_accepter::callback_end_tris(gameswf::tesselator_accepter*)
; decoder-mode: arm
00788cac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00788cb0  00 30 90 e5                                      ldr r3, [r0]
00788cb4  18 50 90 e5                                      ldr r5, [r0, #0x18]
00788cb8  14 d0 4d e2                                      sub sp, sp, #0x14
00788cbc  02 30 43 e2                                      sub r3, r3, #2
00788cc0  00 40 a0 e1                                      mov r4, r0
00788cc4  75 60 ff e6                                      uxth r6, r5
00788cc8  04 00 53 e3                                      cmp r3, #4
00788ccc  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00788cd0  3c 00 00 ea                                      b #0x788dc8
00788cd4  03 00 00 ea                                      b #0x788ce8
00788cd8  3a 01 00 ea                                      b #0x7891c8
00788cdc  3b 00 00 ea                                      b #0x788dd0
00788ce0  d6 00 00 ea                                      b #0x789040
00788ce4  77 00 00 ea                                      b #0x788ec8
00788ce8  08 80 90 e5                                      ldr r8, [r0, #8]
00788cec  14 70 80 e2                                      add r7, r0, #0x14
00788cf0  04 60 90 e5                                      ldr r6, [r0, #4]
00788cf4  00 00 58 e3                                      cmp r8, #0
00788cf8  23 00 00 da                                      ble #0x788d8c
00788cfc  05 a0 98 e0                                      adds sl, r8, r5
00788d00  05 00 00 0a                                      beq #0x788d1c
00788d04  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
00788d08  03 00 5a e1                                      cmp sl, r3
00788d0c  02 00 00 da                                      ble #0x788d1c
00788d10  07 00 a0 e1                                      mov r0, r7
00788d14  ca 10 8a e0                                      add r1, sl, sl, asr #1
00788d18  3b f2 ff eb                                      bl #0x78560c
00788d1c  0a 00 55 e1                                      cmp r5, sl
00788d20  85 31 a0 a1                                      lslge r3, r5, #3
00788d24  0a 00 00 aa                                      bge #0x788d54
00788d28  85 31 a0 e1                                      lsl r3, r5, #3
00788d2c  00 00 a0 e3                                      mov r0, #0
00788d30  03 20 a0 e1                                      mov r2, r3
00788d34  00 10 97 e5                                      ldr r1, [r7]
00788d38  01 50 85 e2                                      add r5, r5, #1
00788d3c  0a 00 55 e1                                      cmp r5, sl
00788d40  02 c0 81 e0                                      add ip, r1, r2
00788d44  02 00 81 e7                                      str r0, [r1, r2]
00788d48  04 00 8c e5                                      str r0, [ip, #4]
00788d4c  08 20 82 e2                                      add r2, r2, #8
00788d50  f7 ff ff 1a                                      bne #0x788d34
00788d54  18 a0 84 e5                                      str sl, [r4, #0x18]
00788d58  00 20 a0 e3                                      mov r2, #0
00788d5c  82 c1 96 e7                                      ldr ip, [r6, r2, lsl #3]
00788d60  00 10 97 e5                                      ldr r1, [r7]
00788d64  82 01 86 e0                                      add r0, r6, r2, lsl #3
00788d68  01 20 82 e2                                      add r2, r2, #1
00788d6c  03 c0 a1 e7                                      str ip, [r1, r3]!
00788d70  04 00 90 e5                                      ldr r0, [r0, #4]
00788d74  08 00 52 e1                                      cmp r2, r8
00788d78  08 30 83 e2                                      add r3, r3, #8
00788d7c  04 00 81 e5                                      str r0, [r1, #4]
00788d80  f5 ff ff 1a                                      bne #0x788d5c
00788d84  04 60 94 e5                                      ldr r6, [r4, #4]
00788d88  18 50 94 e5                                      ldr r5, [r4, #0x18]
00788d8c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00788d90  01 80 85 e2                                      add r8, r5, #1
00788d94  03 00 58 e1                                      cmp r8, r3
00788d98  03 00 00 da                                      ble #0x788dac
00788d9c  07 00 a0 e1                                      mov r0, r7
00788da0  c8 10 88 e0                                      add r1, r8, r8, asr #1
00788da4  18 f2 ff eb                                      bl #0x78560c
00788da8  18 50 94 e5                                      ldr r5, [r4, #0x18]
00788dac  14 30 94 e5                                      ldr r3, [r4, #0x14]
00788db0  00 10 96 e5                                      ldr r1, [r6]
00788db4  85 21 83 e0                                      add r2, r3, r5, lsl #3
00788db8  85 11 83 e7                                      str r1, [r3, r5, lsl #3]
00788dbc  04 30 96 e5                                      ldr r3, [r6, #4]
00788dc0  04 30 82 e5                                      str r3, [r2, #4]
00788dc4  18 80 84 e5                                      str r8, [r4, #0x18]
00788dc8  14 d0 8d e2                                      add sp, sp, #0x14
00788dcc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00788dd0  80 04 90 e9                                      ldmib r0, {r7, sl}
00788dd4  00 00 5a e3                                      cmp sl, #0
00788dd8  fa ff ff da                                      ble #0x788dc8
00788ddc  05 90 9a e0                                      adds sb, sl, r5
00788de0  14 80 80 e2                                      add r8, r0, #0x14
00788de4  02 00 00 0a                                      beq #0x788df4
00788de8  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
00788dec  03 00 59 e1                                      cmp sb, r3
00788df0  24 01 00 ca                                      bgt #0x789288
00788df4  09 00 55 e1                                      cmp r5, sb
00788df8  85 31 a0 a1                                      lslge r3, r5, #3
00788dfc  0a 00 00 aa                                      bge #0x788e2c
00788e00  85 31 a0 e1                                      lsl r3, r5, #3
00788e04  00 00 a0 e3                                      mov r0, #0
00788e08  03 20 a0 e1                                      mov r2, r3
00788e0c  00 10 98 e5                                      ldr r1, [r8]
00788e10  01 50 85 e2                                      add r5, r5, #1
00788e14  09 00 55 e1                                      cmp r5, sb
00788e18  02 c0 81 e0                                      add ip, r1, r2
00788e1c  02 00 81 e7                                      str r0, [r1, r2]
00788e20  04 00 8c e5                                      str r0, [ip, #4]
00788e24  08 20 82 e2                                      add r2, r2, #8
00788e28  f7 ff ff 1a                                      bne #0x788e0c
00788e2c  18 90 84 e5                                      str sb, [r4, #0x18]
00788e30  00 20 a0 e3                                      mov r2, #0
00788e34  82 c1 97 e7                                      ldr ip, [r7, r2, lsl #3]
00788e38  00 10 98 e5                                      ldr r1, [r8]
00788e3c  82 01 87 e0                                      add r0, r7, r2, lsl #3
00788e40  01 20 82 e2                                      add r2, r2, #1
00788e44  03 c0 a1 e7                                      str ip, [r1, r3]!
00788e48  04 00 90 e5                                      ldr r0, [r0, #4]
00788e4c  0a 00 52 e1                                      cmp r2, sl
00788e50  08 30 83 e2                                      add r3, r3, #8
00788e54  04 00 81 e5                                      str r0, [r1, #4]
00788e58  f5 ff ff 1a                                      bne #0x788e34
00788e5c  08 30 94 e5                                      ldr r3, [r4, #8]
00788e60  00 00 53 e3                                      cmp r3, #0
00788e64  d7 ff ff da                                      ble #0x788dc8
00788e68  28 30 94 e5                                      ldr r3, [r4, #0x28]
00788e6c  24 80 84 e2                                      add r8, r4, #0x24
00788e70  00 70 a0 e3                                      mov r7, #0
00788e74  00 00 00 ea                                      b #0x788e7c
00788e78  05 30 a0 e1                                      mov r3, r5
00788e7c  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
00788e80  01 50 83 e2                                      add r5, r3, #1
00788e84  01 70 87 e2                                      add r7, r7, #1
00788e88  02 00 55 e1                                      cmp r5, r2
00788e8c  03 00 00 da                                      ble #0x788ea0
00788e90  08 00 a0 e1                                      mov r0, r8
00788e94  c5 10 85 e0                                      add r1, r5, r5, asr #1
00788e98  f7 c3 ff eb                                      bl #0x779e7c
00788e9c  28 30 94 e5                                      ldr r3, [r4, #0x28]
00788ea0  24 10 94 e5                                      ldr r1, [r4, #0x24]
00788ea4  83 30 a0 e1                                      lsl r3, r3, #1
00788ea8  01 20 86 e2                                      add r2, r6, #1
00788eac  b3 60 81 e1                                      strh r6, [r1, r3]
00788eb0  08 30 94 e5                                      ldr r3, [r4, #8]
00788eb4  28 50 84 e5                                      str r5, [r4, #0x28]
00788eb8  72 60 ff e6                                      uxth r6, r2
00788ebc  03 00 57 e1                                      cmp r7, r3
00788ec0  ec ff ff ba                                      blt #0x788e78
00788ec4  bf ff ff ea                                      b #0x788dc8
00788ec8  80 04 90 e9                                      ldmib r0, {r7, sl}
00788ecc  00 00 5a e3                                      cmp sl, #0
00788ed0  bc ff ff da                                      ble #0x788dc8
00788ed4  05 90 9a e0                                      adds sb, sl, r5
00788ed8  14 80 80 e2                                      add r8, r0, #0x14
00788edc  02 00 00 0a                                      beq #0x788eec
00788ee0  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
00788ee4  03 00 59 e1                                      cmp sb, r3
00788ee8  e2 00 00 ca                                      bgt #0x789278
00788eec  09 00 55 e1                                      cmp r5, sb
00788ef0  85 31 a0 a1                                      lslge r3, r5, #3
00788ef4  0a 00 00 aa                                      bge #0x788f24
00788ef8  85 31 a0 e1                                      lsl r3, r5, #3
00788efc  00 00 a0 e3                                      mov r0, #0
00788f00  03 20 a0 e1                                      mov r2, r3
00788f04  00 10 98 e5                                      ldr r1, [r8]
00788f08  01 50 85 e2                                      add r5, r5, #1
00788f0c  09 00 55 e1                                      cmp r5, sb
00788f10  02 c0 81 e0                                      add ip, r1, r2
00788f14  02 00 81 e7                                      str r0, [r1, r2]
00788f18  04 00 8c e5                                      str r0, [ip, #4]
00788f1c  08 20 82 e2                                      add r2, r2, #8
00788f20  f7 ff ff 1a                                      bne #0x788f04
00788f24  18 90 84 e5                                      str sb, [r4, #0x18]
00788f28  00 20 a0 e3                                      mov r2, #0
00788f2c  82 c1 97 e7                                      ldr ip, [r7, r2, lsl #3]
00788f30  00 10 98 e5                                      ldr r1, [r8]
00788f34  82 01 87 e0                                      add r0, r7, r2, lsl #3
00788f38  01 20 82 e2                                      add r2, r2, #1
00788f3c  03 c0 a1 e7                                      str ip, [r1, r3]!
00788f40  04 00 90 e5                                      ldr r0, [r0, #4]
00788f44  0a 00 52 e1                                      cmp r2, sl
00788f48  08 30 83 e2                                      add r3, r3, #8
00788f4c  04 00 81 e5                                      str r0, [r1, #4]
00788f50  f5 ff ff 1a                                      bne #0x788f2c
00788f54  08 30 94 e5                                      ldr r3, [r4, #8]
00788f58  02 00 53 e3                                      cmp r3, #2
00788f5c  99 ff ff da                                      ble #0x788dc8
00788f60  02 b0 86 e2                                      add fp, r6, #2
00788f64  01 90 86 e2                                      add sb, r6, #1
00788f68  24 30 84 e2                                      add r3, r4, #0x24
00788f6c  28 50 94 e5                                      ldr r5, [r4, #0x28]
00788f70  7b b0 ff e6                                      uxth fp, fp
00788f74  79 90 ff e6                                      uxth sb, sb
00788f78  08 30 8d e5                                      str r3, [sp, #8]
00788f7c  02 a0 a0 e3                                      mov sl, #2
00788f80  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00788f84  01 80 85 e2                                      add r8, r5, #1
00788f88  01 a0 8a e2                                      add sl, sl, #1
00788f8c  08 00 53 e1                                      cmp r3, r8
00788f90  02 70 85 e2                                      add r7, r5, #2
00788f94  05 30 a0 e1                                      mov r3, r5
00788f98  05 00 00 aa                                      bge #0x788fb4
00788f9c  c8 10 88 e0                                      add r1, r8, r8, asr #1
00788fa0  08 00 9d e5                                      ldr r0, [sp, #8]
00788fa4  04 50 8d e5                                      str r5, [sp, #4]
00788fa8  b3 c3 ff eb                                      bl #0x779e7c
00788fac  28 50 94 e5                                      ldr r5, [r4, #0x28]
00788fb0  04 30 9d e5                                      ldr r3, [sp, #4]
00788fb4  24 20 94 e5                                      ldr r2, [r4, #0x24]
00788fb8  85 50 a0 e1                                      lsl r5, r5, #1
00788fbc  b5 60 82 e1                                      strh r6, [r2, r5]
00788fc0  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
00788fc4  03 50 83 e2                                      add r5, r3, #3
00788fc8  28 80 84 e5                                      str r8, [r4, #0x28]
00788fcc  07 00 52 e1                                      cmp r2, r7
00788fd0  03 00 00 aa                                      bge #0x788fe4
00788fd4  c7 10 87 e0                                      add r1, r7, r7, asr #1
00788fd8  08 00 9d e5                                      ldr r0, [sp, #8]
00788fdc  a6 c3 ff eb                                      bl #0x779e7c
00788fe0  28 80 94 e5                                      ldr r8, [r4, #0x28]
00788fe4  24 30 94 e5                                      ldr r3, [r4, #0x24]
00788fe8  88 80 a0 e1                                      lsl r8, r8, #1
00788fec  b8 90 83 e1                                      strh sb, [r3, r8]
00788ff0  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00788ff4  28 70 84 e5                                      str r7, [r4, #0x28]
00788ff8  05 00 53 e1                                      cmp r3, r5
00788ffc  03 00 00 aa                                      bge #0x789010
00789000  08 00 9d e5                                      ldr r0, [sp, #8]
00789004  c5 10 85 e0                                      add r1, r5, r5, asr #1
00789008  9b c3 ff eb                                      bl #0x779e7c
0078900c  28 70 94 e5                                      ldr r7, [r4, #0x28]
00789010  24 20 94 e5                                      ldr r2, [r4, #0x24]
00789014  87 70 a0 e1                                      lsl r7, r7, #1
00789018  01 30 8b e2                                      add r3, fp, #1
0078901c  b7 b0 82 e1                                      strh fp, [r2, r7]
00789020  08 20 94 e5                                      ldr r2, [r4, #8]
00789024  01 90 89 e2                                      add sb, sb, #1
00789028  28 50 84 e5                                      str r5, [r4, #0x28]
0078902c  02 00 5a e1                                      cmp sl, r2
00789030  73 b0 ff e6                                      uxth fp, r3
00789034  79 90 ff e6                                      uxth sb, sb
00789038  d0 ff ff ba                                      blt #0x788f80
0078903c  61 ff ff ea                                      b #0x788dc8
00789040  80 04 90 e9                                      ldmib r0, {r7, sl}
00789044  00 00 5a e3                                      cmp sl, #0
00789048  5e ff ff da                                      ble #0x788dc8
0078904c  05 90 9a e0                                      adds sb, sl, r5
00789050  14 80 80 e2                                      add r8, r0, #0x14
00789054  02 00 00 0a                                      beq #0x789064
00789058  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
0078905c  03 00 59 e1                                      cmp sb, r3
00789060  80 00 00 ca                                      bgt #0x789268
00789064  09 00 55 e1                                      cmp r5, sb
00789068  85 31 a0 a1                                      lslge r3, r5, #3
0078906c  0a 00 00 aa                                      bge #0x78909c
00789070  85 31 a0 e1                                      lsl r3, r5, #3
00789074  00 00 a0 e3                                      mov r0, #0
00789078  03 20 a0 e1                                      mov r2, r3
0078907c  00 10 98 e5                                      ldr r1, [r8]
00789080  01 50 85 e2                                      add r5, r5, #1
00789084  09 00 55 e1                                      cmp r5, sb
00789088  02 c0 81 e0                                      add ip, r1, r2
0078908c  02 00 81 e7                                      str r0, [r1, r2]
00789090  04 00 8c e5                                      str r0, [ip, #4]
00789094  08 20 82 e2                                      add r2, r2, #8
00789098  f7 ff ff 1a                                      bne #0x78907c
0078909c  18 90 84 e5                                      str sb, [r4, #0x18]
007890a0  00 20 a0 e3                                      mov r2, #0
007890a4  82 c1 97 e7                                      ldr ip, [r7, r2, lsl #3]
007890a8  00 10 98 e5                                      ldr r1, [r8]
007890ac  82 01 87 e0                                      add r0, r7, r2, lsl #3
007890b0  01 20 82 e2                                      add r2, r2, #1
007890b4  03 c0 a1 e7                                      str ip, [r1, r3]!
007890b8  04 00 90 e5                                      ldr r0, [r0, #4]
007890bc  0a 00 52 e1                                      cmp r2, sl
007890c0  08 30 83 e2                                      add r3, r3, #8
007890c4  04 00 81 e5                                      str r0, [r1, #4]
007890c8  f5 ff ff 1a                                      bne #0x7890a4
007890cc  08 30 94 e5                                      ldr r3, [r4, #8]
007890d0  02 00 53 e3                                      cmp r3, #2
007890d4  3b ff ff da                                      ble #0x788dc8
007890d8  02 b0 86 e2                                      add fp, r6, #2
007890dc  24 10 84 e2                                      add r1, r4, #0x24
007890e0  01 30 86 e2                                      add r3, r6, #1
007890e4  28 50 94 e5                                      ldr r5, [r4, #0x28]
007890e8  7b b0 ff e6                                      uxth fp, fp
007890ec  08 10 8d e5                                      str r1, [sp, #8]
007890f0  00 a0 a0 e3                                      mov sl, #0
007890f4  02 90 a0 e3                                      mov sb, #2
007890f8  0c 30 8d e5                                      str r3, [sp, #0xc]
007890fc  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00789100  01 80 85 e2                                      add r8, r5, #1
00789104  01 90 89 e2                                      add sb, sb, #1
00789108  08 00 53 e1                                      cmp r3, r8
0078910c  02 70 85 e2                                      add r7, r5, #2
00789110  05 30 a0 e1                                      mov r3, r5
00789114  05 00 00 aa                                      bge #0x789130
00789118  c8 10 88 e0                                      add r1, r8, r8, asr #1
0078911c  08 00 9d e5                                      ldr r0, [sp, #8]
00789120  04 50 8d e5                                      str r5, [sp, #4]
00789124  54 c3 ff eb                                      bl #0x779e7c
00789128  28 50 94 e5                                      ldr r5, [r4, #0x28]
0078912c  04 30 9d e5                                      ldr r3, [sp, #4]
00789130  24 20 94 e5                                      ldr r2, [r4, #0x24]
00789134  85 50 a0 e1                                      lsl r5, r5, #1
00789138  0a 10 86 e0                                      add r1, r6, sl
0078913c  b5 10 82 e1                                      strh r1, [r2, r5]
00789140  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
00789144  03 50 83 e2                                      add r5, r3, #3
00789148  28 80 84 e5                                      str r8, [r4, #0x28]
0078914c  07 00 52 e1                                      cmp r2, r7
00789150  03 00 00 aa                                      bge #0x789164
00789154  c7 10 87 e0                                      add r1, r7, r7, asr #1
00789158  08 00 9d e5                                      ldr r0, [sp, #8]
0078915c  46 c3 ff eb                                      bl #0x779e7c
00789160  28 80 94 e5                                      ldr r8, [r4, #0x28]
00789164  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00789168  24 30 94 e5                                      ldr r3, [r4, #0x24]
0078916c  88 80 a0 e1                                      lsl r8, r8, #1
00789170  01 20 8a e0                                      add r2, sl, r1
00789174  b8 20 83 e1                                      strh r2, [r3, r8]
00789178  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0078917c  28 70 84 e5                                      str r7, [r4, #0x28]
00789180  05 00 53 e1                                      cmp r3, r5
00789184  03 00 00 aa                                      bge #0x789198
00789188  08 00 9d e5                                      ldr r0, [sp, #8]
0078918c  c5 10 85 e0                                      add r1, r5, r5, asr #1
00789190  39 c3 ff eb                                      bl #0x779e7c
00789194  28 70 94 e5                                      ldr r7, [r4, #0x28]
00789198  24 20 94 e5                                      ldr r2, [r4, #0x24]
0078919c  87 70 a0 e1                                      lsl r7, r7, #1
007891a0  01 30 8b e2                                      add r3, fp, #1
007891a4  b7 b0 82 e1                                      strh fp, [r2, r7]
007891a8  08 20 94 e5                                      ldr r2, [r4, #8]
007891ac  01 a0 8a e2                                      add sl, sl, #1
007891b0  28 50 84 e5                                      str r5, [r4, #0x28]
007891b4  02 00 59 e1                                      cmp sb, r2
007891b8  73 b0 ff e6                                      uxth fp, r3
007891bc  7a a0 ff e6                                      uxth sl, sl
007891c0  cd ff ff ba                                      blt #0x7890fc
007891c4  ff fe ff ea                                      b #0x788dc8
007891c8  40 01 90 e9                                      ldmib r0, {r6, r8}
007891cc  00 00 58 e3                                      cmp r8, #0
007891d0  fc fe ff da                                      ble #0x788dc8
007891d4  05 a0 98 e0                                      adds sl, r8, r5
007891d8  14 70 80 e2                                      add r7, r0, #0x14
007891dc  02 00 00 0a                                      beq #0x7891ec
007891e0  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
007891e4  03 00 5a e1                                      cmp sl, r3
007891e8  1a 00 00 ca                                      bgt #0x789258
007891ec  0a 00 55 e1                                      cmp r5, sl
007891f0  85 31 a0 a1                                      lslge r3, r5, #3
007891f4  0a 00 00 aa                                      bge #0x789224
007891f8  85 31 a0 e1                                      lsl r3, r5, #3
007891fc  00 00 a0 e3                                      mov r0, #0
00789200  03 20 a0 e1                                      mov r2, r3
00789204  00 10 97 e5                                      ldr r1, [r7]
00789208  01 50 85 e2                                      add r5, r5, #1
0078920c  0a 00 55 e1                                      cmp r5, sl
00789210  02 c0 81 e0                                      add ip, r1, r2
00789214  02 00 81 e7                                      str r0, [r1, r2]
00789218  04 00 8c e5                                      str r0, [ip, #4]
0078921c  08 20 82 e2                                      add r2, r2, #8
00789220  f7 ff ff 1a                                      bne #0x789204
00789224  18 a0 84 e5                                      str sl, [r4, #0x18]
00789228  00 20 a0 e3                                      mov r2, #0
0078922c  82 c1 96 e7                                      ldr ip, [r6, r2, lsl #3]
00789230  00 10 97 e5                                      ldr r1, [r7]
00789234  82 01 86 e0                                      add r0, r6, r2, lsl #3
00789238  01 20 82 e2                                      add r2, r2, #1
0078923c  03 c0 a1 e7                                      str ip, [r1, r3]!
00789240  04 00 90 e5                                      ldr r0, [r0, #4]
00789244  08 00 52 e1                                      cmp r2, r8
00789248  08 30 83 e2                                      add r3, r3, #8
0078924c  04 00 81 e5                                      str r0, [r1, #4]
00789250  f5 ff ff 1a                                      bne #0x78922c
00789254  db fe ff ea                                      b #0x788dc8
00789258  07 00 a0 e1                                      mov r0, r7
0078925c  ca 10 8a e0                                      add r1, sl, sl, asr #1
00789260  e9 f0 ff eb                                      bl #0x78560c
00789264  e0 ff ff ea                                      b #0x7891ec
00789268  08 00 a0 e1                                      mov r0, r8
0078926c  c9 10 89 e0                                      add r1, sb, sb, asr #1
00789270  e5 f0 ff eb                                      bl #0x78560c
00789274  7a ff ff ea                                      b #0x789064
00789278  08 00 a0 e1                                      mov r0, r8
0078927c  c9 10 89 e0                                      add r1, sb, sb, asr #1
00789280  e1 f0 ff eb                                      bl #0x78560c
00789284  18 ff ff ea                                      b #0x788eec
00789288  08 00 a0 e1                                      mov r0, r8
0078928c  c9 10 89 e0                                      add r1, sb, sb, asr #1
00789290  dd f0 ff eb                                      bl #0x78560c
00789294  d6 fe ff ea                                      b #0x788df4

; FUNCTION 0x00789298, declared_size=292, range_size=292, mode=arm
; class-group: gameswf::tesselator_accepter
; alias: _ZN7gameswf19tesselator_accepter9end_shapeEPNS_8mesh_setEi
; demangled: gameswf::tesselator_accepter::end_shape(gameswf::mesh_set*, int)
; decoder-mode: arm
00789298  70 40 2d e9                                      push {r4, r5, r6, lr}
0078929c  00 40 a0 e1                                      mov r4, r0
007892a0  08 d0 4d e2                                      sub sp, sp, #8
007892a4  38 00 90 e5                                      ldr r0, [r0, #0x38]
007892a8  01 50 a0 e1                                      mov r5, r1
007892ac  02 60 a0 e1                                      mov r6, r2
007892b0  b8 98 00 eb                                      bl #0x7af598
007892b4  34 30 d4 e5                                      ldrb r3, [r4, #0x34]
007892b8  00 00 53 e3                                      cmp r3, #0
007892bc  2d 00 00 1a                                      bne #0x789378
007892c0  35 30 d4 e5                                      ldrb r3, [r4, #0x35]
007892c4  00 00 53 e3                                      cmp r3, #0
007892c8  0e 00 00 0a                                      beq #0x789308
007892cc  18 30 94 e5                                      ldr r3, [r4, #0x18]
007892d0  00 00 53 e3                                      cmp r3, #0
007892d4  1a 00 00 da                                      ble #0x789344
007892d8  05 00 a0 e1                                      mov r0, r5
007892dc  06 10 a0 e1                                      mov r1, r6
007892e0  14 20 94 e5                                      ldr r2, [r4, #0x14]
007892e4  f4 c9 ff eb                                      bl #0x77babc
007892e8  18 30 94 e5                                      ldr r3, [r4, #0x18]
007892ec  14 50 84 e2                                      add r5, r4, #0x14
007892f0  00 00 53 e3                                      cmp r3, #0
007892f4  13 00 00 da                                      ble #0x789348
007892f8  00 30 a0 e3                                      mov r3, #0
007892fc  18 30 84 e5                                      str r3, [r4, #0x18]
00789300  08 d0 8d e2                                      add sp, sp, #8
00789304  70 80 bd e8                                      pop {r4, r5, r6, pc}
00789308  18 30 94 e5                                      ldr r3, [r4, #0x18]
0078930c  00 00 53 e3                                      cmp r3, #0
00789310  0b 00 00 da                                      ble #0x789344
00789314  06 10 a0 e1                                      mov r1, r6
00789318  05 00 a0 e1                                      mov r0, r5
0078931c  21 c3 ff eb                                      bl #0x779fa8
00789320  18 20 94 e5                                      ldr r2, [r4, #0x18]
00789324  28 c0 94 e5                                      ldr ip, [r4, #0x28]
00789328  24 30 94 e5                                      ldr r3, [r4, #0x24]
0078932c  14 10 94 e5                                      ldr r1, [r4, #0x14]
00789330  82 20 a0 e1                                      lsl r2, r2, #1
00789334  00 c0 8d e5                                      str ip, [sp]
00789338  b7 cd ff eb                                      bl #0x77ca1c
0078933c  18 30 94 e5                                      ldr r3, [r4, #0x18]
00789340  19 00 00 ea                                      b #0x7893ac
00789344  14 50 84 e2                                      add r5, r4, #0x14
00789348  00 00 53 e3                                      cmp r3, #0
0078934c  e9 ff ff aa                                      bge #0x7892f8
00789350  00 00 a0 e3                                      mov r0, #0
00789354  83 21 a0 e1                                      lsl r2, r3, #3
00789358  00 10 95 e5                                      ldr r1, [r5]
0078935c  01 30 93 e2                                      adds r3, r3, #1
00789360  02 c0 81 e0                                      add ip, r1, r2
00789364  02 00 81 e7                                      str r0, [r1, r2]
00789368  04 00 8c e5                                      str r0, [ip, #4]
0078936c  08 20 82 e2                                      add r2, r2, #8
00789370  f8 ff ff 1a                                      bne #0x789358
00789374  df ff ff ea                                      b #0x7892f8
00789378  04 00 a0 e1                                      mov r0, r4
0078937c  4a fe ff eb                                      bl #0x788cac
00789380  34 30 d4 e5                                      ldrb r3, [r4, #0x34]
00789384  00 00 53 e3                                      cmp r3, #0
00789388  cc ff ff 0a                                      beq #0x7892c0
0078938c  18 30 94 e5                                      ldr r3, [r4, #0x18]
00789390  01 00 53 e3                                      cmp r3, #1
00789394  04 00 00 da                                      ble #0x7893ac
00789398  05 00 a0 e1                                      mov r0, r5
0078939c  06 10 a0 e1                                      mov r1, r6
007893a0  14 20 94 e5                                      ldr r2, [r4, #0x14]
007893a4  48 ca ff eb                                      bl #0x77bccc
007893a8  18 30 94 e5                                      ldr r3, [r4, #0x18]
007893ac  00 00 53 e3                                      cmp r3, #0
007893b0  14 50 84 e2                                      add r5, r4, #0x14
007893b4  cf ff ff ca                                      bgt #0x7892f8
007893b8  e2 ff ff ea                                      b #0x789348
