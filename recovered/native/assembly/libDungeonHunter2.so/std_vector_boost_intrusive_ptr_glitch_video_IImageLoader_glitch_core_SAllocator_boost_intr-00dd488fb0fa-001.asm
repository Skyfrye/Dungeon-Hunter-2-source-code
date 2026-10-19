; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e8f90, declared_size=76, range_size=76, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::video::IImageLoader>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IImageLoader>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video12IImageLoaderEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<boost::intrusive_ptr<glitch::video::IImageLoader>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IImageLoader>, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
005e8f90  70 40 2d e9                                      push {r4, r5, r6, lr}
005e8f94  04 40 90 e5                                      ldr r4, [r0, #4]
005e8f98  00 50 90 e5                                      ldr r5, [r0]
005e8f9c  00 60 a0 e1                                      mov r6, r0
005e8fa0  05 00 54 e1                                      cmp r4, r5
005e8fa4  06 00 00 0a                                      beq #0x5e8fc4
005e8fa8  04 00 14 e5                                      ldr r0, [r4, #-4]
005e8fac  04 40 44 e2                                      sub r4, r4, #4
005e8fb0  00 00 50 e3                                      cmp r0, #0
005e8fb4  00 00 00 0a                                      beq #0x5e8fbc
005e8fb8  71 d1 f4 eb                                      bl #0x31d584
005e8fbc  04 00 55 e1                                      cmp r5, r4
005e8fc0  f8 ff ff 1a                                      bne #0x5e8fa8
005e8fc4  00 00 96 e5                                      ldr r0, [r6]
005e8fc8  00 00 50 e3                                      cmp r0, #0
005e8fcc  00 00 00 0a                                      beq #0x5e8fd4
005e8fd0  1e 9d f4 eb                                      bl #0x310450
005e8fd4  06 00 a0 e1                                      mov r0, r6
005e8fd8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005e8fdc, declared_size=260, range_size=260, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::video::IImageLoader>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IImageLoader>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video12IImageLoaderEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS5_RKS5_RKSt12__false_typejb.clone.5
; demangled: std::vector<boost::intrusive_ptr<glitch::video::IImageLoader>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IImageLoader>, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(boost::intrusive_ptr<glitch::video::IImageLoader>*, boost::intrusive_ptr<glitch::video::IImageLoader> const&, std::__false_type const&, unsigned int, bool) [clone .clone.5]
; decoder-mode: arm
005e8fdc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005e8fe0  00 40 a0 e1                                      mov r4, r0
005e8fe4  00 30 94 e5                                      ldr r3, [r4]
005e8fe8  04 00 90 e5                                      ldr r0, [r0, #4]
005e8fec  01 50 a0 e1                                      mov r5, r1
005e8ff0  02 70 a0 e1                                      mov r7, r2
005e8ff4  00 30 63 e0                                      rsb r3, r3, r0
005e8ff8  43 31 a0 e1                                      asr r3, r3, #2
005e8ffc  01 00 53 e3                                      cmp r3, #1
005e9000  03 60 83 20                                      addhs r6, r3, r3
005e9004  01 60 83 32                                      addlo r6, r3, #1
005e9008  07 01 76 e3                                      cmn r6, #0xc0000001
005e900c  31 00 00 8a                                      bhi #0x5e90d8
005e9010  06 00 53 e1                                      cmp r3, r6
005e9014  06 61 a0 91                                      lslls r6, r6, #2
005e9018  2e 00 00 8a                                      bhi #0x5e90d8
005e901c  06 00 a0 e1                                      mov r0, r6
005e9020  00 10 a0 e3                                      mov r1, #0
005e9024  4f 9d f4 eb                                      bl #0x310568
005e9028  00 c0 94 e5                                      ldr ip, [r4]
005e902c  00 80 a0 e1                                      mov r8, r0
005e9030  05 50 6c e0                                      rsb r5, ip, r5
005e9034  45 51 a0 e1                                      asr r5, r5, #2
005e9038  00 00 55 e3                                      cmp r5, #0
005e903c  00 a0 a0 d1                                      movle sl, r0
005e9040  0b 00 00 da                                      ble #0x5e9074
005e9044  05 10 a0 e1                                      mov r1, r5
005e9048  00 20 a0 e3                                      mov r2, #0
005e904c  02 30 9c e7                                      ldr r3, [ip, r2]
005e9050  00 00 53 e3                                      cmp r3, #0
005e9054  02 30 88 e7                                      str r3, [r8, r2]
005e9058  04 00 93 15                                      ldrne r0, [r3, #4]
005e905c  04 20 82 e2                                      add r2, r2, #4
005e9060  01 00 80 12                                      addne r0, r0, #1
005e9064  04 00 83 15                                      strne r0, [r3, #4]
005e9068  01 10 51 e2                                      subs r1, r1, #1
005e906c  f6 ff ff 1a                                      bne #0x5e904c
005e9070  05 a1 88 e0                                      add sl, r8, r5, lsl #2
005e9074  00 30 97 e5                                      ldr r3, [r7]
005e9078  00 30 8a e5                                      str r3, [sl]
005e907c  00 00 53 e3                                      cmp r3, #0
005e9080  04 20 93 15                                      ldrne r2, [r3, #4]
005e9084  04 a0 8a e2                                      add sl, sl, #4
005e9088  01 20 82 12                                      addne r2, r2, #1
005e908c  04 20 83 15                                      strne r2, [r3, #4]
005e9090  04 50 94 e5                                      ldr r5, [r4, #4]
005e9094  00 70 94 e5                                      ldr r7, [r4]
005e9098  07 00 55 e1                                      cmp r5, r7
005e909c  07 00 00 0a                                      beq #0x5e90c0
005e90a0  04 00 15 e5                                      ldr r0, [r5, #-4]
005e90a4  04 50 45 e2                                      sub r5, r5, #4
005e90a8  00 00 50 e3                                      cmp r0, #0
005e90ac  00 00 00 0a                                      beq #0x5e90b4
005e90b0  33 d1 f4 eb                                      bl #0x31d584
005e90b4  05 00 57 e1                                      cmp r7, r5
005e90b8  f8 ff ff 1a                                      bne #0x5e90a0
005e90bc  00 70 94 e5                                      ldr r7, [r4]
005e90c0  07 00 a0 e1                                      mov r0, r7
005e90c4  06 60 88 e0                                      add r6, r8, r6
005e90c8  e0 9c f4 eb                                      bl #0x310450
005e90cc  08 60 84 e5                                      str r6, [r4, #8]
005e90d0  00 05 84 e8                                      stm r4, {r8, sl}
005e90d4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005e90d8  03 60 e0 e3                                      mvn r6, #3
005e90dc  ce ff ff ea                                      b #0x5e901c
