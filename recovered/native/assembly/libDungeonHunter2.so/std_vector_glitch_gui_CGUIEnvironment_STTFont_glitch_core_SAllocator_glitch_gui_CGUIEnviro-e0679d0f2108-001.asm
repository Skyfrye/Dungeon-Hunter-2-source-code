; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005389dc, declared_size=88, range_size=88, mode=arm
; class-group: std::vector<glitch::gui::CGUIEnvironment::STTFont, glitch::core::SAllocator<glitch::gui::CGUIEnvironment::STTFont, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui15CGUIEnvironment7STTFontENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::gui::CGUIEnvironment::STTFont, glitch::core::SAllocator<glitch::gui::CGUIEnvironment::STTFont, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
005389dc  70 40 2d e9                                      push {r4, r5, r6, lr}
005389e0  04 40 90 e5                                      ldr r4, [r0, #4]
005389e4  00 50 90 e5                                      ldr r5, [r0]
005389e8  00 60 a0 e1                                      mov r6, r0
005389ec  05 00 54 e1                                      cmp r4, r5
005389f0  09 00 00 0a                                      beq #0x538a1c
005389f4  20 40 44 e2                                      sub r4, r4, #0x20
005389f8  14 30 94 e5                                      ldr r3, [r4, #0x14]
005389fc  04 00 53 e1                                      cmp r3, r4
00538a00  03 00 a0 e1                                      mov r0, r3
00538a04  02 00 00 0a                                      beq #0x538a14
00538a08  00 00 53 e3                                      cmp r3, #0
00538a0c  00 00 00 0a                                      beq #0x538a14
00538a10  8e 5e f7 eb                                      bl #0x310450
00538a14  04 00 55 e1                                      cmp r5, r4
00538a18  f5 ff ff 1a                                      bne #0x5389f4
00538a1c  00 00 96 e5                                      ldr r0, [r6]
00538a20  00 00 50 e3                                      cmp r0, #0
00538a24  00 00 00 0a                                      beq #0x538a2c
00538a28  88 5e f7 eb                                      bl #0x310450
00538a2c  06 00 a0 e1                                      mov r0, r6
00538a30  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00538e7c, declared_size=316, range_size=316, mode=arm
; class-group: std::vector<glitch::gui::CGUIEnvironment::STTFont, glitch::core::SAllocator<glitch::gui::CGUIEnvironment::STTFont, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui15CGUIEnvironment7STTFontENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE9push_backERKS3_
; demangled: std::vector<glitch::gui::CGUIEnvironment::STTFont, glitch::core::SAllocator<glitch::gui::CGUIEnvironment::STTFont, (glitch::memory::E_MEMORY_HINT)0> >::push_back(glitch::gui::CGUIEnvironment::STTFont const&)
; decoder-mode: arm
00538e7c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00538e80  04 80 90 e5                                      ldr r8, [r0, #4]
00538e84  08 30 90 e5                                      ldr r3, [r0, #8]
00538e88  14 d0 4d e2                                      sub sp, sp, #0x14
00538e8c  00 40 a0 e1                                      mov r4, r0
00538e90  03 00 58 e1                                      cmp r8, r3
00538e94  01 50 a0 e1                                      mov r5, r1
00538e98  0e 00 00 0a                                      beq #0x538ed8
00538e9c  10 80 88 e5                                      str r8, [r8, #0x10]
00538ea0  14 80 88 e5                                      str r8, [r8, #0x14]
00538ea4  08 00 a0 e1                                      mov r0, r8
00538ea8  14 10 91 e5                                      ldr r1, [r1, #0x14]
00538eac  10 20 95 e5                                      ldr r2, [r5, #0x10]
00538eb0  4f b4 f7 eb                                      bl #0x325ff4
00538eb4  18 30 95 e5                                      ldr r3, [r5, #0x18]
00538eb8  18 30 88 e5                                      str r3, [r8, #0x18]
00538ebc  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
00538ec0  1c 30 88 e5                                      str r3, [r8, #0x1c]
00538ec4  04 30 94 e5                                      ldr r3, [r4, #4]
00538ec8  20 30 83 e2                                      add r3, r3, #0x20
00538ecc  04 30 84 e5                                      str r3, [r4, #4]
00538ed0  14 d0 8d e2                                      add sp, sp, #0x14
00538ed4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00538ed8  00 30 90 e5                                      ldr r3, [r0]
00538edc  08 30 63 e0                                      rsb r3, r3, r8
00538ee0  c3 32 a0 e1                                      asr r3, r3, #5
00538ee4  01 00 53 e3                                      cmp r3, #1
00538ee8  03 70 83 20                                      addhs r7, r3, r3
00538eec  01 70 83 32                                      addlo r7, r3, #1
00538ef0  7e 03 77 e3                                      cmn r7, #0xf8000001
00538ef4  2b 00 00 9a                                      bls #0x538fa8
00538ef8  1f 70 e0 e3                                      mvn r7, #0x1f
00538efc  00 10 a0 e3                                      mov r1, #0
00538f00  07 00 a0 e1                                      mov r0, r7
00538f04  97 5d f7 eb                                      bl #0x310568
00538f08  00 60 a0 e1                                      mov r6, r0
00538f0c  08 10 a0 e1                                      mov r1, r8
00538f10  0c 30 8d e2                                      add r3, sp, #0xc
00538f14  00 c0 a0 e3                                      mov ip, #0
00538f18  00 00 94 e5                                      ldr r0, [r4]
00538f1c  06 20 a0 e1                                      mov r2, r6
00538f20  00 c0 8d e5                                      str ip, [sp]
00538f24  92 f4 ff eb                                      bl #0x536174
00538f28  00 80 a0 e1                                      mov r8, r0
00538f2c  10 00 88 e5                                      str r0, [r8, #0x10]
00538f30  14 00 88 e5                                      str r0, [r8, #0x14]
00538f34  14 10 95 e5                                      ldr r1, [r5, #0x14]
00538f38  10 20 95 e5                                      ldr r2, [r5, #0x10]
00538f3c  2c b4 f7 eb                                      bl #0x325ff4
00538f40  18 30 95 e5                                      ldr r3, [r5, #0x18]
00538f44  20 a0 88 e2                                      add sl, r8, #0x20
00538f48  18 30 88 e5                                      str r3, [r8, #0x18]
00538f4c  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
00538f50  1c 30 88 e5                                      str r3, [r8, #0x1c]
00538f54  04 50 94 e5                                      ldr r5, [r4, #4]
00538f58  00 80 94 e5                                      ldr r8, [r4]
00538f5c  08 00 55 e1                                      cmp r5, r8
00538f60  0a 00 00 0a                                      beq #0x538f90
00538f64  20 50 45 e2                                      sub r5, r5, #0x20
00538f68  14 30 95 e5                                      ldr r3, [r5, #0x14]
00538f6c  05 00 53 e1                                      cmp r3, r5
00538f70  03 00 a0 e1                                      mov r0, r3
00538f74  02 00 00 0a                                      beq #0x538f84
00538f78  00 00 53 e3                                      cmp r3, #0
00538f7c  00 00 00 0a                                      beq #0x538f84
00538f80  32 5d f7 eb                                      bl #0x310450
00538f84  05 00 58 e1                                      cmp r8, r5
00538f88  f5 ff ff 1a                                      bne #0x538f64
00538f8c  00 80 94 e5                                      ldr r8, [r4]
00538f90  08 00 a0 e1                                      mov r0, r8
00538f94  07 70 86 e0                                      add r7, r6, r7
00538f98  2c 5d f7 eb                                      bl #0x310450
00538f9c  08 70 84 e5                                      str r7, [r4, #8]
00538fa0  40 04 84 e8                                      stm r4, {r6, sl}
00538fa4  c9 ff ff ea                                      b #0x538ed0
00538fa8  07 00 53 e1                                      cmp r3, r7
00538fac  87 72 a0 91                                      lslls r7, r7, #5
00538fb0  d1 ff ff 9a                                      bls #0x538efc
00538fb4  cf ff ff ea                                      b #0x538ef8

; FUNCTION 0x005397d0, declared_size=104, range_size=104, mode=arm
; class-group: std::vector<glitch::gui::CGUIEnvironment::STTFont, glitch::core::SAllocator<glitch::gui::CGUIEnvironment::STTFont, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui15CGUIEnvironment7STTFontENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS3_RKSt12__false_type
; demangled: std::vector<glitch::gui::CGUIEnvironment::STTFont, glitch::core::SAllocator<glitch::gui::CGUIEnvironment::STTFont, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::gui::CGUIEnvironment::STTFont*, std::__false_type const&)
; decoder-mode: arm
005397d0  30 40 2d e9                                      push {r4, r5, lr}
005397d4  04 30 90 e5                                      ldr r3, [r0, #4]
005397d8  00 50 a0 e1                                      mov r5, r0
005397dc  20 00 81 e2                                      add r0, r1, #0x20
005397e0  03 00 50 e1                                      cmp r0, r3
005397e4  14 d0 4d e2                                      sub sp, sp, #0x14
005397e8  01 40 a0 e1                                      mov r4, r1
005397ec  06 00 00 0a                                      beq #0x53980c
005397f0  03 10 a0 e1                                      mov r1, r3
005397f4  00 c0 a0 e3                                      mov ip, #0
005397f8  04 20 a0 e1                                      mov r2, r4
005397fc  0c 30 8d e2                                      add r3, sp, #0xc
00539800  00 c0 8d e5                                      str ip, [sp]
00539804  97 f1 ff eb                                      bl #0x535e68
00539808  04 00 95 e5                                      ldr r0, [r5, #4]
0053980c  20 30 40 e2                                      sub r3, r0, #0x20
00539810  04 30 85 e5                                      str r3, [r5, #4]
00539814  14 00 93 e5                                      ldr r0, [r3, #0x14]
00539818  03 00 50 e1                                      cmp r0, r3
0053981c  02 00 00 0a                                      beq #0x53982c
00539820  00 00 50 e3                                      cmp r0, #0
00539824  00 00 00 0a                                      beq #0x53982c
00539828  08 5b f7 eb                                      bl #0x310450
0053982c  04 00 a0 e1                                      mov r0, r4
00539830  14 d0 8d e2                                      add sp, sp, #0x14
00539834  30 80 bd e8                                      pop {r4, r5, pc}
