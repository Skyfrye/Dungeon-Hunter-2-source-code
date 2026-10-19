; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005a3ef0, declared_size=1156, range_size=1156, mode=arm
; class-group: std::pair<unsigned int, glitch::core::aabbox3d<float> >* std::priv
; alias: _ZNSt4priv9__find_ifIPSt4pairIjN6glitch4core8aabbox3dIfEEENS3_7CKdTreeIS6_E12SEqPredicateEEET_SB_SB_T0_RKSt26random_access_iterator_tag
; demangled: std::pair<unsigned int, glitch::core::aabbox3d<float> >* std::priv::__find_if<std::pair<unsigned int, glitch::core::aabbox3d<float> >*, glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SEqPredicate>(std::pair<unsigned int, glitch::core::aabbox3d<float> >*, std::pair<unsigned int, glitch::core::aabbox3d<float> >*, glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SEqPredicate, std::random_access_iterator_tag const&)
; decoder-mode: arm
005a3ef0  01 30 60 e0                                      rsb r3, r0, r1
005a3ef4  43 31 a0 e1                                      asr r3, r3, #2
005a3ef8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005a3efc  02 80 a0 e1                                      mov r8, r2
005a3f00  83 21 83 e0                                      add r2, r3, r3, lsl #3
005a3f04  00 40 a0 e1                                      mov r4, r0
005a3f08  02 23 82 e0                                      add r2, r2, r2, lsl #6
005a3f0c  01 50 a0 e1                                      mov r5, r1
005a3f10  82 21 83 e0                                      add r2, r3, r2, lsl #3
005a3f14  82 27 82 e0                                      add r2, r2, r2, lsl #15
005a3f18  82 31 83 e0                                      add r3, r3, r2, lsl #3
005a3f1c  00 30 63 e2                                      rsb r3, r3, #0
005a3f20  43 71 a0 e1                                      asr r7, r3, #2
005a3f24  00 00 57 e3                                      cmp r7, #0
005a3f28  9b 00 00 da                                      ble #0x5a419c
005a3f2c  00 60 98 e5                                      ldr r6, [r8]
005a3f30  0b 00 00 ea                                      b #0x5a3f64
005a3f34  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
005a3f38  06 00 53 e1                                      cmp r3, r6
005a3f3c  2b 00 00 0a                                      beq #0x5a3ff0
005a3f40  38 30 94 e5                                      ldr r3, [r4, #0x38]
005a3f44  06 00 53 e1                                      cmp r3, r6
005a3f48  49 00 00 0a                                      beq #0x5a4074
005a3f4c  54 30 94 e5                                      ldr r3, [r4, #0x54]
005a3f50  06 00 53 e1                                      cmp r3, r6
005a3f54  67 00 00 0a                                      beq #0x5a40f8
005a3f58  01 70 57 e2                                      subs r7, r7, #1
005a3f5c  70 40 84 e2                                      add r4, r4, #0x70
005a3f60  85 00 00 0a                                      beq #0x5a417c
005a3f64  00 30 94 e5                                      ldr r3, [r4]
005a3f68  06 00 53 e1                                      cmp r3, r6
005a3f6c  f0 ff ff 1a                                      bne #0x5a3f34
005a3f70  04 00 98 e5                                      ldr r0, [r8, #4]
005a3f74  04 10 94 e5                                      ldr r1, [r4, #4]
005a3f78  03 a8 f5 eb                                      bl #0x30df8c
005a3f7c  00 00 50 e3                                      cmp r0, #0
005a3f80  eb ff ff 0a                                      beq #0x5a3f34
005a3f84  08 00 98 e5                                      ldr r0, [r8, #8]
005a3f88  08 10 94 e5                                      ldr r1, [r4, #8]
005a3f8c  fe a7 f5 eb                                      bl #0x30df8c
005a3f90  00 00 50 e3                                      cmp r0, #0
005a3f94  e6 ff ff 0a                                      beq #0x5a3f34
005a3f98  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005a3f9c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005a3fa0  f9 a7 f5 eb                                      bl #0x30df8c
005a3fa4  00 00 50 e3                                      cmp r0, #0
005a3fa8  e1 ff ff 0a                                      beq #0x5a3f34
005a3fac  10 00 94 e5                                      ldr r0, [r4, #0x10]
005a3fb0  10 10 98 e5                                      ldr r1, [r8, #0x10]
005a3fb4  f4 a7 f5 eb                                      bl #0x30df8c
005a3fb8  00 00 50 e3                                      cmp r0, #0
005a3fbc  dc ff ff 0a                                      beq #0x5a3f34
005a3fc0  14 00 94 e5                                      ldr r0, [r4, #0x14]
005a3fc4  14 10 98 e5                                      ldr r1, [r8, #0x14]
005a3fc8  ef a7 f5 eb                                      bl #0x30df8c
005a3fcc  00 00 50 e3                                      cmp r0, #0
005a3fd0  d7 ff ff 0a                                      beq #0x5a3f34
005a3fd4  18 00 94 e5                                      ldr r0, [r4, #0x18]
005a3fd8  18 10 98 e5                                      ldr r1, [r8, #0x18]
005a3fdc  ea a7 f5 eb                                      bl #0x30df8c
005a3fe0  00 00 50 e3                                      cmp r0, #0
005a3fe4  d2 ff ff 0a                                      beq #0x5a3f34
005a3fe8  04 00 a0 e1                                      mov r0, r4
005a3fec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005a3ff0  04 00 98 e5                                      ldr r0, [r8, #4]
005a3ff4  20 10 94 e5                                      ldr r1, [r4, #0x20]
005a3ff8  e3 a7 f5 eb                                      bl #0x30df8c
005a3ffc  00 00 50 e3                                      cmp r0, #0
005a4000  ce ff ff 0a                                      beq #0x5a3f40
005a4004  08 00 98 e5                                      ldr r0, [r8, #8]
005a4008  24 10 94 e5                                      ldr r1, [r4, #0x24]
005a400c  de a7 f5 eb                                      bl #0x30df8c
005a4010  00 00 50 e3                                      cmp r0, #0
005a4014  c9 ff ff 0a                                      beq #0x5a3f40
005a4018  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005a401c  28 10 94 e5                                      ldr r1, [r4, #0x28]
005a4020  d9 a7 f5 eb                                      bl #0x30df8c
005a4024  00 00 50 e3                                      cmp r0, #0
005a4028  c4 ff ff 0a                                      beq #0x5a3f40
005a402c  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
005a4030  10 10 98 e5                                      ldr r1, [r8, #0x10]
005a4034  d4 a7 f5 eb                                      bl #0x30df8c
005a4038  00 00 50 e3                                      cmp r0, #0
005a403c  bf ff ff 0a                                      beq #0x5a3f40
005a4040  30 00 94 e5                                      ldr r0, [r4, #0x30]
005a4044  14 10 98 e5                                      ldr r1, [r8, #0x14]
005a4048  cf a7 f5 eb                                      bl #0x30df8c
005a404c  00 00 50 e3                                      cmp r0, #0
005a4050  ba ff ff 0a                                      beq #0x5a3f40
005a4054  34 00 94 e5                                      ldr r0, [r4, #0x34]
005a4058  18 10 98 e5                                      ldr r1, [r8, #0x18]
005a405c  ca a7 f5 eb                                      bl #0x30df8c
005a4060  00 00 50 e3                                      cmp r0, #0
005a4064  b5 ff ff 0a                                      beq #0x5a3f40
005a4068  1c 40 84 e2                                      add r4, r4, #0x1c
005a406c  04 00 a0 e1                                      mov r0, r4
005a4070  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005a4074  04 00 98 e5                                      ldr r0, [r8, #4]
005a4078  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
005a407c  c2 a7 f5 eb                                      bl #0x30df8c
005a4080  00 00 50 e3                                      cmp r0, #0
005a4084  b0 ff ff 0a                                      beq #0x5a3f4c
005a4088  08 00 98 e5                                      ldr r0, [r8, #8]
005a408c  40 10 94 e5                                      ldr r1, [r4, #0x40]
005a4090  bd a7 f5 eb                                      bl #0x30df8c
005a4094  00 00 50 e3                                      cmp r0, #0
005a4098  ab ff ff 0a                                      beq #0x5a3f4c
005a409c  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005a40a0  44 10 94 e5                                      ldr r1, [r4, #0x44]
005a40a4  b8 a7 f5 eb                                      bl #0x30df8c
005a40a8  00 00 50 e3                                      cmp r0, #0
005a40ac  a6 ff ff 0a                                      beq #0x5a3f4c
005a40b0  48 00 94 e5                                      ldr r0, [r4, #0x48]
005a40b4  10 10 98 e5                                      ldr r1, [r8, #0x10]
005a40b8  b3 a7 f5 eb                                      bl #0x30df8c
005a40bc  00 00 50 e3                                      cmp r0, #0
005a40c0  a1 ff ff 0a                                      beq #0x5a3f4c
005a40c4  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
005a40c8  14 10 98 e5                                      ldr r1, [r8, #0x14]
005a40cc  ae a7 f5 eb                                      bl #0x30df8c
005a40d0  00 00 50 e3                                      cmp r0, #0
005a40d4  9c ff ff 0a                                      beq #0x5a3f4c
005a40d8  50 00 94 e5                                      ldr r0, [r4, #0x50]
005a40dc  18 10 98 e5                                      ldr r1, [r8, #0x18]
005a40e0  a9 a7 f5 eb                                      bl #0x30df8c
005a40e4  00 00 50 e3                                      cmp r0, #0
005a40e8  97 ff ff 0a                                      beq #0x5a3f4c
005a40ec  38 40 84 e2                                      add r4, r4, #0x38
005a40f0  04 00 a0 e1                                      mov r0, r4
005a40f4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005a40f8  04 00 98 e5                                      ldr r0, [r8, #4]
005a40fc  58 10 94 e5                                      ldr r1, [r4, #0x58]
005a4100  a1 a7 f5 eb                                      bl #0x30df8c
005a4104  00 00 50 e3                                      cmp r0, #0
005a4108  92 ff ff 0a                                      beq #0x5a3f58
005a410c  08 00 98 e5                                      ldr r0, [r8, #8]
005a4110  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
005a4114  9c a7 f5 eb                                      bl #0x30df8c
005a4118  00 00 50 e3                                      cmp r0, #0
005a411c  8d ff ff 0a                                      beq #0x5a3f58
005a4120  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005a4124  60 10 94 e5                                      ldr r1, [r4, #0x60]
005a4128  97 a7 f5 eb                                      bl #0x30df8c
005a412c  00 00 50 e3                                      cmp r0, #0
005a4130  88 ff ff 0a                                      beq #0x5a3f58
005a4134  64 00 94 e5                                      ldr r0, [r4, #0x64]
005a4138  10 10 98 e5                                      ldr r1, [r8, #0x10]
005a413c  92 a7 f5 eb                                      bl #0x30df8c
005a4140  00 00 50 e3                                      cmp r0, #0
005a4144  83 ff ff 0a                                      beq #0x5a3f58
005a4148  68 00 94 e5                                      ldr r0, [r4, #0x68]
005a414c  14 10 98 e5                                      ldr r1, [r8, #0x14]
005a4150  8d a7 f5 eb                                      bl #0x30df8c
005a4154  00 00 50 e3                                      cmp r0, #0
005a4158  7e ff ff 0a                                      beq #0x5a3f58
005a415c  6c 00 94 e5                                      ldr r0, [r4, #0x6c]
005a4160  18 10 98 e5                                      ldr r1, [r8, #0x18]
005a4164  88 a7 f5 eb                                      bl #0x30df8c
005a4168  00 00 50 e3                                      cmp r0, #0
005a416c  79 ff ff 0a                                      beq #0x5a3f58
005a4170  54 40 84 e2                                      add r4, r4, #0x54
005a4174  04 00 a0 e1                                      mov r0, r4
005a4178  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005a417c  05 30 64 e0                                      rsb r3, r4, r5
005a4180  43 31 a0 e1                                      asr r3, r3, #2
005a4184  83 21 83 e0                                      add r2, r3, r3, lsl #3
005a4188  02 23 82 e0                                      add r2, r2, r2, lsl #6
005a418c  82 21 83 e0                                      add r2, r3, r2, lsl #3
005a4190  82 27 82 e0                                      add r2, r2, r2, lsl #15
005a4194  82 31 83 e0                                      add r3, r3, r2, lsl #3
005a4198  00 30 63 e2                                      rsb r3, r3, #0
005a419c  02 00 53 e3                                      cmp r3, #2
005a41a0  06 00 00 0a                                      beq #0x5a41c0
005a41a4  03 00 53 e3                                      cmp r3, #3
005a41a8  2d 00 00 0a                                      beq #0x5a4264
005a41ac  01 00 53 e3                                      cmp r3, #1
005a41b0  29 00 00 0a                                      beq #0x5a425c
005a41b4  05 40 a0 e1                                      mov r4, r5
005a41b8  04 00 a0 e1                                      mov r0, r4
005a41bc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005a41c0  00 60 98 e5                                      ldr r6, [r8]
005a41c4  00 30 94 e5                                      ldr r3, [r4]
005a41c8  06 00 53 e1                                      cmp r3, r6
005a41cc  2a 00 00 0a                                      beq #0x5a427c
005a41d0  1c 40 84 e2                                      add r4, r4, #0x1c
005a41d4  00 30 94 e5                                      ldr r3, [r4]
005a41d8  06 00 53 e1                                      cmp r3, r6
005a41dc  f4 ff ff 1a                                      bne #0x5a41b4
005a41e0  04 00 98 e5                                      ldr r0, [r8, #4]
005a41e4  04 10 94 e5                                      ldr r1, [r4, #4]
005a41e8  67 a7 f5 eb                                      bl #0x30df8c
005a41ec  00 00 50 e3                                      cmp r0, #0
005a41f0  ef ff ff 0a                                      beq #0x5a41b4
005a41f4  08 00 98 e5                                      ldr r0, [r8, #8]
005a41f8  08 10 94 e5                                      ldr r1, [r4, #8]
005a41fc  62 a7 f5 eb                                      bl #0x30df8c
005a4200  00 00 50 e3                                      cmp r0, #0
005a4204  ea ff ff 0a                                      beq #0x5a41b4
005a4208  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005a420c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005a4210  5d a7 f5 eb                                      bl #0x30df8c
005a4214  00 00 50 e3                                      cmp r0, #0
005a4218  e5 ff ff 0a                                      beq #0x5a41b4
005a421c  10 00 94 e5                                      ldr r0, [r4, #0x10]
005a4220  10 10 98 e5                                      ldr r1, [r8, #0x10]
005a4224  58 a7 f5 eb                                      bl #0x30df8c
005a4228  00 00 50 e3                                      cmp r0, #0
005a422c  e0 ff ff 0a                                      beq #0x5a41b4
005a4230  14 00 94 e5                                      ldr r0, [r4, #0x14]
005a4234  14 10 98 e5                                      ldr r1, [r8, #0x14]
005a4238  53 a7 f5 eb                                      bl #0x30df8c
005a423c  00 00 50 e3                                      cmp r0, #0
005a4240  db ff ff 0a                                      beq #0x5a41b4
005a4244  18 10 98 e5                                      ldr r1, [r8, #0x18]
005a4248  18 00 94 e5                                      ldr r0, [r4, #0x18]
005a424c  4e a7 f5 eb                                      bl #0x30df8c
005a4250  00 00 50 e3                                      cmp r0, #0
005a4254  63 ff ff 1a                                      bne #0x5a3fe8
005a4258  d5 ff ff ea                                      b #0x5a41b4
005a425c  00 60 98 e5                                      ldr r6, [r8]
005a4260  db ff ff ea                                      b #0x5a41d4
005a4264  00 60 98 e5                                      ldr r6, [r8]
005a4268  00 30 94 e5                                      ldr r3, [r4]
005a426c  03 00 56 e1                                      cmp r6, r3
005a4270  20 00 00 0a                                      beq #0x5a42f8
005a4274  1c 40 84 e2                                      add r4, r4, #0x1c
005a4278  d1 ff ff ea                                      b #0x5a41c4
005a427c  04 00 98 e5                                      ldr r0, [r8, #4]
005a4280  04 10 94 e5                                      ldr r1, [r4, #4]
005a4284  40 a7 f5 eb                                      bl #0x30df8c
005a4288  00 00 50 e3                                      cmp r0, #0
005a428c  cf ff ff 0a                                      beq #0x5a41d0
005a4290  08 00 98 e5                                      ldr r0, [r8, #8]
005a4294  08 10 94 e5                                      ldr r1, [r4, #8]
005a4298  3b a7 f5 eb                                      bl #0x30df8c
005a429c  00 00 50 e3                                      cmp r0, #0
005a42a0  ca ff ff 0a                                      beq #0x5a41d0
005a42a4  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005a42a8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005a42ac  36 a7 f5 eb                                      bl #0x30df8c
005a42b0  00 00 50 e3                                      cmp r0, #0
005a42b4  c5 ff ff 0a                                      beq #0x5a41d0
005a42b8  10 00 94 e5                                      ldr r0, [r4, #0x10]
005a42bc  10 10 98 e5                                      ldr r1, [r8, #0x10]
005a42c0  31 a7 f5 eb                                      bl #0x30df8c
005a42c4  00 00 50 e3                                      cmp r0, #0
005a42c8  c0 ff ff 0a                                      beq #0x5a41d0
005a42cc  14 00 94 e5                                      ldr r0, [r4, #0x14]
005a42d0  14 10 98 e5                                      ldr r1, [r8, #0x14]
005a42d4  2c a7 f5 eb                                      bl #0x30df8c
005a42d8  00 00 50 e3                                      cmp r0, #0
005a42dc  bb ff ff 0a                                      beq #0x5a41d0
005a42e0  18 00 94 e5                                      ldr r0, [r4, #0x18]
005a42e4  18 10 98 e5                                      ldr r1, [r8, #0x18]
005a42e8  27 a7 f5 eb                                      bl #0x30df8c
005a42ec  00 00 50 e3                                      cmp r0, #0
005a42f0  3c ff ff 1a                                      bne #0x5a3fe8
005a42f4  b5 ff ff ea                                      b #0x5a41d0
005a42f8  04 00 98 e5                                      ldr r0, [r8, #4]
005a42fc  04 10 94 e5                                      ldr r1, [r4, #4]
005a4300  21 a7 f5 eb                                      bl #0x30df8c
005a4304  00 00 50 e3                                      cmp r0, #0
005a4308  d9 ff ff 0a                                      beq #0x5a4274
005a430c  08 00 98 e5                                      ldr r0, [r8, #8]
005a4310  08 10 94 e5                                      ldr r1, [r4, #8]
005a4314  1c a7 f5 eb                                      bl #0x30df8c
005a4318  00 00 50 e3                                      cmp r0, #0
005a431c  d4 ff ff 0a                                      beq #0x5a4274
005a4320  0c 00 98 e5                                      ldr r0, [r8, #0xc]
005a4324  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005a4328  17 a7 f5 eb                                      bl #0x30df8c
005a432c  00 00 50 e3                                      cmp r0, #0
005a4330  cf ff ff 0a                                      beq #0x5a4274
005a4334  10 00 94 e5                                      ldr r0, [r4, #0x10]
005a4338  10 10 98 e5                                      ldr r1, [r8, #0x10]
005a433c  12 a7 f5 eb                                      bl #0x30df8c
005a4340  00 00 50 e3                                      cmp r0, #0
005a4344  ca ff ff 0a                                      beq #0x5a4274
005a4348  14 00 94 e5                                      ldr r0, [r4, #0x14]
005a434c  14 10 98 e5                                      ldr r1, [r8, #0x14]
005a4350  0d a7 f5 eb                                      bl #0x30df8c
005a4354  00 00 50 e3                                      cmp r0, #0
005a4358  c5 ff ff 0a                                      beq #0x5a4274
005a435c  18 00 94 e5                                      ldr r0, [r4, #0x18]
005a4360  18 10 98 e5                                      ldr r1, [r8, #0x18]
005a4364  08 a7 f5 eb                                      bl #0x30df8c
005a4368  00 00 50 e3                                      cmp r0, #0
005a436c  1d ff ff 1a                                      bne #0x5a3fe8
005a4370  bf ff ff ea                                      b #0x5a4274
