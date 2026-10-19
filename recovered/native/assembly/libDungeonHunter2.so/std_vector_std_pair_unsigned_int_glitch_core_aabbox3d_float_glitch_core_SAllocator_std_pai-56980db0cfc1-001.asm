; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005a26f8, declared_size=168, range_size=168, mode=arm
; class-group: std::vector<std::pair<unsigned int, glitch::core::aabbox3d<float> >, glitch::core::SAllocator<std::pair<unsigned int, glitch::core::aabbox3d<float> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorISt4pairIjN6glitch4core8aabbox3dIfEEENS2_10SAllocatorIS5_LNS1_6memory13E_MEMORY_HINTE0EEEEC1Ej
; demangled: std::vector<std::pair<unsigned int, glitch::core::aabbox3d<float> >, glitch::core::SAllocator<std::pair<unsigned int, glitch::core::aabbox3d<float> >, (glitch::memory::E_MEMORY_HINT)0> >::vector(unsigned int)
; decoder-mode: arm
005a26f8  70 40 2d e9                                      push {r4, r5, r6, lr}
005a26fc  1c 60 a0 e3                                      mov r6, #0x1c
005a2700  96 01 06 e0                                      mul r6, r6, r1
005a2704  00 50 a0 e3                                      mov r5, #0
005a2708  00 40 a0 e1                                      mov r4, r0
005a270c  00 50 80 e5                                      str r5, [r0]
005a2710  04 50 80 e5                                      str r5, [r0, #4]
005a2714  08 50 80 e5                                      str r5, [r0, #8]
005a2718  05 10 a0 e1                                      mov r1, r5
005a271c  06 00 a0 e1                                      mov r0, r6
005a2720  90 b7 f5 eb                                      bl #0x310568
005a2724  06 60 80 e0                                      add r6, r0, r6
005a2728  06 20 60 e0                                      rsb r2, r0, r6
005a272c  42 21 a0 e1                                      asr r2, r2, #2
005a2730  00 00 84 e5                                      str r0, [r4]
005a2734  82 31 82 e0                                      add r3, r2, r2, lsl #3
005a2738  04 00 84 e5                                      str r0, [r4, #4]
005a273c  03 33 83 e0                                      add r3, r3, r3, lsl #6
005a2740  08 60 84 e5                                      str r6, [r4, #8]
005a2744  83 31 82 e0                                      add r3, r2, r3, lsl #3
005a2748  83 37 83 e0                                      add r3, r3, r3, lsl #15
005a274c  83 31 82 e0                                      add r3, r2, r3, lsl #3
005a2750  00 30 63 e2                                      rsb r3, r3, #0
005a2754  05 00 53 e1                                      cmp r3, r5
005a2758  0d 00 00 da                                      ble #0x5a2794
005a275c  bf 14 a0 e3                                      mov r1, #0xbf000000
005a2760  02 15 81 e2                                      add r1, r1, #0x800000
005a2764  fe 25 a0 e3                                      mov r2, #0x3f800000
005a2768  1c 00 80 e2                                      add r0, r0, #0x1c
005a276c  01 30 53 e2                                      subs r3, r3, #1
005a2770  1c 50 00 e5                                      str r5, [r0, #-0x1c]
005a2774  18 10 00 e5                                      str r1, [r0, #-0x18]
005a2778  14 10 00 e5                                      str r1, [r0, #-0x14]
005a277c  10 10 00 e5                                      str r1, [r0, #-0x10]
005a2780  0c 20 00 e5                                      str r2, [r0, #-0xc]
005a2784  08 20 00 e5                                      str r2, [r0, #-8]
005a2788  04 20 00 e5                                      str r2, [r0, #-4]
005a278c  1c 00 80 e2                                      add r0, r0, #0x1c
005a2790  f5 ff ff 1a                                      bne #0x5a276c
005a2794  04 60 84 e5                                      str r6, [r4, #4]
005a2798  04 00 a0 e1                                      mov r0, r4
005a279c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005a2f90, declared_size=400, range_size=400, mode=arm
; class-group: std::vector<std::pair<unsigned int, glitch::core::aabbox3d<float> >, glitch::core::SAllocator<std::pair<unsigned int, glitch::core::aabbox3d<float> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorISt4pairIjN6glitch4core8aabbox3dIfEEENS2_10SAllocatorIS5_LNS1_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS5_RKS5_RKSt12__false_typejb.clone.6
; demangled: std::vector<std::pair<unsigned int, glitch::core::aabbox3d<float> >, glitch::core::SAllocator<std::pair<unsigned int, glitch::core::aabbox3d<float> >, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(std::pair<unsigned int, glitch::core::aabbox3d<float> >*, std::pair<unsigned int, glitch::core::aabbox3d<float> > const&, std::__false_type const&, unsigned int, bool) [clone .clone.6]
; decoder-mode: arm
005a2f90  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005a2f94  00 40 a0 e1                                      mov r4, r0
005a2f98  01 10 90 e8                                      ldm r0, {r0, ip}
005a2f9c  01 50 a0 e1                                      mov r5, r1
005a2fa0  49 32 09 e3                                      movw r3, #0x9249
005a2fa4  0c 00 60 e0                                      rsb r0, r0, ip
005a2fa8  40 01 a0 e1                                      asr r0, r0, #2
005a2fac  03 36 83 e1                                      orr r3, r3, r3, lsl #12
005a2fb0  80 11 80 e0                                      add r1, r0, r0, lsl #3
005a2fb4  02 70 a0 e1                                      mov r7, r2
005a2fb8  01 13 81 e0                                      add r1, r1, r1, lsl #6
005a2fbc  81 11 80 e0                                      add r1, r0, r1, lsl #3
005a2fc0  81 17 81 e0                                      add r1, r1, r1, lsl #15
005a2fc4  81 01 80 e0                                      add r0, r0, r1, lsl #3
005a2fc8  00 00 60 e2                                      rsb r0, r0, #0
005a2fcc  01 00 50 e3                                      cmp r0, #1
005a2fd0  00 20 80 20                                      addhs r2, r0, r0
005a2fd4  01 20 80 32                                      addlo r2, r0, #1
005a2fd8  03 00 52 e1                                      cmp r2, r3
005a2fdc  01 00 00 8a                                      bhi #0x5a2fe8
005a2fe0  02 00 50 e1                                      cmp r0, r2
005a2fe4  4a 00 00 9a                                      bls #0x5a3114
005a2fe8  03 60 e0 e3                                      mvn r6, #3
005a2fec  06 00 a0 e1                                      mov r0, r6
005a2ff0  00 10 a0 e3                                      mov r1, #0
005a2ff4  5b b5 f5 eb                                      bl #0x310568
005a2ff8  00 20 94 e5                                      ldr r2, [r4]
005a2ffc  00 80 a0 e1                                      mov r8, r0
005a3000  05 50 62 e0                                      rsb r5, r2, r5
005a3004  45 51 a0 e1                                      asr r5, r5, #2
005a3008  85 c1 85 e0                                      add ip, r5, r5, lsl #3
005a300c  0c c3 8c e0                                      add ip, ip, ip, lsl #6
005a3010  8c c1 85 e0                                      add ip, r5, ip, lsl #3
005a3014  8c c7 8c e0                                      add ip, ip, ip, lsl #15
005a3018  8c c1 85 e0                                      add ip, r5, ip, lsl #3
005a301c  00 c0 6c e2                                      rsb ip, ip, #0
005a3020  00 00 5c e3                                      cmp ip, #0
005a3024  00 c0 a0 d1                                      movle ip, r0
005a3028  16 00 00 da                                      ble #0x5a3088
005a302c  1c 20 82 e2                                      add r2, r2, #0x1c
005a3030  1c 30 80 e2                                      add r3, r0, #0x1c
005a3034  0c 10 a0 e1                                      mov r1, ip
005a3038  1c 00 12 e5                                      ldr r0, [r2, #-0x1c]
005a303c  01 10 51 e2                                      subs r1, r1, #1
005a3040  1c 00 03 e5                                      str r0, [r3, #-0x1c]
005a3044  18 00 12 e5                                      ldr r0, [r2, #-0x18]
005a3048  18 00 03 e5                                      str r0, [r3, #-0x18]
005a304c  14 00 12 e5                                      ldr r0, [r2, #-0x14]
005a3050  14 00 03 e5                                      str r0, [r3, #-0x14]
005a3054  10 00 12 e5                                      ldr r0, [r2, #-0x10]
005a3058  10 00 03 e5                                      str r0, [r3, #-0x10]
005a305c  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
005a3060  0c 00 03 e5                                      str r0, [r3, #-0xc]
005a3064  08 00 12 e5                                      ldr r0, [r2, #-8]
005a3068  08 00 03 e5                                      str r0, [r3, #-8]
005a306c  04 00 12 e5                                      ldr r0, [r2, #-4]
005a3070  1c 20 82 e2                                      add r2, r2, #0x1c
005a3074  04 00 03 e5                                      str r0, [r3, #-4]
005a3078  1c 30 83 e2                                      add r3, r3, #0x1c
005a307c  ed ff ff 1a                                      bne #0x5a3038
005a3080  1c 30 a0 e3                                      mov r3, #0x1c
005a3084  93 8c 2c e0                                      mla ip, r3, ip, r8
005a3088  00 30 97 e5                                      ldr r3, [r7]
005a308c  1c 50 8c e2                                      add r5, ip, #0x1c
005a3090  00 30 8c e5                                      str r3, [ip]
005a3094  04 30 97 e5                                      ldr r3, [r7, #4]
005a3098  04 30 8c e5                                      str r3, [ip, #4]
005a309c  08 30 97 e5                                      ldr r3, [r7, #8]
005a30a0  08 30 8c e5                                      str r3, [ip, #8]
005a30a4  0c 30 97 e5                                      ldr r3, [r7, #0xc]
005a30a8  0c 30 8c e5                                      str r3, [ip, #0xc]
005a30ac  10 30 97 e5                                      ldr r3, [r7, #0x10]
005a30b0  10 30 8c e5                                      str r3, [ip, #0x10]
005a30b4  14 30 97 e5                                      ldr r3, [r7, #0x14]
005a30b8  14 30 8c e5                                      str r3, [ip, #0x14]
005a30bc  18 30 97 e5                                      ldr r3, [r7, #0x18]
005a30c0  18 30 8c e5                                      str r3, [ip, #0x18]
005a30c4  04 00 94 e5                                      ldr r0, [r4, #4]
005a30c8  00 20 94 e5                                      ldr r2, [r4]
005a30cc  02 00 50 e1                                      cmp r0, r2
005a30d0  0a 00 00 0a                                      beq #0x5a3100
005a30d4  1c 30 40 e2                                      sub r3, r0, #0x1c
005a30d8  03 20 62 e0                                      rsb r2, r2, r3
005a30dc  b7 3d 06 e3                                      movw r3, #0x6db7
005a30e0  22 21 a0 e1                                      lsr r2, r2, #2
005a30e4  db 36 43 e3                                      movt r3, #0x36db
005a30e8  93 02 03 e0                                      mul r3, r3, r2
005a30ec  1b 20 e0 e3                                      mvn r2, #0x1b
005a30f0  03 31 c3 e3                                      bic r3, r3, #0xc0000000
005a30f4  92 03 03 e0                                      mul r3, r2, r3
005a30f8  02 30 83 e0                                      add r3, r3, r2
005a30fc  03 00 80 e0                                      add r0, r0, r3
005a3100  06 60 88 e0                                      add r6, r8, r6
005a3104  d1 b4 f5 eb                                      bl #0x310450
005a3108  60 00 84 e9                                      stmib r4, {r5, r6}
005a310c  00 80 84 e5                                      str r8, [r4]
005a3110  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005a3114  1c 60 a0 e3                                      mov r6, #0x1c
005a3118  96 02 06 e0                                      mul r6, r6, r2
005a311c  b2 ff ff ea                                      b #0x5a2fec
