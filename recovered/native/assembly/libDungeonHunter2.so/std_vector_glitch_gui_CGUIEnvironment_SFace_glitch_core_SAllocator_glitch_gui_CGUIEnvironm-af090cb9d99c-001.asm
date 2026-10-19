; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00538984, declared_size=88, range_size=88, mode=arm
; class-group: std::vector<glitch::gui::CGUIEnvironment::SFace, glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFace, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui15CGUIEnvironment5SFaceENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::gui::CGUIEnvironment::SFace, glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFace, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
00538984  70 40 2d e9                                      push {r4, r5, r6, lr}
00538988  04 40 90 e5                                      ldr r4, [r0, #4]
0053898c  00 50 90 e5                                      ldr r5, [r0]
00538990  00 60 a0 e1                                      mov r6, r0
00538994  05 00 54 e1                                      cmp r4, r5
00538998  09 00 00 0a                                      beq #0x5389c4
0053899c  1c 40 44 e2                                      sub r4, r4, #0x1c
005389a0  14 30 94 e5                                      ldr r3, [r4, #0x14]
005389a4  04 00 53 e1                                      cmp r3, r4
005389a8  03 00 a0 e1                                      mov r0, r3
005389ac  02 00 00 0a                                      beq #0x5389bc
005389b0  00 00 53 e3                                      cmp r3, #0
005389b4  00 00 00 0a                                      beq #0x5389bc
005389b8  a4 5e f7 eb                                      bl #0x310450
005389bc  04 00 55 e1                                      cmp r5, r4
005389c0  f5 ff ff 1a                                      bne #0x53899c
005389c4  00 00 96 e5                                      ldr r0, [r6]
005389c8  00 00 50 e3                                      cmp r0, #0
005389cc  00 00 00 0a                                      beq #0x5389d4
005389d0  9e 5e f7 eb                                      bl #0x310450
005389d4  06 00 a0 e1                                      mov r0, r6
005389d8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00538d2c, declared_size=336, range_size=336, mode=arm
; class-group: std::vector<glitch::gui::CGUIEnvironment::SFace, glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFace, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui15CGUIEnvironment5SFaceENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE9push_backERKS3_
; demangled: std::vector<glitch::gui::CGUIEnvironment::SFace, glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFace, (glitch::memory::E_MEMORY_HINT)0> >::push_back(glitch::gui::CGUIEnvironment::SFace const&)
; decoder-mode: arm
00538d2c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00538d30  04 80 90 e5                                      ldr r8, [r0, #4]
00538d34  08 30 90 e5                                      ldr r3, [r0, #8]
00538d38  14 d0 4d e2                                      sub sp, sp, #0x14
00538d3c  00 40 a0 e1                                      mov r4, r0
00538d40  03 00 58 e1                                      cmp r8, r3
00538d44  01 50 a0 e1                                      mov r5, r1
00538d48  0c 00 00 0a                                      beq #0x538d80
00538d4c  10 80 88 e5                                      str r8, [r8, #0x10]
00538d50  14 80 88 e5                                      str r8, [r8, #0x14]
00538d54  08 00 a0 e1                                      mov r0, r8
00538d58  14 10 91 e5                                      ldr r1, [r1, #0x14]
00538d5c  10 20 95 e5                                      ldr r2, [r5, #0x10]
00538d60  a3 b4 f7 eb                                      bl #0x325ff4
00538d64  18 30 95 e5                                      ldr r3, [r5, #0x18]
00538d68  18 30 88 e5                                      str r3, [r8, #0x18]
00538d6c  04 30 94 e5                                      ldr r3, [r4, #4]
00538d70  1c 30 83 e2                                      add r3, r3, #0x1c
00538d74  04 30 84 e5                                      str r3, [r4, #4]
00538d78  14 d0 8d e2                                      add sp, sp, #0x14
00538d7c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00538d80  00 20 90 e5                                      ldr r2, [r0]
00538d84  49 32 09 e3                                      movw r3, #0x9249
00538d88  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00538d8c  08 20 62 e0                                      rsb r2, r2, r8
00538d90  42 21 a0 e1                                      asr r2, r2, #2
00538d94  82 11 82 e0                                      add r1, r2, r2, lsl #3
00538d98  01 13 81 e0                                      add r1, r1, r1, lsl #6
00538d9c  81 11 82 e0                                      add r1, r2, r1, lsl #3
00538da0  81 17 81 e0                                      add r1, r1, r1, lsl #15
00538da4  81 21 82 e0                                      add r2, r2, r1, lsl #3
00538da8  00 20 62 e2                                      rsb r2, r2, #0
00538dac  01 00 52 e3                                      cmp r2, #1
00538db0  02 10 82 20                                      addhs r1, r2, r2
00538db4  01 10 82 32                                      addlo r1, r2, #1
00538db8  03 00 51 e1                                      cmp r1, r3
00538dbc  29 00 00 9a                                      bls #0x538e68
00538dc0  03 70 e0 e3                                      mvn r7, #3
00538dc4  00 10 a0 e3                                      mov r1, #0
00538dc8  07 00 a0 e1                                      mov r0, r7
00538dcc  e5 5d f7 eb                                      bl #0x310568
00538dd0  00 60 a0 e1                                      mov r6, r0
00538dd4  08 10 a0 e1                                      mov r1, r8
00538dd8  0c 30 8d e2                                      add r3, sp, #0xc
00538ddc  00 c0 a0 e3                                      mov ip, #0
00538de0  00 00 94 e5                                      ldr r0, [r4]
00538de4  06 20 a0 e1                                      mov r2, r6
00538de8  00 c0 8d e5                                      str ip, [sp]
00538dec  aa f4 ff eb                                      bl #0x53609c
00538df0  00 80 a0 e1                                      mov r8, r0
00538df4  10 00 88 e5                                      str r0, [r8, #0x10]
00538df8  14 00 88 e5                                      str r0, [r8, #0x14]
00538dfc  14 10 95 e5                                      ldr r1, [r5, #0x14]
00538e00  10 20 95 e5                                      ldr r2, [r5, #0x10]
00538e04  7a b4 f7 eb                                      bl #0x325ff4
00538e08  18 30 95 e5                                      ldr r3, [r5, #0x18]
00538e0c  1c a0 88 e2                                      add sl, r8, #0x1c
00538e10  18 30 88 e5                                      str r3, [r8, #0x18]
00538e14  04 50 94 e5                                      ldr r5, [r4, #4]
00538e18  00 80 94 e5                                      ldr r8, [r4]
00538e1c  08 00 55 e1                                      cmp r5, r8
00538e20  0a 00 00 0a                                      beq #0x538e50
00538e24  1c 50 45 e2                                      sub r5, r5, #0x1c
00538e28  14 30 95 e5                                      ldr r3, [r5, #0x14]
00538e2c  05 00 53 e1                                      cmp r3, r5
00538e30  03 00 a0 e1                                      mov r0, r3
00538e34  02 00 00 0a                                      beq #0x538e44
00538e38  00 00 53 e3                                      cmp r3, #0
00538e3c  00 00 00 0a                                      beq #0x538e44
00538e40  82 5d f7 eb                                      bl #0x310450
00538e44  05 00 58 e1                                      cmp r8, r5
00538e48  f5 ff ff 1a                                      bne #0x538e24
00538e4c  00 80 94 e5                                      ldr r8, [r4]
00538e50  08 00 a0 e1                                      mov r0, r8
00538e54  07 70 86 e0                                      add r7, r6, r7
00538e58  7c 5d f7 eb                                      bl #0x310450
00538e5c  08 70 84 e5                                      str r7, [r4, #8]
00538e60  40 04 84 e8                                      stm r4, {r6, sl}
00538e64  c3 ff ff ea                                      b #0x538d78
00538e68  01 00 52 e1                                      cmp r2, r1
00538e6c  d3 ff ff 8a                                      bhi #0x538dc0
00538e70  1c 70 a0 e3                                      mov r7, #0x1c
00538e74  97 01 07 e0                                      mul r7, r7, r1
00538e78  d1 ff ff ea                                      b #0x538dc4

; FUNCTION 0x00538fb8, declared_size=104, range_size=104, mode=arm
; class-group: std::vector<glitch::gui::CGUIEnvironment::SFace, glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFace, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui15CGUIEnvironment5SFaceENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS3_RKSt12__false_type
; demangled: std::vector<glitch::gui::CGUIEnvironment::SFace, glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFace, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::gui::CGUIEnvironment::SFace*, std::__false_type const&)
; decoder-mode: arm
00538fb8  30 40 2d e9                                      push {r4, r5, lr}
00538fbc  04 30 90 e5                                      ldr r3, [r0, #4]
00538fc0  00 50 a0 e1                                      mov r5, r0
00538fc4  1c 00 81 e2                                      add r0, r1, #0x1c
00538fc8  03 00 50 e1                                      cmp r0, r3
00538fcc  14 d0 4d e2                                      sub sp, sp, #0x14
00538fd0  01 40 a0 e1                                      mov r4, r1
00538fd4  06 00 00 0a                                      beq #0x538ff4
00538fd8  03 10 a0 e1                                      mov r1, r3
00538fdc  00 c0 a0 e3                                      mov ip, #0
00538fe0  04 20 a0 e1                                      mov r2, r4
00538fe4  0c 30 8d e2                                      add r3, sp, #0xc
00538fe8  00 c0 8d e5                                      str ip, [sp]
00538fec  b7 f3 ff eb                                      bl #0x535ed0
00538ff0  04 00 95 e5                                      ldr r0, [r5, #4]
00538ff4  1c 30 40 e2                                      sub r3, r0, #0x1c
00538ff8  04 30 85 e5                                      str r3, [r5, #4]
00538ffc  14 00 93 e5                                      ldr r0, [r3, #0x14]
00539000  03 00 50 e1                                      cmp r0, r3
00539004  02 00 00 0a                                      beq #0x539014
00539008  00 00 50 e3                                      cmp r0, #0
0053900c  00 00 00 0a                                      beq #0x539014
00539010  0e 5d f7 eb                                      bl #0x310450
00539014  04 00 a0 e1                                      mov r0, r4
00539018  14 d0 8d e2                                      add sp, sp, #0x14
0053901c  30 80 bd e8                                      pop {r4, r5, pc}
