; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0052689c, declared_size=636, range_size=636, mode=arm
; class-group: std::deque<PFObject*, std::allocator<PFObject*> >
; alias: _ZNSt5dequeIP8PFObjectSaIS1_EE8_M_eraseENSt4priv15_Deque_iteratorIS1_St16_Nonconst_traitsIS1_EEERKSt12__false_type
; demangled: std::deque<PFObject*, std::allocator<PFObject*> >::_M_erase(std::priv::_Deque_iterator<PFObject*, std::_Nonconst_traits<PFObject*> >, std::__false_type const&)
; decoder-mode: arm
0052689c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005268a0  00 60 92 e5                                      ldr r6, [r2]
005268a4  08 70 92 e5                                      ldr r7, [r2, #8]
005268a8  0c b0 92 e5                                      ldr fp, [r2, #0xc]
005268ac  04 60 86 e2                                      add r6, r6, #4
005268b0  07 00 56 e1                                      cmp r6, r7
005268b4  04 90 92 e5                                      ldr sb, [r2, #4]
005268b8  dc d0 4d e2                                      sub sp, sp, #0xdc
005268bc  04 90 bb 05                                      ldreq sb, [fp, #4]!
005268c0  c0 c0 8d e2                                      add ip, sp, #0xc0
005268c4  02 50 a0 e1                                      mov r5, r2
005268c8  01 40 a0 e1                                      mov r4, r1
005268cc  00 a0 a0 e1                                      mov sl, r0
005268d0  0f 00 91 e8                                      ldm r1, {r0, r1, r2, r3}
005268d4  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005268d8  0c 10 a0 e1                                      mov r1, ip
005268dc  05 00 a0 e1                                      mov r0, r5
005268e0  80 70 89 02                                      addeq r7, sb, #0x80
005268e4  09 60 a0 01                                      moveq r6, sb
005268e8  c4 ee ff eb                                      bl #0x522400
005268ec  b0 c0 8d e2                                      add ip, sp, #0xb0
005268f0  00 80 a0 e1                                      mov r8, r0
005268f4  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
005268f8  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005268fc  0c 10 a0 e1                                      mov r1, ip
00526900  10 00 84 e2                                      add r0, r4, #0x10
00526904  bd ee ff eb                                      bl #0x522400
00526908  a0 00 58 e1                                      cmp r8, r0, lsr #1
0052690c  38 00 00 2a                                      bhs #0x5269f4
00526910  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00526914  80 20 8d e2                                      add r2, sp, #0x80
00526918  a0 00 8d e2                                      add r0, sp, #0xa0
0052691c  08 30 8d e5                                      str r3, [sp, #8]
00526920  00 c0 94 e5                                      ldr ip, [r4]
00526924  90 10 8d e2                                      add r1, sp, #0x90
00526928  1c c0 8d e5                                      str ip, [sp, #0x1c]
0052692c  04 e0 94 e5                                      ldr lr, [r4, #4]
00526930  18 e0 8d e5                                      str lr, [sp, #0x18]
00526934  00 30 95 e5                                      ldr r3, [r5]
00526938  08 e0 94 e5                                      ldr lr, [r4, #8]
0052693c  10 30 8d e5                                      str r3, [sp, #0x10]
00526940  04 c0 95 e5                                      ldr ip, [r5, #4]
00526944  70 30 8d e2                                      add r3, sp, #0x70
00526948  0c c0 8d e5                                      str ip, [sp, #0xc]
0052694c  08 c0 95 e5                                      ldr ip, [r5, #8]
00526950  0c 50 94 e5                                      ldr r5, [r4, #0xc]
00526954  98 e0 8d e5                                      str lr, [sp, #0x98]
00526958  18 e0 9d e5                                      ldr lr, [sp, #0x18]
0052695c  9c 50 8d e5                                      str r5, [sp, #0x9c]
00526960  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
00526964  88 c0 8d e5                                      str ip, [sp, #0x88]
00526968  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0052696c  94 e0 8d e5                                      str lr, [sp, #0x94]
00526970  90 50 8d e5                                      str r5, [sp, #0x90]
00526974  08 e0 9d e5                                      ldr lr, [sp, #8]
00526978  0c 50 9d e5                                      ldr r5, [sp, #0xc]
0052697c  80 c0 8d e5                                      str ip, [sp, #0x80]
00526980  d4 c0 8d e2                                      add ip, sp, #0xd4
00526984  00 c0 8d e5                                      str ip, [sp]
00526988  00 c0 a0 e3                                      mov ip, #0
0052698c  8c e0 8d e5                                      str lr, [sp, #0x8c]
00526990  84 50 8d e5                                      str r5, [sp, #0x84]
00526994  7c b0 8d e5                                      str fp, [sp, #0x7c]
00526998  78 70 8d e5                                      str r7, [sp, #0x78]
0052699c  74 90 8d e5                                      str sb, [sp, #0x74]
005269a0  70 60 8d e5                                      str r6, [sp, #0x70]
005269a4  04 c0 8d e5                                      str ip, [sp, #4]
005269a8  21 ff ff eb                                      bl #0x526634
005269ac  08 20 94 e5                                      ldr r2, [r4, #8]
005269b0  00 30 94 e5                                      ldr r3, [r4]
005269b4  04 20 42 e2                                      sub r2, r2, #4
005269b8  02 00 53 e1                                      cmp r3, r2
005269bc  04 30 83 12                                      addne r3, r3, #4
005269c0  00 30 84 15                                      strne r3, [r4]
005269c4  45 00 00 0a                                      beq #0x526ae0
005269c8  20 50 8d e2                                      add r5, sp, #0x20
005269cc  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
005269d0  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
005269d4  08 10 a0 e1                                      mov r1, r8
005269d8  05 00 a0 e1                                      mov r0, r5
005269dc  91 ff ff eb                                      bl #0x526828
005269e0  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
005269e4  0f 00 8a e8                                      stm sl, {r0, r1, r2, r3}
005269e8  0a 00 a0 e1                                      mov r0, sl
005269ec  dc d0 8d e2                                      add sp, sp, #0xdc
005269f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005269f4  0c e0 95 e5                                      ldr lr, [r5, #0xc]
005269f8  60 00 8d e2                                      add r0, sp, #0x60
005269fc  50 10 8d e2                                      add r1, sp, #0x50
00526a00  08 e0 8d e5                                      str lr, [sp, #8]
00526a04  10 30 94 e5                                      ldr r3, [r4, #0x10]
00526a08  40 20 8d e2                                      add r2, sp, #0x40
00526a0c  18 30 8d e5                                      str r3, [sp, #0x18]
00526a10  14 c0 94 e5                                      ldr ip, [r4, #0x14]
00526a14  14 c0 8d e5                                      str ip, [sp, #0x14]
00526a18  00 30 95 e5                                      ldr r3, [r5]
00526a1c  18 e0 94 e5                                      ldr lr, [r4, #0x18]
00526a20  1c c0 94 e5                                      ldr ip, [r4, #0x1c]
00526a24  10 30 8d e5                                      str r3, [sp, #0x10]
00526a28  04 30 95 e5                                      ldr r3, [r5, #4]
00526a2c  0c 30 8d e5                                      str r3, [sp, #0xc]
00526a30  08 50 95 e5                                      ldr r5, [r5, #8]
00526a34  4c c0 8d e5                                      str ip, [sp, #0x4c]
00526a38  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00526a3c  48 e0 8d e5                                      str lr, [sp, #0x48]
00526a40  18 e0 9d e5                                      ldr lr, [sp, #0x18]
00526a44  44 c0 8d e5                                      str ip, [sp, #0x44]
00526a48  08 c0 9d e5                                      ldr ip, [sp, #8]
00526a4c  40 e0 8d e5                                      str lr, [sp, #0x40]
00526a50  38 50 8d e5                                      str r5, [sp, #0x38]
00526a54  0c e0 9d e5                                      ldr lr, [sp, #0xc]
00526a58  10 50 9d e5                                      ldr r5, [sp, #0x10]
00526a5c  3c c0 8d e5                                      str ip, [sp, #0x3c]
00526a60  d0 c0 8d e2                                      add ip, sp, #0xd0
00526a64  30 30 8d e2                                      add r3, sp, #0x30
00526a68  00 c0 8d e5                                      str ip, [sp]
00526a6c  00 c0 a0 e3                                      mov ip, #0
00526a70  5c b0 8d e5                                      str fp, [sp, #0x5c]
00526a74  58 70 8d e5                                      str r7, [sp, #0x58]
00526a78  54 90 8d e5                                      str sb, [sp, #0x54]
00526a7c  50 60 8d e5                                      str r6, [sp, #0x50]
00526a80  34 e0 8d e5                                      str lr, [sp, #0x34]
00526a84  30 50 8d e5                                      str r5, [sp, #0x30]
00526a88  04 c0 8d e5                                      str ip, [sp, #4]
00526a8c  27 ff ff eb                                      bl #0x526730
00526a90  10 00 94 e5                                      ldr r0, [r4, #0x10]
00526a94  14 30 94 e5                                      ldr r3, [r4, #0x14]
00526a98  03 00 50 e1                                      cmp r0, r3
00526a9c  04 00 40 12                                      subne r0, r0, #4
00526aa0  10 00 84 15                                      strne r0, [r4, #0x10]
00526aa4  c7 ff ff 1a                                      bne #0x5269c8
00526aa8  00 00 50 e3                                      cmp r0, #0
00526aac  01 00 00 0a                                      beq #0x526ab8
00526ab0  80 10 a0 e3                                      mov r1, #0x80
00526ab4  22 d4 f7 eb                                      bl #0x31bb44
00526ab8  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00526abc  04 20 43 e2                                      sub r2, r3, #4
00526ac0  1c 20 84 e5                                      str r2, [r4, #0x1c]
00526ac4  04 30 13 e5                                      ldr r3, [r3, #-4]
00526ac8  7c 20 83 e2                                      add r2, r3, #0x7c
00526acc  80 10 83 e2                                      add r1, r3, #0x80
00526ad0  18 10 84 e5                                      str r1, [r4, #0x18]
00526ad4  10 20 84 e5                                      str r2, [r4, #0x10]
00526ad8  14 30 84 e5                                      str r3, [r4, #0x14]
00526adc  b9 ff ff ea                                      b #0x5269c8
00526ae0  04 00 94 e5                                      ldr r0, [r4, #4]
00526ae4  00 00 50 e3                                      cmp r0, #0
00526ae8  01 00 00 0a                                      beq #0x526af4
00526aec  80 10 a0 e3                                      mov r1, #0x80
00526af0  13 d4 f7 eb                                      bl #0x31bb44
00526af4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00526af8  04 20 83 e2                                      add r2, r3, #4
00526afc  0c 20 84 e5                                      str r2, [r4, #0xc]
00526b00  04 30 93 e5                                      ldr r3, [r3, #4]
00526b04  80 20 83 e2                                      add r2, r3, #0x80
00526b08  08 20 84 e5                                      str r2, [r4, #8]
00526b0c  00 30 84 e5                                      str r3, [r4]
00526b10  04 30 84 e5                                      str r3, [r4, #4]
00526b14  ab ff ff ea                                      b #0x5269c8

; FUNCTION 0x00526e44, declared_size=252, range_size=252, mode=arm
; class-group: std::deque<PFObject*, std::allocator<PFObject*> >
; alias: _ZNSt5dequeIP8PFObjectSaIS1_EEC1ERKS3_
; demangled: std::deque<PFObject*, std::allocator<PFObject*> >::deque(std::deque<PFObject*, std::allocator<PFObject*> > const&)
; decoder-mode: arm
00526e44  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00526e48  7c d0 4d e2                                      sub sp, sp, #0x7c
00526e4c  01 50 a0 e1                                      mov r5, r1
00526e50  64 c0 8d e2                                      add ip, sp, #0x64
00526e54  00 40 a0 e1                                      mov r4, r0
00526e58  0f 00 91 e8                                      ldm r1, {r0, r1, r2, r3}
00526e5c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00526e60  0c 10 a0 e1                                      mov r1, ip
00526e64  10 00 85 e2                                      add r0, r5, #0x10
00526e68  64 ed ff eb                                      bl #0x522400
00526e6c  00 60 a0 e3                                      mov r6, #0
00526e70  00 10 a0 e1                                      mov r1, r0
00526e74  00 60 84 e5                                      str r6, [r4]
00526e78  04 00 a0 e1                                      mov r0, r4
00526e7c  04 60 84 e5                                      str r6, [r4, #4]
00526e80  08 60 84 e5                                      str r6, [r4, #8]
00526e84  0c 60 84 e5                                      str r6, [r4, #0xc]
00526e88  10 60 84 e5                                      str r6, [r4, #0x10]
00526e8c  14 60 84 e5                                      str r6, [r4, #0x14]
00526e90  18 60 84 e5                                      str r6, [r4, #0x18]
00526e94  1c 60 84 e5                                      str r6, [r4, #0x1c]
00526e98  20 60 84 e5                                      str r6, [r4, #0x20]
00526e9c  24 60 84 e5                                      str r6, [r4, #0x24]
00526ea0  bc ff ff eb                                      bl #0x526d98
00526ea4  0c 70 95 e5                                      ldr r7, [r5, #0xc]
00526ea8  10 c0 95 e5                                      ldr ip, [r5, #0x10]
00526eac  1c b0 95 e5                                      ldr fp, [r5, #0x1c]
00526eb0  18 90 95 e5                                      ldr sb, [r5, #0x18]
00526eb4  14 e0 95 e5                                      ldr lr, [r5, #0x14]
00526eb8  01 05 95 e8                                      ldm r5, {r0, r8, sl}
00526ebc  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00526ec0  08 20 94 e5                                      ldr r2, [r4, #8]
00526ec4  04 30 94 e5                                      ldr r3, [r4, #4]
00526ec8  00 50 94 e5                                      ldr r5, [r4]
00526ecc  4c 90 8d e5                                      str sb, [sp, #0x4c]
00526ed0  48 e0 8d e5                                      str lr, [sp, #0x48]
00526ed4  44 c0 8d e5                                      str ip, [sp, #0x44]
00526ed8  50 b0 8d e5                                      str fp, [sp, #0x50]
00526edc  30 10 8d e5                                      str r1, [sp, #0x30]
00526ee0  2c 20 8d e5                                      str r2, [sp, #0x2c]
00526ee4  28 30 8d e5                                      str r3, [sp, #0x28]
00526ee8  24 50 8d e5                                      str r5, [sp, #0x24]
00526eec  04 c0 8d e2                                      add ip, sp, #4
00526ef0  44 90 8d e2                                      add sb, sp, #0x44
00526ef4  54 00 8d e5                                      str r0, [sp, #0x54]
00526ef8  5c a0 8d e5                                      str sl, [sp, #0x5c]
00526efc  0f 00 99 e8                                      ldm sb, {r0, r1, r2, r3}
00526f00  58 80 8d e5                                      str r8, [sp, #0x58]
00526f04  60 70 8d e5                                      str r7, [sp, #0x60]
00526f08  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00526f0c  24 30 8d e2                                      add r3, sp, #0x24
00526f10  54 e0 8d e2                                      add lr, sp, #0x54
00526f14  14 30 8d e5                                      str r3, [sp, #0x14]
00526f18  74 30 8d e2                                      add r3, sp, #0x74
00526f1c  18 30 8d e5                                      str r3, [sp, #0x18]
00526f20  34 00 8d e2                                      add r0, sp, #0x34
00526f24  0e 00 9e e8                                      ldm lr, {r1, r2, r3}
00526f28  1c 60 8d e5                                      str r6, [sp, #0x1c]
00526f2c  00 70 8d e5                                      str r7, [sp]
00526f30  83 fd ff eb                                      bl #0x526544
00526f34  04 00 a0 e1                                      mov r0, r4
00526f38  7c d0 8d e2                                      add sp, sp, #0x7c
00526f3c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x005280b0, declared_size=388, range_size=388, mode=arm
; class-group: std::deque<PFObject*, std::allocator<PFObject*> >
; alias: _ZNSt5dequeIP8PFObjectSaIS1_EE18_M_push_back_aux_vERKS1_
; demangled: std::deque<PFObject*, std::allocator<PFObject*> >::_M_push_back_aux_v(PFObject* const&)
; decoder-mode: arm
005280b0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005280b4  1c a0 90 e5                                      ldr sl, [r0, #0x1c]
005280b8  20 20 90 e5                                      ldr r2, [r0, #0x20]
005280bc  24 30 90 e5                                      ldr r3, [r0, #0x24]
005280c0  01 50 a0 e1                                      mov r5, r1
005280c4  0a 10 62 e0                                      rsb r1, r2, sl
005280c8  41 11 43 e0                                      sub r1, r3, r1, asr #2
005280cc  01 00 51 e3                                      cmp r1, #1
005280d0  00 40 a0 e1                                      mov r4, r0
005280d4  0e 00 00 9a                                      bls #0x528114
005280d8  24 00 84 e2                                      add r0, r4, #0x24
005280dc  25 fb ff eb                                      bl #0x526d78
005280e0  04 00 8a e5                                      str r0, [sl, #4]
005280e4  00 20 95 e5                                      ldr r2, [r5]
005280e8  10 30 94 e5                                      ldr r3, [r4, #0x10]
005280ec  00 20 83 e5                                      str r2, [r3]
005280f0  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
005280f4  04 20 83 e2                                      add r2, r3, #4
005280f8  1c 20 84 e5                                      str r2, [r4, #0x1c]
005280fc  04 30 93 e5                                      ldr r3, [r3, #4]
00528100  80 20 83 e2                                      add r2, r3, #0x80
00528104  10 30 84 e5                                      str r3, [r4, #0x10]
00528108  18 20 84 e5                                      str r2, [r4, #0x18]
0052810c  14 30 84 e5                                      str r3, [r4, #0x14]
00528110  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00528114  0c 10 90 e5                                      ldr r1, [r0, #0xc]
00528118  0a 70 61 e0                                      rsb r7, r1, sl
0052811c  47 71 a0 e1                                      asr r7, r7, #2
00528120  01 70 87 e2                                      add r7, r7, #1
00528124  01 90 87 e2                                      add sb, r7, #1
00528128  89 00 53 e1                                      cmp r3, sb, lsl #1
0052812c  0a 00 00 9a                                      bls #0x52815c
00528130  03 60 69 e0                                      rsb r6, sb, r3
00528134  a6 60 a0 e1                                      lsr r6, r6, #1
00528138  06 61 82 e0                                      add r6, r2, r6, lsl #2
0052813c  06 00 51 e1                                      cmp r1, r6
00528140  2e 00 00 9a                                      bls #0x528200
00528144  04 20 8a e2                                      add r2, sl, #4
00528148  01 20 52 e0                                      subs r2, r2, r1
0052814c  1e 00 00 0a                                      beq #0x5281cc
00528150  06 00 a0 e1                                      mov r0, r6
00528154  77 97 f7 eb                                      bl #0x30df38
00528158  1b 00 00 ea                                      b #0x5281cc
0052815c  00 00 53 e3                                      cmp r3, #0
00528160  03 20 a0 11                                      movne r2, r3
00528164  01 20 a0 03                                      moveq r2, #1
00528168  02 80 83 e2                                      add r8, r3, #2
0052816c  02 80 88 e0                                      add r8, r8, r2
00528170  08 10 a0 e1                                      mov r1, r8
00528174  00 20 a0 e3                                      mov r2, #0
00528178  20 00 80 e2                                      add r0, r0, #0x20
0052817c  e5 fa ff eb                                      bl #0x526d18
00528180  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00528184  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00528188  08 60 69 e0                                      rsb r6, sb, r8
0052818c  a6 60 a0 e1                                      lsr r6, r6, #1
00528190  04 20 82 e2                                      add r2, r2, #4
00528194  01 20 52 e0                                      subs r2, r2, r1
00528198  00 a0 a0 e1                                      mov sl, r0
0052819c  06 61 80 e0                                      add r6, r0, r6, lsl #2
005281a0  20 00 00 1a                                      bne #0x528228
005281a4  20 00 94 e5                                      ldr r0, [r4, #0x20]
005281a8  24 10 94 e5                                      ldr r1, [r4, #0x24]
005281ac  00 00 50 e3                                      cmp r0, #0
005281b0  03 00 00 0a                                      beq #0x5281c4
005281b4  01 11 a0 e1                                      lsl r1, r1, #2
005281b8  80 00 51 e3                                      cmp r1, #0x80
005281bc  17 00 00 8a                                      bhi #0x528220
005281c0  4e 83 07 eb                                      bl #0x708f00
005281c4  20 a0 84 e5                                      str sl, [r4, #0x20]
005281c8  24 80 84 e5                                      str r8, [r4, #0x24]
005281cc  0c 60 84 e5                                      str r6, [r4, #0xc]
005281d0  00 30 96 e5                                      ldr r3, [r6]
005281d4  01 70 47 e2                                      sub r7, r7, #1
005281d8  07 a1 86 e0                                      add sl, r6, r7, lsl #2
005281dc  80 20 83 e2                                      add r2, r3, #0x80
005281e0  08 20 84 e5                                      str r2, [r4, #8]
005281e4  04 30 84 e5                                      str r3, [r4, #4]
005281e8  1c a0 84 e5                                      str sl, [r4, #0x1c]
005281ec  07 31 96 e7                                      ldr r3, [r6, r7, lsl #2]
005281f0  80 20 83 e2                                      add r2, r3, #0x80
005281f4  18 20 84 e5                                      str r2, [r4, #0x18]
005281f8  14 30 84 e5                                      str r3, [r4, #0x14]
005281fc  b5 ff ff ea                                      b #0x5280d8
00528200  04 20 8a e2                                      add r2, sl, #4
00528204  02 20 61 e0                                      rsb r2, r1, r2
00528208  00 00 52 e3                                      cmp r2, #0
0052820c  ee ff ff da                                      ble #0x5281cc
00528210  07 01 86 e0                                      add r0, r6, r7, lsl #2
00528214  00 00 62 e0                                      rsb r0, r2, r0
00528218  46 97 f7 eb                                      bl #0x30df38
0052821c  ea ff ff ea                                      b #0x5281cc
00528220  86 a0 f7 eb                                      bl #0x310440
00528224  e6 ff ff ea                                      b #0x5281c4
00528228  06 00 a0 e1                                      mov r0, r6
0052822c  41 97 f7 eb                                      bl #0x30df38
00528230  db ff ff ea                                      b #0x5281a4
