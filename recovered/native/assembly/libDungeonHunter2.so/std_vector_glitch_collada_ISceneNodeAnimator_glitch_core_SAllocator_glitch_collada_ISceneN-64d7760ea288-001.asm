; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00476a9c, declared_size=176, range_size=176, mode=arm
; class-group: std::vector<glitch::collada::ISceneNodeAnimator*, glitch::core::SAllocator<glitch::collada::ISceneNodeAnimator*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch7collada18ISceneNodeAnimatorENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_insert_overflowEPS3_RKS3_RKSt11__true_typejb.clone.1
; demangled: std::vector<glitch::collada::ISceneNodeAnimator*, glitch::core::SAllocator<glitch::collada::ISceneNodeAnimator*, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow(glitch::collada::ISceneNodeAnimator**, glitch::collada::ISceneNodeAnimator* const&, std::__true_type const&, unsigned int, bool) [clone .clone.1]
; decoder-mode: arm
00476a9c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00476aa0  00 40 a0 e1                                      mov r4, r0
00476aa4  00 30 94 e5                                      ldr r3, [r4]
00476aa8  04 00 90 e5                                      ldr r0, [r0, #4]
00476aac  01 60 a0 e1                                      mov r6, r1
00476ab0  02 80 a0 e1                                      mov r8, r2
00476ab4  00 30 63 e0                                      rsb r3, r3, r0
00476ab8  43 31 a0 e1                                      asr r3, r3, #2
00476abc  01 00 53 e3                                      cmp r3, #1
00476ac0  03 70 83 20                                      addhs r7, r3, r3
00476ac4  01 70 83 32                                      addlo r7, r3, #1
00476ac8  07 01 77 e3                                      cmn r7, #0xc0000001
00476acc  11 00 00 8a                                      bhi #0x476b18
00476ad0  07 00 53 e1                                      cmp r3, r7
00476ad4  07 71 a0 91                                      lslls r7, r7, #2
00476ad8  0e 00 00 8a                                      bhi #0x476b18
00476adc  00 10 a0 e3                                      mov r1, #0
00476ae0  07 00 a0 e1                                      mov r0, r7
00476ae4  9f 66 fa eb                                      bl #0x310568
00476ae8  00 10 94 e5                                      ldr r1, [r4]
00476aec  00 50 a0 e1                                      mov r5, r0
00476af0  01 60 56 e0                                      subs r6, r6, r1
00476af4  00 60 a0 01                                      moveq r6, r0
00476af8  0f 00 00 1a                                      bne #0x476b3c
00476afc  00 30 98 e5                                      ldr r3, [r8]
00476b00  07 70 85 e0                                      add r7, r5, r7
00476b04  04 30 86 e4                                      str r3, [r6], #4
00476b08  00 00 94 e5                                      ldr r0, [r4]
00476b0c  4f 66 fa eb                                      bl #0x310450
00476b10  e0 00 84 e8                                      stm r4, {r5, r6, r7}
00476b14  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00476b18  03 70 e0 e3                                      mvn r7, #3
00476b1c  00 10 a0 e3                                      mov r1, #0
00476b20  07 00 a0 e1                                      mov r0, r7
00476b24  8f 66 fa eb                                      bl #0x310568
00476b28  00 10 94 e5                                      ldr r1, [r4]
00476b2c  00 50 a0 e1                                      mov r5, r0
00476b30  01 60 56 e0                                      subs r6, r6, r1
00476b34  00 60 a0 01                                      moveq r6, r0
00476b38  ef ff ff 0a                                      beq #0x476afc
00476b3c  06 20 a0 e1                                      mov r2, r6
00476b40  fc 5c fa eb                                      bl #0x30df38
00476b44  06 60 80 e0                                      add r6, r0, r6
00476b48  eb ff ff ea                                      b #0x476afc
