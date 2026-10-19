; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007a13d4, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::as_matrix
; alias: _ZNK7gameswf9as_matrix2isEi
; demangled: gameswf::as_matrix::is(int) const
; decoder-mode: arm
007a13d4  1a 00 51 e3                                      cmp r1, #0x1a
007a13d8  01 00 a0 03                                      moveq r0, #1
007a13dc  1e ff 2f 01                                      bxeq lr
007a13e0  01 00 71 e2                                      rsbs r0, r1, #1
007a13e4  00 00 a0 33                                      movlo r0, #0
007a13e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007a1420, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_matrix
; alias: _ZN7gameswf9as_matrixD1Ev
; demangled: gameswf::as_matrix::~as_matrix()
; decoder-mode: arm
007a1420  24 30 9f e5                                      ldr r3, [pc, #0x24]
007a1424  24 20 9f e5                                      ldr r2, [pc, #0x24]
007a1428  10 40 2d e9                                      push {r4, lr}
007a142c  03 30 8f e0                                      add r3, pc, r3
007a1430  02 20 93 e7                                      ldr r2, [r3, r2]
007a1434  00 40 a0 e1                                      mov r4, r0
007a1438  08 20 82 e2                                      add r2, r2, #8
007a143c  00 20 80 e5                                      str r2, [r0]
007a1440  95 21 ff eb                                      bl #0x769a9c
007a1444  04 00 a0 e1                                      mov r0, r4
007a1448  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007a144c  64 36 1f 00 c0 44 00 00                          .byte 0x64, 0x36, 0x1f, 0x00, 0xc0, 0x44, 0x00, 0x00

; FUNCTION 0x007a1620, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::as_matrix
; alias: _ZN7gameswf9as_matrixD0Ev
; demangled: gameswf::as_matrix::~as_matrix()
; decoder-mode: arm
007a1620  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007a1624  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
007a1628  10 40 2d e9                                      push {r4, lr}
007a162c  03 30 8f e0                                      add r3, pc, r3
007a1630  02 20 93 e7                                      ldr r2, [r3, r2]
007a1634  00 40 a0 e1                                      mov r4, r0
007a1638  08 20 82 e2                                      add r2, r2, #8
007a163c  00 20 80 e5                                      str r2, [r0]
007a1640  15 21 ff eb                                      bl #0x769a9c
007a1644  04 00 a0 e1                                      mov r0, r4
007a1648  18 b3 ed eb                                      bl #0x30e2b0
007a164c  04 00 a0 e1                                      mov r0, r4
007a1650  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007a1654  64 34 1f 00 c0 44 00 00                          .byte 0x64, 0x34, 0x1f, 0x00, 0xc0, 0x44, 0x00, 0x00

; FUNCTION 0x007a179c, declared_size=956, range_size=956, mode=arm
; class-group: gameswf::as_matrix
; alias: _ZN7gameswf9as_matrixC1EPNS_6playerEPKNS_6matrixE
; demangled: gameswf::as_matrix::as_matrix(gameswf::player*, gameswf::matrix const*)
; decoder-mode: arm
007a179c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007a17a0  6c 53 9f e5                                      ldr r5, [pc, #0x36c]
007a17a4  6c 63 9f e5                                      ldr r6, [pc, #0x36c]
007a17a8  e8 d0 4d e2                                      sub sp, sp, #0xe8
007a17ac  05 50 8f e0                                      add r5, pc, r5
007a17b0  06 30 95 e7                                      ldr r3, [r5, r6]
007a17b4  00 40 a0 e1                                      mov r4, r0
007a17b8  02 70 a0 e1                                      mov r7, r2
007a17bc  00 30 93 e5                                      ldr r3, [r3]
007a17c0  e4 30 8d e5                                      str r3, [sp, #0xe4]
007a17c4  45 29 ff eb                                      bl #0x76bce0
007a17c8  4c 23 9f e5                                      ldr r2, [pc, #0x34c]
007a17cc  00 30 a0 e3                                      mov r3, #0
007a17d0  fe 15 a0 e3                                      mov r1, #0x3f800000
007a17d4  02 20 95 e7                                      ldr r2, [r5, r2]
007a17d8  04 c0 a0 e1                                      mov ip, r4
007a17dc  00 00 57 e3                                      cmp r7, #0
007a17e0  08 20 82 e2                                      add r2, r2, #8
007a17e4  38 20 8c e4                                      str r2, [ip], #0x38
007a17e8  4c 30 84 e5                                      str r3, [r4, #0x4c]
007a17ec  48 10 84 e5                                      str r1, [r4, #0x48]
007a17f0  3c 30 84 e5                                      str r3, [r4, #0x3c]
007a17f4  40 30 84 e5                                      str r3, [r4, #0x40]
007a17f8  44 30 84 e5                                      str r3, [r4, #0x44]
007a17fc  38 10 84 e5                                      str r1, [r4, #0x38]
007a1800  04 00 00 0a                                      beq #0x7a1818
007a1804  07 e0 a0 e1                                      mov lr, r7
007a1808  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
007a180c  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
007a1810  03 00 9e e8                                      ldm lr, {r0, r1}
007a1814  03 00 8c e8                                      stm ip, {r0, r1}
007a1818  00 13 9f e5                                      ldr r1, [pc, #0x300]
007a181c  d0 80 8d e2                                      add r8, sp, #0xd0
007a1820  08 00 a0 e1                                      mov r0, r8
007a1824  01 10 8f e0                                      add r1, pc, r1
007a1828  93 c8 f1 eb                                      bl #0x413a7c
007a182c  f0 22 9f e5                                      ldr r2, [pc, #0x2f0]
007a1830  4c 70 8d e2                                      add r7, sp, #0x4c
007a1834  00 30 a0 e3                                      mov r3, #0
007a1838  02 10 95 e7                                      ldr r1, [r5, r2]
007a183c  07 00 a0 e1                                      mov r0, r7
007a1840  4d 30 cd e5                                      strb r3, [sp, #0x4d]
007a1844  4c 30 cd e5                                      strb r3, [sp, #0x4c]
007a1848  94 d6 ff eb                                      bl #0x7972a0
007a184c  04 00 a0 e1                                      mov r0, r4
007a1850  08 10 a0 e1                                      mov r1, r8
007a1854  07 20 a0 e1                                      mov r2, r7
007a1858  bd 1c ff eb                                      bl #0x768b54
007a185c  07 00 a0 e1                                      mov r0, r7
007a1860  2f d6 ff eb                                      bl #0x797124
007a1864  d0 3d dd e1                                      ldrsb r3, [sp, #0xd0]
007a1868  01 00 73 e3                                      cmn r3, #1
007a186c  8b 00 00 0a                                      beq #0x7a1aa0
007a1870  b0 12 9f e5                                      ldr r1, [pc, #0x2b0]
007a1874  bc 80 8d e2                                      add r8, sp, #0xbc
007a1878  08 00 a0 e1                                      mov r0, r8
007a187c  01 10 8f e0                                      add r1, pc, r1
007a1880  7d c8 f1 eb                                      bl #0x413a7c
007a1884  a0 22 9f e5                                      ldr r2, [pc, #0x2a0]
007a1888  40 70 8d e2                                      add r7, sp, #0x40
007a188c  00 30 a0 e3                                      mov r3, #0
007a1890  02 10 95 e7                                      ldr r1, [r5, r2]
007a1894  07 00 a0 e1                                      mov r0, r7
007a1898  41 30 cd e5                                      strb r3, [sp, #0x41]
007a189c  40 30 cd e5                                      strb r3, [sp, #0x40]
007a18a0  7e d6 ff eb                                      bl #0x7972a0
007a18a4  04 00 a0 e1                                      mov r0, r4
007a18a8  08 10 a0 e1                                      mov r1, r8
007a18ac  07 20 a0 e1                                      mov r2, r7
007a18b0  a7 1c ff eb                                      bl #0x768b54
007a18b4  07 00 a0 e1                                      mov r0, r7
007a18b8  19 d6 ff eb                                      bl #0x797124
007a18bc  dc 3b dd e1                                      ldrsb r3, [sp, #0xbc]
007a18c0  01 00 73 e3                                      cmn r3, #1
007a18c4  79 00 00 0a                                      beq #0x7a1ab0
007a18c8  60 12 9f e5                                      ldr r1, [pc, #0x260]
007a18cc  a8 80 8d e2                                      add r8, sp, #0xa8
007a18d0  08 00 a0 e1                                      mov r0, r8
007a18d4  01 10 8f e0                                      add r1, pc, r1
007a18d8  67 c8 f1 eb                                      bl #0x413a7c
007a18dc  50 22 9f e5                                      ldr r2, [pc, #0x250]
007a18e0  34 70 8d e2                                      add r7, sp, #0x34
007a18e4  00 30 a0 e3                                      mov r3, #0
007a18e8  02 10 95 e7                                      ldr r1, [r5, r2]
007a18ec  07 00 a0 e1                                      mov r0, r7
007a18f0  35 30 cd e5                                      strb r3, [sp, #0x35]
007a18f4  34 30 cd e5                                      strb r3, [sp, #0x34]
007a18f8  68 d6 ff eb                                      bl #0x7972a0
007a18fc  04 00 a0 e1                                      mov r0, r4
007a1900  08 10 a0 e1                                      mov r1, r8
007a1904  07 20 a0 e1                                      mov r2, r7
007a1908  91 1c ff eb                                      bl #0x768b54
007a190c  07 00 a0 e1                                      mov r0, r7
007a1910  03 d6 ff eb                                      bl #0x797124
007a1914  d8 3a dd e1                                      ldrsb r3, [sp, #0xa8]
007a1918  01 00 73 e3                                      cmn r3, #1
007a191c  67 00 00 0a                                      beq #0x7a1ac0
007a1920  10 12 9f e5                                      ldr r1, [pc, #0x210]
007a1924  94 80 8d e2                                      add r8, sp, #0x94
007a1928  08 00 a0 e1                                      mov r0, r8
007a192c  01 10 8f e0                                      add r1, pc, r1
007a1930  51 c8 f1 eb                                      bl #0x413a7c
007a1934  00 22 9f e5                                      ldr r2, [pc, #0x200]
007a1938  28 70 8d e2                                      add r7, sp, #0x28
007a193c  00 30 a0 e3                                      mov r3, #0
007a1940  02 10 95 e7                                      ldr r1, [r5, r2]
007a1944  07 00 a0 e1                                      mov r0, r7
007a1948  29 30 cd e5                                      strb r3, [sp, #0x29]
007a194c  28 30 cd e5                                      strb r3, [sp, #0x28]
007a1950  52 d6 ff eb                                      bl #0x7972a0
007a1954  04 00 a0 e1                                      mov r0, r4
007a1958  08 10 a0 e1                                      mov r1, r8
007a195c  07 20 a0 e1                                      mov r2, r7
007a1960  7b 1c ff eb                                      bl #0x768b54
007a1964  07 00 a0 e1                                      mov r0, r7
007a1968  ed d5 ff eb                                      bl #0x797124
007a196c  d4 39 dd e1                                      ldrsb r3, [sp, #0x94]
007a1970  01 00 73 e3                                      cmn r3, #1
007a1974  55 00 00 0a                                      beq #0x7a1ad0
007a1978  c0 11 9f e5                                      ldr r1, [pc, #0x1c0]
007a197c  80 80 8d e2                                      add r8, sp, #0x80
007a1980  08 00 a0 e1                                      mov r0, r8
007a1984  01 10 8f e0                                      add r1, pc, r1
007a1988  3b c8 f1 eb                                      bl #0x413a7c
007a198c  b0 21 9f e5                                      ldr r2, [pc, #0x1b0]
007a1990  1c 70 8d e2                                      add r7, sp, #0x1c
007a1994  00 30 a0 e3                                      mov r3, #0
007a1998  02 10 95 e7                                      ldr r1, [r5, r2]
007a199c  07 00 a0 e1                                      mov r0, r7
007a19a0  1d 30 cd e5                                      strb r3, [sp, #0x1d]
007a19a4  1c 30 cd e5                                      strb r3, [sp, #0x1c]
007a19a8  3c d6 ff eb                                      bl #0x7972a0
007a19ac  04 00 a0 e1                                      mov r0, r4
007a19b0  08 10 a0 e1                                      mov r1, r8
007a19b4  07 20 a0 e1                                      mov r2, r7
007a19b8  65 1c ff eb                                      bl #0x768b54
007a19bc  07 00 a0 e1                                      mov r0, r7
007a19c0  d7 d5 ff eb                                      bl #0x797124
007a19c4  d0 38 dd e1                                      ldrsb r3, [sp, #0x80]
007a19c8  01 00 73 e3                                      cmn r3, #1
007a19cc  43 00 00 0a                                      beq #0x7a1ae0
007a19d0  70 11 9f e5                                      ldr r1, [pc, #0x170]
007a19d4  6c 80 8d e2                                      add r8, sp, #0x6c
007a19d8  08 00 a0 e1                                      mov r0, r8
007a19dc  01 10 8f e0                                      add r1, pc, r1
007a19e0  25 c8 f1 eb                                      bl #0x413a7c
007a19e4  60 21 9f e5                                      ldr r2, [pc, #0x160]
007a19e8  10 70 8d e2                                      add r7, sp, #0x10
007a19ec  00 30 a0 e3                                      mov r3, #0
007a19f0  02 10 95 e7                                      ldr r1, [r5, r2]
007a19f4  07 00 a0 e1                                      mov r0, r7
007a19f8  11 30 cd e5                                      strb r3, [sp, #0x11]
007a19fc  10 30 cd e5                                      strb r3, [sp, #0x10]
007a1a00  26 d6 ff eb                                      bl #0x7972a0
007a1a04  04 00 a0 e1                                      mov r0, r4
007a1a08  08 10 a0 e1                                      mov r1, r8
007a1a0c  07 20 a0 e1                                      mov r2, r7
007a1a10  4f 1c ff eb                                      bl #0x768b54
007a1a14  07 00 a0 e1                                      mov r0, r7
007a1a18  c1 d5 ff eb                                      bl #0x797124
007a1a1c  dc 36 dd e1                                      ldrsb r3, [sp, #0x6c]
007a1a20  01 00 73 e3                                      cmn r3, #1
007a1a24  31 00 00 0a                                      beq #0x7a1af0
007a1a28  20 11 9f e5                                      ldr r1, [pc, #0x120]
007a1a2c  58 80 8d e2                                      add r8, sp, #0x58
007a1a30  08 00 a0 e1                                      mov r0, r8
007a1a34  01 10 8f e0                                      add r1, pc, r1
007a1a38  0f c8 f1 eb                                      bl #0x413a7c
007a1a3c  10 21 9f e5                                      ldr r2, [pc, #0x110]
007a1a40  04 70 8d e2                                      add r7, sp, #4
007a1a44  00 30 a0 e3                                      mov r3, #0
007a1a48  02 10 95 e7                                      ldr r1, [r5, r2]
007a1a4c  07 00 a0 e1                                      mov r0, r7
007a1a50  05 30 cd e5                                      strb r3, [sp, #5]
007a1a54  04 30 cd e5                                      strb r3, [sp, #4]
007a1a58  10 d6 ff eb                                      bl #0x7972a0
007a1a5c  04 00 a0 e1                                      mov r0, r4
007a1a60  08 10 a0 e1                                      mov r1, r8
007a1a64  07 20 a0 e1                                      mov r2, r7
007a1a68  39 1c ff eb                                      bl #0x768b54
007a1a6c  07 00 a0 e1                                      mov r0, r7
007a1a70  ab d5 ff eb                                      bl #0x797124
007a1a74  d8 35 dd e1                                      ldrsb r3, [sp, #0x58]
007a1a78  01 00 73 e3                                      cmn r3, #1
007a1a7c  1f 00 00 0a                                      beq #0x7a1b00
007a1a80  06 30 95 e7                                      ldr r3, [r5, r6]
007a1a84  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
007a1a88  04 00 a0 e1                                      mov r0, r4
007a1a8c  00 30 93 e5                                      ldr r3, [r3]
007a1a90  03 00 52 e1                                      cmp r2, r3
007a1a94  1d 00 00 1a                                      bne #0x7a1b10
007a1a98  e8 d0 8d e2                                      add sp, sp, #0xe8
007a1a9c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007a1aa0  dc 00 9d e5                                      ldr r0, [sp, #0xdc]
007a1aa4  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
007a1aa8  22 c4 fe eb                                      bl #0x752b38
007a1aac  6f ff ff ea                                      b #0x7a1870
007a1ab0  c8 00 9d e5                                      ldr r0, [sp, #0xc8]
007a1ab4  c4 10 9d e5                                      ldr r1, [sp, #0xc4]
007a1ab8  1e c4 fe eb                                      bl #0x752b38
007a1abc  81 ff ff ea                                      b #0x7a18c8
007a1ac0  b4 00 9d e5                                      ldr r0, [sp, #0xb4]
007a1ac4  b0 10 9d e5                                      ldr r1, [sp, #0xb0]
007a1ac8  1a c4 fe eb                                      bl #0x752b38
007a1acc  93 ff ff ea                                      b #0x7a1920
007a1ad0  a0 00 9d e5                                      ldr r0, [sp, #0xa0]
007a1ad4  9c 10 9d e5                                      ldr r1, [sp, #0x9c]
007a1ad8  16 c4 fe eb                                      bl #0x752b38
007a1adc  a5 ff ff ea                                      b #0x7a1978
007a1ae0  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
007a1ae4  88 10 9d e5                                      ldr r1, [sp, #0x88]
007a1ae8  12 c4 fe eb                                      bl #0x752b38
007a1aec  b7 ff ff ea                                      b #0x7a19d0
007a1af0  78 00 9d e5                                      ldr r0, [sp, #0x78]
007a1af4  74 10 9d e5                                      ldr r1, [sp, #0x74]
007a1af8  0e c4 fe eb                                      bl #0x752b38
007a1afc  c9 ff ff ea                                      b #0x7a1a28
007a1b00  64 00 9d e5                                      ldr r0, [sp, #0x64]
007a1b04  60 10 9d e5                                      ldr r1, [sp, #0x60]
007a1b08  0a c4 fe eb                                      bl #0x752b38
007a1b0c  db ff ff ea                                      b #0x7a1a80
007a1b10  fe b1 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007a1b14  e4 32 1f 00 ac 40 00 00 c0 44 00 00 fc 8c 16 00  .byte 0xe4, 0x32, 0x1f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc0, 0x44, 0x00, 0x00, 0xfc, 0x8c, 0x16, 0x00
007a1b24  88 37 00 00 b4 8c 16 00 00 14 00 00 ac 38 14 00  .byte 0x88, 0x37, 0x00, 0x00, 0xb4, 0x8c, 0x16, 0x00, 0x00, 0x14, 0x00, 0x00, 0xac, 0x38, 0x14, 0x00
007a1b34  a4 34 00 00 14 7a 16 00 c4 0c 00 00 b4 8b 16 00  .byte 0xa4, 0x34, 0x00, 0x00, 0x14, 0x7a, 0x16, 0x00, 0xc4, 0x0c, 0x00, 0x00, 0xb4, 0x8b, 0x16, 0x00
007a1b44  98 11 00 00 64 8b 16 00 54 47 00 00 14 8b 16 00  .byte 0x98, 0x11, 0x00, 0x00, 0x64, 0x8b, 0x16, 0x00, 0x54, 0x47, 0x00, 0x00, 0x14, 0x8b, 0x16, 0x00
007a1b54  38 12 00 00                                      .byte 0x38, 0x12, 0x00, 0x00

; FUNCTION 0x007a1ea0, declared_size=956, range_size=956, mode=arm
; class-group: gameswf::as_matrix
; alias: _ZN7gameswf9as_matrixC2EPNS_6playerEPKNS_6matrixE
; demangled: gameswf::as_matrix::as_matrix(gameswf::player*, gameswf::matrix const*)
; decoder-mode: arm
007a1ea0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007a1ea4  6c 53 9f e5                                      ldr r5, [pc, #0x36c]
007a1ea8  6c 63 9f e5                                      ldr r6, [pc, #0x36c]
007a1eac  e8 d0 4d e2                                      sub sp, sp, #0xe8
007a1eb0  05 50 8f e0                                      add r5, pc, r5
007a1eb4  06 30 95 e7                                      ldr r3, [r5, r6]
007a1eb8  00 40 a0 e1                                      mov r4, r0
007a1ebc  02 70 a0 e1                                      mov r7, r2
007a1ec0  00 30 93 e5                                      ldr r3, [r3]
007a1ec4  e4 30 8d e5                                      str r3, [sp, #0xe4]
007a1ec8  84 27 ff eb                                      bl #0x76bce0
007a1ecc  4c 23 9f e5                                      ldr r2, [pc, #0x34c]
007a1ed0  00 30 a0 e3                                      mov r3, #0
007a1ed4  fe 15 a0 e3                                      mov r1, #0x3f800000
007a1ed8  02 20 95 e7                                      ldr r2, [r5, r2]
007a1edc  04 c0 a0 e1                                      mov ip, r4
007a1ee0  00 00 57 e3                                      cmp r7, #0
007a1ee4  08 20 82 e2                                      add r2, r2, #8
007a1ee8  38 20 8c e4                                      str r2, [ip], #0x38
007a1eec  4c 30 84 e5                                      str r3, [r4, #0x4c]
007a1ef0  48 10 84 e5                                      str r1, [r4, #0x48]
007a1ef4  3c 30 84 e5                                      str r3, [r4, #0x3c]
007a1ef8  40 30 84 e5                                      str r3, [r4, #0x40]
007a1efc  44 30 84 e5                                      str r3, [r4, #0x44]
007a1f00  38 10 84 e5                                      str r1, [r4, #0x38]
007a1f04  04 00 00 0a                                      beq #0x7a1f1c
007a1f08  07 e0 a0 e1                                      mov lr, r7
007a1f0c  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
007a1f10  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
007a1f14  03 00 9e e8                                      ldm lr, {r0, r1}
007a1f18  03 00 8c e8                                      stm ip, {r0, r1}
007a1f1c  00 13 9f e5                                      ldr r1, [pc, #0x300]
007a1f20  d0 80 8d e2                                      add r8, sp, #0xd0
007a1f24  08 00 a0 e1                                      mov r0, r8
007a1f28  01 10 8f e0                                      add r1, pc, r1
007a1f2c  d2 c6 f1 eb                                      bl #0x413a7c
007a1f30  f0 22 9f e5                                      ldr r2, [pc, #0x2f0]
007a1f34  4c 70 8d e2                                      add r7, sp, #0x4c
007a1f38  00 30 a0 e3                                      mov r3, #0
007a1f3c  02 10 95 e7                                      ldr r1, [r5, r2]
007a1f40  07 00 a0 e1                                      mov r0, r7
007a1f44  4d 30 cd e5                                      strb r3, [sp, #0x4d]
007a1f48  4c 30 cd e5                                      strb r3, [sp, #0x4c]
007a1f4c  d3 d4 ff eb                                      bl #0x7972a0
007a1f50  04 00 a0 e1                                      mov r0, r4
007a1f54  08 10 a0 e1                                      mov r1, r8
007a1f58  07 20 a0 e1                                      mov r2, r7
007a1f5c  fc 1a ff eb                                      bl #0x768b54
007a1f60  07 00 a0 e1                                      mov r0, r7
007a1f64  6e d4 ff eb                                      bl #0x797124
007a1f68  d0 3d dd e1                                      ldrsb r3, [sp, #0xd0]
007a1f6c  01 00 73 e3                                      cmn r3, #1
007a1f70  8b 00 00 0a                                      beq #0x7a21a4
007a1f74  b0 12 9f e5                                      ldr r1, [pc, #0x2b0]
007a1f78  bc 80 8d e2                                      add r8, sp, #0xbc
007a1f7c  08 00 a0 e1                                      mov r0, r8
007a1f80  01 10 8f e0                                      add r1, pc, r1
007a1f84  bc c6 f1 eb                                      bl #0x413a7c
007a1f88  a0 22 9f e5                                      ldr r2, [pc, #0x2a0]
007a1f8c  40 70 8d e2                                      add r7, sp, #0x40
007a1f90  00 30 a0 e3                                      mov r3, #0
007a1f94  02 10 95 e7                                      ldr r1, [r5, r2]
007a1f98  07 00 a0 e1                                      mov r0, r7
007a1f9c  41 30 cd e5                                      strb r3, [sp, #0x41]
007a1fa0  40 30 cd e5                                      strb r3, [sp, #0x40]
007a1fa4  bd d4 ff eb                                      bl #0x7972a0
007a1fa8  04 00 a0 e1                                      mov r0, r4
007a1fac  08 10 a0 e1                                      mov r1, r8
007a1fb0  07 20 a0 e1                                      mov r2, r7
007a1fb4  e6 1a ff eb                                      bl #0x768b54
007a1fb8  07 00 a0 e1                                      mov r0, r7
007a1fbc  58 d4 ff eb                                      bl #0x797124
007a1fc0  dc 3b dd e1                                      ldrsb r3, [sp, #0xbc]
007a1fc4  01 00 73 e3                                      cmn r3, #1
007a1fc8  79 00 00 0a                                      beq #0x7a21b4
007a1fcc  60 12 9f e5                                      ldr r1, [pc, #0x260]
007a1fd0  a8 80 8d e2                                      add r8, sp, #0xa8
007a1fd4  08 00 a0 e1                                      mov r0, r8
007a1fd8  01 10 8f e0                                      add r1, pc, r1
007a1fdc  a6 c6 f1 eb                                      bl #0x413a7c
007a1fe0  50 22 9f e5                                      ldr r2, [pc, #0x250]
007a1fe4  34 70 8d e2                                      add r7, sp, #0x34
007a1fe8  00 30 a0 e3                                      mov r3, #0
007a1fec  02 10 95 e7                                      ldr r1, [r5, r2]
007a1ff0  07 00 a0 e1                                      mov r0, r7
007a1ff4  35 30 cd e5                                      strb r3, [sp, #0x35]
007a1ff8  34 30 cd e5                                      strb r3, [sp, #0x34]
007a1ffc  a7 d4 ff eb                                      bl #0x7972a0
007a2000  04 00 a0 e1                                      mov r0, r4
007a2004  08 10 a0 e1                                      mov r1, r8
007a2008  07 20 a0 e1                                      mov r2, r7
007a200c  d0 1a ff eb                                      bl #0x768b54
007a2010  07 00 a0 e1                                      mov r0, r7
007a2014  42 d4 ff eb                                      bl #0x797124
007a2018  d8 3a dd e1                                      ldrsb r3, [sp, #0xa8]
007a201c  01 00 73 e3                                      cmn r3, #1
007a2020  67 00 00 0a                                      beq #0x7a21c4
007a2024  10 12 9f e5                                      ldr r1, [pc, #0x210]
007a2028  94 80 8d e2                                      add r8, sp, #0x94
007a202c  08 00 a0 e1                                      mov r0, r8
007a2030  01 10 8f e0                                      add r1, pc, r1
007a2034  90 c6 f1 eb                                      bl #0x413a7c
007a2038  00 22 9f e5                                      ldr r2, [pc, #0x200]
007a203c  28 70 8d e2                                      add r7, sp, #0x28
007a2040  00 30 a0 e3                                      mov r3, #0
007a2044  02 10 95 e7                                      ldr r1, [r5, r2]
007a2048  07 00 a0 e1                                      mov r0, r7
007a204c  29 30 cd e5                                      strb r3, [sp, #0x29]
007a2050  28 30 cd e5                                      strb r3, [sp, #0x28]
007a2054  91 d4 ff eb                                      bl #0x7972a0
007a2058  04 00 a0 e1                                      mov r0, r4
007a205c  08 10 a0 e1                                      mov r1, r8
007a2060  07 20 a0 e1                                      mov r2, r7
007a2064  ba 1a ff eb                                      bl #0x768b54
007a2068  07 00 a0 e1                                      mov r0, r7
007a206c  2c d4 ff eb                                      bl #0x797124
007a2070  d4 39 dd e1                                      ldrsb r3, [sp, #0x94]
007a2074  01 00 73 e3                                      cmn r3, #1
007a2078  55 00 00 0a                                      beq #0x7a21d4
007a207c  c0 11 9f e5                                      ldr r1, [pc, #0x1c0]
007a2080  80 80 8d e2                                      add r8, sp, #0x80
007a2084  08 00 a0 e1                                      mov r0, r8
007a2088  01 10 8f e0                                      add r1, pc, r1
007a208c  7a c6 f1 eb                                      bl #0x413a7c
007a2090  b0 21 9f e5                                      ldr r2, [pc, #0x1b0]
007a2094  1c 70 8d e2                                      add r7, sp, #0x1c
007a2098  00 30 a0 e3                                      mov r3, #0
007a209c  02 10 95 e7                                      ldr r1, [r5, r2]
007a20a0  07 00 a0 e1                                      mov r0, r7
007a20a4  1d 30 cd e5                                      strb r3, [sp, #0x1d]
007a20a8  1c 30 cd e5                                      strb r3, [sp, #0x1c]
007a20ac  7b d4 ff eb                                      bl #0x7972a0
007a20b0  04 00 a0 e1                                      mov r0, r4
007a20b4  08 10 a0 e1                                      mov r1, r8
007a20b8  07 20 a0 e1                                      mov r2, r7
007a20bc  a4 1a ff eb                                      bl #0x768b54
007a20c0  07 00 a0 e1                                      mov r0, r7
007a20c4  16 d4 ff eb                                      bl #0x797124
007a20c8  d0 38 dd e1                                      ldrsb r3, [sp, #0x80]
007a20cc  01 00 73 e3                                      cmn r3, #1
007a20d0  43 00 00 0a                                      beq #0x7a21e4
007a20d4  70 11 9f e5                                      ldr r1, [pc, #0x170]
007a20d8  6c 80 8d e2                                      add r8, sp, #0x6c
007a20dc  08 00 a0 e1                                      mov r0, r8
007a20e0  01 10 8f e0                                      add r1, pc, r1
007a20e4  64 c6 f1 eb                                      bl #0x413a7c
007a20e8  60 21 9f e5                                      ldr r2, [pc, #0x160]
007a20ec  10 70 8d e2                                      add r7, sp, #0x10
007a20f0  00 30 a0 e3                                      mov r3, #0
007a20f4  02 10 95 e7                                      ldr r1, [r5, r2]
007a20f8  07 00 a0 e1                                      mov r0, r7
007a20fc  11 30 cd e5                                      strb r3, [sp, #0x11]
007a2100  10 30 cd e5                                      strb r3, [sp, #0x10]
007a2104  65 d4 ff eb                                      bl #0x7972a0
007a2108  04 00 a0 e1                                      mov r0, r4
007a210c  08 10 a0 e1                                      mov r1, r8
007a2110  07 20 a0 e1                                      mov r2, r7
007a2114  8e 1a ff eb                                      bl #0x768b54
007a2118  07 00 a0 e1                                      mov r0, r7
007a211c  00 d4 ff eb                                      bl #0x797124
007a2120  dc 36 dd e1                                      ldrsb r3, [sp, #0x6c]
007a2124  01 00 73 e3                                      cmn r3, #1
007a2128  31 00 00 0a                                      beq #0x7a21f4
007a212c  20 11 9f e5                                      ldr r1, [pc, #0x120]
007a2130  58 80 8d e2                                      add r8, sp, #0x58
007a2134  08 00 a0 e1                                      mov r0, r8
007a2138  01 10 8f e0                                      add r1, pc, r1
007a213c  4e c6 f1 eb                                      bl #0x413a7c
007a2140  10 21 9f e5                                      ldr r2, [pc, #0x110]
007a2144  04 70 8d e2                                      add r7, sp, #4
007a2148  00 30 a0 e3                                      mov r3, #0
007a214c  02 10 95 e7                                      ldr r1, [r5, r2]
007a2150  07 00 a0 e1                                      mov r0, r7
007a2154  05 30 cd e5                                      strb r3, [sp, #5]
007a2158  04 30 cd e5                                      strb r3, [sp, #4]
007a215c  4f d4 ff eb                                      bl #0x7972a0
007a2160  04 00 a0 e1                                      mov r0, r4
007a2164  08 10 a0 e1                                      mov r1, r8
007a2168  07 20 a0 e1                                      mov r2, r7
007a216c  78 1a ff eb                                      bl #0x768b54
007a2170  07 00 a0 e1                                      mov r0, r7
007a2174  ea d3 ff eb                                      bl #0x797124
007a2178  d8 35 dd e1                                      ldrsb r3, [sp, #0x58]
007a217c  01 00 73 e3                                      cmn r3, #1
007a2180  1f 00 00 0a                                      beq #0x7a2204
007a2184  06 30 95 e7                                      ldr r3, [r5, r6]
007a2188  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
007a218c  04 00 a0 e1                                      mov r0, r4
007a2190  00 30 93 e5                                      ldr r3, [r3]
007a2194  03 00 52 e1                                      cmp r2, r3
007a2198  1d 00 00 1a                                      bne #0x7a2214
007a219c  e8 d0 8d e2                                      add sp, sp, #0xe8
007a21a0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007a21a4  dc 00 9d e5                                      ldr r0, [sp, #0xdc]
007a21a8  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
007a21ac  61 c2 fe eb                                      bl #0x752b38
007a21b0  6f ff ff ea                                      b #0x7a1f74
007a21b4  c8 00 9d e5                                      ldr r0, [sp, #0xc8]
007a21b8  c4 10 9d e5                                      ldr r1, [sp, #0xc4]
007a21bc  5d c2 fe eb                                      bl #0x752b38
007a21c0  81 ff ff ea                                      b #0x7a1fcc
007a21c4  b4 00 9d e5                                      ldr r0, [sp, #0xb4]
007a21c8  b0 10 9d e5                                      ldr r1, [sp, #0xb0]
007a21cc  59 c2 fe eb                                      bl #0x752b38
007a21d0  93 ff ff ea                                      b #0x7a2024
007a21d4  a0 00 9d e5                                      ldr r0, [sp, #0xa0]
007a21d8  9c 10 9d e5                                      ldr r1, [sp, #0x9c]
007a21dc  55 c2 fe eb                                      bl #0x752b38
007a21e0  a5 ff ff ea                                      b #0x7a207c
007a21e4  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
007a21e8  88 10 9d e5                                      ldr r1, [sp, #0x88]
007a21ec  51 c2 fe eb                                      bl #0x752b38
007a21f0  b7 ff ff ea                                      b #0x7a20d4
007a21f4  78 00 9d e5                                      ldr r0, [sp, #0x78]
007a21f8  74 10 9d e5                                      ldr r1, [sp, #0x74]
007a21fc  4d c2 fe eb                                      bl #0x752b38
007a2200  c9 ff ff ea                                      b #0x7a212c
007a2204  64 00 9d e5                                      ldr r0, [sp, #0x64]
007a2208  60 10 9d e5                                      ldr r1, [sp, #0x60]
007a220c  49 c2 fe eb                                      bl #0x752b38
007a2210  db ff ff ea                                      b #0x7a2184
007a2214  3d b0 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007a2218  e0 2b 1f 00 ac 40 00 00 c0 44 00 00 f8 85 16 00  .byte 0xe0, 0x2b, 0x1f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc0, 0x44, 0x00, 0x00, 0xf8, 0x85, 0x16, 0x00
007a2228  88 37 00 00 b0 85 16 00 00 14 00 00 a8 31 14 00  .byte 0x88, 0x37, 0x00, 0x00, 0xb0, 0x85, 0x16, 0x00, 0x00, 0x14, 0x00, 0x00, 0xa8, 0x31, 0x14, 0x00
007a2238  a4 34 00 00 10 73 16 00 c4 0c 00 00 b0 84 16 00  .byte 0xa4, 0x34, 0x00, 0x00, 0x10, 0x73, 0x16, 0x00, 0xc4, 0x0c, 0x00, 0x00, 0xb0, 0x84, 0x16, 0x00
007a2248  98 11 00 00 60 84 16 00 54 47 00 00 10 84 16 00  .byte 0x98, 0x11, 0x00, 0x00, 0x60, 0x84, 0x16, 0x00, 0x54, 0x47, 0x00, 0x00, 0x10, 0x84, 0x16, 0x00
007a2258  38 12 00 00                                      .byte 0x38, 0x12, 0x00, 0x00
