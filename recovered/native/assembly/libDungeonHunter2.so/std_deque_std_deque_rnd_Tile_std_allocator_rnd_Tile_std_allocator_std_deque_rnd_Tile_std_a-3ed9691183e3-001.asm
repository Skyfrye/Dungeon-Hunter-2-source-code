; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004851ec, declared_size=1496, range_size=1496, mode=arm
; class-group: std::deque<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >
; alias: _ZNSt5dequeIS_IPN3rnd4TileESaIS2_EESaIS4_EE8_M_eraseENSt4priv15_Deque_iteratorIS4_St16_Nonconst_traitsIS4_EEESB_RKSt11__true_type
; demangled: std::deque<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >::_M_erase(std::priv::_Deque_iterator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::_Nonconst_traits<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >, std::priv::_Deque_iterator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::_Nonconst_traits<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >, std::__true_type const&)
; decoder-mode: arm
004851ec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004851f0  5c d0 4d e2                                      sub sp, sp, #0x5c
004851f4  48 c0 8d e2                                      add ip, sp, #0x48
004851f8  04 00 8d e5                                      str r0, [sp, #4]
004851fc  03 a0 a0 e1                                      mov sl, r3
00485200  01 60 a0 e1                                      mov r6, r1
00485204  02 80 a0 e1                                      mov r8, r2
00485208  0f 00 92 e8                                      ldm r2, {r0, r1, r2, r3}
0048520c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00485210  0c 10 a0 e1                                      mov r1, ip
00485214  0a 00 a0 e1                                      mov r0, sl
00485218  a7 fa ff eb                                      bl #0x483cbc
0048521c  38 c0 8d e2                                      add ip, sp, #0x38
00485220  10 00 8d e5                                      str r0, [sp, #0x10]
00485224  0f 00 96 e8                                      ldm r6, {r0, r1, r2, r3}
00485228  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0048522c  0c 10 a0 e1                                      mov r1, ip
00485230  08 00 a0 e1                                      mov r0, r8
00485234  a0 fa ff eb                                      bl #0x483cbc
00485238  10 10 86 e2                                      add r1, r6, #0x10
0048523c  00 10 8d e5                                      str r1, [sp]
00485240  0c 00 8d e5                                      str r0, [sp, #0xc]
00485244  28 c0 8d e2                                      add ip, sp, #0x28
00485248  0f 00 96 e8                                      ldm r6, {r0, r1, r2, r3}
0048524c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00485250  0c 10 a0 e1                                      mov r1, ip
00485254  00 00 9d e5                                      ldr r0, [sp]
00485258  97 fa ff eb                                      bl #0x483cbc
0048525c  10 20 9d e5                                      ldr r2, [sp, #0x10]
00485260  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00485264  00 00 62 e0                                      rsb r0, r2, r0
00485268  a0 0f 80 e0                                      add r0, r0, r0, lsr #31
0048526c  c0 00 53 e1                                      cmp r3, r0, asr #1
00485270  4d 00 00 ca                                      bgt #0x4853ac
00485274  08 c0 9a e5                                      ldr ip, [sl, #8]
00485278  00 40 98 e5                                      ldr r4, [r8]
0048527c  00 20 96 e5                                      ldr r2, [r6]
00485280  00 50 9a e5                                      ldr r5, [sl]
00485284  0c 30 98 e5                                      ldr r3, [r8, #0xc]
00485288  04 b0 98 e5                                      ldr fp, [r8, #4]
0048528c  08 c0 8d e5                                      str ip, [sp, #8]
00485290  0c 10 9a e5                                      ldr r1, [sl, #0xc]
00485294  02 00 54 e1                                      cmp r4, r2
00485298  00 10 8d e5                                      str r1, [sp]
0048529c  04 90 9a e5                                      ldr sb, [sl, #4]
004852a0  2f 01 00 0a                                      beq #0x485764
004852a4  0b 00 54 e1                                      cmp r4, fp
004852a8  04 b0 13 05                                      ldreq fp, [r3, #-4]
004852ac  03 a0 a0 11                                      movne sl, r3
004852b0  04 a0 43 02                                      subeq sl, r3, #4
004852b4  78 40 8b 02                                      addeq r4, fp, #0x78
004852b8  05 00 59 e1                                      cmp sb, r5
004852bc  28 40 44 e2                                      sub r4, r4, #0x28
004852c0  38 01 00 0a                                      beq #0x4857a8
004852c4  0c 20 96 e5                                      ldr r2, [r6, #0xc]
004852c8  28 50 45 e2                                      sub r5, r5, #0x28
004852cc  0a 00 52 e1                                      cmp r2, sl
004852d0  e3 00 00 0a                                      beq #0x485664
004852d4  00 10 a0 93                                      movls r1, #0
004852d8  01 10 a0 83                                      movhi r1, #1
004852dc  00 00 51 e3                                      cmp r1, #0
004852e0  bd 00 00 0a                                      beq #0x4855dc
004852e4  00 10 9d e5                                      ldr r1, [sp]
004852e8  01 00 53 e1                                      cmp r3, r1
004852ec  28 01 00 0a                                      beq #0x485794
004852f0  00 10 a0 93                                      movls r1, #0
004852f4  01 10 a0 83                                      movhi r1, #1
004852f8  00 00 51 e3                                      cmp r1, #0
004852fc  00 80 9d 15                                      ldrne r8, [sp]
00485300  ae 00 00 1a                                      bne #0x4855c0
00485304  08 20 9d e5                                      ldr r2, [sp, #8]
00485308  28 50 85 e2                                      add r5, r5, #0x28
0048530c  08 70 98 e5                                      ldr r7, [r8, #8]
00485310  02 00 55 e1                                      cmp r5, r2
00485314  00 c0 9d 05                                      ldreq ip, [sp]
00485318  00 40 98 e5                                      ldr r4, [r8]
0048531c  03 80 a0 e1                                      mov r8, r3
00485320  04 50 9c 05                                      ldreq r5, [ip, #4]
00485324  05 00 00 ea                                      b #0x485340
00485328  04 00 a0 e1                                      mov r0, r4
0048532c  28 40 84 e2                                      add r4, r4, #0x28
00485330  8c ff ff eb                                      bl #0x485168
00485334  07 00 54 e1                                      cmp r4, r7
00485338  04 40 b8 05                                      ldreq r4, [r8, #4]!
0048533c  78 70 84 02                                      addeq r7, r4, #0x78
00485340  04 00 55 e1                                      cmp r5, r4
00485344  f7 ff ff 1a                                      bne #0x485328
00485348  18 40 8d e2                                      add r4, sp, #0x18
0048534c  0f 00 96 e8                                      ldm r6, {r0, r1, r2, r3}
00485350  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
00485354  10 10 9d e5                                      ldr r1, [sp, #0x10]
00485358  04 00 a0 e1                                      mov r0, r4
0048535c  bc fa ff eb                                      bl #0x483e54
00485360  24 70 9d e5                                      ldr r7, [sp, #0x24]
00485364  0c 50 96 e5                                      ldr r5, [r6, #0xc]
00485368  20 90 9d e5                                      ldr sb, [sp, #0x20]
0048536c  1c a0 9d e5                                      ldr sl, [sp, #0x1c]
00485370  07 00 55 e1                                      cmp r5, r7
00485374  18 80 9d e5                                      ldr r8, [sp, #0x18]
00485378  07 00 00 2a                                      bhs #0x48539c
0048537c  00 00 95 e5                                      ldr r0, [r5]
00485380  78 10 a0 e3                                      mov r1, #0x78
00485384  04 50 85 e2                                      add r5, r5, #4
00485388  00 00 50 e3                                      cmp r0, #0
0048538c  00 00 00 0a                                      beq #0x485394
00485390  da 0e 0a eb                                      bl #0x708f00
00485394  07 00 55 e1                                      cmp r5, r7
00485398  f7 ff ff 3a                                      blo #0x48537c
0048539c  08 90 86 e5                                      str sb, [r6, #8]
004853a0  00 05 86 e8                                      stm r6, {r8, sl}
004853a4  0c 70 86 e5                                      str r7, [r6, #0xc]
004853a8  5e 00 00 ea                                      b #0x485528
004853ac  00 b0 9a e5                                      ldr fp, [sl]
004853b0  10 30 96 e5                                      ldr r3, [r6, #0x10]
004853b4  03 00 5b e1                                      cmp fp, r3
004853b8  dc 00 00 0a                                      beq #0x485730
004853bc  0c 10 9a e5                                      ldr r1, [sl, #0xc]
004853c0  00 40 98 e5                                      ldr r4, [r8]
004853c4  0b 50 a0 e1                                      mov r5, fp
004853c8  14 10 8d e5                                      str r1, [sp, #0x14]
004853cc  0c 20 98 e5                                      ldr r2, [r8, #0xc]
004853d0  08 90 9a e5                                      ldr sb, [sl, #8]
004853d4  08 20 8d e5                                      str r2, [sp, #8]
004853d8  08 70 98 e5                                      ldr r7, [r8, #8]
004853dc  00 80 a0 e3                                      mov r8, #0
004853e0  00 00 00 ea                                      b #0x4853e8
004853e4  00 b0 9a e5                                      ldr fp, [sl]
004853e8  04 00 5b e1                                      cmp fp, r4
004853ec  04 00 a0 e1                                      mov r0, r4
004853f0  a8 00 00 0a                                      beq #0x485698
004853f4  5b ff ff eb                                      bl #0x485168
004853f8  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
004853fc  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
00485400  10 c0 85 e2                                      add ip, r5, #0x10
00485404  10 e0 84 e2                                      add lr, r4, #0x10
00485408  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
0048540c  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
00485410  20 30 95 e5                                      ldr r3, [r5, #0x20]
00485414  20 30 84 e5                                      str r3, [r4, #0x20]
00485418  24 30 95 e5                                      ldr r3, [r5, #0x24]
0048541c  24 30 84 e5                                      str r3, [r4, #0x24]
00485420  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
00485424  20 80 85 e5                                      str r8, [r5, #0x20]
00485428  24 80 85 e5                                      str r8, [r5, #0x24]
0048542c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00485430  28 50 85 e2                                      add r5, r5, #0x28
00485434  05 00 59 e1                                      cmp sb, r5
00485438  14 30 9d 05                                      ldreq r3, [sp, #0x14]
0048543c  28 40 84 e2                                      add r4, r4, #0x28
00485440  04 50 b3 05                                      ldreq r5, [r3, #4]!
00485444  14 30 8d 05                                      streq r3, [sp, #0x14]
00485448  78 90 85 02                                      addeq sb, r5, #0x78
0048544c  07 00 54 e1                                      cmp r4, r7
00485450  08 c0 9d 05                                      ldreq ip, [sp, #8]
00485454  04 70 bc 05                                      ldreq r7, [ip, #4]!
00485458  08 c0 8d 05                                      streq ip, [sp, #8]
0048545c  10 30 96 e5                                      ldr r3, [r6, #0x10]
00485460  07 40 a0 01                                      moveq r4, r7
00485464  78 70 87 02                                      addeq r7, r7, #0x78
00485468  03 00 55 e1                                      cmp r5, r3
0048546c  dc ff ff 1a                                      bne #0x4853e4
00485470  00 80 9a e5                                      ldr r8, [sl]
00485474  04 00 58 e1                                      cmp r8, r4
00485478  08 50 9d 15                                      ldrne r5, [sp, #8]
0048547c  06 00 00 1a                                      bne #0x48549c
00485480  84 00 00 ea                                      b #0x485698
00485484  04 00 a0 e1                                      mov r0, r4
00485488  28 40 84 e2                                      add r4, r4, #0x28
0048548c  35 ff ff eb                                      bl #0x485168
00485490  07 00 54 e1                                      cmp r4, r7
00485494  04 40 b5 05                                      ldreq r4, [r5, #4]!
00485498  78 70 84 02                                      addeq r7, r4, #0x78
0048549c  04 00 58 e1                                      cmp r8, r4
004854a0  f7 ff ff 1a                                      bne #0x485484
004854a4  00 c0 9d e5                                      ldr ip, [sp]
004854a8  18 40 8d e2                                      add r4, sp, #0x18
004854ac  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
004854b0  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
004854b4  10 20 9d e5                                      ldr r2, [sp, #0x10]
004854b8  04 00 a0 e1                                      mov r0, r4
004854bc  00 10 62 e2                                      rsb r1, r2, #0
004854c0  63 fa ff eb                                      bl #0x483e54
004854c4  24 80 9d e5                                      ldr r8, [sp, #0x24]
004854c8  1c 30 96 e5                                      ldr r3, [r6, #0x1c]
004854cc  20 b0 9d e5                                      ldr fp, [sp, #0x20]
004854d0  1c 90 9d e5                                      ldr sb, [sp, #0x1c]
004854d4  08 00 53 e1                                      cmp r3, r8
004854d8  18 a0 9d e5                                      ldr sl, [sp, #0x18]
004854dc  0d 00 00 9a                                      bls #0x485518
004854e0  01 30 43 e2                                      sub r3, r3, #1
004854e4  03 30 68 e0                                      rsb r3, r8, r3
004854e8  03 30 c3 e3                                      bic r3, r3, #3
004854ec  04 70 88 e2                                      add r7, r8, #4
004854f0  03 70 87 e0                                      add r7, r7, r3
004854f4  08 50 a0 e1                                      mov r5, r8
004854f8  04 00 95 e5                                      ldr r0, [r5, #4]
004854fc  78 10 a0 e3                                      mov r1, #0x78
00485500  04 50 85 e2                                      add r5, r5, #4
00485504  00 00 50 e3                                      cmp r0, #0
00485508  00 00 00 0a                                      beq #0x485510
0048550c  7b 0e 0a eb                                      bl #0x708f00
00485510  07 00 55 e1                                      cmp r5, r7
00485514  f7 ff ff 1a                                      bne #0x4854f8
00485518  18 b0 86 e5                                      str fp, [r6, #0x18]
0048551c  14 90 86 e5                                      str sb, [r6, #0x14]
00485520  10 a0 86 e5                                      str sl, [r6, #0x10]
00485524  1c 80 86 e5                                      str r8, [r6, #0x1c]
00485528  0f 00 96 e8                                      ldm r6, {r0, r1, r2, r3}
0048552c  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
00485530  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00485534  04 00 a0 e1                                      mov r0, r4
00485538  45 fa ff eb                                      bl #0x483e54
0048553c  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
00485540  04 c0 9d e5                                      ldr ip, [sp, #4]
00485544  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00485548  04 00 9d e5                                      ldr r0, [sp, #4]
0048554c  5c d0 8d e2                                      add sp, sp, #0x5c
00485550  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00485554  00 70 a0 23                                      movhs r7, #0
00485558  01 70 a0 33                                      movlo r7, #1
0048555c  00 00 57 e3                                      cmp r7, #0
00485560  10 c0 84 e2                                      add ip, r4, #0x10
00485564  10 e0 85 e2                                      add lr, r5, #0x10
00485568  76 ff ff 1a                                      bne #0x485348
0048556c  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
00485570  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
00485574  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
00485578  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
0048557c  20 30 94 e5                                      ldr r3, [r4, #0x20]
00485580  04 00 5b e1                                      cmp fp, r4
00485584  20 30 85 e5                                      str r3, [r5, #0x20]
00485588  24 30 94 e5                                      ldr r3, [r4, #0x24]
0048558c  24 30 85 e5                                      str r3, [r5, #0x24]
00485590  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
00485594  24 70 84 e5                                      str r7, [r4, #0x24]
00485598  20 70 84 e5                                      str r7, [r4, #0x20]
0048559c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
004855a0  04 b0 3a 05                                      ldreq fp, [sl, #-4]!
004855a4  0c 20 96 e5                                      ldr r2, [r6, #0xc]
004855a8  78 40 8b 02                                      addeq r4, fp, #0x78
004855ac  05 00 59 e1                                      cmp sb, r5
004855b0  04 90 38 05                                      ldreq sb, [r8, #-4]!
004855b4  28 40 44 e2                                      sub r4, r4, #0x28
004855b8  78 50 89 02                                      addeq r5, sb, #0x78
004855bc  28 50 45 e2                                      sub r5, r5, #0x28
004855c0  02 00 5a e1                                      cmp sl, r2
004855c4  e2 ff ff 1a                                      bne #0x485554
004855c8  00 70 96 e5                                      ldr r7, [r6]
004855cc  04 00 57 e1                                      cmp r7, r4
004855d0  00 70 a0 93                                      movls r7, #0
004855d4  01 70 a0 83                                      movhi r7, #1
004855d8  df ff ff ea                                      b #0x48555c
004855dc  00 c0 9d e5                                      ldr ip, [sp]
004855e0  03 00 5c e1                                      cmp ip, r3
004855e4  4c 00 00 0a                                      beq #0x48571c
004855e8  00 70 a0 23                                      movhs r7, #0
004855ec  01 70 a0 33                                      movlo r7, #1
004855f0  00 00 57 e3                                      cmp r7, #0
004855f4  3a ff ff 1a                                      bne #0x4852e4
004855f8  05 00 a0 e1                                      mov r0, r5
004855fc  d9 fe ff eb                                      bl #0x485168
00485600  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
00485604  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
00485608  10 c0 84 e2                                      add ip, r4, #0x10
0048560c  10 e0 85 e2                                      add lr, r5, #0x10
00485610  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
00485614  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
00485618  20 30 94 e5                                      ldr r3, [r4, #0x20]
0048561c  0b 00 54 e1                                      cmp r4, fp
00485620  20 30 85 e5                                      str r3, [r5, #0x20]
00485624  24 30 94 e5                                      ldr r3, [r4, #0x24]
00485628  24 30 85 e5                                      str r3, [r5, #0x24]
0048562c  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
00485630  24 70 84 e5                                      str r7, [r4, #0x24]
00485634  20 70 84 e5                                      str r7, [r4, #0x20]
00485638  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0048563c  04 b0 3a 05                                      ldreq fp, [sl, #-4]!
00485640  78 40 8b 02                                      addeq r4, fp, #0x78
00485644  09 00 55 e1                                      cmp r5, sb
00485648  28 40 44 e2                                      sub r4, r4, #0x28
0048564c  09 00 00 0a                                      beq #0x485678
00485650  0c 30 98 e5                                      ldr r3, [r8, #0xc]
00485654  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00485658  28 50 45 e2                                      sub r5, r5, #0x28
0048565c  0a 00 52 e1                                      cmp r2, sl
00485660  1b ff ff 1a                                      bne #0x4852d4
00485664  00 10 96 e5                                      ldr r1, [r6]
00485668  01 00 54 e1                                      cmp r4, r1
0048566c  00 10 a0 23                                      movhs r1, #0
00485670  01 10 a0 33                                      movlo r1, #1
00485674  18 ff ff ea                                      b #0x4852dc
00485678  00 10 9d e5                                      ldr r1, [sp]
0048567c  04 90 31 e5                                      ldr sb, [r1, #-4]!
00485680  78 20 89 e2                                      add r2, sb, #0x78
00485684  00 10 8d e5                                      str r1, [sp]
00485688  08 20 8d e5                                      str r2, [sp, #8]
0048568c  02 50 a0 e1                                      mov r5, r2
00485690  0c 30 98 e5                                      ldr r3, [r8, #0xc]
00485694  ee ff ff ea                                      b #0x485654
00485698  00 80 a0 e3                                      mov r8, #0
0048569c  19 00 00 ea                                      b #0x485708
004856a0  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
004856a4  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
004856a8  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
004856ac  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
004856b0  20 30 95 e5                                      ldr r3, [r5, #0x20]
004856b4  20 30 84 e5                                      str r3, [r4, #0x20]
004856b8  24 30 95 e5                                      ldr r3, [r5, #0x24]
004856bc  24 30 84 e5                                      str r3, [r4, #0x24]
004856c0  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
004856c4  20 80 85 e5                                      str r8, [r5, #0x20]
004856c8  24 80 85 e5                                      str r8, [r5, #0x24]
004856cc  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
004856d0  28 50 85 e2                                      add r5, r5, #0x28
004856d4  05 00 59 e1                                      cmp sb, r5
004856d8  14 10 9d 05                                      ldreq r1, [sp, #0x14]
004856dc  28 40 84 e2                                      add r4, r4, #0x28
004856e0  04 50 b1 05                                      ldreq r5, [r1, #4]!
004856e4  14 10 8d 05                                      streq r1, [sp, #0x14]
004856e8  78 90 85 02                                      addeq sb, r5, #0x78
004856ec  07 00 54 e1                                      cmp r4, r7
004856f0  08 20 9d 05                                      ldreq r2, [sp, #8]
004856f4  10 30 96 15                                      ldrne r3, [r6, #0x10]
004856f8  04 40 b2 05                                      ldreq r4, [r2, #4]!
004856fc  08 20 8d 05                                      streq r2, [sp, #8]
00485700  10 30 96 05                                      ldreq r3, [r6, #0x10]
00485704  78 70 84 02                                      addeq r7, r4, #0x78
00485708  03 00 55 e1                                      cmp r5, r3
0048570c  10 e0 85 e2                                      add lr, r5, #0x10
00485710  10 c0 84 e2                                      add ip, r4, #0x10
00485714  e1 ff ff 1a                                      bne #0x4856a0
00485718  61 ff ff ea                                      b #0x4854a4
0048571c  00 70 98 e5                                      ldr r7, [r8]
00485720  07 00 55 e1                                      cmp r5, r7
00485724  00 70 a0 23                                      movhs r7, #0
00485728  01 70 a0 33                                      movlo r7, #1
0048572c  af ff ff ea                                      b #0x4855f0
00485730  0c 70 98 e5                                      ldr r7, [r8, #0xc]
00485734  00 40 98 e5                                      ldr r4, [r8]
00485738  08 50 98 e5                                      ldr r5, [r8, #8]
0048573c  05 00 00 ea                                      b #0x485758
00485740  04 00 a0 e1                                      mov r0, r4
00485744  28 40 84 e2                                      add r4, r4, #0x28
00485748  86 fe ff eb                                      bl #0x485168
0048574c  05 00 54 e1                                      cmp r4, r5
00485750  04 40 b7 05                                      ldreq r4, [r7, #4]!
00485754  78 50 84 02                                      addeq r5, r4, #0x78
00485758  04 00 5b e1                                      cmp fp, r4
0048575c  f7 ff ff 1a                                      bne #0x485740
00485760  4f ff ff ea                                      b #0x4854a4
00485764  08 70 96 e5                                      ldr r7, [r6, #8]
00485768  0c 80 96 e5                                      ldr r8, [r6, #0xc]
0048576c  05 00 00 ea                                      b #0x485788
00485770  04 00 a0 e1                                      mov r0, r4
00485774  28 40 84 e2                                      add r4, r4, #0x28
00485778  7a fe ff eb                                      bl #0x485168
0048577c  07 00 54 e1                                      cmp r4, r7
00485780  04 40 b8 05                                      ldreq r4, [r8, #4]!
00485784  78 70 84 02                                      addeq r7, r4, #0x78
00485788  04 00 55 e1                                      cmp r5, r4
0048578c  f7 ff ff 1a                                      bne #0x485770
00485790  ec fe ff ea                                      b #0x485348
00485794  00 10 98 e5                                      ldr r1, [r8]
00485798  01 00 55 e1                                      cmp r5, r1
0048579c  00 10 a0 23                                      movhs r1, #0
004857a0  01 10 a0 33                                      movlo r1, #1
004857a4  d3 fe ff ea                                      b #0x4852f8
004857a8  00 20 9d e5                                      ldr r2, [sp]
004857ac  04 90 32 e5                                      ldr sb, [r2, #-4]!
004857b0  78 c0 89 e2                                      add ip, sb, #0x78
004857b4  00 20 8d e5                                      str r2, [sp]
004857b8  08 c0 8d e5                                      str ip, [sp, #8]
004857bc  0c 50 a0 e1                                      mov r5, ip
004857c0  bf fe ff ea                                      b #0x4852c4

; FUNCTION 0x00485848, declared_size=76, range_size=76, mode=arm
; class-group: std::deque<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >
; alias: _ZNSt5dequeIS_IPN3rnd4TileESaIS2_EESaIS4_EED1Ev
; demangled: std::deque<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >::~deque()
; decoder-mode: arm
00485848  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0048584c  00 70 a0 e1                                      mov r7, r0
00485850  00 40 90 e5                                      ldr r4, [r0]
00485854  08 50 90 e5                                      ldr r5, [r0, #8]
00485858  10 60 90 e5                                      ldr r6, [r0, #0x10]
0048585c  0c 80 90 e5                                      ldr r8, [r0, #0xc]
00485860  05 00 00 ea                                      b #0x48587c
00485864  04 00 a0 e1                                      mov r0, r4
00485868  28 40 84 e2                                      add r4, r4, #0x28
0048586c  3d fe ff eb                                      bl #0x485168
00485870  05 00 54 e1                                      cmp r4, r5
00485874  04 40 b8 05                                      ldreq r4, [r8, #4]!
00485878  78 50 84 02                                      addeq r5, r4, #0x78
0048587c  06 00 54 e1                                      cmp r4, r6
00485880  f7 ff ff 1a                                      bne #0x485864
00485884  07 00 a0 e1                                      mov r0, r7
00485888  cd ff ff eb                                      bl #0x4857c4
0048588c  07 00 a0 e1                                      mov r0, r7
00485890  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00485e48, declared_size=276, range_size=276, mode=arm
; class-group: std::deque<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >
; alias: _ZNSt5dequeIS_IPN3rnd4TileESaIS2_EESaIS4_EE5clearEv
; demangled: std::deque<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >::clear()
; decoder-mode: arm
00485e48  70 40 2d e9                                      push {r4, r5, r6, lr}
00485e4c  0c 40 90 e5                                      ldr r4, [r0, #0xc]
00485e50  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
00485e54  00 50 a0 e1                                      mov r5, r0
00485e58  04 20 84 e2                                      add r2, r4, #4
00485e5c  02 00 53 e1                                      cmp r3, r2
00485e60  12 00 00 9a                                      bls #0x485eb0
00485e64  08 40 84 e2                                      add r4, r4, #8
00485e68  04 60 14 e5                                      ldr r6, [r4, #-4]
00485e6c  06 00 a0 e1                                      mov r0, r6
00485e70  bc fc ff eb                                      bl #0x485168
00485e74  28 00 86 e2                                      add r0, r6, #0x28
00485e78  ba fc ff eb                                      bl #0x485168
00485e7c  50 00 86 e2                                      add r0, r6, #0x50
00485e80  b8 fc ff eb                                      bl #0x485168
00485e84  04 00 14 e5                                      ldr r0, [r4, #-4]
00485e88  78 10 a0 e3                                      mov r1, #0x78
00485e8c  00 00 50 e3                                      cmp r0, #0
00485e90  00 00 00 0a                                      beq #0x485e98
00485e94  19 0c 0a eb                                      bl #0x708f00
00485e98  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
00485e9c  04 20 a0 e1                                      mov r2, r4
00485ea0  04 40 84 e2                                      add r4, r4, #4
00485ea4  02 00 53 e1                                      cmp r3, r2
00485ea8  ee ff ff 8a                                      bhi #0x485e68
00485eac  0c 40 95 e5                                      ldr r4, [r5, #0xc]
00485eb0  04 00 53 e1                                      cmp r3, r4
00485eb4  1b 00 00 0a                                      beq #0x485f28
00485eb8  00 40 95 e5                                      ldr r4, [r5]
00485ebc  08 60 95 e5                                      ldr r6, [r5, #8]
00485ec0  06 00 54 e1                                      cmp r4, r6
00485ec4  04 00 00 0a                                      beq #0x485edc
00485ec8  04 00 a0 e1                                      mov r0, r4
00485ecc  28 40 84 e2                                      add r4, r4, #0x28
00485ed0  a4 fc ff eb                                      bl #0x485168
00485ed4  04 00 56 e1                                      cmp r6, r4
00485ed8  fa ff ff 1a                                      bne #0x485ec8
00485edc  14 40 95 e5                                      ldr r4, [r5, #0x14]
00485ee0  10 60 95 e5                                      ldr r6, [r5, #0x10]
00485ee4  06 00 54 e1                                      cmp r4, r6
00485ee8  05 00 00 0a                                      beq #0x485f04
00485eec  04 00 a0 e1                                      mov r0, r4
00485ef0  28 40 84 e2                                      add r4, r4, #0x28
00485ef4  9b fc ff eb                                      bl #0x485168
00485ef8  04 00 56 e1                                      cmp r6, r4
00485efc  fa ff ff 1a                                      bne #0x485eec
00485f00  14 60 95 e5                                      ldr r6, [r5, #0x14]
00485f04  00 00 56 e3                                      cmp r6, #0
00485f08  02 00 00 0a                                      beq #0x485f18
00485f0c  06 00 a0 e1                                      mov r0, r6
00485f10  78 10 a0 e3                                      mov r1, #0x78
00485f14  f9 0b 0a eb                                      bl #0x708f00
00485f18  10 c0 85 e2                                      add ip, r5, #0x10
00485f1c  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
00485f20  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00485f24  70 80 bd e8                                      pop {r4, r5, r6, pc}
00485f28  00 40 95 e5                                      ldr r4, [r5]
00485f2c  10 60 95 e5                                      ldr r6, [r5, #0x10]
00485f30  06 00 54 e1                                      cmp r4, r6
00485f34  f7 ff ff 0a                                      beq #0x485f18
00485f38  04 00 a0 e1                                      mov r0, r4
00485f3c  28 40 84 e2                                      add r4, r4, #0x28
00485f40  88 fc ff eb                                      bl #0x485168
00485f44  04 00 56 e1                                      cmp r6, r4
00485f48  fa ff ff 1a                                      bne #0x485f38
00485f4c  10 c0 85 e2                                      add ip, r5, #0x10
00485f50  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
00485f54  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00485f58  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00485f5c, declared_size=164, range_size=164, mode=arm
; class-group: std::deque<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >
; alias: _ZNSt5dequeIS_IPN3rnd4TileESaIS2_EESaIS4_EE5eraseENSt4priv15_Deque_iteratorIS4_St16_Nonconst_traitsIS4_EEESB_
; demangled: std::deque<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >::erase(std::priv::_Deque_iterator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::_Nonconst_traits<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >, std::priv::_Deque_iterator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::_Nonconst_traits<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >)
; decoder-mode: arm
00485f5c  70 40 2d e9                                      push {r4, r5, r6, lr}
00485f60  01 50 a0 e1                                      mov r5, r1
00485f64  00 60 95 e5                                      ldr r6, [r5]
00485f68  00 10 92 e5                                      ldr r1, [r2]
00485f6c  03 c0 a0 e1                                      mov ip, r3
00485f70  30 d0 4d e2                                      sub sp, sp, #0x30
00485f74  06 00 51 e1                                      cmp r1, r6
00485f78  00 40 a0 e1                                      mov r4, r0
00485f7c  00 30 93 15                                      ldrne r3, [r3]
00485f80  11 00 00 0a                                      beq #0x485fcc
00485f84  01 00 53 e1                                      cmp r3, r1
00485f88  19 00 00 0a                                      beq #0x485ff4
00485f8c  1c 60 8d e2                                      add r6, sp, #0x1c
00485f90  0f 00 92 e8                                      ldm r2, {r0, r1, r2, r3}
00485f94  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
00485f98  0c e0 8d e2                                      add lr, sp, #0xc
00485f9c  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
00485fa0  2c c0 8d e2                                      add ip, sp, #0x2c
00485fa4  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
00485fa8  05 10 a0 e1                                      mov r1, r5
00485fac  06 20 a0 e1                                      mov r2, r6
00485fb0  0e 30 a0 e1                                      mov r3, lr
00485fb4  04 00 a0 e1                                      mov r0, r4
00485fb8  00 c0 8d e5                                      str ip, [sp]
00485fbc  8a fc ff eb                                      bl #0x4851ec
00485fc0  04 00 a0 e1                                      mov r0, r4
00485fc4  30 d0 8d e2                                      add sp, sp, #0x30
00485fc8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00485fcc  00 30 9c e5                                      ldr r3, [ip]
00485fd0  10 00 95 e5                                      ldr r0, [r5, #0x10]
00485fd4  00 00 53 e1                                      cmp r3, r0
00485fd8  e9 ff ff 1a                                      bne #0x485f84
00485fdc  05 00 a0 e1                                      mov r0, r5
00485fe0  10 50 85 e2                                      add r5, r5, #0x10
00485fe4  97 ff ff eb                                      bl #0x485e48
00485fe8  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
00485fec  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
00485ff0  f2 ff ff ea                                      b #0x485fc0
00485ff4  0f 00 92 e8                                      ldm r2, {r0, r1, r2, r3}
00485ff8  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
00485ffc  ef ff ff ea                                      b #0x485fc0

; FUNCTION 0x00486918, declared_size=368, range_size=368, mode=arm
; class-group: std::deque<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >
; alias: _ZNSt5dequeIS_IPN3rnd4TileESaIS2_EESaIS4_EE17_M_reallocate_mapEjb
; demangled: std::deque<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >::_M_reallocate_map(unsigned int, bool)
; decoder-mode: arm
00486918  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0048691c  00 40 a0 e1                                      mov r4, r0
00486920  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00486924  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
00486928  24 a0 94 e5                                      ldr sl, [r4, #0x24]
0048692c  01 60 a0 e1                                      mov r6, r1
00486930  00 50 63 e0                                      rsb r5, r3, r0
00486934  45 51 a0 e1                                      asr r5, r5, #2
00486938  01 50 85 e2                                      add r5, r5, #1
0048693c  01 70 85 e0                                      add r7, r5, r1
00486940  87 00 5a e1                                      cmp sl, r7, lsl #1
00486944  02 80 a0 e1                                      mov r8, r2
00486948  12 00 00 9a                                      bls #0x486998
0048694c  0a a0 67 e0                                      rsb sl, r7, sl
00486950  aa a0 a0 e1                                      lsr sl, sl, #1
00486954  00 00 52 e3                                      cmp r2, #0
00486958  20 20 94 e5                                      ldr r2, [r4, #0x20]
0048695c  01 81 a0 11                                      lslne r8, r1, #2
00486960  0a a1 a0 e1                                      lsl sl, sl, #2
00486964  0a 60 88 e0                                      add r6, r8, sl
00486968  06 60 82 e0                                      add r6, r2, r6
0048696c  06 00 53 e1                                      cmp r3, r6
00486970  3b 00 00 8a                                      bhi #0x486a64
00486974  04 00 80 e2                                      add r0, r0, #4
00486978  00 20 63 e0                                      rsb r2, r3, r0
0048697c  00 00 52 e3                                      cmp r2, #0
00486980  23 00 00 da                                      ble #0x486a14
00486984  05 01 86 e0                                      add r0, r6, r5, lsl #2
00486988  00 00 62 e0                                      rsb r0, r2, r0
0048698c  03 10 a0 e1                                      mov r1, r3
00486990  68 1d fa eb                                      bl #0x30df38
00486994  1e 00 00 ea                                      b #0x486a14
00486998  02 30 8a e2                                      add r3, sl, #2
0048699c  0a 00 51 e1                                      cmp r1, sl
004869a0  01 a0 83 20                                      addhs sl, r3, r1
004869a4  0a a0 83 30                                      addlo sl, r3, sl
004869a8  0a 10 a0 e1                                      mov r1, sl
004869ac  00 20 a0 e3                                      mov r2, #0
004869b0  20 00 84 e2                                      add r0, r4, #0x20
004869b4  b7 f8 ff eb                                      bl #0x484c98
004869b8  0a 70 67 e0                                      rsb r7, r7, sl
004869bc  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
004869c0  a7 70 a0 e1                                      lsr r7, r7, #1
004869c4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
004869c8  00 00 58 e3                                      cmp r8, #0
004869cc  06 81 a0 11                                      lslne r8, r6, #2
004869d0  07 71 a0 e1                                      lsl r7, r7, #2
004869d4  04 20 82 e2                                      add r2, r2, #4
004869d8  07 60 88 e0                                      add r6, r8, r7
004869dc  01 20 52 e0                                      subs r2, r2, r1
004869e0  00 90 a0 e1                                      mov sb, r0
004869e4  06 60 80 e0                                      add r6, r0, r6
004869e8  16 00 00 1a                                      bne #0x486a48
004869ec  20 00 94 e5                                      ldr r0, [r4, #0x20]
004869f0  24 10 94 e5                                      ldr r1, [r4, #0x24]
004869f4  00 00 50 e3                                      cmp r0, #0
004869f8  03 00 00 0a                                      beq #0x486a0c
004869fc  01 11 a0 e1                                      lsl r1, r1, #2
00486a00  80 00 51 e3                                      cmp r1, #0x80
00486a04  1d 00 00 8a                                      bhi #0x486a80
00486a08  3c 09 0a eb                                      bl #0x708f00
00486a0c  20 90 84 e5                                      str sb, [r4, #0x20]
00486a10  24 a0 84 e5                                      str sl, [r4, #0x24]
00486a14  0c 60 84 e5                                      str r6, [r4, #0xc]
00486a18  00 30 96 e5                                      ldr r3, [r6]
00486a1c  01 50 45 e2                                      sub r5, r5, #1
00486a20  05 21 86 e0                                      add r2, r6, r5, lsl #2
00486a24  78 10 83 e2                                      add r1, r3, #0x78
00486a28  1c 20 84 e5                                      str r2, [r4, #0x1c]
00486a2c  08 10 84 e5                                      str r1, [r4, #8]
00486a30  04 30 84 e5                                      str r3, [r4, #4]
00486a34  05 31 96 e7                                      ldr r3, [r6, r5, lsl #2]
00486a38  78 20 83 e2                                      add r2, r3, #0x78
00486a3c  18 20 84 e5                                      str r2, [r4, #0x18]
00486a40  14 30 84 e5                                      str r3, [r4, #0x14]
00486a44  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00486a48  06 00 a0 e1                                      mov r0, r6
00486a4c  39 1d fa eb                                      bl #0x30df38
00486a50  20 00 94 e5                                      ldr r0, [r4, #0x20]
00486a54  24 10 94 e5                                      ldr r1, [r4, #0x24]
00486a58  00 00 50 e3                                      cmp r0, #0
00486a5c  e6 ff ff 1a                                      bne #0x4869fc
00486a60  e9 ff ff ea                                      b #0x486a0c
00486a64  04 00 80 e2                                      add r0, r0, #4
00486a68  03 20 50 e0                                      subs r2, r0, r3
00486a6c  e8 ff ff 0a                                      beq #0x486a14
00486a70  03 10 a0 e1                                      mov r1, r3
00486a74  06 00 a0 e1                                      mov r0, r6
00486a78  2e 1d fa eb                                      bl #0x30df38
00486a7c  e4 ff ff ea                                      b #0x486a14
00486a80  6e 26 fa eb                                      bl #0x310440
00486a84  e0 ff ff ea                                      b #0x486a0c

; FUNCTION 0x00486a88, declared_size=120, range_size=120, mode=arm
; class-group: std::deque<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >
; alias: _ZNSt5dequeIS_IPN3rnd4TileESaIS2_EESaIS4_EE24_M_new_elements_at_frontEj
; demangled: std::deque<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >::_M_new_elements_at_front(unsigned int)
; decoder-mode: arm
00486a88  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00486a8c  ab 3a 0a e3                                      movw r3, #0xaaab
00486a90  02 50 81 e2                                      add r5, r1, #2
00486a94  aa 3a 4a e3                                      movt r3, #0xaaaa
00486a98  93 25 85 e0                                      umull r2, r5, r3, r5
00486a9c  0c 10 90 e5                                      ldr r1, [r0, #0xc]
00486aa0  20 20 90 e5                                      ldr r2, [r0, #0x20]
00486aa4  a5 50 a0 e1                                      lsr r5, r5, #1
00486aa8  00 40 a0 e1                                      mov r4, r0
00486aac  01 30 62 e0                                      rsb r3, r2, r1
00486ab0  43 01 55 e1                                      cmp r5, r3, asr #2
00486ab4  0d 00 00 8a                                      bhi #0x486af0
00486ab8  00 00 55 e3                                      cmp r5, #0
00486abc  0a 00 00 0a                                      beq #0x486aec
00486ac0  24 a0 84 e2                                      add sl, r4, #0x24
00486ac4  03 70 e0 e3                                      mvn r7, #3
00486ac8  01 60 a0 e3                                      mov r6, #1
00486acc  0a 00 a0 e1                                      mov r0, sl
00486ad0  0c 80 94 e5                                      ldr r8, [r4, #0xc]
00486ad4  87 ff ff eb                                      bl #0x4868f8
00486ad8  01 60 86 e2                                      add r6, r6, #1
00486adc  06 00 55 e1                                      cmp r5, r6
00486ae0  07 00 88 e7                                      str r0, [r8, r7]
00486ae4  04 70 47 e2                                      sub r7, r7, #4
00486ae8  f7 ff ff 2a                                      bhs #0x486acc
00486aec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00486af0  05 10 a0 e1                                      mov r1, r5
00486af4  01 20 a0 e3                                      mov r2, #1
00486af8  86 ff ff eb                                      bl #0x486918
00486afc  ed ff ff ea                                      b #0x486ab8

; FUNCTION 0x00486b00, declared_size=120, range_size=120, mode=arm
; class-group: std::deque<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >
; alias: _ZNSt5dequeIS_IPN3rnd4TileESaIS2_EESaIS4_EE28_M_reserve_elements_at_frontEj
; demangled: std::deque<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >::_M_reserve_elements_at_front(unsigned int)
; decoder-mode: arm
00486b00  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00486b04  01 70 a0 e1                                      mov r7, r1
00486b08  04 30 97 e5                                      ldr r3, [r7, #4]
00486b0c  00 10 91 e5                                      ldr r1, [r1]
00486b10  14 d0 4d e2                                      sub sp, sp, #0x14
00486b14  02 60 a0 e1                                      mov r6, r2
00486b18  01 30 63 e0                                      rsb r3, r3, r1
00486b1c  c3 31 a0 e1                                      asr r3, r3, #3
00486b20  00 50 a0 e1                                      mov r5, r0
00486b24  83 10 83 e0                                      add r1, r3, r3, lsl #1
00486b28  01 12 81 e0                                      add r1, r1, r1, lsl #4
00486b2c  01 14 81 e0                                      add r1, r1, r1, lsl #8
00486b30  01 18 81 e0                                      add r1, r1, r1, lsl #16
00486b34  01 31 83 e0                                      add r3, r3, r1, lsl #2
00486b38  02 00 53 e1                                      cmp r3, r2
00486b3c  02 00 00 2a                                      bhs #0x486b4c
00486b40  02 10 63 e0                                      rsb r1, r3, r2
00486b44  07 00 a0 e1                                      mov r0, r7
00486b48  ce ff ff eb                                      bl #0x486a88
00486b4c  0d 40 a0 e1                                      mov r4, sp
00486b50  0f 00 97 e8                                      ldm r7, {r0, r1, r2, r3}
00486b54  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
00486b58  00 10 66 e2                                      rsb r1, r6, #0
00486b5c  0d 00 a0 e1                                      mov r0, sp
00486b60  bb f4 ff eb                                      bl #0x483e54
00486b64  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
00486b68  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
00486b6c  05 00 a0 e1                                      mov r0, r5
00486b70  14 d0 8d e2                                      add sp, sp, #0x14
00486b74  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00486b78, declared_size=124, range_size=124, mode=arm
; class-group: std::deque<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >
; alias: _ZNSt5dequeIS_IPN3rnd4TileESaIS2_EESaIS4_EE23_M_new_elements_at_backEj
; demangled: std::deque<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >::_M_new_elements_at_back(unsigned int)
; decoder-mode: arm
00486b78  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00486b7c  ab 3a 0a e3                                      movw r3, #0xaaab
00486b80  02 50 81 e2                                      add r5, r1, #2
00486b84  aa 3a 4a e3                                      movt r3, #0xaaaa
00486b88  93 25 85 e0                                      umull r2, r5, r3, r5
00486b8c  20 10 90 e5                                      ldr r1, [r0, #0x20]
00486b90  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
00486b94  24 20 90 e5                                      ldr r2, [r0, #0x24]
00486b98  a5 50 a0 e1                                      lsr r5, r5, #1
00486b9c  03 30 61 e0                                      rsb r3, r1, r3
00486ba0  43 31 42 e0                                      sub r3, r2, r3, asr #2
00486ba4  01 20 85 e2                                      add r2, r5, #1
00486ba8  03 00 52 e1                                      cmp r2, r3
00486bac  00 40 a0 e1                                      mov r4, r0
00486bb0  0b 00 00 8a                                      bhi #0x486be4
00486bb4  00 00 55 e3                                      cmp r5, #0
00486bb8  08 00 00 0a                                      beq #0x486be0
00486bbc  24 80 84 e2                                      add r8, r4, #0x24
00486bc0  01 60 a0 e3                                      mov r6, #1
00486bc4  08 00 a0 e1                                      mov r0, r8
00486bc8  1c 70 94 e5                                      ldr r7, [r4, #0x1c]
00486bcc  49 ff ff eb                                      bl #0x4868f8
00486bd0  06 01 87 e7                                      str r0, [r7, r6, lsl #2]
00486bd4  01 60 86 e2                                      add r6, r6, #1
00486bd8  06 00 55 e1                                      cmp r5, r6
00486bdc  f8 ff ff 2a                                      bhs #0x486bc4
00486be0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00486be4  05 10 a0 e1                                      mov r1, r5
00486be8  00 20 a0 e3                                      mov r2, #0
00486bec  49 ff ff eb                                      bl #0x486918
00486bf0  ef ff ff ea                                      b #0x486bb4

; FUNCTION 0x00486bf4, declared_size=128, range_size=128, mode=arm
; class-group: std::deque<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >
; alias: _ZNSt5dequeIS_IPN3rnd4TileESaIS2_EESaIS4_EE27_M_reserve_elements_at_backEj
; demangled: std::deque<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >::_M_reserve_elements_at_back(unsigned int)
; decoder-mode: arm
00486bf4  70 40 2d e9                                      push {r4, r5, r6, lr}
00486bf8  01 40 a0 e1                                      mov r4, r1
00486bfc  10 30 94 e5                                      ldr r3, [r4, #0x10]
00486c00  18 10 91 e5                                      ldr r1, [r1, #0x18]
00486c04  10 d0 4d e2                                      sub sp, sp, #0x10
00486c08  02 60 a0 e1                                      mov r6, r2
00486c0c  01 30 63 e0                                      rsb r3, r3, r1
00486c10  c3 31 a0 e1                                      asr r3, r3, #3
00486c14  00 50 a0 e1                                      mov r5, r0
00486c18  83 10 83 e0                                      add r1, r3, r3, lsl #1
00486c1c  01 12 81 e0                                      add r1, r1, r1, lsl #4
00486c20  01 14 81 e0                                      add r1, r1, r1, lsl #8
00486c24  01 18 81 e0                                      add r1, r1, r1, lsl #16
00486c28  01 11 83 e0                                      add r1, r3, r1, lsl #2
00486c2c  01 10 41 e2                                      sub r1, r1, #1
00486c30  02 00 51 e1                                      cmp r1, r2
00486c34  02 00 00 2a                                      bhs #0x486c44
00486c38  02 10 61 e0                                      rsb r1, r1, r2
00486c3c  04 00 a0 e1                                      mov r0, r4
00486c40  cc ff ff eb                                      bl #0x486b78
00486c44  10 30 84 e2                                      add r3, r4, #0x10
00486c48  0d 40 a0 e1                                      mov r4, sp
00486c4c  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
00486c50  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
00486c54  06 10 a0 e1                                      mov r1, r6
00486c58  0d 00 a0 e1                                      mov r0, sp
00486c5c  7c f4 ff eb                                      bl #0x483e54
00486c60  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
00486c64  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
00486c68  05 00 a0 e1                                      mov r0, r5
00486c6c  10 d0 8d e2                                      add sp, sp, #0x10
00486c70  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00486c74, declared_size=960, range_size=960, mode=arm
; class-group: std::deque<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >
; alias: _ZNSt5dequeIS_IPN3rnd4TileESaIS2_EESaIS4_EE18_M_fill_insert_auxENSt4priv15_Deque_iteratorIS4_St16_Nonconst_traitsIS4_EEEjRKS4_RKSt11__true_type
; demangled: std::deque<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >::_M_fill_insert_aux(std::priv::_Deque_iterator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::_Nonconst_traits<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >, unsigned int, std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > const&, std::__true_type const&)
; decoder-mode: arm
00486c74  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00486c78  d4 d0 4d e2                                      sub sp, sp, #0xd4
00486c7c  b8 c0 8d e2                                      add ip, sp, #0xb8
00486c80  0c 00 8d e5                                      str r0, [sp, #0xc]
00486c84  14 30 8d e5                                      str r3, [sp, #0x14]
00486c88  02 50 a0 e1                                      mov r5, r2
00486c8c  01 80 a0 e1                                      mov r8, r1
00486c90  0f 00 91 e8                                      ldm r1, {r0, r1, r2, r3}
00486c94  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00486c98  0c 10 a0 e1                                      mov r1, ip
00486c9c  05 00 a0 e1                                      mov r0, r5
00486ca0  05 f4 ff eb                                      bl #0x483cbc
00486ca4  20 20 8d e2                                      add r2, sp, #0x20
00486ca8  98 c0 8d e2                                      add ip, sp, #0x98
00486cac  1c 20 8d e5                                      str r2, [sp, #0x1c]
00486cb0  10 b0 88 e2                                      add fp, r8, #0x10
00486cb4  00 40 a0 e1                                      mov r4, r0
00486cb8  0f 00 98 e8                                      ldm r8, {r0, r1, r2, r3}
00486cbc  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00486cc0  0c 10 a0 e1                                      mov r1, ip
00486cc4  0b 00 a0 e1                                      mov r0, fp
00486cc8  fb f3 ff eb                                      bl #0x483cbc
00486ccc  f8 10 9d e5                                      ldr r1, [sp, #0xf8]
00486cd0  00 60 a0 e1                                      mov r6, r0
00486cd4  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00486cd8  ab fe ff eb                                      bl #0x48678c
00486cdc  a6 00 54 e1                                      cmp r4, r6, lsr #1
00486ce0  63 00 00 ca                                      bgt #0x486e74
00486ce4  a8 30 8d e2                                      add r3, sp, #0xa8
00486ce8  14 20 9d e5                                      ldr r2, [sp, #0x14]
00486cec  03 00 a0 e1                                      mov r0, r3
00486cf0  08 10 a0 e1                                      mov r1, r8
00486cf4  10 30 8d e5                                      str r3, [sp, #0x10]
00486cf8  80 ff ff eb                                      bl #0x486b00
00486cfc  0f 00 98 e8                                      ldm r8, {r0, r1, r2, r3}
00486d00  68 c0 8d e2                                      add ip, sp, #0x68
00486d04  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00486d08  0c 00 a0 e1                                      mov r0, ip
00486d0c  04 10 a0 e1                                      mov r1, r4
00486d10  4f f4 ff eb                                      bl #0x483e54
00486d14  74 20 9d e5                                      ldr r2, [sp, #0x74]
00486d18  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
00486d1c  68 30 9d e5                                      ldr r3, [sp, #0x68]
00486d20  70 00 9d e5                                      ldr r0, [sp, #0x70]
00486d24  04 10 85 e5                                      str r1, [r5, #4]
00486d28  0c 20 85 e5                                      str r2, [r5, #0xc]
00486d2c  08 00 85 e5                                      str r0, [r5, #8]
00486d30  00 30 85 e5                                      str r3, [r5]
00486d34  b4 c0 9d e5                                      ldr ip, [sp, #0xb4]
00486d38  ac b0 9d e5                                      ldr fp, [sp, #0xac]
00486d3c  b0 90 9d e5                                      ldr sb, [sp, #0xb0]
00486d40  14 c0 8d e5                                      str ip, [sp, #0x14]
00486d44  04 e0 98 e5                                      ldr lr, [r8, #4]
00486d48  a8 40 9d e5                                      ldr r4, [sp, #0xa8]
00486d4c  00 70 a0 e3                                      mov r7, #0
00486d50  08 e0 8d e5                                      str lr, [sp, #8]
00486d54  0c 20 98 e5                                      ldr r2, [r8, #0xc]
00486d58  05 60 a0 e1                                      mov r6, r5
00486d5c  18 20 8d e5                                      str r2, [sp, #0x18]
00486d60  08 a0 98 e5                                      ldr sl, [r8, #8]
00486d64  00 c0 98 e5                                      ldr ip, [r8]
00486d68  1a 00 00 ea                                      b #0x486dd8
00486d6c  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
00486d70  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
00486d74  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
00486d78  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
00486d7c  20 30 9c e5                                      ldr r3, [ip, #0x20]
00486d80  20 30 84 e5                                      str r3, [r4, #0x20]
00486d84  24 30 9c e5                                      ldr r3, [ip, #0x24]
00486d88  24 30 84 e5                                      str r3, [r4, #0x24]
00486d8c  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
00486d90  20 70 8c e5                                      str r7, [ip, #0x20]
00486d94  24 70 8c e5                                      str r7, [ip, #0x24]
00486d98  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
00486d9c  28 40 84 e2                                      add r4, r4, #0x28
00486da0  04 00 59 e1                                      cmp sb, r4
00486da4  14 30 9d 05                                      ldreq r3, [sp, #0x14]
00486da8  28 c0 8c e2                                      add ip, ip, #0x28
00486dac  04 b0 b3 05                                      ldreq fp, [r3, #4]!
00486db0  14 30 8d 05                                      streq r3, [sp, #0x14]
00486db4  78 90 8b 02                                      addeq sb, fp, #0x78
00486db8  0b 40 a0 01                                      moveq r4, fp
00486dbc  0c 00 5a e1                                      cmp sl, ip
00486dc0  18 e0 9d 05                                      ldreq lr, [sp, #0x18]
00486dc4  04 c0 be 05                                      ldreq ip, [lr, #4]!
00486dc8  18 e0 8d 05                                      streq lr, [sp, #0x18]
00486dcc  08 c0 8d 05                                      streq ip, [sp, #8]
00486dd0  00 30 96 e5                                      ldr r3, [r6]
00486dd4  78 a0 8c 02                                      addeq sl, ip, #0x78
00486dd8  03 00 5c e1                                      cmp ip, r3
00486ddc  10 e0 8c e2                                      add lr, ip, #0x10
00486de0  10 50 84 e2                                      add r5, r4, #0x10
00486de4  e0 ff ff 1a                                      bne #0x486d6c
00486de8  10 e0 9d e5                                      ldr lr, [sp, #0x10]
00486dec  06 50 a0 e1                                      mov r5, r6
00486df0  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
00486df4  0f 00 88 e8                                      stm r8, {r0, r1, r2, r3}
00486df8  88 c0 8d e5                                      str ip, [sp, #0x88]
00486dfc  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00486e00  08 e0 9d e5                                      ldr lr, [sp, #8]
00486e04  78 00 8d e2                                      add r0, sp, #0x78
00486e08  94 c0 8d e5                                      str ip, [sp, #0x94]
00486e0c  00 c0 a0 e3                                      mov ip, #0
00486e10  00 c0 8d e5                                      str ip, [sp]
00486e14  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00486e18  88 10 8d e2                                      add r1, sp, #0x88
00486e1c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00486e20  cc 30 8d e2                                      add r3, sp, #0xcc
00486e24  8c e0 8d e5                                      str lr, [sp, #0x8c]
00486e28  90 a0 8d e5                                      str sl, [sp, #0x90]
00486e2c  78 40 8d e5                                      str r4, [sp, #0x78]
00486e30  80 90 8d e5                                      str sb, [sp, #0x80]
00486e34  84 c0 8d e5                                      str ip, [sp, #0x84]
00486e38  7c b0 8d e5                                      str fp, [sp, #0x7c]
00486e3c  91 fe ff eb                                      bl #0x486888
00486e40  04 b0 86 e5                                      str fp, [r6, #4]
00486e44  14 e0 9d e5                                      ldr lr, [sp, #0x14]
00486e48  08 90 86 e5                                      str sb, [r6, #8]
00486e4c  00 40 86 e5                                      str r4, [r6]
00486e50  0c e0 86 e5                                      str lr, [r6, #0xc]
00486e54  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00486e58  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
00486e5c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00486e60  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00486e64  bf f8 ff eb                                      bl #0x485168
00486e68  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00486e6c  d4 d0 8d e2                                      add sp, sp, #0xd4
00486e70  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00486e74  a8 20 8d e2                                      add r2, sp, #0xa8
00486e78  02 00 a0 e1                                      mov r0, r2
00486e7c  08 10 a0 e1                                      mov r1, r8
00486e80  68 30 8d e2                                      add r3, sp, #0x68
00486e84  10 20 8d e5                                      str r2, [sp, #0x10]
00486e88  14 20 9d e5                                      ldr r2, [sp, #0x14]
00486e8c  08 30 8d e5                                      str r3, [sp, #8]
00486e90  57 ff ff eb                                      bl #0x486bf4
00486e94  0f 00 9b e8                                      ldm fp, {r0, r1, r2, r3}
00486e98  08 c0 9d e5                                      ldr ip, [sp, #8]
00486e9c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00486ea0  0c 00 a0 e1                                      mov r0, ip
00486ea4  04 10 66 e0                                      rsb r1, r6, r4
00486ea8  e9 f3 ff eb                                      bl #0x483e54
00486eac  74 30 9d e5                                      ldr r3, [sp, #0x74]
00486eb0  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
00486eb4  68 20 9d e5                                      ldr r2, [sp, #0x68]
00486eb8  70 00 9d e5                                      ldr r0, [sp, #0x70]
00486ebc  04 10 85 e5                                      str r1, [r5, #4]
00486ec0  00 20 85 e5                                      str r2, [r5]
00486ec4  08 00 85 e5                                      str r0, [r5, #8]
00486ec8  0c 30 85 e5                                      str r3, [r5, #0xc]
00486ecc  b4 e0 9d e5                                      ldr lr, [sp, #0xb4]
00486ed0  10 c0 98 e5                                      ldr ip, [r8, #0x10]
00486ed4  14 90 98 e5                                      ldr sb, [r8, #0x14]
00486ed8  18 e0 8d e5                                      str lr, [sp, #0x18]
00486edc  1c 80 98 e5                                      ldr r8, [r8, #0x1c]
00486ee0  0c 00 59 e1                                      cmp sb, ip
00486ee4  ac a0 9d e5                                      ldr sl, [sp, #0xac]
00486ee8  04 90 38 05                                      ldreq sb, [r8, #-4]!
00486eec  a8 e0 9d e5                                      ldr lr, [sp, #0xa8]
00486ef0  78 c0 89 02                                      addeq ip, sb, #0x78
00486ef4  0e 00 5a e1                                      cmp sl, lr
00486ef8  28 c0 4c e2                                      sub ip, ip, #0x28
00486efc  20 00 00 1a                                      bne #0x486f84
00486f00  18 20 9d e5                                      ldr r2, [sp, #0x18]
00486f04  04 a0 32 e5                                      ldr sl, [r2, #-4]!
00486f08  18 20 8d e5                                      str r2, [sp, #0x18]
00486f0c  78 e0 8a e2                                      add lr, sl, #0x78
00486f10  1b 00 00 ea                                      b #0x486f84
00486f14  00 70 a0 23                                      movhs r7, #0
00486f18  01 70 a0 33                                      movlo r7, #1
00486f1c  00 00 57 e3                                      cmp r7, #0
00486f20  10 40 8c e2                                      add r4, ip, #0x10
00486f24  10 60 8e e2                                      add r6, lr, #0x10
00486f28  20 00 00 1a                                      bne #0x486fb0
00486f2c  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
00486f30  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
00486f34  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
00486f38  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
00486f3c  20 30 9c e5                                      ldr r3, [ip, #0x20]
00486f40  09 00 5c e1                                      cmp ip, sb
00486f44  20 30 8e e5                                      str r3, [lr, #0x20]
00486f48  24 30 9c e5                                      ldr r3, [ip, #0x24]
00486f4c  24 30 8e e5                                      str r3, [lr, #0x24]
00486f50  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
00486f54  24 70 8c e5                                      str r7, [ip, #0x24]
00486f58  20 70 8c e5                                      str r7, [ip, #0x20]
00486f5c  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
00486f60  04 90 38 05                                      ldreq sb, [r8, #-4]!
00486f64  78 c0 89 02                                      addeq ip, sb, #0x78
00486f68  0a 00 5e e1                                      cmp lr, sl
00486f6c  18 30 9d 05                                      ldreq r3, [sp, #0x18]
00486f70  28 c0 4c e2                                      sub ip, ip, #0x28
00486f74  04 a0 33 05                                      ldreq sl, [r3, #-4]!
00486f78  18 30 8d 05                                      streq r3, [sp, #0x18]
00486f7c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00486f80  78 e0 8a 02                                      addeq lr, sl, #0x78
00486f84  03 00 58 e1                                      cmp r8, r3
00486f88  28 e0 4e e2                                      sub lr, lr, #0x28
00486f8c  e0 ff ff 1a                                      bne #0x486f14
00486f90  00 70 95 e5                                      ldr r7, [r5]
00486f94  10 40 8c e2                                      add r4, ip, #0x10
00486f98  10 60 8e e2                                      add r6, lr, #0x10
00486f9c  0c 00 57 e1                                      cmp r7, ip
00486fa0  00 70 a0 93                                      movls r7, #0
00486fa4  01 70 a0 83                                      movhi r7, #1
00486fa8  00 00 57 e3                                      cmp r7, #0
00486fac  de ff ff 0a                                      beq #0x486f2c
00486fb0  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00486fb4  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
00486fb8  0f 00 8b e8                                      stm fp, {r0, r1, r2, r3}
00486fbc  08 e0 9d e5                                      ldr lr, [sp, #8]
00486fc0  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
00486fc4  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
00486fc8  0e 00 a0 e1                                      mov r0, lr
00486fcc  14 10 9d e5                                      ldr r1, [sp, #0x14]
00486fd0  0c 60 95 e5                                      ldr r6, [r5, #0xc]
00486fd4  08 40 95 e5                                      ldr r4, [r5, #8]
00486fd8  04 70 95 e5                                      ldr r7, [r5, #4]
00486fdc  00 80 95 e5                                      ldr r8, [r5]
00486fe0  9b f3 ff eb                                      bl #0x483e54
00486fe4  74 c0 9d e5                                      ldr ip, [sp, #0x74]
00486fe8  48 00 8d e2                                      add r0, sp, #0x48
00486fec  58 10 8d e2                                      add r1, sp, #0x58
00486ff0  64 c0 8d e5                                      str ip, [sp, #0x64]
00486ff4  70 c0 9d e5                                      ldr ip, [sp, #0x70]
00486ff8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00486ffc  c8 30 8d e2                                      add r3, sp, #0xc8
00487000  60 c0 8d e5                                      str ip, [sp, #0x60]
00487004  6c c0 9d e5                                      ldr ip, [sp, #0x6c]
00487008  54 60 8d e5                                      str r6, [sp, #0x54]
0048700c  50 40 8d e5                                      str r4, [sp, #0x50]
00487010  5c c0 8d e5                                      str ip, [sp, #0x5c]
00487014  68 c0 9d e5                                      ldr ip, [sp, #0x68]
00487018  4c 70 8d e5                                      str r7, [sp, #0x4c]
0048701c  48 80 8d e5                                      str r8, [sp, #0x48]
00487020  58 c0 8d e5                                      str ip, [sp, #0x58]
00487024  00 c0 a0 e3                                      mov ip, #0
00487028  00 c0 8d e5                                      str ip, [sp]
0048702c  15 fe ff eb                                      bl #0x486888
00487030  87 ff ff ea                                      b #0x486e54

; FUNCTION 0x00487034, declared_size=340, range_size=340, mode=arm
; class-group: std::deque<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >
; alias: _ZNSt5dequeIS_IPN3rnd4TileESaIS2_EESaIS4_EE14_M_fill_insertENSt4priv15_Deque_iteratorIS4_St16_Nonconst_traitsIS4_EEEjRKS4_
; demangled: std::deque<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >::_M_fill_insert(std::priv::_Deque_iterator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::_Nonconst_traits<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >, unsigned int, std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > const&)
; decoder-mode: arm
00487034  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00487038  00 40 a0 e1                                      mov r4, r0
0048703c  00 c0 94 e5                                      ldr ip, [r4]
00487040  00 00 91 e5                                      ldr r0, [r1]
00487044  88 d0 4d e2                                      sub sp, sp, #0x88
00487048  03 50 a0 e1                                      mov r5, r3
0048704c  0c 00 50 e1                                      cmp r0, ip
00487050  02 e0 a0 e1                                      mov lr, r2
00487054  0e 00 00 0a                                      beq #0x487094
00487058  10 30 94 e5                                      ldr r3, [r4, #0x10]
0048705c  03 00 50 e1                                      cmp r0, r3
00487060  29 00 00 0a                                      beq #0x48710c
00487064  5c c0 8d e2                                      add ip, sp, #0x5c
00487068  0f 00 91 e8                                      ldm r1, {r0, r1, r2, r3}
0048706c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00487070  0c 20 a0 e1                                      mov r2, ip
00487074  04 10 a0 e1                                      mov r1, r4
00487078  84 c0 8d e2                                      add ip, sp, #0x84
0048707c  0e 30 a0 e1                                      mov r3, lr
00487080  08 00 8d e2                                      add r0, sp, #8
00487084  20 10 8d e8                                      stm sp, {r5, ip}
00487088  f9 fe ff eb                                      bl #0x486c74
0048708c  88 d0 8d e2                                      add sp, sp, #0x88
00487090  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00487094  6c 60 8d e2                                      add r6, sp, #0x6c
00487098  06 00 a0 e1                                      mov r0, r6
0048709c  04 10 a0 e1                                      mov r1, r4
004870a0  96 fe ff eb                                      bl #0x486b00
004870a4  05 20 a0 e1                                      mov r2, r5
004870a8  78 50 9d e5                                      ldr r5, [sp, #0x78]
004870ac  04 c0 94 e5                                      ldr ip, [r4, #4]
004870b0  0c 70 94 e5                                      ldr r7, [r4, #0xc]
004870b4  08 e0 94 e5                                      ldr lr, [r4, #8]
004870b8  00 80 94 e5                                      ldr r8, [r4]
004870bc  48 50 8d e5                                      str r5, [sp, #0x48]
004870c0  74 50 9d e5                                      ldr r5, [sp, #0x74]
004870c4  3c 00 8d e2                                      add r0, sp, #0x3c
004870c8  4c 10 8d e2                                      add r1, sp, #0x4c
004870cc  44 50 8d e5                                      str r5, [sp, #0x44]
004870d0  70 50 9d e5                                      ldr r5, [sp, #0x70]
004870d4  80 30 8d e2                                      add r3, sp, #0x80
004870d8  50 c0 8d e5                                      str ip, [sp, #0x50]
004870dc  40 50 8d e5                                      str r5, [sp, #0x40]
004870e0  6c 50 9d e5                                      ldr r5, [sp, #0x6c]
004870e4  00 c0 a0 e3                                      mov ip, #0
004870e8  58 70 8d e5                                      str r7, [sp, #0x58]
004870ec  3c 50 8d e5                                      str r5, [sp, #0x3c]
004870f0  54 e0 8d e5                                      str lr, [sp, #0x54]
004870f4  4c 80 8d e5                                      str r8, [sp, #0x4c]
004870f8  00 c0 8d e5                                      str ip, [sp]
004870fc  e1 fd ff eb                                      bl #0x486888
00487100  0f 00 96 e8                                      ldm r6, {r0, r1, r2, r3}
00487104  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
00487108  df ff ff ea                                      b #0x48708c
0048710c  6c 70 8d e2                                      add r7, sp, #0x6c
00487110  04 10 a0 e1                                      mov r1, r4
00487114  07 00 a0 e1                                      mov r0, r7
00487118  b5 fe ff eb                                      bl #0x486bf4
0048711c  18 c0 94 e5                                      ldr ip, [r4, #0x18]
00487120  04 60 a0 e1                                      mov r6, r4
00487124  10 80 b6 e5                                      ldr r8, [r6, #0x10]!
00487128  1c e0 94 e5                                      ldr lr, [r4, #0x1c]
0048712c  14 40 94 e5                                      ldr r4, [r4, #0x14]
00487130  24 c0 8d e5                                      str ip, [sp, #0x24]
00487134  78 c0 9d e5                                      ldr ip, [sp, #0x78]
00487138  05 20 a0 e1                                      mov r2, r5
0048713c  1c 00 8d e2                                      add r0, sp, #0x1c
00487140  38 c0 8d e5                                      str ip, [sp, #0x38]
00487144  74 c0 9d e5                                      ldr ip, [sp, #0x74]
00487148  2c 10 8d e2                                      add r1, sp, #0x2c
0048714c  7c 30 8d e2                                      add r3, sp, #0x7c
00487150  34 c0 8d e5                                      str ip, [sp, #0x34]
00487154  70 c0 9d e5                                      ldr ip, [sp, #0x70]
00487158  28 e0 8d e5                                      str lr, [sp, #0x28]
0048715c  20 40 8d e5                                      str r4, [sp, #0x20]
00487160  30 c0 8d e5                                      str ip, [sp, #0x30]
00487164  6c c0 9d e5                                      ldr ip, [sp, #0x6c]
00487168  1c 80 8d e5                                      str r8, [sp, #0x1c]
0048716c  2c c0 8d e5                                      str ip, [sp, #0x2c]
00487170  00 c0 a0 e3                                      mov ip, #0
00487174  00 c0 8d e5                                      str ip, [sp]
00487178  c2 fd ff eb                                      bl #0x486888
0048717c  0f 00 97 e8                                      ldm r7, {r0, r1, r2, r3}
00487180  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
00487184  c0 ff ff ea                                      b #0x48708c

; FUNCTION 0x0048b2c4, declared_size=360, range_size=360, mode=arm
; class-group: std::deque<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >
; alias: _ZNSt5dequeIS_IPN3rnd4TileESaIS2_EESaIS4_EE17_M_reallocate_mapEjb.clone.11
; demangled: std::deque<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >::_M_reallocate_map(unsigned int, bool) [clone .clone.11]
; decoder-mode: arm
0048b2c4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0048b2c8  1c 20 90 e5                                      ldr r2, [r0, #0x1c]
0048b2cc  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0048b2d0  00 40 a0 e1                                      mov r4, r0
0048b2d4  24 00 90 e5                                      ldr r0, [r0, #0x24]
0048b2d8  02 60 63 e0                                      rsb r6, r3, r2
0048b2dc  46 61 a0 e1                                      asr r6, r6, #2
0048b2e0  01 60 86 e2                                      add r6, r6, #1
0048b2e4  01 50 86 e2                                      add r5, r6, #1
0048b2e8  85 00 50 e1                                      cmp r0, r5, lsl #1
0048b2ec  01 70 a0 e1                                      mov r7, r1
0048b2f0  0f 00 00 9a                                      bls #0x48b334
0048b2f4  00 00 65 e0                                      rsb r0, r5, r0
0048b2f8  00 00 51 e3                                      cmp r1, #0
0048b2fc  a0 00 a0 e1                                      lsr r0, r0, #1
0048b300  20 50 94 e5                                      ldr r5, [r4, #0x20]
0048b304  04 70 a0 13                                      movne r7, #4
0048b308  00 71 87 e0                                      add r7, r7, r0, lsl #2
0048b30c  07 50 85 e0                                      add r5, r5, r7
0048b310  05 00 53 e1                                      cmp r3, r5
0048b314  32 00 00 9a                                      bls #0x48b3e4
0048b318  04 20 82 e2                                      add r2, r2, #4
0048b31c  03 20 52 e0                                      subs r2, r2, r3
0048b320  22 00 00 0a                                      beq #0x48b3b0
0048b324  03 10 a0 e1                                      mov r1, r3
0048b328  05 00 a0 e1                                      mov r0, r5
0048b32c  01 0b fa eb                                      bl #0x30df38
0048b330  1e 00 00 ea                                      b #0x48b3b0
0048b334  00 00 50 e3                                      cmp r0, #0
0048b338  00 30 a0 11                                      movne r3, r0
0048b33c  01 30 a0 03                                      moveq r3, #1
0048b340  02 80 80 e2                                      add r8, r0, #2
0048b344  03 80 88 e0                                      add r8, r8, r3
0048b348  08 10 a0 e1                                      mov r1, r8
0048b34c  00 20 a0 e3                                      mov r2, #0
0048b350  20 00 84 e2                                      add r0, r4, #0x20
0048b354  4f e6 ff eb                                      bl #0x484c98
0048b358  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0048b35c  08 50 65 e0                                      rsb r5, r5, r8
0048b360  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0048b364  00 00 57 e3                                      cmp r7, #0
0048b368  a5 50 a0 e1                                      lsr r5, r5, #1
0048b36c  04 70 a0 13                                      movne r7, #4
0048b370  04 20 82 e2                                      add r2, r2, #4
0048b374  05 51 87 e0                                      add r5, r7, r5, lsl #2
0048b378  01 20 52 e0                                      subs r2, r2, r1
0048b37c  00 a0 a0 e1                                      mov sl, r0
0048b380  05 50 80 e0                                      add r5, r0, r5
0048b384  1f 00 00 1a                                      bne #0x48b408
0048b388  20 00 94 e5                                      ldr r0, [r4, #0x20]
0048b38c  24 10 94 e5                                      ldr r1, [r4, #0x24]
0048b390  00 00 50 e3                                      cmp r0, #0
0048b394  03 00 00 0a                                      beq #0x48b3a8
0048b398  01 11 a0 e1                                      lsl r1, r1, #2
0048b39c  80 00 51 e3                                      cmp r1, #0x80
0048b3a0  1f 00 00 8a                                      bhi #0x48b424
0048b3a4  d5 f6 09 eb                                      bl #0x708f00
0048b3a8  20 a0 84 e5                                      str sl, [r4, #0x20]
0048b3ac  24 80 84 e5                                      str r8, [r4, #0x24]
0048b3b0  0c 50 84 e5                                      str r5, [r4, #0xc]
0048b3b4  00 30 95 e5                                      ldr r3, [r5]
0048b3b8  01 60 46 e2                                      sub r6, r6, #1
0048b3bc  06 21 85 e0                                      add r2, r5, r6, lsl #2
0048b3c0  78 10 83 e2                                      add r1, r3, #0x78
0048b3c4  1c 20 84 e5                                      str r2, [r4, #0x1c]
0048b3c8  08 10 84 e5                                      str r1, [r4, #8]
0048b3cc  04 30 84 e5                                      str r3, [r4, #4]
0048b3d0  06 31 95 e7                                      ldr r3, [r5, r6, lsl #2]
0048b3d4  78 20 83 e2                                      add r2, r3, #0x78
0048b3d8  18 20 84 e5                                      str r2, [r4, #0x18]
0048b3dc  14 30 84 e5                                      str r3, [r4, #0x14]
0048b3e0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0048b3e4  04 20 82 e2                                      add r2, r2, #4
0048b3e8  02 20 63 e0                                      rsb r2, r3, r2
0048b3ec  00 00 52 e3                                      cmp r2, #0
0048b3f0  ee ff ff da                                      ble #0x48b3b0
0048b3f4  06 01 85 e0                                      add r0, r5, r6, lsl #2
0048b3f8  00 00 62 e0                                      rsb r0, r2, r0
0048b3fc  03 10 a0 e1                                      mov r1, r3
0048b400  cc 0a fa eb                                      bl #0x30df38
0048b404  e9 ff ff ea                                      b #0x48b3b0
0048b408  05 00 a0 e1                                      mov r0, r5
0048b40c  c9 0a fa eb                                      bl #0x30df38
0048b410  20 00 94 e5                                      ldr r0, [r4, #0x20]
0048b414  24 10 94 e5                                      ldr r1, [r4, #0x24]
0048b418  00 00 50 e3                                      cmp r0, #0
0048b41c  e1 ff ff 0a                                      beq #0x48b3a8
0048b420  dc ff ff ea                                      b #0x48b398
0048b424  05 14 fa eb                                      bl #0x310440
0048b428  de ff ff ea                                      b #0x48b3a8

; FUNCTION 0x0048b42c, declared_size=116, range_size=116, mode=arm
; class-group: std::deque<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >
; alias: _ZNSt5dequeIS_IPN3rnd4TileESaIS2_EESaIS4_EE18_M_push_back_aux_vERKS4_
; demangled: std::deque<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >::_M_push_back_aux_v(std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > const&)
; decoder-mode: arm
0048b42c  70 40 2d e9                                      push {r4, r5, r6, lr}
0048b430  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
0048b434  20 20 90 e5                                      ldr r2, [r0, #0x20]
0048b438  24 30 90 e5                                      ldr r3, [r0, #0x24]
0048b43c  00 40 a0 e1                                      mov r4, r0
0048b440  05 20 62 e0                                      rsb r2, r2, r5
0048b444  42 31 43 e0                                      sub r3, r3, r2, asr #2
0048b448  01 00 53 e3                                      cmp r3, #1
0048b44c  01 60 a0 e1                                      mov r6, r1
0048b450  0e 00 00 9a                                      bls #0x48b490
0048b454  24 00 84 e2                                      add r0, r4, #0x24
0048b458  91 ff ff eb                                      bl #0x48b2a4
0048b45c  04 00 85 e5                                      str r0, [r5, #4]
0048b460  06 10 a0 e1                                      mov r1, r6
0048b464  10 00 94 e5                                      ldr r0, [r4, #0x10]
0048b468  c7 ec ff eb                                      bl #0x48678c
0048b46c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0048b470  04 20 83 e2                                      add r2, r3, #4
0048b474  1c 20 84 e5                                      str r2, [r4, #0x1c]
0048b478  04 30 93 e5                                      ldr r3, [r3, #4]
0048b47c  78 20 83 e2                                      add r2, r3, #0x78
0048b480  10 30 84 e5                                      str r3, [r4, #0x10]
0048b484  18 20 84 e5                                      str r2, [r4, #0x18]
0048b488  14 30 84 e5                                      str r3, [r4, #0x14]
0048b48c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0048b490  00 10 a0 e3                                      mov r1, #0
0048b494  8a ff ff eb                                      bl #0x48b2c4
0048b498  1c 50 94 e5                                      ldr r5, [r4, #0x1c]
0048b49c  ec ff ff ea                                      b #0x48b454

; FUNCTION 0x0048b4a0, declared_size=60, range_size=60, mode=arm
; class-group: std::deque<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >
; alias: _ZNSt5dequeIS_IPN3rnd4TileESaIS2_EESaIS4_EE9push_backERKS4_
; demangled: std::deque<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >::push_back(std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > const&)
; decoder-mode: arm
0048b4a0  10 40 2d e9                                      push {r4, lr}
0048b4a4  18 20 90 e5                                      ldr r2, [r0, #0x18]
0048b4a8  10 30 90 e5                                      ldr r3, [r0, #0x10]
0048b4ac  00 40 a0 e1                                      mov r4, r0
0048b4b0  28 20 42 e2                                      sub r2, r2, #0x28
0048b4b4  02 00 53 e1                                      cmp r3, r2
0048b4b8  05 00 00 0a                                      beq #0x48b4d4
0048b4bc  03 00 a0 e1                                      mov r0, r3
0048b4c0  b1 ec ff eb                                      bl #0x48678c
0048b4c4  10 30 94 e5                                      ldr r3, [r4, #0x10]
0048b4c8  28 30 83 e2                                      add r3, r3, #0x28
0048b4cc  10 30 84 e5                                      str r3, [r4, #0x10]
0048b4d0  10 80 bd e8                                      pop {r4, pc}
0048b4d4  10 40 bd e8                                      pop {r4, lr}
0048b4d8  d3 ff ff ea                                      b #0x48b42c

; FUNCTION 0x0048b4dc, declared_size=100, range_size=100, mode=arm
; class-group: std::deque<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >
; alias: _ZNSt5dequeIS_IPN3rnd4TileESaIS2_EESaIS4_EE19_M_push_front_aux_vERKS4_
; demangled: std::deque<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >::_M_push_front_aux_v(std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > const&)
; decoder-mode: arm
0048b4dc  70 40 2d e9                                      push {r4, r5, r6, lr}
0048b4e0  0c 50 90 e5                                      ldr r5, [r0, #0xc]
0048b4e4  20 30 90 e5                                      ldr r3, [r0, #0x20]
0048b4e8  00 40 a0 e1                                      mov r4, r0
0048b4ec  01 60 a0 e1                                      mov r6, r1
0048b4f0  05 30 63 e0                                      rsb r3, r3, r5
0048b4f4  23 31 b0 e1                                      lsrs r3, r3, #2
0048b4f8  02 00 00 1a                                      bne #0x48b508
0048b4fc  01 10 a0 e3                                      mov r1, #1
0048b500  6f ff ff eb                                      bl #0x48b2c4
0048b504  0c 50 94 e5                                      ldr r5, [r4, #0xc]
0048b508  24 00 84 e2                                      add r0, r4, #0x24
0048b50c  64 ff ff eb                                      bl #0x48b2a4
0048b510  04 00 05 e5                                      str r0, [r5, #-4]
0048b514  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0048b518  06 10 a0 e1                                      mov r1, r6
0048b51c  04 20 43 e2                                      sub r2, r3, #4
0048b520  0c 20 84 e5                                      str r2, [r4, #0xc]
0048b524  04 30 13 e5                                      ldr r3, [r3, #-4]
0048b528  50 00 83 e2                                      add r0, r3, #0x50
0048b52c  78 20 83 e2                                      add r2, r3, #0x78
0048b530  08 20 84 e5                                      str r2, [r4, #8]
0048b534  09 00 84 e8                                      stm r4, {r0, r3}
0048b538  70 40 bd e8                                      pop {r4, r5, r6, lr}
0048b53c  92 ec ff ea                                      b #0x48678c

; FUNCTION 0x0048b540, declared_size=56, range_size=56, mode=arm
; class-group: std::deque<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >
; alias: _ZNSt5dequeIS_IPN3rnd4TileESaIS2_EESaIS4_EE10push_frontERKS4_
; demangled: std::deque<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >::push_front(std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > const&)
; decoder-mode: arm
0048b540  10 40 2d e9                                      push {r4, lr}
0048b544  00 30 90 e5                                      ldr r3, [r0]
0048b548  04 20 90 e5                                      ldr r2, [r0, #4]
0048b54c  00 40 a0 e1                                      mov r4, r0
0048b550  02 00 53 e1                                      cmp r3, r2
0048b554  05 00 00 0a                                      beq #0x48b570
0048b558  28 00 43 e2                                      sub r0, r3, #0x28
0048b55c  8a ec ff eb                                      bl #0x48678c
0048b560  00 30 94 e5                                      ldr r3, [r4]
0048b564  28 30 43 e2                                      sub r3, r3, #0x28
0048b568  00 30 84 e5                                      str r3, [r4]
0048b56c  10 80 bd e8                                      pop {r4, pc}
0048b570  10 40 bd e8                                      pop {r4, lr}
0048b574  d8 ff ff ea                                      b #0x48b4dc
