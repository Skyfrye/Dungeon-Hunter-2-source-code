; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00476058, declared_size=372, range_size=372, mode=arm
; class-group: AnimationSet& std::map<int, AnimationSet, std::less<int>, std::allocator<std::pair<int const, AnimationSet> > >
; alias: _ZNSt3mapIi12AnimationSetSt4lessIiESaISt4pairIKiS0_EEEixIiEERS0_RKT_
; demangled: AnimationSet& std::map<int, AnimationSet, std::less<int>, std::allocator<std::pair<int const, AnimationSet> > >::operator[]<int>(int const&)
; decoder-mode: arm
00476058  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0047605c  04 40 90 e5                                      ldr r4, [r0, #4]
00476060  5c 21 9f e5                                      ldr r2, [pc, #0x15c]
00476064  94 d0 4d e2                                      sub sp, sp, #0x94
00476068  00 00 54 e3                                      cmp r4, #0
0047606c  00 70 a0 e1                                      mov r7, r0
00476070  02 20 8f e0                                      add r2, pc, r2
00476074  4f 00 00 0a                                      beq #0x4761b8
00476078  00 30 91 e5                                      ldr r3, [r1]
0047607c  00 00 00 ea                                      b #0x476084
00476080  01 40 a0 e1                                      mov r4, r1
00476084  10 10 94 e5                                      ldr r1, [r4, #0x10]
00476088  03 00 51 e1                                      cmp r1, r3
0047608c  0c 10 94 b5                                      ldrlt r1, [r4, #0xc]
00476090  08 10 94 a5                                      ldrge r1, [r4, #8]
00476094  00 40 a0 b1                                      movlt r4, r0
00476098  04 00 a0 e1                                      mov r0, r4
0047609c  00 00 51 e3                                      cmp r1, #0
004760a0  f6 ff ff 1a                                      bne #0x476080
004760a4  04 00 57 e1                                      cmp r7, r4
004760a8  03 00 00 0a                                      beq #0x4760bc
004760ac  10 10 94 e5                                      ldr r1, [r4, #0x10]
004760b0  04 00 a0 e1                                      mov r0, r4
004760b4  01 00 53 e1                                      cmp r3, r1
004760b8  3b 00 00 aa                                      bge #0x4761ac
004760bc  04 e1 9f e5                                      ldr lr, [pc, #0x104]
004760c0  03 a0 a0 e3                                      mov sl, #3
004760c4  48 60 8d e2                                      add r6, sp, #0x48
004760c8  0e e0 92 e7                                      ldr lr, [r2, lr]
004760cc  70 a0 8d e5                                      str sl, [sp, #0x70]
004760d0  0a a0 a0 e3                                      mov sl, #0xa
004760d4  08 c0 86 e2                                      add ip, r6, #8
004760d8  04 50 8d e2                                      add r5, sp, #4
004760dc  78 a0 8d e5                                      str sl, [sp, #0x78]
004760e0  06 a0 a0 e3                                      mov sl, #6
004760e4  00 20 a0 e3                                      mov r2, #0
004760e8  08 e0 8e e2                                      add lr, lr, #8
004760ec  0c 10 a0 e1                                      mov r1, ip
004760f0  01 80 a0 e3                                      mov r8, #1
004760f4  7c a0 8d e5                                      str sl, [sp, #0x7c]
004760f8  0c 00 85 e2                                      add r0, r5, #0xc
004760fc  60 aa 0e e3                                      movw sl, #0xea60
00476100  84 20 cd e5                                      strb r2, [sp, #0x84]
00476104  08 40 8d e9                                      stmib sp, {r3, lr}
00476108  48 e0 8d e5                                      str lr, [sp, #0x48]
0047610c  54 20 8d e5                                      str r2, [sp, #0x54]
00476110  50 20 cd e5                                      strb r2, [sp, #0x50]
00476114  58 c0 8d e5                                      str ip, [sp, #0x58]
00476118  5c c0 8d e5                                      str ip, [sp, #0x5c]
0047611c  60 20 8d e5                                      str r2, [sp, #0x60]
00476120  68 20 8d e5                                      str r2, [sp, #0x68]
00476124  6c 20 8d e5                                      str r2, [sp, #0x6c]
00476128  74 20 8d e5                                      str r2, [sp, #0x74]
0047612c  80 a0 8d e5                                      str sl, [sp, #0x80]
00476130  0c 80 8d e5                                      str r8, [sp, #0xc]
00476134  4c 80 8d e5                                      str r8, [sp, #0x4c]
00476138  06 fe ff eb                                      bl #0x475958
0047613c  68 e0 9d e5                                      ldr lr, [sp, #0x68]
00476140  84 c0 dd e5                                      ldrb ip, [sp, #0x84]
00476144  07 10 a0 e1                                      mov r1, r7
00476148  28 e0 8d e5                                      str lr, [sp, #0x28]
0047614c  6c e0 9d e5                                      ldr lr, [sp, #0x6c]
00476150  88 20 8d e2                                      add r2, sp, #0x88
00476154  05 30 a0 e1                                      mov r3, r5
00476158  2c e0 8d e5                                      str lr, [sp, #0x2c]
0047615c  70 e0 9d e5                                      ldr lr, [sp, #0x70]
00476160  8c 00 8d e2                                      add r0, sp, #0x8c
00476164  44 c0 cd e5                                      strb ip, [sp, #0x44]
00476168  30 e0 8d e5                                      str lr, [sp, #0x30]
0047616c  74 e0 9d e5                                      ldr lr, [sp, #0x74]
00476170  88 40 8d e5                                      str r4, [sp, #0x88]
00476174  34 e0 8d e5                                      str lr, [sp, #0x34]
00476178  78 e0 9d e5                                      ldr lr, [sp, #0x78]
0047617c  38 e0 8d e5                                      str lr, [sp, #0x38]
00476180  7c e0 9d e5                                      ldr lr, [sp, #0x7c]
00476184  3c e0 8d e5                                      str lr, [sp, #0x3c]
00476188  80 e0 9d e5                                      ldr lr, [sp, #0x80]
0047618c  40 e0 8d e5                                      str lr, [sp, #0x40]
00476190  d3 fe ff eb                                      bl #0x475ce4
00476194  8c 40 9d e5                                      ldr r4, [sp, #0x8c]
00476198  04 00 85 e2                                      add r0, r5, #4
0047619c  5f bb fb eb                                      bl #0x364f20
004761a0  06 00 a0 e1                                      mov r0, r6
004761a4  5d bb fb eb                                      bl #0x364f20
004761a8  04 00 a0 e1                                      mov r0, r4
004761ac  14 00 80 e2                                      add r0, r0, #0x14
004761b0  94 d0 8d e2                                      add sp, sp, #0x94
004761b4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
004761b8  00 30 91 e5                                      ldr r3, [r1]
004761bc  00 40 a0 e1                                      mov r4, r0
004761c0  b7 ff ff ea                                      b #0x4760a4
; mapping-symbol data/literal pool
004761c4  20 ea 51 00 7c 1b 00 00                          .byte 0x20, 0xea, 0x51, 0x00, 0x7c, 0x1b, 0x00, 0x00
