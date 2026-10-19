; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007e1644, declared_size=4, range_size=4, mode=arm
; class-group: b2Body
; alias: _ZN6b2BodyD2Ev
; demangled: b2Body::~b2Body()
; decoder-mode: arm
007e1644  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e1648, declared_size=4, range_size=4, mode=arm
; class-group: b2Body
; alias: _ZN6b2BodyD1Ev
; demangled: b2Body::~b2Body()
; decoder-mode: arm
007e1648  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e164c, declared_size=460, range_size=460, mode=arm
; class-group: b2Body
; alias: _ZN6b2Body8SetXFormERK6b2Vec2f
; demangled: b2Body::SetXForm(b2Vec2 const&, float)
; decoder-mode: arm
007e164c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
007e1650  58 80 90 e5                                      ldr r8, [r0, #0x58]
007e1654  19 3a a0 e3                                      mov r3, #0x19000
007e1658  75 3f 83 e2                                      add r3, r3, #0x1d4
007e165c  03 30 d8 e7                                      ldrb r3, [r8, r3]
007e1660  00 40 a0 e1                                      mov r4, r0
007e1664  01 50 a0 e1                                      mov r5, r1
007e1668  00 00 53 e3                                      cmp r3, #0
007e166c  02 60 a0 e1                                      mov r6, r2
007e1670  09 00 00 1a                                      bne #0x7e169c
007e1674  b0 30 d0 e1                                      ldrh r3, [r0]
007e1678  02 00 13 e3                                      tst r3, #2
007e167c  08 00 00 0a                                      beq #0x7e16a4
007e1680  00 00 a0 e3                                      mov r0, #0
007e1684  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
007e1688  58 80 94 e5                                      ldr r8, [r4, #0x58]
007e168c  19 3a a0 e3                                      mov r3, #0x19000
007e1690  76 3f 83 e2                                      add r3, r3, #0x1d8
007e1694  03 00 98 e7                                      ldr r0, [r8, r3]
007e1698  0a 05 00 eb                                      bl #0x7e2ac8
007e169c  01 00 a0 e3                                      mov r0, #1
007e16a0  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
007e16a4  02 00 a0 e1                                      mov r0, r2
007e16a8  29 b4 ec eb                                      bl #0x30e754
007e16ac  00 70 a0 e1                                      mov r7, r0
007e16b0  06 00 a0 e1                                      mov r0, r6
007e16b4  13 b5 ec eb                                      bl #0x30eb08
007e16b8  02 21 80 e2                                      add r2, r0, #0x80000000
007e16bc  14 20 84 e5                                      str r2, [r4, #0x14]
007e16c0  0c 70 84 e5                                      str r7, [r4, #0xc]
007e16c4  10 00 84 e5                                      str r0, [r4, #0x10]
007e16c8  18 70 84 e5                                      str r7, [r4, #0x18]
007e16cc  00 30 95 e5                                      ldr r3, [r5]
007e16d0  1c 90 94 e5                                      ldr sb, [r4, #0x1c]
007e16d4  00 a0 a0 e1                                      mov sl, r0
007e16d8  04 30 84 e5                                      str r3, [r4, #4]
007e16dc  04 30 95 e5                                      ldr r3, [r5, #4]
007e16e0  07 10 a0 e1                                      mov r1, r7
007e16e4  09 00 a0 e1                                      mov r0, sb
007e16e8  08 30 84 e5                                      str r3, [r4, #8]
007e16ec  02 b0 a0 e1                                      mov fp, r2
007e16f0  9d b5 ec eb                                      bl #0x30ed6c
007e16f4  0b 10 a0 e1                                      mov r1, fp
007e16f8  00 50 a0 e1                                      mov r5, r0
007e16fc  20 00 94 e5                                      ldr r0, [r4, #0x20]
007e1700  99 b5 ec eb                                      bl #0x30ed6c
007e1704  00 10 a0 e1                                      mov r1, r0
007e1708  05 00 a0 e1                                      mov r0, r5
007e170c  24 b5 ec eb                                      bl #0x30eba4
007e1710  0a 10 a0 e1                                      mov r1, sl
007e1714  00 50 a0 e1                                      mov r5, r0
007e1718  09 00 a0 e1                                      mov r0, sb
007e171c  92 b5 ec eb                                      bl #0x30ed6c
007e1720  07 10 a0 e1                                      mov r1, r7
007e1724  00 a0 a0 e1                                      mov sl, r0
007e1728  20 00 94 e5                                      ldr r0, [r4, #0x20]
007e172c  8e b5 ec eb                                      bl #0x30ed6c
007e1730  00 10 a0 e1                                      mov r1, r0
007e1734  0a 00 a0 e1                                      mov r0, sl
007e1738  19 b5 ec eb                                      bl #0x30eba4
007e173c  04 10 94 e5                                      ldr r1, [r4, #4]
007e1740  00 70 a0 e1                                      mov r7, r0
007e1744  05 00 a0 e1                                      mov r0, r5
007e1748  15 b5 ec eb                                      bl #0x30eba4
007e174c  08 10 94 e5                                      ldr r1, [r4, #8]
007e1750  00 50 a0 e1                                      mov r5, r0
007e1754  07 00 a0 e1                                      mov r0, r7
007e1758  11 b5 ec eb                                      bl #0x30eba4
007e175c  2c 50 84 e5                                      str r5, [r4, #0x2c]
007e1760  30 00 84 e5                                      str r0, [r4, #0x30]
007e1764  64 50 94 e5                                      ldr r5, [r4, #0x64]
007e1768  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
007e176c  30 30 94 e5                                      ldr r3, [r4, #0x30]
007e1770  00 00 55 e3                                      cmp r5, #0
007e1774  24 20 84 e5                                      str r2, [r4, #0x24]
007e1778  28 30 84 e5                                      str r3, [r4, #0x28]
007e177c  34 60 84 e5                                      str r6, [r4, #0x34]
007e1780  38 60 84 e5                                      str r6, [r4, #0x38]
007e1784  c0 ff ff 0a                                      beq #0x7e168c
007e1788  19 7a a0 e3                                      mov r7, #0x19000
007e178c  76 7f 87 e2                                      add r7, r7, #0x1d8
007e1790  04 60 84 e2                                      add r6, r4, #4
007e1794  03 00 00 ea                                      b #0x7e17a8
007e1798  08 50 95 e5                                      ldr r5, [r5, #8]
007e179c  00 00 55 e3                                      cmp r5, #0
007e17a0  b8 ff ff 0a                                      beq #0x7e1688
007e17a4  58 80 94 e5                                      ldr r8, [r4, #0x58]
007e17a8  07 10 98 e7                                      ldr r1, [r8, r7]
007e17ac  05 00 a0 e1                                      mov r0, r5
007e17b0  06 20 a0 e1                                      mov r2, r6
007e17b4  06 30 a0 e1                                      mov r3, r6
007e17b8  04 13 00 eb                                      bl #0x7e63d0
007e17bc  00 00 50 e3                                      cmp r0, #0
007e17c0  f4 ff ff 1a                                      bne #0x7e1798
007e17c4  b0 20 d4 e1                                      ldrh r2, [r4]
007e17c8  64 50 94 e5                                      ldr r5, [r4, #0x64]
007e17cc  00 30 a0 e3                                      mov r3, #0
007e17d0  02 20 82 e3                                      orr r2, r2, #2
007e17d4  00 00 55 e3                                      cmp r5, #0
007e17d8  b0 20 c4 e1                                      strh r2, [r4]
007e17dc  48 30 84 e5                                      str r3, [r4, #0x48]
007e17e0  40 30 84 e5                                      str r3, [r4, #0x40]
007e17e4  44 30 84 e5                                      str r3, [r4, #0x44]
007e17e8  a4 ff ff 0a                                      beq #0x7e1680
007e17ec  19 6a a0 e3                                      mov r6, #0x19000
007e17f0  76 6f 86 e2                                      add r6, r6, #0x1d8
007e17f4  58 30 94 e5                                      ldr r3, [r4, #0x58]
007e17f8  05 00 a0 e1                                      mov r0, r5
007e17fc  06 10 93 e7                                      ldr r1, [r3, r6]
007e1800  5e 12 00 eb                                      bl #0x7e6180
007e1804  08 50 95 e5                                      ldr r5, [r5, #8]
007e1808  00 00 55 e3                                      cmp r5, #0
007e180c  f8 ff ff 1a                                      bne #0x7e17f4
007e1810  00 00 a0 e3                                      mov r0, #0
007e1814  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007e1818, declared_size=784, range_size=784, mode=arm
; class-group: b2Body
; alias: _ZN6b2Body17SetMassFromShapesEv
; demangled: b2Body::SetMassFromShapes()
; decoder-mode: arm
007e1818  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007e181c  58 20 90 e5                                      ldr r2, [r0, #0x58]
007e1820  19 3a a0 e3                                      mov r3, #0x19000
007e1824  75 3f 83 e2                                      add r3, r3, #0x1d4
007e1828  03 20 d2 e7                                      ldrb r2, [r2, r3]
007e182c  ec 32 9f e5                                      ldr r3, [pc, #0x2ec]
007e1830  10 d0 4d e2                                      sub sp, sp, #0x10
007e1834  00 00 52 e3                                      cmp r2, #0
007e1838  00 40 a0 e1                                      mov r4, r0
007e183c  03 30 8f e0                                      add r3, pc, r3
007e1840  98 00 00 1a                                      bne #0x7e1aa8
007e1844  d8 12 9f e5                                      ldr r1, [pc, #0x2d8]
007e1848  64 50 90 e5                                      ldr r5, [r0, #0x64]
007e184c  00 20 a0 e3                                      mov r2, #0
007e1850  01 30 93 e7                                      ldr r3, [r3, r1]
007e1854  80 20 80 e5                                      str r2, [r0, #0x80]
007e1858  74 20 80 e5                                      str r2, [r0, #0x74]
007e185c  78 20 80 e5                                      str r2, [r0, #0x78]
007e1860  7c 20 80 e5                                      str r2, [r0, #0x7c]
007e1864  00 00 55 e3                                      cmp r5, #0
007e1868  00 80 93 e5                                      ldr r8, [r3]
007e186c  04 70 93 e5                                      ldr r7, [r3, #4]
007e1870  05 60 a0 e1                                      mov r6, r5
007e1874  33 00 00 0a                                      beq #0x7e1948
007e1878  0d 90 a0 e1                                      mov sb, sp
007e187c  00 30 95 e5                                      ldr r3, [r5]
007e1880  05 00 a0 e1                                      mov r0, r5
007e1884  0d 10 a0 e1                                      mov r1, sp
007e1888  0f e0 a0 e1                                      mov lr, pc
007e188c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
007e1890  00 10 9d e5                                      ldr r1, [sp]
007e1894  74 00 94 e5                                      ldr r0, [r4, #0x74]
007e1898  c1 b4 ec eb                                      bl #0x30eba4
007e189c  00 60 9d e5                                      ldr r6, [sp]
007e18a0  74 00 84 e5                                      str r0, [r4, #0x74]
007e18a4  04 10 9d e5                                      ldr r1, [sp, #4]
007e18a8  00 a0 a0 e1                                      mov sl, r0
007e18ac  06 00 a0 e1                                      mov r0, r6
007e18b0  2d b5 ec eb                                      bl #0x30ed6c
007e18b4  00 10 a0 e1                                      mov r1, r0
007e18b8  08 00 a0 e1                                      mov r0, r8
007e18bc  b8 b4 ec eb                                      bl #0x30eba4
007e18c0  08 10 9d e5                                      ldr r1, [sp, #8]
007e18c4  00 80 a0 e1                                      mov r8, r0
007e18c8  06 00 a0 e1                                      mov r0, r6
007e18cc  26 b5 ec eb                                      bl #0x30ed6c
007e18d0  00 10 a0 e1                                      mov r1, r0
007e18d4  07 00 a0 e1                                      mov r0, r7
007e18d8  b1 b4 ec eb                                      bl #0x30eba4
007e18dc  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007e18e0  00 70 a0 e1                                      mov r7, r0
007e18e4  7c 00 94 e5                                      ldr r0, [r4, #0x7c]
007e18e8  ad b4 ec eb                                      bl #0x30eba4
007e18ec  7c 00 84 e5                                      str r0, [r4, #0x7c]
007e18f0  08 50 95 e5                                      ldr r5, [r5, #8]
007e18f4  00 00 55 e3                                      cmp r5, #0
007e18f8  df ff ff 1a                                      bne #0x7e187c
007e18fc  0a 00 a0 e1                                      mov r0, sl
007e1900  00 10 a0 e3                                      mov r1, #0
007e1904  7b b2 ec eb                                      bl #0x30e2f8
007e1908  00 00 50 e3                                      cmp r0, #0
007e190c  0c 00 00 0a                                      beq #0x7e1944
007e1910  0a 10 a0 e1                                      mov r1, sl
007e1914  fe 05 a0 e3                                      mov r0, #0x3f800000
007e1918  dd b4 ec eb                                      bl #0x30ec94
007e191c  00 50 a0 e1                                      mov r5, r0
007e1920  78 00 84 e5                                      str r0, [r4, #0x78]
007e1924  05 10 a0 e1                                      mov r1, r5
007e1928  08 00 a0 e1                                      mov r0, r8
007e192c  0e b5 ec eb                                      bl #0x30ed6c
007e1930  05 10 a0 e1                                      mov r1, r5
007e1934  00 80 a0 e1                                      mov r8, r0
007e1938  07 00 a0 e1                                      mov r0, r7
007e193c  0a b5 ec eb                                      bl #0x30ed6c
007e1940  00 70 a0 e1                                      mov r7, r0
007e1944  64 60 94 e5                                      ldr r6, [r4, #0x64]
007e1948  7c 50 94 e5                                      ldr r5, [r4, #0x7c]
007e194c  00 10 a0 e3                                      mov r1, #0
007e1950  05 00 a0 e1                                      mov r0, r5
007e1954  67 b2 ec eb                                      bl #0x30e2f8
007e1958  00 00 50 e3                                      cmp r0, #0
007e195c  53 00 00 1a                                      bne #0x7e1ab0
007e1960  00 30 a0 e3                                      mov r3, #0
007e1964  80 30 84 e5                                      str r3, [r4, #0x80]
007e1968  7c 30 84 e5                                      str r3, [r4, #0x7c]
007e196c  20 70 84 e5                                      str r7, [r4, #0x20]
007e1970  1c 80 84 e5                                      str r8, [r4, #0x1c]
007e1974  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007e1978  08 00 a0 e1                                      mov r0, r8
007e197c  fa b4 ec eb                                      bl #0x30ed6c
007e1980  14 10 94 e5                                      ldr r1, [r4, #0x14]
007e1984  00 50 a0 e1                                      mov r5, r0
007e1988  07 00 a0 e1                                      mov r0, r7
007e198c  f6 b4 ec eb                                      bl #0x30ed6c
007e1990  00 10 a0 e1                                      mov r1, r0
007e1994  05 00 a0 e1                                      mov r0, r5
007e1998  81 b4 ec eb                                      bl #0x30eba4
007e199c  10 10 94 e5                                      ldr r1, [r4, #0x10]
007e19a0  00 50 a0 e1                                      mov r5, r0
007e19a4  08 00 a0 e1                                      mov r0, r8
007e19a8  ef b4 ec eb                                      bl #0x30ed6c
007e19ac  18 10 94 e5                                      ldr r1, [r4, #0x18]
007e19b0  00 80 a0 e1                                      mov r8, r0
007e19b4  07 00 a0 e1                                      mov r0, r7
007e19b8  eb b4 ec eb                                      bl #0x30ed6c
007e19bc  00 10 a0 e1                                      mov r1, r0
007e19c0  08 00 a0 e1                                      mov r0, r8
007e19c4  76 b4 ec eb                                      bl #0x30eba4
007e19c8  04 10 94 e5                                      ldr r1, [r4, #4]
007e19cc  00 70 a0 e1                                      mov r7, r0
007e19d0  05 00 a0 e1                                      mov r0, r5
007e19d4  72 b4 ec eb                                      bl #0x30eba4
007e19d8  08 10 94 e5                                      ldr r1, [r4, #8]
007e19dc  00 50 a0 e1                                      mov r5, r0
007e19e0  07 00 a0 e1                                      mov r0, r7
007e19e4  6e b4 ec eb                                      bl #0x30eba4
007e19e8  2c 50 84 e5                                      str r5, [r4, #0x2c]
007e19ec  30 00 84 e5                                      str r0, [r4, #0x30]
007e19f0  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
007e19f4  30 30 94 e5                                      ldr r3, [r4, #0x30]
007e19f8  00 50 56 e2                                      subs r5, r6, #0
007e19fc  24 20 84 e5                                      str r2, [r4, #0x24]
007e1a00  28 30 84 e5                                      str r3, [r4, #0x28]
007e1a04  08 00 00 0a                                      beq #0x7e1a2c
007e1a08  1c 60 84 e2                                      add r6, r4, #0x1c
007e1a0c  00 30 95 e5                                      ldr r3, [r5]
007e1a10  05 00 a0 e1                                      mov r0, r5
007e1a14  06 10 a0 e1                                      mov r1, r6
007e1a18  0f e0 a0 e1                                      mov lr, pc
007e1a1c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
007e1a20  08 50 95 e5                                      ldr r5, [r5, #8]
007e1a24  00 00 55 e3                                      cmp r5, #0
007e1a28  f7 ff ff 1a                                      bne #0x7e1a0c
007e1a2c  78 00 94 e5                                      ldr r0, [r4, #0x78]
007e1a30  00 10 a0 e3                                      mov r1, #0
007e1a34  54 b1 ec eb                                      bl #0x30df8c
007e1a38  00 00 50 e3                                      cmp r0, #0
007e1a3c  b2 50 d4 e1                                      ldrh r5, [r4, #2]
007e1a40  32 00 00 0a                                      beq #0x7e1b10
007e1a44  80 00 94 e5                                      ldr r0, [r4, #0x80]
007e1a48  00 10 a0 e3                                      mov r1, #0
007e1a4c  4e b1 ec eb                                      bl #0x30df8c
007e1a50  00 00 50 e3                                      cmp r0, #0
007e1a54  00 30 a0 13                                      movne r3, #0
007e1a58  b2 30 c4 11                                      strhne r3, [r4, #2]
007e1a5c  00 30 a0 13                                      movne r3, #0
007e1a60  2a 00 00 0a                                      beq #0x7e1b10
007e1a64  75 50 bf e6                                      sxth r5, r5
007e1a68  03 00 55 e1                                      cmp r5, r3
007e1a6c  0d 00 00 0a                                      beq #0x7e1aa8
007e1a70  64 50 94 e5                                      ldr r5, [r4, #0x64]
007e1a74  00 00 55 e3                                      cmp r5, #0
007e1a78  0a 00 00 0a                                      beq #0x7e1aa8
007e1a7c  19 6a a0 e3                                      mov r6, #0x19000
007e1a80  76 6f 86 e2                                      add r6, r6, #0x1d8
007e1a84  04 70 84 e2                                      add r7, r4, #4
007e1a88  58 30 94 e5                                      ldr r3, [r4, #0x58]
007e1a8c  05 00 a0 e1                                      mov r0, r5
007e1a90  07 20 a0 e1                                      mov r2, r7
007e1a94  06 10 93 e7                                      ldr r1, [r3, r6]
007e1a98  c4 11 00 eb                                      bl #0x7e61b0
007e1a9c  08 50 95 e5                                      ldr r5, [r5, #8]
007e1aa0  00 00 55 e3                                      cmp r5, #0
007e1aa4  f7 ff ff 1a                                      bne #0x7e1a88
007e1aa8  10 d0 8d e2                                      add sp, sp, #0x10
007e1aac  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007e1ab0  b0 30 d4 e1                                      ldrh r3, [r4]
007e1ab4  40 00 13 e3                                      tst r3, #0x40
007e1ab8  a8 ff ff 1a                                      bne #0x7e1960
007e1abc  08 10 a0 e1                                      mov r1, r8
007e1ac0  08 00 a0 e1                                      mov r0, r8
007e1ac4  a8 b4 ec eb                                      bl #0x30ed6c
007e1ac8  07 10 a0 e1                                      mov r1, r7
007e1acc  00 a0 a0 e1                                      mov sl, r0
007e1ad0  07 00 a0 e1                                      mov r0, r7
007e1ad4  a4 b4 ec eb                                      bl #0x30ed6c
007e1ad8  00 10 a0 e1                                      mov r1, r0
007e1adc  0a 00 a0 e1                                      mov r0, sl
007e1ae0  2f b4 ec eb                                      bl #0x30eba4
007e1ae4  74 10 94 e5                                      ldr r1, [r4, #0x74]
007e1ae8  9f b4 ec eb                                      bl #0x30ed6c
007e1aec  00 10 a0 e1                                      mov r1, r0
007e1af0  05 00 a0 e1                                      mov r0, r5
007e1af4  2c b2 ec eb                                      bl #0x30e3ac
007e1af8  00 10 a0 e1                                      mov r1, r0
007e1afc  7c 00 84 e5                                      str r0, [r4, #0x7c]
007e1b00  fe 05 a0 e3                                      mov r0, #0x3f800000
007e1b04  62 b4 ec eb                                      bl #0x30ec94
007e1b08  80 00 84 e5                                      str r0, [r4, #0x80]
007e1b0c  96 ff ff ea                                      b #0x7e196c
007e1b10  01 30 a0 e3                                      mov r3, #1
007e1b14  b2 30 c4 e1                                      strh r3, [r4, #2]
007e1b18  01 30 a0 e3                                      mov r3, #1
007e1b1c  d0 ff ff ea                                      b #0x7e1a64
; mapping-symbol data/literal pool
007e1b20  54 32 1b 00 40 09 00 00                          .byte 0x54, 0x32, 0x1b, 0x00, 0x40, 0x09, 0x00, 0x00

; FUNCTION 0x007e1b28, declared_size=508, range_size=508, mode=arm
; class-group: b2Body
; alias: _ZN6b2Body7SetMassEPK10b2MassData
; demangled: b2Body::SetMass(b2MassData const*)
; decoder-mode: arm
007e1b28  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007e1b2c  58 20 90 e5                                      ldr r2, [r0, #0x58]
007e1b30  19 3a a0 e3                                      mov r3, #0x19000
007e1b34  75 3f 83 e2                                      add r3, r3, #0x1d4
007e1b38  03 30 d2 e7                                      ldrb r3, [r2, r3]
007e1b3c  00 40 a0 e1                                      mov r4, r0
007e1b40  01 50 a0 e1                                      mov r5, r1
007e1b44  00 00 53 e3                                      cmp r3, #0
007e1b48  66 00 00 1a                                      bne #0x7e1ce8
007e1b4c  00 10 a0 e3                                      mov r1, #0
007e1b50  78 10 80 e5                                      str r1, [r0, #0x78]
007e1b54  7c 10 80 e5                                      str r1, [r0, #0x7c]
007e1b58  80 10 80 e5                                      str r1, [r0, #0x80]
007e1b5c  00 60 95 e5                                      ldr r6, [r5]
007e1b60  74 60 80 e5                                      str r6, [r0, #0x74]
007e1b64  06 00 a0 e1                                      mov r0, r6
007e1b68  e2 b1 ec eb                                      bl #0x30e2f8
007e1b6c  00 00 50 e3                                      cmp r0, #0
007e1b70  03 00 00 0a                                      beq #0x7e1b84
007e1b74  06 10 a0 e1                                      mov r1, r6
007e1b78  fe 05 a0 e3                                      mov r0, #0x3f800000
007e1b7c  44 b4 ec eb                                      bl #0x30ec94
007e1b80  78 00 84 e5                                      str r0, [r4, #0x78]
007e1b84  b0 30 d4 e1                                      ldrh r3, [r4]
007e1b88  00 10 a0 e3                                      mov r1, #0
007e1b8c  40 00 13 e3                                      tst r3, #0x40
007e1b90  0c 60 95 05                                      ldreq r6, [r5, #0xc]
007e1b94  7c 60 94 15                                      ldrne r6, [r4, #0x7c]
007e1b98  7c 60 84 05                                      streq r6, [r4, #0x7c]
007e1b9c  06 00 a0 e1                                      mov r0, r6
007e1ba0  d4 b1 ec eb                                      bl #0x30e2f8
007e1ba4  00 00 50 e3                                      cmp r0, #0
007e1ba8  58 00 00 1a                                      bne #0x7e1d10
007e1bac  04 30 95 e5                                      ldr r3, [r5, #4]
007e1bb0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007e1bb4  1c 30 84 e5                                      str r3, [r4, #0x1c]
007e1bb8  08 30 95 e5                                      ldr r3, [r5, #8]
007e1bbc  1c 60 94 e5                                      ldr r6, [r4, #0x1c]
007e1bc0  20 30 84 e5                                      str r3, [r4, #0x20]
007e1bc4  06 00 a0 e1                                      mov r0, r6
007e1bc8  67 b4 ec eb                                      bl #0x30ed6c
007e1bcc  20 50 94 e5                                      ldr r5, [r4, #0x20]
007e1bd0  00 70 a0 e1                                      mov r7, r0
007e1bd4  14 10 94 e5                                      ldr r1, [r4, #0x14]
007e1bd8  05 00 a0 e1                                      mov r0, r5
007e1bdc  62 b4 ec eb                                      bl #0x30ed6c
007e1be0  00 10 a0 e1                                      mov r1, r0
007e1be4  07 00 a0 e1                                      mov r0, r7
007e1be8  ed b3 ec eb                                      bl #0x30eba4
007e1bec  10 10 94 e5                                      ldr r1, [r4, #0x10]
007e1bf0  00 70 a0 e1                                      mov r7, r0
007e1bf4  06 00 a0 e1                                      mov r0, r6
007e1bf8  5b b4 ec eb                                      bl #0x30ed6c
007e1bfc  18 10 94 e5                                      ldr r1, [r4, #0x18]
007e1c00  00 60 a0 e1                                      mov r6, r0
007e1c04  05 00 a0 e1                                      mov r0, r5
007e1c08  57 b4 ec eb                                      bl #0x30ed6c
007e1c0c  00 10 a0 e1                                      mov r1, r0
007e1c10  06 00 a0 e1                                      mov r0, r6
007e1c14  e2 b3 ec eb                                      bl #0x30eba4
007e1c18  04 10 94 e5                                      ldr r1, [r4, #4]
007e1c1c  00 60 a0 e1                                      mov r6, r0
007e1c20  07 00 a0 e1                                      mov r0, r7
007e1c24  de b3 ec eb                                      bl #0x30eba4
007e1c28  08 10 94 e5                                      ldr r1, [r4, #8]
007e1c2c  00 50 a0 e1                                      mov r5, r0
007e1c30  06 00 a0 e1                                      mov r0, r6
007e1c34  da b3 ec eb                                      bl #0x30eba4
007e1c38  2c 50 84 e5                                      str r5, [r4, #0x2c]
007e1c3c  30 00 84 e5                                      str r0, [r4, #0x30]
007e1c40  64 50 94 e5                                      ldr r5, [r4, #0x64]
007e1c44  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
007e1c48  30 30 94 e5                                      ldr r3, [r4, #0x30]
007e1c4c  00 00 55 e3                                      cmp r5, #0
007e1c50  24 20 84 e5                                      str r2, [r4, #0x24]
007e1c54  28 30 84 e5                                      str r3, [r4, #0x28]
007e1c58  08 00 00 0a                                      beq #0x7e1c80
007e1c5c  1c 60 84 e2                                      add r6, r4, #0x1c
007e1c60  00 30 95 e5                                      ldr r3, [r5]
007e1c64  05 00 a0 e1                                      mov r0, r5
007e1c68  06 10 a0 e1                                      mov r1, r6
007e1c6c  0f e0 a0 e1                                      mov lr, pc
007e1c70  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
007e1c74  08 50 95 e5                                      ldr r5, [r5, #8]
007e1c78  00 00 55 e3                                      cmp r5, #0
007e1c7c  f7 ff ff 1a                                      bne #0x7e1c60
007e1c80  78 00 94 e5                                      ldr r0, [r4, #0x78]
007e1c84  00 10 a0 e3                                      mov r1, #0
007e1c88  bf b0 ec eb                                      bl #0x30df8c
007e1c8c  00 00 50 e3                                      cmp r0, #0
007e1c90  b2 50 d4 e1                                      ldrh r5, [r4, #2]
007e1c94  14 00 00 1a                                      bne #0x7e1cec
007e1c98  01 30 a0 e3                                      mov r3, #1
007e1c9c  b2 30 c4 e1                                      strh r3, [r4, #2]
007e1ca0  01 30 a0 e3                                      mov r3, #1
007e1ca4  75 50 bf e6                                      sxth r5, r5
007e1ca8  03 00 55 e1                                      cmp r5, r3
007e1cac  0d 00 00 0a                                      beq #0x7e1ce8
007e1cb0  64 50 94 e5                                      ldr r5, [r4, #0x64]
007e1cb4  00 00 55 e3                                      cmp r5, #0
007e1cb8  0a 00 00 0a                                      beq #0x7e1ce8
007e1cbc  19 6a a0 e3                                      mov r6, #0x19000
007e1cc0  76 6f 86 e2                                      add r6, r6, #0x1d8
007e1cc4  04 70 84 e2                                      add r7, r4, #4
007e1cc8  58 30 94 e5                                      ldr r3, [r4, #0x58]
007e1ccc  05 00 a0 e1                                      mov r0, r5
007e1cd0  07 20 a0 e1                                      mov r2, r7
007e1cd4  06 10 93 e7                                      ldr r1, [r3, r6]
007e1cd8  34 11 00 eb                                      bl #0x7e61b0
007e1cdc  08 50 95 e5                                      ldr r5, [r5, #8]
007e1ce0  00 00 55 e3                                      cmp r5, #0
007e1ce4  f7 ff ff 1a                                      bne #0x7e1cc8
007e1ce8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007e1cec  80 00 94 e5                                      ldr r0, [r4, #0x80]
007e1cf0  00 10 a0 e3                                      mov r1, #0
007e1cf4  a4 b0 ec eb                                      bl #0x30df8c
007e1cf8  00 00 50 e3                                      cmp r0, #0
007e1cfc  00 30 a0 13                                      movne r3, #0
007e1d00  b2 30 c4 11                                      strhne r3, [r4, #2]
007e1d04  00 30 a0 13                                      movne r3, #0
007e1d08  e5 ff ff 1a                                      bne #0x7e1ca4
007e1d0c  e1 ff ff ea                                      b #0x7e1c98
007e1d10  06 10 a0 e1                                      mov r1, r6
007e1d14  fe 05 a0 e3                                      mov r0, #0x3f800000
007e1d18  dd b3 ec eb                                      bl #0x30ec94
007e1d1c  80 00 84 e5                                      str r0, [r4, #0x80]
007e1d20  a1 ff ff ea                                      b #0x7e1bac

; FUNCTION 0x007e1d24, declared_size=164, range_size=164, mode=arm
; class-group: b2Body
; alias: _ZN6b2Body12DestroyShapeEP7b2Shape
; demangled: b2Body::DestroyShape(b2Shape*)
; decoder-mode: arm
007e1d24  70 40 2d e9                                      push {r4, r5, r6, lr}
007e1d28  58 20 90 e5                                      ldr r2, [r0, #0x58]
007e1d2c  19 3a a0 e3                                      mov r3, #0x19000
007e1d30  75 3f 83 e2                                      add r3, r3, #0x1d4
007e1d34  03 30 d2 e7                                      ldrb r3, [r2, r3]
007e1d38  00 50 a0 e1                                      mov r5, r0
007e1d3c  01 40 a0 e1                                      mov r4, r1
007e1d40  00 00 53 e3                                      cmp r3, #0
007e1d44  00 00 00 0a                                      beq #0x7e1d4c
007e1d48  70 80 bd e8                                      pop {r4, r5, r6, pc}
007e1d4c  19 3a a0 e3                                      mov r3, #0x19000
007e1d50  76 3f 83 e2                                      add r3, r3, #0x1d8
007e1d54  03 10 92 e7                                      ldr r1, [r2, r3]
007e1d58  04 00 a0 e1                                      mov r0, r4
007e1d5c  07 11 00 eb                                      bl #0x7e6180
007e1d60  64 30 95 e5                                      ldr r3, [r5, #0x64]
007e1d64  00 00 53 e3                                      cmp r3, #0
007e1d68  09 00 00 0a                                      beq #0x7e1d94
007e1d6c  03 00 54 e1                                      cmp r4, r3
007e1d70  64 20 85 02                                      addeq r2, r5, #0x64
007e1d74  02 00 00 1a                                      bne #0x7e1d84
007e1d78  0f 00 00 ea                                      b #0x7e1dbc
007e1d7c  03 00 54 e1                                      cmp r4, r3
007e1d80  0d 00 00 0a                                      beq #0x7e1dbc
007e1d84  08 20 83 e2                                      add r2, r3, #8
007e1d88  08 30 93 e5                                      ldr r3, [r3, #8]
007e1d8c  00 00 53 e3                                      cmp r3, #0
007e1d90  f9 ff ff 1a                                      bne #0x7e1d7c
007e1d94  00 30 a0 e3                                      mov r3, #0
007e1d98  08 30 84 e5                                      str r3, [r4, #8]
007e1d9c  0c 30 84 e5                                      str r3, [r4, #0xc]
007e1da0  68 30 95 e5                                      ldr r3, [r5, #0x68]
007e1da4  58 10 95 e5                                      ldr r1, [r5, #0x58]
007e1da8  04 00 a0 e1                                      mov r0, r4
007e1dac  01 30 43 e2                                      sub r3, r3, #1
007e1db0  68 30 85 e5                                      str r3, [r5, #0x68]
007e1db4  70 40 bd e8                                      pop {r4, r5, r6, lr}
007e1db8  cd 11 00 ea                                      b #0x7e64f4
007e1dbc  08 30 94 e5                                      ldr r3, [r4, #8]
007e1dc0  00 30 82 e5                                      str r3, [r2]
007e1dc4  f2 ff ff ea                                      b #0x7e1d94

; FUNCTION 0x007e1dc8, declared_size=132, range_size=132, mode=arm
; class-group: b2Body
; alias: _ZN6b2Body11CreateShapeEP10b2ShapeDef
; demangled: b2Body::CreateShape(b2ShapeDef*)
; decoder-mode: arm
007e1dc8  70 40 2d e9                                      push {r4, r5, r6, lr}
007e1dcc  58 20 90 e5                                      ldr r2, [r0, #0x58]
007e1dd0  19 3a a0 e3                                      mov r3, #0x19000
007e1dd4  75 3f 83 e2                                      add r3, r3, #0x1d4
007e1dd8  03 30 d2 e7                                      ldrb r3, [r2, r3]
007e1ddc  00 40 a0 e1                                      mov r4, r0
007e1de0  01 00 a0 e1                                      mov r0, r1
007e1de4  00 00 53 e3                                      cmp r3, #0
007e1de8  00 50 a0 13                                      movne r5, #0
007e1dec  14 00 00 1a                                      bne #0x7e1e44
007e1df0  02 10 a0 e1                                      mov r1, r2
007e1df4  d7 11 00 eb                                      bl #0x7e6558
007e1df8  64 20 94 e5                                      ldr r2, [r4, #0x64]
007e1dfc  19 3a a0 e3                                      mov r3, #0x19000
007e1e00  76 3f 83 e2                                      add r3, r3, #0x1d8
007e1e04  08 20 80 e5                                      str r2, [r0, #8]
007e1e08  68 10 94 e5                                      ldr r1, [r4, #0x68]
007e1e0c  64 00 84 e5                                      str r0, [r4, #0x64]
007e1e10  00 50 a0 e1                                      mov r5, r0
007e1e14  01 10 81 e2                                      add r1, r1, #1
007e1e18  68 10 84 e5                                      str r1, [r4, #0x68]
007e1e1c  0c 40 80 e5                                      str r4, [r0, #0xc]
007e1e20  58 10 94 e5                                      ldr r1, [r4, #0x58]
007e1e24  04 20 84 e2                                      add r2, r4, #4
007e1e28  03 10 91 e7                                      ldr r1, [r1, r3]
007e1e2c  28 11 00 eb                                      bl #0x7e62d4
007e1e30  1c 10 84 e2                                      add r1, r4, #0x1c
007e1e34  00 30 95 e5                                      ldr r3, [r5]
007e1e38  05 00 a0 e1                                      mov r0, r5
007e1e3c  0f e0 a0 e1                                      mov lr, pc
007e1e40  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
007e1e44  05 00 a0 e1                                      mov r0, r5
007e1e48  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007e1e4c, declared_size=608, range_size=608, mode=arm
; class-group: b2Body
; alias: _ZN6b2BodyC2EPK9b2BodyDefP7b2World
; demangled: b2Body::b2Body(b2BodyDef const*, b2World*)
; decoder-mode: arm
007e1e4c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
007e1e50  00 30 a0 e3                                      mov r3, #0
007e1e54  b0 30 c0 e1                                      strh r3, [r0]
007e1e58  2b 30 d1 e5                                      ldrb r3, [r1, #0x2b]
007e1e5c  00 40 a0 e1                                      mov r4, r0
007e1e60  01 50 a0 e1                                      mov r5, r1
007e1e64  00 00 53 e3                                      cmp r3, #0
007e1e68  20 30 a0 13                                      movne r3, #0x20
007e1e6c  b0 30 c0 11                                      strhne r3, [r0]
007e1e70  2a 30 d1 e5                                      ldrb r3, [r1, #0x2a]
007e1e74  fe 95 a0 e3                                      mov sb, #0x3f800000
007e1e78  00 00 53 e3                                      cmp r3, #0
007e1e7c  b0 30 d0 11                                      ldrhne r3, [r0]
007e1e80  40 30 83 13                                      orrne r3, r3, #0x40
007e1e84  b0 30 c0 11                                      strhne r3, [r0]
007e1e88  28 30 d1 e5                                      ldrb r3, [r1, #0x28]
007e1e8c  00 00 53 e3                                      cmp r3, #0
007e1e90  b0 30 d0 11                                      ldrhne r3, [r0]
007e1e94  10 30 83 13                                      orrne r3, r3, #0x10
007e1e98  b0 30 c0 11                                      strhne r3, [r0]
007e1e9c  29 30 d1 e5                                      ldrb r3, [r1, #0x29]
007e1ea0  58 20 80 e5                                      str r2, [r0, #0x58]
007e1ea4  00 00 53 e3                                      cmp r3, #0
007e1ea8  b0 30 d0 11                                      ldrhne r3, [r0]
007e1eac  08 30 83 13                                      orrne r3, r3, #8
007e1eb0  b0 30 c0 11                                      strhne r3, [r0]
007e1eb4  14 30 91 e5                                      ldr r3, [r1, #0x14]
007e1eb8  04 30 80 e5                                      str r3, [r0, #4]
007e1ebc  18 30 91 e5                                      ldr r3, [r1, #0x18]
007e1ec0  08 30 80 e5                                      str r3, [r0, #8]
007e1ec4  1c 70 91 e5                                      ldr r7, [r1, #0x1c]
007e1ec8  07 00 a0 e1                                      mov r0, r7
007e1ecc  20 b2 ec eb                                      bl #0x30e754
007e1ed0  00 60 a0 e1                                      mov r6, r0
007e1ed4  07 00 a0 e1                                      mov r0, r7
007e1ed8  0a b3 ec eb                                      bl #0x30eb08
007e1edc  02 a1 80 e2                                      add sl, r0, #0x80000000
007e1ee0  0c 60 84 e5                                      str r6, [r4, #0xc]
007e1ee4  14 a0 84 e5                                      str sl, [r4, #0x14]
007e1ee8  10 00 84 e5                                      str r0, [r4, #0x10]
007e1eec  18 60 84 e5                                      str r6, [r4, #0x18]
007e1ef0  04 30 95 e5                                      ldr r3, [r5, #4]
007e1ef4  00 70 a0 e1                                      mov r7, r0
007e1ef8  06 10 a0 e1                                      mov r1, r6
007e1efc  1c 30 84 e5                                      str r3, [r4, #0x1c]
007e1f00  08 30 95 e5                                      ldr r3, [r5, #8]
007e1f04  3c 90 84 e5                                      str sb, [r4, #0x3c]
007e1f08  1c 80 94 e5                                      ldr r8, [r4, #0x1c]
007e1f0c  20 30 84 e5                                      str r3, [r4, #0x20]
007e1f10  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
007e1f14  08 00 a0 e1                                      mov r0, r8
007e1f18  34 30 84 e5                                      str r3, [r4, #0x34]
007e1f1c  38 30 84 e5                                      str r3, [r4, #0x38]
007e1f20  91 b3 ec eb                                      bl #0x30ed6c
007e1f24  0a 10 a0 e1                                      mov r1, sl
007e1f28  00 b0 a0 e1                                      mov fp, r0
007e1f2c  20 00 94 e5                                      ldr r0, [r4, #0x20]
007e1f30  8d b3 ec eb                                      bl #0x30ed6c
007e1f34  00 10 a0 e1                                      mov r1, r0
007e1f38  0b 00 a0 e1                                      mov r0, fp
007e1f3c  18 b3 ec eb                                      bl #0x30eba4
007e1f40  07 10 a0 e1                                      mov r1, r7
007e1f44  00 a0 a0 e1                                      mov sl, r0
007e1f48  08 00 a0 e1                                      mov r0, r8
007e1f4c  86 b3 ec eb                                      bl #0x30ed6c
007e1f50  06 10 a0 e1                                      mov r1, r6
007e1f54  00 70 a0 e1                                      mov r7, r0
007e1f58  20 00 94 e5                                      ldr r0, [r4, #0x20]
007e1f5c  82 b3 ec eb                                      bl #0x30ed6c
007e1f60  00 10 a0 e1                                      mov r1, r0
007e1f64  07 00 a0 e1                                      mov r0, r7
007e1f68  0d b3 ec eb                                      bl #0x30eba4
007e1f6c  04 10 94 e5                                      ldr r1, [r4, #4]
007e1f70  00 70 a0 e1                                      mov r7, r0
007e1f74  0a 00 a0 e1                                      mov r0, sl
007e1f78  09 b3 ec eb                                      bl #0x30eba4
007e1f7c  08 10 94 e5                                      ldr r1, [r4, #8]
007e1f80  00 60 a0 e1                                      mov r6, r0
007e1f84  07 00 a0 e1                                      mov r0, r7
007e1f88  05 b3 ec eb                                      bl #0x30eba4
007e1f8c  2c 60 84 e5                                      str r6, [r4, #0x2c]
007e1f90  30 00 84 e5                                      str r0, [r4, #0x30]
007e1f94  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
007e1f98  30 20 94 e5                                      ldr r2, [r4, #0x30]
007e1f9c  00 30 a0 e3                                      mov r3, #0
007e1fa0  24 10 84 e5                                      str r1, [r4, #0x24]
007e1fa4  28 20 84 e5                                      str r2, [r4, #0x28]
007e1fa8  60 30 84 e5                                      str r3, [r4, #0x60]
007e1fac  6c 30 84 e5                                      str r3, [r4, #0x6c]
007e1fb0  70 30 84 e5                                      str r3, [r4, #0x70]
007e1fb4  5c 30 84 e5                                      str r3, [r4, #0x5c]
007e1fb8  20 20 95 e5                                      ldr r2, [r5, #0x20]
007e1fbc  00 30 a0 e3                                      mov r3, #0
007e1fc0  03 10 a0 e1                                      mov r1, r3
007e1fc4  84 20 84 e5                                      str r2, [r4, #0x84]
007e1fc8  24 20 95 e5                                      ldr r2, [r5, #0x24]
007e1fcc  4c 30 84 e5                                      str r3, [r4, #0x4c]
007e1fd0  50 30 84 e5                                      str r3, [r4, #0x50]
007e1fd4  88 20 84 e5                                      str r2, [r4, #0x88]
007e1fd8  54 30 84 e5                                      str r3, [r4, #0x54]
007e1fdc  40 30 84 e5                                      str r3, [r4, #0x40]
007e1fe0  44 30 84 e5                                      str r3, [r4, #0x44]
007e1fe4  48 30 84 e5                                      str r3, [r4, #0x48]
007e1fe8  8c 30 84 e5                                      str r3, [r4, #0x8c]
007e1fec  78 30 84 e5                                      str r3, [r4, #0x78]
007e1ff0  7c 30 84 e5                                      str r3, [r4, #0x7c]
007e1ff4  80 30 84 e5                                      str r3, [r4, #0x80]
007e1ff8  00 60 95 e5                                      ldr r6, [r5]
007e1ffc  74 60 84 e5                                      str r6, [r4, #0x74]
007e2000  06 00 a0 e1                                      mov r0, r6
007e2004  bb b0 ec eb                                      bl #0x30e2f8
007e2008  00 00 50 e3                                      cmp r0, #0
007e200c  03 00 00 0a                                      beq #0x7e2020
007e2010  09 00 a0 e1                                      mov r0, sb
007e2014  06 10 a0 e1                                      mov r1, r6
007e2018  1d b3 ec eb                                      bl #0x30ec94
007e201c  78 00 84 e5                                      str r0, [r4, #0x78]
007e2020  b0 30 d4 e1                                      ldrh r3, [r4]
007e2024  00 10 a0 e3                                      mov r1, #0
007e2028  40 00 13 e3                                      tst r3, #0x40
007e202c  0c 60 95 05                                      ldreq r6, [r5, #0xc]
007e2030  7c 60 94 15                                      ldrne r6, [r4, #0x7c]
007e2034  7c 60 84 05                                      streq r6, [r4, #0x7c]
007e2038  06 00 a0 e1                                      mov r0, r6
007e203c  ad b0 ec eb                                      bl #0x30e2f8
007e2040  00 00 50 e3                                      cmp r0, #0
007e2044  03 00 00 0a                                      beq #0x7e2058
007e2048  06 10 a0 e1                                      mov r1, r6
007e204c  fe 05 a0 e3                                      mov r0, #0x3f800000
007e2050  0f b3 ec eb                                      bl #0x30ec94
007e2054  80 00 84 e5                                      str r0, [r4, #0x80]
007e2058  78 00 94 e5                                      ldr r0, [r4, #0x78]
007e205c  00 10 a0 e3                                      mov r1, #0
007e2060  c9 af ec eb                                      bl #0x30df8c
007e2064  00 00 50 e3                                      cmp r0, #0
007e2068  06 00 00 0a                                      beq #0x7e2088
007e206c  80 00 94 e5                                      ldr r0, [r4, #0x80]
007e2070  00 10 a0 e3                                      mov r1, #0
007e2074  c4 af ec eb                                      bl #0x30df8c
007e2078  00 00 50 e3                                      cmp r0, #0
007e207c  00 20 a0 13                                      movne r2, #0
007e2080  b2 20 c4 11                                      strhne r2, [r4, #2]
007e2084  01 00 00 1a                                      bne #0x7e2090
007e2088  01 30 a0 e3                                      mov r3, #1
007e208c  b2 30 c4 e1                                      strh r3, [r4, #2]
007e2090  10 20 95 e5                                      ldr r2, [r5, #0x10]
007e2094  00 30 a0 e3                                      mov r3, #0
007e2098  68 30 84 e5                                      str r3, [r4, #0x68]
007e209c  90 20 84 e5                                      str r2, [r4, #0x90]
007e20a0  64 30 84 e5                                      str r3, [r4, #0x64]
007e20a4  04 00 a0 e1                                      mov r0, r4
007e20a8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007e20ac, declared_size=364, range_size=364, mode=arm
; class-group: b2Body
; alias: _ZN6b2Body17SynchronizeShapesEv
; demangled: b2Body::SynchronizeShapes()
; decoder-mode: arm
007e20ac  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007e20b0  34 60 90 e5                                      ldr r6, [r0, #0x34]
007e20b4  18 d0 4d e2                                      sub sp, sp, #0x18
007e20b8  00 50 a0 e1                                      mov r5, r0
007e20bc  06 00 a0 e1                                      mov r0, r6
007e20c0  a3 b1 ec eb                                      bl #0x30e754
007e20c4  00 40 a0 e1                                      mov r4, r0
007e20c8  06 00 a0 e1                                      mov r0, r6
007e20cc  8d b2 ec eb                                      bl #0x30eb08
007e20d0  1c 80 95 e5                                      ldr r8, [r5, #0x1c]
007e20d4  00 60 a0 e1                                      mov r6, r0
007e20d8  02 a1 80 e2                                      add sl, r0, #0x80000000
007e20dc  04 10 a0 e1                                      mov r1, r4
007e20e0  08 00 a0 e1                                      mov r0, r8
007e20e4  20 70 95 e5                                      ldr r7, [r5, #0x20]
007e20e8  08 40 8d e5                                      str r4, [sp, #8]
007e20ec  10 a0 8d e5                                      str sl, [sp, #0x10]
007e20f0  0c 60 8d e5                                      str r6, [sp, #0xc]
007e20f4  14 40 8d e5                                      str r4, [sp, #0x14]
007e20f8  1b b3 ec eb                                      bl #0x30ed6c
007e20fc  0a 10 a0 e1                                      mov r1, sl
007e2100  00 90 a0 e1                                      mov sb, r0
007e2104  07 00 a0 e1                                      mov r0, r7
007e2108  17 b3 ec eb                                      bl #0x30ed6c
007e210c  00 10 a0 e1                                      mov r1, r0
007e2110  09 00 a0 e1                                      mov r0, sb
007e2114  a2 b2 ec eb                                      bl #0x30eba4
007e2118  06 10 a0 e1                                      mov r1, r6
007e211c  00 a0 a0 e1                                      mov sl, r0
007e2120  08 00 a0 e1                                      mov r0, r8
007e2124  10 b3 ec eb                                      bl #0x30ed6c
007e2128  04 10 a0 e1                                      mov r1, r4
007e212c  00 60 a0 e1                                      mov r6, r0
007e2130  07 00 a0 e1                                      mov r0, r7
007e2134  0c b3 ec eb                                      bl #0x30ed6c
007e2138  00 10 a0 e1                                      mov r1, r0
007e213c  06 00 a0 e1                                      mov r0, r6
007e2140  97 b2 ec eb                                      bl #0x30eba4
007e2144  0a 10 a0 e1                                      mov r1, sl
007e2148  00 40 a0 e1                                      mov r4, r0
007e214c  24 00 95 e5                                      ldr r0, [r5, #0x24]
007e2150  95 b0 ec eb                                      bl #0x30e3ac
007e2154  04 10 a0 e1                                      mov r1, r4
007e2158  00 60 a0 e1                                      mov r6, r0
007e215c  28 00 95 e5                                      ldr r0, [r5, #0x28]
007e2160  91 b0 ec eb                                      bl #0x30e3ac
007e2164  64 40 95 e5                                      ldr r4, [r5, #0x64]
007e2168  04 00 8d e5                                      str r0, [sp, #4]
007e216c  00 60 8d e5                                      str r6, [sp]
007e2170  00 00 54 e3                                      cmp r4, #0
007e2174  24 00 00 0a                                      beq #0x7e220c
007e2178  19 6a a0 e3                                      mov r6, #0x19000
007e217c  76 6f 86 e2                                      add r6, r6, #0x1d8
007e2180  04 70 85 e2                                      add r7, r5, #4
007e2184  0d 80 a0 e1                                      mov r8, sp
007e2188  02 00 00 ea                                      b #0x7e2198
007e218c  08 40 94 e5                                      ldr r4, [r4, #8]
007e2190  00 00 54 e3                                      cmp r4, #0
007e2194  1c 00 00 0a                                      beq #0x7e220c
007e2198  58 30 95 e5                                      ldr r3, [r5, #0x58]
007e219c  04 00 a0 e1                                      mov r0, r4
007e21a0  0d 20 a0 e1                                      mov r2, sp
007e21a4  06 10 93 e7                                      ldr r1, [r3, r6]
007e21a8  07 30 a0 e1                                      mov r3, r7
007e21ac  87 10 00 eb                                      bl #0x7e63d0
007e21b0  00 00 50 e3                                      cmp r0, #0
007e21b4  f4 ff ff 1a                                      bne #0x7e218c
007e21b8  64 40 95 e5                                      ldr r4, [r5, #0x64]
007e21bc  b0 20 d5 e1                                      ldrh r2, [r5]
007e21c0  00 30 a0 e3                                      mov r3, #0
007e21c4  00 00 54 e3                                      cmp r4, #0
007e21c8  02 20 82 e3                                      orr r2, r2, #2
007e21cc  19 6a a0 13                                      movne r6, #0x19000
007e21d0  b0 20 c5 e1                                      strh r2, [r5]
007e21d4  48 30 85 e5                                      str r3, [r5, #0x48]
007e21d8  40 30 85 e5                                      str r3, [r5, #0x40]
007e21dc  44 30 85 e5                                      str r3, [r5, #0x44]
007e21e0  76 6f 86 12                                      addne r6, r6, #0x1d8
007e21e4  06 00 00 0a                                      beq #0x7e2204
007e21e8  58 30 95 e5                                      ldr r3, [r5, #0x58]
007e21ec  04 00 a0 e1                                      mov r0, r4
007e21f0  06 10 93 e7                                      ldr r1, [r3, r6]
007e21f4  e1 0f 00 eb                                      bl #0x7e6180
007e21f8  08 40 94 e5                                      ldr r4, [r4, #8]
007e21fc  00 00 54 e3                                      cmp r4, #0
007e2200  f8 ff ff 1a                                      bne #0x7e21e8
007e2204  00 00 a0 e3                                      mov r0, #0
007e2208  00 00 00 ea                                      b #0x7e2210
007e220c  01 00 a0 e3                                      mov r0, #1
007e2210  18 d0 8d e2                                      add sp, sp, #0x18
007e2214  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x007e2218, declared_size=608, range_size=608, mode=arm
; class-group: b2Body
; alias: _ZN6b2BodyC1EPK9b2BodyDefP7b2World
; demangled: b2Body::b2Body(b2BodyDef const*, b2World*)
; decoder-mode: arm
007e2218  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
007e221c  00 30 a0 e3                                      mov r3, #0
007e2220  b0 30 c0 e1                                      strh r3, [r0]
007e2224  2b 30 d1 e5                                      ldrb r3, [r1, #0x2b]
007e2228  00 40 a0 e1                                      mov r4, r0
007e222c  01 50 a0 e1                                      mov r5, r1
007e2230  00 00 53 e3                                      cmp r3, #0
007e2234  20 30 a0 13                                      movne r3, #0x20
007e2238  b0 30 c0 11                                      strhne r3, [r0]
007e223c  2a 30 d1 e5                                      ldrb r3, [r1, #0x2a]
007e2240  fe 95 a0 e3                                      mov sb, #0x3f800000
007e2244  00 00 53 e3                                      cmp r3, #0
007e2248  b0 30 d0 11                                      ldrhne r3, [r0]
007e224c  40 30 83 13                                      orrne r3, r3, #0x40
007e2250  b0 30 c0 11                                      strhne r3, [r0]
007e2254  28 30 d1 e5                                      ldrb r3, [r1, #0x28]
007e2258  00 00 53 e3                                      cmp r3, #0
007e225c  b0 30 d0 11                                      ldrhne r3, [r0]
007e2260  10 30 83 13                                      orrne r3, r3, #0x10
007e2264  b0 30 c0 11                                      strhne r3, [r0]
007e2268  29 30 d1 e5                                      ldrb r3, [r1, #0x29]
007e226c  58 20 80 e5                                      str r2, [r0, #0x58]
007e2270  00 00 53 e3                                      cmp r3, #0
007e2274  b0 30 d0 11                                      ldrhne r3, [r0]
007e2278  08 30 83 13                                      orrne r3, r3, #8
007e227c  b0 30 c0 11                                      strhne r3, [r0]
007e2280  14 30 91 e5                                      ldr r3, [r1, #0x14]
007e2284  04 30 80 e5                                      str r3, [r0, #4]
007e2288  18 30 91 e5                                      ldr r3, [r1, #0x18]
007e228c  08 30 80 e5                                      str r3, [r0, #8]
007e2290  1c 70 91 e5                                      ldr r7, [r1, #0x1c]
007e2294  07 00 a0 e1                                      mov r0, r7
007e2298  2d b1 ec eb                                      bl #0x30e754
007e229c  00 60 a0 e1                                      mov r6, r0
007e22a0  07 00 a0 e1                                      mov r0, r7
007e22a4  17 b2 ec eb                                      bl #0x30eb08
007e22a8  02 a1 80 e2                                      add sl, r0, #0x80000000
007e22ac  0c 60 84 e5                                      str r6, [r4, #0xc]
007e22b0  14 a0 84 e5                                      str sl, [r4, #0x14]
007e22b4  10 00 84 e5                                      str r0, [r4, #0x10]
007e22b8  18 60 84 e5                                      str r6, [r4, #0x18]
007e22bc  04 30 95 e5                                      ldr r3, [r5, #4]
007e22c0  00 70 a0 e1                                      mov r7, r0
007e22c4  06 10 a0 e1                                      mov r1, r6
007e22c8  1c 30 84 e5                                      str r3, [r4, #0x1c]
007e22cc  08 30 95 e5                                      ldr r3, [r5, #8]
007e22d0  3c 90 84 e5                                      str sb, [r4, #0x3c]
007e22d4  1c 80 94 e5                                      ldr r8, [r4, #0x1c]
007e22d8  20 30 84 e5                                      str r3, [r4, #0x20]
007e22dc  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
007e22e0  08 00 a0 e1                                      mov r0, r8
007e22e4  34 30 84 e5                                      str r3, [r4, #0x34]
007e22e8  38 30 84 e5                                      str r3, [r4, #0x38]
007e22ec  9e b2 ec eb                                      bl #0x30ed6c
007e22f0  0a 10 a0 e1                                      mov r1, sl
007e22f4  00 b0 a0 e1                                      mov fp, r0
007e22f8  20 00 94 e5                                      ldr r0, [r4, #0x20]
007e22fc  9a b2 ec eb                                      bl #0x30ed6c
007e2300  00 10 a0 e1                                      mov r1, r0
007e2304  0b 00 a0 e1                                      mov r0, fp
007e2308  25 b2 ec eb                                      bl #0x30eba4
007e230c  07 10 a0 e1                                      mov r1, r7
007e2310  00 a0 a0 e1                                      mov sl, r0
007e2314  08 00 a0 e1                                      mov r0, r8
007e2318  93 b2 ec eb                                      bl #0x30ed6c
007e231c  06 10 a0 e1                                      mov r1, r6
007e2320  00 70 a0 e1                                      mov r7, r0
007e2324  20 00 94 e5                                      ldr r0, [r4, #0x20]
007e2328  8f b2 ec eb                                      bl #0x30ed6c
007e232c  00 10 a0 e1                                      mov r1, r0
007e2330  07 00 a0 e1                                      mov r0, r7
007e2334  1a b2 ec eb                                      bl #0x30eba4
007e2338  04 10 94 e5                                      ldr r1, [r4, #4]
007e233c  00 70 a0 e1                                      mov r7, r0
007e2340  0a 00 a0 e1                                      mov r0, sl
007e2344  16 b2 ec eb                                      bl #0x30eba4
007e2348  08 10 94 e5                                      ldr r1, [r4, #8]
007e234c  00 60 a0 e1                                      mov r6, r0
007e2350  07 00 a0 e1                                      mov r0, r7
007e2354  12 b2 ec eb                                      bl #0x30eba4
007e2358  2c 60 84 e5                                      str r6, [r4, #0x2c]
007e235c  30 00 84 e5                                      str r0, [r4, #0x30]
007e2360  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
007e2364  30 20 94 e5                                      ldr r2, [r4, #0x30]
007e2368  00 30 a0 e3                                      mov r3, #0
007e236c  24 10 84 e5                                      str r1, [r4, #0x24]
007e2370  28 20 84 e5                                      str r2, [r4, #0x28]
007e2374  60 30 84 e5                                      str r3, [r4, #0x60]
007e2378  6c 30 84 e5                                      str r3, [r4, #0x6c]
007e237c  70 30 84 e5                                      str r3, [r4, #0x70]
007e2380  5c 30 84 e5                                      str r3, [r4, #0x5c]
007e2384  20 20 95 e5                                      ldr r2, [r5, #0x20]
007e2388  00 30 a0 e3                                      mov r3, #0
007e238c  03 10 a0 e1                                      mov r1, r3
007e2390  84 20 84 e5                                      str r2, [r4, #0x84]
007e2394  24 20 95 e5                                      ldr r2, [r5, #0x24]
007e2398  4c 30 84 e5                                      str r3, [r4, #0x4c]
007e239c  50 30 84 e5                                      str r3, [r4, #0x50]
007e23a0  88 20 84 e5                                      str r2, [r4, #0x88]
007e23a4  54 30 84 e5                                      str r3, [r4, #0x54]
007e23a8  40 30 84 e5                                      str r3, [r4, #0x40]
007e23ac  44 30 84 e5                                      str r3, [r4, #0x44]
007e23b0  48 30 84 e5                                      str r3, [r4, #0x48]
007e23b4  8c 30 84 e5                                      str r3, [r4, #0x8c]
007e23b8  78 30 84 e5                                      str r3, [r4, #0x78]
007e23bc  7c 30 84 e5                                      str r3, [r4, #0x7c]
007e23c0  80 30 84 e5                                      str r3, [r4, #0x80]
007e23c4  00 60 95 e5                                      ldr r6, [r5]
007e23c8  74 60 84 e5                                      str r6, [r4, #0x74]
007e23cc  06 00 a0 e1                                      mov r0, r6
007e23d0  c8 af ec eb                                      bl #0x30e2f8
007e23d4  00 00 50 e3                                      cmp r0, #0
007e23d8  03 00 00 0a                                      beq #0x7e23ec
007e23dc  09 00 a0 e1                                      mov r0, sb
007e23e0  06 10 a0 e1                                      mov r1, r6
007e23e4  2a b2 ec eb                                      bl #0x30ec94
007e23e8  78 00 84 e5                                      str r0, [r4, #0x78]
007e23ec  b0 30 d4 e1                                      ldrh r3, [r4]
007e23f0  00 10 a0 e3                                      mov r1, #0
007e23f4  40 00 13 e3                                      tst r3, #0x40
007e23f8  0c 60 95 05                                      ldreq r6, [r5, #0xc]
007e23fc  7c 60 94 15                                      ldrne r6, [r4, #0x7c]
007e2400  7c 60 84 05                                      streq r6, [r4, #0x7c]
007e2404  06 00 a0 e1                                      mov r0, r6
007e2408  ba af ec eb                                      bl #0x30e2f8
007e240c  00 00 50 e3                                      cmp r0, #0
007e2410  03 00 00 0a                                      beq #0x7e2424
007e2414  06 10 a0 e1                                      mov r1, r6
007e2418  fe 05 a0 e3                                      mov r0, #0x3f800000
007e241c  1c b2 ec eb                                      bl #0x30ec94
007e2420  80 00 84 e5                                      str r0, [r4, #0x80]
007e2424  78 00 94 e5                                      ldr r0, [r4, #0x78]
007e2428  00 10 a0 e3                                      mov r1, #0
007e242c  d6 ae ec eb                                      bl #0x30df8c
007e2430  00 00 50 e3                                      cmp r0, #0
007e2434  06 00 00 0a                                      beq #0x7e2454
007e2438  80 00 94 e5                                      ldr r0, [r4, #0x80]
007e243c  00 10 a0 e3                                      mov r1, #0
007e2440  d1 ae ec eb                                      bl #0x30df8c
007e2444  00 00 50 e3                                      cmp r0, #0
007e2448  00 20 a0 13                                      movne r2, #0
007e244c  b2 20 c4 11                                      strhne r2, [r4, #2]
007e2450  01 00 00 1a                                      bne #0x7e245c
007e2454  01 30 a0 e3                                      mov r3, #1
007e2458  b2 30 c4 e1                                      strh r3, [r4, #2]
007e245c  10 20 95 e5                                      ldr r2, [r5, #0x10]
007e2460  00 30 a0 e3                                      mov r3, #0
007e2464  68 30 84 e5                                      str r3, [r4, #0x68]
007e2468  90 20 84 e5                                      str r2, [r4, #0x90]
007e246c  64 30 84 e5                                      str r3, [r4, #0x64]
007e2470  04 00 a0 e1                                      mov r0, r4
007e2474  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007e761c, declared_size=192, range_size=192, mode=arm
; class-group: b2Body
; alias: _ZN6b2Body20SynchronizeTransformEv
; demangled: b2Body::SynchronizeTransform()
; decoder-mode: arm
007e761c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007e7620  38 60 90 e5                                      ldr r6, [r0, #0x38]
007e7624  00 40 a0 e1                                      mov r4, r0
007e7628  06 00 a0 e1                                      mov r0, r6
007e762c  48 9c ec eb                                      bl #0x30e754
007e7630  00 50 a0 e1                                      mov r5, r0
007e7634  06 00 a0 e1                                      mov r0, r6
007e7638  32 9d ec eb                                      bl #0x30eb08
007e763c  1c 80 94 e5                                      ldr r8, [r4, #0x1c]
007e7640  02 a1 80 e2                                      add sl, r0, #0x80000000
007e7644  00 60 a0 e1                                      mov r6, r0
007e7648  0c 50 84 e5                                      str r5, [r4, #0xc]
007e764c  14 a0 84 e5                                      str sl, [r4, #0x14]
007e7650  10 00 84 e5                                      str r0, [r4, #0x10]
007e7654  18 50 84 e5                                      str r5, [r4, #0x18]
007e7658  05 00 a0 e1                                      mov r0, r5
007e765c  08 10 a0 e1                                      mov r1, r8
007e7660  c1 9d ec eb                                      bl #0x30ed6c
007e7664  20 70 94 e5                                      ldr r7, [r4, #0x20]
007e7668  00 90 a0 e1                                      mov sb, r0
007e766c  0a 00 a0 e1                                      mov r0, sl
007e7670  07 10 a0 e1                                      mov r1, r7
007e7674  bc 9d ec eb                                      bl #0x30ed6c
007e7678  00 10 a0 e1                                      mov r1, r0
007e767c  09 00 a0 e1                                      mov r0, sb
007e7680  47 9d ec eb                                      bl #0x30eba4
007e7684  08 10 a0 e1                                      mov r1, r8
007e7688  00 a0 a0 e1                                      mov sl, r0
007e768c  06 00 a0 e1                                      mov r0, r6
007e7690  b5 9d ec eb                                      bl #0x30ed6c
007e7694  07 10 a0 e1                                      mov r1, r7
007e7698  00 60 a0 e1                                      mov r6, r0
007e769c  05 00 a0 e1                                      mov r0, r5
007e76a0  b1 9d ec eb                                      bl #0x30ed6c
007e76a4  00 10 a0 e1                                      mov r1, r0
007e76a8  06 00 a0 e1                                      mov r0, r6
007e76ac  3c 9d ec eb                                      bl #0x30eba4
007e76b0  0a 10 a0 e1                                      mov r1, sl
007e76b4  00 60 a0 e1                                      mov r6, r0
007e76b8  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
007e76bc  3a 9b ec eb                                      bl #0x30e3ac
007e76c0  06 10 a0 e1                                      mov r1, r6
007e76c4  00 50 a0 e1                                      mov r5, r0
007e76c8  30 00 94 e5                                      ldr r0, [r4, #0x30]
007e76cc  36 9b ec eb                                      bl #0x30e3ac
007e76d0  04 50 84 e5                                      str r5, [r4, #4]
007e76d4  08 00 84 e5                                      str r0, [r4, #8]
007e76d8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
