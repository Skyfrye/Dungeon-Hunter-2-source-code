; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00663a54, declared_size=128, range_size=128, mode=arm
; class-group: std::vector<glitch::collada::SSkinBuffer, glitch::core::SAllocator<glitch::collada::SSkinBuffer, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada11SSkinBufferENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::collada::SSkinBuffer, glitch::core::SAllocator<glitch::collada::SSkinBuffer, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
00663a54  70 40 2d e9                                      push {r4, r5, r6, lr}
00663a58  14 00 90 e8                                      ldm r0, {r2, r4}
00663a5c  cc 3c 0c e3                                      movw r3, #0xcccc
00663a60  cc 3c 40 e3                                      movt r3, #0xccc
00663a64  04 20 62 e0                                      rsb r2, r2, r4
00663a68  42 21 a0 e1                                      asr r2, r2, #2
00663a6c  01 50 a0 e1                                      mov r5, r1
00663a70  82 40 82 e0                                      add r4, r2, r2, lsl #1
00663a74  04 42 84 e0                                      add r4, r4, r4, lsl #4
00663a78  04 44 84 e0                                      add r4, r4, r4, lsl #8
00663a7c  04 48 84 e0                                      add r4, r4, r4, lsl #16
00663a80  04 41 82 e0                                      add r4, r2, r4, lsl #2
00663a84  03 30 64 e0                                      rsb r3, r4, r3
00663a88  01 00 53 e1                                      cmp r3, r1
00663a8c  0b 00 00 3a                                      blo #0x663ac0
00663a90  cc 3c 0c e3                                      movw r3, #0xcccc
00663a94  05 00 54 e1                                      cmp r4, r5
00663a98  04 00 84 20                                      addhs r0, r4, r4
00663a9c  05 00 84 30                                      addlo r0, r4, r5
00663aa0  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00663aa4  03 00 50 e1                                      cmp r0, r3
00663aa8  01 00 00 8a                                      bhi #0x663ab4
00663aac  04 00 50 e1                                      cmp r0, r4
00663ab0  01 00 00 2a                                      bhs #0x663abc
00663ab4  cc 0c 0c e3                                      movw r0, #0xcccc
00663ab8  00 06 80 e1                                      orr r0, r0, r0, lsl #12
00663abc  70 80 bd e8                                      pop {r4, r5, r6, pc}
00663ac0  08 00 9f e5                                      ldr r0, [pc, #8]
00663ac4  00 00 8f e0                                      add r0, pc, r0
00663ac8  dc 94 02 eb                                      bl #0x708e40
00663acc  ef ff ff ea                                      b #0x663a90
; mapping-symbol data/literal pool
00663ad0  a4 a9 25 00                                      .byte 0xa4, 0xa9, 0x25, 0x00

; FUNCTION 0x00664628, declared_size=148, range_size=148, mode=arm
; class-group: std::vector<glitch::collada::SSkinBuffer, glitch::core::SAllocator<glitch::collada::SSkinBuffer, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada11SSkinBufferENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS2_S9_RKSt12__false_type
; demangled: std::vector<glitch::collada::SSkinBuffer, glitch::core::SAllocator<glitch::collada::SSkinBuffer, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::collada::SSkinBuffer*, glitch::collada::SSkinBuffer*, std::__false_type const&)
; decoder-mode: arm
00664628  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0066462c  04 40 90 e5                                      ldr r4, [r0, #4]
00664630  00 50 a0 e1                                      mov r5, r0
00664634  02 80 a0 e1                                      mov r8, r2
00664638  04 30 62 e0                                      rsb r3, r2, r4
0066463c  43 31 a0 e1                                      asr r3, r3, #2
00664640  01 70 a0 e1                                      mov r7, r1
00664644  83 a0 83 e0                                      add sl, r3, r3, lsl #1
00664648  0a a2 8a e0                                      add sl, sl, sl, lsl #4
0066464c  0a a4 8a e0                                      add sl, sl, sl, lsl #8
00664650  0a a8 8a e0                                      add sl, sl, sl, lsl #16
00664654  0a a1 83 e0                                      add sl, r3, sl, lsl #2
00664658  00 00 5a e3                                      cmp sl, #0
0066465c  01 a0 a0 d1                                      movle sl, r1
00664660  0a 00 00 da                                      ble #0x664690
00664664  0a 60 a0 e1                                      mov r6, sl
00664668  00 40 a0 e3                                      mov r4, #0
0066466c  04 00 87 e0                                      add r0, r7, r4
00664670  04 10 88 e0                                      add r1, r8, r4
00664674  ad ff ff eb                                      bl #0x664530
00664678  01 60 56 e2                                      subs r6, r6, #1
0066467c  14 40 84 e2                                      add r4, r4, #0x14
00664680  f9 ff ff 1a                                      bne #0x66466c
00664684  14 30 a0 e3                                      mov r3, #0x14
00664688  93 7a 2a e0                                      mla sl, r3, sl, r7
0066468c  04 40 95 e5                                      ldr r4, [r5, #4]
00664690  0a 00 54 e1                                      cmp r4, sl
00664694  05 00 00 0a                                      beq #0x6646b0
00664698  0a 60 a0 e1                                      mov r6, sl
0066469c  06 00 a0 e1                                      mov r0, r6
006646a0  14 60 86 e2                                      add r6, r6, #0x14
006646a4  d3 ff ff eb                                      bl #0x6645f8
006646a8  06 00 54 e1                                      cmp r4, r6
006646ac  fa ff ff 1a                                      bne #0x66469c
006646b0  04 a0 85 e5                                      str sl, [r5, #4]
006646b4  07 00 a0 e1                                      mov r0, r7
006646b8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x006646bc, declared_size=524, range_size=524, mode=arm
; class-group: std::vector<glitch::collada::SSkinBuffer, glitch::core::SAllocator<glitch::collada::SSkinBuffer, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada11SSkinBufferENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS2_jRKS2_RKSt12__false_type
; demangled: std::vector<glitch::collada::SSkinBuffer, glitch::core::SAllocator<glitch::collada::SSkinBuffer, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::collada::SSkinBuffer*, unsigned int, glitch::collada::SSkinBuffer const&, std::__false_type const&)
; decoder-mode: arm
006646bc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006646c0  00 80 a0 e1                                      mov r8, r0
006646c4  00 00 90 e5                                      ldr r0, [r0]
006646c8  34 d0 4d e2                                      sub sp, sp, #0x34
006646cc  03 60 a0 e1                                      mov r6, r3
006646d0  00 00 53 e1                                      cmp r3, r0
006646d4  01 40 a0 e1                                      mov r4, r1
006646d8  04 50 98 35                                      ldrlo r5, [r8, #4]
006646dc  27 00 00 3a                                      blo #0x664780
006646e0  04 50 98 e5                                      ldr r5, [r8, #4]
006646e4  05 00 53 e1                                      cmp r3, r5
006646e8  24 00 00 2a                                      bhs #0x664780
006646ec  00 30 93 e5                                      ldr r3, [r3]
006646f0  0c 50 8d e2                                      add r5, sp, #0xc
006646f4  08 00 a0 e1                                      mov r0, r8
006646f8  0c 30 8d e5                                      str r3, [sp, #0xc]
006646fc  00 00 53 e3                                      cmp r3, #0
00664700  04 10 93 15                                      ldrne r1, [r3, #4]
00664704  01 10 81 12                                      addne r1, r1, #1
00664708  04 10 83 15                                      strne r1, [r3, #4]
0066470c  04 30 96 e5                                      ldr r3, [r6, #4]
00664710  10 30 8d e5                                      str r3, [sp, #0x10]
00664714  00 00 53 e3                                      cmp r3, #0
00664718  00 10 93 15                                      ldrne r1, [r3]
0066471c  01 10 81 12                                      addne r1, r1, #1
00664720  00 10 83 15                                      strne r1, [r3]
00664724  08 30 96 e5                                      ldr r3, [r6, #8]
00664728  14 30 8d e5                                      str r3, [sp, #0x14]
0066472c  00 00 53 e3                                      cmp r3, #0
00664730  00 10 93 15                                      ldrne r1, [r3]
00664734  01 10 81 12                                      addne r1, r1, #1
00664738  00 10 83 15                                      strne r1, [r3]
0066473c  10 c0 d6 e5                                      ldrb ip, [r6, #0x10]
00664740  12 70 d6 e5                                      ldrb r7, [r6, #0x12]
00664744  0c e0 96 e5                                      ldr lr, [r6, #0xc]
00664748  11 60 d6 e5                                      ldrb r6, [r6, #0x11]
0066474c  04 10 a0 e1                                      mov r1, r4
00664750  1c c0 cd e5                                      strb ip, [sp, #0x1c]
00664754  05 30 a0 e1                                      mov r3, r5
00664758  2c c0 8d e2                                      add ip, sp, #0x2c
0066475c  18 e0 8d e5                                      str lr, [sp, #0x18]
00664760  1d 60 cd e5                                      strb r6, [sp, #0x1d]
00664764  1e 70 cd e5                                      strb r7, [sp, #0x1e]
00664768  00 c0 8d e5                                      str ip, [sp]
0066476c  d2 ff ff eb                                      bl #0x6646bc
00664770  05 00 a0 e1                                      mov r0, r5
00664774  9f ff ff eb                                      bl #0x6645f8
00664778  34 d0 8d e2                                      add sp, sp, #0x34
0066477c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00664780  05 30 64 e0                                      rsb r3, r4, r5
00664784  43 31 a0 e1                                      asr r3, r3, #2
00664788  83 70 83 e0                                      add r7, r3, r3, lsl #1
0066478c  07 72 87 e0                                      add r7, r7, r7, lsl #4
00664790  07 74 87 e0                                      add r7, r7, r7, lsl #8
00664794  07 78 87 e0                                      add r7, r7, r7, lsl #16
00664798  07 71 83 e0                                      add r7, r3, r7, lsl #2
0066479c  07 00 52 e1                                      cmp r2, r7
006647a0  2b 00 00 2a                                      bhs #0x664854
006647a4  14 a0 a0 e3                                      mov sl, #0x14
006647a8  9a 02 0a e0                                      mul sl, sl, r2
006647ac  05 10 a0 e1                                      mov r1, r5
006647b0  05 70 6a e0                                      rsb r7, sl, r5
006647b4  05 20 a0 e1                                      mov r2, r5
006647b8  28 30 8d e2                                      add r3, sp, #0x28
006647bc  00 c0 a0 e3                                      mov ip, #0
006647c0  07 00 a0 e1                                      mov r0, r7
006647c4  00 c0 8d e5                                      str ip, [sp]
006647c8  bd fb ff eb                                      bl #0x6636c4
006647cc  07 30 64 e0                                      rsb r3, r4, r7
006647d0  43 31 a0 e1                                      asr r3, r3, #2
006647d4  04 10 98 e5                                      ldr r1, [r8, #4]
006647d8  83 20 83 e0                                      add r2, r3, r3, lsl #1
006647dc  02 22 82 e0                                      add r2, r2, r2, lsl #4
006647e0  0a 10 81 e0                                      add r1, r1, sl
006647e4  02 24 82 e0                                      add r2, r2, r2, lsl #8
006647e8  04 10 88 e5                                      str r1, [r8, #4]
006647ec  02 28 82 e0                                      add r2, r2, r2, lsl #16
006647f0  02 81 83 e0                                      add r8, r3, r2, lsl #2
006647f4  00 00 58 e3                                      cmp r8, #0
006647f8  06 00 00 da                                      ble #0x664818
006647fc  14 50 45 e2                                      sub r5, r5, #0x14
00664800  14 70 47 e2                                      sub r7, r7, #0x14
00664804  05 00 a0 e1                                      mov r0, r5
00664808  07 10 a0 e1                                      mov r1, r7
0066480c  47 ff ff eb                                      bl #0x664530
00664810  01 80 58 e2                                      subs r8, r8, #1
00664814  f8 ff ff 1a                                      bne #0x6647fc
00664818  4a a1 a0 e1                                      asr sl, sl, #2
0066481c  8a 30 8a e0                                      add r3, sl, sl, lsl #1
00664820  03 32 83 e0                                      add r3, r3, r3, lsl #4
00664824  03 34 83 e0                                      add r3, r3, r3, lsl #8
00664828  03 38 83 e0                                      add r3, r3, r3, lsl #16
0066482c  03 a1 8a e0                                      add sl, sl, r3, lsl #2
00664830  00 00 5a e3                                      cmp sl, #0
00664834  cf ff ff da                                      ble #0x664778
00664838  04 00 a0 e1                                      mov r0, r4
0066483c  06 10 a0 e1                                      mov r1, r6
00664840  3a ff ff eb                                      bl #0x664530
00664844  01 a0 5a e2                                      subs sl, sl, #1
00664848  14 40 84 e2                                      add r4, r4, #0x14
0066484c  f9 ff ff 1a                                      bne #0x664838
00664850  c8 ff ff ea                                      b #0x664778
00664854  02 a0 67 e0                                      rsb sl, r7, r2
00664858  14 b0 a0 e3                                      mov fp, #0x14
0066485c  9b 5a 2a e0                                      mla sl, fp, sl, r5
00664860  00 90 a0 e3                                      mov sb, #0
00664864  05 00 a0 e1                                      mov r0, r5
00664868  0a 10 a0 e1                                      mov r1, sl
0066486c  06 20 a0 e1                                      mov r2, r6
00664870  24 30 8d e2                                      add r3, sp, #0x24
00664874  00 90 8d e5                                      str sb, [sp]
00664878  c0 fb ff eb                                      bl #0x663780
0066487c  04 a0 88 e5                                      str sl, [r8, #4]
00664880  20 30 8d e2                                      add r3, sp, #0x20
00664884  05 10 a0 e1                                      mov r1, r5
00664888  0a 20 a0 e1                                      mov r2, sl
0066488c  04 00 a0 e1                                      mov r0, r4
00664890  00 90 8d e5                                      str sb, [sp]
00664894  8a fb ff eb                                      bl #0x6636c4
00664898  04 30 98 e5                                      ldr r3, [r8, #4]
0066489c  09 00 57 e1                                      cmp r7, sb
006648a0  9b 37 2b e0                                      mla fp, fp, r7, r3
006648a4  04 b0 88 e5                                      str fp, [r8, #4]
006648a8  b2 ff ff da                                      ble #0x664778
006648ac  04 00 a0 e1                                      mov r0, r4
006648b0  06 10 a0 e1                                      mov r1, r6
006648b4  1d ff ff eb                                      bl #0x664530
006648b8  01 70 57 e2                                      subs r7, r7, #1
006648bc  14 40 84 e2                                      add r4, r4, #0x14
006648c0  f9 ff ff 1a                                      bne #0x6648ac
006648c4  ab ff ff ea                                      b #0x664778

; FUNCTION 0x006648c8, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<glitch::collada::SSkinBuffer, glitch::core::SAllocator<glitch::collada::SSkinBuffer, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada11SSkinBufferENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::collada::SSkinBuffer, glitch::core::SAllocator<glitch::collada::SSkinBuffer, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
006648c8  70 40 2d e9                                      push {r4, r5, r6, lr}
006648cc  04 40 90 e5                                      ldr r4, [r0, #4]
006648d0  00 50 90 e5                                      ldr r5, [r0]
006648d4  00 60 a0 e1                                      mov r6, r0
006648d8  05 00 54 e1                                      cmp r4, r5
006648dc  04 00 00 0a                                      beq #0x6648f4
006648e0  14 40 44 e2                                      sub r4, r4, #0x14
006648e4  04 00 a0 e1                                      mov r0, r4
006648e8  42 ff ff eb                                      bl #0x6645f8
006648ec  04 00 55 e1                                      cmp r5, r4
006648f0  fa ff ff 1a                                      bne #0x6648e0
006648f4  00 00 96 e5                                      ldr r0, [r6]
006648f8  00 00 50 e3                                      cmp r0, #0
006648fc  00 00 00 0a                                      beq #0x664904
00664900  d2 ae f2 eb                                      bl #0x310450
00664904  06 00 a0 e1                                      mov r0, r6
00664908  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0066490c, declared_size=388, range_size=388, mode=arm
; class-group: std::vector<glitch::collada::SSkinBuffer, glitch::core::SAllocator<glitch::collada::SSkinBuffer, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada11SSkinBufferENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPS2_jRKS2_
; demangled: std::vector<glitch::collada::SSkinBuffer, glitch::core::SAllocator<glitch::collada::SSkinBuffer, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(glitch::collada::SSkinBuffer*, unsigned int, glitch::collada::SSkinBuffer const&)
; decoder-mode: arm
0066490c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00664910  00 50 52 e2                                      subs r5, r2, #0
00664914  1c d0 4d e2                                      sub sp, sp, #0x1c
00664918  00 40 a0 e1                                      mov r4, r0
0066491c  01 70 a0 e1                                      mov r7, r1
00664920  03 60 a0 e1                                      mov r6, r3
00664924  37 00 00 0a                                      beq #0x664a08
00664928  00 50 90 e9                                      ldmib r0, {ip, lr}
0066492c  0e c0 6c e0                                      rsb ip, ip, lr
00664930  4c c1 a0 e1                                      asr ip, ip, #2
00664934  8c e0 8c e0                                      add lr, ip, ip, lsl #1
00664938  0e e2 8e e0                                      add lr, lr, lr, lsl #4
0066493c  0e e4 8e e0                                      add lr, lr, lr, lsl #8
00664940  0e e8 8e e0                                      add lr, lr, lr, lsl #16
00664944  0e c1 8c e0                                      add ip, ip, lr, lsl #2
00664948  0c 00 55 e1                                      cmp r5, ip
0066494c  2f 00 00 9a                                      bls #0x664a10
00664950  05 10 a0 e1                                      mov r1, r5
00664954  3e fc ff eb                                      bl #0x663a54
00664958  14 90 a0 e3                                      mov sb, #0x14
0066495c  99 00 0a e0                                      mul sl, sb, r0
00664960  00 10 a0 e3                                      mov r1, #0
00664964  0a 00 a0 e1                                      mov r0, sl
00664968  fe ae f2 eb                                      bl #0x310568
0066496c  00 80 a0 e1                                      mov r8, r0
00664970  00 b0 a0 e3                                      mov fp, #0
00664974  00 00 94 e5                                      ldr r0, [r4]
00664978  07 10 a0 e1                                      mov r1, r7
0066497c  08 20 a0 e1                                      mov r2, r8
00664980  10 30 8d e2                                      add r3, sp, #0x10
00664984  00 b0 8d e5                                      str fp, [sp]
00664988  4d fb ff eb                                      bl #0x6636c4
0066498c  01 00 55 e3                                      cmp r5, #1
00664990  22 00 00 0a                                      beq #0x664a20
00664994  99 05 25 e0                                      mla r5, sb, r5, r0
00664998  06 20 a0 e1                                      mov r2, r6
0066499c  05 10 a0 e1                                      mov r1, r5
006649a0  0c 30 8d e2                                      add r3, sp, #0xc
006649a4  00 b0 8d e5                                      str fp, [sp]
006649a8  74 fb ff eb                                      bl #0x663780
006649ac  04 10 94 e5                                      ldr r1, [r4, #4]
006649b0  07 00 a0 e1                                      mov r0, r7
006649b4  05 20 a0 e1                                      mov r2, r5
006649b8  00 c0 a0 e3                                      mov ip, #0
006649bc  08 30 8d e2                                      add r3, sp, #8
006649c0  00 c0 8d e5                                      str ip, [sp]
006649c4  3e fb ff eb                                      bl #0x6636c4
006649c8  04 50 94 e5                                      ldr r5, [r4, #4]
006649cc  00 60 94 e5                                      ldr r6, [r4]
006649d0  00 70 a0 e1                                      mov r7, r0
006649d4  06 00 55 e1                                      cmp r5, r6
006649d8  05 00 00 0a                                      beq #0x6649f4
006649dc  14 50 45 e2                                      sub r5, r5, #0x14
006649e0  05 00 a0 e1                                      mov r0, r5
006649e4  03 ff ff eb                                      bl #0x6645f8
006649e8  05 00 56 e1                                      cmp r6, r5
006649ec  fa ff ff 1a                                      bne #0x6649dc
006649f0  00 60 94 e5                                      ldr r6, [r4]
006649f4  06 00 a0 e1                                      mov r0, r6
006649f8  0a a0 88 e0                                      add sl, r8, sl
006649fc  93 ae f2 eb                                      bl #0x310450
00664a00  80 04 84 e9                                      stmib r4, {r7, sl}
00664a04  00 80 84 e5                                      str r8, [r4]
00664a08  1c d0 8d e2                                      add sp, sp, #0x1c
00664a0c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00664a10  14 c0 8d e2                                      add ip, sp, #0x14
00664a14  00 c0 8d e5                                      str ip, [sp]
00664a18  27 ff ff eb                                      bl #0x6646bc
00664a1c  f9 ff ff ea                                      b #0x664a08
00664a20  00 20 96 e5                                      ldr r2, [r6]
00664a24  14 50 80 e2                                      add r5, r0, #0x14
00664a28  00 20 80 e5                                      str r2, [r0]
00664a2c  0b 00 52 e1                                      cmp r2, fp
00664a30  04 10 92 15                                      ldrne r1, [r2, #4]
00664a34  01 10 81 12                                      addne r1, r1, #1
00664a38  04 10 82 15                                      strne r1, [r2, #4]
00664a3c  04 20 96 e5                                      ldr r2, [r6, #4]
00664a40  04 20 80 e5                                      str r2, [r0, #4]
00664a44  00 00 52 e3                                      cmp r2, #0
00664a48  00 10 92 15                                      ldrne r1, [r2]
00664a4c  01 10 81 12                                      addne r1, r1, #1
00664a50  00 10 82 15                                      strne r1, [r2]
00664a54  08 20 96 e5                                      ldr r2, [r6, #8]
00664a58  08 20 80 e5                                      str r2, [r0, #8]
00664a5c  00 00 52 e3                                      cmp r2, #0
00664a60  00 10 92 15                                      ldrne r1, [r2]
00664a64  01 10 81 12                                      addne r1, r1, #1
00664a68  00 10 82 15                                      strne r1, [r2]
00664a6c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00664a70  0c 20 80 e5                                      str r2, [r0, #0xc]
00664a74  10 20 d6 e5                                      ldrb r2, [r6, #0x10]
00664a78  10 20 c0 e5                                      strb r2, [r0, #0x10]
00664a7c  11 20 d6 e5                                      ldrb r2, [r6, #0x11]
00664a80  11 20 c0 e5                                      strb r2, [r0, #0x11]
00664a84  12 20 d6 e5                                      ldrb r2, [r6, #0x12]
00664a88  12 20 c0 e5                                      strb r2, [r0, #0x12]
00664a8c  c6 ff ff ea                                      b #0x6649ac

; FUNCTION 0x00664a90, declared_size=104, range_size=104, mode=arm
; class-group: std::vector<glitch::collada::SSkinBuffer, glitch::core::SAllocator<glitch::collada::SSkinBuffer, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada11SSkinBufferENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKS2_
; demangled: std::vector<glitch::collada::SSkinBuffer, glitch::core::SAllocator<glitch::collada::SSkinBuffer, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, glitch::collada::SSkinBuffer const&)
; decoder-mode: arm
00664a90  30 40 2d e9                                      push {r4, r5, lr}
00664a94  10 10 90 e8                                      ldm r0, {r4, ip}
00664a98  02 30 a0 e1                                      mov r3, r2
00664a9c  0c d0 4d e2                                      sub sp, sp, #0xc
00664aa0  0c 20 64 e0                                      rsb r2, r4, ip
00664aa4  42 21 a0 e1                                      asr r2, r2, #2
00664aa8  82 50 82 e0                                      add r5, r2, r2, lsl #1
00664aac  05 52 85 e0                                      add r5, r5, r5, lsl #4
00664ab0  05 54 85 e0                                      add r5, r5, r5, lsl #8
00664ab4  05 58 85 e0                                      add r5, r5, r5, lsl #16
00664ab8  05 21 82 e0                                      add r2, r2, r5, lsl #2
00664abc  02 00 51 e1                                      cmp r1, r2
00664ac0  08 00 00 2a                                      bhs #0x664ae8
00664ac4  14 30 a0 e3                                      mov r3, #0x14
00664ac8  93 41 21 e0                                      mla r1, r3, r1, r4
00664acc  0c 00 51 e1                                      cmp r1, ip
00664ad0  02 00 00 0a                                      beq #0x664ae0
00664ad4  0c 20 a0 e1                                      mov r2, ip
00664ad8  04 30 8d e2                                      add r3, sp, #4
00664adc  d1 fe ff eb                                      bl #0x664628
00664ae0  0c d0 8d e2                                      add sp, sp, #0xc
00664ae4  30 80 bd e8                                      pop {r4, r5, pc}
00664ae8  01 20 62 e0                                      rsb r2, r2, r1
00664aec  0c 10 a0 e1                                      mov r1, ip
00664af0  85 ff ff eb                                      bl #0x66490c
00664af4  f9 ff ff ea                                      b #0x664ae0
