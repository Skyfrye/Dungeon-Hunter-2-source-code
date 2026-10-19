; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004913d0, declared_size=8, range_size=8, mode=arm
; class-group: rnd::Tile
; alias: _ZN3rnd4Tile12TryPlaceTileEii
; demangled: rnd::Tile::TryPlaceTile(int, int)
; decoder-mode: arm
004913d0  01 00 a0 e3                                      mov r0, #1
004913d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x004913d8, declared_size=80, range_size=80, mode=arm
; class-group: rnd::Tile
; alias: _ZN3rnd4Tile9PlaceTileEiif
; demangled: rnd::Tile::PlaceTile(int, int, float)
; decoder-mode: arm
004913d8  70 40 2d e9                                      push {r4, r5, r6, lr}
004913dc  30 40 90 e5                                      ldr r4, [r0, #0x30]
004913e0  04 60 90 e5                                      ldr r6, [r0, #4]
004913e4  00 c0 a0 e1                                      mov ip, r0
004913e8  8c 30 80 e5                                      str r3, [r0, #0x8c]
004913ec  01 50 a0 e1                                      mov r5, r1
004913f0  02 e0 a0 e1                                      mov lr, r2
004913f4  84 10 8c e5                                      str r1, [ip, #0x84]
004913f8  88 20 8c e5                                      str r2, [ip, #0x88]
004913fc  08 d0 4d e2                                      sub sp, sp, #8
00491400  0c 20 a0 e1                                      mov r2, ip
00491404  04 00 a0 e1                                      mov r0, r4
00491408  00 c0 94 e5                                      ldr ip, [r4]
0049140c  08 10 86 e2                                      add r1, r6, #8
00491410  05 30 a0 e1                                      mov r3, r5
00491414  00 e0 8d e5                                      str lr, [sp]
00491418  0f e0 a0 e1                                      mov lr, pc
0049141c  08 f0 9c e5                                      ldr pc, [ip, #8]
00491420  08 d0 8d e2                                      add sp, sp, #8
00491424  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00491428, declared_size=24, range_size=24, mode=arm
; class-group: rnd::Tile
; alias: _ZN3rnd4Tile8AddChildEPS0_
; demangled: rnd::Tile::AddChild(rnd::Tile*)
; decoder-mode: arm
00491428  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0049142c  01 20 83 e2                                      add r2, r3, #1
00491430  04 30 83 e2                                      add r3, r3, #4
00491434  03 11 80 e7                                      str r1, [r0, r3, lsl #2]
00491438  0c 20 80 e5                                      str r2, [r0, #0xc]
0049143c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00491440, declared_size=108, range_size=108, mode=arm
; class-group: rnd::Tile
; alias: _ZN3rnd4Tile11RemoveChildEPS0_
; demangled: rnd::Tile::RemoveChild(rnd::Tile*)
; decoder-mode: arm
00491440  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00491444  04 40 2d e5                                      str r4, [sp, #-4]!
00491448  00 00 53 e3                                      cmp r3, #0
0049144c  0d 00 00 da                                      ble #0x491488
00491450  10 20 90 e5                                      ldr r2, [r0, #0x10]
00491454  01 00 52 e1                                      cmp r2, r1
00491458  00 20 a0 03                                      moveq r2, #0
0049145c  0b 00 00 0a                                      beq #0x491490
00491460  00 c0 a0 e1                                      mov ip, r0
00491464  00 20 a0 e3                                      mov r2, #0
00491468  02 00 00 ea                                      b #0x491478
0049146c  10 40 9c e5                                      ldr r4, [ip, #0x10]
00491470  01 00 54 e1                                      cmp r4, r1
00491474  05 00 00 0a                                      beq #0x491490
00491478  01 20 82 e2                                      add r2, r2, #1
0049147c  03 00 52 e1                                      cmp r2, r3
00491480  04 c0 8c e2                                      add ip, ip, #4
00491484  f8 ff ff 1a                                      bne #0x49146c
00491488  10 00 bd e8                                      ldm sp!, {r4}
0049148c  1e ff 2f e1                                      bx lr
00491490  01 10 43 e2                                      sub r1, r3, #1
00491494  0c 10 80 e5                                      str r1, [r0, #0xc]
00491498  03 30 83 e2                                      add r3, r3, #3
0049149c  03 31 90 e7                                      ldr r3, [r0, r3, lsl #2]
004914a0  04 20 82 e2                                      add r2, r2, #4
004914a4  02 31 80 e7                                      str r3, [r0, r2, lsl #2]
004914a8  f6 ff ff ea                                      b #0x491488

; FUNCTION 0x004914ac, declared_size=60, range_size=60, mode=arm
; class-group: rnd::Tile
; alias: _ZN3rnd4Tile5PrintEv
; demangled: rnd::Tile::Print()
; decoder-mode: arm
004914ac  70 40 2d e9                                      push {r4, r5, r6, lr}
004914b0  0c 30 90 e5                                      ldr r3, [r0, #0xc]
004914b4  00 60 a0 e1                                      mov r6, r0
004914b8  00 00 53 e3                                      cmp r3, #0
004914bc  08 00 00 da                                      ble #0x4914e4
004914c0  00 50 a0 e1                                      mov r5, r0
004914c4  00 40 a0 e3                                      mov r4, #0
004914c8  10 00 95 e5                                      ldr r0, [r5, #0x10]
004914cc  f6 ff ff eb                                      bl #0x4914ac
004914d0  0c 30 96 e5                                      ldr r3, [r6, #0xc]
004914d4  01 40 84 e2                                      add r4, r4, #1
004914d8  04 50 85 e2                                      add r5, r5, #4
004914dc  04 00 53 e1                                      cmp r3, r4
004914e0  f8 ff ff ca                                      bgt #0x4914c8
004914e4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004914e8, declared_size=24, range_size=24, mode=arm
; class-group: rnd::Tile
; alias: _ZN3rnd4TileD1Ev
; demangled: rnd::Tile::~Tile()
; decoder-mode: arm
004914e8  10 40 2d e9                                      push {r4, lr}
004914ec  00 40 a0 e1                                      mov r4, r0
004914f0  34 00 80 e2                                      add r0, r0, #0x34
004914f4  35 db ff eb                                      bl #0x4881d0
004914f8  04 00 a0 e1                                      mov r0, r4
004914fc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00491500, declared_size=24, range_size=24, mode=arm
; class-group: rnd::Tile
; alias: _ZN3rnd4TileD2Ev
; demangled: rnd::Tile::~Tile()
; decoder-mode: arm
00491500  10 40 2d e9                                      push {r4, lr}
00491504  00 40 a0 e1                                      mov r4, r0
00491508  34 00 80 e2                                      add r0, r0, #0x34
0049150c  2f db ff eb                                      bl #0x4881d0
00491510  04 00 a0 e1                                      mov r0, r4
00491514  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00491518, declared_size=736, range_size=736, mode=arm
; class-group: rnd::Tile
; alias: _ZN3rnd4Tile22SetModuleMVXPropertiesEP6Module
; demangled: rnd::Tile::SetModuleMVXProperties(Module*)
; decoder-mode: arm
00491518  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0049151c  9c 42 9f e5                                      ldr r4, [pc, #0x29c]
00491520  9c 22 9f e5                                      ldr r2, [pc, #0x29c]
00491524  c4 d0 4d e2                                      sub sp, sp, #0xc4
00491528  04 40 8f e0                                      add r4, pc, r4
0049152c  02 30 94 e7                                      ldr r3, [r4, r2]
00491530  04 20 8d e5                                      str r2, [sp, #4]
00491534  00 50 a0 e1                                      mov r5, r0
00491538  88 22 9f e5                                      ldr r2, [pc, #0x288]
0049153c  30 00 90 e5                                      ldr r0, [r0, #0x30]
00491540  00 30 93 e5                                      ldr r3, [r3]
00491544  a4 b0 8d e2                                      add fp, sp, #0xa4
00491548  02 20 8f e0                                      add r2, pc, r2
0049154c  01 80 a0 e1                                      mov r8, r1
00491550  1c 10 80 e2                                      add r1, r0, #0x1c
00491554  0b 00 a0 e1                                      mov r0, fp
00491558  bc 30 8d e5                                      str r3, [sp, #0xbc]
0049155c  da 88 fa eb                                      bl #0x3338cc
00491560  30 10 95 e5                                      ldr r1, [r5, #0x30]
00491564  60 22 9f e5                                      ldr r2, [pc, #0x260]
00491568  8c 50 8d e2                                      add r5, sp, #0x8c
0049156c  05 00 a0 e1                                      mov r0, r5
00491570  04 10 81 e2                                      add r1, r1, #4
00491574  02 20 8f e0                                      add r2, pc, r2
00491578  d3 88 fa eb                                      bl #0x3338cc
0049157c  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
00491580  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
00491584  0b 00 a0 e1                                      mov r0, fp
00491588  9d fc f9 eb                                      bl #0x310804
0049158c  05 00 a0 e1                                      mov r0, r5
00491590  05 09 fa eb                                      bl #0x3139ac
00491594  34 32 9f e5                                      ldr r3, [pc, #0x234]
00491598  00 20 a0 e3                                      mov r2, #0
0049159c  b8 10 9d e5                                      ldr r1, [sp, #0xb8]
004915a0  03 00 94 e7                                      ldr r0, [r4, r3]
004915a4  02 30 a0 e1                                      mov r3, r2
004915a8  10 00 90 e5                                      ldr r0, [r0, #0x10]
004915ac  34 50 90 e5                                      ldr r5, [r0, #0x34]
004915b0  00 c0 95 e5                                      ldr ip, [r5]
004915b4  05 00 a0 e1                                      mov r0, r5
004915b8  0f e0 a0 e1                                      mov lr, pc
004915bc  88 f0 9c e5                                      ldr pc, [ip, #0x88]
004915c0  00 00 50 e3                                      cmp r0, #0
004915c4  18 00 8d e5                                      str r0, [sp, #0x18]
004915c8  78 00 00 0a                                      beq #0x4917b0
004915cc  00 30 90 e5                                      ldr r3, [r0]
004915d0  0f e0 a0 e1                                      mov lr, pc
004915d4  08 f0 93 e5                                      ldr pc, [r3, #8]
004915d8  00 70 a0 e1                                      mov r7, r0
004915dc  44 f4 f9 eb                                      bl #0x30e6f4
004915e0  c0 60 8d e2                                      add r6, sp, #0xc0
004915e4  a8 c0 36 e5                                      ldr ip, [r6, #-0xa8]!
004915e8  00 00 8d e5                                      str r0, [sp]
004915ec  07 20 a0 e1                                      mov r2, r7
004915f0  c2 3f a0 e1                                      asr r3, r2, #0x1f
004915f4  00 10 a0 e1                                      mov r1, r0
004915f8  0c 00 a0 e1                                      mov r0, ip
004915fc  00 c0 9c e5                                      ldr ip, [ip]
00491600  0f e0 a0 e1                                      mov lr, pc
00491604  18 f0 9c e5                                      ldr pc, [ip, #0x18]
00491608  06 10 a0 e1                                      mov r1, r6
0049160c  00 30 95 e5                                      ldr r3, [r5]
00491610  05 00 a0 e1                                      mov r0, r5
00491614  1c 60 8d e2                                      add r6, sp, #0x1c
00491618  0f e0 a0 e1                                      mov lr, pc
0049161c  78 f0 93 e5                                      ldr pc, [r3, #0x78]
00491620  06 00 a0 e1                                      mov r0, r6
00491624  26 16 02 eb                                      bl #0x516ec4
00491628  07 20 a0 e1                                      mov r2, r7
0049162c  00 10 9d e5                                      ldr r1, [sp]
00491630  00 30 a0 e3                                      mov r3, #0
00491634  06 00 a0 e1                                      mov r0, r6
00491638  9a 13 02 eb                                      bl #0x5164a8
0049163c  90 21 9f e5                                      ldr r2, [pc, #0x190]
00491640  10 70 8d e2                                      add r7, sp, #0x10
00491644  07 00 a0 e1                                      mov r0, r7
00491648  02 20 8f e0                                      add r2, pc, r2
0049164c  14 10 8d e2                                      add r1, sp, #0x14
00491650  00 30 a0 e3                                      mov r3, #0
00491654  14 60 8d e5                                      str r6, [sp, #0x14]
00491658  de 0d 02 eb                                      bl #0x514dd8
0049165c  74 21 9f e5                                      ldr r2, [pc, #0x174]
00491660  0c 50 8d e2                                      add r5, sp, #0xc
00491664  07 10 a0 e1                                      mov r1, r7
00491668  02 20 8f e0                                      add r2, pc, r2
0049166c  00 30 a0 e3                                      mov r3, #0
00491670  05 00 a0 e1                                      mov r0, r5
00491674  d7 0d 02 eb                                      bl #0x514dd8
00491678  05 00 a0 e1                                      mov r0, r5
0049167c  f1 c8 ff eb                                      bl #0x483a48
00491680  00 70 50 e2                                      subs r7, r0, #0
00491684  35 00 00 0a                                      beq #0x491760
00491688  4c 91 9f e5                                      ldr sb, [pc, #0x14c]
0049168c  4c a1 9f e5                                      ldr sl, [pc, #0x14c]
00491690  04 50 88 e2                                      add r5, r8, #4
00491694  09 90 8f e0                                      add sb, pc, sb
00491698  09 10 a0 e1                                      mov r1, sb
0049169c  73 0d 02 eb                                      bl #0x514c70
004916a0  0a a0 8f e0                                      add sl, pc, sl
004916a4  00 20 a0 e1                                      mov r2, r0
004916a8  09 10 a0 e1                                      mov r1, sb
004916ac  05 00 a0 e1                                      mov r0, r5
004916b0  71 08 02 eb                                      bl #0x51387c
004916b4  0a 10 a0 e1                                      mov r1, sl
004916b8  07 00 a0 e1                                      mov r0, r7
004916bc  6b 0d 02 eb                                      bl #0x514c70
004916c0  1c 81 9f e5                                      ldr r8, [pc, #0x11c]
004916c4  00 20 a0 e1                                      mov r2, r0
004916c8  0a 10 a0 e1                                      mov r1, sl
004916cc  08 80 8f e0                                      add r8, pc, r8
004916d0  05 00 a0 e1                                      mov r0, r5
004916d4  68 08 02 eb                                      bl #0x51387c
004916d8  08 10 a0 e1                                      mov r1, r8
004916dc  07 00 a0 e1                                      mov r0, r7
004916e0  62 0d 02 eb                                      bl #0x514c70
004916e4  fc 90 9f e5                                      ldr sb, [pc, #0xfc]
004916e8  00 20 a0 e1                                      mov r2, r0
004916ec  08 10 a0 e1                                      mov r1, r8
004916f0  09 90 8f e0                                      add sb, pc, sb
004916f4  05 00 a0 e1                                      mov r0, r5
004916f8  5f 08 02 eb                                      bl #0x51387c
004916fc  09 10 a0 e1                                      mov r1, sb
00491700  07 00 a0 e1                                      mov r0, r7
00491704  59 0d 02 eb                                      bl #0x514c70
00491708  dc a0 9f e5                                      ldr sl, [pc, #0xdc]
0049170c  00 20 a0 e1                                      mov r2, r0
00491710  09 10 a0 e1                                      mov r1, sb
00491714  0a a0 8f e0                                      add sl, pc, sl
00491718  05 00 a0 e1                                      mov r0, r5
0049171c  56 08 02 eb                                      bl #0x51387c
00491720  0a 10 a0 e1                                      mov r1, sl
00491724  07 00 a0 e1                                      mov r0, r7
00491728  50 0d 02 eb                                      bl #0x514c70
0049172c  bc 80 9f e5                                      ldr r8, [pc, #0xbc]
00491730  00 20 a0 e1                                      mov r2, r0
00491734  0a 10 a0 e1                                      mov r1, sl
00491738  08 80 8f e0                                      add r8, pc, r8
0049173c  05 00 a0 e1                                      mov r0, r5
00491740  4d 08 02 eb                                      bl #0x51387c
00491744  08 10 a0 e1                                      mov r1, r8
00491748  07 00 a0 e1                                      mov r0, r7
0049174c  47 0d 02 eb                                      bl #0x514c70
00491750  08 10 a0 e1                                      mov r1, r8
00491754  00 20 a0 e1                                      mov r2, r0
00491758  05 00 a0 e1                                      mov r0, r5
0049175c  46 08 02 eb                                      bl #0x51387c
00491760  00 00 9d e5                                      ldr r0, [sp]
00491764  e1 f1 f9 eb                                      bl #0x30def0
00491768  84 30 9f e5                                      ldr r3, [pc, #0x84]
0049176c  48 00 86 e2                                      add r0, r6, #0x48
00491770  03 30 94 e7                                      ldr r3, [r4, r3]
00491774  08 30 83 e2                                      add r3, r3, #8
00491778  1c 30 8d e5                                      str r3, [sp, #0x1c]
0049177c  8a 08 fa eb                                      bl #0x3139ac
00491780  06 00 a0 e1                                      mov r0, r6
00491784  ca 0c 02 eb                                      bl #0x514ab4
00491788  0b 00 a0 e1                                      mov r0, fp
0049178c  86 08 fa eb                                      bl #0x3139ac
00491790  04 20 9d e5                                      ldr r2, [sp, #4]
00491794  02 30 94 e7                                      ldr r3, [r4, r2]
00491798  bc 20 9d e5                                      ldr r2, [sp, #0xbc]
0049179c  00 30 93 e5                                      ldr r3, [r3]
004917a0  03 00 52 e1                                      cmp r2, r3
004917a4  04 00 00 1a                                      bne #0x4917bc
004917a8  c4 d0 8d e2                                      add sp, sp, #0xc4
004917ac  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004917b0  0b 00 a0 e1                                      mov r0, fp
004917b4  7c 08 fa eb                                      bl #0x3139ac
004917b8  f4 ff ff ea                                      b #0x491790
004917bc  d3 f2 f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004917c0  68 35 50 00 ac 40 00 00 e8 52 43 00 c4 52 43 00  .byte 0x68, 0x35, 0x50, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe8, 0x52, 0x43, 0x00, 0xc4, 0x52, 0x43, 0x00
004917d0  f4 37 00 00 e8 ed 42 00 00 ec 42 00 ec 3a 45 00  .byte 0xf4, 0x37, 0x00, 0x00, 0xe8, 0xed, 0x42, 0x00, 0x00, 0xec, 0x42, 0x00, 0xec, 0x3a, 0x45, 0x00
004917e0  08 0e 43 00 cc 0d 43 00 a8 81 43 00 2c 0c 43 00  .byte 0x08, 0x0e, 0x43, 0x00, 0xcc, 0x0d, 0x43, 0x00, 0xa8, 0x81, 0x43, 0x00, 0x2c, 0x0c, 0x43, 0x00
004917f0  b8 0b 43 00 30 09 00 00                          .byte 0xb8, 0x0b, 0x43, 0x00, 0x30, 0x09, 0x00, 0x00

; FUNCTION 0x004917f8, declared_size=88, range_size=88, mode=arm
; class-group: rnd::Tile
; alias: _ZN3rnd4TileC1ERNS_15RandomGeneratorERNS_5BlockEPS0_RNS_8ListElemE
; demangled: rnd::Tile::Tile(rnd::RandomGenerator&, rnd::Block&, rnd::Tile*, rnd::ListElem&)
; decoder-mode: arm
004917f8  70 40 2d e9                                      push {r4, r5, r6, lr}
004917fc  34 50 80 e2                                      add r5, r0, #0x34
00491800  00 40 a0 e1                                      mov r4, r0
00491804  0a 00 80 e9                                      stmib r0, {r1, r3}
00491808  30 20 80 e5                                      str r2, [r0, #0x30]
0049180c  05 00 a0 e1                                      mov r0, r5
00491810  1a f2 ff eb                                      bl #0x48e080
00491814  08 00 94 e5                                      ldr r0, [r4, #8]
00491818  00 30 a0 e3                                      mov r3, #0
0049181c  0c 30 84 e5                                      str r3, [r4, #0xc]
00491820  03 00 50 e1                                      cmp r0, r3
00491824  01 00 00 0a                                      beq #0x491830
00491828  04 10 a0 e1                                      mov r1, r4
0049182c  fd fe ff eb                                      bl #0x491428
00491830  30 30 94 e5                                      ldr r3, [r4, #0x30]
00491834  10 10 9d e5                                      ldr r1, [sp, #0x10]
00491838  05 00 a0 e1                                      mov r0, r5
0049183c  18 30 93 e5                                      ldr r3, [r3, #0x18]
00491840  00 30 84 e5                                      str r3, [r4]
00491844  1c ea ff eb                                      bl #0x48c0bc
00491848  04 00 a0 e1                                      mov r0, r4
0049184c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00491850, declared_size=88, range_size=88, mode=arm
; class-group: rnd::Tile
; alias: _ZN3rnd4TileC2ERNS_15RandomGeneratorERNS_5BlockEPS0_RNS_8ListElemE
; demangled: rnd::Tile::Tile(rnd::RandomGenerator&, rnd::Block&, rnd::Tile*, rnd::ListElem&)
; decoder-mode: arm
00491850  70 40 2d e9                                      push {r4, r5, r6, lr}
00491854  34 50 80 e2                                      add r5, r0, #0x34
00491858  00 40 a0 e1                                      mov r4, r0
0049185c  0a 00 80 e9                                      stmib r0, {r1, r3}
00491860  30 20 80 e5                                      str r2, [r0, #0x30]
00491864  05 00 a0 e1                                      mov r0, r5
00491868  04 f2 ff eb                                      bl #0x48e080
0049186c  08 00 94 e5                                      ldr r0, [r4, #8]
00491870  00 30 a0 e3                                      mov r3, #0
00491874  0c 30 84 e5                                      str r3, [r4, #0xc]
00491878  03 00 50 e1                                      cmp r0, r3
0049187c  01 00 00 0a                                      beq #0x491888
00491880  04 10 a0 e1                                      mov r1, r4
00491884  e7 fe ff eb                                      bl #0x491428
00491888  30 30 94 e5                                      ldr r3, [r4, #0x30]
0049188c  10 10 9d e5                                      ldr r1, [sp, #0x10]
00491890  05 00 a0 e1                                      mov r0, r5
00491894  18 30 93 e5                                      ldr r3, [r3, #0x18]
00491898  00 30 84 e5                                      str r3, [r4]
0049189c  06 ea ff eb                                      bl #0x48c0bc
004918a0  04 00 a0 e1                                      mov r0, r4
004918a4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004918a8, declared_size=128, range_size=128, mode=arm
; class-group: rnd::Tile
; alias: _ZN3rnd4Tile7UnspawnEv
; demangled: rnd::Tile::Unspawn()
; decoder-mode: arm
004918a8  10 40 2d e9                                      push {r4, lr}
004918ac  00 40 a0 e1                                      mov r4, r0
004918b0  08 00 90 e5                                      ldr r0, [r0, #8]
004918b4  08 d0 4d e2                                      sub sp, sp, #8
004918b8  00 00 50 e3                                      cmp r0, #0
004918bc  01 00 00 0a                                      beq #0x4918c8
004918c0  04 10 a0 e1                                      mov r1, r4
004918c4  dd fe ff eb                                      bl #0x491440
004918c8  30 20 94 e5                                      ldr r2, [r4, #0x30]
004918cc  04 10 94 e5                                      ldr r1, [r4, #4]
004918d0  88 e0 94 e5                                      ldr lr, [r4, #0x88]
004918d4  00 c0 92 e5                                      ldr ip, [r2]
004918d8  84 30 94 e5                                      ldr r3, [r4, #0x84]
004918dc  08 10 81 e2                                      add r1, r1, #8
004918e0  02 00 a0 e1                                      mov r0, r2
004918e4  00 e0 8d e5                                      str lr, [sp]
004918e8  04 20 a0 e1                                      mov r2, r4
004918ec  0f e0 a0 e1                                      mov lr, pc
004918f0  0c f0 9c e5                                      ldr pc, [ip, #0xc]
004918f4  04 00 a0 e1                                      mov r0, r4
004918f8  0a 00 00 eb                                      bl #0x491928
004918fc  34 00 94 e5                                      ldr r0, [r4, #0x34]
00491900  00 00 50 e3                                      cmp r0, #0
00491904  01 00 00 0a                                      beq #0x491910
00491908  34 10 84 e2                                      add r1, r4, #0x34
0049190c  d8 f4 ff eb                                      bl #0x48ec74
00491910  04 00 a0 e1                                      mov r0, r4
00491914  f3 fe ff eb                                      bl #0x4914e8
00491918  04 00 a0 e1                                      mov r0, r4
0049191c  08 d0 8d e2                                      add sp, sp, #8
00491920  10 40 bd e8                                      pop {r4, lr}
00491924  c5 fa f9 ea                                      b #0x310440

; FUNCTION 0x00491928, declared_size=68, range_size=68, mode=arm
; class-group: rnd::Tile
; alias: _ZN3rnd4Tile15RemoveNeighborsEv
; demangled: rnd::Tile::RemoveNeighbors()
; decoder-mode: arm
00491928  70 40 2d e9                                      push {r4, r5, r6, lr}
0049192c  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00491930  00 40 a0 e1                                      mov r4, r0
00491934  00 00 53 e3                                      cmp r3, #0
00491938  0a 00 00 da                                      ble #0x491968
0049193c  01 20 43 e2                                      sub r2, r3, #1
00491940  0c 20 84 e5                                      str r2, [r4, #0xc]
00491944  03 30 83 e2                                      add r3, r3, #3
00491948  03 51 94 e7                                      ldr r5, [r4, r3, lsl #2]
0049194c  05 00 a0 e1                                      mov r0, r5
00491950  f4 ff ff eb                                      bl #0x491928
00491954  05 00 a0 e1                                      mov r0, r5
00491958  d2 ff ff eb                                      bl #0x4918a8
0049195c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00491960  00 00 53 e3                                      cmp r3, #0
00491964  f4 ff ff ca                                      bgt #0x49193c
00491968  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0049196c, declared_size=68, range_size=68, mode=arm
; class-group: rnd::Tile
; alias: _ZN3rnd4Tile7NewRootERNS_15RandomGeneratorERNS_5BlockERNS_8ListElemE
; demangled: rnd::Tile::NewRoot(rnd::RandomGenerator&, rnd::Block&, rnd::ListElem&)
; decoder-mode: arm
0049196c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00491970  00 70 a0 e1                                      mov r7, r0
00491974  0c d0 4d e2                                      sub sp, sp, #0xc
00491978  01 60 a0 e1                                      mov r6, r1
0049197c  90 00 a0 e3                                      mov r0, #0x90
00491980  00 10 a0 e3                                      mov r1, #0
00491984  02 50 a0 e1                                      mov r5, r2
00491988  f8 fa f9 eb                                      bl #0x310570
0049198c  07 10 a0 e1                                      mov r1, r7
00491990  00 40 a0 e1                                      mov r4, r0
00491994  06 20 a0 e1                                      mov r2, r6
00491998  00 30 a0 e3                                      mov r3, #0
0049199c  00 50 8d e5                                      str r5, [sp]
004919a0  94 ff ff eb                                      bl #0x4917f8
004919a4  04 00 a0 e1                                      mov r0, r4
004919a8  0c d0 8d e2                                      add sp, sp, #0xc
004919ac  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x004919b0, declared_size=256, range_size=256, mode=arm
; class-group: rnd::Tile
; alias: _ZN3rnd4Tile5SpawnERNS_5BlockEiifRNS_8ListElemE
; demangled: rnd::Tile::Spawn(rnd::Block&, int, int, float, rnd::ListElem&)
; decoder-mode: arm
004919b0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004919b4  00 60 a0 e1                                      mov r6, r0
004919b8  14 d0 4d e2                                      sub sp, sp, #0x14
004919bc  01 70 a0 e1                                      mov r7, r1
004919c0  90 00 a0 e3                                      mov r0, #0x90
004919c4  00 10 a0 e3                                      mov r1, #0
004919c8  3c 40 9d e5                                      ldr r4, [sp, #0x3c]
004919cc  02 b0 a0 e1                                      mov fp, r2
004919d0  03 90 a0 e1                                      mov sb, r3
004919d4  e5 fa f9 eb                                      bl #0x310570
004919d8  04 10 96 e5                                      ldr r1, [r6, #4]
004919dc  07 20 a0 e1                                      mov r2, r7
004919e0  06 30 a0 e1                                      mov r3, r6
004919e4  00 50 a0 e1                                      mov r5, r0
004919e8  00 40 8d e5                                      str r4, [sp]
004919ec  81 ff ff eb                                      bl #0x4917f8
004919f0  00 a0 94 e5                                      ldr sl, [r4]
004919f4  00 00 5a e3                                      cmp sl, #0
004919f8  24 00 00 0a                                      beq #0x491a90
004919fc  1c 60 9a e5                                      ldr r6, [sl, #0x1c]
00491a00  20 80 9a e5                                      ldr r8, [sl, #0x20]
00491a04  08 00 56 e1                                      cmp r6, r8
00491a08  20 00 00 0a                                      beq #0x491a90
00491a0c  18 70 da e5                                      ldrb r7, [sl, #0x18]
00491a10  02 00 00 ea                                      b #0x491a20
00491a14  50 60 86 e2                                      add r6, r6, #0x50
00491a18  08 00 56 e1                                      cmp r6, r8
00491a1c  1b 00 00 0a                                      beq #0x491a90
00491a20  00 00 57 e3                                      cmp r7, #0
00491a24  fa ff ff 1a                                      bne #0x491a14
00491a28  30 00 96 e5                                      ldr r0, [r6, #0x30]
00491a2c  2c 20 96 e5                                      ldr r2, [r6, #0x2c]
00491a30  30 10 94 e5                                      ldr r1, [r4, #0x30]
00491a34  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00491a38  02 20 60 e0                                      rsb r2, r0, r2
00491a3c  03 30 61 e0                                      rsb r3, r1, r3
00491a40  03 00 52 e1                                      cmp r2, r3
00491a44  f2 ff ff 1a                                      bne #0x491a14
00491a48  e4 f2 f9 eb                                      bl #0x30e5e0
00491a4c  00 00 50 e3                                      cmp r0, #0
00491a50  ef ff ff 1a                                      bne #0x491a14
00491a54  18 00 96 e5                                      ldr r0, [r6, #0x18]
00491a58  14 20 96 e5                                      ldr r2, [r6, #0x14]
00491a5c  18 10 94 e5                                      ldr r1, [r4, #0x18]
00491a60  14 30 94 e5                                      ldr r3, [r4, #0x14]
00491a64  02 20 60 e0                                      rsb r2, r0, r2
00491a68  03 30 61 e0                                      rsb r3, r1, r3
00491a6c  03 00 52 e1                                      cmp r2, r3
00491a70  e7 ff ff 1a                                      bne #0x491a14
00491a74  d9 f2 f9 eb                                      bl #0x30e5e0
00491a78  00 00 50 e3                                      cmp r0, #0
00491a7c  e4 ff ff 1a                                      bne #0x491a14
00491a80  1c 00 8a e2                                      add r0, sl, #0x1c
00491a84  06 10 a0 e1                                      mov r1, r6
00491a88  0c 20 8d e2                                      add r2, sp, #0xc
00491a8c  15 f0 ff eb                                      bl #0x48dae8
00491a90  05 00 a0 e1                                      mov r0, r5
00491a94  0b 10 a0 e1                                      mov r1, fp
00491a98  09 20 a0 e1                                      mov r2, sb
00491a9c  38 30 9d e5                                      ldr r3, [sp, #0x38]
00491aa0  4c fe ff eb                                      bl #0x4913d8
00491aa4  05 00 a0 e1                                      mov r0, r5
00491aa8  14 d0 8d e2                                      add sp, sp, #0x14
00491aac  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00491ab0, declared_size=308, range_size=308, mode=arm
; class-group: rnd::Tile
; alias: _ZN3rnd4Tile8TrySpawnEPKNS_4ExitES3_S3_RNS_8ListElemE
; demangled: rnd::Tile::TrySpawn(rnd::Exit const*, rnd::Exit const*, rnd::Exit const*, rnd::ListElem&)
; decoder-mode: arm
00491ab0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00491ab4  03 40 a0 e1                                      mov r4, r3
00491ab8  18 31 9f e5                                      ldr r3, [pc, #0x118]
00491abc  14 c0 94 e5                                      ldr ip, [r4, #0x14]
00491ac0  14 11 9f e5                                      ldr r1, [pc, #0x114]
00491ac4  03 30 8f e0                                      add r3, pc, r3
00491ac8  00 c0 9c e5                                      ldr ip, [ip]
00491acc  01 10 93 e7                                      ldr r1, [r3, r1]
00491ad0  00 50 a0 e1                                      mov r5, r0
00491ad4  84 e0 95 e5                                      ldr lr, [r5, #0x84]
00491ad8  0c c1 91 e7                                      ldr ip, [r1, ip, lsl #2]
00491adc  fc 10 9f e5                                      ldr r1, [pc, #0xfc]
00491ae0  00 00 52 e3                                      cmp r2, #0
00491ae4  8c c0 a0 e1                                      lsl ip, ip, #1
00491ae8  01 00 93 e7                                      ldr r0, [r3, r1]
00491aec  01 c0 8c e2                                      add ip, ip, #1
00491af0  0c d0 4d e2                                      sub sp, sp, #0xc
00491af4  8c 11 80 e0                                      add r1, r0, ip, lsl #3
00491af8  8c 91 d0 e7                                      ldrb sb, [r0, ip, lsl #3]
00491afc  01 b0 d1 e5                                      ldrb fp, [r1, #1]
00491b00  05 a0 d1 e5                                      ldrb sl, [r1, #5]
00491b04  04 60 d1 e5                                      ldrb r6, [r1, #4]
00491b08  02 80 d1 e5                                      ldrb r8, [r1, #2]
00491b0c  06 c0 d1 e5                                      ldrb ip, [r1, #6]
00491b10  07 00 d1 e5                                      ldrb r0, [r1, #7]
00491b14  03 10 d1 e5                                      ldrb r1, [r1, #3]
00491b18  0b 74 89 e1                                      orr r7, sb, fp, lsl #8
00491b1c  0a 64 86 e1                                      orr r6, r6, sl, lsl #8
00491b20  88 b0 95 e5                                      ldr fp, [r5, #0x88]
00491b24  08 78 87 e1                                      orr r7, r7, r8, lsl #16
00491b28  0c 68 86 e1                                      orr r6, r6, ip, lsl #16
00491b2c  08 90 94 e5                                      ldr sb, [r4, #8]
00491b30  0c a0 94 e5                                      ldr sl, [r4, #0xc]
00491b34  01 7c 87 e1                                      orr r7, r7, r1, lsl #24
00491b38  00 6c 86 e1                                      orr r6, r6, r0, lsl #24
00491b3c  0e 70 87 e0                                      add r7, r7, lr
00491b40  0b 60 86 e0                                      add r6, r6, fp
00491b44  07 70 69 e0                                      rsb r7, sb, r7
00491b48  06 60 6a e0                                      rsb r6, sl, r6
00491b4c  8c 80 95 e5                                      ldr r8, [r5, #0x8c]
00491b50  07 00 00 0a                                      beq #0x491b74
00491b54  08 c0 92 e5                                      ldr ip, [r2, #8]
00491b58  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00491b5c  08 00 a0 e1                                      mov r0, r8
00491b60  10 10 92 e5                                      ldr r1, [r2, #0x10]
00491b64  0c 70 87 e0                                      add r7, r7, ip
00491b68  03 60 86 e0                                      add r6, r6, r3
00491b6c  0c f4 f9 eb                                      bl #0x30eba4
00491b70  00 80 a0 e1                                      mov r8, r0
00491b74  04 30 94 e5                                      ldr r3, [r4, #4]
00491b78  04 10 95 e5                                      ldr r1, [r5, #4]
00491b7c  07 20 a0 e1                                      mov r2, r7
00491b80  03 00 a0 e1                                      mov r0, r3
00491b84  00 c0 93 e5                                      ldr ip, [r3]
00491b88  08 10 81 e2                                      add r1, r1, #8
00491b8c  06 30 a0 e1                                      mov r3, r6
00491b90  10 a0 94 e5                                      ldr sl, [r4, #0x10]
00491b94  0f e0 a0 e1                                      mov lr, pc
00491b98  10 f0 9c e5                                      ldr pc, [ip, #0x10]
00491b9c  00 00 50 e3                                      cmp r0, #0
00491ba0  0a 00 00 0a                                      beq #0x491bd0
00491ba4  0a 10 a0 e1                                      mov r1, sl
00491ba8  08 00 a0 e1                                      mov r0, r8
00491bac  fe f1 f9 eb                                      bl #0x30e3ac
00491bb0  30 c0 9d e5                                      ldr ip, [sp, #0x30]
00491bb4  04 10 94 e5                                      ldr r1, [r4, #4]
00491bb8  07 20 a0 e1                                      mov r2, r7
00491bbc  00 00 8d e5                                      str r0, [sp]
00491bc0  06 30 a0 e1                                      mov r3, r6
00491bc4  05 00 a0 e1                                      mov r0, r5
00491bc8  04 c0 8d e5                                      str ip, [sp, #4]
00491bcc  77 ff ff eb                                      bl #0x4919b0
00491bd0  0c d0 8d e2                                      add sp, sp, #0xc
00491bd4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00491bd8  cc 2f 50 00 b8 1b 00 00 fc 43 00 00              .byte 0xcc, 0x2f, 0x50, 0x00, 0xb8, 0x1b, 0x00, 0x00, 0xfc, 0x43, 0x00, 0x00

; FUNCTION 0x00491d90, declared_size=1360, range_size=1360, mode=arm
; class-group: rnd::Tile
; alias: _ZN3rnd4Tile15SaveAsModuleXMLEP12TiXmlElementi
; demangled: rnd::Tile::SaveAsModuleXML(TiXmlElement*, int)
; decoder-mode: arm
00491d90  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00491d94  f0 34 9f e5                                      ldr r3, [pc, #0x4f0]
00491d98  f0 c4 9f e5                                      ldr ip, [pc, #0x4f0]
00491d9c  17 dd 4d e2                                      sub sp, sp, #0x5c0
00491da0  0c d0 4d e2                                      sub sp, sp, #0xc
00491da4  03 30 8f e0                                      add r3, pc, r3
00491da8  1c 30 8d e5                                      str r3, [sp, #0x1c]
00491dac  0c 30 93 e7                                      ldr r3, [r3, ip]
00491db0  38 60 8d e2                                      add r6, sp, #0x38
00491db4  d8 94 9f e5                                      ldr sb, [pc, #0x4d8]
00491db8  00 30 93 e5                                      ldr r3, [r3]
00491dbc  04 e0 46 e2                                      sub lr, r6, #4
00491dc0  00 40 a0 e1                                      mov r4, r0
00491dc4  01 70 a0 e1                                      mov r7, r1
00491dc8  0e 00 a0 e1                                      mov r0, lr
00491dcc  05 10 a0 e3                                      mov r1, #5
00491dd0  20 e0 8d e5                                      str lr, [sp, #0x20]
00491dd4  02 50 a0 e1                                      mov r5, r2
00491dd8  24 c0 8d e5                                      str ip, [sp, #0x24]
00491ddc  c4 35 8d e5                                      str r3, [sp, #0x5c4]
00491de0  09 90 8f e0                                      add sb, pc, sb
00491de4  6f e0 fb eb                                      bl #0x389fa8
00491de8  06 00 a0 e1                                      mov r0, r6
00491dec  54 90 8d e5                                      str sb, [sp, #0x54]
00491df0  e0 07 02 eb                                      bl #0x513d78
00491df4  06 00 a0 e1                                      mov r0, r6
00491df8  3b 06 02 eb                                      bl #0x5136ec
00491dfc  94 14 9f e5                                      ldr r1, [pc, #0x494]
00491e00  51 ae 8d e2                                      add sl, sp, #0x510
00491e04  08 a0 8a e2                                      add sl, sl, #8
00491e08  5a 8e 8d e2                                      add r8, sp, #0x5a0
00491e0c  05 30 a0 e1                                      mov r3, r5
00491e10  00 c0 a0 e3                                      mov ip, #0
00491e14  00 20 94 e5                                      ldr r2, [r4]
00491e18  0c 80 88 e2                                      add r8, r8, #0xc
00491e1c  01 10 8f e0                                      add r1, pc, r1
00491e20  0a 00 a0 e1                                      mov r0, sl
00491e24  ac c5 cd e5                                      strb ip, [sp, #0x5ac]
00491e28  bc 85 8d e5                                      str r8, [sp, #0x5bc]
00491e2c  c0 85 8d e5                                      str r8, [sp, #0x5c0]
00491e30  2b f3 f9 eb                                      bl #0x30eae4
00491e34  0a 00 a0 e1                                      mov r0, sl
00491e38  05 f0 f9 eb                                      bl #0x30de54
00491e3c  0a 10 a0 e1                                      mov r1, sl
00491e40  00 20 8a e0                                      add r2, sl, r0
00491e44  08 00 a0 e1                                      mov r0, r8
00491e48  ff 3a fa eb                                      bl #0x320a4c
00491e4c  48 14 9f e5                                      ldr r1, [pc, #0x448]
00491e50  06 00 a0 e1                                      mov r0, r6
00491e54  c0 25 9d e5                                      ldr r2, [sp, #0x5c0]
00491e58  01 10 8f e0                                      add r1, pc, r1
00491e5c  86 06 02 eb                                      bl #0x51387c
00491e60  38 14 9f e5                                      ldr r1, [pc, #0x438]
00491e64  09 20 a0 e1                                      mov r2, sb
00491e68  06 00 a0 e1                                      mov r0, r6
00491e6c  01 10 8f e0                                      add r1, pc, r1
00491e70  81 06 02 eb                                      bl #0x51387c
00491e74  28 14 9f e5                                      ldr r1, [pc, #0x428]
00491e78  28 c4 9f e5                                      ldr ip, [pc, #0x428]
00491e7c  08 00 a0 e1                                      mov r0, r8
00491e80  01 10 8f e0                                      add r1, pc, r1
00491e84  10 c0 8d e5                                      str ip, [sp, #0x10]
00491e88  8c ff ff eb                                      bl #0x491cc0
00491e8c  84 00 94 e5                                      ldr r0, [r4, #0x84]
00491e90  b3 f2 f9 eb                                      bl #0x30e964
00491e94  30 b0 94 e5                                      ldr fp, [r4, #0x30]
00491e98  00 90 a0 e1                                      mov sb, r0
00491e9c  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00491ea0  54 00 9b e5                                      ldr r0, [fp, #0x54]
00491ea4  4b ae 8d e2                                      add sl, sp, #0x4b0
00491ea8  0c c0 8f e0                                      add ip, pc, ip
00491eac  01 00 40 e2                                      sub r0, r0, #1
00491eb0  10 c0 8d e5                                      str ip, [sp, #0x10]
00491eb4  aa f2 f9 eb                                      bl #0x30e964
00491eb8  3f 14 a0 e3                                      mov r1, #0x3f000000
00491ebc  aa f3 f9 eb                                      bl #0x30ed6c
00491ec0  00 10 a0 e1                                      mov r1, r0
00491ec4  09 00 a0 e1                                      mov r0, sb
00491ec8  35 f3 f9 eb                                      bl #0x30eba4
00491ecc  4c 10 9b e5                                      ldr r1, [fp, #0x4c]
00491ed0  a5 f3 f9 eb                                      bl #0x30ed6c
00491ed4  00 20 a0 e1                                      mov r2, r0
00491ed8  88 00 94 e5                                      ldr r0, [r4, #0x88]
00491edc  14 20 8d e5                                      str r2, [sp, #0x14]
00491ee0  9f f2 f9 eb                                      bl #0x30e964
00491ee4  00 30 a0 e1                                      mov r3, r0
00491ee8  58 00 9b e5                                      ldr r0, [fp, #0x58]
00491eec  18 30 8d e5                                      str r3, [sp, #0x18]
00491ef0  04 a0 8a e2                                      add sl, sl, #4
00491ef4  01 00 40 e2                                      sub r0, r0, #1
00491ef8  99 f2 f9 eb                                      bl #0x30e964
00491efc  3f 14 a0 e3                                      mov r1, #0x3f000000
00491f00  99 f3 f9 eb                                      bl #0x30ed6c
00491f04  18 30 9d e5                                      ldr r3, [sp, #0x18]
00491f08  00 10 a0 e1                                      mov r1, r0
00491f0c  59 9e 8d e2                                      add sb, sp, #0x590
00491f10  03 00 a0 e1                                      mov r0, r3
00491f14  22 f3 f9 eb                                      bl #0x30eba4
00491f18  50 10 9b e5                                      ldr r1, [fp, #0x50]
00491f1c  04 90 89 e2                                      add sb, sb, #4
00491f20  02 11 81 e2                                      add r1, r1, #0x80000000
00491f24  90 f3 f9 eb                                      bl #0x30ed6c
00491f28  14 20 9d e5                                      ldr r2, [sp, #0x14]
00491f2c  00 b0 a0 e1                                      mov fp, r0
00491f30  02 00 a0 e1                                      mov r0, r2
00491f34  5a f2 f9 eb                                      bl #0x30e8a4
00491f38  f8 02 cd e1                                      strd r0, r1, [sp, #0x28]
00491f3c  0b 00 a0 e1                                      mov r0, fp
00491f40  57 f2 f9 eb                                      bl #0x30e8a4
00491f44  8c 30 94 e5                                      ldr r3, [r4, #0x8c]
00491f48  f0 00 cd e1                                      strd r0, r1, [sp]
00491f4c  03 00 a0 e1                                      mov r0, r3
00491f50  53 f2 f9 eb                                      bl #0x30e8a4
00491f54  d8 22 cd e1                                      ldrd r2, r3, [sp, #0x28]
00491f58  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00491f5c  f8 00 cd e1                                      strd r0, r1, [sp, #8]
00491f60  0c 10 a0 e1                                      mov r1, ip
00491f64  0a 00 a0 e1                                      mov r0, sl
00491f68  dd f2 f9 eb                                      bl #0x30eae4
00491f6c  0a 00 a0 e1                                      mov r0, sl
00491f70  b7 ef f9 eb                                      bl #0x30de54
00491f74  0a 10 a0 e1                                      mov r1, sl
00491f78  00 20 8a e0                                      add r2, sl, r0
00491f7c  08 00 a0 e1                                      mov r0, r8
00491f80  b1 3a fa eb                                      bl #0x320a4c
00491f84  20 13 9f e5                                      ldr r1, [pc, #0x320]
00491f88  c0 25 9d e5                                      ldr r2, [sp, #0x5c0]
00491f8c  06 00 a0 e1                                      mov r0, r6
00491f90  01 10 8f e0                                      add r1, pc, r1
00491f94  38 06 02 eb                                      bl #0x51387c
00491f98  04 00 a0 e1                                      mov r0, r4
00491f9c  20 10 9d e5                                      ldr r1, [sp, #0x20]
00491fa0  5c fd ff eb                                      bl #0x491518
00491fa4  04 13 9f e5                                      ldr r1, [pc, #0x304]
00491fa8  08 20 46 e2                                      sub r2, r6, #8
00491fac  09 00 a0 e1                                      mov r0, sb
00491fb0  01 10 8f e0                                      add r1, pc, r1
00491fb4  4c 08 fa eb                                      bl #0x3140ec
00491fb8  30 30 94 e5                                      ldr r3, [r4, #0x30]
00491fbc  09 00 a0 e1                                      mov r0, sb
00491fc0  44 20 93 e5                                      ldr r2, [r3, #0x44]
00491fc4  48 10 93 e5                                      ldr r1, [r3, #0x48]
00491fc8  0d fa f9 eb                                      bl #0x310804
00491fcc  30 30 94 e5                                      ldr r3, [r4, #0x30]
00491fd0  30 20 93 e5                                      ldr r2, [r3, #0x30]
00491fd4  2c 30 93 e5                                      ldr r3, [r3, #0x2c]
00491fd8  02 10 53 e0                                      subs r1, r3, r2
00491fdc  7c 00 00 1a                                      bne #0x4921d4
00491fe0  04 b0 a0 e3                                      mov fp, #4
00491fe4  c8 12 9f e5                                      ldr r1, [pc, #0x2c8]
00491fe8  09 00 a0 e1                                      mov r0, sb
00491fec  57 ae 8d e2                                      add sl, sp, #0x570
00491ff0  01 10 8f e0                                      add r1, pc, r1
00491ff4  01 20 81 e2                                      add r2, r1, #1
00491ff8  01 fa f9 eb                                      bl #0x310804
00491ffc  30 30 94 e5                                      ldr r3, [r4, #0x30]
00492000  0c a0 8a e2                                      add sl, sl, #0xc
00492004  8c a5 8d e5                                      str sl, [sp, #0x58c]
00492008  90 a5 8d e5                                      str sl, [sp, #0x590]
0049200c  2c 20 93 e5                                      ldr r2, [r3, #0x2c]
00492010  30 10 93 e5                                      ldr r1, [r3, #0x30]
00492014  02 20 61 e0                                      rsb r2, r1, r2
00492018  02 00 5b e1                                      cmp fp, r2
0049201c  82 00 00 8a                                      bhi #0x49222c
00492020  02 20 81 e0                                      add r2, r1, r2
00492024  0a 00 a0 e1                                      mov r0, sl
00492028  0b 10 81 e0                                      add r1, r1, fp
0049202c  ad fd f9 eb                                      bl #0x3116e8
00492030  8c 25 9d e5                                      ldr r2, [sp, #0x58c]
00492034  90 15 9d e5                                      ldr r1, [sp, #0x590]
00492038  09 00 a0 e1                                      mov r0, sb
0049203c  f0 f9 f9 eb                                      bl #0x310804
00492040  0a 00 a0 e1                                      mov r0, sl
00492044  58 06 fa eb                                      bl #0x3139ac
00492048  64 20 94 e5                                      ldr r2, [r4, #0x64]
0049204c  60 30 94 e5                                      ldr r3, [r4, #0x60]
00492050  03 00 52 e1                                      cmp r2, r3
00492054  18 00 00 0a                                      beq #0x4920bc
00492058  58 12 9f e5                                      ldr r1, [pc, #0x258]
0049205c  08 00 a0 e1                                      mov r0, r8
00492060  45 ae 8d e2                                      add sl, sp, #0x450
00492064  01 10 8f e0                                      add r1, pc, r1
00492068  14 ff ff eb                                      bl #0x491cc0
0049206c  48 12 9f e5                                      ldr r1, [pc, #0x248]
00492070  48 32 9f e5                                      ldr r3, [pc, #0x248]
00492074  64 c0 94 e5                                      ldr ip, [r4, #0x64]
00492078  01 10 8f e0                                      add r1, pc, r1
0049207c  a8 25 9d e5                                      ldr r2, [sp, #0x5a8]
00492080  03 30 8f e0                                      add r3, pc, r3
00492084  0a 00 a0 e1                                      mov r0, sl
00492088  00 c0 8d e5                                      str ip, [sp]
0049208c  94 f2 f9 eb                                      bl #0x30eae4
00492090  0a 00 a0 e1                                      mov r0, sl
00492094  6e ef f9 eb                                      bl #0x30de54
00492098  0a 10 a0 e1                                      mov r1, sl
0049209c  00 20 8a e0                                      add r2, sl, r0
004920a0  08 00 a0 e1                                      mov r0, r8
004920a4  68 3a fa eb                                      bl #0x320a4c
004920a8  14 12 9f e5                                      ldr r1, [pc, #0x214]
004920ac  06 00 a0 e1                                      mov r0, r6
004920b0  c0 25 9d e5                                      ldr r2, [sp, #0x5c0]
004920b4  01 10 8f e0                                      add r1, pc, r1
004920b8  ef 05 02 eb                                      bl #0x51387c
004920bc  7c 20 94 e5                                      ldr r2, [r4, #0x7c]
004920c0  78 30 94 e5                                      ldr r3, [r4, #0x78]
004920c4  03 00 52 e1                                      cmp r2, r3
004920c8  18 00 00 0a                                      beq #0x492130
004920cc  f4 11 9f e5                                      ldr r1, [pc, #0x1f4]
004920d0  08 00 a0 e1                                      mov r0, r8
004920d4  45 ae 8d e2                                      add sl, sp, #0x450
004920d8  01 10 8f e0                                      add r1, pc, r1
004920dc  f7 fe ff eb                                      bl #0x491cc0
004920e0  e4 11 9f e5                                      ldr r1, [pc, #0x1e4]
004920e4  e4 31 9f e5                                      ldr r3, [pc, #0x1e4]
004920e8  7c c0 94 e5                                      ldr ip, [r4, #0x7c]
004920ec  01 10 8f e0                                      add r1, pc, r1
004920f0  a8 25 9d e5                                      ldr r2, [sp, #0x5a8]
004920f4  03 30 8f e0                                      add r3, pc, r3
004920f8  0a 00 a0 e1                                      mov r0, sl
004920fc  00 c0 8d e5                                      str ip, [sp]
00492100  77 f2 f9 eb                                      bl #0x30eae4
00492104  0a 00 a0 e1                                      mov r0, sl
00492108  51 ef f9 eb                                      bl #0x30de54
0049210c  0a 10 a0 e1                                      mov r1, sl
00492110  00 20 8a e0                                      add r2, sl, r0
00492114  08 00 a0 e1                                      mov r0, r8
00492118  4b 3a fa eb                                      bl #0x320a4c
0049211c  b0 11 9f e5                                      ldr r1, [pc, #0x1b0]
00492120  06 00 a0 e1                                      mov r0, r6
00492124  c0 25 9d e5                                      ldr r2, [sp, #0x5c0]
00492128  01 10 8f e0                                      add r1, pc, r1
0049212c  d2 05 02 eb                                      bl #0x51387c
00492130  06 00 a0 e1                                      mov r0, r6
00492134  07 10 a0 e1                                      mov r1, r7
00492138  00 20 a0 e3                                      mov r2, #0
0049213c  eb 04 02 eb                                      bl #0x5134f0
00492140  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00492144  00 00 53 e3                                      cmp r3, #0
00492148  0c 00 00 da                                      ble #0x492180
0049214c  04 a0 a0 e1                                      mov sl, r4
00492150  00 60 a0 e3                                      mov r6, #0
00492154  05 00 a0 e1                                      mov r0, r5
00492158  01 20 80 e2                                      add r2, r0, #1
0049215c  07 10 a0 e1                                      mov r1, r7
00492160  10 00 9a e5                                      ldr r0, [sl, #0x10]
00492164  09 ff ff eb                                      bl #0x491d90
00492168  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0049216c  01 60 86 e2                                      add r6, r6, #1
00492170  04 a0 8a e2                                      add sl, sl, #4
00492174  06 00 53 e1                                      cmp r3, r6
00492178  f6 ff ff ca                                      bgt #0x492158
0049217c  00 50 a0 e1                                      mov r5, r0
00492180  09 00 a0 e1                                      mov r0, sb
00492184  08 06 fa eb                                      bl #0x3139ac
00492188  c0 05 9d e5                                      ldr r0, [sp, #0x5c0]
0049218c  08 00 50 e1                                      cmp r0, r8
00492190  02 00 00 0a                                      beq #0x4921a0
00492194  00 00 50 e3                                      cmp r0, #0
00492198  00 00 00 0a                                      beq #0x4921a0
0049219c  ab f8 f9 eb                                      bl #0x310450
004921a0  20 00 9d e5                                      ldr r0, [sp, #0x20]
004921a4  a6 dc fb eb                                      bl #0x389444
004921a8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
004921ac  24 10 9d e5                                      ldr r1, [sp, #0x24]
004921b0  05 00 a0 e1                                      mov r0, r5
004921b4  01 30 92 e7                                      ldr r3, [r2, r1]
004921b8  c4 25 9d e5                                      ldr r2, [sp, #0x5c4]
004921bc  00 30 93 e5                                      ldr r3, [r3]
004921c0  03 00 52 e1                                      cmp r2, r3
004921c4  2f 00 00 1a                                      bne #0x492288
004921c8  73 df 8d e2                                      add sp, sp, #0x1cc
004921cc  01 db 8d e2                                      add sp, sp, #0x400
004921d0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004921d4  04 00 51 e3                                      cmp r1, #4
004921d8  80 ff ff 9a                                      bls #0x491fe0
004921dc  02 00 53 e1                                      cmp r3, r2
004921e0  0b 00 00 0a                                      beq #0x492214
004921e4  ec 10 9f e5                                      ldr r1, [pc, #0xec]
004921e8  01 a0 82 e2                                      add sl, r2, #1
004921ec  01 10 8f e0                                      add r1, pc, r1
004921f0  05 b0 81 e2                                      add fp, r1, #5
004921f4  02 10 81 e2                                      add r1, r1, #2
004921f8  28 10 8d e5                                      str r1, [sp, #0x28]
004921fc  d1 10 5a e1                                      ldrsb r1, [sl, #-1]
00492200  64 00 51 e3                                      cmp r1, #0x64
00492204  0c 00 00 0a                                      beq #0x49223c
00492208  0a 00 53 e1                                      cmp r3, sl
0049220c  01 a0 8a e2                                      add sl, sl, #1
00492210  f9 ff ff 1a                                      bne #0x4921fc
00492214  03 10 a0 e1                                      mov r1, r3
00492218  01 00 53 e1                                      cmp r3, r1
0049221c  01 20 62 10                                      rsbne r2, r2, r1
00492220  05 b0 82 12                                      addne fp, r2, #5
00492224  6e ff ff 1a                                      bne #0x491fe4
00492228  6c ff ff ea                                      b #0x491fe0
0049222c  a8 00 9f e5                                      ldr r0, [pc, #0xa8]
00492230  00 00 8f e0                                      add r0, pc, r0
00492234  1d db 09 eb                                      bl #0x708eb0
00492238  7c ff ff ea                                      b #0x492030
0049223c  0a 00 53 e1                                      cmp r3, sl
00492240  0a 10 a0 e1                                      mov r1, sl
00492244  f2 ff ff 0a                                      beq #0x492214
00492248  28 00 9d e5                                      ldr r0, [sp, #0x28]
0049224c  05 00 00 ea                                      b #0x492268
00492250  0b 00 50 e1                                      cmp r0, fp
00492254  09 00 00 0a                                      beq #0x492280
00492258  01 10 81 e2                                      add r1, r1, #1
0049225c  03 00 51 e1                                      cmp r1, r3
00492260  01 00 80 e2                                      add r0, r0, #1
00492264  eb ff ff 0a                                      beq #0x492218
00492268  d0 e0 d1 e1                                      ldrsb lr, [r1]
0049226c  d1 c0 50 e1                                      ldrsb ip, [r0, #-1]
00492270  0c 00 5e e1                                      cmp lr, ip
00492274  f5 ff ff 0a                                      beq #0x492250
00492278  01 a0 8a e2                                      add sl, sl, #1
0049227c  de ff ff ea                                      b #0x4921fc
00492280  01 10 4a e2                                      sub r1, sl, #1
00492284  e3 ff ff ea                                      b #0x492218
00492288  20 f0 f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0049228c  ec 2c 50 00 ac 40 00 00 50 e6 42 00 8c 7a 43 00  .byte 0xec, 0x2c, 0x50, 0x00, 0xac, 0x40, 0x00, 0x00, 0x50, 0xe6, 0x42, 0x00, 0x8c, 0x7a, 0x43, 0x00
0049229c  90 f2 44 00 0c e3 42 00 88 99 43 00 c8 c4 42 00  .byte 0x90, 0xf2, 0x44, 0x00, 0x0c, 0xe3, 0x42, 0x00, 0x88, 0x99, 0x43, 0x00, 0xc8, 0xc4, 0x42, 0x00
004922ac  98 02 43 00 20 4c 43 00 68 ec 42 00 a4 97 43 00  .byte 0x98, 0x02, 0x43, 0x00, 0x20, 0x4c, 0x43, 0x00, 0x68, 0xec, 0x42, 0x00, 0xa4, 0x97, 0x43, 0x00
004922bc  68 2f 44 00 c0 47 43 00 5c 02 43 00 30 97 43 00  .byte 0x68, 0x2f, 0x44, 0x00, 0xc0, 0x47, 0x43, 0x00, 0x5c, 0x02, 0x43, 0x00, 0x30, 0x97, 0x43, 0x00
004922cc  f4 2e 44 00 54 47 43 00 f0 01 43 00 e4 49 43 00  .byte 0xf4, 0x2e, 0x44, 0x00, 0x54, 0x47, 0x43, 0x00, 0xf0, 0x01, 0x43, 0x00, 0xe4, 0x49, 0x43, 0x00
004922dc  28 c2 42 00                                      .byte 0x28, 0xc2, 0x42, 0x00
