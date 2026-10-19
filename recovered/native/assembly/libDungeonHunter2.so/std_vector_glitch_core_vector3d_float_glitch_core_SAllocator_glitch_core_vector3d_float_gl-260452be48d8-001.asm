; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005a27a0, declared_size=208, range_size=208, mode=arm
; class-group: std::vector<glitch::core::vector3d<float>, glitch::core::SAllocator<glitch::core::vector3d<float>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core8vector3dIfEENS1_10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEEC1ERKS8_
; demangled: std::vector<glitch::core::vector3d<float>, glitch::core::SAllocator<glitch::core::vector3d<float>, (glitch::memory::E_MEMORY_HINT)0> >::vector(std::vector<glitch::core::vector3d<float>, glitch::core::SAllocator<glitch::core::vector3d<float>, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
005a27a0  70 40 2d e9                                      push {r4, r5, r6, lr}
005a27a4  04 20 91 e5                                      ldr r2, [r1, #4]
005a27a8  00 30 91 e5                                      ldr r3, [r1]
005a27ac  01 50 a0 e1                                      mov r5, r1
005a27b0  00 10 a0 e3                                      mov r1, #0
005a27b4  02 30 63 e0                                      rsb r3, r3, r2
005a27b8  43 31 a0 e1                                      asr r3, r3, #2
005a27bc  00 40 a0 e1                                      mov r4, r0
005a27c0  03 61 83 e0                                      add r6, r3, r3, lsl #2
005a27c4  00 10 80 e5                                      str r1, [r0]
005a27c8  06 62 86 e0                                      add r6, r6, r6, lsl #4
005a27cc  04 10 80 e5                                      str r1, [r0, #4]
005a27d0  06 64 86 e0                                      add r6, r6, r6, lsl #8
005a27d4  08 10 80 e5                                      str r1, [r0, #8]
005a27d8  06 68 86 e0                                      add r6, r6, r6, lsl #16
005a27dc  86 30 83 e0                                      add r3, r3, r6, lsl #1
005a27e0  0c 60 a0 e3                                      mov r6, #0xc
005a27e4  96 03 06 e0                                      mul r6, r6, r3
005a27e8  06 00 a0 e1                                      mov r0, r6
005a27ec  5d b7 f5 eb                                      bl #0x310568
005a27f0  06 60 80 e0                                      add r6, r0, r6
005a27f4  08 60 84 e5                                      str r6, [r4, #8]
005a27f8  00 00 84 e5                                      str r0, [r4]
005a27fc  04 00 84 e5                                      str r0, [r4, #4]
005a2800  04 20 95 e5                                      ldr r2, [r5, #4]
005a2804  00 30 95 e5                                      ldr r3, [r5]
005a2808  02 20 63 e0                                      rsb r2, r3, r2
005a280c  42 21 a0 e1                                      asr r2, r2, #2
005a2810  02 51 82 e0                                      add r5, r2, r2, lsl #2
005a2814  05 52 85 e0                                      add r5, r5, r5, lsl #4
005a2818  05 54 85 e0                                      add r5, r5, r5, lsl #8
005a281c  05 58 85 e0                                      add r5, r5, r5, lsl #16
005a2820  85 50 82 e0                                      add r5, r2, r5, lsl #1
005a2824  00 00 55 e3                                      cmp r5, #0
005a2828  0d 00 00 da                                      ble #0x5a2864
005a282c  05 10 a0 e1                                      mov r1, r5
005a2830  00 20 a0 e1                                      mov r2, r0
005a2834  00 c0 93 e5                                      ldr ip, [r3]
005a2838  01 10 51 e2                                      subs r1, r1, #1
005a283c  00 c0 82 e5                                      str ip, [r2]
005a2840  04 c0 93 e5                                      ldr ip, [r3, #4]
005a2844  04 c0 82 e5                                      str ip, [r2, #4]
005a2848  08 c0 93 e5                                      ldr ip, [r3, #8]
005a284c  0c 30 83 e2                                      add r3, r3, #0xc
005a2850  08 c0 82 e5                                      str ip, [r2, #8]
005a2854  0c 20 82 e2                                      add r2, r2, #0xc
005a2858  f5 ff ff 1a                                      bne #0x5a2834
005a285c  0c 30 a0 e3                                      mov r3, #0xc
005a2860  93 05 20 e0                                      mla r0, r3, r5, r0
005a2864  04 00 84 e5                                      str r0, [r4, #4]
005a2868  04 00 a0 e1                                      mov r0, r4
005a286c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005a28e4, declared_size=564, range_size=564, mode=arm
; class-group: std::vector<glitch::core::vector3d<float>, glitch::core::SAllocator<glitch::core::vector3d<float>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core8vector3dIfEENS1_10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEEaSERKS8_
; demangled: std::vector<glitch::core::vector3d<float>, glitch::core::SAllocator<glitch::core::vector3d<float>, (glitch::memory::E_MEMORY_HINT)0> >::operator=(std::vector<glitch::core::vector3d<float>, glitch::core::SAllocator<glitch::core::vector3d<float>, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
005a28e4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005a28e8  00 00 51 e1                                      cmp r1, r0
005a28ec  0c d0 4d e2                                      sub sp, sp, #0xc
005a28f0  00 40 a0 e1                                      mov r4, r0
005a28f4  2e 00 00 0a                                      beq #0x5a29b4
005a28f8  00 c0 90 e5                                      ldr ip, [r0]
005a28fc  0c 00 91 e8                                      ldm r1, {r2, r3}
005a2900  08 60 90 e5                                      ldr r6, [r0, #8]
005a2904  0c 80 a0 e1                                      mov r8, ip
005a2908  03 70 62 e0                                      rsb r7, r2, r3
005a290c  06 60 6c e0                                      rsb r6, ip, r6
005a2910  47 71 a0 e1                                      asr r7, r7, #2
005a2914  46 61 a0 e1                                      asr r6, r6, #2
005a2918  07 51 87 e0                                      add r5, r7, r7, lsl #2
005a291c  06 a1 86 e0                                      add sl, r6, r6, lsl #2
005a2920  05 52 85 e0                                      add r5, r5, r5, lsl #4
005a2924  0a a2 8a e0                                      add sl, sl, sl, lsl #4
005a2928  05 54 85 e0                                      add r5, r5, r5, lsl #8
005a292c  0a a4 8a e0                                      add sl, sl, sl, lsl #8
005a2930  05 58 85 e0                                      add r5, r5, r5, lsl #16
005a2934  0a a8 8a e0                                      add sl, sl, sl, lsl #16
005a2938  85 50 87 e0                                      add r5, r7, r5, lsl #1
005a293c  8a 60 86 e0                                      add r6, r6, sl, lsl #1
005a2940  06 00 55 e1                                      cmp r5, r6
005a2944  05 60 a0 e1                                      mov r6, r5
005a2948  54 00 00 8a                                      bhi #0x5a2aa0
005a294c  04 a0 90 e5                                      ldr sl, [r0, #4]
005a2950  0a 70 6c e0                                      rsb r7, ip, sl
005a2954  47 71 a0 e1                                      asr r7, r7, #2
005a2958  07 01 87 e0                                      add r0, r7, r7, lsl #2
005a295c  00 02 80 e0                                      add r0, r0, r0, lsl #4
005a2960  00 04 80 e0                                      add r0, r0, r0, lsl #8
005a2964  00 08 80 e0                                      add r0, r0, r0, lsl #16
005a2968  80 70 87 e0                                      add r7, r7, r0, lsl #1
005a296c  07 00 55 e1                                      cmp r5, r7
005a2970  12 00 00 8a                                      bhi #0x5a29c0
005a2974  00 00 55 e3                                      cmp r5, #0
005a2978  0a 00 00 da                                      ble #0x5a29a8
005a297c  00 30 92 e5                                      ldr r3, [r2]
005a2980  01 60 56 e2                                      subs r6, r6, #1
005a2984  00 30 8c e5                                      str r3, [ip]
005a2988  04 30 92 e5                                      ldr r3, [r2, #4]
005a298c  04 30 8c e5                                      str r3, [ip, #4]
005a2990  08 30 92 e5                                      ldr r3, [r2, #8]
005a2994  0c 20 82 e2                                      add r2, r2, #0xc
005a2998  08 30 8c e5                                      str r3, [ip, #8]
005a299c  0c c0 8c e2                                      add ip, ip, #0xc
005a29a0  f5 ff ff 1a                                      bne #0x5a297c
005a29a4  00 80 94 e5                                      ldr r8, [r4]
005a29a8  0c c0 a0 e3                                      mov ip, #0xc
005a29ac  9c 85 28 e0                                      mla r8, ip, r5, r8
005a29b0  04 80 84 e5                                      str r8, [r4, #4]
005a29b4  04 00 a0 e1                                      mov r0, r4
005a29b8  0c d0 8d e2                                      add sp, sp, #0xc
005a29bc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
005a29c0  0c 00 a0 e3                                      mov r0, #0xc
005a29c4  90 27 20 e0                                      mla r0, r0, r7, r2
005a29c8  00 70 62 e0                                      rsb r7, r2, r0
005a29cc  47 71 a0 e1                                      asr r7, r7, #2
005a29d0  07 61 87 e0                                      add r6, r7, r7, lsl #2
005a29d4  06 62 86 e0                                      add r6, r6, r6, lsl #4
005a29d8  06 64 86 e0                                      add r6, r6, r6, lsl #8
005a29dc  06 68 86 e0                                      add r6, r6, r6, lsl #16
005a29e0  86 60 87 e0                                      add r6, r7, r6, lsl #1
005a29e4  00 00 56 e3                                      cmp r6, #0
005a29e8  0a 20 a0 d1                                      movle r2, sl
005a29ec  16 00 00 da                                      ble #0x5a2a4c
005a29f0  00 30 92 e5                                      ldr r3, [r2]
005a29f4  01 60 56 e2                                      subs r6, r6, #1
005a29f8  00 30 8c e5                                      str r3, [ip]
005a29fc  04 30 92 e5                                      ldr r3, [r2, #4]
005a2a00  04 30 8c e5                                      str r3, [ip, #4]
005a2a04  08 30 92 e5                                      ldr r3, [r2, #8]
005a2a08  0c 20 82 e2                                      add r2, r2, #0xc
005a2a0c  08 30 8c e5                                      str r3, [ip, #8]
005a2a10  0c c0 8c e2                                      add ip, ip, #0xc
005a2a14  f5 ff ff 1a                                      bne #0x5a29f0
005a2a18  04 20 94 e5                                      ldr r2, [r4, #4]
005a2a1c  00 c0 94 e5                                      ldr ip, [r4]
005a2a20  00 70 91 e5                                      ldr r7, [r1]
005a2a24  04 30 91 e5                                      ldr r3, [r1, #4]
005a2a28  02 60 6c e0                                      rsb r6, ip, r2
005a2a2c  46 61 a0 e1                                      asr r6, r6, #2
005a2a30  0c 00 a0 e3                                      mov r0, #0xc
005a2a34  06 11 86 e0                                      add r1, r6, r6, lsl #2
005a2a38  01 12 81 e0                                      add r1, r1, r1, lsl #4
005a2a3c  01 14 81 e0                                      add r1, r1, r1, lsl #8
005a2a40  01 18 81 e0                                      add r1, r1, r1, lsl #16
005a2a44  81 60 86 e0                                      add r6, r6, r1, lsl #1
005a2a48  90 76 20 e0                                      mla r0, r0, r6, r7
005a2a4c  03 30 60 e0                                      rsb r3, r0, r3
005a2a50  43 11 a0 e1                                      asr r1, r3, #2
005a2a54  01 31 81 e0                                      add r3, r1, r1, lsl #2
005a2a58  03 32 83 e0                                      add r3, r3, r3, lsl #4
005a2a5c  03 34 83 e0                                      add r3, r3, r3, lsl #8
005a2a60  03 38 83 e0                                      add r3, r3, r3, lsl #16
005a2a64  83 30 81 e0                                      add r3, r1, r3, lsl #1
005a2a68  00 00 53 e3                                      cmp r3, #0
005a2a6c  0c 80 a0 d1                                      movle r8, ip
005a2a70  cc ff ff da                                      ble #0x5a29a8
005a2a74  00 10 90 e5                                      ldr r1, [r0]
005a2a78  01 30 53 e2                                      subs r3, r3, #1
005a2a7c  00 10 82 e5                                      str r1, [r2]
005a2a80  04 10 90 e5                                      ldr r1, [r0, #4]
005a2a84  04 10 82 e5                                      str r1, [r2, #4]
005a2a88  08 10 90 e5                                      ldr r1, [r0, #8]
005a2a8c  0c 00 80 e2                                      add r0, r0, #0xc
005a2a90  08 10 82 e5                                      str r1, [r2, #8]
005a2a94  0c 20 82 e2                                      add r2, r2, #0xc
005a2a98  f5 ff ff 1a                                      bne #0x5a2a74
005a2a9c  c0 ff ff ea                                      b #0x5a29a4
005a2aa0  08 10 8d e2                                      add r1, sp, #8
005a2aa4  04 50 21 e5                                      str r5, [r1, #-4]!
005a2aa8  70 ff ff eb                                      bl #0x5a2870
005a2aac  00 30 94 e5                                      ldr r3, [r4]
005a2ab0  00 80 a0 e1                                      mov r8, r0
005a2ab4  04 00 94 e5                                      ldr r0, [r4, #4]
005a2ab8  03 00 50 e1                                      cmp r0, r3
005a2abc  0e 00 00 0a                                      beq #0x5a2afc
005a2ac0  0c 20 40 e2                                      sub r2, r0, #0xc
005a2ac4  02 30 63 e0                                      rsb r3, r3, r2
005a2ac8  23 31 a0 e1                                      lsr r3, r3, #2
005a2acc  03 21 83 e0                                      add r2, r3, r3, lsl #2
005a2ad0  82 22 82 e0                                      add r2, r2, r2, lsl #5
005a2ad4  82 20 83 e0                                      add r2, r3, r2, lsl #1
005a2ad8  82 22 82 e0                                      add r2, r2, r2, lsl #5
005a2adc  82 17 a0 e1                                      lsl r1, r2, #0xf
005a2ae0  01 20 62 e0                                      rsb r2, r2, r1
005a2ae4  82 30 83 e0                                      add r3, r3, r2, lsl #1
005a2ae8  03 31 c3 e3                                      bic r3, r3, #0xc0000000
005a2aec  0b 20 e0 e3                                      mvn r2, #0xb
005a2af0  92 03 03 e0                                      mul r3, r2, r3
005a2af4  02 30 83 e0                                      add r3, r3, r2
005a2af8  03 00 80 e0                                      add r0, r0, r3
005a2afc  53 b6 f5 eb                                      bl #0x310450
005a2b00  04 30 9d e5                                      ldr r3, [sp, #4]
005a2b04  0c 20 a0 e3                                      mov r2, #0xc
005a2b08  00 80 84 e5                                      str r8, [r4]
005a2b0c  92 83 23 e0                                      mla r3, r2, r3, r8
005a2b10  08 30 84 e5                                      str r3, [r4, #8]
005a2b14  a3 ff ff ea                                      b #0x5a29a8

; FUNCTION 0x006b97d4, declared_size=340, range_size=340, mode=arm
; class-group: std::vector<glitch::core::vector3d<float>, glitch::core::SAllocator<glitch::core::vector3d<float>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core8vector3dIfEENS1_10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS3_RKS3_RKSt12__false_typejb.clone.1
; demangled: std::vector<glitch::core::vector3d<float>, glitch::core::SAllocator<glitch::core::vector3d<float>, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(glitch::core::vector3d<float>*, glitch::core::vector3d<float> const&, std::__false_type const&, unsigned int, bool) [clone .clone.1]
; decoder-mode: arm
006b97d4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006b97d8  00 40 a0 e1                                      mov r4, r0
006b97dc  01 10 90 e8                                      ldm r0, {r0, ip}
006b97e0  01 50 a0 e1                                      mov r5, r1
006b97e4  55 35 05 e3                                      movw r3, #0x5555
006b97e8  0c 00 60 e0                                      rsb r0, r0, ip
006b97ec  40 01 a0 e1                                      asr r0, r0, #2
006b97f0  03 37 83 e1                                      orr r3, r3, r3, lsl #14
006b97f4  00 11 80 e0                                      add r1, r0, r0, lsl #2
006b97f8  02 70 a0 e1                                      mov r7, r2
006b97fc  01 12 81 e0                                      add r1, r1, r1, lsl #4
006b9800  01 14 81 e0                                      add r1, r1, r1, lsl #8
006b9804  01 18 81 e0                                      add r1, r1, r1, lsl #16
006b9808  81 00 80 e0                                      add r0, r0, r1, lsl #1
006b980c  01 00 50 e3                                      cmp r0, #1
006b9810  00 20 80 20                                      addhs r2, r0, r0
006b9814  01 20 80 32                                      addlo r2, r0, #1
006b9818  03 00 52 e1                                      cmp r2, r3
006b981c  01 00 00 8a                                      bhi #0x6b9828
006b9820  02 00 50 e1                                      cmp r0, r2
006b9824  3c 00 00 9a                                      bls #0x6b991c
006b9828  03 60 e0 e3                                      mvn r6, #3
006b982c  06 00 a0 e1                                      mov r0, r6
006b9830  00 10 a0 e3                                      mov r1, #0
006b9834  4b 5b f1 eb                                      bl #0x310568
006b9838  00 30 94 e5                                      ldr r3, [r4]
006b983c  00 80 a0 e1                                      mov r8, r0
006b9840  05 50 63 e0                                      rsb r5, r3, r5
006b9844  45 51 a0 e1                                      asr r5, r5, #2
006b9848  05 21 85 e0                                      add r2, r5, r5, lsl #2
006b984c  02 22 82 e0                                      add r2, r2, r2, lsl #4
006b9850  02 24 82 e0                                      add r2, r2, r2, lsl #8
006b9854  02 28 82 e0                                      add r2, r2, r2, lsl #16
006b9858  82 50 85 e0                                      add r5, r5, r2, lsl #1
006b985c  00 00 55 e3                                      cmp r5, #0
006b9860  00 30 a0 d1                                      movle r3, r0
006b9864  0d 00 00 da                                      ble #0x6b98a0
006b9868  05 10 a0 e1                                      mov r1, r5
006b986c  00 20 a0 e1                                      mov r2, r0
006b9870  00 00 93 e5                                      ldr r0, [r3]
006b9874  01 10 51 e2                                      subs r1, r1, #1
006b9878  00 00 82 e5                                      str r0, [r2]
006b987c  04 00 93 e5                                      ldr r0, [r3, #4]
006b9880  04 00 82 e5                                      str r0, [r2, #4]
006b9884  08 00 93 e5                                      ldr r0, [r3, #8]
006b9888  0c 30 83 e2                                      add r3, r3, #0xc
006b988c  08 00 82 e5                                      str r0, [r2, #8]
006b9890  0c 20 82 e2                                      add r2, r2, #0xc
006b9894  f5 ff ff 1a                                      bne #0x6b9870
006b9898  0c 30 a0 e3                                      mov r3, #0xc
006b989c  93 85 23 e0                                      mla r3, r3, r5, r8
006b98a0  00 20 97 e5                                      ldr r2, [r7]
006b98a4  0c 50 83 e2                                      add r5, r3, #0xc
006b98a8  00 20 83 e5                                      str r2, [r3]
006b98ac  04 20 97 e5                                      ldr r2, [r7, #4]
006b98b0  04 20 83 e5                                      str r2, [r3, #4]
006b98b4  08 20 97 e5                                      ldr r2, [r7, #8]
006b98b8  08 20 83 e5                                      str r2, [r3, #8]
006b98bc  04 00 94 e5                                      ldr r0, [r4, #4]
006b98c0  00 20 94 e5                                      ldr r2, [r4]
006b98c4  02 00 50 e1                                      cmp r0, r2
006b98c8  0e 00 00 0a                                      beq #0x6b9908
006b98cc  0c 30 40 e2                                      sub r3, r0, #0xc
006b98d0  03 30 62 e0                                      rsb r3, r2, r3
006b98d4  23 31 a0 e1                                      lsr r3, r3, #2
006b98d8  03 21 83 e0                                      add r2, r3, r3, lsl #2
006b98dc  82 22 82 e0                                      add r2, r2, r2, lsl #5
006b98e0  82 20 83 e0                                      add r2, r3, r2, lsl #1
006b98e4  82 22 82 e0                                      add r2, r2, r2, lsl #5
006b98e8  82 17 a0 e1                                      lsl r1, r2, #0xf
006b98ec  01 20 62 e0                                      rsb r2, r2, r1
006b98f0  82 30 83 e0                                      add r3, r3, r2, lsl #1
006b98f4  03 31 c3 e3                                      bic r3, r3, #0xc0000000
006b98f8  0b 20 e0 e3                                      mvn r2, #0xb
006b98fc  92 03 03 e0                                      mul r3, r2, r3
006b9900  02 30 83 e0                                      add r3, r3, r2
006b9904  03 00 80 e0                                      add r0, r0, r3
006b9908  06 60 88 e0                                      add r6, r8, r6
006b990c  cf 5a f1 eb                                      bl #0x310450
006b9910  60 00 84 e9                                      stmib r4, {r5, r6}
006b9914  00 80 84 e5                                      str r8, [r4]
006b9918  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006b991c  0c 60 a0 e3                                      mov r6, #0xc
006b9920  96 02 06 e0                                      mul r6, r6, r2
006b9924  c0 ff ff ea                                      b #0x6b982c
