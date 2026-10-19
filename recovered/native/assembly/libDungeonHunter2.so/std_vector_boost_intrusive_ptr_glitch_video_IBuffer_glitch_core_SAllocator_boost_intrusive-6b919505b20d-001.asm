; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005ab958, declared_size=76, range_size=76, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::video::IBuffer>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IBuffer>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video7IBufferEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<boost::intrusive_ptr<glitch::video::IBuffer>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IBuffer>, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
005ab958  70 40 2d e9                                      push {r4, r5, r6, lr}
005ab95c  04 40 90 e5                                      ldr r4, [r0, #4]
005ab960  00 50 90 e5                                      ldr r5, [r0]
005ab964  00 60 a0 e1                                      mov r6, r0
005ab968  05 00 54 e1                                      cmp r4, r5
005ab96c  06 00 00 0a                                      beq #0x5ab98c
005ab970  04 00 14 e5                                      ldr r0, [r4, #-4]
005ab974  04 40 44 e2                                      sub r4, r4, #4
005ab978  00 00 50 e3                                      cmp r0, #0
005ab97c  00 00 00 0a                                      beq #0x5ab984
005ab980  ff c6 f5 eb                                      bl #0x31d584
005ab984  04 00 55 e1                                      cmp r5, r4
005ab988  f8 ff ff 1a                                      bne #0x5ab970
005ab98c  00 00 96 e5                                      ldr r0, [r6]
005ab990  00 00 50 e3                                      cmp r0, #0
005ab994  00 00 00 0a                                      beq #0x5ab99c
005ab998  ac 92 f5 eb                                      bl #0x310450
005ab99c  06 00 a0 e1                                      mov r0, r6
005ab9a0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005ab9a4, declared_size=260, range_size=260, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::video::IBuffer>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IBuffer>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video7IBufferEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS5_RKS5_RKSt12__false_typejb.clone.11
; demangled: std::vector<boost::intrusive_ptr<glitch::video::IBuffer>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::IBuffer>, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(boost::intrusive_ptr<glitch::video::IBuffer>*, boost::intrusive_ptr<glitch::video::IBuffer> const&, std::__false_type const&, unsigned int, bool) [clone .clone.11]
; decoder-mode: arm
005ab9a4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005ab9a8  00 40 a0 e1                                      mov r4, r0
005ab9ac  00 30 94 e5                                      ldr r3, [r4]
005ab9b0  04 00 90 e5                                      ldr r0, [r0, #4]
005ab9b4  01 50 a0 e1                                      mov r5, r1
005ab9b8  02 70 a0 e1                                      mov r7, r2
005ab9bc  00 30 63 e0                                      rsb r3, r3, r0
005ab9c0  43 31 a0 e1                                      asr r3, r3, #2
005ab9c4  01 00 53 e3                                      cmp r3, #1
005ab9c8  03 60 83 20                                      addhs r6, r3, r3
005ab9cc  01 60 83 32                                      addlo r6, r3, #1
005ab9d0  07 01 76 e3                                      cmn r6, #0xc0000001
005ab9d4  31 00 00 8a                                      bhi #0x5abaa0
005ab9d8  06 00 53 e1                                      cmp r3, r6
005ab9dc  06 61 a0 91                                      lslls r6, r6, #2
005ab9e0  2e 00 00 8a                                      bhi #0x5abaa0
005ab9e4  06 00 a0 e1                                      mov r0, r6
005ab9e8  00 10 a0 e3                                      mov r1, #0
005ab9ec  dd 92 f5 eb                                      bl #0x310568
005ab9f0  00 c0 94 e5                                      ldr ip, [r4]
005ab9f4  00 80 a0 e1                                      mov r8, r0
005ab9f8  05 50 6c e0                                      rsb r5, ip, r5
005ab9fc  45 51 a0 e1                                      asr r5, r5, #2
005aba00  00 00 55 e3                                      cmp r5, #0
005aba04  00 a0 a0 d1                                      movle sl, r0
005aba08  0b 00 00 da                                      ble #0x5aba3c
005aba0c  05 10 a0 e1                                      mov r1, r5
005aba10  00 20 a0 e3                                      mov r2, #0
005aba14  02 30 9c e7                                      ldr r3, [ip, r2]
005aba18  00 00 53 e3                                      cmp r3, #0
005aba1c  02 30 88 e7                                      str r3, [r8, r2]
005aba20  04 00 93 15                                      ldrne r0, [r3, #4]
005aba24  04 20 82 e2                                      add r2, r2, #4
005aba28  01 00 80 12                                      addne r0, r0, #1
005aba2c  04 00 83 15                                      strne r0, [r3, #4]
005aba30  01 10 51 e2                                      subs r1, r1, #1
005aba34  f6 ff ff 1a                                      bne #0x5aba14
005aba38  05 a1 88 e0                                      add sl, r8, r5, lsl #2
005aba3c  00 30 97 e5                                      ldr r3, [r7]
005aba40  00 30 8a e5                                      str r3, [sl]
005aba44  00 00 53 e3                                      cmp r3, #0
005aba48  04 20 93 15                                      ldrne r2, [r3, #4]
005aba4c  04 a0 8a e2                                      add sl, sl, #4
005aba50  01 20 82 12                                      addne r2, r2, #1
005aba54  04 20 83 15                                      strne r2, [r3, #4]
005aba58  04 50 94 e5                                      ldr r5, [r4, #4]
005aba5c  00 70 94 e5                                      ldr r7, [r4]
005aba60  07 00 55 e1                                      cmp r5, r7
005aba64  07 00 00 0a                                      beq #0x5aba88
005aba68  04 00 15 e5                                      ldr r0, [r5, #-4]
005aba6c  04 50 45 e2                                      sub r5, r5, #4
005aba70  00 00 50 e3                                      cmp r0, #0
005aba74  00 00 00 0a                                      beq #0x5aba7c
005aba78  c1 c6 f5 eb                                      bl #0x31d584
005aba7c  05 00 57 e1                                      cmp r7, r5
005aba80  f8 ff ff 1a                                      bne #0x5aba68
005aba84  00 70 94 e5                                      ldr r7, [r4]
005aba88  07 00 a0 e1                                      mov r0, r7
005aba8c  06 60 88 e0                                      add r6, r8, r6
005aba90  6e 92 f5 eb                                      bl #0x310450
005aba94  08 60 84 e5                                      str r6, [r4, #8]
005aba98  00 05 84 e8                                      stm r4, {r8, sl}
005aba9c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005abaa0  03 60 e0 e3                                      mvn r6, #3
005abaa4  ce ff ff ea                                      b #0x5ab9e4
