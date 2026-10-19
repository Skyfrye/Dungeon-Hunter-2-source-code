; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000415b8, declared_size=1348, range_size=1348, mode=arm
; class-group: unsigned int* rg_etc1
; alias: _ZN7rg_etc119indirect_radix_sortIjtEEPT_jS2_S2_PKT0_jjb
; demangled: unsigned int* rg_etc1::indirect_radix_sort<unsigned int, unsigned short>(unsigned int, unsigned int*, unsigned int*, unsigned short const*, unsigned int, unsigned int, bool)
; decoder-mode: arm
000415b8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
000415bc  1c b0 8d e2                                      add fp, sp, #0x1c
000415c0  24 d0 4d e2                                      sub sp, sp, #0x24
000415c4  05 db 4d e2                                      sub sp, sp, #0x1400
000415c8  00 80 a0 e1                                      mov r8, r0
000415cc  20 05 9f e5                                      ldr r0, [pc, #0x520]
000415d0  01 a0 a0 e1                                      mov sl, r1
000415d4  10 10 9b e5                                      ldr r1, [fp, #0x10]
000415d8  03 40 a0 e1                                      mov r4, r3
000415dc  02 90 a0 e1                                      mov sb, r2
000415e0  00 00 9f e7                                      ldr r0, [pc, r0]
000415e4  01 00 51 e3                                      cmp r1, #1
000415e8  00 00 90 e5                                      ldr r0, [r0]
000415ec  24 00 0b e5                                      str r0, [fp, #-0x24]
000415f0  17 00 00 1a                                      bne #0x41654
000415f4  01 00 c8 e3                                      bic r0, r8, #1
000415f8  00 00 50 e3                                      cmp r0, #0
000415fc  10 00 00 0a                                      beq #0x41644
00041600  00 11 8a e0                                      add r1, sl, r0, lsl #2
00041604  07 00 e0 e3                                      mvn r0, #7
00041608  08 01 00 e0                                      and r0, r0, r8, lsl #2
0004160c  02 20 a0 e3                                      mov r2, #2
00041610  08 00 40 e2                                      sub r0, r0, #8
00041614  20 01 82 e0                                      add r0, r2, r0, lsr #2
00041618  00 20 a0 e3                                      mov r2, #0
0004161c  0a 30 a0 e1                                      mov r3, sl
00041620  01 70 82 e2                                      add r7, r2, #1
00041624  02 21 a3 e7                                      str r2, [r3, r2, lsl #2]!
00041628  02 20 82 e2                                      add r2, r2, #2
0004162c  04 70 83 e5                                      str r7, [r3, #4]
00041630  08 30 83 e2                                      add r3, r3, #8
00041634  01 00 53 e1                                      cmp r3, r1
00041638  f7 ff ff 1a                                      bne #0x4161c
0004163c  00 11 8a e0                                      add r1, sl, r0, lsl #2
00041640  01 00 00 ea                                      b #0x4164c
00041644  00 00 a0 e3                                      mov r0, #0
00041648  0a 10 a0 e1                                      mov r1, sl
0004164c  01 00 18 e3                                      tst r8, #1
00041650  00 00 81 15                                      strne r0, [r1]
00041654  0c 00 9b e5                                      ldr r0, [fp, #0xc]
00041658  01 6b 8d e2                                      add r6, sp, #0x400
0004165c  00 50 a0 e1                                      mov r5, r0
00041660  18 00 86 e2                                      add r0, r6, #0x18
00041664  05 15 a0 e1                                      lsl r1, r5, #0xa
00041668  75 c3 ff eb                                      bl #0x32444
0004166c  01 00 45 e2                                      sub r0, r5, #1
00041670  03 00 50 e3                                      cmp r0, #3
00041674  73 00 00 8a                                      bhi #0x41848
00041678  08 10 8f e2                                      add r1, pc, #8
0004167c  00 01 a0 e1                                      lsl r0, r0, #2
00041680  01 00 90 e7                                      ldr r0, [r0, r1]
00041684  01 f0 80 e0                                      add pc, r0, r1
00041688  10 00 00 00                                      andeq r0, r0, r0, lsl r0
0004168c  c8 01 00 00                                      andeq r0, r0, r8, asr #3
00041690  b8 00 00 00                                      strheq r0, [r0], -r8
00041694  30 01 00 00                                      andeq r0, r0, r0, lsr r1
00041698  01 10 c8 e3                                      bic r1, r8, #1
0004169c  0a 00 a0 e1                                      mov r0, sl
000416a0  00 00 51 e3                                      cmp r1, #0
000416a4  18 00 00 0a                                      beq #0x4170c
000416a8  01 01 8a e0                                      add r0, sl, r1, lsl #2
000416ac  07 10 e0 e3                                      mvn r1, #7
000416b0  08 11 01 e0                                      and r1, r1, r8, lsl #2
000416b4  01 eb 8d e2                                      add lr, sp, #0x400
000416b8  08 10 41 e2                                      sub r1, r1, #8
000416bc  08 60 9b e5                                      ldr r6, [fp, #8]
000416c0  02 20 a0 e3                                      mov r2, #2
000416c4  18 30 8e e2                                      add r3, lr, #0x18
000416c8  21 c1 82 e0                                      add ip, r2, r1, lsr #2
000416cc  0a 70 a0 e1                                      mov r7, sl
000416d0  22 00 97 e8                                      ldm r7, {r1, r5}
000416d4  08 70 87 e2                                      add r7, r7, #8
000416d8  00 00 57 e1                                      cmp r7, r0
000416dc  81 10 84 e0                                      add r1, r4, r1, lsl #1
000416e0  85 50 84 e0                                      add r5, r4, r5, lsl #1
000416e4  06 10 d1 e7                                      ldrb r1, [r1, r6]
000416e8  06 50 d5 e7                                      ldrb r5, [r5, r6]
000416ec  01 21 93 e7                                      ldr r2, [r3, r1, lsl #2]
000416f0  01 20 82 e2                                      add r2, r2, #1
000416f4  01 21 83 e7                                      str r2, [r3, r1, lsl #2]
000416f8  05 11 93 e7                                      ldr r1, [r3, r5, lsl #2]
000416fc  01 10 81 e2                                      add r1, r1, #1
00041700  05 11 83 e7                                      str r1, [r3, r5, lsl #2]
00041704  f1 ff ff 1a                                      bne #0x416d0
00041708  0c 01 8a e0                                      add r0, sl, ip, lsl #2
0004170c  08 10 9b e5                                      ldr r1, [fp, #8]
00041710  01 00 18 e3                                      tst r8, #1
00041714  10 80 8d e5                                      str r8, [sp, #0x10]
00041718  8a 00 00 0a                                      beq #0x41948
0004171c  00 00 90 e5                                      ldr r0, [r0]
00041720  01 eb 8d e2                                      add lr, sp, #0x400
00041724  80 00 84 e0                                      add r0, r4, r0, lsl #1
00041728  01 00 d0 e7                                      ldrb r0, [r0, r1]
0004172c  18 10 8e e2                                      add r1, lr, #0x18
00041730  00 21 91 e7                                      ldr r2, [r1, r0, lsl #2]
00041734  01 20 82 e2                                      add r2, r2, #1
00041738  00 21 81 e7                                      str r2, [r1, r0, lsl #2]
0004173c  81 00 00 ea                                      b #0x41948
00041740  00 00 58 e3                                      cmp r8, #0
00041744  83 00 00 0a                                      beq #0x41958
00041748  01 1b 8d e2                                      add r1, sp, #0x400
0004174c  08 30 9b e5                                      ldr r3, [fp, #8]
00041750  18 60 81 e2                                      add r6, r1, #0x18
00041754  08 01 a0 e1                                      lsl r0, r8, #2
00041758  01 c0 a0 e3                                      mov ip, #1
0004175c  02 e0 a0 e3                                      mov lr, #2
00041760  0a 70 a0 e1                                      mov r7, sl
00041764  10 80 8d e5                                      str r8, [sp, #0x10]
00041768  04 10 97 e4                                      ldr r1, [r7], #4
0004176c  04 00 50 e2                                      subs r0, r0, #4
00041770  81 10 84 e0                                      add r1, r4, r1, lsl #1
00041774  03 10 91 e7                                      ldr r1, [r1, r3]
00041778  71 50 ef e6                                      uxtb r5, r1
0004177c  05 21 96 e7                                      ldr r2, [r6, r5, lsl #2]
00041780  01 20 82 e2                                      add r2, r2, #1
00041784  05 21 86 e7                                      str r2, [r6, r5, lsl #2]
00041788  21 24 a0 e1                                      lsr r2, r1, #8
0004178c  1c 24 df e7                                      bfi r2, ip, #8, #0x18
00041790  21 18 a0 e1                                      lsr r1, r1, #0x10
00041794  1e 14 df e7                                      bfi r1, lr, #8, #0x18
00041798  02 51 96 e7                                      ldr r5, [r6, r2, lsl #2]
0004179c  01 50 85 e2                                      add r5, r5, #1
000417a0  02 51 86 e7                                      str r5, [r6, r2, lsl #2]
000417a4  01 21 96 e7                                      ldr r2, [r6, r1, lsl #2]
000417a8  01 20 82 e2                                      add r2, r2, #1
000417ac  01 21 86 e7                                      str r2, [r6, r1, lsl #2]
000417b0  ec ff ff 1a                                      bne #0x41768
000417b4  63 00 00 ea                                      b #0x41948
000417b8  00 00 58 e3                                      cmp r8, #0
000417bc  65 00 00 0a                                      beq #0x41958
000417c0  01 1b 8d e2                                      add r1, sp, #0x400
000417c4  10 80 8d e5                                      str r8, [sp, #0x10]
000417c8  08 01 a0 e1                                      lsl r0, r8, #2
000417cc  08 80 9b e5                                      ldr r8, [fp, #8]
000417d0  18 60 81 e2                                      add r6, r1, #0x18
000417d4  01 c0 a0 e3                                      mov ip, #1
000417d8  02 e0 a0 e3                                      mov lr, #2
000417dc  ff 5f a0 e3                                      mov r5, #0x3fc
000417e0  0a 70 a0 e1                                      mov r7, sl
000417e4  04 10 97 e4                                      ldr r1, [r7], #4
000417e8  04 00 50 e2                                      subs r0, r0, #4
000417ec  81 10 84 e0                                      add r1, r4, r1, lsl #1
000417f0  08 10 91 e7                                      ldr r1, [r1, r8]
000417f4  71 20 ef e6                                      uxtb r2, r1
000417f8  02 31 96 e7                                      ldr r3, [r6, r2, lsl #2]
000417fc  01 30 83 e2                                      add r3, r3, #1
00041800  02 31 86 e7                                      str r3, [r6, r2, lsl #2]
00041804  21 24 a0 e1                                      lsr r2, r1, #8
00041808  1c 24 df e7                                      bfi r2, ip, #8, #0x18
0004180c  02 31 96 e7                                      ldr r3, [r6, r2, lsl #2]
00041810  01 30 83 e2                                      add r3, r3, #1
00041814  02 31 86 e7                                      str r3, [r6, r2, lsl #2]
00041818  21 28 a0 e1                                      lsr r2, r1, #0x10
0004181c  1e 24 df e7                                      bfi r2, lr, #8, #0x18
00041820  21 1b 05 e0                                      and r1, r5, r1, lsr #22
00041824  03 1b 81 e3                                      orr r1, r1, #0xc00
00041828  02 31 96 e7                                      ldr r3, [r6, r2, lsl #2]
0004182c  01 30 83 e2                                      add r3, r3, #1
00041830  02 31 86 e7                                      str r3, [r6, r2, lsl #2]
00041834  01 20 96 e7                                      ldr r2, [r6, r1]
00041838  01 20 82 e2                                      add r2, r2, #1
0004183c  01 20 86 e7                                      str r2, [r6, r1]
00041840  e7 ff ff 1a                                      bne #0x417e4
00041844  3f 00 00 ea                                      b #0x41948
00041848  00 00 a0 e3                                      mov r0, #0
0004184c  a0 00 00 ea                                      b #0x41ad4
00041850  01 10 c8 e3                                      bic r1, r8, #1
00041854  0a 00 a0 e1                                      mov r0, sl
00041858  00 00 51 e3                                      cmp r1, #0
0004185c  10 80 8d e5                                      str r8, [sp, #0x10]
00041860  26 00 00 0a                                      beq #0x41900
00041864  01 e1 8a e0                                      add lr, sl, r1, lsl #2
00041868  07 10 e0 e3                                      mvn r1, #7
0004186c  08 11 01 e0                                      and r1, r1, r8, lsl #2
00041870  01 0b 8d e2                                      add r0, sp, #0x400
00041874  08 10 41 e2                                      sub r1, r1, #8
00041878  08 30 9b e5                                      ldr r3, [fp, #8]
0004187c  02 20 a0 e3                                      mov r2, #2
00041880  18 60 80 e2                                      add r6, r0, #0x18
00041884  21 c1 82 e0                                      add ip, r2, r1, lsr #2
00041888  01 80 a0 e3                                      mov r8, #1
0004188c  0a 70 a0 e1                                      mov r7, sl
00041890  22 00 97 e8                                      ldm r7, {r1, r5}
00041894  08 70 87 e2                                      add r7, r7, #8
00041898  0e 00 57 e1                                      cmp r7, lr
0004189c  81 10 84 e0                                      add r1, r4, r1, lsl #1
000418a0  85 50 84 e0                                      add r5, r4, r5, lsl #1
000418a4  03 10 91 e7                                      ldr r1, [r1, r3]
000418a8  03 50 95 e7                                      ldr r5, [r5, r3]
000418ac  71 20 ef e6                                      uxtb r2, r1
000418b0  02 01 96 e7                                      ldr r0, [r6, r2, lsl #2]
000418b4  01 00 80 e2                                      add r0, r0, #1
000418b8  02 01 86 e7                                      str r0, [r6, r2, lsl #2]
000418bc  21 04 a0 e1                                      lsr r0, r1, #8
000418c0  18 04 df e7                                      bfi r0, r8, #8, #0x18
000418c4  00 11 96 e7                                      ldr r1, [r6, r0, lsl #2]
000418c8  01 10 81 e2                                      add r1, r1, #1
000418cc  00 11 86 e7                                      str r1, [r6, r0, lsl #2]
000418d0  75 00 ef e6                                      uxtb r0, r5
000418d4  00 11 96 e7                                      ldr r1, [r6, r0, lsl #2]
000418d8  01 10 81 e2                                      add r1, r1, #1
000418dc  00 11 86 e7                                      str r1, [r6, r0, lsl #2]
000418e0  25 04 a0 e1                                      lsr r0, r5, #8
000418e4  18 04 df e7                                      bfi r0, r8, #8, #0x18
000418e8  00 11 96 e7                                      ldr r1, [r6, r0, lsl #2]
000418ec  01 10 81 e2                                      add r1, r1, #1
000418f0  00 11 86 e7                                      str r1, [r6, r0, lsl #2]
000418f4  e5 ff ff 1a                                      bne #0x41890
000418f8  10 80 9d e5                                      ldr r8, [sp, #0x10]
000418fc  0c 01 8a e0                                      add r0, sl, ip, lsl #2
00041900  01 eb 8d e2                                      add lr, sp, #0x400
00041904  08 10 9b e5                                      ldr r1, [fp, #8]
00041908  18 30 8e e2                                      add r3, lr, #0x18
0004190c  01 00 18 e3                                      tst r8, #1
00041910  0c 00 00 0a                                      beq #0x41948
00041914  00 00 90 e5                                      ldr r0, [r0]
00041918  80 00 84 e0                                      add r0, r4, r0, lsl #1
0004191c  01 00 90 e7                                      ldr r0, [r0, r1]
00041920  70 10 ef e6                                      uxtb r1, r0
00041924  20 04 a0 e1                                      lsr r0, r0, #8
00041928  01 21 93 e7                                      ldr r2, [r3, r1, lsl #2]
0004192c  01 20 82 e2                                      add r2, r2, #1
00041930  01 21 83 e7                                      str r2, [r3, r1, lsl #2]
00041934  01 10 a0 e3                                      mov r1, #1
00041938  11 04 df e7                                      bfi r0, r1, #8, #0x18
0004193c  00 11 93 e7                                      ldr r1, [r3, r0, lsl #2]
00041940  01 10 81 e2                                      add r1, r1, #1
00041944  00 11 83 e7                                      str r1, [r3, r0, lsl #2]
00041948  0c 00 9b e5                                      ldr r0, [fp, #0xc]
0004194c  10 80 9d e5                                      ldr r8, [sp, #0x10]
00041950  00 00 50 e3                                      cmp r0, #0
00041954  5d 00 00 0a                                      beq #0x41ad0
00041958  07 00 e0 e3                                      mvn r0, #7
0004195c  02 10 a0 e3                                      mov r1, #2
00041960  08 01 00 e0                                      and r0, r0, r8, lsl #2
00041964  08 50 9b e5                                      ldr r5, [fp, #8]
00041968  08 00 40 e2                                      sub r0, r0, #8
0004196c  01 c0 c8 e3                                      bic ip, r8, #1
00041970  00 e0 a0 e3                                      mov lr, #0
00041974  14 40 8d e5                                      str r4, [sp, #0x14]
00041978  20 01 81 e0                                      add r0, r1, r0, lsr #2
0004197c  04 00 8d e5                                      str r0, [sp, #4]
00041980  01 00 08 e2                                      and r0, r8, #1
00041984  08 00 8d e5                                      str r0, [sp, #8]
00041988  01 0b 8d e2                                      add r0, sp, #0x400
0004198c  18 80 8d e2                                      add r8, sp, #0x18
00041990  18 60 80 e2                                      add r6, r0, #0x18
00041994  00 c0 8d e5                                      str ip, [sp]
00041998  09 00 a0 e1                                      mov r0, sb
0004199c  0a 90 a0 e1                                      mov sb, sl
000419a0  00 70 a0 e3                                      mov r7, #0
000419a4  00 20 a0 e3                                      mov r2, #0
000419a8  06 10 a0 e1                                      mov r1, r6
000419ac  02 71 88 e7                                      str r7, [r8, r2, lsl #2]
000419b0  02 41 88 e0                                      add r4, r8, r2, lsl #2
000419b4  02 31 b1 e7                                      ldr r3, [r1, r2, lsl #2]!
000419b8  02 20 82 e2                                      add r2, r2, #2
000419bc  01 0c 52 e3                                      cmp r2, #0x100
000419c0  04 10 91 e5                                      ldr r1, [r1, #4]
000419c4  07 30 83 e0                                      add r3, r3, r7
000419c8  04 30 84 e5                                      str r3, [r4, #4]
000419cc  03 70 81 e0                                      add r7, r1, r3
000419d0  f4 ff ff 3a                                      blo #0x419a8
000419d4  14 40 9d e5                                      ldr r4, [sp, #0x14]
000419d8  8e 71 a0 e1                                      lsl r7, lr, #3
000419dc  00 00 5c e3                                      cmp ip, #0
000419e0  09 10 a0 e1                                      mov r1, sb
000419e4  26 00 00 0a                                      beq #0x41a84
000419e8  0c 21 89 e0                                      add r2, sb, ip, lsl #2
000419ec  09 a0 a0 e1                                      mov sl, sb
000419f0  0c e0 8d e5                                      str lr, [sp, #0xc]
000419f4  10 90 8d e5                                      str sb, [sp, #0x10]
000419f8  00 50 9a e8                                      ldm sl, {ip, lr}
000419fc  8c 30 84 e0                                      add r3, r4, ip, lsl #1
00041a00  8e 10 84 e0                                      add r1, r4, lr, lsl #1
00041a04  05 30 93 e7                                      ldr r3, [r3, r5]
00041a08  05 10 91 e7                                      ldr r1, [r1, r5]
00041a0c  18 50 8d e2                                      add r5, sp, #0x18
00041a10  33 37 a0 e1                                      lsr r3, r3, r7
00041a14  73 80 ef e6                                      uxtb r8, r3
00041a18  31 17 a0 e1                                      lsr r1, r1, r7
00041a1c  08 91 95 e7                                      ldr sb, [r5, r8, lsl #2]
00041a20  71 10 ef e6                                      uxtb r1, r1
00041a24  01 00 58 e1                                      cmp r8, r1
00041a28  03 00 00 1a                                      bne #0x41a3c
00041a2c  02 10 89 e2                                      add r1, sb, #2
00041a30  08 11 85 e7                                      str r1, [r5, r8, lsl #2]
00041a34  01 30 89 e2                                      add r3, sb, #1
00041a38  05 00 00 ea                                      b #0x41a54
00041a3c  01 30 89 e2                                      add r3, sb, #1
00041a40  08 31 85 e7                                      str r3, [r5, r8, lsl #2]
00041a44  01 31 95 e7                                      ldr r3, [r5, r1, lsl #2]
00041a48  01 40 83 e2                                      add r4, r3, #1
00041a4c  01 41 85 e7                                      str r4, [r5, r1, lsl #2]
00041a50  14 40 9d e5                                      ldr r4, [sp, #0x14]
00041a54  08 50 9b e5                                      ldr r5, [fp, #8]
00041a58  08 a0 8a e2                                      add sl, sl, #8
00041a5c  02 00 5a e1                                      cmp sl, r2
00041a60  09 c1 80 e7                                      str ip, [r0, sb, lsl #2]
00041a64  03 e1 80 e7                                      str lr, [r0, r3, lsl #2]
00041a68  e2 ff ff 1a                                      bne #0x419f8
00041a6c  04 10 9d e5                                      ldr r1, [sp, #4]
00041a70  18 80 8d e2                                      add r8, sp, #0x18
00041a74  10 90 9d e5                                      ldr sb, [sp, #0x10]
00041a78  00 c0 9d e5                                      ldr ip, [sp]
00041a7c  0c e0 9d e5                                      ldr lr, [sp, #0xc]
00041a80  01 11 89 e0                                      add r1, sb, r1, lsl #2
00041a84  08 20 9d e5                                      ldr r2, [sp, #8]
00041a88  00 00 52 e3                                      cmp r2, #0
00041a8c  08 00 00 0a                                      beq #0x41ab4
00041a90  00 10 91 e5                                      ldr r1, [r1]
00041a94  81 20 84 e0                                      add r2, r4, r1, lsl #1
00041a98  05 20 92 e7                                      ldr r2, [r2, r5]
00041a9c  32 27 a0 e1                                      lsr r2, r2, r7
00041aa0  72 20 ef e6                                      uxtb r2, r2
00041aa4  02 31 98 e7                                      ldr r3, [r8, r2, lsl #2]
00041aa8  01 70 83 e2                                      add r7, r3, #1
00041aac  02 71 88 e7                                      str r7, [r8, r2, lsl #2]
00041ab0  03 11 80 e7                                      str r1, [r0, r3, lsl #2]
00041ab4  0c 10 9b e5                                      ldr r1, [fp, #0xc]
00041ab8  01 e0 8e e2                                      add lr, lr, #1
00041abc  01 6b 86 e2                                      add r6, r6, #0x400
00041ac0  00 a0 a0 e1                                      mov sl, r0
00041ac4  01 00 5e e1                                      cmp lr, r1
00041ac8  b2 ff ff 1a                                      bne #0x41998
00041acc  00 00 00 ea                                      b #0x41ad4
00041ad0  0a 00 a0 e1                                      mov r0, sl
00041ad4  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
00041ad8  24 20 1b e5                                      ldr r2, [fp, #-0x24]
00041adc  01 10 9f e7                                      ldr r1, [pc, r1]
00041ae0  00 10 91 e5                                      ldr r1, [r1]
00041ae4  02 10 51 e0                                      subs r1, r1, r2
00041ae8  1c d0 4b 02                                      subeq sp, fp, #0x1c
00041aec  f0 8f bd 08                                      popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00041af0  5a c1 ff eb                                      bl #0x32060
00041af4  d0 ae 09 00                                      ldrdeq sl, fp, [sb], -r0
00041af8  d4 a9 09 00                                      ldrdeq sl, fp, [sb], -r4
