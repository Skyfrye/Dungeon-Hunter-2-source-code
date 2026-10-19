; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0053ece8, declared_size=256, range_size=256, mode=arm
; class-group: std::vector<glitch::core::rect<int>, glitch::core::SAllocator<glitch::core::rect<int>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core4rectIiEENS1_10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS3_RKS3_RKSt12__false_typejb.clone.5
; demangled: std::vector<glitch::core::rect<int>, glitch::core::SAllocator<glitch::core::rect<int>, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(glitch::core::rect<int>*, glitch::core::rect<int> const&, std::__false_type const&, unsigned int, bool) [clone .clone.5]
; decoder-mode: arm
0053ece8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0053ecec  00 40 a0 e1                                      mov r4, r0
0053ecf0  00 30 94 e5                                      ldr r3, [r4]
0053ecf4  04 00 90 e5                                      ldr r0, [r0, #4]
0053ecf8  01 50 a0 e1                                      mov r5, r1
0053ecfc  02 70 a0 e1                                      mov r7, r2
0053ed00  00 30 63 e0                                      rsb r3, r3, r0
0053ed04  43 32 a0 e1                                      asr r3, r3, #4
0053ed08  01 00 53 e3                                      cmp r3, #1
0053ed0c  03 60 83 20                                      addhs r6, r3, r3
0053ed10  01 60 83 32                                      addlo r6, r3, #1
0053ed14  1f 02 76 e3                                      cmn r6, #0xf0000001
0053ed18  30 00 00 8a                                      bhi #0x53ede0
0053ed1c  06 00 53 e1                                      cmp r3, r6
0053ed20  06 62 a0 91                                      lslls r6, r6, #4
0053ed24  2d 00 00 8a                                      bhi #0x53ede0
0053ed28  06 00 a0 e1                                      mov r0, r6
0053ed2c  00 10 a0 e3                                      mov r1, #0
0053ed30  0c 46 f7 eb                                      bl #0x310568
0053ed34  00 30 94 e5                                      ldr r3, [r4]
0053ed38  00 80 a0 e1                                      mov r8, r0
0053ed3c  05 50 63 e0                                      rsb r5, r3, r5
0053ed40  45 52 a0 e1                                      asr r5, r5, #4
0053ed44  00 00 55 e3                                      cmp r5, #0
0053ed48  00 50 a0 d1                                      movle r5, r0
0053ed4c  0e 00 00 da                                      ble #0x53ed8c
0053ed50  05 10 a0 e1                                      mov r1, r5
0053ed54  00 20 a0 e1                                      mov r2, r0
0053ed58  00 00 93 e5                                      ldr r0, [r3]
0053ed5c  01 10 51 e2                                      subs r1, r1, #1
0053ed60  00 00 82 e5                                      str r0, [r2]
0053ed64  04 00 93 e5                                      ldr r0, [r3, #4]
0053ed68  04 00 82 e5                                      str r0, [r2, #4]
0053ed6c  08 00 93 e5                                      ldr r0, [r3, #8]
0053ed70  08 00 82 e5                                      str r0, [r2, #8]
0053ed74  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0053ed78  10 30 83 e2                                      add r3, r3, #0x10
0053ed7c  0c 00 82 e5                                      str r0, [r2, #0xc]
0053ed80  10 20 82 e2                                      add r2, r2, #0x10
0053ed84  f3 ff ff 1a                                      bne #0x53ed58
0053ed88  05 52 88 e0                                      add r5, r8, r5, lsl #4
0053ed8c  00 30 97 e5                                      ldr r3, [r7]
0053ed90  10 a0 85 e2                                      add sl, r5, #0x10
0053ed94  06 60 88 e0                                      add r6, r8, r6
0053ed98  00 30 85 e5                                      str r3, [r5]
0053ed9c  04 30 97 e5                                      ldr r3, [r7, #4]
0053eda0  04 30 85 e5                                      str r3, [r5, #4]
0053eda4  08 30 97 e5                                      ldr r3, [r7, #8]
0053eda8  08 30 85 e5                                      str r3, [r5, #8]
0053edac  0c 30 97 e5                                      ldr r3, [r7, #0xc]
0053edb0  0c 30 85 e5                                      str r3, [r5, #0xc]
0053edb4  04 00 94 e5                                      ldr r0, [r4, #4]
0053edb8  00 20 94 e5                                      ldr r2, [r4]
0053edbc  02 00 50 e1                                      cmp r0, r2
0053edc0  10 30 40 12                                      subne r3, r0, #0x10
0053edc4  03 30 62 10                                      rsbne r3, r2, r3
0053edc8  23 32 e0 11                                      mvnne r3, r3, lsr #4
0053edcc  03 02 80 10                                      addne r0, r0, r3, lsl #4
0053edd0  9e 45 f7 eb                                      bl #0x310450
0053edd4  08 60 84 e5                                      str r6, [r4, #8]
0053edd8  00 05 84 e8                                      stm r4, {r8, sl}
0053eddc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0053ede0  0f 60 e0 e3                                      mvn r6, #0xf
0053ede4  cf ff ff ea                                      b #0x53ed28
