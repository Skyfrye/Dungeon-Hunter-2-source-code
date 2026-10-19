; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0066bad8, declared_size=328, range_size=328, mode=arm
; class-group: std::vector<glitch::core::CMatrix4<float> const*, glitch::core::SAllocator<glitch::core::CMatrix4<float> const*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPKN6glitch4core8CMatrix4IfEENS1_10SAllocatorIS5_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS5_jRKS5_RKSt12__false_type
; demangled: std::vector<glitch::core::CMatrix4<float> const*, glitch::core::SAllocator<glitch::core::CMatrix4<float> const*, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::core::CMatrix4<float> const**, unsigned int, glitch::core::CMatrix4<float> const* const&, std::__false_type const&)
; decoder-mode: arm
0066bad8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0066badc  00 c0 90 e5                                      ldr ip, [r0]
0066bae0  03 50 a0 e1                                      mov r5, r3
0066bae4  14 d0 4d e2                                      sub sp, sp, #0x14
0066bae8  0c 00 53 e1                                      cmp r3, ip
0066baec  00 40 a0 e1                                      mov r4, r0
0066baf0  01 60 a0 e1                                      mov r6, r1
0066baf4  02 30 a0 e1                                      mov r3, r2
0066baf8  04 70 90 35                                      ldrlo r7, [r0, #4]
0066bafc  0a 00 00 3a                                      blo #0x66bb2c
0066bb00  04 70 90 e5                                      ldr r7, [r0, #4]
0066bb04  07 00 55 e1                                      cmp r5, r7
0066bb08  07 00 00 2a                                      bhs #0x66bb2c
0066bb0c  00 c0 95 e5                                      ldr ip, [r5]
0066bb10  10 30 8d e2                                      add r3, sp, #0x10
0066bb14  08 c0 23 e5                                      str ip, [r3, #-8]!
0066bb18  0c c0 8d e2                                      add ip, sp, #0xc
0066bb1c  00 c0 8d e5                                      str ip, [sp]
0066bb20  ec ff ff eb                                      bl #0x66bad8
0066bb24  14 d0 8d e2                                      add sp, sp, #0x14
0066bb28  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0066bb2c  07 20 66 e0                                      rsb r2, r6, r7
0066bb30  42 81 a0 e1                                      asr r8, r2, #2
0066bb34  08 00 53 e1                                      cmp r3, r8
0066bb38  1c 00 00 2a                                      bhs #0x66bbb0
0066bb3c  03 81 a0 e1                                      lsl r8, r3, #2
0066bb40  07 30 68 e0                                      rsb r3, r8, r7
0066bb44  07 00 53 e1                                      cmp r3, r7
0066bb48  07 a0 a0 01                                      moveq sl, r7
0066bb4c  05 00 00 0a                                      beq #0x66bb68
0066bb50  03 10 a0 e1                                      mov r1, r3
0066bb54  07 20 63 e0                                      rsb r2, r3, r7
0066bb58  07 00 a0 e1                                      mov r0, r7
0066bb5c  03 a0 a0 e1                                      mov sl, r3
0066bb60  40 8b f2 eb                                      bl #0x30e868
0066bb64  04 30 94 e5                                      ldr r3, [r4, #4]
0066bb68  0a 20 66 e0                                      rsb r2, r6, sl
0066bb6c  08 30 83 e0                                      add r3, r3, r8
0066bb70  00 00 52 e3                                      cmp r2, #0
0066bb74  04 30 84 e5                                      str r3, [r4, #4]
0066bb78  02 00 00 da                                      ble #0x66bb88
0066bb7c  07 00 62 e0                                      rsb r0, r2, r7
0066bb80  06 10 a0 e1                                      mov r1, r6
0066bb84  eb 88 f2 eb                                      bl #0x30df38
0066bb88  48 81 a0 e1                                      asr r8, r8, #2
0066bb8c  00 00 58 e3                                      cmp r8, #0
0066bb90  e3 ff ff da                                      ble #0x66bb24
0066bb94  00 20 a0 e3                                      mov r2, #0
0066bb98  00 10 95 e5                                      ldr r1, [r5]
0066bb9c  02 11 86 e7                                      str r1, [r6, r2, lsl #2]
0066bba0  01 20 82 e2                                      add r2, r2, #1
0066bba4  08 00 52 e1                                      cmp r2, r8
0066bba8  fa ff ff 1a                                      bne #0x66bb98
0066bbac  dc ff ff ea                                      b #0x66bb24
0066bbb0  03 30 68 e0                                      rsb r3, r8, r3
0066bbb4  53 a0 bd e7                                      sbfx sl, r3, #0, #0x1e
0066bbb8  00 00 5a e3                                      cmp sl, #0
0066bbbc  03 01 87 e0                                      add r0, r7, r3, lsl #2
0066bbc0  05 00 00 da                                      ble #0x66bbdc
0066bbc4  00 10 a0 e3                                      mov r1, #0
0066bbc8  00 c0 95 e5                                      ldr ip, [r5]
0066bbcc  01 c1 87 e7                                      str ip, [r7, r1, lsl #2]
0066bbd0  01 10 81 e2                                      add r1, r1, #1
0066bbd4  0a 00 51 e1                                      cmp r1, sl
0066bbd8  fa ff ff 1a                                      bne #0x66bbc8
0066bbdc  07 00 56 e1                                      cmp r6, r7
0066bbe0  04 00 84 e5                                      str r0, [r4, #4]
0066bbe4  02 00 00 0a                                      beq #0x66bbf4
0066bbe8  06 10 a0 e1                                      mov r1, r6
0066bbec  1d 8b f2 eb                                      bl #0x30e868
0066bbf0  04 00 94 e5                                      ldr r0, [r4, #4]
0066bbf4  08 01 80 e0                                      add r0, r0, r8, lsl #2
0066bbf8  00 00 58 e3                                      cmp r8, #0
0066bbfc  04 00 84 e5                                      str r0, [r4, #4]
0066bc00  c7 ff ff da                                      ble #0x66bb24
0066bc04  00 30 a0 e3                                      mov r3, #0
0066bc08  00 20 95 e5                                      ldr r2, [r5]
0066bc0c  03 21 86 e7                                      str r2, [r6, r3, lsl #2]
0066bc10  01 30 83 e2                                      add r3, r3, #1
0066bc14  03 00 58 e1                                      cmp r8, r3
0066bc18  fa ff ff 1a                                      bne #0x66bc08
0066bc1c  c0 ff ff ea                                      b #0x66bb24

; FUNCTION 0x0066bc20, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<glitch::core::CMatrix4<float> const*, glitch::core::SAllocator<glitch::core::CMatrix4<float> const*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPKN6glitch4core8CMatrix4IfEENS1_10SAllocatorIS5_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::core::CMatrix4<float> const*, glitch::core::SAllocator<glitch::core::CMatrix4<float> const*, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
0066bc20  70 40 2d e9                                      push {r4, r5, r6, lr}
0066bc24  14 00 90 e8                                      ldm r0, {r2, r4}
0066bc28  ff 3f 0f e3                                      movw r3, #0xffff
0066bc2c  ff 3f 43 e3                                      movt r3, #0x3fff
0066bc30  04 40 62 e0                                      rsb r4, r2, r4
0066bc34  44 41 a0 e1                                      asr r4, r4, #2
0066bc38  03 30 64 e0                                      rsb r3, r4, r3
0066bc3c  01 00 53 e1                                      cmp r3, r1
0066bc40  01 50 a0 e1                                      mov r5, r1
0066bc44  08 00 00 3a                                      blo #0x66bc6c
0066bc48  05 00 54 e1                                      cmp r4, r5
0066bc4c  04 00 84 20                                      addhs r0, r4, r4
0066bc50  05 00 84 30                                      addlo r0, r4, r5
0066bc54  07 01 70 e3                                      cmn r0, #0xc0000001
0066bc58  01 00 00 8a                                      bhi #0x66bc64
0066bc5c  04 00 50 e1                                      cmp r0, r4
0066bc60  00 00 00 2a                                      bhs #0x66bc68
0066bc64  03 01 e0 e3                                      mvn r0, #0xc0000000
0066bc68  70 80 bd e8                                      pop {r4, r5, r6, pc}
0066bc6c  08 00 9f e5                                      ldr r0, [pc, #8]
0066bc70  00 00 8f e0                                      add r0, pc, r0
0066bc74  71 74 02 eb                                      bl #0x708e40
0066bc78  f2 ff ff ea                                      b #0x66bc48
; mapping-symbol data/literal pool
0066bc7c  f8 27 25 00                                      .byte 0xf8, 0x27, 0x25, 0x00

; FUNCTION 0x0066c428, declared_size=216, range_size=216, mode=arm
; class-group: std::vector<glitch::core::CMatrix4<float> const*, glitch::core::SAllocator<glitch::core::CMatrix4<float> const*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPKN6glitch4core8CMatrix4IfEENS1_10SAllocatorIS5_LNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPS5_jRKS5_
; demangled: std::vector<glitch::core::CMatrix4<float> const*, glitch::core::SAllocator<glitch::core::CMatrix4<float> const*, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(glitch::core::CMatrix4<float> const**, unsigned int, glitch::core::CMatrix4<float> const* const&)
; decoder-mode: arm
0066c428  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0066c42c  00 60 52 e2                                      subs r6, r2, #0
0066c430  10 d0 4d e2                                      sub sp, sp, #0x10
0066c434  00 50 a0 e1                                      mov r5, r0
0066c438  01 70 a0 e1                                      mov r7, r1
0066c43c  03 40 a0 e1                                      mov r4, r3
0066c440  1e 00 00 0a                                      beq #0x66c4c0
0066c444  00 50 90 e9                                      ldmib r0, {ip, lr}
0066c448  0e c0 6c e0                                      rsb ip, ip, lr
0066c44c  4c 01 56 e1                                      cmp r6, ip, asr #2
0066c450  1c 00 00 9a                                      bls #0x66c4c8
0066c454  06 10 a0 e1                                      mov r1, r6
0066c458  f0 fd ff eb                                      bl #0x66bc20
0066c45c  00 91 a0 e1                                      lsl sb, r0, #2
0066c460  00 10 a0 e3                                      mov r1, #0
0066c464  09 00 a0 e1                                      mov r0, sb
0066c468  3e 90 f2 eb                                      bl #0x310568
0066c46c  00 10 95 e5                                      ldr r1, [r5]
0066c470  00 80 a0 e1                                      mov r8, r0
0066c474  01 a0 57 e0                                      subs sl, r7, r1
0066c478  00 00 a0 01                                      moveq r0, r0
0066c47c  15 00 00 1a                                      bne #0x66c4d8
0066c480  06 20 a0 e1                                      mov r2, r6
0066c484  00 30 a0 e3                                      mov r3, #0
0066c488  00 10 94 e5                                      ldr r1, [r4]
0066c48c  01 20 52 e2                                      subs r2, r2, #1
0066c490  03 10 80 e7                                      str r1, [r0, r3]
0066c494  04 30 83 e2                                      add r3, r3, #4
0066c498  fa ff ff 1a                                      bne #0x66c488
0066c49c  04 30 95 e5                                      ldr r3, [r5, #4]
0066c4a0  06 61 80 e0                                      add r6, r0, r6, lsl #2
0066c4a4  07 40 53 e0                                      subs r4, r3, r7
0066c4a8  0e 00 00 1a                                      bne #0x66c4e8
0066c4ac  00 00 95 e5                                      ldr r0, [r5]
0066c4b0  09 90 88 e0                                      add sb, r8, sb
0066c4b4  e5 8f f2 eb                                      bl #0x310450
0066c4b8  40 02 85 e9                                      stmib r5, {r6, sb}
0066c4bc  00 80 85 e5                                      str r8, [r5]
0066c4c0  10 d0 8d e2                                      add sp, sp, #0x10
0066c4c4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0066c4c8  0c c0 8d e2                                      add ip, sp, #0xc
0066c4cc  00 c0 8d e5                                      str ip, [sp]
0066c4d0  80 fd ff eb                                      bl #0x66bad8
0066c4d4  f9 ff ff ea                                      b #0x66c4c0
0066c4d8  0a 20 a0 e1                                      mov r2, sl
0066c4dc  95 86 f2 eb                                      bl #0x30df38
0066c4e0  0a 00 80 e0                                      add r0, r0, sl
0066c4e4  e5 ff ff ea                                      b #0x66c480
0066c4e8  06 00 a0 e1                                      mov r0, r6
0066c4ec  07 10 a0 e1                                      mov r1, r7
0066c4f0  04 20 a0 e1                                      mov r2, r4
0066c4f4  8f 86 f2 eb                                      bl #0x30df38
0066c4f8  04 60 80 e0                                      add r6, r0, r4
0066c4fc  ea ff ff ea                                      b #0x66c4ac

; FUNCTION 0x0066c500, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<glitch::core::CMatrix4<float> const*, glitch::core::SAllocator<glitch::core::CMatrix4<float> const*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPKN6glitch4core8CMatrix4IfEENS1_10SAllocatorIS5_LNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKS5_
; demangled: std::vector<glitch::core::CMatrix4<float> const*, glitch::core::SAllocator<glitch::core::CMatrix4<float> const*, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, glitch::core::CMatrix4<float> const* const&)
; decoder-mode: arm
0066c500  30 00 2d e9                                      push {r4, r5}
0066c504  04 40 90 e5                                      ldr r4, [r0, #4]
0066c508  00 50 90 e5                                      ldr r5, [r0]
0066c50c  02 30 a0 e1                                      mov r3, r2
0066c510  04 20 65 e0                                      rsb r2, r5, r4
0066c514  42 21 a0 e1                                      asr r2, r2, #2
0066c518  02 00 51 e1                                      cmp r1, r2
0066c51c  04 00 00 2a                                      bhs #0x66c534
0066c520  01 51 85 e0                                      add r5, r5, r1, lsl #2
0066c524  04 00 55 e1                                      cmp r5, r4
0066c528  04 50 80 15                                      strne r5, [r0, #4]
0066c52c  30 00 bd e8                                      pop {r4, r5}
0066c530  1e ff 2f e1                                      bx lr
0066c534  01 20 62 e0                                      rsb r2, r2, r1
0066c538  04 10 a0 e1                                      mov r1, r4
0066c53c  30 00 bd e8                                      pop {r4, r5}
0066c540  b8 ff ff ea                                      b #0x66c428
