; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003139e0, declared_size=176, range_size=176, mode=arm
; class-group: void StreamReader
; alias: _ZN12StreamReader7writeAsIjEEvP11IStreamBasePKT_
; demangled: void StreamReader::writeAs<unsigned int>(IStreamBase*, unsigned int const*)
; decoder-mode: arm
003139e0  04 e0 2d e5                                      str lr, [sp, #-4]!
003139e4  00 30 a0 e3                                      mov r3, #0
003139e8  0c d0 4d e2                                      sub sp, sp, #0xc
003139ec  00 c0 90 e5                                      ldr ip, [r0]
003139f0  04 20 a0 e3                                      mov r2, #4
003139f4  0f e0 a0 e1                                      mov lr, pc
003139f8  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
003139fc  74 30 9f e5                                      ldr r3, [pc, #0x74]
00313a00  04 00 50 e3                                      cmp r0, #4
00313a04  03 30 8f e0                                      add r3, pc, r3
00313a08  0a 00 00 0a                                      beq #0x313a38
00313a0c  68 20 9f e5                                      ldr r2, [pc, #0x68]
00313a10  02 20 93 e7                                      ldr r2, [r3, r2]
00313a14  00 20 92 e5                                      ldr r2, [r2]
00313a18  02 00 52 e3                                      cmp r2, #2
00313a1c  00 30 a0 03                                      moveq r3, #0
00313a20  00 30 83 05                                      streq r3, [r3]
00313a24  01 00 00 0a                                      beq #0x313a30
00313a28  01 00 52 e3                                      cmp r2, #1
00313a2c  04 00 00 0a                                      beq #0x313a44
00313a30  0c d0 8d e2                                      add sp, sp, #0xc
00313a34  00 80 bd e8                                      ldm sp!, {pc}
00313a38  00 00 51 e3                                      cmp r1, #0
00313a3c  fb ff ff 0a                                      beq #0x313a30
00313a40  f1 ff ff ea                                      b #0x313a0c
00313a44  34 00 9f e5                                      ldr r0, [pc, #0x34]
00313a48  34 10 9f e5                                      ldr r1, [pc, #0x34]
00313a4c  34 20 9f e5                                      ldr r2, [pc, #0x34]
00313a50  00 00 93 e7                                      ldr r0, [r3, r0]
00313a54  30 30 9f e5                                      ldr r3, [pc, #0x30]
00313a58  80 c0 a0 e3                                      mov ip, #0x80
00313a5c  01 10 8f e0                                      add r1, pc, r1
00313a60  02 20 8f e0                                      add r2, pc, r2
00313a64  03 30 8f e0                                      add r3, pc, r3
00313a68  a8 00 80 e2                                      add r0, r0, #0xa8
00313a6c  00 c0 8d e5                                      str ip, [sp]
00313a70  63 e9 ff eb                                      bl #0x30e004
00313a74  ed ff ff ea                                      b #0x313a30
; mapping-symbol data/literal pool
00313a78  8c 10 68 00 c0 39 00 00 c0 19 00 00 7c a9 5a 00  .byte 0x8c, 0x10, 0x68, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x7c, 0xa9, 0x5a, 0x00
00313a88  40 aa 5a 00 5c aa 5a 00                          .byte 0x40, 0xaa, 0x5a, 0x00, 0x5c, 0xaa, 0x5a, 0x00

; FUNCTION 0x0033665c, declared_size=188, range_size=188, mode=arm
; class-group: void StreamReader
; alias: _ZN12StreamReader7writeAsIiEEvP11IStreamBaseT_
; demangled: void StreamReader::writeAs<int>(IStreamBase*, int)
; decoder-mode: arm
0033665c  04 e0 2d e5                                      str lr, [sp, #-4]!
00336660  14 d0 4d e2                                      sub sp, sp, #0x14
00336664  10 30 8d e2                                      add r3, sp, #0x10
00336668  04 10 23 e5                                      str r1, [r3, #-4]!
0033666c  03 10 a0 e1                                      mov r1, r3
00336670  00 c0 90 e5                                      ldr ip, [r0]
00336674  00 30 a0 e3                                      mov r3, #0
00336678  04 20 a0 e3                                      mov r2, #4
0033667c  0f e0 a0 e1                                      mov lr, pc
00336680  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
00336684  74 30 9f e5                                      ldr r3, [pc, #0x74]
00336688  04 00 50 e3                                      cmp r0, #4
0033668c  03 30 8f e0                                      add r3, pc, r3
00336690  0a 00 00 0a                                      beq #0x3366c0
00336694  68 20 9f e5                                      ldr r2, [pc, #0x68]
00336698  02 20 93 e7                                      ldr r2, [r3, r2]
0033669c  00 20 92 e5                                      ldr r2, [r2]
003366a0  02 00 52 e3                                      cmp r2, #2
003366a4  00 30 a0 03                                      moveq r3, #0
003366a8  00 30 83 05                                      streq r3, [r3]
003366ac  01 00 00 0a                                      beq #0x3366b8
003366b0  01 00 52 e3                                      cmp r2, #1
003366b4  04 00 00 0a                                      beq #0x3366cc
003366b8  14 d0 8d e2                                      add sp, sp, #0x14
003366bc  00 80 bd e8                                      ldm sp!, {pc}
003366c0  00 00 51 e3                                      cmp r1, #0
003366c4  fb ff ff 0a                                      beq #0x3366b8
003366c8  f1 ff ff ea                                      b #0x336694
003366cc  34 00 9f e5                                      ldr r0, [pc, #0x34]
003366d0  34 10 9f e5                                      ldr r1, [pc, #0x34]
003366d4  34 20 9f e5                                      ldr r2, [pc, #0x34]
003366d8  00 00 93 e7                                      ldr r0, [r3, r0]
003366dc  30 30 9f e5                                      ldr r3, [pc, #0x30]
003366e0  74 c0 a0 e3                                      mov ip, #0x74
003366e4  01 10 8f e0                                      add r1, pc, r1
003366e8  02 20 8f e0                                      add r2, pc, r2
003366ec  03 30 8f e0                                      add r3, pc, r3
003366f0  a8 00 80 e2                                      add r0, r0, #0xa8
003366f4  00 c0 8d e5                                      str ip, [sp]
003366f8  41 5e ff eb                                      bl #0x30e004
003366fc  ed ff ff ea                                      b #0x3366b8
; mapping-symbol data/literal pool
00336700  04 e4 65 00 c0 39 00 00 c0 19 00 00 f4 7c 58 00  .byte 0x04, 0xe4, 0x65, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xf4, 0x7c, 0x58, 0x00
00336710  b8 7d 58 00 54 96 58 00                          .byte 0xb8, 0x7d, 0x58, 0x00, 0x54, 0x96, 0x58, 0x00

; FUNCTION 0x00336718, declared_size=188, range_size=188, mode=arm
; class-group: void StreamReader
; alias: _ZN12StreamReader7writeAsIhEEvP11IStreamBaseT_
; demangled: void StreamReader::writeAs<unsigned char>(IStreamBase*, unsigned char)
; decoder-mode: arm
00336718  04 e0 2d e5                                      str lr, [sp, #-4]!
0033671c  14 d0 4d e2                                      sub sp, sp, #0x14
00336720  10 30 8d e2                                      add r3, sp, #0x10
00336724  01 10 63 e5                                      strb r1, [r3, #-1]!
00336728  03 10 a0 e1                                      mov r1, r3
0033672c  00 c0 90 e5                                      ldr ip, [r0]
00336730  00 30 a0 e3                                      mov r3, #0
00336734  01 20 a0 e3                                      mov r2, #1
00336738  0f e0 a0 e1                                      mov lr, pc
0033673c  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
00336740  74 30 9f e5                                      ldr r3, [pc, #0x74]
00336744  01 00 50 e3                                      cmp r0, #1
00336748  03 30 8f e0                                      add r3, pc, r3
0033674c  0a 00 00 0a                                      beq #0x33677c
00336750  68 20 9f e5                                      ldr r2, [pc, #0x68]
00336754  02 20 93 e7                                      ldr r2, [r3, r2]
00336758  00 20 92 e5                                      ldr r2, [r2]
0033675c  02 00 52 e3                                      cmp r2, #2
00336760  00 30 a0 03                                      moveq r3, #0
00336764  00 30 83 05                                      streq r3, [r3]
00336768  01 00 00 0a                                      beq #0x336774
0033676c  01 00 52 e3                                      cmp r2, #1
00336770  04 00 00 0a                                      beq #0x336788
00336774  14 d0 8d e2                                      add sp, sp, #0x14
00336778  00 80 bd e8                                      ldm sp!, {pc}
0033677c  00 00 51 e3                                      cmp r1, #0
00336780  fb ff ff 0a                                      beq #0x336774
00336784  f1 ff ff ea                                      b #0x336750
00336788  34 00 9f e5                                      ldr r0, [pc, #0x34]
0033678c  34 10 9f e5                                      ldr r1, [pc, #0x34]
00336790  34 20 9f e5                                      ldr r2, [pc, #0x34]
00336794  00 00 93 e7                                      ldr r0, [r3, r0]
00336798  30 30 9f e5                                      ldr r3, [pc, #0x30]
0033679c  74 c0 a0 e3                                      mov ip, #0x74
003367a0  01 10 8f e0                                      add r1, pc, r1
003367a4  02 20 8f e0                                      add r2, pc, r2
003367a8  03 30 8f e0                                      add r3, pc, r3
003367ac  a8 00 80 e2                                      add r0, r0, #0xa8
003367b0  00 c0 8d e5                                      str ip, [sp]
003367b4  12 5e ff eb                                      bl #0x30e004
003367b8  ed ff ff ea                                      b #0x336774
; mapping-symbol data/literal pool
003367bc  48 e3 65 00 c0 39 00 00 c0 19 00 00 38 7c 58 00  .byte 0x48, 0xe3, 0x65, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x38, 0x7c, 0x58, 0x00
003367cc  fc 7c 58 00 98 95 58 00                          .byte 0xfc, 0x7c, 0x58, 0x00, 0x98, 0x95, 0x58, 0x00

; FUNCTION 0x003df1a0, declared_size=176, range_size=176, mode=arm
; class-group: void StreamReader
; alias: _ZN12StreamReader6readAsIjEEvP11IStreamBasePT_
; demangled: void StreamReader::readAs<unsigned int>(IStreamBase*, unsigned int*)
; decoder-mode: arm
003df1a0  04 e0 2d e5                                      str lr, [sp, #-4]!
003df1a4  00 30 a0 e3                                      mov r3, #0
003df1a8  0c d0 4d e2                                      sub sp, sp, #0xc
003df1ac  00 c0 90 e5                                      ldr ip, [r0]
003df1b0  04 20 a0 e3                                      mov r2, #4
003df1b4  0f e0 a0 e1                                      mov lr, pc
003df1b8  18 f0 9c e5                                      ldr pc, [ip, #0x18]
003df1bc  74 30 9f e5                                      ldr r3, [pc, #0x74]
003df1c0  04 00 50 e3                                      cmp r0, #4
003df1c4  03 30 8f e0                                      add r3, pc, r3
003df1c8  0a 00 00 0a                                      beq #0x3df1f8
003df1cc  68 20 9f e5                                      ldr r2, [pc, #0x68]
003df1d0  02 20 93 e7                                      ldr r2, [r3, r2]
003df1d4  00 20 92 e5                                      ldr r2, [r2]
003df1d8  02 00 52 e3                                      cmp r2, #2
003df1dc  00 30 a0 03                                      moveq r3, #0
003df1e0  00 30 83 05                                      streq r3, [r3]
003df1e4  01 00 00 0a                                      beq #0x3df1f0
003df1e8  01 00 52 e3                                      cmp r2, #1
003df1ec  04 00 00 0a                                      beq #0x3df204
003df1f0  0c d0 8d e2                                      add sp, sp, #0xc
003df1f4  00 80 bd e8                                      ldm sp!, {pc}
003df1f8  00 00 51 e3                                      cmp r1, #0
003df1fc  fb ff ff 0a                                      beq #0x3df1f0
003df200  f1 ff ff ea                                      b #0x3df1cc
003df204  34 00 9f e5                                      ldr r0, [pc, #0x34]
003df208  34 10 9f e5                                      ldr r1, [pc, #0x34]
003df20c  34 20 9f e5                                      ldr r2, [pc, #0x34]
003df210  00 00 93 e7                                      ldr r0, [r3, r0]
003df214  30 30 9f e5                                      ldr r3, [pc, #0x30]
003df218  50 c0 a0 e3                                      mov ip, #0x50
003df21c  01 10 8f e0                                      add r1, pc, r1
003df220  02 20 8f e0                                      add r2, pc, r2
003df224  03 30 8f e0                                      add r3, pc, r3
003df228  a8 00 80 e2                                      add r0, r0, #0xa8
003df22c  00 c0 8d e5                                      str ip, [sp]
003df230  73 bb fc eb                                      bl #0x30e004
003df234  ed ff ff ea                                      b #0x3df1f0
; mapping-symbol data/literal pool
003df238  cc 58 5b 00 c0 39 00 00 c0 19 00 00 bc f1 4d 00  .byte 0xcc, 0x58, 0x5b, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xbc, 0xf1, 0x4d, 0x00
003df248  e0 f2 4d 00 1c 0b 4e 00                          .byte 0xe0, 0xf2, 0x4d, 0x00, 0x1c, 0x0b, 0x4e, 0x00

; FUNCTION 0x00429d84, declared_size=188, range_size=188, mode=arm
; class-group: void StreamReader
; alias: _ZN12StreamReader7writeAsIbEEvP11IStreamBaseT_
; demangled: void StreamReader::writeAs<bool>(IStreamBase*, bool)
; decoder-mode: arm
00429d84  04 e0 2d e5                                      str lr, [sp, #-4]!
00429d88  14 d0 4d e2                                      sub sp, sp, #0x14
00429d8c  10 30 8d e2                                      add r3, sp, #0x10
00429d90  01 10 63 e5                                      strb r1, [r3, #-1]!
00429d94  03 10 a0 e1                                      mov r1, r3
00429d98  00 c0 90 e5                                      ldr ip, [r0]
00429d9c  00 30 a0 e3                                      mov r3, #0
00429da0  01 20 a0 e3                                      mov r2, #1
00429da4  0f e0 a0 e1                                      mov lr, pc
00429da8  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
00429dac  74 30 9f e5                                      ldr r3, [pc, #0x74]
00429db0  01 00 50 e3                                      cmp r0, #1
00429db4  03 30 8f e0                                      add r3, pc, r3
00429db8  0a 00 00 0a                                      beq #0x429de8
00429dbc  68 20 9f e5                                      ldr r2, [pc, #0x68]
00429dc0  02 20 93 e7                                      ldr r2, [r3, r2]
00429dc4  00 20 92 e5                                      ldr r2, [r2]
00429dc8  02 00 52 e3                                      cmp r2, #2
00429dcc  00 30 a0 03                                      moveq r3, #0
00429dd0  00 30 83 05                                      streq r3, [r3]
00429dd4  01 00 00 0a                                      beq #0x429de0
00429dd8  01 00 52 e3                                      cmp r2, #1
00429ddc  04 00 00 0a                                      beq #0x429df4
00429de0  14 d0 8d e2                                      add sp, sp, #0x14
00429de4  00 80 bd e8                                      ldm sp!, {pc}
00429de8  00 00 51 e3                                      cmp r1, #0
00429dec  fb ff ff 0a                                      beq #0x429de0
00429df0  f1 ff ff ea                                      b #0x429dbc
00429df4  34 00 9f e5                                      ldr r0, [pc, #0x34]
00429df8  34 10 9f e5                                      ldr r1, [pc, #0x34]
00429dfc  34 20 9f e5                                      ldr r2, [pc, #0x34]
00429e00  00 00 93 e7                                      ldr r0, [r3, r0]
00429e04  30 30 9f e5                                      ldr r3, [pc, #0x30]
00429e08  74 c0 a0 e3                                      mov ip, #0x74
00429e0c  01 10 8f e0                                      add r1, pc, r1
00429e10  02 20 8f e0                                      add r2, pc, r2
00429e14  03 30 8f e0                                      add r3, pc, r3
00429e18  a8 00 80 e2                                      add r0, r0, #0xa8
00429e1c  00 c0 8d e5                                      str ip, [sp]
00429e20  77 90 fb eb                                      bl #0x30e004
00429e24  ed ff ff ea                                      b #0x429de0
; mapping-symbol data/literal pool
00429e28  dc ac 56 00 c0 39 00 00 c0 19 00 00 cc 45 49 00  .byte 0xdc, 0xac, 0x56, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xcc, 0x45, 0x49, 0x00
00429e38  90 46 49 00 2c 5f 49 00                          .byte 0x90, 0x46, 0x49, 0x00, 0x2c, 0x5f, 0x49, 0x00

; FUNCTION 0x00459090, declared_size=176, range_size=176, mode=arm
; class-group: void StreamReader
; alias: _ZN12StreamReader6readAsIiEEvP11IStreamBasePT_
; demangled: void StreamReader::readAs<int>(IStreamBase*, int*)
; decoder-mode: arm
00459090  04 e0 2d e5                                      str lr, [sp, #-4]!
00459094  00 30 a0 e3                                      mov r3, #0
00459098  0c d0 4d e2                                      sub sp, sp, #0xc
0045909c  00 c0 90 e5                                      ldr ip, [r0]
004590a0  04 20 a0 e3                                      mov r2, #4
004590a4  0f e0 a0 e1                                      mov lr, pc
004590a8  18 f0 9c e5                                      ldr pc, [ip, #0x18]
004590ac  74 30 9f e5                                      ldr r3, [pc, #0x74]
004590b0  04 00 50 e3                                      cmp r0, #4
004590b4  03 30 8f e0                                      add r3, pc, r3
004590b8  0a 00 00 0a                                      beq #0x4590e8
004590bc  68 20 9f e5                                      ldr r2, [pc, #0x68]
004590c0  02 20 93 e7                                      ldr r2, [r3, r2]
004590c4  00 20 92 e5                                      ldr r2, [r2]
004590c8  02 00 52 e3                                      cmp r2, #2
004590cc  00 30 a0 03                                      moveq r3, #0
004590d0  00 30 83 05                                      streq r3, [r3]
004590d4  01 00 00 0a                                      beq #0x4590e0
004590d8  01 00 52 e3                                      cmp r2, #1
004590dc  04 00 00 0a                                      beq #0x4590f4
004590e0  0c d0 8d e2                                      add sp, sp, #0xc
004590e4  00 80 bd e8                                      ldm sp!, {pc}
004590e8  00 00 51 e3                                      cmp r1, #0
004590ec  fb ff ff 0a                                      beq #0x4590e0
004590f0  f1 ff ff ea                                      b #0x4590bc
004590f4  34 00 9f e5                                      ldr r0, [pc, #0x34]
004590f8  34 10 9f e5                                      ldr r1, [pc, #0x34]
004590fc  34 20 9f e5                                      ldr r2, [pc, #0x34]
00459100  00 00 93 e7                                      ldr r0, [r3, r0]
00459104  30 30 9f e5                                      ldr r3, [pc, #0x30]
00459108  50 c0 a0 e3                                      mov ip, #0x50
0045910c  01 10 8f e0                                      add r1, pc, r1
00459110  02 20 8f e0                                      add r2, pc, r2
00459114  03 30 8f e0                                      add r3, pc, r3
00459118  a8 00 80 e2                                      add r0, r0, #0xa8
0045911c  00 c0 8d e5                                      str ip, [sp]
00459120  b7 d3 fa eb                                      bl #0x30e004
00459124  ed ff ff ea                                      b #0x4590e0
; mapping-symbol data/literal pool
00459128  dc b9 53 00 c0 39 00 00 c0 19 00 00 cc 52 46 00  .byte 0xdc, 0xb9, 0x53, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xcc, 0x52, 0x46, 0x00
00459138  f0 53 46 00 2c 6c 46 00                          .byte 0xf0, 0x53, 0x46, 0x00, 0x2c, 0x6c, 0x46, 0x00

; FUNCTION 0x00459140, declared_size=176, range_size=176, mode=arm
; class-group: void StreamReader
; alias: _ZN12StreamReader6peekAsIiEEvP11IStreamBasePT_
; demangled: void StreamReader::peekAs<int>(IStreamBase*, int*)
; decoder-mode: arm
00459140  04 e0 2d e5                                      str lr, [sp, #-4]!
00459144  00 30 a0 e3                                      mov r3, #0
00459148  0c d0 4d e2                                      sub sp, sp, #0xc
0045914c  00 c0 90 e5                                      ldr ip, [r0]
00459150  04 20 a0 e3                                      mov r2, #4
00459154  0f e0 a0 e1                                      mov lr, pc
00459158  14 f0 9c e5                                      ldr pc, [ip, #0x14]
0045915c  74 30 9f e5                                      ldr r3, [pc, #0x74]
00459160  04 00 50 e3                                      cmp r0, #4
00459164  03 30 8f e0                                      add r3, pc, r3
00459168  0a 00 00 0a                                      beq #0x459198
0045916c  68 20 9f e5                                      ldr r2, [pc, #0x68]
00459170  02 20 93 e7                                      ldr r2, [r3, r2]
00459174  00 20 92 e5                                      ldr r2, [r2]
00459178  02 00 52 e3                                      cmp r2, #2
0045917c  00 30 a0 03                                      moveq r3, #0
00459180  00 30 83 05                                      streq r3, [r3]
00459184  01 00 00 0a                                      beq #0x459190
00459188  01 00 52 e3                                      cmp r2, #1
0045918c  04 00 00 0a                                      beq #0x4591a4
00459190  0c d0 8d e2                                      add sp, sp, #0xc
00459194  00 80 bd e8                                      ldm sp!, {pc}
00459198  00 00 51 e3                                      cmp r1, #0
0045919c  fb ff ff 0a                                      beq #0x459190
004591a0  f1 ff ff ea                                      b #0x45916c
004591a4  34 00 9f e5                                      ldr r0, [pc, #0x34]
004591a8  34 10 9f e5                                      ldr r1, [pc, #0x34]
004591ac  34 20 9f e5                                      ldr r2, [pc, #0x34]
004591b0  00 00 93 e7                                      ldr r0, [r3, r0]
004591b4  30 30 9f e5                                      ldr r3, [pc, #0x30]
004591b8  68 c0 a0 e3                                      mov ip, #0x68
004591bc  01 10 8f e0                                      add r1, pc, r1
004591c0  02 20 8f e0                                      add r2, pc, r2
004591c4  03 30 8f e0                                      add r3, pc, r3
004591c8  a8 00 80 e2                                      add r0, r0, #0xa8
004591cc  00 c0 8d e5                                      str ip, [sp]
004591d0  8b d3 fa eb                                      bl #0x30e004
004591d4  ed ff ff ea                                      b #0x459190
; mapping-symbol data/literal pool
004591d8  2c b9 53 00 c0 39 00 00 c0 19 00 00 1c 52 46 00  .byte 0x2c, 0xb9, 0x53, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x1c, 0x52, 0x46, 0x00
004591e8  40 53 46 00 7c 6b 46 00                          .byte 0x40, 0x53, 0x46, 0x00, 0x7c, 0x6b, 0x46, 0x00

; FUNCTION 0x0046c9c8, declared_size=176, range_size=176, mode=arm
; class-group: void StreamReader
; alias: _ZN12StreamReader7writeAsIiEEvP11IStreamBasePKT_
; demangled: void StreamReader::writeAs<int>(IStreamBase*, int const*)
; decoder-mode: arm
0046c9c8  04 e0 2d e5                                      str lr, [sp, #-4]!
0046c9cc  00 30 a0 e3                                      mov r3, #0
0046c9d0  0c d0 4d e2                                      sub sp, sp, #0xc
0046c9d4  00 c0 90 e5                                      ldr ip, [r0]
0046c9d8  04 20 a0 e3                                      mov r2, #4
0046c9dc  0f e0 a0 e1                                      mov lr, pc
0046c9e0  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
0046c9e4  74 30 9f e5                                      ldr r3, [pc, #0x74]
0046c9e8  04 00 50 e3                                      cmp r0, #4
0046c9ec  03 30 8f e0                                      add r3, pc, r3
0046c9f0  0a 00 00 0a                                      beq #0x46ca20
0046c9f4  68 20 9f e5                                      ldr r2, [pc, #0x68]
0046c9f8  02 20 93 e7                                      ldr r2, [r3, r2]
0046c9fc  00 20 92 e5                                      ldr r2, [r2]
0046ca00  02 00 52 e3                                      cmp r2, #2
0046ca04  00 30 a0 03                                      moveq r3, #0
0046ca08  00 30 83 05                                      streq r3, [r3]
0046ca0c  01 00 00 0a                                      beq #0x46ca18
0046ca10  01 00 52 e3                                      cmp r2, #1
0046ca14  04 00 00 0a                                      beq #0x46ca2c
0046ca18  0c d0 8d e2                                      add sp, sp, #0xc
0046ca1c  00 80 bd e8                                      ldm sp!, {pc}
0046ca20  00 00 51 e3                                      cmp r1, #0
0046ca24  fb ff ff 0a                                      beq #0x46ca18
0046ca28  f1 ff ff ea                                      b #0x46c9f4
0046ca2c  34 00 9f e5                                      ldr r0, [pc, #0x34]
0046ca30  34 10 9f e5                                      ldr r1, [pc, #0x34]
0046ca34  34 20 9f e5                                      ldr r2, [pc, #0x34]
0046ca38  00 00 93 e7                                      ldr r0, [r3, r0]
0046ca3c  30 30 9f e5                                      ldr r3, [pc, #0x30]
0046ca40  80 c0 a0 e3                                      mov ip, #0x80
0046ca44  01 10 8f e0                                      add r1, pc, r1
0046ca48  02 20 8f e0                                      add r2, pc, r2
0046ca4c  03 30 8f e0                                      add r3, pc, r3
0046ca50  a8 00 80 e2                                      add r0, r0, #0xa8
0046ca54  00 c0 8d e5                                      str ip, [sp]
0046ca58  69 85 fa eb                                      bl #0x30e004
0046ca5c  ed ff ff ea                                      b #0x46ca18
; mapping-symbol data/literal pool
0046ca60  a4 80 52 00 c0 39 00 00 c0 19 00 00 94 19 45 00  .byte 0xa4, 0x80, 0x52, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x94, 0x19, 0x45, 0x00
0046ca70  58 1a 45 00 f4 32 45 00                          .byte 0x58, 0x1a, 0x45, 0x00, 0xf4, 0x32, 0x45, 0x00

; FUNCTION 0x004db89c, declared_size=176, range_size=176, mode=arm
; class-group: void StreamReader
; alias: _ZN12StreamReader6readAsIbEEvP11IStreamBasePT_
; demangled: void StreamReader::readAs<bool>(IStreamBase*, bool*)
; decoder-mode: arm
004db89c  04 e0 2d e5                                      str lr, [sp, #-4]!
004db8a0  00 30 a0 e3                                      mov r3, #0
004db8a4  0c d0 4d e2                                      sub sp, sp, #0xc
004db8a8  00 c0 90 e5                                      ldr ip, [r0]
004db8ac  01 20 a0 e3                                      mov r2, #1
004db8b0  0f e0 a0 e1                                      mov lr, pc
004db8b4  18 f0 9c e5                                      ldr pc, [ip, #0x18]
004db8b8  74 30 9f e5                                      ldr r3, [pc, #0x74]
004db8bc  01 00 50 e3                                      cmp r0, #1
004db8c0  03 30 8f e0                                      add r3, pc, r3
004db8c4  0a 00 00 0a                                      beq #0x4db8f4
004db8c8  68 20 9f e5                                      ldr r2, [pc, #0x68]
004db8cc  02 20 93 e7                                      ldr r2, [r3, r2]
004db8d0  00 20 92 e5                                      ldr r2, [r2]
004db8d4  02 00 52 e3                                      cmp r2, #2
004db8d8  00 30 a0 03                                      moveq r3, #0
004db8dc  00 30 83 05                                      streq r3, [r3]
004db8e0  01 00 00 0a                                      beq #0x4db8ec
004db8e4  01 00 52 e3                                      cmp r2, #1
004db8e8  04 00 00 0a                                      beq #0x4db900
004db8ec  0c d0 8d e2                                      add sp, sp, #0xc
004db8f0  00 80 bd e8                                      ldm sp!, {pc}
004db8f4  00 00 51 e3                                      cmp r1, #0
004db8f8  fb ff ff 0a                                      beq #0x4db8ec
004db8fc  f1 ff ff ea                                      b #0x4db8c8
004db900  34 00 9f e5                                      ldr r0, [pc, #0x34]
004db904  34 10 9f e5                                      ldr r1, [pc, #0x34]
004db908  34 20 9f e5                                      ldr r2, [pc, #0x34]
004db90c  00 00 93 e7                                      ldr r0, [r3, r0]
004db910  30 30 9f e5                                      ldr r3, [pc, #0x30]
004db914  50 c0 a0 e3                                      mov ip, #0x50
004db918  01 10 8f e0                                      add r1, pc, r1
004db91c  02 20 8f e0                                      add r2, pc, r2
004db920  03 30 8f e0                                      add r3, pc, r3
004db924  a8 00 80 e2                                      add r0, r0, #0xa8
004db928  00 c0 8d e5                                      str ip, [sp]
004db92c  b4 c9 f8 eb                                      bl #0x30e004
004db930  ed ff ff ea                                      b #0x4db8ec
; mapping-symbol data/literal pool
004db934  d0 91 4b 00 c0 39 00 00 c0 19 00 00 c0 2a 3e 00  .byte 0xd0, 0x91, 0x4b, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xc0, 0x2a, 0x3e, 0x00
004db944  e4 2b 3e 00 20 44 3e 00                          .byte 0xe4, 0x2b, 0x3e, 0x00, 0x20, 0x44, 0x3e, 0x00

; FUNCTION 0x004db94c, declared_size=176, range_size=176, mode=arm
; class-group: void StreamReader
; alias: _ZN12StreamReader6readAsIfEEvP11IStreamBasePT_
; demangled: void StreamReader::readAs<float>(IStreamBase*, float*)
; decoder-mode: arm
004db94c  04 e0 2d e5                                      str lr, [sp, #-4]!
004db950  00 30 a0 e3                                      mov r3, #0
004db954  0c d0 4d e2                                      sub sp, sp, #0xc
004db958  00 c0 90 e5                                      ldr ip, [r0]
004db95c  04 20 a0 e3                                      mov r2, #4
004db960  0f e0 a0 e1                                      mov lr, pc
004db964  18 f0 9c e5                                      ldr pc, [ip, #0x18]
004db968  74 30 9f e5                                      ldr r3, [pc, #0x74]
004db96c  04 00 50 e3                                      cmp r0, #4
004db970  03 30 8f e0                                      add r3, pc, r3
004db974  0a 00 00 0a                                      beq #0x4db9a4
004db978  68 20 9f e5                                      ldr r2, [pc, #0x68]
004db97c  02 20 93 e7                                      ldr r2, [r3, r2]
004db980  00 20 92 e5                                      ldr r2, [r2]
004db984  02 00 52 e3                                      cmp r2, #2
004db988  00 30 a0 03                                      moveq r3, #0
004db98c  00 30 83 05                                      streq r3, [r3]
004db990  01 00 00 0a                                      beq #0x4db99c
004db994  01 00 52 e3                                      cmp r2, #1
004db998  04 00 00 0a                                      beq #0x4db9b0
004db99c  0c d0 8d e2                                      add sp, sp, #0xc
004db9a0  00 80 bd e8                                      ldm sp!, {pc}
004db9a4  00 00 51 e3                                      cmp r1, #0
004db9a8  fb ff ff 0a                                      beq #0x4db99c
004db9ac  f1 ff ff ea                                      b #0x4db978
004db9b0  34 00 9f e5                                      ldr r0, [pc, #0x34]
004db9b4  34 10 9f e5                                      ldr r1, [pc, #0x34]
004db9b8  34 20 9f e5                                      ldr r2, [pc, #0x34]
004db9bc  00 00 93 e7                                      ldr r0, [r3, r0]
004db9c0  30 30 9f e5                                      ldr r3, [pc, #0x30]
004db9c4  50 c0 a0 e3                                      mov ip, #0x50
004db9c8  01 10 8f e0                                      add r1, pc, r1
004db9cc  02 20 8f e0                                      add r2, pc, r2
004db9d0  03 30 8f e0                                      add r3, pc, r3
004db9d4  a8 00 80 e2                                      add r0, r0, #0xa8
004db9d8  00 c0 8d e5                                      str ip, [sp]
004db9dc  88 c9 f8 eb                                      bl #0x30e004
004db9e0  ed ff ff ea                                      b #0x4db99c
; mapping-symbol data/literal pool
004db9e4  20 91 4b 00 c0 39 00 00 c0 19 00 00 10 2a 3e 00  .byte 0x20, 0x91, 0x4b, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x10, 0x2a, 0x3e, 0x00
004db9f4  34 2b 3e 00 70 43 3e 00                          .byte 0x34, 0x2b, 0x3e, 0x00, 0x70, 0x43, 0x3e, 0x00

; FUNCTION 0x004db9fc, declared_size=176, range_size=176, mode=arm
; class-group: void StreamReader
; alias: _ZN12StreamReader6readAsIaEEvP11IStreamBasePT_
; demangled: void StreamReader::readAs<signed char>(IStreamBase*, signed char*)
; decoder-mode: arm
004db9fc  04 e0 2d e5                                      str lr, [sp, #-4]!
004dba00  00 30 a0 e3                                      mov r3, #0
004dba04  0c d0 4d e2                                      sub sp, sp, #0xc
004dba08  00 c0 90 e5                                      ldr ip, [r0]
004dba0c  01 20 a0 e3                                      mov r2, #1
004dba10  0f e0 a0 e1                                      mov lr, pc
004dba14  18 f0 9c e5                                      ldr pc, [ip, #0x18]
004dba18  74 30 9f e5                                      ldr r3, [pc, #0x74]
004dba1c  01 00 50 e3                                      cmp r0, #1
004dba20  03 30 8f e0                                      add r3, pc, r3
004dba24  0a 00 00 0a                                      beq #0x4dba54
004dba28  68 20 9f e5                                      ldr r2, [pc, #0x68]
004dba2c  02 20 93 e7                                      ldr r2, [r3, r2]
004dba30  00 20 92 e5                                      ldr r2, [r2]
004dba34  02 00 52 e3                                      cmp r2, #2
004dba38  00 30 a0 03                                      moveq r3, #0
004dba3c  00 30 83 05                                      streq r3, [r3]
004dba40  01 00 00 0a                                      beq #0x4dba4c
004dba44  01 00 52 e3                                      cmp r2, #1
004dba48  04 00 00 0a                                      beq #0x4dba60
004dba4c  0c d0 8d e2                                      add sp, sp, #0xc
004dba50  00 80 bd e8                                      ldm sp!, {pc}
004dba54  00 00 51 e3                                      cmp r1, #0
004dba58  fb ff ff 0a                                      beq #0x4dba4c
004dba5c  f1 ff ff ea                                      b #0x4dba28
004dba60  34 00 9f e5                                      ldr r0, [pc, #0x34]
004dba64  34 10 9f e5                                      ldr r1, [pc, #0x34]
004dba68  34 20 9f e5                                      ldr r2, [pc, #0x34]
004dba6c  00 00 93 e7                                      ldr r0, [r3, r0]
004dba70  30 30 9f e5                                      ldr r3, [pc, #0x30]
004dba74  50 c0 a0 e3                                      mov ip, #0x50
004dba78  01 10 8f e0                                      add r1, pc, r1
004dba7c  02 20 8f e0                                      add r2, pc, r2
004dba80  03 30 8f e0                                      add r3, pc, r3
004dba84  a8 00 80 e2                                      add r0, r0, #0xa8
004dba88  00 c0 8d e5                                      str ip, [sp]
004dba8c  5c c9 f8 eb                                      bl #0x30e004
004dba90  ed ff ff ea                                      b #0x4dba4c
; mapping-symbol data/literal pool
004dba94  70 90 4b 00 c0 39 00 00 c0 19 00 00 60 29 3e 00  .byte 0x70, 0x90, 0x4b, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x60, 0x29, 0x3e, 0x00
004dbaa4  84 2a 3e 00 c0 42 3e 00                          .byte 0x84, 0x2a, 0x3e, 0x00, 0xc0, 0x42, 0x3e, 0x00

; FUNCTION 0x004dbaac, declared_size=176, range_size=176, mode=arm
; class-group: void StreamReader
; alias: _ZN12StreamReader6readAsIsEEvP11IStreamBasePT_
; demangled: void StreamReader::readAs<short>(IStreamBase*, short*)
; decoder-mode: arm
004dbaac  04 e0 2d e5                                      str lr, [sp, #-4]!
004dbab0  00 30 a0 e3                                      mov r3, #0
004dbab4  0c d0 4d e2                                      sub sp, sp, #0xc
004dbab8  00 c0 90 e5                                      ldr ip, [r0]
004dbabc  02 20 a0 e3                                      mov r2, #2
004dbac0  0f e0 a0 e1                                      mov lr, pc
004dbac4  18 f0 9c e5                                      ldr pc, [ip, #0x18]
004dbac8  74 30 9f e5                                      ldr r3, [pc, #0x74]
004dbacc  02 00 50 e3                                      cmp r0, #2
004dbad0  03 30 8f e0                                      add r3, pc, r3
004dbad4  0a 00 00 0a                                      beq #0x4dbb04
004dbad8  68 20 9f e5                                      ldr r2, [pc, #0x68]
004dbadc  02 20 93 e7                                      ldr r2, [r3, r2]
004dbae0  00 20 92 e5                                      ldr r2, [r2]
004dbae4  02 00 52 e3                                      cmp r2, #2
004dbae8  00 30 a0 03                                      moveq r3, #0
004dbaec  00 30 83 05                                      streq r3, [r3]
004dbaf0  01 00 00 0a                                      beq #0x4dbafc
004dbaf4  01 00 52 e3                                      cmp r2, #1
004dbaf8  04 00 00 0a                                      beq #0x4dbb10
004dbafc  0c d0 8d e2                                      add sp, sp, #0xc
004dbb00  00 80 bd e8                                      ldm sp!, {pc}
004dbb04  00 00 51 e3                                      cmp r1, #0
004dbb08  fb ff ff 0a                                      beq #0x4dbafc
004dbb0c  f1 ff ff ea                                      b #0x4dbad8
004dbb10  34 00 9f e5                                      ldr r0, [pc, #0x34]
004dbb14  34 10 9f e5                                      ldr r1, [pc, #0x34]
004dbb18  34 20 9f e5                                      ldr r2, [pc, #0x34]
004dbb1c  00 00 93 e7                                      ldr r0, [r3, r0]
004dbb20  30 30 9f e5                                      ldr r3, [pc, #0x30]
004dbb24  50 c0 a0 e3                                      mov ip, #0x50
004dbb28  01 10 8f e0                                      add r1, pc, r1
004dbb2c  02 20 8f e0                                      add r2, pc, r2
004dbb30  03 30 8f e0                                      add r3, pc, r3
004dbb34  a8 00 80 e2                                      add r0, r0, #0xa8
004dbb38  00 c0 8d e5                                      str ip, [sp]
004dbb3c  30 c9 f8 eb                                      bl #0x30e004
004dbb40  ed ff ff ea                                      b #0x4dbafc
; mapping-symbol data/literal pool
004dbb44  c0 8f 4b 00 c0 39 00 00 c0 19 00 00 b0 28 3e 00  .byte 0xc0, 0x8f, 0x4b, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xb0, 0x28, 0x3e, 0x00
004dbb54  d4 29 3e 00 10 42 3e 00                          .byte 0xd4, 0x29, 0x3e, 0x00, 0x10, 0x42, 0x3e, 0x00

; FUNCTION 0x005075b8, declared_size=176, range_size=176, mode=arm
; class-group: void StreamReader
; alias: _ZN12StreamReader6readAsItEEvP11IStreamBasePT_
; demangled: void StreamReader::readAs<unsigned short>(IStreamBase*, unsigned short*)
; decoder-mode: arm
005075b8  04 e0 2d e5                                      str lr, [sp, #-4]!
005075bc  00 30 a0 e3                                      mov r3, #0
005075c0  0c d0 4d e2                                      sub sp, sp, #0xc
005075c4  00 c0 90 e5                                      ldr ip, [r0]
005075c8  02 20 a0 e3                                      mov r2, #2
005075cc  0f e0 a0 e1                                      mov lr, pc
005075d0  18 f0 9c e5                                      ldr pc, [ip, #0x18]
005075d4  74 30 9f e5                                      ldr r3, [pc, #0x74]
005075d8  02 00 50 e3                                      cmp r0, #2
005075dc  03 30 8f e0                                      add r3, pc, r3
005075e0  0a 00 00 0a                                      beq #0x507610
005075e4  68 20 9f e5                                      ldr r2, [pc, #0x68]
005075e8  02 20 93 e7                                      ldr r2, [r3, r2]
005075ec  00 20 92 e5                                      ldr r2, [r2]
005075f0  02 00 52 e3                                      cmp r2, #2
005075f4  00 30 a0 03                                      moveq r3, #0
005075f8  00 30 83 05                                      streq r3, [r3]
005075fc  01 00 00 0a                                      beq #0x507608
00507600  01 00 52 e3                                      cmp r2, #1
00507604  04 00 00 0a                                      beq #0x50761c
00507608  0c d0 8d e2                                      add sp, sp, #0xc
0050760c  00 80 bd e8                                      ldm sp!, {pc}
00507610  00 00 51 e3                                      cmp r1, #0
00507614  fb ff ff 0a                                      beq #0x507608
00507618  f1 ff ff ea                                      b #0x5075e4
0050761c  34 00 9f e5                                      ldr r0, [pc, #0x34]
00507620  34 10 9f e5                                      ldr r1, [pc, #0x34]
00507624  34 20 9f e5                                      ldr r2, [pc, #0x34]
00507628  00 00 93 e7                                      ldr r0, [r3, r0]
0050762c  30 30 9f e5                                      ldr r3, [pc, #0x30]
00507630  50 c0 a0 e3                                      mov ip, #0x50
00507634  01 10 8f e0                                      add r1, pc, r1
00507638  02 20 8f e0                                      add r2, pc, r2
0050763c  03 30 8f e0                                      add r3, pc, r3
00507640  a8 00 80 e2                                      add r0, r0, #0xa8
00507644  00 c0 8d e5                                      str ip, [sp]
00507648  6d 1a f8 eb                                      bl #0x30e004
0050764c  ed ff ff ea                                      b #0x507608
; mapping-symbol data/literal pool
00507650  b4 d4 48 00 c0 39 00 00 c0 19 00 00 a4 6d 3b 00  .byte 0xb4, 0xd4, 0x48, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xa4, 0x6d, 0x3b, 0x00
00507660  c8 6e 3b 00 04 87 3b 00                          .byte 0xc8, 0x6e, 0x3b, 0x00, 0x04, 0x87, 0x3b, 0x00
