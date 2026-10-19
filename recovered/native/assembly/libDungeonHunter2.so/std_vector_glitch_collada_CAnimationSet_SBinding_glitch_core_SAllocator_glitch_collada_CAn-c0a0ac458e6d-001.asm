; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0062dde0, declared_size=696, range_size=696, mode=arm
; class-group: std::vector<glitch::collada::CAnimationSet::SBinding, glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada13CAnimationSet8SBindingENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS3_jRKS3_RKSt12__false_type
; demangled: std::vector<glitch::collada::CAnimationSet::SBinding, glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::collada::CAnimationSet::SBinding*, unsigned int, glitch::collada::CAnimationSet::SBinding const&, std::__false_type const&)
; decoder-mode: arm
0062dde0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0062dde4  00 40 90 e5                                      ldr r4, [r0]
0062dde8  18 d0 4d e2                                      sub sp, sp, #0x18
0062ddec  00 c0 a0 e1                                      mov ip, r0
0062ddf0  04 00 53 e1                                      cmp r3, r4
0062ddf4  01 50 a0 e1                                      mov r5, r1
0062ddf8  02 40 a0 e1                                      mov r4, r2
0062ddfc  04 60 90 35                                      ldrlo r6, [r0, #4]
0062de00  10 00 00 3a                                      blo #0x62de48
0062de04  04 60 90 e5                                      ldr r6, [r0, #4]
0062de08  06 00 53 e1                                      cmp r3, r6
0062de0c  0d 00 00 2a                                      bhs #0x62de48
0062de10  03 c0 a0 e1                                      mov ip, r3
0062de14  04 50 9c e4                                      ldr r5, [ip], #4
0062de18  04 40 93 e5                                      ldr r4, [r3, #4]
0062de1c  18 30 8d e2                                      add r3, sp, #0x18
0062de20  04 e0 9c e5                                      ldr lr, [ip, #4]
0062de24  0c c0 8d e2                                      add ip, sp, #0xc
0062de28  04 40 8c e4                                      str r4, [ip], #4
0062de2c  00 e0 8c e5                                      str lr, [ip]
0062de30  10 50 23 e5                                      str r5, [r3, #-0x10]!
0062de34  14 c0 8d e2                                      add ip, sp, #0x14
0062de38  00 c0 8d e5                                      str ip, [sp]
0062de3c  e7 ff ff eb                                      bl #0x62dde0
0062de40  18 d0 8d e2                                      add sp, sp, #0x18
0062de44  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0062de48  06 20 65 e0                                      rsb r2, r5, r6
0062de4c  42 21 a0 e1                                      asr r2, r2, #2
0062de50  02 71 82 e0                                      add r7, r2, r2, lsl #2
0062de54  07 72 87 e0                                      add r7, r7, r7, lsl #4
0062de58  07 74 87 e0                                      add r7, r7, r7, lsl #8
0062de5c  07 78 87 e0                                      add r7, r7, r7, lsl #16
0062de60  87 70 82 e0                                      add r7, r2, r7, lsl #1
0062de64  07 00 54 e1                                      cmp r4, r7
0062de68  47 00 00 2a                                      bhs #0x62df8c
0062de6c  0c 20 a0 e3                                      mov r2, #0xc
0062de70  92 04 04 e0                                      mul r4, r2, r4
0062de74  44 21 a0 e1                                      asr r2, r4, #2
0062de78  06 80 64 e0                                      rsb r8, r4, r6
0062de7c  02 71 82 e0                                      add r7, r2, r2, lsl #2
0062de80  07 72 87 e0                                      add r7, r7, r7, lsl #4
0062de84  07 74 87 e0                                      add r7, r7, r7, lsl #8
0062de88  07 78 87 e0                                      add r7, r7, r7, lsl #16
0062de8c  87 70 82 e0                                      add r7, r2, r7, lsl #1
0062de90  00 00 57 e3                                      cmp r7, #0
0062de94  06 00 a0 d1                                      movle r0, r6
0062de98  0e 00 00 da                                      ble #0x62ded8
0062de9c  00 20 a0 e3                                      mov r2, #0
0062dea0  02 10 98 e7                                      ldr r1, [r8, r2]
0062dea4  02 00 88 e0                                      add r0, r8, r2
0062dea8  04 00 80 e2                                      add r0, r0, #4
0062deac  02 10 86 e7                                      str r1, [r6, r2]
0062deb0  04 a0 90 e4                                      ldr sl, [r0], #4
0062deb4  02 10 86 e0                                      add r1, r6, r2
0062deb8  04 10 81 e2                                      add r1, r1, #4
0062debc  04 a0 81 e4                                      str sl, [r1], #4
0062dec0  00 00 90 e5                                      ldr r0, [r0]
0062dec4  01 70 57 e2                                      subs r7, r7, #1
0062dec8  0c 20 82 e2                                      add r2, r2, #0xc
0062decc  00 00 81 e5                                      str r0, [r1]
0062ded0  f2 ff ff 1a                                      bne #0x62dea0
0062ded4  04 00 9c e5                                      ldr r0, [ip, #4]
0062ded8  08 20 65 e0                                      rsb r2, r5, r8
0062dedc  42 21 a0 e1                                      asr r2, r2, #2
0062dee0  04 00 80 e0                                      add r0, r0, r4
0062dee4  02 11 82 e0                                      add r1, r2, r2, lsl #2
0062dee8  04 00 8c e5                                      str r0, [ip, #4]
0062deec  01 12 81 e0                                      add r1, r1, r1, lsl #4
0062def0  01 14 81 e0                                      add r1, r1, r1, lsl #8
0062def4  01 18 81 e0                                      add r1, r1, r1, lsl #16
0062def8  81 10 82 e0                                      add r1, r2, r1, lsl #1
0062defc  00 00 51 e3                                      cmp r1, #0
0062df00  0a 00 00 da                                      ble #0x62df30
0062df04  08 20 a0 e1                                      mov r2, r8
0062df08  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0062df0c  01 10 51 e2                                      subs r1, r1, #1
0062df10  0c 00 06 e5                                      str r0, [r6, #-0xc]
0062df14  08 00 12 e5                                      ldr r0, [r2, #-8]
0062df18  08 00 06 e5                                      str r0, [r6, #-8]
0062df1c  04 00 12 e5                                      ldr r0, [r2, #-4]
0062df20  0c 20 42 e2                                      sub r2, r2, #0xc
0062df24  04 00 06 e5                                      str r0, [r6, #-4]
0062df28  0c 60 46 e2                                      sub r6, r6, #0xc
0062df2c  f5 ff ff 1a                                      bne #0x62df08
0062df30  44 41 a0 e1                                      asr r4, r4, #2
0062df34  04 21 84 e0                                      add r2, r4, r4, lsl #2
0062df38  02 22 82 e0                                      add r2, r2, r2, lsl #4
0062df3c  02 24 82 e0                                      add r2, r2, r2, lsl #8
0062df40  02 28 82 e0                                      add r2, r2, r2, lsl #16
0062df44  82 40 84 e0                                      add r4, r4, r2, lsl #1
0062df48  00 00 54 e3                                      cmp r4, #0
0062df4c  bb ff ff da                                      ble #0x62de40
0062df50  04 00 83 e2                                      add r0, r3, #4
0062df54  00 10 a0 e3                                      mov r1, #0
0062df58  04 60 80 e2                                      add r6, r0, #4
0062df5c  00 c0 93 e5                                      ldr ip, [r3]
0062df60  01 20 85 e0                                      add r2, r5, r1
0062df64  04 20 82 e2                                      add r2, r2, #4
0062df68  01 c0 85 e7                                      str ip, [r5, r1]
0062df6c  00 c0 90 e5                                      ldr ip, [r0]
0062df70  01 40 54 e2                                      subs r4, r4, #1
0062df74  0c 10 81 e2                                      add r1, r1, #0xc
0062df78  04 c0 82 e4                                      str ip, [r2], #4
0062df7c  00 c0 96 e5                                      ldr ip, [r6]
0062df80  00 c0 82 e5                                      str ip, [r2]
0062df84  f4 ff ff 1a                                      bne #0x62df5c
0062df88  ac ff ff ea                                      b #0x62de40
0062df8c  0c 20 a0 e3                                      mov r2, #0xc
0062df90  04 40 67 e0                                      rsb r4, r7, r4
0062df94  92 64 24 e0                                      mla r4, r2, r4, r6
0062df98  04 20 66 e0                                      rsb r2, r6, r4
0062df9c  42 21 a0 e1                                      asr r2, r2, #2
0062dfa0  02 81 82 e0                                      add r8, r2, r2, lsl #2
0062dfa4  08 82 88 e0                                      add r8, r8, r8, lsl #4
0062dfa8  08 84 88 e0                                      add r8, r8, r8, lsl #8
0062dfac  08 88 88 e0                                      add r8, r8, r8, lsl #16
0062dfb0  88 80 82 e0                                      add r8, r2, r8, lsl #1
0062dfb4  00 00 58 e3                                      cmp r8, #0
0062dfb8  0d 00 00 da                                      ble #0x62dff4
0062dfbc  04 00 83 e2                                      add r0, r3, #4
0062dfc0  00 10 a0 e3                                      mov r1, #0
0062dfc4  04 90 80 e2                                      add sb, r0, #4
0062dfc8  00 a0 93 e5                                      ldr sl, [r3]
0062dfcc  01 20 86 e0                                      add r2, r6, r1
0062dfd0  04 20 82 e2                                      add r2, r2, #4
0062dfd4  01 a0 86 e7                                      str sl, [r6, r1]
0062dfd8  00 a0 90 e5                                      ldr sl, [r0]
0062dfdc  01 80 58 e2                                      subs r8, r8, #1
0062dfe0  0c 10 81 e2                                      add r1, r1, #0xc
0062dfe4  04 a0 82 e4                                      str sl, [r2], #4
0062dfe8  00 a0 99 e5                                      ldr sl, [sb]
0062dfec  00 a0 82 e5                                      str sl, [r2]
0062dff0  f4 ff ff 1a                                      bne #0x62dfc8
0062dff4  00 00 57 e3                                      cmp r7, #0
0062dff8  04 40 8c e5                                      str r4, [ip, #4]
0062dffc  21 00 00 da                                      ble #0x62e088
0062e000  07 60 a0 e1                                      mov r6, r7
0062e004  00 20 a0 e3                                      mov r2, #0
0062e008  02 10 95 e7                                      ldr r1, [r5, r2]
0062e00c  02 00 85 e0                                      add r0, r5, r2
0062e010  04 00 80 e2                                      add r0, r0, #4
0062e014  02 10 84 e7                                      str r1, [r4, r2]
0062e018  04 80 90 e4                                      ldr r8, [r0], #4
0062e01c  02 10 84 e0                                      add r1, r4, r2
0062e020  04 10 81 e2                                      add r1, r1, #4
0062e024  04 80 81 e4                                      str r8, [r1], #4
0062e028  00 00 90 e5                                      ldr r0, [r0]
0062e02c  01 60 56 e2                                      subs r6, r6, #1
0062e030  0c 20 82 e2                                      add r2, r2, #0xc
0062e034  00 00 81 e5                                      str r0, [r1]
0062e038  f2 ff ff 1a                                      bne #0x62e008
0062e03c  04 20 9c e5                                      ldr r2, [ip, #4]
0062e040  0c 10 a0 e3                                      mov r1, #0xc
0062e044  04 00 83 e2                                      add r0, r3, #4
0062e048  91 27 22 e0                                      mla r2, r1, r7, r2
0062e04c  04 40 80 e2                                      add r4, r0, #4
0062e050  06 10 a0 e1                                      mov r1, r6
0062e054  04 20 8c e5                                      str r2, [ip, #4]
0062e058  00 c0 93 e5                                      ldr ip, [r3]
0062e05c  01 20 85 e0                                      add r2, r5, r1
0062e060  04 20 82 e2                                      add r2, r2, #4
0062e064  01 c0 85 e7                                      str ip, [r5, r1]
0062e068  00 c0 90 e5                                      ldr ip, [r0]
0062e06c  01 70 57 e2                                      subs r7, r7, #1
0062e070  0c 10 81 e2                                      add r1, r1, #0xc
0062e074  04 c0 82 e4                                      str ip, [r2], #4
0062e078  00 c0 94 e5                                      ldr ip, [r4]
0062e07c  00 c0 82 e5                                      str ip, [r2]
0062e080  f4 ff ff 1a                                      bne #0x62e058
0062e084  6d ff ff ea                                      b #0x62de40
0062e088  0c 30 a0 e3                                      mov r3, #0xc
0062e08c  93 47 24 e0                                      mla r4, r3, r7, r4
0062e090  04 40 8c e5                                      str r4, [ip, #4]
0062e094  69 ff ff ea                                      b #0x62de40

; FUNCTION 0x0062e420, declared_size=128, range_size=128, mode=arm
; class-group: std::vector<glitch::collada::CAnimationSet::SBinding, glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada13CAnimationSet8SBindingENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::collada::CAnimationSet::SBinding, glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
0062e420  70 40 2d e9                                      push {r4, r5, r6, lr}
0062e424  14 00 90 e8                                      ldm r0, {r2, r4}
0062e428  55 35 05 e3                                      movw r3, #0x5555
0062e42c  55 35 41 e3                                      movt r3, #0x1555
0062e430  04 20 62 e0                                      rsb r2, r2, r4
0062e434  42 21 a0 e1                                      asr r2, r2, #2
0062e438  01 50 a0 e1                                      mov r5, r1
0062e43c  02 41 82 e0                                      add r4, r2, r2, lsl #2
0062e440  04 42 84 e0                                      add r4, r4, r4, lsl #4
0062e444  04 44 84 e0                                      add r4, r4, r4, lsl #8
0062e448  04 48 84 e0                                      add r4, r4, r4, lsl #16
0062e44c  84 40 82 e0                                      add r4, r2, r4, lsl #1
0062e450  03 30 64 e0                                      rsb r3, r4, r3
0062e454  01 00 53 e1                                      cmp r3, r1
0062e458  0b 00 00 3a                                      blo #0x62e48c
0062e45c  55 35 05 e3                                      movw r3, #0x5555
0062e460  05 00 54 e1                                      cmp r4, r5
0062e464  04 00 84 20                                      addhs r0, r4, r4
0062e468  05 00 84 30                                      addlo r0, r4, r5
0062e46c  03 37 83 e1                                      orr r3, r3, r3, lsl #14
0062e470  03 00 50 e1                                      cmp r0, r3
0062e474  01 00 00 8a                                      bhi #0x62e480
0062e478  04 00 50 e1                                      cmp r0, r4
0062e47c  01 00 00 2a                                      bhs #0x62e488
0062e480  55 05 05 e3                                      movw r0, #0x5555
0062e484  00 07 80 e1                                      orr r0, r0, r0, lsl #14
0062e488  70 80 bd e8                                      pop {r4, r5, r6, pc}
0062e48c  08 00 9f e5                                      ldr r0, [pc, #8]
0062e490  00 00 8f e0                                      add r0, pc, r0
0062e494  69 6a 03 eb                                      bl #0x708e40
0062e498  ef ff ff ea                                      b #0x62e45c
; mapping-symbol data/literal pool
0062e49c  d8 ff 28 00                                      .byte 0xd8, 0xff, 0x28, 0x00

; FUNCTION 0x0062e5e0, declared_size=304, range_size=304, mode=arm
; class-group: std::vector<glitch::collada::CAnimationSet::SBinding, glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada13CAnimationSet8SBindingENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE7reserveEj
; demangled: std::vector<glitch::collada::CAnimationSet::SBinding, glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding, (glitch::memory::E_MEMORY_HINT)0> >::reserve(unsigned int)
; decoder-mode: arm
0062e5e0  70 40 2d e9                                      push {r4, r5, r6, lr}
0062e5e4  00 40 a0 e1                                      mov r4, r0
0062e5e8  00 20 90 e5                                      ldr r2, [r0]
0062e5ec  08 00 90 e5                                      ldr r0, [r0, #8]
0062e5f0  08 d0 4d e2                                      sub sp, sp, #8
0062e5f4  01 30 a0 e1                                      mov r3, r1
0062e5f8  00 00 62 e0                                      rsb r0, r2, r0
0062e5fc  40 01 a0 e1                                      asr r0, r0, #2
0062e600  04 10 8d e5                                      str r1, [sp, #4]
0062e604  00 11 80 e0                                      add r1, r0, r0, lsl #2
0062e608  01 12 81 e0                                      add r1, r1, r1, lsl #4
0062e60c  01 14 81 e0                                      add r1, r1, r1, lsl #8
0062e610  01 18 81 e0                                      add r1, r1, r1, lsl #16
0062e614  81 00 80 e0                                      add r0, r0, r1, lsl #1
0062e618  00 00 53 e1                                      cmp r3, r0
0062e61c  2c 00 00 9a                                      bls #0x62e6d4
0062e620  55 15 05 e3                                      movw r1, #0x5555
0062e624  01 17 81 e1                                      orr r1, r1, r1, lsl #14
0062e628  01 00 53 e1                                      cmp r3, r1
0062e62c  2a 00 00 8a                                      bhi #0x62e6dc
0062e630  04 30 94 e5                                      ldr r3, [r4, #4]
0062e634  00 00 52 e3                                      cmp r2, #0
0062e638  03 10 62 e0                                      rsb r1, r2, r3
0062e63c  41 11 a0 e1                                      asr r1, r1, #2
0062e640  01 51 81 e0                                      add r5, r1, r1, lsl #2
0062e644  05 52 85 e0                                      add r5, r5, r5, lsl #4
0062e648  05 54 85 e0                                      add r5, r5, r5, lsl #8
0062e64c  05 58 85 e0                                      add r5, r5, r5, lsl #16
0062e650  85 50 81 e0                                      add r5, r1, r5, lsl #1
0062e654  25 00 00 0a                                      beq #0x62e6f0
0062e658  04 00 a0 e1                                      mov r0, r4
0062e65c  04 10 8d e2                                      add r1, sp, #4
0062e660  be ff ff eb                                      bl #0x62e560
0062e664  00 30 94 e5                                      ldr r3, [r4]
0062e668  00 60 a0 e1                                      mov r6, r0
0062e66c  04 00 94 e5                                      ldr r0, [r4, #4]
0062e670  03 00 50 e1                                      cmp r0, r3
0062e674  0e 00 00 0a                                      beq #0x62e6b4
0062e678  0c 20 40 e2                                      sub r2, r0, #0xc
0062e67c  02 30 63 e0                                      rsb r3, r3, r2
0062e680  23 31 a0 e1                                      lsr r3, r3, #2
0062e684  03 21 83 e0                                      add r2, r3, r3, lsl #2
0062e688  82 22 82 e0                                      add r2, r2, r2, lsl #5
0062e68c  82 20 83 e0                                      add r2, r3, r2, lsl #1
0062e690  82 22 82 e0                                      add r2, r2, r2, lsl #5
0062e694  82 17 a0 e1                                      lsl r1, r2, #0xf
0062e698  01 20 62 e0                                      rsb r2, r2, r1
0062e69c  82 30 83 e0                                      add r3, r3, r2, lsl #1
0062e6a0  03 31 c3 e3                                      bic r3, r3, #0xc0000000
0062e6a4  0b 20 e0 e3                                      mvn r2, #0xb
0062e6a8  92 03 03 e0                                      mul r3, r2, r3
0062e6ac  02 30 83 e0                                      add r3, r3, r2
0062e6b0  03 00 80 e0                                      add r0, r0, r3
0062e6b4  65 87 f3 eb                                      bl #0x310450
0062e6b8  04 20 9d e5                                      ldr r2, [sp, #4]
0062e6bc  0c 30 a0 e3                                      mov r3, #0xc
0062e6c0  93 65 25 e0                                      mla r5, r3, r5, r6
0062e6c4  93 62 23 e0                                      mla r3, r3, r2, r6
0062e6c8  04 50 84 e5                                      str r5, [r4, #4]
0062e6cc  08 30 84 e5                                      str r3, [r4, #8]
0062e6d0  00 60 84 e5                                      str r6, [r4]
0062e6d4  08 d0 8d e2                                      add sp, sp, #8
0062e6d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0062e6dc  28 00 9f e5                                      ldr r0, [pc, #0x28]
0062e6e0  00 00 8f e0                                      add r0, pc, r0
0062e6e4  d5 69 03 eb                                      bl #0x708e40
0062e6e8  00 20 94 e5                                      ldr r2, [r4]
0062e6ec  cf ff ff ea                                      b #0x62e630
0062e6f0  04 30 9d e5                                      ldr r3, [sp, #4]
0062e6f4  0c 00 a0 e3                                      mov r0, #0xc
0062e6f8  02 10 a0 e1                                      mov r1, r2
0062e6fc  90 03 00 e0                                      mul r0, r0, r3
0062e700  98 87 f3 eb                                      bl #0x310568
0062e704  00 60 a0 e1                                      mov r6, r0
0062e708  ea ff ff ea                                      b #0x62e6b8
; mapping-symbol data/literal pool
0062e70c  88 fd 28 00                                      .byte 0x88, 0xfd, 0x28, 0x00

; FUNCTION 0x0062ea08, declared_size=584, range_size=584, mode=arm
; class-group: std::vector<glitch::collada::CAnimationSet::SBinding, glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada13CAnimationSet8SBindingENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPS3_jRKS3_
; demangled: std::vector<glitch::collada::CAnimationSet::SBinding, glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(glitch::collada::CAnimationSet::SBinding*, unsigned int, glitch::collada::CAnimationSet::SBinding const&)
; decoder-mode: arm
0062ea08  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0062ea0c  00 70 52 e2                                      subs r7, r2, #0
0062ea10  10 d0 4d e2                                      sub sp, sp, #0x10
0062ea14  00 50 a0 e1                                      mov r5, r0
0062ea18  01 40 a0 e1                                      mov r4, r1
0062ea1c  03 60 a0 e1                                      mov r6, r3
0062ea20  7a 00 00 0a                                      beq #0x62ec10
0062ea24  00 50 90 e9                                      ldmib r0, {ip, lr}
0062ea28  0e c0 6c e0                                      rsb ip, ip, lr
0062ea2c  4c c1 a0 e1                                      asr ip, ip, #2
0062ea30  0c e1 8c e0                                      add lr, ip, ip, lsl #2
0062ea34  0e e2 8e e0                                      add lr, lr, lr, lsl #4
0062ea38  0e e4 8e e0                                      add lr, lr, lr, lsl #8
0062ea3c  0e e8 8e e0                                      add lr, lr, lr, lsl #16
0062ea40  8e c0 8c e0                                      add ip, ip, lr, lsl #1
0062ea44  0c 00 57 e1                                      cmp r7, ip
0062ea48  72 00 00 9a                                      bls #0x62ec18
0062ea4c  07 10 a0 e1                                      mov r1, r7
0062ea50  72 fe ff eb                                      bl #0x62e420
0062ea54  0c 80 a0 e3                                      mov r8, #0xc
0062ea58  98 00 08 e0                                      mul r8, r8, r0
0062ea5c  00 10 a0 e3                                      mov r1, #0
0062ea60  08 00 a0 e1                                      mov r0, r8
0062ea64  bf 86 f3 eb                                      bl #0x310568
0062ea68  00 c0 95 e5                                      ldr ip, [r5]
0062ea6c  00 a0 a0 e1                                      mov sl, r0
0062ea70  04 30 6c e0                                      rsb r3, ip, r4
0062ea74  43 31 a0 e1                                      asr r3, r3, #2
0062ea78  03 91 83 e0                                      add sb, r3, r3, lsl #2
0062ea7c  09 92 89 e0                                      add sb, sb, sb, lsl #4
0062ea80  09 94 89 e0                                      add sb, sb, sb, lsl #8
0062ea84  09 98 89 e0                                      add sb, sb, sb, lsl #16
0062ea88  89 90 83 e0                                      add sb, r3, sb, lsl #1
0062ea8c  00 00 59 e3                                      cmp sb, #0
0062ea90  00 90 a0 d1                                      movle sb, r0
0062ea94  10 00 00 da                                      ble #0x62eadc
0062ea98  09 00 a0 e1                                      mov r0, sb
0062ea9c  00 30 a0 e3                                      mov r3, #0
0062eaa0  03 20 9c e7                                      ldr r2, [ip, r3]
0062eaa4  03 10 8c e0                                      add r1, ip, r3
0062eaa8  04 10 81 e2                                      add r1, r1, #4
0062eaac  03 20 8a e7                                      str r2, [sl, r3]
0062eab0  04 e0 91 e4                                      ldr lr, [r1], #4
0062eab4  03 20 8a e0                                      add r2, sl, r3
0062eab8  04 20 82 e2                                      add r2, r2, #4
0062eabc  04 e0 82 e4                                      str lr, [r2], #4
0062eac0  00 10 91 e5                                      ldr r1, [r1]
0062eac4  01 00 50 e2                                      subs r0, r0, #1
0062eac8  0c 30 83 e2                                      add r3, r3, #0xc
0062eacc  00 10 82 e5                                      str r1, [r2]
0062ead0  f2 ff ff 1a                                      bne #0x62eaa0
0062ead4  0c 30 a0 e3                                      mov r3, #0xc
0062ead8  93 a9 29 e0                                      mla sb, r3, sb, sl
0062eadc  01 00 57 e3                                      cmp r7, #1
0062eae0  50 00 00 0a                                      beq #0x62ec28
0062eae4  0c 30 a0 e3                                      mov r3, #0xc
0062eae8  93 97 27 e0                                      mla r7, r3, r7, sb
0062eaec  07 30 69 e0                                      rsb r3, sb, r7
0062eaf0  43 31 a0 e1                                      asr r3, r3, #2
0062eaf4  03 11 83 e0                                      add r1, r3, r3, lsl #2
0062eaf8  01 12 81 e0                                      add r1, r1, r1, lsl #4
0062eafc  01 14 81 e0                                      add r1, r1, r1, lsl #8
0062eb00  01 18 81 e0                                      add r1, r1, r1, lsl #16
0062eb04  81 10 83 e0                                      add r1, r3, r1, lsl #1
0062eb08  00 00 51 e3                                      cmp r1, #0
0062eb0c  0d 00 00 da                                      ble #0x62eb48
0062eb10  04 c0 86 e2                                      add ip, r6, #4
0062eb14  00 20 a0 e3                                      mov r2, #0
0062eb18  04 e0 8c e2                                      add lr, ip, #4
0062eb1c  00 00 96 e5                                      ldr r0, [r6]
0062eb20  02 30 89 e0                                      add r3, sb, r2
0062eb24  04 30 83 e2                                      add r3, r3, #4
0062eb28  02 00 89 e7                                      str r0, [sb, r2]
0062eb2c  00 00 9c e5                                      ldr r0, [ip]
0062eb30  01 10 51 e2                                      subs r1, r1, #1
0062eb34  0c 20 82 e2                                      add r2, r2, #0xc
0062eb38  04 00 83 e4                                      str r0, [r3], #4
0062eb3c  00 00 9e e5                                      ldr r0, [lr]
0062eb40  00 00 83 e5                                      str r0, [r3]
0062eb44  f4 ff ff 1a                                      bne #0x62eb1c
0062eb48  04 00 95 e5                                      ldr r0, [r5, #4]
0062eb4c  00 30 64 e0                                      rsb r3, r4, r0
0062eb50  43 31 a0 e1                                      asr r3, r3, #2
0062eb54  03 e1 83 e0                                      add lr, r3, r3, lsl #2
0062eb58  0e e2 8e e0                                      add lr, lr, lr, lsl #4
0062eb5c  0e e4 8e e0                                      add lr, lr, lr, lsl #8
0062eb60  0e e8 8e e0                                      add lr, lr, lr, lsl #16
0062eb64  8e e0 83 e0                                      add lr, r3, lr, lsl #1
0062eb68  00 00 5e e3                                      cmp lr, #0
0062eb6c  11 00 00 da                                      ble #0x62ebb8
0062eb70  0e 00 a0 e1                                      mov r0, lr
0062eb74  00 30 a0 e3                                      mov r3, #0
0062eb78  03 20 94 e7                                      ldr r2, [r4, r3]
0062eb7c  03 10 84 e0                                      add r1, r4, r3
0062eb80  04 10 81 e2                                      add r1, r1, #4
0062eb84  03 20 87 e7                                      str r2, [r7, r3]
0062eb88  04 c0 91 e4                                      ldr ip, [r1], #4
0062eb8c  03 20 87 e0                                      add r2, r7, r3
0062eb90  04 20 82 e2                                      add r2, r2, #4
0062eb94  04 c0 82 e4                                      str ip, [r2], #4
0062eb98  00 10 91 e5                                      ldr r1, [r1]
0062eb9c  01 00 50 e2                                      subs r0, r0, #1
0062eba0  0c 30 83 e2                                      add r3, r3, #0xc
0062eba4  00 10 82 e5                                      str r1, [r2]
0062eba8  f2 ff ff 1a                                      bne #0x62eb78
0062ebac  0c 30 a0 e3                                      mov r3, #0xc
0062ebb0  93 7e 27 e0                                      mla r7, r3, lr, r7
0062ebb4  04 00 95 e5                                      ldr r0, [r5, #4]
0062ebb8  00 30 95 e5                                      ldr r3, [r5]
0062ebbc  00 00 53 e1                                      cmp r3, r0
0062ebc0  0e 00 00 0a                                      beq #0x62ec00
0062ebc4  0c 20 40 e2                                      sub r2, r0, #0xc
0062ebc8  02 30 63 e0                                      rsb r3, r3, r2
0062ebcc  23 31 a0 e1                                      lsr r3, r3, #2
0062ebd0  03 21 83 e0                                      add r2, r3, r3, lsl #2
0062ebd4  82 22 82 e0                                      add r2, r2, r2, lsl #5
0062ebd8  82 20 83 e0                                      add r2, r3, r2, lsl #1
0062ebdc  82 22 82 e0                                      add r2, r2, r2, lsl #5
0062ebe0  82 17 a0 e1                                      lsl r1, r2, #0xf
0062ebe4  01 20 62 e0                                      rsb r2, r2, r1
0062ebe8  82 30 83 e0                                      add r3, r3, r2, lsl #1
0062ebec  03 31 c3 e3                                      bic r3, r3, #0xc0000000
0062ebf0  0b 20 e0 e3                                      mvn r2, #0xb
0062ebf4  92 03 03 e0                                      mul r3, r2, r3
0062ebf8  02 30 83 e0                                      add r3, r3, r2
0062ebfc  03 00 80 e0                                      add r0, r0, r3
0062ec00  08 80 8a e0                                      add r8, sl, r8
0062ec04  11 86 f3 eb                                      bl #0x310450
0062ec08  80 01 85 e9                                      stmib r5, {r7, r8}
0062ec0c  00 a0 85 e5                                      str sl, [r5]
0062ec10  10 d0 8d e2                                      add sp, sp, #0x10
0062ec14  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0062ec18  0c c0 8d e2                                      add ip, sp, #0xc
0062ec1c  00 c0 8d e5                                      str ip, [sp]
0062ec20  6e fc ff eb                                      bl #0x62dde0
0062ec24  f9 ff ff ea                                      b #0x62ec10
0062ec28  06 20 a0 e1                                      mov r2, r6
0062ec2c  04 10 92 e4                                      ldr r1, [r2], #4
0062ec30  09 30 a0 e1                                      mov r3, sb
0062ec34  0c 70 89 e2                                      add r7, sb, #0xc
0062ec38  04 10 83 e4                                      str r1, [r3], #4
0062ec3c  04 10 96 e5                                      ldr r1, [r6, #4]
0062ec40  04 10 89 e5                                      str r1, [sb, #4]
0062ec44  04 20 92 e5                                      ldr r2, [r2, #4]
0062ec48  04 20 83 e5                                      str r2, [r3, #4]
0062ec4c  bd ff ff ea                                      b #0x62eb48

; FUNCTION 0x0062ec50, declared_size=92, range_size=92, mode=arm
; class-group: std::vector<glitch::collada::CAnimationSet::SBinding, glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada13CAnimationSet8SBindingENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKS3_
; demangled: std::vector<glitch::collada::CAnimationSet::SBinding, glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, glitch::collada::CAnimationSet::SBinding const&)
; decoder-mode: arm
0062ec50  70 00 2d e9                                      push {r4, r5, r6}
0062ec54  04 40 90 e5                                      ldr r4, [r0, #4]
0062ec58  00 50 90 e5                                      ldr r5, [r0]
0062ec5c  02 30 a0 e1                                      mov r3, r2
0062ec60  04 20 65 e0                                      rsb r2, r5, r4
0062ec64  42 21 a0 e1                                      asr r2, r2, #2
0062ec68  02 61 82 e0                                      add r6, r2, r2, lsl #2
0062ec6c  06 62 86 e0                                      add r6, r6, r6, lsl #4
0062ec70  06 64 86 e0                                      add r6, r6, r6, lsl #8
0062ec74  06 68 86 e0                                      add r6, r6, r6, lsl #16
0062ec78  86 20 82 e0                                      add r2, r2, r6, lsl #1
0062ec7c  02 00 51 e1                                      cmp r1, r2
0062ec80  05 00 00 2a                                      bhs #0x62ec9c
0062ec84  0c 30 a0 e3                                      mov r3, #0xc
0062ec88  93 51 25 e0                                      mla r5, r3, r1, r5
0062ec8c  04 00 55 e1                                      cmp r5, r4
0062ec90  04 50 80 15                                      strne r5, [r0, #4]
0062ec94  70 00 bd e8                                      pop {r4, r5, r6}
0062ec98  1e ff 2f e1                                      bx lr
0062ec9c  01 20 62 e0                                      rsb r2, r2, r1
0062eca0  04 10 a0 e1                                      mov r1, r4
0062eca4  70 00 bd e8                                      pop {r4, r5, r6}
0062eca8  56 ff ff ea                                      b #0x62ea08
