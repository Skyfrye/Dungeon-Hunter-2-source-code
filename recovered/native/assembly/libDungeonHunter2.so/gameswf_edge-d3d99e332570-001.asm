; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007790a0, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::edge
; alias: _ZN7gameswf4edgeC2Ev
; demangled: gameswf::edge::edge()
; decoder-mode: arm
007790a0  00 20 a0 e3                                      mov r2, #0
007790a4  0c 20 80 e5                                      str r2, [r0, #0xc]
007790a8  00 20 80 e5                                      str r2, [r0]
007790ac  04 20 80 e5                                      str r2, [r0, #4]
007790b0  08 20 80 e5                                      str r2, [r0, #8]
007790b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007790b8, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::edge
; alias: _ZN7gameswf4edgeC1Ev
; demangled: gameswf::edge::edge()
; decoder-mode: arm
007790b8  00 20 a0 e3                                      mov r2, #0
007790bc  0c 20 80 e5                                      str r2, [r0, #0xc]
007790c0  00 20 80 e5                                      str r2, [r0]
007790c4  04 20 80 e5                                      str r2, [r0, #4]
007790c8  08 20 80 e5                                      str r2, [r0, #8]
007790cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x007790d0, declared_size=264, range_size=264, mode=arm
; class-group: gameswf::edge
; alias: _ZN7gameswf4edgeC2Effff
; demangled: gameswf::edge::edge(float, float, float, float)
; decoder-mode: arm
007790d0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007790d4  01 50 a0 e1                                      mov r5, r1
007790d8  00 40 a0 e1                                      mov r4, r0
007790dc  02 15 e0 e3                                      mvn r1, #0x800000
007790e0  05 00 a0 e1                                      mov r0, r5
007790e4  02 60 a0 e1                                      mov r6, r2
007790e8  03 80 a0 e1                                      mov r8, r3
007790ec  f0 54 ee eb                                      bl #0x30e4b4
007790f0  00 00 50 e3                                      cmp r0, #0
007790f4  18 70 9d e5                                      ldr r7, [sp, #0x18]
007790f8  34 00 00 0a                                      beq #0x7791d0
007790fc  02 11 e0 e3                                      mvn r1, #0x80000000
00779100  05 00 a0 e1                                      mov r0, r5
00779104  02 15 41 e2                                      sub r1, r1, #0x800000
00779108  27 56 ee eb                                      bl #0x30e9ac
0077910c  00 00 50 e3                                      cmp r0, #0
00779110  2e 00 00 0a                                      beq #0x7791d0
00779114  00 50 84 e5                                      str r5, [r4]
00779118  06 00 a0 e1                                      mov r0, r6
0077911c  02 15 e0 e3                                      mvn r1, #0x800000
00779120  e3 54 ee eb                                      bl #0x30e4b4
00779124  00 00 50 e3                                      cmp r0, #0
00779128  26 00 00 0a                                      beq #0x7791c8
0077912c  02 11 e0 e3                                      mvn r1, #0x80000000
00779130  06 00 a0 e1                                      mov r0, r6
00779134  02 15 41 e2                                      sub r1, r1, #0x800000
00779138  1b 56 ee eb                                      bl #0x30e9ac
0077913c  00 00 50 e3                                      cmp r0, #0
00779140  20 00 00 0a                                      beq #0x7791c8
00779144  04 60 84 e5                                      str r6, [r4, #4]
00779148  08 00 a0 e1                                      mov r0, r8
0077914c  02 15 e0 e3                                      mvn r1, #0x800000
00779150  d7 54 ee eb                                      bl #0x30e4b4
00779154  00 00 50 e3                                      cmp r0, #0
00779158  18 00 00 0a                                      beq #0x7791c0
0077915c  02 11 e0 e3                                      mvn r1, #0x80000000
00779160  08 00 a0 e1                                      mov r0, r8
00779164  02 15 41 e2                                      sub r1, r1, #0x800000
00779168  0f 56 ee eb                                      bl #0x30e9ac
0077916c  00 00 50 e3                                      cmp r0, #0
00779170  12 00 00 0a                                      beq #0x7791c0
00779174  08 80 84 e5                                      str r8, [r4, #8]
00779178  07 00 a0 e1                                      mov r0, r7
0077917c  02 15 e0 e3                                      mvn r1, #0x800000
00779180  cb 54 ee eb                                      bl #0x30e4b4
00779184  00 00 50 e3                                      cmp r0, #0
00779188  08 00 00 0a                                      beq #0x7791b0
0077918c  02 11 e0 e3                                      mvn r1, #0x80000000
00779190  07 00 a0 e1                                      mov r0, r7
00779194  02 15 41 e2                                      sub r1, r1, #0x800000
00779198  03 56 ee eb                                      bl #0x30e9ac
0077919c  00 00 50 e3                                      cmp r0, #0
007791a0  02 00 00 0a                                      beq #0x7791b0
007791a4  0c 70 84 e5                                      str r7, [r4, #0xc]
007791a8  04 00 a0 e1                                      mov r0, r4
007791ac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007791b0  00 70 a0 e3                                      mov r7, #0
007791b4  0c 70 84 e5                                      str r7, [r4, #0xc]
007791b8  04 00 a0 e1                                      mov r0, r4
007791bc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007791c0  00 80 a0 e3                                      mov r8, #0
007791c4  ea ff ff ea                                      b #0x779174
007791c8  00 60 a0 e3                                      mov r6, #0
007791cc  dc ff ff ea                                      b #0x779144
007791d0  00 50 a0 e3                                      mov r5, #0
007791d4  ce ff ff ea                                      b #0x779114

; FUNCTION 0x007791d8, declared_size=264, range_size=264, mode=arm
; class-group: gameswf::edge
; alias: _ZN7gameswf4edgeC1Effff
; demangled: gameswf::edge::edge(float, float, float, float)
; decoder-mode: arm
007791d8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007791dc  01 50 a0 e1                                      mov r5, r1
007791e0  00 40 a0 e1                                      mov r4, r0
007791e4  02 15 e0 e3                                      mvn r1, #0x800000
007791e8  05 00 a0 e1                                      mov r0, r5
007791ec  02 60 a0 e1                                      mov r6, r2
007791f0  03 80 a0 e1                                      mov r8, r3
007791f4  ae 54 ee eb                                      bl #0x30e4b4
007791f8  00 00 50 e3                                      cmp r0, #0
007791fc  18 70 9d e5                                      ldr r7, [sp, #0x18]
00779200  34 00 00 0a                                      beq #0x7792d8
00779204  02 11 e0 e3                                      mvn r1, #0x80000000
00779208  05 00 a0 e1                                      mov r0, r5
0077920c  02 15 41 e2                                      sub r1, r1, #0x800000
00779210  e5 55 ee eb                                      bl #0x30e9ac
00779214  00 00 50 e3                                      cmp r0, #0
00779218  2e 00 00 0a                                      beq #0x7792d8
0077921c  00 50 84 e5                                      str r5, [r4]
00779220  06 00 a0 e1                                      mov r0, r6
00779224  02 15 e0 e3                                      mvn r1, #0x800000
00779228  a1 54 ee eb                                      bl #0x30e4b4
0077922c  00 00 50 e3                                      cmp r0, #0
00779230  26 00 00 0a                                      beq #0x7792d0
00779234  02 11 e0 e3                                      mvn r1, #0x80000000
00779238  06 00 a0 e1                                      mov r0, r6
0077923c  02 15 41 e2                                      sub r1, r1, #0x800000
00779240  d9 55 ee eb                                      bl #0x30e9ac
00779244  00 00 50 e3                                      cmp r0, #0
00779248  20 00 00 0a                                      beq #0x7792d0
0077924c  04 60 84 e5                                      str r6, [r4, #4]
00779250  08 00 a0 e1                                      mov r0, r8
00779254  02 15 e0 e3                                      mvn r1, #0x800000
00779258  95 54 ee eb                                      bl #0x30e4b4
0077925c  00 00 50 e3                                      cmp r0, #0
00779260  18 00 00 0a                                      beq #0x7792c8
00779264  02 11 e0 e3                                      mvn r1, #0x80000000
00779268  08 00 a0 e1                                      mov r0, r8
0077926c  02 15 41 e2                                      sub r1, r1, #0x800000
00779270  cd 55 ee eb                                      bl #0x30e9ac
00779274  00 00 50 e3                                      cmp r0, #0
00779278  12 00 00 0a                                      beq #0x7792c8
0077927c  08 80 84 e5                                      str r8, [r4, #8]
00779280  07 00 a0 e1                                      mov r0, r7
00779284  02 15 e0 e3                                      mvn r1, #0x800000
00779288  89 54 ee eb                                      bl #0x30e4b4
0077928c  00 00 50 e3                                      cmp r0, #0
00779290  08 00 00 0a                                      beq #0x7792b8
00779294  02 11 e0 e3                                      mvn r1, #0x80000000
00779298  07 00 a0 e1                                      mov r0, r7
0077929c  02 15 41 e2                                      sub r1, r1, #0x800000
007792a0  c1 55 ee eb                                      bl #0x30e9ac
007792a4  00 00 50 e3                                      cmp r0, #0
007792a8  02 00 00 0a                                      beq #0x7792b8
007792ac  0c 70 84 e5                                      str r7, [r4, #0xc]
007792b0  04 00 a0 e1                                      mov r0, r4
007792b4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007792b8  00 70 a0 e3                                      mov r7, #0
007792bc  0c 70 84 e5                                      str r7, [r4, #0xc]
007792c0  04 00 a0 e1                                      mov r0, r4
007792c4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007792c8  00 80 a0 e3                                      mov r8, #0
007792cc  ea ff ff ea                                      b #0x77927c
007792d0  00 60 a0 e3                                      mov r6, #0
007792d4  dc ff ff ea                                      b #0x77924c
007792d8  00 50 a0 e3                                      mov r5, #0
007792dc  ce ff ff ea                                      b #0x77921c

; FUNCTION 0x007792e0, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::edge
; alias: _ZNK7gameswf4edge11is_straightEv
; demangled: gameswf::edge::is_straight() const
; decoder-mode: arm
007792e0  10 40 2d e9                                      push {r4, lr}
007792e4  00 40 a0 e1                                      mov r4, r0
007792e8  08 10 94 e5                                      ldr r1, [r4, #8]
007792ec  00 00 90 e5                                      ldr r0, [r0]
007792f0  25 53 ee eb                                      bl #0x30df8c
007792f4  00 00 50 e3                                      cmp r0, #0
007792f8  06 00 00 0a                                      beq #0x779318
007792fc  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00779300  04 00 94 e5                                      ldr r0, [r4, #4]
00779304  20 53 ee eb                                      bl #0x30df8c
00779308  00 00 50 e3                                      cmp r0, #0
0077930c  00 00 a0 e3                                      mov r0, #0
00779310  01 00 a0 13                                      movne r0, #1
00779314  70 00 ef e6                                      uxtb r0, r0
00779318  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0077ac00, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::edge
; alias: _ZNK7gameswf4edge19tesselate_curve_newEv
; demangled: gameswf::edge::tesselate_curve_new() const
; decoder-mode: arm
0077ac00  00 20 a0 e1                                      mov r2, r0
0077ac04  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0077ac08  04 10 92 e5                                      ldr r1, [r2, #4]
0077ac0c  00 00 90 e5                                      ldr r0, [r0]
0077ac10  08 20 92 e5                                      ldr r2, [r2, #8]
0077ac14  19 2f 00 ea                                      b #0x786880

; FUNCTION 0x0077ad14, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::edge
; alias: _ZNK7gameswf4edge15tesselate_curveEv
; demangled: gameswf::edge::tesselate_curve() const
; decoder-mode: arm
0077ad14  00 20 a0 e1                                      mov r2, r0
0077ad18  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0077ad1c  04 10 92 e5                                      ldr r1, [r2, #4]
0077ad20  00 00 90 e5                                      ldr r0, [r0]
0077ad24  08 20 92 e5                                      ldr r2, [r2, #8]
0077ad28  c6 2f 00 ea                                      b #0x786c48
