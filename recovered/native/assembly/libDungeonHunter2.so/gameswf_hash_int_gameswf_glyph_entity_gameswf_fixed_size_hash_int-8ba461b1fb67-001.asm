; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007c4418, declared_size=192, range_size=192, mode=arm
; class-group: gameswf::hash<int, gameswf::glyph_entity*, gameswf::fixed_size_hash<int> >
; alias: _ZNK7gameswf4hashIiPNS_12glyph_entityENS_15fixed_size_hashIiEEE10find_indexERKi
; demangled: gameswf::hash<int, gameswf::glyph_entity*, gameswf::fixed_size_hash<int> >::find_index(int const&) const
; decoder-mode: arm
007c4418  30 00 2d e9                                      push {r4, r5}
007c441c  00 30 90 e5                                      ldr r3, [r0]
007c4420  00 00 53 e3                                      cmp r3, #0
007c4424  02 00 00 1a                                      bne #0x7c4434
007c4428  00 00 e0 e3                                      mvn r0, #0
007c442c  30 00 bd e8                                      pop {r4, r5}
007c4430  1e ff 2f e1                                      bx lr
007c4434  05 25 01 e3                                      movw r2, #0x1505
007c4438  04 00 a0 e3                                      mov r0, #4
007c443c  01 00 40 e2                                      sub r0, r0, #1
007c4440  00 40 d1 e7                                      ldrb r4, [r1, r0]
007c4444  02 c3 a0 e1                                      lsl ip, r2, #6
007c4448  02 c8 8c e0                                      add ip, ip, r2, lsl #16
007c444c  04 c0 8c e0                                      add ip, ip, r4
007c4450  00 00 50 e3                                      cmp r0, #0
007c4454  0c 20 62 e0                                      rsb r2, r2, ip
007c4458  f7 ff ff 1a                                      bne #0x7c443c
007c445c  04 00 93 e5                                      ldr r0, [r3, #4]
007c4460  01 00 72 e3                                      cmn r2, #1
007c4464  02 29 e0 03                                      mvneq r2, #0x8000
007c4468  00 40 02 e0                                      and r4, r2, r0
007c446c  84 c0 a0 e1                                      lsl ip, r4, #1
007c4470  01 c0 8c e2                                      add ip, ip, #1
007c4474  8c 51 93 e7                                      ldr r5, [r3, ip, lsl #3]
007c4478  8c c1 83 e0                                      add ip, r3, ip, lsl #3
007c447c  02 00 75 e3                                      cmn r5, #2
007c4480  e8 ff ff 0a                                      beq #0x7c4428
007c4484  04 50 9c e5                                      ldr r5, [ip, #4]
007c4488  01 00 75 e3                                      cmn r5, #1
007c448c  04 00 a0 01                                      moveq r0, r4
007c4490  06 00 00 0a                                      beq #0x7c44b0
007c4494  05 00 00 e0                                      and r0, r0, r5
007c4498  04 00 50 e1                                      cmp r0, r4
007c449c  e1 ff ff 1a                                      bne #0x7c4428
007c44a0  02 00 00 ea                                      b #0x7c44b0
007c44a4  00 c2 83 e0                                      add ip, r3, r0, lsl #4
007c44a8  08 c0 8c e2                                      add ip, ip, #8
007c44ac  04 50 9c e5                                      ldr r5, [ip, #4]
007c44b0  05 00 52 e1                                      cmp r2, r5
007c44b4  03 00 00 1a                                      bne #0x7c44c8
007c44b8  08 50 9c e5                                      ldr r5, [ip, #8]
007c44bc  00 40 91 e5                                      ldr r4, [r1]
007c44c0  04 00 55 e1                                      cmp r5, r4
007c44c4  d8 ff ff 0a                                      beq #0x7c442c
007c44c8  00 00 9c e5                                      ldr r0, [ip]
007c44cc  01 00 70 e3                                      cmn r0, #1
007c44d0  f3 ff ff 1a                                      bne #0x7c44a4
007c44d4  d4 ff ff ea                                      b #0x7c442c

; FUNCTION 0x007c45c8, declared_size=128, range_size=128, mode=arm
; class-group: gameswf::hash<int, gameswf::glyph_entity*, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiPNS_12glyph_entityENS_15fixed_size_hashIiEEE5clearEv
; demangled: gameswf::hash<int, gameswf::glyph_entity*, gameswf::fixed_size_hash<int> >::clear()
; decoder-mode: arm
007c45c8  70 40 2d e9                                      push {r4, r5, r6, lr}
007c45cc  00 40 a0 e1                                      mov r4, r0
007c45d0  00 00 90 e5                                      ldr r0, [r0]
007c45d4  00 00 50 e3                                      cmp r0, #0
007c45d8  19 00 00 0a                                      beq #0x7c4644
007c45dc  04 10 90 e5                                      ldr r1, [r0, #4]
007c45e0  00 00 51 e3                                      cmp r1, #0
007c45e4  11 00 00 ba                                      blt #0x7c4630
007c45e8  00 20 a0 e3                                      mov r2, #0
007c45ec  08 30 a0 e3                                      mov r3, #8
007c45f0  01 60 e0 e3                                      mvn r6, #1
007c45f4  02 50 a0 e1                                      mov r5, r2
007c45f8  03 e0 90 e7                                      ldr lr, [r0, r3]
007c45fc  01 20 82 e2                                      add r2, r2, #1
007c4600  03 c0 80 e0                                      add ip, r0, r3
007c4604  02 00 7e e3                                      cmn lr, #2
007c4608  04 00 00 0a                                      beq #0x7c4620
007c460c  04 e0 9c e5                                      ldr lr, [ip, #4]
007c4610  01 00 7e e3                                      cmn lr, #1
007c4614  04 50 8c 15                                      strne r5, [ip, #4]
007c4618  00 60 8c 15                                      strne r6, [ip]
007c461c  00 00 94 15                                      ldrne r0, [r4]
007c4620  02 00 51 e1                                      cmp r1, r2
007c4624  10 30 83 e2                                      add r3, r3, #0x10
007c4628  f2 ff ff aa                                      bge #0x7c45f8
007c462c  04 10 90 e5                                      ldr r1, [r0, #4]
007c4630  01 12 a0 e1                                      lsl r1, r1, #4
007c4634  18 10 81 e2                                      add r1, r1, #0x18
007c4638  3e 39 fe eb                                      bl #0x752b38
007c463c  00 30 a0 e3                                      mov r3, #0
007c4640  00 30 84 e5                                      str r3, [r4]
007c4644  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007c56ec, declared_size=344, range_size=344, mode=arm
; class-group: gameswf::hash<int, gameswf::glyph_entity*, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiPNS_12glyph_entityENS_15fixed_size_hashIiEEE16set_raw_capacityEi
; demangled: gameswf::hash<int, gameswf::glyph_entity*, gameswf::fixed_size_hash<int> >::set_raw_capacity(int)
; decoder-mode: arm
007c56ec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007c56f0  00 00 51 e3                                      cmp r1, #0
007c56f4  0c d0 4d e2                                      sub sp, sp, #0xc
007c56f8  00 80 a0 e1                                      mov r8, r0
007c56fc  4d 00 00 da                                      ble #0x7c5838
007c5700  01 00 41 e2                                      sub r0, r1, #1
007c5704  96 24 ed eb                                      bl #0x30e964
007c5708  e9 21 ed eb                                      bl #0x30deb4
007c570c  18 12 07 e3                                      movw r1, #0x7218
007c5710  31 1f 43 e3                                      movt r1, #0x3f31
007c5714  5e 25 ed eb                                      bl #0x30ec94
007c5718  fe 15 a0 e3                                      mov r1, #0x3f800000
007c571c  20 25 ed eb                                      bl #0x30eba4
007c5720  69 23 ed eb                                      bl #0x30e4cc
007c5724  01 40 a0 e3                                      mov r4, #1
007c5728  14 40 a0 e1                                      lsl r4, r4, r0
007c572c  00 30 98 e5                                      ldr r3, [r8]
007c5730  04 00 54 e3                                      cmp r4, #4
007c5734  04 40 a0 b3                                      movlt r4, #4
007c5738  00 00 53 e3                                      cmp r3, #0
007c573c  03 00 00 0a                                      beq #0x7c5750
007c5740  04 30 93 e5                                      ldr r3, [r3, #4]
007c5744  01 30 83 e2                                      add r3, r3, #1
007c5748  04 00 53 e1                                      cmp r3, r4
007c574c  3a 00 00 0a                                      beq #0x7c583c
007c5750  00 50 a0 e3                                      mov r5, #0
007c5754  04 02 a0 e1                                      lsl r0, r4, #4
007c5758  08 00 80 e2                                      add r0, r0, #8
007c575c  05 10 a0 e1                                      mov r1, r5
007c5760  04 50 8d e5                                      str r5, [sp, #4]
007c5764  0c 35 fe eb                                      bl #0x752b9c
007c5768  04 00 8d e5                                      str r0, [sp, #4]
007c576c  00 50 80 e5                                      str r5, [r0]
007c5770  04 30 9d e5                                      ldr r3, [sp, #4]
007c5774  01 20 44 e2                                      sub r2, r4, #1
007c5778  01 90 e0 e3                                      mvn sb, #1
007c577c  04 20 83 e5                                      str r2, [r3, #4]
007c5780  08 30 a0 e3                                      mov r3, #8
007c5784  04 20 9d e5                                      ldr r2, [sp, #4]
007c5788  01 50 85 e2                                      add r5, r5, #1
007c578c  05 00 54 e1                                      cmp r4, r5
007c5790  03 90 82 e7                                      str sb, [r2, r3]
007c5794  10 30 83 e2                                      add r3, r3, #0x10
007c5798  f9 ff ff ca                                      bgt #0x7c5784
007c579c  00 30 98 e5                                      ldr r3, [r8]
007c57a0  00 00 53 e3                                      cmp r3, #0
007c57a4  04 a0 8d 02                                      addeq sl, sp, #4
007c57a8  1d 00 00 0a                                      beq #0x7c5824
007c57ac  04 70 93 e5                                      ldr r7, [r3, #4]
007c57b0  00 00 57 e3                                      cmp r7, #0
007c57b4  04 a0 8d b2                                      addlt sl, sp, #4
007c57b8  15 00 00 ba                                      blt #0x7c5814
007c57bc  00 60 a0 e3                                      mov r6, #0
007c57c0  08 40 a0 e3                                      mov r4, #8
007c57c4  04 a0 8d e2                                      add sl, sp, #4
007c57c8  06 b0 a0 e1                                      mov fp, r6
007c57cc  04 20 93 e7                                      ldr r2, [r3, r4]
007c57d0  01 60 86 e2                                      add r6, r6, #1
007c57d4  04 50 83 e0                                      add r5, r3, r4
007c57d8  02 00 72 e3                                      cmn r2, #2
007c57dc  08 00 00 0a                                      beq #0x7c5804
007c57e0  04 20 95 e5                                      ldr r2, [r5, #4]
007c57e4  0a 00 a0 e1                                      mov r0, sl
007c57e8  08 10 85 e2                                      add r1, r5, #8
007c57ec  01 00 72 e3                                      cmn r2, #1
007c57f0  03 00 00 0a                                      beq #0x7c5804
007c57f4  0c 20 85 e2                                      add r2, r5, #0xc
007c57f8  1e 00 00 eb                                      bl #0x7c5878
007c57fc  00 0a 85 e8                                      stm r5, {sb, fp}
007c5800  00 30 98 e5                                      ldr r3, [r8]
007c5804  06 00 57 e1                                      cmp r7, r6
007c5808  10 40 84 e2                                      add r4, r4, #0x10
007c580c  ee ff ff aa                                      bge #0x7c57cc
007c5810  04 70 93 e5                                      ldr r7, [r3, #4]
007c5814  07 12 a0 e1                                      lsl r1, r7, #4
007c5818  03 00 a0 e1                                      mov r0, r3
007c581c  18 10 81 e2                                      add r1, r1, #0x18
007c5820  c4 34 fe eb                                      bl #0x752b38
007c5824  04 30 9d e5                                      ldr r3, [sp, #4]
007c5828  0a 00 a0 e1                                      mov r0, sl
007c582c  00 30 88 e5                                      str r3, [r8]
007c5830  00 30 a0 e3                                      mov r3, #0
007c5834  04 30 8d e5                                      str r3, [sp, #4]
007c5838  62 fb ff eb                                      bl #0x7c45c8
007c583c  0c d0 8d e2                                      add sp, sp, #0xc
007c5840  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007c5844, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::hash<int, gameswf::glyph_entity*, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiPNS_12glyph_entityENS_15fixed_size_hashIiEEE12check_expandEv
; demangled: gameswf::hash<int, gameswf::glyph_entity*, gameswf::fixed_size_hash<int> >::check_expand()
; decoder-mode: arm
007c5844  00 30 90 e5                                      ldr r3, [r0]
007c5848  00 00 53 e3                                      cmp r3, #0
007c584c  07 00 00 0a                                      beq #0x7c5870
007c5850  04 10 93 e5                                      ldr r1, [r3, #4]
007c5854  00 30 93 e5                                      ldr r3, [r3]
007c5858  01 10 81 e2                                      add r1, r1, #1
007c585c  81 10 a0 e1                                      lsl r1, r1, #1
007c5860  83 30 83 e0                                      add r3, r3, r3, lsl #1
007c5864  01 00 53 e1                                      cmp r3, r1
007c5868  1e ff 2f d1                                      bxle lr
007c586c  9e ff ff ea                                      b #0x7c56ec
007c5870  08 10 a0 e3                                      mov r1, #8
007c5874  9c ff ff ea                                      b #0x7c56ec

; FUNCTION 0x007c5878, declared_size=356, range_size=356, mode=arm
; class-group: gameswf::hash<int, gameswf::glyph_entity*, gameswf::fixed_size_hash<int> >
; alias: _ZN7gameswf4hashIiPNS_12glyph_entityENS_15fixed_size_hashIiEEE3addERKiRKS2_
; demangled: gameswf::hash<int, gameswf::glyph_entity*, gameswf::fixed_size_hash<int> >::add(int const&, gameswf::glyph_entity* const&)
; decoder-mode: arm
007c5878  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
007c587c  00 60 a0 e1                                      mov r6, r0
007c5880  01 40 a0 e1                                      mov r4, r1
007c5884  02 50 a0 e1                                      mov r5, r2
007c5888  ed ff ff eb                                      bl #0x7c5844
007c588c  00 10 96 e5                                      ldr r1, [r6]
007c5890  05 25 01 e3                                      movw r2, #0x1505
007c5894  04 30 a0 e3                                      mov r3, #4
007c5898  00 00 91 e5                                      ldr r0, [r1]
007c589c  01 00 80 e2                                      add r0, r0, #1
007c58a0  00 00 81 e5                                      str r0, [r1]
007c58a4  01 30 43 e2                                      sub r3, r3, #1
007c58a8  03 00 d4 e7                                      ldrb r0, [r4, r3]
007c58ac  02 13 a0 e1                                      lsl r1, r2, #6
007c58b0  02 18 81 e0                                      add r1, r1, r2, lsl #16
007c58b4  00 10 81 e0                                      add r1, r1, r0
007c58b8  00 00 53 e3                                      cmp r3, #0
007c58bc  01 20 62 e0                                      rsb r2, r2, r1
007c58c0  f7 ff ff 1a                                      bne #0x7c58a4
007c58c4  00 30 96 e5                                      ldr r3, [r6]
007c58c8  01 00 72 e3                                      cmn r2, #1
007c58cc  02 29 e0 03                                      mvneq r2, #0x8000
007c58d0  04 70 93 e5                                      ldr r7, [r3, #4]
007c58d4  07 60 02 e0                                      and r6, r2, r7
007c58d8  86 a0 a0 e1                                      lsl sl, r6, #1
007c58dc  01 a0 8a e2                                      add sl, sl, #1
007c58e0  8a 91 93 e7                                      ldr sb, [r3, sl, lsl #3]
007c58e4  8a 81 83 e0                                      add r8, r3, sl, lsl #3
007c58e8  02 00 79 e3                                      cmn sb, #2
007c58ec  00 10 e0 03                                      mvneq r1, #0
007c58f0  8a 11 83 07                                      streq r1, [r3, sl, lsl #3]
007c58f4  24 00 00 0a                                      beq #0x7c598c
007c58f8  04 b0 98 e5                                      ldr fp, [r8, #4]
007c58fc  01 00 7b e3                                      cmn fp, #1
007c5900  06 10 a0 11                                      movne r1, r6
007c5904  20 00 00 0a                                      beq #0x7c598c
007c5908  01 10 81 e2                                      add r1, r1, #1
007c590c  07 10 01 e0                                      and r1, r1, r7
007c5910  81 00 a0 e1                                      lsl r0, r1, #1
007c5914  01 00 80 e2                                      add r0, r0, #1
007c5918  80 c1 93 e7                                      ldr ip, [r3, r0, lsl #3]
007c591c  80 01 83 e0                                      add r0, r3, r0, lsl #3
007c5920  02 00 7c e3                                      cmn ip, #2
007c5924  f7 ff ff 1a                                      bne #0x7c5908
007c5928  0b 70 07 e0                                      and r7, r7, fp
007c592c  06 00 57 e1                                      cmp r7, r6
007c5930  1b 00 00 0a                                      beq #0x7c59a4
007c5934  87 70 a0 e1                                      lsl r7, r7, #1
007c5938  01 b0 87 e2                                      add fp, r7, #1
007c593c  8b 71 93 e7                                      ldr r7, [r3, fp, lsl #3]
007c5940  8b b1 83 e0                                      add fp, r3, fp, lsl #3
007c5944  06 00 57 e1                                      cmp r7, r6
007c5948  f9 ff ff 1a                                      bne #0x7c5934
007c594c  00 90 80 e5                                      str sb, [r0]
007c5950  04 c0 98 e5                                      ldr ip, [r8, #4]
007c5954  04 c0 80 e5                                      str ip, [r0, #4]
007c5958  08 c0 98 e5                                      ldr ip, [r8, #8]
007c595c  08 c0 80 e5                                      str ip, [r0, #8]
007c5960  0c c0 98 e5                                      ldr ip, [r8, #0xc]
007c5964  0c c0 80 e5                                      str ip, [r0, #0xc]
007c5968  00 10 8b e5                                      str r1, [fp]
007c596c  00 10 94 e5                                      ldr r1, [r4]
007c5970  08 10 88 e5                                      str r1, [r8, #8]
007c5974  00 10 95 e5                                      ldr r1, [r5]
007c5978  04 20 88 e5                                      str r2, [r8, #4]
007c597c  00 20 e0 e3                                      mvn r2, #0
007c5980  0c 10 88 e5                                      str r1, [r8, #0xc]
007c5984  8a 21 83 e7                                      str r2, [r3, sl, lsl #3]
007c5988  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
007c598c  04 20 88 e5                                      str r2, [r8, #4]
007c5990  00 30 94 e5                                      ldr r3, [r4]
007c5994  08 30 88 e5                                      str r3, [r8, #8]
007c5998  00 30 95 e5                                      ldr r3, [r5]
007c599c  0c 30 88 e5                                      str r3, [r8, #0xc]
007c59a0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
007c59a4  00 90 80 e5                                      str sb, [r0]
007c59a8  04 c0 98 e5                                      ldr ip, [r8, #4]
007c59ac  04 c0 80 e5                                      str ip, [r0, #4]
007c59b0  08 c0 98 e5                                      ldr ip, [r8, #8]
007c59b4  08 c0 80 e5                                      str ip, [r0, #8]
007c59b8  0c c0 98 e5                                      ldr ip, [r8, #0xc]
007c59bc  0c c0 80 e5                                      str ip, [r0, #0xc]
007c59c0  00 00 94 e5                                      ldr r0, [r4]
007c59c4  08 00 88 e5                                      str r0, [r8, #8]
007c59c8  00 00 95 e5                                      ldr r0, [r5]
007c59cc  0c 00 88 e5                                      str r0, [r8, #0xc]
007c59d0  8a 11 83 e7                                      str r1, [r3, sl, lsl #3]
007c59d4  04 20 88 e5                                      str r2, [r8, #4]
007c59d8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
