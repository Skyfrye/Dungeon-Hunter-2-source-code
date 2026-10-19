; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0053892c, declared_size=88, range_size=88, mode=arm
; class-group: std::vector<glitch::gui::CGUIEnvironment::SSpriteBank, glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SSpriteBank, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui15CGUIEnvironment11SSpriteBankENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::gui::CGUIEnvironment::SSpriteBank, glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SSpriteBank, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
0053892c  70 40 2d e9                                      push {r4, r5, r6, lr}
00538930  04 40 90 e5                                      ldr r4, [r0, #4]
00538934  00 50 90 e5                                      ldr r5, [r0]
00538938  00 60 a0 e1                                      mov r6, r0
0053893c  05 00 54 e1                                      cmp r4, r5
00538940  09 00 00 0a                                      beq #0x53896c
00538944  1c 40 44 e2                                      sub r4, r4, #0x1c
00538948  14 30 94 e5                                      ldr r3, [r4, #0x14]
0053894c  04 00 53 e1                                      cmp r3, r4
00538950  03 00 a0 e1                                      mov r0, r3
00538954  02 00 00 0a                                      beq #0x538964
00538958  00 00 53 e3                                      cmp r3, #0
0053895c  00 00 00 0a                                      beq #0x538964
00538960  ba 5e f7 eb                                      bl #0x310450
00538964  04 00 55 e1                                      cmp r5, r4
00538968  f5 ff ff 1a                                      bne #0x538944
0053896c  00 00 96 e5                                      ldr r0, [r6]
00538970  00 00 50 e3                                      cmp r0, #0
00538974  00 00 00 0a                                      beq #0x53897c
00538978  b4 5e f7 eb                                      bl #0x310450
0053897c  06 00 a0 e1                                      mov r0, r6
00538980  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00538bdc, declared_size=336, range_size=336, mode=arm
; class-group: std::vector<glitch::gui::CGUIEnvironment::SSpriteBank, glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SSpriteBank, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3gui15CGUIEnvironment11SSpriteBankENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE9push_backERKS3_
; demangled: std::vector<glitch::gui::CGUIEnvironment::SSpriteBank, glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SSpriteBank, (glitch::memory::E_MEMORY_HINT)0> >::push_back(glitch::gui::CGUIEnvironment::SSpriteBank const&)
; decoder-mode: arm
00538bdc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00538be0  04 80 90 e5                                      ldr r8, [r0, #4]
00538be4  08 30 90 e5                                      ldr r3, [r0, #8]
00538be8  14 d0 4d e2                                      sub sp, sp, #0x14
00538bec  00 40 a0 e1                                      mov r4, r0
00538bf0  03 00 58 e1                                      cmp r8, r3
00538bf4  01 50 a0 e1                                      mov r5, r1
00538bf8  0c 00 00 0a                                      beq #0x538c30
00538bfc  10 80 88 e5                                      str r8, [r8, #0x10]
00538c00  14 80 88 e5                                      str r8, [r8, #0x14]
00538c04  08 00 a0 e1                                      mov r0, r8
00538c08  14 10 91 e5                                      ldr r1, [r1, #0x14]
00538c0c  10 20 95 e5                                      ldr r2, [r5, #0x10]
00538c10  f7 b4 f7 eb                                      bl #0x325ff4
00538c14  18 30 95 e5                                      ldr r3, [r5, #0x18]
00538c18  18 30 88 e5                                      str r3, [r8, #0x18]
00538c1c  04 30 94 e5                                      ldr r3, [r4, #4]
00538c20  1c 30 83 e2                                      add r3, r3, #0x1c
00538c24  04 30 84 e5                                      str r3, [r4, #4]
00538c28  14 d0 8d e2                                      add sp, sp, #0x14
00538c2c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00538c30  00 20 90 e5                                      ldr r2, [r0]
00538c34  49 32 09 e3                                      movw r3, #0x9249
00538c38  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00538c3c  08 20 62 e0                                      rsb r2, r2, r8
00538c40  42 21 a0 e1                                      asr r2, r2, #2
00538c44  82 11 82 e0                                      add r1, r2, r2, lsl #3
00538c48  01 13 81 e0                                      add r1, r1, r1, lsl #6
00538c4c  81 11 82 e0                                      add r1, r2, r1, lsl #3
00538c50  81 17 81 e0                                      add r1, r1, r1, lsl #15
00538c54  81 21 82 e0                                      add r2, r2, r1, lsl #3
00538c58  00 20 62 e2                                      rsb r2, r2, #0
00538c5c  01 00 52 e3                                      cmp r2, #1
00538c60  02 10 82 20                                      addhs r1, r2, r2
00538c64  01 10 82 32                                      addlo r1, r2, #1
00538c68  03 00 51 e1                                      cmp r1, r3
00538c6c  29 00 00 9a                                      bls #0x538d18
00538c70  03 70 e0 e3                                      mvn r7, #3
00538c74  00 10 a0 e3                                      mov r1, #0
00538c78  07 00 a0 e1                                      mov r0, r7
00538c7c  39 5e f7 eb                                      bl #0x310568
00538c80  00 60 a0 e1                                      mov r6, r0
00538c84  08 10 a0 e1                                      mov r1, r8
00538c88  0c 30 8d e2                                      add r3, sp, #0xc
00538c8c  00 c0 a0 e3                                      mov ip, #0
00538c90  00 00 94 e5                                      ldr r0, [r4]
00538c94  06 20 a0 e1                                      mov r2, r6
00538c98  00 c0 8d e5                                      str ip, [sp]
00538c9c  c4 f4 ff eb                                      bl #0x535fb4
00538ca0  00 80 a0 e1                                      mov r8, r0
00538ca4  10 00 88 e5                                      str r0, [r8, #0x10]
00538ca8  14 00 88 e5                                      str r0, [r8, #0x14]
00538cac  14 10 95 e5                                      ldr r1, [r5, #0x14]
00538cb0  10 20 95 e5                                      ldr r2, [r5, #0x10]
00538cb4  ce b4 f7 eb                                      bl #0x325ff4
00538cb8  18 30 95 e5                                      ldr r3, [r5, #0x18]
00538cbc  1c a0 88 e2                                      add sl, r8, #0x1c
00538cc0  18 30 88 e5                                      str r3, [r8, #0x18]
00538cc4  04 50 94 e5                                      ldr r5, [r4, #4]
00538cc8  00 80 94 e5                                      ldr r8, [r4]
00538ccc  08 00 55 e1                                      cmp r5, r8
00538cd0  0a 00 00 0a                                      beq #0x538d00
00538cd4  1c 50 45 e2                                      sub r5, r5, #0x1c
00538cd8  14 30 95 e5                                      ldr r3, [r5, #0x14]
00538cdc  05 00 53 e1                                      cmp r3, r5
00538ce0  03 00 a0 e1                                      mov r0, r3
00538ce4  02 00 00 0a                                      beq #0x538cf4
00538ce8  00 00 53 e3                                      cmp r3, #0
00538cec  00 00 00 0a                                      beq #0x538cf4
00538cf0  d6 5d f7 eb                                      bl #0x310450
00538cf4  05 00 58 e1                                      cmp r8, r5
00538cf8  f5 ff ff 1a                                      bne #0x538cd4
00538cfc  00 80 94 e5                                      ldr r8, [r4]
00538d00  08 00 a0 e1                                      mov r0, r8
00538d04  07 70 86 e0                                      add r7, r6, r7
00538d08  d0 5d f7 eb                                      bl #0x310450
00538d0c  08 70 84 e5                                      str r7, [r4, #8]
00538d10  40 04 84 e8                                      stm r4, {r6, sl}
00538d14  c3 ff ff ea                                      b #0x538c28
00538d18  01 00 52 e1                                      cmp r2, r1
00538d1c  d3 ff ff 8a                                      bhi #0x538c70
00538d20  1c 70 a0 e3                                      mov r7, #0x1c
00538d24  97 01 07 e0                                      mul r7, r7, r1
00538d28  d1 ff ff ea                                      b #0x538c74
