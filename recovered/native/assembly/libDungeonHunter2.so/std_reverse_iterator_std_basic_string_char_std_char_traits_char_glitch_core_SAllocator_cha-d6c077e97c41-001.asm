; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e6964, declared_size=512, range_size=512, mode=arm
; class-group: std::reverse_iterator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >*> std::priv
; alias: _ZNSt4priv6__findISt16reverse_iteratorIPSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS4_6memory13E_MEMORY_HINTE0EEEEESA_EET_SD_SD_RKT0_RKSt26random_access_iterator_tag
; demangled: std::reverse_iterator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >*> std::priv::__find<std::reverse_iterator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >*>, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >(std::reverse_iterator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >*>, std::reverse_iterator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >*>, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&, std::random_access_iterator_tag const&)
; decoder-mode: arm
005e6964  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
005e6968  02 b0 a0 e1                                      mov fp, r2
005e696c  00 40 91 e5                                      ldr r4, [r1]
005e6970  00 20 92 e5                                      ldr r2, [r2]
005e6974  03 60 a0 e1                                      mov r6, r3
005e6978  01 50 a0 e1                                      mov r5, r1
005e697c  04 30 62 e0                                      rsb r3, r2, r4
005e6980  c3 31 a0 e1                                      asr r3, r3, #3
005e6984  00 90 a0 e1                                      mov sb, r0
005e6988  03 11 83 e0                                      add r1, r3, r3, lsl #2
005e698c  01 12 81 e0                                      add r1, r1, r1, lsl #4
005e6990  01 14 81 e0                                      add r1, r1, r1, lsl #8
005e6994  01 18 81 e0                                      add r1, r1, r1, lsl #16
005e6998  81 30 83 e0                                      add r3, r3, r1, lsl #1
005e699c  43 71 a0 e1                                      asr r7, r3, #2
005e69a0  00 00 57 e3                                      cmp r7, #0
005e69a4  21 00 00 ca                                      bgt #0x5e6a30
005e69a8  49 00 00 ea                                      b #0x5e6ad4
005e69ac  00 80 85 e5                                      str r8, [r5]
005e69b0  1c 00 14 e5                                      ldr r0, [r4, #-0x1c]
005e69b4  20 20 14 e5                                      ldr r2, [r4, #-0x20]
005e69b8  14 10 96 e5                                      ldr r1, [r6, #0x14]
005e69bc  10 30 96 e5                                      ldr r3, [r6, #0x10]
005e69c0  02 20 60 e0                                      rsb r2, r0, r2
005e69c4  30 a0 44 e2                                      sub sl, r4, #0x30
005e69c8  03 30 61 e0                                      rsb r3, r1, r3
005e69cc  03 00 52 e1                                      cmp r2, r3
005e69d0  25 00 00 0a                                      beq #0x5e6a6c
005e69d4  00 a0 85 e5                                      str sl, [r5]
005e69d8  34 00 14 e5                                      ldr r0, [r4, #-0x34]
005e69dc  38 20 14 e5                                      ldr r2, [r4, #-0x38]
005e69e0  14 10 96 e5                                      ldr r1, [r6, #0x14]
005e69e4  10 30 96 e5                                      ldr r3, [r6, #0x10]
005e69e8  02 20 60 e0                                      rsb r2, r0, r2
005e69ec  48 80 44 e2                                      sub r8, r4, #0x48
005e69f0  03 30 61 e0                                      rsb r3, r1, r3
005e69f4  03 00 52 e1                                      cmp r2, r3
005e69f8  60 40 44 e2                                      sub r4, r4, #0x60
005e69fc  20 00 00 0a                                      beq #0x5e6a84
005e6a00  00 80 85 e5                                      str r8, [r5]
005e6a04  14 00 94 e5                                      ldr r0, [r4, #0x14]
005e6a08  14 10 96 e5                                      ldr r1, [r6, #0x14]
005e6a0c  10 20 94 e5                                      ldr r2, [r4, #0x10]
005e6a10  10 30 96 e5                                      ldr r3, [r6, #0x10]
005e6a14  02 20 60 e0                                      rsb r2, r0, r2
005e6a18  03 30 61 e0                                      rsb r3, r1, r3
005e6a1c  03 00 52 e1                                      cmp r2, r3
005e6a20  1d 00 00 0a                                      beq #0x5e6a9c
005e6a24  01 70 57 e2                                      subs r7, r7, #1
005e6a28  00 40 85 e5                                      str r4, [r5]
005e6a2c  20 00 00 0a                                      beq #0x5e6ab4
005e6a30  04 00 14 e5                                      ldr r0, [r4, #-4]
005e6a34  08 20 14 e5                                      ldr r2, [r4, #-8]
005e6a38  14 10 96 e5                                      ldr r1, [r6, #0x14]
005e6a3c  10 30 96 e5                                      ldr r3, [r6, #0x10]
005e6a40  02 20 60 e0                                      rsb r2, r0, r2
005e6a44  18 80 44 e2                                      sub r8, r4, #0x18
005e6a48  03 30 61 e0                                      rsb r3, r1, r3
005e6a4c  03 00 52 e1                                      cmp r2, r3
005e6a50  d5 ff ff 1a                                      bne #0x5e69ac
005e6a54  e1 9e f4 eb                                      bl #0x30e5e0
005e6a58  00 00 50 e3                                      cmp r0, #0
005e6a5c  d2 ff ff 1a                                      bne #0x5e69ac
005e6a60  00 40 89 e5                                      str r4, [sb]
005e6a64  09 00 a0 e1                                      mov r0, sb
005e6a68  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005e6a6c  db 9e f4 eb                                      bl #0x30e5e0
005e6a70  00 00 50 e3                                      cmp r0, #0
005e6a74  d6 ff ff 1a                                      bne #0x5e69d4
005e6a78  00 80 89 e5                                      str r8, [sb]
005e6a7c  09 00 a0 e1                                      mov r0, sb
005e6a80  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005e6a84  d5 9e f4 eb                                      bl #0x30e5e0
005e6a88  00 00 50 e3                                      cmp r0, #0
005e6a8c  db ff ff 1a                                      bne #0x5e6a00
005e6a90  00 a0 89 e5                                      str sl, [sb]
005e6a94  09 00 a0 e1                                      mov r0, sb
005e6a98  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005e6a9c  cf 9e f4 eb                                      bl #0x30e5e0
005e6aa0  00 00 50 e3                                      cmp r0, #0
005e6aa4  f3 ff ff 0a                                      beq #0x5e6a78
005e6aa8  01 70 57 e2                                      subs r7, r7, #1
005e6aac  00 40 85 e5                                      str r4, [r5]
005e6ab0  de ff ff 1a                                      bne #0x5e6a30
005e6ab4  00 20 9b e5                                      ldr r2, [fp]
005e6ab8  04 10 62 e0                                      rsb r1, r2, r4
005e6abc  c1 11 a0 e1                                      asr r1, r1, #3
005e6ac0  01 31 81 e0                                      add r3, r1, r1, lsl #2
005e6ac4  03 32 83 e0                                      add r3, r3, r3, lsl #4
005e6ac8  03 34 83 e0                                      add r3, r3, r3, lsl #8
005e6acc  03 38 83 e0                                      add r3, r3, r3, lsl #16
005e6ad0  83 30 81 e0                                      add r3, r1, r3, lsl #1
005e6ad4  02 00 53 e3                                      cmp r3, #2
005e6ad8  0d 00 00 0a                                      beq #0x5e6b14
005e6adc  03 00 53 e3                                      cmp r3, #3
005e6ae0  03 00 00 0a                                      beq #0x5e6af4
005e6ae4  01 00 53 e3                                      cmp r3, #1
005e6ae8  15 00 00 0a                                      beq #0x5e6b44
005e6aec  00 20 89 e5                                      str r2, [sb]
005e6af0  db ff ff ea                                      b #0x5e6a64
005e6af4  18 00 44 e2                                      sub r0, r4, #0x18
005e6af8  06 10 a0 e1                                      mov r1, r6
005e6afc  da fa ff eb                                      bl #0x5e566c
005e6b00  00 00 50 e3                                      cmp r0, #0
005e6b04  07 00 00 1a                                      bne #0x5e6b28
005e6b08  00 40 95 e5                                      ldr r4, [r5]
005e6b0c  18 40 44 e2                                      sub r4, r4, #0x18
005e6b10  00 40 85 e5                                      str r4, [r5]
005e6b14  18 00 44 e2                                      sub r0, r4, #0x18
005e6b18  06 10 a0 e1                                      mov r1, r6
005e6b1c  d2 fa ff eb                                      bl #0x5e566c
005e6b20  00 00 50 e3                                      cmp r0, #0
005e6b24  03 00 00 0a                                      beq #0x5e6b38
005e6b28  00 30 95 e5                                      ldr r3, [r5]
005e6b2c  09 00 a0 e1                                      mov r0, sb
005e6b30  00 30 89 e5                                      str r3, [sb]
005e6b34  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005e6b38  00 40 95 e5                                      ldr r4, [r5]
005e6b3c  18 40 44 e2                                      sub r4, r4, #0x18
005e6b40  00 40 85 e5                                      str r4, [r5]
005e6b44  18 00 44 e2                                      sub r0, r4, #0x18
005e6b48  06 10 a0 e1                                      mov r1, r6
005e6b4c  c6 fa ff eb                                      bl #0x5e566c
005e6b50  00 00 50 e3                                      cmp r0, #0
005e6b54  00 20 9b 05                                      ldreq r2, [fp]
005e6b58  f2 ff ff 1a                                      bne #0x5e6b28
005e6b5c  00 20 89 e5                                      str r2, [sb]
005e6b60  bf ff ff ea                                      b #0x5e6a64
