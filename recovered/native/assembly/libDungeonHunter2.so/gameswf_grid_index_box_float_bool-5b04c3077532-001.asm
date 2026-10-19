; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b11e4, declared_size=240, range_size=240, mode=arm
; class-group: gameswf::grid_index_box<float, bool>
; alias: _ZNK7gameswf14grid_index_boxIfbE27get_containing_cell_clampedERKNS_11index_pointIfEE
; demangled: gameswf::grid_index_box<float, bool>::get_containing_cell_clamped(gameswf::index_point<float> const&) const
; decoder-mode: arm
007b11e4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007b11e8  00 50 91 e5                                      ldr r5, [r1]
007b11ec  00 60 a0 e1                                      mov r6, r0
007b11f0  01 40 a0 e1                                      mov r4, r1
007b11f4  00 00 92 e5                                      ldr r0, [r2]
007b11f8  05 10 a0 e1                                      mov r1, r5
007b11fc  02 80 a0 e1                                      mov r8, r2
007b1200  69 74 ed eb                                      bl #0x30e3ac
007b1204  00 70 a0 e1                                      mov r7, r0
007b1208  10 00 94 e5                                      ldr r0, [r4, #0x10]
007b120c  d4 75 ed eb                                      bl #0x30e964
007b1210  00 10 a0 e1                                      mov r1, r0
007b1214  07 00 a0 e1                                      mov r0, r7
007b1218  d3 76 ed eb                                      bl #0x30ed6c
007b121c  05 10 a0 e1                                      mov r1, r5
007b1220  00 70 a0 e1                                      mov r7, r0
007b1224  08 00 94 e5                                      ldr r0, [r4, #8]
007b1228  5f 74 ed eb                                      bl #0x30e3ac
007b122c  00 10 a0 e1                                      mov r1, r0
007b1230  07 00 a0 e1                                      mov r0, r7
007b1234  96 76 ed eb                                      bl #0x30ec94
007b1238  a3 74 ed eb                                      bl #0x30e4cc
007b123c  00 00 86 e5                                      str r0, [r6]
007b1240  04 70 94 e5                                      ldr r7, [r4, #4]
007b1244  00 50 a0 e1                                      mov r5, r0
007b1248  04 00 98 e5                                      ldr r0, [r8, #4]
007b124c  07 10 a0 e1                                      mov r1, r7
007b1250  55 74 ed eb                                      bl #0x30e3ac
007b1254  00 80 a0 e1                                      mov r8, r0
007b1258  14 00 94 e5                                      ldr r0, [r4, #0x14]
007b125c  c0 75 ed eb                                      bl #0x30e964
007b1260  00 10 a0 e1                                      mov r1, r0
007b1264  08 00 a0 e1                                      mov r0, r8
007b1268  bf 76 ed eb                                      bl #0x30ed6c
007b126c  07 10 a0 e1                                      mov r1, r7
007b1270  00 80 a0 e1                                      mov r8, r0
007b1274  0c 00 94 e5                                      ldr r0, [r4, #0xc]
007b1278  4b 74 ed eb                                      bl #0x30e3ac
007b127c  00 10 a0 e1                                      mov r1, r0
007b1280  08 00 a0 e1                                      mov r0, r8
007b1284  82 76 ed eb                                      bl #0x30ec94
007b1288  8f 74 ed eb                                      bl #0x30e4cc
007b128c  00 00 55 e3                                      cmp r5, #0
007b1290  00 50 a0 b3                                      movlt r5, #0
007b1294  04 00 86 e5                                      str r0, [r6, #4]
007b1298  00 50 86 b5                                      strlt r5, [r6]
007b129c  10 30 94 e5                                      ldr r3, [r4, #0x10]
007b12a0  06 00 a0 e1                                      mov r0, r6
007b12a4  03 00 55 e1                                      cmp r5, r3
007b12a8  01 30 43 a2                                      subge r3, r3, #1
007b12ac  00 30 86 a5                                      strge r3, [r6]
007b12b0  04 30 96 e5                                      ldr r3, [r6, #4]
007b12b4  00 00 53 e3                                      cmp r3, #0
007b12b8  00 30 a0 b3                                      movlt r3, #0
007b12bc  04 30 86 b5                                      strlt r3, [r6, #4]
007b12c0  14 20 94 e5                                      ldr r2, [r4, #0x14]
007b12c4  02 00 53 e1                                      cmp r3, r2
007b12c8  01 20 42 a2                                      subge r2, r2, #1
007b12cc  04 20 86 a5                                      strge r2, [r6, #4]
007b12d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007b12d4, declared_size=72, range_size=72, mode=arm
; class-group: gameswf::grid_index_box<float, bool>
; alias: _ZNK7gameswf14grid_index_boxIfbE28get_containing_cells_clampedERKNS_9index_boxIfEE
; demangled: gameswf::grid_index_box<float, bool>::get_containing_cells_clamped(gameswf::index_box<float> const&) const
; decoder-mode: arm
007b12d4  70 40 2d e9                                      push {r4, r5, r6, lr}
007b12d8  10 d0 4d e2                                      sub sp, sp, #0x10
007b12dc  00 40 a0 e1                                      mov r4, r0
007b12e0  01 60 a0 e1                                      mov r6, r1
007b12e4  02 50 a0 e1                                      mov r5, r2
007b12e8  08 00 8d e2                                      add r0, sp, #8
007b12ec  bc ff ff eb                                      bl #0x7b11e4
007b12f0  06 10 a0 e1                                      mov r1, r6
007b12f4  08 20 85 e2                                      add r2, r5, #8
007b12f8  0d 00 a0 e1                                      mov r0, sp
007b12fc  b8 ff ff eb                                      bl #0x7b11e4
007b1300  08 00 9d e5                                      ldr r0, [sp, #8]
007b1304  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007b1308  0c 00 9d e8                                      ldm sp, {r2, r3}
007b130c  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
007b1310  04 00 a0 e1                                      mov r0, r4
007b1314  10 d0 8d e2                                      add sp, sp, #0x10
007b1318  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007b144c, declared_size=304, range_size=304, mode=arm
; class-group: gameswf::grid_index_box<float, bool>
; alias: _ZN7gameswf14grid_index_boxIfbE5beginERKNS_9index_boxIfEE
; demangled: gameswf::grid_index_box<float, bool>::begin(gameswf::index_box<float> const&)
; decoder-mode: arm
007b144c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007b1450  18 30 91 e5                                      ldr r3, [r1, #0x18]
007b1454  0c d0 4d e2                                      sub sp, sp, #0xc
007b1458  01 50 a0 e1                                      mov r5, r1
007b145c  01 30 83 e2                                      add r3, r3, #1
007b1460  00 00 53 e3                                      cmp r3, #0
007b1464  00 40 a0 e1                                      mov r4, r0
007b1468  02 60 a0 e1                                      mov r6, r2
007b146c  18 30 81 e5                                      str r3, [r1, #0x18]
007b1470  16 00 00 1a                                      bne #0x7b14d0
007b1474  14 20 91 e5                                      ldr r2, [r1, #0x14]
007b1478  10 70 91 e5                                      ldr r7, [r1, #0x10]
007b147c  97 02 07 e0                                      mul r7, r7, r2
007b1480  00 00 57 e3                                      cmp r7, #0
007b1484  0f 00 00 da                                      ble #0x7b14c8
007b1488  03 e0 a0 e1                                      mov lr, r3
007b148c  1c c0 95 e5                                      ldr ip, [r5, #0x1c]
007b1490  03 c2 8c e0                                      add ip, ip, r3, lsl #4
007b1494  04 00 9c e5                                      ldr r0, [ip, #4]
007b1498  00 00 50 e3                                      cmp r0, #0
007b149c  06 00 00 da                                      ble #0x7b14bc
007b14a0  00 20 a0 e3                                      mov r2, #0
007b14a4  00 10 9c e5                                      ldr r1, [ip]
007b14a8  02 11 91 e7                                      ldr r1, [r1, r2, lsl #2]
007b14ac  01 20 82 e2                                      add r2, r2, #1
007b14b0  00 00 52 e1                                      cmp r2, r0
007b14b4  14 e0 81 e5                                      str lr, [r1, #0x14]
007b14b8  f9 ff ff 1a                                      bne #0x7b14a4
007b14bc  01 30 83 e2                                      add r3, r3, #1
007b14c0  07 00 53 e1                                      cmp r3, r7
007b14c4  f0 ff ff 1a                                      bne #0x7b148c
007b14c8  01 30 a0 e3                                      mov r3, #1
007b14cc  18 30 85 e5                                      str r3, [r5, #0x18]
007b14d0  00 30 a0 e3                                      mov r3, #0
007b14d4  04 c0 a0 e1                                      mov ip, r4
007b14d8  00 20 a0 e3                                      mov r2, #0
007b14dc  00 10 e0 e3                                      mvn r1, #0
007b14e0  04 50 8c e4                                      str r5, [ip], #4
007b14e4  0c 20 84 e5                                      str r2, [r4, #0xc]
007b14e8  08 20 84 e5                                      str r2, [r4, #8]
007b14ec  04 20 84 e5                                      str r2, [r4, #4]
007b14f0  10 20 84 e5                                      str r2, [r4, #0x10]
007b14f4  2c 10 84 e5                                      str r1, [r4, #0x2c]
007b14f8  30 30 84 e5                                      str r3, [r4, #0x30]
007b14fc  18 30 84 e5                                      str r3, [r4, #0x18]
007b1500  14 30 84 e5                                      str r3, [r4, #0x14]
007b1504  20 30 84 e5                                      str r3, [r4, #0x20]
007b1508  1c 30 84 e5                                      str r3, [r4, #0x1c]
007b150c  24 30 84 e5                                      str r3, [r4, #0x24]
007b1510  28 30 84 e5                                      str r3, [r4, #0x28]
007b1514  0f 00 96 e8                                      ldm r6, {r0, r1, r2, r3}
007b1518  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
007b151c  0d 00 a0 e1                                      mov r0, sp
007b1520  05 10 a0 e1                                      mov r1, r5
007b1524  06 20 a0 e1                                      mov r2, r6
007b1528  2d ff ff eb                                      bl #0x7b11e4
007b152c  0c 00 9d e8                                      ldm sp, {r2, r3}
007b1530  0d 00 a0 e1                                      mov r0, sp
007b1534  18 30 84 e5                                      str r3, [r4, #0x18]
007b1538  14 20 84 e5                                      str r2, [r4, #0x14]
007b153c  05 10 a0 e1                                      mov r1, r5
007b1540  08 20 86 e2                                      add r2, r6, #8
007b1544  26 ff ff eb                                      bl #0x7b11e4
007b1548  03 00 9d e8                                      ldm sp, {r0, r1}
007b154c  14 20 94 e5                                      ldr r2, [r4, #0x14]
007b1550  18 30 94 e5                                      ldr r3, [r4, #0x18]
007b1554  1c 00 84 e5                                      str r0, [r4, #0x1c]
007b1558  20 10 84 e5                                      str r1, [r4, #0x20]
007b155c  04 00 a0 e1                                      mov r0, r4
007b1560  24 20 84 e5                                      str r2, [r4, #0x24]
007b1564  28 30 84 e5                                      str r3, [r4, #0x28]
007b1568  6b ff ff eb                                      bl #0x7b131c
007b156c  0d 70 a0 e1                                      mov r7, sp
007b1570  04 00 a0 e1                                      mov r0, r4
007b1574  0c d0 8d e2                                      add sp, sp, #0xc
007b1578  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x007b2008, declared_size=200, range_size=200, mode=arm
; class-group: gameswf::grid_index_box<float, bool>
; alias: _ZN7gameswf14grid_index_boxIfbE3addERKNS_9index_boxIfEEb
; demangled: gameswf::grid_index_box<float, bool>::add(gameswf::index_box<float> const&, bool)
; decoder-mode: arm
007b2008  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007b200c  00 50 a0 e1                                      mov r5, r0
007b2010  14 d0 4d e2                                      sub sp, sp, #0x14
007b2014  01 70 a0 e1                                      mov r7, r1
007b2018  02 60 a0 e1                                      mov r6, r2
007b201c  0d 00 a0 e1                                      mov r0, sp
007b2020  01 20 a0 e1                                      mov r2, r1
007b2024  05 10 a0 e1                                      mov r1, r5
007b2028  a9 fc ff eb                                      bl #0x7b12d4
007b202c  00 10 a0 e3                                      mov r1, #0
007b2030  18 00 a0 e3                                      mov r0, #0x18
007b2034  db 82 fe eb                                      bl #0x752ba8
007b2038  00 c0 a0 e3                                      mov ip, #0
007b203c  14 c0 80 e5                                      str ip, [r0, #0x14]
007b2040  00 40 a0 e1                                      mov r4, r0
007b2044  0f 00 97 e8                                      ldm r7, {r0, r1, r2, r3}
007b2048  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
007b204c  10 60 c4 e5                                      strb r6, [r4, #0x10]
007b2050  14 30 95 e5                                      ldr r3, [r5, #0x14]
007b2054  10 90 95 e5                                      ldr sb, [r5, #0x10]
007b2058  99 03 09 e0                                      mul sb, sb, r3
007b205c  0c 00 59 e1                                      cmp sb, ip
007b2060  18 00 00 da                                      ble #0x7b20c8
007b2064  0c 70 a0 e1                                      mov r7, ip
007b2068  04 00 00 ea                                      b #0x7b2080
007b206c  0a 20 9b e7                                      ldr r2, [fp, sl]
007b2070  09 00 57 e1                                      cmp r7, sb
007b2074  03 41 82 e7                                      str r4, [r2, r3, lsl #2]
007b2078  04 80 86 e5                                      str r8, [r6, #4]
007b207c  11 00 00 0a                                      beq #0x7b20c8
007b2080  1c b0 95 e5                                      ldr fp, [r5, #0x1c]
007b2084  07 a2 a0 e1                                      lsl sl, r7, #4
007b2088  01 70 87 e2                                      add r7, r7, #1
007b208c  0a 60 8b e0                                      add r6, fp, sl
007b2090  04 30 96 e5                                      ldr r3, [r6, #4]
007b2094  08 20 96 e5                                      ldr r2, [r6, #8]
007b2098  01 80 83 e2                                      add r8, r3, #1
007b209c  02 00 58 e1                                      cmp r8, r2
007b20a0  f1 ff ff da                                      ble #0x7b206c
007b20a4  06 00 a0 e1                                      mov r0, r6
007b20a8  c8 10 88 e0                                      add r1, r8, r8, asr #1
007b20ac  b6 ff ff eb                                      bl #0x7b1f8c
007b20b0  04 30 96 e5                                      ldr r3, [r6, #4]
007b20b4  0a 20 9b e7                                      ldr r2, [fp, sl]
007b20b8  09 00 57 e1                                      cmp r7, sb
007b20bc  03 41 82 e7                                      str r4, [r2, r3, lsl #2]
007b20c0  04 80 86 e5                                      str r8, [r6, #4]
007b20c4  ed ff ff 1a                                      bne #0x7b2080
007b20c8  14 d0 8d e2                                      add sp, sp, #0x14
007b20cc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007b2238, declared_size=96, range_size=96, mode=arm
; class-group: gameswf::grid_index_box<float, bool>
; alias: _ZN7gameswf14grid_index_boxIfbED1Ev
; demangled: gameswf::grid_index_box<float, bool>::~grid_index_box()
; decoder-mode: arm
007b2238  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007b223c  1c 50 90 e5                                      ldr r5, [r0, #0x1c]
007b2240  00 70 a0 e1                                      mov r7, r0
007b2244  04 60 95 e5                                      ldr r6, [r5, #4]
007b2248  00 00 56 e3                                      cmp r6, #0
007b224c  0a 00 00 da                                      ble #0x7b227c
007b2250  00 40 a0 e3                                      mov r4, #0
007b2254  00 30 95 e5                                      ldr r3, [r5]
007b2258  00 10 a0 e3                                      mov r1, #0
007b225c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
007b2260  01 40 84 e2                                      add r4, r4, #1
007b2264  01 00 50 e1                                      cmp r0, r1
007b2268  00 00 00 0a                                      beq #0x7b2270
007b226c  31 82 fe eb                                      bl #0x752b38
007b2270  06 00 54 e1                                      cmp r4, r6
007b2274  f6 ff ff 1a                                      bne #0x7b2254
007b2278  1c 50 97 e5                                      ldr r5, [r7, #0x1c]
007b227c  14 30 97 e5                                      ldr r3, [r7, #0x14]
007b2280  10 10 97 e5                                      ldr r1, [r7, #0x10]
007b2284  05 00 a0 e1                                      mov r0, r5
007b2288  91 03 01 e0                                      mul r1, r1, r3
007b228c  c5 ff ff eb                                      bl #0x7b21a8
007b2290  07 00 a0 e1                                      mov r0, r7
007b2294  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
