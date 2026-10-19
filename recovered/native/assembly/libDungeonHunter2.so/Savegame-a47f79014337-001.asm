; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00313dfc, declared_size=140, range_size=140, mode=arm
; class-group: Savegame
; alias: _ZN8SavegameD1Ev
; demangled: Savegame::~Savegame()
; decoder-mode: arm
00313dfc  70 40 2d e9                                      push {r4, r5, r6, lr}
00313e00  78 30 9f e5                                      ldr r3, [pc, #0x78]
00313e04  78 20 9f e5                                      ldr r2, [pc, #0x78]
00313e08  1c 10 90 e5                                      ldr r1, [r0, #0x1c]
00313e0c  03 30 8f e0                                      add r3, pc, r3
00313e10  02 20 93 e7                                      ldr r2, [r3, r2]
00313e14  00 00 51 e3                                      cmp r1, #0
00313e18  00 40 a0 e1                                      mov r4, r0
00313e1c  08 20 82 e2                                      add r2, r2, #8
00313e20  00 20 80 e5                                      str r2, [r0]
00313e24  05 00 00 0a                                      beq #0x313e40
00313e28  00 30 91 e5                                      ldr r3, [r1]
00313e2c  01 00 a0 e1                                      mov r0, r1
00313e30  0f e0 a0 e1                                      mov lr, pc
00313e34  04 f0 93 e5                                      ldr pc, [r3, #4]
00313e38  00 30 a0 e3                                      mov r3, #0
00313e3c  1c 30 84 e5                                      str r3, [r4, #0x1c]
00313e40  30 30 94 e5                                      ldr r3, [r4, #0x30]
00313e44  00 00 53 e3                                      cmp r3, #0
00313e48  08 00 00 0a                                      beq #0x313e70
00313e4c  20 50 84 e2                                      add r5, r4, #0x20
00313e50  05 00 a0 e1                                      mov r0, r5
00313e54  24 10 94 e5                                      ldr r1, [r4, #0x24]
00313e58  d7 ff ff eb                                      bl #0x313dbc
00313e5c  00 30 a0 e3                                      mov r3, #0
00313e60  2c 50 84 e5                                      str r5, [r4, #0x2c]
00313e64  30 30 84 e5                                      str r3, [r4, #0x30]
00313e68  28 50 84 e5                                      str r5, [r4, #0x28]
00313e6c  24 30 84 e5                                      str r3, [r4, #0x24]
00313e70  04 00 84 e2                                      add r0, r4, #4
00313e74  cc fe ff eb                                      bl #0x3139ac
00313e78  04 00 a0 e1                                      mov r0, r4
00313e7c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00313e80  84 0c 68 00 b8 0d 00 00                          .byte 0x84, 0x0c, 0x68, 0x00, 0xb8, 0x0d, 0x00, 0x00

; FUNCTION 0x00313e88, declared_size=28, range_size=28, mode=arm
; class-group: Savegame
; alias: _ZN8SavegameD0Ev
; demangled: Savegame::~Savegame()
; decoder-mode: arm
00313e88  10 40 2d e9                                      push {r4, lr}
00313e8c  00 40 a0 e1                                      mov r4, r0
00313e90  d9 ff ff eb                                      bl #0x313dfc
00313e94  04 00 a0 e1                                      mov r0, r4
00313e98  68 f1 ff eb                                      bl #0x310440
00313e9c  04 00 a0 e1                                      mov r0, r4
00313ea0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00313ea4, declared_size=140, range_size=140, mode=arm
; class-group: Savegame
; alias: _ZN8SavegameD2Ev
; demangled: Savegame::~Savegame()
; decoder-mode: arm
00313ea4  70 40 2d e9                                      push {r4, r5, r6, lr}
00313ea8  78 30 9f e5                                      ldr r3, [pc, #0x78]
00313eac  78 20 9f e5                                      ldr r2, [pc, #0x78]
00313eb0  1c 10 90 e5                                      ldr r1, [r0, #0x1c]
00313eb4  03 30 8f e0                                      add r3, pc, r3
00313eb8  02 20 93 e7                                      ldr r2, [r3, r2]
00313ebc  00 00 51 e3                                      cmp r1, #0
00313ec0  00 40 a0 e1                                      mov r4, r0
00313ec4  08 20 82 e2                                      add r2, r2, #8
00313ec8  00 20 80 e5                                      str r2, [r0]
00313ecc  05 00 00 0a                                      beq #0x313ee8
00313ed0  00 30 91 e5                                      ldr r3, [r1]
00313ed4  01 00 a0 e1                                      mov r0, r1
00313ed8  0f e0 a0 e1                                      mov lr, pc
00313edc  04 f0 93 e5                                      ldr pc, [r3, #4]
00313ee0  00 30 a0 e3                                      mov r3, #0
00313ee4  1c 30 84 e5                                      str r3, [r4, #0x1c]
00313ee8  30 30 94 e5                                      ldr r3, [r4, #0x30]
00313eec  00 00 53 e3                                      cmp r3, #0
00313ef0  08 00 00 0a                                      beq #0x313f18
00313ef4  20 50 84 e2                                      add r5, r4, #0x20
00313ef8  05 00 a0 e1                                      mov r0, r5
00313efc  24 10 94 e5                                      ldr r1, [r4, #0x24]
00313f00  ad ff ff eb                                      bl #0x313dbc
00313f04  00 30 a0 e3                                      mov r3, #0
00313f08  2c 50 84 e5                                      str r5, [r4, #0x2c]
00313f0c  30 30 84 e5                                      str r3, [r4, #0x30]
00313f10  28 50 84 e5                                      str r5, [r4, #0x28]
00313f14  24 30 84 e5                                      str r3, [r4, #0x24]
00313f18  04 00 84 e2                                      add r0, r4, #4
00313f1c  a2 fe ff eb                                      bl #0x3139ac
00313f20  04 00 a0 e1                                      mov r0, r4
00313f24  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00313f28  dc 0b 68 00 b8 0d 00 00                          .byte 0xdc, 0x0b, 0x68, 0x00, 0xb8, 0x0d, 0x00, 0x00

; FUNCTION 0x00313fb0, declared_size=256, range_size=256, mode=arm
; class-group: Savegame
; alias: _ZN8Savegame18DeleteAllSlotFilesEi
; demangled: Savegame::DeleteAllSlotFiles(int)
; decoder-mode: arm
00313fb0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00313fb4  e0 40 9f e5                                      ldr r4, [pc, #0xe0]
00313fb8  e0 80 9f e5                                      ldr r8, [pc, #0xe0]
00313fbc  41 de 4d e2                                      sub sp, sp, #0x410
00313fc0  04 40 8f e0                                      add r4, pc, r4
00313fc4  08 30 94 e7                                      ldr r3, [r4, r8]
00313fc8  d4 10 9f e5                                      ldr r1, [pc, #0xd4]
00313fcc  d4 20 9f e5                                      ldr r2, [pc, #0xd4]
00313fd0  00 c0 93 e5                                      ldr ip, [r3]
00313fd4  10 60 8d e2                                      add r6, sp, #0x10
00313fd8  04 60 46 e2                                      sub r6, r6, #4
00313fdc  00 30 a0 e1                                      mov r3, r0
00313fe0  01 10 8f e0                                      add r1, pc, r1
00313fe4  02 20 8f e0                                      add r2, pc, r2
00313fe8  06 00 a0 e1                                      mov r0, r6
00313fec  0c c4 8d e5                                      str ip, [sp, #0x40c]
00313ff0  bb ea ff eb                                      bl #0x30eae4
00313ff4  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
00313ff8  00 30 a0 e3                                      mov r3, #0
00313ffc  08 30 8d e5                                      str r3, [sp, #8]
00314000  02 70 94 e7                                      ldr r7, [r4, r2]
00314004  00 30 8d e5                                      str r3, [sp]
00314008  04 30 8d e5                                      str r3, [sp, #4]
0031400c  10 30 97 e5                                      ldr r3, [r7, #0x10]
00314010  0d 50 a0 e1                                      mov r5, sp
00314014  34 90 93 e5                                      ldr sb, [r3, #0x34]
00314018  00 30 99 e5                                      ldr r3, [sb]
0031401c  09 00 a0 e1                                      mov r0, sb
00314020  80 a0 93 e5                                      ldr sl, [r3, #0x80]
00314024  0f e0 a0 e1                                      mov lr, pc
00314028  74 f0 93 e5                                      ldr pc, [r3, #0x74]
0031402c  06 20 a0 e1                                      mov r2, r6
00314030  00 10 a0 e1                                      mov r1, r0
00314034  0d 30 a0 e1                                      mov r3, sp
00314038  09 00 a0 e1                                      mov r0, sb
0031403c  3a ff 2f e1                                      blx sl
00314040  40 04 9d e8                                      ldm sp, {r6, sl}
00314044  06 00 5a e1                                      cmp sl, r6
00314048  09 00 00 0a                                      beq #0x314074
0031404c  10 30 97 e5                                      ldr r3, [r7, #0x10]
00314050  14 10 96 e5                                      ldr r1, [r6, #0x14]
00314054  18 60 86 e2                                      add r6, r6, #0x18
00314058  34 30 93 e5                                      ldr r3, [r3, #0x34]
0031405c  03 00 a0 e1                                      mov r0, r3
00314060  00 30 93 e5                                      ldr r3, [r3]
00314064  0f e0 a0 e1                                      mov lr, pc
00314068  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
0031406c  0a 00 56 e1                                      cmp r6, sl
00314070  f5 ff ff 1a                                      bne #0x31404c
00314074  0d 00 a0 e1                                      mov r0, sp
00314078  ac ff ff eb                                      bl #0x313f30
0031407c  08 30 94 e7                                      ldr r3, [r4, r8]
00314080  0c 24 9d e5                                      ldr r2, [sp, #0x40c]
00314084  00 30 93 e5                                      ldr r3, [r3]
00314088  03 00 52 e1                                      cmp r2, r3
0031408c  01 00 00 1a                                      bne #0x314098
00314090  41 de 8d e2                                      add sp, sp, #0x410
00314094  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00314098  9c e8 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0031409c  d0 0a 68 00 ac 40 00 00 70 a5 5a 00 74 a5 5a 00  .byte 0xd0, 0x0a, 0x68, 0x00, 0xac, 0x40, 0x00, 0x00, 0x70, 0xa5, 0x5a, 0x00, 0x74, 0xa5, 0x5a, 0x00
003140ac  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00314734, declared_size=1480, range_size=1480, mode=arm
; class-group: Savegame
; alias: _ZN8Savegame10UpdateJobsEv
; demangled: Savegame::UpdateJobs()
; decoder-mode: arm
00314734  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00314738  60 45 9f e5                                      ldr r4, [pc, #0x560]
0031473c  60 65 9f e5                                      ldr r6, [pc, #0x560]
00314740  60 a5 9f e5                                      ldr sl, [pc, #0x560]
00314744  04 40 8f e0                                      add r4, pc, r4
00314748  06 30 94 e7                                      ldr r3, [r4, r6]
0031474c  0a a0 8f e0                                      add sl, pc, sl
00314750  0c 20 da e5                                      ldrb r2, [sl, #0xc]
00314754  00 30 93 e5                                      ldr r3, [r3]
00314758  4c d0 4d e2                                      sub sp, sp, #0x4c
0031475c  00 00 52 e3                                      cmp r2, #0
00314760  44 30 8d e5                                      str r3, [sp, #0x44]
00314764  00 00 a0 13                                      movne r0, #0
00314768  2a 00 00 1a                                      bne #0x314818
0031476c  38 85 9f e5                                      ldr r8, [pc, #0x538]
00314770  01 90 a0 e3                                      mov sb, #1
00314774  0c 90 ca e5                                      strb sb, [sl, #0xc]
00314778  08 70 94 e7                                      ldr r7, [r4, r8]
0031477c  00 50 97 e5                                      ldr r5, [r7]
00314780  00 00 55 e3                                      cmp r5, #0
00314784  7d 00 00 0a                                      beq #0x314980
00314788  20 35 9f e5                                      ldr r3, [pc, #0x520]
0031478c  03 30 8f e0                                      add r3, pc, r3
00314790  10 10 93 e5                                      ldr r1, [r3, #0x10]
00314794  00 00 51 e3                                      cmp r1, #0
00314798  33 00 00 0a                                      beq #0x31486c
0031479c  10 75 9f e5                                      ldr r7, [pc, #0x510]
003147a0  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
003147a4  05 00 a0 e1                                      mov r0, r5
003147a8  07 70 8f e0                                      add r7, pc, r7
003147ac  18 a0 97 e5                                      ldr sl, [r7, #0x18]
003147b0  01 91 93 e7                                      ldr sb, [r3, r1, lsl #2]
003147b4  00 30 95 e5                                      ldr r3, [r5]
003147b8  00 20 9a e5                                      ldr r2, [sl]
003147bc  1c 50 92 e5                                      ldr r5, [r2, #0x1c]
003147c0  0f e0 a0 e1                                      mov lr, pc
003147c4  34 f0 93 e5                                      ldr pc, [r3, #0x34]
003147c8  01 30 a0 e1                                      mov r3, r1
003147cc  00 20 a0 e1                                      mov r2, r0
003147d0  09 10 a0 e1                                      mov r1, sb
003147d4  0a 00 a0 e1                                      mov r0, sl
003147d8  35 ff 2f e1                                      blx r5
003147dc  10 30 97 e5                                      ldr r3, [r7, #0x10]
003147e0  00 00 53 e3                                      cmp r3, #0
003147e4  12 00 00 0a                                      beq #0x314834
003147e8  c8 54 9f e5                                      ldr r5, [pc, #0x4c8]
003147ec  01 30 83 e2                                      add r3, r3, #1
003147f0  05 50 8f e0                                      add r5, pc, r5
003147f4  14 20 95 e5                                      ldr r2, [r5, #0x14]
003147f8  10 30 85 e5                                      str r3, [r5, #0x10]
003147fc  02 00 53 e1                                      cmp r3, r2
00314800  47 00 00 0a                                      beq #0x314924
00314804  01 00 a0 e3                                      mov r0, #1
00314808  ac 34 9f e5                                      ldr r3, [pc, #0x4ac]
0031480c  00 20 a0 e3                                      mov r2, #0
00314810  03 30 8f e0                                      add r3, pc, r3
00314814  0c 20 c3 e5                                      strb r2, [r3, #0xc]
00314818  06 30 94 e7                                      ldr r3, [r4, r6]
0031481c  44 20 9d e5                                      ldr r2, [sp, #0x44]
00314820  00 30 93 e5                                      ldr r3, [r3]
00314824  03 00 52 e1                                      cmp r2, r3
00314828  0e 01 00 1a                                      bne #0x314c68
0031482c  4c d0 8d e2                                      add sp, sp, #0x4c
00314830  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00314834  08 50 94 e7                                      ldr r5, [r4, r8]
00314838  00 30 a0 e3                                      mov r3, #0
0031483c  00 20 a0 e3                                      mov r2, #0
00314840  00 10 95 e5                                      ldr r1, [r5]
00314844  01 00 a0 e1                                      mov r0, r1
00314848  00 10 91 e5                                      ldr r1, [r1]
0031484c  0f e0 a0 e1                                      mov lr, pc
00314850  2c f0 91 e5                                      ldr pc, [r1, #0x2c]
00314854  64 14 9f e5                                      ldr r1, [pc, #0x464]
00314858  00 00 95 e5                                      ldr r0, [r5]
0031485c  01 10 8f e0                                      add r1, pc, r1
00314860  5e fc ff eb                                      bl #0x3139e0
00314864  10 30 97 e5                                      ldr r3, [r7, #0x10]
00314868  de ff ff ea                                      b #0x3147e8
0031486c  05 00 a0 e1                                      mov r0, r5
00314870  00 20 a0 e3                                      mov r2, #0
00314874  00 30 a0 e3                                      mov r3, #0
00314878  00 10 95 e5                                      ldr r1, [r5]
0031487c  0f e0 a0 e1                                      mov lr, pc
00314880  20 f0 91 e5                                      ldr pc, [r1, #0x20]
00314884  08 10 94 e7                                      ldr r1, [r4, r8]
00314888  04 20 a0 e3                                      mov r2, #4
0031488c  00 30 a0 e3                                      mov r3, #0
00314890  00 c0 91 e5                                      ldr ip, [r1]
00314894  28 14 9f e5                                      ldr r1, [pc, #0x428]
00314898  0c 00 a0 e1                                      mov r0, ip
0031489c  01 10 8f e0                                      add r1, pc, r1
003148a0  00 c0 9c e5                                      ldr ip, [ip]
003148a4  0f e0 a0 e1                                      mov lr, pc
003148a8  18 f0 9c e5                                      ldr pc, [ip, #0x18]
003148ac  04 00 50 e3                                      cmp r0, #4
003148b0  b5 00 00 0a                                      beq #0x314b8c
003148b4  0c 34 9f e5                                      ldr r3, [pc, #0x40c]
003148b8  03 30 94 e7                                      ldr r3, [r4, r3]
003148bc  00 30 93 e5                                      ldr r3, [r3]
003148c0  02 00 53 e3                                      cmp r3, #2
003148c4  00 30 a0 03                                      moveq r3, #0
003148c8  00 30 83 05                                      streq r3, [r3]
003148cc  01 00 00 0a                                      beq #0x3148d8
003148d0  01 00 53 e3                                      cmp r3, #1
003148d4  af 00 00 0a                                      beq #0x314b98
003148d8  08 50 94 e7                                      ldr r5, [r4, r8]
003148dc  48 70 8d e2                                      add r7, sp, #0x48
003148e0  00 30 e0 e3                                      mvn r3, #0
003148e4  00 10 95 e5                                      ldr r1, [r5]
003148e8  24 30 27 e5                                      str r3, [r7, #-0x24]!
003148ec  00 20 a0 e3                                      mov r2, #0
003148f0  00 30 a0 e3                                      mov r3, #0
003148f4  01 00 a0 e1                                      mov r0, r1
003148f8  00 10 91 e5                                      ldr r1, [r1]
003148fc  0f e0 a0 e1                                      mov lr, pc
00314900  2c f0 91 e5                                      ldr pc, [r1, #0x2c]
00314904  07 10 a0 e1                                      mov r1, r7
00314908  00 00 95 e5                                      ldr r0, [r5]
0031490c  33 fc ff eb                                      bl #0x3139e0
00314910  b4 33 9f e5                                      ldr r3, [pc, #0x3b4]
00314914  00 50 95 e5                                      ldr r5, [r5]
00314918  03 30 8f e0                                      add r3, pc, r3
0031491c  10 10 93 e5                                      ldr r1, [r3, #0x10]
00314920  9d ff ff ea                                      b #0x31479c
00314924  18 10 95 e5                                      ldr r1, [r5, #0x18]
00314928  00 30 a0 e3                                      mov r3, #0
0031492c  00 20 a0 e3                                      mov r2, #0
00314930  01 00 a0 e1                                      mov r0, r1
00314934  00 10 91 e5                                      ldr r1, [r1]
00314938  0f e0 a0 e1                                      mov lr, pc
0031493c  20 f0 91 e5                                      ldr pc, [r1, #0x20]
00314940  88 13 9f e5                                      ldr r1, [pc, #0x388]
00314944  18 00 b5 e5                                      ldr r0, [r5, #0x18]!
00314948  01 10 8f e0                                      add r1, pc, r1
0031494c  23 fc ff eb                                      bl #0x3139e0
00314950  7c 33 9f e5                                      ldr r3, [pc, #0x37c]
00314954  05 10 a0 e1                                      mov r1, r5
00314958  03 30 94 e7                                      ldr r3, [r4, r3]
0031495c  10 30 93 e5                                      ldr r3, [r3, #0x10]
00314960  34 30 93 e5                                      ldr r3, [r3, #0x34]
00314964  03 00 a0 e1                                      mov r0, r3
00314968  00 30 93 e5                                      ldr r3, [r3]
0031496c  0f e0 a0 e1                                      mov lr, pc
00314970  78 f0 93 e5                                      ldr pc, [r3, #0x78]
00314974  08 00 94 e7                                      ldr r0, [r4, r8]
00314978  68 fb ff eb                                      bl #0x313720
0031497c  a0 ff ff ea                                      b #0x314804
00314980  50 33 9f e5                                      ldr r3, [pc, #0x350]
00314984  03 b0 94 e7                                      ldr fp, [r4, r3]
00314988  00 10 9b e5                                      ldr r1, [fp]
0031498c  0b 00 51 e1                                      cmp r1, fp
00314990  05 00 a0 01                                      moveq r0, r5
00314994  9b ff ff 0a                                      beq #0x314808
00314998  08 10 81 e2                                      add r1, r1, #8
0031499c  07 00 a0 e1                                      mov r0, r7
003149a0  cd fc ff eb                                      bl #0x313cdc
003149a4  00 30 9b e5                                      ldr r3, [fp]
003149a8  10 00 8d e2                                      add r0, sp, #0x10
003149ac  20 10 8d e2                                      add r1, sp, #0x20
003149b0  20 30 8d e5                                      str r3, [sp, #0x20]
003149b4  bd fd ff eb                                      bl #0x3140b0
003149b8  1c 30 d7 e5                                      ldrb r3, [r7, #0x1c]
003149bc  00 00 53 e3                                      cmp r3, #0
003149c0  4f 00 00 0a                                      beq #0x314b04
003149c4  00 30 e0 e3                                      mvn r3, #0
003149c8  28 30 8d e5                                      str r3, [sp, #0x28]
003149cc  00 33 9f e5                                      ldr r3, [pc, #0x300]
003149d0  18 10 97 e5                                      ldr r1, [r7, #0x18]
003149d4  05 20 a0 e1                                      mov r2, r5
003149d8  03 a0 94 e7                                      ldr sl, [r4, r3]
003149dc  10 30 9a e5                                      ldr r3, [sl, #0x10]
003149e0  34 30 93 e5                                      ldr r3, [r3, #0x34]
003149e4  03 00 a0 e1                                      mov r0, r3
003149e8  00 30 93 e5                                      ldr r3, [r3]
003149ec  0f e0 a0 e1                                      mov lr, pc
003149f0  94 f0 93 e5                                      ldr pc, [r3, #0x94]
003149f4  00 00 50 e3                                      cmp r0, #0
003149f8  24 00 8d e5                                      str r0, [sp, #0x24]
003149fc  dc ff ff 0a                                      beq #0x314974
00314a00  28 10 8d e2                                      add r1, sp, #0x28
00314a04  4f fc ff eb                                      bl #0x313b48
00314a08  10 30 9a e5                                      ldr r3, [sl, #0x10]
00314a0c  24 10 8d e2                                      add r1, sp, #0x24
00314a10  34 30 93 e5                                      ldr r3, [r3, #0x34]
00314a14  03 00 a0 e1                                      mov r0, r3
00314a18  00 30 93 e5                                      ldr r3, [r3]
00314a1c  0f e0 a0 e1                                      mov lr, pc
00314a20  78 f0 93 e5                                      ldr pc, [r3, #0x78]
00314a24  28 30 9d e5                                      ldr r3, [sp, #0x28]
00314a28  01 00 73 e3                                      cmn r3, #1
00314a2c  d0 ff ff 0a                                      beq #0x314974
00314a30  10 30 9a e5                                      ldr r3, [sl, #0x10]
00314a34  18 b0 97 e5                                      ldr fp, [r7, #0x18]
00314a38  14 10 97 e5                                      ldr r1, [r7, #0x14]
00314a3c  34 90 93 e5                                      ldr sb, [r3, #0x34]
00314a40  2c a0 8d e2                                      add sl, sp, #0x2c
00314a44  01 10 6b e0                                      rsb r1, fp, r1
00314a48  00 30 99 e5                                      ldr r3, [sb]
00314a4c  05 10 81 e2                                      add r1, r1, #5
00314a50  0a 00 a0 e1                                      mov r0, sl
00314a54  a0 30 93 e5                                      ldr r3, [r3, #0xa0]
00314a58  3c a0 8d e5                                      str sl, [sp, #0x3c]
00314a5c  40 a0 8d e5                                      str sl, [sp, #0x40]
00314a60  08 30 8d e5                                      str r3, [sp, #8]
00314a64  04 f3 ff eb                                      bl #0x31167c
00314a68  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00314a6c  0a 00 a0 e1                                      mov r0, sl
00314a70  00 50 c3 e5                                      strb r5, [r3]
00314a74  14 20 97 e5                                      ldr r2, [r7, #0x14]
00314a78  18 10 97 e5                                      ldr r1, [r7, #0x18]
00314a7c  60 ef ff eb                                      bl #0x310804
00314a80  40 30 9d e5                                      ldr r3, [sp, #0x40]
00314a84  0a 00 53 e1                                      cmp r3, sl
00314a88  2c 20 9d 15                                      ldrne r2, [sp, #0x2c]
00314a8c  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00314a90  10 20 8a 02                                      addeq r2, sl, #0x10
00314a94  02 20 63 e0                                      rsb r2, r3, r2
00314a98  04 00 52 e3                                      cmp r2, #4
00314a9c  4a 00 00 9a                                      bls #0x314bcc
00314aa0  2e 20 a0 e3                                      mov r2, #0x2e
00314aa4  00 20 c3 e5                                      strb r2, [r3]
00314aa8  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
00314aac  62 10 a0 e3                                      mov r1, #0x62
00314ab0  01 10 c2 e5                                      strb r1, [r2, #1]
00314ab4  01 30 82 e2                                      add r3, r2, #1
00314ab8  6b 20 a0 e3                                      mov r2, #0x6b
00314abc  02 20 c3 e5                                      strb r2, [r3, #2]
00314ac0  61 20 a0 e3                                      mov r2, #0x61
00314ac4  01 20 c3 e5                                      strb r2, [r3, #1]
00314ac8  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00314acc  00 20 a0 e3                                      mov r2, #0
00314ad0  04 20 c3 e5                                      strb r2, [r3, #4]
00314ad4  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00314ad8  40 70 9d e5                                      ldr r7, [sp, #0x40]
00314adc  04 30 83 e2                                      add r3, r3, #4
00314ae0  3c 30 8d e5                                      str r3, [sp, #0x3c]
00314ae4  09 00 a0 e1                                      mov r0, sb
00314ae8  0b 10 a0 e1                                      mov r1, fp
00314aec  07 20 a0 e1                                      mov r2, r7
00314af0  08 30 9d e5                                      ldr r3, [sp, #8]
00314af4  33 ff 2f e1                                      blx r3
00314af8  0a 00 a0 e1                                      mov r0, sl
00314afc  aa fb ff eb                                      bl #0x3139ac
00314b00  9b ff ff ea                                      b #0x314974
00314b04  00 30 97 e5                                      ldr r3, [r7]
00314b08  10 50 8a e5                                      str r5, [sl, #0x10]
00314b0c  09 20 a0 e1                                      mov r2, sb
00314b10  20 00 93 e5                                      ldr r0, [r3, #0x20]
00314b14  1c 10 93 e5                                      ldr r1, [r3, #0x1c]
00314b18  b4 31 9f e5                                      ldr r3, [pc, #0x1b4]
00314b1c  00 10 61 e0                                      rsb r1, r1, r0
00314b20  03 30 94 e7                                      ldr r3, [r4, r3]
00314b24  41 11 a0 e1                                      asr r1, r1, #2
00314b28  01 10 41 e2                                      sub r1, r1, #1
00314b2c  10 30 93 e5                                      ldr r3, [r3, #0x10]
00314b30  14 10 8a e5                                      str r1, [sl, #0x14]
00314b34  18 10 97 e5                                      ldr r1, [r7, #0x18]
00314b38  34 30 93 e5                                      ldr r3, [r3, #0x34]
00314b3c  03 00 a0 e1                                      mov r0, r3
00314b40  00 30 93 e5                                      ldr r3, [r3]
00314b44  0f e0 a0 e1                                      mov lr, pc
00314b48  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00314b4c  00 00 50 e3                                      cmp r0, #0
00314b50  18 00 8a e5                                      str r0, [sl, #0x18]
00314b54  00 50 97 15                                      ldrne r5, [r7]
00314b58  0a ff ff 1a                                      bne #0x314788
00314b5c  64 31 9f e5                                      ldr r3, [pc, #0x164]
00314b60  03 30 94 e7                                      ldr r3, [r4, r3]
00314b64  00 30 93 e5                                      ldr r3, [r3]
00314b68  02 00 53 e3                                      cmp r3, #2
00314b6c  00 00 80 05                                      streq r0, [r0]
00314b70  01 00 00 0a                                      beq #0x314b7c
00314b74  01 00 53 e3                                      cmp r3, #1
00314b78  3b 00 00 0a                                      beq #0x314c6c
00314b7c  08 00 94 e7                                      ldr r0, [r4, r8]
00314b80  e6 fa ff eb                                      bl #0x313720
00314b84  01 00 a0 e3                                      mov r0, #1
00314b88  1e ff ff ea                                      b #0x314808
00314b8c  00 00 51 e3                                      cmp r1, #0
00314b90  50 ff ff 0a                                      beq #0x3148d8
00314b94  46 ff ff ea                                      b #0x3148b4
00314b98  3c 01 9f e5                                      ldr r0, [pc, #0x13c]
00314b9c  3c 11 9f e5                                      ldr r1, [pc, #0x13c]
00314ba0  3c 21 9f e5                                      ldr r2, [pc, #0x13c]
00314ba4  00 00 94 e7                                      ldr r0, [r4, r0]
00314ba8  38 31 9f e5                                      ldr r3, [pc, #0x138]
00314bac  50 c0 a0 e3                                      mov ip, #0x50
00314bb0  01 10 8f e0                                      add r1, pc, r1
00314bb4  02 20 8f e0                                      add r2, pc, r2
00314bb8  03 30 8f e0                                      add r3, pc, r3
00314bbc  a8 00 80 e2                                      add r0, r0, #0xa8
00314bc0  00 c0 8d e5                                      str ip, [sp]
00314bc4  0e e5 ff eb                                      bl #0x30e004
00314bc8  42 ff ff ea                                      b #0x3148d8
00314bcc  0a 00 a0 e1                                      mov r0, sl
00314bd0  04 10 a0 e3                                      mov r1, #4
00314bd4  f1 ee ff eb                                      bl #0x3107a0
00314bd8  00 30 50 e2                                      subs r3, r0, #0
00314bdc  0c 30 8d 05                                      streq r3, [sp, #0xc]
00314be0  03 70 a0 01                                      moveq r7, r3
00314be4  17 00 00 1a                                      bne #0x314c48
00314be8  40 10 9d e5                                      ldr r1, [sp, #0x40]
00314bec  3c 50 9d e5                                      ldr r5, [sp, #0x3c]
00314bf0  05 00 51 e1                                      cmp r1, r5
00314bf4  07 00 a0 01                                      moveq r0, r7
00314bf8  04 00 00 0a                                      beq #0x314c10
00314bfc  05 50 61 e0                                      rsb r5, r1, r5
00314c00  07 00 a0 e1                                      mov r0, r7
00314c04  05 20 a0 e1                                      mov r2, r5
00314c08  16 e7 ff eb                                      bl #0x30e868
00314c0c  05 00 80 e0                                      add r0, r0, r5
00314c10  d4 10 9f e5                                      ldr r1, [pc, #0xd4]
00314c14  04 20 a0 e3                                      mov r2, #4
00314c18  01 10 8f e0                                      add r1, pc, r1
00314c1c  11 e7 ff eb                                      bl #0x30e868
00314c20  00 30 a0 e3                                      mov r3, #0
00314c24  04 30 c0 e5                                      strb r3, [r0, #4]
00314c28  04 50 80 e2                                      add r5, r0, #4
00314c2c  0a 00 a0 e1                                      mov r0, sl
00314c30  5d fb ff eb                                      bl #0x3139ac
00314c34  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00314c38  3c 50 8d e5                                      str r5, [sp, #0x3c]
00314c3c  40 70 8d e5                                      str r7, [sp, #0x40]
00314c40  2c 30 8d e5                                      str r3, [sp, #0x2c]
00314c44  a6 ff ff ea                                      b #0x314ae4
00314c48  48 00 8d e2                                      add r0, sp, #0x48
00314c4c  2c 30 20 e5                                      str r3, [r0, #-0x2c]!
00314c50  4f fb ff eb                                      bl #0x313994
00314c54  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00314c58  00 70 a0 e1                                      mov r7, r0
00314c5c  03 30 80 e0                                      add r3, r0, r3
00314c60  0c 30 8d e5                                      str r3, [sp, #0xc]
00314c64  df ff ff ea                                      b #0x314be8
00314c68  a8 e5 ff eb                                      bl #0x30e310
00314c6c  68 00 9f e5                                      ldr r0, [pc, #0x68]
00314c70  78 10 9f e5                                      ldr r1, [pc, #0x78]
00314c74  78 20 9f e5                                      ldr r2, [pc, #0x78]
00314c78  00 00 94 e7                                      ldr r0, [r4, r0]
00314c7c  74 30 9f e5                                      ldr r3, [pc, #0x74]
00314c80  76 c0 a0 e3                                      mov ip, #0x76
00314c84  01 10 8f e0                                      add r1, pc, r1
00314c88  02 20 8f e0                                      add r2, pc, r2
00314c8c  03 30 8f e0                                      add r3, pc, r3
00314c90  a8 00 80 e2                                      add r0, r0, #0xa8
00314c94  00 c0 8d e5                                      str ip, [sp]
00314c98  d9 e4 ff eb                                      bl #0x30e004
00314c9c  b6 ff ff ea                                      b #0x314b7c
; mapping-symbol data/literal pool
00314ca0  4c 03 68 00 ac 40 00 00 58 b1 68 00 54 3f 00 00  .byte 0x4c, 0x03, 0x68, 0x00, 0xac, 0x40, 0x00, 0x00, 0x58, 0xb1, 0x68, 0x00, 0x54, 0x3f, 0x00, 0x00
00314cb0  18 b1 68 00 fc b0 68 00 b4 b0 68 00 94 b0 68 00  .byte 0x18, 0xb1, 0x68, 0x00, 0xfc, 0xb0, 0x68, 0x00, 0xb4, 0xb0, 0x68, 0x00, 0x94, 0xb0, 0x68, 0x00
00314cc0  9c 4e 68 00 5c 4e 68 00 c0 39 00 00 8c af 68 00  .byte 0x9c, 0x4e, 0x68, 0x00, 0x5c, 0x4e, 0x68, 0x00, 0xc0, 0x39, 0x00, 0x00, 0x8c, 0xaf, 0x68, 0x00
00314cd0  b0 4d 68 00 f4 37 00 00 14 24 00 00 c0 19 00 00  .byte 0xb0, 0x4d, 0x68, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x14, 0x24, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
00314ce0  28 98 5a 00 4c 99 5a 00 08 99 5a 00 48 99 5a 00  .byte 0x28, 0x98, 0x5a, 0x00, 0x4c, 0x99, 0x5a, 0x00, 0x08, 0x99, 0x5a, 0x00, 0x48, 0x99, 0x5a, 0x00
00314cf0  54 97 5a 00 e0 98 5a 00 e4 98 5a 00              .byte 0x54, 0x97, 0x5a, 0x00, 0xe0, 0x98, 0x5a, 0x00, 0xe4, 0x98, 0x5a, 0x00

; FUNCTION 0x00314cfc, declared_size=164, range_size=164, mode=arm
; class-group: Savegame
; alias: _ZN8Savegame9FlushJobsEPKc
; demangled: Savegame::FlushJobs(char const*)
; decoder-mode: arm
00314cfc  70 40 2d e9                                      push {r4, r5, r6, lr}
00314d00  8c 40 9f e5                                      ldr r4, [pc, #0x8c]
00314d04  00 50 50 e2                                      subs r5, r0, #0
00314d08  04 40 8f e0                                      add r4, pc, r4
00314d0c  18 00 00 0a                                      beq #0x314d74
00314d10  80 00 9f e5                                      ldr r0, [pc, #0x80]
00314d14  05 10 a0 e1                                      mov r1, r5
00314d18  00 00 94 e7                                      ldr r0, [r4, r0]
00314d1c  04 00 80 e2                                      add r0, r0, #4
00314d20  c8 fb ff eb                                      bl #0x313c48
00314d24  00 00 50 e3                                      cmp r0, #0
00314d28  0d 00 00 1a                                      bne #0x314d64
00314d2c  68 30 9f e5                                      ldr r3, [pc, #0x68]
00314d30  03 30 94 e7                                      ldr r3, [r4, r3]
00314d34  03 60 a0 e1                                      mov r6, r3
00314d38  00 40 93 e5                                      ldr r4, [r3]
00314d3c  03 00 00 ea                                      b #0x314d50
00314d40  c0 fb ff eb                                      bl #0x313c48
00314d44  00 00 50 e3                                      cmp r0, #0
00314d48  0d 00 00 1a                                      bne #0x314d84
00314d4c  00 40 94 e5                                      ldr r4, [r4]
00314d50  06 00 54 e1                                      cmp r4, r6
00314d54  0c 00 84 e2                                      add r0, r4, #0xc
00314d58  05 10 a0 e1                                      mov r1, r5
00314d5c  f7 ff ff 1a                                      bne #0x314d40
00314d60  70 80 bd e8                                      pop {r4, r5, r6, pc}
00314d64  72 fe ff eb                                      bl #0x314734
00314d68  00 00 50 e3                                      cmp r0, #0
00314d6c  fc ff ff 1a                                      bne #0x314d64
00314d70  70 80 bd e8                                      pop {r4, r5, r6, pc}
00314d74  6e fe ff eb                                      bl #0x314734
00314d78  00 00 50 e3                                      cmp r0, #0
00314d7c  fc ff ff 1a                                      bne #0x314d74
00314d80  70 80 bd e8                                      pop {r4, r5, r6, pc}
00314d84  6a fe ff eb                                      bl #0x314734
00314d88  00 00 50 e3                                      cmp r0, #0
00314d8c  fc ff ff 1a                                      bne #0x314d84
00314d90  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00314d94  88 fd 67 00 54 3f 00 00 14 24 00 00              .byte 0x88, 0xfd, 0x67, 0x00, 0x54, 0x3f, 0x00, 0x00, 0x14, 0x24, 0x00, 0x00

; FUNCTION 0x00315110, declared_size=220, range_size=220, mode=arm
; class-group: Savegame
; alias: _ZN8Savegame6AddJobERNS_3JobE
; demangled: Savegame::AddJob(Savegame::Job&)
; decoder-mode: arm
00315110  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
00315114  cc 20 9f e5                                      ldr r2, [pc, #0xcc]
00315118  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0031511c  03 30 8f e0                                      add r3, pc, r3
00315120  02 20 93 e7                                      ldr r2, [r3, r2]
00315124  14 d0 4d e2                                      sub sp, sp, #0x14
00315128  00 50 a0 e1                                      mov r5, r0
0031512c  00 40 92 e5                                      ldr r4, [r2]
00315130  02 70 a0 e1                                      mov r7, r2
00315134  0d a0 a0 e1                                      mov sl, sp
00315138  07 00 54 e1                                      cmp r4, r7
0031513c  0c 80 8d e2                                      add r8, sp, #0xc
00315140  0b 00 00 0a                                      beq #0x315174
00315144  20 10 94 e5                                      ldr r1, [r4, #0x20]
00315148  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0031514c  18 00 95 e5                                      ldr r0, [r5, #0x18]
00315150  14 20 95 e5                                      ldr r2, [r5, #0x14]
00315154  03 30 61 e0                                      rsb r3, r1, r3
00315158  00 60 94 e5                                      ldr r6, [r4]
0031515c  02 20 60 e0                                      rsb r2, r0, r2
00315160  03 00 52 e1                                      cmp r2, r3
00315164  11 00 00 0a                                      beq #0x3151b0
00315168  06 40 a0 e1                                      mov r4, r6
0031516c  07 00 54 e1                                      cmp r4, r7
00315170  f3 ff ff 1a                                      bne #0x315144
00315174  28 30 a0 e3                                      mov r3, #0x28
00315178  10 00 8d e2                                      add r0, sp, #0x10
0031517c  08 30 20 e5                                      str r3, [r0, #-8]!
00315180  4e cf 0f eb                                      bl #0x708ec0
00315184  05 10 a0 e1                                      mov r1, r5
00315188  00 60 a0 e1                                      mov r6, r0
0031518c  08 00 80 e2                                      add r0, r0, #8
00315190  12 fd ff eb                                      bl #0x3145e0
00315194  04 30 94 e5                                      ldr r3, [r4, #4]
00315198  00 40 86 e5                                      str r4, [r6]
0031519c  04 30 86 e5                                      str r3, [r6, #4]
003151a0  00 60 83 e5                                      str r6, [r3]
003151a4  04 60 84 e5                                      str r6, [r4, #4]
003151a8  14 d0 8d e2                                      add sp, sp, #0x14
003151ac  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003151b0  0a e5 ff eb                                      bl #0x30e5e0
003151b4  00 00 50 e3                                      cmp r0, #0
003151b8  ea ff ff 1a                                      bne #0x315168
003151bc  24 30 d4 e5                                      ldrb r3, [r4, #0x24]
003151c0  1c 20 d5 e5                                      ldrb r2, [r5, #0x1c]
003151c4  03 00 52 e1                                      cmp r2, r3
003151c8  e6 ff ff 1a                                      bne #0x315168
003151cc  0d 00 a0 e1                                      mov r0, sp
003151d0  08 10 a0 e1                                      mov r1, r8
003151d4  0c 40 8d e5                                      str r4, [sp, #0xc]
003151d8  b4 fb ff eb                                      bl #0x3140b0
003151dc  06 40 a0 e1                                      mov r4, r6
003151e0  e1 ff ff ea                                      b #0x31516c
; mapping-symbol data/literal pool
003151e4  74 f9 67 00 14 24 00 00                          .byte 0x74, 0xf9, 0x67, 0x00, 0x14, 0x24, 0x00, 0x00

; FUNCTION 0x00315848, declared_size=188, range_size=188, mode=arm
; class-group: Savegame
; alias: _ZN8Savegame4loadEPKcPFvP11IStreamBasePvES6_S4_
; demangled: Savegame::load(char const*, void (*)(IStreamBase*, void*), void (*)(IStreamBase*, void*), void*)
; decoder-mode: arm
00315848  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0031584c  0c d0 4d e2                                      sub sp, sp, #0xc
00315850  08 40 8d e2                                      add r4, sp, #8
00315854  04 10 24 e5                                      str r1, [r4, #-4]!
00315858  20 50 80 e2                                      add r5, r0, #0x20
0031585c  00 60 a0 e1                                      mov r6, r0
00315860  04 10 a0 e1                                      mov r1, r4
00315864  05 00 a0 e1                                      mov r0, r5
00315868  03 a0 a0 e1                                      mov sl, r3
0031586c  02 70 a0 e1                                      mov r7, r2
00315870  28 80 9d e5                                      ldr r8, [sp, #0x28]
00315874  29 fa ff eb                                      bl #0x314120
00315878  05 00 50 e1                                      cmp r0, r5
0031587c  00 30 a0 e1                                      mov r3, r0
00315880  14 00 00 0a                                      beq #0x3158d8
00315884  30 20 90 e5                                      ldr r2, [r0, #0x30]
00315888  38 a0 80 e5                                      str sl, [r0, #0x38]
0031588c  34 70 80 e5                                      str r7, [r0, #0x34]
00315890  00 00 52 e3                                      cmp r2, #0
00315894  3c 80 80 e5                                      str r8, [r0, #0x3c]
00315898  0c 00 00 0a                                      beq #0x3158d0
0031589c  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
003158a0  00 00 51 e3                                      cmp r1, #0
003158a4  09 00 00 0a                                      beq #0x3158d0
003158a8  01 00 a0 e1                                      mov r0, r1
003158ac  d8 22 c3 e1                                      ldrd r2, r3, [r3, #0x28]
003158b0  00 10 91 e5                                      ldr r1, [r1]
003158b4  0f e0 a0 e1                                      mov lr, pc
003158b8  20 f0 91 e5                                      ldr pc, [r1, #0x20]
003158bc  00 00 57 e3                                      cmp r7, #0
003158c0  02 00 00 0a                                      beq #0x3158d0
003158c4  1c 00 96 e5                                      ldr r0, [r6, #0x1c]
003158c8  08 10 a0 e1                                      mov r1, r8
003158cc  37 ff 2f e1                                      blx r7
003158d0  0c d0 8d e2                                      add sp, sp, #0xc
003158d4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003158d8  04 10 a0 e1                                      mov r1, r4
003158dc  83 ff ff eb                                      bl #0x3156f0
003158e0  00 30 a0 e3                                      mov r3, #0
003158e4  00 20 a0 e3                                      mov r2, #0
003158e8  f0 20 c0 e1                                      strd r2, r3, [r0]
003158ec  00 30 a0 e3                                      mov r3, #0
003158f0  14 80 80 e5                                      str r8, [r0, #0x14]
003158f4  10 a0 80 e5                                      str sl, [r0, #0x10]
003158f8  0c 70 80 e5                                      str r7, [r0, #0xc]
003158fc  08 30 80 e5                                      str r3, [r0, #8]
00315900  f2 ff ff ea                                      b #0x3158d0

; FUNCTION 0x00315904, declared_size=116, range_size=116, mode=arm
; class-group: Savegame
; alias: _ZN8Savegame15initSectionInfoEPKcPFvP11IStreamBasePvES6_S4_
; demangled: Savegame::initSectionInfo(char const*, void (*)(IStreamBase*, void*), void (*)(IStreamBase*, void*), void*)
; decoder-mode: arm
00315904  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00315908  08 d0 4d e2                                      sub sp, sp, #8
0031590c  08 40 8d e2                                      add r4, sp, #8
00315910  04 10 24 e5                                      str r1, [r4, #-4]!
00315914  20 50 80 e2                                      add r5, r0, #0x20
00315918  05 00 a0 e1                                      mov r0, r5
0031591c  04 10 a0 e1                                      mov r1, r4
00315920  02 60 a0 e1                                      mov r6, r2
00315924  03 70 a0 e1                                      mov r7, r3
00315928  20 80 9d e5                                      ldr r8, [sp, #0x20]
0031592c  fb f9 ff eb                                      bl #0x314120
00315930  05 00 50 e1                                      cmp r0, r5
00315934  3c 80 80 15                                      strne r8, [r0, #0x3c]
00315938  34 60 80 15                                      strne r6, [r0, #0x34]
0031593c  38 70 80 15                                      strne r7, [r0, #0x38]
00315940  01 00 00 0a                                      beq #0x31594c
00315944  08 d0 8d e2                                      add sp, sp, #8
00315948  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0031594c  04 10 a0 e1                                      mov r1, r4
00315950  66 ff ff eb                                      bl #0x3156f0
00315954  00 30 a0 e3                                      mov r3, #0
00315958  00 20 a0 e3                                      mov r2, #0
0031595c  f0 20 c0 e1                                      strd r2, r3, [r0]
00315960  00 30 a0 e3                                      mov r3, #0
00315964  14 80 80 e5                                      str r8, [r0, #0x14]
00315968  10 70 80 e5                                      str r7, [r0, #0x10]
0031596c  0c 60 80 e5                                      str r6, [r0, #0xc]
00315970  08 30 80 e5                                      str r3, [r0, #8]
00315974  f2 ff ff ea                                      b #0x315944

; FUNCTION 0x00315ad0, declared_size=1032, range_size=1032, mode=arm
; class-group: Savegame
; alias: _ZN8Savegame10_cacheFileEP12StreamBuffer
; demangled: Savegame::_cacheFile(StreamBuffer*)
; decoder-mode: arm
00315ad0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00315ad4  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
00315ad8  ec 63 9f e5                                      ldr r6, [pc, #0x3ec]
00315adc  1c d0 4d e2                                      sub sp, sp, #0x1c
00315ae0  00 00 53 e3                                      cmp r3, #0
00315ae4  00 40 a0 e1                                      mov r4, r0
00315ae8  01 50 a0 e1                                      mov r5, r1
00315aec  06 60 8f e0                                      add r6, pc, r6
00315af0  05 00 00 0a                                      beq #0x315b0c
00315af4  03 00 a0 e1                                      mov r0, r3
00315af8  00 30 93 e5                                      ldr r3, [r3]
00315afc  0f e0 a0 e1                                      mov lr, pc
00315b00  04 f0 93 e5                                      ldr pc, [r3, #4]
00315b04  00 30 a0 e3                                      mov r3, #0
00315b08  1c 30 84 e5                                      str r3, [r4, #0x1c]
00315b0c  00 00 55 e3                                      cmp r5, #0
00315b10  c6 00 00 0a                                      beq #0x315e30
00315b14  05 00 a0 e1                                      mov r0, r5
00315b18  00 20 a0 e3                                      mov r2, #0
00315b1c  00 30 a0 e3                                      mov r3, #0
00315b20  00 10 95 e5                                      ldr r1, [r5]
00315b24  0f e0 a0 e1                                      mov lr, pc
00315b28  20 f0 91 e5                                      ldr pc, [r1, #0x20]
00315b2c  00 20 a0 e3                                      mov r2, #0
00315b30  00 30 a0 e3                                      mov r3, #0
00315b34  05 00 a0 e1                                      mov r0, r5
00315b38  00 10 95 e5                                      ldr r1, [r5]
00315b3c  0f e0 a0 e1                                      mov lr, pc
00315b40  2c f0 91 e5                                      ldr pc, [r1, #0x2c]
00315b44  00 10 a0 e3                                      mov r1, #0
00315b48  30 00 a0 e3                                      mov r0, #0x30
00315b4c  87 ea ff eb                                      bl #0x310570
00315b50  05 10 a0 e1                                      mov r1, r5
00315b54  00 70 a0 e1                                      mov r7, r0
00315b58  de 05 00 eb                                      bl #0x3172d8
00315b5c  1c 70 84 e5                                      str r7, [r4, #0x1c]
00315b60  38 30 d4 e5                                      ldrb r3, [r4, #0x38]
00315b64  00 00 53 e3                                      cmp r3, #0
00315b68  a1 00 00 1a                                      bne #0x315df4
00315b6c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00315b70  00 00 53 e3                                      cmp r3, #0
00315b74  10 00 00 0a                                      beq #0x315bbc
00315b78  03 00 a0 e1                                      mov r0, r3
00315b7c  00 30 93 e5                                      ldr r3, [r3]
00315b80  0f e0 a0 e1                                      mov lr, pc
00315b84  08 f0 93 e5                                      ldr pc, [r3, #8]
00315b88  00 00 51 e3                                      cmp r1, #0
00315b8c  9a 00 00 1a                                      bne #0x315dfc
00315b90  03 00 50 e3                                      cmp r0, #3
00315b94  98 00 00 8a                                      bhi #0x315dfc
00315b98  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00315b9c  00 00 53 e3                                      cmp r3, #0
00315ba0  05 00 00 0a                                      beq #0x315bbc
00315ba4  03 00 a0 e1                                      mov r0, r3
00315ba8  00 30 93 e5                                      ldr r3, [r3]
00315bac  0f e0 a0 e1                                      mov lr, pc
00315bb0  04 f0 93 e5                                      ldr pc, [r3, #4]
00315bb4  00 30 a0 e3                                      mov r3, #0
00315bb8  1c 30 84 e5                                      str r3, [r4, #0x1c]
00315bbc  18 30 94 e5                                      ldr r3, [r4, #0x18]
00315bc0  14 00 94 e5                                      ldr r0, [r4, #0x14]
00315bc4  00 10 a0 e3                                      mov r1, #0
00315bc8  00 73 9f e5                                      ldr r7, [pc, #0x300]
00315bcc  00 00 63 e0                                      rsb r0, r3, r0
00315bd0  05 00 80 e2                                      add r0, r0, #5
00315bd4  64 ea ff eb                                      bl #0x31056c
00315bd8  18 10 94 e5                                      ldr r1, [r4, #0x18]
00315bdc  00 50 a0 e1                                      mov r5, r0
00315be0  4e e2 ff eb                                      bl #0x30e520
00315be4  05 00 a0 e1                                      mov r0, r5
00315be8  99 e0 ff eb                                      bl #0x30de54
00315bec  e0 12 9f e5                                      ldr r1, [pc, #0x2e0]
00315bf0  05 20 a0 e3                                      mov r2, #5
00315bf4  00 00 85 e0                                      add r0, r5, r0
00315bf8  01 10 8f e0                                      add r1, pc, r1
00315bfc  19 e3 ff eb                                      bl #0x30e868
00315c00  07 30 96 e7                                      ldr r3, [r6, r7]
00315c04  05 10 a0 e1                                      mov r1, r5
00315c08  00 20 a0 e3                                      mov r2, #0
00315c0c  10 30 93 e5                                      ldr r3, [r3, #0x10]
00315c10  34 30 93 e5                                      ldr r3, [r3, #0x34]
00315c14  03 00 a0 e1                                      mov r0, r3
00315c18  00 30 93 e5                                      ldr r3, [r3]
00315c1c  0f e0 a0 e1                                      mov lr, pc
00315c20  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00315c24  00 00 55 e3                                      cmp r5, #0
00315c28  14 00 8d e5                                      str r0, [sp, #0x14]
00315c2c  02 00 00 0a                                      beq #0x315c3c
00315c30  05 00 a0 e1                                      mov r0, r5
00315c34  01 ea ff eb                                      bl #0x310440
00315c38  14 00 9d e5                                      ldr r0, [sp, #0x14]
00315c3c  00 00 50 e3                                      cmp r0, #0
00315c40  13 00 00 0a                                      beq #0x315c94
00315c44  00 10 a0 e3                                      mov r1, #0
00315c48  30 00 a0 e3                                      mov r0, #0x30
00315c4c  47 ea ff eb                                      bl #0x310570
00315c50  18 50 8d e2                                      add r5, sp, #0x18
00315c54  04 10 35 e5                                      ldr r1, [r5, #-4]!
00315c58  00 80 a0 e1                                      mov r8, r0
00315c5c  9d 05 00 eb                                      bl #0x3172d8
00315c60  07 30 96 e7                                      ldr r3, [r6, r7]
00315c64  1c 80 84 e5                                      str r8, [r4, #0x1c]
00315c68  05 10 a0 e1                                      mov r1, r5
00315c6c  10 30 93 e5                                      ldr r3, [r3, #0x10]
00315c70  34 30 93 e5                                      ldr r3, [r3, #0x34]
00315c74  03 00 a0 e1                                      mov r0, r3
00315c78  00 30 93 e5                                      ldr r3, [r3]
00315c7c  0f e0 a0 e1                                      mov lr, pc
00315c80  78 f0 93 e5                                      ldr pc, [r3, #0x78]
00315c84  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
00315c88  80 f7 ff eb                                      bl #0x313a90
00315c8c  01 00 70 e3                                      cmn r0, #1
00315c90  83 00 00 0a                                      beq #0x315ea4
00315c94  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00315c98  00 00 53 e3                                      cmp r3, #0
00315c9c  54 00 00 0a                                      beq #0x315df4
00315ca0  03 00 a0 e1                                      mov r0, r3
00315ca4  00 30 93 e5                                      ldr r3, [r3]
00315ca8  0f e0 a0 e1                                      mov lr, pc
00315cac  08 f0 93 e5                                      ldr pc, [r3, #8]
00315cb0  00 00 51 e3                                      cmp r1, #0
00315cb4  01 00 00 1a                                      bne #0x315cc0
00315cb8  03 00 50 e3                                      cmp r0, #3
00315cbc  4c 00 00 9a                                      bls #0x315df4
00315cc0  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00315cc4  00 20 a0 e3                                      mov r2, #0
00315cc8  00 30 a0 e3                                      mov r3, #0
00315ccc  01 00 a0 e1                                      mov r0, r1
00315cd0  00 10 91 e5                                      ldr r1, [r1]
00315cd4  0f e0 a0 e1                                      mov lr, pc
00315cd8  20 f0 91 e5                                      ldr pc, [r1, #0x20]
00315cdc  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
00315ce0  6a f7 ff eb                                      bl #0x313a90
00315ce4  00 00 50 e3                                      cmp r0, #0
00315ce8  04 00 8d e5                                      str r0, [sp, #4]
00315cec  40 00 00 0a                                      beq #0x315df4
00315cf0  00 50 a0 e3                                      mov r5, #0
00315cf4  20 70 84 e2                                      add r7, r4, #0x20
00315cf8  05 90 a0 e1                                      mov sb, r5
00315cfc  0c 80 8d e2                                      add r8, sp, #0xc
00315d00  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00315d04  03 00 a0 e1                                      mov r0, r3
00315d08  00 30 93 e5                                      ldr r3, [r3]
00315d0c  0f e0 a0 e1                                      mov lr, pc
00315d10  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00315d14  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00315d18  00 a0 a0 e1                                      mov sl, r0
00315d1c  01 60 a0 e1                                      mov r6, r1
00315d20  03 00 a0 e1                                      mov r0, r3
00315d24  00 30 93 e5                                      ldr r3, [r3]
00315d28  0f e0 a0 e1                                      mov lr, pc
00315d2c  08 f0 93 e5                                      ldr pc, [r3, #8]
00315d30  06 00 51 e1                                      cmp r1, r6
00315d34  02 00 00 8a                                      bhi #0x315d44
00315d38  2d 00 00 1a                                      bne #0x315df4
00315d3c  0a 00 50 e1                                      cmp r0, sl
00315d40  2b 00 00 9a                                      bls #0x315df4
00315d44  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
00315d48  50 f7 ff eb                                      bl #0x313a90
00315d4c  04 20 a0 e3                                      mov r2, #4
00315d50  00 30 a0 e3                                      mov r3, #0
00315d54  08 10 a0 e1                                      mov r1, r8
00315d58  00 60 a0 e1                                      mov r6, r0
00315d5c  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
00315d60  0c 90 cd e5                                      strb sb, [sp, #0xc]
00315d64  0d 90 cd e5                                      strb sb, [sp, #0xd]
00315d68  0e 90 cd e5                                      strb sb, [sp, #0xe]
00315d6c  0f 90 cd e5                                      strb sb, [sp, #0xf]
00315d70  10 90 cd e5                                      strb sb, [sp, #0x10]
00315d74  b6 05 00 eb                                      bl #0x317454
00315d78  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00315d7c  03 00 a0 e1                                      mov r0, r3
00315d80  00 30 93 e5                                      ldr r3, [r3]
00315d84  0f e0 a0 e1                                      mov lr, pc
00315d88  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00315d8c  00 a0 a0 e1                                      mov sl, r0
00315d90  01 b0 a0 e1                                      mov fp, r1
00315d94  07 00 a0 e1                                      mov r0, r7
00315d98  08 10 a0 e1                                      mov r1, r8
00315d9c  77 f9 ff eb                                      bl #0x314380
00315da0  00 00 57 e1                                      cmp r7, r0
00315da4  08 10 a0 e1                                      mov r1, r8
00315da8  18 00 00 0a                                      beq #0x315e10
00315dac  07 00 a0 e1                                      mov r0, r7
00315db0  f0 fe ff eb                                      bl #0x315978
00315db4  08 10 a0 e1                                      mov r1, r8
00315db8  f0 a0 c0 e1                                      strd sl, fp, [r0]
00315dbc  07 00 a0 e1                                      mov r0, r7
00315dc0  ec fe ff eb                                      bl #0x315978
00315dc4  08 60 80 e5                                      str r6, [r0, #8]
00315dc8  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00315dcc  06 20 9a e0                                      adds r2, sl, r6
00315dd0  00 30 ab e2                                      adc r3, fp, #0
00315dd4  01 00 a0 e1                                      mov r0, r1
00315dd8  00 10 91 e5                                      ldr r1, [r1]
00315ddc  0f e0 a0 e1                                      mov lr, pc
00315de0  20 f0 91 e5                                      ldr pc, [r1, #0x20]
00315de4  04 30 9d e5                                      ldr r3, [sp, #4]
00315de8  01 50 85 e2                                      add r5, r5, #1
00315dec  03 00 55 e1                                      cmp r5, r3
00315df0  c2 ff ff 1a                                      bne #0x315d00
00315df4  1c d0 8d e2                                      add sp, sp, #0x1c
00315df8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00315dfc  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
00315e00  22 f7 ff eb                                      bl #0x313a90
00315e04  01 00 70 e3                                      cmn r0, #1
00315e08  a1 ff ff 1a                                      bne #0x315c94
00315e0c  61 ff ff ea                                      b #0x315b98
00315e10  08 10 a0 e1                                      mov r1, r8
00315e14  d7 fe ff eb                                      bl #0x315978
00315e18  f0 a0 c0 e1                                      strd sl, fp, [r0]
00315e1c  14 90 80 e5                                      str sb, [r0, #0x14]
00315e20  10 90 80 e5                                      str sb, [r0, #0x10]
00315e24  0c 90 80 e5                                      str sb, [r0, #0xc]
00315e28  08 60 80 e5                                      str r6, [r0, #8]
00315e2c  e5 ff ff ea                                      b #0x315dc8
00315e30  98 30 9f e5                                      ldr r3, [pc, #0x98]
00315e34  18 10 94 e5                                      ldr r1, [r4, #0x18]
00315e38  05 20 a0 e1                                      mov r2, r5
00315e3c  03 70 96 e7                                      ldr r7, [r6, r3]
00315e40  10 30 97 e5                                      ldr r3, [r7, #0x10]
00315e44  34 30 93 e5                                      ldr r3, [r3, #0x34]
00315e48  03 00 a0 e1                                      mov r0, r3
00315e4c  00 30 93 e5                                      ldr r3, [r3]
00315e50  0f e0 a0 e1                                      mov lr, pc
00315e54  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00315e58  00 00 50 e3                                      cmp r0, #0
00315e5c  14 00 8d e5                                      str r0, [sp, #0x14]
00315e60  3e ff ff 0a                                      beq #0x315b60
00315e64  05 10 a0 e1                                      mov r1, r5
00315e68  30 00 a0 e3                                      mov r0, #0x30
00315e6c  bf e9 ff eb                                      bl #0x310570
00315e70  18 50 8d e2                                      add r5, sp, #0x18
00315e74  00 80 a0 e1                                      mov r8, r0
00315e78  04 10 35 e5                                      ldr r1, [r5, #-4]!
00315e7c  15 05 00 eb                                      bl #0x3172d8
00315e80  1c 80 84 e5                                      str r8, [r4, #0x1c]
00315e84  10 30 97 e5                                      ldr r3, [r7, #0x10]
00315e88  05 10 a0 e1                                      mov r1, r5
00315e8c  34 30 93 e5                                      ldr r3, [r3, #0x34]
00315e90  03 00 a0 e1                                      mov r0, r3
00315e94  00 30 93 e5                                      ldr r3, [r3]
00315e98  0f e0 a0 e1                                      mov lr, pc
00315e9c  78 f0 93 e5                                      ldr pc, [r3, #0x78]
00315ea0  2e ff ff ea                                      b #0x315b60
00315ea4  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00315ea8  00 00 53 e3                                      cmp r3, #0
00315eac  d0 ff ff 0a                                      beq #0x315df4
00315eb0  03 00 a0 e1                                      mov r0, r3
00315eb4  00 30 93 e5                                      ldr r3, [r3]
00315eb8  0f e0 a0 e1                                      mov lr, pc
00315ebc  04 f0 93 e5                                      ldr pc, [r3, #4]
00315ec0  00 30 a0 e3                                      mov r3, #0
00315ec4  1c 30 84 e5                                      str r3, [r4, #0x1c]
00315ec8  c9 ff ff ea                                      b #0x315df4
; mapping-symbol data/literal pool
00315ecc  a4 ef 67 00 f4 37 00 00 68 89 5a 00              .byte 0xa4, 0xef, 0x67, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x68, 0x89, 0x5a, 0x00

; FUNCTION 0x00315ed8, declared_size=112, range_size=112, mode=arm
; class-group: Savegame
; alias: _ZN8SavegameC1EPKcb
; demangled: Savegame::Savegame(char const*, bool)
; decoder-mode: arm
00315ed8  60 30 9f e5                                      ldr r3, [pc, #0x60]
00315edc  60 c0 9f e5                                      ldr ip, [pc, #0x60]
00315ee0  30 40 2d e9                                      push {r4, r5, lr}
00315ee4  03 30 8f e0                                      add r3, pc, r3
00315ee8  0c c0 93 e7                                      ldr ip, [r3, ip]
00315eec  0c d0 4d e2                                      sub sp, sp, #0xc
00315ef0  00 40 a0 e1                                      mov r4, r0
00315ef4  08 c0 8c e2                                      add ip, ip, #8
00315ef8  02 50 a0 e1                                      mov r5, r2
00315efc  04 c0 80 e4                                      str ip, [r0], #4
00315f00  04 20 8d e2                                      add r2, sp, #4
00315f04  78 f8 ff eb                                      bl #0x3140ec
00315f08  00 10 a0 e3                                      mov r1, #0
00315f0c  04 30 a0 e1                                      mov r3, r4
00315f10  1c 10 84 e5                                      str r1, [r4, #0x1c]
00315f14  24 10 84 e5                                      str r1, [r4, #0x24]
00315f18  20 10 e3 e5                                      strb r1, [r3, #0x20]!
00315f1c  04 00 a0 e1                                      mov r0, r4
00315f20  2c 30 84 e5                                      str r3, [r4, #0x2c]
00315f24  38 50 c4 e5                                      strb r5, [r4, #0x38]
00315f28  28 30 84 e5                                      str r3, [r4, #0x28]
00315f2c  30 10 84 e5                                      str r1, [r4, #0x30]
00315f30  e6 fe ff eb                                      bl #0x315ad0
00315f34  04 00 a0 e1                                      mov r0, r4
00315f38  0c d0 8d e2                                      add sp, sp, #0xc
00315f3c  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
00315f40  ac eb 67 00 b8 0d 00 00                          .byte 0xac, 0xeb, 0x67, 0x00, 0xb8, 0x0d, 0x00, 0x00

; FUNCTION 0x00315f48, declared_size=112, range_size=112, mode=arm
; class-group: Savegame
; alias: _ZN8SavegameC2EPKcb
; demangled: Savegame::Savegame(char const*, bool)
; decoder-mode: arm
00315f48  60 30 9f e5                                      ldr r3, [pc, #0x60]
00315f4c  60 c0 9f e5                                      ldr ip, [pc, #0x60]
00315f50  30 40 2d e9                                      push {r4, r5, lr}
00315f54  03 30 8f e0                                      add r3, pc, r3
00315f58  0c c0 93 e7                                      ldr ip, [r3, ip]
00315f5c  0c d0 4d e2                                      sub sp, sp, #0xc
00315f60  00 40 a0 e1                                      mov r4, r0
00315f64  08 c0 8c e2                                      add ip, ip, #8
00315f68  02 50 a0 e1                                      mov r5, r2
00315f6c  04 c0 80 e4                                      str ip, [r0], #4
00315f70  04 20 8d e2                                      add r2, sp, #4
00315f74  5c f8 ff eb                                      bl #0x3140ec
00315f78  00 10 a0 e3                                      mov r1, #0
00315f7c  04 30 a0 e1                                      mov r3, r4
00315f80  1c 10 84 e5                                      str r1, [r4, #0x1c]
00315f84  24 10 84 e5                                      str r1, [r4, #0x24]
00315f88  20 10 e3 e5                                      strb r1, [r3, #0x20]!
00315f8c  04 00 a0 e1                                      mov r0, r4
00315f90  2c 30 84 e5                                      str r3, [r4, #0x2c]
00315f94  38 50 c4 e5                                      strb r5, [r4, #0x38]
00315f98  28 30 84 e5                                      str r3, [r4, #0x28]
00315f9c  30 10 84 e5                                      str r1, [r4, #0x30]
00315fa0  ca fe ff eb                                      bl #0x315ad0
00315fa4  04 00 a0 e1                                      mov r0, r4
00315fa8  0c d0 8d e2                                      add sp, sp, #0xc
00315fac  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
00315fb0  3c eb 67 00 b8 0d 00 00                          .byte 0x3c, 0xeb, 0x67, 0x00, 0xb8, 0x0d, 0x00, 0x00

; FUNCTION 0x00315fb8, declared_size=1032, range_size=1032, mode=arm
; class-group: Savegame
; alias: _ZN8Savegame7saveAllEv
; demangled: Savegame::saveAll()
; decoder-mode: arm
00315fb8  dc 13 9f e5                                      ldr r1, [pc, #0x3dc]
00315fbc  dc 23 9f e5                                      ldr r2, [pc, #0x3dc]
00315fc0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00315fc4  01 10 8f e0                                      add r1, pc, r1
00315fc8  02 30 91 e7                                      ldr r3, [r1, r2]
00315fcc  00 90 a0 e1                                      mov sb, r0
00315fd0  cc 03 9f e5                                      ldr r0, [pc, #0x3cc]
00315fd4  00 30 93 e5                                      ldr r3, [r3]
00315fd8  8c d0 4d e2                                      sub sp, sp, #0x8c
00315fdc  14 10 8d e5                                      str r1, [sp, #0x14]
00315fe0  00 00 8f e0                                      add r0, pc, r0
00315fe4  88 10 8d e2                                      add r1, sp, #0x88
00315fe8  20 20 8d e5                                      str r2, [sp, #0x20]
00315fec  18 10 8d e5                                      str r1, [sp, #0x18]
00315ff0  84 30 8d e5                                      str r3, [sp, #0x84]
00315ff4  ae f5 ff eb                                      bl #0x3136b4
00315ff8  18 20 9d e5                                      ldr r2, [sp, #0x18]
00315ffc  00 40 a0 e3                                      mov r4, #0
00316000  20 b0 89 e2                                      add fp, sb, #0x20
00316004  24 40 22 e5                                      str r4, [r2, #-0x24]!
00316008  04 30 82 e2                                      add r3, r2, #4
0031600c  18 20 8d e5                                      str r2, [sp, #0x18]
00316010  14 20 99 e5                                      ldr r2, [sb, #0x14]
00316014  18 10 99 e5                                      ldr r1, [sb, #0x18]
00316018  03 00 a0 e1                                      mov r0, r3
0031601c  78 30 8d e5                                      str r3, [sp, #0x78]
00316020  7c 30 8d e5                                      str r3, [sp, #0x7c]
00316024  af ed ff eb                                      bl #0x3116e8
00316028  01 30 a0 e3                                      mov r3, #1
0031602c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00316030  80 30 cd e5                                      strb r3, [sp, #0x80]
00316034  81 40 cd e5                                      strb r4, [sp, #0x81]
00316038  34 fc ff eb                                      bl #0x315110
0031603c  30 00 a0 e3                                      mov r0, #0x30
00316040  03 e9 ff eb                                      bl #0x310454
00316044  88 30 8d e2                                      add r3, sp, #0x88
00316048  00 40 a0 e1                                      mov r4, r0
0031604c  1c 30 8d e5                                      str r3, [sp, #0x1c]
00316050  39 03 00 eb                                      bl #0x316d3c
00316054  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00316058  00 30 e0 e3                                      mvn r3, #0
0031605c  3c 70 8d e2                                      add r7, sp, #0x3c
00316060  48 30 20 e5                                      str r3, [r0, #-0x48]!
00316064  1c 00 8d e5                                      str r0, [sp, #0x1c]
00316068  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0031606c  04 00 a0 e1                                      mov r0, r4
00316070  5a f6 ff eb                                      bl #0x3139e0
00316074  2c 33 9f e5                                      ldr r3, [pc, #0x32c]
00316078  2c 13 9f e5                                      ldr r1, [pc, #0x32c]
0031607c  2c 23 9f e5                                      ldr r2, [pc, #0x32c]
00316080  03 30 8f e0                                      add r3, pc, r3
00316084  2c 30 8d e5                                      str r3, [sp, #0x2c]
00316088  24 33 9f e5                                      ldr r3, [pc, #0x324]
0031608c  03 30 8f e0                                      add r3, pc, r3
00316090  30 30 8d e5                                      str r3, [sp, #0x30]
00316094  1c 33 9f e5                                      ldr r3, [pc, #0x31c]
00316098  03 30 8f e0                                      add r3, pc, r3
0031609c  34 30 8d e5                                      str r3, [sp, #0x34]
003160a0  28 50 99 e5                                      ldr r5, [sb, #0x28]
003160a4  24 10 8d e5                                      str r1, [sp, #0x24]
003160a8  28 20 8d e5                                      str r2, [sp, #0x28]
003160ac  0b 00 55 e1                                      cmp r5, fp
003160b0  3a 00 00 0a                                      beq #0x3161a0
003160b4  00 30 94 e5                                      ldr r3, [r4]
003160b8  04 00 a0 e1                                      mov r0, r4
003160bc  0f e0 a0 e1                                      mov lr, pc
003160c0  30 f0 93 e5                                      ldr pc, [r3, #0x30]
003160c4  00 30 a0 e3                                      mov r3, #0
003160c8  f8 00 cd e1                                      strd r0, r1, [sp, #8]
003160cc  07 10 a0 e1                                      mov r1, r7
003160d0  04 00 a0 e1                                      mov r0, r4
003160d4  3c 30 8d e5                                      str r3, [sp, #0x3c]
003160d8  40 f6 ff eb                                      bl #0x3139e0
003160dc  24 10 95 e5                                      ldr r1, [r5, #0x24]
003160e0  04 20 a0 e3                                      mov r2, #4
003160e4  00 30 a0 e3                                      mov r3, #0
003160e8  04 00 a0 e1                                      mov r0, r4
003160ec  44 05 00 eb                                      bl #0x317604
003160f0  00 30 94 e5                                      ldr r3, [r4]
003160f4  04 00 a0 e1                                      mov r0, r4
003160f8  0f e0 a0 e1                                      mov lr, pc
003160fc  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00316100  38 30 95 e5                                      ldr r3, [r5, #0x38]
00316104  00 80 a0 e1                                      mov r8, r0
00316108  00 00 53 e3                                      cmp r3, #0
0031610c  5c 00 00 0a                                      beq #0x316284
00316110  04 00 a0 e1                                      mov r0, r4
00316114  3c 10 95 e5                                      ldr r1, [r5, #0x3c]
00316118  33 ff 2f e1                                      blx r3
0031611c  00 30 94 e5                                      ldr r3, [r4]
00316120  04 00 a0 e1                                      mov r0, r4
00316124  0f e0 a0 e1                                      mov lr, pc
00316128  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0031612c  d8 20 cd e1                                      ldrd r2, r3, [sp, #8]
00316130  00 80 68 e0                                      rsb r8, r8, r0
00316134  3c 80 8d e5                                      str r8, [sp, #0x3c]
00316138  00 60 a0 e1                                      mov r6, r0
0031613c  01 a0 a0 e1                                      mov sl, r1
00316140  04 00 a0 e1                                      mov r0, r4
00316144  00 10 94 e5                                      ldr r1, [r4]
00316148  0f e0 a0 e1                                      mov lr, pc
0031614c  2c f0 91 e5                                      ldr pc, [r1, #0x2c]
00316150  04 00 a0 e1                                      mov r0, r4
00316154  07 10 a0 e1                                      mov r1, r7
00316158  20 f6 ff eb                                      bl #0x3139e0
0031615c  0a 30 a0 e1                                      mov r3, sl
00316160  06 20 a0 e1                                      mov r2, r6
00316164  00 10 94 e5                                      ldr r1, [r4]
00316168  04 00 a0 e1                                      mov r0, r4
0031616c  0f e0 a0 e1                                      mov lr, pc
00316170  2c f0 91 e5                                      ldr pc, [r1, #0x2c]
00316174  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00316178  00 00 53 e3                                      cmp r3, #0
0031617c  01 00 00 1a                                      bne #0x316188
00316180  59 00 00 ea                                      b #0x3162ec
00316184  02 30 a0 e1                                      mov r3, r2
00316188  08 20 93 e5                                      ldr r2, [r3, #8]
0031618c  00 00 52 e3                                      cmp r2, #0
00316190  fb ff ff 1a                                      bne #0x316184
00316194  03 50 a0 e1                                      mov r5, r3
00316198  0b 00 55 e1                                      cmp r5, fp
0031619c  c4 ff ff 1a                                      bne #0x3160b4
003161a0  00 30 94 e5                                      ldr r3, [r4]
003161a4  04 00 a0 e1                                      mov r0, r4
003161a8  0f e0 a0 e1                                      mov lr, pc
003161ac  30 f0 93 e5                                      ldr pc, [r3, #0x30]
003161b0  00 20 a0 e3                                      mov r2, #0
003161b4  00 60 a0 e1                                      mov r6, r0
003161b8  01 70 a0 e1                                      mov r7, r1
003161bc  00 30 a0 e3                                      mov r3, #0
003161c0  04 00 a0 e1                                      mov r0, r4
003161c4  00 10 94 e5                                      ldr r1, [r4]
003161c8  0f e0 a0 e1                                      mov lr, pc
003161cc  2c f0 91 e5                                      ldr pc, [r1, #0x2c]
003161d0  30 30 99 e5                                      ldr r3, [sb, #0x30]
003161d4  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
003161d8  04 00 a0 e1                                      mov r0, r4
003161dc  40 30 8d e5                                      str r3, [sp, #0x40]
003161e0  fe f5 ff eb                                      bl #0x3139e0
003161e4  06 20 a0 e1                                      mov r2, r6
003161e8  07 30 a0 e1                                      mov r3, r7
003161ec  00 10 94 e5                                      ldr r1, [r4]
003161f0  04 00 a0 e1                                      mov r0, r4
003161f4  0f e0 a0 e1                                      mov lr, pc
003161f8  2c f0 91 e5                                      ldr pc, [r1, #0x2c]
003161fc  88 50 8d e2                                      add r5, sp, #0x88
00316200  09 00 a0 e1                                      mov r0, sb
00316204  04 10 a0 e1                                      mov r1, r4
00316208  30 fe ff eb                                      bl #0x315ad0
0031620c  44 40 25 e5                                      str r4, [r5, #-0x44]!
00316210  04 30 85 e2                                      add r3, r5, #4
00316214  14 20 99 e5                                      ldr r2, [sb, #0x14]
00316218  18 10 99 e5                                      ldr r1, [sb, #0x18]
0031621c  03 00 a0 e1                                      mov r0, r3
00316220  58 30 8d e5                                      str r3, [sp, #0x58]
00316224  5c 30 8d e5                                      str r3, [sp, #0x5c]
00316228  2e ed ff eb                                      bl #0x3116e8
0031622c  00 30 a0 e3                                      mov r3, #0
00316230  05 00 a0 e1                                      mov r0, r5
00316234  60 30 cd e5                                      strb r3, [sp, #0x60]
00316238  01 30 a0 e3                                      mov r3, #1
0031623c  61 30 cd e5                                      strb r3, [sp, #0x61]
00316240  b2 fb ff eb                                      bl #0x315110
00316244  05 00 a0 e1                                      mov r0, r5
00316248  90 f6 ff eb                                      bl #0x313c90
0031624c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00316250  8e f6 ff eb                                      bl #0x313c90
00316254  60 01 9f e5                                      ldr r0, [pc, #0x160]
00316258  00 00 8f e0                                      add r0, pc, r0
0031625c  15 f5 ff eb                                      bl #0x3136b8
00316260  14 10 9d e5                                      ldr r1, [sp, #0x14]
00316264  20 00 9d e5                                      ldr r0, [sp, #0x20]
00316268  84 20 9d e5                                      ldr r2, [sp, #0x84]
0031626c  00 30 91 e7                                      ldr r3, [r1, r0]
00316270  00 30 93 e5                                      ldr r3, [r3]
00316274  03 00 52 e1                                      cmp r2, r3
00316278  46 00 00 1a                                      bne #0x316398
0031627c  8c d0 8d e2                                      add sp, sp, #0x8c
00316280  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00316284  1c 60 99 e5                                      ldr r6, [sb, #0x1c]
00316288  00 00 56 e3                                      cmp r6, #0
0031628c  23 00 00 0a                                      beq #0x316320
00316290  2c 30 d6 e5                                      ldrb r3, [r6, #0x2c]
00316294  00 20 94 e5                                      ldr r2, [r4]
00316298  00 00 53 e3                                      cmp r3, #0
0031629c  1c a0 92 e5                                      ldr sl, [r2, #0x1c]
003162a0  08 00 00 1a                                      bne #0x3162c8
003162a4  14 10 9d e5                                      ldr r1, [sp, #0x14]
003162a8  24 00 9d e5                                      ldr r0, [sp, #0x24]
003162ac  00 20 91 e7                                      ldr r2, [r1, r0]
003162b0  00 20 92 e5                                      ldr r2, [r2]
003162b4  02 00 52 e3                                      cmp r2, #2
003162b8  00 30 83 05                                      streq r3, [r3]
003162bc  01 00 00 0a                                      beq #0x3162c8
003162c0  01 00 52 e3                                      cmp r2, #1
003162c4  28 00 00 0a                                      beq #0x31636c
003162c8  1c 30 96 e5                                      ldr r3, [r6, #0x1c]
003162cc  28 c0 95 e5                                      ldr ip, [r5, #0x28]
003162d0  04 00 a0 e1                                      mov r0, r4
003162d4  00 10 93 e5                                      ldr r1, [r3]
003162d8  30 20 95 e5                                      ldr r2, [r5, #0x30]
003162dc  00 30 a0 e3                                      mov r3, #0
003162e0  0c 10 81 e0                                      add r1, r1, ip
003162e4  3a ff 2f e1                                      blx sl
003162e8  8b ff ff ea                                      b #0x31611c
003162ec  04 20 95 e5                                      ldr r2, [r5, #4]
003162f0  0c 10 92 e5                                      ldr r1, [r2, #0xc]
003162f4  01 00 55 e1                                      cmp r5, r1
003162f8  05 00 00 1a                                      bne #0x316314
003162fc  02 50 a0 e1                                      mov r5, r2
00316300  04 20 92 e5                                      ldr r2, [r2, #4]
00316304  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00316308  05 00 53 e1                                      cmp r3, r5
0031630c  fa ff ff 0a                                      beq #0x3162fc
00316310  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00316314  02 00 53 e1                                      cmp r3, r2
00316318  02 50 a0 11                                      movne r5, r2
0031631c  62 ff ff ea                                      b #0x3160ac
00316320  06 10 a0 e1                                      mov r1, r6
00316324  30 00 95 e5                                      ldr r0, [r5, #0x30]
00316328  8f e8 ff eb                                      bl #0x31056c
0031632c  06 10 a0 e1                                      mov r1, r6
00316330  00 a0 a0 e1                                      mov sl, r0
00316334  30 20 95 e5                                      ldr r2, [r5, #0x30]
00316338  48 e0 ff eb                                      bl #0x30e460
0031633c  06 30 a0 e1                                      mov r3, r6
00316340  00 c0 94 e5                                      ldr ip, [r4]
00316344  04 00 a0 e1                                      mov r0, r4
00316348  0a 10 a0 e1                                      mov r1, sl
0031634c  30 20 95 e5                                      ldr r2, [r5, #0x30]
00316350  0f e0 a0 e1                                      mov lr, pc
00316354  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
00316358  00 00 5a e3                                      cmp sl, #0
0031635c  6e ff ff 0a                                      beq #0x31611c
00316360  0a 00 a0 e1                                      mov r0, sl
00316364  35 e8 ff eb                                      bl #0x310440
00316368  6b ff ff ea                                      b #0x31611c
0031636c  14 30 9d e5                                      ldr r3, [sp, #0x14]
00316370  28 20 9d e5                                      ldr r2, [sp, #0x28]
00316374  82 c0 a0 e3                                      mov ip, #0x82
00316378  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0031637c  02 00 93 e7                                      ldr r0, [r3, r2]
00316380  30 20 9d e5                                      ldr r2, [sp, #0x30]
00316384  34 30 9d e5                                      ldr r3, [sp, #0x34]
00316388  a8 00 80 e2                                      add r0, r0, #0xa8
0031638c  00 c0 8d e5                                      str ip, [sp]
00316390  1b df ff eb                                      bl #0x30e004
00316394  cb ff ff ea                                      b #0x3162c8
00316398  dc df ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0031639c  cc ea 67 00 ac 40 00 00 d0 85 5a 00 58 83 5a 00  .byte 0xcc, 0xea, 0x67, 0x00, 0xac, 0x40, 0x00, 0x00, 0xd0, 0x85, 0x5a, 0x00, 0x58, 0x83, 0x5a, 0x00
003163ac  c0 39 00 00 c0 19 00 00 3c 85 5a 00 38 85 5a 00  .byte 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x3c, 0x85, 0x5a, 0x00, 0x38, 0x85, 0x5a, 0x00
003163bc  58 83 5a 00                                      .byte 0x58, 0x83, 0x5a, 0x00

; FUNCTION 0x003163c0, declared_size=68, range_size=68, mode=arm
; class-group: Savegame
; alias: _ZN8Savegame5resetEv
; demangled: Savegame::reset()
; decoder-mode: arm
003163c0  70 40 2d e9                                      push {r4, r5, r6, lr}
003163c4  30 30 90 e5                                      ldr r3, [r0, #0x30]
003163c8  00 40 a0 e1                                      mov r4, r0
003163cc  00 00 53 e3                                      cmp r3, #0
003163d0  08 00 00 0a                                      beq #0x3163f8
003163d4  20 50 80 e2                                      add r5, r0, #0x20
003163d8  05 00 a0 e1                                      mov r0, r5
003163dc  24 10 94 e5                                      ldr r1, [r4, #0x24]
003163e0  75 f6 ff eb                                      bl #0x313dbc
003163e4  00 30 a0 e3                                      mov r3, #0
003163e8  2c 50 84 e5                                      str r5, [r4, #0x2c]
003163ec  30 30 84 e5                                      str r3, [r4, #0x30]
003163f0  28 50 84 e5                                      str r5, [r4, #0x28]
003163f4  24 30 84 e5                                      str r3, [r4, #0x24]
003163f8  04 00 a0 e1                                      mov r0, r4
003163fc  70 40 bd e8                                      pop {r4, r5, r6, lr}
00316400  ec fe ff ea                                      b #0x315fb8
