; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005bac80, declared_size=312, range_size=312, mode=arm
; class-group: boost::pool<glitch::core::SAlignedMalloc<(unsigned char)4> >
; alias: _ZN5boost4poolIN6glitch4core14SAlignedMallocILh4EEEE18malloc_need_resizeEv.clone.8
; demangled: boost::pool<glitch::core::SAlignedMalloc<(unsigned char)4> >::malloc_need_resize() [clone .clone.8]
; decoder-mode: arm
005bac80  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
005bac84  24 61 9f e5                                      ldr r6, [pc, #0x124]
005bac88  24 a1 9f e5                                      ldr sl, [pc, #0x124]
005bac8c  04 40 a0 e3                                      mov r4, #4
005bac90  06 60 8f e0                                      add r6, pc, r6
005bac94  0a 30 96 e7                                      ldr r3, [r6, sl]
005bac98  0c 50 93 e5                                      ldr r5, [r3, #0xc]
005bac9c  05 00 a0 e1                                      mov r0, r5
005baca0  04 10 a0 e1                                      mov r1, r4
005baca4  a0 4f f5 eb                                      bl #0x30eb2c
005baca8  04 30 a0 e1                                      mov r3, r4
005bacac  00 40 51 e2                                      subs r4, r1, #0
005bacb0  03 00 a0 e1                                      mov r0, r3
005bacb4  f9 ff ff 1a                                      bne #0x5baca0
005bacb8  03 10 a0 e1                                      mov r1, r3
005bacbc  05 00 a0 e1                                      mov r0, r5
005bacc0  e1 4f f5 eb                                      bl #0x30ec4c
005bacc4  0a 80 96 e7                                      ldr r8, [r6, sl]
005bacc8  00 71 a0 e1                                      lsl r7, r0, #2
005baccc  04 10 a0 e1                                      mov r1, r4
005bacd0  10 90 98 e5                                      ldr sb, [r8, #0x10]
005bacd4  99 07 09 e0                                      mul sb, sb, r7
005bacd8  0f 00 89 e2                                      add r0, sb, #0xf
005bacdc  21 56 f5 eb                                      bl #0x310568
005bace0  07 50 80 e2                                      add r5, r0, #7
005bace4  03 50 c5 e3                                      bic r5, r5, #3
005bace8  00 00 55 e3                                      cmp r5, #0
005bacec  04 00 05 e5                                      str r0, [r5, #-4]
005bacf0  08 b0 89 e2                                      add fp, sb, #8
005bacf4  2b 00 00 0a                                      beq #0x5bada8
005bacf8  10 30 98 e5                                      ldr r3, [r8, #0x10]
005bacfc  09 00 67 e0                                      rsb r0, r7, sb
005bad00  07 10 a0 e1                                      mov r1, r7
005bad04  83 30 a0 e1                                      lsl r3, r3, #1
005bad08  10 30 88 e5                                      str r3, [r8, #0x10]
005bad0c  ce 4f f5 eb                                      bl #0x30ec4c
005bad10  97 00 00 e0                                      mul r0, r7, r0
005bad14  00 30 98 e5                                      ldr r3, [r8]
005bad18  00 c0 85 e0                                      add ip, r5, r0
005bad1c  0c 00 55 e1                                      cmp r5, ip
005bad20  00 30 85 e7                                      str r3, [r5, r0]
005bad24  12 00 00 0a                                      beq #0x5bad74
005bad28  00 70 67 e2                                      rsb r7, r7, #0
005bad2c  07 20 8c e0                                      add r2, ip, r7
005bad30  02 00 55 e1                                      cmp r5, r2
005bad34  05 00 a0 01                                      moveq r0, r5
005bad38  0c 00 00 0a                                      beq #0x5bad70
005bad3c  07 30 82 e0                                      add r3, r2, r7
005bad40  03 10 a0 e1                                      mov r1, r3
005bad44  02 00 00 ea                                      b #0x5bad54
005bad48  02 c0 a0 e1                                      mov ip, r2
005bad4c  03 20 a0 e1                                      mov r2, r3
005bad50  07 30 83 e0                                      add r3, r3, r7
005bad54  07 10 81 e0                                      add r1, r1, r7
005bad58  01 00 67 e0                                      rsb r0, r7, r1
005bad5c  00 00 55 e1                                      cmp r5, r0
005bad60  00 c0 82 e5                                      str ip, [r2]
005bad64  03 00 a0 e1                                      mov r0, r3
005bad68  f6 ff ff 1a                                      bne #0x5bad48
005bad6c  02 c0 a0 e1                                      mov ip, r2
005bad70  00 c0 80 e5                                      str ip, [r0]
005bad74  0a 30 96 e7                                      ldr r3, [r6, sl]
005bad78  04 20 4b e2                                      sub r2, fp, #4
005bad7c  02 10 85 e0                                      add r1, r5, r2
005bad80  04 00 93 e5                                      ldr r0, [r3, #4]
005bad84  00 50 83 e5                                      str r5, [r3]
005bad88  04 00 01 e5                                      str r0, [r1, #-4]
005bad8c  08 10 93 e5                                      ldr r1, [r3, #8]
005bad90  02 10 85 e7                                      str r1, [r5, r2]
005bad94  00 00 93 e5                                      ldr r0, [r3]
005bad98  20 08 83 e9                                      stmib r3, {r5, fp}
005bad9c  00 20 90 e5                                      ldr r2, [r0]
005bada0  00 20 83 e5                                      str r2, [r3]
005bada4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005bada8  04 00 a0 e1                                      mov r0, r4
005badac  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
005badb0  00 9e 3d 00 c0 3c 00 00                          .byte 0x00, 0x9e, 0x3d, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005cb304, declared_size=312, range_size=312, mode=arm
; class-group: boost::pool<glitch::core::SAlignedMalloc<(unsigned char)4> >
; alias: _ZN5boost4poolIN6glitch4core14SAlignedMallocILh4EEEE18malloc_need_resizeEv.clone.7
; demangled: boost::pool<glitch::core::SAlignedMalloc<(unsigned char)4> >::malloc_need_resize() [clone .clone.7]
; decoder-mode: arm
005cb304  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
005cb308  24 61 9f e5                                      ldr r6, [pc, #0x124]
005cb30c  24 a1 9f e5                                      ldr sl, [pc, #0x124]
005cb310  04 40 a0 e3                                      mov r4, #4
005cb314  06 60 8f e0                                      add r6, pc, r6
005cb318  0a 30 96 e7                                      ldr r3, [r6, sl]
005cb31c  0c 50 93 e5                                      ldr r5, [r3, #0xc]
005cb320  05 00 a0 e1                                      mov r0, r5
005cb324  04 10 a0 e1                                      mov r1, r4
005cb328  ff 0d f5 eb                                      bl #0x30eb2c
005cb32c  04 30 a0 e1                                      mov r3, r4
005cb330  00 40 51 e2                                      subs r4, r1, #0
005cb334  03 00 a0 e1                                      mov r0, r3
005cb338  f9 ff ff 1a                                      bne #0x5cb324
005cb33c  03 10 a0 e1                                      mov r1, r3
005cb340  05 00 a0 e1                                      mov r0, r5
005cb344  40 0e f5 eb                                      bl #0x30ec4c
005cb348  0a 80 96 e7                                      ldr r8, [r6, sl]
005cb34c  00 71 a0 e1                                      lsl r7, r0, #2
005cb350  04 10 a0 e1                                      mov r1, r4
005cb354  10 90 98 e5                                      ldr sb, [r8, #0x10]
005cb358  99 07 09 e0                                      mul sb, sb, r7
005cb35c  0f 00 89 e2                                      add r0, sb, #0xf
005cb360  80 14 f5 eb                                      bl #0x310568
005cb364  07 50 80 e2                                      add r5, r0, #7
005cb368  03 50 c5 e3                                      bic r5, r5, #3
005cb36c  00 00 55 e3                                      cmp r5, #0
005cb370  04 00 05 e5                                      str r0, [r5, #-4]
005cb374  08 b0 89 e2                                      add fp, sb, #8
005cb378  2b 00 00 0a                                      beq #0x5cb42c
005cb37c  10 30 98 e5                                      ldr r3, [r8, #0x10]
005cb380  09 00 67 e0                                      rsb r0, r7, sb
005cb384  07 10 a0 e1                                      mov r1, r7
005cb388  83 30 a0 e1                                      lsl r3, r3, #1
005cb38c  10 30 88 e5                                      str r3, [r8, #0x10]
005cb390  2d 0e f5 eb                                      bl #0x30ec4c
005cb394  97 00 00 e0                                      mul r0, r7, r0
005cb398  00 30 98 e5                                      ldr r3, [r8]
005cb39c  00 c0 85 e0                                      add ip, r5, r0
005cb3a0  0c 00 55 e1                                      cmp r5, ip
005cb3a4  00 30 85 e7                                      str r3, [r5, r0]
005cb3a8  12 00 00 0a                                      beq #0x5cb3f8
005cb3ac  00 70 67 e2                                      rsb r7, r7, #0
005cb3b0  07 20 8c e0                                      add r2, ip, r7
005cb3b4  02 00 55 e1                                      cmp r5, r2
005cb3b8  05 00 a0 01                                      moveq r0, r5
005cb3bc  0c 00 00 0a                                      beq #0x5cb3f4
005cb3c0  07 30 82 e0                                      add r3, r2, r7
005cb3c4  03 10 a0 e1                                      mov r1, r3
005cb3c8  02 00 00 ea                                      b #0x5cb3d8
005cb3cc  02 c0 a0 e1                                      mov ip, r2
005cb3d0  03 20 a0 e1                                      mov r2, r3
005cb3d4  07 30 83 e0                                      add r3, r3, r7
005cb3d8  07 10 81 e0                                      add r1, r1, r7
005cb3dc  01 00 67 e0                                      rsb r0, r7, r1
005cb3e0  00 00 55 e1                                      cmp r5, r0
005cb3e4  00 c0 82 e5                                      str ip, [r2]
005cb3e8  03 00 a0 e1                                      mov r0, r3
005cb3ec  f6 ff ff 1a                                      bne #0x5cb3cc
005cb3f0  02 c0 a0 e1                                      mov ip, r2
005cb3f4  00 c0 80 e5                                      str ip, [r0]
005cb3f8  0a 30 96 e7                                      ldr r3, [r6, sl]
005cb3fc  04 20 4b e2                                      sub r2, fp, #4
005cb400  02 10 85 e0                                      add r1, r5, r2
005cb404  04 00 93 e5                                      ldr r0, [r3, #4]
005cb408  00 50 83 e5                                      str r5, [r3]
005cb40c  04 00 01 e5                                      str r0, [r1, #-4]
005cb410  08 10 93 e5                                      ldr r1, [r3, #8]
005cb414  02 10 85 e7                                      str r1, [r5, r2]
005cb418  00 00 93 e5                                      ldr r0, [r3]
005cb41c  20 08 83 e9                                      stmib r3, {r5, fp}
005cb420  00 20 90 e5                                      ldr r2, [r0]
005cb424  00 20 83 e5                                      str r2, [r3]
005cb428  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005cb42c  04 00 a0 e1                                      mov r0, r4
005cb430  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
005cb434  7c 97 3c 00 c0 3c 00 00                          .byte 0x7c, 0x97, 0x3c, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x005d4350, declared_size=312, range_size=312, mode=arm
; class-group: boost::pool<glitch::core::SAlignedMalloc<(unsigned char)4> >
; alias: _ZN5boost4poolIN6glitch4core14SAlignedMallocILh4EEEE18malloc_need_resizeEv.clone.5
; demangled: boost::pool<glitch::core::SAlignedMalloc<(unsigned char)4> >::malloc_need_resize() [clone .clone.5]
; decoder-mode: arm
005d4350  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
005d4354  24 61 9f e5                                      ldr r6, [pc, #0x124]
005d4358  24 a1 9f e5                                      ldr sl, [pc, #0x124]
005d435c  04 40 a0 e3                                      mov r4, #4
005d4360  06 60 8f e0                                      add r6, pc, r6
005d4364  0a 30 96 e7                                      ldr r3, [r6, sl]
005d4368  0c 50 93 e5                                      ldr r5, [r3, #0xc]
005d436c  05 00 a0 e1                                      mov r0, r5
005d4370  04 10 a0 e1                                      mov r1, r4
005d4374  ec e9 f4 eb                                      bl #0x30eb2c
005d4378  04 30 a0 e1                                      mov r3, r4
005d437c  00 40 51 e2                                      subs r4, r1, #0
005d4380  03 00 a0 e1                                      mov r0, r3
005d4384  f9 ff ff 1a                                      bne #0x5d4370
005d4388  03 10 a0 e1                                      mov r1, r3
005d438c  05 00 a0 e1                                      mov r0, r5
005d4390  2d ea f4 eb                                      bl #0x30ec4c
005d4394  0a 80 96 e7                                      ldr r8, [r6, sl]
005d4398  00 71 a0 e1                                      lsl r7, r0, #2
005d439c  04 10 a0 e1                                      mov r1, r4
005d43a0  10 90 98 e5                                      ldr sb, [r8, #0x10]
005d43a4  99 07 09 e0                                      mul sb, sb, r7
005d43a8  0f 00 89 e2                                      add r0, sb, #0xf
005d43ac  6d f0 f4 eb                                      bl #0x310568
005d43b0  07 50 80 e2                                      add r5, r0, #7
005d43b4  03 50 c5 e3                                      bic r5, r5, #3
005d43b8  00 00 55 e3                                      cmp r5, #0
005d43bc  04 00 05 e5                                      str r0, [r5, #-4]
005d43c0  08 b0 89 e2                                      add fp, sb, #8
005d43c4  2b 00 00 0a                                      beq #0x5d4478
005d43c8  10 30 98 e5                                      ldr r3, [r8, #0x10]
005d43cc  09 00 67 e0                                      rsb r0, r7, sb
005d43d0  07 10 a0 e1                                      mov r1, r7
005d43d4  83 30 a0 e1                                      lsl r3, r3, #1
005d43d8  10 30 88 e5                                      str r3, [r8, #0x10]
005d43dc  1a ea f4 eb                                      bl #0x30ec4c
005d43e0  97 00 00 e0                                      mul r0, r7, r0
005d43e4  00 30 98 e5                                      ldr r3, [r8]
005d43e8  00 c0 85 e0                                      add ip, r5, r0
005d43ec  0c 00 55 e1                                      cmp r5, ip
005d43f0  00 30 85 e7                                      str r3, [r5, r0]
005d43f4  12 00 00 0a                                      beq #0x5d4444
005d43f8  00 70 67 e2                                      rsb r7, r7, #0
005d43fc  07 20 8c e0                                      add r2, ip, r7
005d4400  02 00 55 e1                                      cmp r5, r2
005d4404  05 00 a0 01                                      moveq r0, r5
005d4408  0c 00 00 0a                                      beq #0x5d4440
005d440c  07 30 82 e0                                      add r3, r2, r7
005d4410  03 10 a0 e1                                      mov r1, r3
005d4414  02 00 00 ea                                      b #0x5d4424
005d4418  02 c0 a0 e1                                      mov ip, r2
005d441c  03 20 a0 e1                                      mov r2, r3
005d4420  07 30 83 e0                                      add r3, r3, r7
005d4424  07 10 81 e0                                      add r1, r1, r7
005d4428  01 00 67 e0                                      rsb r0, r7, r1
005d442c  00 00 55 e1                                      cmp r5, r0
005d4430  00 c0 82 e5                                      str ip, [r2]
005d4434  03 00 a0 e1                                      mov r0, r3
005d4438  f6 ff ff 1a                                      bne #0x5d4418
005d443c  02 c0 a0 e1                                      mov ip, r2
005d4440  00 c0 80 e5                                      str ip, [r0]
005d4444  0a 30 96 e7                                      ldr r3, [r6, sl]
005d4448  04 20 4b e2                                      sub r2, fp, #4
005d444c  02 10 85 e0                                      add r1, r5, r2
005d4450  04 00 93 e5                                      ldr r0, [r3, #4]
005d4454  00 50 83 e5                                      str r5, [r3]
005d4458  04 00 01 e5                                      str r0, [r1, #-4]
005d445c  08 10 93 e5                                      ldr r1, [r3, #8]
005d4460  02 10 85 e7                                      str r1, [r5, r2]
005d4464  00 00 93 e5                                      ldr r0, [r3]
005d4468  20 08 83 e9                                      stmib r3, {r5, fp}
005d446c  00 20 90 e5                                      ldr r2, [r0]
005d4470  00 20 83 e5                                      str r2, [r3]
005d4474  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005d4478  04 00 a0 e1                                      mov r0, r4
005d447c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
005d4480  30 07 3c 00 c0 3c 00 00                          .byte 0x30, 0x07, 0x3c, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x00672578, declared_size=80, range_size=80, mode=arm
; class-group: boost::pool<glitch::core::SAlignedMalloc<(unsigned char)4> >
; alias: _ZN5boost4poolIN6glitch4core14SAlignedMallocILh4EEEED1Ev
; demangled: boost::pool<glitch::core::SAlignedMalloc<(unsigned char)4> >::~pool()
; decoder-mode: arm
00672578  70 40 2d e9                                      push {r4, r5, r6, lr}
0067257c  04 30 90 e5                                      ldr r3, [r0, #4]
00672580  00 60 a0 e1                                      mov r6, r0
00672584  08 50 90 e5                                      ldr r5, [r0, #8]
00672588  00 00 53 e3                                      cmp r3, #0
0067258c  0b 00 00 0a                                      beq #0x6725c0
00672590  04 50 45 e2                                      sub r5, r5, #4
00672594  05 20 83 e0                                      add r2, r3, r5
00672598  04 40 12 e5                                      ldr r4, [r2, #-4]
0067259c  04 00 13 e5                                      ldr r0, [r3, #-4]
006725a0  05 50 93 e7                                      ldr r5, [r3, r5]
006725a4  a9 77 f2 eb                                      bl #0x310450
006725a8  00 30 54 e2                                      subs r3, r4, #0
006725ac  f7 ff ff 1a                                      bne #0x672590
006725b0  14 20 96 e5                                      ldr r2, [r6, #0x14]
006725b4  00 30 86 e5                                      str r3, [r6]
006725b8  04 30 86 e5                                      str r3, [r6, #4]
006725bc  10 20 86 e5                                      str r2, [r6, #0x10]
006725c0  06 00 a0 e1                                      mov r0, r6
006725c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
