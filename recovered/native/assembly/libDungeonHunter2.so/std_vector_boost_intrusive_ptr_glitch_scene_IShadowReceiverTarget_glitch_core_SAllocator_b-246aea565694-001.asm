; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005896f4, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5scene21IShadowReceiverTargetEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS5_RKSt12__false_type
; demangled: std::vector<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>*, std::__false_type const&)
; decoder-mode: arm
005896f4  30 40 2d e9                                      push {r4, r5, lr}
005896f8  04 30 90 e5                                      ldr r3, [r0, #4]
005896fc  00 50 a0 e1                                      mov r5, r0
00589700  04 00 81 e2                                      add r0, r1, #4
00589704  03 00 50 e1                                      cmp r0, r3
00589708  14 d0 4d e2                                      sub sp, sp, #0x14
0058970c  01 40 a0 e1                                      mov r4, r1
00589710  06 00 00 0a                                      beq #0x589730
00589714  03 10 a0 e1                                      mov r1, r3
00589718  00 c0 a0 e3                                      mov ip, #0
0058971c  04 20 a0 e1                                      mov r2, r4
00589720  0c 30 8d e2                                      add r3, sp, #0xc
00589724  00 c0 8d e5                                      str ip, [sp]
00589728  d8 ff ff eb                                      bl #0x589690
0058972c  04 00 95 e5                                      ldr r0, [r5, #4]
00589730  04 30 40 e2                                      sub r3, r0, #4
00589734  04 30 85 e5                                      str r3, [r5, #4]
00589738  04 00 10 e5                                      ldr r0, [r0, #-4]
0058973c  00 00 50 e3                                      cmp r0, #0
00589740  00 00 00 0a                                      beq #0x589748
00589744  8e 4f f6 eb                                      bl #0x31d584
00589748  04 00 a0 e1                                      mov r0, r4
0058974c  14 d0 8d e2                                      add sp, sp, #0x14
00589750  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00589818, declared_size=112, range_size=112, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5scene21IShadowReceiverTargetEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS5_SC_RKSt12__false_type
; demangled: std::vector<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>*, boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>*, std::__false_type const&)
; decoder-mode: arm
00589818  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0058981c  04 30 90 e5                                      ldr r3, [r0, #4]
00589820  10 d0 4d e2                                      sub sp, sp, #0x10
00589824  01 50 a0 e1                                      mov r5, r1
00589828  00 40 a0 e1                                      mov r4, r0
0058982c  03 10 a0 e1                                      mov r1, r3
00589830  02 00 a0 e1                                      mov r0, r2
00589834  00 c0 a0 e3                                      mov ip, #0
00589838  05 20 a0 e1                                      mov r2, r5
0058983c  0c 30 8d e2                                      add r3, sp, #0xc
00589840  00 c0 8d e5                                      str ip, [sp]
00589844  91 ff ff eb                                      bl #0x589690
00589848  04 70 94 e5                                      ldr r7, [r4, #4]
0058984c  00 80 a0 e1                                      mov r8, r0
00589850  00 00 57 e1                                      cmp r7, r0
00589854  07 00 00 0a                                      beq #0x589878
00589858  00 60 a0 e1                                      mov r6, r0
0058985c  00 00 96 e5                                      ldr r0, [r6]
00589860  04 60 86 e2                                      add r6, r6, #4
00589864  00 00 50 e3                                      cmp r0, #0
00589868  00 00 00 0a                                      beq #0x589870
0058986c  44 4f f6 eb                                      bl #0x31d584
00589870  06 00 57 e1                                      cmp r7, r6
00589874  f8 ff ff 1a                                      bne #0x58985c
00589878  04 80 84 e5                                      str r8, [r4, #4]
0058987c  05 00 a0 e1                                      mov r0, r5
00589880  10 d0 8d e2                                      add sp, sp, #0x10
00589884  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00589ab0, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5scene21IShadowReceiverTargetEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEE19_M_clear_after_moveEv
; demangled: std::vector<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>, (glitch::memory::E_MEMORY_HINT)0> >::_M_clear_after_move()
; decoder-mode: arm
00589ab0  70 40 2d e9                                      push {r4, r5, r6, lr}
00589ab4  00 60 a0 e1                                      mov r6, r0
00589ab8  00 50 96 e5                                      ldr r5, [r6]
00589abc  04 00 90 e5                                      ldr r0, [r0, #4]
00589ac0  05 00 50 e1                                      cmp r0, r5
00589ac4  08 00 00 0a                                      beq #0x589aec
00589ac8  00 40 a0 e1                                      mov r4, r0
00589acc  04 00 14 e5                                      ldr r0, [r4, #-4]
00589ad0  04 40 44 e2                                      sub r4, r4, #4
00589ad4  00 00 50 e3                                      cmp r0, #0
00589ad8  00 00 00 0a                                      beq #0x589ae0
00589adc  a8 4e f6 eb                                      bl #0x31d584
00589ae0  04 00 55 e1                                      cmp r5, r4
00589ae4  f8 ff ff 1a                                      bne #0x589acc
00589ae8  00 00 96 e5                                      ldr r0, [r6]
00589aec  70 40 bd e8                                      pop {r4, r5, r6, lr}
00589af0  56 1a f6 ea                                      b #0x310450

; FUNCTION 0x00589af4, declared_size=76, range_size=76, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5scene21IShadowReceiverTargetEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
00589af4  70 40 2d e9                                      push {r4, r5, r6, lr}
00589af8  04 40 90 e5                                      ldr r4, [r0, #4]
00589afc  00 50 90 e5                                      ldr r5, [r0]
00589b00  00 60 a0 e1                                      mov r6, r0
00589b04  05 00 54 e1                                      cmp r4, r5
00589b08  06 00 00 0a                                      beq #0x589b28
00589b0c  04 00 14 e5                                      ldr r0, [r4, #-4]
00589b10  04 40 44 e2                                      sub r4, r4, #4
00589b14  00 00 50 e3                                      cmp r0, #0
00589b18  00 00 00 0a                                      beq #0x589b20
00589b1c  98 4e f6 eb                                      bl #0x31d584
00589b20  04 00 55 e1                                      cmp r5, r4
00589b24  f8 ff ff 1a                                      bne #0x589b0c
00589b28  00 00 96 e5                                      ldr r0, [r6]
00589b2c  00 00 50 e3                                      cmp r0, #0
00589b30  00 00 00 0a                                      beq #0x589b38
00589b34  45 1a f6 eb                                      bl #0x310450
00589b38  06 00 a0 e1                                      mov r0, r6
00589b3c  70 80 bd e8                                      pop {r4, r5, r6, pc}
