; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005ba324, declared_size=332, range_size=332, mode=arm
; class-group: std::basic_stringbuf<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt15basic_stringbufIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEE7seekoffElii
; demangled: std::basic_stringbuf<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::seekoff(long, int, int)
; decoder-mode: arm
005ba324  30 00 2d e9                                      push {r4, r5}
005ba328  08 40 9d e5                                      ldr r4, [sp, #8]
005ba32c  20 c0 91 e5                                      ldr ip, [r1, #0x20]
005ba330  0c c0 04 e0                                      and ip, r4, ip
005ba334  dc 41 e0 e7                                      ubfx r4, ip, #3, #1
005ba338  00 00 54 e3                                      cmp r4, #0
005ba33c  5c c2 e0 e7                                      ubfx ip, ip, #4, #1
005ba340  10 00 00 0a                                      beq #0x5ba388
005ba344  08 50 91 e5                                      ldr r5, [r1, #8]
005ba348  00 00 55 e3                                      cmp r5, #0
005ba34c  07 00 00 0a                                      beq #0x5ba370
005ba350  00 00 5c e3                                      cmp ip, #0
005ba354  10 00 00 1a                                      bne #0x5ba39c
005ba358  02 00 53 e3                                      cmp r3, #2
005ba35c  13 00 00 0a                                      beq #0x5ba3b0
005ba360  04 00 53 e3                                      cmp r3, #4
005ba364  3d 00 00 0a                                      beq #0x5ba460
005ba368  01 00 53 e3                                      cmp r3, #1
005ba36c  1a 00 00 0a                                      beq #0x5ba3dc
005ba370  00 30 e0 e3                                      mvn r3, #0
005ba374  00 30 80 e5                                      str r3, [r0]
005ba378  00 30 a0 e3                                      mov r3, #0
005ba37c  04 30 80 e5                                      str r3, [r0, #4]
005ba380  30 00 bd e8                                      pop {r4, r5}
005ba384  1e ff 2f e1                                      bx lr
005ba388  00 00 5c e3                                      cmp ip, #0
005ba38c  00 30 e0 03                                      mvneq r3, #0
005ba390  00 30 80 05                                      streq r3, [r0]
005ba394  04 c0 80 05                                      streq ip, [r0, #4]
005ba398  f8 ff ff 0a                                      beq #0x5ba380
005ba39c  14 50 91 e5                                      ldr r5, [r1, #0x14]
005ba3a0  00 00 55 e3                                      cmp r5, #0
005ba3a4  f1 ff ff 0a                                      beq #0x5ba370
005ba3a8  02 00 53 e3                                      cmp r3, #2
005ba3ac  eb ff ff 1a                                      bne #0x5ba360
005ba3b0  00 00 54 e3                                      cmp r4, #0
005ba3b4  08 50 91 15                                      ldrne r5, [r1, #8]
005ba3b8  04 30 91 15                                      ldrne r3, [r1, #4]
005ba3bc  14 50 91 05                                      ldreq r5, [r1, #0x14]
005ba3c0  10 30 91 05                                      ldreq r3, [r1, #0x10]
005ba3c4  00 00 52 e3                                      cmp r2, #0
005ba3c8  04 20 80 05                                      streq r2, [r0, #4]
005ba3cc  05 30 63 e0                                      rsb r3, r3, r5
005ba3d0  00 30 80 05                                      streq r3, [r0]
005ba3d4  01 00 00 1a                                      bne #0x5ba3e0
005ba3d8  e8 ff ff ea                                      b #0x5ba380
005ba3dc  00 30 a0 e3                                      mov r3, #0
005ba3e0  00 00 54 e3                                      cmp r4, #0
005ba3e4  02 20 83 e0                                      add r2, r3, r2
005ba3e8  0b 00 00 0a                                      beq #0x5ba41c
005ba3ec  04 30 91 e5                                      ldr r3, [r1, #4]
005ba3f0  0c 40 91 e5                                      ldr r4, [r1, #0xc]
005ba3f4  04 40 63 e0                                      rsb r4, r3, r4
005ba3f8  04 00 52 e1                                      cmp r2, r4
005ba3fc  00 50 a0 d3                                      movle r5, #0
005ba400  01 50 a0 c3                                      movgt r5, #1
005ba404  a2 5f 95 e1                                      orrs r5, r5, r2, lsr #31
005ba408  d8 ff ff 1a                                      bne #0x5ba370
005ba40c  04 40 83 e0                                      add r4, r3, r4
005ba410  02 30 83 e0                                      add r3, r3, r2
005ba414  08 30 81 e5                                      str r3, [r1, #8]
005ba418  0c 40 81 e5                                      str r4, [r1, #0xc]
005ba41c  00 00 5c e3                                      cmp ip, #0
005ba420  0b 00 00 0a                                      beq #0x5ba454
005ba424  10 30 91 e5                                      ldr r3, [r1, #0x10]
005ba428  18 c0 91 e5                                      ldr ip, [r1, #0x18]
005ba42c  0c c0 63 e0                                      rsb ip, r3, ip
005ba430  0c 00 52 e1                                      cmp r2, ip
005ba434  00 40 a0 d3                                      movle r4, #0
005ba438  01 40 a0 c3                                      movgt r4, #1
005ba43c  a2 4f 94 e1                                      orrs r4, r4, r2, lsr #31
005ba440  ca ff ff 1a                                      bne #0x5ba370
005ba444  0c c0 83 e0                                      add ip, r3, ip
005ba448  02 30 83 e0                                      add r3, r3, r2
005ba44c  14 30 81 e5                                      str r3, [r1, #0x14]
005ba450  18 c0 81 e5                                      str ip, [r1, #0x18]
005ba454  00 30 a0 e3                                      mov r3, #0
005ba458  0c 00 80 e8                                      stm r0, {r2, r3}
005ba45c  c7 ff ff ea                                      b #0x5ba380
005ba460  34 50 91 e5                                      ldr r5, [r1, #0x34]
005ba464  38 30 91 e5                                      ldr r3, [r1, #0x38]
005ba468  05 30 63 e0                                      rsb r3, r3, r5
005ba46c  db ff ff ea                                      b #0x5ba3e0

; FUNCTION 0x005ba470, declared_size=228, range_size=228, mode=arm
; class-group: std::basic_stringbuf<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt15basic_stringbufIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEE7seekposESt4fposI9mbstate_tEi
; demangled: std::basic_stringbuf<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::seekpos(std::fpos<mbstate_t>, int)
; decoder-mode: arm
005ba470  70 00 2d e9                                      push {r4, r5, r6}
005ba474  0c d0 4d e2                                      sub sp, sp, #0xc
005ba478  18 40 9d e5                                      ldr r4, [sp, #0x18]
005ba47c  20 c0 91 e5                                      ldr ip, [r1, #0x20]
005ba480  0c c0 04 e0                                      and ip, r4, ip
005ba484  dc 41 e0 e7                                      ubfx r4, ip, #3, #1
005ba488  00 00 54 e3                                      cmp r4, #0
005ba48c  5c c2 e0 e7                                      ubfx ip, ip, #4, #1
005ba490  15 00 00 0a                                      beq #0x5ba4ec
005ba494  08 50 91 e5                                      ldr r5, [r1, #8]
005ba498  00 00 55 e3                                      cmp r5, #0
005ba49c  0b 00 00 0a                                      beq #0x5ba4d0
005ba4a0  00 00 5c e3                                      cmp ip, #0
005ba4a4  15 00 00 1a                                      bne #0x5ba500
005ba4a8  00 00 52 e3                                      cmp r2, #0
005ba4ac  07 00 00 ba                                      blt #0x5ba4d0
005ba4b0  04 50 91 e5                                      ldr r5, [r1, #4]
005ba4b4  0c 40 91 e5                                      ldr r4, [r1, #0xc]
005ba4b8  04 60 65 e0                                      rsb r6, r5, r4
005ba4bc  02 00 56 e1                                      cmp r6, r2
005ba4c0  02 50 85 a0                                      addge r5, r5, r2
005ba4c4  08 50 81 a5                                      strge r5, [r1, #8]
005ba4c8  0c 40 81 a5                                      strge r4, [r1, #0xc]
005ba4cc  10 00 00 aa                                      bge #0x5ba514
005ba4d0  00 30 e0 e3                                      mvn r3, #0
005ba4d4  00 30 80 e5                                      str r3, [r0]
005ba4d8  00 30 a0 e3                                      mov r3, #0
005ba4dc  04 30 80 e5                                      str r3, [r0, #4]
005ba4e0  0c d0 8d e2                                      add sp, sp, #0xc
005ba4e4  70 00 bd e8                                      pop {r4, r5, r6}
005ba4e8  1e ff 2f e1                                      bx lr
005ba4ec  00 00 5c e3                                      cmp ip, #0
005ba4f0  00 30 e0 03                                      mvneq r3, #0
005ba4f4  00 30 80 05                                      streq r3, [r0]
005ba4f8  04 c0 80 05                                      streq ip, [r0, #4]
005ba4fc  f7 ff ff 0a                                      beq #0x5ba4e0
005ba500  14 50 91 e5                                      ldr r5, [r1, #0x14]
005ba504  00 00 55 e3                                      cmp r5, #0
005ba508  f0 ff ff 0a                                      beq #0x5ba4d0
005ba50c  00 00 54 e3                                      cmp r4, #0
005ba510  e4 ff ff 1a                                      bne #0x5ba4a8
005ba514  00 00 5c e3                                      cmp ip, #0
005ba518  0b 00 00 0a                                      beq #0x5ba54c
005ba51c  00 00 52 e3                                      cmp r2, #0
005ba520  ea ff ff ba                                      blt #0x5ba4d0
005ba524  38 c0 91 e5                                      ldr ip, [r1, #0x38]
005ba528  34 40 91 e5                                      ldr r4, [r1, #0x34]
005ba52c  04 40 6c e0                                      rsb r4, ip, r4
005ba530  04 00 52 e1                                      cmp r2, r4
005ba534  e5 ff ff 8a                                      bhi #0x5ba4d0
005ba538  04 40 8c e0                                      add r4, ip, r4
005ba53c  02 50 8c e0                                      add r5, ip, r2
005ba540  14 50 81 e5                                      str r5, [r1, #0x14]
005ba544  18 40 81 e5                                      str r4, [r1, #0x18]
005ba548  10 c0 81 e5                                      str ip, [r1, #0x10]
005ba54c  0c 00 80 e8                                      stm r0, {r2, r3}
005ba550  e2 ff ff ea                                      b #0x5ba4e0

; FUNCTION 0x005ba554, declared_size=24, range_size=24, mode=arm
; class-group: std::basic_stringbuf<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt15basic_stringbufIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEE9underflowEv
; demangled: std::basic_stringbuf<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::underflow()
; decoder-mode: arm
005ba554  0c 20 90 e5                                      ldr r2, [r0, #0xc]
005ba558  08 30 90 e5                                      ldr r3, [r0, #8]
005ba55c  02 00 53 e1                                      cmp r3, r2
005ba560  00 00 e0 03                                      mvneq r0, #0
005ba564  00 00 d3 15                                      ldrbne r0, [r3]
005ba568  1e ff 2f e1                                      bx lr

; FUNCTION 0x005ba56c, declared_size=32, range_size=32, mode=arm
; class-group: std::basic_stringbuf<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt15basic_stringbufIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEE5uflowEv
; demangled: std::basic_stringbuf<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::uflow()
; decoder-mode: arm
005ba56c  08 20 90 e5                                      ldr r2, [r0, #8]
005ba570  0c 10 90 e5                                      ldr r1, [r0, #0xc]
005ba574  00 30 a0 e1                                      mov r3, r0
005ba578  01 00 52 e1                                      cmp r2, r1
005ba57c  01 00 d2 14                                      ldrbne r0, [r2], #1
005ba580  00 00 e0 03                                      mvneq r0, #0
005ba584  08 20 83 15                                      strne r2, [r3, #8]
005ba588  1e ff 2f e1                                      bx lr

; FUNCTION 0x005ba58c, declared_size=108, range_size=108, mode=arm
; class-group: std::basic_stringbuf<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt15basic_stringbufIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEE9pbackfailEi
; demangled: std::basic_stringbuf<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::pbackfail(int)
; decoder-mode: arm
005ba58c  04 40 2d e5                                      str r4, [sp, #-4]!
005ba590  08 20 90 e5                                      ldr r2, [r0, #8]
005ba594  04 c0 90 e5                                      ldr ip, [r0, #4]
005ba598  00 30 a0 e1                                      mov r3, r0
005ba59c  0c 00 52 e1                                      cmp r2, ip
005ba5a0  12 00 00 0a                                      beq #0x5ba5f0
005ba5a4  01 00 71 e3                                      cmn r1, #1
005ba5a8  01 20 42 02                                      subeq r2, r2, #1
005ba5ac  08 20 80 05                                      streq r2, [r0, #8]
005ba5b0  00 10 a0 03                                      moveq r1, #0
005ba5b4  05 00 00 0a                                      beq #0x5ba5d0
005ba5b8  01 c0 52 e5                                      ldrb ip, [r2, #-1]
005ba5bc  71 00 ef e6                                      uxtb r0, r1
005ba5c0  01 40 42 e2                                      sub r4, r2, #1
005ba5c4  0c 00 50 e1                                      cmp r0, ip
005ba5c8  08 40 83 05                                      streq r4, [r3, #8]
005ba5cc  02 00 00 1a                                      bne #0x5ba5dc
005ba5d0  01 00 a0 e1                                      mov r0, r1
005ba5d4  10 00 bd e8                                      ldm sp!, {r4}
005ba5d8  1e ff 2f e1                                      bx lr
005ba5dc  20 c0 93 e5                                      ldr ip, [r3, #0x20]
005ba5e0  10 00 1c e3                                      tst ip, #0x10
005ba5e4  08 40 83 15                                      strne r4, [r3, #8]
005ba5e8  01 00 42 15                                      strbne r0, [r2, #-1]
005ba5ec  f7 ff ff 1a                                      bne #0x5ba5d0
005ba5f0  00 10 e0 e3                                      mvn r1, #0
005ba5f4  f5 ff ff ea                                      b #0x5ba5d0

; FUNCTION 0x005ba734, declared_size=124, range_size=124, mode=arm
; class-group: std::basic_stringbuf<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt15basic_stringbufIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEE3strERKSbIcS1_S7_E
; demangled: std::basic_stringbuf<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::str(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
005ba734  10 40 2d e9                                      push {r4, lr}
005ba738  00 40 a0 e1                                      mov r4, r0
005ba73c  24 00 80 e2                                      add r0, r0, #0x24
005ba740  01 00 50 e1                                      cmp r0, r1
005ba744  02 00 00 0a                                      beq #0x5ba754
005ba748  10 20 91 e5                                      ldr r2, [r1, #0x10]
005ba74c  14 10 91 e5                                      ldr r1, [r1, #0x14]
005ba750  0c 99 f5 eb                                      bl #0x320b88
005ba754  20 30 94 e5                                      ldr r3, [r4, #0x20]
005ba758  34 00 94 e5                                      ldr r0, [r4, #0x34]
005ba75c  38 10 94 e5                                      ldr r1, [r4, #0x38]
005ba760  08 00 13 e3                                      tst r3, #8
005ba764  00 20 a0 e1                                      mov r2, r0
005ba768  04 00 00 0a                                      beq #0x5ba780
005ba76c  02 00 13 e3                                      tst r3, #2
005ba770  00 c0 a0 11                                      movne ip, r0
005ba774  01 c0 a0 01                                      moveq ip, r1
005ba778  02 10 84 e9                                      stmib r4, {r1, ip}
005ba77c  0c 00 84 e5                                      str r0, [r4, #0xc]
005ba780  10 00 13 e3                                      tst r3, #0x10
005ba784  04 00 00 0a                                      beq #0x5ba79c
005ba788  03 00 13 e3                                      tst r3, #3
005ba78c  14 00 84 05                                      streq r0, [r4, #0x14]
005ba790  10 10 84 05                                      streq r1, [r4, #0x10]
005ba794  18 20 84 05                                      streq r2, [r4, #0x18]
005ba798  00 00 00 1a                                      bne #0x5ba7a0
005ba79c  10 80 bd e8                                      pop {r4, pc}
005ba7a0  18 20 84 e5                                      str r2, [r4, #0x18]
005ba7a4  10 20 84 e5                                      str r2, [r4, #0x10]
005ba7a8  14 20 84 e5                                      str r2, [r4, #0x14]
005ba7ac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005bc6a0, declared_size=104, range_size=104, mode=arm
; class-group: std::basic_stringbuf<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt15basic_stringbufIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::basic_stringbuf<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::~basic_stringbuf()
; decoder-mode: arm
005bc6a0  70 40 2d e9                                      push {r4, r5, r6, lr}
005bc6a4  50 40 9f e5                                      ldr r4, [pc, #0x50]
005bc6a8  50 30 9f e5                                      ldr r3, [pc, #0x50]
005bc6ac  00 20 a0 e1                                      mov r2, r0
005bc6b0  04 40 8f e0                                      add r4, pc, r4
005bc6b4  03 30 94 e7                                      ldr r3, [r4, r3]
005bc6b8  00 50 a0 e1                                      mov r5, r0
005bc6bc  08 30 83 e2                                      add r3, r3, #8
005bc6c0  24 30 82 e4                                      str r3, [r2], #0x24
005bc6c4  14 00 92 e5                                      ldr r0, [r2, #0x14]
005bc6c8  02 00 50 e1                                      cmp r0, r2
005bc6cc  02 00 00 0a                                      beq #0x5bc6dc
005bc6d0  00 00 50 e3                                      cmp r0, #0
005bc6d4  00 00 00 0a                                      beq #0x5bc6dc
005bc6d8  5c 4f f5 eb                                      bl #0x310450
005bc6dc  20 30 9f e5                                      ldr r3, [pc, #0x20]
005bc6e0  05 00 a0 e1                                      mov r0, r5
005bc6e4  03 30 94 e7                                      ldr r3, [r4, r3]
005bc6e8  08 30 83 e2                                      add r3, r3, #8
005bc6ec  1c 30 80 e4                                      str r3, [r0], #0x1c
005bc6f0  da 31 05 eb                                      bl #0x708e60
005bc6f4  05 00 a0 e1                                      mov r0, r5
005bc6f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005bc6fc  e0 83 3d 00 80 47 00 00 b4 07 00 00              .byte 0xe0, 0x83, 0x3d, 0x00, 0x80, 0x47, 0x00, 0x00, 0xb4, 0x07, 0x00, 0x00

; FUNCTION 0x005bc708, declared_size=28, range_size=28, mode=arm
; class-group: std::basic_stringbuf<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt15basic_stringbufIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEED0Ev
; demangled: std::basic_stringbuf<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::~basic_stringbuf()
; decoder-mode: arm
005bc708  10 40 2d e9                                      push {r4, lr}
005bc70c  00 40 a0 e1                                      mov r4, r0
005bc710  e2 ff ff eb                                      bl #0x5bc6a0
005bc714  04 00 a0 e1                                      mov r0, r4
005bc718  e4 46 f5 eb                                      bl #0x30e2b0
005bc71c  04 00 a0 e1                                      mov r0, r4
005bc720  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005bc824, declared_size=196, range_size=196, mode=arm
; class-group: std::basic_stringbuf<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt15basic_stringbufIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEE8overflowEi
; demangled: std::basic_stringbuf<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::overflow(int)
; decoder-mode: arm
005bc824  01 00 71 e3                                      cmn r1, #1
005bc828  70 40 2d e9                                      push {r4, r5, r6, lr}
005bc82c  01 40 a0 e1                                      mov r4, r1
005bc830  00 50 a0 e1                                      mov r5, r0
005bc834  00 40 a0 03                                      moveq r4, #0
005bc838  01 00 00 1a                                      bne #0x5bc844
005bc83c  04 00 a0 e1                                      mov r0, r4
005bc840  70 80 bd e8                                      pop {r4, r5, r6, pc}
005bc844  20 30 90 e5                                      ldr r3, [r0, #0x20]
005bc848  10 00 13 e3                                      tst r3, #0x10
005bc84c  00 40 e0 03                                      mvneq r4, #0
005bc850  f9 ff ff 0a                                      beq #0x5bc83c
005bc854  14 10 90 e5                                      ldr r1, [r0, #0x14]
005bc858  18 20 90 e5                                      ldr r2, [r0, #0x18]
005bc85c  02 00 51 e1                                      cmp r1, r2
005bc860  10 00 00 3a                                      blo #0x5bc8a8
005bc864  08 00 13 e3                                      tst r3, #8
005bc868  15 00 00 0a                                      beq #0x5bc8c4
005bc86c  48 00 90 e9                                      ldmib r0, {r3, r6}
005bc870  74 10 af e6                                      sxtb r1, r4
005bc874  24 00 80 e2                                      add r0, r0, #0x24
005bc878  06 60 63 e0                                      rsb r6, r3, r6
005bc87c  c9 e5 f9 eb                                      bl #0x435fa8
005bc880  38 20 95 e5                                      ldr r2, [r5, #0x38]
005bc884  34 30 95 e5                                      ldr r3, [r5, #0x34]
005bc888  06 60 82 e0                                      add r6, r2, r6
005bc88c  14 30 85 e5                                      str r3, [r5, #0x14]
005bc890  08 60 85 e5                                      str r6, [r5, #8]
005bc894  10 20 85 e5                                      str r2, [r5, #0x10]
005bc898  04 20 85 e5                                      str r2, [r5, #4]
005bc89c  0c 30 85 e5                                      str r3, [r5, #0xc]
005bc8a0  18 30 85 e5                                      str r3, [r5, #0x18]
005bc8a4  e4 ff ff ea                                      b #0x5bc83c
005bc8a8  24 00 80 e2                                      add r0, r0, #0x24
005bc8ac  74 10 af e6                                      sxtb r1, r4
005bc8b0  bc e5 f9 eb                                      bl #0x435fa8
005bc8b4  14 30 95 e5                                      ldr r3, [r5, #0x14]
005bc8b8  01 30 83 e2                                      add r3, r3, #1
005bc8bc  14 30 85 e5                                      str r3, [r5, #0x14]
005bc8c0  dd ff ff ea                                      b #0x5bc83c
005bc8c4  24 00 80 e2                                      add r0, r0, #0x24
005bc8c8  74 10 af e6                                      sxtb r1, r4
005bc8cc  b5 e5 f9 eb                                      bl #0x435fa8
005bc8d0  34 30 95 e5                                      ldr r3, [r5, #0x34]
005bc8d4  38 20 95 e5                                      ldr r2, [r5, #0x38]
005bc8d8  14 30 85 e5                                      str r3, [r5, #0x14]
005bc8dc  10 20 85 e5                                      str r2, [r5, #0x10]
005bc8e0  18 30 85 e5                                      str r3, [r5, #0x18]
005bc8e4  d4 ff ff ea                                      b #0x5bc83c

; FUNCTION 0x005bc9d4, declared_size=252, range_size=252, mode=arm
; class-group: std::basic_stringbuf<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt15basic_stringbufIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEE10_M_xsputncEci
; demangled: std::basic_stringbuf<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::_M_xsputnc(char, int)
; decoder-mode: arm
005bc9d4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005bc9d8  20 30 90 e5                                      ldr r3, [r0, #0x20]
005bc9dc  00 40 a0 e1                                      mov r4, r0
005bc9e0  01 60 a0 e1                                      mov r6, r1
005bc9e4  53 72 e0 e7                                      ubfx r7, r3, #4, #1
005bc9e8  00 00 52 e3                                      cmp r2, #0
005bc9ec  00 70 a0 d3                                      movle r7, #0
005bc9f0  01 70 07 c2                                      andgt r7, r7, #1
005bc9f4  00 00 57 e3                                      cmp r7, #0
005bc9f8  02 50 a0 e1                                      mov r5, r2
005bc9fc  01 00 00 1a                                      bne #0x5bca08
005bca00  07 00 a0 e1                                      mov r0, r7
005bca04  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005bca08  10 c0 90 e5                                      ldr ip, [r0, #0x10]
005bca0c  38 00 90 e5                                      ldr r0, [r0, #0x38]
005bca10  00 00 5c e1                                      cmp ip, r0
005bca14  00 70 a0 13                                      movne r7, #0
005bca18  1c 00 00 0a                                      beq #0x5bca90
005bca1c  08 00 13 e3                                      tst r3, #8
005bca20  0f 00 00 0a                                      beq #0x5bca64
005bca24  08 10 94 e9                                      ldmib r4, {r3, ip}
005bca28  06 20 a0 e1                                      mov r2, r6
005bca2c  24 00 84 e2                                      add r0, r4, #0x24
005bca30  05 10 a0 e1                                      mov r1, r5
005bca34  0c 60 63 e0                                      rsb r6, r3, ip
005bca38  aa ff ff eb                                      bl #0x5bc8e8
005bca3c  38 20 94 e5                                      ldr r2, [r4, #0x38]
005bca40  34 30 94 e5                                      ldr r3, [r4, #0x34]
005bca44  07 00 85 e0                                      add r0, r5, r7
005bca48  06 60 82 e0                                      add r6, r2, r6
005bca4c  44 00 84 e9                                      stmib r4, {r2, r6}
005bca50  0c 30 84 e5                                      str r3, [r4, #0xc]
005bca54  14 30 84 e5                                      str r3, [r4, #0x14]
005bca58  10 20 84 e5                                      str r2, [r4, #0x10]
005bca5c  18 30 84 e5                                      str r3, [r4, #0x18]
005bca60  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005bca64  06 20 a0 e1                                      mov r2, r6
005bca68  24 00 84 e2                                      add r0, r4, #0x24
005bca6c  05 10 a0 e1                                      mov r1, r5
005bca70  9c ff ff eb                                      bl #0x5bc8e8
005bca74  34 30 94 e5                                      ldr r3, [r4, #0x34]
005bca78  38 20 94 e5                                      ldr r2, [r4, #0x38]
005bca7c  07 00 85 e0                                      add r0, r5, r7
005bca80  14 30 84 e5                                      str r3, [r4, #0x14]
005bca84  10 20 84 e5                                      str r2, [r4, #0x10]
005bca88  18 30 84 e5                                      str r3, [r4, #0x18]
005bca8c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005bca90  14 00 94 e5                                      ldr r0, [r4, #0x14]
005bca94  34 70 94 e5                                      ldr r7, [r4, #0x34]
005bca98  07 70 60 e0                                      rsb r7, r0, r7
005bca9c  02 00 57 e1                                      cmp r7, r2
005bcaa0  04 00 00 ca                                      bgt #0x5bcab8
005bcaa4  07 20 a0 e1                                      mov r2, r7
005bcaa8  6c 46 f5 eb                                      bl #0x30e460
005bcaac  05 50 67 e0                                      rsb r5, r7, r5
005bcab0  20 30 94 e5                                      ldr r3, [r4, #0x20]
005bcab4  d8 ff ff ea                                      b #0x5bca1c
005bcab8  68 46 f5 eb                                      bl #0x30e460
005bcabc  14 30 94 e5                                      ldr r3, [r4, #0x14]
005bcac0  05 00 a0 e1                                      mov r0, r5
005bcac4  05 50 83 e0                                      add r5, r3, r5
005bcac8  14 50 84 e5                                      str r5, [r4, #0x14]
005bcacc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005bcad0, declared_size=148, range_size=148, mode=arm
; class-group: std::basic_stringbuf<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt15basic_stringbufIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEE6setbufEPci
; demangled: std::basic_stringbuf<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::setbuf(char*, int)
; decoder-mode: arm
005bcad0  00 10 52 e2                                      subs r1, r2, #0
005bcad4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005bcad8  00 40 a0 e1                                      mov r4, r0
005bcadc  13 00 00 da                                      ble #0x5bcb30
005bcae0  38 30 90 e5                                      ldr r3, [r0, #0x38]
005bcae4  10 20 90 e5                                      ldr r2, [r0, #0x10]
005bcae8  03 00 52 e1                                      cmp r2, r3
005bcaec  14 50 90 05                                      ldreq r5, [r0, #0x14]
005bcaf0  04 20 90 e5                                      ldr r2, [r0, #4]
005bcaf4  00 50 a0 13                                      movne r5, #0
005bcaf8  05 60 a0 11                                      movne r6, r5
005bcafc  01 60 a0 03                                      moveq r6, #1
005bcb00  05 50 63 00                                      rsbeq r5, r3, r5
005bcb04  02 00 53 e1                                      cmp r3, r2
005bcb08  0a 00 00 0a                                      beq #0x5bcb38
005bcb0c  24 00 80 e2                                      add r0, r0, #0x24
005bcb10  be e8 fe eb                                      bl #0x576e10
005bcb14  38 30 94 e5                                      ldr r3, [r4, #0x38]
005bcb18  00 00 56 e3                                      cmp r6, #0
005bcb1c  34 20 94 15                                      ldrne r2, [r4, #0x34]
005bcb20  05 50 83 10                                      addne r5, r3, r5
005bcb24  14 50 84 15                                      strne r5, [r4, #0x14]
005bcb28  18 20 84 15                                      strne r2, [r4, #0x18]
005bcb2c  10 30 84 15                                      strne r3, [r4, #0x10]
005bcb30  04 00 a0 e1                                      mov r0, r4
005bcb34  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005bcb38  08 70 90 e5                                      ldr r7, [r0, #8]
005bcb3c  24 00 80 e2                                      add r0, r0, #0x24
005bcb40  07 70 63 e0                                      rsb r7, r3, r7
005bcb44  b1 e8 fe eb                                      bl #0x576e10
005bcb48  38 30 94 e5                                      ldr r3, [r4, #0x38]
005bcb4c  34 20 94 e5                                      ldr r2, [r4, #0x34]
005bcb50  07 70 83 e0                                      add r7, r3, r7
005bcb54  08 70 84 e5                                      str r7, [r4, #8]
005bcb58  0c 20 84 e5                                      str r2, [r4, #0xc]
005bcb5c  04 30 84 e5                                      str r3, [r4, #4]
005bcb60  ec ff ff ea                                      b #0x5bcb18

; FUNCTION 0x005bcb64, declared_size=284, range_size=284, mode=arm
; class-group: std::basic_stringbuf<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt15basic_stringbufIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEE6xsputnEPKci
; demangled: std::basic_stringbuf<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::xsputn(char const*, int)
; decoder-mode: arm
005bcb64  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005bcb68  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005bcb6c  02 50 a0 e1                                      mov r5, r2
005bcb70  08 d0 4d e2                                      sub sp, sp, #8
005bcb74  5c 32 e0 e7                                      ubfx r3, ip, #4, #1
005bcb78  00 00 52 e3                                      cmp r2, #0
005bcb7c  00 30 a0 d3                                      movle r3, #0
005bcb80  01 30 03 c2                                      andgt r3, r3, #1
005bcb84  00 00 53 e3                                      cmp r3, #0
005bcb88  00 40 a0 e1                                      mov r4, r0
005bcb8c  01 80 a0 e1                                      mov r8, r1
005bcb90  03 50 a0 01                                      moveq r5, r3
005bcb94  14 00 00 0a                                      beq #0x5bcbec
005bcb98  38 30 90 e5                                      ldr r3, [r0, #0x38]
005bcb9c  34 60 90 e5                                      ldr r6, [r0, #0x34]
005bcba0  06 00 53 e1                                      cmp r3, r6
005bcba4  02 00 00 0a                                      beq #0x5bcbb4
005bcba8  10 00 90 e5                                      ldr r0, [r0, #0x10]
005bcbac  00 00 53 e1                                      cmp r3, r0
005bcbb0  1e 00 00 0a                                      beq #0x5bcc30
005bcbb4  00 60 a0 e3                                      mov r6, #0
005bcbb8  08 00 1c e3                                      tst ip, #8
005bcbbc  0d 00 00 1a                                      bne #0x5bcbf8
005bcbc0  05 20 88 e0                                      add r2, r8, r5
005bcbc4  0d 30 a0 e1                                      mov r3, sp
005bcbc8  08 10 a0 e1                                      mov r1, r8
005bcbcc  24 00 84 e2                                      add r0, r4, #0x24
005bcbd0  91 45 f6 eb                                      bl #0x34e21c
005bcbd4  38 20 94 e5                                      ldr r2, [r4, #0x38]
005bcbd8  34 30 94 e5                                      ldr r3, [r4, #0x34]
005bcbdc  14 30 84 e5                                      str r3, [r4, #0x14]
005bcbe0  10 20 84 e5                                      str r2, [r4, #0x10]
005bcbe4  05 50 86 e0                                      add r5, r6, r5
005bcbe8  18 30 84 e5                                      str r3, [r4, #0x18]
005bcbec  05 00 a0 e1                                      mov r0, r5
005bcbf0  08 d0 8d e2                                      add sp, sp, #8
005bcbf4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005bcbf8  08 70 94 e5                                      ldr r7, [r4, #8]
005bcbfc  04 c0 94 e5                                      ldr ip, [r4, #4]
005bcc00  05 20 88 e0                                      add r2, r8, r5
005bcc04  04 30 8d e2                                      add r3, sp, #4
005bcc08  08 10 a0 e1                                      mov r1, r8
005bcc0c  24 00 84 e2                                      add r0, r4, #0x24
005bcc10  07 70 6c e0                                      rsb r7, ip, r7
005bcc14  80 45 f6 eb                                      bl #0x34e21c
005bcc18  38 20 94 e5                                      ldr r2, [r4, #0x38]
005bcc1c  34 30 94 e5                                      ldr r3, [r4, #0x34]
005bcc20  07 70 82 e0                                      add r7, r2, r7
005bcc24  84 00 84 e9                                      stmib r4, {r2, r7}
005bcc28  0c 30 84 e5                                      str r3, [r4, #0xc]
005bcc2c  ea ff ff ea                                      b #0x5bcbdc
005bcc30  14 00 94 e5                                      ldr r0, [r4, #0x14]
005bcc34  06 60 60 e0                                      rsb r6, r0, r6
005bcc38  06 00 55 e1                                      cmp r5, r6
005bcc3c  06 00 00 aa                                      bge #0x5bcc5c
005bcc40  00 00 55 e3                                      cmp r5, #0
005bcc44  01 00 00 0a                                      beq #0x5bcc50
005bcc48  06 47 f5 eb                                      bl #0x30e868
005bcc4c  14 00 94 e5                                      ldr r0, [r4, #0x14]
005bcc50  05 00 80 e0                                      add r0, r0, r5
005bcc54  14 00 84 e5                                      str r0, [r4, #0x14]
005bcc58  e3 ff ff ea                                      b #0x5bcbec
005bcc5c  00 00 56 e3                                      cmp r6, #0
005bcc60  02 00 00 1a                                      bne #0x5bcc70
005bcc64  05 50 66 e0                                      rsb r5, r6, r5
005bcc68  06 80 88 e0                                      add r8, r8, r6
005bcc6c  d1 ff ff ea                                      b #0x5bcbb8
005bcc70  06 20 a0 e1                                      mov r2, r6
005bcc74  fb 46 f5 eb                                      bl #0x30e868
005bcc78  20 c0 94 e5                                      ldr ip, [r4, #0x20]
005bcc7c  f8 ff ff ea                                      b #0x5bcc64
