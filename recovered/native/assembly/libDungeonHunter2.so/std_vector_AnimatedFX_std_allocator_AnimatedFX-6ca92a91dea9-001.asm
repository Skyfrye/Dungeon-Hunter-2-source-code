; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00493a74, declared_size=128, range_size=128, mode=arm
; class-group: std::vector<AnimatedFX*, std::allocator<AnimatedFX*> >
; alias: _ZNSt6vectorIP10AnimatedFXSaIS1_EEC2ERKS3_
; demangled: std::vector<AnimatedFX*, std::allocator<AnimatedFX*> >::vector(std::vector<AnimatedFX*, std::allocator<AnimatedFX*> > const&)
; decoder-mode: arm
00493a74  30 40 2d e9                                      push {r4, r5, lr}
00493a78  01 50 a0 e1                                      mov r5, r1
00493a7c  00 30 95 e5                                      ldr r3, [r5]
00493a80  04 10 91 e5                                      ldr r1, [r1, #4]
00493a84  0c d0 4d e2                                      sub sp, sp, #0xc
00493a88  00 40 a0 e1                                      mov r4, r0
00493a8c  01 10 63 e0                                      rsb r1, r3, r1
00493a90  00 c0 a0 e3                                      mov ip, #0
00493a94  41 11 a0 e1                                      asr r1, r1, #2
00493a98  08 20 8d e2                                      add r2, sp, #8
00493a9c  04 10 22 e5                                      str r1, [r2, #-4]!
00493aa0  00 c0 84 e5                                      str ip, [r4]
00493aa4  04 c0 84 e5                                      str ip, [r4, #4]
00493aa8  08 c0 a0 e5                                      str ip, [r0, #8]!
00493aac  c5 ff ff eb                                      bl #0x4939c8
00493ab0  04 20 9d e5                                      ldr r2, [sp, #4]
00493ab4  00 00 84 e5                                      str r0, [r4]
00493ab8  04 00 84 e5                                      str r0, [r4, #4]
00493abc  02 21 80 e0                                      add r2, r0, r2, lsl #2
00493ac0  08 20 84 e5                                      str r2, [r4, #8]
00493ac4  06 00 95 e8                                      ldm r5, {r1, r2}
00493ac8  00 30 a0 e1                                      mov r3, r0
00493acc  02 00 51 e1                                      cmp r1, r2
00493ad0  03 00 00 0a                                      beq #0x493ae4
00493ad4  02 50 61 e0                                      rsb r5, r1, r2
00493ad8  05 20 a0 e1                                      mov r2, r5
00493adc  61 eb f9 eb                                      bl #0x30e868
00493ae0  05 30 80 e0                                      add r3, r0, r5
00493ae4  04 30 84 e5                                      str r3, [r4, #4]
00493ae8  04 00 a0 e1                                      mov r0, r4
00493aec  0c d0 8d e2                                      add sp, sp, #0xc
00493af0  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00493e50, declared_size=312, range_size=312, mode=arm
; class-group: std::vector<AnimatedFX*, std::allocator<AnimatedFX*> >
; alias: _ZNSt6vectorIP10AnimatedFXSaIS1_EEaSERKS3_
; demangled: std::vector<AnimatedFX*, std::allocator<AnimatedFX*> >::operator=(std::vector<AnimatedFX*, std::allocator<AnimatedFX*> > const&)
; decoder-mode: arm
00493e50  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00493e54  00 00 51 e1                                      cmp r1, r0
00493e58  0c d0 4d e2                                      sub sp, sp, #0xc
00493e5c  01 60 a0 e1                                      mov r6, r1
00493e60  00 40 a0 e1                                      mov r4, r0
00493e64  10 00 00 0a                                      beq #0x493eac
00493e68  0c 00 91 e8                                      ldm r1, {r2, r3}
00493e6c  00 70 90 e5                                      ldr r7, [r0]
00493e70  08 10 90 e5                                      ldr r1, [r0, #8]
00493e74  03 c0 62 e0                                      rsb ip, r2, r3
00493e78  4c 51 a0 e1                                      asr r5, ip, #2
00493e7c  01 10 67 e0                                      rsb r1, r7, r1
00493e80  41 01 55 e1                                      cmp r5, r1, asr #2
00493e84  16 00 00 8a                                      bhi #0x493ee4
00493e88  04 00 90 e5                                      ldr r0, [r0, #4]
00493e8c  00 10 67 e0                                      rsb r1, r7, r0
00493e90  41 11 a0 e1                                      asr r1, r1, #2
00493e94  01 00 55 e1                                      cmp r5, r1
00493e98  06 00 00 8a                                      bhi #0x493eb8
00493e9c  00 00 5c e3                                      cmp ip, #0
00493ea0  23 00 00 1a                                      bne #0x493f34
00493ea4  05 51 87 e0                                      add r5, r7, r5, lsl #2
00493ea8  04 50 84 e5                                      str r5, [r4, #4]
00493eac  04 00 a0 e1                                      mov r0, r4
00493eb0  0c d0 8d e2                                      add sp, sp, #0xc
00493eb4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00493eb8  01 11 82 e0                                      add r1, r2, r1, lsl #2
00493ebc  02 c0 51 e0                                      subs ip, r1, r2
00493ec0  23 00 00 1a                                      bne #0x493f54
00493ec4  03 00 51 e1                                      cmp r1, r3
00493ec8  f5 ff ff 0a                                      beq #0x493ea4
00493ecc  03 20 61 e0                                      rsb r2, r1, r3
00493ed0  64 ea f9 eb                                      bl #0x30e868
00493ed4  00 70 94 e5                                      ldr r7, [r4]
00493ed8  05 51 87 e0                                      add r5, r7, r5, lsl #2
00493edc  04 50 84 e5                                      str r5, [r4, #4]
00493ee0  f1 ff ff ea                                      b #0x493eac
00493ee4  08 10 8d e2                                      add r1, sp, #8
00493ee8  04 50 21 e5                                      str r5, [r1, #-4]!
00493eec  d1 fe ff eb                                      bl #0x493a38
00493ef0  00 70 a0 e1                                      mov r7, r0
00493ef4  00 00 94 e5                                      ldr r0, [r4]
00493ef8  08 10 94 e5                                      ldr r1, [r4, #8]
00493efc  00 00 50 e3                                      cmp r0, #0
00493f00  04 00 00 0a                                      beq #0x493f18
00493f04  01 10 60 e0                                      rsb r1, r0, r1
00493f08  03 10 c1 e3                                      bic r1, r1, #3
00493f0c  80 00 51 e3                                      cmp r1, #0x80
00493f10  1a 00 00 8a                                      bhi #0x493f80
00493f14  f9 d3 09 eb                                      bl #0x708f00
00493f18  04 30 9d e5                                      ldr r3, [sp, #4]
00493f1c  05 51 87 e0                                      add r5, r7, r5, lsl #2
00493f20  00 70 84 e5                                      str r7, [r4]
00493f24  03 31 87 e0                                      add r3, r7, r3, lsl #2
00493f28  08 30 84 e5                                      str r3, [r4, #8]
00493f2c  04 50 84 e5                                      str r5, [r4, #4]
00493f30  dd ff ff ea                                      b #0x493eac
00493f34  07 00 a0 e1                                      mov r0, r7
00493f38  02 10 a0 e1                                      mov r1, r2
00493f3c  0c 20 a0 e1                                      mov r2, ip
00493f40  fc e7 f9 eb                                      bl #0x30df38
00493f44  00 70 94 e5                                      ldr r7, [r4]
00493f48  05 51 87 e0                                      add r5, r7, r5, lsl #2
00493f4c  04 50 84 e5                                      str r5, [r4, #4]
00493f50  d5 ff ff ea                                      b #0x493eac
00493f54  02 10 a0 e1                                      mov r1, r2
00493f58  07 00 a0 e1                                      mov r0, r7
00493f5c  0c 20 a0 e1                                      mov r2, ip
00493f60  f4 e7 f9 eb                                      bl #0x30df38
00493f64  04 00 94 e5                                      ldr r0, [r4, #4]
00493f68  00 70 94 e5                                      ldr r7, [r4]
00493f6c  0c 00 96 e8                                      ldm r6, {r2, r3}
00493f70  00 10 67 e0                                      rsb r1, r7, r0
00493f74  03 10 c1 e3                                      bic r1, r1, #3
00493f78  01 10 82 e0                                      add r1, r2, r1
00493f7c  d0 ff ff ea                                      b #0x493ec4
00493f80  2e f1 f9 eb                                      bl #0x310440
00493f84  e3 ff ff ea                                      b #0x493f18
