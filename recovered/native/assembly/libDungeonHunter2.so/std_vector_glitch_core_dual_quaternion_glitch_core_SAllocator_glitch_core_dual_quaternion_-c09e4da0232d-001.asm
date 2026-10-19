; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0066d464, declared_size=684, range_size=684, mode=arm
; class-group: std::vector<glitch::core::dual_quaternion, glitch::core::SAllocator<glitch::core::dual_quaternion, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core15dual_quaternionENS1_10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS2_jRKS2_RKSt12__false_type
; demangled: std::vector<glitch::core::dual_quaternion, glitch::core::SAllocator<glitch::core::dual_quaternion, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::core::dual_quaternion*, unsigned int, glitch::core::dual_quaternion const&, std::__false_type const&)
; decoder-mode: arm
0066d464  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0066d468  00 b0 a0 e1                                      mov fp, r0
0066d46c  00 00 90 e5                                      ldr r0, [r0]
0066d470  3c d0 4d e2                                      sub sp, sp, #0x3c
0066d474  03 c0 a0 e1                                      mov ip, r3
0066d478  00 00 53 e1                                      cmp r3, r0
0066d47c  01 40 a0 e1                                      mov r4, r1
0066d480  02 50 a0 e1                                      mov r5, r2
0066d484  04 a0 9b 35                                      ldrlo sl, [fp, #4]
0066d488  10 00 00 3a                                      blo #0x66d4d0
0066d48c  04 a0 9b e5                                      ldr sl, [fp, #4]
0066d490  0a 00 53 e1                                      cmp r3, sl
0066d494  0d 00 00 2a                                      bhs #0x66d4d0
0066d498  14 e0 8d e2                                      add lr, sp, #0x14
0066d49c  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
0066d4a0  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
0066d4a4  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
0066d4a8  34 c0 8d e2                                      add ip, sp, #0x34
0066d4ac  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
0066d4b0  0b 00 a0 e1                                      mov r0, fp
0066d4b4  04 10 a0 e1                                      mov r1, r4
0066d4b8  05 20 a0 e1                                      mov r2, r5
0066d4bc  14 30 8d e2                                      add r3, sp, #0x14
0066d4c0  00 c0 8d e5                                      str ip, [sp]
0066d4c4  e6 ff ff eb                                      bl #0x66d464
0066d4c8  3c d0 8d e2                                      add sp, sp, #0x3c
0066d4cc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0066d4d0  0a 80 64 e0                                      rsb r8, r4, sl
0066d4d4  c8 82 a0 e1                                      asr r8, r8, #5
0066d4d8  08 00 55 e1                                      cmp r5, r8
0066d4dc  48 00 00 2a                                      bhs #0x66d604
0066d4e0  85 52 a0 e1                                      lsl r5, r5, #5
0066d4e4  0c 50 8d e5                                      str r5, [sp, #0xc]
0066d4e8  c5 82 a0 e1                                      asr r8, r5, #5
0066d4ec  00 00 58 e3                                      cmp r8, #0
0066d4f0  0a 90 65 e0                                      rsb sb, r5, sl
0066d4f4  0a 20 a0 d1                                      movle r2, sl
0066d4f8  0e 00 00 da                                      ble #0x66d538
0066d4fc  00 60 a0 e3                                      mov r6, #0
0066d500  04 70 a0 e1                                      mov r7, r4
0066d504  0c 50 a0 e1                                      mov r5, ip
0066d508  06 c0 8a e0                                      add ip, sl, r6
0066d50c  06 40 89 e0                                      add r4, sb, r6
0066d510  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
0066d514  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0066d518  01 80 58 e2                                      subs r8, r8, #1
0066d51c  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
0066d520  20 60 86 e2                                      add r6, r6, #0x20
0066d524  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0066d528  f6 ff ff 1a                                      bne #0x66d508
0066d52c  04 20 9b e5                                      ldr r2, [fp, #4]
0066d530  07 40 a0 e1                                      mov r4, r7
0066d534  05 c0 a0 e1                                      mov ip, r5
0066d538  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0066d53c  09 30 64 e0                                      rsb r3, r4, sb
0066d540  c3 32 a0 e1                                      asr r3, r3, #5
0066d544  01 20 82 e0                                      add r2, r2, r1
0066d548  00 00 53 e3                                      cmp r3, #0
0066d54c  04 20 8b e5                                      str r2, [fp, #4]
0066d550  13 00 00 da                                      ble #0x66d5a4
0066d554  20 20 19 e5                                      ldr r2, [sb, #-0x20]
0066d558  01 30 53 e2                                      subs r3, r3, #1
0066d55c  20 20 0a e5                                      str r2, [sl, #-0x20]
0066d560  1c 20 19 e5                                      ldr r2, [sb, #-0x1c]
0066d564  1c 20 0a e5                                      str r2, [sl, #-0x1c]
0066d568  18 20 19 e5                                      ldr r2, [sb, #-0x18]
0066d56c  18 20 0a e5                                      str r2, [sl, #-0x18]
0066d570  14 20 19 e5                                      ldr r2, [sb, #-0x14]
0066d574  14 20 0a e5                                      str r2, [sl, #-0x14]
0066d578  10 20 19 e5                                      ldr r2, [sb, #-0x10]
0066d57c  10 20 0a e5                                      str r2, [sl, #-0x10]
0066d580  0c 20 19 e5                                      ldr r2, [sb, #-0xc]
0066d584  0c 20 0a e5                                      str r2, [sl, #-0xc]
0066d588  08 20 19 e5                                      ldr r2, [sb, #-8]
0066d58c  08 20 0a e5                                      str r2, [sl, #-8]
0066d590  04 20 19 e5                                      ldr r2, [sb, #-4]
0066d594  20 90 49 e2                                      sub sb, sb, #0x20
0066d598  04 20 0a e5                                      str r2, [sl, #-4]
0066d59c  20 a0 4a e2                                      sub sl, sl, #0x20
0066d5a0  eb ff ff 1a                                      bne #0x66d554
0066d5a4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0066d5a8  c3 52 a0 e1                                      asr r5, r3, #5
0066d5ac  00 00 55 e3                                      cmp r5, #0
0066d5b0  c4 ff ff da                                      ble #0x66d4c8
0066d5b4  00 30 9c e5                                      ldr r3, [ip]
0066d5b8  01 50 55 e2                                      subs r5, r5, #1
0066d5bc  00 30 84 e5                                      str r3, [r4]
0066d5c0  04 30 9c e5                                      ldr r3, [ip, #4]
0066d5c4  04 30 84 e5                                      str r3, [r4, #4]
0066d5c8  08 30 9c e5                                      ldr r3, [ip, #8]
0066d5cc  08 30 84 e5                                      str r3, [r4, #8]
0066d5d0  0c 30 9c e5                                      ldr r3, [ip, #0xc]
0066d5d4  0c 30 84 e5                                      str r3, [r4, #0xc]
0066d5d8  10 30 9c e5                                      ldr r3, [ip, #0x10]
0066d5dc  10 30 84 e5                                      str r3, [r4, #0x10]
0066d5e0  14 30 9c e5                                      ldr r3, [ip, #0x14]
0066d5e4  14 30 84 e5                                      str r3, [r4, #0x14]
0066d5e8  18 30 9c e5                                      ldr r3, [ip, #0x18]
0066d5ec  18 30 84 e5                                      str r3, [r4, #0x18]
0066d5f0  1c 30 9c e5                                      ldr r3, [ip, #0x1c]
0066d5f4  1c 30 84 e5                                      str r3, [r4, #0x1c]
0066d5f8  20 40 84 e2                                      add r4, r4, #0x20
0066d5fc  ec ff ff 1a                                      bne #0x66d5b4
0066d600  b0 ff ff ea                                      b #0x66d4c8
0066d604  05 50 68 e0                                      rsb r5, r8, r5
0066d608  55 90 ba e7                                      sbfx sb, r5, #0, #0x1b
0066d60c  00 00 59 e3                                      cmp sb, #0
0066d610  85 52 8a e0                                      add r5, sl, r5, lsl #5
0066d614  0c 50 8d e5                                      str r5, [sp, #0xc]
0066d618  0b 00 00 da                                      ble #0x66d64c
0066d61c  00 60 a0 e3                                      mov r6, #0
0066d620  04 70 a0 e1                                      mov r7, r4
0066d624  86 42 8a e0                                      add r4, sl, r6, lsl #5
0066d628  0c 50 a0 e1                                      mov r5, ip
0066d62c  0f 00 b5 e8                                      ldm r5!, {r0, r1, r2, r3}
0066d630  0f 00 a4 e8                                      stm r4!, {r0, r1, r2, r3}
0066d634  01 60 86 e2                                      add r6, r6, #1
0066d638  09 00 56 e1                                      cmp r6, sb
0066d63c  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
0066d640  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
0066d644  f6 ff ff 1a                                      bne #0x66d624
0066d648  07 40 a0 e1                                      mov r4, r7
0066d64c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0066d650  00 00 58 e3                                      cmp r8, #0
0066d654  04 10 8b e5                                      str r1, [fp, #4]
0066d658  28 00 00 da                                      ble #0x66d700
0066d65c  0c 70 9d e5                                      ldr r7, [sp, #0xc]
0066d660  08 a0 a0 e1                                      mov sl, r8
0066d664  08 90 a0 e1                                      mov sb, r8
0066d668  00 60 a0 e3                                      mov r6, #0
0066d66c  04 50 a0 e1                                      mov r5, r4
0066d670  0c 80 a0 e1                                      mov r8, ip
0066d674  06 c0 87 e0                                      add ip, r7, r6
0066d678  06 40 85 e0                                      add r4, r5, r6
0066d67c  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
0066d680  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0066d684  01 a0 5a e2                                      subs sl, sl, #1
0066d688  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
0066d68c  20 60 86 e2                                      add r6, r6, #0x20
0066d690  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0066d694  f6 ff ff 1a                                      bne #0x66d674
0066d698  04 30 9b e5                                      ldr r3, [fp, #4]
0066d69c  08 c0 a0 e1                                      mov ip, r8
0066d6a0  05 40 a0 e1                                      mov r4, r5
0066d6a4  89 32 83 e0                                      add r3, r3, sb, lsl #5
0066d6a8  09 80 a0 e1                                      mov r8, sb
0066d6ac  04 30 8b e5                                      str r3, [fp, #4]
0066d6b0  00 30 9c e5                                      ldr r3, [ip]
0066d6b4  01 80 58 e2                                      subs r8, r8, #1
0066d6b8  00 30 84 e5                                      str r3, [r4]
0066d6bc  04 30 9c e5                                      ldr r3, [ip, #4]
0066d6c0  04 30 84 e5                                      str r3, [r4, #4]
0066d6c4  08 30 9c e5                                      ldr r3, [ip, #8]
0066d6c8  08 30 84 e5                                      str r3, [r4, #8]
0066d6cc  0c 30 9c e5                                      ldr r3, [ip, #0xc]
0066d6d0  0c 30 84 e5                                      str r3, [r4, #0xc]
0066d6d4  10 30 9c e5                                      ldr r3, [ip, #0x10]
0066d6d8  10 30 84 e5                                      str r3, [r4, #0x10]
0066d6dc  14 30 9c e5                                      ldr r3, [ip, #0x14]
0066d6e0  14 30 84 e5                                      str r3, [r4, #0x14]
0066d6e4  18 30 9c e5                                      ldr r3, [ip, #0x18]
0066d6e8  18 30 84 e5                                      str r3, [r4, #0x18]
0066d6ec  1c 30 9c e5                                      ldr r3, [ip, #0x1c]
0066d6f0  1c 30 84 e5                                      str r3, [r4, #0x1c]
0066d6f4  20 40 84 e2                                      add r4, r4, #0x20
0066d6f8  ec ff ff 1a                                      bne #0x66d6b0
0066d6fc  71 ff ff ea                                      b #0x66d4c8
0066d700  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0066d704  88 82 83 e0                                      add r8, r3, r8, lsl #5
0066d708  04 80 8b e5                                      str r8, [fp, #4]
0066d70c  6d ff ff ea                                      b #0x66d4c8

; FUNCTION 0x0066d7fc, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<glitch::core::dual_quaternion, glitch::core::SAllocator<glitch::core::dual_quaternion, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core15dual_quaternionENS1_10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::core::dual_quaternion, glitch::core::SAllocator<glitch::core::dual_quaternion, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
0066d7fc  70 40 2d e9                                      push {r4, r5, r6, lr}
0066d800  14 00 90 e8                                      ldm r0, {r2, r4}
0066d804  ff 3f 0f e3                                      movw r3, #0xffff
0066d808  ff 37 40 e3                                      movt r3, #0x7ff
0066d80c  04 40 62 e0                                      rsb r4, r2, r4
0066d810  c4 42 a0 e1                                      asr r4, r4, #5
0066d814  03 30 64 e0                                      rsb r3, r4, r3
0066d818  01 00 53 e1                                      cmp r3, r1
0066d81c  01 50 a0 e1                                      mov r5, r1
0066d820  08 00 00 3a                                      blo #0x66d848
0066d824  05 00 54 e1                                      cmp r4, r5
0066d828  04 00 84 20                                      addhs r0, r4, r4
0066d82c  05 00 84 30                                      addlo r0, r4, r5
0066d830  7e 03 70 e3                                      cmn r0, #0xf8000001
0066d834  01 00 00 8a                                      bhi #0x66d840
0066d838  04 00 50 e1                                      cmp r0, r4
0066d83c  00 00 00 2a                                      bhs #0x66d844
0066d840  3e 03 e0 e3                                      mvn r0, #0xf8000000
0066d844  70 80 bd e8                                      pop {r4, r5, r6, pc}
0066d848  08 00 9f e5                                      ldr r0, [pc, #8]
0066d84c  00 00 8f e0                                      add r0, pc, r0
0066d850  7a 6d 02 eb                                      bl #0x708e40
0066d854  f2 ff ff ea                                      b #0x66d824
; mapping-symbol data/literal pool
0066d858  1c 0c 25 00                                      .byte 0x1c, 0x0c, 0x25, 0x00

; FUNCTION 0x0066e038, declared_size=392, range_size=392, mode=arm
; class-group: std::vector<glitch::core::dual_quaternion, glitch::core::SAllocator<glitch::core::dual_quaternion, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core15dual_quaternionENS1_10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPS2_jRKS2_
; demangled: std::vector<glitch::core::dual_quaternion, glitch::core::SAllocator<glitch::core::dual_quaternion, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(glitch::core::dual_quaternion*, unsigned int, glitch::core::dual_quaternion const&)
; decoder-mode: arm
0066e038  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0066e03c  00 c0 52 e2                                      subs ip, r2, #0
0066e040  1c d0 4d e2                                      sub sp, sp, #0x1c
0066e044  08 c0 8d e5                                      str ip, [sp, #8]
0066e048  00 50 a0 e1                                      mov r5, r0
0066e04c  01 a0 a0 e1                                      mov sl, r1
0066e050  03 b0 a0 e1                                      mov fp, r3
0066e054  4c 00 00 0a                                      beq #0x66e18c
0066e058  00 50 90 e9                                      ldmib r0, {ip, lr}
0066e05c  0e c0 6c e0                                      rsb ip, ip, lr
0066e060  cc 02 52 e1                                      cmp r2, ip, asr #5
0066e064  4a 00 00 9a                                      bls #0x66e194
0066e068  08 10 9d e5                                      ldr r1, [sp, #8]
0066e06c  e2 fd ff eb                                      bl #0x66d7fc
0066e070  00 10 a0 e3                                      mov r1, #0
0066e074  80 02 a0 e1                                      lsl r0, r0, #5
0066e078  0c 00 8d e5                                      str r0, [sp, #0xc]
0066e07c  39 89 f2 eb                                      bl #0x310568
0066e080  00 80 95 e5                                      ldr r8, [r5]
0066e084  00 90 a0 e1                                      mov sb, r0
0066e088  0a 70 68 e0                                      rsb r7, r8, sl
0066e08c  c7 72 a0 e1                                      asr r7, r7, #5
0066e090  00 00 57 e3                                      cmp r7, #0
0066e094  00 70 a0 d1                                      movle r7, r0
0066e098  0b 00 00 da                                      ble #0x66e0cc
0066e09c  07 60 a0 e1                                      mov r6, r7
0066e0a0  00 40 a0 e3                                      mov r4, #0
0066e0a4  04 c0 89 e0                                      add ip, sb, r4
0066e0a8  04 e0 88 e0                                      add lr, r8, r4
0066e0ac  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
0066e0b0  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0066e0b4  01 60 56 e2                                      subs r6, r6, #1
0066e0b8  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
0066e0bc  20 40 84 e2                                      add r4, r4, #0x20
0066e0c0  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0066e0c4  f6 ff ff 1a                                      bne #0x66e0a4
0066e0c8  87 72 89 e0                                      add r7, sb, r7, lsl #5
0066e0cc  08 20 9d e5                                      ldr r2, [sp, #8]
0066e0d0  01 00 52 e3                                      cmp r2, #1
0066e0d4  32 00 00 0a                                      beq #0x66e1a4
0066e0d8  08 30 9d e5                                      ldr r3, [sp, #8]
0066e0dc  53 80 ba e7                                      sbfx r8, r3, #0, #0x1b
0066e0e0  00 00 58 e3                                      cmp r8, #0
0066e0e4  83 42 87 e0                                      add r4, r7, r3, lsl #5
0066e0e8  09 00 00 da                                      ble #0x66e114
0066e0ec  00 60 a0 e3                                      mov r6, #0
0066e0f0  86 c2 87 e0                                      add ip, r7, r6, lsl #5
0066e0f4  0b e0 a0 e1                                      mov lr, fp
0066e0f8  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
0066e0fc  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0066e100  01 60 86 e2                                      add r6, r6, #1
0066e104  08 00 56 e1                                      cmp r6, r8
0066e108  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
0066e10c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0066e110  f6 ff ff 1a                                      bne #0x66e0f0
0066e114  04 00 95 e5                                      ldr r0, [r5, #4]
0066e118  00 80 6a e0                                      rsb r8, sl, r0
0066e11c  c8 82 a0 e1                                      asr r8, r8, #5
0066e120  00 00 58 e3                                      cmp r8, #0
0066e124  0c 00 00 da                                      ble #0x66e15c
0066e128  08 70 a0 e1                                      mov r7, r8
0066e12c  00 60 a0 e3                                      mov r6, #0
0066e130  06 c0 84 e0                                      add ip, r4, r6
0066e134  06 e0 8a e0                                      add lr, sl, r6
0066e138  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
0066e13c  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0066e140  01 70 57 e2                                      subs r7, r7, #1
0066e144  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
0066e148  20 60 86 e2                                      add r6, r6, #0x20
0066e14c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0066e150  f6 ff ff 1a                                      bne #0x66e130
0066e154  04 00 95 e5                                      ldr r0, [r5, #4]
0066e158  88 42 84 e0                                      add r4, r4, r8, lsl #5
0066e15c  00 30 95 e5                                      ldr r3, [r5]
0066e160  00 00 53 e1                                      cmp r3, r0
0066e164  20 20 40 12                                      subne r2, r0, #0x20
0066e168  02 30 63 10                                      rsbne r3, r3, r2
0066e16c  a3 32 e0 11                                      mvnne r3, r3, lsr #5
0066e170  83 02 80 10                                      addne r0, r0, r3, lsl #5
0066e174  b5 88 f2 eb                                      bl #0x310450
0066e178  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0066e17c  04 40 85 e5                                      str r4, [r5, #4]
0066e180  00 90 85 e5                                      str sb, [r5]
0066e184  0c 30 89 e0                                      add r3, sb, ip
0066e188  08 30 85 e5                                      str r3, [r5, #8]
0066e18c  1c d0 8d e2                                      add sp, sp, #0x1c
0066e190  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0066e194  14 c0 8d e2                                      add ip, sp, #0x14
0066e198  00 c0 8d e5                                      str ip, [sp]
0066e19c  b0 fc ff eb                                      bl #0x66d464
0066e1a0  f9 ff ff ea                                      b #0x66e18c
0066e1a4  07 c0 a0 e1                                      mov ip, r7
0066e1a8  0f 00 bb e8                                      ldm fp!, {r0, r1, r2, r3}
0066e1ac  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0066e1b0  20 40 87 e2                                      add r4, r7, #0x20
0066e1b4  0f 00 9b e8                                      ldm fp, {r0, r1, r2, r3}
0066e1b8  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0066e1bc  d4 ff ff ea                                      b #0x66e114

; FUNCTION 0x0066e1c0, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<glitch::core::dual_quaternion, glitch::core::SAllocator<glitch::core::dual_quaternion, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core15dual_quaternionENS1_10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKS2_
; demangled: std::vector<glitch::core::dual_quaternion, glitch::core::SAllocator<glitch::core::dual_quaternion, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, glitch::core::dual_quaternion const&)
; decoder-mode: arm
0066e1c0  30 00 2d e9                                      push {r4, r5}
0066e1c4  04 40 90 e5                                      ldr r4, [r0, #4]
0066e1c8  00 50 90 e5                                      ldr r5, [r0]
0066e1cc  02 30 a0 e1                                      mov r3, r2
0066e1d0  04 20 65 e0                                      rsb r2, r5, r4
0066e1d4  c2 22 a0 e1                                      asr r2, r2, #5
0066e1d8  02 00 51 e1                                      cmp r1, r2
0066e1dc  04 00 00 2a                                      bhs #0x66e1f4
0066e1e0  81 12 85 e0                                      add r1, r5, r1, lsl #5
0066e1e4  04 00 51 e1                                      cmp r1, r4
0066e1e8  04 10 80 15                                      strne r1, [r0, #4]
0066e1ec  30 00 bd e8                                      pop {r4, r5}
0066e1f0  1e ff 2f e1                                      bx lr
0066e1f4  01 20 62 e0                                      rsb r2, r2, r1
0066e1f8  04 10 a0 e1                                      mov r1, r4
0066e1fc  30 00 bd e8                                      pop {r4, r5}
0066e200  8c ff ff ea                                      b #0x66e038
