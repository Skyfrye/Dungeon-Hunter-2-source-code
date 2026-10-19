; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00802f98, declared_size=368, range_size=368, mode=arm
; class-group: tMatchingPeer& std::map<unsigned long long, tMatchingPeer, std::less<unsigned long long>, std::allocator<std::pair<unsigned long long const, tMatchingPeer> > >
; alias: _ZNSt3mapIy13tMatchingPeerSt4lessIyESaISt4pairIKyS0_EEEixIiEERS0_RKT_
; demangled: tMatchingPeer& std::map<unsigned long long, tMatchingPeer, std::less<unsigned long long>, std::allocator<std::pair<unsigned long long const, tMatchingPeer> > >::operator[]<int>(int const&)
; decoder-mode: arm
00802f98  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00802f9c  5c 51 9f e5                                      ldr r5, [pc, #0x15c]
00802fa0  5c 61 9f e5                                      ldr r6, [pc, #0x15c]
00802fa4  04 40 90 e5                                      ldr r4, [r0, #4]
00802fa8  05 50 8f e0                                      add r5, pc, r5
00802fac  06 30 95 e7                                      ldr r3, [r5, r6]
00802fb0  7d de 4d e2                                      sub sp, sp, #0x7d0
00802fb4  0c d0 4d e2                                      sub sp, sp, #0xc
00802fb8  00 30 93 e5                                      ldr r3, [r3]
00802fbc  00 00 54 e3                                      cmp r4, #0
00802fc0  00 70 a0 e1                                      mov r7, r0
00802fc4  d4 37 8d e5                                      str r3, [sp, #0x7d4]
00802fc8  47 00 00 0a                                      beq #0x8030ec
00802fcc  00 80 91 e5                                      ldr r8, [r1]
00802fd0  00 20 a0 e1                                      mov r2, r0
00802fd4  c8 9f a0 e1                                      asr sb, r8, #0x1f
00802fd8  14 30 94 e5                                      ldr r3, [r4, #0x14]
00802fdc  09 00 53 e1                                      cmp r3, sb
00802fe0  09 00 00 3a                                      blo #0x80300c
00802fe4  05 00 00 0a                                      beq #0x803000
00802fe8  08 30 94 e5                                      ldr r3, [r4, #8]
00802fec  00 00 53 e3                                      cmp r3, #0
00802ff0  09 00 00 0a                                      beq #0x80301c
00802ff4  04 20 a0 e1                                      mov r2, r4
00802ff8  03 40 a0 e1                                      mov r4, r3
00802ffc  f5 ff ff ea                                      b #0x802fd8
00803000  10 30 94 e5                                      ldr r3, [r4, #0x10]
00803004  08 00 53 e1                                      cmp r3, r8
00803008  f6 ff ff 2a                                      bhs #0x802fe8
0080300c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00803010  02 40 a0 e1                                      mov r4, r2
00803014  00 00 53 e3                                      cmp r3, #0
00803018  f5 ff ff 1a                                      bne #0x802ff4
0080301c  04 00 57 e1                                      cmp r7, r4
00803020  10 00 00 0a                                      beq #0x803068
00803024  14 30 94 e5                                      ldr r3, [r4, #0x14]
00803028  04 00 a0 e1                                      mov r0, r4
0080302c  09 00 53 e1                                      cmp r3, sb
00803030  0c 00 00 8a                                      bhi #0x803068
00803034  08 00 00 0a                                      beq #0x80305c
00803038  06 30 95 e7                                      ldr r3, [r5, r6]
0080303c  d4 27 9d e5                                      ldr r2, [sp, #0x7d4]
00803040  18 00 80 e2                                      add r0, r0, #0x18
00803044  00 30 93 e5                                      ldr r3, [r3]
00803048  03 00 52 e1                                      cmp r2, r3
0080304c  2a 00 00 1a                                      bne #0x8030fc
00803050  f7 df 8d e2                                      add sp, sp, #0x3dc
00803054  01 db 8d e2                                      add sp, sp, #0x400
00803058  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0080305c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00803060  08 00 53 e1                                      cmp r3, r8
00803064  f3 ff ff 9a                                      bls #0x803038
00803068  3f be 8d e2                                      add fp, sp, #0x3f0
0080306c  3e 2e a0 e3                                      mov r2, #0x3e0
00803070  00 10 a0 e3                                      mov r1, #0
00803074  0b 00 a0 e1                                      mov r0, fp
00803078  f8 2c ec eb                                      bl #0x30e460
0080307c  0b 00 a0 e1                                      mov r0, fp
00803080  4f fd ff eb                                      bl #0x8025c4
00803084  83 34 a0 e3                                      mov r3, #0x83000000
00803088  7d 2e 8d e2                                      add r2, sp, #0x7d0
0080308c  08 a0 8d e2                                      add sl, sp, #8
00803090  43 3a a0 e1                                      asr r3, r3, #0x14
00803094  08 20 82 e2                                      add r2, r2, #8
00803098  f3 80 82 e1                                      strd r8, sb, [r2, r3]
0080309c  0b 10 a0 e1                                      mov r1, fp
008030a0  08 00 8a e2                                      add r0, sl, #8
008030a4  2d fd ff eb                                      bl #0x802560
008030a8  07 10 a0 e1                                      mov r1, r7
008030ac  08 20 4a e2                                      sub r2, sl, #8
008030b0  0a 30 a0 e1                                      mov r3, sl
008030b4  04 00 4a e2                                      sub r0, sl, #4
008030b8  00 40 8d e5                                      str r4, [sp]
008030bc  c1 fe ff eb                                      bl #0x802bc8
008030c0  50 00 8a e2                                      add r0, sl, #0x50
008030c4  04 40 9d e5                                      ldr r4, [sp, #4]
008030c8  d1 56 00 eb                                      bl #0x818c14
008030cc  2c 00 8a e2                                      add r0, sl, #0x2c
008030d0  5f 54 ec eb                                      bl #0x318254
008030d4  48 00 8b e2                                      add r0, fp, #0x48
008030d8  cd 56 00 eb                                      bl #0x818c14
008030dc  24 00 8b e2                                      add r0, fp, #0x24
008030e0  5b 54 ec eb                                      bl #0x318254
008030e4  04 00 a0 e1                                      mov r0, r4
008030e8  d2 ff ff ea                                      b #0x803038
008030ec  00 80 91 e5                                      ldr r8, [r1]
008030f0  00 40 a0 e1                                      mov r4, r0
008030f4  c8 9f a0 e1                                      asr sb, r8, #0x1f
008030f8  c7 ff ff ea                                      b #0x80301c
008030fc  83 2c ec eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00803100  e8 1a 19 00 ac 40 00 00                          .byte 0xe8, 0x1a, 0x19, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00803108, declared_size=364, range_size=364, mode=arm
; class-group: tMatchingPeer& std::map<unsigned long long, tMatchingPeer, std::less<unsigned long long>, std::allocator<std::pair<unsigned long long const, tMatchingPeer> > >
; alias: _ZNSt3mapIy13tMatchingPeerSt4lessIyESaISt4pairIKyS0_EEEixIyEERS0_RKT_
; demangled: tMatchingPeer& std::map<unsigned long long, tMatchingPeer, std::less<unsigned long long>, std::allocator<std::pair<unsigned long long const, tMatchingPeer> > >::operator[]<unsigned long long>(unsigned long long const&)
; decoder-mode: arm
00803108  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0080310c  58 51 9f e5                                      ldr r5, [pc, #0x158]
00803110  58 61 9f e5                                      ldr r6, [pc, #0x158]
00803114  04 40 90 e5                                      ldr r4, [r0, #4]
00803118  05 50 8f e0                                      add r5, pc, r5
0080311c  06 30 95 e7                                      ldr r3, [r5, r6]
00803120  7e de 4d e2                                      sub sp, sp, #0x7e0
00803124  04 d0 4d e2                                      sub sp, sp, #4
00803128  00 30 93 e5                                      ldr r3, [r3]
0080312c  00 00 54 e3                                      cmp r4, #0
00803130  00 a0 a0 e1                                      mov sl, r0
00803134  01 70 a0 e1                                      mov r7, r1
00803138  dc 37 8d e5                                      str r3, [sp, #0x7dc]
0080313c  00 40 a0 01                                      moveq r4, r0
00803140  12 00 00 0a                                      beq #0x803190
00803144  03 00 91 e8                                      ldm r1, {r0, r1}
00803148  0a 20 a0 e1                                      mov r2, sl
0080314c  14 30 94 e5                                      ldr r3, [r4, #0x14]
00803150  01 00 53 e1                                      cmp r3, r1
00803154  09 00 00 3a                                      blo #0x803180
00803158  05 00 00 0a                                      beq #0x803174
0080315c  08 30 94 e5                                      ldr r3, [r4, #8]
00803160  00 00 53 e3                                      cmp r3, #0
00803164  09 00 00 0a                                      beq #0x803190
00803168  04 20 a0 e1                                      mov r2, r4
0080316c  03 40 a0 e1                                      mov r4, r3
00803170  f5 ff ff ea                                      b #0x80314c
00803174  10 30 94 e5                                      ldr r3, [r4, #0x10]
00803178  00 00 53 e1                                      cmp r3, r0
0080317c  f6 ff ff 2a                                      bhs #0x80315c
00803180  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00803184  02 40 a0 e1                                      mov r4, r2
00803188  00 00 53 e3                                      cmp r3, #0
0080318c  f5 ff ff 1a                                      bne #0x803168
00803190  04 00 5a e1                                      cmp sl, r4
00803194  12 00 00 0a                                      beq #0x8031e4
00803198  14 20 94 e5                                      ldr r2, [r4, #0x14]
0080319c  04 30 97 e5                                      ldr r3, [r7, #4]
008031a0  04 00 a0 e1                                      mov r0, r4
008031a4  03 00 52 e1                                      cmp r2, r3
008031a8  0d 00 00 8a                                      bhi #0x8031e4
008031ac  08 00 00 0a                                      beq #0x8031d4
008031b0  06 30 95 e7                                      ldr r3, [r5, r6]
008031b4  dc 27 9d e5                                      ldr r2, [sp, #0x7dc]
008031b8  18 00 80 e2                                      add r0, r0, #0x18
008031bc  00 30 93 e5                                      ldr r3, [r3]
008031c0  03 00 52 e1                                      cmp r2, r3
008031c4  27 00 00 1a                                      bne #0x803268
008031c8  f9 df 8d e2                                      add sp, sp, #0x3e4
008031cc  01 db 8d e2                                      add sp, sp, #0x400
008031d0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
008031d4  10 20 94 e5                                      ldr r2, [r4, #0x10]
008031d8  00 30 97 e5                                      ldr r3, [r7]
008031dc  03 00 52 e1                                      cmp r2, r3
008031e0  f2 ff ff 9a                                      bls #0x8031b0
008031e4  fe 8f 8d e2                                      add r8, sp, #0x3f8
008031e8  3e 2e a0 e3                                      mov r2, #0x3e0
008031ec  00 10 a0 e3                                      mov r1, #0
008031f0  08 00 a0 e1                                      mov r0, r8
008031f4  99 2c ec eb                                      bl #0x30e460
008031f8  08 00 a0 e1                                      mov r0, r8
008031fc  f0 fc ff eb                                      bl #0x8025c4
00803200  d0 20 c7 e1                                      ldrd r2, r3, [r7]
00803204  83 e4 a0 e3                                      mov lr, #0x83000000
00803208  10 70 8d e2                                      add r7, sp, #0x10
0080320c  4e ea a0 e1                                      asr lr, lr, #0x14
00803210  7e ce 8d e2                                      add ip, sp, #0x7e0
00803214  08 10 a0 e1                                      mov r1, r8
00803218  08 00 87 e2                                      add r0, r7, #8
0080321c  fe 20 8c e1                                      strd r2, r3, [ip, lr]
00803220  ce fc ff eb                                      bl #0x802560
00803224  0a 10 a0 e1                                      mov r1, sl
00803228  08 20 47 e2                                      sub r2, r7, #8
0080322c  07 30 a0 e1                                      mov r3, r7
00803230  04 00 47 e2                                      sub r0, r7, #4
00803234  08 40 8d e5                                      str r4, [sp, #8]
00803238  62 fe ff eb                                      bl #0x802bc8
0080323c  50 00 87 e2                                      add r0, r7, #0x50
00803240  0c 40 9d e5                                      ldr r4, [sp, #0xc]
00803244  72 56 00 eb                                      bl #0x818c14
00803248  2c 00 87 e2                                      add r0, r7, #0x2c
0080324c  00 54 ec eb                                      bl #0x318254
00803250  48 00 88 e2                                      add r0, r8, #0x48
00803254  6e 56 00 eb                                      bl #0x818c14
00803258  24 00 88 e2                                      add r0, r8, #0x24
0080325c  fc 53 ec eb                                      bl #0x318254
00803260  04 00 a0 e1                                      mov r0, r4
00803264  d1 ff ff ea                                      b #0x8031b0
00803268  28 2c ec eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0080326c  78 19 19 00 ac 40 00 00                          .byte 0x78, 0x19, 0x19, 0x00, 0xac, 0x40, 0x00, 0x00
