; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00579210, declared_size=784, range_size=784, mode=arm
; class-group: std::vector<glitch::core::aabbox3d<float>, glitch::core::SAllocator<glitch::core::aabbox3d<float>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core8aabbox3dIfEENS1_10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS3_jRKS3_RKSt12__false_type
; demangled: std::vector<glitch::core::aabbox3d<float>, glitch::core::SAllocator<glitch::core::aabbox3d<float>, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::core::aabbox3d<float>*, unsigned int, glitch::core::aabbox3d<float> const&, std::__false_type const&)
; decoder-mode: arm
00579210  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00579214  00 40 90 e5                                      ldr r4, [r0]
00579218  28 d0 4d e2                                      sub sp, sp, #0x28
0057921c  00 c0 a0 e1                                      mov ip, r0
00579220  04 00 53 e1                                      cmp r3, r4
00579224  01 50 a0 e1                                      mov r5, r1
00579228  02 40 a0 e1                                      mov r4, r2
0057922c  04 60 90 35                                      ldrlo r6, [r0, #4]
00579230  14 00 00 3a                                      blo #0x579288
00579234  04 60 90 e5                                      ldr r6, [r0, #4]
00579238  06 00 53 e1                                      cmp r3, r6
0057923c  11 00 00 2a                                      bhs #0x579288
00579240  14 c0 93 e5                                      ldr ip, [r3, #0x14]
00579244  00 60 93 e5                                      ldr r6, [r3]
00579248  04 50 93 e5                                      ldr r5, [r3, #4]
0057924c  08 40 93 e5                                      ldr r4, [r3, #8]
00579250  0c e0 93 e5                                      ldr lr, [r3, #0xc]
00579254  10 70 93 e5                                      ldr r7, [r3, #0x10]
00579258  20 c0 8d e5                                      str ip, [sp, #0x20]
0057925c  0c 30 8d e2                                      add r3, sp, #0xc
00579260  24 c0 8d e2                                      add ip, sp, #0x24
00579264  0c 60 8d e5                                      str r6, [sp, #0xc]
00579268  10 50 8d e5                                      str r5, [sp, #0x10]
0057926c  14 40 8d e5                                      str r4, [sp, #0x14]
00579270  18 e0 8d e5                                      str lr, [sp, #0x18]
00579274  1c 70 8d e5                                      str r7, [sp, #0x1c]
00579278  00 c0 8d e5                                      str ip, [sp]
0057927c  e3 ff ff eb                                      bl #0x579210
00579280  28 d0 8d e2                                      add sp, sp, #0x28
00579284  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00579288  06 20 65 e0                                      rsb r2, r5, r6
0057928c  c2 21 a0 e1                                      asr r2, r2, #3
00579290  02 11 82 e0                                      add r1, r2, r2, lsl #2
00579294  01 12 81 e0                                      add r1, r1, r1, lsl #4
00579298  01 14 81 e0                                      add r1, r1, r1, lsl #8
0057929c  01 18 81 e0                                      add r1, r1, r1, lsl #16
005792a0  81 10 82 e0                                      add r1, r2, r1, lsl #1
005792a4  01 00 54 e1                                      cmp r4, r1
005792a8  52 00 00 2a                                      bhs #0x5793f8
005792ac  18 20 a0 e3                                      mov r2, #0x18
005792b0  92 04 04 e0                                      mul r4, r2, r4
005792b4  c4 11 a0 e1                                      asr r1, r4, #3
005792b8  06 20 64 e0                                      rsb r2, r4, r6
005792bc  01 71 81 e0                                      add r7, r1, r1, lsl #2
005792c0  07 72 87 e0                                      add r7, r7, r7, lsl #4
005792c4  07 74 87 e0                                      add r7, r7, r7, lsl #8
005792c8  07 78 87 e0                                      add r7, r7, r7, lsl #16
005792cc  87 70 81 e0                                      add r7, r1, r7, lsl #1
005792d0  00 00 57 e3                                      cmp r7, #0
005792d4  06 70 a0 d1                                      movle r7, r6
005792d8  13 00 00 da                                      ble #0x57932c
005792dc  02 10 a0 e1                                      mov r1, r2
005792e0  06 00 a0 e1                                      mov r0, r6
005792e4  00 00 00 ea                                      b #0x5792ec
005792e8  18 00 80 e2                                      add r0, r0, #0x18
005792ec  00 80 91 e5                                      ldr r8, [r1]
005792f0  01 70 57 e2                                      subs r7, r7, #1
005792f4  00 80 80 e5                                      str r8, [r0]
005792f8  04 80 91 e5                                      ldr r8, [r1, #4]
005792fc  04 80 80 e5                                      str r8, [r0, #4]
00579300  08 80 91 e5                                      ldr r8, [r1, #8]
00579304  08 80 80 e5                                      str r8, [r0, #8]
00579308  0c 80 91 e5                                      ldr r8, [r1, #0xc]
0057930c  0c 80 80 e5                                      str r8, [r0, #0xc]
00579310  10 80 91 e5                                      ldr r8, [r1, #0x10]
00579314  10 80 80 e5                                      str r8, [r0, #0x10]
00579318  14 80 91 e5                                      ldr r8, [r1, #0x14]
0057931c  18 10 81 e2                                      add r1, r1, #0x18
00579320  14 80 80 e5                                      str r8, [r0, #0x14]
00579324  ef ff ff 1a                                      bne #0x5792e8
00579328  04 70 9c e5                                      ldr r7, [ip, #4]
0057932c  02 00 65 e0                                      rsb r0, r5, r2
00579330  c0 01 a0 e1                                      asr r0, r0, #3
00579334  04 70 87 e0                                      add r7, r7, r4
00579338  00 11 80 e0                                      add r1, r0, r0, lsl #2
0057933c  04 70 8c e5                                      str r7, [ip, #4]
00579340  01 12 81 e0                                      add r1, r1, r1, lsl #4
00579344  01 14 81 e0                                      add r1, r1, r1, lsl #8
00579348  01 18 81 e0                                      add r1, r1, r1, lsl #16
0057934c  81 10 80 e0                                      add r1, r0, r1, lsl #1
00579350  00 00 51 e3                                      cmp r1, #0
00579354  0f 00 00 da                                      ble #0x579398
00579358  18 00 12 e5                                      ldr r0, [r2, #-0x18]
0057935c  01 10 51 e2                                      subs r1, r1, #1
00579360  18 00 06 e5                                      str r0, [r6, #-0x18]
00579364  14 00 12 e5                                      ldr r0, [r2, #-0x14]
00579368  14 00 06 e5                                      str r0, [r6, #-0x14]
0057936c  10 00 12 e5                                      ldr r0, [r2, #-0x10]
00579370  10 00 06 e5                                      str r0, [r6, #-0x10]
00579374  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00579378  0c 00 06 e5                                      str r0, [r6, #-0xc]
0057937c  08 00 12 e5                                      ldr r0, [r2, #-8]
00579380  08 00 06 e5                                      str r0, [r6, #-8]
00579384  04 00 12 e5                                      ldr r0, [r2, #-4]
00579388  18 20 42 e2                                      sub r2, r2, #0x18
0057938c  04 00 06 e5                                      str r0, [r6, #-4]
00579390  18 60 46 e2                                      sub r6, r6, #0x18
00579394  ef ff ff 1a                                      bne #0x579358
00579398  c4 41 a0 e1                                      asr r4, r4, #3
0057939c  04 21 84 e0                                      add r2, r4, r4, lsl #2
005793a0  02 22 82 e0                                      add r2, r2, r2, lsl #4
005793a4  02 24 82 e0                                      add r2, r2, r2, lsl #8
005793a8  02 28 82 e0                                      add r2, r2, r2, lsl #16
005793ac  82 40 84 e0                                      add r4, r4, r2, lsl #1
005793b0  00 00 54 e3                                      cmp r4, #0
005793b4  b1 ff ff da                                      ble #0x579280
005793b8  00 20 93 e5                                      ldr r2, [r3]
005793bc  01 40 54 e2                                      subs r4, r4, #1
005793c0  00 20 85 e5                                      str r2, [r5]
005793c4  04 20 93 e5                                      ldr r2, [r3, #4]
005793c8  04 20 85 e5                                      str r2, [r5, #4]
005793cc  08 20 93 e5                                      ldr r2, [r3, #8]
005793d0  08 20 85 e5                                      str r2, [r5, #8]
005793d4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005793d8  0c 20 85 e5                                      str r2, [r5, #0xc]
005793dc  10 20 93 e5                                      ldr r2, [r3, #0x10]
005793e0  10 20 85 e5                                      str r2, [r5, #0x10]
005793e4  14 20 93 e5                                      ldr r2, [r3, #0x14]
005793e8  14 20 85 e5                                      str r2, [r5, #0x14]
005793ec  18 50 85 e2                                      add r5, r5, #0x18
005793f0  f0 ff ff 1a                                      bne #0x5793b8
005793f4  a1 ff ff ea                                      b #0x579280
005793f8  18 20 a0 e3                                      mov r2, #0x18
005793fc  04 40 61 e0                                      rsb r4, r1, r4
00579400  92 64 24 e0                                      mla r4, r2, r4, r6
00579404  04 00 66 e0                                      rsb r0, r6, r4
00579408  c0 01 a0 e1                                      asr r0, r0, #3
0057940c  00 21 80 e0                                      add r2, r0, r0, lsl #2
00579410  02 22 82 e0                                      add r2, r2, r2, lsl #4
00579414  02 24 82 e0                                      add r2, r2, r2, lsl #8
00579418  02 28 82 e0                                      add r2, r2, r2, lsl #16
0057941c  82 20 80 e0                                      add r2, r0, r2, lsl #1
00579420  00 00 52 e3                                      cmp r2, #0
00579424  01 00 00 ca                                      bgt #0x579430
00579428  0e 00 00 ea                                      b #0x579468
0057942c  18 60 86 e2                                      add r6, r6, #0x18
00579430  00 00 93 e5                                      ldr r0, [r3]
00579434  01 20 52 e2                                      subs r2, r2, #1
00579438  00 00 86 e5                                      str r0, [r6]
0057943c  04 00 93 e5                                      ldr r0, [r3, #4]
00579440  04 00 86 e5                                      str r0, [r6, #4]
00579444  08 00 93 e5                                      ldr r0, [r3, #8]
00579448  08 00 86 e5                                      str r0, [r6, #8]
0057944c  0c 00 93 e5                                      ldr r0, [r3, #0xc]
00579450  0c 00 86 e5                                      str r0, [r6, #0xc]
00579454  10 00 93 e5                                      ldr r0, [r3, #0x10]
00579458  10 00 86 e5                                      str r0, [r6, #0x10]
0057945c  14 00 93 e5                                      ldr r0, [r3, #0x14]
00579460  14 00 86 e5                                      str r0, [r6, #0x14]
00579464  f0 ff ff 1a                                      bne #0x57942c
00579468  00 00 51 e3                                      cmp r1, #0
0057946c  04 40 8c e5                                      str r4, [ip, #4]
00579470  26 00 00 da                                      ble #0x579510
00579474  01 00 a0 e1                                      mov r0, r1
00579478  05 20 a0 e1                                      mov r2, r5
0057947c  00 00 00 ea                                      b #0x579484
00579480  18 40 84 e2                                      add r4, r4, #0x18
00579484  00 60 92 e5                                      ldr r6, [r2]
00579488  01 00 50 e2                                      subs r0, r0, #1
0057948c  00 60 84 e5                                      str r6, [r4]
00579490  04 60 92 e5                                      ldr r6, [r2, #4]
00579494  04 60 84 e5                                      str r6, [r4, #4]
00579498  08 60 92 e5                                      ldr r6, [r2, #8]
0057949c  08 60 84 e5                                      str r6, [r4, #8]
005794a0  0c 60 92 e5                                      ldr r6, [r2, #0xc]
005794a4  0c 60 84 e5                                      str r6, [r4, #0xc]
005794a8  10 60 92 e5                                      ldr r6, [r2, #0x10]
005794ac  10 60 84 e5                                      str r6, [r4, #0x10]
005794b0  14 60 92 e5                                      ldr r6, [r2, #0x14]
005794b4  18 20 82 e2                                      add r2, r2, #0x18
005794b8  14 60 84 e5                                      str r6, [r4, #0x14]
005794bc  ef ff ff 1a                                      bne #0x579480
005794c0  04 20 9c e5                                      ldr r2, [ip, #4]
005794c4  18 00 a0 e3                                      mov r0, #0x18
005794c8  90 21 22 e0                                      mla r2, r0, r1, r2
005794cc  04 20 8c e5                                      str r2, [ip, #4]
005794d0  00 20 93 e5                                      ldr r2, [r3]
005794d4  01 10 51 e2                                      subs r1, r1, #1
005794d8  00 20 85 e5                                      str r2, [r5]
005794dc  04 20 93 e5                                      ldr r2, [r3, #4]
005794e0  04 20 85 e5                                      str r2, [r5, #4]
005794e4  08 20 93 e5                                      ldr r2, [r3, #8]
005794e8  08 20 85 e5                                      str r2, [r5, #8]
005794ec  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005794f0  0c 20 85 e5                                      str r2, [r5, #0xc]
005794f4  10 20 93 e5                                      ldr r2, [r3, #0x10]
005794f8  10 20 85 e5                                      str r2, [r5, #0x10]
005794fc  14 20 93 e5                                      ldr r2, [r3, #0x14]
00579500  14 20 85 e5                                      str r2, [r5, #0x14]
00579504  18 50 85 e2                                      add r5, r5, #0x18
00579508  f0 ff ff 1a                                      bne #0x5794d0
0057950c  5b ff ff ea                                      b #0x579280
00579510  18 30 a0 e3                                      mov r3, #0x18
00579514  93 41 21 e0                                      mla r1, r3, r1, r4
00579518  04 10 8c e5                                      str r1, [ip, #4]
0057951c  57 ff ff ea                                      b #0x579280

; FUNCTION 0x0057990c, declared_size=128, range_size=128, mode=arm
; class-group: std::vector<glitch::core::aabbox3d<float>, glitch::core::SAllocator<glitch::core::aabbox3d<float>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core8aabbox3dIfEENS1_10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::core::aabbox3d<float>, glitch::core::SAllocator<glitch::core::aabbox3d<float>, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
0057990c  70 40 2d e9                                      push {r4, r5, r6, lr}
00579910  14 00 90 e8                                      ldm r0, {r2, r4}
00579914  aa 3a 0a e3                                      movw r3, #0xaaaa
00579918  aa 3a 40 e3                                      movt r3, #0xaaa
0057991c  04 20 62 e0                                      rsb r2, r2, r4
00579920  c2 21 a0 e1                                      asr r2, r2, #3
00579924  01 50 a0 e1                                      mov r5, r1
00579928  02 41 82 e0                                      add r4, r2, r2, lsl #2
0057992c  04 42 84 e0                                      add r4, r4, r4, lsl #4
00579930  04 44 84 e0                                      add r4, r4, r4, lsl #8
00579934  04 48 84 e0                                      add r4, r4, r4, lsl #16
00579938  84 40 82 e0                                      add r4, r2, r4, lsl #1
0057993c  03 30 64 e0                                      rsb r3, r4, r3
00579940  01 00 53 e1                                      cmp r3, r1
00579944  0b 00 00 3a                                      blo #0x579978
00579948  aa 3a 0a e3                                      movw r3, #0xaaaa
0057994c  05 00 54 e1                                      cmp r4, r5
00579950  04 00 84 20                                      addhs r0, r4, r4
00579954  05 00 84 30                                      addlo r0, r4, r5
00579958  03 36 83 e1                                      orr r3, r3, r3, lsl #12
0057995c  03 00 50 e1                                      cmp r0, r3
00579960  01 00 00 8a                                      bhi #0x57996c
00579964  04 00 50 e1                                      cmp r0, r4
00579968  01 00 00 2a                                      bhs #0x579974
0057996c  aa 0a 0a e3                                      movw r0, #0xaaaa
00579970  00 06 80 e1                                      orr r0, r0, r0, lsl #12
00579974  70 80 bd e8                                      pop {r4, r5, r6, pc}
00579978  08 00 9f e5                                      ldr r0, [pc, #8]
0057997c  00 00 8f e0                                      add r0, pc, r0
00579980  2e 3d 06 eb                                      bl #0x708e40
00579984  ef ff ff ea                                      b #0x579948
; mapping-symbol data/literal pool
00579988  ec 4a 34 00                                      .byte 0xec, 0x4a, 0x34, 0x00

; FUNCTION 0x0057aea4, declared_size=628, range_size=628, mode=arm
; class-group: std::vector<glitch::core::aabbox3d<float>, glitch::core::SAllocator<glitch::core::aabbox3d<float>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core8aabbox3dIfEENS1_10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPS3_jRKS3_
; demangled: std::vector<glitch::core::aabbox3d<float>, glitch::core::SAllocator<glitch::core::aabbox3d<float>, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(glitch::core::aabbox3d<float>*, unsigned int, glitch::core::aabbox3d<float> const&)
; decoder-mode: arm
0057aea4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0057aea8  00 70 52 e2                                      subs r7, r2, #0
0057aeac  14 d0 4d e2                                      sub sp, sp, #0x14
0057aeb0  00 60 a0 e1                                      mov r6, r0
0057aeb4  01 40 a0 e1                                      mov r4, r1
0057aeb8  03 50 a0 e1                                      mov r5, r3
0057aebc  81 00 00 0a                                      beq #0x57b0c8
0057aec0  00 50 90 e9                                      ldmib r0, {ip, lr}
0057aec4  0e c0 6c e0                                      rsb ip, ip, lr
0057aec8  cc c1 a0 e1                                      asr ip, ip, #3
0057aecc  0c e1 8c e0                                      add lr, ip, ip, lsl #2
0057aed0  0e e2 8e e0                                      add lr, lr, lr, lsl #4
0057aed4  0e e4 8e e0                                      add lr, lr, lr, lsl #8
0057aed8  0e e8 8e e0                                      add lr, lr, lr, lsl #16
0057aedc  8e c0 8c e0                                      add ip, ip, lr, lsl #1
0057aee0  0c 00 57 e1                                      cmp r7, ip
0057aee4  79 00 00 9a                                      bls #0x57b0d0
0057aee8  07 10 a0 e1                                      mov r1, r7
0057aeec  86 fa ff eb                                      bl #0x57990c
0057aef0  18 80 a0 e3                                      mov r8, #0x18
0057aef4  98 00 08 e0                                      mul r8, r8, r0
0057aef8  00 10 a0 e3                                      mov r1, #0
0057aefc  08 00 a0 e1                                      mov r0, r8
0057af00  98 55 f6 eb                                      bl #0x310568
0057af04  00 30 96 e5                                      ldr r3, [r6]
0057af08  00 a0 a0 e1                                      mov sl, r0
0057af0c  04 20 63 e0                                      rsb r2, r3, r4
0057af10  c2 21 a0 e1                                      asr r2, r2, #3
0057af14  02 c1 82 e0                                      add ip, r2, r2, lsl #2
0057af18  0c c2 8c e0                                      add ip, ip, ip, lsl #4
0057af1c  0c c4 8c e0                                      add ip, ip, ip, lsl #8
0057af20  0c c8 8c e0                                      add ip, ip, ip, lsl #16
0057af24  8c c0 82 e0                                      add ip, r2, ip, lsl #1
0057af28  00 00 5c e3                                      cmp ip, #0
0057af2c  00 30 a0 d1                                      movle r3, r0
0057af30  13 00 00 da                                      ble #0x57af84
0057af34  0c 10 a0 e1                                      mov r1, ip
0057af38  00 20 a0 e1                                      mov r2, r0
0057af3c  00 00 93 e5                                      ldr r0, [r3]
0057af40  01 10 51 e2                                      subs r1, r1, #1
0057af44  00 00 82 e5                                      str r0, [r2]
0057af48  04 00 93 e5                                      ldr r0, [r3, #4]
0057af4c  04 00 82 e5                                      str r0, [r2, #4]
0057af50  08 00 93 e5                                      ldr r0, [r3, #8]
0057af54  08 00 82 e5                                      str r0, [r2, #8]
0057af58  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0057af5c  0c 00 82 e5                                      str r0, [r2, #0xc]
0057af60  10 00 93 e5                                      ldr r0, [r3, #0x10]
0057af64  10 00 82 e5                                      str r0, [r2, #0x10]
0057af68  14 00 93 e5                                      ldr r0, [r3, #0x14]
0057af6c  18 30 83 e2                                      add r3, r3, #0x18
0057af70  14 00 82 e5                                      str r0, [r2, #0x14]
0057af74  18 20 82 e2                                      add r2, r2, #0x18
0057af78  ef ff ff 1a                                      bne #0x57af3c
0057af7c  18 30 a0 e3                                      mov r3, #0x18
0057af80  93 ac 23 e0                                      mla r3, r3, ip, sl
0057af84  01 00 57 e3                                      cmp r7, #1
0057af88  54 00 00 0a                                      beq #0x57b0e0
0057af8c  18 20 a0 e3                                      mov r2, #0x18
0057af90  92 37 27 e0                                      mla r7, r2, r7, r3
0057af94  07 10 63 e0                                      rsb r1, r3, r7
0057af98  c1 11 a0 e1                                      asr r1, r1, #3
0057af9c  01 21 81 e0                                      add r2, r1, r1, lsl #2
0057afa0  02 22 82 e0                                      add r2, r2, r2, lsl #4
0057afa4  02 24 82 e0                                      add r2, r2, r2, lsl #8
0057afa8  02 28 82 e0                                      add r2, r2, r2, lsl #16
0057afac  82 20 81 e0                                      add r2, r1, r2, lsl #1
0057afb0  00 00 52 e3                                      cmp r2, #0
0057afb4  01 00 00 ca                                      bgt #0x57afc0
0057afb8  0e 00 00 ea                                      b #0x57aff8
0057afbc  18 30 83 e2                                      add r3, r3, #0x18
0057afc0  00 10 95 e5                                      ldr r1, [r5]
0057afc4  01 20 52 e2                                      subs r2, r2, #1
0057afc8  00 10 83 e5                                      str r1, [r3]
0057afcc  04 10 95 e5                                      ldr r1, [r5, #4]
0057afd0  04 10 83 e5                                      str r1, [r3, #4]
0057afd4  08 10 95 e5                                      ldr r1, [r5, #8]
0057afd8  08 10 83 e5                                      str r1, [r3, #8]
0057afdc  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0057afe0  0c 10 83 e5                                      str r1, [r3, #0xc]
0057afe4  10 10 95 e5                                      ldr r1, [r5, #0x10]
0057afe8  10 10 83 e5                                      str r1, [r3, #0x10]
0057afec  14 10 95 e5                                      ldr r1, [r5, #0x14]
0057aff0  14 10 83 e5                                      str r1, [r3, #0x14]
0057aff4  f0 ff ff 1a                                      bne #0x57afbc
0057aff8  04 00 96 e5                                      ldr r0, [r6, #4]
0057affc  00 30 64 e0                                      rsb r3, r4, r0
0057b000  c3 31 a0 e1                                      asr r3, r3, #3
0057b004  03 c1 83 e0                                      add ip, r3, r3, lsl #2
0057b008  0c c2 8c e0                                      add ip, ip, ip, lsl #4
0057b00c  0c c4 8c e0                                      add ip, ip, ip, lsl #8
0057b010  0c c8 8c e0                                      add ip, ip, ip, lsl #16
0057b014  8c c0 83 e0                                      add ip, r3, ip, lsl #1
0057b018  00 00 5c e3                                      cmp ip, #0
0057b01c  14 00 00 da                                      ble #0x57b074
0057b020  0c 20 a0 e1                                      mov r2, ip
0057b024  07 30 a0 e1                                      mov r3, r7
0057b028  00 10 94 e5                                      ldr r1, [r4]
0057b02c  01 20 52 e2                                      subs r2, r2, #1
0057b030  00 10 83 e5                                      str r1, [r3]
0057b034  04 10 94 e5                                      ldr r1, [r4, #4]
0057b038  04 10 83 e5                                      str r1, [r3, #4]
0057b03c  08 10 94 e5                                      ldr r1, [r4, #8]
0057b040  08 10 83 e5                                      str r1, [r3, #8]
0057b044  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0057b048  0c 10 83 e5                                      str r1, [r3, #0xc]
0057b04c  10 10 94 e5                                      ldr r1, [r4, #0x10]
0057b050  10 10 83 e5                                      str r1, [r3, #0x10]
0057b054  14 10 94 e5                                      ldr r1, [r4, #0x14]
0057b058  18 40 84 e2                                      add r4, r4, #0x18
0057b05c  14 10 83 e5                                      str r1, [r3, #0x14]
0057b060  18 30 83 e2                                      add r3, r3, #0x18
0057b064  ef ff ff 1a                                      bne #0x57b028
0057b068  18 30 a0 e3                                      mov r3, #0x18
0057b06c  93 7c 27 e0                                      mla r7, r3, ip, r7
0057b070  04 00 96 e5                                      ldr r0, [r6, #4]
0057b074  00 30 96 e5                                      ldr r3, [r6]
0057b078  00 00 53 e1                                      cmp r3, r0
0057b07c  0d 00 00 0a                                      beq #0x57b0b8
0057b080  18 20 40 e2                                      sub r2, r0, #0x18
0057b084  02 30 63 e0                                      rsb r3, r3, r2
0057b088  a3 31 a0 e1                                      lsr r3, r3, #3
0057b08c  03 21 83 e0                                      add r2, r3, r3, lsl #2
0057b090  02 21 83 e0                                      add r2, r3, r2, lsl #2
0057b094  02 23 82 e0                                      add r2, r2, r2, lsl #6
0057b098  02 21 83 e0                                      add r2, r3, r2, lsl #2
0057b09c  02 27 82 e0                                      add r2, r2, r2, lsl #14
0057b0a0  82 30 83 e0                                      add r3, r3, r2, lsl #1
0057b0a4  0e 32 c3 e3                                      bic r3, r3, #0xe0000000
0057b0a8  17 20 e0 e3                                      mvn r2, #0x17
0057b0ac  92 03 03 e0                                      mul r3, r2, r3
0057b0b0  02 30 83 e0                                      add r3, r3, r2
0057b0b4  03 00 80 e0                                      add r0, r0, r3
0057b0b8  08 80 8a e0                                      add r8, sl, r8
0057b0bc  e3 54 f6 eb                                      bl #0x310450
0057b0c0  80 01 86 e9                                      stmib r6, {r7, r8}
0057b0c4  00 a0 86 e5                                      str sl, [r6]
0057b0c8  14 d0 8d e2                                      add sp, sp, #0x14
0057b0cc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0057b0d0  0c c0 8d e2                                      add ip, sp, #0xc
0057b0d4  00 c0 8d e5                                      str ip, [sp]
0057b0d8  4c f8 ff eb                                      bl #0x579210
0057b0dc  f9 ff ff ea                                      b #0x57b0c8
0057b0e0  00 20 95 e5                                      ldr r2, [r5]
0057b0e4  18 70 83 e2                                      add r7, r3, #0x18
0057b0e8  00 20 83 e5                                      str r2, [r3]
0057b0ec  04 20 95 e5                                      ldr r2, [r5, #4]
0057b0f0  04 20 83 e5                                      str r2, [r3, #4]
0057b0f4  08 20 95 e5                                      ldr r2, [r5, #8]
0057b0f8  08 20 83 e5                                      str r2, [r3, #8]
0057b0fc  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0057b100  0c 20 83 e5                                      str r2, [r3, #0xc]
0057b104  10 20 95 e5                                      ldr r2, [r5, #0x10]
0057b108  10 20 83 e5                                      str r2, [r3, #0x10]
0057b10c  14 20 95 e5                                      ldr r2, [r5, #0x14]
0057b110  14 20 83 e5                                      str r2, [r3, #0x14]
0057b114  b7 ff ff ea                                      b #0x57aff8

; FUNCTION 0x0057b118, declared_size=92, range_size=92, mode=arm
; class-group: std::vector<glitch::core::aabbox3d<float>, glitch::core::SAllocator<glitch::core::aabbox3d<float>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core8aabbox3dIfEENS1_10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKS3_
; demangled: std::vector<glitch::core::aabbox3d<float>, glitch::core::SAllocator<glitch::core::aabbox3d<float>, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, glitch::core::aabbox3d<float> const&)
; decoder-mode: arm
0057b118  70 00 2d e9                                      push {r4, r5, r6}
0057b11c  04 40 90 e5                                      ldr r4, [r0, #4]
0057b120  00 50 90 e5                                      ldr r5, [r0]
0057b124  02 30 a0 e1                                      mov r3, r2
0057b128  04 20 65 e0                                      rsb r2, r5, r4
0057b12c  c2 21 a0 e1                                      asr r2, r2, #3
0057b130  02 61 82 e0                                      add r6, r2, r2, lsl #2
0057b134  06 62 86 e0                                      add r6, r6, r6, lsl #4
0057b138  06 64 86 e0                                      add r6, r6, r6, lsl #8
0057b13c  06 68 86 e0                                      add r6, r6, r6, lsl #16
0057b140  86 20 82 e0                                      add r2, r2, r6, lsl #1
0057b144  02 00 51 e1                                      cmp r1, r2
0057b148  05 00 00 2a                                      bhs #0x57b164
0057b14c  18 30 a0 e3                                      mov r3, #0x18
0057b150  93 51 25 e0                                      mla r5, r3, r1, r5
0057b154  04 00 55 e1                                      cmp r5, r4
0057b158  04 50 80 15                                      strne r5, [r0, #4]
0057b15c  70 00 bd e8                                      pop {r4, r5, r6}
0057b160  1e ff 2f e1                                      bx lr
0057b164  01 20 62 e0                                      rsb r2, r2, r1
0057b168  04 10 a0 e1                                      mov r1, r4
0057b16c  70 00 bd e8                                      pop {r4, r5, r6}
0057b170  4b ff ff ea                                      b #0x57aea4
