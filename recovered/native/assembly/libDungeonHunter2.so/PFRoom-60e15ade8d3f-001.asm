; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00388218, declared_size=400, range_size=400, mode=arm
; class-group: PFRoom
; alias: _ZN6PFRoom17ExtendBoundingBoxERK4aabbIfE
; demangled: PFRoom::ExtendBoundingBox(aabb<float> const&)
; decoder-mode: arm
00388218  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0038821c  00 60 91 e5                                      ldr r6, [r1]
00388220  3c 70 90 e5                                      ldr r7, [r0, #0x3c]
00388224  00 40 a0 e1                                      mov r4, r0
00388228  01 50 a0 e1                                      mov r5, r1
0038822c  06 00 a0 e1                                      mov r0, r6
00388230  07 10 a0 e1                                      mov r1, r7
00388234  34 19 fe eb                                      bl #0x30e70c
00388238  00 00 50 e3                                      cmp r0, #0
0038823c  07 60 a0 01                                      moveq r6, r7
00388240  3c 60 84 e5                                      str r6, [r4, #0x3c]
00388244  04 70 95 e5                                      ldr r7, [r5, #4]
00388248  40 80 94 e5                                      ldr r8, [r4, #0x40]
0038824c  07 00 a0 e1                                      mov r0, r7
00388250  08 10 a0 e1                                      mov r1, r8
00388254  2c 19 fe eb                                      bl #0x30e70c
00388258  00 00 50 e3                                      cmp r0, #0
0038825c  08 70 a0 01                                      moveq r7, r8
00388260  40 70 84 e5                                      str r7, [r4, #0x40]
00388264  44 80 94 e5                                      ldr r8, [r4, #0x44]
00388268  08 70 95 e5                                      ldr r7, [r5, #8]
0038826c  08 10 a0 e1                                      mov r1, r8
00388270  07 00 a0 e1                                      mov r0, r7
00388274  24 19 fe eb                                      bl #0x30e70c
00388278  00 00 50 e3                                      cmp r0, #0
0038827c  08 70 a0 01                                      moveq r7, r8
00388280  44 70 84 e5                                      str r7, [r4, #0x44]
00388284  48 80 94 e5                                      ldr r8, [r4, #0x48]
00388288  0c 70 95 e5                                      ldr r7, [r5, #0xc]
0038828c  08 00 a0 e1                                      mov r0, r8
00388290  07 10 a0 e1                                      mov r1, r7
00388294  1c 19 fe eb                                      bl #0x30e70c
00388298  00 00 50 e3                                      cmp r0, #0
0038829c  08 70 a0 01                                      moveq r7, r8
003882a0  48 70 84 e5                                      str r7, [r4, #0x48]
003882a4  4c 80 94 e5                                      ldr r8, [r4, #0x4c]
003882a8  10 70 95 e5                                      ldr r7, [r5, #0x10]
003882ac  08 00 a0 e1                                      mov r0, r8
003882b0  07 10 a0 e1                                      mov r1, r7
003882b4  14 19 fe eb                                      bl #0x30e70c
003882b8  00 00 50 e3                                      cmp r0, #0
003882bc  08 70 a0 01                                      moveq r7, r8
003882c0  4c 70 84 e5                                      str r7, [r4, #0x4c]
003882c4  14 70 95 e5                                      ldr r7, [r5, #0x14]
003882c8  50 50 94 e5                                      ldr r5, [r4, #0x50]
003882cc  07 10 a0 e1                                      mov r1, r7
003882d0  05 00 a0 e1                                      mov r0, r5
003882d4  0c 19 fe eb                                      bl #0x30e70c
003882d8  00 00 50 e3                                      cmp r0, #0
003882dc  05 70 a0 01                                      moveq r7, r5
003882e0  20 50 94 e5                                      ldr r5, [r4, #0x20]
003882e4  50 70 84 e5                                      str r7, [r4, #0x50]
003882e8  06 00 a0 e1                                      mov r0, r6
003882ec  14 70 95 e5                                      ldr r7, [r5, #0x14]
003882f0  07 10 a0 e1                                      mov r1, r7
003882f4  04 19 fe eb                                      bl #0x30e70c
003882f8  00 00 50 e3                                      cmp r0, #0
003882fc  07 60 a0 01                                      moveq r6, r7
00388300  14 60 85 e5                                      str r6, [r5, #0x14]
00388304  40 60 94 e5                                      ldr r6, [r4, #0x40]
00388308  18 70 95 e5                                      ldr r7, [r5, #0x18]
0038830c  06 00 a0 e1                                      mov r0, r6
00388310  07 10 a0 e1                                      mov r1, r7
00388314  fc 18 fe eb                                      bl #0x30e70c
00388318  00 00 50 e3                                      cmp r0, #0
0038831c  07 60 a0 01                                      moveq r6, r7
00388320  18 60 85 e5                                      str r6, [r5, #0x18]
00388324  44 60 94 e5                                      ldr r6, [r4, #0x44]
00388328  1c 70 95 e5                                      ldr r7, [r5, #0x1c]
0038832c  06 00 a0 e1                                      mov r0, r6
00388330  07 10 a0 e1                                      mov r1, r7
00388334  f4 18 fe eb                                      bl #0x30e70c
00388338  00 00 50 e3                                      cmp r0, #0
0038833c  07 60 a0 01                                      moveq r6, r7
00388340  1c 60 85 e5                                      str r6, [r5, #0x1c]
00388344  48 60 94 e5                                      ldr r6, [r4, #0x48]
00388348  20 70 95 e5                                      ldr r7, [r5, #0x20]
0038834c  06 10 a0 e1                                      mov r1, r6
00388350  07 00 a0 e1                                      mov r0, r7
00388354  ec 18 fe eb                                      bl #0x30e70c
00388358  00 00 50 e3                                      cmp r0, #0
0038835c  07 60 a0 01                                      moveq r6, r7
00388360  20 60 85 e5                                      str r6, [r5, #0x20]
00388364  4c 60 94 e5                                      ldr r6, [r4, #0x4c]
00388368  24 70 95 e5                                      ldr r7, [r5, #0x24]
0038836c  06 10 a0 e1                                      mov r1, r6
00388370  07 00 a0 e1                                      mov r0, r7
00388374  e4 18 fe eb                                      bl #0x30e70c
00388378  00 00 50 e3                                      cmp r0, #0
0038837c  07 60 a0 01                                      moveq r6, r7
00388380  24 60 85 e5                                      str r6, [r5, #0x24]
00388384  50 40 94 e5                                      ldr r4, [r4, #0x50]
00388388  28 60 95 e5                                      ldr r6, [r5, #0x28]
0038838c  04 10 a0 e1                                      mov r1, r4
00388390  06 00 a0 e1                                      mov r0, r6
00388394  dc 18 fe eb                                      bl #0x30e70c
00388398  00 00 50 e3                                      cmp r0, #0
0038839c  06 40 a0 01                                      moveq r4, r6
003883a0  28 40 85 e5                                      str r4, [r5, #0x28]
003883a4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00520f98, declared_size=420, range_size=420, mode=arm
; class-group: PFRoom
; alias: _ZN6PFRoom16GetFloorHeightAtERK7Point3DIfEPfPS1_PP7PFFloorb
; demangled: PFRoom::GetFloorHeightAt(Point3D<float> const&, float*, Point3D<float>*, PFFloor**, bool)
; decoder-mode: arm
00520f98  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00520f9c  00 a0 91 e5                                      ldr sl, [r1]
00520fa0  01 60 a0 e1                                      mov r6, r1
00520fa4  00 50 a0 e1                                      mov r5, r0
00520fa8  0a 10 a0 e1                                      mov r1, sl
00520fac  3c 00 90 e5                                      ldr r0, [r0, #0x3c]
00520fb0  02 80 a0 e1                                      mov r8, r2
00520fb4  03 70 a0 e1                                      mov r7, r3
00520fb8  7b b6 f7 eb                                      bl #0x30e9ac
00520fbc  00 00 50 e3                                      cmp r0, #0
00520fc0  20 90 9d e5                                      ldr sb, [sp, #0x20]
00520fc4  24 40 dd e5                                      ldrb r4, [sp, #0x24]
00520fc8  38 00 00 0a                                      beq #0x5210b0
00520fcc  0a 00 a0 e1                                      mov r0, sl
00520fd0  48 10 95 e5                                      ldr r1, [r5, #0x48]
00520fd4  74 b6 f7 eb                                      bl #0x30e9ac
00520fd8  00 00 50 e3                                      cmp r0, #0
00520fdc  33 00 00 0a                                      beq #0x5210b0
00520fe0  04 a0 96 e5                                      ldr sl, [r6, #4]
00520fe4  40 00 95 e5                                      ldr r0, [r5, #0x40]
00520fe8  0a 10 a0 e1                                      mov r1, sl
00520fec  6e b6 f7 eb                                      bl #0x30e9ac
00520ff0  00 00 50 e3                                      cmp r0, #0
00520ff4  2d 00 00 0a                                      beq #0x5210b0
00520ff8  0a 00 a0 e1                                      mov r0, sl
00520ffc  4c 10 95 e5                                      ldr r1, [r5, #0x4c]
00521000  69 b6 f7 eb                                      bl #0x30e9ac
00521004  00 00 50 e3                                      cmp r0, #0
00521008  28 00 00 0a                                      beq #0x5210b0
0052100c  08 a0 96 e5                                      ldr sl, [r6, #8]
00521010  44 00 95 e5                                      ldr r0, [r5, #0x44]
00521014  0a 10 a0 e1                                      mov r1, sl
00521018  63 b6 f7 eb                                      bl #0x30e9ac
0052101c  00 00 50 e3                                      cmp r0, #0
00521020  22 00 00 0a                                      beq #0x5210b0
00521024  0a 00 a0 e1                                      mov r0, sl
00521028  50 10 95 e5                                      ldr r1, [r5, #0x50]
0052102c  5e b6 f7 eb                                      bl #0x30e9ac
00521030  00 00 50 e3                                      cmp r0, #0
00521034  1d 00 00 0a                                      beq #0x5210b0
00521038  00 00 54 e3                                      cmp r4, #0
0052103c  1d 00 00 0a                                      beq #0x5210b8
00521040  30 30 95 e5                                      ldr r3, [r5, #0x30]
00521044  34 20 95 e5                                      ldr r2, [r5, #0x34]
00521048  02 20 63 e0                                      rsb r2, r3, r2
0052104c  22 21 b0 e1                                      lsrs r2, r2, #2
00521050  00 40 a0 13                                      movne r4, #0
00521054  05 00 00 1a                                      bne #0x521070
00521058  14 00 00 ea                                      b #0x5210b0
0052105c  30 30 95 e5                                      ldr r3, [r5, #0x30]
00521060  34 20 95 e5                                      ldr r2, [r5, #0x34]
00521064  02 20 63 e0                                      rsb r2, r3, r2
00521068  42 01 54 e1                                      cmp r4, r2, asr #2
0052106c  0f 00 00 2a                                      bhs #0x5210b0
00521070  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00521074  06 10 a0 e1                                      mov r1, r6
00521078  07 30 a0 e1                                      mov r3, r7
0052107c  08 20 a0 e1                                      mov r2, r8
00521080  95 ea ff eb                                      bl #0x51badc
00521084  00 00 50 e3                                      cmp r0, #0
00521088  04 31 a0 e1                                      lsl r3, r4, #2
0052108c  01 40 84 e2                                      add r4, r4, #1
00521090  f1 ff ff 0a                                      beq #0x52105c
00521094  00 00 59 e3                                      cmp sb, #0
00521098  25 00 00 0a                                      beq #0x521134
0052109c  30 20 95 e5                                      ldr r2, [r5, #0x30]
005210a0  01 00 a0 e3                                      mov r0, #1
005210a4  03 30 92 e7                                      ldr r3, [r2, r3]
005210a8  00 30 89 e5                                      str r3, [sb]
005210ac  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005210b0  00 00 a0 e3                                      mov r0, #0
005210b4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005210b8  30 30 95 e5                                      ldr r3, [r5, #0x30]
005210bc  34 10 95 e5                                      ldr r1, [r5, #0x34]
005210c0  01 20 63 e0                                      rsb r2, r3, r1
005210c4  22 21 b0 e1                                      lsrs r2, r2, #2
005210c8  04 00 00 1a                                      bne #0x5210e0
005210cc  f7 ff ff ea                                      b #0x5210b0
005210d0  01 40 84 e2                                      add r4, r4, #1
005210d4  01 20 63 e0                                      rsb r2, r3, r1
005210d8  42 01 54 e1                                      cmp r4, r2, asr #2
005210dc  f3 ff ff 2a                                      bhs #0x5210b0
005210e0  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
005210e4  04 a1 a0 e1                                      lsl sl, r4, #2
005210e8  24 20 90 e5                                      ldr r2, [r0, #0x24]
005210ec  03 04 12 e3                                      tst r2, #0x3000000
005210f0  f6 ff ff 1a                                      bne #0x5210d0
005210f4  06 10 a0 e1                                      mov r1, r6
005210f8  08 20 a0 e1                                      mov r2, r8
005210fc  07 30 a0 e1                                      mov r3, r7
00521100  75 ea ff eb                                      bl #0x51badc
00521104  00 00 50 e3                                      cmp r0, #0
00521108  02 00 00 1a                                      bne #0x521118
0052110c  30 30 95 e5                                      ldr r3, [r5, #0x30]
00521110  34 10 95 e5                                      ldr r1, [r5, #0x34]
00521114  ed ff ff ea                                      b #0x5210d0
00521118  00 00 59 e3                                      cmp sb, #0
0052111c  04 00 00 0a                                      beq #0x521134
00521120  30 30 95 e5                                      ldr r3, [r5, #0x30]
00521124  01 00 a0 e3                                      mov r0, #1
00521128  0a 30 93 e7                                      ldr r3, [r3, sl]
0052112c  00 30 89 e5                                      str r3, [sb]
00521130  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00521134  01 00 a0 e3                                      mov r0, #1
00521138  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0052113c, declared_size=420, range_size=420, mode=arm
; class-group: PFRoom
; alias: _ZN6PFRoom14GetCollisionAtERK7Point3DIfERS1_RN6glitch4core10triangle3dIfEEPP7PFFloorb
; demangled: PFRoom::GetCollisionAt(Point3D<float> const&, Point3D<float>&, glitch::core::triangle3d<float>&, PFFloor**, bool)
; decoder-mode: arm
0052113c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00521140  00 a0 91 e5                                      ldr sl, [r1]
00521144  01 60 a0 e1                                      mov r6, r1
00521148  00 50 a0 e1                                      mov r5, r0
0052114c  0a 10 a0 e1                                      mov r1, sl
00521150  3c 00 90 e5                                      ldr r0, [r0, #0x3c]
00521154  02 80 a0 e1                                      mov r8, r2
00521158  03 70 a0 e1                                      mov r7, r3
0052115c  12 b6 f7 eb                                      bl #0x30e9ac
00521160  00 00 50 e3                                      cmp r0, #0
00521164  20 90 9d e5                                      ldr sb, [sp, #0x20]
00521168  24 40 dd e5                                      ldrb r4, [sp, #0x24]
0052116c  38 00 00 0a                                      beq #0x521254
00521170  0a 00 a0 e1                                      mov r0, sl
00521174  48 10 95 e5                                      ldr r1, [r5, #0x48]
00521178  0b b6 f7 eb                                      bl #0x30e9ac
0052117c  00 00 50 e3                                      cmp r0, #0
00521180  33 00 00 0a                                      beq #0x521254
00521184  04 a0 96 e5                                      ldr sl, [r6, #4]
00521188  40 00 95 e5                                      ldr r0, [r5, #0x40]
0052118c  0a 10 a0 e1                                      mov r1, sl
00521190  05 b6 f7 eb                                      bl #0x30e9ac
00521194  00 00 50 e3                                      cmp r0, #0
00521198  2d 00 00 0a                                      beq #0x521254
0052119c  0a 00 a0 e1                                      mov r0, sl
005211a0  4c 10 95 e5                                      ldr r1, [r5, #0x4c]
005211a4  00 b6 f7 eb                                      bl #0x30e9ac
005211a8  00 00 50 e3                                      cmp r0, #0
005211ac  28 00 00 0a                                      beq #0x521254
005211b0  08 a0 96 e5                                      ldr sl, [r6, #8]
005211b4  44 00 95 e5                                      ldr r0, [r5, #0x44]
005211b8  0a 10 a0 e1                                      mov r1, sl
005211bc  fa b5 f7 eb                                      bl #0x30e9ac
005211c0  00 00 50 e3                                      cmp r0, #0
005211c4  22 00 00 0a                                      beq #0x521254
005211c8  0a 00 a0 e1                                      mov r0, sl
005211cc  50 10 95 e5                                      ldr r1, [r5, #0x50]
005211d0  f5 b5 f7 eb                                      bl #0x30e9ac
005211d4  00 00 50 e3                                      cmp r0, #0
005211d8  1d 00 00 0a                                      beq #0x521254
005211dc  00 00 54 e3                                      cmp r4, #0
005211e0  1d 00 00 0a                                      beq #0x52125c
005211e4  30 30 95 e5                                      ldr r3, [r5, #0x30]
005211e8  34 20 95 e5                                      ldr r2, [r5, #0x34]
005211ec  02 20 63 e0                                      rsb r2, r3, r2
005211f0  22 21 b0 e1                                      lsrs r2, r2, #2
005211f4  00 40 a0 13                                      movne r4, #0
005211f8  05 00 00 1a                                      bne #0x521214
005211fc  14 00 00 ea                                      b #0x521254
00521200  30 30 95 e5                                      ldr r3, [r5, #0x30]
00521204  34 20 95 e5                                      ldr r2, [r5, #0x34]
00521208  02 20 63 e0                                      rsb r2, r3, r2
0052120c  42 01 54 e1                                      cmp r4, r2, asr #2
00521210  0f 00 00 2a                                      bhs #0x521254
00521214  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00521218  06 10 a0 e1                                      mov r1, r6
0052121c  07 30 a0 e1                                      mov r3, r7
00521220  08 20 a0 e1                                      mov r2, r8
00521224  d0 e9 ff eb                                      bl #0x51b96c
00521228  00 00 50 e3                                      cmp r0, #0
0052122c  04 31 a0 e1                                      lsl r3, r4, #2
00521230  01 40 84 e2                                      add r4, r4, #1
00521234  f1 ff ff 0a                                      beq #0x521200
00521238  00 00 59 e3                                      cmp sb, #0
0052123c  25 00 00 0a                                      beq #0x5212d8
00521240  30 20 95 e5                                      ldr r2, [r5, #0x30]
00521244  01 00 a0 e3                                      mov r0, #1
00521248  03 30 92 e7                                      ldr r3, [r2, r3]
0052124c  00 30 89 e5                                      str r3, [sb]
00521250  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00521254  00 00 a0 e3                                      mov r0, #0
00521258  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0052125c  30 30 95 e5                                      ldr r3, [r5, #0x30]
00521260  34 10 95 e5                                      ldr r1, [r5, #0x34]
00521264  01 20 63 e0                                      rsb r2, r3, r1
00521268  22 21 b0 e1                                      lsrs r2, r2, #2
0052126c  04 00 00 1a                                      bne #0x521284
00521270  f7 ff ff ea                                      b #0x521254
00521274  01 40 84 e2                                      add r4, r4, #1
00521278  01 20 63 e0                                      rsb r2, r3, r1
0052127c  42 01 54 e1                                      cmp r4, r2, asr #2
00521280  f3 ff ff 2a                                      bhs #0x521254
00521284  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00521288  04 a1 a0 e1                                      lsl sl, r4, #2
0052128c  24 20 90 e5                                      ldr r2, [r0, #0x24]
00521290  03 04 12 e3                                      tst r2, #0x3000000
00521294  f6 ff ff 1a                                      bne #0x521274
00521298  06 10 a0 e1                                      mov r1, r6
0052129c  08 20 a0 e1                                      mov r2, r8
005212a0  07 30 a0 e1                                      mov r3, r7
005212a4  b0 e9 ff eb                                      bl #0x51b96c
005212a8  00 00 50 e3                                      cmp r0, #0
005212ac  02 00 00 1a                                      bne #0x5212bc
005212b0  30 30 95 e5                                      ldr r3, [r5, #0x30]
005212b4  34 10 95 e5                                      ldr r1, [r5, #0x34]
005212b8  ed ff ff ea                                      b #0x521274
005212bc  00 00 59 e3                                      cmp sb, #0
005212c0  04 00 00 0a                                      beq #0x5212d8
005212c4  30 30 95 e5                                      ldr r3, [r5, #0x30]
005212c8  01 00 a0 e3                                      mov r0, #1
005212cc  0a 30 93 e7                                      ldr r3, [r3, sl]
005212d0  00 30 89 e5                                      str r3, [sb]
005212d4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005212d8  01 00 a0 e3                                      mov r0, #1
005212dc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x005212e0, declared_size=228, range_size=228, mode=arm
; class-group: PFRoom
; alias: _ZN6PFRoom14GetCollisionAtERK7Point3DIfES3_RS1_b
; demangled: PFRoom::GetCollisionAt(Point3D<float> const&, Point3D<float> const&, Point3D<float>&, bool)
; decoder-mode: arm
005212e0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005212e4  18 40 dd e5                                      ldrb r4, [sp, #0x18]
005212e8  00 50 a0 e1                                      mov r5, r0
005212ec  01 80 a0 e1                                      mov r8, r1
005212f0  00 00 54 e3                                      cmp r4, #0
005212f4  02 60 a0 e1                                      mov r6, r2
005212f8  03 70 a0 e1                                      mov r7, r3
005212fc  16 00 00 0a                                      beq #0x52135c
00521300  30 30 90 e5                                      ldr r3, [r0, #0x30]
00521304  34 20 90 e5                                      ldr r2, [r0, #0x34]
00521308  02 20 63 e0                                      rsb r2, r3, r2
0052130c  22 21 b0 e1                                      lsrs r2, r2, #2
00521310  00 40 a0 13                                      movne r4, #0
00521314  06 00 00 1a                                      bne #0x521334
00521318  00 00 a0 e3                                      mov r0, #0
0052131c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00521320  30 30 95 e5                                      ldr r3, [r5, #0x30]
00521324  34 20 95 e5                                      ldr r2, [r5, #0x34]
00521328  02 20 63 e0                                      rsb r2, r3, r2
0052132c  42 01 54 e1                                      cmp r4, r2, asr #2
00521330  f8 ff ff 2a                                      bhs #0x521318
00521334  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00521338  08 10 a0 e1                                      mov r1, r8
0052133c  06 20 a0 e1                                      mov r2, r6
00521340  07 30 a0 e1                                      mov r3, r7
00521344  4a e9 ff eb                                      bl #0x51b874
00521348  00 00 50 e3                                      cmp r0, #0
0052134c  01 40 84 e2                                      add r4, r4, #1
00521350  f2 ff ff 0a                                      beq #0x521320
00521354  01 00 a0 e3                                      mov r0, #1
00521358  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0052135c  30 30 90 e5                                      ldr r3, [r0, #0x30]
00521360  34 10 90 e5                                      ldr r1, [r0, #0x34]
00521364  01 20 63 e0                                      rsb r2, r3, r1
00521368  22 21 b0 e1                                      lsrs r2, r2, #2
0052136c  e9 ff ff 0a                                      beq #0x521318
00521370  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00521374  24 20 90 e5                                      ldr r2, [r0, #0x24]
00521378  03 04 12 e3                                      tst r2, #0x3000000
0052137c  07 00 00 0a                                      beq #0x5213a0
00521380  01 40 84 e2                                      add r4, r4, #1
00521384  01 20 63 e0                                      rsb r2, r3, r1
00521388  42 01 54 e1                                      cmp r4, r2, asr #2
0052138c  e1 ff ff 2a                                      bhs #0x521318
00521390  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00521394  24 20 90 e5                                      ldr r2, [r0, #0x24]
00521398  03 04 12 e3                                      tst r2, #0x3000000
0052139c  f7 ff ff 1a                                      bne #0x521380
005213a0  08 10 a0 e1                                      mov r1, r8
005213a4  06 20 a0 e1                                      mov r2, r6
005213a8  07 30 a0 e1                                      mov r3, r7
005213ac  30 e9 ff eb                                      bl #0x51b874
005213b0  00 00 50 e3                                      cmp r0, #0
005213b4  e6 ff ff 1a                                      bne #0x521354
005213b8  30 30 95 e5                                      ldr r3, [r5, #0x30]
005213bc  34 10 95 e5                                      ldr r1, [r5, #0x34]
005213c0  ee ff ff ea                                      b #0x521380

; FUNCTION 0x005213c4, declared_size=68, range_size=68, mode=arm
; class-group: PFRoom
; alias: _ZN6PFRoom9_DBG_DrawEv
; demangled: PFRoom::_DBG_Draw()
; decoder-mode: arm
005213c4  70 40 2d e9                                      push {r4, r5, r6, lr}
005213c8  30 30 90 e5                                      ldr r3, [r0, #0x30]
005213cc  34 20 90 e5                                      ldr r2, [r0, #0x34]
005213d0  00 50 a0 e1                                      mov r5, r0
005213d4  02 20 63 e0                                      rsb r2, r3, r2
005213d8  22 21 b0 e1                                      lsrs r2, r2, #2
005213dc  08 00 00 0a                                      beq #0x521404
005213e0  00 40 a0 e3                                      mov r4, #0
005213e4  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
005213e8  b4 eb ff eb                                      bl #0x51c2c0
005213ec  30 30 95 e5                                      ldr r3, [r5, #0x30]
005213f0  34 20 95 e5                                      ldr r2, [r5, #0x34]
005213f4  01 40 84 e2                                      add r4, r4, #1
005213f8  02 20 63 e0                                      rsb r2, r3, r2
005213fc  42 01 54 e1                                      cmp r4, r2, asr #2
00521400  f7 ff ff 3a                                      blo #0x5213e4
00521404  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00521408, declared_size=312, range_size=312, mode=arm
; class-group: PFRoom
; alias: _ZN6PFRoom9_PostLoadEv
; demangled: PFRoom::_PostLoad()
; decoder-mode: arm
00521408  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0052140c  0c d0 4d e2                                      sub sp, sp, #0xc
00521410  04 00 8d e5                                      str r0, [sp, #4]
00521414  34 a0 90 e5                                      ldr sl, [r0, #0x34]
00521418  30 70 90 e5                                      ldr r7, [r0, #0x30]
0052141c  0a 20 67 e0                                      rsb r2, r7, sl
00521420  22 31 b0 e1                                      lsrs r3, r2, #2
00521424  43 00 00 0a                                      beq #0x521538
00521428  07 30 a0 e1                                      mov r3, r7
0052142c  01 90 a0 e3                                      mov sb, #1
00521430  00 b0 a0 e3                                      mov fp, #0
00521434  0b 80 97 e7                                      ldr r8, [r7, fp]
00521438  20 10 98 e5                                      ldr r1, [r8, #0x20]
0052143c  01 03 11 e3                                      tst r1, #0x4000000
00521440  36 00 00 1a                                      bne #0x521520
00521444  42 01 59 e1                                      cmp sb, r2, asr #2
00521448  2f 00 00 2a                                      bhs #0x52150c
0052144c  09 51 a0 e1                                      lsl r5, sb, #2
00521450  09 40 a0 e1                                      mov r4, sb
00521454  05 60 93 e7                                      ldr r6, [r3, r5]
00521458  01 40 84 e2                                      add r4, r4, #1
0052145c  04 50 85 e2                                      add r5, r5, #4
00521460  20 30 96 e5                                      ldr r3, [r6, #0x20]
00521464  01 03 13 e3                                      tst r3, #0x4000000
00521468  23 00 00 1a                                      bne #0x5214fc
0052146c  50 10 96 e5                                      ldr r1, [r6, #0x50]
00521470  44 00 98 e5                                      ldr r0, [r8, #0x44]
00521474  4c b5 f7 eb                                      bl #0x30e9ac
00521478  00 00 50 e3                                      cmp r0, #0
0052147c  1e 00 00 0a                                      beq #0x5214fc
00521480  44 10 96 e5                                      ldr r1, [r6, #0x44]
00521484  50 00 98 e5                                      ldr r0, [r8, #0x50]
00521488  09 b4 f7 eb                                      bl #0x30e4b4
0052148c  00 00 50 e3                                      cmp r0, #0
00521490  19 00 00 0a                                      beq #0x5214fc
00521494  54 10 96 e5                                      ldr r1, [r6, #0x54]
00521498  48 00 98 e5                                      ldr r0, [r8, #0x48]
0052149c  42 b5 f7 eb                                      bl #0x30e9ac
005214a0  00 00 50 e3                                      cmp r0, #0
005214a4  14 00 00 0a                                      beq #0x5214fc
005214a8  48 10 96 e5                                      ldr r1, [r6, #0x48]
005214ac  54 00 98 e5                                      ldr r0, [r8, #0x54]
005214b0  ff b3 f7 eb                                      bl #0x30e4b4
005214b4  00 00 50 e3                                      cmp r0, #0
005214b8  0f 00 00 0a                                      beq #0x5214fc
005214bc  58 10 96 e5                                      ldr r1, [r6, #0x58]
005214c0  4c 00 98 e5                                      ldr r0, [r8, #0x4c]
005214c4  38 b5 f7 eb                                      bl #0x30e9ac
005214c8  00 00 50 e3                                      cmp r0, #0
005214cc  0a 00 00 0a                                      beq #0x5214fc
005214d0  4c 10 96 e5                                      ldr r1, [r6, #0x4c]
005214d4  58 00 98 e5                                      ldr r0, [r8, #0x58]
005214d8  f5 b3 f7 eb                                      bl #0x30e4b4
005214dc  00 00 50 e3                                      cmp r0, #0
005214e0  05 00 00 0a                                      beq #0x5214fc
005214e4  06 10 a0 e1                                      mov r1, r6
005214e8  08 00 a0 e1                                      mov r0, r8
005214ec  21 fa ff eb                                      bl #0x51fd78
005214f0  04 30 9d e5                                      ldr r3, [sp, #4]
005214f4  30 70 93 e5                                      ldr r7, [r3, #0x30]
005214f8  34 a0 93 e5                                      ldr sl, [r3, #0x34]
005214fc  0a 20 67 e0                                      rsb r2, r7, sl
00521500  42 01 54 e1                                      cmp r4, r2, asr #2
00521504  07 30 a0 e1                                      mov r3, r7
00521508  d1 ff ff 3a                                      blo #0x521454
0052150c  08 00 a0 e1                                      mov r0, r8
00521510  74 ea ff eb                                      bl #0x51bee8
00521514  04 30 9d e5                                      ldr r3, [sp, #4]
00521518  34 a0 93 e5                                      ldr sl, [r3, #0x34]
0052151c  30 70 93 e5                                      ldr r7, [r3, #0x30]
00521520  0a 20 67 e0                                      rsb r2, r7, sl
00521524  42 01 59 e1                                      cmp sb, r2, asr #2
00521528  04 b0 8b e2                                      add fp, fp, #4
0052152c  01 90 89 e2                                      add sb, sb, #1
00521530  07 30 a0 31                                      movlo r3, r7
00521534  be ff ff 3a                                      blo #0x521434
00521538  0c d0 8d e2                                      add sp, sp, #0xc
0052153c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00521540, declared_size=472, range_size=472, mode=arm
; class-group: PFRoom
; alias: _ZN6PFRoomC1EPKcjP7PFWorldP13PFGOuterGraphP13PFGInnerGraph
; demangled: PFRoom::PFRoom(char const*, unsigned int, PFWorld*, PFGOuterGraph*, PFGInnerGraph*)
; decoder-mode: arm
00521540  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00521544  98 51 9f e5                                      ldr r5, [pc, #0x198]
00521548  98 c1 9f e5                                      ldr ip, [pc, #0x198]
0052154c  10 d0 4d e2                                      sub sp, sp, #0x10
00521550  05 50 8f e0                                      add r5, pc, r5
00521554  0c c0 95 e7                                      ldr ip, [r5, ip]
00521558  00 40 a0 e1                                      mov r4, r0
0052155c  02 60 a0 e1                                      mov r6, r2
00521560  08 c0 8c e2                                      add ip, ip, #8
00521564  04 c0 80 e4                                      str ip, [r0], #4
00521568  0c 20 8d e2                                      add r2, sp, #0xc
0052156c  03 80 a0 e1                                      mov r8, r3
00521570  28 70 9d e5                                      ldr r7, [sp, #0x28]
00521574  dc ca f7 eb                                      bl #0x3140ec
00521578  1c 60 84 e5                                      str r6, [r4, #0x1c]
0052157c  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00521580  00 30 a0 e3                                      mov r3, #0
00521584  00 20 a0 e3                                      mov r2, #0
00521588  00 00 58 e3                                      cmp r8, #0
0052158c  2c 10 84 e5                                      str r1, [r4, #0x2c]
00521590  38 20 84 e5                                      str r2, [r4, #0x38]
00521594  50 30 84 e5                                      str r3, [r4, #0x50]
00521598  20 80 84 e5                                      str r8, [r4, #0x20]
0052159c  24 20 84 e5                                      str r2, [r4, #0x24]
005215a0  28 70 84 e5                                      str r7, [r4, #0x28]
005215a4  30 20 84 e5                                      str r2, [r4, #0x30]
005215a8  34 20 84 e5                                      str r2, [r4, #0x34]
005215ac  3c 30 84 e5                                      str r3, [r4, #0x3c]
005215b0  40 30 84 e5                                      str r3, [r4, #0x40]
005215b4  44 30 84 e5                                      str r3, [r4, #0x44]
005215b8  48 30 84 e5                                      str r3, [r4, #0x48]
005215bc  4c 30 84 e5                                      str r3, [r4, #0x4c]
005215c0  1c 00 00 0a                                      beq #0x521638
005215c4  00 00 57 e3                                      cmp r7, #0
005215c8  30 00 00 0a                                      beq #0x521690
005215cc  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
005215d0  00 00 53 e3                                      cmp r3, #0
005215d4  02 00 00 0a                                      beq #0x5215e4
005215d8  04 00 a0 e1                                      mov r0, r4
005215dc  10 d0 8d e2                                      add sp, sp, #0x10
005215e0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005215e4  00 21 9f e5                                      ldr r2, [pc, #0x100]
005215e8  02 20 95 e7                                      ldr r2, [r5, r2]
005215ec  00 20 92 e5                                      ldr r2, [r2]
005215f0  02 00 52 e3                                      cmp r2, #2
005215f4  00 30 83 05                                      streq r3, [r3]
005215f8  f6 ff ff 0a                                      beq #0x5215d8
005215fc  01 00 52 e3                                      cmp r2, #1
00521600  f4 ff ff 1a                                      bne #0x5215d8
00521604  e4 00 9f e5                                      ldr r0, [pc, #0xe4]
00521608  e4 10 9f e5                                      ldr r1, [pc, #0xe4]
0052160c  e4 20 9f e5                                      ldr r2, [pc, #0xe4]
00521610  00 00 95 e7                                      ldr r0, [r5, r0]
00521614  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
00521618  1e c0 a0 e3                                      mov ip, #0x1e
0052161c  01 10 8f e0                                      add r1, pc, r1
00521620  02 20 8f e0                                      add r2, pc, r2
00521624  03 30 8f e0                                      add r3, pc, r3
00521628  a8 00 80 e2                                      add r0, r0, #0xa8
0052162c  00 c0 8d e5                                      str ip, [sp]
00521630  73 b2 f7 eb                                      bl #0x30e004
00521634  e7 ff ff ea                                      b #0x5215d8
00521638  ac 30 9f e5                                      ldr r3, [pc, #0xac]
0052163c  03 30 95 e7                                      ldr r3, [r5, r3]
00521640  00 30 93 e5                                      ldr r3, [r3]
00521644  02 00 53 e3                                      cmp r3, #2
00521648  00 80 88 05                                      streq r8, [r8]
0052164c  dc ff ff 0a                                      beq #0x5215c4
00521650  01 00 53 e3                                      cmp r3, #1
00521654  da ff ff 1a                                      bne #0x5215c4
00521658  90 00 9f e5                                      ldr r0, [pc, #0x90]
0052165c  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
00521660  9c 20 9f e5                                      ldr r2, [pc, #0x9c]
00521664  00 00 95 e7                                      ldr r0, [r5, r0]
00521668  98 30 9f e5                                      ldr r3, [pc, #0x98]
0052166c  1c c0 a0 e3                                      mov ip, #0x1c
00521670  01 10 8f e0                                      add r1, pc, r1
00521674  a8 00 80 e2                                      add r0, r0, #0xa8
00521678  02 20 8f e0                                      add r2, pc, r2
0052167c  03 30 8f e0                                      add r3, pc, r3
00521680  00 c0 8d e5                                      str ip, [sp]
00521684  5e b2 f7 eb                                      bl #0x30e004
00521688  28 70 94 e5                                      ldr r7, [r4, #0x28]
0052168c  cc ff ff ea                                      b #0x5215c4
00521690  54 30 9f e5                                      ldr r3, [pc, #0x54]
00521694  03 30 95 e7                                      ldr r3, [r5, r3]
00521698  00 30 93 e5                                      ldr r3, [r3]
0052169c  02 00 53 e3                                      cmp r3, #2
005216a0  00 70 87 05                                      streq r7, [r7]
005216a4  c8 ff ff 0a                                      beq #0x5215cc
005216a8  01 00 53 e3                                      cmp r3, #1
005216ac  c6 ff ff 1a                                      bne #0x5215cc
005216b0  38 00 9f e5                                      ldr r0, [pc, #0x38]
005216b4  50 10 9f e5                                      ldr r1, [pc, #0x50]
005216b8  50 20 9f e5                                      ldr r2, [pc, #0x50]
005216bc  00 00 95 e7                                      ldr r0, [r5, r0]
005216c0  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
005216c4  1d c0 a0 e3                                      mov ip, #0x1d
005216c8  01 10 8f e0                                      add r1, pc, r1
005216cc  02 20 8f e0                                      add r2, pc, r2
005216d0  03 30 8f e0                                      add r3, pc, r3
005216d4  a8 00 80 e2                                      add r0, r0, #0xa8
005216d8  00 c0 8d e5                                      str ip, [sp]
005216dc  48 b2 f7 eb                                      bl #0x30e004
005216e0  b9 ff ff ea                                      b #0x5215cc
; mapping-symbol data/literal pool
005216e4  40 35 47 00 24 39 00 00 c0 39 00 00 c0 19 00 00  .byte 0x40, 0x35, 0x47, 0x00, 0x24, 0x39, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
005216f4  bc cd 39 00 08 b3 3b 00 5c b3 3b 00 68 cd 39 00  .byte 0xbc, 0xcd, 0x39, 0x00, 0x08, 0xb3, 0x3b, 0x00, 0x5c, 0xb3, 0x3b, 0x00, 0x68, 0xcd, 0x39, 0x00
00521704  00 b3 3b 00 04 b3 3b 00 10 cd 39 00 4c b2 3b 00  .byte 0x00, 0xb3, 0x3b, 0x00, 0x04, 0xb3, 0x3b, 0x00, 0x10, 0xcd, 0x39, 0x00, 0x4c, 0xb2, 0x3b, 0x00
00521714  b0 b2 3b 00                                      .byte 0xb0, 0xb2, 0x3b, 0x00

; FUNCTION 0x00521718, declared_size=472, range_size=472, mode=arm
; class-group: PFRoom
; alias: _ZN6PFRoomC2EPKcjP7PFWorldP13PFGOuterGraphP13PFGInnerGraph
; demangled: PFRoom::PFRoom(char const*, unsigned int, PFWorld*, PFGOuterGraph*, PFGInnerGraph*)
; decoder-mode: arm
00521718  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0052171c  98 51 9f e5                                      ldr r5, [pc, #0x198]
00521720  98 c1 9f e5                                      ldr ip, [pc, #0x198]
00521724  10 d0 4d e2                                      sub sp, sp, #0x10
00521728  05 50 8f e0                                      add r5, pc, r5
0052172c  0c c0 95 e7                                      ldr ip, [r5, ip]
00521730  00 40 a0 e1                                      mov r4, r0
00521734  02 60 a0 e1                                      mov r6, r2
00521738  08 c0 8c e2                                      add ip, ip, #8
0052173c  04 c0 80 e4                                      str ip, [r0], #4
00521740  0c 20 8d e2                                      add r2, sp, #0xc
00521744  03 80 a0 e1                                      mov r8, r3
00521748  28 70 9d e5                                      ldr r7, [sp, #0x28]
0052174c  66 ca f7 eb                                      bl #0x3140ec
00521750  1c 60 84 e5                                      str r6, [r4, #0x1c]
00521754  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00521758  00 30 a0 e3                                      mov r3, #0
0052175c  00 20 a0 e3                                      mov r2, #0
00521760  00 00 58 e3                                      cmp r8, #0
00521764  2c 10 84 e5                                      str r1, [r4, #0x2c]
00521768  38 20 84 e5                                      str r2, [r4, #0x38]
0052176c  50 30 84 e5                                      str r3, [r4, #0x50]
00521770  20 80 84 e5                                      str r8, [r4, #0x20]
00521774  24 20 84 e5                                      str r2, [r4, #0x24]
00521778  28 70 84 e5                                      str r7, [r4, #0x28]
0052177c  30 20 84 e5                                      str r2, [r4, #0x30]
00521780  34 20 84 e5                                      str r2, [r4, #0x34]
00521784  3c 30 84 e5                                      str r3, [r4, #0x3c]
00521788  40 30 84 e5                                      str r3, [r4, #0x40]
0052178c  44 30 84 e5                                      str r3, [r4, #0x44]
00521790  48 30 84 e5                                      str r3, [r4, #0x48]
00521794  4c 30 84 e5                                      str r3, [r4, #0x4c]
00521798  1c 00 00 0a                                      beq #0x521810
0052179c  00 00 57 e3                                      cmp r7, #0
005217a0  30 00 00 0a                                      beq #0x521868
005217a4  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
005217a8  00 00 53 e3                                      cmp r3, #0
005217ac  02 00 00 0a                                      beq #0x5217bc
005217b0  04 00 a0 e1                                      mov r0, r4
005217b4  10 d0 8d e2                                      add sp, sp, #0x10
005217b8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005217bc  00 21 9f e5                                      ldr r2, [pc, #0x100]
005217c0  02 20 95 e7                                      ldr r2, [r5, r2]
005217c4  00 20 92 e5                                      ldr r2, [r2]
005217c8  02 00 52 e3                                      cmp r2, #2
005217cc  00 30 83 05                                      streq r3, [r3]
005217d0  f6 ff ff 0a                                      beq #0x5217b0
005217d4  01 00 52 e3                                      cmp r2, #1
005217d8  f4 ff ff 1a                                      bne #0x5217b0
005217dc  e4 00 9f e5                                      ldr r0, [pc, #0xe4]
005217e0  e4 10 9f e5                                      ldr r1, [pc, #0xe4]
005217e4  e4 20 9f e5                                      ldr r2, [pc, #0xe4]
005217e8  00 00 95 e7                                      ldr r0, [r5, r0]
005217ec  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
005217f0  1e c0 a0 e3                                      mov ip, #0x1e
005217f4  01 10 8f e0                                      add r1, pc, r1
005217f8  02 20 8f e0                                      add r2, pc, r2
005217fc  03 30 8f e0                                      add r3, pc, r3
00521800  a8 00 80 e2                                      add r0, r0, #0xa8
00521804  00 c0 8d e5                                      str ip, [sp]
00521808  fd b1 f7 eb                                      bl #0x30e004
0052180c  e7 ff ff ea                                      b #0x5217b0
00521810  ac 30 9f e5                                      ldr r3, [pc, #0xac]
00521814  03 30 95 e7                                      ldr r3, [r5, r3]
00521818  00 30 93 e5                                      ldr r3, [r3]
0052181c  02 00 53 e3                                      cmp r3, #2
00521820  00 80 88 05                                      streq r8, [r8]
00521824  dc ff ff 0a                                      beq #0x52179c
00521828  01 00 53 e3                                      cmp r3, #1
0052182c  da ff ff 1a                                      bne #0x52179c
00521830  90 00 9f e5                                      ldr r0, [pc, #0x90]
00521834  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
00521838  9c 20 9f e5                                      ldr r2, [pc, #0x9c]
0052183c  00 00 95 e7                                      ldr r0, [r5, r0]
00521840  98 30 9f e5                                      ldr r3, [pc, #0x98]
00521844  1c c0 a0 e3                                      mov ip, #0x1c
00521848  01 10 8f e0                                      add r1, pc, r1
0052184c  a8 00 80 e2                                      add r0, r0, #0xa8
00521850  02 20 8f e0                                      add r2, pc, r2
00521854  03 30 8f e0                                      add r3, pc, r3
00521858  00 c0 8d e5                                      str ip, [sp]
0052185c  e8 b1 f7 eb                                      bl #0x30e004
00521860  28 70 94 e5                                      ldr r7, [r4, #0x28]
00521864  cc ff ff ea                                      b #0x52179c
00521868  54 30 9f e5                                      ldr r3, [pc, #0x54]
0052186c  03 30 95 e7                                      ldr r3, [r5, r3]
00521870  00 30 93 e5                                      ldr r3, [r3]
00521874  02 00 53 e3                                      cmp r3, #2
00521878  00 70 87 05                                      streq r7, [r7]
0052187c  c8 ff ff 0a                                      beq #0x5217a4
00521880  01 00 53 e3                                      cmp r3, #1
00521884  c6 ff ff 1a                                      bne #0x5217a4
00521888  38 00 9f e5                                      ldr r0, [pc, #0x38]
0052188c  50 10 9f e5                                      ldr r1, [pc, #0x50]
00521890  50 20 9f e5                                      ldr r2, [pc, #0x50]
00521894  00 00 95 e7                                      ldr r0, [r5, r0]
00521898  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0052189c  1d c0 a0 e3                                      mov ip, #0x1d
005218a0  01 10 8f e0                                      add r1, pc, r1
005218a4  02 20 8f e0                                      add r2, pc, r2
005218a8  03 30 8f e0                                      add r3, pc, r3
005218ac  a8 00 80 e2                                      add r0, r0, #0xa8
005218b0  00 c0 8d e5                                      str ip, [sp]
005218b4  d2 b1 f7 eb                                      bl #0x30e004
005218b8  b9 ff ff ea                                      b #0x5217a4
; mapping-symbol data/literal pool
005218bc  68 33 47 00 24 39 00 00 c0 39 00 00 c0 19 00 00  .byte 0x68, 0x33, 0x47, 0x00, 0x24, 0x39, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
005218cc  e4 cb 39 00 30 b1 3b 00 84 b1 3b 00 90 cb 39 00  .byte 0xe4, 0xcb, 0x39, 0x00, 0x30, 0xb1, 0x3b, 0x00, 0x84, 0xb1, 0x3b, 0x00, 0x90, 0xcb, 0x39, 0x00
005218dc  28 b1 3b 00 2c b1 3b 00 38 cb 39 00 74 b0 3b 00  .byte 0x28, 0xb1, 0x3b, 0x00, 0x2c, 0xb1, 0x3b, 0x00, 0x38, 0xcb, 0x39, 0x00, 0x74, 0xb0, 0x3b, 0x00
005218ec  d8 b0 3b 00                                      .byte 0xd8, 0xb0, 0x3b, 0x00

; FUNCTION 0x005219cc, declared_size=648, range_size=648, mode=arm
; class-group: PFRoom
; alias: _ZN6PFRoom5_LinkEPS_
; demangled: PFRoom::_Link(PFRoom*)
; decoder-mode: arm
005219cc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005219d0  6c 22 9f e5                                      ldr r2, [pc, #0x26c]
005219d4  6c 32 9f e5                                      ldr r3, [pc, #0x26c]
005219d8  3c d0 4d e2                                      sub sp, sp, #0x3c
005219dc  02 20 8f e0                                      add r2, pc, r2
005219e0  00 a0 a0 e1                                      mov sl, r0
005219e4  00 20 8d e5                                      str r2, [sp]
005219e8  03 00 92 e7                                      ldr r0, [r2, r3]
005219ec  04 30 8d e5                                      str r3, [sp, #4]
005219f0  30 30 9a e5                                      ldr r3, [sl, #0x30]
005219f4  34 20 9a e5                                      ldr r2, [sl, #0x34]
005219f8  00 00 90 e5                                      ldr r0, [r0]
005219fc  01 80 a0 e1                                      mov r8, r1
00521a00  02 10 63 e0                                      rsb r1, r3, r2
00521a04  21 11 b0 e1                                      lsrs r1, r1, #2
00521a08  34 00 8d e5                                      str r0, [sp, #0x34]
00521a0c  77 00 00 0a                                      beq #0x521bf0
00521a10  34 12 9f e5                                      ldr r1, [pc, #0x234]
00521a14  00 70 a0 e3                                      mov r7, #0
00521a18  0c 10 8d e5                                      str r1, [sp, #0xc]
00521a1c  2c 12 9f e5                                      ldr r1, [pc, #0x22c]
00521a20  01 10 8f e0                                      add r1, pc, r1
00521a24  10 10 8d e5                                      str r1, [sp, #0x10]
00521a28  1c 10 8d e2                                      add r1, sp, #0x1c
00521a2c  08 10 8d e5                                      str r1, [sp, #8]
00521a30  18 10 8d e2                                      add r1, sp, #0x18
00521a34  14 10 8d e5                                      str r1, [sp, #0x14]
00521a38  07 61 93 e7                                      ldr r6, [r3, r7, lsl #2]
00521a3c  20 40 96 e5                                      ldr r4, [r6, #0x20]
00521a40  01 43 14 e2                                      ands r4, r4, #0x4000000
00521a44  65 00 00 1a                                      bne #0x521be0
00521a48  30 90 98 e5                                      ldr sb, [r8, #0x30]
00521a4c  34 b0 98 e5                                      ldr fp, [r8, #0x34]
00521a50  0b 10 69 e0                                      rsb r1, sb, fp
00521a54  21 11 b0 e1                                      lsrs r1, r1, #2
00521a58  60 00 00 0a                                      beq #0x521be0
00521a5c  04 51 99 e7                                      ldr r5, [sb, r4, lsl #2]
00521a60  20 30 95 e5                                      ldr r3, [r5, #0x20]
00521a64  01 03 13 e3                                      tst r3, #0x4000000
00521a68  56 00 00 1a                                      bne #0x521bc8
00521a6c  42 14 a0 e3                                      mov r1, #0x42000000
00521a70  12 17 81 e2                                      add r1, r1, #0x480000
00521a74  50 00 95 e5                                      ldr r0, [r5, #0x50]
00521a78  49 b4 f7 eb                                      bl #0x30eba4
00521a7c  00 10 a0 e1                                      mov r1, r0
00521a80  44 00 96 e5                                      ldr r0, [r6, #0x44]
00521a84  c8 b3 f7 eb                                      bl #0x30e9ac
00521a88  00 00 50 e3                                      cmp r0, #0
00521a8c  4d 00 00 0a                                      beq #0x521bc8
00521a90  42 14 a0 e3                                      mov r1, #0x42000000
00521a94  12 17 81 e2                                      add r1, r1, #0x480000
00521a98  44 00 95 e5                                      ldr r0, [r5, #0x44]
00521a9c  42 b2 f7 eb                                      bl #0x30e3ac
00521aa0  00 10 a0 e1                                      mov r1, r0
00521aa4  50 00 96 e5                                      ldr r0, [r6, #0x50]
00521aa8  81 b2 f7 eb                                      bl #0x30e4b4
00521aac  00 00 50 e3                                      cmp r0, #0
00521ab0  44 00 00 0a                                      beq #0x521bc8
00521ab4  42 14 a0 e3                                      mov r1, #0x42000000
00521ab8  12 17 81 e2                                      add r1, r1, #0x480000
00521abc  54 00 95 e5                                      ldr r0, [r5, #0x54]
00521ac0  37 b4 f7 eb                                      bl #0x30eba4
00521ac4  00 10 a0 e1                                      mov r1, r0
00521ac8  48 00 96 e5                                      ldr r0, [r6, #0x48]
00521acc  b6 b3 f7 eb                                      bl #0x30e9ac
00521ad0  00 00 50 e3                                      cmp r0, #0
00521ad4  3b 00 00 0a                                      beq #0x521bc8
00521ad8  42 14 a0 e3                                      mov r1, #0x42000000
00521adc  12 17 81 e2                                      add r1, r1, #0x480000
00521ae0  48 00 95 e5                                      ldr r0, [r5, #0x48]
00521ae4  30 b2 f7 eb                                      bl #0x30e3ac
00521ae8  00 10 a0 e1                                      mov r1, r0
00521aec  54 00 96 e5                                      ldr r0, [r6, #0x54]
00521af0  6f b2 f7 eb                                      bl #0x30e4b4
00521af4  00 00 50 e3                                      cmp r0, #0
00521af8  32 00 00 0a                                      beq #0x521bc8
00521afc  42 14 a0 e3                                      mov r1, #0x42000000
00521b00  12 17 81 e2                                      add r1, r1, #0x480000
00521b04  58 00 95 e5                                      ldr r0, [r5, #0x58]
00521b08  25 b4 f7 eb                                      bl #0x30eba4
00521b0c  00 10 a0 e1                                      mov r1, r0
00521b10  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
00521b14  a4 b3 f7 eb                                      bl #0x30e9ac
00521b18  00 00 50 e3                                      cmp r0, #0
00521b1c  29 00 00 0a                                      beq #0x521bc8
00521b20  42 14 a0 e3                                      mov r1, #0x42000000
00521b24  12 17 81 e2                                      add r1, r1, #0x480000
00521b28  4c 00 95 e5                                      ldr r0, [r5, #0x4c]
00521b2c  1e b2 f7 eb                                      bl #0x30e3ac
00521b30  00 10 a0 e1                                      mov r1, r0
00521b34  58 00 96 e5                                      ldr r0, [r6, #0x58]
00521b38  5d b2 f7 eb                                      bl #0x30e4b4
00521b3c  00 00 50 e3                                      cmp r0, #0
00521b40  20 00 00 0a                                      beq #0x521bc8
00521b44  00 30 9d e5                                      ldr r3, [sp]
00521b48  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00521b4c  02 90 93 e7                                      ldr sb, [r3, r2]
00521b50  09 00 a0 e1                                      mov r0, sb
00521b54  4b 57 f8 eb                                      bl #0x337888
00521b58  10 10 9d e5                                      ldr r1, [sp, #0x10]
00521b5c  14 20 9d e5                                      ldr r2, [sp, #0x14]
00521b60  08 00 9d e5                                      ldr r0, [sp, #8]
00521b64  60 c9 f7 eb                                      bl #0x3140ec
00521b68  09 00 a0 e1                                      mov r0, sb
00521b6c  08 10 9d e5                                      ldr r1, [sp, #8]
00521b70  c4 57 f8 eb                                      bl #0x337a88
00521b74  08 10 9d e5                                      ldr r1, [sp, #8]
00521b78  00 90 a0 e1                                      mov sb, r0
00521b7c  30 00 9d e5                                      ldr r0, [sp, #0x30]
00521b80  01 00 50 e1                                      cmp r0, r1
00521b84  06 00 00 0a                                      beq #0x521ba4
00521b88  00 00 50 e3                                      cmp r0, #0
00521b8c  04 00 00 0a                                      beq #0x521ba4
00521b90  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00521b94  01 10 60 e0                                      rsb r1, r0, r1
00521b98  80 00 51 e3                                      cmp r1, #0x80
00521b9c  25 00 00 8a                                      bhi #0x521c38
00521ba0  d6 9c 07 eb                                      bl #0x708f00
00521ba4  00 00 59 e3                                      cmp sb, #0
00521ba8  18 00 00 0a                                      beq #0x521c10
00521bac  46 a5 03 eb                                      bl #0x60b0cc
00521bb0  06 00 a0 e1                                      mov r0, r6
00521bb4  05 10 a0 e1                                      mov r1, r5
00521bb8  6e f8 ff eb                                      bl #0x51fd78
00521bbc  42 a5 03 eb                                      bl #0x60b0cc
00521bc0  30 90 98 e5                                      ldr sb, [r8, #0x30]
00521bc4  34 b0 98 e5                                      ldr fp, [r8, #0x34]
00521bc8  01 40 84 e2                                      add r4, r4, #1
00521bcc  0b 30 69 e0                                      rsb r3, sb, fp
00521bd0  43 01 54 e1                                      cmp r4, r3, asr #2
00521bd4  a0 ff ff 3a                                      blo #0x521a5c
00521bd8  30 30 9a e5                                      ldr r3, [sl, #0x30]
00521bdc  34 20 9a e5                                      ldr r2, [sl, #0x34]
00521be0  01 70 87 e2                                      add r7, r7, #1
00521be4  02 10 63 e0                                      rsb r1, r3, r2
00521be8  41 01 57 e1                                      cmp r7, r1, asr #2
00521bec  91 ff ff 3a                                      blo #0x521a38
00521bf0  06 00 9d e8                                      ldm sp, {r1, r2}
00521bf4  02 30 91 e7                                      ldr r3, [r1, r2]
00521bf8  34 20 9d e5                                      ldr r2, [sp, #0x34]
00521bfc  00 30 93 e5                                      ldr r3, [r3]
00521c00  03 00 52 e1                                      cmp r2, r3
00521c04  0d 00 00 1a                                      bne #0x521c40
00521c08  3c d0 8d e2                                      add sp, sp, #0x3c
00521c0c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00521c10  05 10 a0 e1                                      mov r1, r5
00521c14  06 00 a0 e1                                      mov r0, r6
00521c18  56 f8 ff eb                                      bl #0x51fd78
00521c1c  30 90 98 e5                                      ldr sb, [r8, #0x30]
00521c20  34 b0 98 e5                                      ldr fp, [r8, #0x34]
00521c24  01 40 84 e2                                      add r4, r4, #1
00521c28  0b 30 69 e0                                      rsb r3, sb, fp
00521c2c  43 01 54 e1                                      cmp r4, r3, asr #2
00521c30  89 ff ff 3a                                      blo #0x521a5c
00521c34  e7 ff ff ea                                      b #0x521bd8
00521c38  00 ba f7 eb                                      bl #0x310440
00521c3c  d8 ff ff ea                                      b #0x521ba4
00521c40  b2 b1 f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00521c44  b4 30 47 00 ac 40 00 00 84 08 00 00 a8 af 3b 00  .byte 0xb4, 0x30, 0x47, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xa8, 0xaf, 0x3b, 0x00

; FUNCTION 0x00521c54, declared_size=236, range_size=236, mode=arm
; class-group: PFRoom
; alias: _ZN6PFRoomD2Ev
; demangled: PFRoom::~PFRoom()
; decoder-mode: arm
00521c54  70 40 2d e9                                      push {r4, r5, r6, lr}
00521c58  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
00521c5c  d8 20 9f e5                                      ldr r2, [pc, #0xd8]
00521c60  00 40 a0 e1                                      mov r4, r0
00521c64  03 30 8f e0                                      add r3, pc, r3
00521c68  34 00 90 e5                                      ldr r0, [r0, #0x34]
00521c6c  30 10 94 e5                                      ldr r1, [r4, #0x30]
00521c70  02 20 93 e7                                      ldr r2, [r3, r2]
00521c74  00 30 61 e0                                      rsb r3, r1, r0
00521c78  08 20 82 e2                                      add r2, r2, #8
00521c7c  23 31 b0 e1                                      lsrs r3, r3, #2
00521c80  00 20 84 e5                                      str r2, [r4]
00521c84  0d 00 00 0a                                      beq #0x521cc0
00521c88  00 50 a0 e3                                      mov r5, #0
00521c8c  05 31 91 e7                                      ldr r3, [r1, r5, lsl #2]
00521c90  01 50 85 e2                                      add r5, r5, #1
00521c94  00 00 53 e3                                      cmp r3, #0
00521c98  05 00 00 0a                                      beq #0x521cb4
00521c9c  03 00 a0 e1                                      mov r0, r3
00521ca0  00 30 93 e5                                      ldr r3, [r3]
00521ca4  0f e0 a0 e1                                      mov lr, pc
00521ca8  04 f0 93 e5                                      ldr pc, [r3, #4]
00521cac  34 00 94 e5                                      ldr r0, [r4, #0x34]
00521cb0  30 10 94 e5                                      ldr r1, [r4, #0x30]
00521cb4  00 30 61 e0                                      rsb r3, r1, r0
00521cb8  43 01 55 e1                                      cmp r5, r3, asr #2
00521cbc  f2 ff ff 3a                                      blo #0x521c8c
00521cc0  00 00 51 e1                                      cmp r1, r0
00521cc4  30 00 94 e5                                      ldr r0, [r4, #0x30]
00521cc8  34 10 84 15                                      strne r1, [r4, #0x34]
00521ccc  30 30 84 e2                                      add r3, r4, #0x30
00521cd0  00 00 50 e3                                      cmp r0, #0
00521cd4  05 00 00 0a                                      beq #0x521cf0
00521cd8  08 10 93 e5                                      ldr r1, [r3, #8]
00521cdc  01 10 60 e0                                      rsb r1, r0, r1
00521ce0  03 10 c1 e3                                      bic r1, r1, #3
00521ce4  80 00 51 e3                                      cmp r1, #0x80
00521ce8  0d 00 00 8a                                      bhi #0x521d24
00521cec  83 9c 07 eb                                      bl #0x708f00
00521cf0  04 30 84 e2                                      add r3, r4, #4
00521cf4  14 00 93 e5                                      ldr r0, [r3, #0x14]
00521cf8  03 00 50 e1                                      cmp r0, r3
00521cfc  06 00 00 0a                                      beq #0x521d1c
00521d00  00 00 50 e3                                      cmp r0, #0
00521d04  04 00 00 0a                                      beq #0x521d1c
00521d08  04 10 94 e5                                      ldr r1, [r4, #4]
00521d0c  01 10 60 e0                                      rsb r1, r0, r1
00521d10  80 00 51 e3                                      cmp r1, #0x80
00521d14  04 00 00 8a                                      bhi #0x521d2c
00521d18  78 9c 07 eb                                      bl #0x708f00
00521d1c  04 00 a0 e1                                      mov r0, r4
00521d20  70 80 bd e8                                      pop {r4, r5, r6, pc}
00521d24  c5 b9 f7 eb                                      bl #0x310440
00521d28  f0 ff ff ea                                      b #0x521cf0
00521d2c  c3 b9 f7 eb                                      bl #0x310440
00521d30  04 00 a0 e1                                      mov r0, r4
00521d34  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00521d38  2c 2e 47 00 24 39 00 00                          .byte 0x2c, 0x2e, 0x47, 0x00, 0x24, 0x39, 0x00, 0x00

; FUNCTION 0x00521db0, declared_size=236, range_size=236, mode=arm
; class-group: PFRoom
; alias: _ZN6PFRoomD1Ev
; demangled: PFRoom::~PFRoom()
; decoder-mode: arm
00521db0  70 40 2d e9                                      push {r4, r5, r6, lr}
00521db4  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
00521db8  d8 20 9f e5                                      ldr r2, [pc, #0xd8]
00521dbc  00 40 a0 e1                                      mov r4, r0
00521dc0  03 30 8f e0                                      add r3, pc, r3
00521dc4  34 00 90 e5                                      ldr r0, [r0, #0x34]
00521dc8  30 10 94 e5                                      ldr r1, [r4, #0x30]
00521dcc  02 20 93 e7                                      ldr r2, [r3, r2]
00521dd0  00 30 61 e0                                      rsb r3, r1, r0
00521dd4  08 20 82 e2                                      add r2, r2, #8
00521dd8  23 31 b0 e1                                      lsrs r3, r3, #2
00521ddc  00 20 84 e5                                      str r2, [r4]
00521de0  0d 00 00 0a                                      beq #0x521e1c
00521de4  00 50 a0 e3                                      mov r5, #0
00521de8  05 31 91 e7                                      ldr r3, [r1, r5, lsl #2]
00521dec  01 50 85 e2                                      add r5, r5, #1
00521df0  00 00 53 e3                                      cmp r3, #0
00521df4  05 00 00 0a                                      beq #0x521e10
00521df8  03 00 a0 e1                                      mov r0, r3
00521dfc  00 30 93 e5                                      ldr r3, [r3]
00521e00  0f e0 a0 e1                                      mov lr, pc
00521e04  04 f0 93 e5                                      ldr pc, [r3, #4]
00521e08  34 00 94 e5                                      ldr r0, [r4, #0x34]
00521e0c  30 10 94 e5                                      ldr r1, [r4, #0x30]
00521e10  00 30 61 e0                                      rsb r3, r1, r0
00521e14  43 01 55 e1                                      cmp r5, r3, asr #2
00521e18  f2 ff ff 3a                                      blo #0x521de8
00521e1c  00 00 51 e1                                      cmp r1, r0
00521e20  30 00 94 e5                                      ldr r0, [r4, #0x30]
00521e24  34 10 84 15                                      strne r1, [r4, #0x34]
00521e28  30 30 84 e2                                      add r3, r4, #0x30
00521e2c  00 00 50 e3                                      cmp r0, #0
00521e30  05 00 00 0a                                      beq #0x521e4c
00521e34  08 10 93 e5                                      ldr r1, [r3, #8]
00521e38  01 10 60 e0                                      rsb r1, r0, r1
00521e3c  03 10 c1 e3                                      bic r1, r1, #3
00521e40  80 00 51 e3                                      cmp r1, #0x80
00521e44  0d 00 00 8a                                      bhi #0x521e80
00521e48  2c 9c 07 eb                                      bl #0x708f00
00521e4c  04 30 84 e2                                      add r3, r4, #4
00521e50  14 00 93 e5                                      ldr r0, [r3, #0x14]
00521e54  03 00 50 e1                                      cmp r0, r3
00521e58  06 00 00 0a                                      beq #0x521e78
00521e5c  00 00 50 e3                                      cmp r0, #0
00521e60  04 00 00 0a                                      beq #0x521e78
00521e64  04 10 94 e5                                      ldr r1, [r4, #4]
00521e68  01 10 60 e0                                      rsb r1, r0, r1
00521e6c  80 00 51 e3                                      cmp r1, #0x80
00521e70  04 00 00 8a                                      bhi #0x521e88
00521e74  21 9c 07 eb                                      bl #0x708f00
00521e78  04 00 a0 e1                                      mov r0, r4
00521e7c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00521e80  6e b9 f7 eb                                      bl #0x310440
00521e84  f0 ff ff ea                                      b #0x521e4c
00521e88  6c b9 f7 eb                                      bl #0x310440
00521e8c  04 00 a0 e1                                      mov r0, r4
00521e90  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00521e94  d0 2c 47 00 24 39 00 00                          .byte 0xd0, 0x2c, 0x47, 0x00, 0x24, 0x39, 0x00, 0x00

; FUNCTION 0x00521e9c, declared_size=28, range_size=28, mode=arm
; class-group: PFRoom
; alias: _ZN6PFRoomD0Ev
; demangled: PFRoom::~PFRoom()
; decoder-mode: arm
00521e9c  10 40 2d e9                                      push {r4, lr}
00521ea0  00 40 a0 e1                                      mov r4, r0
00521ea4  c1 ff ff eb                                      bl #0x521db0
00521ea8  04 00 a0 e1                                      mov r0, r4
00521eac  63 b9 f7 eb                                      bl #0x310440
00521eb0  04 00 a0 e1                                      mov r0, r4
00521eb4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00521eb8, declared_size=916, range_size=916, mode=arm
; class-group: PFRoom
; alias: _ZN6PFRoom10_LoadFloorEPN6glitch5scene14IMeshSceneNodeEPKc
; demangled: PFRoom::_LoadFloor(glitch::scene::IMeshSceneNode*, char const*)
; decoder-mode: arm
00521eb8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00521ebc  60 63 9f e5                                      ldr r6, [pc, #0x360]
00521ec0  60 73 9f e5                                      ldr r7, [pc, #0x360]
00521ec4  30 d0 4d e2                                      sub sp, sp, #0x30
00521ec8  06 60 8f e0                                      add r6, pc, r6
00521ecc  07 30 96 e7                                      ldr r3, [r6, r7]
00521ed0  00 90 51 e2                                      subs sb, r1, #0
00521ed4  00 40 a0 e1                                      mov r4, r0
00521ed8  00 30 93 e5                                      ldr r3, [r3]
00521edc  02 80 a0 e1                                      mov r8, r2
00521ee0  2c 30 8d e5                                      str r3, [sp, #0x2c]
00521ee4  8d 00 00 0a                                      beq #0x522120
00521ee8  00 10 a0 e3                                      mov r1, #0
00521eec  cc 00 a0 e3                                      mov r0, #0xcc
00521ef0  9e b9 f7 eb                                      bl #0x310570
00521ef4  2c c0 94 e5                                      ldr ip, [r4, #0x2c]
00521ef8  28 30 94 e5                                      ldr r3, [r4, #0x28]
00521efc  08 10 a0 e1                                      mov r1, r8
00521f00  00 c0 8d e5                                      str ip, [sp]
00521f04  04 20 a0 e1                                      mov r2, r4
00521f08  01 c0 a0 e3                                      mov ip, #1
00521f0c  00 50 a0 e1                                      mov r5, r0
00521f10  04 c0 8d e5                                      str ip, [sp, #4]
00521f14  a6 ec ff eb                                      bl #0x51d1b4
00521f18  34 80 94 e5                                      ldr r8, [r4, #0x34]
00521f1c  38 30 94 e5                                      ldr r3, [r4, #0x38]
00521f20  03 00 58 e1                                      cmp r8, r3
00521f24  92 00 00 0a                                      beq #0x522174
00521f28  00 50 88 e5                                      str r5, [r8]
00521f2c  34 30 94 e5                                      ldr r3, [r4, #0x34]
00521f30  04 30 83 e2                                      add r3, r3, #4
00521f34  34 30 84 e5                                      str r3, [r4, #0x34]
00521f38  ec 32 9f e5                                      ldr r3, [pc, #0x2ec]
00521f3c  14 80 8d e2                                      add r8, sp, #0x14
00521f40  03 a0 96 e7                                      ldr sl, [r6, r3]
00521f44  0a 00 a0 e1                                      mov r0, sl
00521f48  4e 56 f8 eb                                      bl #0x337888
00521f4c  dc 12 9f e5                                      ldr r1, [pc, #0x2dc]
00521f50  10 20 8d e2                                      add r2, sp, #0x10
00521f54  08 00 a0 e1                                      mov r0, r8
00521f58  01 10 8f e0                                      add r1, pc, r1
00521f5c  62 c8 f7 eb                                      bl #0x3140ec
00521f60  0a 00 a0 e1                                      mov r0, sl
00521f64  08 10 a0 e1                                      mov r1, r8
00521f68  c6 56 f8 eb                                      bl #0x337a88
00521f6c  00 a0 a0 e1                                      mov sl, r0
00521f70  28 00 9d e5                                      ldr r0, [sp, #0x28]
00521f74  08 00 50 e1                                      cmp r0, r8
00521f78  06 00 00 0a                                      beq #0x521f98
00521f7c  00 00 50 e3                                      cmp r0, #0
00521f80  04 00 00 0a                                      beq #0x521f98
00521f84  14 10 9d e5                                      ldr r1, [sp, #0x14]
00521f88  01 10 60 e0                                      rsb r1, r0, r1
00521f8c  80 00 51 e3                                      cmp r1, #0x80
00521f90  60 00 00 8a                                      bhi #0x522118
00521f94  d9 9b 07 eb                                      bl #0x708f00
00521f98  00 00 5a e3                                      cmp sl, #0
00521f9c  47 00 00 0a                                      beq #0x5220c0
00521fa0  49 a4 03 eb                                      bl #0x60b0cc
00521fa4  05 00 a0 e1                                      mov r0, r5
00521fa8  09 10 a0 e1                                      mov r1, sb
00521fac  e3 fa ff eb                                      bl #0x520b40
00521fb0  45 a4 03 eb                                      bl #0x60b0cc
00521fb4  34 20 94 e5                                      ldr r2, [r4, #0x34]
00521fb8  30 30 94 e5                                      ldr r3, [r4, #0x30]
00521fbc  02 30 63 e0                                      rsb r3, r3, r2
00521fc0  43 31 a0 e1                                      asr r3, r3, #2
00521fc4  01 00 53 e3                                      cmp r3, #1
00521fc8  45 00 00 0a                                      beq #0x5220e4
00521fcc  44 80 95 e5                                      ldr r8, [r5, #0x44]
00521fd0  3c a0 94 e5                                      ldr sl, [r4, #0x3c]
00521fd4  08 00 a0 e1                                      mov r0, r8
00521fd8  0a 10 a0 e1                                      mov r1, sl
00521fdc  ca b1 f7 eb                                      bl #0x30e70c
00521fe0  00 00 50 e3                                      cmp r0, #0
00521fe4  0a 80 a0 01                                      moveq r8, sl
00521fe8  3c 80 84 e5                                      str r8, [r4, #0x3c]
00521fec  48 80 95 e5                                      ldr r8, [r5, #0x48]
00521ff0  40 a0 94 e5                                      ldr sl, [r4, #0x40]
00521ff4  08 00 a0 e1                                      mov r0, r8
00521ff8  0a 10 a0 e1                                      mov r1, sl
00521ffc  c2 b1 f7 eb                                      bl #0x30e70c
00522000  00 00 50 e3                                      cmp r0, #0
00522004  0a 80 a0 01                                      moveq r8, sl
00522008  40 80 84 e5                                      str r8, [r4, #0x40]
0052200c  4c 80 95 e5                                      ldr r8, [r5, #0x4c]
00522010  44 a0 94 e5                                      ldr sl, [r4, #0x44]
00522014  08 00 a0 e1                                      mov r0, r8
00522018  0a 10 a0 e1                                      mov r1, sl
0052201c  ba b1 f7 eb                                      bl #0x30e70c
00522020  00 00 50 e3                                      cmp r0, #0
00522024  0a 80 a0 01                                      moveq r8, sl
00522028  44 80 84 e5                                      str r8, [r4, #0x44]
0052202c  50 80 95 e5                                      ldr r8, [r5, #0x50]
00522030  48 a0 94 e5                                      ldr sl, [r4, #0x48]
00522034  08 10 a0 e1                                      mov r1, r8
00522038  0a 00 a0 e1                                      mov r0, sl
0052203c  b2 b1 f7 eb                                      bl #0x30e70c
00522040  00 00 50 e3                                      cmp r0, #0
00522044  0a 80 a0 01                                      moveq r8, sl
00522048  48 80 84 e5                                      str r8, [r4, #0x48]
0052204c  54 80 95 e5                                      ldr r8, [r5, #0x54]
00522050  4c a0 94 e5                                      ldr sl, [r4, #0x4c]
00522054  08 10 a0 e1                                      mov r1, r8
00522058  0a 00 a0 e1                                      mov r0, sl
0052205c  aa b1 f7 eb                                      bl #0x30e70c
00522060  00 00 50 e3                                      cmp r0, #0
00522064  0a 80 a0 01                                      moveq r8, sl
00522068  4c 80 84 e5                                      str r8, [r4, #0x4c]
0052206c  50 a0 94 e5                                      ldr sl, [r4, #0x50]
00522070  58 80 95 e5                                      ldr r8, [r5, #0x58]
00522074  0a 00 a0 e1                                      mov r0, sl
00522078  08 10 a0 e1                                      mov r1, r8
0052207c  a2 b1 f7 eb                                      bl #0x30e70c
00522080  00 00 50 e3                                      cmp r0, #0
00522084  0a 80 a0 01                                      moveq r8, sl
00522088  50 80 84 e5                                      str r8, [r4, #0x50]
0052208c  a0 31 9f e5                                      ldr r3, [pc, #0x1a0]
00522090  40 10 95 e5                                      ldr r1, [r5, #0x40]
00522094  03 30 96 e7                                      ldr r3, [r6, r3]
00522098  10 30 93 e5                                      ldr r3, [r3, #0x10]
0052209c  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
005220a0  fe c0 f8 eb                                      bl #0x3524a0
005220a4  07 30 96 e7                                      ldr r3, [r6, r7]
005220a8  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
005220ac  00 30 93 e5                                      ldr r3, [r3]
005220b0  03 00 52 e1                                      cmp r2, r3
005220b4  59 00 00 1a                                      bne #0x522220
005220b8  30 d0 8d e2                                      add sp, sp, #0x30
005220bc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005220c0  09 10 a0 e1                                      mov r1, sb
005220c4  05 00 a0 e1                                      mov r0, r5
005220c8  9c fa ff eb                                      bl #0x520b40
005220cc  34 20 94 e5                                      ldr r2, [r4, #0x34]
005220d0  30 30 94 e5                                      ldr r3, [r4, #0x30]
005220d4  02 30 63 e0                                      rsb r3, r3, r2
005220d8  43 31 a0 e1                                      asr r3, r3, #2
005220dc  01 00 53 e3                                      cmp r3, #1
005220e0  b9 ff ff 1a                                      bne #0x521fcc
005220e4  44 30 95 e5                                      ldr r3, [r5, #0x44]
005220e8  3c 30 84 e5                                      str r3, [r4, #0x3c]
005220ec  48 30 95 e5                                      ldr r3, [r5, #0x48]
005220f0  40 30 84 e5                                      str r3, [r4, #0x40]
005220f4  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
005220f8  44 30 84 e5                                      str r3, [r4, #0x44]
005220fc  50 30 95 e5                                      ldr r3, [r5, #0x50]
00522100  48 30 84 e5                                      str r3, [r4, #0x48]
00522104  54 30 95 e5                                      ldr r3, [r5, #0x54]
00522108  4c 30 84 e5                                      str r3, [r4, #0x4c]
0052210c  58 30 95 e5                                      ldr r3, [r5, #0x58]
00522110  50 30 84 e5                                      str r3, [r4, #0x50]
00522114  dc ff ff ea                                      b #0x52208c
00522118  c8 b8 f7 eb                                      bl #0x310440
0052211c  9d ff ff ea                                      b #0x521f98
00522120  10 31 9f e5                                      ldr r3, [pc, #0x110]
00522124  03 30 96 e7                                      ldr r3, [r6, r3]
00522128  00 30 93 e5                                      ldr r3, [r3]
0052212c  02 00 53 e3                                      cmp r3, #2
00522130  00 90 89 05                                      streq sb, [sb]
00522134  6b ff ff 0a                                      beq #0x521ee8
00522138  01 00 53 e3                                      cmp r3, #1
0052213c  69 ff ff 1a                                      bne #0x521ee8
00522140  f4 00 9f e5                                      ldr r0, [pc, #0xf4]
00522144  f4 10 9f e5                                      ldr r1, [pc, #0xf4]
00522148  f4 20 9f e5                                      ldr r2, [pc, #0xf4]
0052214c  00 00 96 e7                                      ldr r0, [r6, r0]
00522150  f0 30 9f e5                                      ldr r3, [pc, #0xf0]
00522154  35 c0 a0 e3                                      mov ip, #0x35
00522158  01 10 8f e0                                      add r1, pc, r1
0052215c  02 20 8f e0                                      add r2, pc, r2
00522160  03 30 8f e0                                      add r3, pc, r3
00522164  a8 00 80 e2                                      add r0, r0, #0xa8
00522168  00 c0 8d e5                                      str ip, [sp]
0052216c  a4 af f7 eb                                      bl #0x30e004
00522170  5c ff ff ea                                      b #0x521ee8
00522174  30 30 94 e5                                      ldr r3, [r4, #0x30]
00522178  08 30 63 e0                                      rsb r3, r3, r8
0052217c  43 31 a0 e1                                      asr r3, r3, #2
00522180  01 00 53 e3                                      cmp r3, #1
00522184  03 10 83 20                                      addhs r1, r3, r3
00522188  01 10 83 32                                      addlo r1, r3, #1
0052218c  07 01 71 e3                                      cmn r1, #0xc0000001
00522190  19 00 00 9a                                      bls #0x5221fc
00522194  03 11 e0 e3                                      mvn r1, #0xc0000000
00522198  30 20 8d e2                                      add r2, sp, #0x30
0052219c  24 10 22 e5                                      str r1, [r2, #-0x24]!
005221a0  38 00 84 e2                                      add r0, r4, #0x38
005221a4  e5 fe ff eb                                      bl #0x521d40
005221a8  30 10 94 e5                                      ldr r1, [r4, #0x30]
005221ac  00 a0 a0 e1                                      mov sl, r0
005221b0  01 80 58 e0                                      subs r8, r8, r1
005221b4  00 80 a0 01                                      moveq r8, r0
005221b8  14 00 00 1a                                      bne #0x522210
005221bc  04 50 88 e4                                      str r5, [r8], #4
005221c0  30 00 94 e5                                      ldr r0, [r4, #0x30]
005221c4  38 10 94 e5                                      ldr r1, [r4, #0x38]
005221c8  00 00 50 e3                                      cmp r0, #0
005221cc  04 00 00 0a                                      beq #0x5221e4
005221d0  01 10 60 e0                                      rsb r1, r0, r1
005221d4  03 10 c1 e3                                      bic r1, r1, #3
005221d8  80 00 51 e3                                      cmp r1, #0x80
005221dc  09 00 00 8a                                      bhi #0x522208
005221e0  46 9b 07 eb                                      bl #0x708f00
005221e4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005221e8  30 a0 84 e5                                      str sl, [r4, #0x30]
005221ec  34 80 84 e5                                      str r8, [r4, #0x34]
005221f0  03 a1 8a e0                                      add sl, sl, r3, lsl #2
005221f4  38 a0 84 e5                                      str sl, [r4, #0x38]
005221f8  4e ff ff ea                                      b #0x521f38
005221fc  01 00 53 e1                                      cmp r3, r1
00522200  e4 ff ff 9a                                      bls #0x522198
00522204  e2 ff ff ea                                      b #0x522194
00522208  8c b8 f7 eb                                      bl #0x310440
0052220c  f4 ff ff ea                                      b #0x5221e4
00522210  08 20 a0 e1                                      mov r2, r8
00522214  47 af f7 eb                                      bl #0x30df38
00522218  08 80 80 e0                                      add r8, r0, r8
0052221c  e6 ff ff ea                                      b #0x5221bc
00522220  3a b0 f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00522224  c8 2b 47 00 ac 40 00 00 84 08 00 00 98 aa 3b 00  .byte 0xc8, 0x2b, 0x47, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x98, 0xaa, 0x3b, 0x00
00522234  f4 37 00 00 c0 39 00 00 c0 19 00 00 80 c2 39 00  .byte 0xf4, 0x37, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x80, 0xc2, 0x39, 0x00
00522244  8c a8 3b 00 20 a8 3b 00                          .byte 0x8c, 0xa8, 0x3b, 0x00, 0x20, 0xa8, 0x3b, 0x00
