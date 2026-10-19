; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00589930, declared_size=112, range_size=112, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5scene17CAppendMeshBufferEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS5_SC_RKSt12__false_type
; demangled: std::vector<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>*, boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>*, std::__false_type const&)
; decoder-mode: arm
00589930  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00589934  04 30 90 e5                                      ldr r3, [r0, #4]
00589938  10 d0 4d e2                                      sub sp, sp, #0x10
0058993c  01 50 a0 e1                                      mov r5, r1
00589940  00 40 a0 e1                                      mov r4, r0
00589944  03 10 a0 e1                                      mov r1, r3
00589948  02 00 a0 e1                                      mov r0, r2
0058994c  00 c0 a0 e3                                      mov ip, #0
00589950  05 20 a0 e1                                      mov r2, r5
00589954  0c 30 8d e2                                      add r3, sp, #0xc
00589958  00 c0 8d e5                                      str ip, [sp]
0058995c  da ff ff eb                                      bl #0x5898cc
00589960  04 70 94 e5                                      ldr r7, [r4, #4]
00589964  00 80 a0 e1                                      mov r8, r0
00589968  00 00 57 e1                                      cmp r7, r0
0058996c  07 00 00 0a                                      beq #0x589990
00589970  00 60 a0 e1                                      mov r6, r0
00589974  00 00 96 e5                                      ldr r0, [r6]
00589978  04 60 86 e2                                      add r6, r6, #4
0058997c  00 00 50 e3                                      cmp r0, #0
00589980  00 00 00 0a                                      beq #0x589988
00589984  fe 4e f6 eb                                      bl #0x31d584
00589988  06 00 57 e1                                      cmp r7, r6
0058998c  f8 ff ff 1a                                      bne #0x589974
00589990  04 80 84 e5                                      str r8, [r4, #4]
00589994  05 00 a0 e1                                      mov r0, r5
00589998  10 d0 8d e2                                      add sp, sp, #0x10
0058999c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00589b40, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5scene17CAppendMeshBufferEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEE19_M_clear_after_moveEv
; demangled: std::vector<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>, (glitch::memory::E_MEMORY_HINT)0> >::_M_clear_after_move()
; decoder-mode: arm
00589b40  70 40 2d e9                                      push {r4, r5, r6, lr}
00589b44  00 60 a0 e1                                      mov r6, r0
00589b48  00 50 96 e5                                      ldr r5, [r6]
00589b4c  04 00 90 e5                                      ldr r0, [r0, #4]
00589b50  05 00 50 e1                                      cmp r0, r5
00589b54  08 00 00 0a                                      beq #0x589b7c
00589b58  00 40 a0 e1                                      mov r4, r0
00589b5c  04 00 14 e5                                      ldr r0, [r4, #-4]
00589b60  04 40 44 e2                                      sub r4, r4, #4
00589b64  00 00 50 e3                                      cmp r0, #0
00589b68  00 00 00 0a                                      beq #0x589b70
00589b6c  84 4e f6 eb                                      bl #0x31d584
00589b70  04 00 55 e1                                      cmp r5, r4
00589b74  f8 ff ff 1a                                      bne #0x589b5c
00589b78  00 00 96 e5                                      ldr r0, [r6]
00589b7c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00589b80  32 1a f6 ea                                      b #0x310450

; FUNCTION 0x005ab808, declared_size=260, range_size=260, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5scene17CAppendMeshBufferEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS5_RKS5_RKSt12__false_typejb.clone.8
; demangled: std::vector<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>*, boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer> const&, std::__false_type const&, unsigned int, bool) [clone .clone.8]
; decoder-mode: arm
005ab808  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005ab80c  00 40 a0 e1                                      mov r4, r0
005ab810  00 30 94 e5                                      ldr r3, [r4]
005ab814  04 00 90 e5                                      ldr r0, [r0, #4]
005ab818  01 50 a0 e1                                      mov r5, r1
005ab81c  02 70 a0 e1                                      mov r7, r2
005ab820  00 30 63 e0                                      rsb r3, r3, r0
005ab824  43 31 a0 e1                                      asr r3, r3, #2
005ab828  01 00 53 e3                                      cmp r3, #1
005ab82c  03 60 83 20                                      addhs r6, r3, r3
005ab830  01 60 83 32                                      addlo r6, r3, #1
005ab834  07 01 76 e3                                      cmn r6, #0xc0000001
005ab838  31 00 00 8a                                      bhi #0x5ab904
005ab83c  06 00 53 e1                                      cmp r3, r6
005ab840  06 61 a0 91                                      lslls r6, r6, #2
005ab844  2e 00 00 8a                                      bhi #0x5ab904
005ab848  06 00 a0 e1                                      mov r0, r6
005ab84c  00 10 a0 e3                                      mov r1, #0
005ab850  44 93 f5 eb                                      bl #0x310568
005ab854  00 c0 94 e5                                      ldr ip, [r4]
005ab858  00 80 a0 e1                                      mov r8, r0
005ab85c  05 50 6c e0                                      rsb r5, ip, r5
005ab860  45 51 a0 e1                                      asr r5, r5, #2
005ab864  00 00 55 e3                                      cmp r5, #0
005ab868  00 a0 a0 d1                                      movle sl, r0
005ab86c  0b 00 00 da                                      ble #0x5ab8a0
005ab870  05 10 a0 e1                                      mov r1, r5
005ab874  00 20 a0 e3                                      mov r2, #0
005ab878  02 30 9c e7                                      ldr r3, [ip, r2]
005ab87c  00 00 53 e3                                      cmp r3, #0
005ab880  02 30 88 e7                                      str r3, [r8, r2]
005ab884  04 00 93 15                                      ldrne r0, [r3, #4]
005ab888  04 20 82 e2                                      add r2, r2, #4
005ab88c  01 00 80 12                                      addne r0, r0, #1
005ab890  04 00 83 15                                      strne r0, [r3, #4]
005ab894  01 10 51 e2                                      subs r1, r1, #1
005ab898  f6 ff ff 1a                                      bne #0x5ab878
005ab89c  05 a1 88 e0                                      add sl, r8, r5, lsl #2
005ab8a0  00 30 97 e5                                      ldr r3, [r7]
005ab8a4  00 30 8a e5                                      str r3, [sl]
005ab8a8  00 00 53 e3                                      cmp r3, #0
005ab8ac  04 20 93 15                                      ldrne r2, [r3, #4]
005ab8b0  04 a0 8a e2                                      add sl, sl, #4
005ab8b4  01 20 82 12                                      addne r2, r2, #1
005ab8b8  04 20 83 15                                      strne r2, [r3, #4]
005ab8bc  04 50 94 e5                                      ldr r5, [r4, #4]
005ab8c0  00 70 94 e5                                      ldr r7, [r4]
005ab8c4  07 00 55 e1                                      cmp r5, r7
005ab8c8  07 00 00 0a                                      beq #0x5ab8ec
005ab8cc  04 00 15 e5                                      ldr r0, [r5, #-4]
005ab8d0  04 50 45 e2                                      sub r5, r5, #4
005ab8d4  00 00 50 e3                                      cmp r0, #0
005ab8d8  00 00 00 0a                                      beq #0x5ab8e0
005ab8dc  28 c7 f5 eb                                      bl #0x31d584
005ab8e0  05 00 57 e1                                      cmp r7, r5
005ab8e4  f8 ff ff 1a                                      bne #0x5ab8cc
005ab8e8  00 70 94 e5                                      ldr r7, [r4]
005ab8ec  07 00 a0 e1                                      mov r0, r7
005ab8f0  06 60 88 e0                                      add r6, r8, r6
005ab8f4  d5 92 f5 eb                                      bl #0x310450
005ab8f8  08 60 84 e5                                      str r6, [r4, #8]
005ab8fc  00 05 84 e8                                      stm r4, {r8, sl}
005ab900  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005ab904  03 60 e0 e3                                      mvn r6, #3
005ab908  ce ff ff ea                                      b #0x5ab848

; FUNCTION 0x005ab90c, declared_size=76, range_size=76, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5scene17CAppendMeshBufferEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
005ab90c  70 40 2d e9                                      push {r4, r5, r6, lr}
005ab910  04 40 90 e5                                      ldr r4, [r0, #4]
005ab914  00 50 90 e5                                      ldr r5, [r0]
005ab918  00 60 a0 e1                                      mov r6, r0
005ab91c  05 00 54 e1                                      cmp r4, r5
005ab920  06 00 00 0a                                      beq #0x5ab940
005ab924  04 00 14 e5                                      ldr r0, [r4, #-4]
005ab928  04 40 44 e2                                      sub r4, r4, #4
005ab92c  00 00 50 e3                                      cmp r0, #0
005ab930  00 00 00 0a                                      beq #0x5ab938
005ab934  12 c7 f5 eb                                      bl #0x31d584
005ab938  04 00 55 e1                                      cmp r5, r4
005ab93c  f8 ff ff 1a                                      bne #0x5ab924
005ab940  00 00 96 e5                                      ldr r0, [r6]
005ab944  00 00 50 e3                                      cmp r0, #0
005ab948  00 00 00 0a                                      beq #0x5ab950
005ab94c  bf 92 f5 eb                                      bl #0x310450
005ab950  06 00 a0 e1                                      mov r0, r6
005ab954  70 80 bd e8                                      pop {r4, r5, r6, pc}
