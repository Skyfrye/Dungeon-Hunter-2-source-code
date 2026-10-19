; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004165b8, declared_size=660, range_size=660, mode=arm
; class-group: gameswf::matrix
; alias: _ZN7gameswf6matrix11concatenateERKS0_
; demangled: gameswf::matrix::concatenate(gameswf::matrix const&)
; decoder-mode: arm
004165b8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
004165bc  1c d0 4d e2                                      sub sp, sp, #0x1c
004165c0  00 20 a0 e3                                      mov r2, #0
004165c4  0c 30 8d e2                                      add r3, sp, #0xc
004165c8  04 20 83 e4                                      str r2, [r3], #4
004165cc  04 20 83 e4                                      str r2, [r3], #4
004165d0  00 40 a0 e1                                      mov r4, r0
004165d4  01 50 a0 e1                                      mov r5, r1
004165d8  00 00 90 e5                                      ldr r0, [r0]
004165dc  00 10 91 e5                                      ldr r1, [r1]
004165e0  00 20 83 e5                                      str r2, [r3]
004165e4  e0 e1 fb eb                                      bl #0x30ed6c
004165e8  0c 10 95 e5                                      ldr r1, [r5, #0xc]
004165ec  00 70 a0 e1                                      mov r7, r0
004165f0  04 00 94 e5                                      ldr r0, [r4, #4]
004165f4  dc e1 fb eb                                      bl #0x30ed6c
004165f8  00 10 a0 e1                                      mov r1, r0
004165fc  07 00 a0 e1                                      mov r0, r7
00416600  67 e1 fb eb                                      bl #0x30eba4
00416604  02 15 e0 e3                                      mvn r1, #0x800000
00416608  00 70 a0 e1                                      mov r7, r0
0041660c  a8 df fb eb                                      bl #0x30e4b4
00416610  00 00 50 e3                                      cmp r0, #0
00416614  0d 60 a0 e1                                      mov r6, sp
00416618  87 00 00 0a                                      beq #0x41683c
0041661c  02 11 e0 e3                                      mvn r1, #0x80000000
00416620  07 00 a0 e1                                      mov r0, r7
00416624  02 15 41 e2                                      sub r1, r1, #0x800000
00416628  df e0 fb eb                                      bl #0x30e9ac
0041662c  00 00 50 e3                                      cmp r0, #0
00416630  81 00 00 0a                                      beq #0x41683c
00416634  00 10 95 e5                                      ldr r1, [r5]
00416638  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0041663c  00 70 8d e5                                      str r7, [sp]
00416640  c9 e1 fb eb                                      bl #0x30ed6c
00416644  0c 10 95 e5                                      ldr r1, [r5, #0xc]
00416648  00 70 a0 e1                                      mov r7, r0
0041664c  10 00 94 e5                                      ldr r0, [r4, #0x10]
00416650  c5 e1 fb eb                                      bl #0x30ed6c
00416654  00 10 a0 e1                                      mov r1, r0
00416658  07 00 a0 e1                                      mov r0, r7
0041665c  50 e1 fb eb                                      bl #0x30eba4
00416660  02 15 e0 e3                                      mvn r1, #0x800000
00416664  00 70 a0 e1                                      mov r7, r0
00416668  91 df fb eb                                      bl #0x30e4b4
0041666c  00 00 50 e3                                      cmp r0, #0
00416670  6f 00 00 0a                                      beq #0x416834
00416674  02 11 e0 e3                                      mvn r1, #0x80000000
00416678  07 00 a0 e1                                      mov r0, r7
0041667c  02 15 41 e2                                      sub r1, r1, #0x800000
00416680  c9 e0 fb eb                                      bl #0x30e9ac
00416684  00 00 50 e3                                      cmp r0, #0
00416688  69 00 00 0a                                      beq #0x416834
0041668c  04 10 95 e5                                      ldr r1, [r5, #4]
00416690  00 00 94 e5                                      ldr r0, [r4]
00416694  0c 70 8d e5                                      str r7, [sp, #0xc]
00416698  b3 e1 fb eb                                      bl #0x30ed6c
0041669c  10 10 95 e5                                      ldr r1, [r5, #0x10]
004166a0  00 70 a0 e1                                      mov r7, r0
004166a4  04 00 94 e5                                      ldr r0, [r4, #4]
004166a8  af e1 fb eb                                      bl #0x30ed6c
004166ac  00 10 a0 e1                                      mov r1, r0
004166b0  07 00 a0 e1                                      mov r0, r7
004166b4  3a e1 fb eb                                      bl #0x30eba4
004166b8  02 15 e0 e3                                      mvn r1, #0x800000
004166bc  00 70 a0 e1                                      mov r7, r0
004166c0  7b df fb eb                                      bl #0x30e4b4
004166c4  00 00 50 e3                                      cmp r0, #0
004166c8  57 00 00 0a                                      beq #0x41682c
004166cc  02 11 e0 e3                                      mvn r1, #0x80000000
004166d0  07 00 a0 e1                                      mov r0, r7
004166d4  02 15 41 e2                                      sub r1, r1, #0x800000
004166d8  b3 e0 fb eb                                      bl #0x30e9ac
004166dc  00 00 50 e3                                      cmp r0, #0
004166e0  51 00 00 0a                                      beq #0x41682c
004166e4  04 10 95 e5                                      ldr r1, [r5, #4]
004166e8  0c 00 94 e5                                      ldr r0, [r4, #0xc]
004166ec  04 70 8d e5                                      str r7, [sp, #4]
004166f0  9d e1 fb eb                                      bl #0x30ed6c
004166f4  10 10 95 e5                                      ldr r1, [r5, #0x10]
004166f8  00 70 a0 e1                                      mov r7, r0
004166fc  10 00 94 e5                                      ldr r0, [r4, #0x10]
00416700  99 e1 fb eb                                      bl #0x30ed6c
00416704  00 10 a0 e1                                      mov r1, r0
00416708  07 00 a0 e1                                      mov r0, r7
0041670c  24 e1 fb eb                                      bl #0x30eba4
00416710  02 15 e0 e3                                      mvn r1, #0x800000
00416714  00 70 a0 e1                                      mov r7, r0
00416718  65 df fb eb                                      bl #0x30e4b4
0041671c  00 00 50 e3                                      cmp r0, #0
00416720  3f 00 00 0a                                      beq #0x416824
00416724  02 11 e0 e3                                      mvn r1, #0x80000000
00416728  07 00 a0 e1                                      mov r0, r7
0041672c  02 15 41 e2                                      sub r1, r1, #0x800000
00416730  9d e0 fb eb                                      bl #0x30e9ac
00416734  00 00 50 e3                                      cmp r0, #0
00416738  39 00 00 0a                                      beq #0x416824
0041673c  08 10 95 e5                                      ldr r1, [r5, #8]
00416740  00 00 94 e5                                      ldr r0, [r4]
00416744  10 70 8d e5                                      str r7, [sp, #0x10]
00416748  87 e1 fb eb                                      bl #0x30ed6c
0041674c  14 10 95 e5                                      ldr r1, [r5, #0x14]
00416750  00 70 a0 e1                                      mov r7, r0
00416754  04 00 94 e5                                      ldr r0, [r4, #4]
00416758  83 e1 fb eb                                      bl #0x30ed6c
0041675c  00 10 a0 e1                                      mov r1, r0
00416760  07 00 a0 e1                                      mov r0, r7
00416764  0e e1 fb eb                                      bl #0x30eba4
00416768  08 10 94 e5                                      ldr r1, [r4, #8]
0041676c  0c e1 fb eb                                      bl #0x30eba4
00416770  02 15 e0 e3                                      mvn r1, #0x800000
00416774  00 70 a0 e1                                      mov r7, r0
00416778  4d df fb eb                                      bl #0x30e4b4
0041677c  00 00 50 e3                                      cmp r0, #0
00416780  25 00 00 0a                                      beq #0x41681c
00416784  02 11 e0 e3                                      mvn r1, #0x80000000
00416788  07 00 a0 e1                                      mov r0, r7
0041678c  02 15 41 e2                                      sub r1, r1, #0x800000
00416790  85 e0 fb eb                                      bl #0x30e9ac
00416794  00 00 50 e3                                      cmp r0, #0
00416798  1f 00 00 0a                                      beq #0x41681c
0041679c  08 10 95 e5                                      ldr r1, [r5, #8]
004167a0  0c 00 94 e5                                      ldr r0, [r4, #0xc]
004167a4  08 70 8d e5                                      str r7, [sp, #8]
004167a8  6f e1 fb eb                                      bl #0x30ed6c
004167ac  14 10 95 e5                                      ldr r1, [r5, #0x14]
004167b0  00 70 a0 e1                                      mov r7, r0
004167b4  10 00 94 e5                                      ldr r0, [r4, #0x10]
004167b8  6b e1 fb eb                                      bl #0x30ed6c
004167bc  00 10 a0 e1                                      mov r1, r0
004167c0  07 00 a0 e1                                      mov r0, r7
004167c4  f6 e0 fb eb                                      bl #0x30eba4
004167c8  14 10 94 e5                                      ldr r1, [r4, #0x14]
004167cc  f4 e0 fb eb                                      bl #0x30eba4
004167d0  02 15 e0 e3                                      mvn r1, #0x800000
004167d4  00 50 a0 e1                                      mov r5, r0
004167d8  35 df fb eb                                      bl #0x30e4b4
004167dc  00 00 50 e3                                      cmp r0, #0
004167e0  17 00 00 0a                                      beq #0x416844
004167e4  02 11 e0 e3                                      mvn r1, #0x80000000
004167e8  05 00 a0 e1                                      mov r0, r5
004167ec  02 15 41 e2                                      sub r1, r1, #0x800000
004167f0  6d e0 fb eb                                      bl #0x30e9ac
004167f4  00 00 50 e3                                      cmp r0, #0
004167f8  11 00 00 0a                                      beq #0x416844
004167fc  06 c0 a0 e1                                      mov ip, r6
00416800  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
00416804  0f 00 a4 e8                                      stm r4!, {r0, r1, r2, r3}
00416808  14 50 8d e5                                      str r5, [sp, #0x14]
0041680c  03 00 9c e8                                      ldm ip, {r0, r1}
00416810  03 00 84 e8                                      stm r4, {r0, r1}
00416814  1c d0 8d e2                                      add sp, sp, #0x1c
00416818  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0041681c  00 70 a0 e3                                      mov r7, #0
00416820  dd ff ff ea                                      b #0x41679c
00416824  00 70 a0 e3                                      mov r7, #0
00416828  c3 ff ff ea                                      b #0x41673c
0041682c  00 70 a0 e3                                      mov r7, #0
00416830  ab ff ff ea                                      b #0x4166e4
00416834  00 70 a0 e3                                      mov r7, #0
00416838  93 ff ff ea                                      b #0x41668c
0041683c  00 70 a0 e3                                      mov r7, #0
00416840  7b ff ff ea                                      b #0x416634
00416844  00 50 a0 e3                                      mov r5, #0
00416848  eb ff ff ea                                      b #0x4167fc

; FUNCTION 0x0075329c, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::matrix
; alias: _ZNK7gameswf6matrix11get_x_scaleEv
; demangled: gameswf::matrix::get_x_scale() const
; decoder-mode: arm
0075329c  70 40 2d e9                                      push {r4, r5, r6, lr}
007532a0  00 40 a0 e1                                      mov r4, r0
007532a4  00 00 90 e5                                      ldr r0, [r0]
007532a8  04 60 94 e5                                      ldr r6, [r4, #4]
007532ac  00 10 a0 e1                                      mov r1, r0
007532b0  ad ee ee eb                                      bl #0x30ed6c
007532b4  06 10 a0 e1                                      mov r1, r6
007532b8  00 50 a0 e1                                      mov r5, r0
007532bc  06 00 a0 e1                                      mov r0, r6
007532c0  a9 ee ee eb                                      bl #0x30ed6c
007532c4  00 10 a0 e1                                      mov r1, r0
007532c8  05 00 a0 e1                                      mov r0, r5
007532cc  34 ee ee eb                                      bl #0x30eba4
007532d0  93 eb ee eb                                      bl #0x30e124
007532d4  10 10 94 e5                                      ldr r1, [r4, #0x10]
007532d8  00 50 a0 e1                                      mov r5, r0
007532dc  00 00 94 e5                                      ldr r0, [r4]
007532e0  a1 ee ee eb                                      bl #0x30ed6c
007532e4  04 10 94 e5                                      ldr r1, [r4, #4]
007532e8  00 60 a0 e1                                      mov r6, r0
007532ec  0c 00 94 e5                                      ldr r0, [r4, #0xc]
007532f0  9d ee ee eb                                      bl #0x30ed6c
007532f4  00 10 a0 e1                                      mov r1, r0
007532f8  06 00 a0 e1                                      mov r0, r6
007532fc  2a ec ee eb                                      bl #0x30e3ac
00753300  00 10 a0 e3                                      mov r1, #0
00753304  00 ed ee eb                                      bl #0x30e70c
00753308  00 00 50 e3                                      cmp r0, #0
0075330c  02 51 85 12                                      addne r5, r5, #0x80000000
00753310  05 00 a0 e1                                      mov r0, r5
00753314  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00753d7c, declared_size=184, range_size=184, mode=arm
; class-group: gameswf::matrix
; alias: _ZNK7gameswf6matrix20transform_by_inverseEPNS_5pointERKS1_
; demangled: gameswf::matrix::transform_by_inverse(gameswf::point*, gameswf::point const&) const
; decoder-mode: arm
00753d7c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00753d80  1c d0 4d e2                                      sub sp, sp, #0x1c
00753d84  00 c0 a0 e3                                      mov ip, #0
00753d88  08 30 8d e2                                      add r3, sp, #8
00753d8c  04 c0 83 e4                                      str ip, [r3], #4
00753d90  04 c0 83 e4                                      str ip, [r3], #4
00753d94  04 c0 83 e4                                      str ip, [r3], #4
00753d98  00 70 a0 e1                                      mov r7, r0
00753d9c  02 40 a0 e1                                      mov r4, r2
00753da0  fe e5 a0 e3                                      mov lr, #0x3f800000
00753da4  00 c0 83 e5                                      str ip, [r3]
00753da8  01 50 a0 e1                                      mov r5, r1
00753dac  0d 00 a0 e1                                      mov r0, sp
00753db0  07 10 a0 e1                                      mov r1, r7
00753db4  10 e0 8d e5                                      str lr, [sp, #0x10]
00753db8  04 c0 8d e5                                      str ip, [sp, #4]
00753dbc  00 e0 8d e5                                      str lr, [sp]
00753dc0  45 07 01 eb                                      bl #0x795adc
00753dc4  00 10 94 e5                                      ldr r1, [r4]
00753dc8  00 00 9d e5                                      ldr r0, [sp]
00753dcc  e6 eb ee eb                                      bl #0x30ed6c
00753dd0  04 10 94 e5                                      ldr r1, [r4, #4]
00753dd4  00 60 a0 e1                                      mov r6, r0
00753dd8  04 00 9d e5                                      ldr r0, [sp, #4]
00753ddc  e2 eb ee eb                                      bl #0x30ed6c
00753de0  00 10 a0 e1                                      mov r1, r0
00753de4  06 00 a0 e1                                      mov r0, r6
00753de8  6d eb ee eb                                      bl #0x30eba4
00753dec  08 10 9d e5                                      ldr r1, [sp, #8]
00753df0  6b eb ee eb                                      bl #0x30eba4
00753df4  00 00 85 e5                                      str r0, [r5]
00753df8  00 10 94 e5                                      ldr r1, [r4]
00753dfc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00753e00  d9 eb ee eb                                      bl #0x30ed6c
00753e04  04 10 94 e5                                      ldr r1, [r4, #4]
00753e08  00 60 a0 e1                                      mov r6, r0
00753e0c  10 00 9d e5                                      ldr r0, [sp, #0x10]
00753e10  d5 eb ee eb                                      bl #0x30ed6c
00753e14  00 10 a0 e1                                      mov r1, r0
00753e18  06 00 a0 e1                                      mov r0, r6
00753e1c  60 eb ee eb                                      bl #0x30eba4
00753e20  14 10 9d e5                                      ldr r1, [sp, #0x14]
00753e24  5e eb ee eb                                      bl #0x30eba4
00753e28  04 00 85 e5                                      str r0, [r5, #4]
00753e2c  1c d0 8d e2                                      add sp, sp, #0x1c
00753e30  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0076128c, declared_size=292, range_size=292, mode=arm
; class-group: gameswf::matrix
; alias: _ZN7gameswf6matrix17concatenate_scaleEf
; demangled: gameswf::matrix::concatenate_scale(float)
; decoder-mode: arm
0076128c  70 40 2d e9                                      push {r4, r5, r6, lr}
00761290  00 40 a0 e1                                      mov r4, r0
00761294  01 50 a0 e1                                      mov r5, r1
00761298  01 00 a0 e1                                      mov r0, r1
0076129c  00 10 94 e5                                      ldr r1, [r4]
007612a0  b1 b6 ee eb                                      bl #0x30ed6c
007612a4  02 15 e0 e3                                      mvn r1, #0x800000
007612a8  00 60 a0 e1                                      mov r6, r0
007612ac  80 b4 ee eb                                      bl #0x30e4b4
007612b0  00 00 50 e3                                      cmp r0, #0
007612b4  38 00 00 0a                                      beq #0x76139c
007612b8  02 11 e0 e3                                      mvn r1, #0x80000000
007612bc  06 00 a0 e1                                      mov r0, r6
007612c0  02 15 41 e2                                      sub r1, r1, #0x800000
007612c4  b8 b5 ee eb                                      bl #0x30e9ac
007612c8  00 00 50 e3                                      cmp r0, #0
007612cc  32 00 00 0a                                      beq #0x76139c
007612d0  00 60 84 e5                                      str r6, [r4]
007612d4  04 10 94 e5                                      ldr r1, [r4, #4]
007612d8  05 00 a0 e1                                      mov r0, r5
007612dc  a2 b6 ee eb                                      bl #0x30ed6c
007612e0  02 15 e0 e3                                      mvn r1, #0x800000
007612e4  00 60 a0 e1                                      mov r6, r0
007612e8  71 b4 ee eb                                      bl #0x30e4b4
007612ec  00 00 50 e3                                      cmp r0, #0
007612f0  27 00 00 0a                                      beq #0x761394
007612f4  02 11 e0 e3                                      mvn r1, #0x80000000
007612f8  06 00 a0 e1                                      mov r0, r6
007612fc  02 15 41 e2                                      sub r1, r1, #0x800000
00761300  a9 b5 ee eb                                      bl #0x30e9ac
00761304  00 00 50 e3                                      cmp r0, #0
00761308  21 00 00 0a                                      beq #0x761394
0076130c  04 60 84 e5                                      str r6, [r4, #4]
00761310  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00761314  05 00 a0 e1                                      mov r0, r5
00761318  93 b6 ee eb                                      bl #0x30ed6c
0076131c  02 15 e0 e3                                      mvn r1, #0x800000
00761320  00 60 a0 e1                                      mov r6, r0
00761324  62 b4 ee eb                                      bl #0x30e4b4
00761328  00 00 50 e3                                      cmp r0, #0
0076132c  16 00 00 0a                                      beq #0x76138c
00761330  02 11 e0 e3                                      mvn r1, #0x80000000
00761334  06 00 a0 e1                                      mov r0, r6
00761338  02 15 41 e2                                      sub r1, r1, #0x800000
0076133c  9a b5 ee eb                                      bl #0x30e9ac
00761340  00 00 50 e3                                      cmp r0, #0
00761344  10 00 00 0a                                      beq #0x76138c
00761348  05 00 a0 e1                                      mov r0, r5
0076134c  10 10 94 e5                                      ldr r1, [r4, #0x10]
00761350  0c 60 84 e5                                      str r6, [r4, #0xc]
00761354  84 b6 ee eb                                      bl #0x30ed6c
00761358  02 15 e0 e3                                      mvn r1, #0x800000
0076135c  00 50 a0 e1                                      mov r5, r0
00761360  53 b4 ee eb                                      bl #0x30e4b4
00761364  00 00 50 e3                                      cmp r0, #0
00761368  0d 00 00 0a                                      beq #0x7613a4
0076136c  02 11 e0 e3                                      mvn r1, #0x80000000
00761370  05 00 a0 e1                                      mov r0, r5
00761374  02 15 41 e2                                      sub r1, r1, #0x800000
00761378  8b b5 ee eb                                      bl #0x30e9ac
0076137c  00 00 50 e3                                      cmp r0, #0
00761380  07 00 00 0a                                      beq #0x7613a4
00761384  10 50 84 e5                                      str r5, [r4, #0x10]
00761388  70 80 bd e8                                      pop {r4, r5, r6, pc}
0076138c  00 60 a0 e3                                      mov r6, #0
00761390  ec ff ff ea                                      b #0x761348
00761394  00 60 a0 e3                                      mov r6, #0
00761398  db ff ff ea                                      b #0x76130c
0076139c  00 60 a0 e3                                      mov r6, #0
007613a0  ca ff ff ea                                      b #0x7612d0
007613a4  00 50 a0 e3                                      mov r5, #0
007613a8  10 50 84 e5                                      str r5, [r4, #0x10]
007613ac  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007947b8, declared_size=604, range_size=604, mode=arm
; class-group: gameswf::matrix
; alias: _ZN7gameswf6matrix8set_lerpERKS0_S2_f
; demangled: gameswf::matrix::set_lerp(gameswf::matrix const&, gameswf::matrix const&, float)
; decoder-mode: arm
007947b8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007947bc  00 50 91 e5                                      ldr r5, [r1]
007947c0  01 40 a0 e1                                      mov r4, r1
007947c4  00 70 a0 e1                                      mov r7, r0
007947c8  05 10 a0 e1                                      mov r1, r5
007947cc  00 00 92 e5                                      ldr r0, [r2]
007947d0  03 80 a0 e1                                      mov r8, r3
007947d4  02 60 a0 e1                                      mov r6, r2
007947d8  f3 e6 ed eb                                      bl #0x30e3ac
007947dc  00 10 a0 e1                                      mov r1, r0
007947e0  08 00 a0 e1                                      mov r0, r8
007947e4  60 e9 ed eb                                      bl #0x30ed6c
007947e8  00 10 a0 e1                                      mov r1, r0
007947ec  05 00 a0 e1                                      mov r0, r5
007947f0  eb e8 ed eb                                      bl #0x30eba4
007947f4  02 15 e0 e3                                      mvn r1, #0x800000
007947f8  00 50 a0 e1                                      mov r5, r0
007947fc  2c e7 ed eb                                      bl #0x30e4b4
00794800  00 00 50 e3                                      cmp r0, #0
00794804  7d 00 00 0a                                      beq #0x794a00
00794808  02 11 e0 e3                                      mvn r1, #0x80000000
0079480c  05 00 a0 e1                                      mov r0, r5
00794810  02 15 41 e2                                      sub r1, r1, #0x800000
00794814  64 e8 ed eb                                      bl #0x30e9ac
00794818  00 00 50 e3                                      cmp r0, #0
0079481c  77 00 00 0a                                      beq #0x794a00
00794820  00 50 87 e5                                      str r5, [r7]
00794824  0c 50 94 e5                                      ldr r5, [r4, #0xc]
00794828  0c 00 96 e5                                      ldr r0, [r6, #0xc]
0079482c  05 10 a0 e1                                      mov r1, r5
00794830  dd e6 ed eb                                      bl #0x30e3ac
00794834  00 10 a0 e1                                      mov r1, r0
00794838  08 00 a0 e1                                      mov r0, r8
0079483c  4a e9 ed eb                                      bl #0x30ed6c
00794840  00 10 a0 e1                                      mov r1, r0
00794844  05 00 a0 e1                                      mov r0, r5
00794848  d5 e8 ed eb                                      bl #0x30eba4
0079484c  02 15 e0 e3                                      mvn r1, #0x800000
00794850  00 50 a0 e1                                      mov r5, r0
00794854  16 e7 ed eb                                      bl #0x30e4b4
00794858  00 00 50 e3                                      cmp r0, #0
0079485c  65 00 00 0a                                      beq #0x7949f8
00794860  02 11 e0 e3                                      mvn r1, #0x80000000
00794864  05 00 a0 e1                                      mov r0, r5
00794868  02 15 41 e2                                      sub r1, r1, #0x800000
0079486c  4e e8 ed eb                                      bl #0x30e9ac
00794870  00 00 50 e3                                      cmp r0, #0
00794874  5f 00 00 0a                                      beq #0x7949f8
00794878  0c 50 87 e5                                      str r5, [r7, #0xc]
0079487c  04 50 94 e5                                      ldr r5, [r4, #4]
00794880  04 00 96 e5                                      ldr r0, [r6, #4]
00794884  05 10 a0 e1                                      mov r1, r5
00794888  c7 e6 ed eb                                      bl #0x30e3ac
0079488c  00 10 a0 e1                                      mov r1, r0
00794890  08 00 a0 e1                                      mov r0, r8
00794894  34 e9 ed eb                                      bl #0x30ed6c
00794898  00 10 a0 e1                                      mov r1, r0
0079489c  05 00 a0 e1                                      mov r0, r5
007948a0  bf e8 ed eb                                      bl #0x30eba4
007948a4  02 15 e0 e3                                      mvn r1, #0x800000
007948a8  00 50 a0 e1                                      mov r5, r0
007948ac  00 e7 ed eb                                      bl #0x30e4b4
007948b0  00 00 50 e3                                      cmp r0, #0
007948b4  4d 00 00 0a                                      beq #0x7949f0
007948b8  02 11 e0 e3                                      mvn r1, #0x80000000
007948bc  05 00 a0 e1                                      mov r0, r5
007948c0  02 15 41 e2                                      sub r1, r1, #0x800000
007948c4  38 e8 ed eb                                      bl #0x30e9ac
007948c8  00 00 50 e3                                      cmp r0, #0
007948cc  47 00 00 0a                                      beq #0x7949f0
007948d0  04 50 87 e5                                      str r5, [r7, #4]
007948d4  10 50 94 e5                                      ldr r5, [r4, #0x10]
007948d8  10 00 96 e5                                      ldr r0, [r6, #0x10]
007948dc  05 10 a0 e1                                      mov r1, r5
007948e0  b1 e6 ed eb                                      bl #0x30e3ac
007948e4  00 10 a0 e1                                      mov r1, r0
007948e8  08 00 a0 e1                                      mov r0, r8
007948ec  1e e9 ed eb                                      bl #0x30ed6c
007948f0  00 10 a0 e1                                      mov r1, r0
007948f4  05 00 a0 e1                                      mov r0, r5
007948f8  a9 e8 ed eb                                      bl #0x30eba4
007948fc  02 15 e0 e3                                      mvn r1, #0x800000
00794900  00 50 a0 e1                                      mov r5, r0
00794904  ea e6 ed eb                                      bl #0x30e4b4
00794908  00 00 50 e3                                      cmp r0, #0
0079490c  35 00 00 0a                                      beq #0x7949e8
00794910  02 11 e0 e3                                      mvn r1, #0x80000000
00794914  05 00 a0 e1                                      mov r0, r5
00794918  02 15 41 e2                                      sub r1, r1, #0x800000
0079491c  22 e8 ed eb                                      bl #0x30e9ac
00794920  00 00 50 e3                                      cmp r0, #0
00794924  2f 00 00 0a                                      beq #0x7949e8
00794928  10 50 87 e5                                      str r5, [r7, #0x10]
0079492c  08 50 94 e5                                      ldr r5, [r4, #8]
00794930  08 00 96 e5                                      ldr r0, [r6, #8]
00794934  05 10 a0 e1                                      mov r1, r5
00794938  9b e6 ed eb                                      bl #0x30e3ac
0079493c  00 10 a0 e1                                      mov r1, r0
00794940  08 00 a0 e1                                      mov r0, r8
00794944  08 e9 ed eb                                      bl #0x30ed6c
00794948  00 10 a0 e1                                      mov r1, r0
0079494c  05 00 a0 e1                                      mov r0, r5
00794950  93 e8 ed eb                                      bl #0x30eba4
00794954  02 15 e0 e3                                      mvn r1, #0x800000
00794958  00 50 a0 e1                                      mov r5, r0
0079495c  d4 e6 ed eb                                      bl #0x30e4b4
00794960  00 00 50 e3                                      cmp r0, #0
00794964  1d 00 00 0a                                      beq #0x7949e0
00794968  02 11 e0 e3                                      mvn r1, #0x80000000
0079496c  05 00 a0 e1                                      mov r0, r5
00794970  02 15 41 e2                                      sub r1, r1, #0x800000
00794974  0c e8 ed eb                                      bl #0x30e9ac
00794978  00 00 50 e3                                      cmp r0, #0
0079497c  17 00 00 0a                                      beq #0x7949e0
00794980  08 50 87 e5                                      str r5, [r7, #8]
00794984  14 40 94 e5                                      ldr r4, [r4, #0x14]
00794988  14 00 96 e5                                      ldr r0, [r6, #0x14]
0079498c  04 10 a0 e1                                      mov r1, r4
00794990  85 e6 ed eb                                      bl #0x30e3ac
00794994  00 10 a0 e1                                      mov r1, r0
00794998  08 00 a0 e1                                      mov r0, r8
0079499c  f2 e8 ed eb                                      bl #0x30ed6c
007949a0  00 10 a0 e1                                      mov r1, r0
007949a4  04 00 a0 e1                                      mov r0, r4
007949a8  7d e8 ed eb                                      bl #0x30eba4
007949ac  02 15 e0 e3                                      mvn r1, #0x800000
007949b0  00 40 a0 e1                                      mov r4, r0
007949b4  be e6 ed eb                                      bl #0x30e4b4
007949b8  00 00 50 e3                                      cmp r0, #0
007949bc  11 00 00 0a                                      beq #0x794a08
007949c0  02 11 e0 e3                                      mvn r1, #0x80000000
007949c4  04 00 a0 e1                                      mov r0, r4
007949c8  02 15 41 e2                                      sub r1, r1, #0x800000
007949cc  f6 e7 ed eb                                      bl #0x30e9ac
007949d0  00 00 50 e3                                      cmp r0, #0
007949d4  0b 00 00 0a                                      beq #0x794a08
007949d8  14 40 87 e5                                      str r4, [r7, #0x14]
007949dc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007949e0  00 50 a0 e3                                      mov r5, #0
007949e4  e5 ff ff ea                                      b #0x794980
007949e8  00 50 a0 e3                                      mov r5, #0
007949ec  cd ff ff ea                                      b #0x794928
007949f0  00 50 a0 e3                                      mov r5, #0
007949f4  b5 ff ff ea                                      b #0x7948d0
007949f8  00 50 a0 e3                                      mov r5, #0
007949fc  9d ff ff ea                                      b #0x794878
00794a00  00 50 a0 e3                                      mov r5, #0
00794a04  85 ff ff ea                                      b #0x794820
00794a08  00 40 a0 e3                                      mov r4, #0
00794a0c  14 40 87 e5                                      str r4, [r7, #0x14]
00794a10  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00794a14, declared_size=728, range_size=728, mode=arm
; class-group: gameswf::matrix
; alias: _ZNK7gameswf6matrix9transformEPNS_4rectE
; demangled: gameswf::matrix::transform(gameswf::rect*) const
; decoder-mode: arm
00794a14  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00794a18  00 80 91 e5                                      ldr r8, [r1]
00794a1c  3c d0 4d e2                                      sub sp, sp, #0x3c
00794a20  01 40 a0 e1                                      mov r4, r1
00794a24  00 50 a0 e1                                      mov r5, r0
00794a28  08 60 91 e5                                      ldr r6, [r1, #8]
00794a2c  00 10 90 e5                                      ldr r1, [r0]
00794a30  08 00 a0 e1                                      mov r0, r8
00794a34  cc e8 ed eb                                      bl #0x30ed6c
00794a38  0c 00 8d e5                                      str r0, [sp, #0xc]
00794a3c  04 10 95 e5                                      ldr r1, [r5, #4]
00794a40  06 00 a0 e1                                      mov r0, r6
00794a44  c8 e8 ed eb                                      bl #0x30ed6c
00794a48  00 a0 a0 e1                                      mov sl, r0
00794a4c  0a 10 a0 e1                                      mov r1, sl
00794a50  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00794a54  52 e8 ed eb                                      bl #0x30eba4
00794a58  08 10 95 e5                                      ldr r1, [r5, #8]
00794a5c  50 e8 ed eb                                      bl #0x30eba4
00794a60  0c 10 95 e5                                      ldr r1, [r5, #0xc]
00794a64  00 70 a0 e1                                      mov r7, r0
00794a68  08 00 a0 e1                                      mov r0, r8
00794a6c  be e8 ed eb                                      bl #0x30ed6c
00794a70  10 00 8d e5                                      str r0, [sp, #0x10]
00794a74  10 10 95 e5                                      ldr r1, [r5, #0x10]
00794a78  06 00 a0 e1                                      mov r0, r6
00794a7c  ba e8 ed eb                                      bl #0x30ed6c
00794a80  00 80 a0 e1                                      mov r8, r0
00794a84  08 10 a0 e1                                      mov r1, r8
00794a88  10 00 9d e5                                      ldr r0, [sp, #0x10]
00794a8c  44 e8 ed eb                                      bl #0x30eba4
00794a90  14 10 95 e5                                      ldr r1, [r5, #0x14]
00794a94  42 e8 ed eb                                      bl #0x30eba4
00794a98  04 30 94 e5                                      ldr r3, [r4, #4]
00794a9c  00 10 95 e5                                      ldr r1, [r5]
00794aa0  00 60 a0 e1                                      mov r6, r0
00794aa4  00 20 a0 e3                                      mov r2, #0
00794aa8  03 00 a0 e1                                      mov r0, r3
00794aac  17 20 cd e5                                      strb r2, [sp, #0x17]
00794ab0  04 30 8d e5                                      str r3, [sp, #4]
00794ab4  ac e8 ed eb                                      bl #0x30ed6c
00794ab8  0a 10 a0 e1                                      mov r1, sl
00794abc  00 b0 a0 e1                                      mov fp, r0
00794ac0  37 e8 ed eb                                      bl #0x30eba4
00794ac4  08 10 95 e5                                      ldr r1, [r5, #8]
00794ac8  35 e8 ed eb                                      bl #0x30eba4
00794acc  04 30 9d e5                                      ldr r3, [sp, #4]
00794ad0  00 90 a0 e1                                      mov sb, r0
00794ad4  0c 10 95 e5                                      ldr r1, [r5, #0xc]
00794ad8  03 00 a0 e1                                      mov r0, r3
00794adc  a2 e8 ed eb                                      bl #0x30ed6c
00794ae0  08 10 a0 e1                                      mov r1, r8
00794ae4  00 20 a0 e1                                      mov r2, r0
00794ae8  00 20 8d e5                                      str r2, [sp]
00794aec  2c e8 ed eb                                      bl #0x30eba4
00794af0  14 10 95 e5                                      ldr r1, [r5, #0x14]
00794af4  2a e8 ed eb                                      bl #0x30eba4
00794af8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00794afc  00 a0 a0 e1                                      mov sl, r0
00794b00  04 10 95 e5                                      ldr r1, [r5, #4]
00794b04  03 00 a0 e1                                      mov r0, r3
00794b08  04 30 8d e5                                      str r3, [sp, #4]
00794b0c  96 e8 ed eb                                      bl #0x30ed6c
00794b10  00 c0 a0 e1                                      mov ip, r0
00794b14  0c 10 a0 e1                                      mov r1, ip
00794b18  0b 00 a0 e1                                      mov r0, fp
00794b1c  08 c0 8d e5                                      str ip, [sp, #8]
00794b20  1f e8 ed eb                                      bl #0x30eba4
00794b24  08 10 95 e5                                      ldr r1, [r5, #8]
00794b28  1d e8 ed eb                                      bl #0x30eba4
00794b2c  04 30 9d e5                                      ldr r3, [sp, #4]
00794b30  28 00 8d e5                                      str r0, [sp, #0x28]
00794b34  10 10 95 e5                                      ldr r1, [r5, #0x10]
00794b38  03 00 a0 e1                                      mov r0, r3
00794b3c  8a e8 ed eb                                      bl #0x30ed6c
00794b40  00 20 9d e5                                      ldr r2, [sp]
00794b44  00 b0 a0 e1                                      mov fp, r0
00794b48  0b 10 a0 e1                                      mov r1, fp
00794b4c  02 00 a0 e1                                      mov r0, r2
00794b50  13 e8 ed eb                                      bl #0x30eba4
00794b54  14 10 95 e5                                      ldr r1, [r5, #0x14]
00794b58  11 e8 ed eb                                      bl #0x30eba4
00794b5c  08 c0 9d e5                                      ldr ip, [sp, #8]
00794b60  2c 00 8d e5                                      str r0, [sp, #0x2c]
00794b64  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00794b68  0c 10 a0 e1                                      mov r1, ip
00794b6c  0c e8 ed eb                                      bl #0x30eba4
00794b70  08 10 95 e5                                      ldr r1, [r5, #8]
00794b74  0a e8 ed eb                                      bl #0x30eba4
00794b78  0b 10 a0 e1                                      mov r1, fp
00794b7c  30 00 8d e5                                      str r0, [sp, #0x30]
00794b80  10 00 9d e5                                      ldr r0, [sp, #0x10]
00794b84  06 e8 ed eb                                      bl #0x30eba4
00794b88  14 10 95 e5                                      ldr r1, [r5, #0x14]
00794b8c  04 e8 ed eb                                      bl #0x30eba4
00794b90  09 10 a0 e1                                      mov r1, sb
00794b94  34 00 8d e5                                      str r0, [sp, #0x34]
00794b98  04 70 84 e5                                      str r7, [r4, #4]
00794b9c  00 70 84 e5                                      str r7, [r4]
00794ba0  0c 60 84 e5                                      str r6, [r4, #0xc]
00794ba4  08 60 84 e5                                      str r6, [r4, #8]
00794ba8  07 00 a0 e1                                      mov r0, r7
00794bac  d6 e6 ed eb                                      bl #0x30e70c
00794bb0  00 00 50 e3                                      cmp r0, #0
00794bb4  01 30 a0 13                                      movne r3, #1
00794bb8  17 30 cd 15                                      strbne r3, [sp, #0x17]
00794bbc  17 b0 dd e5                                      ldrb fp, [sp, #0x17]
00794bc0  09 80 a0 e1                                      mov r8, sb
00794bc4  0a 10 a0 e1                                      mov r1, sl
00794bc8  00 00 5b e3                                      cmp fp, #0
00794bcc  07 90 a0 11                                      movne sb, r7
00794bd0  00 90 84 e5                                      str sb, [r4]
00794bd4  06 00 a0 e1                                      mov r0, r6
00794bd8  cb e6 ed eb                                      bl #0x30e70c
00794bdc  00 00 50 e3                                      cmp r0, #0
00794be0  00 30 a0 e3                                      mov r3, #0
00794be4  01 30 a0 13                                      movne r3, #1
00794be8  73 30 ef e6                                      uxtb r3, r3
00794bec  00 00 53 e3                                      cmp r3, #0
00794bf0  0a 50 a0 e1                                      mov r5, sl
00794bf4  06 a0 a0 11                                      movne sl, r6
00794bf8  00 00 5b e3                                      cmp fp, #0
00794bfc  07 80 a0 01                                      moveq r8, r7
00794c00  08 a0 84 e5                                      str sl, [r4, #8]
00794c04  04 80 84 e5                                      str r8, [r4, #4]
00794c08  28 70 9d e5                                      ldr r7, [sp, #0x28]
00794c0c  00 00 53 e3                                      cmp r3, #0
00794c10  06 50 a0 01                                      moveq r5, r6
00794c14  09 00 a0 e1                                      mov r0, sb
00794c18  07 10 a0 e1                                      mov r1, r7
00794c1c  0c 50 84 e5                                      str r5, [r4, #0xc]
00794c20  b9 e6 ed eb                                      bl #0x30e70c
00794c24  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
00794c28  00 00 50 e3                                      cmp r0, #0
00794c2c  07 90 a0 01                                      moveq sb, r7
00794c30  0a 00 a0 e1                                      mov r0, sl
00794c34  06 10 a0 e1                                      mov r1, r6
00794c38  00 90 84 e5                                      str sb, [r4]
00794c3c  b2 e6 ed eb                                      bl #0x30e70c
00794c40  00 00 50 e3                                      cmp r0, #0
00794c44  06 a0 a0 01                                      moveq sl, r6
00794c48  07 10 a0 e1                                      mov r1, r7
00794c4c  08 a0 84 e5                                      str sl, [r4, #8]
00794c50  08 00 a0 e1                                      mov r0, r8
00794c54  ac e6 ed eb                                      bl #0x30e70c
00794c58  00 00 50 e3                                      cmp r0, #0
00794c5c  08 70 a0 01                                      moveq r7, r8
00794c60  06 10 a0 e1                                      mov r1, r6
00794c64  05 00 a0 e1                                      mov r0, r5
00794c68  04 70 84 e5                                      str r7, [r4, #4]
00794c6c  a6 e6 ed eb                                      bl #0x30e70c
00794c70  30 80 9d e5                                      ldr r8, [sp, #0x30]
00794c74  00 00 50 e3                                      cmp r0, #0
00794c78  05 60 a0 01                                      moveq r6, r5
00794c7c  08 10 a0 e1                                      mov r1, r8
00794c80  09 00 a0 e1                                      mov r0, sb
00794c84  0c 60 84 e5                                      str r6, [r4, #0xc]
00794c88  9f e6 ed eb                                      bl #0x30e70c
00794c8c  34 50 9d e5                                      ldr r5, [sp, #0x34]
00794c90  00 00 50 e3                                      cmp r0, #0
00794c94  08 90 a0 01                                      moveq sb, r8
00794c98  05 10 a0 e1                                      mov r1, r5
00794c9c  0a 00 a0 e1                                      mov r0, sl
00794ca0  00 90 84 e5                                      str sb, [r4]
00794ca4  98 e6 ed eb                                      bl #0x30e70c
00794ca8  00 00 50 e3                                      cmp r0, #0
00794cac  05 a0 a0 01                                      moveq sl, r5
00794cb0  08 10 a0 e1                                      mov r1, r8
00794cb4  08 a0 84 e5                                      str sl, [r4, #8]
00794cb8  07 00 a0 e1                                      mov r0, r7
00794cbc  92 e6 ed eb                                      bl #0x30e70c
00794cc0  00 00 50 e3                                      cmp r0, #0
00794cc4  07 80 a0 01                                      moveq r8, r7
00794cc8  05 10 a0 e1                                      mov r1, r5
00794ccc  06 00 a0 e1                                      mov r0, r6
00794cd0  04 80 84 e5                                      str r8, [r4, #4]
00794cd4  8c e6 ed eb                                      bl #0x30e70c
00794cd8  00 00 50 e3                                      cmp r0, #0
00794cdc  06 50 a0 01                                      moveq r5, r6
00794ce0  0c 50 84 e5                                      str r5, [r4, #0xc]
00794ce4  3c d0 8d e2                                      add sp, sp, #0x3c
00794ce8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00794cec, declared_size=76, range_size=76, mode=arm
; class-group: gameswf::matrix
; alias: _ZNK7gameswf6matrix9does_flipEv
; demangled: gameswf::matrix::does_flip() const
; decoder-mode: arm
00794cec  70 40 2d e9                                      push {r4, r5, r6, lr}
00794cf0  00 40 a0 e1                                      mov r4, r0
00794cf4  10 10 90 e5                                      ldr r1, [r0, #0x10]
00794cf8  00 00 90 e5                                      ldr r0, [r0]
00794cfc  1a e8 ed eb                                      bl #0x30ed6c
00794d00  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00794d04  00 50 a0 e1                                      mov r5, r0
00794d08  04 00 94 e5                                      ldr r0, [r4, #4]
00794d0c  16 e8 ed eb                                      bl #0x30ed6c
00794d10  00 10 a0 e1                                      mov r1, r0
00794d14  05 00 a0 e1                                      mov r0, r5
00794d18  a3 e5 ed eb                                      bl #0x30e3ac
00794d1c  00 10 a0 e3                                      mov r1, #0
00794d20  79 e6 ed eb                                      bl #0x30e70c
00794d24  00 00 50 e3                                      cmp r0, #0
00794d28  00 00 a0 e3                                      mov r0, #0
00794d2c  01 00 a0 13                                      movne r0, #1
00794d30  01 00 00 e2                                      and r0, r0, #1
00794d34  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00795adc, declared_size=704, range_size=704, mode=arm
; class-group: gameswf::matrix
; alias: _ZN7gameswf6matrix11set_inverseERKS0_
; demangled: gameswf::matrix::set_inverse(gameswf::matrix const&)
; decoder-mode: arm
00795adc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00795ae0  10 60 91 e5                                      ldr r6, [r1, #0x10]
00795ae4  01 40 a0 e1                                      mov r4, r1
00795ae8  00 50 a0 e1                                      mov r5, r0
00795aec  00 10 91 e5                                      ldr r1, [r1]
00795af0  06 00 a0 e1                                      mov r0, r6
00795af4  9c e4 ed eb                                      bl #0x30ed6c
00795af8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00795afc  00 70 a0 e1                                      mov r7, r0
00795b00  04 00 94 e5                                      ldr r0, [r4, #4]
00795b04  98 e4 ed eb                                      bl #0x30ed6c
00795b08  00 10 a0 e1                                      mov r1, r0
00795b0c  07 00 a0 e1                                      mov r0, r7
00795b10  25 e2 ed eb                                      bl #0x30e3ac
00795b14  00 10 a0 e3                                      mov r1, #0
00795b18  00 70 a0 e1                                      mov r7, r0
00795b1c  1a e1 ed eb                                      bl #0x30df8c
00795b20  00 00 50 e3                                      cmp r0, #0
00795b24  51 00 00 1a                                      bne #0x795c70
00795b28  07 10 a0 e1                                      mov r1, r7
00795b2c  fe 05 a0 e3                                      mov r0, #0x3f800000
00795b30  57 e4 ed eb                                      bl #0x30ec94
00795b34  06 10 a0 e1                                      mov r1, r6
00795b38  00 70 a0 e1                                      mov r7, r0
00795b3c  8a e4 ed eb                                      bl #0x30ed6c
00795b40  02 15 e0 e3                                      mvn r1, #0x800000
00795b44  00 a0 a0 e1                                      mov sl, r0
00795b48  59 e2 ed eb                                      bl #0x30e4b4
00795b4c  00 00 50 e3                                      cmp r0, #0
00795b50  8a 00 00 1a                                      bne #0x795d80
00795b54  00 a0 a0 e3                                      mov sl, #0
00795b58  00 a0 85 e5                                      str sl, [r5]
00795b5c  00 10 94 e5                                      ldr r1, [r4]
00795b60  07 00 a0 e1                                      mov r0, r7
00795b64  80 e4 ed eb                                      bl #0x30ed6c
00795b68  02 15 e0 e3                                      mvn r1, #0x800000
00795b6c  00 60 a0 e1                                      mov r6, r0
00795b70  4f e2 ed eb                                      bl #0x30e4b4
00795b74  00 00 50 e3                                      cmp r0, #0
00795b78  79 00 00 1a                                      bne #0x795d64
00795b7c  00 60 a0 e3                                      mov r6, #0
00795b80  10 60 85 e5                                      str r6, [r5, #0x10]
00795b84  04 00 94 e5                                      ldr r0, [r4, #4]
00795b88  07 10 a0 e1                                      mov r1, r7
00795b8c  02 01 80 e2                                      add r0, r0, #0x80000000
00795b90  75 e4 ed eb                                      bl #0x30ed6c
00795b94  02 15 e0 e3                                      mvn r1, #0x800000
00795b98  00 80 a0 e1                                      mov r8, r0
00795b9c  44 e2 ed eb                                      bl #0x30e4b4
00795ba0  00 00 50 e3                                      cmp r0, #0
00795ba4  67 00 00 1a                                      bne #0x795d48
00795ba8  00 80 a0 e3                                      mov r8, #0
00795bac  04 80 85 e5                                      str r8, [r5, #4]
00795bb0  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00795bb4  07 10 a0 e1                                      mov r1, r7
00795bb8  02 01 80 e2                                      add r0, r0, #0x80000000
00795bbc  6a e4 ed eb                                      bl #0x30ed6c
00795bc0  02 15 e0 e3                                      mvn r1, #0x800000
00795bc4  00 70 a0 e1                                      mov r7, r0
00795bc8  39 e2 ed eb                                      bl #0x30e4b4
00795bcc  00 00 50 e3                                      cmp r0, #0
00795bd0  55 00 00 1a                                      bne #0x795d2c
00795bd4  00 70 a0 e3                                      mov r7, #0
00795bd8  0c 70 85 e5                                      str r7, [r5, #0xc]
00795bdc  0a 00 a0 e1                                      mov r0, sl
00795be0  08 10 94 e5                                      ldr r1, [r4, #8]
00795be4  60 e4 ed eb                                      bl #0x30ed6c
00795be8  14 10 94 e5                                      ldr r1, [r4, #0x14]
00795bec  00 a0 a0 e1                                      mov sl, r0
00795bf0  08 00 a0 e1                                      mov r0, r8
00795bf4  5c e4 ed eb                                      bl #0x30ed6c
00795bf8  00 10 a0 e1                                      mov r1, r0
00795bfc  0a 00 a0 e1                                      mov r0, sl
00795c00  e7 e3 ed eb                                      bl #0x30eba4
00795c04  02 81 80 e2                                      add r8, r0, #0x80000000
00795c08  08 00 a0 e1                                      mov r0, r8
00795c0c  02 15 e0 e3                                      mvn r1, #0x800000
00795c10  27 e2 ed eb                                      bl #0x30e4b4
00795c14  00 00 50 e3                                      cmp r0, #0
00795c18  3c 00 00 1a                                      bne #0x795d10
00795c1c  00 80 a0 e3                                      mov r8, #0
00795c20  08 80 85 e5                                      str r8, [r5, #8]
00795c24  08 10 94 e5                                      ldr r1, [r4, #8]
00795c28  07 00 a0 e1                                      mov r0, r7
00795c2c  4e e4 ed eb                                      bl #0x30ed6c
00795c30  14 10 94 e5                                      ldr r1, [r4, #0x14]
00795c34  00 70 a0 e1                                      mov r7, r0
00795c38  06 00 a0 e1                                      mov r0, r6
00795c3c  4a e4 ed eb                                      bl #0x30ed6c
00795c40  00 10 a0 e1                                      mov r1, r0
00795c44  07 00 a0 e1                                      mov r0, r7
00795c48  d5 e3 ed eb                                      bl #0x30eba4
00795c4c  02 41 80 e2                                      add r4, r0, #0x80000000
00795c50  04 00 a0 e1                                      mov r0, r4
00795c54  02 15 e0 e3                                      mvn r1, #0x800000
00795c58  15 e2 ed eb                                      bl #0x30e4b4
00795c5c  00 00 50 e3                                      cmp r0, #0
00795c60  22 00 00 1a                                      bne #0x795cf0
00795c64  00 40 a0 e3                                      mov r4, #0
00795c68  14 40 85 e5                                      str r4, [r5, #0x14]
00795c6c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00795c70  00 20 a0 e3                                      mov r2, #0
00795c74  08 30 85 e2                                      add r3, r5, #8
00795c78  04 20 85 e5                                      str r2, [r5, #4]
00795c7c  04 20 83 e4                                      str r2, [r3], #4
00795c80  04 20 83 e4                                      str r2, [r3], #4
00795c84  04 20 83 e4                                      str r2, [r3], #4
00795c88  fe 15 a0 e3                                      mov r1, #0x3f800000
00795c8c  00 20 83 e5                                      str r2, [r3]
00795c90  10 10 85 e5                                      str r1, [r5, #0x10]
00795c94  00 10 85 e5                                      str r1, [r5]
00795c98  08 60 94 e5                                      ldr r6, [r4, #8]
00795c9c  02 15 e0 e3                                      mvn r1, #0x800000
00795ca0  02 61 86 e2                                      add r6, r6, #0x80000000
00795ca4  06 00 a0 e1                                      mov r0, r6
00795ca8  01 e2 ed eb                                      bl #0x30e4b4
00795cac  00 00 50 e3                                      cmp r0, #0
00795cb0  05 00 00 0a                                      beq #0x795ccc
00795cb4  02 11 e0 e3                                      mvn r1, #0x80000000
00795cb8  06 00 a0 e1                                      mov r0, r6
00795cbc  02 15 41 e2                                      sub r1, r1, #0x800000
00795cc0  39 e3 ed eb                                      bl #0x30e9ac
00795cc4  00 00 50 e3                                      cmp r0, #0
00795cc8  00 00 00 1a                                      bne #0x795cd0
00795ccc  00 60 a0 e3                                      mov r6, #0
00795cd0  08 60 85 e5                                      str r6, [r5, #8]
00795cd4  14 40 94 e5                                      ldr r4, [r4, #0x14]
00795cd8  02 15 e0 e3                                      mvn r1, #0x800000
00795cdc  02 41 84 e2                                      add r4, r4, #0x80000000
00795ce0  04 00 a0 e1                                      mov r0, r4
00795ce4  f2 e1 ed eb                                      bl #0x30e4b4
00795ce8  00 00 50 e3                                      cmp r0, #0
00795cec  dc ff ff 0a                                      beq #0x795c64
00795cf0  02 11 e0 e3                                      mvn r1, #0x80000000
00795cf4  04 00 a0 e1                                      mov r0, r4
00795cf8  02 15 41 e2                                      sub r1, r1, #0x800000
00795cfc  2a e3 ed eb                                      bl #0x30e9ac
00795d00  00 00 50 e3                                      cmp r0, #0
00795d04  d6 ff ff 0a                                      beq #0x795c64
00795d08  14 40 85 e5                                      str r4, [r5, #0x14]
00795d0c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00795d10  02 11 e0 e3                                      mvn r1, #0x80000000
00795d14  08 00 a0 e1                                      mov r0, r8
00795d18  02 15 41 e2                                      sub r1, r1, #0x800000
00795d1c  22 e3 ed eb                                      bl #0x30e9ac
00795d20  00 00 50 e3                                      cmp r0, #0
00795d24  bd ff ff 1a                                      bne #0x795c20
00795d28  bb ff ff ea                                      b #0x795c1c
00795d2c  02 11 e0 e3                                      mvn r1, #0x80000000
00795d30  07 00 a0 e1                                      mov r0, r7
00795d34  02 15 41 e2                                      sub r1, r1, #0x800000
00795d38  1b e3 ed eb                                      bl #0x30e9ac
00795d3c  00 00 50 e3                                      cmp r0, #0
00795d40  a4 ff ff 1a                                      bne #0x795bd8
00795d44  a2 ff ff ea                                      b #0x795bd4
00795d48  02 11 e0 e3                                      mvn r1, #0x80000000
00795d4c  08 00 a0 e1                                      mov r0, r8
00795d50  02 15 41 e2                                      sub r1, r1, #0x800000
00795d54  14 e3 ed eb                                      bl #0x30e9ac
00795d58  00 00 50 e3                                      cmp r0, #0
00795d5c  92 ff ff 1a                                      bne #0x795bac
00795d60  90 ff ff ea                                      b #0x795ba8
00795d64  02 11 e0 e3                                      mvn r1, #0x80000000
00795d68  06 00 a0 e1                                      mov r0, r6
00795d6c  02 15 41 e2                                      sub r1, r1, #0x800000
00795d70  0d e3 ed eb                                      bl #0x30e9ac
00795d74  00 00 50 e3                                      cmp r0, #0
00795d78  80 ff ff 1a                                      bne #0x795b80
00795d7c  7e ff ff ea                                      b #0x795b7c
00795d80  02 11 e0 e3                                      mvn r1, #0x80000000
00795d84  0a 00 a0 e1                                      mov r0, sl
00795d88  02 15 41 e2                                      sub r1, r1, #0x800000
00795d8c  06 e3 ed eb                                      bl #0x30e9ac
00795d90  00 00 50 e3                                      cmp r0, #0
00795d94  6f ff ff 1a                                      bne #0x795b58
00795d98  6d ff ff ea                                      b #0x795b54

; FUNCTION 0x00795f44, declared_size=168, range_size=168, mode=arm
; class-group: gameswf::matrix
; alias: _ZNK7gameswf6matrix5printEv
; demangled: gameswf::matrix::print() const
; decoder-mode: arm
00795f44  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00795f48  00 40 a0 e1                                      mov r4, r0
00795f4c  14 d0 4d e2                                      sub sp, sp, #0x14
00795f50  00 00 90 e5                                      ldr r0, [r0]
00795f54  52 e2 ed eb                                      bl #0x30e8a4
00795f58  00 60 a0 e1                                      mov r6, r0
00795f5c  04 00 94 e5                                      ldr r0, [r4, #4]
00795f60  01 70 a0 e1                                      mov r7, r1
00795f64  4e e2 ed eb                                      bl #0x30e8a4
00795f68  f0 00 cd e1                                      strd r0, r1, [sp]
00795f6c  41 14 a0 e3                                      mov r1, #0x41000000
00795f70  08 00 94 e5                                      ldr r0, [r4, #8]
00795f74  0a 16 81 e2                                      add r1, r1, #0xa00000
00795f78  45 e3 ed eb                                      bl #0x30ec94
00795f7c  48 e2 ed eb                                      bl #0x30e8a4
00795f80  60 50 9f e5                                      ldr r5, [pc, #0x60]
00795f84  06 20 a0 e1                                      mov r2, r6
00795f88  07 30 a0 e1                                      mov r3, r7
00795f8c  05 50 8f e0                                      add r5, pc, r5
00795f90  f8 00 cd e1                                      strd r0, r1, [sp, #8]
00795f94  05 00 a0 e1                                      mov r0, r5
00795f98  94 2c ff eb                                      bl #0x7611f0
00795f9c  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00795fa0  3f e2 ed eb                                      bl #0x30e8a4
00795fa4  00 60 a0 e1                                      mov r6, r0
00795fa8  10 00 94 e5                                      ldr r0, [r4, #0x10]
00795fac  01 70 a0 e1                                      mov r7, r1
00795fb0  3b e2 ed eb                                      bl #0x30e8a4
00795fb4  f0 00 cd e1                                      strd r0, r1, [sp]
00795fb8  41 14 a0 e3                                      mov r1, #0x41000000
00795fbc  14 00 94 e5                                      ldr r0, [r4, #0x14]
00795fc0  0a 16 81 e2                                      add r1, r1, #0xa00000
00795fc4  32 e3 ed eb                                      bl #0x30ec94
00795fc8  35 e2 ed eb                                      bl #0x30e8a4
00795fcc  06 20 a0 e1                                      mov r2, r6
00795fd0  f8 00 cd e1                                      strd r0, r1, [sp, #8]
00795fd4  07 30 a0 e1                                      mov r3, r7
00795fd8  05 00 a0 e1                                      mov r0, r5
00795fdc  83 2c ff eb                                      bl #0x7611f0
00795fe0  14 d0 8d e2                                      add sp, sp, #0x14
00795fe4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00795fe8  ec 40 17 00                                      .byte 0xec, 0x40, 0x17, 0x00

; FUNCTION 0x007965d4, declared_size=632, range_size=632, mode=arm
; class-group: gameswf::matrix
; alias: _ZN7gameswf6matrix4readEPNS_6streamE
; demangled: gameswf::matrix::read(gameswf::stream*)
; decoder-mode: arm
007965d4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007965d8  00 50 a0 e1                                      mov r5, r0
007965dc  01 00 a0 e1                                      mov r0, r1
007965e0  01 40 a0 e1                                      mov r4, r1
007965e4  4b b5 ff eb                                      bl #0x783b18
007965e8  00 20 a0 e3                                      mov r2, #0
007965ec  08 30 85 e2                                      add r3, r5, #8
007965f0  04 20 85 e5                                      str r2, [r5, #4]
007965f4  04 20 83 e4                                      str r2, [r3], #4
007965f8  04 20 83 e4                                      str r2, [r3], #4
007965fc  04 20 83 e4                                      str r2, [r3], #4
00796600  fe 15 a0 e3                                      mov r1, #0x3f800000
00796604  00 20 83 e5                                      str r2, [r3]
00796608  04 00 a0 e1                                      mov r0, r4
0079660c  10 10 85 e5                                      str r1, [r5, #0x10]
00796610  00 10 85 e5                                      str r1, [r5]
00796614  01 10 a0 e3                                      mov r1, #1
00796618  e1 b4 ff eb                                      bl #0x7839a4
0079661c  00 00 50 e3                                      cmp r0, #0
00796620  55 00 00 1a                                      bne #0x79677c
00796624  04 00 a0 e1                                      mov r0, r4
00796628  01 10 a0 e3                                      mov r1, #1
0079662c  dc b4 ff eb                                      bl #0x7839a4
00796630  00 00 50 e3                                      cmp r0, #0
00796634  2a 00 00 1a                                      bne #0x7966e4
00796638  04 00 a0 e1                                      mov r0, r4
0079663c  05 10 a0 e3                                      mov r1, #5
00796640  d7 b4 ff eb                                      bl #0x7839a4
00796644  00 60 50 e2                                      subs r6, r0, #0
00796648  1a 00 00 da                                      ble #0x7966b8
0079664c  06 10 a0 e1                                      mov r1, r6
00796650  04 00 a0 e1                                      mov r0, r4
00796654  03 b5 ff eb                                      bl #0x783a68
00796658  c1 e0 ed eb                                      bl #0x30e964
0079665c  02 15 e0 e3                                      mvn r1, #0x800000
00796660  00 70 a0 e1                                      mov r7, r0
00796664  92 df ed eb                                      bl #0x30e4b4
00796668  00 00 50 e3                                      cmp r0, #0
0079666c  12 00 00 1a                                      bne #0x7966bc
00796670  00 70 a0 e3                                      mov r7, #0
00796674  06 10 a0 e1                                      mov r1, r6
00796678  04 00 a0 e1                                      mov r0, r4
0079667c  08 70 85 e5                                      str r7, [r5, #8]
00796680  f8 b4 ff eb                                      bl #0x783a68
00796684  b6 e0 ed eb                                      bl #0x30e964
00796688  02 15 e0 e3                                      mvn r1, #0x800000
0079668c  00 40 a0 e1                                      mov r4, r0
00796690  87 df ed eb                                      bl #0x30e4b4
00796694  00 00 50 e3                                      cmp r0, #0
00796698  0e 00 00 0a                                      beq #0x7966d8
0079669c  02 11 e0 e3                                      mvn r1, #0x80000000
007966a0  04 00 a0 e1                                      mov r0, r4
007966a4  02 15 41 e2                                      sub r1, r1, #0x800000
007966a8  bf e0 ed eb                                      bl #0x30e9ac
007966ac  00 00 50 e3                                      cmp r0, #0
007966b0  08 00 00 0a                                      beq #0x7966d8
007966b4  14 40 85 e5                                      str r4, [r5, #0x14]
007966b8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007966bc  02 11 e0 e3                                      mvn r1, #0x80000000
007966c0  07 00 a0 e1                                      mov r0, r7
007966c4  02 15 41 e2                                      sub r1, r1, #0x800000
007966c8  b7 e0 ed eb                                      bl #0x30e9ac
007966cc  00 00 50 e3                                      cmp r0, #0
007966d0  e7 ff ff 1a                                      bne #0x796674
007966d4  e5 ff ff ea                                      b #0x796670
007966d8  00 40 a0 e3                                      mov r4, #0
007966dc  14 40 85 e5                                      str r4, [r5, #0x14]
007966e0  f4 ff ff ea                                      b #0x7966b8
007966e4  05 10 a0 e3                                      mov r1, #5
007966e8  04 00 a0 e1                                      mov r0, r4
007966ec  ac b4 ff eb                                      bl #0x7839a4
007966f0  00 70 a0 e1                                      mov r7, r0
007966f4  07 10 a0 e1                                      mov r1, r7
007966f8  04 00 a0 e1                                      mov r0, r4
007966fc  d9 b4 ff eb                                      bl #0x783a68
00796700  97 e0 ed eb                                      bl #0x30e964
00796704  de 15 a0 e3                                      mov r1, #0x37800000
00796708  97 e1 ed eb                                      bl #0x30ed6c
0079670c  02 15 e0 e3                                      mvn r1, #0x800000
00796710  00 60 a0 e1                                      mov r6, r0
00796714  66 df ed eb                                      bl #0x30e4b4
00796718  00 00 50 e3                                      cmp r0, #0
0079671c  43 00 00 1a                                      bne #0x796830
00796720  00 60 a0 e3                                      mov r6, #0
00796724  07 10 a0 e1                                      mov r1, r7
00796728  0c 60 85 e5                                      str r6, [r5, #0xc]
0079672c  04 00 a0 e1                                      mov r0, r4
00796730  cc b4 ff eb                                      bl #0x783a68
00796734  8a e0 ed eb                                      bl #0x30e964
00796738  de 15 a0 e3                                      mov r1, #0x37800000
0079673c  8a e1 ed eb                                      bl #0x30ed6c
00796740  02 15 e0 e3                                      mvn r1, #0x800000
00796744  00 60 a0 e1                                      mov r6, r0
00796748  59 df ed eb                                      bl #0x30e4b4
0079674c  00 00 50 e3                                      cmp r0, #0
00796750  06 00 00 0a                                      beq #0x796770
00796754  02 11 e0 e3                                      mvn r1, #0x80000000
00796758  06 00 a0 e1                                      mov r0, r6
0079675c  02 15 41 e2                                      sub r1, r1, #0x800000
00796760  91 e0 ed eb                                      bl #0x30e9ac
00796764  00 00 50 e3                                      cmp r0, #0
00796768  04 60 85 15                                      strne r6, [r5, #4]
0079676c  b1 ff ff 1a                                      bne #0x796638
00796770  00 60 a0 e3                                      mov r6, #0
00796774  04 60 85 e5                                      str r6, [r5, #4]
00796778  ae ff ff ea                                      b #0x796638
0079677c  05 10 a0 e3                                      mov r1, #5
00796780  04 00 a0 e1                                      mov r0, r4
00796784  86 b4 ff eb                                      bl #0x7839a4
00796788  00 70 a0 e1                                      mov r7, r0
0079678c  07 10 a0 e1                                      mov r1, r7
00796790  04 00 a0 e1                                      mov r0, r4
00796794  b3 b4 ff eb                                      bl #0x783a68
00796798  71 e0 ed eb                                      bl #0x30e964
0079679c  de 15 a0 e3                                      mov r1, #0x37800000
007967a0  71 e1 ed eb                                      bl #0x30ed6c
007967a4  02 15 e0 e3                                      mvn r1, #0x800000
007967a8  00 60 a0 e1                                      mov r6, r0
007967ac  40 df ed eb                                      bl #0x30e4b4
007967b0  00 00 50 e3                                      cmp r0, #0
007967b4  16 00 00 1a                                      bne #0x796814
007967b8  00 60 a0 e3                                      mov r6, #0
007967bc  07 10 a0 e1                                      mov r1, r7
007967c0  00 60 85 e5                                      str r6, [r5]
007967c4  04 00 a0 e1                                      mov r0, r4
007967c8  a6 b4 ff eb                                      bl #0x783a68
007967cc  64 e0 ed eb                                      bl #0x30e964
007967d0  de 15 a0 e3                                      mov r1, #0x37800000
007967d4  64 e1 ed eb                                      bl #0x30ed6c
007967d8  02 15 e0 e3                                      mvn r1, #0x800000
007967dc  00 60 a0 e1                                      mov r6, r0
007967e0  33 df ed eb                                      bl #0x30e4b4
007967e4  00 00 50 e3                                      cmp r0, #0
007967e8  06 00 00 0a                                      beq #0x796808
007967ec  02 11 e0 e3                                      mvn r1, #0x80000000
007967f0  06 00 a0 e1                                      mov r0, r6
007967f4  02 15 41 e2                                      sub r1, r1, #0x800000
007967f8  6b e0 ed eb                                      bl #0x30e9ac
007967fc  00 00 50 e3                                      cmp r0, #0
00796800  10 60 85 15                                      strne r6, [r5, #0x10]
00796804  86 ff ff 1a                                      bne #0x796624
00796808  00 60 a0 e3                                      mov r6, #0
0079680c  10 60 85 e5                                      str r6, [r5, #0x10]
00796810  83 ff ff ea                                      b #0x796624
00796814  02 11 e0 e3                                      mvn r1, #0x80000000
00796818  06 00 a0 e1                                      mov r0, r6
0079681c  02 15 41 e2                                      sub r1, r1, #0x800000
00796820  61 e0 ed eb                                      bl #0x30e9ac
00796824  00 00 50 e3                                      cmp r0, #0
00796828  e3 ff ff 1a                                      bne #0x7967bc
0079682c  e1 ff ff ea                                      b #0x7967b8
00796830  02 11 e0 e3                                      mvn r1, #0x80000000
00796834  06 00 a0 e1                                      mov r0, r6
00796838  02 15 41 e2                                      sub r1, r1, #0x800000
0079683c  5a e0 ed eb                                      bl #0x30e9ac
00796840  00 00 50 e3                                      cmp r0, #0
00796844  b6 ff ff 1a                                      bne #0x796724
00796848  b4 ff ff ea                                      b #0x796720

; FUNCTION 0x007968b8, declared_size=104, range_size=104, mode=arm
; class-group: gameswf::matrix
; alias: _ZNK7gameswf6matrix12get_rotationEv
; demangled: gameswf::matrix::get_rotation() const
; decoder-mode: arm
007968b8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007968bc  00 50 90 e5                                      ldr r5, [r0]
007968c0  10 10 90 e5                                      ldr r1, [r0, #0x10]
007968c4  00 40 a0 e1                                      mov r4, r0
007968c8  0c 60 90 e5                                      ldr r6, [r0, #0xc]
007968cc  05 00 a0 e1                                      mov r0, r5
007968d0  25 e1 ed eb                                      bl #0x30ed6c
007968d4  04 10 94 e5                                      ldr r1, [r4, #4]
007968d8  00 70 a0 e1                                      mov r7, r0
007968dc  06 00 a0 e1                                      mov r0, r6
007968e0  21 e1 ed eb                                      bl #0x30ed6c
007968e4  00 10 a0 e1                                      mov r1, r0
007968e8  07 00 a0 e1                                      mov r0, r7
007968ec  ae de ed eb                                      bl #0x30e3ac
007968f0  00 10 a0 e3                                      mov r1, #0
007968f4  84 df ed eb                                      bl #0x30e70c
007968f8  00 00 50 e3                                      cmp r0, #0
007968fc  03 00 00 1a                                      bne #0x796910
00796900  06 00 a0 e1                                      mov r0, r6
00796904  05 10 a0 e1                                      mov r1, r5
00796908  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0079690c  29 dd ed ea                                      b #0x30ddb8
00796910  02 11 85 e2                                      add r1, r5, #0x80000000
00796914  06 00 a0 e1                                      mov r0, r6
00796918  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0079691c  25 dd ed ea                                      b #0x30ddb8

; FUNCTION 0x00796920, declared_size=324, range_size=324, mode=arm
; class-group: gameswf::matrix
; alias: _ZN7gameswf6matrix18set_scale_rotationEfff
; demangled: gameswf::matrix::set_scale_rotation(float, float, float)
; decoder-mode: arm
00796920  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00796924  00 40 a0 e1                                      mov r4, r0
00796928  03 00 a0 e1                                      mov r0, r3
0079692c  03 50 a0 e1                                      mov r5, r3
00796930  02 60 a0 e1                                      mov r6, r2
00796934  01 80 a0 e1                                      mov r8, r1
00796938  85 df ed eb                                      bl #0x30e754
0079693c  00 70 a0 e1                                      mov r7, r0
00796940  05 00 a0 e1                                      mov r0, r5
00796944  6f e0 ed eb                                      bl #0x30eb08
00796948  07 10 a0 e1                                      mov r1, r7
0079694c  00 a0 a0 e1                                      mov sl, r0
00796950  08 00 a0 e1                                      mov r0, r8
00796954  04 e1 ed eb                                      bl #0x30ed6c
00796958  02 15 e0 e3                                      mvn r1, #0x800000
0079695c  00 50 a0 e1                                      mov r5, r0
00796960  d3 de ed eb                                      bl #0x30e4b4
00796964  00 00 50 e3                                      cmp r0, #0
00796968  38 00 00 0a                                      beq #0x796a50
0079696c  02 11 e0 e3                                      mvn r1, #0x80000000
00796970  05 00 a0 e1                                      mov r0, r5
00796974  02 15 41 e2                                      sub r1, r1, #0x800000
00796978  0b e0 ed eb                                      bl #0x30e9ac
0079697c  00 00 50 e3                                      cmp r0, #0
00796980  32 00 00 0a                                      beq #0x796a50
00796984  00 50 84 e5                                      str r5, [r4]
00796988  06 10 a0 e1                                      mov r1, r6
0079698c  02 01 8a e2                                      add r0, sl, #0x80000000
00796990  f5 e0 ed eb                                      bl #0x30ed6c
00796994  02 15 e0 e3                                      mvn r1, #0x800000
00796998  00 50 a0 e1                                      mov r5, r0
0079699c  c4 de ed eb                                      bl #0x30e4b4
007969a0  00 00 50 e3                                      cmp r0, #0
007969a4  27 00 00 0a                                      beq #0x796a48
007969a8  02 11 e0 e3                                      mvn r1, #0x80000000
007969ac  05 00 a0 e1                                      mov r0, r5
007969b0  02 15 41 e2                                      sub r1, r1, #0x800000
007969b4  fc df ed eb                                      bl #0x30e9ac
007969b8  00 00 50 e3                                      cmp r0, #0
007969bc  21 00 00 0a                                      beq #0x796a48
007969c0  04 50 84 e5                                      str r5, [r4, #4]
007969c4  0a 10 a0 e1                                      mov r1, sl
007969c8  08 00 a0 e1                                      mov r0, r8
007969cc  e6 e0 ed eb                                      bl #0x30ed6c
007969d0  02 15 e0 e3                                      mvn r1, #0x800000
007969d4  00 50 a0 e1                                      mov r5, r0
007969d8  b5 de ed eb                                      bl #0x30e4b4
007969dc  00 00 50 e3                                      cmp r0, #0
007969e0  16 00 00 0a                                      beq #0x796a40
007969e4  02 11 e0 e3                                      mvn r1, #0x80000000
007969e8  05 00 a0 e1                                      mov r0, r5
007969ec  02 15 41 e2                                      sub r1, r1, #0x800000
007969f0  ed df ed eb                                      bl #0x30e9ac
007969f4  00 00 50 e3                                      cmp r0, #0
007969f8  10 00 00 0a                                      beq #0x796a40
007969fc  0c 50 84 e5                                      str r5, [r4, #0xc]
00796a00  07 10 a0 e1                                      mov r1, r7
00796a04  06 00 a0 e1                                      mov r0, r6
00796a08  d7 e0 ed eb                                      bl #0x30ed6c
00796a0c  02 15 e0 e3                                      mvn r1, #0x800000
00796a10  00 50 a0 e1                                      mov r5, r0
00796a14  a6 de ed eb                                      bl #0x30e4b4
00796a18  00 00 50 e3                                      cmp r0, #0
00796a1c  0d 00 00 0a                                      beq #0x796a58
00796a20  02 11 e0 e3                                      mvn r1, #0x80000000
00796a24  05 00 a0 e1                                      mov r0, r5
00796a28  02 15 41 e2                                      sub r1, r1, #0x800000
00796a2c  de df ed eb                                      bl #0x30e9ac
00796a30  00 00 50 e3                                      cmp r0, #0
00796a34  07 00 00 0a                                      beq #0x796a58
00796a38  10 50 84 e5                                      str r5, [r4, #0x10]
00796a3c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00796a40  00 50 a0 e3                                      mov r5, #0
00796a44  ec ff ff ea                                      b #0x7969fc
00796a48  00 50 a0 e3                                      mov r5, #0
00796a4c  db ff ff ea                                      b #0x7969c0
00796a50  00 50 a0 e3                                      mov r5, #0
00796a54  ca ff ff ea                                      b #0x796984
00796a58  00 50 a0 e3                                      mov r5, #0
00796a5c  10 50 84 e5                                      str r5, [r4, #0x10]
00796a60  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
