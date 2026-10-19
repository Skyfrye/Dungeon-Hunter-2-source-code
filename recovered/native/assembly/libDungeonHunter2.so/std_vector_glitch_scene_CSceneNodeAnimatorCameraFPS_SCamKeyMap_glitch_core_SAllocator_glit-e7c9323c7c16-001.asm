; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006c8ad4, declared_size=228, range_size=228, mode=arm
; class-group: std::vector<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap, glitch::core::SAllocator<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene27CSceneNodeAnimatorCameraFPS10SCamKeyMapENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS3_RKS3_RKSt12__false_typejb.clone.1
; demangled: std::vector<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap, glitch::core::SAllocator<glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap*, glitch::scene::CSceneNodeAnimatorCameraFPS::SCamKeyMap const&, std::__false_type const&, unsigned int, bool) [clone .clone.1]
; decoder-mode: arm
006c8ad4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006c8ad8  00 40 a0 e1                                      mov r4, r0
006c8adc  00 30 94 e5                                      ldr r3, [r4]
006c8ae0  04 00 90 e5                                      ldr r0, [r0, #4]
006c8ae4  01 50 a0 e1                                      mov r5, r1
006c8ae8  02 70 a0 e1                                      mov r7, r2
006c8aec  00 30 63 e0                                      rsb r3, r3, r0
006c8af0  c3 31 a0 e1                                      asr r3, r3, #3
006c8af4  01 00 53 e3                                      cmp r3, #1
006c8af8  03 60 83 20                                      addhs r6, r3, r3
006c8afc  01 60 83 32                                      addlo r6, r3, #1
006c8b00  1e 02 76 e3                                      cmn r6, #0xe0000001
006c8b04  29 00 00 8a                                      bhi #0x6c8bb0
006c8b08  06 00 53 e1                                      cmp r3, r6
006c8b0c  86 61 a0 91                                      lslls r6, r6, #3
006c8b10  26 00 00 8a                                      bhi #0x6c8bb0
006c8b14  06 00 a0 e1                                      mov r0, r6
006c8b18  00 10 a0 e3                                      mov r1, #0
006c8b1c  91 1e f1 eb                                      bl #0x310568
006c8b20  00 e0 94 e5                                      ldr lr, [r4]
006c8b24  00 80 a0 e1                                      mov r8, r0
006c8b28  05 50 6e e0                                      rsb r5, lr, r5
006c8b2c  c5 51 a0 e1                                      asr r5, r5, #3
006c8b30  00 00 55 e3                                      cmp r5, #0
006c8b34  00 50 a0 d1                                      movle r5, r0
006c8b38  0b 00 00 da                                      ble #0x6c8b6c
006c8b3c  05 10 a0 e1                                      mov r1, r5
006c8b40  00 00 a0 e3                                      mov r0, #0
006c8b44  0e 20 a0 e1                                      mov r2, lr
006c8b48  00 c0 b2 e7                                      ldr ip, [r2, r0]!
006c8b4c  08 30 a0 e1                                      mov r3, r8
006c8b50  01 10 51 e2                                      subs r1, r1, #1
006c8b54  00 c0 a3 e7                                      str ip, [r3, r0]!
006c8b58  04 20 92 e5                                      ldr r2, [r2, #4]
006c8b5c  08 00 80 e2                                      add r0, r0, #8
006c8b60  04 20 83 e5                                      str r2, [r3, #4]
006c8b64  f6 ff ff 1a                                      bne #0x6c8b44
006c8b68  85 51 88 e0                                      add r5, r8, r5, lsl #3
006c8b6c  00 30 97 e5                                      ldr r3, [r7]
006c8b70  08 a0 85 e2                                      add sl, r5, #8
006c8b74  06 60 88 e0                                      add r6, r8, r6
006c8b78  00 30 85 e5                                      str r3, [r5]
006c8b7c  04 30 97 e5                                      ldr r3, [r7, #4]
006c8b80  04 30 85 e5                                      str r3, [r5, #4]
006c8b84  04 00 94 e5                                      ldr r0, [r4, #4]
006c8b88  00 20 94 e5                                      ldr r2, [r4]
006c8b8c  02 00 50 e1                                      cmp r0, r2
006c8b90  08 30 40 12                                      subne r3, r0, #8
006c8b94  03 30 62 10                                      rsbne r3, r2, r3
006c8b98  a3 31 e0 11                                      mvnne r3, r3, lsr #3
006c8b9c  83 01 80 10                                      addne r0, r0, r3, lsl #3
006c8ba0  2a 1e f1 eb                                      bl #0x310450
006c8ba4  08 60 84 e5                                      str r6, [r4, #8]
006c8ba8  00 05 84 e8                                      stm r4, {r8, sl}
006c8bac  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006c8bb0  07 60 e0 e3                                      mvn r6, #7
006c8bb4  d6 ff ff ea                                      b #0x6c8b14
