; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0052224c, declared_size=4, range_size=4, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld16DBG_DumpMeshListEv
; demangled: PFWorld::DBG_DumpMeshList()
; decoder-mode: arm
0052224c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00522250, declared_size=204, range_size=204, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld17DBG_DumpMeshLinksEv
; demangled: PFWorld::DBG_DumpMeshLinks()
; decoder-mode: arm
00522250  f0 05 2d e9                                      push {r4, r5, r6, r7, r8, sl}
00522254  0c 80 90 e5                                      ldr r8, [r0, #0xc]
00522258  08 70 90 e5                                      ldr r7, [r0, #8]
0052225c  08 80 67 e0                                      rsb r8, r7, r8
00522260  48 81 b0 e1                                      asrs r8, r8, #2
00522264  1d 00 00 0a                                      beq #0x5222e0
00522268  00 60 a0 e3                                      mov r6, #0
0052226c  06 31 97 e7                                      ldr r3, [r7, r6, lsl #2]
00522270  34 50 93 e5                                      ldr r5, [r3, #0x34]
00522274  30 40 93 e5                                      ldr r4, [r3, #0x30]
00522278  05 50 64 e0                                      rsb r5, r4, r5
0052227c  45 51 b0 e1                                      asrs r5, r5, #2
00522280  13 00 00 0a                                      beq #0x5222d4
00522284  00 c0 a0 e3                                      mov ip, #0
00522288  0c 31 94 e7                                      ldr r3, [r4, ip, lsl #2]
0052228c  78 00 83 e2                                      add r0, r3, #0x78
00522290  80 30 93 e5                                      ldr r3, [r3, #0x80]
00522294  00 00 53 e1                                      cmp r3, r0
00522298  0a 00 00 0a                                      beq #0x5222c8
0052229c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005222a0  00 00 52 e3                                      cmp r2, #0
005222a4  01 00 00 1a                                      bne #0x5222b0
005222a8  0e 00 00 ea                                      b #0x5222e8
005222ac  03 20 a0 e1                                      mov r2, r3
005222b0  08 30 92 e5                                      ldr r3, [r2, #8]
005222b4  00 00 53 e3                                      cmp r3, #0
005222b8  fb ff ff 1a                                      bne #0x5222ac
005222bc  02 30 a0 e1                                      mov r3, r2
005222c0  00 00 53 e1                                      cmp r3, r0
005222c4  f4 ff ff 1a                                      bne #0x52229c
005222c8  01 c0 8c e2                                      add ip, ip, #1
005222cc  05 00 5c e1                                      cmp ip, r5
005222d0  ec ff ff 1a                                      bne #0x522288
005222d4  01 60 86 e2                                      add r6, r6, #1
005222d8  08 00 56 e1                                      cmp r6, r8
005222dc  e2 ff ff 1a                                      bne #0x52226c
005222e0  f0 05 bd e8                                      pop {r4, r5, r6, r7, r8, sl}
005222e4  1e ff 2f e1                                      bx lr
005222e8  04 10 93 e5                                      ldr r1, [r3, #4]
005222ec  0c a0 91 e5                                      ldr sl, [r1, #0xc]
005222f0  0a 00 53 e1                                      cmp r3, sl
005222f4  05 00 00 1a                                      bne #0x522310
005222f8  01 30 a0 e1                                      mov r3, r1
005222fc  04 10 91 e5                                      ldr r1, [r1, #4]
00522300  0c 20 91 e5                                      ldr r2, [r1, #0xc]
00522304  03 00 52 e1                                      cmp r2, r3
00522308  fa ff ff 0a                                      beq #0x5222f8
0052230c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00522310  02 00 51 e1                                      cmp r1, r2
00522314  01 30 a0 11                                      movne r3, r1
00522318  dd ff ff ea                                      b #0x522294

; FUNCTION 0x0052231c, declared_size=200, range_size=200, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld13DBG_WorldInfoERjS0_S0_
; demangled: PFWorld::DBG_WorldInfo(unsigned int&, unsigned int&, unsigned int&)
; decoder-mode: arm
0052231c  08 c0 90 e5                                      ldr ip, [r0, #8]
00522320  f0 01 2d e9                                      push {r4, r5, r6, r7, r8}
00522324  0c 40 90 e5                                      ldr r4, [r0, #0xc]
00522328  04 40 6c e0                                      rsb r4, ip, r4
0052232c  44 41 a0 e1                                      asr r4, r4, #2
00522330  00 c0 a0 e3                                      mov ip, #0
00522334  00 40 81 e5                                      str r4, [r1]
00522338  00 c0 83 e5                                      str ip, [r3]
0052233c  00 c0 82 e5                                      str ip, [r2]
00522340  08 10 90 e5                                      ldr r1, [r0, #8]
00522344  0c 70 90 e5                                      ldr r7, [r0, #0xc]
00522348  07 70 61 e0                                      rsb r7, r1, r7
0052234c  47 71 b0 e1                                      asrs r7, r7, #2
00522350  21 00 00 0a                                      beq #0x5223dc
00522354  0c 80 a0 e1                                      mov r8, ip
00522358  08 11 91 e7                                      ldr r1, [r1, r8, lsl #2]
0052235c  08 61 a0 e1                                      lsl r6, r8, #2
00522360  30 40 91 e5                                      ldr r4, [r1, #0x30]
00522364  34 10 91 e5                                      ldr r1, [r1, #0x34]
00522368  01 10 64 e0                                      rsb r1, r4, r1
0052236c  41 c1 8c e0                                      add ip, ip, r1, asr #2
00522370  00 c0 82 e5                                      str ip, [r2]
00522374  08 10 90 e5                                      ldr r1, [r0, #8]
00522378  08 11 91 e7                                      ldr r1, [r1, r8, lsl #2]
0052237c  34 50 91 e5                                      ldr r5, [r1, #0x34]
00522380  30 40 91 e5                                      ldr r4, [r1, #0x30]
00522384  05 50 64 e0                                      rsb r5, r4, r5
00522388  45 51 b0 e1                                      asrs r5, r5, #2
0052238c  0c 00 00 0a                                      beq #0x5223c4
00522390  00 c0 93 e5                                      ldr ip, [r3]
00522394  00 10 a0 e3                                      mov r1, #0
00522398  02 00 00 ea                                      b #0x5223a8
0052239c  08 40 90 e5                                      ldr r4, [r0, #8]
005223a0  06 40 94 e7                                      ldr r4, [r4, r6]
005223a4  30 40 94 e5                                      ldr r4, [r4, #0x30]
005223a8  01 41 94 e7                                      ldr r4, [r4, r1, lsl #2]
005223ac  01 10 81 e2                                      add r1, r1, #1
005223b0  05 00 51 e1                                      cmp r1, r5
005223b4  6c 40 94 e5                                      ldr r4, [r4, #0x6c]
005223b8  04 c0 8c e0                                      add ip, ip, r4
005223bc  00 c0 83 e5                                      str ip, [r3]
005223c0  f5 ff ff 1a                                      bne #0x52239c
005223c4  01 80 88 e2                                      add r8, r8, #1
005223c8  07 00 58 e1                                      cmp r8, r7
005223cc  02 00 00 0a                                      beq #0x5223dc
005223d0  00 c0 92 e5                                      ldr ip, [r2]
005223d4  08 10 90 e5                                      ldr r1, [r0, #8]
005223d8  de ff ff ea                                      b #0x522358
005223dc  f0 01 bd e8                                      pop {r4, r5, r6, r7, r8}
005223e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005223e4, declared_size=28, range_size=28, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld10DBG_PFInfoERjS0_
; demangled: PFWorld::DBG_PFInfo(unsigned int&, unsigned int&)
; decoder-mode: arm
005223e4  48 30 90 e5                                      ldr r3, [r0, #0x48]
005223e8  00 00 53 e3                                      cmp r3, #0
005223ec  14 30 93 15                                      ldrne r3, [r3, #0x14]
005223f0  00 30 81 e5                                      str r3, [r1]
005223f4  00 30 a0 e3                                      mov r3, #0
005223f8  00 30 82 e5                                      str r3, [r2]
005223fc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00522444, declared_size=180, range_size=180, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld17DBG_ObstaclesInfoERj
; demangled: PFWorld::DBG_ObstaclesInfo(unsigned int&)
; decoder-mode: arm
00522444  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00522448  00 30 a0 e3                                      mov r3, #0
0052244c  10 d0 4d e2                                      sub sp, sp, #0x10
00522450  34 40 90 e5                                      ldr r4, [r0, #0x34]
00522454  01 60 a0 e1                                      mov r6, r1
00522458  2c 70 80 e2                                      add r7, r0, #0x2c
0052245c  00 30 81 e5                                      str r3, [r1]
00522460  0d 50 a0 e1                                      mov r5, sp
00522464  04 00 57 e1                                      cmp r7, r4
00522468  13 00 00 0a                                      beq #0x5224bc
0052246c  14 30 84 e2                                      add r3, r4, #0x14
00522470  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
00522474  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
00522478  24 00 84 e2                                      add r0, r4, #0x24
0052247c  0d 10 a0 e1                                      mov r1, sp
00522480  00 80 96 e5                                      ldr r8, [r6]
00522484  dd ff ff eb                                      bl #0x522400
00522488  08 00 80 e0                                      add r0, r0, r8
0052248c  00 00 86 e5                                      str r0, [r6]
00522490  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00522494  00 00 52 e3                                      cmp r2, #0
00522498  01 00 00 1a                                      bne #0x5224a4
0052249c  08 00 00 ea                                      b #0x5224c4
005224a0  03 20 a0 e1                                      mov r2, r3
005224a4  08 30 92 e5                                      ldr r3, [r2, #8]
005224a8  00 00 53 e3                                      cmp r3, #0
005224ac  fb ff ff 1a                                      bne #0x5224a0
005224b0  02 40 a0 e1                                      mov r4, r2
005224b4  04 00 57 e1                                      cmp r7, r4
005224b8  eb ff ff 1a                                      bne #0x52246c
005224bc  10 d0 8d e2                                      add sp, sp, #0x10
005224c0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005224c4  04 30 94 e5                                      ldr r3, [r4, #4]
005224c8  0c 10 93 e5                                      ldr r1, [r3, #0xc]
005224cc  01 00 54 e1                                      cmp r4, r1
005224d0  05 00 00 1a                                      bne #0x5224ec
005224d4  03 40 a0 e1                                      mov r4, r3
005224d8  04 30 93 e5                                      ldr r3, [r3, #4]
005224dc  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005224e0  04 00 52 e1                                      cmp r2, r4
005224e4  fa ff ff 0a                                      beq #0x5224d4
005224e8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005224ec  03 00 52 e1                                      cmp r2, r3
005224f0  03 40 a0 11                                      movne r4, r3
005224f4  da ff ff ea                                      b #0x522464

; FUNCTION 0x0052253c, declared_size=112, range_size=112, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld14DBG_SearchInfoERj
; demangled: PFWorld::DBG_SearchInfo(unsigned int&)
; decoder-mode: arm
0052253c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00522540  24 d0 4d e2                                      sub sp, sp, #0x24
00522544  10 c0 8d e2                                      add ip, sp, #0x10
00522548  5c 60 80 e2                                      add r6, r0, #0x5c
0052254c  4c 40 80 e2                                      add r4, r0, #0x4c
00522550  01 70 a0 e1                                      mov r7, r1
00522554  00 50 a0 e1                                      mov r5, r0
00522558  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
0052255c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00522560  0c 10 a0 e1                                      mov r1, ip
00522564  06 00 a0 e1                                      mov r0, r6
00522568  e2 ff ff eb                                      bl #0x5224f8
0052256c  00 00 50 e3                                      cmp r0, #0
00522570  00 00 87 05                                      streq r0, [r7]
00522574  0a 00 00 0a                                      beq #0x5225a4
00522578  0d c0 a0 e1                                      mov ip, sp
0052257c  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
00522580  74 50 95 e5                                      ldr r5, [r5, #0x74]
00522584  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00522588  0d 10 a0 e1                                      mov r1, sp
0052258c  06 00 a0 e1                                      mov r0, r6
00522590  d8 ff ff eb                                      bl #0x5224f8
00522594  00 10 a0 e1                                      mov r1, r0
00522598  05 00 a0 e1                                      mov r0, r5
0052259c  aa b1 f7 eb                                      bl #0x30ec4c
005225a0  00 00 87 e5                                      str r0, [r7]
005225a4  24 d0 8d e2                                      add sp, sp, #0x24
005225a8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x005225ac, declared_size=32, range_size=32, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld11DBG_MemInfoERj
; demangled: PFWorld::DBG_MemInfo(unsigned int&)
; decoder-mode: arm
005225ac  10 40 2d e9                                      push {r4, lr}
005225b0  48 00 90 e5                                      ldr r0, [r0, #0x48]
005225b4  01 40 a0 e1                                      mov r4, r1
005225b8  00 00 50 e3                                      cmp r0, #0
005225bc  00 00 00 0a                                      beq #0x5225c4
005225c0  02 2e 00 eb                                      bl #0x52ddd0
005225c4  00 00 84 e5                                      str r0, [r4]
005225c8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005225cc, declared_size=28, range_size=28, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld16DBG_ObstacleInfoERK8PFObjectRjR7Point3DIfE
; demangled: PFWorld::DBG_ObstacleInfo(PFObject const&, unsigned int&, Point3D<float>&)
; decoder-mode: arm
005225cc  10 40 2d e9                                      push {r4, lr}
005225d0  02 40 a0 e1                                      mov r4, r2
005225d4  03 20 a0 e1                                      mov r2, r3
005225d8  00 30 a0 e3                                      mov r3, #0
005225dc  1f 14 00 eb                                      bl #0x527660
005225e0  00 00 84 e5                                      str r0, [r4]
005225e4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005225e8, declared_size=228, range_size=228, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld8DBG_DrawEPK7Point3DIfE
; demangled: PFWorld::DBG_Draw(Point3D<float> const*)
; decoder-mode: arm
005225e8  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
005225ec  08 a0 90 e5                                      ldr sl, [r0, #8]
005225f0  0c 90 90 e5                                      ldr sb, [r0, #0xc]
005225f4  00 b0 a0 e1                                      mov fp, r0
005225f8  01 80 a0 e1                                      mov r8, r1
005225fc  09 30 6a e0                                      rsb r3, sl, sb
00522600  23 31 b0 e1                                      lsrs r3, r3, #2
00522604  2f 00 00 0a                                      beq #0x5226c8
00522608  00 40 a0 e3                                      mov r4, #0
0052260c  04 50 a0 e1                                      mov r5, r4
00522610  00 00 58 e3                                      cmp r8, #0
00522614  04 60 9a 07                                      ldreq r6, [sl, r4]
00522618  21 00 00 0a                                      beq #0x5226a4
0052261c  00 70 98 e5                                      ldr r7, [r8]
00522620  04 60 9a e7                                      ldr r6, [sl, r4]
00522624  07 10 a0 e1                                      mov r1, r7
00522628  3c 00 96 e5                                      ldr r0, [r6, #0x3c]
0052262c  de b0 f7 eb                                      bl #0x30e9ac
00522630  00 00 50 e3                                      cmp r0, #0
00522634  07 00 a0 e1                                      mov r0, r7
00522638  1d 00 00 0a                                      beq #0x5226b4
0052263c  48 10 96 e5                                      ldr r1, [r6, #0x48]
00522640  d9 b0 f7 eb                                      bl #0x30e9ac
00522644  00 00 50 e3                                      cmp r0, #0
00522648  19 00 00 0a                                      beq #0x5226b4
0052264c  04 70 98 e5                                      ldr r7, [r8, #4]
00522650  40 00 96 e5                                      ldr r0, [r6, #0x40]
00522654  07 10 a0 e1                                      mov r1, r7
00522658  d3 b0 f7 eb                                      bl #0x30e9ac
0052265c  00 00 50 e3                                      cmp r0, #0
00522660  07 00 a0 e1                                      mov r0, r7
00522664  12 00 00 0a                                      beq #0x5226b4
00522668  4c 10 96 e5                                      ldr r1, [r6, #0x4c]
0052266c  ce b0 f7 eb                                      bl #0x30e9ac
00522670  00 00 50 e3                                      cmp r0, #0
00522674  0e 00 00 0a                                      beq #0x5226b4
00522678  08 70 98 e5                                      ldr r7, [r8, #8]
0052267c  44 00 96 e5                                      ldr r0, [r6, #0x44]
00522680  07 10 a0 e1                                      mov r1, r7
00522684  c8 b0 f7 eb                                      bl #0x30e9ac
00522688  00 00 50 e3                                      cmp r0, #0
0052268c  07 00 a0 e1                                      mov r0, r7
00522690  07 00 00 0a                                      beq #0x5226b4
00522694  50 10 96 e5                                      ldr r1, [r6, #0x50]
00522698  c3 b0 f7 eb                                      bl #0x30e9ac
0052269c  00 00 50 e3                                      cmp r0, #0
005226a0  03 00 00 0a                                      beq #0x5226b4
005226a4  06 00 a0 e1                                      mov r0, r6
005226a8  45 fb ff eb                                      bl #0x5213c4
005226ac  08 a0 9b e5                                      ldr sl, [fp, #8]
005226b0  0c 90 9b e5                                      ldr sb, [fp, #0xc]
005226b4  01 50 85 e2                                      add r5, r5, #1
005226b8  09 30 6a e0                                      rsb r3, sl, sb
005226bc  43 01 55 e1                                      cmp r5, r3, asr #2
005226c0  04 40 84 e2                                      add r4, r4, #4
005226c4  d1 ff ff 3a                                      blo #0x522610
005226c8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x005226cc, declared_size=376, range_size=376, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld8PostLoadEv
; demangled: PFWorld::PostLoad()
; decoder-mode: arm
005226cc  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
005226d0  04 30 90 e5                                      ldr r3, [r0, #4]
005226d4  00 b0 a0 e1                                      mov fp, r0
005226d8  01 00 53 e3                                      cmp r3, #1
005226dc  00 00 00 0a                                      beq #0x5226e4
005226e0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005226e4  0c a0 90 e5                                      ldr sl, [r0, #0xc]
005226e8  08 70 90 e5                                      ldr r7, [r0, #8]
005226ec  02 30 a0 e3                                      mov r3, #2
005226f0  04 30 80 e5                                      str r3, [r0, #4]
005226f4  0a 20 67 e0                                      rsb r2, r7, sl
005226f8  32 33 b0 e1                                      lsrs r3, r2, r3
005226fc  f7 ff ff 0a                                      beq #0x5226e0
00522700  00 30 a0 e3                                      mov r3, #0
00522704  01 90 83 e2                                      add sb, r3, #1
00522708  42 01 59 e1                                      cmp sb, r2, asr #2
0052270c  03 81 97 e7                                      ldr r8, [r7, r3, lsl #2]
00522710  42 00 00 2a                                      bhs #0x522820
00522714  09 51 a0 e1                                      lsl r5, sb, #2
00522718  09 40 a0 e1                                      mov r4, sb
0052271c  05 60 97 e7                                      ldr r6, [r7, r5]
00522720  42 14 a0 e3                                      mov r1, #0x42000000
00522724  12 17 81 e2                                      add r1, r1, #0x480000
00522728  48 00 96 e5                                      ldr r0, [r6, #0x48]
0052272c  1c b1 f7 eb                                      bl #0x30eba4
00522730  00 10 a0 e1                                      mov r1, r0
00522734  3c 00 98 e5                                      ldr r0, [r8, #0x3c]
00522738  9b b0 f7 eb                                      bl #0x30e9ac
0052273c  42 14 a0 e3                                      mov r1, #0x42000000
00522740  00 00 50 e3                                      cmp r0, #0
00522744  01 40 84 e2                                      add r4, r4, #1
00522748  12 17 81 e2                                      add r1, r1, #0x480000
0052274c  2f 00 00 0a                                      beq #0x522810
00522750  3c 00 96 e5                                      ldr r0, [r6, #0x3c]
00522754  14 af f7 eb                                      bl #0x30e3ac
00522758  00 10 a0 e1                                      mov r1, r0
0052275c  48 00 98 e5                                      ldr r0, [r8, #0x48]
00522760  53 af f7 eb                                      bl #0x30e4b4
00522764  42 14 a0 e3                                      mov r1, #0x42000000
00522768  00 00 50 e3                                      cmp r0, #0
0052276c  12 17 81 e2                                      add r1, r1, #0x480000
00522770  26 00 00 0a                                      beq #0x522810
00522774  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
00522778  09 b1 f7 eb                                      bl #0x30eba4
0052277c  00 10 a0 e1                                      mov r1, r0
00522780  40 00 98 e5                                      ldr r0, [r8, #0x40]
00522784  88 b0 f7 eb                                      bl #0x30e9ac
00522788  42 14 a0 e3                                      mov r1, #0x42000000
0052278c  00 00 50 e3                                      cmp r0, #0
00522790  12 17 81 e2                                      add r1, r1, #0x480000
00522794  1d 00 00 0a                                      beq #0x522810
00522798  40 00 96 e5                                      ldr r0, [r6, #0x40]
0052279c  02 af f7 eb                                      bl #0x30e3ac
005227a0  00 10 a0 e1                                      mov r1, r0
005227a4  4c 00 98 e5                                      ldr r0, [r8, #0x4c]
005227a8  41 af f7 eb                                      bl #0x30e4b4
005227ac  42 14 a0 e3                                      mov r1, #0x42000000
005227b0  00 00 50 e3                                      cmp r0, #0
005227b4  12 17 81 e2                                      add r1, r1, #0x480000
005227b8  14 00 00 0a                                      beq #0x522810
005227bc  50 00 96 e5                                      ldr r0, [r6, #0x50]
005227c0  f7 b0 f7 eb                                      bl #0x30eba4
005227c4  00 10 a0 e1                                      mov r1, r0
005227c8  44 00 98 e5                                      ldr r0, [r8, #0x44]
005227cc  76 b0 f7 eb                                      bl #0x30e9ac
005227d0  42 14 a0 e3                                      mov r1, #0x42000000
005227d4  00 00 50 e3                                      cmp r0, #0
005227d8  12 17 81 e2                                      add r1, r1, #0x480000
005227dc  0b 00 00 0a                                      beq #0x522810
005227e0  44 00 96 e5                                      ldr r0, [r6, #0x44]
005227e4  f0 ae f7 eb                                      bl #0x30e3ac
005227e8  00 10 a0 e1                                      mov r1, r0
005227ec  50 00 98 e5                                      ldr r0, [r8, #0x50]
005227f0  2f af f7 eb                                      bl #0x30e4b4
005227f4  00 00 50 e3                                      cmp r0, #0
005227f8  04 00 00 0a                                      beq #0x522810
005227fc  06 10 a0 e1                                      mov r1, r6
00522800  08 00 a0 e1                                      mov r0, r8
00522804  70 fc ff eb                                      bl #0x5219cc
00522808  0c a0 9b e5                                      ldr sl, [fp, #0xc]
0052280c  08 70 9b e5                                      ldr r7, [fp, #8]
00522810  0a 30 67 e0                                      rsb r3, r7, sl
00522814  43 01 54 e1                                      cmp r4, r3, asr #2
00522818  04 50 85 e2                                      add r5, r5, #4
0052281c  be ff ff 3a                                      blo #0x52271c
00522820  08 00 a0 e1                                      mov r0, r8
00522824  f7 fa ff eb                                      bl #0x521408
00522828  0c a0 9b e5                                      ldr sl, [fp, #0xc]
0052282c  08 70 9b e5                                      ldr r7, [fp, #8]
00522830  09 30 a0 e1                                      mov r3, sb
00522834  0a 20 67 e0                                      rsb r2, r7, sl
00522838  42 01 59 e1                                      cmp sb, r2, asr #2
0052283c  b0 ff ff 3a                                      blo #0x522704
00522840  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00522844, declared_size=628, range_size=628, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld5_InitEv
; demangled: PFWorld::_Init()
; decoder-mode: arm
00522844  70 40 2d e9                                      push {r4, r5, r6, lr}
00522848  04 30 90 e5                                      ldr r3, [r0, #4]
0052284c  20 42 9f e5                                      ldr r4, [pc, #0x220]
00522850  08 d0 4d e2                                      sub sp, sp, #8
00522854  00 00 53 e3                                      cmp r3, #0
00522858  00 50 a0 e1                                      mov r5, r0
0052285c  04 40 8f e0                                      add r4, pc, r4
00522860  07 00 00 0a                                      beq #0x522884
00522864  44 30 90 e5                                      ldr r3, [r0, #0x44]
00522868  00 00 53 e3                                      cmp r3, #0
0052286c  51 00 00 0a                                      beq #0x5229b8
00522870  48 30 95 e5                                      ldr r3, [r5, #0x48]
00522874  00 00 53 e3                                      cmp r3, #0
00522878  39 00 00 0a                                      beq #0x522964
0052287c  08 d0 8d e2                                      add sp, sp, #8
00522880  70 80 bd e8                                      pop {r4, r5, r6, pc}
00522884  44 20 90 e5                                      ldr r2, [r0, #0x44]
00522888  00 00 52 e3                                      cmp r2, #0
0052288c  07 00 00 0a                                      beq #0x5228b0
00522890  e0 21 9f e5                                      ldr r2, [pc, #0x1e0]
00522894  02 20 94 e7                                      ldr r2, [r4, r2]
00522898  00 20 92 e5                                      ldr r2, [r2]
0052289c  02 00 52 e3                                      cmp r2, #2
005228a0  00 30 83 05                                      streq r3, [r3]
005228a4  01 00 00 0a                                      beq #0x5228b0
005228a8  01 00 52 e3                                      cmp r2, #1
005228ac  56 00 00 0a                                      beq #0x522a0c
005228b0  48 30 95 e5                                      ldr r3, [r5, #0x48]
005228b4  00 00 53 e3                                      cmp r3, #0
005228b8  08 00 00 0a                                      beq #0x5228e0
005228bc  b4 31 9f e5                                      ldr r3, [pc, #0x1b4]
005228c0  03 30 94 e7                                      ldr r3, [r4, r3]
005228c4  00 30 93 e5                                      ldr r3, [r3]
005228c8  02 00 53 e3                                      cmp r3, #2
005228cc  00 30 a0 03                                      moveq r3, #0
005228d0  00 30 83 05                                      streq r3, [r3]
005228d4  01 00 00 0a                                      beq #0x5228e0
005228d8  01 00 53 e3                                      cmp r3, #1
005228dc  57 00 00 0a                                      beq #0x522a40
005228e0  00 10 a0 e3                                      mov r1, #0
005228e4  1c 00 a0 e3                                      mov r0, #0x1c
005228e8  20 b7 f7 eb                                      bl #0x310570
005228ec  88 21 9f e5                                      ldr r2, [pc, #0x188]
005228f0  00 60 a0 e3                                      mov r6, #0
005228f4  00 30 a0 e1                                      mov r3, r0
005228f8  02 20 94 e7                                      ldr r2, [r4, r2]
005228fc  08 60 80 e5                                      str r6, [r0, #8]
00522900  04 60 e3 e5                                      strb r6, [r3, #4]!
00522904  08 20 82 e2                                      add r2, r2, #8
00522908  10 30 80 e5                                      str r3, [r0, #0x10]
0052290c  00 20 80 e5                                      str r2, [r0]
00522910  0c 30 80 e5                                      str r3, [r0, #0xc]
00522914  14 60 80 e5                                      str r6, [r0, #0x14]
00522918  06 10 a0 e1                                      mov r1, r6
0052291c  44 00 85 e5                                      str r0, [r5, #0x44]
00522920  20 00 a0 e3                                      mov r0, #0x20
00522924  11 b7 f7 eb                                      bl #0x310570
00522928  50 21 9f e5                                      ldr r2, [pc, #0x150]
0052292c  00 30 a0 e1                                      mov r3, r0
00522930  08 60 80 e5                                      str r6, [r0, #8]
00522934  02 20 94 e7                                      ldr r2, [r4, r2]
00522938  04 60 e3 e5                                      strb r6, [r3, #4]!
0052293c  10 30 80 e5                                      str r3, [r0, #0x10]
00522940  0c 30 80 e5                                      str r3, [r0, #0xc]
00522944  08 20 82 e2                                      add r2, r2, #8
00522948  01 30 a0 e3                                      mov r3, #1
0052294c  00 20 80 e5                                      str r2, [r0]
00522950  1c 60 80 e5                                      str r6, [r0, #0x1c]
00522954  14 60 80 e5                                      str r6, [r0, #0x14]
00522958  04 30 85 e5                                      str r3, [r5, #4]
0052295c  48 00 85 e5                                      str r0, [r5, #0x48]
00522960  c5 ff ff ea                                      b #0x52287c
00522964  0c 21 9f e5                                      ldr r2, [pc, #0x10c]
00522968  02 20 94 e7                                      ldr r2, [r4, r2]
0052296c  00 20 92 e5                                      ldr r2, [r2]
00522970  02 00 52 e3                                      cmp r2, #2
00522974  00 30 83 05                                      streq r3, [r3]
00522978  bf ff ff 0a                                      beq #0x52287c
0052297c  01 00 52 e3                                      cmp r2, #1
00522980  bd ff ff 1a                                      bne #0x52287c
00522984  f8 00 9f e5                                      ldr r0, [pc, #0xf8]
00522988  f8 10 9f e5                                      ldr r1, [pc, #0xf8]
0052298c  f8 20 9f e5                                      ldr r2, [pc, #0xf8]
00522990  00 00 94 e7                                      ldr r0, [r4, r0]
00522994  f4 30 9f e5                                      ldr r3, [pc, #0xf4]
00522998  2f c0 a0 e3                                      mov ip, #0x2f
0052299c  01 10 8f e0                                      add r1, pc, r1
005229a0  02 20 8f e0                                      add r2, pc, r2
005229a4  03 30 8f e0                                      add r3, pc, r3
005229a8  a8 00 80 e2                                      add r0, r0, #0xa8
005229ac  00 c0 8d e5                                      str ip, [sp]
005229b0  93 ad f7 eb                                      bl #0x30e004
005229b4  b0 ff ff ea                                      b #0x52287c
005229b8  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
005229bc  02 20 94 e7                                      ldr r2, [r4, r2]
005229c0  00 20 92 e5                                      ldr r2, [r2]
005229c4  02 00 52 e3                                      cmp r2, #2
005229c8  00 30 83 05                                      streq r3, [r3]
005229cc  a7 ff ff 0a                                      beq #0x522870
005229d0  01 00 52 e3                                      cmp r2, #1
005229d4  a5 ff ff 1a                                      bne #0x522870
005229d8  a4 00 9f e5                                      ldr r0, [pc, #0xa4]
005229dc  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
005229e0  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
005229e4  00 00 94 e7                                      ldr r0, [r4, r0]
005229e8  ac 30 9f e5                                      ldr r3, [pc, #0xac]
005229ec  2e c0 a0 e3                                      mov ip, #0x2e
005229f0  01 10 8f e0                                      add r1, pc, r1
005229f4  02 20 8f e0                                      add r2, pc, r2
005229f8  03 30 8f e0                                      add r3, pc, r3
005229fc  a8 00 80 e2                                      add r0, r0, #0xa8
00522a00  00 c0 8d e5                                      str ip, [sp]
00522a04  7e ad f7 eb                                      bl #0x30e004
00522a08  98 ff ff ea                                      b #0x522870
00522a0c  70 00 9f e5                                      ldr r0, [pc, #0x70]
00522a10  88 10 9f e5                                      ldr r1, [pc, #0x88]
00522a14  88 20 9f e5                                      ldr r2, [pc, #0x88]
00522a18  00 00 94 e7                                      ldr r0, [r4, r0]
00522a1c  84 30 9f e5                                      ldr r3, [pc, #0x84]
00522a20  33 c0 a0 e3                                      mov ip, #0x33
00522a24  01 10 8f e0                                      add r1, pc, r1
00522a28  02 20 8f e0                                      add r2, pc, r2
00522a2c  03 30 8f e0                                      add r3, pc, r3
00522a30  a8 00 80 e2                                      add r0, r0, #0xa8
00522a34  00 c0 8d e5                                      str ip, [sp]
00522a38  71 ad f7 eb                                      bl #0x30e004
00522a3c  9b ff ff ea                                      b #0x5228b0
00522a40  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00522a44  60 10 9f e5                                      ldr r1, [pc, #0x60]
00522a48  60 20 9f e5                                      ldr r2, [pc, #0x60]
00522a4c  00 00 94 e7                                      ldr r0, [r4, r0]
00522a50  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00522a54  34 c0 a0 e3                                      mov ip, #0x34
00522a58  01 10 8f e0                                      add r1, pc, r1
00522a5c  02 20 8f e0                                      add r2, pc, r2
00522a60  03 30 8f e0                                      add r3, pc, r3
00522a64  a8 00 80 e2                                      add r0, r0, #0xa8
00522a68  00 c0 8d e5                                      str ip, [sp]
00522a6c  64 ad f7 eb                                      bl #0x30e004
00522a70  9a ff ff ea                                      b #0x5228e0
; mapping-symbol data/literal pool
00522a74  34 22 47 00 c0 39 00 00 2c 26 00 00 9c 1d 00 00  .byte 0x34, 0x22, 0x47, 0x00, 0xc0, 0x39, 0x00, 0x00, 0x2c, 0x26, 0x00, 0x00, 0x9c, 0x1d, 0x00, 0x00
00522a84  c0 19 00 00 3c ba 39 00 88 9f 3b 00 6c a0 3b 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x3c, 0xba, 0x39, 0x00, 0x88, 0x9f, 0x3b, 0x00, 0x6c, 0xa0, 0x3b, 0x00
00522a94  e8 b9 39 00 24 9f 3b 00 18 a0 3b 00 b4 b9 39 00  .byte 0xe8, 0xb9, 0x39, 0x00, 0x24, 0x9f, 0x3b, 0x00, 0x18, 0xa0, 0x3b, 0x00, 0xb4, 0xb9, 0x39, 0x00
00522aa4  30 a0 3b 00 e4 9f 3b 00 80 b9 39 00 0c a0 3b 00  .byte 0x30, 0xa0, 0x3b, 0x00, 0xe4, 0x9f, 0x3b, 0x00, 0x80, 0xb9, 0x39, 0x00, 0x0c, 0xa0, 0x3b, 0x00
00522ab4  b0 9f 3b 00                                      .byte 0xb0, 0x9f, 0x3b, 0x00

; FUNCTION 0x00522d58, declared_size=212, range_size=212, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorldC2Ev
; demangled: PFWorld::PFWorld()
; decoder-mode: arm
00522d58  c4 20 9f e5                                      ldr r2, [pc, #0xc4]
00522d5c  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
00522d60  70 40 2d e9                                      push {r4, r5, r6, lr}
00522d64  02 20 8f e0                                      add r2, pc, r2
00522d68  01 10 92 e7                                      ldr r1, [r2, r1]
00522d6c  00 40 a0 e1                                      mov r4, r0
00522d70  00 50 a0 e3                                      mov r5, #0
00522d74  00 30 a0 e3                                      mov r3, #0
00522d78  08 10 81 e2                                      add r1, r1, #8
00522d7c  28 30 84 e5                                      str r3, [r4, #0x28]
00522d80  14 30 84 e5                                      str r3, [r4, #0x14]
00522d84  18 30 84 e5                                      str r3, [r4, #0x18]
00522d88  1c 30 84 e5                                      str r3, [r4, #0x1c]
00522d8c  20 30 84 e5                                      str r3, [r4, #0x20]
00522d90  24 30 84 e5                                      str r3, [r4, #0x24]
00522d94  22 00 84 e8                                      stm r4, {r1, r5}
00522d98  08 50 84 e5                                      str r5, [r4, #8]
00522d9c  0c 50 84 e5                                      str r5, [r4, #0xc]
00522da0  10 50 84 e5                                      str r5, [r4, #0x10]
00522da4  30 50 84 e5                                      str r5, [r4, #0x30]
00522da8  2c 50 e0 e5                                      strb r5, [r0, #0x2c]!
00522dac  38 00 84 e5                                      str r0, [r4, #0x38]
00522db0  34 00 84 e5                                      str r0, [r4, #0x34]
00522db4  3c 50 84 e5                                      str r5, [r4, #0x3c]
00522db8  4c 00 84 e2                                      add r0, r4, #0x4c
00522dbc  44 50 84 e5                                      str r5, [r4, #0x44]
00522dc0  48 50 84 e5                                      str r5, [r4, #0x48]
00522dc4  4c 50 84 e5                                      str r5, [r4, #0x4c]
00522dc8  50 50 84 e5                                      str r5, [r4, #0x50]
00522dcc  54 50 84 e5                                      str r5, [r4, #0x54]
00522dd0  58 50 84 e5                                      str r5, [r4, #0x58]
00522dd4  5c 50 84 e5                                      str r5, [r4, #0x5c]
00522dd8  60 50 84 e5                                      str r5, [r4, #0x60]
00522ddc  64 50 84 e5                                      str r5, [r4, #0x64]
00522de0  68 50 84 e5                                      str r5, [r4, #0x68]
00522de4  6c 50 84 e5                                      str r5, [r4, #0x6c]
00522de8  70 50 84 e5                                      str r5, [r4, #0x70]
00522dec  b8 ff ff eb                                      bl #0x522cd4
00522df0  42 34 a0 e3                                      mov r3, #0x42000000
00522df4  32 37 83 e2                                      add r3, r3, #0xc80000
00522df8  94 50 c4 e5                                      strb r5, [r4, #0x94]
00522dfc  74 50 84 e5                                      str r5, [r4, #0x74]
00522e00  90 30 84 e5                                      str r3, [r4, #0x90]
00522e04  78 50 84 e5                                      str r5, [r4, #0x78]
00522e08  7c 50 84 e5                                      str r5, [r4, #0x7c]
00522e0c  80 50 84 e5                                      str r5, [r4, #0x80]
00522e10  84 50 84 e5                                      str r5, [r4, #0x84]
00522e14  88 50 84 e5                                      str r5, [r4, #0x88]
00522e18  8c 50 84 e5                                      str r5, [r4, #0x8c]
00522e1c  04 00 a0 e1                                      mov r0, r4
00522e20  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00522e24  2c 1d 47 00 64 26 00 00                          .byte 0x2c, 0x1d, 0x47, 0x00, 0x64, 0x26, 0x00, 0x00

; FUNCTION 0x00522e2c, declared_size=212, range_size=212, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorldC1Ev
; demangled: PFWorld::PFWorld()
; decoder-mode: arm
00522e2c  c4 20 9f e5                                      ldr r2, [pc, #0xc4]
00522e30  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
00522e34  70 40 2d e9                                      push {r4, r5, r6, lr}
00522e38  02 20 8f e0                                      add r2, pc, r2
00522e3c  01 10 92 e7                                      ldr r1, [r2, r1]
00522e40  00 40 a0 e1                                      mov r4, r0
00522e44  00 50 a0 e3                                      mov r5, #0
00522e48  00 30 a0 e3                                      mov r3, #0
00522e4c  08 10 81 e2                                      add r1, r1, #8
00522e50  28 30 84 e5                                      str r3, [r4, #0x28]
00522e54  14 30 84 e5                                      str r3, [r4, #0x14]
00522e58  18 30 84 e5                                      str r3, [r4, #0x18]
00522e5c  1c 30 84 e5                                      str r3, [r4, #0x1c]
00522e60  20 30 84 e5                                      str r3, [r4, #0x20]
00522e64  24 30 84 e5                                      str r3, [r4, #0x24]
00522e68  22 00 84 e8                                      stm r4, {r1, r5}
00522e6c  08 50 84 e5                                      str r5, [r4, #8]
00522e70  0c 50 84 e5                                      str r5, [r4, #0xc]
00522e74  10 50 84 e5                                      str r5, [r4, #0x10]
00522e78  30 50 84 e5                                      str r5, [r4, #0x30]
00522e7c  2c 50 e0 e5                                      strb r5, [r0, #0x2c]!
00522e80  38 00 84 e5                                      str r0, [r4, #0x38]
00522e84  34 00 84 e5                                      str r0, [r4, #0x34]
00522e88  3c 50 84 e5                                      str r5, [r4, #0x3c]
00522e8c  4c 00 84 e2                                      add r0, r4, #0x4c
00522e90  44 50 84 e5                                      str r5, [r4, #0x44]
00522e94  48 50 84 e5                                      str r5, [r4, #0x48]
00522e98  4c 50 84 e5                                      str r5, [r4, #0x4c]
00522e9c  50 50 84 e5                                      str r5, [r4, #0x50]
00522ea0  54 50 84 e5                                      str r5, [r4, #0x54]
00522ea4  58 50 84 e5                                      str r5, [r4, #0x58]
00522ea8  5c 50 84 e5                                      str r5, [r4, #0x5c]
00522eac  60 50 84 e5                                      str r5, [r4, #0x60]
00522eb0  64 50 84 e5                                      str r5, [r4, #0x64]
00522eb4  68 50 84 e5                                      str r5, [r4, #0x68]
00522eb8  6c 50 84 e5                                      str r5, [r4, #0x6c]
00522ebc  70 50 84 e5                                      str r5, [r4, #0x70]
00522ec0  83 ff ff eb                                      bl #0x522cd4
00522ec4  42 34 a0 e3                                      mov r3, #0x42000000
00522ec8  32 37 83 e2                                      add r3, r3, #0xc80000
00522ecc  94 50 c4 e5                                      strb r5, [r4, #0x94]
00522ed0  74 50 84 e5                                      str r5, [r4, #0x74]
00522ed4  90 30 84 e5                                      str r3, [r4, #0x90]
00522ed8  78 50 84 e5                                      str r5, [r4, #0x78]
00522edc  7c 50 84 e5                                      str r5, [r4, #0x7c]
00522ee0  80 50 84 e5                                      str r5, [r4, #0x80]
00522ee4  84 50 84 e5                                      str r5, [r4, #0x84]
00522ee8  88 50 84 e5                                      str r5, [r4, #0x88]
00522eec  8c 50 84 e5                                      str r5, [r4, #0x8c]
00522ef0  04 00 a0 e1                                      mov r0, r4
00522ef4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00522ef8  58 1c 47 00 64 26 00 00                          .byte 0x58, 0x1c, 0x47, 0x00, 0x64, 0x26, 0x00, 0x00

; FUNCTION 0x005236d0, declared_size=272, range_size=272, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld5FlushEv
; demangled: PFWorld::Flush()
; decoder-mode: arm
005236d0  70 40 2d e9                                      push {r4, r5, r6, lr}
005236d4  0c 10 90 e5                                      ldr r1, [r0, #0xc]
005236d8  08 20 90 e5                                      ldr r2, [r0, #8]
005236dc  00 40 a0 e1                                      mov r4, r0
005236e0  01 30 62 e0                                      rsb r3, r2, r1
005236e4  23 31 b0 e1                                      lsrs r3, r3, #2
005236e8  0d 00 00 0a                                      beq #0x523724
005236ec  00 50 a0 e3                                      mov r5, #0
005236f0  05 31 92 e7                                      ldr r3, [r2, r5, lsl #2]
005236f4  01 50 85 e2                                      add r5, r5, #1
005236f8  00 00 53 e3                                      cmp r3, #0
005236fc  05 00 00 0a                                      beq #0x523718
00523700  03 00 a0 e1                                      mov r0, r3
00523704  00 30 93 e5                                      ldr r3, [r3]
00523708  0f e0 a0 e1                                      mov lr, pc
0052370c  04 f0 93 e5                                      ldr pc, [r3, #4]
00523710  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00523714  08 20 94 e5                                      ldr r2, [r4, #8]
00523718  01 30 62 e0                                      rsb r3, r2, r1
0052371c  43 01 55 e1                                      cmp r5, r3, asr #2
00523720  f2 ff ff 3a                                      blo #0x5236f0
00523724  02 00 51 e1                                      cmp r1, r2
00523728  0c 20 84 15                                      strne r2, [r4, #0xc]
0052372c  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00523730  00 30 a0 e3                                      mov r3, #0
00523734  28 30 84 e5                                      str r3, [r4, #0x28]
00523738  00 00 52 e3                                      cmp r2, #0
0052373c  14 30 84 e5                                      str r3, [r4, #0x14]
00523740  18 30 84 e5                                      str r3, [r4, #0x18]
00523744  1c 30 84 e5                                      str r3, [r4, #0x1c]
00523748  20 30 84 e5                                      str r3, [r4, #0x20]
0052374c  24 30 84 e5                                      str r3, [r4, #0x24]
00523750  18 00 00 1a                                      bne #0x5237b8
00523754  84 30 94 e5                                      ldr r3, [r4, #0x84]
00523758  88 20 94 e5                                      ldr r2, [r4, #0x88]
0052375c  02 00 53 e1                                      cmp r3, r2
00523760  88 30 84 15                                      strne r3, [r4, #0x88]
00523764  44 30 94 e5                                      ldr r3, [r4, #0x44]
00523768  00 00 53 e3                                      cmp r3, #0
0052376c  05 00 00 0a                                      beq #0x523788
00523770  03 00 a0 e1                                      mov r0, r3
00523774  00 30 93 e5                                      ldr r3, [r3]
00523778  0f e0 a0 e1                                      mov lr, pc
0052377c  04 f0 93 e5                                      ldr pc, [r3, #4]
00523780  00 30 a0 e3                                      mov r3, #0
00523784  44 30 84 e5                                      str r3, [r4, #0x44]
00523788  48 30 94 e5                                      ldr r3, [r4, #0x48]
0052378c  00 00 53 e3                                      cmp r3, #0
00523790  05 00 00 0a                                      beq #0x5237ac
00523794  03 00 a0 e1                                      mov r0, r3
00523798  00 30 93 e5                                      ldr r3, [r3]
0052379c  0f e0 a0 e1                                      mov lr, pc
005237a0  04 f0 93 e5                                      ldr pc, [r3, #4]
005237a4  00 30 a0 e3                                      mov r3, #0
005237a8  48 30 84 e5                                      str r3, [r4, #0x48]
005237ac  00 30 a0 e3                                      mov r3, #0
005237b0  04 30 84 e5                                      str r3, [r4, #4]
005237b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005237b8  2c 50 84 e2                                      add r5, r4, #0x2c
005237bc  05 00 a0 e1                                      mov r0, r5
005237c0  30 10 94 e5                                      ldr r1, [r4, #0x30]
005237c4  b1 ff ff eb                                      bl #0x523690
005237c8  00 30 a0 e3                                      mov r3, #0
005237cc  38 50 84 e5                                      str r5, [r4, #0x38]
005237d0  3c 30 84 e5                                      str r3, [r4, #0x3c]
005237d4  34 50 84 e5                                      str r5, [r4, #0x34]
005237d8  30 30 84 e5                                      str r3, [r4, #0x30]
005237dc  dc ff ff ea                                      b #0x523754

; FUNCTION 0x00523864, declared_size=180, range_size=180, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorldD1Ev
; demangled: PFWorld::~PFWorld()
; decoder-mode: arm
00523864  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
00523868  a4 20 9f e5                                      ldr r2, [pc, #0xa4]
0052386c  70 40 2d e9                                      push {r4, r5, r6, lr}
00523870  03 30 8f e0                                      add r3, pc, r3
00523874  02 20 93 e7                                      ldr r2, [r3, r2]
00523878  00 50 a0 e1                                      mov r5, r0
0052387c  00 40 a0 e1                                      mov r4, r0
00523880  08 20 82 e2                                      add r2, r2, #8
00523884  84 20 85 e4                                      str r2, [r5], #0x84
00523888  90 ff ff eb                                      bl #0x5236d0
0052388c  05 00 a0 e1                                      mov r0, r5
00523890  4d ff ff eb                                      bl #0x5235cc
00523894  78 00 84 e2                                      add r0, r4, #0x78
00523898  34 ff ff eb                                      bl #0x523570
0052389c  4c 00 84 e2                                      add r0, r4, #0x4c
005238a0  ce ff ff eb                                      bl #0x5237e0
005238a4  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
005238a8  00 00 53 e3                                      cmp r3, #0
005238ac  08 00 00 0a                                      beq #0x5238d4
005238b0  2c 50 84 e2                                      add r5, r4, #0x2c
005238b4  05 00 a0 e1                                      mov r0, r5
005238b8  30 10 94 e5                                      ldr r1, [r4, #0x30]
005238bc  73 ff ff eb                                      bl #0x523690
005238c0  00 30 a0 e3                                      mov r3, #0
005238c4  38 50 84 e5                                      str r5, [r4, #0x38]
005238c8  3c 30 84 e5                                      str r3, [r4, #0x3c]
005238cc  34 50 84 e5                                      str r5, [r4, #0x34]
005238d0  30 30 84 e5                                      str r3, [r4, #0x30]
005238d4  08 00 94 e5                                      ldr r0, [r4, #8]
005238d8  08 30 84 e2                                      add r3, r4, #8
005238dc  00 00 50 e3                                      cmp r0, #0
005238e0  05 00 00 0a                                      beq #0x5238fc
005238e4  08 10 93 e5                                      ldr r1, [r3, #8]
005238e8  01 10 60 e0                                      rsb r1, r0, r1
005238ec  03 10 c1 e3                                      bic r1, r1, #3
005238f0  80 00 51 e3                                      cmp r1, #0x80
005238f4  02 00 00 8a                                      bhi #0x523904
005238f8  80 95 07 eb                                      bl #0x708f00
005238fc  04 00 a0 e1                                      mov r0, r4
00523900  70 80 bd e8                                      pop {r4, r5, r6, pc}
00523904  cd b2 f7 eb                                      bl #0x310440
00523908  04 00 a0 e1                                      mov r0, r4
0052390c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00523910  20 12 47 00 64 26 00 00                          .byte 0x20, 0x12, 0x47, 0x00, 0x64, 0x26, 0x00, 0x00

; FUNCTION 0x00523918, declared_size=28, range_size=28, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorldD0Ev
; demangled: PFWorld::~PFWorld()
; decoder-mode: arm
00523918  10 40 2d e9                                      push {r4, lr}
0052391c  00 40 a0 e1                                      mov r4, r0
00523920  cf ff ff eb                                      bl #0x523864
00523924  04 00 a0 e1                                      mov r0, r4
00523928  c4 b2 f7 eb                                      bl #0x310440
0052392c  04 00 a0 e1                                      mov r0, r4
00523930  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00523934, declared_size=180, range_size=180, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorldD2Ev
; demangled: PFWorld::~PFWorld()
; decoder-mode: arm
00523934  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
00523938  a4 20 9f e5                                      ldr r2, [pc, #0xa4]
0052393c  70 40 2d e9                                      push {r4, r5, r6, lr}
00523940  03 30 8f e0                                      add r3, pc, r3
00523944  02 20 93 e7                                      ldr r2, [r3, r2]
00523948  00 50 a0 e1                                      mov r5, r0
0052394c  00 40 a0 e1                                      mov r4, r0
00523950  08 20 82 e2                                      add r2, r2, #8
00523954  84 20 85 e4                                      str r2, [r5], #0x84
00523958  5c ff ff eb                                      bl #0x5236d0
0052395c  05 00 a0 e1                                      mov r0, r5
00523960  19 ff ff eb                                      bl #0x5235cc
00523964  78 00 84 e2                                      add r0, r4, #0x78
00523968  00 ff ff eb                                      bl #0x523570
0052396c  4c 00 84 e2                                      add r0, r4, #0x4c
00523970  9a ff ff eb                                      bl #0x5237e0
00523974  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00523978  00 00 53 e3                                      cmp r3, #0
0052397c  08 00 00 0a                                      beq #0x5239a4
00523980  2c 50 84 e2                                      add r5, r4, #0x2c
00523984  05 00 a0 e1                                      mov r0, r5
00523988  30 10 94 e5                                      ldr r1, [r4, #0x30]
0052398c  3f ff ff eb                                      bl #0x523690
00523990  00 30 a0 e3                                      mov r3, #0
00523994  38 50 84 e5                                      str r5, [r4, #0x38]
00523998  3c 30 84 e5                                      str r3, [r4, #0x3c]
0052399c  34 50 84 e5                                      str r5, [r4, #0x34]
005239a0  30 30 84 e5                                      str r3, [r4, #0x30]
005239a4  08 00 94 e5                                      ldr r0, [r4, #8]
005239a8  08 30 84 e2                                      add r3, r4, #8
005239ac  00 00 50 e3                                      cmp r0, #0
005239b0  05 00 00 0a                                      beq #0x5239cc
005239b4  08 10 93 e5                                      ldr r1, [r3, #8]
005239b8  01 10 60 e0                                      rsb r1, r0, r1
005239bc  03 10 c1 e3                                      bic r1, r1, #3
005239c0  80 00 51 e3                                      cmp r1, #0x80
005239c4  02 00 00 8a                                      bhi #0x5239d4
005239c8  4c 95 07 eb                                      bl #0x708f00
005239cc  04 00 a0 e1                                      mov r0, r4
005239d0  70 80 bd e8                                      pop {r4, r5, r6, pc}
005239d4  99 b2 f7 eb                                      bl #0x310440
005239d8  04 00 a0 e1                                      mov r0, r4
005239dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005239e0  50 11 47 00 64 26 00 00                          .byte 0x50, 0x11, 0x47, 0x00, 0x64, 0x26, 0x00, 0x00

; FUNCTION 0x005239e8, declared_size=556, range_size=556, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld16_AddExitPositionEPN6glitch5scene10ISceneNodeEPKc
; demangled: PFWorld::_AddExitPosition(glitch::scene::ISceneNode*, char const*)
; decoder-mode: arm
005239e8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005239ec  00 50 a0 e1                                      mov r5, r0
005239f0  00 30 91 e5                                      ldr r3, [r1]
005239f4  14 d0 4d e2                                      sub sp, sp, #0x14
005239f8  01 00 a0 e1                                      mov r0, r1
005239fc  01 40 a0 e1                                      mov r4, r1
00523a00  0f e0 a0 e1                                      mov lr, pc
00523a04  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00523a08  f4 11 9f e5                                      ldr r1, [pc, #0x1f4]
00523a0c  01 10 8f e0                                      add r1, pc, r1
00523a10  6f ac f7 eb                                      bl #0x30ebd4
00523a14  00 00 50 e3                                      cmp r0, #0
00523a18  00 90 a0 13                                      movne sb, #0
00523a1c  57 00 00 0a                                      beq #0x523b80
00523a20  0d 00 a0 e1                                      mov r0, sp
00523a24  04 10 a0 e1                                      mov r1, r4
00523a28  d4 cd 01 eb                                      bl #0x597180
00523a2c  88 30 95 e5                                      ldr r3, [r5, #0x88]
00523a30  8c 60 95 e5                                      ldr r6, [r5, #0x8c]
00523a34  00 a0 9d e5                                      ldr sl, [sp]
00523a38  04 80 9d e5                                      ldr r8, [sp, #4]
00523a3c  06 00 53 e1                                      cmp r3, r6
00523a40  08 70 9d e5                                      ldr r7, [sp, #8]
00523a44  0c 00 00 0a                                      beq #0x523a7c
00523a48  0c 70 83 e5                                      str r7, [r3, #0xc]
00523a4c  00 90 83 e5                                      str sb, [r3]
00523a50  04 a0 83 e5                                      str sl, [r3, #4]
00523a54  08 80 83 e5                                      str r8, [r3, #8]
00523a58  88 30 95 e5                                      ldr r3, [r5, #0x88]
00523a5c  10 30 83 e2                                      add r3, r3, #0x10
00523a60  88 30 85 e5                                      str r3, [r5, #0x88]
00523a64  04 00 a0 e1                                      mov r0, r4
00523a68  00 30 94 e5                                      ldr r3, [r4]
00523a6c  0f e0 a0 e1                                      mov lr, pc
00523a70  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00523a74  14 d0 8d e2                                      add sp, sp, #0x14
00523a78  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00523a7c  84 30 95 e5                                      ldr r3, [r5, #0x84]
00523a80  06 30 63 e0                                      rsb r3, r3, r6
00523a84  43 32 a0 e1                                      asr r3, r3, #4
00523a88  01 00 53 e3                                      cmp r3, #1
00523a8c  03 10 83 20                                      addhs r1, r3, r3
00523a90  01 10 83 32                                      addlo r1, r3, #1
00523a94  1f 02 71 e3                                      cmn r1, #0xf0000001
00523a98  36 00 00 8a                                      bhi #0x523b78
00523a9c  01 00 53 e1                                      cmp r3, r1
00523aa0  34 00 00 8a                                      bhi #0x523b78
00523aa4  10 20 8d e2                                      add r2, sp, #0x10
00523aa8  04 10 22 e5                                      str r1, [r2, #-4]!
00523aac  8c 00 85 e2                                      add r0, r5, #0x8c
00523ab0  37 fc ff eb                                      bl #0x522b94
00523ab4  84 20 95 e5                                      ldr r2, [r5, #0x84]
00523ab8  00 b0 a0 e1                                      mov fp, r0
00523abc  06 60 62 e0                                      rsb r6, r2, r6
00523ac0  46 62 a0 e1                                      asr r6, r6, #4
00523ac4  00 00 56 e3                                      cmp r6, #0
00523ac8  00 60 a0 d1                                      movle r6, r0
00523acc  0f 00 00 da                                      ble #0x523b10
00523ad0  10 20 82 e2                                      add r2, r2, #0x10
00523ad4  10 30 80 e2                                      add r3, r0, #0x10
00523ad8  06 10 a0 e1                                      mov r1, r6
00523adc  10 00 12 e5                                      ldr r0, [r2, #-0x10]
00523ae0  01 10 51 e2                                      subs r1, r1, #1
00523ae4  10 00 03 e5                                      str r0, [r3, #-0x10]
00523ae8  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00523aec  0c 00 03 e5                                      str r0, [r3, #-0xc]
00523af0  08 00 12 e5                                      ldr r0, [r2, #-8]
00523af4  08 00 03 e5                                      str r0, [r3, #-8]
00523af8  04 00 12 e5                                      ldr r0, [r2, #-4]
00523afc  10 20 82 e2                                      add r2, r2, #0x10
00523b00  04 00 03 e5                                      str r0, [r3, #-4]
00523b04  10 30 83 e2                                      add r3, r3, #0x10
00523b08  f3 ff ff 1a                                      bne #0x523adc
00523b0c  06 62 8b e0                                      add r6, fp, r6, lsl #4
00523b10  00 90 86 e5                                      str sb, [r6]
00523b14  04 a0 86 e5                                      str sl, [r6, #4]
00523b18  08 80 86 e5                                      str r8, [r6, #8]
00523b1c  0c 70 86 e5                                      str r7, [r6, #0xc]
00523b20  88 30 95 e5                                      ldr r3, [r5, #0x88]
00523b24  84 00 95 e5                                      ldr r0, [r5, #0x84]
00523b28  10 60 86 e2                                      add r6, r6, #0x10
00523b2c  8c 10 95 e5                                      ldr r1, [r5, #0x8c]
00523b30  00 00 53 e1                                      cmp r3, r0
00523b34  10 20 43 12                                      subne r2, r3, #0x10
00523b38  02 20 60 10                                      rsbne r2, r0, r2
00523b3c  22 22 e0 11                                      mvnne r2, r2, lsr #4
00523b40  02 32 83 10                                      addne r3, r3, r2, lsl #4
00523b44  00 00 53 e3                                      cmp r3, #0
00523b48  04 00 00 0a                                      beq #0x523b60
00523b4c  01 10 63 e0                                      rsb r1, r3, r1
00523b50  0f 10 c1 e3                                      bic r1, r1, #0xf
00523b54  80 00 51 e3                                      cmp r1, #0x80
00523b58  27 00 00 8a                                      bhi #0x523bfc
00523b5c  e7 94 07 eb                                      bl #0x708f00
00523b60  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00523b64  84 b0 85 e5                                      str fp, [r5, #0x84]
00523b68  88 60 85 e5                                      str r6, [r5, #0x88]
00523b6c  03 b2 8b e0                                      add fp, fp, r3, lsl #4
00523b70  8c b0 85 e5                                      str fp, [r5, #0x8c]
00523b74  ba ff ff ea                                      b #0x523a64
00523b78  0f 12 e0 e3                                      mvn r1, #0xf0000000
00523b7c  c8 ff ff ea                                      b #0x523aa4
00523b80  00 30 94 e5                                      ldr r3, [r4]
00523b84  04 00 a0 e1                                      mov r0, r4
00523b88  0f e0 a0 e1                                      mov lr, pc
00523b8c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00523b90  70 10 9f e5                                      ldr r1, [pc, #0x70]
00523b94  01 10 8f e0                                      add r1, pc, r1
00523b98  0d ac f7 eb                                      bl #0x30ebd4
00523b9c  00 00 50 e3                                      cmp r0, #0
00523ba0  01 90 a0 13                                      movne sb, #1
00523ba4  9d ff ff 1a                                      bne #0x523a20
00523ba8  00 30 94 e5                                      ldr r3, [r4]
00523bac  04 00 a0 e1                                      mov r0, r4
00523bb0  0f e0 a0 e1                                      mov lr, pc
00523bb4  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00523bb8  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
00523bbc  01 10 8f e0                                      add r1, pc, r1
00523bc0  03 ac f7 eb                                      bl #0x30ebd4
00523bc4  00 00 50 e3                                      cmp r0, #0
00523bc8  02 90 a0 13                                      movne sb, #2
00523bcc  93 ff ff 1a                                      bne #0x523a20
00523bd0  00 30 94 e5                                      ldr r3, [r4]
00523bd4  04 00 a0 e1                                      mov r0, r4
00523bd8  0f e0 a0 e1                                      mov lr, pc
00523bdc  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00523be0  28 10 9f e5                                      ldr r1, [pc, #0x28]
00523be4  01 10 8f e0                                      add r1, pc, r1
00523be8  f9 ab f7 eb                                      bl #0x30ebd4
00523bec  00 00 50 e3                                      cmp r0, #0
00523bf0  03 90 a0 13                                      movne sb, #3
00523bf4  00 90 a0 03                                      moveq sb, #0
00523bf8  88 ff ff ea                                      b #0x523a20
00523bfc  0f b2 f7 eb                                      bl #0x310440
00523c00  d6 ff ff ea                                      b #0x523b60
; mapping-symbol data/literal pool
00523c04  6c 90 3b 00 ec 8e 3b 00 cc 8e 3b 00 ac 8e 3b 00  .byte 0x6c, 0x90, 0x3b, 0x00, 0xec, 0x8e, 0x3b, 0x00, 0xcc, 0x8e, 0x3b, 0x00, 0xac, 0x8e, 0x3b, 0x00

; FUNCTION 0x00523c14, declared_size=1432, range_size=1432, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld8LoadRoomEPN6glitch5scene10ISceneNodeEjPKc
; demangled: PFWorld::LoadRoom(glitch::scene::ISceneNode*, unsigned int, char const*)
; decoder-mode: arm
00523c14  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00523c18  00 40 a0 e1                                      mov r4, r0
00523c1c  2c d0 4d e2                                      sub sp, sp, #0x2c
00523c20  03 70 a0 e1                                      mov r7, r3
00523c24  01 60 a0 e1                                      mov r6, r1
00523c28  02 80 a0 e1                                      mov r8, r2
00523c2c  04 fb ff eb                                      bl #0x522844
00523c30  04 30 94 e5                                      ldr r3, [r4, #4]
00523c34  40 05 9f e5                                      ldr r0, [pc, #0x540]
00523c38  01 00 53 e3                                      cmp r3, #1
00523c3c  00 00 8f e0                                      add r0, pc, r0
00523c40  08 00 8d e5                                      str r0, [sp, #8]
00523c44  08 00 00 0a                                      beq #0x523c6c
00523c48  30 35 9f e5                                      ldr r3, [pc, #0x530]
00523c4c  03 30 90 e7                                      ldr r3, [r0, r3]
00523c50  00 30 93 e5                                      ldr r3, [r3]
00523c54  02 00 53 e3                                      cmp r3, #2
00523c58  00 30 a0 03                                      moveq r3, #0
00523c5c  00 30 83 05                                      streq r3, [r3]
00523c60  01 00 00 0a                                      beq #0x523c6c
00523c64  01 00 53 e3                                      cmp r3, #1
00523c68  e8 00 00 0a                                      beq #0x524010
00523c6c  00 00 56 e3                                      cmp r6, #0
00523c70  f4 00 00 0a                                      beq #0x524048
00523c74  00 10 a0 e3                                      mov r1, #0
00523c78  54 00 a0 e3                                      mov r0, #0x54
00523c7c  3b b2 f7 eb                                      bl #0x310570
00523c80  44 e0 94 e5                                      ldr lr, [r4, #0x44]
00523c84  48 c0 94 e5                                      ldr ip, [r4, #0x48]
00523c88  07 10 a0 e1                                      mov r1, r7
00523c8c  04 30 a0 e1                                      mov r3, r4
00523c90  08 20 a0 e1                                      mov r2, r8
00523c94  00 50 a0 e1                                      mov r5, r0
00523c98  00 e0 8d e5                                      str lr, [sp]
00523c9c  04 c0 8d e5                                      str ip, [sp, #4]
00523ca0  26 f6 ff eb                                      bl #0x521540
00523ca4  0c 70 94 e5                                      ldr r7, [r4, #0xc]
00523ca8  10 30 94 e5                                      ldr r3, [r4, #0x10]
00523cac  03 00 57 e1                                      cmp r7, r3
00523cb0  06 01 00 0a                                      beq #0x5240d0
00523cb4  00 50 87 e5                                      str r5, [r7]
00523cb8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00523cbc  04 30 83 e2                                      add r3, r3, #4
00523cc0  0c 30 84 e5                                      str r3, [r4, #0xc]
00523cc4  b8 c4 9f e5                                      ldr ip, [pc, #0x4b8]
00523cc8  08 00 9d e5                                      ldr r0, [sp, #8]
00523ccc  64 31 06 e3                                      movw r3, #0x6164
00523cd0  14 c0 8d e5                                      str ip, [sp, #0x14]
00523cd4  0c 20 90 e7                                      ldr r2, [r0, ip]
00523cd8  00 a0 a0 e3                                      mov sl, #0
00523cdc  06 10 a0 e1                                      mov r1, r6
00523ce0  10 00 92 e5                                      ldr r0, [r2, #0x10]
00523ce4  65 3d 46 e3                                      movt r3, #0x6d65
00523ce8  18 20 8d e2                                      add r2, sp, #0x18
00523cec  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
00523cf0  18 a0 8d e5                                      str sl, [sp, #0x18]
00523cf4  1c a0 8d e5                                      str sl, [sp, #0x1c]
00523cf8  20 a0 8d e5                                      str sl, [sp, #0x20]
00523cfc  56 b4 f8 eb                                      bl #0x350e5c
00523d00  18 60 9d e5                                      ldr r6, [sp, #0x18]
00523d04  1c 70 9d e5                                      ldr r7, [sp, #0x1c]
00523d08  07 00 56 e1                                      cmp r6, r7
00523d0c  e4 00 00 0a                                      beq #0x5240a4
00523d10  70 34 9f e5                                      ldr r3, [pc, #0x470]
00523d14  03 80 9f e7                                      ldr r8, [pc, r3]
00523d18  07 00 00 ea                                      b #0x523d3c
00523d1c  09 00 a0 e1                                      mov r0, sb
00523d20  08 10 a0 e1                                      mov r1, r8
00523d24  aa ab f7 eb                                      bl #0x30ebd4
00523d28  00 00 50 e3                                      cmp r0, #0
00523d2c  00 a0 96 15                                      ldrne sl, [r6]
00523d30  04 60 86 e2                                      add r6, r6, #4
00523d34  07 00 56 e1                                      cmp r6, r7
00523d38  1a 00 00 0a                                      beq #0x523da8
00523d3c  00 30 96 e5                                      ldr r3, [r6]
00523d40  03 00 a0 e1                                      mov r0, r3
00523d44  00 30 93 e5                                      ldr r3, [r3]
00523d48  0f e0 a0 e1                                      mov lr, pc
00523d4c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00523d50  00 30 d0 e5                                      ldrb r3, [r0]
00523d54  00 90 a0 e1                                      mov sb, r0
00523d58  00 00 53 e3                                      cmp r3, #0
00523d5c  ee ff ff 1a                                      bne #0x523d1c
00523d60  00 00 96 e5                                      ldr r0, [r6]
00523d64  49 cd 01 eb                                      bl #0x597290
00523d68  00 00 50 e3                                      cmp r0, #0
00523d6c  ea ff ff 0a                                      beq #0x523d1c
00523d70  00 00 96 e5                                      ldr r0, [r6]
00523d74  45 cd 01 eb                                      bl #0x597290
00523d78  00 30 90 e5                                      ldr r3, [r0]
00523d7c  0f e0 a0 e1                                      mov lr, pc
00523d80  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00523d84  00 90 a0 e1                                      mov sb, r0
00523d88  09 00 a0 e1                                      mov r0, sb
00523d8c  08 10 a0 e1                                      mov r1, r8
00523d90  8f ab f7 eb                                      bl #0x30ebd4
00523d94  00 00 50 e3                                      cmp r0, #0
00523d98  00 a0 96 15                                      ldrne sl, [r6]
00523d9c  04 60 86 e2                                      add r6, r6, #4
00523da0  07 00 56 e1                                      cmp r6, r7
00523da4  e4 ff ff 1a                                      bne #0x523d3c
00523da8  18 70 9d e5                                      ldr r7, [sp, #0x18]
00523dac  1c b0 9d e5                                      ldr fp, [sp, #0x1c]
00523db0  0b 00 57 e1                                      cmp r7, fp
00523db4  ba 00 00 0a                                      beq #0x5240a4
00523db8  cc 33 9f e5                                      ldr r3, [pc, #0x3cc]
00523dbc  00 90 a0 e3                                      mov sb, #0
00523dc0  04 80 a0 e1                                      mov r8, r4
00523dc4  03 30 8f e0                                      add r3, pc, r3
00523dc8  08 10 93 e5                                      ldr r1, [r3, #8]
00523dcc  04 30 93 e5                                      ldr r3, [r3, #4]
00523dd0  0c 10 8d e5                                      str r1, [sp, #0xc]
00523dd4  10 30 8d e5                                      str r3, [sp, #0x10]
00523dd8  1e 00 00 ea                                      b #0x523e58
00523ddc  10 10 9d e5                                      ldr r1, [sp, #0x10]
00523de0  04 00 a0 e1                                      mov r0, r4
00523de4  7a ab f7 eb                                      bl #0x30ebd4
00523de8  00 00 50 e3                                      cmp r0, #0
00523dec  04 20 a0 e1                                      mov r2, r4
00523df0  05 00 a0 e1                                      mov r0, r5
00523df4  0b 00 00 0a                                      beq #0x523e28
00523df8  00 10 97 e5                                      ldr r1, [r7]
00523dfc  2d f8 ff eb                                      bl #0x521eb8
00523e00  00 00 5a e3                                      cmp sl, #0
00523e04  01 90 89 e2                                      add sb, sb, #1
00523e08  29 00 00 0a                                      beq #0x523eb4
00523e0c  08 c0 9d e5                                      ldr ip, [sp, #8]
00523e10  14 20 9d e5                                      ldr r2, [sp, #0x14]
00523e14  0a 10 a0 e1                                      mov r1, sl
00523e18  02 30 9c e7                                      ldr r3, [ip, r2]
00523e1c  10 30 93 e5                                      ldr r3, [r3, #0x10]
00523e20  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
00523e24  9d b9 f8 eb                                      bl #0x3524a0
00523e28  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00523e2c  04 00 a0 e1                                      mov r0, r4
00523e30  67 ab f7 eb                                      bl #0x30ebd4
00523e34  00 00 50 e3                                      cmp r0, #0
00523e38  04 70 87 e2                                      add r7, r7, #4
00523e3c  06 10 a0 e1                                      mov r1, r6
00523e40  04 20 a0 e1                                      mov r2, r4
00523e44  08 00 a0 e1                                      mov r0, r8
00523e48  00 00 00 0a                                      beq #0x523e50
00523e4c  e5 fe ff eb                                      bl #0x5239e8
00523e50  0b 00 57 e1                                      cmp r7, fp
00523e54  20 00 00 0a                                      beq #0x523edc
00523e58  00 60 97 e5                                      ldr r6, [r7]
00523e5c  00 30 96 e5                                      ldr r3, [r6]
00523e60  06 00 a0 e1                                      mov r0, r6
00523e64  0f e0 a0 e1                                      mov lr, pc
00523e68  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00523e6c  00 30 d0 e5                                      ldrb r3, [r0]
00523e70  00 40 a0 e1                                      mov r4, r0
00523e74  00 00 53 e3                                      cmp r3, #0
00523e78  d7 ff ff 1a                                      bne #0x523ddc
00523e7c  00 00 97 e5                                      ldr r0, [r7]
00523e80  02 cd 01 eb                                      bl #0x597290
00523e84  00 00 50 e3                                      cmp r0, #0
00523e88  d3 ff ff 0a                                      beq #0x523ddc
00523e8c  00 00 97 e5                                      ldr r0, [r7]
00523e90  fe cc 01 eb                                      bl #0x597290
00523e94  00 30 90 e5                                      ldr r3, [r0]
00523e98  0f e0 a0 e1                                      mov lr, pc
00523e9c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00523ea0  00 40 a0 e1                                      mov r4, r0
00523ea4  06 00 a0 e1                                      mov r0, r6
00523ea8  f8 cc 01 eb                                      bl #0x597290
00523eac  00 60 a0 e1                                      mov r6, r0
00523eb0  c9 ff ff ea                                      b #0x523ddc
00523eb4  08 10 9d e5                                      ldr r1, [sp, #8]
00523eb8  14 00 9d e5                                      ldr r0, [sp, #0x14]
00523ebc  34 30 95 e5                                      ldr r3, [r5, #0x34]
00523ec0  00 20 91 e7                                      ldr r2, [r1, r0]
00523ec4  04 30 13 e5                                      ldr r3, [r3, #-4]
00523ec8  10 20 92 e5                                      ldr r2, [r2, #0x10]
00523ecc  40 10 93 e5                                      ldr r1, [r3, #0x40]
00523ed0  1c 00 92 e5                                      ldr r0, [r2, #0x1c]
00523ed4  71 b9 f8 eb                                      bl #0x3524a0
00523ed8  d2 ff ff ea                                      b #0x523e28
00523edc  00 00 59 e3                                      cmp sb, #0
00523ee0  08 40 a0 e1                                      mov r4, r8
00523ee4  6e 00 00 0a                                      beq #0x5240a4
00523ee8  0c 20 98 e5                                      ldr r2, [r8, #0xc]
00523eec  08 30 98 e5                                      ldr r3, [r8, #8]
00523ef0  02 30 63 e0                                      rsb r3, r3, r2
00523ef4  43 31 a0 e1                                      asr r3, r3, #2
00523ef8  01 00 53 e3                                      cmp r3, #1
00523efc  36 00 00 0a                                      beq #0x523fdc
00523f00  3c 60 95 e5                                      ldr r6, [r5, #0x3c]
00523f04  14 70 98 e5                                      ldr r7, [r8, #0x14]
00523f08  06 00 a0 e1                                      mov r0, r6
00523f0c  07 10 a0 e1                                      mov r1, r7
00523f10  fd a9 f7 eb                                      bl #0x30e70c
00523f14  00 00 50 e3                                      cmp r0, #0
00523f18  07 60 a0 01                                      moveq r6, r7
00523f1c  14 60 88 e5                                      str r6, [r8, #0x14]
00523f20  40 60 95 e5                                      ldr r6, [r5, #0x40]
00523f24  18 70 98 e5                                      ldr r7, [r8, #0x18]
00523f28  06 00 a0 e1                                      mov r0, r6
00523f2c  07 10 a0 e1                                      mov r1, r7
00523f30  f5 a9 f7 eb                                      bl #0x30e70c
00523f34  00 00 50 e3                                      cmp r0, #0
00523f38  07 60 a0 01                                      moveq r6, r7
00523f3c  18 60 88 e5                                      str r6, [r8, #0x18]
00523f40  44 60 95 e5                                      ldr r6, [r5, #0x44]
00523f44  1c 70 98 e5                                      ldr r7, [r8, #0x1c]
00523f48  06 00 a0 e1                                      mov r0, r6
00523f4c  07 10 a0 e1                                      mov r1, r7
00523f50  ed a9 f7 eb                                      bl #0x30e70c
00523f54  00 00 50 e3                                      cmp r0, #0
00523f58  07 60 a0 01                                      moveq r6, r7
00523f5c  1c 60 88 e5                                      str r6, [r8, #0x1c]
00523f60  48 60 95 e5                                      ldr r6, [r5, #0x48]
00523f64  20 70 98 e5                                      ldr r7, [r8, #0x20]
00523f68  06 10 a0 e1                                      mov r1, r6
00523f6c  07 00 a0 e1                                      mov r0, r7
00523f70  e5 a9 f7 eb                                      bl #0x30e70c
00523f74  00 00 50 e3                                      cmp r0, #0
00523f78  07 60 a0 01                                      moveq r6, r7
00523f7c  20 60 88 e5                                      str r6, [r8, #0x20]
00523f80  4c 60 95 e5                                      ldr r6, [r5, #0x4c]
00523f84  24 70 98 e5                                      ldr r7, [r8, #0x24]
00523f88  06 10 a0 e1                                      mov r1, r6
00523f8c  07 00 a0 e1                                      mov r0, r7
00523f90  dd a9 f7 eb                                      bl #0x30e70c
00523f94  00 00 50 e3                                      cmp r0, #0
00523f98  07 60 a0 01                                      moveq r6, r7
00523f9c  24 60 88 e5                                      str r6, [r8, #0x24]
00523fa0  28 70 98 e5                                      ldr r7, [r8, #0x28]
00523fa4  50 60 95 e5                                      ldr r6, [r5, #0x50]
00523fa8  07 00 a0 e1                                      mov r0, r7
00523fac  06 10 a0 e1                                      mov r1, r6
00523fb0  d5 a9 f7 eb                                      bl #0x30e70c
00523fb4  00 00 50 e3                                      cmp r0, #0
00523fb8  07 60 a0 01                                      moveq r6, r7
00523fbc  28 60 88 e5                                      str r6, [r8, #0x28]
00523fc0  18 00 9d e5                                      ldr r0, [sp, #0x18]
00523fc4  00 00 50 e3                                      cmp r0, #0
00523fc8  00 00 00 0a                                      beq #0x523fd0
00523fcc  1f b1 f7 eb                                      bl #0x310450
00523fd0  05 00 a0 e1                                      mov r0, r5
00523fd4  2c d0 8d e2                                      add sp, sp, #0x2c
00523fd8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00523fdc  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
00523fe0  14 30 88 e5                                      str r3, [r8, #0x14]
00523fe4  40 30 95 e5                                      ldr r3, [r5, #0x40]
00523fe8  18 30 88 e5                                      str r3, [r8, #0x18]
00523fec  44 30 95 e5                                      ldr r3, [r5, #0x44]
00523ff0  1c 30 88 e5                                      str r3, [r8, #0x1c]
00523ff4  48 30 95 e5                                      ldr r3, [r5, #0x48]
00523ff8  20 30 88 e5                                      str r3, [r8, #0x20]
00523ffc  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
00524000  24 30 88 e5                                      str r3, [r8, #0x24]
00524004  50 30 95 e5                                      ldr r3, [r5, #0x50]
00524008  28 30 88 e5                                      str r3, [r8, #0x28]
0052400c  eb ff ff ea                                      b #0x523fc0
00524010  08 10 9d e5                                      ldr r1, [sp, #8]
00524014  74 01 9f e5                                      ldr r0, [pc, #0x174]
00524018  74 21 9f e5                                      ldr r2, [pc, #0x174]
0052401c  74 31 9f e5                                      ldr r3, [pc, #0x174]
00524020  00 00 91 e7                                      ldr r0, [r1, r0]
00524024  70 11 9f e5                                      ldr r1, [pc, #0x170]
00524028  5c c0 a0 e3                                      mov ip, #0x5c
0052402c  02 20 8f e0                                      add r2, pc, r2
00524030  01 10 8f e0                                      add r1, pc, r1
00524034  03 30 8f e0                                      add r3, pc, r3
00524038  a8 00 80 e2                                      add r0, r0, #0xa8
0052403c  00 c0 8d e5                                      str ip, [sp]
00524040  ef a7 f7 eb                                      bl #0x30e004
00524044  08 ff ff ea                                      b #0x523c6c
00524048  08 20 9d e5                                      ldr r2, [sp, #8]
0052404c  2c 31 9f e5                                      ldr r3, [pc, #0x12c]
00524050  03 30 92 e7                                      ldr r3, [r2, r3]
00524054  00 30 93 e5                                      ldr r3, [r3]
00524058  02 00 53 e3                                      cmp r3, #2
0052405c  00 60 86 05                                      streq r6, [r6]
00524060  03 ff ff 0a                                      beq #0x523c74
00524064  01 00 53 e3                                      cmp r3, #1
00524068  01 ff ff 1a                                      bne #0x523c74
0052406c  08 30 9d e5                                      ldr r3, [sp, #8]
00524070  18 01 9f e5                                      ldr r0, [pc, #0x118]
00524074  24 11 9f e5                                      ldr r1, [pc, #0x124]
00524078  24 21 9f e5                                      ldr r2, [pc, #0x124]
0052407c  00 00 93 e7                                      ldr r0, [r3, r0]
00524080  20 31 9f e5                                      ldr r3, [pc, #0x120]
00524084  62 c0 a0 e3                                      mov ip, #0x62
00524088  01 10 8f e0                                      add r1, pc, r1
0052408c  02 20 8f e0                                      add r2, pc, r2
00524090  03 30 8f e0                                      add r3, pc, r3
00524094  a8 00 80 e2                                      add r0, r0, #0xa8
00524098  00 c0 8d e5                                      str ip, [sp]
0052409c  d8 a7 f7 eb                                      bl #0x30e004
005240a0  f3 fe ff ea                                      b #0x523c74
005240a4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005240a8  00 00 55 e3                                      cmp r5, #0
005240ac  04 30 43 e2                                      sub r3, r3, #4
005240b0  0c 30 84 e5                                      str r3, [r4, #0xc]
005240b4  c1 ff ff 0a                                      beq #0x523fc0
005240b8  05 00 a0 e1                                      mov r0, r5
005240bc  00 30 95 e5                                      ldr r3, [r5]
005240c0  0f e0 a0 e1                                      mov lr, pc
005240c4  04 f0 93 e5                                      ldr pc, [r3, #4]
005240c8  00 50 a0 e3                                      mov r5, #0
005240cc  bb ff ff ea                                      b #0x523fc0
005240d0  08 30 94 e5                                      ldr r3, [r4, #8]
005240d4  07 30 63 e0                                      rsb r3, r3, r7
005240d8  43 31 a0 e1                                      asr r3, r3, #2
005240dc  01 00 53 e3                                      cmp r3, #1
005240e0  03 10 83 20                                      addhs r1, r3, r3
005240e4  01 10 83 32                                      addlo r1, r3, #1
005240e8  07 01 71 e3                                      cmn r1, #0xc0000001
005240ec  19 00 00 9a                                      bls #0x524158
005240f0  03 11 e0 e3                                      mvn r1, #0xc0000000
005240f4  28 20 8d e2                                      add r2, sp, #0x28
005240f8  04 10 22 e5                                      str r1, [r2, #-4]!
005240fc  10 00 84 e2                                      add r0, r4, #0x10
00524100  bf fa ff eb                                      bl #0x522c04
00524104  08 10 94 e5                                      ldr r1, [r4, #8]
00524108  00 80 a0 e1                                      mov r8, r0
0052410c  01 70 57 e0                                      subs r7, r7, r1
00524110  00 70 a0 01                                      moveq r7, r0
00524114  14 00 00 1a                                      bne #0x52416c
00524118  04 50 87 e4                                      str r5, [r7], #4
0052411c  08 00 94 e5                                      ldr r0, [r4, #8]
00524120  10 30 94 e5                                      ldr r3, [r4, #0x10]
00524124  00 00 50 e3                                      cmp r0, #0
00524128  04 00 00 0a                                      beq #0x524140
0052412c  03 30 60 e0                                      rsb r3, r0, r3
00524130  03 10 c3 e3                                      bic r1, r3, #3
00524134  80 00 51 e3                                      cmp r1, #0x80
00524138  09 00 00 8a                                      bhi #0x524164
0052413c  6f 93 07 eb                                      bl #0x708f00
00524140  24 30 9d e5                                      ldr r3, [sp, #0x24]
00524144  08 80 84 e5                                      str r8, [r4, #8]
00524148  0c 70 84 e5                                      str r7, [r4, #0xc]
0052414c  03 81 88 e0                                      add r8, r8, r3, lsl #2
00524150  10 80 84 e5                                      str r8, [r4, #0x10]
00524154  da fe ff ea                                      b #0x523cc4
00524158  01 00 53 e1                                      cmp r3, r1
0052415c  e4 ff ff 9a                                      bls #0x5240f4
00524160  e2 ff ff ea                                      b #0x5240f0
00524164  b5 b0 f7 eb                                      bl #0x310440
00524168  f4 ff ff ea                                      b #0x524140
0052416c  07 20 a0 e1                                      mov r2, r7
00524170  70 a7 f7 eb                                      bl #0x30df38
00524174  07 70 80 e0                                      add r7, r0, r7
00524178  e6 ff ff ea                                      b #0x524118
; mapping-symbol data/literal pool
0052417c  54 0e 47 00 c0 39 00 00 f4 37 00 00 18 2e 43 00  .byte 0x54, 0x0e, 0x47, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x18, 0x2e, 0x43, 0x00
0052418c  68 2d 43 00 c0 19 00 00 6c 8a 3b 00 dc 89 3b 00  .byte 0x68, 0x2d, 0x43, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x6c, 0x8a, 0x3b, 0x00, 0xdc, 0x89, 0x3b, 0x00
0052419c  a8 a3 39 00 50 a3 39 00 5c 89 3b 00 80 89 3b 00  .byte 0xa8, 0xa3, 0x39, 0x00, 0x50, 0xa3, 0x39, 0x00, 0x5c, 0x89, 0x3b, 0x00, 0x80, 0x89, 0x3b, 0x00

; FUNCTION 0x00525188, declared_size=320, range_size=320, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld9GetRoomAtERK7Point3DIfE
; demangled: PFWorld::GetRoomAt(Point3D<float> const&)
; decoder-mode: arm
00525188  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0052518c  00 50 91 e5                                      ldr r5, [r1]
00525190  01 60 a0 e1                                      mov r6, r1
00525194  00 40 a0 e1                                      mov r4, r0
00525198  05 10 a0 e1                                      mov r1, r5
0052519c  14 00 90 e5                                      ldr r0, [r0, #0x14]
005251a0  01 a6 f7 eb                                      bl #0x30e9ac
005251a4  00 00 50 e3                                      cmp r0, #0
005251a8  04 00 00 0a                                      beq #0x5251c0
005251ac  05 00 a0 e1                                      mov r0, r5
005251b0  20 10 94 e5                                      ldr r1, [r4, #0x20]
005251b4  fc a5 f7 eb                                      bl #0x30e9ac
005251b8  00 00 50 e3                                      cmp r0, #0
005251bc  02 00 00 1a                                      bne #0x5251cc
005251c0  00 40 a0 e3                                      mov r4, #0
005251c4  04 00 a0 e1                                      mov r0, r4
005251c8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005251cc  04 70 96 e5                                      ldr r7, [r6, #4]
005251d0  18 00 94 e5                                      ldr r0, [r4, #0x18]
005251d4  07 10 a0 e1                                      mov r1, r7
005251d8  f3 a5 f7 eb                                      bl #0x30e9ac
005251dc  00 00 50 e3                                      cmp r0, #0
005251e0  f6 ff ff 0a                                      beq #0x5251c0
005251e4  07 00 a0 e1                                      mov r0, r7
005251e8  24 10 94 e5                                      ldr r1, [r4, #0x24]
005251ec  ee a5 f7 eb                                      bl #0x30e9ac
005251f0  00 00 50 e3                                      cmp r0, #0
005251f4  f1 ff ff 0a                                      beq #0x5251c0
005251f8  08 90 96 e5                                      ldr sb, [r6, #8]
005251fc  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
00525200  09 10 a0 e1                                      mov r1, sb
00525204  e8 a5 f7 eb                                      bl #0x30e9ac
00525208  00 00 50 e3                                      cmp r0, #0
0052520c  eb ff ff 0a                                      beq #0x5251c0
00525210  09 00 a0 e1                                      mov r0, sb
00525214  28 10 94 e5                                      ldr r1, [r4, #0x28]
00525218  e3 a5 f7 eb                                      bl #0x30e9ac
0052521c  00 00 50 e3                                      cmp r0, #0
00525220  e6 ff ff 0a                                      beq #0x5251c0
00525224  0c a0 94 e5                                      ldr sl, [r4, #0xc]
00525228  08 80 94 e5                                      ldr r8, [r4, #8]
0052522c  0a a0 68 e0                                      rsb sl, r8, sl
00525230  4a a1 b0 e1                                      asrs sl, sl, #2
00525234  e1 ff ff 0a                                      beq #0x5251c0
00525238  00 60 a0 e3                                      mov r6, #0
0052523c  06 41 98 e7                                      ldr r4, [r8, r6, lsl #2]
00525240  05 00 a0 e1                                      mov r0, r5
00525244  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
00525248  99 a4 f7 eb                                      bl #0x30e4b4
0052524c  00 00 50 e3                                      cmp r0, #0
00525250  05 00 a0 e1                                      mov r0, r5
00525254  17 00 00 0a                                      beq #0x5252b8
00525258  48 10 94 e5                                      ldr r1, [r4, #0x48]
0052525c  d2 a5 f7 eb                                      bl #0x30e9ac
00525260  00 00 50 e3                                      cmp r0, #0
00525264  07 00 a0 e1                                      mov r0, r7
00525268  12 00 00 0a                                      beq #0x5252b8
0052526c  40 10 94 e5                                      ldr r1, [r4, #0x40]
00525270  8f a4 f7 eb                                      bl #0x30e4b4
00525274  00 00 50 e3                                      cmp r0, #0
00525278  07 00 a0 e1                                      mov r0, r7
0052527c  0d 00 00 0a                                      beq #0x5252b8
00525280  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
00525284  c8 a5 f7 eb                                      bl #0x30e9ac
00525288  00 00 50 e3                                      cmp r0, #0
0052528c  09 00 a0 e1                                      mov r0, sb
00525290  08 00 00 0a                                      beq #0x5252b8
00525294  44 10 94 e5                                      ldr r1, [r4, #0x44]
00525298  85 a4 f7 eb                                      bl #0x30e4b4
0052529c  00 00 50 e3                                      cmp r0, #0
005252a0  09 00 a0 e1                                      mov r0, sb
005252a4  03 00 00 0a                                      beq #0x5252b8
005252a8  50 10 94 e5                                      ldr r1, [r4, #0x50]
005252ac  be a5 f7 eb                                      bl #0x30e9ac
005252b0  00 00 50 e3                                      cmp r0, #0
005252b4  c2 ff ff 1a                                      bne #0x5251c4
005252b8  01 60 86 e2                                      add r6, r6, #1
005252bc  0a 00 56 e1                                      cmp r6, sl
005252c0  dd ff ff 1a                                      bne #0x52523c
005252c4  bd ff ff ea                                      b #0x5251c0

; FUNCTION 0x005252c8, declared_size=36, range_size=36, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld18FlagFloorAsEnabledERK8PFObjectb
; demangled: PFWorld::FlagFloorAsEnabled(PFObject const&, bool)
; decoder-mode: arm
005252c8  10 30 91 e5                                      ldr r3, [r1, #0x10]
005252cc  00 00 53 e3                                      cmp r3, #0
005252d0  1e ff 2f 01                                      bxeq lr
005252d4  00 00 52 e3                                      cmp r2, #0
005252d8  20 20 93 e5                                      ldr r2, [r3, #0x20]
005252dc  01 20 82 13                                      orrne r2, r2, #1
005252e0  01 20 c2 03                                      biceq r2, r2, #1
005252e4  20 20 83 e5                                      str r2, [r3, #0x20]
005252e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005252ec, declared_size=36, range_size=36, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld18FlagFloorAsDeadEndERK8PFObjectb
; demangled: PFWorld::FlagFloorAsDeadEnd(PFObject const&, bool)
; decoder-mode: arm
005252ec  10 30 91 e5                                      ldr r3, [r1, #0x10]
005252f0  00 00 53 e3                                      cmp r3, #0
005252f4  1e ff 2f 01                                      bxeq lr
005252f8  00 00 52 e3                                      cmp r2, #0
005252fc  20 20 93 e5                                      ldr r2, [r3, #0x20]
00525300  02 20 82 13                                      orrne r2, r2, #2
00525304  02 20 c2 03                                      biceq r2, r2, #2
00525308  20 20 83 e5                                      str r2, [r3, #0x20]
0052530c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00525508, declared_size=300, range_size=300, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld16GetFloorHeightAtERK7Point3DIfEPfPS1_PP6PFRoomPP7PFFloorb
; demangled: PFWorld::GetFloorHeightAt(Point3D<float> const&, float*, Point3D<float>*, PFRoom**, PFFloor**, bool)
; decoder-mode: arm
00525508  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0052550c  00 40 91 e5                                      ldr r4, [r1]
00525510  0c d0 4d e2                                      sub sp, sp, #0xc
00525514  01 60 a0 e1                                      mov r6, r1
00525518  00 50 a0 e1                                      mov r5, r0
0052551c  04 10 a0 e1                                      mov r1, r4
00525520  14 00 90 e5                                      ldr r0, [r0, #0x14]
00525524  02 a0 a0 e1                                      mov sl, r2
00525528  03 80 a0 e1                                      mov r8, r3
0052552c  1e a5 f7 eb                                      bl #0x30e9ac
00525530  00 00 50 e3                                      cmp r0, #0
00525534  30 b0 9d e5                                      ldr fp, [sp, #0x30]
00525538  34 90 9d e5                                      ldr sb, [sp, #0x34]
0052553c  38 70 dd e5                                      ldrb r7, [sp, #0x38]
00525540  04 00 00 0a                                      beq #0x525558
00525544  04 00 a0 e1                                      mov r0, r4
00525548  20 10 95 e5                                      ldr r1, [r5, #0x20]
0052554c  16 a5 f7 eb                                      bl #0x30e9ac
00525550  00 00 50 e3                                      cmp r0, #0
00525554  02 00 00 1a                                      bne #0x525564
00525558  00 00 a0 e3                                      mov r0, #0
0052555c  0c d0 8d e2                                      add sp, sp, #0xc
00525560  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00525564  04 40 96 e5                                      ldr r4, [r6, #4]
00525568  18 00 95 e5                                      ldr r0, [r5, #0x18]
0052556c  04 10 a0 e1                                      mov r1, r4
00525570  0d a5 f7 eb                                      bl #0x30e9ac
00525574  00 00 50 e3                                      cmp r0, #0
00525578  f6 ff ff 0a                                      beq #0x525558
0052557c  04 00 a0 e1                                      mov r0, r4
00525580  24 10 95 e5                                      ldr r1, [r5, #0x24]
00525584  08 a5 f7 eb                                      bl #0x30e9ac
00525588  00 00 50 e3                                      cmp r0, #0
0052558c  f1 ff ff 0a                                      beq #0x525558
00525590  08 40 96 e5                                      ldr r4, [r6, #8]
00525594  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
00525598  04 10 a0 e1                                      mov r1, r4
0052559c  02 a5 f7 eb                                      bl #0x30e9ac
005255a0  00 00 50 e3                                      cmp r0, #0
005255a4  eb ff ff 0a                                      beq #0x525558
005255a8  04 00 a0 e1                                      mov r0, r4
005255ac  28 10 95 e5                                      ldr r1, [r5, #0x28]
005255b0  fd a4 f7 eb                                      bl #0x30e9ac
005255b4  00 00 50 e3                                      cmp r0, #0
005255b8  e6 ff ff 0a                                      beq #0x525558
005255bc  08 30 95 e5                                      ldr r3, [r5, #8]
005255c0  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005255c4  02 20 63 e0                                      rsb r2, r3, r2
005255c8  22 21 b0 e1                                      lsrs r2, r2, #2
005255cc  e1 ff ff 0a                                      beq #0x525558
005255d0  00 40 a0 e3                                      mov r4, #0
005255d4  04 00 00 ea                                      b #0x5255ec
005255d8  08 30 95 e5                                      ldr r3, [r5, #8]
005255dc  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005255e0  02 20 63 e0                                      rsb r2, r3, r2
005255e4  42 01 54 e1                                      cmp r4, r2, asr #2
005255e8  da ff ff 2a                                      bhs #0x525558
005255ec  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
005255f0  06 10 a0 e1                                      mov r1, r6
005255f4  08 30 a0 e1                                      mov r3, r8
005255f8  0a 20 a0 e1                                      mov r2, sl
005255fc  00 90 8d e5                                      str sb, [sp]
00525600  04 70 8d e5                                      str r7, [sp, #4]
00525604  63 ee ff eb                                      bl #0x520f98
00525608  00 00 50 e3                                      cmp r0, #0
0052560c  04 31 a0 e1                                      lsl r3, r4, #2
00525610  01 40 84 e2                                      add r4, r4, #1
00525614  ef ff ff 0a                                      beq #0x5255d8
00525618  00 00 5b e3                                      cmp fp, #0
0052561c  08 20 95 15                                      ldrne r2, [r5, #8]
00525620  01 00 a0 03                                      moveq r0, #1
00525624  01 00 a0 13                                      movne r0, #1
00525628  03 30 92 17                                      ldrne r3, [r2, r3]
0052562c  00 30 8b 15                                      strne r3, [fp]
00525630  c9 ff ff ea                                      b #0x52555c

; FUNCTION 0x00525634, declared_size=80, range_size=80, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld18FlagFloorAsDeadEndERK7Point3DIfEb
; demangled: PFWorld::FlagFloorAsDeadEnd(Point3D<float> const&, bool)
; decoder-mode: arm
00525634  10 40 2d e9                                      push {r4, lr}
00525638  00 c0 a0 e3                                      mov ip, #0
0052563c  18 d0 4d e2                                      sub sp, sp, #0x18
00525640  14 e0 8d e2                                      add lr, sp, #0x14
00525644  02 40 a0 e1                                      mov r4, r2
00525648  0c 30 a0 e1                                      mov r3, ip
0052564c  0c 20 a0 e1                                      mov r2, ip
00525650  00 50 8d e8                                      stm sp, {ip, lr}
00525654  08 c0 8d e5                                      str ip, [sp, #8]
00525658  aa ff ff eb                                      bl #0x525508
0052565c  00 00 50 e3                                      cmp r0, #0
00525660  05 00 00 0a                                      beq #0x52567c
00525664  14 30 9d e5                                      ldr r3, [sp, #0x14]
00525668  00 00 54 e3                                      cmp r4, #0
0052566c  20 20 93 e5                                      ldr r2, [r3, #0x20]
00525670  02 20 82 13                                      orrne r2, r2, #2
00525674  02 20 c2 03                                      biceq r2, r2, #2
00525678  20 20 83 e5                                      str r2, [r3, #0x20]
0052567c  18 d0 8d e2                                      add sp, sp, #0x18
00525680  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00525684, declared_size=80, range_size=80, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld18FlagFloorAsEnabledERK7Point3DIfEb
; demangled: PFWorld::FlagFloorAsEnabled(Point3D<float> const&, bool)
; decoder-mode: arm
00525684  10 40 2d e9                                      push {r4, lr}
00525688  00 c0 a0 e3                                      mov ip, #0
0052568c  18 d0 4d e2                                      sub sp, sp, #0x18
00525690  14 e0 8d e2                                      add lr, sp, #0x14
00525694  02 40 a0 e1                                      mov r4, r2
00525698  0c 30 a0 e1                                      mov r3, ip
0052569c  0c 20 a0 e1                                      mov r2, ip
005256a0  00 50 8d e8                                      stm sp, {ip, lr}
005256a4  08 c0 8d e5                                      str ip, [sp, #8]
005256a8  96 ff ff eb                                      bl #0x525508
005256ac  00 00 50 e3                                      cmp r0, #0
005256b0  05 00 00 0a                                      beq #0x5256cc
005256b4  14 30 9d e5                                      ldr r3, [sp, #0x14]
005256b8  00 00 54 e3                                      cmp r4, #0
005256bc  20 20 93 e5                                      ldr r2, [r3, #0x20]
005256c0  01 20 82 13                                      orrne r2, r2, #1
005256c4  01 20 c2 03                                      biceq r2, r2, #1
005256c8  20 20 83 e5                                      str r2, [r3, #0x20]
005256cc  18 d0 8d e2                                      add sp, sp, #0x18
005256d0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005256d4, declared_size=300, range_size=300, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld14GetCollisionAtERK7Point3DIfERS1_RN6glitch4core10triangle3dIfEEPP6PFRoomPP7PFFloorb
; demangled: PFWorld::GetCollisionAt(Point3D<float> const&, Point3D<float>&, glitch::core::triangle3d<float>&, PFRoom**, PFFloor**, bool)
; decoder-mode: arm
005256d4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005256d8  00 40 91 e5                                      ldr r4, [r1]
005256dc  0c d0 4d e2                                      sub sp, sp, #0xc
005256e0  01 60 a0 e1                                      mov r6, r1
005256e4  00 50 a0 e1                                      mov r5, r0
005256e8  04 10 a0 e1                                      mov r1, r4
005256ec  14 00 90 e5                                      ldr r0, [r0, #0x14]
005256f0  02 a0 a0 e1                                      mov sl, r2
005256f4  03 80 a0 e1                                      mov r8, r3
005256f8  ab a4 f7 eb                                      bl #0x30e9ac
005256fc  00 00 50 e3                                      cmp r0, #0
00525700  30 b0 9d e5                                      ldr fp, [sp, #0x30]
00525704  34 90 9d e5                                      ldr sb, [sp, #0x34]
00525708  38 70 dd e5                                      ldrb r7, [sp, #0x38]
0052570c  04 00 00 0a                                      beq #0x525724
00525710  04 00 a0 e1                                      mov r0, r4
00525714  20 10 95 e5                                      ldr r1, [r5, #0x20]
00525718  a3 a4 f7 eb                                      bl #0x30e9ac
0052571c  00 00 50 e3                                      cmp r0, #0
00525720  02 00 00 1a                                      bne #0x525730
00525724  00 00 a0 e3                                      mov r0, #0
00525728  0c d0 8d e2                                      add sp, sp, #0xc
0052572c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00525730  04 40 96 e5                                      ldr r4, [r6, #4]
00525734  18 00 95 e5                                      ldr r0, [r5, #0x18]
00525738  04 10 a0 e1                                      mov r1, r4
0052573c  9a a4 f7 eb                                      bl #0x30e9ac
00525740  00 00 50 e3                                      cmp r0, #0
00525744  f6 ff ff 0a                                      beq #0x525724
00525748  04 00 a0 e1                                      mov r0, r4
0052574c  24 10 95 e5                                      ldr r1, [r5, #0x24]
00525750  95 a4 f7 eb                                      bl #0x30e9ac
00525754  00 00 50 e3                                      cmp r0, #0
00525758  f1 ff ff 0a                                      beq #0x525724
0052575c  08 40 96 e5                                      ldr r4, [r6, #8]
00525760  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
00525764  04 10 a0 e1                                      mov r1, r4
00525768  8f a4 f7 eb                                      bl #0x30e9ac
0052576c  00 00 50 e3                                      cmp r0, #0
00525770  eb ff ff 0a                                      beq #0x525724
00525774  04 00 a0 e1                                      mov r0, r4
00525778  28 10 95 e5                                      ldr r1, [r5, #0x28]
0052577c  8a a4 f7 eb                                      bl #0x30e9ac
00525780  00 00 50 e3                                      cmp r0, #0
00525784  e6 ff ff 0a                                      beq #0x525724
00525788  08 30 95 e5                                      ldr r3, [r5, #8]
0052578c  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00525790  02 20 63 e0                                      rsb r2, r3, r2
00525794  22 21 b0 e1                                      lsrs r2, r2, #2
00525798  e1 ff ff 0a                                      beq #0x525724
0052579c  00 40 a0 e3                                      mov r4, #0
005257a0  04 00 00 ea                                      b #0x5257b8
005257a4  08 30 95 e5                                      ldr r3, [r5, #8]
005257a8  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005257ac  02 20 63 e0                                      rsb r2, r3, r2
005257b0  42 01 54 e1                                      cmp r4, r2, asr #2
005257b4  da ff ff 2a                                      bhs #0x525724
005257b8  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
005257bc  06 10 a0 e1                                      mov r1, r6
005257c0  08 30 a0 e1                                      mov r3, r8
005257c4  0a 20 a0 e1                                      mov r2, sl
005257c8  00 90 8d e5                                      str sb, [sp]
005257cc  04 70 8d e5                                      str r7, [sp, #4]
005257d0  59 ee ff eb                                      bl #0x52113c
005257d4  00 00 50 e3                                      cmp r0, #0
005257d8  04 31 a0 e1                                      lsl r3, r4, #2
005257dc  01 40 84 e2                                      add r4, r4, #1
005257e0  ef ff ff 0a                                      beq #0x5257a4
005257e4  00 00 5b e3                                      cmp fp, #0
005257e8  08 20 95 15                                      ldrne r2, [r5, #8]
005257ec  01 00 a0 03                                      moveq r0, #1
005257f0  01 00 a0 13                                      movne r0, #1
005257f4  03 30 92 17                                      ldrne r3, [r2, r3]
005257f8  00 30 8b 15                                      strne r3, [fp]
005257fc  c9 ff ff ea                                      b #0x525728

; FUNCTION 0x00525800, declared_size=132, range_size=132, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld14GetCollisionAtERK7Point3DIfES3_RS1_b
; demangled: PFWorld::GetCollisionAt(Point3D<float> const&, Point3D<float> const&, Point3D<float>&, bool)
; decoder-mode: arm
00525800  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00525804  00 50 a0 e1                                      mov r5, r0
00525808  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0052580c  08 00 90 e5                                      ldr r0, [r0, #8]
00525810  0c d0 4d e2                                      sub sp, sp, #0xc
00525814  01 a0 a0 e1                                      mov sl, r1
00525818  0c c0 60 e0                                      rsb ip, r0, ip
0052581c  2c c1 b0 e1                                      lsrs ip, ip, #2
00525820  02 80 a0 e1                                      mov r8, r2
00525824  03 60 a0 e1                                      mov r6, r3
00525828  28 70 dd e5                                      ldrb r7, [sp, #0x28]
0052582c  11 00 00 0a                                      beq #0x525878
00525830  00 40 a0 e3                                      mov r4, #0
00525834  04 00 00 ea                                      b #0x52584c
00525838  08 00 95 e5                                      ldr r0, [r5, #8]
0052583c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00525840  03 30 60 e0                                      rsb r3, r0, r3
00525844  43 01 54 e1                                      cmp r4, r3, asr #2
00525848  0a 00 00 2a                                      bhs #0x525878
0052584c  04 01 90 e7                                      ldr r0, [r0, r4, lsl #2]
00525850  0a 10 a0 e1                                      mov r1, sl
00525854  08 20 a0 e1                                      mov r2, r8
00525858  06 30 a0 e1                                      mov r3, r6
0052585c  00 70 8d e5                                      str r7, [sp]
00525860  9e ee ff eb                                      bl #0x5212e0
00525864  00 00 50 e3                                      cmp r0, #0
00525868  01 40 84 e2                                      add r4, r4, #1
0052586c  f1 ff ff 0a                                      beq #0x525838
00525870  01 00 a0 e3                                      mov r0, #1
00525874  00 00 00 ea                                      b #0x52587c
00525878  00 00 a0 e3                                      mov r0, #0
0052587c  0c d0 8d e2                                      add sp, sp, #0xc
00525880  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x00525884, declared_size=192, range_size=192, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld22TranslateScreenToWorldERK7Point2DIfER7Point3DIfE
; demangled: PFWorld::TranslateScreenToWorld(Point2D<float> const&, Point3D<float>&)
; decoder-mode: arm
00525884  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
00525888  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0052588c  01 70 a0 e1                                      mov r7, r1
00525890  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
00525894  03 30 8f e0                                      add r3, pc, r3
00525898  40 d0 4d e2                                      sub sp, sp, #0x40
0052589c  01 10 93 e7                                      ldr r1, [r3, r1]
005258a0  00 50 a0 e1                                      mov r5, r0
005258a4  00 00 97 e5                                      ldr r0, [r7]
005258a8  10 10 91 e5                                      ldr r1, [r1, #0x10]
005258ac  02 40 a0 e1                                      mov r4, r2
005258b0  1c 80 91 e5                                      ldr r8, [r1, #0x1c]
005258b4  04 a3 f7 eb                                      bl #0x30e4cc
005258b8  00 60 a0 e1                                      mov r6, r0
005258bc  04 00 97 e5                                      ldr r0, [r7, #4]
005258c0  01 a3 f7 eb                                      bl #0x30e4cc
005258c4  2c 10 98 e5                                      ldr r1, [r8, #0x2c]
005258c8  38 20 8d e2                                      add r2, sp, #0x38
005258cc  00 30 a0 e3                                      mov r3, #0
005258d0  00 c0 91 e5                                      ldr ip, [r1]
005258d4  14 c0 9c e5                                      ldr ip, [ip, #0x14]
005258d8  3c 00 8d e5                                      str r0, [sp, #0x3c]
005258dc  38 60 8d e5                                      str r6, [sp, #0x38]
005258e0  08 00 8d e2                                      add r0, sp, #8
005258e4  3c ff 2f e1                                      blx ip
005258e8  08 c0 9d e5                                      ldr ip, [sp, #8]
005258ec  05 00 a0 e1                                      mov r0, r5
005258f0  04 30 a0 e1                                      mov r3, r4
005258f4  2c c0 8d e5                                      str ip, [sp, #0x2c]
005258f8  0c c0 9d e5                                      ldr ip, [sp, #0xc]
005258fc  2c 10 8d e2                                      add r1, sp, #0x2c
00525900  20 20 8d e2                                      add r2, sp, #0x20
00525904  30 c0 8d e5                                      str ip, [sp, #0x30]
00525908  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0052590c  34 c0 8d e5                                      str ip, [sp, #0x34]
00525910  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00525914  20 c0 8d e5                                      str ip, [sp, #0x20]
00525918  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0052591c  24 c0 8d e5                                      str ip, [sp, #0x24]
00525920  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00525924  28 c0 8d e5                                      str ip, [sp, #0x28]
00525928  00 c0 a0 e3                                      mov ip, #0
0052592c  00 c0 8d e5                                      str ip, [sp]
00525930  b2 ff ff eb                                      bl #0x525800
00525934  40 d0 8d e2                                      add sp, sp, #0x40
00525938  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0052593c  fc f1 46 00 f4 37 00 00                          .byte 0xfc, 0xf1, 0x46, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00525944, declared_size=1052, range_size=1052, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld17ValidateDirectionER7Point3DIfERKS1_fj
; demangled: PFWorld::ValidateDirection(Point3D<float>&, Point3D<float> const&, float, unsigned int)
; decoder-mode: arm
00525944  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00525948  00 70 91 e5                                      ldr r7, [r1]
0052594c  04 80 91 e5                                      ldr r8, [r1, #4]
00525950  08 a0 91 e5                                      ldr sl, [r1, #8]
00525954  cc d0 4d e2                                      sub sp, sp, #0xcc
00525958  00 c0 a0 e3                                      mov ip, #0
0052595c  00 e0 a0 e3                                      mov lr, #0
00525960  01 40 a0 e1                                      mov r4, r1
00525964  02 50 a0 e1                                      mov r5, r2
00525968  02 10 a0 e1                                      mov r1, r2
0052596c  c4 60 8d e2                                      add r6, sp, #0xc4
00525970  b0 20 8d e2                                      add r2, sp, #0xb0
00525974  1c 30 8d e2                                      add r3, sp, #0x1c
00525978  a4 70 8d e5                                      str r7, [sp, #0xa4]
0052597c  3c c0 8d e5                                      str ip, [sp, #0x3c]
00525980  a8 80 8d e5                                      str r8, [sp, #0xa8]
00525984  ac a0 8d e5                                      str sl, [sp, #0xac]
00525988  08 e0 8d e5                                      str lr, [sp, #8]
0052598c  b0 c0 8d e5                                      str ip, [sp, #0xb0]
00525990  b4 c0 8d e5                                      str ip, [sp, #0xb4]
00525994  b8 c0 8d e5                                      str ip, [sp, #0xb8]
00525998  1c c0 8d e5                                      str ip, [sp, #0x1c]
0052599c  20 c0 8d e5                                      str ip, [sp, #0x20]
005259a0  24 c0 8d e5                                      str ip, [sp, #0x24]
005259a4  28 c0 8d e5                                      str ip, [sp, #0x28]
005259a8  2c c0 8d e5                                      str ip, [sp, #0x2c]
005259ac  30 c0 8d e5                                      str ip, [sp, #0x30]
005259b0  34 c0 8d e5                                      str ip, [sp, #0x34]
005259b4  38 c0 8d e5                                      str ip, [sp, #0x38]
005259b8  00 e0 8d e5                                      str lr, [sp]
005259bc  04 60 8d e5                                      str r6, [sp, #4]
005259c0  00 70 a0 e1                                      mov r7, r0
005259c4  f0 90 9d e5                                      ldr sb, [sp, #0xf0]
005259c8  41 ff ff eb                                      bl #0x5256d4
005259cc  00 00 50 e3                                      cmp r0, #0
005259d0  9e 00 00 0a                                      beq #0x525c50
005259d4  c4 30 9d e5                                      ldr r3, [sp, #0xc4]
005259d8  24 30 93 e5                                      ldr r3, [r3, #0x24]
005259dc  00 00 53 e3                                      cmp r3, #0
005259e0  9d 00 00 1a                                      bne #0x525c5c
005259e4  a4 20 8d e2                                      add r2, sp, #0xa4
005259e8  02 00 a0 e1                                      mov r0, r2
005259ec  14 20 8d e5                                      str r2, [sp, #0x14]
005259f0  ae 9d f8 eb                                      bl #0x34d0b0
005259f4  41 14 a0 e3                                      mov r1, #0x41000000
005259f8  00 80 a0 e1                                      mov r8, r0
005259fc  02 16 81 e2                                      add r1, r1, #0x200000
00525a00  00 00 90 e5                                      ldr r0, [r0]
00525a04  d8 a4 f7 eb                                      bl #0x30ed6c
00525a08  41 14 a0 e3                                      mov r1, #0x41000000
00525a0c  00 00 88 e5                                      str r0, [r8]
00525a10  02 16 81 e2                                      add r1, r1, #0x200000
00525a14  04 00 98 e5                                      ldr r0, [r8, #4]
00525a18  d3 a4 f7 eb                                      bl #0x30ed6c
00525a1c  41 14 a0 e3                                      mov r1, #0x41000000
00525a20  04 00 88 e5                                      str r0, [r8, #4]
00525a24  02 16 81 e2                                      add r1, r1, #0x200000
00525a28  08 00 98 e5                                      ldr r0, [r8, #8]
00525a2c  ce a4 f7 eb                                      bl #0x30ed6c
00525a30  08 00 88 e5                                      str r0, [r8, #8]
00525a34  04 00 95 e5                                      ldr r0, [r5, #4]
00525a38  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
00525a3c  58 a4 f7 eb                                      bl #0x30eba4
00525a40  ac 10 9d e5                                      ldr r1, [sp, #0xac]
00525a44  00 80 a0 e1                                      mov r8, r0
00525a48  08 00 95 e5                                      ldr r0, [r5, #8]
00525a4c  54 a4 f7 eb                                      bl #0x30eba4
00525a50  a4 10 9d e5                                      ldr r1, [sp, #0xa4]
00525a54  00 a0 a0 e1                                      mov sl, r0
00525a58  00 00 95 e5                                      ldr r0, [r5]
00525a5c  50 a4 f7 eb                                      bl #0x30eba4
00525a60  00 c0 a0 e3                                      mov ip, #0
00525a64  98 00 8d e5                                      str r0, [sp, #0x98]
00525a68  0c 20 a0 e1                                      mov r2, ip
00525a6c  98 10 8d e2                                      add r1, sp, #0x98
00525a70  07 00 a0 e1                                      mov r0, r7
00525a74  0c 30 a0 e1                                      mov r3, ip
00525a78  9c 80 8d e5                                      str r8, [sp, #0x9c]
00525a7c  a0 a0 8d e5                                      str sl, [sp, #0xa0]
00525a80  04 60 8d e5                                      str r6, [sp, #4]
00525a84  00 c0 8d e5                                      str ip, [sp]
00525a88  08 c0 8d e5                                      str ip, [sp, #8]
00525a8c  9d fe ff eb                                      bl #0x525508
00525a90  00 00 50 e3                                      cmp r0, #0
00525a94  06 00 00 0a                                      beq #0x525ab4
00525a98  c4 30 9d e5                                      ldr r3, [sp, #0xc4]
00525a9c  24 30 93 e5                                      ldr r3, [r3, #0x24]
00525aa0  00 00 53 e3                                      cmp r3, #0
00525aa4  ab 00 00 0a                                      beq #0x525d58
00525aa8  03 90 09 e0                                      and sb, sb, r3
00525aac  09 00 53 e1                                      cmp r3, sb
00525ab0  a8 00 00 0a                                      beq #0x525d58
00525ab4  04 30 95 e5                                      ldr r3, [r5, #4]
00525ab8  00 60 95 e5                                      ldr r6, [r5]
00525abc  00 20 a0 e3                                      mov r2, #0
00525ac0  03 00 a0 e1                                      mov r0, r3
00525ac4  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
00525ac8  c0 20 8d e5                                      str r2, [sp, #0xc0]
00525acc  bc 20 8d e5                                      str r2, [sp, #0xbc]
00525ad0  74 30 8d e5                                      str r3, [sp, #0x74]
00525ad4  70 60 8d e5                                      str r6, [sp, #0x70]
00525ad8  31 a4 f7 eb                                      bl #0x30eba4
00525adc  a4 10 9d e5                                      ldr r1, [sp, #0xa4]
00525ae0  7c 00 8d e5                                      str r0, [sp, #0x7c]
00525ae4  06 00 a0 e1                                      mov r0, r6
00525ae8  2d a4 f7 eb                                      bl #0x30eba4
00525aec  20 30 9d e5                                      ldr r3, [sp, #0x20]
00525af0  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00525af4  28 e0 9d e5                                      ldr lr, [sp, #0x28]
00525af8  54 30 8d e5                                      str r3, [sp, #0x54]
00525afc  38 30 9d e5                                      ldr r3, [sp, #0x38]
00525b00  2c 90 9d e5                                      ldr sb, [sp, #0x2c]
00525b04  34 b0 9d e5                                      ldr fp, [sp, #0x34]
00525b08  4c 30 8d e5                                      str r3, [sp, #0x4c]
00525b0c  20 30 9d e5                                      ldr r3, [sp, #0x20]
00525b10  70 80 8d e2                                      add r8, sp, #0x70
00525b14  60 60 8d e2                                      add r6, sp, #0x60
00525b18  64 30 8d e5                                      str r3, [sp, #0x64]
00525b1c  38 30 9d e5                                      ldr r3, [sp, #0x38]
00525b20  bc a0 8d e2                                      add sl, sp, #0xbc
00525b24  78 00 8d e5                                      str r0, [sp, #0x78]
00525b28  06 10 a0 e1                                      mov r1, r6
00525b2c  08 00 a0 e1                                      mov r0, r8
00525b30  0a 20 a0 e1                                      mov r2, sl
00525b34  50 c0 8d e5                                      str ip, [sp, #0x50]
00525b38  40 e0 8d e5                                      str lr, [sp, #0x40]
00525b3c  44 90 8d e5                                      str sb, [sp, #0x44]
00525b40  48 b0 8d e5                                      str fp, [sp, #0x48]
00525b44  60 c0 8d e5                                      str ip, [sp, #0x60]
00525b48  68 e0 8d e5                                      str lr, [sp, #0x68]
00525b4c  6c 90 8d e5                                      str sb, [sp, #0x6c]
00525b50  58 b0 8d e5                                      str fp, [sp, #0x58]
00525b54  5c 30 8d e5                                      str r3, [sp, #0x5c]
00525b58  ec fd ff eb                                      bl #0x525310
00525b5c  00 00 50 e3                                      cmp r0, #0
00525b60  6e 00 00 0a                                      beq #0x525d20
00525b64  00 a0 a0 e3                                      mov sl, #0
00525b68  ac a0 8d e5                                      str sl, [sp, #0xac]
00525b6c  08 10 96 e5                                      ldr r1, [r6, #8]
00525b70  00 00 96 e5                                      ldr r0, [r6]
00525b74  0c a2 f7 eb                                      bl #0x30e3ac
00525b78  04 90 96 e5                                      ldr sb, [r6, #4]
00525b7c  0c 60 96 e5                                      ldr r6, [r6, #0xc]
00525b80  8c 00 8d e5                                      str r0, [sp, #0x8c]
00525b84  09 00 a0 e1                                      mov r0, sb
00525b88  06 10 a0 e1                                      mov r1, r6
00525b8c  06 a2 f7 eb                                      bl #0x30e3ac
00525b90  8c 80 8d e2                                      add r8, sp, #0x8c
00525b94  90 00 8d e5                                      str r0, [sp, #0x90]
00525b98  14 10 9d e5                                      ldr r1, [sp, #0x14]
00525b9c  08 00 a0 e1                                      mov r0, r8
00525ba0  94 a0 8d e5                                      str sl, [sp, #0x94]
00525ba4  2b b5 f7 eb                                      bl #0x313058
00525ba8  db 1f 00 e3                                      movw r1, #0xfdb
00525bac  02 01 c0 e3                                      bic r0, r0, #0x80000000
00525bb0  c9 1f 43 e3                                      movt r1, #0x3fc9
00525bb4  d4 a2 f7 eb                                      bl #0x30e70c
00525bb8  00 00 50 e3                                      cmp r0, #0
00525bbc  2a 00 00 0a                                      beq #0x525c6c
00525bc0  08 00 a0 e1                                      mov r0, r8
00525bc4  39 9d f8 eb                                      bl #0x34d0b0
00525bc8  41 14 a0 e3                                      mov r1, #0x41000000
00525bcc  90 00 9d e5                                      ldr r0, [sp, #0x90]
00525bd0  02 16 81 e2                                      add r1, r1, #0x200000
00525bd4  64 a4 f7 eb                                      bl #0x30ed6c
00525bd8  04 10 95 e5                                      ldr r1, [r5, #4]
00525bdc  f0 a3 f7 eb                                      bl #0x30eba4
00525be0  41 14 a0 e3                                      mov r1, #0x41000000
00525be4  00 60 a0 e1                                      mov r6, r0
00525be8  02 16 81 e2                                      add r1, r1, #0x200000
00525bec  94 00 9d e5                                      ldr r0, [sp, #0x94]
00525bf0  5d a4 f7 eb                                      bl #0x30ed6c
00525bf4  08 10 95 e5                                      ldr r1, [r5, #8]
00525bf8  e9 a3 f7 eb                                      bl #0x30eba4
00525bfc  41 14 a0 e3                                      mov r1, #0x41000000
00525c00  00 80 a0 e1                                      mov r8, r0
00525c04  02 16 81 e2                                      add r1, r1, #0x200000
00525c08  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
00525c0c  56 a4 f7 eb                                      bl #0x30ed6c
00525c10  00 10 95 e5                                      ldr r1, [r5]
00525c14  e2 a3 f7 eb                                      bl #0x30eba4
00525c18  00 c0 a0 e3                                      mov ip, #0
00525c1c  80 00 8d e5                                      str r0, [sp, #0x80]
00525c20  0c 20 a0 e1                                      mov r2, ip
00525c24  07 00 a0 e1                                      mov r0, r7
00525c28  80 10 8d e2                                      add r1, sp, #0x80
00525c2c  0c 30 a0 e1                                      mov r3, ip
00525c30  84 60 8d e5                                      str r6, [sp, #0x84]
00525c34  88 80 8d e5                                      str r8, [sp, #0x88]
00525c38  00 c0 8d e5                                      str ip, [sp]
00525c3c  04 c0 8d e5                                      str ip, [sp, #4]
00525c40  08 c0 8d e5                                      str ip, [sp, #8]
00525c44  2f fe ff eb                                      bl #0x525508
00525c48  00 00 50 e3                                      cmp r0, #0
00525c4c  0f 00 00 1a                                      bne #0x525c90
00525c50  00 00 a0 e3                                      mov r0, #0
00525c54  cc d0 8d e2                                      add sp, sp, #0xcc
00525c58  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00525c5c  03 20 09 e0                                      and r2, sb, r3
00525c60  02 00 53 e1                                      cmp r3, r2
00525c64  f9 ff ff 1a                                      bne #0x525c50
00525c68  5d ff ff ea                                      b #0x5259e4
00525c6c  8c 10 8d e2                                      add r1, sp, #0x8c
00525c70  0e 00 91 e8                                      ldm r1, {r1, r2, r3}
00525c74  02 21 82 e2                                      add r2, r2, #0x80000000
00525c78  02 31 83 e2                                      add r3, r3, #0x80000000
00525c7c  02 11 81 e2                                      add r1, r1, #0x80000000
00525c80  8c 10 8d e5                                      str r1, [sp, #0x8c]
00525c84  90 20 8d e5                                      str r2, [sp, #0x90]
00525c88  94 30 8d e5                                      str r3, [sp, #0x94]
00525c8c  cb ff ff ea                                      b #0x525bc0
00525c90  00 00 94 e5                                      ldr r0, [r4]
00525c94  04 70 94 e5                                      ldr r7, [r4, #4]
00525c98  08 60 94 e5                                      ldr r6, [r4, #8]
00525c9c  00 10 a0 e1                                      mov r1, r0
00525ca0  31 a4 f7 eb                                      bl #0x30ed6c
00525ca4  07 10 a0 e1                                      mov r1, r7
00525ca8  00 50 a0 e1                                      mov r5, r0
00525cac  07 00 a0 e1                                      mov r0, r7
00525cb0  2d a4 f7 eb                                      bl #0x30ed6c
00525cb4  00 10 a0 e1                                      mov r1, r0
00525cb8  05 00 a0 e1                                      mov r0, r5
00525cbc  b8 a3 f7 eb                                      bl #0x30eba4
00525cc0  06 10 a0 e1                                      mov r1, r6
00525cc4  00 50 a0 e1                                      mov r5, r0
00525cc8  06 00 a0 e1                                      mov r0, r6
00525ccc  26 a4 f7 eb                                      bl #0x30ed6c
00525cd0  00 10 a0 e1                                      mov r1, r0
00525cd4  05 00 a0 e1                                      mov r0, r5
00525cd8  b1 a3 f7 eb                                      bl #0x30eba4
00525cdc  10 a1 f7 eb                                      bl #0x30e124
00525ce0  90 10 9d e5                                      ldr r1, [sp, #0x90]
00525ce4  00 50 a0 e1                                      mov r5, r0
00525ce8  1f a4 f7 eb                                      bl #0x30ed6c
00525cec  94 10 9d e5                                      ldr r1, [sp, #0x94]
00525cf0  00 60 a0 e1                                      mov r6, r0
00525cf4  05 00 a0 e1                                      mov r0, r5
00525cf8  1b a4 f7 eb                                      bl #0x30ed6c
00525cfc  8c 10 9d e5                                      ldr r1, [sp, #0x8c]
00525d00  00 70 a0 e1                                      mov r7, r0
00525d04  05 00 a0 e1                                      mov r0, r5
00525d08  17 a4 f7 eb                                      bl #0x30ed6c
00525d0c  08 70 84 e5                                      str r7, [r4, #8]
00525d10  00 00 84 e5                                      str r0, [r4]
00525d14  04 60 84 e5                                      str r6, [r4, #4]
00525d18  01 00 a0 e3                                      mov r0, #1
00525d1c  cc ff ff ea                                      b #0x525c54
00525d20  50 60 8d e2                                      add r6, sp, #0x50
00525d24  08 00 a0 e1                                      mov r0, r8
00525d28  06 10 a0 e1                                      mov r1, r6
00525d2c  0a 20 a0 e1                                      mov r2, sl
00525d30  76 fd ff eb                                      bl #0x525310
00525d34  00 00 50 e3                                      cmp r0, #0
00525d38  89 ff ff 1a                                      bne #0x525b64
00525d3c  40 60 8d e2                                      add r6, sp, #0x40
00525d40  08 00 a0 e1                                      mov r0, r8
00525d44  0a 20 a0 e1                                      mov r2, sl
00525d48  06 10 a0 e1                                      mov r1, r6
00525d4c  6f fd ff eb                                      bl #0x525310
00525d50  00 00 50 e3                                      cmp r0, #0
00525d54  82 ff ff 1a                                      bne #0x525b64
00525d58  01 00 a0 e3                                      mov r0, #1
00525d5c  bc ff ff ea                                      b #0x525c54

; FUNCTION 0x00525d60, declared_size=36, range_size=36, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld17ValidateDirectionER7Point3DIfERK8PFObject
; demangled: PFWorld::ValidateDirection(Point3D<float>&, PFObject const&)
; decoder-mode: arm
00525d60  04 e0 2d e5                                      str lr, [sp, #-4]!
00525d64  14 c0 92 e5                                      ldr ip, [r2, #0x14]
00525d68  08 30 92 e5                                      ldr r3, [r2, #8]
00525d6c  0c d0 4d e2                                      sub sp, sp, #0xc
00525d70  18 20 82 e2                                      add r2, r2, #0x18
00525d74  00 c0 8d e5                                      str ip, [sp]
00525d78  f1 fe ff eb                                      bl #0x525944
00525d7c  0c d0 8d e2                                      add sp, sp, #0xc
00525d80  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00525d84, declared_size=484, range_size=484, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld16ValidatePositionER7Point3DIfEP8PFObject
; demangled: PFWorld::ValidatePosition(Point3D<float>&, PFObject*)
; decoder-mode: arm
00525d84  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00525d88  00 40 52 e2                                      subs r4, r2, #0
00525d8c  2c d0 4d e2                                      sub sp, sp, #0x2c
00525d90  00 80 a0 e1                                      mov r8, r0
00525d94  01 50 a0 e1                                      mov r5, r1
00525d98  04 00 00 0a                                      beq #0x525db0
00525d9c  18 00 84 e2                                      add r0, r4, #0x18
00525da0  71 b3 f7 eb                                      bl #0x312b6c
00525da4  00 00 50 e3                                      cmp r0, #0
00525da8  01 00 a0 13                                      movne r0, #1
00525dac  48 00 00 1a                                      bne #0x525ed4
00525db0  00 30 a0 e3                                      mov r3, #0
00525db4  00 00 54 e3                                      cmp r4, #0
00525db8  18 30 8d e5                                      str r3, [sp, #0x18]
00525dbc  10 30 8d e5                                      str r3, [sp, #0x10]
00525dc0  14 30 8d e5                                      str r3, [sp, #0x14]
00525dc4  5b 00 00 0a                                      beq #0x525f38
00525dc8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00525dcc  20 30 8d e5                                      str r3, [sp, #0x20]
00525dd0  10 00 94 e5                                      ldr r0, [r4, #0x10]
00525dd4  00 00 50 e3                                      cmp r0, #0
00525dd8  1c 00 8d e5                                      str r0, [sp, #0x1c]
00525ddc  3e 00 00 0a                                      beq #0x525edc
00525de0  24 70 8d e2                                      add r7, sp, #0x24
00525de4  10 60 8d e2                                      add r6, sp, #0x10
00525de8  05 10 a0 e1                                      mov r1, r5
00525dec  07 20 a0 e1                                      mov r2, r7
00525df0  06 30 a0 e1                                      mov r3, r6
00525df4  38 d7 ff eb                                      bl #0x51badc
00525df8  00 00 50 e3                                      cmp r0, #0
00525dfc  0d 00 00 1a                                      bne #0x525e38
00525e00  20 30 9d e5                                      ldr r3, [sp, #0x20]
00525e04  00 00 53 e3                                      cmp r3, #0
00525e08  1c a0 8d 02                                      addeq sl, sp, #0x1c
00525e0c  3d 00 00 0a                                      beq #0x525f08
00525e10  03 00 a0 e1                                      mov r0, r3
00525e14  00 c0 a0 e3                                      mov ip, #0
00525e18  1c a0 8d e2                                      add sl, sp, #0x1c
00525e1c  05 10 a0 e1                                      mov r1, r5
00525e20  07 20 a0 e1                                      mov r2, r7
00525e24  06 30 a0 e1                                      mov r3, r6
00525e28  00 14 8d e8                                      stm sp, {sl, ip}
00525e2c  59 ec ff eb                                      bl #0x520f98
00525e30  00 00 50 e3                                      cmp r0, #0
00525e34  33 00 00 0a                                      beq #0x525f08
00525e38  04 00 a0 e1                                      mov r0, r4
00525e3c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00525e40  fa f8 ff eb                                      bl #0x524230
00525e44  00 00 50 e3                                      cmp r0, #0
00525e48  26 00 00 0a                                      beq #0x525ee8
00525e4c  94 30 d8 e5                                      ldrb r3, [r8, #0x94]
00525e50  00 00 53 e3                                      cmp r3, #0
00525e54  07 00 00 1a                                      bne #0x525e78
00525e58  08 10 95 e5                                      ldr r1, [r5, #8]
00525e5c  24 00 9d e5                                      ldr r0, [sp, #0x24]
00525e60  51 a1 f7 eb                                      bl #0x30e3ac
00525e64  02 11 c0 e3                                      bic r1, r0, #0x80000000
00525e68  90 00 98 e5                                      ldr r0, [r8, #0x90]
00525e6c  21 a1 f7 eb                                      bl #0x30e2f8
00525e70  00 00 50 e3                                      cmp r0, #0
00525e74  1b 00 00 0a                                      beq #0x525ee8
00525e78  08 00 a0 e1                                      mov r0, r8
00525e7c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00525e80  04 10 a0 e1                                      mov r1, r4
00525e84  7e 09 00 eb                                      bl #0x528484
00525e88  00 30 95 e5                                      ldr r3, [r5]
00525e8c  24 20 9d e5                                      ldr r2, [sp, #0x24]
00525e90  01 00 a0 e3                                      mov r0, #1
00525e94  08 20 85 e5                                      str r2, [r5, #8]
00525e98  18 30 84 e5                                      str r3, [r4, #0x18]
00525e9c  04 30 95 e5                                      ldr r3, [r5, #4]
00525ea0  1c 30 84 e5                                      str r3, [r4, #0x1c]
00525ea4  08 30 95 e5                                      ldr r3, [r5, #8]
00525ea8  20 30 84 e5                                      str r3, [r4, #0x20]
00525eac  10 30 9d e5                                      ldr r3, [sp, #0x10]
00525eb0  24 30 84 e5                                      str r3, [r4, #0x24]
00525eb4  14 30 9d e5                                      ldr r3, [sp, #0x14]
00525eb8  28 30 84 e5                                      str r3, [r4, #0x28]
00525ebc  18 30 9d e5                                      ldr r3, [sp, #0x18]
00525ec0  2c 30 84 e5                                      str r3, [r4, #0x2c]
00525ec4  20 30 9d e5                                      ldr r3, [sp, #0x20]
00525ec8  0c 30 84 e5                                      str r3, [r4, #0xc]
00525ecc  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00525ed0  10 30 84 e5                                      str r3, [r4, #0x10]
00525ed4  2c d0 8d e2                                      add sp, sp, #0x2c
00525ed8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00525edc  24 70 8d e2                                      add r7, sp, #0x24
00525ee0  10 60 8d e2                                      add r6, sp, #0x10
00525ee4  c6 ff ff ea                                      b #0x525e04
00525ee8  01 00 a0 e3                                      mov r0, #1
00525eec  18 30 94 e5                                      ldr r3, [r4, #0x18]
00525ef0  00 30 85 e5                                      str r3, [r5]
00525ef4  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00525ef8  04 30 85 e5                                      str r3, [r5, #4]
00525efc  20 30 94 e5                                      ldr r3, [r4, #0x20]
00525f00  08 30 85 e5                                      str r3, [r5, #8]
00525f04  f2 ff ff ea                                      b #0x525ed4
00525f08  20 c0 8d e2                                      add ip, sp, #0x20
00525f0c  00 c0 8d e5                                      str ip, [sp]
00525f10  07 20 a0 e1                                      mov r2, r7
00525f14  00 c0 a0 e3                                      mov ip, #0
00525f18  06 30 a0 e1                                      mov r3, r6
00525f1c  08 00 a0 e1                                      mov r0, r8
00525f20  05 10 a0 e1                                      mov r1, r5
00525f24  00 14 8d e9                                      stmib sp, {sl, ip}
00525f28  76 fd ff eb                                      bl #0x525508
00525f2c  00 00 50 e3                                      cmp r0, #0
00525f30  ed ff ff 0a                                      beq #0x525eec
00525f34  bf ff ff ea                                      b #0x525e38
00525f38  04 30 a0 e1                                      mov r3, r4
00525f3c  08 00 a0 e1                                      mov r0, r8
00525f40  05 10 a0 e1                                      mov r1, r5
00525f44  24 20 8d e2                                      add r2, sp, #0x24
00525f48  00 40 8d e5                                      str r4, [sp]
00525f4c  04 40 8d e5                                      str r4, [sp, #4]
00525f50  08 40 8d e5                                      str r4, [sp, #8]
00525f54  6b fd ff eb                                      bl #0x525508
00525f58  00 00 50 e3                                      cmp r0, #0
00525f5c  24 30 9d 15                                      ldrne r3, [sp, #0x24]
00525f60  08 30 85 15                                      strne r3, [r5, #8]
00525f64  da ff ff ea                                      b #0x525ed4

; FUNCTION 0x00526b18, declared_size=156, range_size=156, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld10InitObjectER8PFObjectbRK7Point3DIfEfPv
; demangled: PFWorld::InitObject(PFObject&, bool, Point3D<float> const&, float, void*)
; decoder-mode: arm
00526b18  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00526b1c  10 d0 4d e2                                      sub sp, sp, #0x10
00526b20  00 60 52 e2                                      subs r6, r2, #0
00526b24  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00526b28  03 70 a0 e1                                      mov r7, r3
00526b2c  04 30 91 e5                                      ldr r3, [r1, #4]
00526b30  00 20 81 e5                                      str r2, [r1]
00526b34  28 80 9d e5                                      ldr r8, [sp, #0x28]
00526b38  01 30 83 13                                      orrne r3, r3, #1
00526b3c  01 30 c3 03                                      biceq r3, r3, #1
00526b40  01 40 a0 e1                                      mov r4, r1
00526b44  00 50 a0 e1                                      mov r5, r0
00526b48  04 30 81 e5                                      str r3, [r1, #4]
00526b4c  08 00 a0 e1                                      mov r0, r8
00526b50  fe 15 a0 e3                                      mov r1, #0x3f800000
00526b54  ec 9e f7 eb                                      bl #0x30e70c
00526b58  00 00 50 e3                                      cmp r0, #0
00526b5c  fe 85 a0 13                                      movne r8, #0x3f800000
00526b60  08 80 84 e5                                      str r8, [r4, #8]
00526b64  00 30 97 e5                                      ldr r3, [r7]
00526b68  00 00 56 e3                                      cmp r6, #0
00526b6c  0c c0 84 e2                                      add ip, r4, #0xc
00526b70  18 30 84 e5                                      str r3, [r4, #0x18]
00526b74  04 30 97 e5                                      ldr r3, [r7, #4]
00526b78  18 10 84 e2                                      add r1, r4, #0x18
00526b7c  20 20 84 02                                      addeq r2, r4, #0x20
00526b80  1c 30 84 e5                                      str r3, [r4, #0x1c]
00526b84  08 30 97 e5                                      ldr r3, [r7, #8]
00526b88  00 20 a0 13                                      movne r2, #0
00526b8c  05 00 a0 e1                                      mov r0, r5
00526b90  20 30 84 e5                                      str r3, [r4, #0x20]
00526b94  24 30 84 e2                                      add r3, r4, #0x24
00526b98  00 c0 8d e5                                      str ip, [sp]
00526b9c  10 40 84 e2                                      add r4, r4, #0x10
00526ba0  00 c0 a0 e3                                      mov ip, #0
00526ba4  10 10 8d e9                                      stmib sp, {r4, ip}
00526ba8  56 fa ff eb                                      bl #0x525508
00526bac  10 d0 8d e2                                      add sp, sp, #0x10
00526bb0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00527660, declared_size=1636, range_size=1636, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld19_CalcObstaclesForceERK8PFObjectR7Point3DIfEPSt6vectorINS_13ObstacleForceESaIS7_EE
; demangled: PFWorld::_CalcObstaclesForce(PFObject const&, Point3D<float>&, std::vector<PFWorld::ObstacleForce, std::allocator<PFWorld::ObstacleForce> >*)
; decoder-mode: arm
00527660  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00527664  2c 00 80 e2                                      add r0, r0, #0x2c
00527668  5c d0 4d e2                                      sub sp, sp, #0x5c
0052766c  01 60 a0 e1                                      mov r6, r1
00527670  10 10 81 e2                                      add r1, r1, #0x10
00527674  14 20 8d e5                                      str r2, [sp, #0x14]
00527678  28 30 8d e5                                      str r3, [sp, #0x28]
0052767c  b7 ff ff eb                                      bl #0x527560
00527680  24 16 9f e5                                      ldr r1, [pc, #0x624]
00527684  10 a0 90 e5                                      ldr sl, [r0, #0x10]
00527688  00 40 90 e5                                      ldr r4, [r0]
0052768c  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00527690  01 10 8f e0                                      add r1, pc, r1
00527694  10 10 8d e5                                      str r1, [sp, #0x10]
00527698  14 10 9d e5                                      ldr r1, [sp, #0x14]
0052769c  00 30 a0 e3                                      mov r3, #0
005276a0  18 20 8d e5                                      str r2, [sp, #0x18]
005276a4  0a 00 54 e1                                      cmp r4, sl
005276a8  08 80 90 e5                                      ldr r8, [r0, #8]
005276ac  48 30 8d e5                                      str r3, [sp, #0x48]
005276b0  4c 30 8d e5                                      str r3, [sp, #0x4c]
005276b4  50 30 8d e5                                      str r3, [sp, #0x50]
005276b8  00 30 81 e5                                      str r3, [r1]
005276bc  04 30 81 e5                                      str r3, [r1, #4]
005276c0  08 30 81 e5                                      str r3, [r1, #8]
005276c4  00 30 a0 03                                      moveq r3, #0
005276c8  30 30 8d 05                                      streq r3, [sp, #0x30]
005276cc  7c 00 00 0a                                      beq #0x5278c4
005276d0  d8 25 9f e5                                      ldr r2, [pc, #0x5d8]
005276d4  d8 15 9f e5                                      ldr r1, [pc, #0x5d8]
005276d8  00 30 a0 e3                                      mov r3, #0
005276dc  24 20 8d e5                                      str r2, [sp, #0x24]
005276e0  d0 25 9f e5                                      ldr r2, [pc, #0x5d0]
005276e4  34 10 8d e5                                      str r1, [sp, #0x34]
005276e8  38 70 86 e2                                      add r7, r6, #0x38
005276ec  02 20 8f e0                                      add r2, pc, r2
005276f0  38 20 8d e5                                      str r2, [sp, #0x38]
005276f4  c0 25 9f e5                                      ldr r2, [pc, #0x5c0]
005276f8  30 30 8d e5                                      str r3, [sp, #0x30]
005276fc  02 20 8f e0                                      add r2, pc, r2
00527700  3c 20 8d e5                                      str r2, [sp, #0x3c]
00527704  b4 25 9f e5                                      ldr r2, [pc, #0x5b4]
00527708  02 20 8f e0                                      add r2, pc, r2
0052770c  40 20 8d e5                                      str r2, [sp, #0x40]
00527710  28 20 9d e5                                      ldr r2, [sp, #0x28]
00527714  08 20 82 e2                                      add r2, r2, #8
00527718  44 20 8d e5                                      str r2, [sp, #0x44]
0052771c  00 50 94 e5                                      ldr r5, [r4]
00527720  00 00 55 e3                                      cmp r5, #0
00527724  d9 00 00 0a                                      beq #0x527a90
00527728  04 30 95 e5                                      ldr r3, [r5, #4]
0052772c  04 00 13 e3                                      tst r3, #4
00527730  5b 00 00 0a                                      beq #0x5278a4
00527734  05 00 56 e1                                      cmp r6, r5
00527738  59 00 00 0a                                      beq #0x5278a4
0052773c  08 00 13 e3                                      tst r3, #8
00527740  57 00 00 0a                                      beq #0x5278a4
00527744  00 00 96 e5                                      ldr r0, [r6]
00527748  00 30 95 e5                                      ldr r3, [r5]
0052774c  00 00 50 e3                                      cmp r0, #0
00527750  dc 02 90 15                                      ldrne r0, [r0, #0x2dc]
00527754  00 00 53 e3                                      cmp r3, #0
00527758  03 00 00 0a                                      beq #0x52776c
0052775c  dc 12 93 e5                                      ldr r1, [r3, #0x2dc]
00527760  00 00 50 e3                                      cmp r0, #0
00527764  00 00 51 13                                      cmpne r1, #0
00527768  dc 00 00 1a                                      bne #0x527ae0
0052776c  18 10 95 e5                                      ldr r1, [r5, #0x18]
00527770  18 00 96 e5                                      ldr r0, [r6, #0x18]
00527774  0c 9b f7 eb                                      bl #0x30e3ac
00527778  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
0052777c  00 b0 a0 e1                                      mov fp, r0
00527780  1c 00 96 e5                                      ldr r0, [r6, #0x1c]
00527784  08 9b f7 eb                                      bl #0x30e3ac
00527788  20 10 95 e5                                      ldr r1, [r5, #0x20]
0052778c  00 90 a0 e1                                      mov sb, r0
00527790  20 00 96 e5                                      ldr r0, [r6, #0x20]
00527794  04 9b f7 eb                                      bl #0x30e3ac
00527798  0b 10 a0 e1                                      mov r1, fp
0052779c  50 00 8d e5                                      str r0, [sp, #0x50]
005277a0  0b 00 a0 e1                                      mov r0, fp
005277a4  48 b0 8d e5                                      str fp, [sp, #0x48]
005277a8  4c 90 8d e5                                      str sb, [sp, #0x4c]
005277ac  6e 9d f7 eb                                      bl #0x30ed6c
005277b0  09 10 a0 e1                                      mov r1, sb
005277b4  00 b0 a0 e1                                      mov fp, r0
005277b8  09 00 a0 e1                                      mov r0, sb
005277bc  6a 9d f7 eb                                      bl #0x30ed6c
005277c0  00 10 a0 e1                                      mov r1, r0
005277c4  0b 00 a0 e1                                      mov r0, fp
005277c8  f5 9c f7 eb                                      bl #0x30eba4
005277cc  08 10 95 e5                                      ldr r1, [r5, #8]
005277d0  38 20 96 e5                                      ldr r2, [r6, #0x38]
005277d4  08 b0 96 e5                                      ldr fp, [r6, #8]
005277d8  20 10 8d e5                                      str r1, [sp, #0x20]
005277dc  30 30 95 e5                                      ldr r3, [r5, #0x30]
005277e0  07 00 52 e1                                      cmp r2, r7
005277e4  00 90 a0 e1                                      mov sb, r0
005277e8  1c 30 8d e5                                      str r3, [sp, #0x1c]
005277ec  02 30 a0 11                                      movne r3, r2
005277f0  36 00 00 0a                                      beq #0x5278d0
005277f4  00 30 93 e5                                      ldr r3, [r3]
005277f8  03 00 57 e1                                      cmp r7, r3
005277fc  fc ff ff 1a                                      bne #0x5277f4
00527800  08 30 92 e5                                      ldr r3, [r2, #8]
00527804  03 00 a0 e1                                      mov r0, r3
00527808  00 30 93 e5                                      ldr r3, [r3]
0052780c  0f e0 a0 e1                                      mov lr, pc
00527810  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00527814  18 30 96 e5                                      ldr r3, [r6, #0x18]
00527818  00 20 a0 e1                                      mov r2, r0
0052781c  00 00 90 e5                                      ldr r0, [r0]
00527820  03 10 a0 e1                                      mov r1, r3
00527824  08 30 8d e5                                      str r3, [sp, #8]
00527828  0c 20 8d e5                                      str r2, [sp, #0xc]
0052782c  de 9a f7 eb                                      bl #0x30e3ac
00527830  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
00527834  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00527838  00 c0 a0 e1                                      mov ip, r0
0052783c  2c 10 8d e5                                      str r1, [sp, #0x2c]
00527840  04 00 92 e5                                      ldr r0, [r2, #4]
00527844  0c c0 8d e5                                      str ip, [sp, #0xc]
00527848  d7 9a f7 eb                                      bl #0x30e3ac
0052784c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00527850  00 20 a0 e1                                      mov r2, r0
00527854  0c 20 8d e5                                      str r2, [sp, #0xc]
00527858  0c 10 a0 e1                                      mov r1, ip
0052785c  0c 00 a0 e1                                      mov r0, ip
00527860  41 9d f7 eb                                      bl #0x30ed6c
00527864  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00527868  00 c0 a0 e1                                      mov ip, r0
0052786c  0c c0 8d e5                                      str ip, [sp, #0xc]
00527870  02 10 a0 e1                                      mov r1, r2
00527874  02 00 a0 e1                                      mov r0, r2
00527878  3b 9d f7 eb                                      bl #0x30ed6c
0052787c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00527880  00 10 a0 e1                                      mov r1, r0
00527884  0c 00 a0 e1                                      mov r0, ip
00527888  c5 9c f7 eb                                      bl #0x30eba4
0052788c  00 10 a0 e1                                      mov r1, r0
00527890  09 00 a0 e1                                      mov r0, sb
00527894  06 9b f7 eb                                      bl #0x30e4b4
00527898  00 00 50 e3                                      cmp r0, #0
0052789c  08 30 9d e5                                      ldr r3, [sp, #8]
005278a0  0d 00 00 0a                                      beq #0x5278dc
005278a4  04 40 84 e2                                      add r4, r4, #4
005278a8  04 00 58 e1                                      cmp r8, r4
005278ac  18 30 9d 05                                      ldreq r3, [sp, #0x18]
005278b0  04 40 b3 05                                      ldreq r4, [r3, #4]!
005278b4  18 30 8d 05                                      streq r3, [sp, #0x18]
005278b8  80 80 84 02                                      addeq r8, r4, #0x80
005278bc  04 00 5a e1                                      cmp sl, r4
005278c0  95 ff ff 1a                                      bne #0x52771c
005278c4  30 00 9d e5                                      ldr r0, [sp, #0x30]
005278c8  5c d0 8d e2                                      add sp, sp, #0x5c
005278cc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005278d0  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
005278d4  18 30 96 e5                                      ldr r3, [r6, #0x18]
005278d8  2c 10 8d e5                                      str r1, [sp, #0x2c]
005278dc  40 00 96 e5                                      ldr r0, [r6, #0x40]
005278e0  03 10 a0 e1                                      mov r1, r3
005278e4  b0 9a f7 eb                                      bl #0x30e3ac
005278e8  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
005278ec  00 30 a0 e1                                      mov r3, r0
005278f0  44 00 96 e5                                      ldr r0, [r6, #0x44]
005278f4  08 30 8d e5                                      str r3, [sp, #8]
005278f8  ab 9a f7 eb                                      bl #0x30e3ac
005278fc  08 30 9d e5                                      ldr r3, [sp, #8]
00527900  00 20 a0 e1                                      mov r2, r0
00527904  0c 20 8d e5                                      str r2, [sp, #0xc]
00527908  03 10 a0 e1                                      mov r1, r3
0052790c  03 00 a0 e1                                      mov r0, r3
00527910  15 9d f7 eb                                      bl #0x30ed6c
00527914  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00527918  00 30 a0 e1                                      mov r3, r0
0052791c  08 30 8d e5                                      str r3, [sp, #8]
00527920  02 10 a0 e1                                      mov r1, r2
00527924  02 00 a0 e1                                      mov r0, r2
00527928  0f 9d f7 eb                                      bl #0x30ed6c
0052792c  08 30 9d e5                                      ldr r3, [sp, #8]
00527930  00 10 a0 e1                                      mov r1, r0
00527934  03 00 a0 e1                                      mov r0, r3
00527938  99 9c f7 eb                                      bl #0x30eba4
0052793c  00 10 a0 e1                                      mov r1, r0
00527940  09 00 a0 e1                                      mov r0, sb
00527944  da 9a f7 eb                                      bl #0x30e4b4
00527948  00 00 50 e3                                      cmp r0, #0
0052794c  d4 ff ff 1a                                      bne #0x5278a4
00527950  0b 00 a0 e1                                      mov r0, fp
00527954  20 10 9d e5                                      ldr r1, [sp, #0x20]
00527958  91 9c f7 eb                                      bl #0x30eba4
0052795c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00527960  8f 9c f7 eb                                      bl #0x30eba4
00527964  00 10 a0 e1                                      mov r1, r0
00527968  ff 9c f7 eb                                      bl #0x30ed6c
0052796c  09 10 a0 e1                                      mov r1, sb
00527970  00 b0 a0 e1                                      mov fp, r0
00527974  5f 9a f7 eb                                      bl #0x30e2f8
00527978  00 00 50 e3                                      cmp r0, #0
0052797c  c8 ff ff 0a                                      beq #0x5278a4
00527980  0b 10 a0 e1                                      mov r1, fp
00527984  09 00 a0 e1                                      mov r0, sb
00527988  c1 9c f7 eb                                      bl #0x30ec94
0052798c  00 10 a0 e1                                      mov r1, r0
00527990  fe 05 a0 e3                                      mov r0, #0x3f800000
00527994  84 9a f7 eb                                      bl #0x30e3ac
00527998  00 20 a0 e3                                      mov r2, #0
0052799c  1c 00 8d e5                                      str r0, [sp, #0x1c]
005279a0  48 00 8d e2                                      add r0, sp, #0x48
005279a4  50 20 8d e5                                      str r2, [sp, #0x50]
005279a8  c0 95 f8 eb                                      bl #0x34d0b0
005279ac  34 10 95 e5                                      ldr r1, [r5, #0x34]
005279b0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005279b4  ec 9c f7 eb                                      bl #0x30ed6c
005279b8  48 10 9d e5                                      ldr r1, [sp, #0x48]
005279bc  00 b0 a0 e1                                      mov fp, r0
005279c0  e9 9c f7 eb                                      bl #0x30ed6c
005279c4  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
005279c8  00 90 a0 e1                                      mov sb, r0
005279cc  0b 00 a0 e1                                      mov r0, fp
005279d0  48 90 8d e5                                      str sb, [sp, #0x48]
005279d4  e4 9c f7 eb                                      bl #0x30ed6c
005279d8  50 10 9d e5                                      ldr r1, [sp, #0x50]
005279dc  00 30 a0 e1                                      mov r3, r0
005279e0  0b 00 a0 e1                                      mov r0, fp
005279e4  4c 30 8d e5                                      str r3, [sp, #0x4c]
005279e8  08 30 8d e5                                      str r3, [sp, #8]
005279ec  de 9c f7 eb                                      bl #0x30ed6c
005279f0  28 10 9d e5                                      ldr r1, [sp, #0x28]
005279f4  00 b0 a0 e1                                      mov fp, r0
005279f8  50 00 8d e5                                      str r0, [sp, #0x50]
005279fc  00 00 51 e3                                      cmp r1, #0
00527a00  08 30 9d e5                                      ldr r3, [sp, #8]
00527a04  0c 00 00 0a                                      beq #0x527a3c
00527a08  04 10 91 e9                                      ldmib r1, {r2, ip}
00527a0c  0c 00 52 e1                                      cmp r2, ip
00527a10  3e 00 00 0a                                      beq #0x527b10
00527a14  10 50 82 e5                                      str r5, [r2, #0x10]
00527a18  00 90 82 e5                                      str sb, [r2]
00527a1c  04 30 82 e5                                      str r3, [r2, #4]
00527a20  08 00 82 e5                                      str r0, [r2, #8]
00527a24  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00527a28  0c 30 82 e5                                      str r3, [r2, #0xc]
00527a2c  04 30 91 e5                                      ldr r3, [r1, #4]
00527a30  48 90 9d e5                                      ldr sb, [sp, #0x48]
00527a34  14 30 83 e2                                      add r3, r3, #0x14
00527a38  04 30 81 e5                                      str r3, [r1, #4]
00527a3c  14 30 9d e5                                      ldr r3, [sp, #0x14]
00527a40  09 10 a0 e1                                      mov r1, sb
00527a44  00 00 93 e5                                      ldr r0, [r3]
00527a48  55 9c f7 eb                                      bl #0x30eba4
00527a4c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00527a50  00 00 81 e5                                      str r0, [r1]
00527a54  14 20 9d e5                                      ldr r2, [sp, #0x14]
00527a58  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
00527a5c  04 00 92 e5                                      ldr r0, [r2, #4]
00527a60  4f 9c f7 eb                                      bl #0x30eba4
00527a64  14 30 9d e5                                      ldr r3, [sp, #0x14]
00527a68  04 00 83 e5                                      str r0, [r3, #4]
00527a6c  50 10 9d e5                                      ldr r1, [sp, #0x50]
00527a70  08 00 93 e5                                      ldr r0, [r3, #8]
00527a74  4a 9c f7 eb                                      bl #0x30eba4
00527a78  14 10 9d e5                                      ldr r1, [sp, #0x14]
00527a7c  08 00 81 e5                                      str r0, [r1, #8]
00527a80  30 20 9d e5                                      ldr r2, [sp, #0x30]
00527a84  01 20 82 e2                                      add r2, r2, #1
00527a88  30 20 8d e5                                      str r2, [sp, #0x30]
00527a8c  84 ff ff ea                                      b #0x5278a4
00527a90  10 20 9d e5                                      ldr r2, [sp, #0x10]
00527a94  24 10 9d e5                                      ldr r1, [sp, #0x24]
00527a98  01 30 92 e7                                      ldr r3, [r2, r1]
00527a9c  00 30 93 e5                                      ldr r3, [r3]
00527aa0  02 00 53 e3                                      cmp r3, #2
00527aa4  00 50 85 05                                      streq r5, [r5]
00527aa8  1e ff ff 0a                                      beq #0x527728
00527aac  01 00 53 e3                                      cmp r3, #1
00527ab0  1c ff ff 1a                                      bne #0x527728
00527ab4  10 10 9d e5                                      ldr r1, [sp, #0x10]
00527ab8  34 30 9d e5                                      ldr r3, [sp, #0x34]
00527abc  3c c0 a0 e3                                      mov ip, #0x3c
00527ac0  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
00527ac4  03 00 91 e7                                      ldr r0, [r1, r3]
00527ac8  38 10 9d e5                                      ldr r1, [sp, #0x38]
00527acc  40 30 9d e5                                      ldr r3, [sp, #0x40]
00527ad0  a8 00 80 e2                                      add r0, r0, #0xa8
00527ad4  00 c0 8d e5                                      str ip, [sp]
00527ad8  49 99 f7 eb                                      bl #0x30e004
00527adc  11 ff ff ea                                      b #0x527728
00527ae0  20 1b fd eb                                      bl #0x46e768
00527ae4  00 00 50 e3                                      cmp r0, #0
00527ae8  1f ff ff 1a                                      bne #0x52776c
00527aec  04 40 84 e2                                      add r4, r4, #4
00527af0  04 00 58 e1                                      cmp r8, r4
00527af4  18 30 9d 05                                      ldreq r3, [sp, #0x18]
00527af8  04 40 b3 05                                      ldreq r4, [r3, #4]!
00527afc  18 30 8d 05                                      streq r3, [sp, #0x18]
00527b00  80 80 84 02                                      addeq r8, r4, #0x80
00527b04  04 00 5a e1                                      cmp sl, r4
00527b08  03 ff ff 1a                                      bne #0x52771c
00527b0c  6c ff ff ea                                      b #0x5278c4
00527b10  28 10 9d e5                                      ldr r1, [sp, #0x28]
00527b14  cd 2c 0c e3                                      movw r2, #0xcccd
00527b18  cc 2c 4c e3                                      movt r2, #0xcccc
00527b1c  00 00 91 e5                                      ldr r0, [r1]
00527b20  0c 00 60 e0                                      rsb r0, r0, ip
00527b24  40 01 a0 e1                                      asr r0, r0, #2
00527b28  92 00 00 e0                                      mul r0, r2, r0
00527b2c  cc 2c 0c e3                                      movw r2, #0xcccc
00527b30  01 00 50 e3                                      cmp r0, #1
00527b34  00 10 80 20                                      addhs r1, r0, r0
00527b38  01 10 80 32                                      addlo r1, r0, #1
00527b3c  02 26 82 e1                                      orr r2, r2, r2, lsl #12
00527b40  02 00 51 e1                                      cmp r1, r2
00527b44  01 00 00 8a                                      bhi #0x527b50
00527b48  01 00 50 e1                                      cmp r0, r1
00527b4c  01 00 00 9a                                      bls #0x527b58
00527b50  cc 1c 0c e3                                      movw r1, #0xcccc
00527b54  01 16 81 e1                                      orr r1, r1, r1, lsl #12
00527b58  58 20 8d e2                                      add r2, sp, #0x58
00527b5c  04 10 22 e5                                      str r1, [r2, #-4]!
00527b60  44 00 9d e5                                      ldr r0, [sp, #0x44]
00527b64  08 30 8d e5                                      str r3, [sp, #8]
00527b68  0c c0 8d e5                                      str ip, [sp, #0xc]
00527b6c  47 fc ff eb                                      bl #0x526c90
00527b70  28 10 9d e5                                      ldr r1, [sp, #0x28]
00527b74  20 00 8d e5                                      str r0, [sp, #0x20]
00527b78  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00527b7c  00 20 91 e5                                      ldr r2, [r1]
00527b80  cd 0c 0c e3                                      movw r0, #0xcccd
00527b84  cc 0c 4c e3                                      movt r0, #0xcccc
00527b88  0c 10 62 e0                                      rsb r1, r2, ip
00527b8c  41 11 a0 e1                                      asr r1, r1, #2
00527b90  90 01 0c e0                                      mul ip, r0, r1
00527b94  08 30 9d e5                                      ldr r3, [sp, #8]
00527b98  00 00 5c e3                                      cmp ip, #0
00527b9c  20 20 9d d5                                      ldrle r2, [sp, #0x20]
00527ba0  12 00 00 da                                      ble #0x527bf0
00527ba4  20 10 9d e5                                      ldr r1, [sp, #0x20]
00527ba8  0c 00 a0 e1                                      mov r0, ip
00527bac  00 e0 92 e5                                      ldr lr, [r2]
00527bb0  01 00 50 e2                                      subs r0, r0, #1
00527bb4  00 e0 81 e5                                      str lr, [r1]
00527bb8  04 e0 92 e5                                      ldr lr, [r2, #4]
00527bbc  04 e0 81 e5                                      str lr, [r1, #4]
00527bc0  08 e0 92 e5                                      ldr lr, [r2, #8]
00527bc4  08 e0 81 e5                                      str lr, [r1, #8]
00527bc8  0c e0 92 e5                                      ldr lr, [r2, #0xc]
00527bcc  0c e0 81 e5                                      str lr, [r1, #0xc]
00527bd0  10 e0 92 e5                                      ldr lr, [r2, #0x10]
00527bd4  14 20 82 e2                                      add r2, r2, #0x14
00527bd8  10 e0 81 e5                                      str lr, [r1, #0x10]
00527bdc  14 10 81 e2                                      add r1, r1, #0x14
00527be0  f1 ff ff 1a                                      bne #0x527bac
00527be4  20 10 9d e5                                      ldr r1, [sp, #0x20]
00527be8  14 20 a0 e3                                      mov r2, #0x14
00527bec  92 1c 22 e0                                      mla r2, r2, ip, r1
00527bf0  00 90 82 e5                                      str sb, [r2]
00527bf4  04 30 82 e5                                      str r3, [r2, #4]
00527bf8  08 b0 82 e5                                      str fp, [r2, #8]
00527bfc  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00527c00  10 50 82 e5                                      str r5, [r2, #0x10]
00527c04  14 50 82 e2                                      add r5, r2, #0x14
00527c08  0c 30 82 e5                                      str r3, [r2, #0xc]
00527c0c  28 10 9d e5                                      ldr r1, [sp, #0x28]
00527c10  09 00 91 e8                                      ldm r1, {r0, r3}
00527c14  00 00 53 e1                                      cmp r3, r0
00527c18  0a 00 00 0a                                      beq #0x527c48
00527c1c  14 10 43 e2                                      sub r1, r3, #0x14
00527c20  01 10 60 e0                                      rsb r1, r0, r1
00527c24  cd 2c 0c e3                                      movw r2, #0xcccd
00527c28  21 11 a0 e1                                      lsr r1, r1, #2
00527c2c  cc 2c 40 e3                                      movt r2, #0xccc
00527c30  92 01 02 e0                                      mul r2, r2, r1
00527c34  13 10 e0 e3                                      mvn r1, #0x13
00527c38  03 21 c2 e3                                      bic r2, r2, #0xc0000000
00527c3c  91 02 02 e0                                      mul r2, r1, r2
00527c40  01 20 82 e0                                      add r2, r2, r1
00527c44  02 30 83 e0                                      add r3, r3, r2
00527c48  28 10 9d e5                                      ldr r1, [sp, #0x28]
00527c4c  00 00 53 e3                                      cmp r3, #0
00527c50  08 20 91 e5                                      ldr r2, [r1, #8]
00527c54  09 00 00 0a                                      beq #0x527c80
00527c58  02 30 63 e0                                      rsb r3, r3, r2
00527c5c  cd 2c 0c e3                                      movw r2, #0xcccd
00527c60  43 31 a0 e1                                      asr r3, r3, #2
00527c64  cc 2c 4c e3                                      movt r2, #0xcccc
00527c68  92 03 02 e0                                      mul r2, r2, r3
00527c6c  14 10 a0 e3                                      mov r1, #0x14
00527c70  91 02 01 e0                                      mul r1, r1, r2
00527c74  80 00 51 e3                                      cmp r1, #0x80
00527c78  09 00 00 8a                                      bhi #0x527ca4
00527c7c  9f 84 07 eb                                      bl #0x708f00
00527c80  54 30 9d e5                                      ldr r3, [sp, #0x54]
00527c84  20 10 9d e5                                      ldr r1, [sp, #0x20]
00527c88  14 20 a0 e3                                      mov r2, #0x14
00527c8c  48 90 9d e5                                      ldr sb, [sp, #0x48]
00527c90  92 13 23 e0                                      mla r3, r2, r3, r1
00527c94  28 20 9d e5                                      ldr r2, [sp, #0x28]
00527c98  22 00 82 e8                                      stm r2, {r1, r5}
00527c9c  08 30 82 e5                                      str r3, [r2, #8]
00527ca0  65 ff ff ea                                      b #0x527a3c
00527ca4  e5 a1 f7 eb                                      bl #0x310440
00527ca8  f4 ff ff ea                                      b #0x527c80
; mapping-symbol data/literal pool
00527cac  00 d4 46 00 c0 39 00 00 c0 19 00 00 ec 6c 39 00  .byte 0x00, 0xd4, 0x46, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xec, 0x6c, 0x39, 0x00
00527cbc  14 8b 39 00 c0 53 3b 00                          .byte 0x14, 0x8b, 0x39, 0x00, 0xc0, 0x53, 0x3b, 0x00

; FUNCTION 0x00527cc4, declared_size=1004, range_size=1004, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld14AvoidObstaclesERK8PFObjectR7Point3DIfE
; demangled: PFWorld::AvoidObstacles(PFObject const&, Point3D<float>&)
; decoder-mode: arm
00527cc4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00527cc8  10 c0 91 e5                                      ldr ip, [r1, #0x10]
00527ccc  d4 43 9f e5                                      ldr r4, [pc, #0x3d4]
00527cd0  44 d0 4d e2                                      sub sp, sp, #0x44
00527cd4  00 00 5c e3                                      cmp ip, #0
00527cd8  02 50 a0 e1                                      mov r5, r2
00527cdc  04 40 8f e0                                      add r4, pc, r4
00527ce0  2f 00 00 0a                                      beq #0x527da4
00527ce4  04 30 91 e5                                      ldr r3, [r1, #4]
00527ce8  01 c0 13 e2                                      ands ip, r3, #1
00527cec  2c 00 00 1a                                      bne #0x527da4
00527cf0  02 00 13 e3                                      tst r3, #2
00527cf4  2a 00 00 0a                                      beq #0x527da4
00527cf8  28 70 8d e2                                      add r7, sp, #0x28
00527cfc  00 60 a0 e3                                      mov r6, #0
00527d00  34 20 8d e2                                      add r2, sp, #0x34
00527d04  07 30 a0 e1                                      mov r3, r7
00527d08  30 c0 8d e5                                      str ip, [sp, #0x30]
00527d0c  34 60 8d e5                                      str r6, [sp, #0x34]
00527d10  38 60 8d e5                                      str r6, [sp, #0x38]
00527d14  3c 60 8d e5                                      str r6, [sp, #0x3c]
00527d18  28 c0 8d e5                                      str ip, [sp, #0x28]
00527d1c  2c c0 8d e5                                      str ip, [sp, #0x2c]
00527d20  4e fe ff eb                                      bl #0x527660
00527d24  00 00 50 e3                                      cmp r0, #0
00527d28  0c 00 8d e5                                      str r0, [sp, #0xc]
00527d2c  1c 60 8d e5                                      str r6, [sp, #0x1c]
00527d30  20 60 8d e5                                      str r6, [sp, #0x20]
00527d34  24 60 8d e5                                      str r6, [sp, #0x24]
00527d38  17 00 00 0a                                      beq #0x527d9c
00527d3c  00 a0 95 e5                                      ldr sl, [r5]
00527d40  34 10 9d e5                                      ldr r1, [sp, #0x34]
00527d44  04 80 95 e5                                      ldr r8, [r5, #4]
00527d48  0a 00 a0 e1                                      mov r0, sl
00527d4c  06 9c f7 eb                                      bl #0x30ed6c
00527d50  38 10 9d e5                                      ldr r1, [sp, #0x38]
00527d54  00 90 a0 e1                                      mov sb, r0
00527d58  08 00 a0 e1                                      mov r0, r8
00527d5c  02 9c f7 eb                                      bl #0x30ed6c
00527d60  00 10 a0 e1                                      mov r1, r0
00527d64  09 00 a0 e1                                      mov r0, sb
00527d68  8d 9b f7 eb                                      bl #0x30eba4
00527d6c  08 90 95 e5                                      ldr sb, [r5, #8]
00527d70  00 b0 a0 e1                                      mov fp, r0
00527d74  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
00527d78  09 00 a0 e1                                      mov r0, sb
00527d7c  fa 9b f7 eb                                      bl #0x30ed6c
00527d80  00 10 a0 e1                                      mov r1, r0
00527d84  0b 00 a0 e1                                      mov r0, fp
00527d88  85 9b f7 eb                                      bl #0x30eba4
00527d8c  06 10 a0 e1                                      mov r1, r6
00527d90  5d 9a f7 eb                                      bl #0x30e70c
00527d94  00 00 50 e3                                      cmp r0, #0
00527d98  03 00 00 1a                                      bne #0x527dac
00527d9c  07 00 a0 e1                                      mov r0, r7
00527da0  b3 f3 ff eb                                      bl #0x524c74
00527da4  44 d0 8d e2                                      add sp, sp, #0x44
00527da8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00527dac  f8 32 9f e5                                      ldr r3, [pc, #0x2f8]
00527db0  08 00 a0 e1                                      mov r0, r8
00527db4  03 30 94 e7                                      ldr r3, [r4, r3]
00527db8  08 b0 93 e5                                      ldr fp, [r3, #8]
00527dbc  04 60 93 e5                                      ldr r6, [r3, #4]
00527dc0  00 40 93 e5                                      ldr r4, [r3]
00527dc4  0b 10 a0 e1                                      mov r1, fp
00527dc8  e7 9b f7 eb                                      bl #0x30ed6c
00527dcc  06 10 a0 e1                                      mov r1, r6
00527dd0  00 30 a0 e1                                      mov r3, r0
00527dd4  09 00 a0 e1                                      mov r0, sb
00527dd8  04 30 8d e5                                      str r3, [sp, #4]
00527ddc  e2 9b f7 eb                                      bl #0x30ed6c
00527de0  04 30 9d e5                                      ldr r3, [sp, #4]
00527de4  00 10 a0 e1                                      mov r1, r0
00527de8  03 00 a0 e1                                      mov r0, r3
00527dec  6e 99 f7 eb                                      bl #0x30e3ac
00527df0  04 10 a0 e1                                      mov r1, r4
00527df4  10 00 8d e5                                      str r0, [sp, #0x10]
00527df8  09 00 a0 e1                                      mov r0, sb
00527dfc  da 9b f7 eb                                      bl #0x30ed6c
00527e00  0b 10 a0 e1                                      mov r1, fp
00527e04  00 90 a0 e1                                      mov sb, r0
00527e08  0a 00 a0 e1                                      mov r0, sl
00527e0c  d6 9b f7 eb                                      bl #0x30ed6c
00527e10  00 10 a0 e1                                      mov r1, r0
00527e14  09 00 a0 e1                                      mov r0, sb
00527e18  63 99 f7 eb                                      bl #0x30e3ac
00527e1c  06 10 a0 e1                                      mov r1, r6
00527e20  14 00 8d e5                                      str r0, [sp, #0x14]
00527e24  0a 00 a0 e1                                      mov r0, sl
00527e28  cf 9b f7 eb                                      bl #0x30ed6c
00527e2c  04 10 a0 e1                                      mov r1, r4
00527e30  00 60 a0 e1                                      mov r6, r0
00527e34  08 00 a0 e1                                      mov r0, r8
00527e38  cb 9b f7 eb                                      bl #0x30ed6c
00527e3c  00 10 a0 e1                                      mov r1, r0
00527e40  06 00 a0 e1                                      mov r0, r6
00527e44  58 99 f7 eb                                      bl #0x30e3ac
00527e48  18 00 8d e5                                      str r0, [sp, #0x18]
00527e4c  10 00 8d e2                                      add r0, sp, #0x10
00527e50  96 94 f8 eb                                      bl #0x34d0b0
00527e54  34 90 9d e5                                      ldr sb, [sp, #0x34]
00527e58  00 80 90 e5                                      ldr r8, [r0]
00527e5c  00 30 a0 e1                                      mov r3, r0
00527e60  04 60 90 e5                                      ldr r6, [r0, #4]
00527e64  09 10 a0 e1                                      mov r1, sb
00527e68  08 00 a0 e1                                      mov r0, r8
00527e6c  08 40 93 e5                                      ldr r4, [r3, #8]
00527e70  bd 9b f7 eb                                      bl #0x30ed6c
00527e74  38 a0 9d e5                                      ldr sl, [sp, #0x38]
00527e78  00 b0 a0 e1                                      mov fp, r0
00527e7c  06 00 a0 e1                                      mov r0, r6
00527e80  0a 10 a0 e1                                      mov r1, sl
00527e84  b8 9b f7 eb                                      bl #0x30ed6c
00527e88  00 10 a0 e1                                      mov r1, r0
00527e8c  0b 00 a0 e1                                      mov r0, fp
00527e90  43 9b f7 eb                                      bl #0x30eba4
00527e94  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
00527e98  00 b0 a0 e1                                      mov fp, r0
00527e9c  04 00 a0 e1                                      mov r0, r4
00527ea0  b1 9b f7 eb                                      bl #0x30ed6c
00527ea4  00 10 a0 e1                                      mov r1, r0
00527ea8  0b 00 a0 e1                                      mov r0, fp
00527eac  3c 9b f7 eb                                      bl #0x30eba4
00527eb0  09 10 a0 e1                                      mov r1, sb
00527eb4  00 b0 a0 e1                                      mov fp, r0
00527eb8  09 00 a0 e1                                      mov r0, sb
00527ebc  aa 9b f7 eb                                      bl #0x30ed6c
00527ec0  0a 10 a0 e1                                      mov r1, sl
00527ec4  00 90 a0 e1                                      mov sb, r0
00527ec8  0a 00 a0 e1                                      mov r0, sl
00527ecc  a6 9b f7 eb                                      bl #0x30ed6c
00527ed0  00 10 a0 e1                                      mov r1, r0
00527ed4  09 00 a0 e1                                      mov r0, sb
00527ed8  31 9b f7 eb                                      bl #0x30eba4
00527edc  00 a0 a0 e1                                      mov sl, r0
00527ee0  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00527ee4  00 10 a0 e1                                      mov r1, r0
00527ee8  9f 9b f7 eb                                      bl #0x30ed6c
00527eec  00 10 a0 e1                                      mov r1, r0
00527ef0  0a 00 a0 e1                                      mov r0, sl
00527ef4  2a 9b f7 eb                                      bl #0x30eba4
00527ef8  89 98 f7 eb                                      bl #0x30e124
00527efc  00 a0 a0 e1                                      mov sl, r0
00527f00  00 00 95 e5                                      ldr r0, [r5]
00527f04  00 10 a0 e1                                      mov r1, r0
00527f08  97 9b f7 eb                                      bl #0x30ed6c
00527f0c  00 90 a0 e1                                      mov sb, r0
00527f10  04 00 95 e5                                      ldr r0, [r5, #4]
00527f14  00 10 a0 e1                                      mov r1, r0
00527f18  93 9b f7 eb                                      bl #0x30ed6c
00527f1c  00 10 a0 e1                                      mov r1, r0
00527f20  09 00 a0 e1                                      mov r0, sb
00527f24  1e 9b f7 eb                                      bl #0x30eba4
00527f28  00 90 a0 e1                                      mov sb, r0
00527f2c  08 00 95 e5                                      ldr r0, [r5, #8]
00527f30  00 10 a0 e1                                      mov r1, r0
00527f34  8c 9b f7 eb                                      bl #0x30ed6c
00527f38  00 10 a0 e1                                      mov r1, r0
00527f3c  09 00 a0 e1                                      mov r0, sb
00527f40  17 9b f7 eb                                      bl #0x30eba4
00527f44  76 98 f7 eb                                      bl #0x30e124
00527f48  02 91 cb e3                                      bic sb, fp, #0x80000000
00527f4c  17 17 0b e3                                      movw r1, #0xb717
00527f50  08 00 8d e5                                      str r0, [sp, #8]
00527f54  d1 18 43 e3                                      movt r1, #0x38d1
00527f58  09 00 a0 e1                                      mov r0, sb
00527f5c  ea 99 f7 eb                                      bl #0x30e70c
00527f60  00 00 50 e3                                      cmp r0, #0
00527f64  0f 00 00 1a                                      bne #0x527fa8
00527f68  09 10 a0 e1                                      mov r1, sb
00527f6c  0b 00 a0 e1                                      mov r0, fp
00527f70  47 9b f7 eb                                      bl #0x30ec94
00527f74  00 90 a0 e1                                      mov sb, r0
00527f78  09 10 a0 e1                                      mov r1, sb
00527f7c  08 00 a0 e1                                      mov r0, r8
00527f80  79 9b f7 eb                                      bl #0x30ed6c
00527f84  09 10 a0 e1                                      mov r1, sb
00527f88  00 80 a0 e1                                      mov r8, r0
00527f8c  06 00 a0 e1                                      mov r0, r6
00527f90  75 9b f7 eb                                      bl #0x30ed6c
00527f94  09 10 a0 e1                                      mov r1, sb
00527f98  00 60 a0 e1                                      mov r6, r0
00527f9c  04 00 a0 e1                                      mov r0, r4
00527fa0  71 9b f7 eb                                      bl #0x30ed6c
00527fa4  00 40 a0 e1                                      mov r4, r0
00527fa8  08 10 a0 e1                                      mov r1, r8
00527fac  0a 00 a0 e1                                      mov r0, sl
00527fb0  6d 9b f7 eb                                      bl #0x30ed6c
00527fb4  00 10 95 e5                                      ldr r1, [r5]
00527fb8  f9 9a f7 eb                                      bl #0x30eba4
00527fbc  06 10 a0 e1                                      mov r1, r6
00527fc0  00 90 a0 e1                                      mov sb, r0
00527fc4  0a 00 a0 e1                                      mov r0, sl
00527fc8  67 9b f7 eb                                      bl #0x30ed6c
00527fcc  04 10 95 e5                                      ldr r1, [r5, #4]
00527fd0  f3 9a f7 eb                                      bl #0x30eba4
00527fd4  04 10 a0 e1                                      mov r1, r4
00527fd8  00 b0 a0 e1                                      mov fp, r0
00527fdc  0a 00 a0 e1                                      mov r0, sl
00527fe0  61 9b f7 eb                                      bl #0x30ed6c
00527fe4  08 10 95 e5                                      ldr r1, [r5, #8]
00527fe8  ed 9a f7 eb                                      bl #0x30eba4
00527fec  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00527ff0  20 b0 8d e5                                      str fp, [sp, #0x20]
00527ff4  24 00 8d e5                                      str r0, [sp, #0x24]
00527ff8  01 00 53 e3                                      cmp r3, #1
00527ffc  1c 90 8d e5                                      str sb, [sp, #0x1c]
00528000  22 00 00 9a                                      bls #0x528090
00528004  05 10 a0 e1                                      mov r1, r5
00528008  1c 00 8d e2                                      add r0, sp, #0x1c
0052800c  11 ac f7 eb                                      bl #0x313058
00528010  c2 18 0b e3                                      movw r1, #0xb8c2
00528014  b2 1d 43 e3                                      movt r1, #0x3db2
00528018  25 99 f7 eb                                      bl #0x30e4b4
0052801c  00 00 50 e3                                      cmp r0, #0
00528020  1c 90 9d 05                                      ldreq sb, [sp, #0x1c]
00528024  19 00 00 0a                                      beq #0x528090
00528028  41 1d 02 e3                                      movw r1, #0x2d41
0052802c  08 00 9d e5                                      ldr r0, [sp, #8]
00528030  b3 1d 43 e3                                      movt r1, #0x3db3
00528034  4c 9b f7 eb                                      bl #0x30ed6c
00528038  08 10 a0 e1                                      mov r1, r8
0052803c  00 a0 a0 e1                                      mov sl, r0
00528040  49 9b f7 eb                                      bl #0x30ed6c
00528044  00 10 a0 e1                                      mov r1, r0
00528048  00 00 95 e5                                      ldr r0, [r5]
0052804c  d4 9a f7 eb                                      bl #0x30eba4
00528050  06 10 a0 e1                                      mov r1, r6
00528054  00 00 85 e5                                      str r0, [r5]
00528058  0a 00 a0 e1                                      mov r0, sl
0052805c  42 9b f7 eb                                      bl #0x30ed6c
00528060  00 10 a0 e1                                      mov r1, r0
00528064  04 00 95 e5                                      ldr r0, [r5, #4]
00528068  cd 9a f7 eb                                      bl #0x30eba4
0052806c  04 10 a0 e1                                      mov r1, r4
00528070  04 00 85 e5                                      str r0, [r5, #4]
00528074  0a 00 a0 e1                                      mov r0, sl
00528078  3b 9b f7 eb                                      bl #0x30ed6c
0052807c  00 10 a0 e1                                      mov r1, r0
00528080  08 00 95 e5                                      ldr r0, [r5, #8]
00528084  c6 9a f7 eb                                      bl #0x30eba4
00528088  08 00 85 e5                                      str r0, [r5, #8]
0052808c  42 ff ff ea                                      b #0x527d9c
00528090  20 20 9d e5                                      ldr r2, [sp, #0x20]
00528094  24 30 9d e5                                      ldr r3, [sp, #0x24]
00528098  00 90 85 e5                                      str sb, [r5]
0052809c  04 20 85 e5                                      str r2, [r5, #4]
005280a0  08 30 85 e5                                      str r3, [r5, #8]
005280a4  3c ff ff ea                                      b #0x527d9c
; mapping-symbol data/literal pool
005280a8  b4 cd 46 00 40 43 00 00                          .byte 0xb4, 0xcd, 0x46, 0x00, 0x40, 0x43, 0x00, 0x00

; FUNCTION 0x00528234, declared_size=592, range_size=592, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld12InitObstacleER8PFObjectbff
; demangled: PFWorld::InitObstacle(PFObject&, bool, float, float)
; decoder-mode: arm
00528234  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00528238  00 70 a0 e1                                      mov r7, r0
0052823c  74 d0 4d e2                                      sub sp, sp, #0x74
00528240  03 00 a0 e1                                      mov r0, r3
00528244  01 40 a0 e1                                      mov r4, r1
00528248  00 10 a0 e3                                      mov r1, #0
0052824c  03 50 a0 e1                                      mov r5, r3
00528250  02 60 a0 e1                                      mov r6, r2
00528254  96 98 f7 eb                                      bl #0x30e4b4
00528258  0c 32 9f e5                                      ldr r3, [pc, #0x20c]
0052825c  00 00 50 e3                                      cmp r0, #0
00528260  98 80 9d e5                                      ldr r8, [sp, #0x98]
00528264  03 30 8f e0                                      add r3, pc, r3
00528268  08 00 00 1a                                      bne #0x528290
0052826c  fc 21 9f e5                                      ldr r2, [pc, #0x1fc]
00528270  02 20 93 e7                                      ldr r2, [r3, r2]
00528274  00 20 92 e5                                      ldr r2, [r2]
00528278  02 00 52 e3                                      cmp r2, #2
0052827c  00 30 a0 03                                      moveq r3, #0
00528280  00 30 83 05                                      streq r3, [r3]
00528284  01 00 00 0a                                      beq #0x528290
00528288  01 00 52 e3                                      cmp r2, #1
0052828c  56 00 00 0a                                      beq #0x5283ec
00528290  00 00 56 e3                                      cmp r6, #0
00528294  04 00 00 0a                                      beq #0x5282ac
00528298  08 00 a0 e1                                      mov r0, r8
0052829c  00 10 a0 e3                                      mov r1, #0
005282a0  39 97 f7 eb                                      bl #0x30df8c
005282a4  00 00 50 e3                                      cmp r0, #0
005282a8  09 00 00 0a                                      beq #0x5282d4
005282ac  04 30 94 e5                                      ldr r3, [r4, #4]
005282b0  04 00 13 e3                                      tst r3, #4
005282b4  20 00 00 1a                                      bne #0x52833c
005282b8  00 20 a0 e3                                      mov r2, #0
005282bc  04 30 c3 e3                                      bic r3, r3, #4
005282c0  04 30 84 e5                                      str r3, [r4, #4]
005282c4  34 20 84 e5                                      str r2, [r4, #0x34]
005282c8  30 20 84 e5                                      str r2, [r4, #0x30]
005282cc  74 d0 8d e2                                      add sp, sp, #0x74
005282d0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005282d4  04 30 94 e5                                      ldr r3, [r4, #4]
005282d8  04 00 13 e3                                      tst r3, #4
005282dc  11 00 00 1a                                      bne #0x528328
005282e0  10 20 94 e5                                      ldr r2, [r4, #0x10]
005282e4  00 00 52 e3                                      cmp r2, #0
005282e8  10 60 84 12                                      addne r6, r4, #0x10
005282ec  4b 00 00 0a                                      beq #0x528420
005282f0  06 10 a0 e1                                      mov r1, r6
005282f4  2c 00 87 e2                                      add r0, r7, #0x2c
005282f8  98 fc ff eb                                      bl #0x527560
005282fc  64 40 8d e5                                      str r4, [sp, #0x64]
00528300  18 10 90 e5                                      ldr r1, [r0, #0x18]
00528304  10 20 90 e5                                      ldr r2, [r0, #0x10]
00528308  04 10 41 e2                                      sub r1, r1, #4
0052830c  01 00 52 e1                                      cmp r2, r1
00528310  51 00 00 0a                                      beq #0x52845c
00528314  00 40 82 e5                                      str r4, [r2]
00528318  10 20 90 e5                                      ldr r2, [r0, #0x10]
0052831c  04 20 82 e2                                      add r2, r2, #4
00528320  10 20 80 e5                                      str r2, [r0, #0x10]
00528324  04 30 94 e5                                      ldr r3, [r4, #4]
00528328  04 30 83 e3                                      orr r3, r3, #4
0052832c  04 30 84 e5                                      str r3, [r4, #4]
00528330  30 50 84 e5                                      str r5, [r4, #0x30]
00528334  34 80 84 e5                                      str r8, [r4, #0x34]
00528338  e3 ff ff ea                                      b #0x5282cc
0052833c  2c 00 87 e2                                      add r0, r7, #0x2c
00528340  10 10 84 e2                                      add r1, r4, #0x10
00528344  85 fc ff eb                                      bl #0x527560
00528348  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
0052834c  c0 08 90 e9                                      ldmib r0, {r6, r7, fp}
00528350  00 e0 90 e5                                      ldr lr, [r0]
00528354  18 80 90 e5                                      ldr r8, [r0, #0x18]
00528358  14 a0 90 e5                                      ldr sl, [r0, #0x14]
0052835c  10 90 90 e5                                      ldr sb, [r0, #0x10]
00528360  00 50 a0 e1                                      mov r5, r0
00528364  60 30 8d e2                                      add r3, sp, #0x60
00528368  4c c0 8d e5                                      str ip, [sp, #0x4c]
0052836c  50 00 8d e2                                      add r0, sp, #0x50
00528370  6c c0 8d e2                                      add ip, sp, #0x6c
00528374  30 10 8d e2                                      add r1, sp, #0x30
00528378  40 20 8d e2                                      add r2, sp, #0x40
0052837c  00 c0 8d e5                                      str ip, [sp]
00528380  3c b0 8d e5                                      str fp, [sp, #0x3c]
00528384  38 70 8d e5                                      str r7, [sp, #0x38]
00528388  34 60 8d e5                                      str r6, [sp, #0x34]
0052838c  30 e0 8d e5                                      str lr, [sp, #0x30]
00528390  48 80 8d e5                                      str r8, [sp, #0x48]
00528394  44 a0 8d e5                                      str sl, [sp, #0x44]
00528398  40 90 8d e5                                      str sb, [sp, #0x40]
0052839c  60 40 8d e5                                      str r4, [sp, #0x60]
005283a0  27 f7 ff eb                                      bl #0x526044
005283a4  50 c0 9d e5                                      ldr ip, [sp, #0x50]
005283a8  10 30 95 e5                                      ldr r3, [r5, #0x10]
005283ac  0c 00 53 e1                                      cmp r3, ip
005283b0  0b 00 00 0a                                      beq #0x5283e4
005283b4  5c e0 9d e5                                      ldr lr, [sp, #0x5c]
005283b8  05 10 a0 e1                                      mov r1, r5
005283bc  20 00 8d e2                                      add r0, sp, #0x20
005283c0  1c e0 8d e5                                      str lr, [sp, #0x1c]
005283c4  58 e0 9d e5                                      ldr lr, [sp, #0x58]
005283c8  10 20 8d e2                                      add r2, sp, #0x10
005283cc  68 30 8d e2                                      add r3, sp, #0x68
005283d0  18 e0 8d e5                                      str lr, [sp, #0x18]
005283d4  54 e0 9d e5                                      ldr lr, [sp, #0x54]
005283d8  10 c0 8d e5                                      str ip, [sp, #0x10]
005283dc  14 e0 8d e5                                      str lr, [sp, #0x14]
005283e0  2d f9 ff eb                                      bl #0x52689c
005283e4  04 30 94 e5                                      ldr r3, [r4, #4]
005283e8  b2 ff ff ea                                      b #0x5282b8
005283ec  80 00 9f e5                                      ldr r0, [pc, #0x80]
005283f0  80 10 9f e5                                      ldr r1, [pc, #0x80]
005283f4  80 20 9f e5                                      ldr r2, [pc, #0x80]
005283f8  00 00 93 e7                                      ldr r0, [r3, r0]
005283fc  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00528400  9c c0 a0 e3                                      mov ip, #0x9c
00528404  01 10 8f e0                                      add r1, pc, r1
00528408  02 20 8f e0                                      add r2, pc, r2
0052840c  03 30 8f e0                                      add r3, pc, r3
00528410  a8 00 80 e2                                      add r0, r0, #0xa8
00528414  00 c0 8d e5                                      str ip, [sp]
00528418  f9 96 f7 eb                                      bl #0x30e004
0052841c  9b ff ff ea                                      b #0x528290
00528420  01 00 13 e3                                      tst r3, #1
00528424  0c c0 84 e2                                      add ip, r4, #0xc
00528428  20 20 84 02                                      addeq r2, r4, #0x20
0052842c  24 30 84 e2                                      add r3, r4, #0x24
00528430  00 c0 8d e5                                      str ip, [sp]
00528434  18 10 84 e2                                      add r1, r4, #0x18
00528438  00 c0 a0 e3                                      mov ip, #0
0052843c  10 60 84 e2                                      add r6, r4, #0x10
00528440  07 00 a0 e1                                      mov r0, r7
00528444  40 10 8d e9                                      stmib sp, {r6, ip}
00528448  2e f4 ff eb                                      bl #0x525508
0052844c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00528450  00 00 53 e3                                      cmp r3, #0
00528454  9c ff ff 0a                                      beq #0x5282cc
00528458  a4 ff ff ea                                      b #0x5282f0
0052845c  64 10 8d e2                                      add r1, sp, #0x64
00528460  12 ff ff eb                                      bl #0x5280b0
00528464  04 30 94 e5                                      ldr r3, [r4, #4]
00528468  ae ff ff ea                                      b #0x528328
; mapping-symbol data/literal pool
0052846c  2c c8 46 00 c0 39 00 00 c0 19 00 00 d4 5f 39 00  .byte 0x2c, 0xc8, 0x46, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xd4, 0x5f, 0x39, 0x00
0052847c  10 47 3b 00 bc 46 3b 00                          .byte 0x10, 0x47, 0x3b, 0x00, 0xbc, 0x46, 0x3b, 0x00

; FUNCTION 0x00528484, declared_size=300, range_size=300, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld25_ChangeObstacleParentListERK8PFObjectP7PFFloor
; demangled: PFWorld::_ChangeObstacleParentList(PFObject const&, PFFloor*)
; decoder-mode: arm
00528484  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00528488  04 30 91 e5                                      ldr r3, [r1, #4]
0052848c  7c d0 4d e2                                      sub sp, sp, #0x7c
00528490  01 50 a0 e1                                      mov r5, r1
00528494  04 00 13 e3                                      tst r3, #4
00528498  14 20 8d e5                                      str r2, [sp, #0x14]
0052849c  3e 00 00 0a                                      beq #0x52859c
005284a0  10 30 91 e5                                      ldr r3, [r1, #0x10]
005284a4  02 00 53 e1                                      cmp r3, r2
005284a8  3b 00 00 0a                                      beq #0x52859c
005284ac  2c 60 80 e2                                      add r6, r0, #0x2c
005284b0  10 10 81 e2                                      add r1, r1, #0x10
005284b4  06 00 a0 e1                                      mov r0, r6
005284b8  28 fc ff eb                                      bl #0x527560
005284bc  00 30 90 e5                                      ldr r3, [r0]
005284c0  08 70 90 e5                                      ldr r7, [r0, #8]
005284c4  04 e0 90 e5                                      ldr lr, [r0, #4]
005284c8  00 40 a0 e1                                      mov r4, r0
005284cc  0c 30 8d e5                                      str r3, [sp, #0xc]
005284d0  0c c0 94 e5                                      ldr ip, [r4, #0xc]
005284d4  1c 80 90 e5                                      ldr r8, [r0, #0x1c]
005284d8  18 a0 90 e5                                      ldr sl, [r0, #0x18]
005284dc  14 90 90 e5                                      ldr sb, [r0, #0x14]
005284e0  10 b0 90 e5                                      ldr fp, [r0, #0x10]
005284e4  44 c0 8d e5                                      str ip, [sp, #0x44]
005284e8  0c c0 9d e5                                      ldr ip, [sp, #0xc]
005284ec  6c 30 8d e2                                      add r3, sp, #0x6c
005284f0  58 00 8d e2                                      add r0, sp, #0x58
005284f4  38 c0 8d e5                                      str ip, [sp, #0x38]
005284f8  38 10 8d e2                                      add r1, sp, #0x38
005284fc  74 c0 8d e2                                      add ip, sp, #0x74
00528500  48 20 8d e2                                      add r2, sp, #0x48
00528504  00 c0 8d e5                                      str ip, [sp]
00528508  40 70 8d e5                                      str r7, [sp, #0x40]
0052850c  3c e0 8d e5                                      str lr, [sp, #0x3c]
00528510  54 80 8d e5                                      str r8, [sp, #0x54]
00528514  50 a0 8d e5                                      str sl, [sp, #0x50]
00528518  4c 90 8d e5                                      str sb, [sp, #0x4c]
0052851c  48 b0 8d e5                                      str fp, [sp, #0x48]
00528520  6c 50 8d e5                                      str r5, [sp, #0x6c]
00528524  66 f7 ff eb                                      bl #0x5262c4
00528528  58 c0 9d e5                                      ldr ip, [sp, #0x58]
0052852c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00528530  0c 00 53 e1                                      cmp r3, ip
00528534  18 00 00 0a                                      beq #0x52859c
00528538  64 e0 9d e5                                      ldr lr, [sp, #0x64]
0052853c  18 20 8d e2                                      add r2, sp, #0x18
00528540  04 10 a0 e1                                      mov r1, r4
00528544  24 e0 8d e5                                      str lr, [sp, #0x24]
00528548  60 e0 9d e5                                      ldr lr, [sp, #0x60]
0052854c  70 30 8d e2                                      add r3, sp, #0x70
00528550  28 00 8d e2                                      add r0, sp, #0x28
00528554  20 e0 8d e5                                      str lr, [sp, #0x20]
00528558  5c e0 9d e5                                      ldr lr, [sp, #0x5c]
0052855c  18 c0 8d e5                                      str ip, [sp, #0x18]
00528560  1c e0 8d e5                                      str lr, [sp, #0x1c]
00528564  cc f8 ff eb                                      bl #0x52689c
00528568  14 10 8d e2                                      add r1, sp, #0x14
0052856c  06 00 a0 e1                                      mov r0, r6
00528570  fa fb ff eb                                      bl #0x527560
00528574  68 50 8d e5                                      str r5, [sp, #0x68]
00528578  18 10 90 e5                                      ldr r1, [r0, #0x18]
0052857c  10 20 90 e5                                      ldr r2, [r0, #0x10]
00528580  04 10 41 e2                                      sub r1, r1, #4
00528584  01 00 52 e1                                      cmp r2, r1
00528588  05 00 00 0a                                      beq #0x5285a4
0052858c  00 50 82 e5                                      str r5, [r2]
00528590  10 20 90 e5                                      ldr r2, [r0, #0x10]
00528594  04 20 82 e2                                      add r2, r2, #4
00528598  10 20 80 e5                                      str r2, [r0, #0x10]
0052859c  7c d0 8d e2                                      add sp, sp, #0x7c
005285a0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005285a4  68 10 8d e2                                      add r1, sp, #0x68
005285a8  c0 fe ff eb                                      bl #0x5280b0
005285ac  fa ff ff ea                                      b #0x52859c

; FUNCTION 0x00528868, declared_size=308, range_size=308, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld15_IsPastWaypointER8PFObject
; demangled: PFWorld::_IsPastWaypoint(PFObject&)
; decoder-mode: arm
00528868  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0052886c  01 20 a0 e1                                      mov r2, r1
00528870  01 40 a0 e1                                      mov r4, r1
00528874  38 10 b2 e5                                      ldr r1, [r2, #0x38]!
00528878  04 31 9f e5                                      ldr r3, [pc, #0x104]
0052887c  0c d0 4d e2                                      sub sp, sp, #0xc
00528880  02 00 51 e1                                      cmp r1, r2
00528884  03 30 8f e0                                      add r3, pc, r3
00528888  26 00 00 0a                                      beq #0x528928
0052888c  01 30 a0 e1                                      mov r3, r1
00528890  00 30 93 e5                                      ldr r3, [r3]
00528894  03 00 52 e1                                      cmp r2, r3
00528898  fc ff ff 1a                                      bne #0x528890
0052889c  08 30 91 e5                                      ldr r3, [r1, #8]
005288a0  00 60 a0 e3                                      mov r6, #0
005288a4  03 00 a0 e1                                      mov r0, r3
005288a8  00 30 93 e5                                      ldr r3, [r3]
005288ac  0f e0 a0 e1                                      mov lr, pc
005288b0  24 f0 93 e5                                      ldr pc, [r3, #0x24]
005288b4  00 10 90 e5                                      ldr r1, [r0]
005288b8  00 50 a0 e1                                      mov r5, r0
005288bc  18 00 94 e5                                      ldr r0, [r4, #0x18]
005288c0  b9 96 f7 eb                                      bl #0x30e3ac
005288c4  80 10 94 e5                                      ldr r1, [r4, #0x80]
005288c8  27 99 f7 eb                                      bl #0x30ed6c
005288cc  04 10 95 e5                                      ldr r1, [r5, #4]
005288d0  00 70 a0 e1                                      mov r7, r0
005288d4  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
005288d8  b3 96 f7 eb                                      bl #0x30e3ac
005288dc  84 10 94 e5                                      ldr r1, [r4, #0x84]
005288e0  21 99 f7 eb                                      bl #0x30ed6c
005288e4  00 10 a0 e1                                      mov r1, r0
005288e8  07 00 a0 e1                                      mov r0, r7
005288ec  ac 98 f7 eb                                      bl #0x30eba4
005288f0  00 10 a0 e3                                      mov r1, #0
005288f4  00 50 a0 e1                                      mov r5, r0
005288f8  88 00 94 e5                                      ldr r0, [r4, #0x88]
005288fc  1a 99 f7 eb                                      bl #0x30ed6c
00528900  00 10 a0 e1                                      mov r1, r0
00528904  05 00 a0 e1                                      mov r0, r5
00528908  a5 98 f7 eb                                      bl #0x30eba4
0052890c  00 10 a0 e3                                      mov r1, #0
00528910  e7 96 f7 eb                                      bl #0x30e4b4
00528914  00 00 50 e3                                      cmp r0, #0
00528918  01 60 a0 13                                      movne r6, #1
0052891c  01 00 06 e2                                      and r0, r6, #1
00528920  0c d0 8d e2                                      add sp, sp, #0xc
00528924  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00528928  58 20 9f e5                                      ldr r2, [pc, #0x58]
0052892c  02 20 93 e7                                      ldr r2, [r3, r2]
00528930  00 20 92 e5                                      ldr r2, [r2]
00528934  02 00 52 e3                                      cmp r2, #2
00528938  00 30 a0 03                                      moveq r3, #0
0052893c  00 30 83 05                                      streq r3, [r3]
00528940  d5 ff ff 0a                                      beq #0x52889c
00528944  01 00 52 e3                                      cmp r2, #1
00528948  d3 ff ff 1a                                      bne #0x52889c
0052894c  38 00 9f e5                                      ldr r0, [pc, #0x38]
00528950  38 10 9f e5                                      ldr r1, [pc, #0x38]
00528954  38 20 9f e5                                      ldr r2, [pc, #0x38]
00528958  00 00 93 e7                                      ldr r0, [r3, r0]
0052895c  34 30 9f e5                                      ldr r3, [pc, #0x34]
00528960  01 10 8f e0                                      add r1, pc, r1
00528964  45 c1 00 e3                                      movw ip, #0x145
00528968  a8 00 80 e2                                      add r0, r0, #0xa8
0052896c  02 20 8f e0                                      add r2, pc, r2
00528970  03 30 8f e0                                      add r3, pc, r3
00528974  00 c0 8d e5                                      str ip, [sp]
00528978  a1 95 f7 eb                                      bl #0x30e004
0052897c  38 10 94 e5                                      ldr r1, [r4, #0x38]
00528980  c5 ff ff ea                                      b #0x52889c
; mapping-symbol data/literal pool
00528984  0c c2 46 00 c0 39 00 00 c0 19 00 00 78 5a 39 00  .byte 0x0c, 0xc2, 0x46, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x78, 0x5a, 0x39, 0x00
00528994  bc 41 3b 00 d0 41 3b 00                          .byte 0xbc, 0x41, 0x3b, 0x00, 0xd0, 0x41, 0x3b, 0x00

; FUNCTION 0x0052899c, declared_size=272, range_size=272, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld16_CalcWaypointVecER8PFObject
; demangled: PFWorld::_CalcWaypointVec(PFObject&)
; decoder-mode: arm
0052899c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005289a0  01 20 a0 e1                                      mov r2, r1
005289a4  01 40 a0 e1                                      mov r4, r1
005289a8  38 10 b2 e5                                      ldr r1, [r2, #0x38]!
005289ac  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
005289b0  0c d0 4d e2                                      sub sp, sp, #0xc
005289b4  02 00 51 e1                                      cmp r1, r2
005289b8  03 30 8f e0                                      add r3, pc, r3
005289bc  1d 00 00 0a                                      beq #0x528a38
005289c0  01 30 a0 e1                                      mov r3, r1
005289c4  00 30 93 e5                                      ldr r3, [r3]
005289c8  03 00 52 e1                                      cmp r2, r3
005289cc  fc ff ff 1a                                      bne #0x5289c4
005289d0  08 30 91 e5                                      ldr r3, [r1, #8]
005289d4  03 00 a0 e1                                      mov r0, r3
005289d8  00 30 93 e5                                      ldr r3, [r3]
005289dc  0f e0 a0 e1                                      mov lr, pc
005289e0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005289e4  38 30 94 e5                                      ldr r3, [r4, #0x38]
005289e8  00 50 a0 e1                                      mov r5, r0
005289ec  08 30 93 e5                                      ldr r3, [r3, #8]
005289f0  03 00 a0 e1                                      mov r0, r3
005289f4  00 30 93 e5                                      ldr r3, [r3]
005289f8  0f e0 a0 e1                                      mov lr, pc
005289fc  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00528a00  04 10 90 e5                                      ldr r1, [r0, #4]
00528a04  00 60 a0 e1                                      mov r6, r0
00528a08  04 00 95 e5                                      ldr r0, [r5, #4]
00528a0c  66 96 f7 eb                                      bl #0x30e3ac
00528a10  00 10 96 e5                                      ldr r1, [r6]
00528a14  00 70 a0 e1                                      mov r7, r0
00528a18  00 00 95 e5                                      ldr r0, [r5]
00528a1c  62 96 f7 eb                                      bl #0x30e3ac
00528a20  00 30 a0 e3                                      mov r3, #0
00528a24  80 00 84 e5                                      str r0, [r4, #0x80]
00528a28  84 70 84 e5                                      str r7, [r4, #0x84]
00528a2c  88 30 84 e5                                      str r3, [r4, #0x88]
00528a30  0c d0 8d e2                                      add sp, sp, #0xc
00528a34  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00528a38  58 20 9f e5                                      ldr r2, [pc, #0x58]
00528a3c  02 20 93 e7                                      ldr r2, [r3, r2]
00528a40  00 20 92 e5                                      ldr r2, [r2]
00528a44  02 00 52 e3                                      cmp r2, #2
00528a48  00 30 a0 03                                      moveq r3, #0
00528a4c  00 30 83 05                                      streq r3, [r3]
00528a50  de ff ff 0a                                      beq #0x5289d0
00528a54  01 00 52 e3                                      cmp r2, #1
00528a58  dc ff ff 1a                                      bne #0x5289d0
00528a5c  38 00 9f e5                                      ldr r0, [pc, #0x38]
00528a60  38 10 9f e5                                      ldr r1, [pc, #0x38]
00528a64  38 20 9f e5                                      ldr r2, [pc, #0x38]
00528a68  00 00 93 e7                                      ldr r0, [r3, r0]
00528a6c  34 30 9f e5                                      ldr r3, [pc, #0x34]
00528a70  01 10 8f e0                                      add r1, pc, r1
00528a74  39 c1 00 e3                                      movw ip, #0x139
00528a78  a8 00 80 e2                                      add r0, r0, #0xa8
00528a7c  02 20 8f e0                                      add r2, pc, r2
00528a80  03 30 8f e0                                      add r3, pc, r3
00528a84  00 c0 8d e5                                      str ip, [sp]
00528a88  5d 95 f7 eb                                      bl #0x30e004
00528a8c  38 10 94 e5                                      ldr r1, [r4, #0x38]
00528a90  ce ff ff ea                                      b #0x5289d0
; mapping-symbol data/literal pool
00528a94  d8 c0 46 00 c0 39 00 00 c0 19 00 00 68 59 39 00  .byte 0xd8, 0xc0, 0x46, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x68, 0x59, 0x39, 0x00
00528aa4  ac 40 3b 00 c0 40 3b 00                          .byte 0xac, 0x40, 0x3b, 0x00, 0xc0, 0x40, 0x3b, 0x00

; FUNCTION 0x00528b2c, declared_size=884, range_size=884, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld15_GetClosestNodeERK7Point3DIfE
; demangled: PFWorld::_GetClosestNode(Point3D<float> const&)
; decoder-mode: arm
00528b2c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00528b30  6c d0 4d e2                                      sub sp, sp, #0x6c
00528b34  00 c0 a0 e3                                      mov ip, #0
00528b38  00 e0 a0 e3                                      mov lr, #0
00528b3c  64 40 8d e2                                      add r4, sp, #0x64
00528b40  58 20 8d e2                                      add r2, sp, #0x58
00528b44  10 30 8d e2                                      add r3, sp, #0x10
00528b48  04 40 8d e5                                      str r4, [sp, #4]
00528b4c  30 c0 8d e5                                      str ip, [sp, #0x30]
00528b50  08 e0 8d e5                                      str lr, [sp, #8]
00528b54  58 c0 8d e5                                      str ip, [sp, #0x58]
00528b58  5c c0 8d e5                                      str ip, [sp, #0x5c]
00528b5c  60 c0 8d e5                                      str ip, [sp, #0x60]
00528b60  10 c0 8d e5                                      str ip, [sp, #0x10]
00528b64  14 c0 8d e5                                      str ip, [sp, #0x14]
00528b68  18 c0 8d e5                                      str ip, [sp, #0x18]
00528b6c  1c c0 8d e5                                      str ip, [sp, #0x1c]
00528b70  20 c0 8d e5                                      str ip, [sp, #0x20]
00528b74  24 c0 8d e5                                      str ip, [sp, #0x24]
00528b78  28 c0 8d e5                                      str ip, [sp, #0x28]
00528b7c  2c c0 8d e5                                      str ip, [sp, #0x2c]
00528b80  64 e0 8d e5                                      str lr, [sp, #0x64]
00528b84  00 e0 8d e5                                      str lr, [sp]
00528b88  01 40 a0 e1                                      mov r4, r1
00528b8c  d0 f2 ff eb                                      bl #0x5256d4
00528b90  00 00 50 e3                                      cmp r0, #0
00528b94  03 00 00 1a                                      bne #0x528ba8
00528b98  00 50 a0 e3                                      mov r5, #0
00528b9c  05 00 a0 e1                                      mov r0, r5
00528ba0  6c d0 8d e2                                      add sp, sp, #0x6c
00528ba4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00528ba8  64 50 9d e5                                      ldr r5, [sp, #0x64]
00528bac  00 00 55 e3                                      cmp r5, #0
00528bb0  f8 ff ff 0a                                      beq #0x528b98
00528bb4  20 10 9d e5                                      ldr r1, [sp, #0x20]
00528bb8  14 00 9d e5                                      ldr r0, [sp, #0x14]
00528bbc  f8 97 f7 eb                                      bl #0x30eba4
00528bc0  3f 14 a0 e3                                      mov r1, #0x3f000000
00528bc4  68 98 f7 eb                                      bl #0x30ed6c
00528bc8  24 10 9d e5                                      ldr r1, [sp, #0x24]
00528bcc  00 70 a0 e1                                      mov r7, r0
00528bd0  18 00 9d e5                                      ldr r0, [sp, #0x18]
00528bd4  f2 97 f7 eb                                      bl #0x30eba4
00528bd8  3f 14 a0 e3                                      mov r1, #0x3f000000
00528bdc  62 98 f7 eb                                      bl #0x30ed6c
00528be0  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00528be4  00 60 a0 e1                                      mov r6, r0
00528be8  10 00 9d e5                                      ldr r0, [sp, #0x10]
00528bec  ec 97 f7 eb                                      bl #0x30eba4
00528bf0  3f 14 a0 e3                                      mov r1, #0x3f000000
00528bf4  5c 98 f7 eb                                      bl #0x30ed6c
00528bf8  4c 10 8d e2                                      add r1, sp, #0x4c
00528bfc  4c 00 8d e5                                      str r0, [sp, #0x4c]
00528c00  05 00 a0 e1                                      mov r0, r5
00528c04  50 70 8d e5                                      str r7, [sp, #0x50]
00528c08  54 60 8d e5                                      str r6, [sp, #0x54]
00528c0c  32 cd ff eb                                      bl #0x51c0dc
00528c10  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00528c14  00 50 a0 e1                                      mov r5, r0
00528c18  14 00 9d e5                                      ldr r0, [sp, #0x14]
00528c1c  e0 97 f7 eb                                      bl #0x30eba4
00528c20  3f 14 a0 e3                                      mov r1, #0x3f000000
00528c24  50 98 f7 eb                                      bl #0x30ed6c
00528c28  30 10 9d e5                                      ldr r1, [sp, #0x30]
00528c2c  00 70 a0 e1                                      mov r7, r0
00528c30  18 00 9d e5                                      ldr r0, [sp, #0x18]
00528c34  da 97 f7 eb                                      bl #0x30eba4
00528c38  3f 14 a0 e3                                      mov r1, #0x3f000000
00528c3c  4a 98 f7 eb                                      bl #0x30ed6c
00528c40  28 10 9d e5                                      ldr r1, [sp, #0x28]
00528c44  00 60 a0 e1                                      mov r6, r0
00528c48  10 00 9d e5                                      ldr r0, [sp, #0x10]
00528c4c  d4 97 f7 eb                                      bl #0x30eba4
00528c50  3f 14 a0 e3                                      mov r1, #0x3f000000
00528c54  44 98 f7 eb                                      bl #0x30ed6c
00528c58  40 10 8d e2                                      add r1, sp, #0x40
00528c5c  40 00 8d e5                                      str r0, [sp, #0x40]
00528c60  64 00 9d e5                                      ldr r0, [sp, #0x64]
00528c64  44 70 8d e5                                      str r7, [sp, #0x44]
00528c68  48 60 8d e5                                      str r6, [sp, #0x48]
00528c6c  1a cd ff eb                                      bl #0x51c0dc
00528c70  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00528c74  00 70 a0 e1                                      mov r7, r0
00528c78  20 00 9d e5                                      ldr r0, [sp, #0x20]
00528c7c  c8 97 f7 eb                                      bl #0x30eba4
00528c80  3f 14 a0 e3                                      mov r1, #0x3f000000
00528c84  38 98 f7 eb                                      bl #0x30ed6c
00528c88  30 10 9d e5                                      ldr r1, [sp, #0x30]
00528c8c  00 80 a0 e1                                      mov r8, r0
00528c90  24 00 9d e5                                      ldr r0, [sp, #0x24]
00528c94  c2 97 f7 eb                                      bl #0x30eba4
00528c98  3f 14 a0 e3                                      mov r1, #0x3f000000
00528c9c  32 98 f7 eb                                      bl #0x30ed6c
00528ca0  28 10 9d e5                                      ldr r1, [sp, #0x28]
00528ca4  00 60 a0 e1                                      mov r6, r0
00528ca8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00528cac  bc 97 f7 eb                                      bl #0x30eba4
00528cb0  3f 14 a0 e3                                      mov r1, #0x3f000000
00528cb4  2c 98 f7 eb                                      bl #0x30ed6c
00528cb8  34 10 8d e2                                      add r1, sp, #0x34
00528cbc  34 00 8d e5                                      str r0, [sp, #0x34]
00528cc0  64 00 9d e5                                      ldr r0, [sp, #0x64]
00528cc4  3c 60 8d e5                                      str r6, [sp, #0x3c]
00528cc8  38 80 8d e5                                      str r8, [sp, #0x38]
00528ccc  02 cd ff eb                                      bl #0x51c0dc
00528cd0  00 00 55 e3                                      cmp r5, #0
00528cd4  00 60 a0 e1                                      mov r6, r0
00528cd8  22 00 00 0a                                      beq #0x528d68
00528cdc  00 10 94 e5                                      ldr r1, [r4]
00528ce0  08 00 95 e5                                      ldr r0, [r5, #8]
00528ce4  b0 95 f7 eb                                      bl #0x30e3ac
00528ce8  04 10 94 e5                                      ldr r1, [r4, #4]
00528cec  00 80 a0 e1                                      mov r8, r0
00528cf0  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00528cf4  ac 95 f7 eb                                      bl #0x30e3ac
00528cf8  08 10 94 e5                                      ldr r1, [r4, #8]
00528cfc  00 90 a0 e1                                      mov sb, r0
00528d00  10 00 95 e5                                      ldr r0, [r5, #0x10]
00528d04  a8 95 f7 eb                                      bl #0x30e3ac
00528d08  08 10 a0 e1                                      mov r1, r8
00528d0c  00 a0 a0 e1                                      mov sl, r0
00528d10  08 00 a0 e1                                      mov r0, r8
00528d14  14 98 f7 eb                                      bl #0x30ed6c
00528d18  09 10 a0 e1                                      mov r1, sb
00528d1c  00 80 a0 e1                                      mov r8, r0
00528d20  09 00 a0 e1                                      mov r0, sb
00528d24  10 98 f7 eb                                      bl #0x30ed6c
00528d28  00 10 a0 e1                                      mov r1, r0
00528d2c  08 00 a0 e1                                      mov r0, r8
00528d30  9b 97 f7 eb                                      bl #0x30eba4
00528d34  0a 10 a0 e1                                      mov r1, sl
00528d38  00 80 a0 e1                                      mov r8, r0
00528d3c  0a 00 a0 e1                                      mov r0, sl
00528d40  09 98 f7 eb                                      bl #0x30ed6c
00528d44  00 10 a0 e1                                      mov r1, r0
00528d48  08 00 a0 e1                                      mov r0, r8
00528d4c  94 97 f7 eb                                      bl #0x30eba4
00528d50  02 11 e0 e3                                      mvn r1, #0x80000000
00528d54  02 15 41 e2                                      sub r1, r1, #0x800000
00528d58  00 80 a0 e1                                      mov r8, r0
00528d5c  6a 96 f7 eb                                      bl #0x30e70c
00528d60  00 00 50 e3                                      cmp r0, #0
00528d64  02 00 00 1a                                      bne #0x528d74
00528d68  02 81 e0 e3                                      mvn r8, #0x80000000
00528d6c  02 85 48 e2                                      sub r8, r8, #0x800000
00528d70  00 50 a0 e3                                      mov r5, #0
00528d74  00 00 57 e3                                      cmp r7, #0
00528d78  23 00 00 0a                                      beq #0x528e0c
00528d7c  00 10 94 e5                                      ldr r1, [r4]
00528d80  08 00 97 e5                                      ldr r0, [r7, #8]
00528d84  88 95 f7 eb                                      bl #0x30e3ac
00528d88  04 10 94 e5                                      ldr r1, [r4, #4]
00528d8c  00 a0 a0 e1                                      mov sl, r0
00528d90  0c 00 97 e5                                      ldr r0, [r7, #0xc]
00528d94  84 95 f7 eb                                      bl #0x30e3ac
00528d98  08 10 94 e5                                      ldr r1, [r4, #8]
00528d9c  00 b0 a0 e1                                      mov fp, r0
00528da0  10 00 97 e5                                      ldr r0, [r7, #0x10]
00528da4  80 95 f7 eb                                      bl #0x30e3ac
00528da8  0a 10 a0 e1                                      mov r1, sl
00528dac  00 90 a0 e1                                      mov sb, r0
00528db0  0a 00 a0 e1                                      mov r0, sl
00528db4  ec 97 f7 eb                                      bl #0x30ed6c
00528db8  0b 10 a0 e1                                      mov r1, fp
00528dbc  00 a0 a0 e1                                      mov sl, r0
00528dc0  0b 00 a0 e1                                      mov r0, fp
00528dc4  e8 97 f7 eb                                      bl #0x30ed6c
00528dc8  00 10 a0 e1                                      mov r1, r0
00528dcc  0a 00 a0 e1                                      mov r0, sl
00528dd0  73 97 f7 eb                                      bl #0x30eba4
00528dd4  09 10 a0 e1                                      mov r1, sb
00528dd8  00 a0 a0 e1                                      mov sl, r0
00528ddc  09 00 a0 e1                                      mov r0, sb
00528de0  e1 97 f7 eb                                      bl #0x30ed6c
00528de4  00 10 a0 e1                                      mov r1, r0
00528de8  0a 00 a0 e1                                      mov r0, sl
00528dec  6c 97 f7 eb                                      bl #0x30eba4
00528df0  00 a0 a0 e1                                      mov sl, r0
00528df4  0a 10 a0 e1                                      mov r1, sl
00528df8  08 00 a0 e1                                      mov r0, r8
00528dfc  3d 95 f7 eb                                      bl #0x30e2f8
00528e00  00 00 50 e3                                      cmp r0, #0
00528e04  0a 80 a0 11                                      movne r8, sl
00528e08  07 50 a0 11                                      movne r5, r7
00528e0c  00 00 56 e3                                      cmp r6, #0
00528e10  61 ff ff 0a                                      beq #0x528b9c
00528e14  00 10 94 e5                                      ldr r1, [r4]
00528e18  08 00 96 e5                                      ldr r0, [r6, #8]
00528e1c  62 95 f7 eb                                      bl #0x30e3ac
00528e20  04 10 94 e5                                      ldr r1, [r4, #4]
00528e24  00 90 a0 e1                                      mov sb, r0
00528e28  0c 00 96 e5                                      ldr r0, [r6, #0xc]
00528e2c  5e 95 f7 eb                                      bl #0x30e3ac
00528e30  08 10 94 e5                                      ldr r1, [r4, #8]
00528e34  00 a0 a0 e1                                      mov sl, r0
00528e38  10 00 96 e5                                      ldr r0, [r6, #0x10]
00528e3c  5a 95 f7 eb                                      bl #0x30e3ac
00528e40  09 10 a0 e1                                      mov r1, sb
00528e44  00 70 a0 e1                                      mov r7, r0
00528e48  09 00 a0 e1                                      mov r0, sb
00528e4c  c6 97 f7 eb                                      bl #0x30ed6c
00528e50  0a 10 a0 e1                                      mov r1, sl
00528e54  00 40 a0 e1                                      mov r4, r0
00528e58  0a 00 a0 e1                                      mov r0, sl
00528e5c  c2 97 f7 eb                                      bl #0x30ed6c
00528e60  00 10 a0 e1                                      mov r1, r0
00528e64  04 00 a0 e1                                      mov r0, r4
00528e68  4d 97 f7 eb                                      bl #0x30eba4
00528e6c  07 10 a0 e1                                      mov r1, r7
00528e70  00 40 a0 e1                                      mov r4, r0
00528e74  07 00 a0 e1                                      mov r0, r7
00528e78  bb 97 f7 eb                                      bl #0x30ed6c
00528e7c  00 10 a0 e1                                      mov r1, r0
00528e80  04 00 a0 e1                                      mov r0, r4
00528e84  46 97 f7 eb                                      bl #0x30eba4
00528e88  00 10 a0 e1                                      mov r1, r0
00528e8c  08 00 a0 e1                                      mov r0, r8
00528e90  18 95 f7 eb                                      bl #0x30e2f8
00528e94  00 00 50 e3                                      cmp r0, #0
00528e98  06 50 a0 11                                      movne r5, r6
00528e9c  3e ff ff ea                                      b #0x528b9c

; FUNCTION 0x00528ea0, declared_size=884, range_size=884, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld15_GetClosestNodeERK8PFObject
; demangled: PFWorld::_GetClosestNode(PFObject const&)
; decoder-mode: arm
00528ea0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00528ea4  10 e0 81 e2                                      add lr, r1, #0x10
00528ea8  6c d0 4d e2                                      sub sp, sp, #0x6c
00528eac  00 c0 a0 e3                                      mov ip, #0
00528eb0  0c 50 81 e2                                      add r5, r1, #0xc
00528eb4  04 e0 8d e5                                      str lr, [sp, #4]
00528eb8  01 40 a0 e1                                      mov r4, r1
00528ebc  00 e0 a0 e3                                      mov lr, #0
00528ec0  18 10 81 e2                                      add r1, r1, #0x18
00528ec4  5c 20 8d e2                                      add r2, sp, #0x5c
00528ec8  14 30 8d e2                                      add r3, sp, #0x14
00528ecc  00 50 8d e5                                      str r5, [sp]
00528ed0  34 c0 8d e5                                      str ip, [sp, #0x34]
00528ed4  08 e0 8d e5                                      str lr, [sp, #8]
00528ed8  5c c0 8d e5                                      str ip, [sp, #0x5c]
00528edc  60 c0 8d e5                                      str ip, [sp, #0x60]
00528ee0  64 c0 8d e5                                      str ip, [sp, #0x64]
00528ee4  14 c0 8d e5                                      str ip, [sp, #0x14]
00528ee8  18 c0 8d e5                                      str ip, [sp, #0x18]
00528eec  1c c0 8d e5                                      str ip, [sp, #0x1c]
00528ef0  20 c0 8d e5                                      str ip, [sp, #0x20]
00528ef4  24 c0 8d e5                                      str ip, [sp, #0x24]
00528ef8  28 c0 8d e5                                      str ip, [sp, #0x28]
00528efc  2c c0 8d e5                                      str ip, [sp, #0x2c]
00528f00  30 c0 8d e5                                      str ip, [sp, #0x30]
00528f04  f2 f1 ff eb                                      bl #0x5256d4
00528f08  00 50 50 e2                                      subs r5, r0, #0
00528f0c  b9 00 00 0a                                      beq #0x5291f8
00528f10  24 10 9d e5                                      ldr r1, [sp, #0x24]
00528f14  18 00 9d e5                                      ldr r0, [sp, #0x18]
00528f18  21 97 f7 eb                                      bl #0x30eba4
00528f1c  3f 14 a0 e3                                      mov r1, #0x3f000000
00528f20  91 97 f7 eb                                      bl #0x30ed6c
00528f24  28 10 9d e5                                      ldr r1, [sp, #0x28]
00528f28  00 60 a0 e1                                      mov r6, r0
00528f2c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00528f30  1b 97 f7 eb                                      bl #0x30eba4
00528f34  3f 14 a0 e3                                      mov r1, #0x3f000000
00528f38  8b 97 f7 eb                                      bl #0x30ed6c
00528f3c  20 10 9d e5                                      ldr r1, [sp, #0x20]
00528f40  00 50 a0 e1                                      mov r5, r0
00528f44  14 00 9d e5                                      ldr r0, [sp, #0x14]
00528f48  15 97 f7 eb                                      bl #0x30eba4
00528f4c  3f 14 a0 e3                                      mov r1, #0x3f000000
00528f50  85 97 f7 eb                                      bl #0x30ed6c
00528f54  10 30 94 e5                                      ldr r3, [r4, #0x10]
00528f58  50 10 8d e2                                      add r1, sp, #0x50
00528f5c  50 00 8d e5                                      str r0, [sp, #0x50]
00528f60  03 00 a0 e1                                      mov r0, r3
00528f64  54 60 8d e5                                      str r6, [sp, #0x54]
00528f68  58 50 8d e5                                      str r5, [sp, #0x58]
00528f6c  5a cc ff eb                                      bl #0x51c0dc
00528f70  30 10 9d e5                                      ldr r1, [sp, #0x30]
00528f74  00 50 a0 e1                                      mov r5, r0
00528f78  18 00 9d e5                                      ldr r0, [sp, #0x18]
00528f7c  08 97 f7 eb                                      bl #0x30eba4
00528f80  3f 14 a0 e3                                      mov r1, #0x3f000000
00528f84  78 97 f7 eb                                      bl #0x30ed6c
00528f88  34 10 9d e5                                      ldr r1, [sp, #0x34]
00528f8c  00 70 a0 e1                                      mov r7, r0
00528f90  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00528f94  02 97 f7 eb                                      bl #0x30eba4
00528f98  3f 14 a0 e3                                      mov r1, #0x3f000000
00528f9c  72 97 f7 eb                                      bl #0x30ed6c
00528fa0  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00528fa4  00 60 a0 e1                                      mov r6, r0
00528fa8  14 00 9d e5                                      ldr r0, [sp, #0x14]
00528fac  fc 96 f7 eb                                      bl #0x30eba4
00528fb0  3f 14 a0 e3                                      mov r1, #0x3f000000
00528fb4  6c 97 f7 eb                                      bl #0x30ed6c
00528fb8  10 30 94 e5                                      ldr r3, [r4, #0x10]
00528fbc  44 10 8d e2                                      add r1, sp, #0x44
00528fc0  44 00 8d e5                                      str r0, [sp, #0x44]
00528fc4  03 00 a0 e1                                      mov r0, r3
00528fc8  48 70 8d e5                                      str r7, [sp, #0x48]
00528fcc  4c 60 8d e5                                      str r6, [sp, #0x4c]
00528fd0  41 cc ff eb                                      bl #0x51c0dc
00528fd4  30 10 9d e5                                      ldr r1, [sp, #0x30]
00528fd8  00 70 a0 e1                                      mov r7, r0
00528fdc  24 00 9d e5                                      ldr r0, [sp, #0x24]
00528fe0  ef 96 f7 eb                                      bl #0x30eba4
00528fe4  3f 14 a0 e3                                      mov r1, #0x3f000000
00528fe8  5f 97 f7 eb                                      bl #0x30ed6c
00528fec  34 10 9d e5                                      ldr r1, [sp, #0x34]
00528ff0  00 80 a0 e1                                      mov r8, r0
00528ff4  28 00 9d e5                                      ldr r0, [sp, #0x28]
00528ff8  e9 96 f7 eb                                      bl #0x30eba4
00528ffc  3f 14 a0 e3                                      mov r1, #0x3f000000
00529000  59 97 f7 eb                                      bl #0x30ed6c
00529004  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00529008  00 60 a0 e1                                      mov r6, r0
0052900c  20 00 9d e5                                      ldr r0, [sp, #0x20]
00529010  e3 96 f7 eb                                      bl #0x30eba4
00529014  3f 14 a0 e3                                      mov r1, #0x3f000000
00529018  53 97 f7 eb                                      bl #0x30ed6c
0052901c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00529020  38 10 8d e2                                      add r1, sp, #0x38
00529024  38 00 8d e5                                      str r0, [sp, #0x38]
00529028  03 00 a0 e1                                      mov r0, r3
0052902c  40 60 8d e5                                      str r6, [sp, #0x40]
00529030  3c 80 8d e5                                      str r8, [sp, #0x3c]
00529034  28 cc ff eb                                      bl #0x51c0dc
00529038  00 00 55 e3                                      cmp r5, #0
0052903c  00 60 a0 e1                                      mov r6, r0
00529040  6f 00 00 0a                                      beq #0x529204
00529044  18 10 94 e5                                      ldr r1, [r4, #0x18]
00529048  08 00 95 e5                                      ldr r0, [r5, #8]
0052904c  d6 94 f7 eb                                      bl #0x30e3ac
00529050  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00529054  00 80 a0 e1                                      mov r8, r0
00529058  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0052905c  d2 94 f7 eb                                      bl #0x30e3ac
00529060  20 10 94 e5                                      ldr r1, [r4, #0x20]
00529064  00 90 a0 e1                                      mov sb, r0
00529068  10 00 95 e5                                      ldr r0, [r5, #0x10]
0052906c  ce 94 f7 eb                                      bl #0x30e3ac
00529070  08 10 a0 e1                                      mov r1, r8
00529074  00 a0 a0 e1                                      mov sl, r0
00529078  08 00 a0 e1                                      mov r0, r8
0052907c  3a 97 f7 eb                                      bl #0x30ed6c
00529080  09 10 a0 e1                                      mov r1, sb
00529084  00 80 a0 e1                                      mov r8, r0
00529088  09 00 a0 e1                                      mov r0, sb
0052908c  36 97 f7 eb                                      bl #0x30ed6c
00529090  00 10 a0 e1                                      mov r1, r0
00529094  08 00 a0 e1                                      mov r0, r8
00529098  c1 96 f7 eb                                      bl #0x30eba4
0052909c  0a 10 a0 e1                                      mov r1, sl
005290a0  00 80 a0 e1                                      mov r8, r0
005290a4  0a 00 a0 e1                                      mov r0, sl
005290a8  2f 97 f7 eb                                      bl #0x30ed6c
005290ac  00 10 a0 e1                                      mov r1, r0
005290b0  08 00 a0 e1                                      mov r0, r8
005290b4  ba 96 f7 eb                                      bl #0x30eba4
005290b8  02 11 e0 e3                                      mvn r1, #0x80000000
005290bc  02 15 41 e2                                      sub r1, r1, #0x800000
005290c0  00 80 a0 e1                                      mov r8, r0
005290c4  90 95 f7 eb                                      bl #0x30e70c
005290c8  00 00 50 e3                                      cmp r0, #0
005290cc  4c 00 00 0a                                      beq #0x529204
005290d0  00 00 57 e3                                      cmp r7, #0
005290d4  23 00 00 0a                                      beq #0x529168
005290d8  18 10 94 e5                                      ldr r1, [r4, #0x18]
005290dc  08 00 97 e5                                      ldr r0, [r7, #8]
005290e0  b1 94 f7 eb                                      bl #0x30e3ac
005290e4  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
005290e8  00 a0 a0 e1                                      mov sl, r0
005290ec  0c 00 97 e5                                      ldr r0, [r7, #0xc]
005290f0  ad 94 f7 eb                                      bl #0x30e3ac
005290f4  20 10 94 e5                                      ldr r1, [r4, #0x20]
005290f8  00 b0 a0 e1                                      mov fp, r0
005290fc  10 00 97 e5                                      ldr r0, [r7, #0x10]
00529100  a9 94 f7 eb                                      bl #0x30e3ac
00529104  0a 10 a0 e1                                      mov r1, sl
00529108  00 90 a0 e1                                      mov sb, r0
0052910c  0a 00 a0 e1                                      mov r0, sl
00529110  15 97 f7 eb                                      bl #0x30ed6c
00529114  0b 10 a0 e1                                      mov r1, fp
00529118  00 a0 a0 e1                                      mov sl, r0
0052911c  0b 00 a0 e1                                      mov r0, fp
00529120  11 97 f7 eb                                      bl #0x30ed6c
00529124  00 10 a0 e1                                      mov r1, r0
00529128  0a 00 a0 e1                                      mov r0, sl
0052912c  9c 96 f7 eb                                      bl #0x30eba4
00529130  09 10 a0 e1                                      mov r1, sb
00529134  00 a0 a0 e1                                      mov sl, r0
00529138  09 00 a0 e1                                      mov r0, sb
0052913c  0a 97 f7 eb                                      bl #0x30ed6c
00529140  00 10 a0 e1                                      mov r1, r0
00529144  0a 00 a0 e1                                      mov r0, sl
00529148  95 96 f7 eb                                      bl #0x30eba4
0052914c  00 a0 a0 e1                                      mov sl, r0
00529150  0a 10 a0 e1                                      mov r1, sl
00529154  08 00 a0 e1                                      mov r0, r8
00529158  66 94 f7 eb                                      bl #0x30e2f8
0052915c  00 00 50 e3                                      cmp r0, #0
00529160  0a 80 a0 11                                      movne r8, sl
00529164  07 50 a0 11                                      movne r5, r7
00529168  00 00 56 e3                                      cmp r6, #0
0052916c  21 00 00 0a                                      beq #0x5291f8
00529170  18 10 94 e5                                      ldr r1, [r4, #0x18]
00529174  08 00 96 e5                                      ldr r0, [r6, #8]
00529178  8b 94 f7 eb                                      bl #0x30e3ac
0052917c  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00529180  00 90 a0 e1                                      mov sb, r0
00529184  0c 00 96 e5                                      ldr r0, [r6, #0xc]
00529188  87 94 f7 eb                                      bl #0x30e3ac
0052918c  20 10 94 e5                                      ldr r1, [r4, #0x20]
00529190  00 a0 a0 e1                                      mov sl, r0
00529194  10 00 96 e5                                      ldr r0, [r6, #0x10]
00529198  83 94 f7 eb                                      bl #0x30e3ac
0052919c  09 10 a0 e1                                      mov r1, sb
005291a0  00 70 a0 e1                                      mov r7, r0
005291a4  09 00 a0 e1                                      mov r0, sb
005291a8  ef 96 f7 eb                                      bl #0x30ed6c
005291ac  0a 10 a0 e1                                      mov r1, sl
005291b0  00 40 a0 e1                                      mov r4, r0
005291b4  0a 00 a0 e1                                      mov r0, sl
005291b8  eb 96 f7 eb                                      bl #0x30ed6c
005291bc  00 10 a0 e1                                      mov r1, r0
005291c0  04 00 a0 e1                                      mov r0, r4
005291c4  76 96 f7 eb                                      bl #0x30eba4
005291c8  07 10 a0 e1                                      mov r1, r7
005291cc  00 40 a0 e1                                      mov r4, r0
005291d0  07 00 a0 e1                                      mov r0, r7
005291d4  e4 96 f7 eb                                      bl #0x30ed6c
005291d8  00 10 a0 e1                                      mov r1, r0
005291dc  04 00 a0 e1                                      mov r0, r4
005291e0  6f 96 f7 eb                                      bl #0x30eba4
005291e4  00 10 a0 e1                                      mov r1, r0
005291e8  08 00 a0 e1                                      mov r0, r8
005291ec  41 94 f7 eb                                      bl #0x30e2f8
005291f0  00 00 50 e3                                      cmp r0, #0
005291f4  06 50 a0 11                                      movne r5, r6
005291f8  05 00 a0 e1                                      mov r0, r5
005291fc  6c d0 8d e2                                      add sp, sp, #0x6c
00529200  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00529204  02 81 e0 e3                                      mvn r8, #0x80000000
00529208  02 85 48 e2                                      sub r8, r8, #0x800000
0052920c  00 50 a0 e3                                      mov r5, #0
00529210  ae ff ff ea                                      b #0x5290d0

; FUNCTION 0x0052aae4, declared_size=332, range_size=332, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld8DropPathER8PFObject
; demangled: PFWorld::DropPath(PFObject&)
; decoder-mode: arm
0052aae4  30 40 2d e9                                      push {r4, r5, lr}
0052aae8  01 50 a0 e1                                      mov r5, r1
0052aaec  38 30 b5 e5                                      ldr r3, [r5, #0x38]!
0052aaf0  20 21 9f e5                                      ldr r2, [pc, #0x120]
0052aaf4  14 d0 4d e2                                      sub sp, sp, #0x14
0052aaf8  05 00 53 e1                                      cmp r3, r5
0052aafc  01 40 a0 e1                                      mov r4, r1
0052ab00  02 20 8f e0                                      add r2, pc, r2
0052ab04  41 00 00 0a                                      beq #0x52ac10
0052ab08  03 10 a0 e1                                      mov r1, r3
0052ab0c  00 10 91 e5                                      ldr r1, [r1]
0052ab10  01 00 55 e1                                      cmp r5, r1
0052ab14  fc ff ff 1a                                      bne #0x52ab0c
0052ab18  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
0052ab1c  00 00 a0 e3                                      mov r0, #0
0052ab20  00 30 93 e5                                      ldr r3, [r3]
0052ab24  01 00 80 e2                                      add r0, r0, #1
0052ab28  03 00 55 e1                                      cmp r5, r3
0052ab2c  fb ff ff 1a                                      bne #0x52ab20
0052ab30  00 00 51 e1                                      cmp r1, r0
0052ab34  28 00 00 9a                                      bls #0x52abdc
0052ab38  dc 30 9f e5                                      ldr r3, [pc, #0xdc]
0052ab3c  03 30 92 e7                                      ldr r3, [r2, r3]
0052ab40  00 30 93 e5                                      ldr r3, [r3]
0052ab44  02 00 53 e3                                      cmp r3, #2
0052ab48  00 30 a0 03                                      moveq r3, #0
0052ab4c  00 30 83 05                                      streq r3, [r3]
0052ab50  21 00 00 0a                                      beq #0x52abdc
0052ab54  01 00 53 e3                                      cmp r3, #1
0052ab58  1f 00 00 1a                                      bne #0x52abdc
0052ab5c  bc 00 9f e5                                      ldr r0, [pc, #0xbc]
0052ab60  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
0052ab64  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
0052ab68  00 00 92 e7                                      ldr r0, [r2, r0]
0052ab6c  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
0052ab70  01 10 8f e0                                      add r1, pc, r1
0052ab74  d2 c1 00 e3                                      movw ip, #0x1d2
0052ab78  a8 00 80 e2                                      add r0, r0, #0xa8
0052ab7c  02 20 8f e0                                      add r2, pc, r2
0052ab80  03 30 8f e0                                      add r3, pc, r3
0052ab84  00 c0 8d e5                                      str ip, [sp]
0052ab88  1d 8d f7 eb                                      bl #0x30e004
0052ab8c  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
0052ab90  11 00 00 ea                                      b #0x52abdc
0052ab94  38 00 94 e5                                      ldr r0, [r4, #0x38]
0052ab98  01 10 41 e2                                      sub r1, r1, #1
0052ab9c  7c 10 84 e5                                      str r1, [r4, #0x7c]
0052aba0  08 30 90 e5                                      ldr r3, [r0, #8]
0052aba4  00 00 53 e3                                      cmp r3, #0
0052aba8  04 00 00 0a                                      beq #0x52abc0
0052abac  03 00 a0 e1                                      mov r0, r3
0052abb0  00 30 93 e5                                      ldr r3, [r3]
0052abb4  0f e0 a0 e1                                      mov lr, pc
0052abb8  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0052abbc  38 00 94 e5                                      ldr r0, [r4, #0x38]
0052abc0  00 30 90 e5                                      ldr r3, [r0]
0052abc4  04 20 90 e5                                      ldr r2, [r0, #4]
0052abc8  0c 10 a0 e3                                      mov r1, #0xc
0052abcc  00 30 82 e5                                      str r3, [r2]
0052abd0  04 20 83 e5                                      str r2, [r3, #4]
0052abd4  c9 78 07 eb                                      bl #0x708f00
0052abd8  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
0052abdc  00 00 51 e3                                      cmp r1, #0
0052abe0  eb ff ff 1a                                      bne #0x52ab94
0052abe4  10 10 8d e2                                      add r1, sp, #0x10
0052abe8  00 30 a0 e3                                      mov r3, #0
0052abec  04 30 21 e5                                      str r3, [r1, #-4]!
0052abf0  05 00 a0 e1                                      mov r0, r5
0052abf4  aa ff ff eb                                      bl #0x52aaa4
0052abf8  18 10 94 e5                                      ldr r1, [r4, #0x18]
0052abfc  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0052ac00  20 30 94 e5                                      ldr r3, [r4, #0x20]
0052ac04  40 10 84 e5                                      str r1, [r4, #0x40]
0052ac08  44 20 84 e5                                      str r2, [r4, #0x44]
0052ac0c  48 30 84 e5                                      str r3, [r4, #0x48]
0052ac10  14 d0 8d e2                                      add sp, sp, #0x14
0052ac14  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
0052ac18  90 9f 46 00 c0 39 00 00 c0 19 00 00 68 38 39 00  .byte 0x90, 0x9f, 0x46, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x68, 0x38, 0x39, 0x00
0052ac28  c0 1f 3b 00 1c 20 3b 00                          .byte 0xc0, 0x1f, 0x3b, 0x00, 0x1c, 0x20, 0x3b, 0x00

; FUNCTION 0x0052b560, declared_size=3572, range_size=3572, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld12_SearchGraphEPK8PFObjectRK7Point3DIfES6_jPSt4listIPK12PFGInnerEdgeSaISA_EE
; demangled: PFWorld::_SearchGraph(PFObject const*, Point3D<float> const&, Point3D<float> const&, unsigned int, std::list<PFGInnerEdge const*, std::allocator<PFGInnerEdge const*> >*)
; decoder-mode: arm
0052b560  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0052b564  c4 4d 9f e5                                      ldr r4, [pc, #0xdc4]
0052b568  c4 5d 9f e5                                      ldr r5, [pc, #0xdc4]
0052b56c  c4 ed 9f e5                                      ldr lr, [pc, #0xdc4]
0052b570  04 40 8f e0                                      add r4, pc, r4
0052b574  05 c0 94 e7                                      ldr ip, [r4, r5]
0052b578  0e 60 94 e7                                      ldr r6, [r4, lr]
0052b57c  59 df 4d e2                                      sub sp, sp, #0x164
0052b580  00 c0 9c e5                                      ldr ip, [ip]
0052b584  00 80 a0 e1                                      mov r8, r0
0052b588  06 00 a0 e1                                      mov r0, r6
0052b58c  03 90 a0 e1                                      mov sb, r3
0052b590  5c c1 8d e5                                      str ip, [sp, #0x15c]
0052b594  20 10 8d e5                                      str r1, [sp, #0x20]
0052b598  02 70 a0 e1                                      mov r7, r2
0052b59c  8c b1 9d e5                                      ldr fp, [sp, #0x18c]
0052b5a0  b8 30 f8 eb                                      bl #0x337888
0052b5a4  90 1d 9f e5                                      ldr r1, [pc, #0xd90]
0052b5a8  51 af 8d e2                                      add sl, sp, #0x144
0052b5ac  05 2d 8d e2                                      add r2, sp, #0x140
0052b5b0  01 10 8f e0                                      add r1, pc, r1
0052b5b4  0a 00 a0 e1                                      mov r0, sl
0052b5b8  cb a2 f7 eb                                      bl #0x3140ec
0052b5bc  06 00 a0 e1                                      mov r0, r6
0052b5c0  0a 10 a0 e1                                      mov r1, sl
0052b5c4  3f 32 f8 eb                                      bl #0x337ec8
0052b5c8  00 60 a0 e1                                      mov r6, r0
0052b5cc  58 01 9d e5                                      ldr r0, [sp, #0x158]
0052b5d0  0a 00 50 e1                                      cmp r0, sl
0052b5d4  06 00 00 0a                                      beq #0x52b5f4
0052b5d8  00 00 50 e3                                      cmp r0, #0
0052b5dc  04 00 00 0a                                      beq #0x52b5f4
0052b5e0  44 11 9d e5                                      ldr r1, [sp, #0x144]
0052b5e4  01 10 60 e0                                      rsb r1, r0, r1
0052b5e8  80 00 51 e3                                      cmp r1, #0x80
0052b5ec  3d 02 00 8a                                      bhi #0x52bee8
0052b5f0  42 76 07 eb                                      bl #0x708f00
0052b5f4  00 00 56 e3                                      cmp r6, #0
0052b5f8  24 00 00 0a                                      beq #0x52b690
0052b5fc  00 c0 a0 e3                                      mov ip, #0
0052b600  00 60 a0 e3                                      mov r6, #0
0052b604  4f ef 8d e2                                      add lr, sp, #0x13c
0052b608  08 00 a0 e1                                      mov r0, r8
0052b60c  07 10 a0 e1                                      mov r1, r7
0052b610  4a 2f 8d e2                                      add r2, sp, #0x128
0052b614  88 30 8d e2                                      add r3, sp, #0x88
0052b618  24 c1 8d e5                                      str ip, [sp, #0x124]
0052b61c  04 e0 8d e5                                      str lr, [sp, #4]
0052b620  88 c0 8d e5                                      str ip, [sp, #0x88]
0052b624  8c c0 8d e5                                      str ip, [sp, #0x8c]
0052b628  90 c0 8d e5                                      str ip, [sp, #0x90]
0052b62c  94 c0 8d e5                                      str ip, [sp, #0x94]
0052b630  98 c0 8d e5                                      str ip, [sp, #0x98]
0052b634  9c c0 8d e5                                      str ip, [sp, #0x9c]
0052b638  a0 c0 8d e5                                      str ip, [sp, #0xa0]
0052b63c  a4 c0 8d e5                                      str ip, [sp, #0xa4]
0052b640  a8 c0 8d e5                                      str ip, [sp, #0xa8]
0052b644  64 c0 8d e5                                      str ip, [sp, #0x64]
0052b648  68 c0 8d e5                                      str ip, [sp, #0x68]
0052b64c  6c c0 8d e5                                      str ip, [sp, #0x6c]
0052b650  70 c0 8d e5                                      str ip, [sp, #0x70]
0052b654  74 c0 8d e5                                      str ip, [sp, #0x74]
0052b658  78 c0 8d e5                                      str ip, [sp, #0x78]
0052b65c  7c c0 8d e5                                      str ip, [sp, #0x7c]
0052b660  80 c0 8d e5                                      str ip, [sp, #0x80]
0052b664  84 c0 8d e5                                      str ip, [sp, #0x84]
0052b668  28 c1 8d e5                                      str ip, [sp, #0x128]
0052b66c  2c c1 8d e5                                      str ip, [sp, #0x12c]
0052b670  30 c1 8d e5                                      str ip, [sp, #0x130]
0052b674  1c c1 8d e5                                      str ip, [sp, #0x11c]
0052b678  20 c1 8d e5                                      str ip, [sp, #0x120]
0052b67c  00 60 8d e5                                      str r6, [sp]
0052b680  08 60 8d e5                                      str r6, [sp, #8]
0052b684  12 e8 ff eb                                      bl #0x5256d4
0052b688  06 00 50 e1                                      cmp r0, r6
0052b68c  08 00 00 1a                                      bne #0x52b6b4
0052b690  00 60 a0 e3                                      mov r6, #0
0052b694  05 30 94 e7                                      ldr r3, [r4, r5]
0052b698  5c 21 9d e5                                      ldr r2, [sp, #0x15c]
0052b69c  06 00 a0 e1                                      mov r0, r6
0052b6a0  00 30 93 e5                                      ldr r3, [r3]
0052b6a4  03 00 52 e1                                      cmp r2, r3
0052b6a8  1f 03 00 1a                                      bne #0x52c32c
0052b6ac  59 df 8d e2                                      add sp, sp, #0x164
0052b6b0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0052b6b4  3c 31 9d e5                                      ldr r3, [sp, #0x13c]
0052b6b8  06 00 53 e1                                      cmp r3, r6
0052b6bc  f3 ff ff 0a                                      beq #0x52b690
0052b6c0  4e cf 8d e2                                      add ip, sp, #0x138
0052b6c4  08 00 a0 e1                                      mov r0, r8
0052b6c8  09 10 a0 e1                                      mov r1, sb
0052b6cc  47 2f 8d e2                                      add r2, sp, #0x11c
0052b6d0  64 30 8d e2                                      add r3, sp, #0x64
0052b6d4  04 c0 8d e5                                      str ip, [sp, #4]
0052b6d8  08 60 8d e5                                      str r6, [sp, #8]
0052b6dc  00 60 8d e5                                      str r6, [sp]
0052b6e0  fb e7 ff eb                                      bl #0x5256d4
0052b6e4  00 00 50 e3                                      cmp r0, #0
0052b6e8  e8 ff ff 0a                                      beq #0x52b690
0052b6ec  38 31 9d e5                                      ldr r3, [sp, #0x138]
0052b6f0  00 00 53 e3                                      cmp r3, #0
0052b6f4  e5 ff ff 0a                                      beq #0x52b690
0052b6f8  88 60 9d e5                                      ldr r6, [sp, #0x88]
0052b6fc  64 00 9d e5                                      ldr r0, [sp, #0x64]
0052b700  06 10 a0 e1                                      mov r1, r6
0052b704  20 8a f7 eb                                      bl #0x30df8c
0052b708  00 00 50 e3                                      cmp r0, #0
0052b70c  f7 01 00 1a                                      bne #0x52bef0
0052b710  98 c0 9d e5                                      ldr ip, [sp, #0x98]
0052b714  90 e0 9d e5                                      ldr lr, [sp, #0x90]
0052b718  94 30 9d e5                                      ldr r3, [sp, #0x94]
0052b71c  8c a0 9d e5                                      ldr sl, [sp, #0x8c]
0052b720  24 c0 8d e5                                      str ip, [sp, #0x24]
0052b724  2c e0 8d e5                                      str lr, [sp, #0x2c]
0052b728  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
0052b72c  28 20 8d e5                                      str r2, [sp, #0x28]
0052b730  03 10 a0 e1                                      mov r1, r3
0052b734  06 00 a0 e1                                      mov r0, r6
0052b738  19 8d f7 eb                                      bl #0x30eba4
0052b73c  3f 14 a0 e3                                      mov r1, #0x3f000000
0052b740  89 8d f7 eb                                      bl #0x30ed6c
0052b744  0a 10 a0 e1                                      mov r1, sl
0052b748  10 01 8d e5                                      str r0, [sp, #0x110]
0052b74c  24 00 9d e5                                      ldr r0, [sp, #0x24]
0052b750  13 8d f7 eb                                      bl #0x30eba4
0052b754  3f 14 a0 e3                                      mov r1, #0x3f000000
0052b758  83 8d f7 eb                                      bl #0x30ed6c
0052b75c  28 10 9d e5                                      ldr r1, [sp, #0x28]
0052b760  14 01 8d e5                                      str r0, [sp, #0x114]
0052b764  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0052b768  0d 8d f7 eb                                      bl #0x30eba4
0052b76c  3f 14 a0 e3                                      mov r1, #0x3f000000
0052b770  7d 8d f7 eb                                      bl #0x30ed6c
0052b774  11 1e 8d e2                                      add r1, sp, #0x110
0052b778  18 01 8d e5                                      str r0, [sp, #0x118]
0052b77c  3c 01 9d e5                                      ldr r0, [sp, #0x13c]
0052b780  55 c2 ff eb                                      bl #0x51c0dc
0052b784  a4 10 9d e5                                      ldr r1, [sp, #0xa4]
0052b788  00 60 a0 e1                                      mov r6, r0
0052b78c  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
0052b790  03 8d f7 eb                                      bl #0x30eba4
0052b794  3f 14 a0 e3                                      mov r1, #0x3f000000
0052b798  73 8d f7 eb                                      bl #0x30ed6c
0052b79c  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
0052b7a0  00 a0 a0 e1                                      mov sl, r0
0052b7a4  90 00 9d e5                                      ldr r0, [sp, #0x90]
0052b7a8  fd 8c f7 eb                                      bl #0x30eba4
0052b7ac  3f 14 a0 e3                                      mov r1, #0x3f000000
0052b7b0  6d 8d f7 eb                                      bl #0x30ed6c
0052b7b4  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
0052b7b8  00 30 a0 e1                                      mov r3, r0
0052b7bc  88 00 9d e5                                      ldr r0, [sp, #0x88]
0052b7c0  14 30 8d e5                                      str r3, [sp, #0x14]
0052b7c4  f6 8c f7 eb                                      bl #0x30eba4
0052b7c8  3f 14 a0 e3                                      mov r1, #0x3f000000
0052b7cc  66 8d f7 eb                                      bl #0x30ed6c
0052b7d0  14 30 9d e5                                      ldr r3, [sp, #0x14]
0052b7d4  04 01 8d e5                                      str r0, [sp, #0x104]
0052b7d8  41 1f 8d e2                                      add r1, sp, #0x104
0052b7dc  3c 01 9d e5                                      ldr r0, [sp, #0x13c]
0052b7e0  0c 31 8d e5                                      str r3, [sp, #0x10c]
0052b7e4  08 a1 8d e5                                      str sl, [sp, #0x108]
0052b7e8  3b c2 ff eb                                      bl #0x51c0dc
0052b7ec  a4 10 9d e5                                      ldr r1, [sp, #0xa4]
0052b7f0  30 00 8d e5                                      str r0, [sp, #0x30]
0052b7f4  98 00 9d e5                                      ldr r0, [sp, #0x98]
0052b7f8  e9 8c f7 eb                                      bl #0x30eba4
0052b7fc  3f 14 a0 e3                                      mov r1, #0x3f000000
0052b800  59 8d f7 eb                                      bl #0x30ed6c
0052b804  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
0052b808  00 a0 a0 e1                                      mov sl, r0
0052b80c  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
0052b810  e3 8c f7 eb                                      bl #0x30eba4
0052b814  3f 14 a0 e3                                      mov r1, #0x3f000000
0052b818  53 8d f7 eb                                      bl #0x30ed6c
0052b81c  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
0052b820  00 30 a0 e1                                      mov r3, r0
0052b824  94 00 9d e5                                      ldr r0, [sp, #0x94]
0052b828  14 30 8d e5                                      str r3, [sp, #0x14]
0052b82c  dc 8c f7 eb                                      bl #0x30eba4
0052b830  3f 14 a0 e3                                      mov r1, #0x3f000000
0052b834  4c 8d f7 eb                                      bl #0x30ed6c
0052b838  14 30 9d e5                                      ldr r3, [sp, #0x14]
0052b83c  f8 00 8d e5                                      str r0, [sp, #0xf8]
0052b840  f8 10 8d e2                                      add r1, sp, #0xf8
0052b844  3c 01 9d e5                                      ldr r0, [sp, #0x13c]
0052b848  00 31 8d e5                                      str r3, [sp, #0x100]
0052b84c  fc a0 8d e5                                      str sl, [sp, #0xfc]
0052b850  21 c2 ff eb                                      bl #0x51c0dc
0052b854  74 10 9d e5                                      ldr r1, [sp, #0x74]
0052b858  00 a0 a0 e1                                      mov sl, r0
0052b85c  68 00 9d e5                                      ldr r0, [sp, #0x68]
0052b860  cf 8c f7 eb                                      bl #0x30eba4
0052b864  3f 14 a0 e3                                      mov r1, #0x3f000000
0052b868  3f 8d f7 eb                                      bl #0x30ed6c
0052b86c  78 10 9d e5                                      ldr r1, [sp, #0x78]
0052b870  00 30 a0 e1                                      mov r3, r0
0052b874  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
0052b878  14 30 8d e5                                      str r3, [sp, #0x14]
0052b87c  c8 8c f7 eb                                      bl #0x30eba4
0052b880  3f 14 a0 e3                                      mov r1, #0x3f000000
0052b884  38 8d f7 eb                                      bl #0x30ed6c
0052b888  70 10 9d e5                                      ldr r1, [sp, #0x70]
0052b88c  00 20 a0 e1                                      mov r2, r0
0052b890  64 00 9d e5                                      ldr r0, [sp, #0x64]
0052b894  18 20 8d e5                                      str r2, [sp, #0x18]
0052b898  c1 8c f7 eb                                      bl #0x30eba4
0052b89c  3f 14 a0 e3                                      mov r1, #0x3f000000
0052b8a0  31 8d f7 eb                                      bl #0x30ed6c
0052b8a4  18 20 9d e5                                      ldr r2, [sp, #0x18]
0052b8a8  14 30 9d e5                                      ldr r3, [sp, #0x14]
0052b8ac  ec 00 8d e5                                      str r0, [sp, #0xec]
0052b8b0  ec 10 8d e2                                      add r1, sp, #0xec
0052b8b4  38 01 9d e5                                      ldr r0, [sp, #0x138]
0052b8b8  f4 20 8d e5                                      str r2, [sp, #0xf4]
0052b8bc  f0 30 8d e5                                      str r3, [sp, #0xf0]
0052b8c0  05 c2 ff eb                                      bl #0x51c0dc
0052b8c4  80 10 9d e5                                      ldr r1, [sp, #0x80]
0052b8c8  2c 00 8d e5                                      str r0, [sp, #0x2c]
0052b8cc  68 00 9d e5                                      ldr r0, [sp, #0x68]
0052b8d0  b3 8c f7 eb                                      bl #0x30eba4
0052b8d4  3f 14 a0 e3                                      mov r1, #0x3f000000
0052b8d8  23 8d f7 eb                                      bl #0x30ed6c
0052b8dc  84 10 9d e5                                      ldr r1, [sp, #0x84]
0052b8e0  00 30 a0 e1                                      mov r3, r0
0052b8e4  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
0052b8e8  14 30 8d e5                                      str r3, [sp, #0x14]
0052b8ec  ac 8c f7 eb                                      bl #0x30eba4
0052b8f0  3f 14 a0 e3                                      mov r1, #0x3f000000
0052b8f4  1c 8d f7 eb                                      bl #0x30ed6c
0052b8f8  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
0052b8fc  00 20 a0 e1                                      mov r2, r0
0052b900  64 00 9d e5                                      ldr r0, [sp, #0x64]
0052b904  18 20 8d e5                                      str r2, [sp, #0x18]
0052b908  a5 8c f7 eb                                      bl #0x30eba4
0052b90c  3f 14 a0 e3                                      mov r1, #0x3f000000
0052b910  15 8d f7 eb                                      bl #0x30ed6c
0052b914  18 20 9d e5                                      ldr r2, [sp, #0x18]
0052b918  14 30 9d e5                                      ldr r3, [sp, #0x14]
0052b91c  e0 00 8d e5                                      str r0, [sp, #0xe0]
0052b920  e0 10 8d e2                                      add r1, sp, #0xe0
0052b924  38 01 9d e5                                      ldr r0, [sp, #0x138]
0052b928  e8 20 8d e5                                      str r2, [sp, #0xe8]
0052b92c  e4 30 8d e5                                      str r3, [sp, #0xe4]
0052b930  e9 c1 ff eb                                      bl #0x51c0dc
0052b934  80 10 9d e5                                      ldr r1, [sp, #0x80]
0052b938  28 00 8d e5                                      str r0, [sp, #0x28]
0052b93c  74 00 9d e5                                      ldr r0, [sp, #0x74]
0052b940  97 8c f7 eb                                      bl #0x30eba4
0052b944  3f 14 a0 e3                                      mov r1, #0x3f000000
0052b948  07 8d f7 eb                                      bl #0x30ed6c
0052b94c  84 10 9d e5                                      ldr r1, [sp, #0x84]
0052b950  00 30 a0 e1                                      mov r3, r0
0052b954  78 00 9d e5                                      ldr r0, [sp, #0x78]
0052b958  14 30 8d e5                                      str r3, [sp, #0x14]
0052b95c  90 8c f7 eb                                      bl #0x30eba4
0052b960  3f 14 a0 e3                                      mov r1, #0x3f000000
0052b964  00 8d f7 eb                                      bl #0x30ed6c
0052b968  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
0052b96c  00 20 a0 e1                                      mov r2, r0
0052b970  70 00 9d e5                                      ldr r0, [sp, #0x70]
0052b974  18 20 8d e5                                      str r2, [sp, #0x18]
0052b978  89 8c f7 eb                                      bl #0x30eba4
0052b97c  3f 14 a0 e3                                      mov r1, #0x3f000000
0052b980  f9 8c f7 eb                                      bl #0x30ed6c
0052b984  14 30 9d e5                                      ldr r3, [sp, #0x14]
0052b988  18 20 9d e5                                      ldr r2, [sp, #0x18]
0052b98c  d4 00 8d e5                                      str r0, [sp, #0xd4]
0052b990  d4 10 8d e2                                      add r1, sp, #0xd4
0052b994  38 01 9d e5                                      ldr r0, [sp, #0x138]
0052b998  d8 30 8d e5                                      str r3, [sp, #0xd8]
0052b99c  dc 20 8d e5                                      str r2, [sp, #0xdc]
0052b9a0  cd c1 ff eb                                      bl #0x51c0dc
0052b9a4  00 00 56 e3                                      cmp r6, #0
0052b9a8  24 00 8d e5                                      str r0, [sp, #0x24]
0052b9ac  6a 01 00 0a                                      beq #0x52bf5c
0052b9b0  00 10 97 e5                                      ldr r1, [r7]
0052b9b4  08 00 96 e5                                      ldr r0, [r6, #8]
0052b9b8  7b 8a f7 eb                                      bl #0x30e3ac
0052b9bc  04 10 97 e5                                      ldr r1, [r7, #4]
0052b9c0  00 30 a0 e1                                      mov r3, r0
0052b9c4  0c 00 96 e5                                      ldr r0, [r6, #0xc]
0052b9c8  14 30 8d e5                                      str r3, [sp, #0x14]
0052b9cc  76 8a f7 eb                                      bl #0x30e3ac
0052b9d0  08 10 97 e5                                      ldr r1, [r7, #8]
0052b9d4  00 20 a0 e1                                      mov r2, r0
0052b9d8  10 00 96 e5                                      ldr r0, [r6, #0x10]
0052b9dc  18 20 8d e5                                      str r2, [sp, #0x18]
0052b9e0  71 8a f7 eb                                      bl #0x30e3ac
0052b9e4  14 30 9d e5                                      ldr r3, [sp, #0x14]
0052b9e8  00 c0 a0 e1                                      mov ip, r0
0052b9ec  1c c0 8d e5                                      str ip, [sp, #0x1c]
0052b9f0  03 10 a0 e1                                      mov r1, r3
0052b9f4  03 00 a0 e1                                      mov r0, r3
0052b9f8  db 8c f7 eb                                      bl #0x30ed6c
0052b9fc  18 20 9d e5                                      ldr r2, [sp, #0x18]
0052ba00  00 30 a0 e1                                      mov r3, r0
0052ba04  14 30 8d e5                                      str r3, [sp, #0x14]
0052ba08  02 10 a0 e1                                      mov r1, r2
0052ba0c  02 00 a0 e1                                      mov r0, r2
0052ba10  d5 8c f7 eb                                      bl #0x30ed6c
0052ba14  14 30 9d e5                                      ldr r3, [sp, #0x14]
0052ba18  00 10 a0 e1                                      mov r1, r0
0052ba1c  03 00 a0 e1                                      mov r0, r3
0052ba20  5f 8c f7 eb                                      bl #0x30eba4
0052ba24  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0052ba28  00 30 a0 e1                                      mov r3, r0
0052ba2c  14 30 8d e5                                      str r3, [sp, #0x14]
0052ba30  0c 10 a0 e1                                      mov r1, ip
0052ba34  0c 00 a0 e1                                      mov r0, ip
0052ba38  cb 8c f7 eb                                      bl #0x30ed6c
0052ba3c  14 30 9d e5                                      ldr r3, [sp, #0x14]
0052ba40  00 10 a0 e1                                      mov r1, r0
0052ba44  03 00 a0 e1                                      mov r0, r3
0052ba48  55 8c f7 eb                                      bl #0x30eba4
0052ba4c  02 11 e0 e3                                      mvn r1, #0x80000000
0052ba50  02 15 41 e2                                      sub r1, r1, #0x800000
0052ba54  34 00 8d e5                                      str r0, [sp, #0x34]
0052ba58  2b 8b f7 eb                                      bl #0x30e70c
0052ba5c  00 00 50 e3                                      cmp r0, #0
0052ba60  3d 01 00 0a                                      beq #0x52bf5c
0052ba64  30 20 9d e5                                      ldr r2, [sp, #0x30]
0052ba68  00 00 52 e3                                      cmp r2, #0
0052ba6c  31 00 00 0a                                      beq #0x52bb38
0052ba70  08 00 92 e5                                      ldr r0, [r2, #8]
0052ba74  00 10 97 e5                                      ldr r1, [r7]
0052ba78  4b 8a f7 eb                                      bl #0x30e3ac
0052ba7c  30 c0 9d e5                                      ldr ip, [sp, #0x30]
0052ba80  04 10 97 e5                                      ldr r1, [r7, #4]
0052ba84  00 30 a0 e1                                      mov r3, r0
0052ba88  0c 00 9c e5                                      ldr r0, [ip, #0xc]
0052ba8c  14 30 8d e5                                      str r3, [sp, #0x14]
0052ba90  45 8a f7 eb                                      bl #0x30e3ac
0052ba94  30 e0 9d e5                                      ldr lr, [sp, #0x30]
0052ba98  08 10 97 e5                                      ldr r1, [r7, #8]
0052ba9c  00 20 a0 e1                                      mov r2, r0
0052baa0  10 00 9e e5                                      ldr r0, [lr, #0x10]
0052baa4  18 20 8d e5                                      str r2, [sp, #0x18]
0052baa8  3f 8a f7 eb                                      bl #0x30e3ac
0052baac  14 30 9d e5                                      ldr r3, [sp, #0x14]
0052bab0  00 c0 a0 e1                                      mov ip, r0
0052bab4  1c c0 8d e5                                      str ip, [sp, #0x1c]
0052bab8  03 10 a0 e1                                      mov r1, r3
0052babc  03 00 a0 e1                                      mov r0, r3
0052bac0  a9 8c f7 eb                                      bl #0x30ed6c
0052bac4  18 20 9d e5                                      ldr r2, [sp, #0x18]
0052bac8  00 30 a0 e1                                      mov r3, r0
0052bacc  14 30 8d e5                                      str r3, [sp, #0x14]
0052bad0  02 10 a0 e1                                      mov r1, r2
0052bad4  02 00 a0 e1                                      mov r0, r2
0052bad8  a3 8c f7 eb                                      bl #0x30ed6c
0052badc  14 30 9d e5                                      ldr r3, [sp, #0x14]
0052bae0  00 10 a0 e1                                      mov r1, r0
0052bae4  03 00 a0 e1                                      mov r0, r3
0052bae8  2d 8c f7 eb                                      bl #0x30eba4
0052baec  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0052baf0  00 30 a0 e1                                      mov r3, r0
0052baf4  14 30 8d e5                                      str r3, [sp, #0x14]
0052baf8  0c 10 a0 e1                                      mov r1, ip
0052bafc  0c 00 a0 e1                                      mov r0, ip
0052bb00  99 8c f7 eb                                      bl #0x30ed6c
0052bb04  14 30 9d e5                                      ldr r3, [sp, #0x14]
0052bb08  00 10 a0 e1                                      mov r1, r0
0052bb0c  03 00 a0 e1                                      mov r0, r3
0052bb10  23 8c f7 eb                                      bl #0x30eba4
0052bb14  00 30 a0 e1                                      mov r3, r0
0052bb18  03 10 a0 e1                                      mov r1, r3
0052bb1c  34 00 9d e5                                      ldr r0, [sp, #0x34]
0052bb20  14 30 8d e5                                      str r3, [sp, #0x14]
0052bb24  f3 89 f7 eb                                      bl #0x30e2f8
0052bb28  14 30 9d e5                                      ldr r3, [sp, #0x14]
0052bb2c  00 00 50 e3                                      cmp r0, #0
0052bb30  30 60 9d 15                                      ldrne r6, [sp, #0x30]
0052bb34  34 30 8d 15                                      strne r3, [sp, #0x34]
0052bb38  00 00 5a e3                                      cmp sl, #0
0052bb3c  2b 00 00 0a                                      beq #0x52bbf0
0052bb40  00 10 97 e5                                      ldr r1, [r7]
0052bb44  08 00 9a e5                                      ldr r0, [sl, #8]
0052bb48  17 8a f7 eb                                      bl #0x30e3ac
0052bb4c  04 10 97 e5                                      ldr r1, [r7, #4]
0052bb50  00 30 a0 e1                                      mov r3, r0
0052bb54  0c 00 9a e5                                      ldr r0, [sl, #0xc]
0052bb58  14 30 8d e5                                      str r3, [sp, #0x14]
0052bb5c  12 8a f7 eb                                      bl #0x30e3ac
0052bb60  08 10 97 e5                                      ldr r1, [r7, #8]
0052bb64  00 20 a0 e1                                      mov r2, r0
0052bb68  10 00 9a e5                                      ldr r0, [sl, #0x10]
0052bb6c  18 20 8d e5                                      str r2, [sp, #0x18]
0052bb70  0d 8a f7 eb                                      bl #0x30e3ac
0052bb74  14 30 9d e5                                      ldr r3, [sp, #0x14]
0052bb78  00 c0 a0 e1                                      mov ip, r0
0052bb7c  1c c0 8d e5                                      str ip, [sp, #0x1c]
0052bb80  03 10 a0 e1                                      mov r1, r3
0052bb84  03 00 a0 e1                                      mov r0, r3
0052bb88  77 8c f7 eb                                      bl #0x30ed6c
0052bb8c  18 20 9d e5                                      ldr r2, [sp, #0x18]
0052bb90  00 30 a0 e1                                      mov r3, r0
0052bb94  14 30 8d e5                                      str r3, [sp, #0x14]
0052bb98  02 10 a0 e1                                      mov r1, r2
0052bb9c  02 00 a0 e1                                      mov r0, r2
0052bba0  71 8c f7 eb                                      bl #0x30ed6c
0052bba4  14 30 9d e5                                      ldr r3, [sp, #0x14]
0052bba8  00 10 a0 e1                                      mov r1, r0
0052bbac  03 00 a0 e1                                      mov r0, r3
0052bbb0  fb 8b f7 eb                                      bl #0x30eba4
0052bbb4  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0052bbb8  00 30 a0 e1                                      mov r3, r0
0052bbbc  14 30 8d e5                                      str r3, [sp, #0x14]
0052bbc0  0c 10 a0 e1                                      mov r1, ip
0052bbc4  0c 00 a0 e1                                      mov r0, ip
0052bbc8  67 8c f7 eb                                      bl #0x30ed6c
0052bbcc  14 30 9d e5                                      ldr r3, [sp, #0x14]
0052bbd0  00 10 a0 e1                                      mov r1, r0
0052bbd4  03 00 a0 e1                                      mov r0, r3
0052bbd8  f1 8b f7 eb                                      bl #0x30eba4
0052bbdc  00 10 a0 e1                                      mov r1, r0
0052bbe0  34 00 9d e5                                      ldr r0, [sp, #0x34]
0052bbe4  c3 89 f7 eb                                      bl #0x30e2f8
0052bbe8  00 00 50 e3                                      cmp r0, #0
0052bbec  0a 60 a0 11                                      movne r6, sl
0052bbf0  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0052bbf4  00 00 52 e3                                      cmp r2, #0
0052bbf8  28 00 00 0a                                      beq #0x52bca0
0052bbfc  08 00 92 e5                                      ldr r0, [r2, #8]
0052bc00  00 10 99 e5                                      ldr r1, [sb]
0052bc04  e8 89 f7 eb                                      bl #0x30e3ac
0052bc08  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0052bc0c  00 a0 a0 e1                                      mov sl, r0
0052bc10  04 10 99 e5                                      ldr r1, [sb, #4]
0052bc14  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0052bc18  e3 89 f7 eb                                      bl #0x30e3ac
0052bc1c  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
0052bc20  00 30 a0 e1                                      mov r3, r0
0052bc24  08 10 99 e5                                      ldr r1, [sb, #8]
0052bc28  10 00 9c e5                                      ldr r0, [ip, #0x10]
0052bc2c  14 30 8d e5                                      str r3, [sp, #0x14]
0052bc30  dd 89 f7 eb                                      bl #0x30e3ac
0052bc34  0a 10 a0 e1                                      mov r1, sl
0052bc38  00 20 a0 e1                                      mov r2, r0
0052bc3c  0a 00 a0 e1                                      mov r0, sl
0052bc40  18 20 8d e5                                      str r2, [sp, #0x18]
0052bc44  48 8c f7 eb                                      bl #0x30ed6c
0052bc48  14 30 9d e5                                      ldr r3, [sp, #0x14]
0052bc4c  00 a0 a0 e1                                      mov sl, r0
0052bc50  03 10 a0 e1                                      mov r1, r3
0052bc54  03 00 a0 e1                                      mov r0, r3
0052bc58  43 8c f7 eb                                      bl #0x30ed6c
0052bc5c  00 10 a0 e1                                      mov r1, r0
0052bc60  0a 00 a0 e1                                      mov r0, sl
0052bc64  ce 8b f7 eb                                      bl #0x30eba4
0052bc68  18 20 9d e5                                      ldr r2, [sp, #0x18]
0052bc6c  00 a0 a0 e1                                      mov sl, r0
0052bc70  02 10 a0 e1                                      mov r1, r2
0052bc74  02 00 a0 e1                                      mov r0, r2
0052bc78  3b 8c f7 eb                                      bl #0x30ed6c
0052bc7c  00 10 a0 e1                                      mov r1, r0
0052bc80  0a 00 a0 e1                                      mov r0, sl
0052bc84  c6 8b f7 eb                                      bl #0x30eba4
0052bc88  02 11 e0 e3                                      mvn r1, #0x80000000
0052bc8c  02 15 41 e2                                      sub r1, r1, #0x800000
0052bc90  00 a0 a0 e1                                      mov sl, r0
0052bc94  9c 8a f7 eb                                      bl #0x30e70c
0052bc98  00 00 50 e3                                      cmp r0, #0
0052bc9c  b3 00 00 1a                                      bne #0x52bf70
0052bca0  02 21 e0 e3                                      mvn r2, #0x80000000
0052bca4  02 25 42 e2                                      sub r2, r2, #0x800000
0052bca8  30 20 8d e5                                      str r2, [sp, #0x30]
0052bcac  00 a0 a0 e3                                      mov sl, #0
0052bcb0  28 30 9d e5                                      ldr r3, [sp, #0x28]
0052bcb4  00 00 53 e3                                      cmp r3, #0
0052bcb8  31 00 00 0a                                      beq #0x52bd84
0052bcbc  00 10 99 e5                                      ldr r1, [sb]
0052bcc0  08 00 93 e5                                      ldr r0, [r3, #8]
0052bcc4  b8 89 f7 eb                                      bl #0x30e3ac
0052bcc8  28 c0 9d e5                                      ldr ip, [sp, #0x28]
0052bccc  04 10 99 e5                                      ldr r1, [sb, #4]
0052bcd0  00 30 a0 e1                                      mov r3, r0
0052bcd4  0c 00 9c e5                                      ldr r0, [ip, #0xc]
0052bcd8  14 30 8d e5                                      str r3, [sp, #0x14]
0052bcdc  b2 89 f7 eb                                      bl #0x30e3ac
0052bce0  28 e0 9d e5                                      ldr lr, [sp, #0x28]
0052bce4  08 10 99 e5                                      ldr r1, [sb, #8]
0052bce8  00 20 a0 e1                                      mov r2, r0
0052bcec  10 00 9e e5                                      ldr r0, [lr, #0x10]
0052bcf0  18 20 8d e5                                      str r2, [sp, #0x18]
0052bcf4  ac 89 f7 eb                                      bl #0x30e3ac
0052bcf8  14 30 9d e5                                      ldr r3, [sp, #0x14]
0052bcfc  00 c0 a0 e1                                      mov ip, r0
0052bd00  1c c0 8d e5                                      str ip, [sp, #0x1c]
0052bd04  03 10 a0 e1                                      mov r1, r3
0052bd08  03 00 a0 e1                                      mov r0, r3
0052bd0c  16 8c f7 eb                                      bl #0x30ed6c
0052bd10  18 20 9d e5                                      ldr r2, [sp, #0x18]
0052bd14  00 30 a0 e1                                      mov r3, r0
0052bd18  14 30 8d e5                                      str r3, [sp, #0x14]
0052bd1c  02 10 a0 e1                                      mov r1, r2
0052bd20  02 00 a0 e1                                      mov r0, r2
0052bd24  10 8c f7 eb                                      bl #0x30ed6c
0052bd28  14 30 9d e5                                      ldr r3, [sp, #0x14]
0052bd2c  00 10 a0 e1                                      mov r1, r0
0052bd30  03 00 a0 e1                                      mov r0, r3
0052bd34  9a 8b f7 eb                                      bl #0x30eba4
0052bd38  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0052bd3c  00 30 a0 e1                                      mov r3, r0
0052bd40  14 30 8d e5                                      str r3, [sp, #0x14]
0052bd44  0c 10 a0 e1                                      mov r1, ip
0052bd48  0c 00 a0 e1                                      mov r0, ip
0052bd4c  06 8c f7 eb                                      bl #0x30ed6c
0052bd50  14 30 9d e5                                      ldr r3, [sp, #0x14]
0052bd54  00 10 a0 e1                                      mov r1, r0
0052bd58  03 00 a0 e1                                      mov r0, r3
0052bd5c  90 8b f7 eb                                      bl #0x30eba4
0052bd60  00 30 a0 e1                                      mov r3, r0
0052bd64  03 10 a0 e1                                      mov r1, r3
0052bd68  30 00 9d e5                                      ldr r0, [sp, #0x30]
0052bd6c  14 30 8d e5                                      str r3, [sp, #0x14]
0052bd70  60 89 f7 eb                                      bl #0x30e2f8
0052bd74  14 30 9d e5                                      ldr r3, [sp, #0x14]
0052bd78  00 00 50 e3                                      cmp r0, #0
0052bd7c  28 a0 9d 15                                      ldrne sl, [sp, #0x28]
0052bd80  30 30 8d 15                                      strne r3, [sp, #0x30]
0052bd84  24 20 9d e5                                      ldr r2, [sp, #0x24]
0052bd88  00 00 52 e3                                      cmp r2, #0
0052bd8c  2e 00 00 0a                                      beq #0x52be4c
0052bd90  08 00 92 e5                                      ldr r0, [r2, #8]
0052bd94  00 10 99 e5                                      ldr r1, [sb]
0052bd98  83 89 f7 eb                                      bl #0x30e3ac
0052bd9c  24 c0 9d e5                                      ldr ip, [sp, #0x24]
0052bda0  04 10 99 e5                                      ldr r1, [sb, #4]
0052bda4  00 30 a0 e1                                      mov r3, r0
0052bda8  0c 00 9c e5                                      ldr r0, [ip, #0xc]
0052bdac  14 30 8d e5                                      str r3, [sp, #0x14]
0052bdb0  7d 89 f7 eb                                      bl #0x30e3ac
0052bdb4  24 e0 9d e5                                      ldr lr, [sp, #0x24]
0052bdb8  08 10 99 e5                                      ldr r1, [sb, #8]
0052bdbc  00 20 a0 e1                                      mov r2, r0
0052bdc0  10 00 9e e5                                      ldr r0, [lr, #0x10]
0052bdc4  18 20 8d e5                                      str r2, [sp, #0x18]
0052bdc8  77 89 f7 eb                                      bl #0x30e3ac
0052bdcc  14 30 9d e5                                      ldr r3, [sp, #0x14]
0052bdd0  00 c0 a0 e1                                      mov ip, r0
0052bdd4  1c c0 8d e5                                      str ip, [sp, #0x1c]
0052bdd8  03 10 a0 e1                                      mov r1, r3
0052bddc  03 00 a0 e1                                      mov r0, r3
0052bde0  e1 8b f7 eb                                      bl #0x30ed6c
0052bde4  18 20 9d e5                                      ldr r2, [sp, #0x18]
0052bde8  00 30 a0 e1                                      mov r3, r0
0052bdec  14 30 8d e5                                      str r3, [sp, #0x14]
0052bdf0  02 10 a0 e1                                      mov r1, r2
0052bdf4  02 00 a0 e1                                      mov r0, r2
0052bdf8  db 8b f7 eb                                      bl #0x30ed6c
0052bdfc  14 30 9d e5                                      ldr r3, [sp, #0x14]
0052be00  00 10 a0 e1                                      mov r1, r0
0052be04  03 00 a0 e1                                      mov r0, r3
0052be08  65 8b f7 eb                                      bl #0x30eba4
0052be0c  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0052be10  00 30 a0 e1                                      mov r3, r0
0052be14  14 30 8d e5                                      str r3, [sp, #0x14]
0052be18  0c 10 a0 e1                                      mov r1, ip
0052be1c  0c 00 a0 e1                                      mov r0, ip
0052be20  d1 8b f7 eb                                      bl #0x30ed6c
0052be24  14 30 9d e5                                      ldr r3, [sp, #0x14]
0052be28  00 10 a0 e1                                      mov r1, r0
0052be2c  03 00 a0 e1                                      mov r0, r3
0052be30  5b 8b f7 eb                                      bl #0x30eba4
0052be34  00 10 a0 e1                                      mov r1, r0
0052be38  30 00 9d e5                                      ldr r0, [sp, #0x30]
0052be3c  2d 89 f7 eb                                      bl #0x30e2f8
0052be40  24 20 9d e5                                      ldr r2, [sp, #0x24]
0052be44  00 00 50 e3                                      cmp r0, #0
0052be48  02 a0 a0 11                                      movne sl, r2
0052be4c  00 00 56 e3                                      cmp r6, #0
0052be50  00 00 5a 13                                      cmpne sl, #0
0052be54  0d fe ff 0a                                      beq #0x52b690
0052be58  0a 00 56 e1                                      cmp r6, sl
0052be5c  fb 00 00 0a                                      beq #0x52c250
0052be60  78 10 98 e5                                      ldr r1, [r8, #0x78]
0052be64  7c 20 98 e5                                      ldr r2, [r8, #0x7c]
0052be68  88 c1 9d e5                                      ldr ip, [sp, #0x188]
0052be6c  c8 60 8d e5                                      str r6, [sp, #0xc8]
0052be70  02 20 61 e0                                      rsb r2, r1, r2
0052be74  42 21 a0 e1                                      asr r2, r2, #2
0052be78  cc a0 8d e5                                      str sl, [sp, #0xcc]
0052be7c  02 31 82 e0                                      add r3, r2, r2, lsl #2
0052be80  d0 c0 8d e5                                      str ip, [sp, #0xd0]
0052be84  03 32 83 e0                                      add r3, r3, r3, lsl #4
0052be88  03 34 83 e0                                      add r3, r3, r3, lsl #8
0052be8c  03 38 83 e0                                      add r3, r3, r3, lsl #16
0052be90  83 30 82 e0                                      add r3, r2, r3, lsl #1
0052be94  01 20 53 e2                                      subs r2, r3, #1
0052be98  37 00 00 4a                                      bmi #0x52bf7c
0052be9c  0c 00 a0 e3                                      mov r0, #0xc
0052bea0  90 03 03 e0                                      mul r3, r0, r3
0052bea4  0c 30 43 e2                                      sub r3, r3, #0xc
0052bea8  02 00 00 ea                                      b #0x52beb8
0052beac  01 20 52 e2                                      subs r2, r2, #1
0052beb0  0c 30 43 e2                                      sub r3, r3, #0xc
0052beb4  30 00 00 4a                                      bmi #0x52bf7c
0052beb8  03 00 91 e7                                      ldr r0, [r1, r3]
0052bebc  03 c0 81 e0                                      add ip, r1, r3
0052bec0  00 00 56 e1                                      cmp r6, r0
0052bec4  f8 ff ff 1a                                      bne #0x52beac
0052bec8  04 00 9c e5                                      ldr r0, [ip, #4]
0052becc  00 00 5a e1                                      cmp sl, r0
0052bed0  f5 ff ff 1a                                      bne #0x52beac
0052bed4  08 00 9c e5                                      ldr r0, [ip, #8]
0052bed8  88 91 9d e5                                      ldr sb, [sp, #0x188]
0052bedc  00 00 59 e1                                      cmp sb, r0
0052bee0  f1 ff ff 1a                                      bne #0x52beac
0052bee4  e9 fd ff ea                                      b #0x52b690
0052bee8  54 91 f7 eb                                      bl #0x310440
0052beec  c0 fd ff ea                                      b #0x52b5f4
0052bef0  8c a0 9d e5                                      ldr sl, [sp, #0x8c]
0052bef4  68 00 9d e5                                      ldr r0, [sp, #0x68]
0052bef8  0a 10 a0 e1                                      mov r1, sl
0052befc  22 88 f7 eb                                      bl #0x30df8c
0052bf00  00 00 50 e3                                      cmp r0, #0
0052bf04  0c 00 00 0a                                      beq #0x52bf3c
0052bf08  90 20 9d e5                                      ldr r2, [sp, #0x90]
0052bf0c  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
0052bf10  02 10 a0 e1                                      mov r1, r2
0052bf14  2c 20 8d e5                                      str r2, [sp, #0x2c]
0052bf18  1b 88 f7 eb                                      bl #0x30df8c
0052bf1c  00 00 50 e3                                      cmp r0, #0
0052bf20  57 00 00 1a                                      bne #0x52c084
0052bf24  98 c0 9d e5                                      ldr ip, [sp, #0x98]
0052bf28  9c e0 9d e5                                      ldr lr, [sp, #0x9c]
0052bf2c  94 30 9d e5                                      ldr r3, [sp, #0x94]
0052bf30  24 c0 8d e5                                      str ip, [sp, #0x24]
0052bf34  28 e0 8d e5                                      str lr, [sp, #0x28]
0052bf38  fc fd ff ea                                      b #0x52b730
0052bf3c  98 20 9d e5                                      ldr r2, [sp, #0x98]
0052bf40  90 c0 9d e5                                      ldr ip, [sp, #0x90]
0052bf44  9c e0 9d e5                                      ldr lr, [sp, #0x9c]
0052bf48  94 30 9d e5                                      ldr r3, [sp, #0x94]
0052bf4c  24 20 8d e5                                      str r2, [sp, #0x24]
0052bf50  2c c0 8d e5                                      str ip, [sp, #0x2c]
0052bf54  28 e0 8d e5                                      str lr, [sp, #0x28]
0052bf58  f4 fd ff ea                                      b #0x52b730
0052bf5c  02 c1 e0 e3                                      mvn ip, #0x80000000
0052bf60  02 c5 4c e2                                      sub ip, ip, #0x800000
0052bf64  34 c0 8d e5                                      str ip, [sp, #0x34]
0052bf68  00 60 a0 e3                                      mov r6, #0
0052bf6c  bc fe ff ea                                      b #0x52ba64
0052bf70  30 a0 8d e5                                      str sl, [sp, #0x30]
0052bf74  2c a0 9d e5                                      ldr sl, [sp, #0x2c]
0052bf78  4c ff ff ea                                      b #0x52bcb0
0052bf7c  bc 23 9f e5                                      ldr r2, [pc, #0x3bc]
0052bf80  20 30 9d e5                                      ldr r3, [sp, #0x20]
0052bf84  48 10 98 e5                                      ldr r1, [r8, #0x48]
0052bf88  02 20 94 e7                                      ldr r2, [r4, r2]
0052bf8c  3c 70 8d e2                                      add r7, sp, #0x3c
0052bf90  00 00 53 e3                                      cmp r3, #0
0052bf94  08 20 82 e2                                      add r2, r2, #8
0052bf98  08 30 87 e2                                      add r3, r7, #8
0052bf9c  3c 20 8d e5                                      str r2, [sp, #0x3c]
0052bfa0  40 10 8d e5                                      str r1, [sp, #0x40]
0052bfa4  4c 30 8d e5                                      str r3, [sp, #0x4c]
0052bfa8  44 30 8d e5                                      str r3, [sp, #0x44]
0052bfac  48 30 8d e5                                      str r3, [sp, #0x48]
0052bfb0  bc 00 00 0a                                      beq #0x52c2a8
0052bfb4  00 30 96 e5                                      ldr r3, [r6]
0052bfb8  06 00 a0 e1                                      mov r0, r6
0052bfbc  0f e0 a0 e1                                      mov lr, pc
0052bfc0  00 f0 93 e5                                      ldr pc, [r3]
0052bfc4  78 33 9f e5                                      ldr r3, [pc, #0x378]
0052bfc8  00 10 a0 e1                                      mov r1, r0
0052bfcc  ac e0 8d e2                                      add lr, sp, #0xac
0052bfd0  03 30 94 e7                                      ldr r3, [r4, r3]
0052bfd4  6c c3 9f e5                                      ldr ip, [pc, #0x36c]
0052bfd8  04 20 93 e5                                      ldr r2, [r3, #4]
0052bfdc  08 00 93 e5                                      ldr r0, [r3, #8]
0052bfe0  14 90 93 e5                                      ldr sb, [r3, #0x14]
0052bfe4  18 20 12 e5                                      ldr r2, [r2, #-0x18]
0052bfe8  10 60 93 e5                                      ldr r6, [r3, #0x10]
0052bfec  34 90 8d e5                                      str sb, [sp, #0x34]
0052bff0  02 00 8e e7                                      str r0, [lr, r2]
0052bff4  b0 a0 8d e5                                      str sl, [sp, #0xb0]
0052bff8  18 20 16 e5                                      ldr r2, [r6, #-0x18]
0052bffc  0c 90 93 e5                                      ldr sb, [r3, #0xc]
0052c000  18 a0 93 e5                                      ldr sl, [r3, #0x18]
0052c004  34 30 9d e5                                      ldr r3, [sp, #0x34]
0052c008  02 20 8e e0                                      add r2, lr, r2
0052c00c  0c c0 94 e7                                      ldr ip, [r4, ip]
0052c010  08 30 82 e5                                      str r3, [r2, #8]
0052c014  18 00 19 e5                                      ldr r0, [sb, #-0x18]
0052c018  0e 20 a0 e1                                      mov r2, lr
0052c01c  88 31 9d e5                                      ldr r3, [sp, #0x188]
0052c020  00 e0 8e e0                                      add lr, lr, r0
0052c024  08 a0 8e e5                                      str sl, [lr, #8]
0052c028  20 90 9d e5                                      ldr sb, [sp, #0x20]
0052c02c  3c 60 8c e2                                      add r6, ip, #0x3c
0052c030  07 00 a0 e1                                      mov r0, r7
0052c034  18 c0 8c e2                                      add ip, ip, #0x18
0052c038  b4 60 8d e5                                      str r6, [sp, #0xb4]
0052c03c  b8 90 8d e5                                      str sb, [sp, #0xb8]
0052c040  ac c0 8d e5                                      str ip, [sp, #0xac]
0052c044  00 b0 8d e5                                      str fp, [sp]
0052c048  3f fb ff eb                                      bl #0x52ad4c
0052c04c  00 60 a0 e1                                      mov r6, r0
0052c050  00 00 56 e3                                      cmp r6, #0
0052c054  79 00 00 0a                                      beq #0x52c240
0052c058  00 00 5b e3                                      cmp fp, #0
0052c05c  05 00 00 0a                                      beq #0x52c078
0052c060  00 00 56 e3                                      cmp r6, #0
0052c064  55 00 00 1a                                      bne #0x52c1c0
0052c068  16 1e 8d e2                                      add r1, sp, #0x160
0052c06c  2c 60 21 e5                                      str r6, [r1, #-0x2c]!
0052c070  0b 00 a0 e1                                      mov r0, fp
0052c074  8a fa ff eb                                      bl #0x52aaa4
0052c078  07 00 a0 e1                                      mov r0, r7
0052c07c  c2 f7 ff eb                                      bl #0x529f8c
0052c080  83 fd ff ea                                      b #0x52b694
0052c084  94 30 9d e5                                      ldr r3, [sp, #0x94]
0052c088  70 00 9d e5                                      ldr r0, [sp, #0x70]
0052c08c  03 10 a0 e1                                      mov r1, r3
0052c090  14 30 8d e5                                      str r3, [sp, #0x14]
0052c094  bc 87 f7 eb                                      bl #0x30df8c
0052c098  00 00 50 e3                                      cmp r0, #0
0052c09c  14 30 9d e5                                      ldr r3, [sp, #0x14]
0052c0a0  04 00 00 1a                                      bne #0x52c0b8
0052c0a4  98 20 9d e5                                      ldr r2, [sp, #0x98]
0052c0a8  9c c0 9d e5                                      ldr ip, [sp, #0x9c]
0052c0ac  24 20 8d e5                                      str r2, [sp, #0x24]
0052c0b0  28 c0 8d e5                                      str ip, [sp, #0x28]
0052c0b4  9d fd ff ea                                      b #0x52b730
0052c0b8  98 e0 9d e5                                      ldr lr, [sp, #0x98]
0052c0bc  74 00 9d e5                                      ldr r0, [sp, #0x74]
0052c0c0  14 30 8d e5                                      str r3, [sp, #0x14]
0052c0c4  0e 10 a0 e1                                      mov r1, lr
0052c0c8  24 e0 8d e5                                      str lr, [sp, #0x24]
0052c0cc  ae 87 f7 eb                                      bl #0x30df8c
0052c0d0  00 00 50 e3                                      cmp r0, #0
0052c0d4  14 30 9d e5                                      ldr r3, [sp, #0x14]
0052c0d8  92 fd ff 0a                                      beq #0x52b728
0052c0dc  9c c0 9d e5                                      ldr ip, [sp, #0x9c]
0052c0e0  78 00 9d e5                                      ldr r0, [sp, #0x78]
0052c0e4  14 30 8d e5                                      str r3, [sp, #0x14]
0052c0e8  0c 10 a0 e1                                      mov r1, ip
0052c0ec  28 c0 8d e5                                      str ip, [sp, #0x28]
0052c0f0  a5 87 f7 eb                                      bl #0x30df8c
0052c0f4  00 00 50 e3                                      cmp r0, #0
0052c0f8  14 30 9d e5                                      ldr r3, [sp, #0x14]
0052c0fc  8b fd ff 0a                                      beq #0x52b730
0052c100  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
0052c104  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
0052c108  9f 87 f7 eb                                      bl #0x30df8c
0052c10c  00 00 50 e3                                      cmp r0, #0
0052c110  14 30 9d e5                                      ldr r3, [sp, #0x14]
0052c114  85 fd ff 0a                                      beq #0x52b730
0052c118  80 00 9d e5                                      ldr r0, [sp, #0x80]
0052c11c  a4 10 9d e5                                      ldr r1, [sp, #0xa4]
0052c120  99 87 f7 eb                                      bl #0x30df8c
0052c124  00 00 50 e3                                      cmp r0, #0
0052c128  14 30 9d e5                                      ldr r3, [sp, #0x14]
0052c12c  7f fd ff 0a                                      beq #0x52b730
0052c130  84 00 9d e5                                      ldr r0, [sp, #0x84]
0052c134  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
0052c138  93 87 f7 eb                                      bl #0x30df8c
0052c13c  00 00 50 e3                                      cmp r0, #0
0052c140  14 30 9d e5                                      ldr r3, [sp, #0x14]
0052c144  79 fd ff 0a                                      beq #0x52b730
0052c148  20 20 9d e5                                      ldr r2, [sp, #0x20]
0052c14c  00 00 5b e3                                      cmp fp, #0
0052c150  00 00 52 13                                      cmpne r2, #0
0052c154  01 00 00 1a                                      bne #0x52c160
0052c158  01 60 a0 e3                                      mov r6, #1
0052c15c  4c fd ff ea                                      b #0x52b694
0052c160  00 30 97 e5                                      ldr r3, [r7]
0052c164  0b 00 a0 e1                                      mov r0, fp
0052c168  01 60 a0 e3                                      mov r6, #1
0052c16c  64 30 82 e5                                      str r3, [r2, #0x64]
0052c170  04 30 97 e5                                      ldr r3, [r7, #4]
0052c174  68 30 82 e5                                      str r3, [r2, #0x68]
0052c178  08 30 97 e5                                      ldr r3, [r7, #8]
0052c17c  6c 30 82 e5                                      str r3, [r2, #0x6c]
0052c180  00 30 99 e5                                      ldr r3, [sb]
0052c184  70 30 82 e5                                      str r3, [r2, #0x70]
0052c188  04 30 99 e5                                      ldr r3, [sb, #4]
0052c18c  74 30 82 e5                                      str r3, [r2, #0x74]
0052c190  08 30 99 e5                                      ldr r3, [sb, #8]
0052c194  78 30 82 e5                                      str r3, [r2, #0x78]
0052c198  39 fa ff eb                                      bl #0x52aa84
0052c19c  20 90 9d e5                                      ldr sb, [sp, #0x20]
0052c1a0  4c 30 89 e2                                      add r3, sb, #0x4c
0052c1a4  08 30 80 e5                                      str r3, [r0, #8]
0052c1a8  04 30 9b e5                                      ldr r3, [fp, #4]
0052c1ac  00 b0 80 e5                                      str fp, [r0]
0052c1b0  04 30 80 e5                                      str r3, [r0, #4]
0052c1b4  00 00 83 e5                                      str r0, [r3]
0052c1b8  04 00 8b e5                                      str r0, [fp, #4]
0052c1bc  34 fd ff ea                                      b #0x52b694
0052c1c0  00 30 9b e5                                      ldr r3, [fp]
0052c1c4  0b 00 53 e1                                      cmp r3, fp
0052c1c8  aa ff ff 0a                                      beq #0x52c078
0052c1cc  00 20 a0 e3                                      mov r2, #0
0052c1d0  00 30 93 e5                                      ldr r3, [r3]
0052c1d4  01 20 82 e2                                      add r2, r2, #1
0052c1d8  03 00 5b e1                                      cmp fp, r3
0052c1dc  fb ff ff 1a                                      bne #0x52c1d0
0052c1e0  01 00 52 e3                                      cmp r2, #1
0052c1e4  a3 ff ff 9a                                      bls #0x52c078
0052c1e8  04 30 9b e5                                      ldr r3, [fp, #4]
0052c1ec  08 30 93 e5                                      ldr r3, [r3, #8]
0052c1f0  03 00 a0 e1                                      mov r0, r3
0052c1f4  00 30 93 e5                                      ldr r3, [r3]
0052c1f8  0f e0 a0 e1                                      mov lr, pc
0052c1fc  04 f0 93 e5                                      ldr pc, [r3, #4]
0052c200  28 c0 9d e5                                      ldr ip, [sp, #0x28]
0052c204  2c e0 9d e5                                      ldr lr, [sp, #0x2c]
0052c208  00 00 5e e1                                      cmp lr, r0
0052c20c  00 00 5c 11                                      cmpne ip, r0
0052c210  02 00 00 0a                                      beq #0x52c220
0052c214  24 20 9d e5                                      ldr r2, [sp, #0x24]
0052c218  00 00 52 e1                                      cmp r2, r0
0052c21c  95 ff ff 1a                                      bne #0x52c078
0052c220  04 00 9b e5                                      ldr r0, [fp, #4]
0052c224  0c 10 a0 e3                                      mov r1, #0xc
0052c228  00 30 90 e5                                      ldr r3, [r0]
0052c22c  04 20 90 e5                                      ldr r2, [r0, #4]
0052c230  00 30 82 e5                                      str r3, [r2]
0052c234  04 20 83 e5                                      str r2, [r3, #4]
0052c238  41 be f7 eb                                      bl #0x31bb44
0052c23c  8d ff ff ea                                      b #0x52c078
0052c240  78 00 88 e2                                      add r0, r8, #0x78
0052c244  c8 10 8d e2                                      add r1, sp, #0xc8
0052c248  ad f8 ff eb                                      bl #0x52a504
0052c24c  81 ff ff ea                                      b #0x52c058
0052c250  20 30 9d e5                                      ldr r3, [sp, #0x20]
0052c254  00 00 5b e3                                      cmp fp, #0
0052c258  00 00 53 13                                      cmpne r3, #0
0052c25c  bd ff ff 0a                                      beq #0x52c158
0052c260  00 30 97 e5                                      ldr r3, [r7]
0052c264  20 a0 9d e5                                      ldr sl, [sp, #0x20]
0052c268  0b 00 a0 e1                                      mov r0, fp
0052c26c  01 60 a0 e3                                      mov r6, #1
0052c270  64 30 8a e5                                      str r3, [sl, #0x64]
0052c274  04 30 97 e5                                      ldr r3, [r7, #4]
0052c278  68 30 8a e5                                      str r3, [sl, #0x68]
0052c27c  08 30 97 e5                                      ldr r3, [r7, #8]
0052c280  6c 30 8a e5                                      str r3, [sl, #0x6c]
0052c284  00 30 99 e5                                      ldr r3, [sb]
0052c288  70 30 8a e5                                      str r3, [sl, #0x70]
0052c28c  04 30 99 e5                                      ldr r3, [sb, #4]
0052c290  74 30 8a e5                                      str r3, [sl, #0x74]
0052c294  08 30 99 e5                                      ldr r3, [sb, #8]
0052c298  78 30 8a e5                                      str r3, [sl, #0x78]
0052c29c  f8 f9 ff eb                                      bl #0x52aa84
0052c2a0  4c 30 8a e2                                      add r3, sl, #0x4c
0052c2a4  be ff ff ea                                      b #0x52c1a4
0052c2a8  00 30 96 e5                                      ldr r3, [r6]
0052c2ac  06 00 a0 e1                                      mov r0, r6
0052c2b0  0f e0 a0 e1                                      mov lr, pc
0052c2b4  00 f0 93 e5                                      ldr pc, [r3]
0052c2b8  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
0052c2bc  00 10 a0 e1                                      mov r1, r0
0052c2c0  bc e0 8d e2                                      add lr, sp, #0xbc
0052c2c4  03 30 94 e7                                      ldr r3, [r4, r3]
0052c2c8  80 c0 9f e5                                      ldr ip, [pc, #0x80]
0052c2cc  04 20 93 e5                                      ldr r2, [r3, #4]
0052c2d0  08 00 93 e5                                      ldr r0, [r3, #8]
0052c2d4  0c 90 93 e5                                      ldr sb, [r3, #0xc]
0052c2d8  18 20 12 e5                                      ldr r2, [r2, #-0x18]
0052c2dc  10 30 93 e5                                      ldr r3, [r3, #0x10]
0052c2e0  0c c0 94 e7                                      ldr ip, [r4, ip]
0052c2e4  20 30 8d e5                                      str r3, [sp, #0x20]
0052c2e8  02 00 8e e7                                      str r0, [lr, r2]
0052c2ec  c0 a0 8d e5                                      str sl, [sp, #0xc0]
0052c2f0  18 00 19 e5                                      ldr r0, [sb, #-0x18]
0052c2f4  20 a0 9d e5                                      ldr sl, [sp, #0x20]
0052c2f8  0e 20 a0 e1                                      mov r2, lr
0052c2fc  00 e0 8e e0                                      add lr, lr, r0
0052c300  3c 60 8c e2                                      add r6, ip, #0x3c
0052c304  88 31 9d e5                                      ldr r3, [sp, #0x188]
0052c308  18 c0 8c e2                                      add ip, ip, #0x18
0052c30c  08 a0 8e e5                                      str sl, [lr, #8]
0052c310  07 00 a0 e1                                      mov r0, r7
0052c314  c4 60 8d e5                                      str r6, [sp, #0xc4]
0052c318  bc c0 8d e5                                      str ip, [sp, #0xbc]
0052c31c  00 b0 8d e5                                      str fp, [sp]
0052c320  89 fa ff eb                                      bl #0x52ad4c
0052c324  00 60 a0 e1                                      mov r6, r0
0052c328  48 ff ff ea                                      b #0x52c050
0052c32c  f7 87 f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0052c330  20 95 46 00 ac 40 00 00 84 08 00 00 10 16 3b 00  .byte 0x20, 0x95, 0x46, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x10, 0x16, 0x3b, 0x00
0052c340  1c 10 00 00 40 4b 00 00 e8 33 00 00 30 2d 00 00  .byte 0x1c, 0x10, 0x00, 0x00, 0x40, 0x4b, 0x00, 0x00, 0xe8, 0x33, 0x00, 0x00, 0x30, 0x2d, 0x00, 0x00
0052c350  10 46 00 00                                      .byte 0x10, 0x46, 0x00, 0x00

; FUNCTION 0x0052c354, declared_size=52, range_size=52, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld12HasValidPathERK7Point3DIfES3_j
; demangled: PFWorld::HasValidPath(Point3D<float> const&, Point3D<float> const&, unsigned int)
; decoder-mode: arm
0052c354  10 40 2d e9                                      push {r4, lr}
0052c358  00 c0 a0 e3                                      mov ip, #0
0052c35c  08 d0 4d e2                                      sub sp, sp, #8
0052c360  01 40 a0 e1                                      mov r4, r1
0052c364  02 e0 a0 e1                                      mov lr, r2
0052c368  00 30 8d e5                                      str r3, [sp]
0052c36c  0c 10 a0 e1                                      mov r1, ip
0052c370  04 20 a0 e1                                      mov r2, r4
0052c374  0e 30 a0 e1                                      mov r3, lr
0052c378  04 c0 8d e5                                      str ip, [sp, #4]
0052c37c  77 fc ff eb                                      bl #0x52b560
0052c380  08 d0 8d e2                                      add sp, sp, #8
0052c384  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0052c388, declared_size=40, range_size=40, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld12HasValidPathERK8PFObjectRK7Point3DIfEj
; demangled: PFWorld::HasValidPath(PFObject const&, Point3D<float> const&, unsigned int)
; decoder-mode: arm
0052c388  04 e0 2d e5                                      str lr, [sp, #-4]!
0052c38c  0c d0 4d e2                                      sub sp, sp, #0xc
0052c390  00 30 8d e5                                      str r3, [sp]
0052c394  00 c0 a0 e3                                      mov ip, #0
0052c398  02 30 a0 e1                                      mov r3, r2
0052c39c  18 20 81 e2                                      add r2, r1, #0x18
0052c3a0  04 c0 8d e5                                      str ip, [sp, #4]
0052c3a4  6d fc ff eb                                      bl #0x52b560
0052c3a8  0c d0 8d e2                                      add sp, sp, #0xc
0052c3ac  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0052cb90, declared_size=2400, range_size=2400, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld12_SearchGraphEPK8PFObjectRK7Point3DIfERKN3sfc4math5graph5ITestI12PFGInnerEdge12PFGInnerNodeEEj
; demangled: PFWorld::_SearchGraph(PFObject const*, Point3D<float> const&, sfc::math::graph::ITest<PFGInnerEdge, PFGInnerNode> const&, unsigned int)
; decoder-mode: arm
0052cb90  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0052cb94  40 49 9f e5                                      ldr r4, [pc, #0x940]
0052cb98  40 c9 9f e5                                      ldr ip, [pc, #0x940]
0052cb9c  49 df 4d e2                                      sub sp, sp, #0x124
0052cba0  04 40 8f e0                                      add r4, pc, r4
0052cba4  38 e9 9f e5                                      ldr lr, [pc, #0x938]
0052cba8  28 c0 8d e5                                      str ip, [sp, #0x28]
0052cbac  0c c0 94 e7                                      ldr ip, [r4, ip]
0052cbb0  0e 60 94 e7                                      ldr r6, [r4, lr]
0052cbb4  14 40 8d e5                                      str r4, [sp, #0x14]
0052cbb8  00 c0 9c e5                                      ldr ip, [ip]
0052cbbc  00 40 a0 e1                                      mov r4, r0
0052cbc0  06 00 a0 e1                                      mov r0, r6
0052cbc4  03 50 a0 e1                                      mov r5, r3
0052cbc8  1c c1 8d e5                                      str ip, [sp, #0x11c]
0052cbcc  01 80 a0 e1                                      mov r8, r1
0052cbd0  02 a0 a0 e1                                      mov sl, r2
0052cbd4  2b 2b f8 eb                                      bl #0x337888
0052cbd8  08 19 9f e5                                      ldr r1, [pc, #0x908]
0052cbdc  41 7f 8d e2                                      add r7, sp, #0x104
0052cbe0  01 2c 8d e2                                      add r2, sp, #0x100
0052cbe4  01 10 8f e0                                      add r1, pc, r1
0052cbe8  07 00 a0 e1                                      mov r0, r7
0052cbec  3e 9d f7 eb                                      bl #0x3140ec
0052cbf0  06 00 a0 e1                                      mov r0, r6
0052cbf4  07 10 a0 e1                                      mov r1, r7
0052cbf8  b2 2c f8 eb                                      bl #0x337ec8
0052cbfc  00 60 a0 e1                                      mov r6, r0
0052cc00  18 01 9d e5                                      ldr r0, [sp, #0x118]
0052cc04  07 00 50 e1                                      cmp r0, r7
0052cc08  06 00 00 0a                                      beq #0x52cc28
0052cc0c  00 00 50 e3                                      cmp r0, #0
0052cc10  04 00 00 0a                                      beq #0x52cc28
0052cc14  04 11 9d e5                                      ldr r1, [sp, #0x104]
0052cc18  01 10 60 e0                                      rsb r1, r0, r1
0052cc1c  80 00 51 e3                                      cmp r1, #0x80
0052cc20  2a 02 00 8a                                      bhi #0x52d4d0
0052cc24  b5 70 07 eb                                      bl #0x708f00
0052cc28  00 00 56 e3                                      cmp r6, #0
0052cc2c  03 01 00 0a                                      beq #0x52d040
0052cc30  00 00 58 e3                                      cmp r8, #0
0052cc34  20 02 00 0a                                      beq #0x52d4bc
0052cc38  08 10 a0 e1                                      mov r1, r8
0052cc3c  04 00 a0 e1                                      mov r0, r4
0052cc40  96 f0 ff eb                                      bl #0x528ea0
0052cc44  00 30 a0 e1                                      mov r3, r0
0052cc48  00 00 53 e3                                      cmp r3, #0
0052cc4c  fb 00 00 0a                                      beq #0x52d040
0052cc50  94 e8 9f e5                                      ldr lr, [pc, #0x894]
0052cc54  14 20 9d e5                                      ldr r2, [sp, #0x14]
0052cc58  3c 80 8d e2                                      add r8, sp, #0x3c
0052cc5c  24 e0 8d e5                                      str lr, [sp, #0x24]
0052cc60  0e 10 92 e7                                      ldr r1, [r2, lr]
0052cc64  48 00 94 e5                                      ldr r0, [r4, #0x48]
0052cc68  08 20 88 e2                                      add r2, r8, #8
0052cc6c  08 10 81 e2                                      add r1, r1, #8
0052cc70  40 00 8d e5                                      str r0, [sp, #0x40]
0052cc74  3c 10 8d e5                                      str r1, [sp, #0x3c]
0052cc78  4c 20 8d e5                                      str r2, [sp, #0x4c]
0052cc7c  44 20 8d e5                                      str r2, [sp, #0x44]
0052cc80  48 20 8d e5                                      str r2, [sp, #0x48]
0052cc84  03 00 a0 e1                                      mov r0, r3
0052cc88  00 30 93 e5                                      ldr r3, [r3]
0052cc8c  0f e0 a0 e1                                      mov lr, pc
0052cc90  00 f0 93 e5                                      ldr pc, [r3]
0052cc94  40 c0 9d e5                                      ldr ip, [sp, #0x40]
0052cc98  08 30 9c e5                                      ldr r3, [ip, #8]
0052cc9c  04 c0 8c e2                                      add ip, ip, #4
0052cca0  00 00 53 e3                                      cmp r3, #0
0052cca4  f0 00 00 0a                                      beq #0x52d06c
0052cca8  0c 10 a0 e1                                      mov r1, ip
0052ccac  01 00 00 ea                                      b #0x52ccb8
0052ccb0  03 10 a0 e1                                      mov r1, r3
0052ccb4  02 30 a0 e1                                      mov r3, r2
0052ccb8  10 20 93 e5                                      ldr r2, [r3, #0x10]
0052ccbc  02 00 50 e1                                      cmp r0, r2
0052ccc0  0c 20 93 85                                      ldrhi r2, [r3, #0xc]
0052ccc4  08 20 93 95                                      ldrls r2, [r3, #8]
0052ccc8  01 30 a0 81                                      movhi r3, r1
0052cccc  00 00 52 e3                                      cmp r2, #0
0052ccd0  f6 ff ff 1a                                      bne #0x52ccb0
0052ccd4  03 00 5c e1                                      cmp ip, r3
0052ccd8  e5 00 00 0a                                      beq #0x52d074
0052ccdc  10 20 93 e5                                      ldr r2, [r3, #0x10]
0052cce0  02 00 50 e1                                      cmp r0, r2
0052cce4  e0 00 00 3a                                      blo #0x52d06c
0052cce8  03 00 5c e1                                      cmp ip, r3
0052ccec  e0 00 00 0a                                      beq #0x52d074
0052ccf0  14 30 93 e5                                      ldr r3, [r3, #0x14]
0052ccf4  08 a0 88 e2                                      add sl, r8, #8
0052ccf8  00 70 a0 e3                                      mov r7, #0
0052ccfc  0a 00 a0 e1                                      mov r0, sl
0052cd00  10 30 8d e5                                      str r3, [sp, #0x10]
0052cd04  50 70 cd e5                                      strb r7, [sp, #0x50]
0052cd08  8f f4 ff eb                                      bl #0x529f4c
0052cd0c  10 30 9d e5                                      ldr r3, [sp, #0x10]
0052cd10  54 70 8d e5                                      str r7, [sp, #0x54]
0052cd14  58 70 8d e5                                      str r7, [sp, #0x58]
0052cd18  07 00 53 e1                                      cmp r3, r7
0052cd1c  5c 70 8d e5                                      str r7, [sp, #0x5c]
0052cd20  60 70 8d e5                                      str r7, [sp, #0x60]
0052cd24  da 00 00 0a                                      beq #0x52d094
0052cd28  12 6e 8d e2                                      add r6, sp, #0x120
0052cd2c  bc 70 66 e5                                      strb r7, [r6, #-0xbc]!
0052cd30  e0 40 8d e2                                      add r4, sp, #0xe0
0052cd34  03 c0 a0 e1                                      mov ip, r3
0052cd38  4c a0 8d e5                                      str sl, [sp, #0x4c]
0052cd3c  74 70 8d e5                                      str r7, [sp, #0x74]
0052cd40  e0 40 8d e5                                      str r4, [sp, #0xe0]
0052cd44  e4 40 8d e5                                      str r4, [sp, #0xe4]
0052cd48  ac 70 8d e5                                      str r7, [sp, #0xac]
0052cd4c  b0 70 8d e5                                      str r7, [sp, #0xb0]
0052cd50  b4 70 8d e5                                      str r7, [sp, #0xb4]
0052cd54  68 70 8d e5                                      str r7, [sp, #0x68]
0052cd58  6c 60 8d e5                                      str r6, [sp, #0x6c]
0052cd5c  70 60 8d e5                                      str r6, [sp, #0x70]
0052cd60  0c 00 a0 e1                                      mov r0, ip
0052cd64  00 30 93 e5                                      ldr r3, [r3]
0052cd68  0f e0 a0 e1                                      mov lr, pc
0052cd6c  00 f0 93 e5                                      ldr pc, [r3]
0052cd70  68 c0 9d e5                                      ldr ip, [sp, #0x68]
0052cd74  00 e0 a0 e1                                      mov lr, r0
0052cd78  07 00 5c e1                                      cmp ip, r7
0052cd7c  06 c0 a0 01                                      moveq ip, r6
0052cd80  0f 00 00 0a                                      beq #0x52cdc4
0052cd84  06 20 a0 e1                                      mov r2, r6
0052cd88  01 00 00 ea                                      b #0x52cd94
0052cd8c  0c 20 a0 e1                                      mov r2, ip
0052cd90  03 c0 a0 e1                                      mov ip, r3
0052cd94  10 30 9c e5                                      ldr r3, [ip, #0x10]
0052cd98  03 00 5e e1                                      cmp lr, r3
0052cd9c  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
0052cda0  08 30 9c 95                                      ldrls r3, [ip, #8]
0052cda4  02 c0 a0 81                                      movhi ip, r2
0052cda8  00 00 53 e3                                      cmp r3, #0
0052cdac  f6 ff ff 1a                                      bne #0x52cd8c
0052cdb0  06 00 5c e1                                      cmp ip, r6
0052cdb4  02 00 00 0a                                      beq #0x52cdc4
0052cdb8  10 30 9c e5                                      ldr r3, [ip, #0x10]
0052cdbc  03 00 5e e1                                      cmp lr, r3
0052cdc0  0c 00 00 2a                                      bhs #0x52cdf8
0052cdc4  00 70 a0 e3                                      mov r7, #0
0052cdc8  fc c0 8d e5                                      str ip, [sp, #0xfc]
0052cdcc  f8 00 8d e2                                      add r0, sp, #0xf8
0052cdd0  00 c0 a0 e3                                      mov ip, #0
0052cdd4  06 10 a0 e1                                      mov r1, r6
0052cdd8  fc 20 8d e2                                      add r2, sp, #0xfc
0052cddc  9c 30 8d e2                                      add r3, sp, #0x9c
0052cde0  a0 c0 8d e5                                      str ip, [sp, #0xa0]
0052cde4  9c e0 8d e5                                      str lr, [sp, #0x9c]
0052cde8  a8 70 8d e5                                      str r7, [sp, #0xa8]
0052cdec  a4 70 8d e5                                      str r7, [sp, #0xa4]
0052cdf0  2d fe ff eb                                      bl #0x52c6ac
0052cdf4  f8 c0 9d e5                                      ldr ip, [sp, #0xf8]
0052cdf8  00 a0 a0 e3                                      mov sl, #0
0052cdfc  00 30 a0 e3                                      mov r3, #0
0052ce00  14 30 8c e5                                      str r3, [ip, #0x14]
0052ce04  1c a0 8c e5                                      str sl, [ip, #0x1c]
0052ce08  18 a0 8c e5                                      str sl, [ip, #0x18]
0052ce0c  10 90 9d e5                                      ldr sb, [sp, #0x10]
0052ce10  ac e0 8d e2                                      add lr, sp, #0xac
0052ce14  c8 10 8d e2                                      add r1, sp, #0xc8
0052ce18  bc 20 8d e2                                      add r2, sp, #0xbc
0052ce1c  18 e0 8d e5                                      str lr, [sp, #0x18]
0052ce20  d4 70 8d e2                                      add r7, sp, #0xd4
0052ce24  20 10 8d e5                                      str r1, [sp, #0x20]
0052ce28  1c 20 8d e5                                      str r2, [sp, #0x1c]
0052ce2c  00 30 95 e5                                      ldr r3, [r5]
0052ce30  05 00 a0 e1                                      mov r0, r5
0052ce34  09 10 a0 e1                                      mov r1, sb
0052ce38  0f e0 a0 e1                                      mov lr, pc
0052ce3c  00 f0 93 e5                                      ldr pc, [r3]
0052ce40  00 00 50 e3                                      cmp r0, #0
0052ce44  9b 00 00 0a                                      beq #0x52d0b8
0052ce48  05 00 a0 e1                                      mov r0, r5
0052ce4c  00 30 95 e5                                      ldr r3, [r5]
0052ce50  09 10 a0 e1                                      mov r1, sb
0052ce54  0f e0 a0 e1                                      mov lr, pc
0052ce58  00 f0 93 e5                                      ldr pc, [r3]
0052ce5c  00 00 50 e3                                      cmp r0, #0
0052ce60  50 00 cd e5                                      strb r0, [sp, #0x50]
0052ce64  59 01 00 0a                                      beq #0x52d3d0
0052ce68  f0 10 8d e2                                      add r1, sp, #0xf0
0052ce6c  0c 10 8d e5                                      str r1, [sp, #0xc]
0052ce70  f4 20 8d e2                                      add r2, sp, #0xf4
0052ce74  8c 30 8d e2                                      add r3, sp, #0x8c
0052ce78  e8 c0 8d e2                                      add ip, sp, #0xe8
0052ce7c  ec e0 8d e2                                      add lr, sp, #0xec
0052ce80  7c 10 8d e2                                      add r1, sp, #0x7c
0052ce84  00 a0 a0 e3                                      mov sl, #0
0052ce88  00 b0 a0 e3                                      mov fp, #0
0052ce8c  1c 20 8d e5                                      str r2, [sp, #0x1c]
0052ce90  20 30 8d e5                                      str r3, [sp, #0x20]
0052ce94  2c c0 8d e5                                      str ip, [sp, #0x2c]
0052ce98  30 e0 8d e5                                      str lr, [sp, #0x30]
0052ce9c  34 10 8d e5                                      str r1, [sp, #0x34]
0052cea0  04 70 a0 e1                                      mov r7, r4
0052cea4  00 30 99 e5                                      ldr r3, [sb]
0052cea8  09 00 a0 e1                                      mov r0, sb
0052ceac  0f e0 a0 e1                                      mov lr, pc
0052ceb0  00 f0 93 e5                                      ldr pc, [r3]
0052ceb4  10 20 9d e5                                      ldr r2, [sp, #0x10]
0052ceb8  00 40 a0 e1                                      mov r4, r0
0052cebc  00 30 92 e5                                      ldr r3, [r2]
0052cec0  02 00 a0 e1                                      mov r0, r2
0052cec4  0f e0 a0 e1                                      mov lr, pc
0052cec8  00 f0 93 e5                                      ldr pc, [r3]
0052cecc  00 00 54 e1                                      cmp r4, r0
0052ced0  58 01 00 0a                                      beq #0x52d438
0052ced4  00 30 99 e5                                      ldr r3, [sb]
0052ced8  09 00 a0 e1                                      mov r0, sb
0052cedc  4c 50 9d e5                                      ldr r5, [sp, #0x4c]
0052cee0  0f e0 a0 e1                                      mov lr, pc
0052cee4  00 f0 93 e5                                      ldr pc, [r3]
0052cee8  68 40 9d e5                                      ldr r4, [sp, #0x68]
0052ceec  00 c0 a0 e1                                      mov ip, r0
0052cef0  00 00 54 e3                                      cmp r4, #0
0052cef4  06 40 a0 01                                      moveq r4, r6
0052cef8  0f 00 00 0a                                      beq #0x52cf3c
0052cefc  06 20 a0 e1                                      mov r2, r6
0052cf00  01 00 00 ea                                      b #0x52cf0c
0052cf04  04 20 a0 e1                                      mov r2, r4
0052cf08  03 40 a0 e1                                      mov r4, r3
0052cf0c  10 30 94 e5                                      ldr r3, [r4, #0x10]
0052cf10  03 00 5c e1                                      cmp ip, r3
0052cf14  0c 30 94 85                                      ldrhi r3, [r4, #0xc]
0052cf18  08 30 94 95                                      ldrls r3, [r4, #8]
0052cf1c  02 40 a0 81                                      movhi r4, r2
0052cf20  00 00 53 e3                                      cmp r3, #0
0052cf24  f6 ff ff 1a                                      bne #0x52cf04
0052cf28  06 00 54 e1                                      cmp r4, r6
0052cf2c  02 00 00 0a                                      beq #0x52cf3c
0052cf30  10 30 94 e5                                      ldr r3, [r4, #0x10]
0052cf34  03 00 5c e1                                      cmp ip, r3
0052cf38  0a 00 00 2a                                      bhs #0x52cf68
0052cf3c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0052cf40  06 10 a0 e1                                      mov r1, r6
0052cf44  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0052cf48  20 30 9d e5                                      ldr r3, [sp, #0x20]
0052cf4c  f4 40 8d e5                                      str r4, [sp, #0xf4]
0052cf50  8c c0 8d e5                                      str ip, [sp, #0x8c]
0052cf54  90 b0 8d e5                                      str fp, [sp, #0x90]
0052cf58  94 a0 8d e5                                      str sl, [sp, #0x94]
0052cf5c  98 a0 8d e5                                      str sl, [sp, #0x98]
0052cf60  d1 fd ff eb                                      bl #0x52c6ac
0052cf64  f0 40 9d e5                                      ldr r4, [sp, #0xf0]
0052cf68  05 00 a0 e1                                      mov r0, r5
0052cf6c  00 50 95 e5                                      ldr r5, [r5]
0052cf70  c3 f6 ff eb                                      bl #0x52aa84
0052cf74  14 20 94 e5                                      ldr r2, [r4, #0x14]
0052cf78  00 30 a0 e1                                      mov r3, r0
0052cf7c  09 00 a0 e1                                      mov r0, sb
0052cf80  08 20 83 e5                                      str r2, [r3, #8]
0052cf84  04 20 95 e5                                      ldr r2, [r5, #4]
0052cf88  00 50 83 e5                                      str r5, [r3]
0052cf8c  04 20 83 e5                                      str r2, [r3, #4]
0052cf90  00 30 82 e5                                      str r3, [r2]
0052cf94  04 30 85 e5                                      str r3, [r5, #4]
0052cf98  00 30 99 e5                                      ldr r3, [sb]
0052cf9c  0f e0 a0 e1                                      mov lr, pc
0052cfa0  00 f0 93 e5                                      ldr pc, [r3]
0052cfa4  68 c0 9d e5                                      ldr ip, [sp, #0x68]
0052cfa8  00 e0 a0 e1                                      mov lr, r0
0052cfac  00 00 5c e3                                      cmp ip, #0
0052cfb0  06 c0 a0 01                                      moveq ip, r6
0052cfb4  0f 00 00 0a                                      beq #0x52cff8
0052cfb8  06 20 a0 e1                                      mov r2, r6
0052cfbc  01 00 00 ea                                      b #0x52cfc8
0052cfc0  0c 20 a0 e1                                      mov r2, ip
0052cfc4  03 c0 a0 e1                                      mov ip, r3
0052cfc8  10 30 9c e5                                      ldr r3, [ip, #0x10]
0052cfcc  03 00 5e e1                                      cmp lr, r3
0052cfd0  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
0052cfd4  08 30 9c 95                                      ldrls r3, [ip, #8]
0052cfd8  02 c0 a0 81                                      movhi ip, r2
0052cfdc  00 00 53 e3                                      cmp r3, #0
0052cfe0  f6 ff ff 1a                                      bne #0x52cfc0
0052cfe4  06 00 5c e1                                      cmp ip, r6
0052cfe8  02 00 00 0a                                      beq #0x52cff8
0052cfec  10 30 9c e5                                      ldr r3, [ip, #0x10]
0052cff0  03 00 5e e1                                      cmp lr, r3
0052cff4  0a 00 00 2a                                      bhs #0x52d024
0052cff8  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0052cffc  06 10 a0 e1                                      mov r1, r6
0052d000  30 20 9d e5                                      ldr r2, [sp, #0x30]
0052d004  34 30 9d e5                                      ldr r3, [sp, #0x34]
0052d008  ec c0 8d e5                                      str ip, [sp, #0xec]
0052d00c  7c e0 8d e5                                      str lr, [sp, #0x7c]
0052d010  80 b0 8d e5                                      str fp, [sp, #0x80]
0052d014  84 a0 8d e5                                      str sl, [sp, #0x84]
0052d018  88 a0 8d e5                                      str sl, [sp, #0x88]
0052d01c  a2 fd ff eb                                      bl #0x52c6ac
0052d020  e8 c0 9d e5                                      ldr ip, [sp, #0xe8]
0052d024  14 30 9c e5                                      ldr r3, [ip, #0x14]
0052d028  03 00 a0 e1                                      mov r0, r3
0052d02c  00 30 93 e5                                      ldr r3, [r3]
0052d030  0f e0 a0 e1                                      mov lr, pc
0052d034  04 f0 93 e5                                      ldr pc, [r3, #4]
0052d038  00 90 a0 e1                                      mov sb, r0
0052d03c  98 ff ff ea                                      b #0x52cea4
0052d040  00 40 a0 e3                                      mov r4, #0
0052d044  14 20 9d e5                                      ldr r2, [sp, #0x14]
0052d048  28 10 9d e5                                      ldr r1, [sp, #0x28]
0052d04c  04 00 a0 e1                                      mov r0, r4
0052d050  01 30 92 e7                                      ldr r3, [r2, r1]
0052d054  1c 21 9d e5                                      ldr r2, [sp, #0x11c]
0052d058  00 30 93 e5                                      ldr r3, [r3]
0052d05c  03 00 52 e1                                      cmp r2, r3
0052d060  1c 01 00 1a                                      bne #0x52d4d8
0052d064  49 df 8d e2                                      add sp, sp, #0x124
0052d068  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0052d06c  0c 30 a0 e1                                      mov r3, ip
0052d070  1c ff ff ea                                      b #0x52cce8
0052d074  00 40 a0 e3                                      mov r4, #0
0052d078  08 00 88 e2                                      add r0, r8, #8
0052d07c  50 40 cd e5                                      strb r4, [sp, #0x50]
0052d080  b1 f3 ff eb                                      bl #0x529f4c
0052d084  60 40 8d e5                                      str r4, [sp, #0x60]
0052d088  54 40 8d e5                                      str r4, [sp, #0x54]
0052d08c  58 40 8d e5                                      str r4, [sp, #0x58]
0052d090  5c 40 8d e5                                      str r4, [sp, #0x5c]
0052d094  24 40 9d e5                                      ldr r4, [sp, #0x24]
0052d098  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0052d09c  08 00 88 e2                                      add r0, r8, #8
0052d0a0  04 30 9c e7                                      ldr r3, [ip, r4]
0052d0a4  50 40 dd e5                                      ldrb r4, [sp, #0x50]
0052d0a8  08 30 83 e2                                      add r3, r3, #8
0052d0ac  3c 30 8d e5                                      str r3, [sp, #0x3c]
0052d0b0  a5 f3 ff eb                                      bl #0x529f4c
0052d0b4  e2 ff ff ea                                      b #0x52d044
0052d0b8  48 e1 9d e5                                      ldr lr, [sp, #0x148]
0052d0bc  00 00 5e e3                                      cmp lr, #0
0052d0c0  60 ff ff 0a                                      beq #0x52ce48
0052d0c4  54 30 9d e5                                      ldr r3, [sp, #0x54]
0052d0c8  09 00 a0 e1                                      mov r0, sb
0052d0cc  40 b0 9d e5                                      ldr fp, [sp, #0x40]
0052d0d0  01 30 83 e2                                      add r3, r3, #1
0052d0d4  54 30 8d e5                                      str r3, [sp, #0x54]
0052d0d8  00 30 99 e5                                      ldr r3, [sb]
0052d0dc  0f e0 a0 e1                                      mov lr, pc
0052d0e0  00 f0 93 e5                                      ldr pc, [r3]
0052d0e4  04 20 a0 e1                                      mov r2, r4
0052d0e8  00 10 a0 e1                                      mov r1, r0
0052d0ec  0b 00 a0 e1                                      mov r0, fp
0052d0f0  ce f6 ff eb                                      bl #0x52ac30
0052d0f4  e0 30 9d e5                                      ldr r3, [sp, #0xe0]
0052d0f8  04 00 53 e1                                      cmp r3, r4
0052d0fc  03 20 a0 e1                                      mov r2, r3
0052d100  3d 00 00 0a                                      beq #0x52d1fc
0052d104  00 20 92 e5                                      ldr r2, [r2]
0052d108  04 00 52 e1                                      cmp r2, r4
0052d10c  fc ff ff 1a                                      bne #0x52d104
0052d110  58 10 9d e5                                      ldr r1, [sp, #0x58]
0052d114  00 20 95 e5                                      ldr r2, [r5]
0052d118  01 10 81 e2                                      add r1, r1, #1
0052d11c  58 10 8d e5                                      str r1, [sp, #0x58]
0052d120  08 30 93 e5                                      ldr r3, [r3, #8]
0052d124  00 b0 92 e5                                      ldr fp, [r2]
0052d128  03 00 a0 e1                                      mov r0, r3
0052d12c  00 30 93 e5                                      ldr r3, [r3]
0052d130  0f e0 a0 e1                                      mov lr, pc
0052d134  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0052d138  00 10 a0 e1                                      mov r1, r0
0052d13c  05 00 a0 e1                                      mov r0, r5
0052d140  3b ff 2f e1                                      blx fp
0052d144  00 00 50 e3                                      cmp r0, #0
0052d148  58 00 00 0a                                      beq #0x52d2b0
0052d14c  e0 30 9d e5                                      ldr r3, [sp, #0xe0]
0052d150  00 20 95 e5                                      ldr r2, [r5]
0052d154  08 30 93 e5                                      ldr r3, [r3, #8]
0052d158  00 b0 92 e5                                      ldr fp, [r2]
0052d15c  03 00 a0 e1                                      mov r0, r3
0052d160  00 30 93 e5                                      ldr r3, [r3]
0052d164  0f e0 a0 e1                                      mov lr, pc
0052d168  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0052d16c  00 10 a0 e1                                      mov r1, r0
0052d170  05 00 a0 e1                                      mov r0, r5
0052d174  3b ff 2f e1                                      blx fp
0052d178  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
0052d17c  01 30 83 e2                                      add r3, r3, #1
0052d180  5c 30 8d e5                                      str r3, [sp, #0x5c]
0052d184  e0 30 9d e5                                      ldr r3, [sp, #0xe0]
0052d188  08 b0 93 e5                                      ldr fp, [r3, #8]
0052d18c  00 30 9b e5                                      ldr r3, [fp]
0052d190  0b 00 a0 e1                                      mov r0, fp
0052d194  0f e0 a0 e1                                      mov lr, pc
0052d198  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0052d19c  0a 10 a0 e1                                      mov r1, sl
0052d1a0  7f 86 f7 eb                                      bl #0x30eba4
0052d1a4  00 10 a0 e3                                      mov r1, #0
0052d1a8  d4 b0 8d e5                                      str fp, [sp, #0xd4]
0052d1ac  d8 00 8d e5                                      str r0, [sp, #0xd8]
0052d1b0  7b 86 f7 eb                                      bl #0x30eba4
0052d1b4  06 10 a0 e1                                      mov r1, r6
0052d1b8  dc 00 8d e5                                      str r0, [sp, #0xdc]
0052d1bc  07 20 a0 e1                                      mov r2, r7
0052d1c0  08 00 a0 e1                                      mov r0, r8
0052d1c4  15 fe ff eb                                      bl #0x52ca20
0052d1c8  00 00 50 e3                                      cmp r0, #0
0052d1cc  4d 00 00 1a                                      bne #0x52d308
0052d1d0  e0 00 9d e5                                      ldr r0, [sp, #0xe0]
0052d1d4  0c 10 a0 e3                                      mov r1, #0xc
0052d1d8  00 30 90 e5                                      ldr r3, [r0]
0052d1dc  04 20 90 e5                                      ldr r2, [r0, #4]
0052d1e0  00 30 82 e5                                      str r3, [r2]
0052d1e4  04 20 83 e5                                      str r2, [r3, #4]
0052d1e8  44 6f 07 eb                                      bl #0x708f00
0052d1ec  e0 30 9d e5                                      ldr r3, [sp, #0xe0]
0052d1f0  04 00 53 e1                                      cmp r3, r4
0052d1f4  03 20 a0 e1                                      mov r2, r3
0052d1f8  c1 ff ff 1a                                      bne #0x52d104
0052d1fc  48 e1 9d e5                                      ldr lr, [sp, #0x148]
0052d200  01 e0 5e e2                                      subs lr, lr, #1
0052d204  48 e1 8d e5                                      str lr, [sp, #0x148]
0052d208  0e ff ff 0a                                      beq #0x52ce48
0052d20c  ac 20 9d e5                                      ldr r2, [sp, #0xac]
0052d210  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
0052d214  03 30 62 e0                                      rsb r3, r2, r3
0052d218  43 31 a0 e1                                      asr r3, r3, #2
0052d21c  03 11 83 e0                                      add r1, r3, r3, lsl #2
0052d220  01 12 81 e0                                      add r1, r1, r1, lsl #4
0052d224  01 14 81 e0                                      add r1, r1, r1, lsl #8
0052d228  01 18 81 e0                                      add r1, r1, r1, lsl #16
0052d22c  81 30 83 e0                                      add r3, r3, r1, lsl #1
0052d230  00 00 53 e3                                      cmp r3, #0
0052d234  03 ff ff 0a                                      beq #0x52ce48
0052d238  00 30 92 e5                                      ldr r3, [r2]
0052d23c  03 00 a0 e1                                      mov r0, r3
0052d240  00 30 93 e5                                      ldr r3, [r3]
0052d244  0f e0 a0 e1                                      mov lr, pc
0052d248  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0052d24c  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
0052d250  00 90 a0 e1                                      mov sb, r0
0052d254  ac 00 9d e5                                      ldr r0, [sp, #0xac]
0052d258  0c 20 13 e5                                      ldr r2, [r3, #-0xc]
0052d25c  0c 30 43 e2                                      sub r3, r3, #0xc
0052d260  04 a0 90 e5                                      ldr sl, [r0, #4]
0052d264  bc 20 8d e5                                      str r2, [sp, #0xbc]
0052d268  04 20 93 e5                                      ldr r2, [r3, #4]
0052d26c  03 10 a0 e1                                      mov r1, r3
0052d270  c0 20 8d e5                                      str r2, [sp, #0xc0]
0052d274  08 c0 93 e5                                      ldr ip, [r3, #8]
0052d278  03 20 a0 e1                                      mov r2, r3
0052d27c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0052d280  c4 c0 8d e5                                      str ip, [sp, #0xc4]
0052d284  00 c0 a0 e3                                      mov ip, #0
0052d288  00 c0 cd e5                                      strb ip, [sp]
0052d28c  00 c0 a0 e3                                      mov ip, #0
0052d290  04 c0 8d e5                                      str ip, [sp, #4]
0052d294  d2 f0 ff eb                                      bl #0x5295e4
0052d298  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
0052d29c  00 00 59 e3                                      cmp sb, #0
0052d2a0  0c 30 43 e2                                      sub r3, r3, #0xc
0052d2a4  b0 30 8d e5                                      str r3, [sp, #0xb0]
0052d2a8  df fe ff 1a                                      bne #0x52ce2c
0052d2ac  e5 fe ff ea                                      b #0x52ce48
0052d2b0  e0 20 9d e5                                      ldr r2, [sp, #0xe0]
0052d2b4  00 30 95 e5                                      ldr r3, [r5]
0052d2b8  05 00 a0 e1                                      mov r0, r5
0052d2bc  08 10 92 e5                                      ldr r1, [r2, #8]
0052d2c0  0f e0 a0 e1                                      mov lr, pc
0052d2c4  04 f0 93 e5                                      ldr pc, [r3, #4]
0052d2c8  00 00 50 e3                                      cmp r0, #0
0052d2cc  bf ff ff 0a                                      beq #0x52d1d0
0052d2d0  e0 30 9d e5                                      ldr r3, [sp, #0xe0]
0052d2d4  00 20 95 e5                                      ldr r2, [r5]
0052d2d8  08 30 93 e5                                      ldr r3, [r3, #8]
0052d2dc  08 b0 92 e5                                      ldr fp, [r2, #8]
0052d2e0  03 00 a0 e1                                      mov r0, r3
0052d2e4  00 30 93 e5                                      ldr r3, [r3]
0052d2e8  0f e0 a0 e1                                      mov lr, pc
0052d2ec  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0052d2f0  00 10 a0 e1                                      mov r1, r0
0052d2f4  05 00 a0 e1                                      mov r0, r5
0052d2f8  3b ff 2f e1                                      blx fp
0052d2fc  00 00 50 e3                                      cmp r0, #0
0052d300  b2 ff ff 0a                                      beq #0x52d1d0
0052d304  90 ff ff ea                                      b #0x52d14c
0052d308  e0 30 9d e5                                      ldr r3, [sp, #0xe0]
0052d30c  00 20 95 e5                                      ldr r2, [r5]
0052d310  08 30 93 e5                                      ldr r3, [r3, #8]
0052d314  00 b0 92 e5                                      ldr fp, [r2]
0052d318  03 00 a0 e1                                      mov r0, r3
0052d31c  00 30 93 e5                                      ldr r3, [r3]
0052d320  0f e0 a0 e1                                      mov lr, pc
0052d324  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0052d328  00 10 a0 e1                                      mov r1, r0
0052d32c  05 00 a0 e1                                      mov r0, r5
0052d330  3b ff 2f e1                                      blx fp
0052d334  00 00 50 e3                                      cmp r0, #0
0052d338  06 00 00 1a                                      bne #0x52d358
0052d33c  60 30 9d e5                                      ldr r3, [sp, #0x60]
0052d340  18 00 9d e5                                      ldr r0, [sp, #0x18]
0052d344  07 10 a0 e1                                      mov r1, r7
0052d348  01 30 83 e2                                      add r3, r3, #1
0052d34c  60 30 8d e5                                      str r3, [sp, #0x60]
0052d350  d1 f4 ff eb                                      bl #0x52a69c
0052d354  9d ff ff ea                                      b #0x52d1d0
0052d358  ac 00 9d e5                                      ldr r0, [sp, #0xac]
0052d35c  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
0052d360  03 00 50 e1                                      cmp r0, r3
0052d364  15 00 00 0a                                      beq #0x52d3c0
0052d368  20 a0 9d e5                                      ldr sl, [sp, #0x20]
0052d36c  0c 20 13 e5                                      ldr r2, [r3, #-0xc]
0052d370  0c 30 43 e2                                      sub r3, r3, #0xc
0052d374  03 10 a0 e1                                      mov r1, r3
0052d378  c8 20 8d e5                                      str r2, [sp, #0xc8]
0052d37c  04 20 93 e5                                      ldr r2, [r3, #4]
0052d380  cc 20 8d e5                                      str r2, [sp, #0xcc]
0052d384  08 c0 93 e5                                      ldr ip, [r3, #8]
0052d388  03 20 a0 e1                                      mov r2, r3
0052d38c  0a 30 a0 e1                                      mov r3, sl
0052d390  d0 c0 8d e5                                      str ip, [sp, #0xd0]
0052d394  00 c0 a0 e3                                      mov ip, #0
0052d398  00 c0 cd e5                                      strb ip, [sp]
0052d39c  00 c0 a0 e3                                      mov ip, #0
0052d3a0  04 c0 8d e5                                      str ip, [sp, #4]
0052d3a4  8e f0 ff eb                                      bl #0x5295e4
0052d3a8  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
0052d3ac  ac 00 9d e5                                      ldr r0, [sp, #0xac]
0052d3b0  0c 30 43 e2                                      sub r3, r3, #0xc
0052d3b4  00 00 53 e1                                      cmp r3, r0
0052d3b8  b0 30 8d e5                                      str r3, [sp, #0xb0]
0052d3bc  ea ff ff 1a                                      bne #0x52d36c
0052d3c0  18 00 9d e5                                      ldr r0, [sp, #0x18]
0052d3c4  07 10 a0 e1                                      mov r1, r7
0052d3c8  b3 f4 ff eb                                      bl #0x52a69c
0052d3cc  8a ff ff ea                                      b #0x52d1fc
0052d3d0  6c 50 9d e5                                      ldr r5, [sp, #0x6c]
0052d3d4  06 00 55 e1                                      cmp r5, r6
0052d3d8  17 00 00 0a                                      beq #0x52d43c
0052d3dc  14 30 95 e5                                      ldr r3, [r5, #0x14]
0052d3e0  00 00 53 e3                                      cmp r3, #0
0052d3e4  0a 00 00 0a                                      beq #0x52d414
0052d3e8  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
0052d3ec  03 00 a0 e1                                      mov r0, r3
0052d3f0  00 70 93 e5                                      ldr r7, [r3]
0052d3f4  a2 f5 ff eb                                      bl #0x52aa84
0052d3f8  14 30 95 e5                                      ldr r3, [r5, #0x14]
0052d3fc  08 30 80 e5                                      str r3, [r0, #8]
0052d400  04 30 97 e5                                      ldr r3, [r7, #4]
0052d404  00 70 80 e5                                      str r7, [r0]
0052d408  04 30 80 e5                                      str r3, [r0, #4]
0052d40c  00 00 83 e5                                      str r0, [r3]
0052d410  04 00 87 e5                                      str r0, [r7, #4]
0052d414  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0052d418  00 00 52 e3                                      cmp r2, #0
0052d41c  10 00 00 0a                                      beq #0x52d464
0052d420  02 50 a0 e1                                      mov r5, r2
0052d424  08 30 95 e5                                      ldr r3, [r5, #8]
0052d428  00 00 53 e3                                      cmp r3, #0
0052d42c  e8 ff ff 0a                                      beq #0x52d3d4
0052d430  03 50 a0 e1                                      mov r5, r3
0052d434  fa ff ff ea                                      b #0x52d424
0052d438  07 40 a0 e1                                      mov r4, r7
0052d43c  74 30 9d e5                                      ldr r3, [sp, #0x74]
0052d440  00 00 53 e3                                      cmp r3, #0
0052d444  13 00 00 1a                                      bne #0x52d498
0052d448  18 00 9d e5                                      ldr r0, [sp, #0x18]
0052d44c  64 f4 ff eb                                      bl #0x52a5e4
0052d450  04 00 a0 e1                                      mov r0, r4
0052d454  bc f2 ff eb                                      bl #0x529f4c
0052d458  08 30 88 e2                                      add r3, r8, #8
0052d45c  4c 30 8d e5                                      str r3, [sp, #0x4c]
0052d460  0b ff ff ea                                      b #0x52d094
0052d464  04 30 95 e5                                      ldr r3, [r5, #4]
0052d468  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0052d46c  05 00 51 e1                                      cmp r1, r5
0052d470  05 00 00 1a                                      bne #0x52d48c
0052d474  03 50 a0 e1                                      mov r5, r3
0052d478  04 30 93 e5                                      ldr r3, [r3, #4]
0052d47c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0052d480  05 00 52 e1                                      cmp r2, r5
0052d484  fa ff ff 0a                                      beq #0x52d474
0052d488  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0052d48c  02 00 53 e1                                      cmp r3, r2
0052d490  03 50 a0 11                                      movne r5, r3
0052d494  ce ff ff ea                                      b #0x52d3d4
0052d498  06 00 a0 e1                                      mov r0, r6
0052d49c  68 10 9d e5                                      ldr r1, [sp, #0x68]
0052d4a0  9b f2 ff eb                                      bl #0x529f14
0052d4a4  00 30 a0 e3                                      mov r3, #0
0052d4a8  70 60 8d e5                                      str r6, [sp, #0x70]
0052d4ac  74 30 8d e5                                      str r3, [sp, #0x74]
0052d4b0  6c 60 8d e5                                      str r6, [sp, #0x6c]
0052d4b4  68 30 8d e5                                      str r3, [sp, #0x68]
0052d4b8  e2 ff ff ea                                      b #0x52d448
0052d4bc  0a 10 a0 e1                                      mov r1, sl
0052d4c0  04 00 a0 e1                                      mov r0, r4
0052d4c4  98 ed ff eb                                      bl #0x528b2c
0052d4c8  00 30 a0 e1                                      mov r3, r0
0052d4cc  dd fd ff ea                                      b #0x52cc48
0052d4d0  da 8b f7 eb                                      bl #0x310440
0052d4d4  d3 fd ff ea                                      b #0x52cc28
0052d4d8  8c 83 f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0052d4dc  f0 7e 46 00 ac 40 00 00 84 08 00 00 dc ff 3a 00  .byte 0xf0, 0x7e, 0x46, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xdc, 0xff, 0x3a, 0x00
0052d4ec  30 3d 00 00                                      .byte 0x30, 0x3d, 0x00, 0x00

; FUNCTION 0x0052d4f0, declared_size=40, range_size=40, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld8TestPathERK7Point3DIfERKN3sfc4math5graph5ITestI12PFGInnerEdge12PFGInnerNodeEEj
; demangled: PFWorld::TestPath(Point3D<float> const&, sfc::math::graph::ITest<PFGInnerEdge, PFGInnerNode> const&, unsigned int)
; decoder-mode: arm
0052d4f0  04 e0 2d e5                                      str lr, [sp, #-4]!
0052d4f4  02 c0 a0 e1                                      mov ip, r2
0052d4f8  0c d0 4d e2                                      sub sp, sp, #0xc
0052d4fc  00 30 8d e5                                      str r3, [sp]
0052d500  01 20 a0 e1                                      mov r2, r1
0052d504  0c 30 a0 e1                                      mov r3, ip
0052d508  00 10 a0 e3                                      mov r1, #0
0052d50c  9f fd ff eb                                      bl #0x52cb90
0052d510  0c d0 8d e2                                      add sp, sp, #0xc
0052d514  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0052d518, declared_size=32, range_size=32, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld8TestPathERK8PFObjectRKN3sfc4math5graph5ITestI12PFGInnerEdge12PFGInnerNodeEEj
; demangled: PFWorld::TestPath(PFObject const&, sfc::math::graph::ITest<PFGInnerEdge, PFGInnerNode> const&, unsigned int)
; decoder-mode: arm
0052d518  04 e0 2d e5                                      str lr, [sp, #-4]!
0052d51c  0c d0 4d e2                                      sub sp, sp, #0xc
0052d520  00 30 8d e5                                      str r3, [sp]
0052d524  02 30 a0 e1                                      mov r3, r2
0052d528  18 20 81 e2                                      add r2, r1, #0x18
0052d52c  97 fd ff eb                                      bl #0x52cb90
0052d530  0c d0 8d e2                                      add sp, sp, #0xc
0052d534  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0052d538, declared_size=768, range_size=768, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld11_SmoothPathER8PFObject
; demangled: PFWorld::_SmoothPath(PFObject&)
; decoder-mode: arm
0052d538  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0052d53c  01 40 a0 e1                                      mov r4, r1
0052d540  38 30 b4 e5                                      ldr r3, [r4, #0x38]!
0052d544  d0 72 9f e5                                      ldr r7, [pc, #0x2d0]
0052d548  44 d0 4d e2                                      sub sp, sp, #0x44
0052d54c  04 00 53 e1                                      cmp r3, r4
0052d550  01 60 a0 e1                                      mov r6, r1
0052d554  07 70 8f e0                                      add r7, pc, r7
0052d558  07 00 00 0a                                      beq #0x52d57c
0052d55c  00 30 93 e5                                      ldr r3, [r3]
0052d560  03 00 54 e1                                      cmp r4, r3
0052d564  fc ff ff 1a                                      bne #0x52d55c
0052d568  7c 80 96 e5                                      ldr r8, [r6, #0x7c]
0052d56c  00 00 58 e3                                      cmp r8, #0
0052d570  17 00 00 0a                                      beq #0x52d5d4
0052d574  44 d0 8d e2                                      add sp, sp, #0x44
0052d578  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0052d57c  9c 32 9f e5                                      ldr r3, [pc, #0x29c]
0052d580  03 30 97 e7                                      ldr r3, [r7, r3]
0052d584  00 30 93 e5                                      ldr r3, [r3]
0052d588  02 00 53 e3                                      cmp r3, #2
0052d58c  00 30 a0 03                                      moveq r3, #0
0052d590  00 30 83 05                                      streq r3, [r3]
0052d594  f3 ff ff 0a                                      beq #0x52d568
0052d598  01 00 53 e3                                      cmp r3, #1
0052d59c  f1 ff ff 1a                                      bne #0x52d568
0052d5a0  7c 02 9f e5                                      ldr r0, [pc, #0x27c]
0052d5a4  7c 12 9f e5                                      ldr r1, [pc, #0x27c]
0052d5a8  7c 22 9f e5                                      ldr r2, [pc, #0x27c]
0052d5ac  00 00 97 e7                                      ldr r0, [r7, r0]
0052d5b0  78 32 9f e5                                      ldr r3, [pc, #0x278]
0052d5b4  ff c0 a0 e3                                      mov ip, #0xff
0052d5b8  01 10 8f e0                                      add r1, pc, r1
0052d5bc  02 20 8f e0                                      add r2, pc, r2
0052d5c0  03 30 8f e0                                      add r3, pc, r3
0052d5c4  a8 00 80 e2                                      add r0, r0, #0xa8
0052d5c8  00 c0 8d e5                                      str ip, [sp]
0052d5cc  8c 82 f7 eb                                      bl #0x30e004
0052d5d0  e4 ff ff ea                                      b #0x52d568
0052d5d4  38 30 96 e5                                      ldr r3, [r6, #0x38]
0052d5d8  01 20 a0 e3                                      mov r2, #1
0052d5dc  7c 20 86 e5                                      str r2, [r6, #0x7c]
0052d5e0  08 50 93 e5                                      ldr r5, [r3, #8]
0052d5e4  00 30 95 e5                                      ldr r3, [r5]
0052d5e8  05 00 a0 e1                                      mov r0, r5
0052d5ec  0f e0 a0 e1                                      mov lr, pc
0052d5f0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0052d5f4  00 30 95 e5                                      ldr r3, [r5]
0052d5f8  00 a0 a0 e1                                      mov sl, r0
0052d5fc  05 00 a0 e1                                      mov r0, r5
0052d600  0f e0 a0 e1                                      mov lr, pc
0052d604  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0052d608  00 30 95 e5                                      ldr r3, [r5]
0052d60c  00 b0 a0 e1                                      mov fp, r0
0052d610  05 00 a0 e1                                      mov r0, r5
0052d614  0f e0 a0 e1                                      mov lr, pc
0052d618  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0052d61c  08 10 a0 e1                                      mov r1, r8
0052d620  00 90 a0 e1                                      mov sb, r0
0052d624  30 00 a0 e3                                      mov r0, #0x30
0052d628  d0 8b f7 eb                                      bl #0x310570
0052d62c  00 32 9f e5                                      ldr r3, [pc, #0x200]
0052d630  fe 25 a0 e3                                      mov r2, #0x3f800000
0052d634  0c 20 80 e5                                      str r2, [r0, #0xc]
0052d638  03 30 97 e7                                      ldr r3, [r7, r3]
0052d63c  04 80 80 e5                                      str r8, [r0, #4]
0052d640  08 80 80 e5                                      str r8, [r0, #8]
0052d644  08 30 83 e2                                      add r3, r3, #8
0052d648  00 30 80 e5                                      str r3, [r0]
0052d64c  00 30 a0 e3                                      mov r3, #0
0052d650  10 30 80 e5                                      str r3, [r0, #0x10]
0052d654  14 30 80 e5                                      str r3, [r0, #0x14]
0052d658  00 30 9b e5                                      ldr r3, [fp]
0052d65c  00 50 a0 e1                                      mov r5, r0
0052d660  0c 10 a0 e3                                      mov r1, #0xc
0052d664  18 30 80 e5                                      str r3, [r0, #0x18]
0052d668  04 30 9b e5                                      ldr r3, [fp, #4]
0052d66c  1c 30 80 e5                                      str r3, [r0, #0x1c]
0052d670  08 30 9b e5                                      ldr r3, [fp, #8]
0052d674  20 30 80 e5                                      str r3, [r0, #0x20]
0052d678  00 30 99 e5                                      ldr r3, [sb]
0052d67c  24 30 80 e5                                      str r3, [r0, #0x24]
0052d680  04 30 99 e5                                      ldr r3, [sb, #4]
0052d684  28 30 80 e5                                      str r3, [r0, #0x28]
0052d688  08 30 99 e5                                      ldr r3, [sb, #8]
0052d68c  2c 30 80 e5                                      str r3, [r0, #0x2c]
0052d690  38 00 96 e5                                      ldr r0, [r6, #0x38]
0052d694  00 30 90 e5                                      ldr r3, [r0]
0052d698  04 20 90 e5                                      ldr r2, [r0, #4]
0052d69c  00 30 82 e5                                      str r3, [r2]
0052d6a0  04 20 83 e5                                      str r2, [r3, #4]
0052d6a4  15 6e 07 eb                                      bl #0x708f00
0052d6a8  04 00 a0 e1                                      mov r0, r4
0052d6ac  38 40 96 e5                                      ldr r4, [r6, #0x38]
0052d6b0  f3 f4 ff eb                                      bl #0x52aa84
0052d6b4  08 50 80 e5                                      str r5, [r0, #8]
0052d6b8  04 30 94 e5                                      ldr r3, [r4, #4]
0052d6bc  00 00 5a e3                                      cmp sl, #0
0052d6c0  00 40 80 e5                                      str r4, [r0]
0052d6c4  04 30 80 e5                                      str r3, [r0, #4]
0052d6c8  00 00 83 e5                                      str r0, [r3]
0052d6cc  04 00 84 e5                                      str r0, [r4, #4]
0052d6d0  a7 ff ff 0a                                      beq #0x52d574
0052d6d4  20 00 9a e5                                      ldr r0, [sl, #0x20]
0052d6d8  08 10 96 e5                                      ldr r1, [r6, #8]
0052d6dc  32 83 f7 eb                                      bl #0x30e3ac
0052d6e0  3f 14 a0 e3                                      mov r1, #0x3f000000
0052d6e4  a0 85 f7 eb                                      bl #0x30ed6c
0052d6e8  14 80 9a e5                                      ldr r8, [sl, #0x14]
0052d6ec  00 40 a0 e1                                      mov r4, r0
0052d6f0  04 10 a0 e1                                      mov r1, r4
0052d6f4  08 00 a0 e1                                      mov r0, r8
0052d6f8  9b 85 f7 eb                                      bl #0x30ed6c
0052d6fc  18 70 9a e5                                      ldr r7, [sl, #0x18]
0052d700  00 90 a0 e1                                      mov sb, r0
0052d704  04 10 a0 e1                                      mov r1, r4
0052d708  07 00 a0 e1                                      mov r0, r7
0052d70c  96 85 f7 eb                                      bl #0x30ed6c
0052d710  08 b0 9a e5                                      ldr fp, [sl, #8]
0052d714  00 30 a0 e3                                      mov r3, #0
0052d718  00 80 a0 e1                                      mov r8, r0
0052d71c  09 10 a0 e1                                      mov r1, sb
0052d720  0b 00 a0 e1                                      mov r0, fp
0052d724  0c a0 9a e5                                      ldr sl, [sl, #0xc]
0052d728  30 30 8d e5                                      str r3, [sp, #0x30]
0052d72c  34 30 8d e5                                      str r3, [sp, #0x34]
0052d730  1b 85 f7 eb                                      bl #0x30eba4
0052d734  08 10 a0 e1                                      mov r1, r8
0052d738  00 40 a0 e1                                      mov r4, r0
0052d73c  0a 00 a0 e1                                      mov r0, sl
0052d740  17 85 f7 eb                                      bl #0x30eba4
0052d744  09 10 a0 e1                                      mov r1, sb
0052d748  00 70 a0 e1                                      mov r7, r0
0052d74c  0b 00 a0 e1                                      mov r0, fp
0052d750  28 40 8d e5                                      str r4, [sp, #0x28]
0052d754  2c 70 8d e5                                      str r7, [sp, #0x2c]
0052d758  13 83 f7 eb                                      bl #0x30e3ac
0052d75c  08 10 a0 e1                                      mov r1, r8
0052d760  00 90 a0 e1                                      mov sb, r0
0052d764  0a 00 a0 e1                                      mov r0, sl
0052d768  0f 83 f7 eb                                      bl #0x30e3ac
0052d76c  20 90 8d e5                                      str sb, [sp, #0x20]
0052d770  24 00 8d e5                                      str r0, [sp, #0x24]
0052d774  44 c0 96 e5                                      ldr ip, [r6, #0x44]
0052d778  40 a0 96 e5                                      ldr sl, [r6, #0x40]
0052d77c  1c e0 95 e5                                      ldr lr, [r5, #0x1c]
0052d780  18 b0 95 e5                                      ldr fp, [r5, #0x18]
0052d784  14 c0 8d e5                                      str ip, [sp, #0x14]
0052d788  30 c0 8d e2                                      add ip, sp, #0x30
0052d78c  00 c0 8d e5                                      str ip, [sp]
0052d790  3c c0 8d e2                                      add ip, sp, #0x3c
0052d794  04 c0 8d e5                                      str ip, [sp, #4]
0052d798  00 80 a0 e1                                      mov r8, r0
0052d79c  38 c0 8d e2                                      add ip, sp, #0x38
0052d7a0  28 00 8d e2                                      add r0, sp, #0x28
0052d7a4  20 10 8d e2                                      add r1, sp, #0x20
0052d7a8  18 20 8d e2                                      add r2, sp, #0x18
0052d7ac  10 30 8d e2                                      add r3, sp, #0x10
0052d7b0  18 b0 8d e5                                      str fp, [sp, #0x18]
0052d7b4  1c e0 8d e5                                      str lr, [sp, #0x1c]
0052d7b8  10 a0 8d e5                                      str sl, [sp, #0x10]
0052d7bc  08 c0 8d e5                                      str ip, [sp, #8]
0052d7c0  20 94 f7 eb                                      bl #0x312848
0052d7c4  04 00 50 e3                                      cmp r0, #4
0052d7c8  08 00 00 0a                                      beq #0x52d7f0
0052d7cc  05 00 50 e3                                      cmp r0, #5
0052d7d0  01 00 00 0a                                      beq #0x52d7dc
0052d7d4  03 00 50 e3                                      cmp r0, #3
0052d7d8  65 ff ff 1a                                      bne #0x52d574
0052d7dc  30 40 9d e5                                      ldr r4, [sp, #0x30]
0052d7e0  34 70 9d e5                                      ldr r7, [sp, #0x34]
0052d7e4  24 40 85 e5                                      str r4, [r5, #0x24]
0052d7e8  28 70 85 e5                                      str r7, [r5, #0x28]
0052d7ec  60 ff ff ea                                      b #0x52d574
0052d7f0  00 10 a0 e3                                      mov r1, #0
0052d7f4  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
0052d7f8  c3 83 f7 eb                                      bl #0x30e70c
0052d7fc  00 00 50 e3                                      cmp r0, #0
0052d800  30 40 8d 15                                      strne r4, [sp, #0x30]
0052d804  34 70 8d 15                                      strne r7, [sp, #0x34]
0052d808  30 90 8d 05                                      streq sb, [sp, #0x30]
0052d80c  34 80 8d 05                                      streq r8, [sp, #0x34]
0052d810  08 70 a0 01                                      moveq r7, r8
0052d814  09 40 a0 01                                      moveq r4, sb
0052d818  f1 ff ff ea                                      b #0x52d7e4
; mapping-symbol data/literal pool
0052d81c  3c 75 46 00 c0 39 00 00 c0 19 00 00 20 0e 39 00  .byte 0x3c, 0x75, 0x46, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x20, 0x0e, 0x39, 0x00
0052d82c  6c f5 3a 00 80 f5 3a 00 78 12 00 00              .byte 0x6c, 0xf5, 0x3a, 0x00, 0x80, 0xf5, 0x3a, 0x00, 0x78, 0x12, 0x00, 0x00

; FUNCTION 0x0052d838, declared_size=380, range_size=380, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld8MovePathER8PFObjectR7Point3DIfE
; demangled: PFWorld::MovePath(PFObject&, Point3D<float>&)
; decoder-mode: arm
0052d838  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0052d83c  01 40 a0 e1                                      mov r4, r1
0052d840  38 30 b4 e5                                      ldr r3, [r4, #0x38]!
0052d844  01 50 a0 e1                                      mov r5, r1
0052d848  00 60 a0 e1                                      mov r6, r0
0052d84c  04 00 53 e1                                      cmp r3, r4
0052d850  02 70 a0 e1                                      mov r7, r2
0052d854  39 00 00 0a                                      beq #0x52d940
0052d858  03 20 a0 e1                                      mov r2, r3
0052d85c  00 20 92 e5                                      ldr r2, [r2]
0052d860  02 00 54 e1                                      cmp r4, r2
0052d864  fc ff ff 1a                                      bne #0x52d85c
0052d868  08 30 93 e5                                      ldr r3, [r3, #8]
0052d86c  03 00 a0 e1                                      mov r0, r3
0052d870  00 30 93 e5                                      ldr r3, [r3]
0052d874  0f e0 a0 e1                                      mov lr, pc
0052d878  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0052d87c  00 20 90 e5                                      ldr r2, [r0]
0052d880  00 30 a0 e1                                      mov r3, r0
0052d884  05 10 a0 e1                                      mov r1, r5
0052d888  00 20 87 e5                                      str r2, [r7]
0052d88c  04 20 93 e5                                      ldr r2, [r3, #4]
0052d890  06 00 a0 e1                                      mov r0, r6
0052d894  04 20 87 e5                                      str r2, [r7, #4]
0052d898  08 30 93 e5                                      ldr r3, [r3, #8]
0052d89c  08 30 87 e5                                      str r3, [r7, #8]
0052d8a0  f0 eb ff eb                                      bl #0x528868
0052d8a4  00 00 50 e3                                      cmp r0, #0
0052d8a8  2c 00 00 0a                                      beq #0x52d960
0052d8ac  7c 30 95 e5                                      ldr r3, [r5, #0x7c]
0052d8b0  00 00 53 e3                                      cmp r3, #0
0052d8b4  2b 00 00 1a                                      bne #0x52d968
0052d8b8  38 00 95 e5                                      ldr r0, [r5, #0x38]
0052d8bc  00 30 90 e5                                      ldr r3, [r0]
0052d8c0  04 20 90 e5                                      ldr r2, [r0, #4]
0052d8c4  0c 10 a0 e3                                      mov r1, #0xc
0052d8c8  00 30 82 e5                                      str r3, [r2]
0052d8cc  04 20 83 e5                                      str r2, [r3, #4]
0052d8d0  8a 6d 07 eb                                      bl #0x708f00
0052d8d4  38 30 95 e5                                      ldr r3, [r5, #0x38]
0052d8d8  04 00 53 e1                                      cmp r3, r4
0052d8dc  2c 00 00 0a                                      beq #0x52d994
0052d8e0  00 30 93 e5                                      ldr r3, [r3]
0052d8e4  03 00 54 e1                                      cmp r4, r3
0052d8e8  fc ff ff 1a                                      bne #0x52d8e0
0052d8ec  06 00 a0 e1                                      mov r0, r6
0052d8f0  05 10 a0 e1                                      mov r1, r5
0052d8f4  0f ff ff eb                                      bl #0x52d538
0052d8f8  06 00 a0 e1                                      mov r0, r6
0052d8fc  05 10 a0 e1                                      mov r1, r5
0052d900  25 ec ff eb                                      bl #0x52899c
0052d904  38 30 95 e5                                      ldr r3, [r5, #0x38]
0052d908  08 30 93 e5                                      ldr r3, [r3, #8]
0052d90c  03 00 a0 e1                                      mov r0, r3
0052d910  00 30 93 e5                                      ldr r3, [r3]
0052d914  0f e0 a0 e1                                      mov lr, pc
0052d918  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0052d91c  00 20 90 e5                                      ldr r2, [r0]
0052d920  00 30 a0 e1                                      mov r3, r0
0052d924  01 00 a0 e3                                      mov r0, #1
0052d928  00 20 87 e5                                      str r2, [r7]
0052d92c  04 20 93 e5                                      ldr r2, [r3, #4]
0052d930  04 20 87 e5                                      str r2, [r7, #4]
0052d934  08 30 93 e5                                      ldr r3, [r3, #8]
0052d938  08 30 87 e5                                      str r3, [r7, #8]
0052d93c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0052d940  18 30 91 e5                                      ldr r3, [r1, #0x18]
0052d944  00 00 a0 e3                                      mov r0, #0
0052d948  00 30 82 e5                                      str r3, [r2]
0052d94c  1c 30 91 e5                                      ldr r3, [r1, #0x1c]
0052d950  04 30 82 e5                                      str r3, [r2, #4]
0052d954  20 30 91 e5                                      ldr r3, [r1, #0x20]
0052d958  08 30 82 e5                                      str r3, [r2, #8]
0052d95c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0052d960  01 00 a0 e3                                      mov r0, #1
0052d964  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0052d968  38 00 95 e5                                      ldr r0, [r5, #0x38]
0052d96c  01 30 43 e2                                      sub r3, r3, #1
0052d970  7c 30 85 e5                                      str r3, [r5, #0x7c]
0052d974  08 30 90 e5                                      ldr r3, [r0, #8]
0052d978  00 00 53 e3                                      cmp r3, #0
0052d97c  ce ff ff 0a                                      beq #0x52d8bc
0052d980  03 00 a0 e1                                      mov r0, r3
0052d984  00 30 93 e5                                      ldr r3, [r3]
0052d988  0f e0 a0 e1                                      mov lr, pc
0052d98c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0052d990  c8 ff ff ea                                      b #0x52d8b8
0052d994  40 30 95 e5                                      ldr r3, [r5, #0x40]
0052d998  00 00 a0 e3                                      mov r0, #0
0052d99c  00 30 87 e5                                      str r3, [r7]
0052d9a0  44 30 95 e5                                      ldr r3, [r5, #0x44]
0052d9a4  04 30 87 e5                                      str r3, [r7, #4]
0052d9a8  48 30 95 e5                                      ldr r3, [r5, #0x48]
0052d9ac  08 30 87 e5                                      str r3, [r7, #8]
0052d9b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0052db48, declared_size=616, range_size=616, mode=arm
; class-group: PFWorld
; alias: _ZN7PFWorld8FindPathER8PFObjectRK7Point3DIfEj
; demangled: PFWorld::FindPath(PFObject&, Point3D<float> const&, unsigned int)
; decoder-mode: arm
0052db48  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0052db4c  44 62 9f e5                                      ldr r6, [pc, #0x244]
0052db50  44 92 9f e5                                      ldr sb, [pc, #0x244]
0052db54  00 40 a0 e1                                      mov r4, r0
0052db58  06 60 8f e0                                      add r6, pc, r6
0052db5c  09 c0 96 e7                                      ldr ip, [r6, sb]
0052db60  38 02 9f e5                                      ldr r0, [pc, #0x238]
0052db64  01 50 a0 e1                                      mov r5, r1
0052db68  00 10 9c e5                                      ldr r1, [ip]
0052db6c  44 d0 4d e2                                      sub sp, sp, #0x44
0052db70  00 00 8f e0                                      add r0, pc, r0
0052db74  02 70 a0 e1                                      mov r7, r2
0052db78  03 b0 a0 e1                                      mov fp, r3
0052db7c  3c 10 8d e5                                      str r1, [sp, #0x3c]
0052db80  cb 96 f7 eb                                      bl #0x3136b4
0052db84  05 10 a0 e1                                      mov r1, r5
0052db88  04 00 a0 e1                                      mov r0, r4
0052db8c  d4 f3 ff eb                                      bl #0x52aae4
0052db90  00 30 97 e5                                      ldr r3, [r7]
0052db94  08 22 9f e5                                      ldr r2, [pc, #0x208]
0052db98  24 80 8d e2                                      add r8, sp, #0x24
0052db9c  40 30 85 e5                                      str r3, [r5, #0x40]
0052dba0  04 30 97 e5                                      ldr r3, [r7, #4]
0052dba4  02 a0 96 e7                                      ldr sl, [r6, r2]
0052dba8  44 30 85 e5                                      str r3, [r5, #0x44]
0052dbac  08 30 97 e5                                      ldr r3, [r7, #8]
0052dbb0  0a 00 a0 e1                                      mov r0, sl
0052dbb4  48 30 85 e5                                      str r3, [r5, #0x48]
0052dbb8  32 27 f8 eb                                      bl #0x337888
0052dbbc  e4 11 9f e5                                      ldr r1, [pc, #0x1e4]
0052dbc0  20 20 8d e2                                      add r2, sp, #0x20
0052dbc4  08 00 a0 e1                                      mov r0, r8
0052dbc8  01 10 8f e0                                      add r1, pc, r1
0052dbcc  46 99 f7 eb                                      bl #0x3140ec
0052dbd0  0a 00 a0 e1                                      mov r0, sl
0052dbd4  08 10 a0 e1                                      mov r1, r8
0052dbd8  aa 27 f8 eb                                      bl #0x337a88
0052dbdc  00 a0 a0 e1                                      mov sl, r0
0052dbe0  38 00 9d e5                                      ldr r0, [sp, #0x38]
0052dbe4  08 00 50 e1                                      cmp r0, r8
0052dbe8  06 00 00 0a                                      beq #0x52dc08
0052dbec  00 00 50 e3                                      cmp r0, #0
0052dbf0  04 00 00 0a                                      beq #0x52dc08
0052dbf4  24 10 9d e5                                      ldr r1, [sp, #0x24]
0052dbf8  01 10 60 e0                                      rsb r1, r0, r1
0052dbfc  80 00 51 e3                                      cmp r1, #0x80
0052dc00  5c 00 00 8a                                      bhi #0x52dd78
0052dc04  bd 6c 07 eb                                      bl #0x708f00
0052dc08  00 00 5a e3                                      cmp sl, #0
0052dc0c  3c 00 00 0a                                      beq #0x52dd04
0052dc10  2d 75 03 eb                                      bl #0x60b0cc
0052dc14  07 30 a0 e1                                      mov r3, r7
0052dc18  05 10 a0 e1                                      mov r1, r5
0052dc1c  18 20 85 e2                                      add r2, r5, #0x18
0052dc20  38 c0 85 e2                                      add ip, r5, #0x38
0052dc24  1c 00 8d e5                                      str r0, [sp, #0x1c]
0052dc28  04 00 a0 e1                                      mov r0, r4
0052dc2c  00 18 8d e8                                      stm sp, {fp, ip}
0052dc30  4a f6 ff eb                                      bl #0x52b560
0052dc34  00 70 a0 e1                                      mov r7, r0
0052dc38  23 75 03 eb                                      bl #0x60b0cc
0052dc3c  64 20 94 e5                                      ldr r2, [r4, #0x64]
0052dc40  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
0052dc44  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0052dc48  04 20 42 e2                                      sub r2, r2, #4
0052dc4c  02 00 53 e1                                      cmp r3, r2
0052dc50  00 10 61 e0                                      rsb r1, r1, r0
0052dc54  1c 10 8d e5                                      str r1, [sp, #0x1c]
0052dc58  48 00 00 0a                                      beq #0x52dd80
0052dc5c  00 10 83 e5                                      str r1, [r3]
0052dc60  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
0052dc64  4c 80 84 e2                                      add r8, r4, #0x4c
0052dc68  04 30 83 e2                                      add r3, r3, #4
0052dc6c  5c 30 84 e5                                      str r3, [r4, #0x5c]
0052dc70  74 20 94 e5                                      ldr r2, [r4, #0x74]
0052dc74  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0052dc78  0c c0 8d e2                                      add ip, sp, #0xc
0052dc7c  03 30 82 e0                                      add r3, r2, r3
0052dc80  74 30 84 e5                                      str r3, [r4, #0x74]
0052dc84  0f 00 98 e8                                      ldm r8, {r0, r1, r2, r3}
0052dc88  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0052dc8c  0c 10 a0 e1                                      mov r1, ip
0052dc90  5c 00 84 e2                                      add r0, r4, #0x5c
0052dc94  17 d2 ff eb                                      bl #0x5224f8
0052dc98  0a 00 50 e3                                      cmp r0, #0xa
0052dc9c  20 00 00 9a                                      bls #0x52dd24
0052dca0  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
0052dca4  54 00 94 e5                                      ldr r0, [r4, #0x54]
0052dca8  74 10 94 e5                                      ldr r1, [r4, #0x74]
0052dcac  00 20 93 e5                                      ldr r2, [r3]
0052dcb0  04 00 40 e2                                      sub r0, r0, #4
0052dcb4  00 00 53 e1                                      cmp r3, r0
0052dcb8  01 20 62 e0                                      rsb r2, r2, r1
0052dcbc  04 30 83 12                                      addne r3, r3, #4
0052dcc0  74 20 84 e5                                      str r2, [r4, #0x74]
0052dcc4  4c 30 84 15                                      strne r3, [r4, #0x4c]
0052dcc8  15 00 00 1a                                      bne #0x52dd24
0052dccc  50 00 94 e5                                      ldr r0, [r4, #0x50]
0052dcd0  00 00 50 e3                                      cmp r0, #0
0052dcd4  01 00 00 0a                                      beq #0x52dce0
0052dcd8  80 10 a0 e3                                      mov r1, #0x80
0052dcdc  98 b7 f7 eb                                      bl #0x31bb44
0052dce0  58 30 94 e5                                      ldr r3, [r4, #0x58]
0052dce4  04 20 83 e2                                      add r2, r3, #4
0052dce8  58 20 84 e5                                      str r2, [r4, #0x58]
0052dcec  04 30 93 e5                                      ldr r3, [r3, #4]
0052dcf0  80 20 83 e2                                      add r2, r3, #0x80
0052dcf4  54 20 84 e5                                      str r2, [r4, #0x54]
0052dcf8  4c 30 84 e5                                      str r3, [r4, #0x4c]
0052dcfc  50 30 84 e5                                      str r3, [r4, #0x50]
0052dd00  07 00 00 ea                                      b #0x52dd24
0052dd04  07 30 a0 e1                                      mov r3, r7
0052dd08  38 c0 85 e2                                      add ip, r5, #0x38
0052dd0c  04 00 a0 e1                                      mov r0, r4
0052dd10  05 10 a0 e1                                      mov r1, r5
0052dd14  18 20 85 e2                                      add r2, r5, #0x18
0052dd18  00 18 8d e8                                      stm sp, {fp, ip}
0052dd1c  0f f6 ff eb                                      bl #0x52b560
0052dd20  00 70 a0 e1                                      mov r7, r0
0052dd24  00 00 57 e3                                      cmp r7, #0
0052dd28  0a 00 00 1a                                      bne #0x52dd58
0052dd2c  78 00 9f e5                                      ldr r0, [pc, #0x78]
0052dd30  00 00 8f e0                                      add r0, pc, r0
0052dd34  5f 96 f7 eb                                      bl #0x3136b8
0052dd38  09 30 96 e7                                      ldr r3, [r6, sb]
0052dd3c  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0052dd40  07 00 a0 e1                                      mov r0, r7
0052dd44  00 30 93 e5                                      ldr r3, [r3]
0052dd48  03 00 52 e1                                      cmp r2, r3
0052dd4c  10 00 00 1a                                      bne #0x52dd94
0052dd50  44 d0 8d e2                                      add sp, sp, #0x44
0052dd54  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0052dd58  04 00 a0 e1                                      mov r0, r4
0052dd5c  05 10 a0 e1                                      mov r1, r5
0052dd60  f4 fd ff eb                                      bl #0x52d538
0052dd64  04 00 a0 e1                                      mov r0, r4
0052dd68  05 10 a0 e1                                      mov r1, r5
0052dd6c  0a eb ff eb                                      bl #0x52899c
0052dd70  01 70 a0 e3                                      mov r7, #1
0052dd74  ec ff ff ea                                      b #0x52dd2c
0052dd78  b0 89 f7 eb                                      bl #0x310440
0052dd7c  a1 ff ff ea                                      b #0x52dc08
0052dd80  4c 80 84 e2                                      add r8, r4, #0x4c
0052dd84  08 00 a0 e1                                      mov r0, r8
0052dd88  1c 10 8d e2                                      add r1, sp, #0x1c
0052dd8c  08 ff ff eb                                      bl #0x52d9b4
0052dd90  b6 ff ff ea                                      b #0x52dc70
0052dd94  5d 81 f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0052dd98  38 6f 46 00 ac 40 00 00 68 f0 3a 00 84 08 00 00  .byte 0x38, 0x6f, 0x46, 0x00, 0xac, 0x40, 0x00, 0x00, 0x68, 0xf0, 0x3a, 0x00, 0x84, 0x08, 0x00, 0x00
0052dda8  28 f0 3a 00 a8 ee 3a 00                          .byte 0x28, 0xf0, 0x3a, 0x00, 0xa8, 0xee, 0x3a, 0x00
