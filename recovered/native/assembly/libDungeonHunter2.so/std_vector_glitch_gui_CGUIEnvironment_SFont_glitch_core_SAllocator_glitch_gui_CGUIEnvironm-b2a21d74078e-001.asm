; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00538a34, declared_size=88, range_size=88, mode=arm
; class-group: std::vector<glitch::gui::CGUIEnvironment::SFont, glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFont, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui15CGUIEnvironment5SFontENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::gui::CGUIEnvironment::SFont, glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFont, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
00538a34  70 40 2d e9                                      push {r4, r5, r6, lr}
00538a38  04 40 90 e5                                      ldr r4, [r0, #4]
00538a3c  00 50 90 e5                                      ldr r5, [r0]
00538a40  00 60 a0 e1                                      mov r6, r0
00538a44  05 00 54 e1                                      cmp r4, r5
00538a48  09 00 00 0a                                      beq #0x538a74
00538a4c  1c 40 44 e2                                      sub r4, r4, #0x1c
00538a50  14 30 94 e5                                      ldr r3, [r4, #0x14]
00538a54  04 00 53 e1                                      cmp r3, r4
00538a58  03 00 a0 e1                                      mov r0, r3
00538a5c  02 00 00 0a                                      beq #0x538a6c
00538a60  00 00 53 e3                                      cmp r3, #0
00538a64  00 00 00 0a                                      beq #0x538a6c
00538a68  78 5e f7 eb                                      bl #0x310450
00538a6c  04 00 55 e1                                      cmp r5, r4
00538a70  f5 ff ff 1a                                      bne #0x538a4c
00538a74  00 00 96 e5                                      ldr r0, [r6]
00538a78  00 00 50 e3                                      cmp r0, #0
00538a7c  00 00 00 0a                                      beq #0x538a84
00538a80  72 5e f7 eb                                      bl #0x310450
00538a84  06 00 a0 e1                                      mov r0, r6
00538a88  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00538a8c, declared_size=336, range_size=336, mode=arm
; class-group: std::vector<glitch::gui::CGUIEnvironment::SFont, glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFont, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui15CGUIEnvironment5SFontENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE9push_backERKS3_
; demangled: std::vector<glitch::gui::CGUIEnvironment::SFont, glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFont, (glitch::memory::E_MEMORY_HINT)0> >::push_back(glitch::gui::CGUIEnvironment::SFont const&)
; decoder-mode: arm
00538a8c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00538a90  04 80 90 e5                                      ldr r8, [r0, #4]
00538a94  08 30 90 e5                                      ldr r3, [r0, #8]
00538a98  14 d0 4d e2                                      sub sp, sp, #0x14
00538a9c  00 40 a0 e1                                      mov r4, r0
00538aa0  03 00 58 e1                                      cmp r8, r3
00538aa4  01 50 a0 e1                                      mov r5, r1
00538aa8  0c 00 00 0a                                      beq #0x538ae0
00538aac  10 80 88 e5                                      str r8, [r8, #0x10]
00538ab0  14 80 88 e5                                      str r8, [r8, #0x14]
00538ab4  08 00 a0 e1                                      mov r0, r8
00538ab8  14 10 91 e5                                      ldr r1, [r1, #0x14]
00538abc  10 20 95 e5                                      ldr r2, [r5, #0x10]
00538ac0  4b b5 f7 eb                                      bl #0x325ff4
00538ac4  18 30 95 e5                                      ldr r3, [r5, #0x18]
00538ac8  18 30 88 e5                                      str r3, [r8, #0x18]
00538acc  04 30 94 e5                                      ldr r3, [r4, #4]
00538ad0  1c 30 83 e2                                      add r3, r3, #0x1c
00538ad4  04 30 84 e5                                      str r3, [r4, #4]
00538ad8  14 d0 8d e2                                      add sp, sp, #0x14
00538adc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00538ae0  00 20 90 e5                                      ldr r2, [r0]
00538ae4  49 32 09 e3                                      movw r3, #0x9249
00538ae8  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00538aec  08 20 62 e0                                      rsb r2, r2, r8
00538af0  42 21 a0 e1                                      asr r2, r2, #2
00538af4  82 11 82 e0                                      add r1, r2, r2, lsl #3
00538af8  01 13 81 e0                                      add r1, r1, r1, lsl #6
00538afc  81 11 82 e0                                      add r1, r2, r1, lsl #3
00538b00  81 17 81 e0                                      add r1, r1, r1, lsl #15
00538b04  81 21 82 e0                                      add r2, r2, r1, lsl #3
00538b08  00 20 62 e2                                      rsb r2, r2, #0
00538b0c  01 00 52 e3                                      cmp r2, #1
00538b10  02 10 82 20                                      addhs r1, r2, r2
00538b14  01 10 82 32                                      addlo r1, r2, #1
00538b18  03 00 51 e1                                      cmp r1, r3
00538b1c  29 00 00 9a                                      bls #0x538bc8
00538b20  03 70 e0 e3                                      mvn r7, #3
00538b24  00 10 a0 e3                                      mov r1, #0
00538b28  07 00 a0 e1                                      mov r0, r7
00538b2c  8d 5e f7 eb                                      bl #0x310568
00538b30  00 60 a0 e1                                      mov r6, r0
00538b34  08 10 a0 e1                                      mov r1, r8
00538b38  0c 30 8d e2                                      add r3, sp, #0xc
00538b3c  00 c0 a0 e3                                      mov ip, #0
00538b40  00 00 94 e5                                      ldr r0, [r4]
00538b44  06 20 a0 e1                                      mov r2, r6
00538b48  00 c0 8d e5                                      str ip, [sp]
00538b4c  bd f5 ff eb                                      bl #0x536248
00538b50  00 80 a0 e1                                      mov r8, r0
00538b54  10 00 88 e5                                      str r0, [r8, #0x10]
00538b58  14 00 88 e5                                      str r0, [r8, #0x14]
00538b5c  14 10 95 e5                                      ldr r1, [r5, #0x14]
00538b60  10 20 95 e5                                      ldr r2, [r5, #0x10]
00538b64  22 b5 f7 eb                                      bl #0x325ff4
00538b68  18 30 95 e5                                      ldr r3, [r5, #0x18]
00538b6c  1c a0 88 e2                                      add sl, r8, #0x1c
00538b70  18 30 88 e5                                      str r3, [r8, #0x18]
00538b74  04 50 94 e5                                      ldr r5, [r4, #4]
00538b78  00 80 94 e5                                      ldr r8, [r4]
00538b7c  08 00 55 e1                                      cmp r5, r8
00538b80  0a 00 00 0a                                      beq #0x538bb0
00538b84  1c 50 45 e2                                      sub r5, r5, #0x1c
00538b88  14 30 95 e5                                      ldr r3, [r5, #0x14]
00538b8c  05 00 53 e1                                      cmp r3, r5
00538b90  03 00 a0 e1                                      mov r0, r3
00538b94  02 00 00 0a                                      beq #0x538ba4
00538b98  00 00 53 e3                                      cmp r3, #0
00538b9c  00 00 00 0a                                      beq #0x538ba4
00538ba0  2a 5e f7 eb                                      bl #0x310450
00538ba4  05 00 58 e1                                      cmp r8, r5
00538ba8  f5 ff ff 1a                                      bne #0x538b84
00538bac  00 80 94 e5                                      ldr r8, [r4]
00538bb0  08 00 a0 e1                                      mov r0, r8
00538bb4  07 70 86 e0                                      add r7, r6, r7
00538bb8  24 5e f7 eb                                      bl #0x310450
00538bbc  08 70 84 e5                                      str r7, [r4, #8]
00538bc0  40 04 84 e8                                      stm r4, {r6, sl}
00538bc4  c3 ff ff ea                                      b #0x538ad8
00538bc8  01 00 52 e1                                      cmp r2, r1
00538bcc  d3 ff ff 8a                                      bhi #0x538b20
00538bd0  1c 70 a0 e3                                      mov r7, #0x1c
00538bd4  97 01 07 e0                                      mul r7, r7, r1
00538bd8  d1 ff ff ea                                      b #0x538b24
