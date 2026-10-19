; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00776140, declared_size=4, range_size=4, mode=arm
; class-group: gameswf::scene_node
; alias: _ZN7gameswf10scene_node6renderEPv
; demangled: gameswf::scene_node::render(void*)
; decoder-mode: arm
00776140  1e ff 2f e1                                      bx lr

; FUNCTION 0x00776144, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::scene_node
; alias: _ZNK7gameswf10scene_node14getBoundingBoxEv
; demangled: gameswf::scene_node::getBoundingBox() const
; decoder-mode: arm
00776144  87 0f 80 e2                                      add r0, r0, #0x21c
00776148  1e ff 2f e1                                      bx lr

; FUNCTION 0x0077616c, declared_size=216, range_size=216, mode=arm
; class-group: gameswf::scene_node
; alias: _ZN7gameswf10scene_node11build_dlistEPNS_9characterE
; demangled: gameswf::scene_node::build_dlist(gameswf::character*)
; decoder-mode: arm
0077616c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00776170  9b 30 d1 e5                                      ldrb r3, [r1, #0x9b]
00776174  01 50 a0 e1                                      mov r5, r1
00776178  00 60 a0 e1                                      mov r6, r0
0077617c  00 00 53 e3                                      cmp r3, #0
00776180  00 00 00 1a                                      bne #0x776188
00776184  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00776188  01 00 a0 e1                                      mov r0, r1
0077618c  4b 77 ff eb                                      bl #0x753ec0
00776190  00 10 a0 e3                                      mov r1, #0
00776194  18 00 90 e5                                      ldr r0, [r0, #0x18]
00776198  c5 60 ee eb                                      bl #0x30e4b4
0077619c  00 00 50 e3                                      cmp r0, #0
007761a0  f7 ff ff 0a                                      beq #0x776184
007761a4  54 30 95 e5                                      ldr r3, [r5, #0x54]
007761a8  00 00 53 e3                                      cmp r3, #0
007761ac  02 00 00 0a                                      beq #0x7761bc
007761b0  68 40 93 e5                                      ldr r4, [r3, #0x68]
007761b4  06 00 54 e1                                      cmp r4, r6
007761b8  13 00 00 0a                                      beq #0x77620c
007761bc  00 30 95 e5                                      ldr r3, [r5]
007761c0  05 00 a0 e1                                      mov r0, r5
007761c4  02 10 a0 e3                                      mov r1, #2
007761c8  0f e0 a0 e1                                      mov lr, pc
007761cc  08 f0 93 e5                                      ldr pc, [r3, #8]
007761d0  00 00 50 e3                                      cmp r0, #0
007761d4  ea ff ff 0a                                      beq #0x776184
007761d8  ac 30 95 e5                                      ldr r3, [r5, #0xac]
007761dc  00 00 53 e3                                      cmp r3, #0
007761e0  e7 ff ff da                                      ble #0x776184
007761e4  00 40 a0 e3                                      mov r4, #0
007761e8  a8 30 95 e5                                      ldr r3, [r5, #0xa8]
007761ec  06 00 a0 e1                                      mov r0, r6
007761f0  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
007761f4  dc ff ff eb                                      bl #0x77616c
007761f8  ac 30 95 e5                                      ldr r3, [r5, #0xac]
007761fc  01 40 84 e2                                      add r4, r4, #1
00776200  03 00 54 e1                                      cmp r4, r3
00776204  f7 ff ff ba                                      blt #0x7761e8
00776208  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0077620c  4c 32 94 e5                                      ldr r3, [r4, #0x24c]
00776210  50 22 94 e5                                      ldr r2, [r4, #0x250]
00776214  01 70 83 e2                                      add r7, r3, #1
00776218  02 00 57 e1                                      cmp r7, r2
0077621c  03 00 00 ca                                      bgt #0x776230
00776220  48 22 94 e5                                      ldr r2, [r4, #0x248]
00776224  03 51 82 e7                                      str r5, [r2, r3, lsl #2]
00776228  4c 72 84 e5                                      str r7, [r4, #0x24c]
0077622c  e2 ff ff ea                                      b #0x7761bc
00776230  92 0f 84 e2                                      add r0, r4, #0x248
00776234  c7 10 87 e0                                      add r1, r7, r7, asr #1
00776238  f5 76 f2 eb                                      bl #0x413e14
0077623c  4c 32 94 e5                                      ldr r3, [r4, #0x24c]
00776240  f6 ff ff ea                                      b #0x776220

; FUNCTION 0x00776244, declared_size=240, range_size=240, mode=arm
; class-group: gameswf::scene_node
; alias: _ZN7gameswf10scene_nodeD1Ev
; demangled: gameswf::scene_node::~scene_node()
; decoder-mode: arm
00776244  70 40 2d e9                                      push {r4, r5, r6, lr}
00776248  d8 50 9f e5                                      ldr r5, [pc, #0xd8]
0077624c  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
00776250  4c 22 90 e5                                      ldr r2, [r0, #0x24c]
00776254  05 50 8f e0                                      add r5, pc, r5
00776258  03 30 95 e7                                      ldr r3, [r5, r3]
0077625c  00 40 a0 e1                                      mov r4, r0
00776260  00 00 52 e3                                      cmp r2, #0
00776264  12 1e 83 e2                                      add r1, r3, #0x120
00776268  1c 30 83 e2                                      add r3, r3, #0x1c
0077626c  92 0f 80 e2                                      add r0, r0, #0x248
00776270  00 30 84 e5                                      str r3, [r4]
00776274  68 12 84 e5                                      str r1, [r4, #0x268]
00776278  19 00 00 da                                      ble #0x7762e4
0077627c  00 60 a0 e3                                      mov r6, #0
00776280  4c 62 84 e5                                      str r6, [r4, #0x24c]
00776284  06 10 a0 e1                                      mov r1, r6
00776288  e1 76 f2 eb                                      bl #0x413e14
0077628c  3c 32 94 e5                                      ldr r3, [r4, #0x23c]
00776290  8e 0f 84 e2                                      add r0, r4, #0x238
00776294  06 00 53 e1                                      cmp r3, r6
00776298  1a 00 00 da                                      ble #0x776308
0077629c  00 10 a0 e3                                      mov r1, #0
007762a0  3c 12 84 e5                                      str r1, [r4, #0x23c]
007762a4  da 76 f2 eb                                      bl #0x413e14
007762a8  38 01 94 e5                                      ldr r0, [r4, #0x138]
007762ac  00 00 50 e3                                      cmp r0, #0
007762b0  00 00 00 0a                                      beq #0x7762b8
007762b4  b2 9c ee eb                                      bl #0x31d584
007762b8  34 01 94 e5                                      ldr r0, [r4, #0x134]
007762bc  00 00 50 e3                                      cmp r0, #0
007762c0  00 00 00 0a                                      beq #0x7762c8
007762c4  ae 9c ee eb                                      bl #0x31d584
007762c8  60 10 9f e5                                      ldr r1, [pc, #0x60]
007762cc  04 00 a0 e1                                      mov r0, r4
007762d0  01 10 95 e7                                      ldr r1, [r5, r1]
007762d4  04 10 81 e2                                      add r1, r1, #4
007762d8  77 8a f8 eb                                      bl #0x598cbc
007762dc  04 00 a0 e1                                      mov r0, r4
007762e0  70 80 bd e8                                      pop {r4, r5, r6, pc}
007762e4  e4 ff ff aa                                      bge #0x77627c
007762e8  02 31 a0 e1                                      lsl r3, r2, #2
007762ec  00 c0 a0 e3                                      mov ip, #0
007762f0  00 10 90 e5                                      ldr r1, [r0]
007762f4  01 20 92 e2                                      adds r2, r2, #1
007762f8  03 c0 81 e7                                      str ip, [r1, r3]
007762fc  04 30 83 e2                                      add r3, r3, #4
00776300  fa ff ff 1a                                      bne #0x7762f0
00776304  dc ff ff ea                                      b #0x77627c
00776308  e3 ff ff aa                                      bge #0x77629c
0077630c  03 21 a0 e1                                      lsl r2, r3, #2
00776310  00 10 90 e5                                      ldr r1, [r0]
00776314  01 30 93 e2                                      adds r3, r3, #1
00776318  02 60 81 e7                                      str r6, [r1, r2]
0077631c  04 20 82 e2                                      add r2, r2, #4
00776320  fa ff ff 1a                                      bne #0x776310
00776324  dc ff ff ea                                      b #0x77629c
; mapping-symbol data/literal pool
00776328  3c e8 21 00 20 08 00 00 a4 33 00 00              .byte 0x3c, 0xe8, 0x21, 0x00, 0x20, 0x08, 0x00, 0x00, 0xa4, 0x33, 0x00, 0x00

; FUNCTION 0x00776334, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::scene_node
; alias: _ZTv0_n24_N7gameswf10scene_nodeD1Ev
; demangled: virtual thunk to gameswf::scene_node::~scene_node()
; decoder-mode: arm
00776334  00 30 90 e5                                      ldr r3, [r0]
00776338  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0077633c  03 00 80 e0                                      add r0, r0, r3
00776340  bf ff ff ea                                      b #0x776244

; FUNCTION 0x00776344, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::scene_node
; alias: _ZTv0_n12_N7gameswf10scene_nodeD1Ev
; demangled: virtual thunk to gameswf::scene_node::~scene_node()
; decoder-mode: arm
00776344  00 30 90 e5                                      ldr r3, [r0]
00776348  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0077634c  03 00 80 e0                                      add r0, r0, r3
00776350  bb ff ff ea                                      b #0x776244

; FUNCTION 0x00776354, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::scene_node
; alias: _ZN7gameswf10scene_nodeD0Ev
; demangled: gameswf::scene_node::~scene_node()
; decoder-mode: arm
00776354  10 40 2d e9                                      push {r4, lr}
00776358  00 40 a0 e1                                      mov r4, r0
0077635c  b8 ff ff eb                                      bl #0x776244
00776360  04 00 a0 e1                                      mov r0, r4
00776364  d1 5f ee eb                                      bl #0x30e2b0
00776368  04 00 a0 e1                                      mov r0, r4
0077636c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00776370, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::scene_node
; alias: _ZTv0_n24_N7gameswf10scene_nodeD0Ev
; demangled: virtual thunk to gameswf::scene_node::~scene_node()
; decoder-mode: arm
00776370  00 30 90 e5                                      ldr r3, [r0]
00776374  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00776378  03 00 80 e0                                      add r0, r0, r3
0077637c  f4 ff ff ea                                      b #0x776354

; FUNCTION 0x00776380, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::scene_node
; alias: _ZTv0_n12_N7gameswf10scene_nodeD0Ev
; demangled: virtual thunk to gameswf::scene_node::~scene_node()
; decoder-mode: arm
00776380  00 30 90 e5                                      ldr r3, [r0]
00776384  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00776388  03 00 80 e0                                      add r0, r0, r3
0077638c  f0 ff ff ea                                      b #0x776354

; FUNCTION 0x00776390, declared_size=468, range_size=468, mode=arm
; class-group: gameswf::scene_node
; alias: _ZN7gameswf10scene_node19onRegisterSceneNodeEv
; demangled: gameswf::scene_node::onRegisterSceneNode()
; decoder-mode: arm
00776390  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00776394  3c 12 90 e5                                      ldr r1, [r0, #0x23c]
00776398  0c d0 4d e2                                      sub sp, sp, #0xc
0077639c  00 40 a0 e1                                      mov r4, r0
007763a0  00 00 51 e3                                      cmp r1, #0
007763a4  0a 00 00 da                                      ble #0x7763d4
007763a8  38 c2 90 e5                                      ldr ip, [r0, #0x238]
007763ac  00 30 a0 e3                                      mov r3, #0
007763b0  03 20 a0 e1                                      mov r2, r3
007763b4  03 01 9c e7                                      ldr r0, [ip, r3, lsl #2]
007763b8  01 30 83 e2                                      add r3, r3, #1
007763bc  01 00 53 e1                                      cmp r3, r1
007763c0  9b 00 d0 e5                                      ldrb r0, [r0, #0x9b]
007763c4  00 20 82 e1                                      orr r2, r2, r0
007763c8  f9 ff ff 1a                                      bne #0x7763b4
007763cc  00 00 52 e3                                      cmp r2, #0
007763d0  02 00 00 1a                                      bne #0x7763e0
007763d4  00 00 a0 e3                                      mov r0, #0
007763d8  0c d0 8d e2                                      add sp, sp, #0xc
007763dc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
007763e0  4c 32 94 e5                                      ldr r3, [r4, #0x24c]
007763e4  92 0f 84 e2                                      add r0, r4, #0x248
007763e8  00 00 53 e3                                      cmp r3, #0
007763ec  50 00 00 da                                      ble #0x776534
007763f0  00 30 a0 e3                                      mov r3, #0
007763f4  01 00 51 e3                                      cmp r1, #1
007763f8  4c 32 84 e5                                      str r3, [r4, #0x24c]
007763fc  3b 00 00 0a                                      beq #0x7764f0
00776400  34 02 94 e5                                      ldr r0, [r4, #0x234]
00776404  6a dc ff eb                                      bl #0x76d5b4
00776408  51 f7 ff eb                                      bl #0x774154
0077640c  00 10 a0 e1                                      mov r1, r0
00776410  04 00 a0 e1                                      mov r0, r4
00776414  54 ff ff eb                                      bl #0x77616c
00776418  34 32 94 e5                                      ldr r3, [r4, #0x234]
0077641c  4e 1f 84 e2                                      add r1, r4, #0x138
00776420  ac 30 93 e5                                      ldr r3, [r3, #0xac]
00776424  28 50 93 e5                                      ldr r5, [r3, #0x28]
00776428  05 00 a0 e1                                      mov r0, r5
0077642c  00 30 95 e5                                      ldr r3, [r5]
00776430  0f e0 a0 e1                                      mov lr, pc
00776434  8c f0 93 e5                                      ldr pc, [r3, #0x8c]
00776438  00 30 95 e5                                      ldr r3, [r5]
0077643c  05 00 a0 e1                                      mov r0, r5
00776440  01 10 a0 e3                                      mov r1, #1
00776444  0f e0 a0 e1                                      mov lr, pc
00776448  a8 f0 93 e5                                      ldr pc, [r3, #0xa8]
0077644c  4c 32 94 e5                                      ldr r3, [r4, #0x24c]
00776450  00 00 53 e3                                      cmp r3, #0
00776454  1a 00 00 da                                      ble #0x7764c4
00776458  00 70 a0 e3                                      mov r7, #0
0077645c  07 a0 a0 e1                                      mov sl, r7
00776460  48 32 94 e5                                      ldr r3, [r4, #0x248]
00776464  07 61 93 e7                                      ldr r6, [r3, r7, lsl #2]
00776468  01 70 87 e2                                      add r7, r7, #1
0077646c  54 30 96 e5                                      ldr r3, [r6, #0x54]
00776470  06 00 a0 e1                                      mov r0, r6
00776474  68 80 93 e5                                      ldr r8, [r3, #0x68]
00776478  68 a0 83 e5                                      str sl, [r3, #0x68]
0077647c  00 30 96 e5                                      ldr r3, [r6]
00776480  0f e0 a0 e1                                      mov lr, pc
00776484  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00776488  4b fb ff eb                                      bl #0x7751bc
0077648c  06 00 a0 e1                                      mov r0, r6
00776490  00 30 96 e5                                      ldr r3, [r6]
00776494  0f e0 a0 e1                                      mov lr, pc
00776498  20 f1 93 e5                                      ldr pc, [r3, #0x120]
0077649c  00 30 96 e5                                      ldr r3, [r6]
007764a0  06 00 a0 e1                                      mov r0, r6
007764a4  0f e0 a0 e1                                      mov lr, pc
007764a8  54 f0 93 e5                                      ldr pc, [r3, #0x54]
007764ac  79 f7 ff eb                                      bl #0x774298
007764b0  54 30 96 e5                                      ldr r3, [r6, #0x54]
007764b4  68 80 83 e5                                      str r8, [r3, #0x68]
007764b8  4c 32 94 e5                                      ldr r3, [r4, #0x24c]
007764bc  03 00 57 e1                                      cmp r7, r3
007764c0  e6 ff ff ba                                      blt #0x776460
007764c4  04 00 8d e2                                      add r0, sp, #4
007764c8  05 10 a0 e1                                      mov r1, r5
007764cc  00 30 95 e5                                      ldr r3, [r5]
007764d0  0f e0 a0 e1                                      mov lr, pc
007764d4  90 f0 93 e5                                      ldr pc, [r3, #0x90]
007764d8  04 00 9d e5                                      ldr r0, [sp, #4]
007764dc  00 00 50 e3                                      cmp r0, #0
007764e0  00 00 00 0a                                      beq #0x7764e8
007764e4  26 9c ee eb                                      bl #0x31d584
007764e8  01 00 a0 e3                                      mov r0, #1
007764ec  b9 ff ff ea                                      b #0x7763d8
007764f0  50 32 94 e5                                      ldr r3, [r4, #0x250]
007764f4  00 00 53 e3                                      cmp r3, #0
007764f8  17 00 00 da                                      ble #0x77655c
007764fc  48 22 94 e5                                      ldr r2, [r4, #0x248]
00776500  00 30 a0 e3                                      mov r3, #0
00776504  00 30 82 e5                                      str r3, [r2]
00776508  01 20 a0 e3                                      mov r2, #1
0077650c  4c 22 84 e5                                      str r2, [r4, #0x24c]
00776510  38 12 94 e5                                      ldr r1, [r4, #0x238]
00776514  48 22 94 e5                                      ldr r2, [r4, #0x248]
00776518  03 11 91 e7                                      ldr r1, [r1, r3, lsl #2]
0077651c  03 11 82 e7                                      str r1, [r2, r3, lsl #2]
00776520  4c 22 94 e5                                      ldr r2, [r4, #0x24c]
00776524  01 30 83 e2                                      add r3, r3, #1
00776528  02 00 53 e1                                      cmp r3, r2
0077652c  f7 ff ff ba                                      blt #0x776510
00776530  b8 ff ff ea                                      b #0x776418
00776534  ad ff ff aa                                      bge #0x7763f0
00776538  03 21 a0 e1                                      lsl r2, r3, #2
0077653c  00 c0 a0 e3                                      mov ip, #0
00776540  00 10 90 e5                                      ldr r1, [r0]
00776544  01 30 93 e2                                      adds r3, r3, #1
00776548  02 c0 81 e7                                      str ip, [r1, r2]
0077654c  04 20 82 e2                                      add r2, r2, #4
00776550  fa ff ff 1a                                      bne #0x776540
00776554  3c 12 94 e5                                      ldr r1, [r4, #0x23c]
00776558  a4 ff ff ea                                      b #0x7763f0
0077655c  2c 76 f2 eb                                      bl #0x413e14
00776560  e5 ff ff ea                                      b #0x7764fc

; FUNCTION 0x00776564, declared_size=3564, range_size=3564, mode=arm
; class-group: gameswf::scene_node
; alias: _ZN7gameswf10scene_node16get_collision_uvERN6glitch4core6line3dIfEERNS_5pointE
; demangled: gameswf::scene_node::get_collision_uv(glitch::core::line3d<float>&, gameswf::point&)
; decoder-mode: arm
00776564  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00776568  fc d0 4d e2                                      sub sp, sp, #0xfc
0077656c  2c 00 8d e5                                      str r0, [sp, #0x2c]
00776570  30 31 90 e5                                      ldr r3, [r0, #0x130]
00776574  3c 20 8d e5                                      str r2, [sp, #0x3c]
00776578  01 40 a0 e1                                      mov r4, r1
0077657c  03 00 a0 e1                                      mov r0, r3
00776580  00 30 93 e5                                      ldr r3, [r3]
00776584  0f e0 a0 e1                                      mov lr, pc
00776588  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0077658c  00 30 a0 e3                                      mov r3, #0
00776590  00 10 a0 e1                                      mov r1, r0
00776594  41 20 a0 e3                                      mov r2, #0x41
00776598  90 00 8d e2                                      add r0, sp, #0x90
0077659c  d0 30 cd e5                                      strb r3, [sp, #0xd0]
007765a0  38 00 8d e5                                      str r0, [sp, #0x38]
007765a4  af 60 ee eb                                      bl #0x30e868
007765a8  94 10 9d e5                                      ldr r1, [sp, #0x94]
007765ac  a4 20 9d e5                                      ldr r2, [sp, #0xa4]
007765b0  b4 00 9d e5                                      ldr r0, [sp, #0xb4]
007765b4  20 10 8d e5                                      str r1, [sp, #0x20]
007765b8  24 20 8d e5                                      str r2, [sp, #0x24]
007765bc  c4 10 9d e5                                      ldr r1, [sp, #0xc4]
007765c0  98 20 9d e5                                      ldr r2, [sp, #0x98]
007765c4  10 00 8d e5                                      str r0, [sp, #0x10]
007765c8  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
007765cc  1c 10 8d e5                                      str r1, [sp, #0x1c]
007765d0  18 20 8d e5                                      str r2, [sp, #0x18]
007765d4  b8 10 9d e5                                      ldr r1, [sp, #0xb8]
007765d8  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
007765dc  00 30 a0 e3                                      mov r3, #0
007765e0  14 00 8d e5                                      str r0, [sp, #0x14]
007765e4  48 00 8d e2                                      add r0, sp, #0x48
007765e8  0c 10 8d e5                                      str r1, [sp, #0xc]
007765ec  90 90 9d e5                                      ldr sb, [sp, #0x90]
007765f0  a0 a0 9d e5                                      ldr sl, [sp, #0xa0]
007765f4  b0 80 9d e5                                      ldr r8, [sp, #0xb0]
007765f8  c0 70 9d e5                                      ldr r7, [sp, #0xc0]
007765fc  28 20 8d e5                                      str r2, [sp, #0x28]
00776600  30 00 8d e5                                      str r0, [sp, #0x30]
00776604  8c 30 8d e5                                      str r3, [sp, #0x8c]
00776608  48 30 8d e5                                      str r3, [sp, #0x48]
0077660c  4c 30 8d e5                                      str r3, [sp, #0x4c]
00776610  50 30 8d e5                                      str r3, [sp, #0x50]
00776614  54 30 8d e5                                      str r3, [sp, #0x54]
00776618  58 30 8d e5                                      str r3, [sp, #0x58]
0077661c  5c 30 8d e5                                      str r3, [sp, #0x5c]
00776620  60 30 8d e5                                      str r3, [sp, #0x60]
00776624  64 30 8d e5                                      str r3, [sp, #0x64]
00776628  68 30 8d e5                                      str r3, [sp, #0x68]
0077662c  6c 30 8d e5                                      str r3, [sp, #0x6c]
00776630  70 30 8d e5                                      str r3, [sp, #0x70]
00776634  74 30 8d e5                                      str r3, [sp, #0x74]
00776638  2c 50 9d e5                                      ldr r5, [sp, #0x2c]
0077663c  5c 10 80 e2                                      add r1, r0, #0x5c
00776640  78 30 8d e5                                      str r3, [sp, #0x78]
00776644  7c 30 8d e5                                      str r3, [sp, #0x7c]
00776648  80 30 8d e5                                      str r3, [sp, #0x80]
0077664c  84 30 8d e5                                      str r3, [sp, #0x84]
00776650  88 30 8d e5                                      str r3, [sp, #0x88]
00776654  14 60 80 e2                                      add r6, r0, #0x14
00776658  34 10 8d e5                                      str r1, [sp, #0x34]
0077665c  40 11 95 e5                                      ldr r1, [r5, #0x140]
00776660  09 00 a0 e1                                      mov r0, sb
00776664  c0 61 ee eb                                      bl #0x30ed6c
00776668  44 11 95 e5                                      ldr r1, [r5, #0x144]
0077666c  00 b0 a0 e1                                      mov fp, r0
00776670  0a 00 a0 e1                                      mov r0, sl
00776674  bc 61 ee eb                                      bl #0x30ed6c
00776678  00 10 a0 e1                                      mov r1, r0
0077667c  0b 00 a0 e1                                      mov r0, fp
00776680  47 61 ee eb                                      bl #0x30eba4
00776684  48 11 95 e5                                      ldr r1, [r5, #0x148]
00776688  00 b0 a0 e1                                      mov fp, r0
0077668c  08 00 a0 e1                                      mov r0, r8
00776690  b5 61 ee eb                                      bl #0x30ed6c
00776694  00 10 a0 e1                                      mov r1, r0
00776698  0b 00 a0 e1                                      mov r0, fp
0077669c  40 61 ee eb                                      bl #0x30eba4
007766a0  00 10 a0 e1                                      mov r1, r0
007766a4  07 00 a0 e1                                      mov r0, r7
007766a8  3d 61 ee eb                                      bl #0x30eba4
007766ac  14 00 06 e5                                      str r0, [r6, #-0x14]
007766b0  40 11 95 e5                                      ldr r1, [r5, #0x140]
007766b4  20 00 9d e5                                      ldr r0, [sp, #0x20]
007766b8  ab 61 ee eb                                      bl #0x30ed6c
007766bc  44 11 95 e5                                      ldr r1, [r5, #0x144]
007766c0  00 b0 a0 e1                                      mov fp, r0
007766c4  24 00 9d e5                                      ldr r0, [sp, #0x24]
007766c8  a7 61 ee eb                                      bl #0x30ed6c
007766cc  00 10 a0 e1                                      mov r1, r0
007766d0  0b 00 a0 e1                                      mov r0, fp
007766d4  32 61 ee eb                                      bl #0x30eba4
007766d8  48 11 95 e5                                      ldr r1, [r5, #0x148]
007766dc  00 b0 a0 e1                                      mov fp, r0
007766e0  10 00 9d e5                                      ldr r0, [sp, #0x10]
007766e4  a0 61 ee eb                                      bl #0x30ed6c
007766e8  00 10 a0 e1                                      mov r1, r0
007766ec  0b 00 a0 e1                                      mov r0, fp
007766f0  2b 61 ee eb                                      bl #0x30eba4
007766f4  00 10 a0 e1                                      mov r1, r0
007766f8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007766fc  28 61 ee eb                                      bl #0x30eba4
00776700  10 00 06 e5                                      str r0, [r6, #-0x10]
00776704  40 11 95 e5                                      ldr r1, [r5, #0x140]
00776708  18 00 9d e5                                      ldr r0, [sp, #0x18]
0077670c  96 61 ee eb                                      bl #0x30ed6c
00776710  44 11 95 e5                                      ldr r1, [r5, #0x144]
00776714  00 b0 a0 e1                                      mov fp, r0
00776718  14 00 9d e5                                      ldr r0, [sp, #0x14]
0077671c  92 61 ee eb                                      bl #0x30ed6c
00776720  00 10 a0 e1                                      mov r1, r0
00776724  0b 00 a0 e1                                      mov r0, fp
00776728  1d 61 ee eb                                      bl #0x30eba4
0077672c  48 11 95 e5                                      ldr r1, [r5, #0x148]
00776730  00 b0 a0 e1                                      mov fp, r0
00776734  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00776738  8b 61 ee eb                                      bl #0x30ed6c
0077673c  00 10 a0 e1                                      mov r1, r0
00776740  0b 00 a0 e1                                      mov r0, fp
00776744  16 61 ee eb                                      bl #0x30eba4
00776748  00 10 a0 e1                                      mov r1, r0
0077674c  28 00 9d e5                                      ldr r0, [sp, #0x28]
00776750  13 61 ee eb                                      bl #0x30eba4
00776754  0c 00 06 e5                                      str r0, [r6, #-0xc]
00776758  4c 11 95 e5                                      ldr r1, [r5, #0x14c]
0077675c  09 00 a0 e1                                      mov r0, sb
00776760  81 61 ee eb                                      bl #0x30ed6c
00776764  50 11 95 e5                                      ldr r1, [r5, #0x150]
00776768  00 b0 a0 e1                                      mov fp, r0
0077676c  0a 00 a0 e1                                      mov r0, sl
00776770  7d 61 ee eb                                      bl #0x30ed6c
00776774  00 10 a0 e1                                      mov r1, r0
00776778  0b 00 a0 e1                                      mov r0, fp
0077677c  08 61 ee eb                                      bl #0x30eba4
00776780  54 11 95 e5                                      ldr r1, [r5, #0x154]
00776784  00 b0 a0 e1                                      mov fp, r0
00776788  08 00 a0 e1                                      mov r0, r8
0077678c  76 61 ee eb                                      bl #0x30ed6c
00776790  00 10 a0 e1                                      mov r1, r0
00776794  0b 00 a0 e1                                      mov r0, fp
00776798  01 61 ee eb                                      bl #0x30eba4
0077679c  00 10 a0 e1                                      mov r1, r0
007767a0  07 00 a0 e1                                      mov r0, r7
007767a4  fe 60 ee eb                                      bl #0x30eba4
007767a8  08 00 06 e5                                      str r0, [r6, #-8]
007767ac  4c 11 95 e5                                      ldr r1, [r5, #0x14c]
007767b0  20 00 9d e5                                      ldr r0, [sp, #0x20]
007767b4  6c 61 ee eb                                      bl #0x30ed6c
007767b8  50 11 95 e5                                      ldr r1, [r5, #0x150]
007767bc  00 b0 a0 e1                                      mov fp, r0
007767c0  24 00 9d e5                                      ldr r0, [sp, #0x24]
007767c4  68 61 ee eb                                      bl #0x30ed6c
007767c8  00 10 a0 e1                                      mov r1, r0
007767cc  0b 00 a0 e1                                      mov r0, fp
007767d0  f3 60 ee eb                                      bl #0x30eba4
007767d4  54 11 95 e5                                      ldr r1, [r5, #0x154]
007767d8  00 b0 a0 e1                                      mov fp, r0
007767dc  10 00 9d e5                                      ldr r0, [sp, #0x10]
007767e0  61 61 ee eb                                      bl #0x30ed6c
007767e4  00 10 a0 e1                                      mov r1, r0
007767e8  0b 00 a0 e1                                      mov r0, fp
007767ec  ec 60 ee eb                                      bl #0x30eba4
007767f0  00 10 a0 e1                                      mov r1, r0
007767f4  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007767f8  e9 60 ee eb                                      bl #0x30eba4
007767fc  04 00 06 e5                                      str r0, [r6, #-4]
00776800  4c 11 95 e5                                      ldr r1, [r5, #0x14c]
00776804  18 00 9d e5                                      ldr r0, [sp, #0x18]
00776808  57 61 ee eb                                      bl #0x30ed6c
0077680c  50 11 95 e5                                      ldr r1, [r5, #0x150]
00776810  00 b0 a0 e1                                      mov fp, r0
00776814  14 00 9d e5                                      ldr r0, [sp, #0x14]
00776818  53 61 ee eb                                      bl #0x30ed6c
0077681c  00 10 a0 e1                                      mov r1, r0
00776820  0b 00 a0 e1                                      mov r0, fp
00776824  de 60 ee eb                                      bl #0x30eba4
00776828  54 11 95 e5                                      ldr r1, [r5, #0x154]
0077682c  00 b0 a0 e1                                      mov fp, r0
00776830  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00776834  4c 61 ee eb                                      bl #0x30ed6c
00776838  00 10 a0 e1                                      mov r1, r0
0077683c  0b 00 a0 e1                                      mov r0, fp
00776840  d7 60 ee eb                                      bl #0x30eba4
00776844  00 10 a0 e1                                      mov r1, r0
00776848  28 00 9d e5                                      ldr r0, [sp, #0x28]
0077684c  d4 60 ee eb                                      bl #0x30eba4
00776850  00 00 86 e5                                      str r0, [r6]
00776854  58 11 95 e5                                      ldr r1, [r5, #0x158]
00776858  09 00 a0 e1                                      mov r0, sb
0077685c  42 61 ee eb                                      bl #0x30ed6c
00776860  5c 11 95 e5                                      ldr r1, [r5, #0x15c]
00776864  00 b0 a0 e1                                      mov fp, r0
00776868  0a 00 a0 e1                                      mov r0, sl
0077686c  3e 61 ee eb                                      bl #0x30ed6c
00776870  00 10 a0 e1                                      mov r1, r0
00776874  0b 00 a0 e1                                      mov r0, fp
00776878  c9 60 ee eb                                      bl #0x30eba4
0077687c  60 11 95 e5                                      ldr r1, [r5, #0x160]
00776880  00 b0 a0 e1                                      mov fp, r0
00776884  08 00 a0 e1                                      mov r0, r8
00776888  37 61 ee eb                                      bl #0x30ed6c
0077688c  00 10 a0 e1                                      mov r1, r0
00776890  0b 00 a0 e1                                      mov r0, fp
00776894  c2 60 ee eb                                      bl #0x30eba4
00776898  00 10 a0 e1                                      mov r1, r0
0077689c  07 00 a0 e1                                      mov r0, r7
007768a0  bf 60 ee eb                                      bl #0x30eba4
007768a4  04 00 86 e5                                      str r0, [r6, #4]
007768a8  58 11 95 e5                                      ldr r1, [r5, #0x158]
007768ac  20 00 9d e5                                      ldr r0, [sp, #0x20]
007768b0  2d 61 ee eb                                      bl #0x30ed6c
007768b4  5c 11 95 e5                                      ldr r1, [r5, #0x15c]
007768b8  00 b0 a0 e1                                      mov fp, r0
007768bc  24 00 9d e5                                      ldr r0, [sp, #0x24]
007768c0  29 61 ee eb                                      bl #0x30ed6c
007768c4  00 10 a0 e1                                      mov r1, r0
007768c8  0b 00 a0 e1                                      mov r0, fp
007768cc  b4 60 ee eb                                      bl #0x30eba4
007768d0  60 11 95 e5                                      ldr r1, [r5, #0x160]
007768d4  00 b0 a0 e1                                      mov fp, r0
007768d8  10 00 9d e5                                      ldr r0, [sp, #0x10]
007768dc  22 61 ee eb                                      bl #0x30ed6c
007768e0  00 10 a0 e1                                      mov r1, r0
007768e4  0b 00 a0 e1                                      mov r0, fp
007768e8  ad 60 ee eb                                      bl #0x30eba4
007768ec  00 10 a0 e1                                      mov r1, r0
007768f0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007768f4  aa 60 ee eb                                      bl #0x30eba4
007768f8  08 00 86 e5                                      str r0, [r6, #8]
007768fc  58 11 95 e5                                      ldr r1, [r5, #0x158]
00776900  18 00 9d e5                                      ldr r0, [sp, #0x18]
00776904  18 61 ee eb                                      bl #0x30ed6c
00776908  5c 11 95 e5                                      ldr r1, [r5, #0x15c]
0077690c  00 b0 a0 e1                                      mov fp, r0
00776910  14 00 9d e5                                      ldr r0, [sp, #0x14]
00776914  14 61 ee eb                                      bl #0x30ed6c
00776918  00 10 a0 e1                                      mov r1, r0
0077691c  0b 00 a0 e1                                      mov r0, fp
00776920  9f 60 ee eb                                      bl #0x30eba4
00776924  60 11 95 e5                                      ldr r1, [r5, #0x160]
00776928  00 b0 a0 e1                                      mov fp, r0
0077692c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00776930  0d 61 ee eb                                      bl #0x30ed6c
00776934  00 10 a0 e1                                      mov r1, r0
00776938  0b 00 a0 e1                                      mov r0, fp
0077693c  98 60 ee eb                                      bl #0x30eba4
00776940  00 10 a0 e1                                      mov r1, r0
00776944  28 00 9d e5                                      ldr r0, [sp, #0x28]
00776948  95 60 ee eb                                      bl #0x30eba4
0077694c  0c 00 86 e5                                      str r0, [r6, #0xc]
00776950  34 20 9d e5                                      ldr r2, [sp, #0x34]
00776954  24 60 86 e2                                      add r6, r6, #0x24
00776958  24 50 85 e2                                      add r5, r5, #0x24
0077695c  02 00 56 e1                                      cmp r6, r2
00776960  3d ff ff 1a                                      bne #0x77665c
00776964  04 10 94 e5                                      ldr r1, [r4, #4]
00776968  10 00 94 e5                                      ldr r0, [r4, #0x10]
0077696c  8e 5e ee eb                                      bl #0x30e3ac
00776970  08 10 94 e5                                      ldr r1, [r4, #8]
00776974  00 60 a0 e1                                      mov r6, r0
00776978  14 00 94 e5                                      ldr r0, [r4, #0x14]
0077697c  8a 5e ee eb                                      bl #0x30e3ac
00776980  00 10 94 e5                                      ldr r1, [r4]
00776984  00 50 a0 e1                                      mov r5, r0
00776988  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0077698c  86 5e ee eb                                      bl #0x30e3ac
00776990  e0 00 8d e5                                      str r0, [sp, #0xe0]
00776994  e0 00 8d e2                                      add r0, sp, #0xe0
00776998  e4 60 8d e5                                      str r6, [sp, #0xe4]
0077699c  e8 50 8d e5                                      str r5, [sp, #0xe8]
007769a0  ce 9f ef eb                                      bl #0x35e8e0
007769a4  00 30 90 e5                                      ldr r3, [r0]
007769a8  00 70 94 e5                                      ldr r7, [r4]
007769ac  0c 80 94 e5                                      ldr r8, [r4, #0xc]
007769b0  ec 30 8d e5                                      str r3, [sp, #0xec]
007769b4  04 20 90 e5                                      ldr r2, [r0, #4]
007769b8  00 30 a0 e3                                      mov r3, #0
007769bc  08 10 a0 e1                                      mov r1, r8
007769c0  f0 20 8d e5                                      str r2, [sp, #0xf0]
007769c4  08 20 90 e5                                      ldr r2, [r0, #8]
007769c8  07 00 a0 e1                                      mov r0, r7
007769cc  dc 30 8d e5                                      str r3, [sp, #0xdc]
007769d0  f4 20 8d e5                                      str r2, [sp, #0xf4]
007769d4  d4 30 8d e5                                      str r3, [sp, #0xd4]
007769d8  d8 30 8d e5                                      str r3, [sp, #0xd8]
007769dc  72 5e ee eb                                      bl #0x30e3ac
007769e0  04 a0 94 e5                                      ldr sl, [r4, #4]
007769e4  10 90 94 e5                                      ldr sb, [r4, #0x10]
007769e8  00 50 a0 e1                                      mov r5, r0
007769ec  0a 00 a0 e1                                      mov r0, sl
007769f0  09 10 a0 e1                                      mov r1, sb
007769f4  6c 5e ee eb                                      bl #0x30e3ac
007769f8  08 30 94 e5                                      ldr r3, [r4, #8]
007769fc  00 60 a0 e1                                      mov r6, r0
00776a00  0c 30 8d e5                                      str r3, [sp, #0xc]
00776a04  14 00 94 e5                                      ldr r0, [r4, #0x14]
00776a08  10 00 8d e5                                      str r0, [sp, #0x10]
00776a0c  10 10 9d e5                                      ldr r1, [sp, #0x10]
00776a10  03 00 a0 e1                                      mov r0, r3
00776a14  64 5e ee eb                                      bl #0x30e3ac
00776a18  05 10 a0 e1                                      mov r1, r5
00776a1c  00 b0 a0 e1                                      mov fp, r0
00776a20  05 00 a0 e1                                      mov r0, r5
00776a24  d0 60 ee eb                                      bl #0x30ed6c
00776a28  06 10 a0 e1                                      mov r1, r6
00776a2c  00 50 a0 e1                                      mov r5, r0
00776a30  06 00 a0 e1                                      mov r0, r6
00776a34  cc 60 ee eb                                      bl #0x30ed6c
00776a38  00 10 a0 e1                                      mov r1, r0
00776a3c  05 00 a0 e1                                      mov r0, r5
00776a40  57 60 ee eb                                      bl #0x30eba4
00776a44  0b 10 a0 e1                                      mov r1, fp
00776a48  00 50 a0 e1                                      mov r5, r0
00776a4c  0b 00 a0 e1                                      mov r0, fp
00776a50  c5 60 ee eb                                      bl #0x30ed6c
00776a54  00 10 a0 e1                                      mov r1, r0
00776a58  05 00 a0 e1                                      mov r0, r5
00776a5c  50 60 ee eb                                      bl #0x30eba4
00776a60  08 10 a0 e1                                      mov r1, r8
00776a64  28 00 8d e5                                      str r0, [sp, #0x28]
00776a68  07 00 a0 e1                                      mov r0, r7
00776a6c  26 5f ee eb                                      bl #0x30e70c
00776a70  00 00 50 e3                                      cmp r0, #0
00776a74  08 30 a0 01                                      moveq r3, r8
00776a78  09 10 a0 e1                                      mov r1, sb
00776a7c  0a 00 a0 e1                                      mov r0, sl
00776a80  07 80 a0 01                                      moveq r8, r7
00776a84  03 70 a0 01                                      moveq r7, r3
00776a88  1f 5f ee eb                                      bl #0x30e70c
00776a8c  00 00 50 e3                                      cmp r0, #0
00776a90  09 30 a0 01                                      moveq r3, sb
00776a94  10 10 9d e5                                      ldr r1, [sp, #0x10]
00776a98  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00776a9c  0a 90 a0 01                                      moveq sb, sl
00776aa0  03 a0 a0 01                                      moveq sl, r3
00776aa4  18 5f ee eb                                      bl #0x30e70c
00776aa8  00 00 50 e3                                      cmp r0, #0
00776aac  10 30 9d 05                                      ldreq r3, [sp, #0x10]
00776ab0  0c 10 9d 05                                      ldreq r1, [sp, #0xc]
00776ab4  02 21 e0 e3                                      mvn r2, #0x80000000
00776ab8  30 50 9d e5                                      ldr r5, [sp, #0x30]
00776abc  0c 30 8d 05                                      streq r3, [sp, #0xc]
00776ac0  02 25 42 e2                                      sub r2, r2, #0x800000
00776ac4  00 60 a0 e3                                      mov r6, #0
00776ac8  ec 30 8d e2                                      add r3, sp, #0xec
00776acc  d4 00 8d e2                                      add r0, sp, #0xd4
00776ad0  10 10 8d 05                                      streq r1, [sp, #0x10]
00776ad4  1c 20 8d e5                                      str r2, [sp, #0x1c]
00776ad8  14 60 8d e5                                      str r6, [sp, #0x14]
00776adc  20 30 8d e5                                      str r3, [sp, #0x20]
00776ae0  24 00 8d e5                                      str r0, [sp, #0x24]
00776ae4  18 40 8d e5                                      str r4, [sp, #0x18]
00776ae8  00 40 95 e5                                      ldr r4, [r5]
00776aec  07 10 a0 e1                                      mov r1, r7
00776af0  04 00 a0 e1                                      mov r0, r4
00776af4  04 5f ee eb                                      bl #0x30e70c
00776af8  00 00 50 e3                                      cmp r0, #0
00776afc  db 00 00 0a                                      beq #0x776e70
00776b00  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00776b04  07 10 a0 e1                                      mov r1, r7
00776b08  ff 5e ee eb                                      bl #0x30e70c
00776b0c  00 00 50 e3                                      cmp r0, #0
00776b10  d6 00 00 0a                                      beq #0x776e70
00776b14  18 00 95 e5                                      ldr r0, [r5, #0x18]
00776b18  07 10 a0 e1                                      mov r1, r7
00776b1c  fa 5e ee eb                                      bl #0x30e70c
00776b20  00 00 50 e3                                      cmp r0, #0
00776b24  d1 00 00 0a                                      beq #0x776e70
00776b28  01 60 86 e2                                      add r6, r6, #1
00776b2c  02 00 56 e3                                      cmp r6, #2
00776b30  24 50 85 e2                                      add r5, r5, #0x24
00776b34  eb ff ff 1a                                      bne #0x776ae8
00776b38  14 20 9d e5                                      ldr r2, [sp, #0x14]
00776b3c  00 00 52 e3                                      cmp r2, #0
00776b40  c7 00 00 0a                                      beq #0x776e64
00776b44  38 00 9d e5                                      ldr r0, [sp, #0x38]
00776b48  ea 2d f8 eb                                      bl #0x5822f8
00776b4c  d4 60 9d e5                                      ldr r6, [sp, #0xd4]
00776b50  90 10 9d e5                                      ldr r1, [sp, #0x90]
00776b54  d8 50 9d e5                                      ldr r5, [sp, #0xd8]
00776b58  06 00 a0 e1                                      mov r0, r6
00776b5c  82 60 ee eb                                      bl #0x30ed6c
00776b60  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
00776b64  00 70 a0 e1                                      mov r7, r0
00776b68  05 00 a0 e1                                      mov r0, r5
00776b6c  7e 60 ee eb                                      bl #0x30ed6c
00776b70  00 10 a0 e1                                      mov r1, r0
00776b74  07 00 a0 e1                                      mov r0, r7
00776b78  09 60 ee eb                                      bl #0x30eba4
00776b7c  dc 40 9d e5                                      ldr r4, [sp, #0xdc]
00776b80  00 70 a0 e1                                      mov r7, r0
00776b84  b0 10 9d e5                                      ldr r1, [sp, #0xb0]
00776b88  04 00 a0 e1                                      mov r0, r4
00776b8c  76 60 ee eb                                      bl #0x30ed6c
00776b90  00 10 a0 e1                                      mov r1, r0
00776b94  07 00 a0 e1                                      mov r0, r7
00776b98  01 60 ee eb                                      bl #0x30eba4
00776b9c  c0 10 9d e5                                      ldr r1, [sp, #0xc0]
00776ba0  ff 5f ee eb                                      bl #0x30eba4
00776ba4  94 10 9d e5                                      ldr r1, [sp, #0x94]
00776ba8  00 90 a0 e1                                      mov sb, r0
00776bac  06 00 a0 e1                                      mov r0, r6
00776bb0  6d 60 ee eb                                      bl #0x30ed6c
00776bb4  a4 10 9d e5                                      ldr r1, [sp, #0xa4]
00776bb8  00 70 a0 e1                                      mov r7, r0
00776bbc  05 00 a0 e1                                      mov r0, r5
00776bc0  69 60 ee eb                                      bl #0x30ed6c
00776bc4  00 10 a0 e1                                      mov r1, r0
00776bc8  07 00 a0 e1                                      mov r0, r7
00776bcc  f4 5f ee eb                                      bl #0x30eba4
00776bd0  b4 10 9d e5                                      ldr r1, [sp, #0xb4]
00776bd4  00 70 a0 e1                                      mov r7, r0
00776bd8  04 00 a0 e1                                      mov r0, r4
00776bdc  62 60 ee eb                                      bl #0x30ed6c
00776be0  00 10 a0 e1                                      mov r1, r0
00776be4  07 00 a0 e1                                      mov r0, r7
00776be8  ed 5f ee eb                                      bl #0x30eba4
00776bec  c4 10 9d e5                                      ldr r1, [sp, #0xc4]
00776bf0  eb 5f ee eb                                      bl #0x30eba4
00776bf4  98 10 9d e5                                      ldr r1, [sp, #0x98]
00776bf8  00 a0 a0 e1                                      mov sl, r0
00776bfc  06 00 a0 e1                                      mov r0, r6
00776c00  59 60 ee eb                                      bl #0x30ed6c
00776c04  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
00776c08  00 60 a0 e1                                      mov r6, r0
00776c0c  05 00 a0 e1                                      mov r0, r5
00776c10  55 60 ee eb                                      bl #0x30ed6c
00776c14  00 10 a0 e1                                      mov r1, r0
00776c18  06 00 a0 e1                                      mov r0, r6
00776c1c  e0 5f ee eb                                      bl #0x30eba4
00776c20  b8 10 9d e5                                      ldr r1, [sp, #0xb8]
00776c24  00 50 a0 e1                                      mov r5, r0
00776c28  04 00 a0 e1                                      mov r0, r4
00776c2c  4e 60 ee eb                                      bl #0x30ed6c
00776c30  00 10 a0 e1                                      mov r1, r0
00776c34  05 00 a0 e1                                      mov r0, r5
00776c38  d9 5f ee eb                                      bl #0x30eba4
00776c3c  c8 10 9d e5                                      ldr r1, [sp, #0xc8]
00776c40  d7 5f ee eb                                      bl #0x30eba4
00776c44  d4 90 8d e5                                      str sb, [sp, #0xd4]
00776c48  00 b0 a0 e1                                      mov fp, r0
00776c4c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00776c50  d2 31 00 e3                                      movw r3, #0x1d2
00776c54  0c 70 a0 e3                                      mov r7, #0xc
00776c58  b3 40 90 e1                                      ldrh r4, [r0, r3]
00776c5c  d6 31 00 e3                                      movw r3, #0x1d6
00776c60  b3 80 90 e1                                      ldrh r8, [r0, r3]
00776c64  97 04 24 e0                                      mla r4, r7, r4, r0
00776c68  d8 a0 8d e5                                      str sl, [sp, #0xd8]
00776c6c  dc b0 8d e5                                      str fp, [sp, #0xdc]
00776c70  88 61 94 e5                                      ldr r6, [r4, #0x188]
00776c74  97 08 28 e0                                      mla r8, r7, r8, r0
00776c78  06 10 a0 e1                                      mov r1, r6
00776c7c  88 01 98 e5                                      ldr r0, [r8, #0x188]
00776c80  c9 5d ee eb                                      bl #0x30e3ac
00776c84  0c 00 8d e5                                      str r0, [sp, #0xc]
00776c88  8c 51 94 e5                                      ldr r5, [r4, #0x18c]
00776c8c  8c 01 98 e5                                      ldr r0, [r8, #0x18c]
00776c90  05 10 a0 e1                                      mov r1, r5
00776c94  c4 5d ee eb                                      bl #0x30e3ac
00776c98  10 00 8d e5                                      str r0, [sp, #0x10]
00776c9c  90 41 94 e5                                      ldr r4, [r4, #0x190]
00776ca0  90 01 98 e5                                      ldr r0, [r8, #0x190]
00776ca4  04 10 a0 e1                                      mov r1, r4
00776ca8  bf 5d ee eb                                      bl #0x30e3ac
00776cac  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00776cb0  18 00 8d e5                                      str r0, [sp, #0x18]
00776cb4  1d 3e a0 e3                                      mov r3, #0x1d0
00776cb8  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00776cbc  b3 30 91 e1                                      ldrh r3, [r1, r3]
00776cc0  06 10 a0 e1                                      mov r1, r6
00776cc4  97 23 27 e0                                      mla r7, r7, r3, r2
00776cc8  88 01 97 e5                                      ldr r0, [r7, #0x188]
00776ccc  b6 5d ee eb                                      bl #0x30e3ac
00776cd0  05 10 a0 e1                                      mov r1, r5
00776cd4  00 80 a0 e1                                      mov r8, r0
00776cd8  8c 01 97 e5                                      ldr r0, [r7, #0x18c]
00776cdc  b2 5d ee eb                                      bl #0x30e3ac
00776ce0  1c 00 8d e5                                      str r0, [sp, #0x1c]
00776ce4  90 01 97 e5                                      ldr r0, [r7, #0x190]
00776ce8  04 10 a0 e1                                      mov r1, r4
00776cec  ae 5d ee eb                                      bl #0x30e3ac
00776cf0  06 10 a0 e1                                      mov r1, r6
00776cf4  00 70 a0 e1                                      mov r7, r0
00776cf8  09 00 a0 e1                                      mov r0, sb
00776cfc  aa 5d ee eb                                      bl #0x30e3ac
00776d00  05 10 a0 e1                                      mov r1, r5
00776d04  00 60 a0 e1                                      mov r6, r0
00776d08  0a 00 a0 e1                                      mov r0, sl
00776d0c  a6 5d ee eb                                      bl #0x30e3ac
00776d10  04 10 a0 e1                                      mov r1, r4
00776d14  00 50 a0 e1                                      mov r5, r0
00776d18  0b 00 a0 e1                                      mov r0, fp
00776d1c  a2 5d ee eb                                      bl #0x30e3ac
00776d20  06 10 a0 e1                                      mov r1, r6
00776d24  00 40 a0 e1                                      mov r4, r0
00776d28  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00776d2c  0e 60 ee eb                                      bl #0x30ed6c
00776d30  05 10 a0 e1                                      mov r1, r5
00776d34  00 a0 a0 e1                                      mov sl, r0
00776d38  10 00 9d e5                                      ldr r0, [sp, #0x10]
00776d3c  0a 60 ee eb                                      bl #0x30ed6c
00776d40  00 10 a0 e1                                      mov r1, r0
00776d44  0a 00 a0 e1                                      mov r0, sl
00776d48  95 5f ee eb                                      bl #0x30eba4
00776d4c  04 10 a0 e1                                      mov r1, r4
00776d50  00 a0 a0 e1                                      mov sl, r0
00776d54  18 00 9d e5                                      ldr r0, [sp, #0x18]
00776d58  03 60 ee eb                                      bl #0x30ed6c
00776d5c  00 10 a0 e1                                      mov r1, r0
00776d60  0a 00 a0 e1                                      mov r0, sl
00776d64  8e 5f ee eb                                      bl #0x30eba4
00776d68  00 a0 a0 e1                                      mov sl, r0
00776d6c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00776d70  00 10 a0 e1                                      mov r1, r0
00776d74  fc 5f ee eb                                      bl #0x30ed6c
00776d78  00 90 a0 e1                                      mov sb, r0
00776d7c  10 00 9d e5                                      ldr r0, [sp, #0x10]
00776d80  00 10 a0 e1                                      mov r1, r0
00776d84  f8 5f ee eb                                      bl #0x30ed6c
00776d88  00 10 a0 e1                                      mov r1, r0
00776d8c  09 00 a0 e1                                      mov r0, sb
00776d90  83 5f ee eb                                      bl #0x30eba4
00776d94  00 90 a0 e1                                      mov sb, r0
00776d98  18 00 9d e5                                      ldr r0, [sp, #0x18]
00776d9c  00 10 a0 e1                                      mov r1, r0
00776da0  f1 5f ee eb                                      bl #0x30ed6c
00776da4  00 10 a0 e1                                      mov r1, r0
00776da8  09 00 a0 e1                                      mov r0, sb
00776dac  7c 5f ee eb                                      bl #0x30eba4
00776db0  00 10 a0 e1                                      mov r1, r0
00776db4  0a 00 a0 e1                                      mov r0, sl
00776db8  b5 5f ee eb                                      bl #0x30ec94
00776dbc  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00776dc0  06 10 a0 e1                                      mov r1, r6
00776dc4  00 00 83 e5                                      str r0, [r3]
00776dc8  08 00 a0 e1                                      mov r0, r8
00776dcc  e6 5f ee eb                                      bl #0x30ed6c
00776dd0  05 10 a0 e1                                      mov r1, r5
00776dd4  00 60 a0 e1                                      mov r6, r0
00776dd8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00776ddc  e2 5f ee eb                                      bl #0x30ed6c
00776de0  00 10 a0 e1                                      mov r1, r0
00776de4  06 00 a0 e1                                      mov r0, r6
00776de8  6d 5f ee eb                                      bl #0x30eba4
00776dec  04 10 a0 e1                                      mov r1, r4
00776df0  00 50 a0 e1                                      mov r5, r0
00776df4  07 00 a0 e1                                      mov r0, r7
00776df8  db 5f ee eb                                      bl #0x30ed6c
00776dfc  00 10 a0 e1                                      mov r1, r0
00776e00  05 00 a0 e1                                      mov r0, r5
00776e04  66 5f ee eb                                      bl #0x30eba4
00776e08  08 10 a0 e1                                      mov r1, r8
00776e0c  00 40 a0 e1                                      mov r4, r0
00776e10  08 00 a0 e1                                      mov r0, r8
00776e14  d4 5f ee eb                                      bl #0x30ed6c
00776e18  00 50 a0 e1                                      mov r5, r0
00776e1c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00776e20  00 10 a0 e1                                      mov r1, r0
00776e24  d0 5f ee eb                                      bl #0x30ed6c
00776e28  00 10 a0 e1                                      mov r1, r0
00776e2c  05 00 a0 e1                                      mov r0, r5
00776e30  5b 5f ee eb                                      bl #0x30eba4
00776e34  07 10 a0 e1                                      mov r1, r7
00776e38  00 50 a0 e1                                      mov r5, r0
00776e3c  07 00 a0 e1                                      mov r0, r7
00776e40  c9 5f ee eb                                      bl #0x30ed6c
00776e44  00 10 a0 e1                                      mov r1, r0
00776e48  05 00 a0 e1                                      mov r0, r5
00776e4c  54 5f ee eb                                      bl #0x30eba4
00776e50  00 10 a0 e1                                      mov r1, r0
00776e54  04 00 a0 e1                                      mov r0, r4
00776e58  8d 5f ee eb                                      bl #0x30ec94
00776e5c  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
00776e60  04 00 81 e5                                      str r0, [r1, #4]
00776e64  14 00 9d e5                                      ldr r0, [sp, #0x14]
00776e68  fc d0 8d e2                                      add sp, sp, #0xfc
00776e6c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00776e70  08 00 a0 e1                                      mov r0, r8
00776e74  04 10 a0 e1                                      mov r1, r4
00776e78  23 5e ee eb                                      bl #0x30e70c
00776e7c  00 00 50 e3                                      cmp r0, #0
00776e80  09 00 00 0a                                      beq #0x776eac
00776e84  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00776e88  08 10 a0 e1                                      mov r1, r8
00776e8c  19 5d ee eb                                      bl #0x30e2f8
00776e90  00 00 50 e3                                      cmp r0, #0
00776e94  04 00 00 0a                                      beq #0x776eac
00776e98  18 00 95 e5                                      ldr r0, [r5, #0x18]
00776e9c  08 10 a0 e1                                      mov r1, r8
00776ea0  14 5d ee eb                                      bl #0x30e2f8
00776ea4  00 00 50 e3                                      cmp r0, #0
00776ea8  1e ff ff 1a                                      bne #0x776b28
00776eac  04 b0 95 e5                                      ldr fp, [r5, #4]
00776eb0  0a 10 a0 e1                                      mov r1, sl
00776eb4  0b 00 a0 e1                                      mov r0, fp
00776eb8  13 5e ee eb                                      bl #0x30e70c
00776ebc  00 00 50 e3                                      cmp r0, #0
00776ec0  bf 00 00 1a                                      bne #0x7771c4
00776ec4  09 00 a0 e1                                      mov r0, sb
00776ec8  0b 10 a0 e1                                      mov r1, fp
00776ecc  0e 5e ee eb                                      bl #0x30e70c
00776ed0  00 00 50 e3                                      cmp r0, #0
00776ed4  09 00 00 0a                                      beq #0x776f00
00776ed8  10 00 95 e5                                      ldr r0, [r5, #0x10]
00776edc  09 10 a0 e1                                      mov r1, sb
00776ee0  04 5d ee eb                                      bl #0x30e2f8
00776ee4  00 00 50 e3                                      cmp r0, #0
00776ee8  04 00 00 0a                                      beq #0x776f00
00776eec  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
00776ef0  09 10 a0 e1                                      mov r1, sb
00776ef4  ff 5c ee eb                                      bl #0x30e2f8
00776ef8  00 00 50 e3                                      cmp r0, #0
00776efc  09 ff ff 1a                                      bne #0x776b28
00776f00  08 20 95 e5                                      ldr r2, [r5, #8]
00776f04  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00776f08  02 00 a0 e1                                      mov r0, r2
00776f0c  34 20 8d e5                                      str r2, [sp, #0x34]
00776f10  fd 5d ee eb                                      bl #0x30e70c
00776f14  00 00 50 e3                                      cmp r0, #0
00776f18  b4 00 00 1a                                      bne #0x7771f0
00776f1c  10 00 9d e5                                      ldr r0, [sp, #0x10]
00776f20  34 10 9d e5                                      ldr r1, [sp, #0x34]
00776f24  f8 5d ee eb                                      bl #0x30e70c
00776f28  00 00 50 e3                                      cmp r0, #0
00776f2c  09 00 00 0a                                      beq #0x776f58
00776f30  14 00 95 e5                                      ldr r0, [r5, #0x14]
00776f34  10 10 9d e5                                      ldr r1, [sp, #0x10]
00776f38  ee 5c ee eb                                      bl #0x30e2f8
00776f3c  00 00 50 e3                                      cmp r0, #0
00776f40  04 00 00 0a                                      beq #0x776f58
00776f44  20 00 95 e5                                      ldr r0, [r5, #0x20]
00776f48  10 10 9d e5                                      ldr r1, [sp, #0x10]
00776f4c  e9 5c ee eb                                      bl #0x30e2f8
00776f50  00 00 50 e3                                      cmp r0, #0
00776f54  f3 fe ff 1a                                      bne #0x776b28
00776f58  18 30 9d e5                                      ldr r3, [sp, #0x18]
00776f5c  04 10 a0 e1                                      mov r1, r4
00776f60  00 30 93 e5                                      ldr r3, [r3]
00776f64  03 00 a0 e1                                      mov r0, r3
00776f68  40 30 8d e5                                      str r3, [sp, #0x40]
00776f6c  0e 5d ee eb                                      bl #0x30e3ac
00776f70  00 30 a0 e1                                      mov r3, r0
00776f74  18 00 9d e5                                      ldr r0, [sp, #0x18]
00776f78  0b 10 a0 e1                                      mov r1, fp
00776f7c  04 00 90 e5                                      ldr r0, [r0, #4]
00776f80  08 30 8d e5                                      str r3, [sp, #8]
00776f84  44 00 8d e5                                      str r0, [sp, #0x44]
00776f88  07 5d ee eb                                      bl #0x30e3ac
00776f8c  18 10 9d e5                                      ldr r1, [sp, #0x18]
00776f90  00 20 a0 e1                                      mov r2, r0
00776f94  08 40 91 e5                                      ldr r4, [r1, #8]
00776f98  34 10 9d e5                                      ldr r1, [sp, #0x34]
00776f9c  00 20 8d e5                                      str r2, [sp]
00776fa0  04 00 a0 e1                                      mov r0, r4
00776fa4  00 5d ee eb                                      bl #0x30e3ac
00776fa8  08 30 9d e5                                      ldr r3, [sp, #8]
00776fac  00 c0 a0 e1                                      mov ip, r0
00776fb0  04 c0 8d e5                                      str ip, [sp, #4]
00776fb4  03 10 a0 e1                                      mov r1, r3
00776fb8  03 00 a0 e1                                      mov r0, r3
00776fbc  6a 5f ee eb                                      bl #0x30ed6c
00776fc0  00 20 9d e5                                      ldr r2, [sp]
00776fc4  00 b0 a0 e1                                      mov fp, r0
00776fc8  02 10 a0 e1                                      mov r1, r2
00776fcc  02 00 a0 e1                                      mov r0, r2
00776fd0  65 5f ee eb                                      bl #0x30ed6c
00776fd4  00 10 a0 e1                                      mov r1, r0
00776fd8  0b 00 a0 e1                                      mov r0, fp
00776fdc  f0 5e ee eb                                      bl #0x30eba4
00776fe0  04 c0 9d e5                                      ldr ip, [sp, #4]
00776fe4  00 b0 a0 e1                                      mov fp, r0
00776fe8  0c 10 a0 e1                                      mov r1, ip
00776fec  0c 00 a0 e1                                      mov r0, ip
00776ff0  5d 5f ee eb                                      bl #0x30ed6c
00776ff4  00 10 a0 e1                                      mov r1, r0
00776ff8  0b 00 a0 e1                                      mov r0, fp
00776ffc  e8 5e ee eb                                      bl #0x30eba4
00777000  00 10 a0 e1                                      mov r1, r0
00777004  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00777008  67 5e ee eb                                      bl #0x30e9ac
0077700c  00 00 50 e3                                      cmp r0, #0
00777010  81 00 00 1a                                      bne #0x77721c
00777014  30 30 9d e5                                      ldr r3, [sp, #0x30]
00777018  24 20 a0 e3                                      mov r2, #0x24
0077701c  18 10 9d e5                                      ldr r1, [sp, #0x18]
00777020  92 36 20 e0                                      mla r0, r2, r6, r3
00777024  20 20 9d e5                                      ldr r2, [sp, #0x20]
00777028  24 30 9d e5                                      ldr r3, [sp, #0x24]
0077702c  4a 3c f8 eb                                      bl #0x58615c
00777030  00 00 50 e3                                      cmp r0, #0
00777034  bb fe ff 0a                                      beq #0x776b28
00777038  d4 10 9d e5                                      ldr r1, [sp, #0xd4]
0077703c  18 20 9d e5                                      ldr r2, [sp, #0x18]
00777040  34 10 8d e5                                      str r1, [sp, #0x34]
00777044  00 10 92 e5                                      ldr r1, [r2]
00777048  34 00 9d e5                                      ldr r0, [sp, #0x34]
0077704c  d6 5c ee eb                                      bl #0x30e3ac
00777050  d8 30 9d e5                                      ldr r3, [sp, #0xd8]
00777054  00 40 a0 e1                                      mov r4, r0
00777058  18 00 9d e5                                      ldr r0, [sp, #0x18]
0077705c  40 30 8d e5                                      str r3, [sp, #0x40]
00777060  04 10 90 e5                                      ldr r1, [r0, #4]
00777064  03 00 a0 e1                                      mov r0, r3
00777068  cf 5c ee eb                                      bl #0x30e3ac
0077706c  18 20 9d e5                                      ldr r2, [sp, #0x18]
00777070  dc b0 9d e5                                      ldr fp, [sp, #0xdc]
00777074  00 30 a0 e1                                      mov r3, r0
00777078  08 10 92 e5                                      ldr r1, [r2, #8]
0077707c  0b 00 a0 e1                                      mov r0, fp
00777080  08 30 8d e5                                      str r3, [sp, #8]
00777084  c8 5c ee eb                                      bl #0x30e3ac
00777088  04 10 a0 e1                                      mov r1, r4
0077708c  00 20 a0 e1                                      mov r2, r0
00777090  04 00 a0 e1                                      mov r0, r4
00777094  00 20 8d e5                                      str r2, [sp]
00777098  33 5f ee eb                                      bl #0x30ed6c
0077709c  08 30 9d e5                                      ldr r3, [sp, #8]
007770a0  00 40 a0 e1                                      mov r4, r0
007770a4  03 10 a0 e1                                      mov r1, r3
007770a8  03 00 a0 e1                                      mov r0, r3
007770ac  2e 5f ee eb                                      bl #0x30ed6c
007770b0  00 10 a0 e1                                      mov r1, r0
007770b4  04 00 a0 e1                                      mov r0, r4
007770b8  b9 5e ee eb                                      bl #0x30eba4
007770bc  00 20 9d e5                                      ldr r2, [sp]
007770c0  00 40 a0 e1                                      mov r4, r0
007770c4  02 10 a0 e1                                      mov r1, r2
007770c8  02 00 a0 e1                                      mov r0, r2
007770cc  26 5f ee eb                                      bl #0x30ed6c
007770d0  00 10 a0 e1                                      mov r1, r0
007770d4  04 00 a0 e1                                      mov r0, r4
007770d8  b1 5e ee eb                                      bl #0x30eba4
007770dc  00 10 a0 e1                                      mov r1, r0
007770e0  00 40 a0 e1                                      mov r4, r0
007770e4  28 00 9d e5                                      ldr r0, [sp, #0x28]
007770e8  82 5c ee eb                                      bl #0x30e2f8
007770ec  18 30 9d e5                                      ldr r3, [sp, #0x18]
007770f0  00 00 50 e3                                      cmp r0, #0
007770f4  18 00 9d e5                                      ldr r0, [sp, #0x18]
007770f8  0c 20 93 e5                                      ldr r2, [r3, #0xc]
007770fc  10 30 93 e5                                      ldr r3, [r3, #0x10]
00777100  14 10 90 e5                                      ldr r1, [r0, #0x14]
00777104  87 fe ff 0a                                      beq #0x776b28
00777108  0b 00 a0 e1                                      mov r0, fp
0077710c  00 20 8d e5                                      str r2, [sp]
00777110  08 30 8d e5                                      str r3, [sp, #8]
00777114  a4 5c ee eb                                      bl #0x30e3ac
00777118  08 30 9d e5                                      ldr r3, [sp, #8]
0077711c  00 c0 a0 e1                                      mov ip, r0
00777120  40 00 9d e5                                      ldr r0, [sp, #0x40]
00777124  03 10 a0 e1                                      mov r1, r3
00777128  04 c0 8d e5                                      str ip, [sp, #4]
0077712c  9e 5c ee eb                                      bl #0x30e3ac
00777130  00 20 9d e5                                      ldr r2, [sp]
00777134  00 b0 a0 e1                                      mov fp, r0
00777138  34 00 9d e5                                      ldr r0, [sp, #0x34]
0077713c  02 10 a0 e1                                      mov r1, r2
00777140  99 5c ee eb                                      bl #0x30e3ac
00777144  00 10 a0 e1                                      mov r1, r0
00777148  07 5f ee eb                                      bl #0x30ed6c
0077714c  0b 10 a0 e1                                      mov r1, fp
00777150  00 30 a0 e1                                      mov r3, r0
00777154  0b 00 a0 e1                                      mov r0, fp
00777158  08 30 8d e5                                      str r3, [sp, #8]
0077715c  02 5f ee eb                                      bl #0x30ed6c
00777160  08 30 9d e5                                      ldr r3, [sp, #8]
00777164  00 10 a0 e1                                      mov r1, r0
00777168  03 00 a0 e1                                      mov r0, r3
0077716c  8c 5e ee eb                                      bl #0x30eba4
00777170  04 c0 9d e5                                      ldr ip, [sp, #4]
00777174  00 b0 a0 e1                                      mov fp, r0
00777178  0c 10 a0 e1                                      mov r1, ip
0077717c  0c 00 a0 e1                                      mov r0, ip
00777180  f9 5e ee eb                                      bl #0x30ed6c
00777184  00 10 a0 e1                                      mov r1, r0
00777188  0b 00 a0 e1                                      mov r0, fp
0077718c  84 5e ee eb                                      bl #0x30eba4
00777190  00 10 a0 e1                                      mov r1, r0
00777194  28 00 9d e5                                      ldr r0, [sp, #0x28]
00777198  56 5c ee eb                                      bl #0x30e2f8
0077719c  00 00 50 e3                                      cmp r0, #0
007771a0  60 fe ff 0a                                      beq #0x776b28
007771a4  04 10 a0 e1                                      mov r1, r4
007771a8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007771ac  51 5c ee eb                                      bl #0x30e2f8
007771b0  00 00 50 e3                                      cmp r0, #0
007771b4  01 10 a0 13                                      movne r1, #1
007771b8  1c 40 8d 15                                      strne r4, [sp, #0x1c]
007771bc  14 10 8d 15                                      strne r1, [sp, #0x14]
007771c0  58 fe ff ea                                      b #0x776b28
007771c4  10 00 95 e5                                      ldr r0, [r5, #0x10]
007771c8  0a 10 a0 e1                                      mov r1, sl
007771cc  4e 5d ee eb                                      bl #0x30e70c
007771d0  00 00 50 e3                                      cmp r0, #0
007771d4  3a ff ff 0a                                      beq #0x776ec4
007771d8  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
007771dc  0a 10 a0 e1                                      mov r1, sl
007771e0  49 5d ee eb                                      bl #0x30e70c
007771e4  00 00 50 e3                                      cmp r0, #0
007771e8  4e fe ff 1a                                      bne #0x776b28
007771ec  34 ff ff ea                                      b #0x776ec4
007771f0  14 00 95 e5                                      ldr r0, [r5, #0x14]
007771f4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007771f8  43 5d ee eb                                      bl #0x30e70c
007771fc  00 00 50 e3                                      cmp r0, #0
00777200  45 ff ff 0a                                      beq #0x776f1c
00777204  20 00 95 e5                                      ldr r0, [r5, #0x20]
00777208  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0077720c  3e 5d ee eb                                      bl #0x30e70c
00777210  00 00 50 e3                                      cmp r0, #0
00777214  43 fe ff 1a                                      bne #0x776b28
00777218  3f ff ff ea                                      b #0x776f1c
0077721c  0c 10 95 e5                                      ldr r1, [r5, #0xc]
00777220  40 00 9d e5                                      ldr r0, [sp, #0x40]
00777224  60 5c ee eb                                      bl #0x30e3ac
00777228  10 10 95 e5                                      ldr r1, [r5, #0x10]
0077722c  00 b0 a0 e1                                      mov fp, r0
00777230  44 00 9d e5                                      ldr r0, [sp, #0x44]
00777234  5c 5c ee eb                                      bl #0x30e3ac
00777238  14 10 95 e5                                      ldr r1, [r5, #0x14]
0077723c  00 30 a0 e1                                      mov r3, r0
00777240  04 00 a0 e1                                      mov r0, r4
00777244  08 30 8d e5                                      str r3, [sp, #8]
00777248  57 5c ee eb                                      bl #0x30e3ac
0077724c  0b 10 a0 e1                                      mov r1, fp
00777250  00 20 a0 e1                                      mov r2, r0
00777254  0b 00 a0 e1                                      mov r0, fp
00777258  00 20 8d e5                                      str r2, [sp]
0077725c  c2 5e ee eb                                      bl #0x30ed6c
00777260  08 30 9d e5                                      ldr r3, [sp, #8]
00777264  00 b0 a0 e1                                      mov fp, r0
00777268  03 10 a0 e1                                      mov r1, r3
0077726c  03 00 a0 e1                                      mov r0, r3
00777270  bd 5e ee eb                                      bl #0x30ed6c
00777274  00 10 a0 e1                                      mov r1, r0
00777278  0b 00 a0 e1                                      mov r0, fp
0077727c  48 5e ee eb                                      bl #0x30eba4
00777280  00 20 9d e5                                      ldr r2, [sp]
00777284  00 b0 a0 e1                                      mov fp, r0
00777288  02 10 a0 e1                                      mov r1, r2
0077728c  02 00 a0 e1                                      mov r0, r2
00777290  b5 5e ee eb                                      bl #0x30ed6c
00777294  00 10 a0 e1                                      mov r1, r0
00777298  0b 00 a0 e1                                      mov r0, fp
0077729c  40 5e ee eb                                      bl #0x30eba4
007772a0  00 10 a0 e1                                      mov r1, r0
007772a4  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007772a8  bf 5d ee eb                                      bl #0x30e9ac
007772ac  00 00 50 e3                                      cmp r0, #0
007772b0  57 ff ff 0a                                      beq #0x777014
007772b4  18 10 95 e5                                      ldr r1, [r5, #0x18]
007772b8  40 00 9d e5                                      ldr r0, [sp, #0x40]
007772bc  3a 5c ee eb                                      bl #0x30e3ac
007772c0  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
007772c4  00 b0 a0 e1                                      mov fp, r0
007772c8  44 00 9d e5                                      ldr r0, [sp, #0x44]
007772cc  36 5c ee eb                                      bl #0x30e3ac
007772d0  20 10 95 e5                                      ldr r1, [r5, #0x20]
007772d4  00 30 a0 e1                                      mov r3, r0
007772d8  04 00 a0 e1                                      mov r0, r4
007772dc  08 30 8d e5                                      str r3, [sp, #8]
007772e0  31 5c ee eb                                      bl #0x30e3ac
007772e4  0b 10 a0 e1                                      mov r1, fp
007772e8  00 20 a0 e1                                      mov r2, r0
007772ec  0b 00 a0 e1                                      mov r0, fp
007772f0  00 20 8d e5                                      str r2, [sp]
007772f4  9c 5e ee eb                                      bl #0x30ed6c
007772f8  08 30 9d e5                                      ldr r3, [sp, #8]
007772fc  00 40 a0 e1                                      mov r4, r0
00777300  03 10 a0 e1                                      mov r1, r3
00777304  03 00 a0 e1                                      mov r0, r3
00777308  97 5e ee eb                                      bl #0x30ed6c
0077730c  00 10 a0 e1                                      mov r1, r0
00777310  04 00 a0 e1                                      mov r0, r4
00777314  22 5e ee eb                                      bl #0x30eba4
00777318  00 20 9d e5                                      ldr r2, [sp]
0077731c  00 40 a0 e1                                      mov r4, r0
00777320  02 10 a0 e1                                      mov r1, r2
00777324  02 00 a0 e1                                      mov r0, r2
00777328  8f 5e ee eb                                      bl #0x30ed6c
0077732c  00 10 a0 e1                                      mov r1, r0
00777330  04 00 a0 e1                                      mov r0, r4
00777334  1a 5e ee eb                                      bl #0x30eba4
00777338  00 10 a0 e1                                      mov r1, r0
0077733c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00777340  99 5d ee eb                                      bl #0x30e9ac
00777344  00 00 50 e3                                      cmp r0, #0
00777348  f6 fd ff 1a                                      bne #0x776b28
0077734c  30 ff ff ea                                      b #0x777014

; FUNCTION 0x00777350, declared_size=452, range_size=452, mode=arm
; class-group: gameswf::scene_node
; alias: _ZN7gameswf10scene_node24update_inverse_transformEv
; demangled: gameswf::scene_node::update_inverse_transform()
; decoder-mode: arm
00777350  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00777354  00 40 a0 e1                                      mov r4, r0
00777358  2c d0 4d e2                                      sub sp, sp, #0x2c
0077735c  34 02 90 e5                                      ldr r0, [r0, #0x234]
00777360  93 d8 ff eb                                      bl #0x76d5b4
00777364  48 50 90 e5                                      ldr r5, [r0, #0x48]
00777368  00 30 a0 e1                                      mov r3, r0
0077736c  58 02 94 e5                                      ldr r0, [r4, #0x258]
00777370  05 10 a0 e1                                      mov r1, r5
00777374  4c 60 93 e5                                      ldr r6, [r3, #0x4c]
00777378  03 5b ee eb                                      bl #0x30df8c
0077737c  00 00 50 e3                                      cmp r0, #0
00777380  2d 00 00 1a                                      bne #0x77743c
00777384  34 32 94 e5                                      ldr r3, [r4, #0x234]
00777388  05 00 a0 e1                                      mov r0, r5
0077738c  0d 80 a0 e1                                      mov r8, sp
00777390  ac 30 93 e5                                      ldr r3, [r3, #0xac]
00777394  28 30 93 e5                                      ldr r3, [r3, #0x28]
00777398  d4 30 93 e5                                      ldr r3, [r3, #0xd4]
0077739c  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
007773a0  2c a0 93 e5                                      ldr sl, [r3, #0x2c]
007773a4  00 30 9a e5                                      ldr r3, [sl]
007773a8  14 70 93 e5                                      ldr r7, [r3, #0x14]
007773ac  46 5c ee eb                                      bl #0x30e4cc
007773b0  20 00 8d e5                                      str r0, [sp, #0x20]
007773b4  06 00 a0 e1                                      mov r0, r6
007773b8  43 5c ee eb                                      bl #0x30e4cc
007773bc  0a 10 a0 e1                                      mov r1, sl
007773c0  24 00 8d e5                                      str r0, [sp, #0x24]
007773c4  20 20 8d e2                                      add r2, sp, #0x20
007773c8  0d 00 a0 e1                                      mov r0, sp
007773cc  00 30 a0 e3                                      mov r3, #0
007773d0  37 ff 2f e1                                      blx r7
007773d4  00 30 a0 e3                                      mov r3, #0
007773d8  0d 10 a0 e1                                      mov r1, sp
007773dc  04 00 a0 e1                                      mov r0, r4
007773e0  18 20 8d e2                                      add r2, sp, #0x18
007773e4  1c 30 8d e5                                      str r3, [sp, #0x1c]
007773e8  18 30 8d e5                                      str r3, [sp, #0x18]
007773ec  5c fc ff eb                                      bl #0x776564
007773f0  00 00 50 e3                                      cmp r0, #0
007773f4  2a 00 00 1a                                      bne #0x7774a4
007773f8  00 30 05 e3                                      movw r3, #0x5000
007773fc  c3 37 4c e3                                      movt r3, #0xc7c3
00777400  60 32 84 e5                                      str r3, [r4, #0x260]
00777404  64 32 84 e5                                      str r3, [r4, #0x264]
00777408  30 31 94 e5                                      ldr r3, [r4, #0x130]
0077740c  03 00 a0 e1                                      mov r0, r3
00777410  00 30 93 e5                                      ldr r3, [r3]
00777414  0f e0 a0 e1                                      mov lr, pc
00777418  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0077741c  41 20 a0 e3                                      mov r2, #0x41
00777420  00 10 a0 e1                                      mov r1, r0
00777424  76 0f 84 e2                                      add r0, r4, #0x1d8
00777428  0e 5d ee eb                                      bl #0x30e868
0077742c  58 52 84 e5                                      str r5, [r4, #0x258]
00777430  5c 62 84 e5                                      str r6, [r4, #0x25c]
00777434  2c d0 8d e2                                      add sp, sp, #0x2c
00777438  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0077743c  5c 02 94 e5                                      ldr r0, [r4, #0x25c]
00777440  06 10 a0 e1                                      mov r1, r6
00777444  d0 5a ee eb                                      bl #0x30df8c
00777448  00 00 50 e3                                      cmp r0, #0
0077744c  cc ff ff 0a                                      beq #0x777384
00777450  30 31 94 e5                                      ldr r3, [r4, #0x130]
00777454  03 00 a0 e1                                      mov r0, r3
00777458  00 30 93 e5                                      ldr r3, [r3]
0077745c  0f e0 a0 e1                                      mov lr, pc
00777460  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00777464  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
00777468  00 a0 a0 e1                                      mov sl, r0
0077746c  00 00 53 e3                                      cmp r3, #0
00777470  23 00 00 1a                                      bne #0x777504
00777474  04 80 a0 e1                                      mov r8, r4
00777478  00 70 a0 e3                                      mov r7, #0
0077747c  07 00 9a e7                                      ldr r0, [sl, r7]
00777480  d8 11 98 e5                                      ldr r1, [r8, #0x1d8]
00777484  c0 5a ee eb                                      bl #0x30df8c
00777488  00 00 50 e3                                      cmp r0, #0
0077748c  04 70 87 e2                                      add r7, r7, #4
00777490  bb ff ff 0a                                      beq #0x777384
00777494  40 00 57 e3                                      cmp r7, #0x40
00777498  04 80 88 e2                                      add r8, r8, #4
0077749c  f6 ff ff 1a                                      bne #0x77747c
007774a0  d8 ff ff ea                                      b #0x777408
007774a4  34 02 94 e5                                      ldr r0, [r4, #0x234]
007774a8  18 70 9d e5                                      ldr r7, [sp, #0x18]
007774ac  40 d8 ff eb                                      bl #0x76d5b4
007774b0  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
007774b4  2a 5d ee eb                                      bl #0x30e964
007774b8  00 10 a0 e1                                      mov r1, r0
007774bc  07 00 a0 e1                                      mov r0, r7
007774c0  29 5e ee eb                                      bl #0x30ed6c
007774c4  00 70 a0 e1                                      mov r7, r0
007774c8  34 02 94 e5                                      ldr r0, [r4, #0x234]
007774cc  1c 80 9d e5                                      ldr r8, [sp, #0x1c]
007774d0  37 d8 ff eb                                      bl #0x76d5b4
007774d4  20 00 90 e5                                      ldr r0, [r0, #0x20]
007774d8  21 5d ee eb                                      bl #0x30e964
007774dc  00 10 a0 e1                                      mov r1, r0
007774e0  08 00 a0 e1                                      mov r0, r8
007774e4  20 5e ee eb                                      bl #0x30ed6c
007774e8  60 72 84 e5                                      str r7, [r4, #0x260]
007774ec  64 02 84 e5                                      str r0, [r4, #0x264]
007774f0  34 02 94 e5                                      ldr r0, [r4, #0x234]
007774f4  2e d8 ff eb                                      bl #0x76d5b4
007774f8  26 1e 84 e2                                      add r1, r4, #0x260
007774fc  2f f2 ff eb                                      bl #0x773dc0
00777500  c0 ff ff ea                                      b #0x777408
00777504  18 32 d4 e5                                      ldrb r3, [r4, #0x218]
00777508  00 00 53 e3                                      cmp r3, #0
0077750c  bd ff ff 1a                                      bne #0x777408
00777510  d7 ff ff ea                                      b #0x777474

; FUNCTION 0x00777514, declared_size=176, range_size=176, mode=arm
; class-group: gameswf::scene_node
; alias: _ZN7gameswf10scene_node15get_local_mouseEPNS_9characterERfS3_
; demangled: gameswf::scene_node::get_local_mouse(gameswf::character*, float&, float&)
; decoder-mode: arm
00777514  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00777518  00 50 a0 e1                                      mov r5, r0
0077751c  14 d0 4d e2                                      sub sp, sp, #0x14
00777520  01 40 a0 e1                                      mov r4, r1
00777524  02 60 a0 e1                                      mov r6, r2
00777528  03 70 a0 e1                                      mov r7, r3
0077752c  87 ff ff eb                                      bl #0x777350
00777530  60 22 95 e5                                      ldr r2, [r5, #0x260]
00777534  64 32 95 e5                                      ldr r3, [r5, #0x264]
00777538  41 14 a0 e3                                      mov r1, #0x41000000
0077753c  08 20 8d e5                                      str r2, [sp, #8]
00777540  08 00 9d e5                                      ldr r0, [sp, #8]
00777544  0a 16 81 e2                                      add r1, r1, #0xa00000
00777548  0c 30 8d e5                                      str r3, [sp, #0xc]
0077754c  06 5e ee eb                                      bl #0x30ed6c
00777550  41 14 a0 e3                                      mov r1, #0x41000000
00777554  08 00 8d e5                                      str r0, [sp, #8]
00777558  0a 16 81 e2                                      add r1, r1, #0xa00000
0077755c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00777560  01 5e ee eb                                      bl #0x30ed6c
00777564  08 30 9d e5                                      ldr r3, [sp, #8]
00777568  0c 00 8d e5                                      str r0, [sp, #0xc]
0077756c  3c 50 84 e2                                      add r5, r4, #0x3c
00777570  00 30 8d e5                                      str r3, [sp]
00777574  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00777578  05 00 a0 e1                                      mov r0, r5
0077757c  04 30 8d e5                                      str r3, [sp, #4]
00777580  ef 3a f0 eb                                      bl #0x386144
00777584  40 30 94 e5                                      ldr r3, [r4, #0x40]
00777588  00 00 53 e3                                      cmp r3, #0
0077758c  06 00 00 0a                                      beq #0x7775ac
00777590  05 00 a0 e1                                      mov r0, r5
00777594  ea 3a f0 eb                                      bl #0x386144
00777598  40 00 94 e5                                      ldr r0, [r4, #0x40]
0077759c  74 72 ff eb                                      bl #0x753f74
007775a0  0d 10 a0 e1                                      mov r1, sp
007775a4  08 20 8d e2                                      add r2, sp, #8
007775a8  f3 71 ff eb                                      bl #0x753d7c
007775ac  04 30 9d e5                                      ldr r3, [sp, #4]
007775b0  00 20 9d e5                                      ldr r2, [sp]
007775b4  00 20 86 e5                                      str r2, [r6]
007775b8  00 30 87 e5                                      str r3, [r7]
007775bc  14 d0 8d e2                                      add sp, sp, #0x14
007775c0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x007775c4, declared_size=48, range_size=48, mode=arm
; class-group: gameswf::scene_node
; alias: _ZN7gameswf10scene_node15get_world_mouseERiS1_
; demangled: gameswf::scene_node::get_world_mouse(int&, int&)
; decoder-mode: arm
007775c4  70 40 2d e9                                      push {r4, r5, r6, lr}
007775c8  00 40 a0 e1                                      mov r4, r0
007775cc  01 50 a0 e1                                      mov r5, r1
007775d0  02 60 a0 e1                                      mov r6, r2
007775d4  5d ff ff eb                                      bl #0x777350
007775d8  60 02 94 e5                                      ldr r0, [r4, #0x260]
007775dc  ba 5b ee eb                                      bl #0x30e4cc
007775e0  00 00 85 e5                                      str r0, [r5]
007775e4  64 02 94 e5                                      ldr r0, [r4, #0x264]
007775e8  b7 5b ee eb                                      bl #0x30e4cc
007775ec  00 00 86 e5                                      str r0, [r6]
007775f0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0077825c, declared_size=852, range_size=852, mode=arm
; class-group: gameswf::scene_node
; alias: _ZN7gameswf10scene_node11collect_uvsERKN5boost13intrusive_ptrIKN6glitch5scene5IMeshEEEPNS_5pointEj
; demangled: gameswf::scene_node::collect_uvs(boost::intrusive_ptr<glitch::scene::IMesh const> const&, gameswf::point*, unsigned int)
; decoder-mode: arm
0077825c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00778260  01 40 a0 e1                                      mov r4, r1
00778264  00 10 91 e5                                      ldr r1, [r1]
00778268  2c d0 4d e2                                      sub sp, sp, #0x2c
0077826c  03 50 a0 e1                                      mov r5, r3
00778270  01 00 a0 e1                                      mov r0, r1
00778274  00 30 91 e5                                      ldr r3, [r1]
00778278  02 60 a0 e1                                      mov r6, r2
0077827c  0f e0 a0 e1                                      mov lr, pc
00778280  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00778284  1c 83 9f e5                                      ldr r8, [pc, #0x31c]
00778288  00 00 50 e3                                      cmp r0, #0
0077828c  08 80 8f e0                                      add r8, pc, r8
00778290  01 00 00 1a                                      bne #0x77829c
00778294  2c d0 8d e2                                      add sp, sp, #0x2c
00778298  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0077829c  00 30 94 e5                                      ldr r3, [r4]
007782a0  24 00 8d e2                                      add r0, sp, #0x24
007782a4  00 20 a0 e3                                      mov r2, #0
007782a8  03 10 a0 e1                                      mov r1, r3
007782ac  00 30 93 e5                                      ldr r3, [r3]
007782b0  0f e0 a0 e1                                      mov lr, pc
007782b4  14 f0 93 e5                                      ldr pc, [r3, #0x14]
007782b8  24 40 9d e5                                      ldr r4, [sp, #0x24]
007782bc  00 00 54 e3                                      cmp r4, #0
007782c0  01 00 00 0a                                      beq #0x7782cc
007782c4  04 00 a0 e1                                      mov r0, r4
007782c8  ad 94 ee eb                                      bl #0x31d584
007782cc  14 70 94 e5                                      ldr r7, [r4, #0x14]
007782d0  20 a0 94 e5                                      ldr sl, [r4, #0x20]
007782d4  20 00 8d e2                                      add r0, sp, #0x20
007782d8  00 00 57 e3                                      cmp r7, #0
007782dc  20 70 8d e5                                      str r7, [sp, #0x20]
007782e0  00 30 97 15                                      ldrne r3, [r7]
007782e4  01 30 83 12                                      addne r3, r3, #1
007782e8  00 30 87 15                                      strne r3, [r7]
007782ec  20 70 9d 15                                      ldrne r7, [sp, #0x20]
007782f0  26 9a ef eb                                      bl #0x35eb90
007782f4  0c 30 d7 e5                                      ldrb r3, [r7, #0xc]
007782f8  00 00 53 e3                                      cmp r3, #0
007782fc  e4 ff ff 0a                                      beq #0x778294
00778300  18 00 94 e5                                      ldr r0, [r4, #0x18]
00778304  00 00 50 e3                                      cmp r0, #0
00778308  e1 ff ff 0a                                      beq #0x778294
0077830c  01 10 a0 e3                                      mov r1, #1
00778310  f1 a5 f8 eb                                      bl #0x5a1adc
00778314  00 00 50 e3                                      cmp r0, #0
00778318  dd ff ff 0a                                      beq #0x778294
0077831c  88 32 9f e5                                      ldr r3, [pc, #0x288]
00778320  bc 22 d4 e1                                      ldrh r2, [r4, #0x2c]
00778324  0a 00 55 e1                                      cmp r5, sl
00778328  0a 50 a0 a1                                      movge r5, sl
0077832c  03 30 98 e7                                      ldr r3, [r8, r3]
00778330  00 00 55 e3                                      cmp r5, #0
00778334  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00778338  15 00 00 0a                                      beq #0x778394
0077833c  00 10 a0 e3                                      mov r1, #0
00778340  01 20 a0 e1                                      mov r2, r1
00778344  08 c0 8d e2                                      add ip, sp, #8
00778348  09 00 00 ea                                      b #0x778374
0077834c  04 00 53 e3                                      cmp r3, #4
00778350  5c 00 00 0a                                      beq #0x7784c8
00778354  01 00 53 e3                                      cmp r3, #1
00778358  00 80 d0 05                                      ldrbeq r8, [r0]
0077835c  01 80 8c 07                                      streq r8, [ip, r1]
00778360  01 20 82 e2                                      add r2, r2, #1
00778364  02 00 55 e1                                      cmp r5, r2
00778368  04 10 81 e2                                      add r1, r1, #4
0077836c  08 00 00 0a                                      beq #0x778394
00778370  03 00 80 e0                                      add r0, r0, r3
00778374  02 00 53 e3                                      cmp r3, #2
00778378  f3 ff ff 1a                                      bne #0x77834c
0077837c  b0 80 d0 e1                                      ldrh r8, [r0]
00778380  01 20 82 e2                                      add r2, r2, #1
00778384  02 00 55 e1                                      cmp r5, r2
00778388  01 80 8c e7                                      str r8, [ip, r1]
0077838c  04 10 81 e2                                      add r1, r1, #4
00778390  f6 ff ff 1a                                      bne #0x778370
00778394  24 20 87 e2                                      add r2, r7, #0x24
00778398  bc 30 d2 e1                                      ldrh r3, [r2, #0xc]
0077839c  02 00 53 e3                                      cmp r3, #2
007783a0  0f 00 00 0a                                      beq #0x7783e4
007783a4  18 40 94 e5                                      ldr r4, [r4, #0x18]
007783a8  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
007783ac  1f 20 03 e2                                      and r2, r3, #0x1f
007783b0  01 00 52 e3                                      cmp r2, #1
007783b4  04 00 00 9a                                      bls #0x7783cc
007783b8  01 20 42 e2                                      sub r2, r2, #1
007783bc  1f 30 c3 e3                                      bic r3, r3, #0x1f
007783c0  03 30 82 e1                                      orr r3, r2, r3
007783c4  13 30 c4 e5                                      strb r3, [r4, #0x13]
007783c8  b1 ff ff ea                                      b #0x778294
007783cc  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
007783d0  20 00 13 e3                                      tst r3, #0x20
007783d4  6e 00 00 1a                                      bne #0x778594
007783d8  00 30 a0 e3                                      mov r3, #0
007783dc  13 30 c4 e5                                      strb r3, [r4, #0x13]
007783e0  ab ff ff ea                                      b #0x778294
007783e4  ba 30 d2 e1                                      ldrh r3, [r2, #0xa]
007783e8  06 00 53 e3                                      cmp r3, #6
007783ec  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
007783f0  0d 00 00 ea                                      b #0x77842c
007783f4  05 00 00 ea                                      b #0x778410
007783f8  5d 00 00 ea                                      b #0x778574
007783fc  54 00 00 ea                                      b #0x778554
00778400  4b 00 00 ea                                      b #0x778534
00778404  42 00 00 ea                                      b #0x778514
00778408  39 00 00 ea                                      b #0x7784f4
0077840c  30 00 00 ea                                      b #0x7784d4
00778410  ab 1a 0a e3                                      movw r1, #0xaaab
00778414  aa 1a 4a e3                                      movt r1, #0xaaaa
00778418  91 35 81 e0                                      umull r3, r1, r1, r5
0077841c  08 00 8d e2                                      add r0, sp, #8
00778420  a1 10 a0 e1                                      lsr r1, r1, #1
00778424  06 30 a0 e1                                      mov r3, r6
00778428  71 fc ff eb                                      bl #0x7775f4
0077842c  10 30 97 e5                                      ldr r3, [r7, #0x10]
00778430  00 10 a0 e3                                      mov r1, #0
00778434  28 20 93 e5                                      ldr r2, [r3, #0x28]
00778438  18 90 93 e5                                      ldr sb, [r3, #0x18]
0077843c  04 20 8d e5                                      str r2, [sp, #4]
00778440  1c b0 93 e5                                      ldr fp, [r3, #0x1c]
00778444  24 30 93 e5                                      ldr r3, [r3, #0x24]
00778448  09 00 a0 e1                                      mov r0, sb
0077844c  00 30 8d e5                                      str r3, [sp]
00778450  cd 56 ee eb                                      bl #0x30df8c
00778454  00 00 50 e3                                      cmp r0, #0
00778458  d1 ff ff 1a                                      bne #0x7783a4
0077845c  0b 00 a0 e1                                      mov r0, fp
00778460  00 10 a0 e3                                      mov r1, #0
00778464  c8 56 ee eb                                      bl #0x30df8c
00778468  00 00 50 e3                                      cmp r0, #0
0077846c  cc ff ff 1a                                      bne #0x7783a4
00778470  00 00 55 e3                                      cmp r5, #0
00778474  ca ff ff 0a                                      beq #0x7783a4
00778478  00 80 a0 e3                                      mov r8, #0
0077847c  08 a0 a0 e1                                      mov sl, r8
00778480  08 10 96 e7                                      ldr r1, [r6, r8]
00778484  09 00 a0 e1                                      mov r0, sb
00778488  37 5a ee eb                                      bl #0x30ed6c
0077848c  00 10 9d e5                                      ldr r1, [sp]
00778490  c3 59 ee eb                                      bl #0x30eba4
00778494  06 70 a0 e1                                      mov r7, r6
00778498  08 00 a7 e7                                      str r0, [r7, r8]!
0077849c  04 10 97 e5                                      ldr r1, [r7, #4]
007784a0  0b 00 a0 e1                                      mov r0, fp
007784a4  30 5a ee eb                                      bl #0x30ed6c
007784a8  04 10 9d e5                                      ldr r1, [sp, #4]
007784ac  bc 59 ee eb                                      bl #0x30eba4
007784b0  01 a0 8a e2                                      add sl, sl, #1
007784b4  0a 00 55 e1                                      cmp r5, sl
007784b8  04 00 87 e5                                      str r0, [r7, #4]
007784bc  08 80 88 e2                                      add r8, r8, #8
007784c0  ee ff ff 1a                                      bne #0x778480
007784c4  b6 ff ff ea                                      b #0x7783a4
007784c8  00 80 90 e5                                      ldr r8, [r0]
007784cc  01 80 8c e7                                      str r8, [ip, r1]
007784d0  a2 ff ff ea                                      b #0x778360
007784d4  ab 1a 0a e3                                      movw r1, #0xaaab
007784d8  aa 1a 4a e3                                      movt r1, #0xaaaa
007784dc  91 35 81 e0                                      umull r3, r1, r1, r5
007784e0  08 00 8d e2                                      add r0, sp, #8
007784e4  a1 10 a0 e1                                      lsr r1, r1, #1
007784e8  06 30 a0 e1                                      mov r3, r6
007784ec  28 fd ff eb                                      bl #0x777994
007784f0  cd ff ff ea                                      b #0x77842c
007784f4  ab 1a 0a e3                                      movw r1, #0xaaab
007784f8  aa 1a 4a e3                                      movt r1, #0xaaaa
007784fc  91 35 81 e0                                      umull r3, r1, r1, r5
00778500  08 00 8d e2                                      add r0, sp, #8
00778504  a1 10 a0 e1                                      lsr r1, r1, #1
00778508  06 30 a0 e1                                      mov r3, r6
0077850c  ac fc ff eb                                      bl #0x7777c4
00778510  c5 ff ff ea                                      b #0x77842c
00778514  ab 1a 0a e3                                      movw r1, #0xaaab
00778518  aa 1a 4a e3                                      movt r1, #0xaaaa
0077851c  91 35 81 e0                                      umull r3, r1, r1, r5
00778520  08 00 8d e2                                      add r0, sp, #8
00778524  a1 10 a0 e1                                      lsr r1, r1, #1
00778528  06 30 a0 e1                                      mov r3, r6
0077852c  d6 fe ff eb                                      bl #0x77808c
00778530  bd ff ff ea                                      b #0x77842c
00778534  ab 1a 0a e3                                      movw r1, #0xaaab
00778538  aa 1a 4a e3                                      movt r1, #0xaaaa
0077853c  91 35 81 e0                                      umull r3, r1, r1, r5
00778540  08 00 8d e2                                      add r0, sp, #8
00778544  a1 10 a0 e1                                      lsr r1, r1, #1
00778548  06 30 a0 e1                                      mov r3, r6
0077854c  5a fe ff eb                                      bl #0x777ebc
00778550  b5 ff ff ea                                      b #0x77842c
00778554  ab 1a 0a e3                                      movw r1, #0xaaab
00778558  aa 1a 4a e3                                      movt r1, #0xaaaa
0077855c  91 35 81 e0                                      umull r3, r1, r1, r5
00778560  08 00 8d e2                                      add r0, sp, #8
00778564  a1 10 a0 e1                                      lsr r1, r1, #1
00778568  06 30 a0 e1                                      mov r3, r6
0077856c  de fd ff eb                                      bl #0x777cec
00778570  ad ff ff ea                                      b #0x77842c
00778574  ab 1a 0a e3                                      movw r1, #0xaaab
00778578  aa 1a 4a e3                                      movt r1, #0xaaaa
0077857c  91 35 81 e0                                      umull r3, r1, r1, r5
00778580  08 00 8d e2                                      add r0, sp, #8
00778584  a1 10 a0 e1                                      lsr r1, r1, #1
00778588  06 30 a0 e1                                      mov r3, r6
0077858c  62 fd ff eb                                      bl #0x777b1c
00778590  a5 ff ff ea                                      b #0x77842c
00778594  00 30 94 e5                                      ldr r3, [r4]
00778598  04 00 a0 e1                                      mov r0, r4
0077859c  0f e0 a0 e1                                      mov lr, pc
007785a0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
007785a4  8b ff ff ea                                      b #0x7783d8
; mapping-symbol data/literal pool
007785a8  04 c8 21 00 9c 42 00 00                          .byte 0x04, 0xc8, 0x21, 0x00, 0x9c, 0x42, 0x00, 0x00

; FUNCTION 0x007785b0, declared_size=656, range_size=656, mode=arm
; class-group: gameswf::scene_node
; alias: _ZN7gameswf10scene_node12init_cornersEv
; demangled: gameswf::scene_node::init_corners()
; decoder-mode: arm
007785b0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007785b4  30 71 90 e5                                      ldr r7, [r0, #0x130]
007785b8  fc d0 4d e2                                      sub sp, sp, #0xfc
007785bc  00 50 a0 e1                                      mov r5, r0
007785c0  00 30 97 e5                                      ldr r3, [r7]
007785c4  f4 00 8d e2                                      add r0, sp, #0xf4
007785c8  07 10 a0 e1                                      mov r1, r7
007785cc  0f e0 a0 e1                                      mov lr, pc
007785d0  f8 f0 93 e5                                      ldr pc, [r3, #0xf8]
007785d4  f4 30 9d e5                                      ldr r3, [sp, #0xf4]
007785d8  08 60 8d e2                                      add r6, sp, #8
007785dc  06 00 a0 e1                                      mov r0, r6
007785e0  00 00 53 e3                                      cmp r3, #0
007785e4  f0 30 8d e5                                      str r3, [sp, #0xf0]
007785e8  04 20 93 15                                      ldrne r2, [r3, #4]
007785ec  f0 10 8d e2                                      add r1, sp, #0xf0
007785f0  40 82 9f e5                                      ldr r8, [pc, #0x240]
007785f4  01 20 82 12                                      addne r2, r2, #1
007785f8  04 20 83 15                                      strne r2, [r3, #4]
007785fc  00 20 a0 e3                                      mov r2, #0
00778600  02 30 a0 e1                                      mov r3, r2
00778604  2f 76 f8 eb                                      bl #0x595ec8
00778608  f0 00 9d e5                                      ldr r0, [sp, #0xf0]
0077860c  08 80 8f e0                                      add r8, pc, r8
00778610  00 00 50 e3                                      cmp r0, #0
00778614  00 00 00 0a                                      beq #0x77861c
00778618  d9 93 ee eb                                      bl #0x31d584
0077861c  f4 00 9d e5                                      ldr r0, [sp, #0xf4]
00778620  00 00 50 e3                                      cmp r0, #0
00778624  00 00 00 0a                                      beq #0x77862c
00778628  d5 93 ee eb                                      bl #0x31d584
0077862c  00 40 a0 e3                                      mov r4, #0
00778630  f8 30 8d e2                                      add r3, sp, #0xf8
00778634  0c 40 23 e5                                      str r4, [r3, #-0xc]!
00778638  06 00 a0 e1                                      mov r0, r6
0077863c  05 1d 85 e2                                      add r1, r5, #0x140
00778640  02 20 a0 e3                                      mov r2, #2
00778644  00 40 8d e5                                      str r4, [sp]
00778648  85 63 f8 eb                                      bl #0x591464
0077864c  ec 60 9d e5                                      ldr r6, [sp, #0xec]
00778650  04 00 56 e1                                      cmp r6, r4
00778654  17 00 00 da                                      ble #0x7786b8
00778658  05 30 a0 e1                                      mov r3, r5
0077865c  4c 61 93 e5                                      ldr r6, [r3, #0x14c]
00778660  40 b1 93 e5                                      ldr fp, [r3, #0x140]
00778664  44 91 93 e5                                      ldr sb, [r3, #0x144]
00778668  48 a1 93 e5                                      ldr sl, [r3, #0x148]
0077866c  50 e1 93 e5                                      ldr lr, [r3, #0x150]
00778670  54 c1 93 e5                                      ldr ip, [r3, #0x154]
00778674  58 01 93 e5                                      ldr r0, [r3, #0x158]
00778678  5c 11 93 e5                                      ldr r1, [r3, #0x15c]
0077867c  60 21 93 e5                                      ldr r2, [r3, #0x160]
00778680  88 b1 83 e5                                      str fp, [r3, #0x188]
00778684  8c 91 83 e5                                      str sb, [r3, #0x18c]
00778688  90 a1 83 e5                                      str sl, [r3, #0x190]
0077868c  94 61 83 e5                                      str r6, [r3, #0x194]
00778690  98 e1 83 e5                                      str lr, [r3, #0x198]
00778694  9c c1 83 e5                                      str ip, [r3, #0x19c]
00778698  a0 01 83 e5                                      str r0, [r3, #0x1a0]
0077869c  a4 11 83 e5                                      str r1, [r3, #0x1a4]
007786a0  a8 21 83 e5                                      str r2, [r3, #0x1a8]
007786a4  ec 60 9d e5                                      ldr r6, [sp, #0xec]
007786a8  01 40 84 e2                                      add r4, r4, #1
007786ac  24 30 83 e2                                      add r3, r3, #0x24
007786b0  04 00 56 e1                                      cmp r6, r4
007786b4  e8 ff ff ca                                      bgt #0x77865c
007786b8  00 10 a0 e3                                      mov r1, #0
007786bc  86 60 86 e0                                      add r6, r6, r6, lsl #1
007786c0  00 20 a0 e3                                      mov r2, #0
007786c4  b4 40 8d e2                                      add r4, sp, #0xb4
007786c8  04 30 a0 e1                                      mov r3, r4
007786cc  02 10 a3 e7                                      str r1, [r3, r2]!
007786d0  08 20 82 e2                                      add r2, r2, #8
007786d4  30 00 52 e3                                      cmp r2, #0x30
007786d8  04 10 83 e5                                      str r1, [r3, #4]
007786dc  f9 ff ff 1a                                      bne #0x7786c8
007786e0  07 10 a0 e1                                      mov r1, r7
007786e4  00 30 97 e5                                      ldr r3, [r7]
007786e8  e8 00 8d e2                                      add r0, sp, #0xe8
007786ec  0f e0 a0 e1                                      mov lr, pc
007786f0  f8 f0 93 e5                                      ldr pc, [r3, #0xf8]
007786f4  e8 30 9d e5                                      ldr r3, [sp, #0xe8]
007786f8  05 00 a0 e1                                      mov r0, r5
007786fc  e4 10 8d e2                                      add r1, sp, #0xe4
00778700  00 00 53 e3                                      cmp r3, #0
00778704  e4 30 8d e5                                      str r3, [sp, #0xe4]
00778708  04 20 93 15                                      ldrne r2, [r3, #4]
0077870c  01 20 82 12                                      addne r2, r2, #1
00778710  04 20 83 15                                      strne r2, [r3, #4]
00778714  04 20 a0 e1                                      mov r2, r4
00778718  06 30 a0 e1                                      mov r3, r6
0077871c  ce fe ff eb                                      bl #0x77825c
00778720  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
00778724  00 00 50 e3                                      cmp r0, #0
00778728  00 00 00 0a                                      beq #0x778730
0077872c  94 93 ee eb                                      bl #0x31d584
00778730  e8 00 9d e5                                      ldr r0, [sp, #0xe8]
00778734  00 00 50 e3                                      cmp r0, #0
00778738  00 00 00 0a                                      beq #0x778740
0077873c  90 93 ee eb                                      bl #0x31d584
00778740  00 00 56 e3                                      cmp r6, #0
00778744  1f 00 00 0a                                      beq #0x7787c8
00778748  00 70 a0 e3                                      mov r7, #0
0077874c  07 a0 a0 e1                                      mov sl, r7
00778750  d6 b1 00 e3                                      movw fp, #0x1d6
00778754  75 9f a0 e3                                      mov sb, #0x1d4
00778758  09 00 00 ea                                      b #0x778784
0077875c  04 00 92 e5                                      ldr r0, [r2, #4]
00778760  e4 56 ee eb                                      bl #0x30e2f8
00778764  00 00 50 e3                                      cmp r0, #0
00778768  1d 3e a0 13                                      movne r3, #0x1d0
0077876c  d2 31 00 03                                      movweq r3, #0x1d2
00778770  b3 a0 85 e1                                      strh sl, [r5, r3]
00778774  01 a0 8a e2                                      add sl, sl, #1
00778778  06 00 5a e1                                      cmp sl, r6
0077877c  08 70 87 e2                                      add r7, r7, #8
00778780  10 00 00 0a                                      beq #0x7787c8
00778784  3f 14 a0 e3                                      mov r1, #0x3f000000
00778788  07 00 94 e7                                      ldr r0, [r4, r7]
0077878c  de 57 ee eb                                      bl #0x30e70c
00778790  00 00 50 e3                                      cmp r0, #0
00778794  07 20 84 e0                                      add r2, r4, r7
00778798  3f 14 a0 e3                                      mov r1, #0x3f000000
0077879c  ee ff ff 1a                                      bne #0x77875c
007787a0  04 00 92 e5                                      ldr r0, [r2, #4]
007787a4  3f 14 a0 e3                                      mov r1, #0x3f000000
007787a8  d2 56 ee eb                                      bl #0x30e2f8
007787ac  00 00 50 e3                                      cmp r0, #0
007787b0  b9 a0 85 11                                      strhne sl, [r5, sb]
007787b4  bb a0 85 01                                      strheq sl, [r5, fp]
007787b8  01 a0 8a e2                                      add sl, sl, #1
007787bc  06 00 5a e1                                      cmp sl, r6
007787c0  08 70 87 e2                                      add r7, r7, #8
007787c4  ee ff ff 1a                                      bne #0x778784
007787c8  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
007787cc  18 30 9d e5                                      ldr r3, [sp, #0x18]
007787d0  14 00 9d e5                                      ldr r0, [sp, #0x14]
007787d4  02 20 98 e7                                      ldr r2, [r8, r2]
007787d8  00 00 53 e1                                      cmp r3, r0
007787dc  08 20 82 e2                                      add r2, r2, #8
007787e0  08 20 8d e5                                      str r2, [sp, #8]
007787e4  0e 00 00 0a                                      beq #0x778824
007787e8  24 20 43 e2                                      sub r2, r3, #0x24
007787ec  02 20 60 e0                                      rsb r2, r0, r2
007787f0  22 21 a0 e1                                      lsr r2, r2, #2
007787f4  82 11 a0 e1                                      lsl r1, r2, #3
007787f8  01 10 62 e0                                      rsb r1, r2, r1
007787fc  01 13 81 e0                                      add r1, r1, r1, lsl #6
00778800  81 11 82 e0                                      add r1, r2, r1, lsl #3
00778804  81 c7 a0 e1                                      lsl ip, r1, #0xf
00778808  0c 10 61 e0                                      rsb r1, r1, ip
0077880c  81 21 82 e0                                      add r2, r2, r1, lsl #3
00778810  03 21 c2 e3                                      bic r2, r2, #0xc0000000
00778814  23 10 e0 e3                                      mvn r1, #0x23
00778818  91 02 02 e0                                      mul r2, r1, r2
0077881c  01 20 82 e0                                      add r2, r2, r1
00778820  02 30 83 e0                                      add r3, r3, r2
00778824  00 00 53 e3                                      cmp r3, #0
00778828  00 00 00 0a                                      beq #0x778830
0077882c  07 5f ee eb                                      bl #0x310450
00778830  fc d0 8d e2                                      add sp, sp, #0xfc
00778834  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00778838  84 c4 21 00 c0 05 00 00                          .byte 0x84, 0xc4, 0x21, 0x00, 0xc0, 0x05, 0x00, 0x00

; FUNCTION 0x00778840, declared_size=1048, range_size=1048, mode=arm
; class-group: gameswf::scene_node
; alias: _ZN7gameswf10scene_nodeC1EPNS_6playerEPN6glitch5scene10ISceneNodeENS3_4core11dimension2dIiEE
; demangled: gameswf::scene_node::scene_node(gameswf::player*, glitch::scene::ISceneNode*, glitch::core::dimension2d<int>)
; decoder-mode: arm
00778840  08 d0 4d e2                                      sub sp, sp, #8
00778844  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00778848  f4 53 9f e5                                      ldr r5, [pc, #0x3f4]
0077884c  f4 e3 9f e5                                      ldr lr, [pc, #0x3f4]
00778850  f4 c3 9f e5                                      ldr ip, [pc, #0x3f4]
00778854  05 50 8f e0                                      add r5, pc, r5
00778858  0e e0 95 e7                                      ldr lr, [r5, lr]
0077885c  0c c0 95 e7                                      ldr ip, [r5, ip]
00778860  4c d0 4d e2                                      sub sp, sp, #0x4c
00778864  18 60 9e e5                                      ldr r6, [lr, #0x18]
00778868  74 30 8d e5                                      str r3, [sp, #0x74]
0077886c  08 c0 8c e2                                      add ip, ip, #8
00778870  01 30 a0 e3                                      mov r3, #1
00778874  68 c2 80 e5                                      str ip, [r0, #0x268]
00778878  00 60 80 e5                                      str r6, [r0]
0077887c  6c 32 80 e5                                      str r3, [r0, #0x26c]
00778880  0c 30 16 e5                                      ldr r3, [r6, #-0xc]
00778884  1c 60 9e e5                                      ldr r6, [lr, #0x1c]
00778888  01 b0 a0 e1                                      mov fp, r1
0077888c  04 10 8e e2                                      add r1, lr, #4
00778890  0c e0 8d e2                                      add lr, sp, #0xc
00778894  00 70 a0 e3                                      mov r7, #0
00778898  03 60 80 e7                                      str r6, [r0, r3]
0077889c  fe c5 a0 e3                                      mov ip, #0x3f800000
007788a0  02 60 a0 e1                                      mov r6, r2
007788a4  28 30 8d e2                                      add r3, sp, #0x28
007788a8  00 20 e0 e3                                      mvn r2, #0
007788ac  00 e0 8d e5                                      str lr, [sp]
007788b0  1c e0 8d e2                                      add lr, sp, #0x1c
007788b4  00 40 a0 e1                                      mov r4, r0
007788b8  24 c0 8d e5                                      str ip, [sp, #0x24]
007788bc  04 e0 8d e5                                      str lr, [sp, #4]
007788c0  28 70 8d e5                                      str r7, [sp, #0x28]
007788c4  2c 70 8d e5                                      str r7, [sp, #0x2c]
007788c8  30 70 8d e5                                      str r7, [sp, #0x30]
007788cc  0c 70 8d e5                                      str r7, [sp, #0xc]
007788d0  10 70 8d e5                                      str r7, [sp, #0x10]
007788d4  14 70 8d e5                                      str r7, [sp, #0x14]
007788d8  18 c0 8d e5                                      str ip, [sp, #0x18]
007788dc  1c c0 8d e5                                      str ip, [sp, #0x1c]
007788e0  20 c0 8d e5                                      str ip, [sp, #0x20]
007788e4  f5 81 f8 eb                                      bl #0x5990c0
007788e8  60 23 9f e5                                      ldr r2, [pc, #0x360]
007788ec  59 3f 84 e2                                      add r3, r4, #0x164
007788f0  00 10 a0 e3                                      mov r1, #0
007788f4  02 20 95 e7                                      ldr r2, [r5, r2]
007788f8  38 11 84 e5                                      str r1, [r4, #0x138]
007788fc  12 0e 82 e2                                      add r0, r2, #0x120
00778900  1c 20 82 e2                                      add r2, r2, #0x1c
00778904  00 20 84 e5                                      str r2, [r4]
00778908  68 02 84 e5                                      str r0, [r4, #0x268]
0077890c  4f 2f a0 e3                                      mov r2, #0x13c
00778910  00 00 e0 e3                                      mvn r0, #0
00778914  b2 00 84 e1                                      strh r0, [r4, r2]
00778918  30 61 84 e5                                      str r6, [r4, #0x130]
0077891c  34 11 84 e5                                      str r1, [r4, #0x134]
00778920  40 71 84 e5                                      str r7, [r4, #0x140]
00778924  44 71 84 e5                                      str r7, [r4, #0x144]
00778928  48 71 84 e5                                      str r7, [r4, #0x148]
0077892c  4c 71 84 e5                                      str r7, [r4, #0x14c]
00778930  50 71 84 e5                                      str r7, [r4, #0x150]
00778934  54 71 84 e5                                      str r7, [r4, #0x154]
00778938  58 71 84 e5                                      str r7, [r4, #0x158]
0077893c  5c 71 84 e5                                      str r7, [r4, #0x15c]
00778940  60 71 84 e5                                      str r7, [r4, #0x160]
00778944  64 71 84 e5                                      str r7, [r4, #0x164]
00778948  1d 2e 84 e2                                      add r2, r4, #0x1d0
0077894c  20 70 83 e5                                      str r7, [r3, #0x20]
00778950  04 70 83 e5                                      str r7, [r3, #4]
00778954  08 70 83 e5                                      str r7, [r3, #8]
00778958  0c 70 83 e5                                      str r7, [r3, #0xc]
0077895c  10 70 83 e5                                      str r7, [r3, #0x10]
00778960  14 70 83 e5                                      str r7, [r3, #0x14]
00778964  18 70 83 e5                                      str r7, [r3, #0x18]
00778968  1c 70 83 e5                                      str r7, [r3, #0x1c]
0077896c  62 3f 84 e2                                      add r3, r4, #0x188
00778970  00 70 83 e5                                      str r7, [r3]
00778974  04 70 83 e5                                      str r7, [r3, #4]
00778978  08 70 83 e5                                      str r7, [r3, #8]
0077897c  0c 30 83 e2                                      add r3, r3, #0xc
00778980  02 00 53 e1                                      cmp r3, r2
00778984  f9 ff ff 1a                                      bne #0x778970
00778988  00 80 a0 e3                                      mov r8, #0
0077898c  1d 3e a0 e3                                      mov r3, #0x1d0
00778990  b3 80 84 e1                                      strh r8, [r4, r3]
00778994  d2 31 00 e3                                      movw r3, #0x1d2
00778998  b3 80 84 e1                                      strh r8, [r4, r3]
0077899c  75 3f a0 e3                                      mov r3, #0x1d4
007789a0  b3 80 84 e1                                      strh r8, [r4, r3]
007789a4  d6 31 00 e3                                      movw r3, #0x1d6
007789a8  b3 80 84 e1                                      strh r8, [r4, r3]
007789ac  08 10 a0 e1                                      mov r1, r8
007789b0  18 82 c4 e5                                      strb r8, [r4, #0x218]
007789b4  40 20 a0 e3                                      mov r2, #0x40
007789b8  76 0f 84 e2                                      add r0, r4, #0x1d8
007789bc  a7 56 ee eb                                      bl #0x30e460
007789c0  8c 12 9f e5                                      ldr r1, [pc, #0x28c]
007789c4  bf 24 a0 e3                                      mov r2, #0xbf000000
007789c8  fe 35 a0 e3                                      mov r3, #0x3f800000
007789cc  01 10 95 e7                                      ldr r1, [r5, r1]
007789d0  02 25 82 e2                                      add r2, r2, #0x800000
007789d4  01 90 a0 e3                                      mov sb, #1
007789d8  24 22 84 e5                                      str r2, [r4, #0x224]
007789dc  30 32 84 e5                                      str r3, [r4, #0x230]
007789e0  54 82 c4 e5                                      strb r8, [r4, #0x254]
007789e4  64 72 84 e5                                      str r7, [r4, #0x264]
007789e8  d8 31 84 e5                                      str r3, [r4, #0x1d8]
007789ec  ec 31 84 e5                                      str r3, [r4, #0x1ec]
007789f0  00 32 84 e5                                      str r3, [r4, #0x200]
007789f4  14 32 84 e5                                      str r3, [r4, #0x214]
007789f8  1c 22 84 e5                                      str r2, [r4, #0x21c]
007789fc  20 22 84 e5                                      str r2, [r4, #0x220]
00778a00  28 32 84 e5                                      str r3, [r4, #0x228]
00778a04  2c 32 84 e5                                      str r3, [r4, #0x22c]
00778a08  38 82 84 e5                                      str r8, [r4, #0x238]
00778a0c  3c 82 84 e5                                      str r8, [r4, #0x23c]
00778a10  40 82 84 e5                                      str r8, [r4, #0x240]
00778a14  44 82 c4 e5                                      strb r8, [r4, #0x244]
00778a18  48 82 84 e5                                      str r8, [r4, #0x248]
00778a1c  4c 82 84 e5                                      str r8, [r4, #0x24c]
00778a20  50 82 84 e5                                      str r8, [r4, #0x250]
00778a24  58 72 84 e5                                      str r7, [r4, #0x258]
00778a28  5c 72 84 e5                                      str r7, [r4, #0x25c]
00778a2c  60 72 84 e5                                      str r7, [r4, #0x260]
00778a30  18 92 c4 e5                                      strb sb, [r4, #0x218]
00778a34  34 b2 84 e5                                      str fp, [r4, #0x234]
00778a38  00 10 91 e5                                      ldr r1, [r1]
00778a3c  04 00 a0 e1                                      mov r0, r4
00778a40  ef 7f f8 eb                                      bl #0x598a04
00778a44  30 31 94 e5                                      ldr r3, [r4, #0x130]
00778a48  04 00 a0 e1                                      mov r0, r4
00778a4c  00 20 93 e5                                      ldr r2, [r3]
00778a50  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00778a54  02 30 83 e0                                      add r3, r3, r2
00778a58  04 20 93 e5                                      ldr r2, [r3, #4]
00778a5c  09 20 82 e0                                      add r2, r2, sb
00778a60  04 20 83 e5                                      str r2, [r3, #4]
00778a64  30 71 94 e5                                      ldr r7, [r4, #0x130]
00778a68  d0 fe ff eb                                      bl #0x7785b0
00778a6c  ac 30 9b e5                                      ldr r3, [fp, #0xac]
00778a70  08 20 a0 e1                                      mov r2, r8
00778a74  10 10 a0 e3                                      mov r1, #0x10
00778a78  28 50 93 e5                                      ldr r5, [r3, #0x28]
00778a7c  05 00 a0 e1                                      mov r0, r5
00778a80  00 30 95 e5                                      ldr r3, [r5]
00778a84  88 80 95 e5                                      ldr r8, [r5, #0x88]
00778a88  0f e0 a0 e1                                      mov lr, pc
00778a8c  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00778a90  00 30 96 e5                                      ldr r3, [r6]
00778a94  06 00 a0 e1                                      mov r0, r6
00778a98  e0 a0 95 e5                                      ldr sl, [r5, #0xe0]
00778a9c  0f e0 a0 e1                                      mov lr, pc
00778aa0  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00778aa4  74 20 8d e2                                      add r2, sp, #0x74
00778aa8  00 30 a0 e1                                      mov r3, r0
00778aac  0e c0 a0 e3                                      mov ip, #0xe
00778ab0  44 00 8d e2                                      add r0, sp, #0x44
00778ab4  0a 10 a0 e1                                      mov r1, sl
00778ab8  00 c0 8d e5                                      str ip, [sp]
00778abc  04 90 8d e5                                      str sb, [sp, #4]
00778ac0  8c c7 f9 eb                                      bl #0x5ea8f8
00778ac4  44 30 9d e5                                      ldr r3, [sp, #0x44]
00778ac8  58 82 e0 e7                                      ubfx r8, r8, #4, #1
00778acc  00 00 53 e3                                      cmp r3, #0
00778ad0  04 20 93 15                                      ldrne r2, [r3, #4]
00778ad4  09 20 82 10                                      addne r2, r2, sb
00778ad8  04 20 83 15                                      strne r2, [r3, #4]
00778adc  34 01 94 e5                                      ldr r0, [r4, #0x134]
00778ae0  34 31 84 e5                                      str r3, [r4, #0x134]
00778ae4  00 00 50 e3                                      cmp r0, #0
00778ae8  00 00 00 0a                                      beq #0x778af0
00778aec  a4 92 ee eb                                      bl #0x31d584
00778af0  44 00 9d e5                                      ldr r0, [sp, #0x44]
00778af4  00 00 50 e3                                      cmp r0, #0
00778af8  00 00 00 0a                                      beq #0x778b00
00778afc  a0 92 ee eb                                      bl #0x31d584
00778b00  08 20 a0 e1                                      mov r2, r8
00778b04  05 00 a0 e1                                      mov r0, r5
00778b08  10 10 a0 e3                                      mov r1, #0x10
00778b0c  00 30 95 e5                                      ldr r3, [r5]
00778b10  4d 6f 84 e2                                      add r6, r4, #0x134
00778b14  0f e0 a0 e1                                      mov lr, pc
00778b18  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00778b1c  06 20 a0 e1                                      mov r2, r6
00778b20  40 00 8d e2                                      add r0, sp, #0x40
00778b24  00 30 a0 e3                                      mov r3, #0
00778b28  05 10 a0 e1                                      mov r1, r5
00778b2c  00 c0 95 e5                                      ldr ip, [r5]
00778b30  0f e0 a0 e1                                      mov lr, pc
00778b34  84 f0 9c e5                                      ldr pc, [ip, #0x84]
00778b38  40 30 9d e5                                      ldr r3, [sp, #0x40]
00778b3c  00 00 53 e3                                      cmp r3, #0
00778b40  04 20 93 15                                      ldrne r2, [r3, #4]
00778b44  01 20 82 12                                      addne r2, r2, #1
00778b48  04 20 83 15                                      strne r2, [r3, #4]
00778b4c  38 01 94 e5                                      ldr r0, [r4, #0x138]
00778b50  38 31 84 e5                                      str r3, [r4, #0x138]
00778b54  00 00 50 e3                                      cmp r0, #0
00778b58  00 00 00 0a                                      beq #0x778b60
00778b5c  88 92 ee eb                                      bl #0x31d584
00778b60  40 00 9d e5                                      ldr r0, [sp, #0x40]
00778b64  00 00 50 e3                                      cmp r0, #0
00778b68  00 00 00 0a                                      beq #0x778b70
00778b6c  84 92 ee eb                                      bl #0x31d584
00778b70  07 10 a0 e1                                      mov r1, r7
00778b74  3c 00 8d e2                                      add r0, sp, #0x3c
00778b78  00 30 97 e5                                      ldr r3, [r7]
00778b7c  0f e0 a0 e1                                      mov lr, pc
00778b80  f8 f0 93 e5                                      ldr pc, [r3, #0xf8]
00778b84  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00778b88  38 50 8d e2                                      add r5, sp, #0x38
00778b8c  05 00 a0 e1                                      mov r0, r5
00778b90  03 10 a0 e1                                      mov r1, r3
00778b94  00 20 a0 e3                                      mov r2, #0
00778b98  00 30 93 e5                                      ldr r3, [r3]
00778b9c  0f e0 a0 e1                                      mov lr, pc
00778ba0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00778ba4  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00778ba8  00 00 50 e3                                      cmp r0, #0
00778bac  00 00 00 0a                                      beq #0x778bb4
00778bb0  73 92 ee eb                                      bl #0x31d584
00778bb4  38 30 9d e5                                      ldr r3, [sp, #0x38]
00778bb8  00 00 53 e3                                      cmp r3, #0
00778bbc  15 00 00 0a                                      beq #0x778c18
00778bc0  04 00 93 e5                                      ldr r0, [r3, #4]
00778bc4  02 10 a0 e3                                      mov r1, #2
00778bc8  00 20 a0 e3                                      mov r2, #0
00778bcc  00 00 50 e3                                      cmp r0, #0
00778bd0  34 00 8d e5                                      str r0, [sp, #0x34]
00778bd4  00 30 90 15                                      ldrne r3, [r0]
00778bd8  01 30 83 12                                      addne r3, r3, #1
00778bdc  00 30 80 15                                      strne r3, [r0]
00778be0  34 00 9d 15                                      ldrne r0, [sp, #0x34]
00778be4  c7 58 f9 eb                                      bl #0x5cef08
00778be8  ff 3f 0f e3                                      movw r3, #0xffff
00778bec  03 00 50 e1                                      cmp r0, r3
00778bf0  4f 3f a0 e3                                      mov r3, #0x13c
00778bf4  b3 00 84 e1                                      strh r0, [r4, r3]
00778bf8  04 00 00 0a                                      beq #0x778c10
00778bfc  00 10 a0 e1                                      mov r1, r0
00778c00  06 30 a0 e1                                      mov r3, r6
00778c04  38 00 9d e5                                      ldr r0, [sp, #0x38]
00778c08  00 20 a0 e3                                      mov r2, #0
00778c0c  c4 51 f9 eb                                      bl #0x5cd324
00778c10  34 00 8d e2                                      add r0, sp, #0x34
00778c14  a7 65 ef eb                                      bl #0x3522b8
00778c18  bf 34 a0 e3                                      mov r3, #0xbf000000
00778c1c  02 35 83 e2                                      add r3, r3, #0x800000
00778c20  05 00 a0 e1                                      mov r0, r5
00778c24  5c 32 84 e5                                      str r3, [r4, #0x25c]
00778c28  58 32 84 e5                                      str r3, [r4, #0x258]
00778c2c  ed 5f ee eb                                      bl #0x310be8
00778c30  04 00 a0 e1                                      mov r0, r4
00778c34  4c d0 8d e2                                      add sp, sp, #0x4c
00778c38  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00778c3c  08 d0 8d e2                                      add sp, sp, #8
00778c40  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00778c44  3c c2 21 00 a4 33 00 00 44 2b 00 00 20 08 00 00  .byte 0x3c, 0xc2, 0x21, 0x00, 0xa4, 0x33, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x20, 0x08, 0x00, 0x00
00778c54  04 0d 00 00                                      .byte 0x04, 0x0d, 0x00, 0x00

; FUNCTION 0x00778c58, declared_size=988, range_size=988, mode=arm
; class-group: gameswf::scene_node
; alias: _ZN7gameswf10scene_nodeC2EPNS_6playerEPN6glitch5scene10ISceneNodeENS3_4core11dimension2dIiEE
; demangled: gameswf::scene_node::scene_node(gameswf::player*, glitch::scene::ISceneNode*, glitch::core::dimension2d<int>)
; decoder-mode: arm
00778c58  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00778c5c  48 d0 4d e2                                      sub sp, sp, #0x48
00778c60  0c e0 8d e2                                      add lr, sp, #0xc
00778c64  00 50 a0 e3                                      mov r5, #0
00778c68  fe c5 a0 e3                                      mov ip, #0x3f800000
00778c6c  01 70 a0 e1                                      mov r7, r1
00778c70  03 60 a0 e1                                      mov r6, r3
00778c74  04 10 81 e2                                      add r1, r1, #4
00778c78  28 30 8d e2                                      add r3, sp, #0x28
00778c7c  00 e0 8d e5                                      str lr, [sp]
00778c80  02 90 a0 e1                                      mov sb, r2
00778c84  1c e0 8d e2                                      add lr, sp, #0x1c
00778c88  00 20 e0 e3                                      mvn r2, #0
00778c8c  00 40 a0 e1                                      mov r4, r0
00778c90  24 c0 8d e5                                      str ip, [sp, #0x24]
00778c94  04 e0 8d e5                                      str lr, [sp, #4]
00778c98  18 c0 8d e5                                      str ip, [sp, #0x18]
00778c9c  1c c0 8d e5                                      str ip, [sp, #0x1c]
00778ca0  20 c0 8d e5                                      str ip, [sp, #0x20]
00778ca4  28 50 8d e5                                      str r5, [sp, #0x28]
00778ca8  2c 50 8d e5                                      str r5, [sp, #0x2c]
00778cac  30 50 8d e5                                      str r5, [sp, #0x30]
00778cb0  0c 50 8d e5                                      str r5, [sp, #0xc]
00778cb4  10 50 8d e5                                      str r5, [sp, #0x10]
00778cb8  14 50 8d e5                                      str r5, [sp, #0x14]
00778cbc  ff 80 f8 eb                                      bl #0x5990c0
00778cc0  00 30 97 e5                                      ldr r3, [r7]
00778cc4  60 83 9f e5                                      ldr r8, [pc, #0x360]
00778cc8  59 2f 84 e2                                      add r2, r4, #0x164
00778ccc  00 30 84 e5                                      str r3, [r4]
00778cd0  10 10 97 e5                                      ldr r1, [r7, #0x10]
00778cd4  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
00778cd8  00 00 a0 e3                                      mov r0, #0
00778cdc  08 80 8f e0                                      add r8, pc, r8
00778ce0  03 10 84 e7                                      str r1, [r4, r3]
00778ce4  00 30 94 e5                                      ldr r3, [r4]
00778ce8  14 e0 97 e5                                      ldr lr, [r7, #0x14]
00778cec  1d 1e 84 e2                                      add r1, r4, #0x1d0
00778cf0  0c c0 13 e5                                      ldr ip, [r3, #-0xc]
00778cf4  05 70 a0 e1                                      mov r7, r5
00778cf8  62 3f 84 e2                                      add r3, r4, #0x188
00778cfc  0c e0 84 e7                                      str lr, [r4, ip]
00778d00  4f cf a0 e3                                      mov ip, #0x13c
00778d04  00 e0 e0 e3                                      mvn lr, #0
00778d08  38 01 84 e5                                      str r0, [r4, #0x138]
00778d0c  bc e0 84 e1                                      strh lr, [r4, ip]
00778d10  30 61 84 e5                                      str r6, [r4, #0x130]
00778d14  34 01 84 e5                                      str r0, [r4, #0x134]
00778d18  40 51 84 e5                                      str r5, [r4, #0x140]
00778d1c  44 51 84 e5                                      str r5, [r4, #0x144]
00778d20  48 51 84 e5                                      str r5, [r4, #0x148]
00778d24  4c 51 84 e5                                      str r5, [r4, #0x14c]
00778d28  50 51 84 e5                                      str r5, [r4, #0x150]
00778d2c  54 51 84 e5                                      str r5, [r4, #0x154]
00778d30  58 51 84 e5                                      str r5, [r4, #0x158]
00778d34  5c 51 84 e5                                      str r5, [r4, #0x15c]
00778d38  60 51 84 e5                                      str r5, [r4, #0x160]
00778d3c  64 51 84 e5                                      str r5, [r4, #0x164]
00778d40  20 50 82 e5                                      str r5, [r2, #0x20]
00778d44  04 50 82 e5                                      str r5, [r2, #4]
00778d48  08 50 82 e5                                      str r5, [r2, #8]
00778d4c  0c 50 82 e5                                      str r5, [r2, #0xc]
00778d50  10 50 82 e5                                      str r5, [r2, #0x10]
00778d54  14 50 82 e5                                      str r5, [r2, #0x14]
00778d58  18 50 82 e5                                      str r5, [r2, #0x18]
00778d5c  1c 50 82 e5                                      str r5, [r2, #0x1c]
00778d60  00 70 83 e5                                      str r7, [r3]
00778d64  04 70 83 e5                                      str r7, [r3, #4]
00778d68  08 70 83 e5                                      str r7, [r3, #8]
00778d6c  0c 30 83 e2                                      add r3, r3, #0xc
00778d70  01 00 53 e1                                      cmp r3, r1
00778d74  f9 ff ff 1a                                      bne #0x778d60
00778d78  00 50 a0 e3                                      mov r5, #0
00778d7c  1d 3e a0 e3                                      mov r3, #0x1d0
00778d80  b3 50 84 e1                                      strh r5, [r4, r3]
00778d84  d2 31 00 e3                                      movw r3, #0x1d2
00778d88  b3 50 84 e1                                      strh r5, [r4, r3]
00778d8c  75 3f a0 e3                                      mov r3, #0x1d4
00778d90  b3 50 84 e1                                      strh r5, [r4, r3]
00778d94  d6 31 00 e3                                      movw r3, #0x1d6
00778d98  b3 50 84 e1                                      strh r5, [r4, r3]
00778d9c  05 10 a0 e1                                      mov r1, r5
00778da0  18 52 c4 e5                                      strb r5, [r4, #0x218]
00778da4  40 20 a0 e3                                      mov r2, #0x40
00778da8  76 0f 84 e2                                      add r0, r4, #0x1d8
00778dac  ab 55 ee eb                                      bl #0x30e460
00778db0  78 12 9f e5                                      ldr r1, [pc, #0x278]
00778db4  bf 24 a0 e3                                      mov r2, #0xbf000000
00778db8  fe 35 a0 e3                                      mov r3, #0x3f800000
00778dbc  01 10 98 e7                                      ldr r1, [r8, r1]
00778dc0  02 25 82 e2                                      add r2, r2, #0x800000
00778dc4  01 80 a0 e3                                      mov r8, #1
00778dc8  24 22 84 e5                                      str r2, [r4, #0x224]
00778dcc  30 32 84 e5                                      str r3, [r4, #0x230]
00778dd0  54 52 c4 e5                                      strb r5, [r4, #0x254]
00778dd4  64 72 84 e5                                      str r7, [r4, #0x264]
00778dd8  d8 31 84 e5                                      str r3, [r4, #0x1d8]
00778ddc  ec 31 84 e5                                      str r3, [r4, #0x1ec]
00778de0  00 32 84 e5                                      str r3, [r4, #0x200]
00778de4  14 32 84 e5                                      str r3, [r4, #0x214]
00778de8  1c 22 84 e5                                      str r2, [r4, #0x21c]
00778dec  20 22 84 e5                                      str r2, [r4, #0x220]
00778df0  28 32 84 e5                                      str r3, [r4, #0x228]
00778df4  2c 32 84 e5                                      str r3, [r4, #0x22c]
00778df8  34 92 84 e5                                      str sb, [r4, #0x234]
00778dfc  38 52 84 e5                                      str r5, [r4, #0x238]
00778e00  3c 52 84 e5                                      str r5, [r4, #0x23c]
00778e04  40 52 84 e5                                      str r5, [r4, #0x240]
00778e08  44 52 c4 e5                                      strb r5, [r4, #0x244]
00778e0c  48 52 84 e5                                      str r5, [r4, #0x248]
00778e10  4c 52 84 e5                                      str r5, [r4, #0x24c]
00778e14  50 52 84 e5                                      str r5, [r4, #0x250]
00778e18  58 72 84 e5                                      str r7, [r4, #0x258]
00778e1c  5c 72 84 e5                                      str r7, [r4, #0x25c]
00778e20  60 72 84 e5                                      str r7, [r4, #0x260]
00778e24  18 82 c4 e5                                      strb r8, [r4, #0x218]
00778e28  00 10 91 e5                                      ldr r1, [r1]
00778e2c  04 00 a0 e1                                      mov r0, r4
00778e30  f3 7e f8 eb                                      bl #0x598a04
00778e34  30 31 94 e5                                      ldr r3, [r4, #0x130]
00778e38  04 00 a0 e1                                      mov r0, r4
00778e3c  00 20 93 e5                                      ldr r2, [r3]
00778e40  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00778e44  02 30 83 e0                                      add r3, r3, r2
00778e48  04 20 93 e5                                      ldr r2, [r3, #4]
00778e4c  08 20 82 e0                                      add r2, r2, r8
00778e50  04 20 83 e5                                      str r2, [r3, #4]
00778e54  30 71 94 e5                                      ldr r7, [r4, #0x130]
00778e58  d4 fd ff eb                                      bl #0x7785b0
00778e5c  ac 30 99 e5                                      ldr r3, [sb, #0xac]
00778e60  05 20 a0 e1                                      mov r2, r5
00778e64  10 10 a0 e3                                      mov r1, #0x10
00778e68  28 50 93 e5                                      ldr r5, [r3, #0x28]
00778e6c  05 00 a0 e1                                      mov r0, r5
00778e70  00 30 95 e5                                      ldr r3, [r5]
00778e74  88 a0 95 e5                                      ldr sl, [r5, #0x88]
00778e78  0f e0 a0 e1                                      mov lr, pc
00778e7c  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00778e80  00 30 96 e5                                      ldr r3, [r6]
00778e84  06 00 a0 e1                                      mov r0, r6
00778e88  e0 90 95 e5                                      ldr sb, [r5, #0xe0]
00778e8c  0f e0 a0 e1                                      mov lr, pc
00778e90  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00778e94  68 20 8d e2                                      add r2, sp, #0x68
00778e98  00 30 a0 e1                                      mov r3, r0
00778e9c  0e c0 a0 e3                                      mov ip, #0xe
00778ea0  44 00 8d e2                                      add r0, sp, #0x44
00778ea4  09 10 a0 e1                                      mov r1, sb
00778ea8  00 c0 8d e5                                      str ip, [sp]
00778eac  04 80 8d e5                                      str r8, [sp, #4]
00778eb0  90 c6 f9 eb                                      bl #0x5ea8f8
00778eb4  44 30 9d e5                                      ldr r3, [sp, #0x44]
00778eb8  5a a2 e0 e7                                      ubfx sl, sl, #4, #1
00778ebc  00 00 53 e3                                      cmp r3, #0
00778ec0  04 20 93 15                                      ldrne r2, [r3, #4]
00778ec4  08 20 82 10                                      addne r2, r2, r8
00778ec8  04 20 83 15                                      strne r2, [r3, #4]
00778ecc  34 01 94 e5                                      ldr r0, [r4, #0x134]
00778ed0  34 31 84 e5                                      str r3, [r4, #0x134]
00778ed4  00 00 50 e3                                      cmp r0, #0
00778ed8  00 00 00 0a                                      beq #0x778ee0
00778edc  a8 91 ee eb                                      bl #0x31d584
00778ee0  44 00 9d e5                                      ldr r0, [sp, #0x44]
00778ee4  00 00 50 e3                                      cmp r0, #0
00778ee8  00 00 00 0a                                      beq #0x778ef0
00778eec  a4 91 ee eb                                      bl #0x31d584
00778ef0  0a 20 a0 e1                                      mov r2, sl
00778ef4  05 00 a0 e1                                      mov r0, r5
00778ef8  10 10 a0 e3                                      mov r1, #0x10
00778efc  00 30 95 e5                                      ldr r3, [r5]
00778f00  4d 6f 84 e2                                      add r6, r4, #0x134
00778f04  0f e0 a0 e1                                      mov lr, pc
00778f08  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00778f0c  06 20 a0 e1                                      mov r2, r6
00778f10  40 00 8d e2                                      add r0, sp, #0x40
00778f14  00 30 a0 e3                                      mov r3, #0
00778f18  05 10 a0 e1                                      mov r1, r5
00778f1c  00 c0 95 e5                                      ldr ip, [r5]
00778f20  0f e0 a0 e1                                      mov lr, pc
00778f24  84 f0 9c e5                                      ldr pc, [ip, #0x84]
00778f28  40 30 9d e5                                      ldr r3, [sp, #0x40]
00778f2c  00 00 53 e3                                      cmp r3, #0
00778f30  04 20 93 15                                      ldrne r2, [r3, #4]
00778f34  01 20 82 12                                      addne r2, r2, #1
00778f38  04 20 83 15                                      strne r2, [r3, #4]
00778f3c  38 01 94 e5                                      ldr r0, [r4, #0x138]
00778f40  38 31 84 e5                                      str r3, [r4, #0x138]
00778f44  00 00 50 e3                                      cmp r0, #0
00778f48  00 00 00 0a                                      beq #0x778f50
00778f4c  8c 91 ee eb                                      bl #0x31d584
00778f50  40 00 9d e5                                      ldr r0, [sp, #0x40]
00778f54  00 00 50 e3                                      cmp r0, #0
00778f58  00 00 00 0a                                      beq #0x778f60
00778f5c  88 91 ee eb                                      bl #0x31d584
00778f60  07 10 a0 e1                                      mov r1, r7
00778f64  3c 00 8d e2                                      add r0, sp, #0x3c
00778f68  00 30 97 e5                                      ldr r3, [r7]
00778f6c  0f e0 a0 e1                                      mov lr, pc
00778f70  f8 f0 93 e5                                      ldr pc, [r3, #0xf8]
00778f74  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00778f78  38 50 8d e2                                      add r5, sp, #0x38
00778f7c  05 00 a0 e1                                      mov r0, r5
00778f80  03 10 a0 e1                                      mov r1, r3
00778f84  00 20 a0 e3                                      mov r2, #0
00778f88  00 30 93 e5                                      ldr r3, [r3]
00778f8c  0f e0 a0 e1                                      mov lr, pc
00778f90  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00778f94  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00778f98  00 00 50 e3                                      cmp r0, #0
00778f9c  00 00 00 0a                                      beq #0x778fa4
00778fa0  77 91 ee eb                                      bl #0x31d584
00778fa4  38 30 9d e5                                      ldr r3, [sp, #0x38]
00778fa8  00 00 53 e3                                      cmp r3, #0
00778fac  15 00 00 0a                                      beq #0x779008
00778fb0  04 00 93 e5                                      ldr r0, [r3, #4]
00778fb4  02 10 a0 e3                                      mov r1, #2
00778fb8  00 20 a0 e3                                      mov r2, #0
00778fbc  00 00 50 e3                                      cmp r0, #0
00778fc0  34 00 8d e5                                      str r0, [sp, #0x34]
00778fc4  00 30 90 15                                      ldrne r3, [r0]
00778fc8  01 30 83 12                                      addne r3, r3, #1
00778fcc  00 30 80 15                                      strne r3, [r0]
00778fd0  34 00 9d 15                                      ldrne r0, [sp, #0x34]
00778fd4  cb 57 f9 eb                                      bl #0x5cef08
00778fd8  ff 3f 0f e3                                      movw r3, #0xffff
00778fdc  03 00 50 e1                                      cmp r0, r3
00778fe0  4f 3f a0 e3                                      mov r3, #0x13c
00778fe4  b3 00 84 e1                                      strh r0, [r4, r3]
00778fe8  04 00 00 0a                                      beq #0x779000
00778fec  00 10 a0 e1                                      mov r1, r0
00778ff0  06 30 a0 e1                                      mov r3, r6
00778ff4  38 00 9d e5                                      ldr r0, [sp, #0x38]
00778ff8  00 20 a0 e3                                      mov r2, #0
00778ffc  c8 50 f9 eb                                      bl #0x5cd324
00779000  34 00 8d e2                                      add r0, sp, #0x34
00779004  ab 64 ef eb                                      bl #0x3522b8
00779008  bf 34 a0 e3                                      mov r3, #0xbf000000
0077900c  02 35 83 e2                                      add r3, r3, #0x800000
00779010  05 00 a0 e1                                      mov r0, r5
00779014  5c 32 84 e5                                      str r3, [r4, #0x25c]
00779018  58 32 84 e5                                      str r3, [r4, #0x258]
0077901c  f1 5e ee eb                                      bl #0x310be8
00779020  04 00 a0 e1                                      mov r0, r4
00779024  48 d0 8d e2                                      add sp, sp, #0x48
00779028  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
0077902c  b4 bd 21 00 04 0d 00 00                          .byte 0xb4, 0xbd, 0x21, 0x00, 0x04, 0x0d, 0x00, 0x00
