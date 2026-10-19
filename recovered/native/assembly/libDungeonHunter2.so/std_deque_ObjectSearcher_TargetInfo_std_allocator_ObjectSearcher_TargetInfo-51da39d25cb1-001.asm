; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a22b4, declared_size=396, range_size=396, mode=arm
; class-group: std::deque<ObjectSearcher::TargetInfo, std::allocator<ObjectSearcher::TargetInfo> >
; alias: _ZNSt5dequeIN14ObjectSearcher10TargetInfoESaIS1_EE18_M_push_back_aux_vERKS1_
; demangled: std::deque<ObjectSearcher::TargetInfo, std::allocator<ObjectSearcher::TargetInfo> >::_M_push_back_aux_v(ObjectSearcher::TargetInfo const&)
; decoder-mode: arm
004a22b4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
004a22b8  1c a0 90 e5                                      ldr sl, [r0, #0x1c]
004a22bc  20 20 90 e5                                      ldr r2, [r0, #0x20]
004a22c0  24 30 90 e5                                      ldr r3, [r0, #0x24]
004a22c4  01 50 a0 e1                                      mov r5, r1
004a22c8  0a 10 62 e0                                      rsb r1, r2, sl
004a22cc  41 11 43 e0                                      sub r1, r3, r1, asr #2
004a22d0  01 00 51 e3                                      cmp r1, #1
004a22d4  00 40 a0 e1                                      mov r4, r0
004a22d8  10 00 00 9a                                      bls #0x4a2320
004a22dc  24 00 84 e2                                      add r0, r4, #0x24
004a22e0  c9 fe ff eb                                      bl #0x4a1e0c
004a22e4  04 00 8a e5                                      str r0, [sl, #4]
004a22e8  10 c0 94 e5                                      ldr ip, [r4, #0x10]
004a22ec  0f 00 b5 e8                                      ldm r5!, {r0, r1, r2, r3}
004a22f0  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
004a22f4  00 20 95 e5                                      ldr r2, [r5]
004a22f8  00 20 8c e5                                      str r2, [ip]
004a22fc  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
004a2300  04 20 83 e2                                      add r2, r3, #4
004a2304  1c 20 84 e5                                      str r2, [r4, #0x1c]
004a2308  04 30 93 e5                                      ldr r3, [r3, #4]
004a230c  78 20 83 e2                                      add r2, r3, #0x78
004a2310  10 30 84 e5                                      str r3, [r4, #0x10]
004a2314  18 20 84 e5                                      str r2, [r4, #0x18]
004a2318  14 30 84 e5                                      str r3, [r4, #0x14]
004a231c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
004a2320  0c 10 90 e5                                      ldr r1, [r0, #0xc]
004a2324  0a 70 61 e0                                      rsb r7, r1, sl
004a2328  47 71 a0 e1                                      asr r7, r7, #2
004a232c  01 70 87 e2                                      add r7, r7, #1
004a2330  01 90 87 e2                                      add sb, r7, #1
004a2334  89 00 53 e1                                      cmp r3, sb, lsl #1
004a2338  0a 00 00 9a                                      bls #0x4a2368
004a233c  03 60 69 e0                                      rsb r6, sb, r3
004a2340  a6 60 a0 e1                                      lsr r6, r6, #1
004a2344  06 61 82 e0                                      add r6, r2, r6, lsl #2
004a2348  06 00 51 e1                                      cmp r1, r6
004a234c  2e 00 00 9a                                      bls #0x4a240c
004a2350  04 20 8a e2                                      add r2, sl, #4
004a2354  01 20 52 e0                                      subs r2, r2, r1
004a2358  1e 00 00 0a                                      beq #0x4a23d8
004a235c  06 00 a0 e1                                      mov r0, r6
004a2360  f4 ae f9 eb                                      bl #0x30df38
004a2364  1b 00 00 ea                                      b #0x4a23d8
004a2368  00 00 53 e3                                      cmp r3, #0
004a236c  03 20 a0 11                                      movne r2, r3
004a2370  01 20 a0 03                                      moveq r2, #1
004a2374  02 80 83 e2                                      add r8, r3, #2
004a2378  02 80 88 e0                                      add r8, r8, r2
004a237c  08 10 a0 e1                                      mov r1, r8
004a2380  00 20 a0 e3                                      mov r2, #0
004a2384  20 00 80 e2                                      add r0, r0, #0x20
004a2388  94 ff ff eb                                      bl #0x4a21e0
004a238c  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
004a2390  0c 10 94 e5                                      ldr r1, [r4, #0xc]
004a2394  08 60 69 e0                                      rsb r6, sb, r8
004a2398  a6 60 a0 e1                                      lsr r6, r6, #1
004a239c  04 20 82 e2                                      add r2, r2, #4
004a23a0  01 20 52 e0                                      subs r2, r2, r1
004a23a4  00 a0 a0 e1                                      mov sl, r0
004a23a8  06 61 80 e0                                      add r6, r0, r6, lsl #2
004a23ac  20 00 00 1a                                      bne #0x4a2434
004a23b0  20 00 94 e5                                      ldr r0, [r4, #0x20]
004a23b4  24 10 94 e5                                      ldr r1, [r4, #0x24]
004a23b8  00 00 50 e3                                      cmp r0, #0
004a23bc  03 00 00 0a                                      beq #0x4a23d0
004a23c0  01 11 a0 e1                                      lsl r1, r1, #2
004a23c4  80 00 51 e3                                      cmp r1, #0x80
004a23c8  17 00 00 8a                                      bhi #0x4a242c
004a23cc  cb 9a 09 eb                                      bl #0x708f00
004a23d0  20 a0 84 e5                                      str sl, [r4, #0x20]
004a23d4  24 80 84 e5                                      str r8, [r4, #0x24]
004a23d8  0c 60 84 e5                                      str r6, [r4, #0xc]
004a23dc  00 30 96 e5                                      ldr r3, [r6]
004a23e0  01 70 47 e2                                      sub r7, r7, #1
004a23e4  07 a1 86 e0                                      add sl, r6, r7, lsl #2
004a23e8  78 20 83 e2                                      add r2, r3, #0x78
004a23ec  08 20 84 e5                                      str r2, [r4, #8]
004a23f0  04 30 84 e5                                      str r3, [r4, #4]
004a23f4  1c a0 84 e5                                      str sl, [r4, #0x1c]
004a23f8  07 31 96 e7                                      ldr r3, [r6, r7, lsl #2]
004a23fc  78 20 83 e2                                      add r2, r3, #0x78
004a2400  18 20 84 e5                                      str r2, [r4, #0x18]
004a2404  14 30 84 e5                                      str r3, [r4, #0x14]
004a2408  b3 ff ff ea                                      b #0x4a22dc
004a240c  04 20 8a e2                                      add r2, sl, #4
004a2410  02 20 61 e0                                      rsb r2, r1, r2
004a2414  00 00 52 e3                                      cmp r2, #0
004a2418  ee ff ff da                                      ble #0x4a23d8
004a241c  07 01 86 e0                                      add r0, r6, r7, lsl #2
004a2420  00 00 62 e0                                      rsb r0, r2, r0
004a2424  c3 ae f9 eb                                      bl #0x30df38
004a2428  ea ff ff ea                                      b #0x4a23d8
004a242c  03 b8 f9 eb                                      bl #0x310440
004a2430  e6 ff ff ea                                      b #0x4a23d0
004a2434  06 00 a0 e1                                      mov r0, r6
004a2438  be ae f9 eb                                      bl #0x30df38
004a243c  db ff ff ea                                      b #0x4a23b0
