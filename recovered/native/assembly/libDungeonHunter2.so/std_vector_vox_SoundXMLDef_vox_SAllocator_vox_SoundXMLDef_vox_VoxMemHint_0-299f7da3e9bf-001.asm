; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00889ef0, declared_size=152, range_size=152, mode=arm
; class-group: std::vector<vox::SoundXMLDef, vox::SAllocator<vox::SoundXMLDef, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox11SoundXMLDefENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEE8_M_eraseEPS1_S6_RKSt12__false_type
; demangled: std::vector<vox::SoundXMLDef, vox::SAllocator<vox::SoundXMLDef, (vox::VoxMemHint)0> >::_M_erase(vox::SoundXMLDef*, vox::SoundXMLDef*, std::__false_type const&)
; decoder-mode: arm
00889ef0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00889ef4  04 40 90 e5                                      ldr r4, [r0, #4]
00889ef8  00 a0 a0 e1                                      mov sl, r0
00889efc  02 80 a0 e1                                      mov r8, r2
00889f00  04 30 62 e0                                      rsb r3, r2, r4
00889f04  43 31 a0 e1                                      asr r3, r3, #2
00889f08  01 70 a0 e1                                      mov r7, r1
00889f0c  03 92 a0 e1                                      lsl sb, r3, #4
00889f10  09 90 63 e0                                      rsb sb, r3, sb
00889f14  09 94 89 e0                                      add sb, sb, sb, lsl #8
00889f18  09 98 89 e0                                      add sb, sb, sb, lsl #16
00889f1c  09 92 83 e0                                      add sb, r3, sb, lsl #4
00889f20  00 00 59 e3                                      cmp sb, #0
00889f24  01 60 a0 d1                                      movle r6, r1
00889f28  0b 00 00 da                                      ble #0x889f5c
00889f2c  09 50 a0 e1                                      mov r5, sb
00889f30  00 40 a0 e3                                      mov r4, #0
00889f34  44 60 a0 e3                                      mov r6, #0x44
00889f38  04 00 87 e0                                      add r0, r7, r4
00889f3c  04 10 88 e0                                      add r1, r8, r4
00889f40  06 20 a0 e1                                      mov r2, r6
00889f44  47 12 ea eb                                      bl #0x30e868
00889f48  01 50 55 e2                                      subs r5, r5, #1
00889f4c  06 40 84 e0                                      add r4, r4, r6
00889f50  f7 ff ff 1a                                      bne #0x889f34
00889f54  96 79 26 e0                                      mla r6, r6, sb, r7
00889f58  04 40 9a e5                                      ldr r4, [sl, #4]
00889f5c  06 00 54 e1                                      cmp r4, r6
00889f60  05 00 00 0a                                      beq #0x889f7c
00889f64  06 50 a0 e1                                      mov r5, r6
00889f68  05 00 a0 e1                                      mov r0, r5
00889f6c  44 50 85 e2                                      add r5, r5, #0x44
00889f70  c8 ff ff eb                                      bl #0x889e98
00889f74  05 00 54 e1                                      cmp r4, r5
00889f78  fa ff ff 1a                                      bne #0x889f68
00889f7c  04 60 8a e5                                      str r6, [sl, #4]
00889f80  07 00 a0 e1                                      mov r0, r7
00889f84  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00889f88, declared_size=264, range_size=264, mode=arm
; class-group: std::vector<vox::SoundXMLDef, vox::SAllocator<vox::SoundXMLDef, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox11SoundXMLDefENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEEC1Ej
; demangled: std::vector<vox::SoundXMLDef, vox::SAllocator<vox::SoundXMLDef, (vox::VoxMemHint)0> >::vector(unsigned int)
; decoder-mode: arm
00889f88  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00889f8c  44 a0 a0 e3                                      mov sl, #0x44
00889f90  9a 01 0a e0                                      mul sl, sl, r1
00889f94  00 50 a0 e3                                      mov r5, #0
00889f98  4c d0 4d e2                                      sub sp, sp, #0x4c
00889f9c  00 80 a0 e1                                      mov r8, r0
00889fa0  00 50 80 e5                                      str r5, [r0]
00889fa4  04 50 80 e5                                      str r5, [r0, #4]
00889fa8  08 50 80 e5                                      str r5, [r0, #8]
00889fac  05 10 a0 e1                                      mov r1, r5
00889fb0  0a 00 a0 e1                                      mov r0, sl
00889fb4  a3 19 ea eb                                      bl #0x310648
00889fb8  0a a0 80 e0                                      add sl, r0, sl
00889fbc  0a 20 60 e0                                      rsb r2, r0, sl
00889fc0  42 21 a0 e1                                      asr r2, r2, #2
00889fc4  fe 35 a0 e3                                      mov r3, #0x3f800000
00889fc8  02 42 a0 e1                                      lsl r4, r2, #4
00889fcc  04 40 62 e0                                      rsb r4, r2, r4
00889fd0  04 44 84 e0                                      add r4, r4, r4, lsl #8
00889fd4  3c 30 8d e5                                      str r3, [sp, #0x3c]
00889fd8  04 48 84 e0                                      add r4, r4, r4, lsl #16
00889fdc  00 60 a0 e1                                      mov r6, r0
00889fe0  04 42 82 e0                                      add r4, r2, r4, lsl #4
00889fe4  00 20 e0 e3                                      mvn r2, #0
00889fe8  18 20 cd e5                                      strb r2, [sp, #0x18]
00889fec  42 24 a0 e3                                      mov r2, #0x42000000
00889ff0  32 27 82 e2                                      add r2, r2, #0xc80000
00889ff4  1c 20 8d e5                                      str r2, [sp, #0x1c]
00889ff8  02 21 e0 e3                                      mvn r2, #0x80000000
00889ffc  05 00 54 e1                                      cmp r4, r5
0088a000  02 25 42 e2                                      sub r2, r2, #0x800000
0088a004  20 20 8d e5                                      str r2, [sp, #0x20]
0088a008  04 70 8d d2                                      addle r7, sp, #4
0088a00c  00 00 88 e5                                      str r0, [r8]
0088a010  01 04 88 e9                                      stmib r8, {r0, sl}
0088a014  04 50 8d e5                                      str r5, [sp, #4]
0088a018  08 50 8d e5                                      str r5, [sp, #8]
0088a01c  0c 50 8d e5                                      str r5, [sp, #0xc]
0088a020  10 50 8d e5                                      str r5, [sp, #0x10]
0088a024  14 50 8d e5                                      str r5, [sp, #0x14]
0088a028  19 50 cd e5                                      strb r5, [sp, #0x19]
0088a02c  1a 50 cd e5                                      strb r5, [sp, #0x1a]
0088a030  1b 50 cd e5                                      strb r5, [sp, #0x1b]
0088a034  24 30 8d e5                                      str r3, [sp, #0x24]
0088a038  28 30 8d e5                                      str r3, [sp, #0x28]
0088a03c  2c 30 8d e5                                      str r3, [sp, #0x2c]
0088a040  30 30 8d e5                                      str r3, [sp, #0x30]
0088a044  34 30 8d e5                                      str r3, [sp, #0x34]
0088a048  38 30 8d e5                                      str r3, [sp, #0x38]
0088a04c  40 50 8d e5                                      str r5, [sp, #0x40]
0088a050  44 50 8d e5                                      str r5, [sp, #0x44]
0088a054  07 00 00 da                                      ble #0x88a078
0088a058  04 70 8d e2                                      add r7, sp, #4
0088a05c  05 00 86 e0                                      add r0, r6, r5
0088a060  07 10 a0 e1                                      mov r1, r7
0088a064  44 20 a0 e3                                      mov r2, #0x44
0088a068  fe 11 ea eb                                      bl #0x30e868
0088a06c  01 40 54 e2                                      subs r4, r4, #1
0088a070  44 50 85 e2                                      add r5, r5, #0x44
0088a074  f8 ff ff 1a                                      bne #0x88a05c
0088a078  04 a0 88 e5                                      str sl, [r8, #4]
0088a07c  07 00 a0 e1                                      mov r0, r7
0088a080  84 ff ff eb                                      bl #0x889e98
0088a084  08 00 a0 e1                                      mov r0, r8
0088a088  4c d0 8d e2                                      add sp, sp, #0x4c
0088a08c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x0088a150, declared_size=540, range_size=540, mode=arm
; class-group: std::vector<vox::SoundXMLDef, vox::SAllocator<vox::SoundXMLDef, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox11SoundXMLDefENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEEaSERKS5_
; demangled: std::vector<vox::SoundXMLDef, vox::SAllocator<vox::SoundXMLDef, (vox::VoxMemHint)0> >::operator=(std::vector<vox::SoundXMLDef, vox::SAllocator<vox::SoundXMLDef, (vox::VoxMemHint)0> > const&)
; decoder-mode: arm
0088a150  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0088a154  00 00 51 e1                                      cmp r1, r0
0088a158  0c d0 4d e2                                      sub sp, sp, #0xc
0088a15c  01 90 a0 e1                                      mov sb, r1
0088a160  00 40 a0 e1                                      mov r4, r0
0088a164  36 00 00 0a                                      beq #0x88a244
0088a168  04 30 91 e5                                      ldr r3, [r1, #4]
0088a16c  00 80 91 e5                                      ldr r8, [r1]
0088a170  00 50 90 e5                                      ldr r5, [r0]
0088a174  08 20 90 e5                                      ldr r2, [r0, #8]
0088a178  03 10 68 e0                                      rsb r1, r8, r3
0088a17c  41 11 a0 e1                                      asr r1, r1, #2
0088a180  02 20 65 e0                                      rsb r2, r5, r2
0088a184  42 21 a0 e1                                      asr r2, r2, #2
0088a188  01 b2 a0 e1                                      lsl fp, r1, #4
0088a18c  02 c2 a0 e1                                      lsl ip, r2, #4
0088a190  0c c0 62 e0                                      rsb ip, r2, ip
0088a194  0b b0 61 e0                                      rsb fp, r1, fp
0088a198  0b b4 8b e0                                      add fp, fp, fp, lsl #8
0088a19c  0c c4 8c e0                                      add ip, ip, ip, lsl #8
0088a1a0  0b b8 8b e0                                      add fp, fp, fp, lsl #16
0088a1a4  0c c8 8c e0                                      add ip, ip, ip, lsl #16
0088a1a8  0b b2 81 e0                                      add fp, r1, fp, lsl #4
0088a1ac  0c 22 82 e0                                      add r2, r2, ip, lsl #4
0088a1b0  02 00 5b e1                                      cmp fp, r2
0088a1b4  0b 70 a0 e1                                      mov r7, fp
0088a1b8  54 00 00 8a                                      bhi #0x88a310
0088a1bc  04 60 90 e5                                      ldr r6, [r0, #4]
0088a1c0  06 20 65 e0                                      rsb r2, r5, r6
0088a1c4  42 21 a0 e1                                      asr r2, r2, #2
0088a1c8  02 a2 a0 e1                                      lsl sl, r2, #4
0088a1cc  0a a0 62 e0                                      rsb sl, r2, sl
0088a1d0  0a a4 8a e0                                      add sl, sl, sl, lsl #8
0088a1d4  0a a8 8a e0                                      add sl, sl, sl, lsl #16
0088a1d8  0a 22 82 e0                                      add r2, r2, sl, lsl #4
0088a1dc  02 00 5b e1                                      cmp fp, r2
0088a1e0  1a 00 00 8a                                      bhi #0x88a250
0088a1e4  00 00 5b e3                                      cmp fp, #0
0088a1e8  0f 00 00 da                                      ble #0x88a22c
0088a1ec  00 60 a0 e3                                      mov r6, #0
0088a1f0  44 a0 a0 e3                                      mov sl, #0x44
0088a1f4  06 00 85 e0                                      add r0, r5, r6
0088a1f8  06 10 88 e0                                      add r1, r8, r6
0088a1fc  0a 20 a0 e1                                      mov r2, sl
0088a200  98 11 ea eb                                      bl #0x30e868
0088a204  01 70 57 e2                                      subs r7, r7, #1
0088a208  0a 60 86 e0                                      add r6, r6, sl
0088a20c  f7 ff ff 1a                                      bne #0x88a1f0
0088a210  9a 5b 25 e0                                      mla r5, sl, fp, r5
0088a214  04 60 94 e5                                      ldr r6, [r4, #4]
0088a218  06 00 55 e1                                      cmp r5, r6
0088a21c  04 00 00 0a                                      beq #0x88a234
0088a220  05 00 a0 e1                                      mov r0, r5
0088a224  44 50 85 e2                                      add r5, r5, #0x44
0088a228  1a ff ff eb                                      bl #0x889e98
0088a22c  06 00 55 e1                                      cmp r5, r6
0088a230  fa ff ff 1a                                      bne #0x88a220
0088a234  00 50 94 e5                                      ldr r5, [r4]
0088a238  44 30 a0 e3                                      mov r3, #0x44
0088a23c  93 5b 25 e0                                      mla r5, r3, fp, r5
0088a240  04 50 84 e5                                      str r5, [r4, #4]
0088a244  04 00 a0 e1                                      mov r0, r4
0088a248  0c d0 8d e2                                      add sp, sp, #0xc
0088a24c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0088a250  44 a0 a0 e3                                      mov sl, #0x44
0088a254  9a 82 2a e0                                      mla sl, sl, r2, r8
0088a258  0a 20 68 e0                                      rsb r2, r8, sl
0088a25c  42 21 a0 e1                                      asr r2, r2, #2
0088a260  02 72 a0 e1                                      lsl r7, r2, #4
0088a264  07 70 62 e0                                      rsb r7, r2, r7
0088a268  07 74 87 e0                                      add r7, r7, r7, lsl #8
0088a26c  07 78 87 e0                                      add r7, r7, r7, lsl #16
0088a270  07 72 82 e0                                      add r7, r2, r7, lsl #4
0088a274  00 00 57 e3                                      cmp r7, #0
0088a278  12 00 00 da                                      ble #0x88a2c8
0088a27c  00 60 a0 e3                                      mov r6, #0
0088a280  44 a0 a0 e3                                      mov sl, #0x44
0088a284  06 00 85 e0                                      add r0, r5, r6
0088a288  06 10 88 e0                                      add r1, r8, r6
0088a28c  0a 20 a0 e1                                      mov r2, sl
0088a290  74 11 ea eb                                      bl #0x30e868
0088a294  01 70 57 e2                                      subs r7, r7, #1
0088a298  0a 60 86 e0                                      add r6, r6, sl
0088a29c  f7 ff ff 1a                                      bne #0x88a280
0088a2a0  60 00 94 e8                                      ldm r4, {r5, r6}
0088a2a4  09 00 99 e8                                      ldm sb, {r0, r3}
0088a2a8  06 20 65 e0                                      rsb r2, r5, r6
0088a2ac  42 21 a0 e1                                      asr r2, r2, #2
0088a2b0  02 12 a0 e1                                      lsl r1, r2, #4
0088a2b4  01 10 62 e0                                      rsb r1, r2, r1
0088a2b8  01 14 81 e0                                      add r1, r1, r1, lsl #8
0088a2bc  01 18 81 e0                                      add r1, r1, r1, lsl #16
0088a2c0  01 22 82 e0                                      add r2, r2, r1, lsl #4
0088a2c4  9a 02 2a e0                                      mla sl, sl, r2, r0
0088a2c8  03 30 6a e0                                      rsb r3, sl, r3
0088a2cc  43 31 a0 e1                                      asr r3, r3, #2
0088a2d0  03 72 a0 e1                                      lsl r7, r3, #4
0088a2d4  07 70 63 e0                                      rsb r7, r3, r7
0088a2d8  07 74 87 e0                                      add r7, r7, r7, lsl #8
0088a2dc  07 78 87 e0                                      add r7, r7, r7, lsl #16
0088a2e0  07 72 83 e0                                      add r7, r3, r7, lsl #4
0088a2e4  00 00 57 e3                                      cmp r7, #0
0088a2e8  d2 ff ff da                                      ble #0x88a238
0088a2ec  00 50 a0 e3                                      mov r5, #0
0088a2f0  05 00 86 e0                                      add r0, r6, r5
0088a2f4  05 10 8a e0                                      add r1, sl, r5
0088a2f8  44 20 a0 e3                                      mov r2, #0x44
0088a2fc  59 11 ea eb                                      bl #0x30e868
0088a300  01 70 57 e2                                      subs r7, r7, #1
0088a304  44 50 85 e2                                      add r5, r5, #0x44
0088a308  f8 ff ff 1a                                      bne #0x88a2f0
0088a30c  c8 ff ff ea                                      b #0x88a234
0088a310  08 10 8d e2                                      add r1, sp, #8
0088a314  04 b0 21 e5                                      str fp, [r1, #-4]!
0088a318  08 20 a0 e1                                      mov r2, r8
0088a31c  66 fe ff eb                                      bl #0x889cbc
0088a320  04 60 94 e5                                      ldr r6, [r4, #4]
0088a324  00 70 94 e5                                      ldr r7, [r4]
0088a328  00 50 a0 e1                                      mov r5, r0
0088a32c  07 00 56 e1                                      cmp r6, r7
0088a330  05 00 00 0a                                      beq #0x88a34c
0088a334  44 60 46 e2                                      sub r6, r6, #0x44
0088a338  06 00 a0 e1                                      mov r0, r6
0088a33c  d5 fe ff eb                                      bl #0x889e98
0088a340  06 00 57 e1                                      cmp r7, r6
0088a344  fa ff ff 1a                                      bne #0x88a334
0088a348  00 60 94 e5                                      ldr r6, [r4]
0088a34c  06 00 a0 e1                                      mov r0, r6
0088a350  3b 18 ea eb                                      bl #0x310444
0088a354  04 30 9d e5                                      ldr r3, [sp, #4]
0088a358  44 20 a0 e3                                      mov r2, #0x44
0088a35c  00 50 84 e5                                      str r5, [r4]
0088a360  92 53 23 e0                                      mla r3, r2, r3, r5
0088a364  08 30 84 e5                                      str r3, [r4, #8]
0088a368  b2 ff ff ea                                      b #0x88a238

; FUNCTION 0x0088a36c, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<vox::SoundXMLDef, vox::SAllocator<vox::SoundXMLDef, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox11SoundXMLDefENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEED1Ev
; demangled: std::vector<vox::SoundXMLDef, vox::SAllocator<vox::SoundXMLDef, (vox::VoxMemHint)0> >::~vector()
; decoder-mode: arm
0088a36c  70 40 2d e9                                      push {r4, r5, r6, lr}
0088a370  04 40 90 e5                                      ldr r4, [r0, #4]
0088a374  00 50 90 e5                                      ldr r5, [r0]
0088a378  00 60 a0 e1                                      mov r6, r0
0088a37c  05 00 54 e1                                      cmp r4, r5
0088a380  04 00 00 0a                                      beq #0x88a398
0088a384  44 40 44 e2                                      sub r4, r4, #0x44
0088a388  04 00 a0 e1                                      mov r0, r4
0088a38c  c1 fe ff eb                                      bl #0x889e98
0088a390  04 00 55 e1                                      cmp r5, r4
0088a394  fa ff ff 1a                                      bne #0x88a384
0088a398  00 00 96 e5                                      ldr r0, [r6]
0088a39c  00 00 50 e3                                      cmp r0, #0
0088a3a0  00 00 00 0a                                      beq #0x88a3a8
0088a3a4  26 18 ea eb                                      bl #0x310444
0088a3a8  06 00 a0 e1                                      mov r0, r6
0088a3ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
