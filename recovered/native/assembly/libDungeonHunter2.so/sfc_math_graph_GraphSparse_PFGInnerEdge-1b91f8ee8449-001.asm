; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0051dca4, declared_size=436, range_size=436, mode=arm
; class-group: sfc::math::graph::GraphSparse<PFGInnerEdge>
; alias: _ZN3sfc4math5graph11GraphSparseI12PFGInnerEdgeE7addNodeEj
; demangled: sfc::math::graph::GraphSparse<PFGInnerEdge>::addNode(unsigned int)
; decoder-mode: arm
0051dca4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0051dca8  08 30 90 e5                                      ldr r3, [r0, #8]
0051dcac  94 71 9f e5                                      ldr r7, [pc, #0x194]
0051dcb0  10 d0 4d e2                                      sub sp, sp, #0x10
0051dcb4  00 00 53 e3                                      cmp r3, #0
0051dcb8  07 70 8f e0                                      add r7, pc, r7
0051dcbc  00 80 a0 e1                                      mov r8, r0
0051dcc0  01 40 a0 e1                                      mov r4, r1
0051dcc4  04 60 80 e2                                      add r6, r0, #4
0051dcc8  14 00 00 0a                                      beq #0x51dd20
0051dccc  06 10 a0 e1                                      mov r1, r6
0051dcd0  00 00 00 ea                                      b #0x51dcd8
0051dcd4  02 30 a0 e1                                      mov r3, r2
0051dcd8  10 20 93 e5                                      ldr r2, [r3, #0x10]
0051dcdc  02 00 54 e1                                      cmp r4, r2
0051dce0  0c 20 93 85                                      ldrhi r2, [r3, #0xc]
0051dce4  08 20 93 95                                      ldrls r2, [r3, #8]
0051dce8  01 30 a0 81                                      movhi r3, r1
0051dcec  03 10 a0 e1                                      mov r1, r3
0051dcf0  00 00 52 e3                                      cmp r2, #0
0051dcf4  f6 ff ff 1a                                      bne #0x51dcd4
0051dcf8  03 00 56 e1                                      cmp r6, r3
0051dcfc  09 00 00 0a                                      beq #0x51dd28
0051dd00  10 20 93 e5                                      ldr r2, [r3, #0x10]
0051dd04  02 00 54 e1                                      cmp r4, r2
0051dd08  04 00 00 3a                                      blo #0x51dd20
0051dd0c  03 00 56 e1                                      cmp r6, r3
0051dd10  14 00 93 15                                      ldrne r0, [r3, #0x14]
0051dd14  03 00 00 0a                                      beq #0x51dd28
0051dd18  10 d0 8d e2                                      add sp, sp, #0x10
0051dd1c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0051dd20  06 30 a0 e1                                      mov r3, r6
0051dd24  f8 ff ff ea                                      b #0x51dd0c
0051dd28  00 10 a0 e3                                      mov r1, #0
0051dd2c  44 00 a0 e3                                      mov r0, #0x44
0051dd30  0e ca f7 eb                                      bl #0x310570
0051dd34  10 11 9f e5                                      ldr r1, [pc, #0x110]
0051dd38  10 31 9f e5                                      ldr r3, [pc, #0x110]
0051dd3c  04 40 80 e5                                      str r4, [r0, #4]
0051dd40  01 10 97 e7                                      ldr r1, [r7, r1]
0051dd44  03 30 97 e7                                      ldr r3, [r7, r3]
0051dd48  04 21 9f e5                                      ldr r2, [pc, #0x104]
0051dd4c  08 10 81 e2                                      add r1, r1, #8
0051dd50  00 10 80 e5                                      str r1, [r0]
0051dd54  00 10 93 e5                                      ldr r1, [r3]
0051dd58  00 50 a0 e1                                      mov r5, r0
0051dd5c  02 20 97 e7                                      ldr r2, [r7, r2]
0051dd60  08 10 85 e5                                      str r1, [r5, #8]
0051dd64  04 70 93 e5                                      ldr r7, [r3, #4]
0051dd68  00 10 a0 e3                                      mov r1, #0
0051dd6c  08 c0 82 e2                                      add ip, r2, #8
0051dd70  0c 70 85 e5                                      str r7, [r5, #0xc]
0051dd74  08 70 93 e5                                      ldr r7, [r3, #8]
0051dd78  05 20 a0 e1                                      mov r2, r5
0051dd7c  00 00 a0 e3                                      mov r0, #0
0051dd80  10 70 85 e5                                      str r7, [r5, #0x10]
0051dd84  00 70 93 e5                                      ldr r7, [r3]
0051dd88  14 70 85 e5                                      str r7, [r5, #0x14]
0051dd8c  04 70 93 e5                                      ldr r7, [r3, #4]
0051dd90  18 70 85 e5                                      str r7, [r5, #0x18]
0051dd94  08 30 93 e5                                      ldr r3, [r3, #8]
0051dd98  24 00 85 e5                                      str r0, [r5, #0x24]
0051dd9c  00 c0 85 e5                                      str ip, [r5]
0051dda0  1c 30 85 e5                                      str r3, [r5, #0x1c]
0051dda4  20 00 85 e5                                      str r0, [r5, #0x20]
0051dda8  28 10 85 e5                                      str r1, [r5, #0x28]
0051ddac  30 10 85 e5                                      str r1, [r5, #0x30]
0051ddb0  2c 10 e2 e5                                      strb r1, [r2, #0x2c]!
0051ddb4  38 20 85 e5                                      str r2, [r5, #0x38]
0051ddb8  3c 10 85 e5                                      str r1, [r5, #0x3c]
0051ddbc  34 20 85 e5                                      str r2, [r5, #0x34]
0051ddc0  08 c0 98 e5                                      ldr ip, [r8, #8]
0051ddc4  01 00 5c e1                                      cmp ip, r1
0051ddc8  1c 00 00 0a                                      beq #0x51de40
0051ddcc  06 20 a0 e1                                      mov r2, r6
0051ddd0  00 00 00 ea                                      b #0x51ddd8
0051ddd4  03 c0 a0 e1                                      mov ip, r3
0051ddd8  10 30 9c e5                                      ldr r3, [ip, #0x10]
0051dddc  03 00 54 e1                                      cmp r4, r3
0051dde0  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
0051dde4  08 30 9c 95                                      ldrls r3, [ip, #8]
0051dde8  02 c0 a0 81                                      movhi ip, r2
0051ddec  0c 20 a0 e1                                      mov r2, ip
0051ddf0  00 00 53 e3                                      cmp r3, #0
0051ddf4  f6 ff ff 1a                                      bne #0x51ddd4
0051ddf8  0c 00 56 e1                                      cmp r6, ip
0051ddfc  03 00 00 0a                                      beq #0x51de10
0051de00  10 20 9c e5                                      ldr r2, [ip, #0x10]
0051de04  0c 30 a0 e1                                      mov r3, ip
0051de08  02 00 54 e1                                      cmp r4, r2
0051de0c  08 00 00 2a                                      bhs #0x51de34
0051de10  0d 30 a0 e1                                      mov r3, sp
0051de14  00 e0 a0 e3                                      mov lr, #0
0051de18  06 10 a0 e1                                      mov r1, r6
0051de1c  08 00 8d e2                                      add r0, sp, #8
0051de20  0c 20 8d e2                                      add r2, sp, #0xc
0051de24  10 40 8d e8                                      stm sp, {r4, lr}
0051de28  0c c0 8d e5                                      str ip, [sp, #0xc]
0051de2c  bf fe ff eb                                      bl #0x51d930
0051de30  08 30 9d e5                                      ldr r3, [sp, #8]
0051de34  14 50 83 e5                                      str r5, [r3, #0x14]
0051de38  05 00 a0 e1                                      mov r0, r5
0051de3c  b5 ff ff ea                                      b #0x51dd18
0051de40  06 c0 a0 e1                                      mov ip, r6
0051de44  eb ff ff ea                                      b #0x51ddf8
; mapping-symbol data/literal pool
0051de48  d8 6d 47 00 d4 40 00 00 2c 3f 00 00 24 3d 00 00  .byte 0xd8, 0x6d, 0x47, 0x00, 0xd4, 0x40, 0x00, 0x00, 0x2c, 0x3f, 0x00, 0x00, 0x24, 0x3d, 0x00, 0x00

; FUNCTION 0x0051e758, declared_size=564, range_size=564, mode=arm
; class-group: sfc::math::graph::GraphSparse<PFGInnerEdge>
; alias: _ZN3sfc4math5graph11GraphSparseI12PFGInnerEdgeE7addEdgeEjj
; demangled: sfc::math::graph::GraphSparse<PFGInnerEdge>::addEdge(unsigned int, unsigned int)
; decoder-mode: arm
0051e758  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0051e75c  08 40 90 e5                                      ldr r4, [r0, #8]
0051e760  1c 62 9f e5                                      ldr r6, [pc, #0x21c]
0051e764  04 00 80 e2                                      add r0, r0, #4
0051e768  00 00 54 e3                                      cmp r4, #0
0051e76c  06 60 8f e0                                      add r6, pc, r6
0051e770  14 d0 4d e2                                      sub sp, sp, #0x14
0051e774  00 70 a0 01                                      moveq r7, r0
0051e778  00 40 a0 01                                      moveq r4, r0
0051e77c  20 00 00 0a                                      beq #0x51e804
0051e780  00 c0 a0 e1                                      mov ip, r0
0051e784  04 70 a0 e1                                      mov r7, r4
0051e788  00 00 00 ea                                      b #0x51e790
0051e78c  03 70 a0 e1                                      mov r7, r3
0051e790  10 30 97 e5                                      ldr r3, [r7, #0x10]
0051e794  03 00 51 e1                                      cmp r1, r3
0051e798  0c 30 97 85                                      ldrhi r3, [r7, #0xc]
0051e79c  08 30 97 95                                      ldrls r3, [r7, #8]
0051e7a0  0c 70 a0 81                                      movhi r7, ip
0051e7a4  07 c0 a0 e1                                      mov ip, r7
0051e7a8  00 00 53 e3                                      cmp r3, #0
0051e7ac  f6 ff ff 1a                                      bne #0x51e78c
0051e7b0  07 00 50 e1                                      cmp r0, r7
0051e7b4  02 00 00 0a                                      beq #0x51e7c4
0051e7b8  10 30 97 e5                                      ldr r3, [r7, #0x10]
0051e7bc  03 00 51 e1                                      cmp r1, r3
0051e7c0  00 70 a0 31                                      movlo r7, r0
0051e7c4  00 10 a0 e1                                      mov r1, r0
0051e7c8  00 00 00 ea                                      b #0x51e7d0
0051e7cc  03 40 a0 e1                                      mov r4, r3
0051e7d0  10 30 94 e5                                      ldr r3, [r4, #0x10]
0051e7d4  02 00 53 e1                                      cmp r3, r2
0051e7d8  0c 30 94 35                                      ldrlo r3, [r4, #0xc]
0051e7dc  08 30 94 25                                      ldrhs r3, [r4, #8]
0051e7e0  01 40 a0 31                                      movlo r4, r1
0051e7e4  04 10 a0 e1                                      mov r1, r4
0051e7e8  00 00 53 e3                                      cmp r3, #0
0051e7ec  f6 ff ff 1a                                      bne #0x51e7cc
0051e7f0  04 00 50 e1                                      cmp r0, r4
0051e7f4  02 00 00 0a                                      beq #0x51e804
0051e7f8  10 30 94 e5                                      ldr r3, [r4, #0x10]
0051e7fc  02 00 53 e1                                      cmp r3, r2
0051e800  00 40 a0 81                                      movhi r4, r0
0051e804  07 00 50 e1                                      cmp r0, r7
0051e808  58 00 00 0a                                      beq #0x51e970
0051e80c  04 00 50 e1                                      cmp r0, r4
0051e810  56 00 00 0a                                      beq #0x51e970
0051e814  14 30 94 e5                                      ldr r3, [r4, #0x14]
0051e818  14 50 97 e5                                      ldr r5, [r7, #0x14]
0051e81c  03 00 a0 e1                                      mov r0, r3
0051e820  00 30 93 e5                                      ldr r3, [r3]
0051e824  0f e0 a0 e1                                      mov lr, pc
0051e828  00 f0 93 e5                                      ldr pc, [r3]
0051e82c  30 30 95 e5                                      ldr r3, [r5, #0x30]
0051e830  2c 50 85 e2                                      add r5, r5, #0x2c
0051e834  00 00 53 e3                                      cmp r3, #0
0051e838  05 10 a0 11                                      movne r1, r5
0051e83c  01 00 00 1a                                      bne #0x51e848
0051e840  0d 00 00 ea                                      b #0x51e87c
0051e844  02 30 a0 e1                                      mov r3, r2
0051e848  10 20 93 e5                                      ldr r2, [r3, #0x10]
0051e84c  02 00 50 e1                                      cmp r0, r2
0051e850  0c 20 93 85                                      ldrhi r2, [r3, #0xc]
0051e854  08 20 93 95                                      ldrls r2, [r3, #8]
0051e858  01 30 a0 81                                      movhi r3, r1
0051e85c  03 10 a0 e1                                      mov r1, r3
0051e860  00 00 52 e3                                      cmp r2, #0
0051e864  f6 ff ff 1a                                      bne #0x51e844
0051e868  03 00 55 e1                                      cmp r5, r3
0051e86c  03 00 00 0a                                      beq #0x51e880
0051e870  10 20 93 e5                                      ldr r2, [r3, #0x10]
0051e874  02 00 50 e1                                      cmp r0, r2
0051e878  00 00 00 2a                                      bhs #0x51e880
0051e87c  05 30 a0 e1                                      mov r3, r5
0051e880  14 80 97 e5                                      ldr r8, [r7, #0x14]
0051e884  2c 20 88 e2                                      add r2, r8, #0x2c
0051e888  02 00 53 e1                                      cmp r3, r2
0051e88c  14 00 93 15                                      ldrne r0, [r3, #0x14]
0051e890  37 00 00 1a                                      bne #0x51e974
0051e894  00 10 a0 e3                                      mov r1, #0
0051e898  18 00 a0 e3                                      mov r0, #0x18
0051e89c  14 a0 94 e5                                      ldr sl, [r4, #0x14]
0051e8a0  32 c7 f7 eb                                      bl #0x310570
0051e8a4  dc 30 9f e5                                      ldr r3, [pc, #0xdc]
0051e8a8  00 20 a0 e3                                      mov r2, #0
0051e8ac  fe 15 a0 e3                                      mov r1, #0x3f800000
0051e8b0  03 30 96 e7                                      ldr r3, [r6, r3]
0051e8b4  0c 10 80 e5                                      str r1, [r0, #0xc]
0051e8b8  04 80 80 e5                                      str r8, [r0, #4]
0051e8bc  08 30 83 e2                                      add r3, r3, #8
0051e8c0  08 a0 80 e5                                      str sl, [r0, #8]
0051e8c4  00 30 80 e5                                      str r3, [r0]
0051e8c8  14 20 80 e5                                      str r2, [r0, #0x14]
0051e8cc  10 20 80 e5                                      str r2, [r0, #0x10]
0051e8d0  14 30 94 e5                                      ldr r3, [r4, #0x14]
0051e8d4  00 50 a0 e1                                      mov r5, r0
0051e8d8  14 60 97 e5                                      ldr r6, [r7, #0x14]
0051e8dc  03 00 a0 e1                                      mov r0, r3
0051e8e0  00 30 93 e5                                      ldr r3, [r3]
0051e8e4  0f e0 a0 e1                                      mov lr, pc
0051e8e8  00 f0 93 e5                                      ldr pc, [r3]
0051e8ec  30 c0 96 e5                                      ldr ip, [r6, #0x30]
0051e8f0  00 40 a0 e1                                      mov r4, r0
0051e8f4  2c 10 86 e2                                      add r1, r6, #0x2c
0051e8f8  00 00 5c e3                                      cmp ip, #0
0051e8fc  1e 00 00 0a                                      beq #0x51e97c
0051e900  01 20 a0 e1                                      mov r2, r1
0051e904  00 00 00 ea                                      b #0x51e90c
0051e908  03 c0 a0 e1                                      mov ip, r3
0051e90c  10 30 9c e5                                      ldr r3, [ip, #0x10]
0051e910  03 00 54 e1                                      cmp r4, r3
0051e914  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
0051e918  08 30 9c 95                                      ldrls r3, [ip, #8]
0051e91c  02 c0 a0 81                                      movhi ip, r2
0051e920  0c 20 a0 e1                                      mov r2, ip
0051e924  00 00 53 e3                                      cmp r3, #0
0051e928  f6 ff ff 1a                                      bne #0x51e908
0051e92c  0c 00 51 e1                                      cmp r1, ip
0051e930  03 00 00 0a                                      beq #0x51e944
0051e934  10 20 9c e5                                      ldr r2, [ip, #0x10]
0051e938  0c 30 a0 e1                                      mov r3, ip
0051e93c  02 00 54 e1                                      cmp r4, r2
0051e940  07 00 00 2a                                      bhs #0x51e964
0051e944  0d 30 a0 e1                                      mov r3, sp
0051e948  00 e0 a0 e3                                      mov lr, #0
0051e94c  08 00 8d e2                                      add r0, sp, #8
0051e950  0c 20 8d e2                                      add r2, sp, #0xc
0051e954  10 40 8d e8                                      stm sp, {r4, lr}
0051e958  0c c0 8d e5                                      str ip, [sp, #0xc]
0051e95c  a0 fe ff eb                                      bl #0x51e3e4
0051e960  08 30 9d e5                                      ldr r3, [sp, #8]
0051e964  05 00 a0 e1                                      mov r0, r5
0051e968  14 50 83 e5                                      str r5, [r3, #0x14]
0051e96c  00 00 00 ea                                      b #0x51e974
0051e970  00 00 a0 e3                                      mov r0, #0
0051e974  14 d0 8d e2                                      add sp, sp, #0x14
0051e978  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0051e97c  01 c0 a0 e1                                      mov ip, r1
0051e980  e9 ff ff ea                                      b #0x51e92c
; mapping-symbol data/literal pool
0051e984  24 63 47 00 e8 0c 00 00                          .byte 0x24, 0x63, 0x47, 0x00, 0xe8, 0x0c, 0x00, 0x00

; FUNCTION 0x0052328c, declared_size=400, range_size=400, mode=arm
; class-group: sfc::math::graph::GraphSparse<PFGInnerEdge>
; alias: _ZN3sfc4math5graph11GraphSparseI12PFGInnerEdgeE5clearEv
; demangled: sfc::math::graph::GraphSparse<PFGInnerEdge>::clear()
; decoder-mode: arm
0052328c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00523290  0c 40 90 e5                                      ldr r4, [r0, #0xc]
00523294  00 80 a0 e1                                      mov r8, r0
00523298  04 70 80 e2                                      add r7, r0, #4
0052329c  00 a0 a0 e3                                      mov sl, #0
005232a0  04 00 57 e1                                      cmp r7, r4
005232a4  28 00 00 0a                                      beq #0x52334c
005232a8  14 60 94 e5                                      ldr r6, [r4, #0x14]
005232ac  34 90 96 e5                                      ldr sb, [r6, #0x34]
005232b0  2c 50 86 e2                                      add r5, r6, #0x2c
005232b4  09 00 55 e1                                      cmp r5, sb
005232b8  11 00 00 0a                                      beq #0x523304
005232bc  14 30 99 e5                                      ldr r3, [sb, #0x14]
005232c0  00 00 53 e3                                      cmp r3, #0
005232c4  03 00 00 0a                                      beq #0x5232d8
005232c8  03 00 a0 e1                                      mov r0, r3
005232cc  00 30 93 e5                                      ldr r3, [r3]
005232d0  0f e0 a0 e1                                      mov lr, pc
005232d4  20 f0 93 e5                                      ldr pc, [r3, #0x20]
005232d8  0c 20 99 e5                                      ldr r2, [sb, #0xc]
005232dc  00 00 52 e3                                      cmp r2, #0
005232e0  01 00 00 1a                                      bne #0x5232ec
005232e4  24 00 00 ea                                      b #0x52337c
005232e8  03 20 a0 e1                                      mov r2, r3
005232ec  08 30 92 e5                                      ldr r3, [r2, #8]
005232f0  00 00 53 e3                                      cmp r3, #0
005232f4  fb ff ff 1a                                      bne #0x5232e8
005232f8  02 90 a0 e1                                      mov sb, r2
005232fc  09 00 55 e1                                      cmp r5, sb
00523300  ed ff ff 1a                                      bne #0x5232bc
00523304  3c 30 96 e5                                      ldr r3, [r6, #0x3c]
00523308  00 00 53 e3                                      cmp r3, #0
0052330c  27 00 00 1a                                      bne #0x5233b0
00523310  06 00 a0 e1                                      mov r0, r6
00523314  00 30 96 e5                                      ldr r3, [r6]
00523318  0f e0 a0 e1                                      mov lr, pc
0052331c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00523320  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00523324  00 00 52 e3                                      cmp r2, #0
00523328  2e 00 00 0a                                      beq #0x5233e8
0052332c  02 40 a0 e1                                      mov r4, r2
00523330  00 00 00 ea                                      b #0x523338
00523334  03 40 a0 e1                                      mov r4, r3
00523338  08 30 94 e5                                      ldr r3, [r4, #8]
0052333c  00 00 53 e3                                      cmp r3, #0
00523340  fb ff ff 1a                                      bne #0x523334
00523344  04 00 57 e1                                      cmp r7, r4
00523348  d6 ff ff 1a                                      bne #0x5232a8
0052334c  14 30 98 e5                                      ldr r3, [r8, #0x14]
00523350  00 00 53 e3                                      cmp r3, #0
00523354  07 00 00 0a                                      beq #0x523378
00523358  07 00 a0 e1                                      mov r0, r7
0052335c  08 10 98 e5                                      ldr r1, [r8, #8]
00523360  bb ff ff eb                                      bl #0x523254
00523364  00 30 a0 e3                                      mov r3, #0
00523368  14 30 88 e5                                      str r3, [r8, #0x14]
0052336c  10 70 88 e5                                      str r7, [r8, #0x10]
00523370  0c 70 88 e5                                      str r7, [r8, #0xc]
00523374  08 30 88 e5                                      str r3, [r8, #8]
00523378  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0052337c  04 30 99 e5                                      ldr r3, [sb, #4]
00523380  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00523384  01 00 59 e1                                      cmp sb, r1
00523388  05 00 00 1a                                      bne #0x5233a4
0052338c  03 90 a0 e1                                      mov sb, r3
00523390  04 30 93 e5                                      ldr r3, [r3, #4]
00523394  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00523398  09 00 52 e1                                      cmp r2, sb
0052339c  fa ff ff 0a                                      beq #0x52338c
005233a0  0c 20 99 e5                                      ldr r2, [sb, #0xc]
005233a4  03 00 52 e1                                      cmp r2, r3
005233a8  03 90 a0 11                                      movne sb, r3
005233ac  c0 ff ff ea                                      b #0x5232b4
005233b0  05 00 a0 e1                                      mov r0, r5
005233b4  30 10 96 e5                                      ldr r1, [r6, #0x30]
005233b8  4a e4 ff eb                                      bl #0x51c4e8
005233bc  38 50 86 e5                                      str r5, [r6, #0x38]
005233c0  34 50 86 e5                                      str r5, [r6, #0x34]
005233c4  30 a0 86 e5                                      str sl, [r6, #0x30]
005233c8  3c a0 86 e5                                      str sl, [r6, #0x3c]
005233cc  06 00 a0 e1                                      mov r0, r6
005233d0  00 30 96 e5                                      ldr r3, [r6]
005233d4  0f e0 a0 e1                                      mov lr, pc
005233d8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005233dc  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005233e0  00 00 52 e3                                      cmp r2, #0
005233e4  d0 ff ff 1a                                      bne #0x52332c
005233e8  04 30 94 e5                                      ldr r3, [r4, #4]
005233ec  0c 10 93 e5                                      ldr r1, [r3, #0xc]
005233f0  01 00 54 e1                                      cmp r4, r1
005233f4  05 00 00 1a                                      bne #0x523410
005233f8  03 40 a0 e1                                      mov r4, r3
005233fc  04 30 93 e5                                      ldr r3, [r3, #4]
00523400  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00523404  04 00 52 e1                                      cmp r2, r4
00523408  fa ff ff 0a                                      beq #0x5233f8
0052340c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00523410  02 00 53 e1                                      cmp r3, r2
00523414  03 40 a0 11                                      movne r4, r3
00523418  a0 ff ff ea                                      b #0x5232a0

; FUNCTION 0x0052341c, declared_size=100, range_size=100, mode=arm
; class-group: sfc::math::graph::GraphSparse<PFGInnerEdge>
; alias: _ZN3sfc4math5graph11GraphSparseI12PFGInnerEdgeED2Ev
; demangled: sfc::math::graph::GraphSparse<PFGInnerEdge>::~GraphSparse()
; decoder-mode: arm
0052341c  54 30 9f e5                                      ldr r3, [pc, #0x54]
00523420  54 20 9f e5                                      ldr r2, [pc, #0x54]
00523424  70 40 2d e9                                      push {r4, r5, r6, lr}
00523428  03 30 8f e0                                      add r3, pc, r3
0052342c  02 20 93 e7                                      ldr r2, [r3, r2]
00523430  00 40 a0 e1                                      mov r4, r0
00523434  08 20 82 e2                                      add r2, r2, #8
00523438  00 20 80 e5                                      str r2, [r0]
0052343c  92 ff ff eb                                      bl #0x52328c
00523440  14 30 94 e5                                      ldr r3, [r4, #0x14]
00523444  00 00 53 e3                                      cmp r3, #0
00523448  08 00 00 0a                                      beq #0x523470
0052344c  04 50 84 e2                                      add r5, r4, #4
00523450  05 00 a0 e1                                      mov r0, r5
00523454  08 10 94 e5                                      ldr r1, [r4, #8]
00523458  7d ff ff eb                                      bl #0x523254
0052345c  00 30 a0 e3                                      mov r3, #0
00523460  10 50 84 e5                                      str r5, [r4, #0x10]
00523464  14 30 84 e5                                      str r3, [r4, #0x14]
00523468  0c 50 84 e5                                      str r5, [r4, #0xc]
0052346c  08 30 84 e5                                      str r3, [r4, #8]
00523470  04 00 a0 e1                                      mov r0, r4
00523474  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00523478  68 16 47 00 98 0b 00 00                          .byte 0x68, 0x16, 0x47, 0x00, 0x98, 0x0b, 0x00, 0x00

; FUNCTION 0x005234f0, declared_size=100, range_size=100, mode=arm
; class-group: sfc::math::graph::GraphSparse<PFGInnerEdge>
; alias: _ZN3sfc4math5graph11GraphSparseI12PFGInnerEdgeED1Ev
; demangled: sfc::math::graph::GraphSparse<PFGInnerEdge>::~GraphSparse()
; decoder-mode: arm
005234f0  54 30 9f e5                                      ldr r3, [pc, #0x54]
005234f4  54 20 9f e5                                      ldr r2, [pc, #0x54]
005234f8  70 40 2d e9                                      push {r4, r5, r6, lr}
005234fc  03 30 8f e0                                      add r3, pc, r3
00523500  02 20 93 e7                                      ldr r2, [r3, r2]
00523504  00 40 a0 e1                                      mov r4, r0
00523508  08 20 82 e2                                      add r2, r2, #8
0052350c  00 20 80 e5                                      str r2, [r0]
00523510  5d ff ff eb                                      bl #0x52328c
00523514  14 30 94 e5                                      ldr r3, [r4, #0x14]
00523518  00 00 53 e3                                      cmp r3, #0
0052351c  08 00 00 0a                                      beq #0x523544
00523520  04 50 84 e2                                      add r5, r4, #4
00523524  05 00 a0 e1                                      mov r0, r5
00523528  08 10 94 e5                                      ldr r1, [r4, #8]
0052352c  48 ff ff eb                                      bl #0x523254
00523530  00 30 a0 e3                                      mov r3, #0
00523534  10 50 84 e5                                      str r5, [r4, #0x10]
00523538  14 30 84 e5                                      str r3, [r4, #0x14]
0052353c  0c 50 84 e5                                      str r5, [r4, #0xc]
00523540  08 30 84 e5                                      str r3, [r4, #8]
00523544  04 00 a0 e1                                      mov r0, r4
00523548  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0052354c  94 15 47 00 98 0b 00 00                          .byte 0x94, 0x15, 0x47, 0x00, 0x98, 0x0b, 0x00, 0x00

; FUNCTION 0x00523554, declared_size=28, range_size=28, mode=arm
; class-group: sfc::math::graph::GraphSparse<PFGInnerEdge>
; alias: _ZN3sfc4math5graph11GraphSparseI12PFGInnerEdgeED0Ev
; demangled: sfc::math::graph::GraphSparse<PFGInnerEdge>::~GraphSparse()
; decoder-mode: arm
00523554  10 40 2d e9                                      push {r4, lr}
00523558  00 40 a0 e1                                      mov r4, r0
0052355c  e3 ff ff eb                                      bl #0x5234f0
00523560  04 00 a0 e1                                      mov r0, r4
00523564  b5 b3 f7 eb                                      bl #0x310440
00523568  04 00 a0 e1                                      mov r0, r4
0052356c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0052ac30, declared_size=284, range_size=284, mode=arm
; class-group: sfc::math::graph::GraphSparse<PFGInnerEdge>
; alias: _ZNK3sfc4math5graph11GraphSparseI12PFGInnerEdgeE8getEdgesEjRSt4listIPKS3_SaIS7_EE
; demangled: sfc::math::graph::GraphSparse<PFGInnerEdge>::getEdges(unsigned int, std::list<PFGInnerEdge const*, std::allocator<PFGInnerEdge const*> >&) const
; decoder-mode: arm
0052ac30  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0052ac34  08 40 90 e5                                      ldr r4, [r0, #8]
0052ac38  02 60 a0 e1                                      mov r6, r2
0052ac3c  04 30 80 e2                                      add r3, r0, #4
0052ac40  00 00 54 e3                                      cmp r4, #0
0052ac44  2e 00 00 0a                                      beq #0x52ad04
0052ac48  03 00 a0 e1                                      mov r0, r3
0052ac4c  00 00 00 ea                                      b #0x52ac54
0052ac50  02 40 a0 e1                                      mov r4, r2
0052ac54  10 20 94 e5                                      ldr r2, [r4, #0x10]
0052ac58  02 00 51 e1                                      cmp r1, r2
0052ac5c  0c 20 94 85                                      ldrhi r2, [r4, #0xc]
0052ac60  08 20 94 95                                      ldrls r2, [r4, #8]
0052ac64  00 40 a0 81                                      movhi r4, r0
0052ac68  04 00 a0 e1                                      mov r0, r4
0052ac6c  00 00 52 e3                                      cmp r2, #0
0052ac70  f6 ff ff 1a                                      bne #0x52ac50
0052ac74  04 00 53 e1                                      cmp r3, r4
0052ac78  31 00 00 0a                                      beq #0x52ad44
0052ac7c  10 20 94 e5                                      ldr r2, [r4, #0x10]
0052ac80  02 00 51 e1                                      cmp r1, r2
0052ac84  1e 00 00 3a                                      blo #0x52ad04
0052ac88  04 00 53 e1                                      cmp r3, r4
0052ac8c  2c 00 00 0a                                      beq #0x52ad44
0052ac90  14 30 94 e5                                      ldr r3, [r4, #0x14]
0052ac94  34 50 93 e5                                      ldr r5, [r3, #0x34]
0052ac98  2c 20 83 e2                                      add r2, r3, #0x2c
0052ac9c  05 00 52 e1                                      cmp r2, r5
0052aca0  15 00 00 0a                                      beq #0x52acfc
0052aca4  06 00 a0 e1                                      mov r0, r6
0052aca8  14 70 95 e5                                      ldr r7, [r5, #0x14]
0052acac  74 ff ff eb                                      bl #0x52aa84
0052acb0  08 70 80 e5                                      str r7, [r0, #8]
0052acb4  04 30 96 e5                                      ldr r3, [r6, #4]
0052acb8  00 60 80 e5                                      str r6, [r0]
0052acbc  04 30 80 e5                                      str r3, [r0, #4]
0052acc0  00 00 83 e5                                      str r0, [r3]
0052acc4  04 00 86 e5                                      str r0, [r6, #4]
0052acc8  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0052accc  00 00 52 e3                                      cmp r2, #0
0052acd0  0d 00 00 0a                                      beq #0x52ad0c
0052acd4  02 50 a0 e1                                      mov r5, r2
0052acd8  00 00 00 ea                                      b #0x52ace0
0052acdc  03 50 a0 e1                                      mov r5, r3
0052ace0  08 30 95 e5                                      ldr r3, [r5, #8]
0052ace4  00 00 53 e3                                      cmp r3, #0
0052ace8  fb ff ff 1a                                      bne #0x52acdc
0052acec  14 30 94 e5                                      ldr r3, [r4, #0x14]
0052acf0  2c 20 83 e2                                      add r2, r3, #0x2c
0052acf4  05 00 52 e1                                      cmp r2, r5
0052acf8  e9 ff ff 1a                                      bne #0x52aca4
0052acfc  3c 00 93 e5                                      ldr r0, [r3, #0x3c]
0052ad00  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0052ad04  03 40 a0 e1                                      mov r4, r3
0052ad08  de ff ff ea                                      b #0x52ac88
0052ad0c  04 30 95 e5                                      ldr r3, [r5, #4]
0052ad10  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0052ad14  01 00 55 e1                                      cmp r5, r1
0052ad18  05 00 00 1a                                      bne #0x52ad34
0052ad1c  03 50 a0 e1                                      mov r5, r3
0052ad20  04 30 93 e5                                      ldr r3, [r3, #4]
0052ad24  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0052ad28  05 00 52 e1                                      cmp r2, r5
0052ad2c  fa ff ff 0a                                      beq #0x52ad1c
0052ad30  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0052ad34  02 00 53 e1                                      cmp r3, r2
0052ad38  03 50 a0 11                                      movne r5, r3
0052ad3c  14 30 94 e5                                      ldr r3, [r4, #0x14]
0052ad40  ea ff ff ea                                      b #0x52acf0
0052ad44  00 00 a0 e3                                      mov r0, #0
0052ad48  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
