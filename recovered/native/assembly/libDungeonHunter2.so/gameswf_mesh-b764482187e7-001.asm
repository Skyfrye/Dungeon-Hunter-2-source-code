; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00779388, declared_size=56, range_size=56, mode=arm
; class-group: gameswf::mesh
; alias: _ZN7gameswf4meshC2Ev
; demangled: gameswf::mesh::mesh()
; decoder-mode: arm
00779388  00 20 a0 e3                                      mov r2, #0
0077938c  2c 20 c0 e5                                      strb r2, [r0, #0x2c]
00779390  00 20 80 e5                                      str r2, [r0]
00779394  04 20 80 e5                                      str r2, [r0, #4]
00779398  08 20 80 e5                                      str r2, [r0, #8]
0077939c  0c 20 c0 e5                                      strb r2, [r0, #0xc]
007793a0  10 20 80 e5                                      str r2, [r0, #0x10]
007793a4  14 20 80 e5                                      str r2, [r0, #0x14]
007793a8  18 20 80 e5                                      str r2, [r0, #0x18]
007793ac  1c 20 c0 e5                                      strb r2, [r0, #0x1c]
007793b0  20 20 80 e5                                      str r2, [r0, #0x20]
007793b4  24 20 80 e5                                      str r2, [r0, #0x24]
007793b8  28 20 80 e5                                      str r2, [r0, #0x28]
007793bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x007793c0, declared_size=56, range_size=56, mode=arm
; class-group: gameswf::mesh
; alias: _ZN7gameswf4meshC1Ev
; demangled: gameswf::mesh::mesh()
; decoder-mode: arm
007793c0  00 20 a0 e3                                      mov r2, #0
007793c4  2c 20 c0 e5                                      strb r2, [r0, #0x2c]
007793c8  00 20 80 e5                                      str r2, [r0]
007793cc  04 20 80 e5                                      str r2, [r0, #4]
007793d0  08 20 80 e5                                      str r2, [r0, #8]
007793d4  0c 20 c0 e5                                      strb r2, [r0, #0xc]
007793d8  10 20 80 e5                                      str r2, [r0, #0x10]
007793dc  14 20 80 e5                                      str r2, [r0, #0x14]
007793e0  18 20 80 e5                                      str r2, [r0, #0x18]
007793e4  1c 20 c0 e5                                      strb r2, [r0, #0x1c]
007793e8  20 20 80 e5                                      str r2, [r0, #0x20]
007793ec  24 20 80 e5                                      str r2, [r0, #0x24]
007793f0  28 20 80 e5                                      str r2, [r0, #0x28]
007793f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007793f8, declared_size=216, range_size=216, mode=arm
; class-group: gameswf::mesh
; alias: _ZNK7gameswf4mesh7displayERKNS_15base_fill_styleEf
; demangled: gameswf::mesh::display(gameswf::base_fill_style const&, float) const
; decoder-mode: arm
007793f8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007793fc  04 30 90 e5                                      ldr r3, [r0, #4]
00779400  c0 60 9f e5                                      ldr r6, [pc, #0xc0]
00779404  0c d0 4d e2                                      sub sp, sp, #0xc
00779408  00 00 53 e3                                      cmp r3, #0
0077940c  06 60 8f e0                                      add r6, pc, r6
00779410  00 50 a0 e1                                      mov r5, r0
00779414  01 40 a0 e1                                      mov r4, r1
00779418  02 70 a0 e1                                      mov r7, r2
0077941c  0f 00 00 da                                      ble #0x779460
00779420  00 30 91 e5                                      ldr r3, [r1]
00779424  01 00 a0 e1                                      mov r0, r1
00779428  00 10 a0 e3                                      mov r1, #0
0077942c  0f e0 a0 e1                                      mov lr, pc
00779430  08 f0 93 e5                                      ldr pc, [r3, #8]
00779434  90 30 9f e5                                      ldr r3, [pc, #0x90]
00779438  06 00 95 e8                                      ldm r5, {r1, r2}
0077943c  03 30 96 e7                                      ldr r3, [r6, r3]
00779440  00 30 93 e5                                      ldr r3, [r3]
00779444  00 00 53 e3                                      cmp r3, #0
00779448  04 00 00 0a                                      beq #0x779460
0077944c  03 00 a0 e1                                      mov r0, r3
00779450  c2 20 a0 e1                                      asr r2, r2, #1
00779454  00 30 93 e5                                      ldr r3, [r3]
00779458  0f e0 a0 e1                                      mov lr, pc
0077945c  58 f0 93 e5                                      ldr pc, [r3, #0x58]
00779460  14 30 95 e5                                      ldr r3, [r5, #0x14]
00779464  00 00 53 e3                                      cmp r3, #0
00779468  14 00 00 da                                      ble #0x7794c0
0077946c  04 00 a0 e1                                      mov r0, r4
00779470  00 30 94 e5                                      ldr r3, [r4]
00779474  07 20 a0 e1                                      mov r2, r7
00779478  00 10 a0 e3                                      mov r1, #0
0077947c  0f e0 a0 e1                                      mov lr, pc
00779480  08 f0 93 e5                                      ldr pc, [r3, #8]
00779484  40 30 9f e5                                      ldr r3, [pc, #0x40]
00779488  24 40 95 e5                                      ldr r4, [r5, #0x24]
0077948c  10 10 95 e5                                      ldr r1, [r5, #0x10]
00779490  03 00 96 e7                                      ldr r0, [r6, r3]
00779494  14 20 95 e5                                      ldr r2, [r5, #0x14]
00779498  20 30 95 e5                                      ldr r3, [r5, #0x20]
0077949c  00 c0 90 e5                                      ldr ip, [r0]
007794a0  00 00 5c e3                                      cmp ip, #0
007794a4  05 00 00 0a                                      beq #0x7794c0
007794a8  0c 00 a0 e1                                      mov r0, ip
007794ac  c2 20 a0 e1                                      asr r2, r2, #1
007794b0  00 c0 9c e5                                      ldr ip, [ip]
007794b4  00 40 8d e5                                      str r4, [sp]
007794b8  0f e0 a0 e1                                      mov lr, pc
007794bc  5c f0 9c e5                                      ldr pc, [ip, #0x5c]
007794c0  0c d0 8d e2                                      add sp, sp, #0xc
007794c4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
007794c8  84 b6 21 00 b4 39 00 00                          .byte 0x84, 0xb6, 0x21, 0x00, 0xb4, 0x39, 0x00, 0x00

; FUNCTION 0x00779e6c, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::mesh
; alias: _ZN7gameswf4mesh17reserve_trianglesEi
; demangled: gameswf::mesh::reserve_triangles(int)
; decoder-mode: arm
00779e6c  06 30 a0 e3                                      mov r3, #6
00779e70  93 01 01 e0                                      mul r1, r3, r1
00779e74  10 00 80 e2                                      add r0, r0, #0x10
00779e78  dc ff ff ea                                      b #0x779df0

; FUNCTION 0x0077b62c, declared_size=40, range_size=40, mode=arm
; class-group: gameswf::mesh
; alias: _ZN7gameswf4mesh18output_cached_dataEPNS_7tu_fileE
; demangled: gameswf::mesh::output_cached_data(gameswf::tu_file*)
; decoder-mode: arm
0077b62c  70 40 2d e9                                      push {r4, r5, r6, lr}
0077b630  00 40 a0 e1                                      mov r4, r0
0077b634  01 50 a0 e1                                      mov r5, r1
0077b638  01 00 a0 e1                                      mov r0, r1
0077b63c  04 10 a0 e1                                      mov r1, r4
0077b640  e1 ff ff eb                                      bl #0x77b5cc
0077b644  05 00 a0 e1                                      mov r0, r5
0077b648  10 10 84 e2                                      add r1, r4, #0x10
0077b64c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0077b650  dd ff ff ea                                      b #0x77b5cc

; FUNCTION 0x0077b988, declared_size=132, range_size=132, mode=arm
; class-group: gameswf::mesh
; alias: _ZN7gameswf4mesh12add_triangleEPKf
; demangled: gameswf::mesh::add_triangle(float const*)
; decoder-mode: arm
0077b988  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0077b98c  14 70 90 e5                                      ldr r7, [r0, #0x14]
0077b990  00 50 a0 e1                                      mov r5, r0
0077b994  01 60 a0 e1                                      mov r6, r1
0077b998  06 80 97 e2                                      adds r8, r7, #6
0077b99c  10 40 80 e2                                      add r4, r0, #0x10
0077b9a0  02 00 00 0a                                      beq #0x77b9b0
0077b9a4  18 30 90 e5                                      ldr r3, [r0, #0x18]
0077b9a8  03 00 58 e1                                      cmp r8, r3
0077b9ac  12 00 00 ca                                      bgt #0x77b9fc
0077b9b0  00 10 a0 e3                                      mov r1, #0
0077b9b4  07 71 a0 e1                                      lsl r7, r7, #2
0077b9b8  00 30 a0 e3                                      mov r3, #0
0077b9bc  00 20 94 e5                                      ldr r2, [r4]
0077b9c0  07 20 82 e0                                      add r2, r2, r7
0077b9c4  03 10 82 e7                                      str r1, [r2, r3]
0077b9c8  04 30 83 e2                                      add r3, r3, #4
0077b9cc  18 00 53 e3                                      cmp r3, #0x18
0077b9d0  f9 ff ff 1a                                      bne #0x77b9bc
0077b9d4  14 80 85 e5                                      str r8, [r5, #0x14]
0077b9d8  00 30 a0 e3                                      mov r3, #0
0077b9dc  10 20 95 e5                                      ldr r2, [r5, #0x10]
0077b9e0  03 10 96 e7                                      ldr r1, [r6, r3]
0077b9e4  07 20 82 e0                                      add r2, r2, r7
0077b9e8  03 10 82 e7                                      str r1, [r2, r3]
0077b9ec  04 30 83 e2                                      add r3, r3, #4
0077b9f0  18 00 53 e3                                      cmp r3, #0x18
0077b9f4  f8 ff ff 1a                                      bne #0x77b9dc
0077b9f8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0077b9fc  04 00 a0 e1                                      mov r0, r4
0077ba00  c8 10 88 e0                                      add r1, r8, r8, asr #1
0077ba04  f9 f8 ff eb                                      bl #0x779df0
0077ba08  e8 ff ff ea                                      b #0x77b9b0

; FUNCTION 0x0077ba0c, declared_size=176, range_size=176, mode=arm
; class-group: gameswf::mesh
; alias: _ZN7gameswf4mesh13set_tri_stripEPKNS_5pointEi
; demangled: gameswf::mesh::set_tri_strip(gameswf::point const*, int)
; decoder-mode: arm
0077ba0c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0077ba10  82 60 b0 e1                                      lsls r6, r2, #1
0077ba14  0c d0 4d e2                                      sub sp, sp, #0xc
0077ba18  00 40 a0 e1                                      mov r4, r0
0077ba1c  01 70 a0 e1                                      mov r7, r1
0077ba20  04 50 90 e5                                      ldr r5, [r0, #4]
0077ba24  02 00 00 0a                                      beq #0x77ba34
0077ba28  08 30 90 e5                                      ldr r3, [r0, #8]
0077ba2c  03 00 56 e1                                      cmp r6, r3
0077ba30  1c 00 00 ca                                      bgt #0x77baa8
0077ba34  05 00 56 e1                                      cmp r6, r5
0077ba38  07 00 00 da                                      ble #0x77ba5c
0077ba3c  00 00 a0 e3                                      mov r0, #0
0077ba40  05 31 a0 e1                                      lsl r3, r5, #2
0077ba44  00 10 94 e5                                      ldr r1, [r4]
0077ba48  01 50 85 e2                                      add r5, r5, #1
0077ba4c  06 00 55 e1                                      cmp r5, r6
0077ba50  03 00 81 e7                                      str r0, [r1, r3]
0077ba54  04 30 83 e2                                      add r3, r3, #4
0077ba58  f9 ff ff 1a                                      bne #0x77ba44
0077ba5c  00 00 52 e3                                      cmp r2, #0
0077ba60  04 60 84 e5                                      str r6, [r4, #4]
0077ba64  0d 00 00 da                                      ble #0x77baa0
0077ba68  00 30 a0 e3                                      mov r3, #0
0077ba6c  03 00 a0 e1                                      mov r0, r3
0077ba70  07 10 a0 e1                                      mov r1, r7
0077ba74  03 50 b1 e7                                      ldr r5, [r1, r3]!
0077ba78  00 c0 94 e5                                      ldr ip, [r4]
0077ba7c  01 00 80 e2                                      add r0, r0, #1
0077ba80  02 00 50 e1                                      cmp r0, r2
0077ba84  03 50 8c e7                                      str r5, [ip, r3]
0077ba88  00 50 94 e5                                      ldr r5, [r4]
0077ba8c  04 c0 91 e5                                      ldr ip, [r1, #4]
0077ba90  03 10 85 e0                                      add r1, r5, r3
0077ba94  04 c0 81 e5                                      str ip, [r1, #4]
0077ba98  08 30 83 e2                                      add r3, r3, #8
0077ba9c  f3 ff ff 1a                                      bne #0x77ba70
0077baa0  0c d0 8d e2                                      add sp, sp, #0xc
0077baa4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0077baa8  c6 10 86 e0                                      add r1, r6, r6, asr #1
0077baac  04 20 8d e5                                      str r2, [sp, #4]
0077bab0  ce f8 ff eb                                      bl #0x779df0
0077bab4  04 20 9d e5                                      ldr r2, [sp, #4]
0077bab8  dd ff ff ea                                      b #0x77ba34

; FUNCTION 0x0077bbe4, declared_size=40, range_size=40, mode=arm
; class-group: gameswf::mesh
; alias: _ZN7gameswf4mesh17input_cached_dataEPNS_7tu_fileE
; demangled: gameswf::mesh::input_cached_data(gameswf::tu_file*)
; decoder-mode: arm
0077bbe4  70 40 2d e9                                      push {r4, r5, r6, lr}
0077bbe8  00 40 a0 e1                                      mov r4, r0
0077bbec  01 50 a0 e1                                      mov r5, r1
0077bbf0  01 00 a0 e1                                      mov r0, r1
0077bbf4  04 10 a0 e1                                      mov r1, r4
0077bbf8  be ff ff eb                                      bl #0x77baf8
0077bbfc  05 00 a0 e1                                      mov r0, r5
0077bc00  10 10 84 e2                                      add r1, r4, #0x10
0077bc04  70 40 bd e8                                      pop {r4, r5, r6, lr}
0077bc08  ba ff ff ea                                      b #0x77baf8

; FUNCTION 0x0077bf20, declared_size=228, range_size=228, mode=arm
; class-group: gameswf::mesh
; alias: _ZN7gameswf4meshD1Ev
; demangled: gameswf::mesh::~mesh()
; decoder-mode: arm
0077bf20  10 40 2d e9                                      push {r4, lr}
0077bf24  24 30 90 e5                                      ldr r3, [r0, #0x24]
0077bf28  00 40 a0 e1                                      mov r4, r0
0077bf2c  20 00 80 e2                                      add r0, r0, #0x20
0077bf30  00 00 53 e3                                      cmp r3, #0
0077bf34  12 00 00 da                                      ble #0x77bf84
0077bf38  00 10 a0 e3                                      mov r1, #0
0077bf3c  24 10 84 e5                                      str r1, [r4, #0x24]
0077bf40  cd f7 ff eb                                      bl #0x779e7c
0077bf44  14 30 94 e5                                      ldr r3, [r4, #0x14]
0077bf48  10 00 84 e2                                      add r0, r4, #0x10
0077bf4c  00 00 53 e3                                      cmp r3, #0
0077bf50  14 00 00 da                                      ble #0x77bfa8
0077bf54  00 10 a0 e3                                      mov r1, #0
0077bf58  14 10 84 e5                                      str r1, [r4, #0x14]
0077bf5c  a3 f7 ff eb                                      bl #0x779df0
0077bf60  04 30 94 e5                                      ldr r3, [r4, #4]
0077bf64  00 00 53 e3                                      cmp r3, #0
0077bf68  17 00 00 da                                      ble #0x77bfcc
0077bf6c  00 10 a0 e3                                      mov r1, #0
0077bf70  04 00 a0 e1                                      mov r0, r4
0077bf74  04 10 84 e5                                      str r1, [r4, #4]
0077bf78  9c f7 ff eb                                      bl #0x779df0
0077bf7c  04 00 a0 e1                                      mov r0, r4
0077bf80  10 80 bd e8                                      pop {r4, pc}
0077bf84  eb ff ff aa                                      bge #0x77bf38
0077bf88  83 20 a0 e1                                      lsl r2, r3, #1
0077bf8c  00 10 90 e5                                      ldr r1, [r0]
0077bf90  00 c0 a0 e3                                      mov ip, #0
0077bf94  01 30 93 e2                                      adds r3, r3, #1
0077bf98  b2 c0 81 e1                                      strh ip, [r1, r2]
0077bf9c  02 20 82 e2                                      add r2, r2, #2
0077bfa0  f9 ff ff 1a                                      bne #0x77bf8c
0077bfa4  e3 ff ff ea                                      b #0x77bf38
0077bfa8  e9 ff ff aa                                      bge #0x77bf54
0077bfac  00 c0 a0 e3                                      mov ip, #0
0077bfb0  03 21 a0 e1                                      lsl r2, r3, #2
0077bfb4  00 10 90 e5                                      ldr r1, [r0]
0077bfb8  01 30 93 e2                                      adds r3, r3, #1
0077bfbc  02 c0 81 e7                                      str ip, [r1, r2]
0077bfc0  04 20 82 e2                                      add r2, r2, #4
0077bfc4  fa ff ff 1a                                      bne #0x77bfb4
0077bfc8  e1 ff ff ea                                      b #0x77bf54
0077bfcc  e6 ff ff aa                                      bge #0x77bf6c
0077bfd0  00 00 a0 e3                                      mov r0, #0
0077bfd4  03 21 a0 e1                                      lsl r2, r3, #2
0077bfd8  00 10 94 e5                                      ldr r1, [r4]
0077bfdc  01 30 93 e2                                      adds r3, r3, #1
0077bfe0  02 00 81 e7                                      str r0, [r1, r2]
0077bfe4  04 20 82 e2                                      add r2, r2, #4
0077bfe8  fa ff ff 1a                                      bne #0x77bfd8
0077bfec  00 10 a0 e3                                      mov r1, #0
0077bff0  04 00 a0 e1                                      mov r0, r4
0077bff4  04 10 84 e5                                      str r1, [r4, #4]
0077bff8  7c f7 ff eb                                      bl #0x779df0
0077bffc  04 00 a0 e1                                      mov r0, r4
0077c000  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0077ca1c, declared_size=320, range_size=320, mode=arm
; class-group: gameswf::mesh
; alias: _ZN7gameswf4mesh13set_trianglesEPKfiPKti
; demangled: gameswf::mesh::set_triangles(float const*, int, unsigned short const*, int)
; decoder-mode: arm
0077ca1c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0077ca20  00 50 52 e2                                      subs r5, r2, #0
0077ca24  08 d0 4d e2                                      sub sp, sp, #8
0077ca28  00 40 a0 e1                                      mov r4, r0
0077ca2c  01 60 a0 e1                                      mov r6, r1
0077ca30  28 80 9d e5                                      ldr r8, [sp, #0x28]
0077ca34  18 00 00 da                                      ble #0x77ca9c
0077ca38  14 90 90 e5                                      ldr sb, [r0, #0x14]
0077ca3c  10 a0 80 e2                                      add sl, r0, #0x10
0077ca40  09 70 95 e0                                      adds r7, r5, sb
0077ca44  3b 00 00 1a                                      bne #0x77cb38
0077ca48  07 00 59 e1                                      cmp sb, r7
0077ca4c  09 11 a0 a1                                      lslge r1, sb, #2
0077ca50  08 00 00 aa                                      bge #0x77ca78
0077ca54  09 11 a0 e1                                      lsl r1, sb, #2
0077ca58  00 00 a0 e3                                      mov r0, #0
0077ca5c  01 20 a0 e1                                      mov r2, r1
0077ca60  00 c0 9a e5                                      ldr ip, [sl]
0077ca64  01 90 89 e2                                      add sb, sb, #1
0077ca68  07 00 59 e1                                      cmp sb, r7
0077ca6c  02 00 8c e7                                      str r0, [ip, r2]
0077ca70  04 20 82 e2                                      add r2, r2, #4
0077ca74  f9 ff ff 1a                                      bne #0x77ca60
0077ca78  14 70 84 e5                                      str r7, [r4, #0x14]
0077ca7c  00 20 a0 e3                                      mov r2, #0
0077ca80  02 c1 96 e7                                      ldr ip, [r6, r2, lsl #2]
0077ca84  10 00 94 e5                                      ldr r0, [r4, #0x10]
0077ca88  01 20 82 e2                                      add r2, r2, #1
0077ca8c  05 00 52 e1                                      cmp r2, r5
0077ca90  01 c0 80 e7                                      str ip, [r0, r1]
0077ca94  04 10 81 e2                                      add r1, r1, #4
0077ca98  f8 ff ff 1a                                      bne #0x77ca80
0077ca9c  00 00 58 e3                                      cmp r8, #0
0077caa0  19 00 00 da                                      ble #0x77cb0c
0077caa4  24 70 94 e5                                      ldr r7, [r4, #0x24]
0077caa8  20 60 84 e2                                      add r6, r4, #0x20
0077caac  07 50 98 e0                                      adds r5, r8, r7
0077cab0  17 00 00 1a                                      bne #0x77cb14
0077cab4  05 00 57 e1                                      cmp r7, r5
0077cab8  87 c0 a0 a1                                      lslge ip, r7, #1
0077cabc  08 00 00 aa                                      bge #0x77cae4
0077cac0  87 c0 a0 e1                                      lsl ip, r7, #1
0077cac4  0c 20 a0 e1                                      mov r2, ip
0077cac8  00 10 96 e5                                      ldr r1, [r6]
0077cacc  01 70 87 e2                                      add r7, r7, #1
0077cad0  00 00 a0 e3                                      mov r0, #0
0077cad4  05 00 57 e1                                      cmp r7, r5
0077cad8  b2 00 81 e1                                      strh r0, [r1, r2]
0077cadc  02 20 82 e2                                      add r2, r2, #2
0077cae0  f8 ff ff 1a                                      bne #0x77cac8
0077cae4  24 50 84 e5                                      str r5, [r4, #0x24]
0077cae8  88 80 a0 e1                                      lsl r8, r8, #1
0077caec  00 20 a0 e3                                      mov r2, #0
0077caf0  b2 50 93 e1                                      ldrh r5, [r3, r2]
0077caf4  20 00 94 e5                                      ldr r0, [r4, #0x20]
0077caf8  02 10 8c e0                                      add r1, ip, r2
0077cafc  02 20 82 e2                                      add r2, r2, #2
0077cb00  08 00 52 e1                                      cmp r2, r8
0077cb04  b1 50 80 e1                                      strh r5, [r0, r1]
0077cb08  f8 ff ff 1a                                      bne #0x77caf0
0077cb0c  08 d0 8d e2                                      add sp, sp, #8
0077cb10  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0077cb14  28 20 94 e5                                      ldr r2, [r4, #0x28]
0077cb18  02 00 55 e1                                      cmp r5, r2
0077cb1c  e4 ff ff da                                      ble #0x77cab4
0077cb20  06 00 a0 e1                                      mov r0, r6
0077cb24  c5 10 85 e0                                      add r1, r5, r5, asr #1
0077cb28  04 30 8d e5                                      str r3, [sp, #4]
0077cb2c  d2 f4 ff eb                                      bl #0x779e7c
0077cb30  04 30 9d e5                                      ldr r3, [sp, #4]
0077cb34  de ff ff ea                                      b #0x77cab4
0077cb38  18 20 90 e5                                      ldr r2, [r0, #0x18]
0077cb3c  02 00 57 e1                                      cmp r7, r2
0077cb40  c0 ff ff da                                      ble #0x77ca48
0077cb44  0a 00 a0 e1                                      mov r0, sl
0077cb48  c7 10 87 e0                                      add r1, r7, r7, asr #1
0077cb4c  04 30 8d e5                                      str r3, [sp, #4]
0077cb50  a6 f4 ff eb                                      bl #0x779df0
0077cb54  04 30 9d e5                                      ldr r3, [sp, #4]
0077cb58  ba ff ff ea                                      b #0x77ca48
