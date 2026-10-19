; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005a4374, declared_size=320, range_size=320, mode=arm
; class-group: std::pair<unsigned int, glitch::core::aabbox3d<float> >* std
; alias: _ZSt9remove_ifIPSt4pairIjN6glitch4core8aabbox3dIfEEENS2_7CKdTreeIS5_E12SEqPredicateEET_SA_SA_T0_
; demangled: std::pair<unsigned int, glitch::core::aabbox3d<float> >* std::remove_if<std::pair<unsigned int, glitch::core::aabbox3d<float> >*, glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SEqPredicate>(std::pair<unsigned int, glitch::core::aabbox3d<float> >*, std::pair<unsigned int, glitch::core::aabbox3d<float> >*, glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SEqPredicate)
; decoder-mode: arm
005a4374  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005a4378  08 d0 4d e2                                      sub sp, sp, #8
005a437c  04 30 8d e2                                      add r3, sp, #4
005a4380  01 50 a0 e1                                      mov r5, r1
005a4384  02 40 a0 e1                                      mov r4, r2
005a4388  d8 fe ff eb                                      bl #0x5a3ef0
005a438c  00 00 55 e1                                      cmp r5, r0
005a4390  00 60 a0 e1                                      mov r6, r0
005a4394  43 00 00 0a                                      beq #0x5a44a8
005a4398  1c 20 80 e2                                      add r2, r0, #0x1c
005a439c  02 00 55 e1                                      cmp r5, r2
005a43a0  40 00 00 0a                                      beq #0x5a44a8
005a43a4  38 30 80 e2                                      add r3, r0, #0x38
005a43a8  05 50 63 e0                                      rsb r5, r3, r5
005a43ac  b7 3d 06 e3                                      movw r3, #0x6db7
005a43b0  25 51 a0 e1                                      lsr r5, r5, #2
005a43b4  db 36 43 e3                                      movt r3, #0x36db
005a43b8  93 05 03 e0                                      mul r3, r3, r5
005a43bc  1c 80 a0 e3                                      mov r8, #0x1c
005a43c0  03 31 c3 e3                                      bic r3, r3, #0xc0000000
005a43c4  98 23 28 e0                                      mla r8, r8, r3, r2
005a43c8  00 50 a0 e1                                      mov r5, r0
005a43cc  10 00 00 ea                                      b #0x5a4414
005a43d0  00 70 86 e5                                      str r7, [r6]
005a43d4  20 30 95 e5                                      ldr r3, [r5, #0x20]
005a43d8  04 30 86 e5                                      str r3, [r6, #4]
005a43dc  24 30 95 e5                                      ldr r3, [r5, #0x24]
005a43e0  08 30 86 e5                                      str r3, [r6, #8]
005a43e4  28 30 95 e5                                      ldr r3, [r5, #0x28]
005a43e8  0c 30 86 e5                                      str r3, [r6, #0xc]
005a43ec  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
005a43f0  10 30 86 e5                                      str r3, [r6, #0x10]
005a43f4  30 30 95 e5                                      ldr r3, [r5, #0x30]
005a43f8  14 30 86 e5                                      str r3, [r6, #0x14]
005a43fc  34 30 95 e5                                      ldr r3, [r5, #0x34]
005a4400  1c 50 85 e2                                      add r5, r5, #0x1c
005a4404  08 00 55 e1                                      cmp r5, r8
005a4408  18 30 86 e5                                      str r3, [r6, #0x18]
005a440c  1c 60 86 e2                                      add r6, r6, #0x1c
005a4410  24 00 00 0a                                      beq #0x5a44a8
005a4414  1c 70 95 e5                                      ldr r7, [r5, #0x1c]
005a4418  00 30 94 e5                                      ldr r3, [r4]
005a441c  07 00 53 e1                                      cmp r3, r7
005a4420  ea ff ff 1a                                      bne #0x5a43d0
005a4424  20 10 95 e5                                      ldr r1, [r5, #0x20]
005a4428  04 00 94 e5                                      ldr r0, [r4, #4]
005a442c  d6 a6 f5 eb                                      bl #0x30df8c
005a4430  00 00 50 e3                                      cmp r0, #0
005a4434  e5 ff ff 0a                                      beq #0x5a43d0
005a4438  24 10 95 e5                                      ldr r1, [r5, #0x24]
005a443c  08 00 94 e5                                      ldr r0, [r4, #8]
005a4440  d1 a6 f5 eb                                      bl #0x30df8c
005a4444  00 00 50 e3                                      cmp r0, #0
005a4448  e0 ff ff 0a                                      beq #0x5a43d0
005a444c  28 10 95 e5                                      ldr r1, [r5, #0x28]
005a4450  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005a4454  cc a6 f5 eb                                      bl #0x30df8c
005a4458  00 00 50 e3                                      cmp r0, #0
005a445c  db ff ff 0a                                      beq #0x5a43d0
005a4460  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
005a4464  10 10 94 e5                                      ldr r1, [r4, #0x10]
005a4468  c7 a6 f5 eb                                      bl #0x30df8c
005a446c  00 00 50 e3                                      cmp r0, #0
005a4470  d6 ff ff 0a                                      beq #0x5a43d0
005a4474  30 00 95 e5                                      ldr r0, [r5, #0x30]
005a4478  14 10 94 e5                                      ldr r1, [r4, #0x14]
005a447c  c2 a6 f5 eb                                      bl #0x30df8c
005a4480  00 00 50 e3                                      cmp r0, #0
005a4484  d1 ff ff 0a                                      beq #0x5a43d0
005a4488  34 00 95 e5                                      ldr r0, [r5, #0x34]
005a448c  18 10 94 e5                                      ldr r1, [r4, #0x18]
005a4490  bd a6 f5 eb                                      bl #0x30df8c
005a4494  00 00 50 e3                                      cmp r0, #0
005a4498  cc ff ff 0a                                      beq #0x5a43d0
005a449c  1c 50 85 e2                                      add r5, r5, #0x1c
005a44a0  08 00 55 e1                                      cmp r5, r8
005a44a4  da ff ff 1a                                      bne #0x5a4414
005a44a8  06 00 a0 e1                                      mov r0, r6
005a44ac  08 d0 8d e2                                      add sp, sp, #8
005a44b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
