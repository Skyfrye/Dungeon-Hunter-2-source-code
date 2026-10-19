; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003b459c, declared_size=104, range_size=104, mode=arm
; class-group: std::vector<bool, std::allocator<bool> >
; alias: _ZNSt6vectorIbSaIbEE13_M_initializeEj
; demangled: std::vector<bool, std::allocator<bool> >::_M_initialize(unsigned int)
; decoder-mode: arm
003b459c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003b45a0  1f 70 81 e2                                      add r7, r1, #0x1f
003b45a4  a7 62 a0 e1                                      lsr r6, r7, #5
003b45a8  00 40 a0 e1                                      mov r4, r0
003b45ac  01 50 a0 e1                                      mov r5, r1
003b45b0  10 00 80 e2                                      add r0, r0, #0x10
003b45b4  06 10 a0 e1                                      mov r1, r6
003b45b8  00 20 a0 e3                                      mov r2, #0
003b45bc  de ff ff eb                                      bl #0x3b453c
003b45c0  c5 3f a0 e1                                      asr r3, r5, #0x1f
003b45c4  00 00 55 e3                                      cmp r5, #0
003b45c8  05 70 a0 a1                                      movge r7, r5
003b45cc  a3 3d a0 e1                                      lsr r3, r3, #0x1b
003b45d0  03 50 85 e0                                      add r5, r5, r3
003b45d4  c7 72 a0 e1                                      asr r7, r7, #5
003b45d8  1f 50 05 e2                                      and r5, r5, #0x1f
003b45dc  03 50 55 e0                                      subs r5, r5, r3
003b45e0  07 71 80 e0                                      add r7, r0, r7, lsl #2
003b45e4  06 61 80 e0                                      add r6, r0, r6, lsl #2
003b45e8  00 30 a0 e3                                      mov r3, #0
003b45ec  20 50 85 42                                      addmi r5, r5, #0x20
003b45f0  04 70 47 42                                      submi r7, r7, #4
003b45f4  10 60 84 e5                                      str r6, [r4, #0x10]
003b45f8  89 00 84 e8                                      stm r4, {r0, r3, r7}
003b45fc  0c 50 84 e5                                      str r5, [r4, #0xc]
003b4600  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003b4604, declared_size=308, range_size=308, mode=arm
; class-group: std::vector<bool, std::allocator<bool> >
; alias: _ZNSt6vectorIbSaIbEEaSERKS1_
; demangled: std::vector<bool, std::allocator<bool> >::operator=(std::vector<bool, std::allocator<bool> > const&)
; decoder-mode: arm
003b4604  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003b4608  00 00 51 e1                                      cmp r1, r0
003b460c  3c d0 4d e2                                      sub sp, sp, #0x3c
003b4610  01 40 a0 e1                                      mov r4, r1
003b4614  00 50 a0 e1                                      mov r5, r0
003b4618  33 00 00 0a                                      beq #0x3b46ec
003b461c  0c 80 91 e5                                      ldr r8, [r1, #0xc]
003b4620  40 10 91 e9                                      ldmib r1, {r6, ip}
003b4624  00 e0 91 e5                                      ldr lr, [r1]
003b4628  10 30 90 e5                                      ldr r3, [r0, #0x10]
003b462c  00 a0 90 e5                                      ldr sl, [r0]
003b4630  04 70 90 e5                                      ldr r7, [r0, #4]
003b4634  08 20 66 e0                                      rsb r2, r6, r8
003b4638  03 30 6a e0                                      rsb r3, sl, r3
003b463c  0c 10 6e e0                                      rsb r1, lr, ip
003b4640  81 21 82 e0                                      add r2, r2, r1, lsl #3
003b4644  83 31 67 e0                                      rsb r3, r7, r3, lsl #3
003b4648  03 00 52 e1                                      cmp r2, r3
003b464c  29 00 00 8a                                      bhi #0x3b46f8
003b4650  18 70 8d e5                                      str r7, [sp, #0x18]
003b4654  14 70 8d e2                                      add r7, sp, #0x14
003b4658  0c 30 a0 e1                                      mov r3, ip
003b465c  0e 10 a0 e1                                      mov r1, lr
003b4660  06 20 a0 e1                                      mov r2, r6
003b4664  1c 00 8d e2                                      add r0, sp, #0x1c
003b4668  04 70 8d e5                                      str r7, [sp, #4]
003b466c  34 70 8d e2                                      add r7, sp, #0x34
003b4670  24 c0 8d e5                                      str ip, [sp, #0x24]
003b4674  14 a0 8d e5                                      str sl, [sp, #0x14]
003b4678  08 70 8d e5                                      str r7, [sp, #8]
003b467c  00 80 8d e5                                      str r8, [sp]
003b4680  30 60 8d e5                                      str r6, [sp, #0x30]
003b4684  2c e0 8d e5                                      str lr, [sp, #0x2c]
003b4688  28 80 8d e5                                      str r8, [sp, #0x28]
003b468c  e1 fb ff eb                                      bl #0x3b3618
003b4690  0c c0 94 e5                                      ldr ip, [r4, #0xc]
003b4694  04 20 95 e5                                      ldr r2, [r5, #4]
003b4698  00 10 94 e5                                      ldr r1, [r4]
003b469c  09 00 94 e9                                      ldmib r4, {r0, r3}
003b46a0  02 20 8c e0                                      add r2, ip, r2
003b46a4  02 20 60 e0                                      rsb r2, r0, r2
003b46a8  03 30 61 e0                                      rsb r3, r1, r3
003b46ac  83 31 82 e0                                      add r3, r2, r3, lsl #3
003b46b0  00 00 53 e3                                      cmp r3, #0
003b46b4  c3 2f a0 e1                                      asr r2, r3, #0x1f
003b46b8  1f 10 83 e2                                      add r1, r3, #0x1f
003b46bc  a2 2d a0 e1                                      lsr r2, r2, #0x1b
003b46c0  03 10 a0 a1                                      movge r1, r3
003b46c4  00 00 95 e5                                      ldr r0, [r5]
003b46c8  02 30 83 e0                                      add r3, r3, r2
003b46cc  c1 12 a0 e1                                      asr r1, r1, #5
003b46d0  1f 30 03 e2                                      and r3, r3, #0x1f
003b46d4  02 30 53 e0                                      subs r3, r3, r2
003b46d8  01 11 80 e0                                      add r1, r0, r1, lsl #2
003b46dc  20 30 83 42                                      addmi r3, r3, #0x20
003b46e0  04 10 41 42                                      submi r1, r1, #4
003b46e4  0c 30 85 e5                                      str r3, [r5, #0xc]
003b46e8  08 10 85 e5                                      str r1, [r5, #8]
003b46ec  05 00 a0 e1                                      mov r0, r5
003b46f0  3c d0 8d e2                                      add sp, sp, #0x3c
003b46f4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003b46f8  83 ff ff eb                                      bl #0x3b450c
003b46fc  0c 00 94 e5                                      ldr r0, [r4, #0xc]
003b4700  04 30 94 e5                                      ldr r3, [r4, #4]
003b4704  08 10 94 e5                                      ldr r1, [r4, #8]
003b4708  00 20 94 e5                                      ldr r2, [r4]
003b470c  00 30 63 e0                                      rsb r3, r3, r0
003b4710  05 00 a0 e1                                      mov r0, r5
003b4714  01 10 62 e0                                      rsb r1, r2, r1
003b4718  81 11 83 e0                                      add r1, r3, r1, lsl #3
003b471c  9e ff ff eb                                      bl #0x3b459c
003b4720  0c 80 94 e5                                      ldr r8, [r4, #0xc]
003b4724  04 70 95 e5                                      ldr r7, [r5, #4]
003b4728  00 e0 94 e5                                      ldr lr, [r4]
003b472c  40 10 94 e9                                      ldmib r4, {r6, ip}
003b4730  00 a0 95 e5                                      ldr sl, [r5]
003b4734  c5 ff ff ea                                      b #0x3b4650
