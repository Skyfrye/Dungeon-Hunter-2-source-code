; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00663ad4, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<glitch::res::onDemandPointer<std::pair<float, unsigned short> >, glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float, unsigned short> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3res15onDemandPointerISt4pairIftEEENS0_4core10SAllocatorIS5_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::res::onDemandPointer<std::pair<float, unsigned short> >, glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float, unsigned short> >, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
00663ad4  70 40 2d e9                                      push {r4, r5, r6, lr}
00663ad8  14 00 90 e8                                      ldm r0, {r2, r4}
00663adc  ff 3f 0f e3                                      movw r3, #0xffff
00663ae0  ff 3f 43 e3                                      movt r3, #0x3fff
00663ae4  04 40 62 e0                                      rsb r4, r2, r4
00663ae8  44 41 a0 e1                                      asr r4, r4, #2
00663aec  03 30 64 e0                                      rsb r3, r4, r3
00663af0  01 00 53 e1                                      cmp r3, r1
00663af4  01 50 a0 e1                                      mov r5, r1
00663af8  08 00 00 3a                                      blo #0x663b20
00663afc  05 00 54 e1                                      cmp r4, r5
00663b00  04 00 84 20                                      addhs r0, r4, r4
00663b04  05 00 84 30                                      addlo r0, r4, r5
00663b08  07 01 70 e3                                      cmn r0, #0xc0000001
00663b0c  01 00 00 8a                                      bhi #0x663b18
00663b10  04 00 50 e1                                      cmp r0, r4
00663b14  00 00 00 2a                                      bhs #0x663b1c
00663b18  03 01 e0 e3                                      mvn r0, #0xc0000000
00663b1c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00663b20  08 00 9f e5                                      ldr r0, [pc, #8]
00663b24  00 00 8f e0                                      add r0, pc, r0
00663b28  c4 94 02 eb                                      bl #0x708e40
00663b2c  f2 ff ff ea                                      b #0x663afc
; mapping-symbol data/literal pool
00663b30  44 a9 25 00                                      .byte 0x44, 0xa9, 0x25, 0x00

; FUNCTION 0x006657c8, declared_size=248, range_size=248, mode=arm
; class-group: std::vector<glitch::res::onDemandPointer<std::pair<float, unsigned short> >, glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float, unsigned short> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3res15onDemandPointerISt4pairIftEEENS0_4core10SAllocatorIS5_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS5_SC_RKSt12__false_type
; demangled: std::vector<glitch::res::onDemandPointer<std::pair<float, unsigned short> >, glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float, unsigned short> >, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::res::onDemandPointer<std::pair<float, unsigned short> >*, glitch::res::onDemandPointer<std::pair<float, unsigned short> >*, std::__false_type const&)
; decoder-mode: arm
006657c8  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
006657cc  04 40 90 e5                                      ldr r4, [r0, #4]
006657d0  00 50 a0 e1                                      mov r5, r0
006657d4  02 60 a0 e1                                      mov r6, r2
006657d8  04 b0 62 e0                                      rsb fp, r2, r4
006657dc  4b b1 a0 e1                                      asr fp, fp, #2
006657e0  00 00 5b e3                                      cmp fp, #0
006657e4  01 a0 a0 e1                                      mov sl, r1
006657e8  01 90 a0 d1                                      movle sb, r1
006657ec  1b 00 00 da                                      ble #0x665860
006657f0  00 40 a0 e3                                      mov r4, #0
006657f4  0b 80 a0 e1                                      mov r8, fp
006657f8  04 90 a0 e1                                      mov sb, r4
006657fc  04 30 96 e7                                      ldr r3, [r6, r4]
00665800  00 00 53 e3                                      cmp r3, #0
00665804  00 20 93 15                                      ldrne r2, [r3]
00665808  01 20 82 12                                      addne r2, r2, #1
0066580c  00 20 83 15                                      strne r2, [r3]
00665810  04 70 9a e7                                      ldr r7, [sl, r4]
00665814  00 00 57 e3                                      cmp r7, #0
00665818  09 00 00 0a                                      beq #0x665844
0066581c  00 30 97 e5                                      ldr r3, [r7]
00665820  01 30 43 e2                                      sub r3, r3, #1
00665824  00 00 53 e3                                      cmp r3, #0
00665828  00 30 87 e5                                      str r3, [r7]
0066582c  04 00 00 1a                                      bne #0x665844
00665830  0c 00 97 e5                                      ldr r0, [r7, #0xc]
00665834  00 00 50 e3                                      cmp r0, #0
00665838  00 00 00 0a                                      beq #0x665840
0066583c  1d a2 f2 eb                                      bl #0x30e0b8
00665840  0c 90 87 e5                                      str sb, [r7, #0xc]
00665844  04 30 96 e7                                      ldr r3, [r6, r4]
00665848  01 80 58 e2                                      subs r8, r8, #1
0066584c  04 30 8a e7                                      str r3, [sl, r4]
00665850  04 40 84 e2                                      add r4, r4, #4
00665854  e8 ff ff 1a                                      bne #0x6657fc
00665858  04 40 95 e5                                      ldr r4, [r5, #4]
0066585c  0b 91 8a e0                                      add sb, sl, fp, lsl #2
00665860  09 00 54 e1                                      cmp r4, sb
00665864  12 00 00 0a                                      beq #0x6658b4
00665868  09 60 a0 e1                                      mov r6, sb
0066586c  00 80 a0 e3                                      mov r8, #0
00665870  00 70 96 e5                                      ldr r7, [r6]
00665874  00 00 57 e3                                      cmp r7, #0
00665878  0a 00 00 0a                                      beq #0x6658a8
0066587c  00 30 97 e5                                      ldr r3, [r7]
00665880  01 30 43 e2                                      sub r3, r3, #1
00665884  00 00 53 e3                                      cmp r3, #0
00665888  00 30 87 e5                                      str r3, [r7]
0066588c  04 00 00 1a                                      bne #0x6658a4
00665890  0c 00 97 e5                                      ldr r0, [r7, #0xc]
00665894  00 00 50 e3                                      cmp r0, #0
00665898  00 00 00 0a                                      beq #0x6658a0
0066589c  05 a2 f2 eb                                      bl #0x30e0b8
006658a0  0c 80 87 e5                                      str r8, [r7, #0xc]
006658a4  00 80 86 e5                                      str r8, [r6]
006658a8  04 60 86 e2                                      add r6, r6, #4
006658ac  06 00 54 e1                                      cmp r4, r6
006658b0  ee ff ff 1a                                      bne #0x665870
006658b4  04 90 85 e5                                      str sb, [r5, #4]
006658b8  0a 00 a0 e1                                      mov r0, sl
006658bc  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006658c0, declared_size=120, range_size=120, mode=arm
; class-group: std::vector<glitch::res::onDemandPointer<std::pair<float, unsigned short> >, glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float, unsigned short> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3res15onDemandPointerISt4pairIftEEENS0_4core10SAllocatorIS5_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::res::onDemandPointer<std::pair<float, unsigned short> >, glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float, unsigned short> >, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
006658c0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006658c4  04 40 90 e5                                      ldr r4, [r0, #4]
006658c8  00 70 90 e5                                      ldr r7, [r0]
006658cc  00 80 a0 e1                                      mov r8, r0
006658d0  07 00 54 e1                                      cmp r4, r7
006658d4  11 00 00 0a                                      beq #0x665920
006658d8  00 60 a0 e3                                      mov r6, #0
006658dc  04 50 14 e5                                      ldr r5, [r4, #-4]
006658e0  00 00 55 e3                                      cmp r5, #0
006658e4  0a 00 00 0a                                      beq #0x665914
006658e8  00 30 95 e5                                      ldr r3, [r5]
006658ec  01 30 43 e2                                      sub r3, r3, #1
006658f0  00 00 53 e3                                      cmp r3, #0
006658f4  00 30 85 e5                                      str r3, [r5]
006658f8  04 00 00 1a                                      bne #0x665910
006658fc  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00665900  00 00 50 e3                                      cmp r0, #0
00665904  00 00 00 0a                                      beq #0x66590c
00665908  ea a1 f2 eb                                      bl #0x30e0b8
0066590c  0c 60 85 e5                                      str r6, [r5, #0xc]
00665910  04 60 04 e5                                      str r6, [r4, #-4]
00665914  04 40 44 e2                                      sub r4, r4, #4
00665918  04 00 57 e1                                      cmp r7, r4
0066591c  ee ff ff 1a                                      bne #0x6658dc
00665920  00 00 98 e5                                      ldr r0, [r8]
00665924  00 00 50 e3                                      cmp r0, #0
00665928  00 00 00 0a                                      beq #0x665930
0066592c  c7 aa f2 eb                                      bl #0x310450
00665930  08 00 a0 e1                                      mov r0, r8
00665934  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00665b1c, declared_size=704, range_size=704, mode=arm
; class-group: std::vector<glitch::res::onDemandPointer<std::pair<float, unsigned short> >, glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float, unsigned short> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3res15onDemandPointerISt4pairIftEEENS0_4core10SAllocatorIS5_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS5_jRKS5_RKSt12__false_type
; demangled: std::vector<glitch::res::onDemandPointer<std::pair<float, unsigned short> >, glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float, unsigned short> >, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::res::onDemandPointer<std::pair<float, unsigned short> >*, unsigned int, glitch::res::onDemandPointer<std::pair<float, unsigned short> > const&, std::__false_type const&)
; decoder-mode: arm
00665b1c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00665b20  00 c0 90 e5                                      ldr ip, [r0]
00665b24  14 d0 4d e2                                      sub sp, sp, #0x14
00665b28  03 40 a0 e1                                      mov r4, r3
00665b2c  0c 00 53 e1                                      cmp r3, ip
00665b30  01 50 a0 e1                                      mov r5, r1
00665b34  04 a0 90 35                                      ldrlo sl, [r0, #4]
00665b38  1d 00 00 3a                                      blo #0x665bb4
00665b3c  04 a0 90 e5                                      ldr sl, [r0, #4]
00665b40  0a 00 53 e1                                      cmp r3, sl
00665b44  1a 00 00 2a                                      bhs #0x665bb4
00665b48  00 30 93 e5                                      ldr r3, [r3]
00665b4c  0c c0 8d e2                                      add ip, sp, #0xc
00665b50  00 00 53 e3                                      cmp r3, #0
00665b54  08 30 8d e5                                      str r3, [sp, #8]
00665b58  00 10 93 15                                      ldrne r1, [r3]
00665b5c  01 10 81 12                                      addne r1, r1, #1
00665b60  00 10 83 15                                      strne r1, [r3]
00665b64  05 10 a0 e1                                      mov r1, r5
00665b68  08 30 8d e2                                      add r3, sp, #8
00665b6c  00 c0 8d e5                                      str ip, [sp]
00665b70  e9 ff ff eb                                      bl #0x665b1c
00665b74  08 40 9d e5                                      ldr r4, [sp, #8]
00665b78  00 00 54 e3                                      cmp r4, #0
00665b7c  0a 00 00 0a                                      beq #0x665bac
00665b80  00 30 94 e5                                      ldr r3, [r4]
00665b84  01 30 43 e2                                      sub r3, r3, #1
00665b88  00 00 53 e3                                      cmp r3, #0
00665b8c  00 30 84 e5                                      str r3, [r4]
00665b90  05 00 00 1a                                      bne #0x665bac
00665b94  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00665b98  00 00 50 e3                                      cmp r0, #0
00665b9c  00 00 00 0a                                      beq #0x665ba4
00665ba0  44 a1 f2 eb                                      bl #0x30e0b8
00665ba4  00 30 a0 e3                                      mov r3, #0
00665ba8  0c 30 84 e5                                      str r3, [r4, #0xc]
00665bac  14 d0 8d e2                                      add sp, sp, #0x14
00665bb0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00665bb4  0a 80 65 e0                                      rsb r8, r5, sl
00665bb8  48 81 a0 e1                                      asr r8, r8, #2
00665bbc  08 00 52 e1                                      cmp r2, r8
00665bc0  4a 00 00 2a                                      bhs #0x665cf0
00665bc4  02 81 a0 e1                                      lsl r8, r2, #2
00665bc8  0a 90 68 e0                                      rsb sb, r8, sl
00665bcc  48 11 a0 e1                                      asr r1, r8, #2
00665bd0  00 00 51 e3                                      cmp r1, #0
00665bd4  0a 30 a0 d1                                      movle r3, sl
00665bd8  0a 00 00 da                                      ble #0x665c08
00665bdc  00 20 a0 e3                                      mov r2, #0
00665be0  02 30 99 e7                                      ldr r3, [sb, r2]
00665be4  00 00 53 e3                                      cmp r3, #0
00665be8  02 30 8a e7                                      str r3, [sl, r2]
00665bec  00 c0 93 15                                      ldrne ip, [r3]
00665bf0  04 20 82 e2                                      add r2, r2, #4
00665bf4  01 c0 8c 12                                      addne ip, ip, #1
00665bf8  00 c0 83 15                                      strne ip, [r3]
00665bfc  01 10 51 e2                                      subs r1, r1, #1
00665c00  f6 ff ff 1a                                      bne #0x665be0
00665c04  04 30 90 e5                                      ldr r3, [r0, #4]
00665c08  09 70 65 e0                                      rsb r7, r5, sb
00665c0c  47 71 a0 e1                                      asr r7, r7, #2
00665c10  08 30 83 e0                                      add r3, r3, r8
00665c14  00 00 57 e3                                      cmp r7, #0
00665c18  04 30 80 e5                                      str r3, [r0, #4]
00665c1c  16 00 00 da                                      ble #0x665c7c
00665c20  00 b0 a0 e3                                      mov fp, #0
00665c24  04 30 19 e5                                      ldr r3, [sb, #-4]
00665c28  00 00 53 e3                                      cmp r3, #0
00665c2c  00 20 93 15                                      ldrne r2, [r3]
00665c30  01 20 82 12                                      addne r2, r2, #1
00665c34  00 20 83 15                                      strne r2, [r3]
00665c38  04 60 1a e5                                      ldr r6, [sl, #-4]
00665c3c  00 00 56 e3                                      cmp r6, #0
00665c40  09 00 00 0a                                      beq #0x665c6c
00665c44  00 30 96 e5                                      ldr r3, [r6]
00665c48  01 30 43 e2                                      sub r3, r3, #1
00665c4c  00 00 53 e3                                      cmp r3, #0
00665c50  00 30 86 e5                                      str r3, [r6]
00665c54  04 00 00 1a                                      bne #0x665c6c
00665c58  0c 00 96 e5                                      ldr r0, [r6, #0xc]
00665c5c  00 00 50 e3                                      cmp r0, #0
00665c60  00 00 00 0a                                      beq #0x665c68
00665c64  13 a1 f2 eb                                      bl #0x30e0b8
00665c68  0c b0 86 e5                                      str fp, [r6, #0xc]
00665c6c  04 30 39 e5                                      ldr r3, [sb, #-4]!
00665c70  01 70 57 e2                                      subs r7, r7, #1
00665c74  04 30 2a e5                                      str r3, [sl, #-4]!
00665c78  e9 ff ff 1a                                      bne #0x665c24
00665c7c  48 81 a0 e1                                      asr r8, r8, #2
00665c80  00 00 58 e3                                      cmp r8, #0
00665c84  c8 ff ff da                                      ble #0x665bac
00665c88  00 70 a0 e3                                      mov r7, #0
00665c8c  07 a0 a0 e1                                      mov sl, r7
00665c90  00 30 94 e5                                      ldr r3, [r4]
00665c94  00 00 53 e3                                      cmp r3, #0
00665c98  00 20 93 15                                      ldrne r2, [r3]
00665c9c  01 20 82 12                                      addne r2, r2, #1
00665ca0  00 20 83 15                                      strne r2, [r3]
00665ca4  07 60 95 e7                                      ldr r6, [r5, r7]
00665ca8  00 00 56 e3                                      cmp r6, #0
00665cac  09 00 00 0a                                      beq #0x665cd8
00665cb0  00 30 96 e5                                      ldr r3, [r6]
00665cb4  01 30 43 e2                                      sub r3, r3, #1
00665cb8  00 00 53 e3                                      cmp r3, #0
00665cbc  00 30 86 e5                                      str r3, [r6]
00665cc0  04 00 00 1a                                      bne #0x665cd8
00665cc4  0c 00 96 e5                                      ldr r0, [r6, #0xc]
00665cc8  00 00 50 e3                                      cmp r0, #0
00665ccc  00 00 00 0a                                      beq #0x665cd4
00665cd0  f8 a0 f2 eb                                      bl #0x30e0b8
00665cd4  0c a0 86 e5                                      str sl, [r6, #0xc]
00665cd8  00 30 94 e5                                      ldr r3, [r4]
00665cdc  01 80 58 e2                                      subs r8, r8, #1
00665ce0  07 30 85 e7                                      str r3, [r5, r7]
00665ce4  04 70 87 e2                                      add r7, r7, #4
00665ce8  e8 ff ff 1a                                      bne #0x665c90
00665cec  ae ff ff ea                                      b #0x665bac
00665cf0  02 20 68 e0                                      rsb r2, r8, r2
00665cf4  52 60 bd e7                                      sbfx r6, r2, #0, #0x1e
00665cf8  00 00 56 e3                                      cmp r6, #0
00665cfc  02 21 8a e0                                      add r2, sl, r2, lsl #2
00665d00  09 00 00 da                                      ble #0x665d2c
00665d04  00 10 a0 e3                                      mov r1, #0
00665d08  00 30 94 e5                                      ldr r3, [r4]
00665d0c  00 00 53 e3                                      cmp r3, #0
00665d10  01 31 8a e7                                      str r3, [sl, r1, lsl #2]
00665d14  00 c0 93 15                                      ldrne ip, [r3]
00665d18  01 10 81 e2                                      add r1, r1, #1
00665d1c  01 c0 8c 12                                      addne ip, ip, #1
00665d20  00 c0 83 15                                      strne ip, [r3]
00665d24  06 00 51 e1                                      cmp r1, r6
00665d28  f6 ff ff 1a                                      bne #0x665d08
00665d2c  00 00 58 e3                                      cmp r8, #0
00665d30  04 20 80 e5                                      str r2, [r0, #4]
00665d34  08 21 82 d0                                      addle r2, r2, r8, lsl #2
00665d38  04 20 80 d5                                      strle r2, [r0, #4]
00665d3c  9a ff ff da                                      ble #0x665bac
00665d40  08 70 a0 e1                                      mov r7, r8
00665d44  00 10 a0 e3                                      mov r1, #0
00665d48  01 30 95 e7                                      ldr r3, [r5, r1]
00665d4c  00 00 53 e3                                      cmp r3, #0
00665d50  01 30 82 e7                                      str r3, [r2, r1]
00665d54  00 c0 93 15                                      ldrne ip, [r3]
00665d58  04 10 81 e2                                      add r1, r1, #4
00665d5c  01 c0 8c 12                                      addne ip, ip, #1
00665d60  00 c0 83 15                                      strne ip, [r3]
00665d64  01 70 57 e2                                      subs r7, r7, #1
00665d68  f6 ff ff 1a                                      bne #0x665d48
00665d6c  04 30 90 e5                                      ldr r3, [r0, #4]
00665d70  07 a0 a0 e1                                      mov sl, r7
00665d74  08 31 83 e0                                      add r3, r3, r8, lsl #2
00665d78  04 30 80 e5                                      str r3, [r0, #4]
00665d7c  00 30 94 e5                                      ldr r3, [r4]
00665d80  00 00 53 e3                                      cmp r3, #0
00665d84  00 20 93 15                                      ldrne r2, [r3]
00665d88  01 20 82 12                                      addne r2, r2, #1
00665d8c  00 20 83 15                                      strne r2, [r3]
00665d90  07 60 95 e7                                      ldr r6, [r5, r7]
00665d94  00 00 56 e3                                      cmp r6, #0
00665d98  09 00 00 0a                                      beq #0x665dc4
00665d9c  00 30 96 e5                                      ldr r3, [r6]
00665da0  01 30 43 e2                                      sub r3, r3, #1
00665da4  00 00 53 e3                                      cmp r3, #0
00665da8  00 30 86 e5                                      str r3, [r6]
00665dac  04 00 00 1a                                      bne #0x665dc4
00665db0  0c 00 96 e5                                      ldr r0, [r6, #0xc]
00665db4  00 00 50 e3                                      cmp r0, #0
00665db8  00 00 00 0a                                      beq #0x665dc0
00665dbc  bd a0 f2 eb                                      bl #0x30e0b8
00665dc0  0c a0 86 e5                                      str sl, [r6, #0xc]
00665dc4  00 30 94 e5                                      ldr r3, [r4]
00665dc8  01 80 58 e2                                      subs r8, r8, #1
00665dcc  07 30 85 e7                                      str r3, [r5, r7]
00665dd0  04 70 87 e2                                      add r7, r7, #4
00665dd4  e8 ff ff 1a                                      bne #0x665d7c
00665dd8  73 ff ff ea                                      b #0x665bac

; FUNCTION 0x00665ddc, declared_size=444, range_size=444, mode=arm
; class-group: std::vector<glitch::res::onDemandPointer<std::pair<float, unsigned short> >, glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float, unsigned short> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3res15onDemandPointerISt4pairIftEEENS0_4core10SAllocatorIS5_LNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPS5_jRKS5_
; demangled: std::vector<glitch::res::onDemandPointer<std::pair<float, unsigned short> >, glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float, unsigned short> >, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(glitch::res::onDemandPointer<std::pair<float, unsigned short> >*, unsigned int, glitch::res::onDemandPointer<std::pair<float, unsigned short> > const&)
; decoder-mode: arm
00665ddc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00665de0  00 70 52 e2                                      subs r7, r2, #0
00665de4  14 d0 4d e2                                      sub sp, sp, #0x14
00665de8  00 50 a0 e1                                      mov r5, r0
00665dec  01 40 a0 e1                                      mov r4, r1
00665df0  03 60 a0 e1                                      mov r6, r3
00665df4  59 00 00 0a                                      beq #0x665f60
00665df8  00 50 90 e9                                      ldmib r0, {ip, lr}
00665dfc  0e c0 6c e0                                      rsb ip, ip, lr
00665e00  4c 01 57 e1                                      cmp r7, ip, asr #2
00665e04  57 00 00 9a                                      bls #0x665f68
00665e08  07 10 a0 e1                                      mov r1, r7
00665e0c  30 f7 ff eb                                      bl #0x663ad4
00665e10  00 81 a0 e1                                      lsl r8, r0, #2
00665e14  08 00 a0 e1                                      mov r0, r8
00665e18  00 10 a0 e3                                      mov r1, #0
00665e1c  d1 a9 f2 eb                                      bl #0x310568
00665e20  00 c0 95 e5                                      ldr ip, [r5]
00665e24  00 90 a0 e1                                      mov sb, r0
00665e28  04 e0 6c e0                                      rsb lr, ip, r4
00665e2c  4e e1 a0 e1                                      asr lr, lr, #2
00665e30  00 00 5e e3                                      cmp lr, #0
00665e34  00 00 a0 d1                                      movle r0, r0
00665e38  0b 00 00 da                                      ble #0x665e6c
00665e3c  0e 10 a0 e1                                      mov r1, lr
00665e40  00 20 a0 e3                                      mov r2, #0
00665e44  02 30 9c e7                                      ldr r3, [ip, r2]
00665e48  00 00 53 e3                                      cmp r3, #0
00665e4c  02 30 89 e7                                      str r3, [sb, r2]
00665e50  00 00 93 15                                      ldrne r0, [r3]
00665e54  04 20 82 e2                                      add r2, r2, #4
00665e58  01 00 80 12                                      addne r0, r0, #1
00665e5c  00 00 83 15                                      strne r0, [r3]
00665e60  01 10 51 e2                                      subs r1, r1, #1
00665e64  f6 ff ff 1a                                      bne #0x665e44
00665e68  0e 01 89 e0                                      add r0, sb, lr, lsl #2
00665e6c  01 00 57 e3                                      cmp r7, #1
00665e70  40 00 00 0a                                      beq #0x665f78
00665e74  57 c0 bd e7                                      sbfx ip, r7, #0, #0x1e
00665e78  00 00 5c e3                                      cmp ip, #0
00665e7c  07 71 80 e0                                      add r7, r0, r7, lsl #2
00665e80  09 00 00 da                                      ble #0x665eac
00665e84  00 20 a0 e3                                      mov r2, #0
00665e88  00 30 96 e5                                      ldr r3, [r6]
00665e8c  00 00 53 e3                                      cmp r3, #0
00665e90  02 31 80 e7                                      str r3, [r0, r2, lsl #2]
00665e94  00 10 93 15                                      ldrne r1, [r3]
00665e98  01 20 82 e2                                      add r2, r2, #1
00665e9c  01 10 81 12                                      addne r1, r1, #1
00665ea0  00 10 83 15                                      strne r1, [r3]
00665ea4  0c 00 52 e1                                      cmp r2, ip
00665ea8  f6 ff ff 1a                                      bne #0x665e88
00665eac  04 00 95 e5                                      ldr r0, [r5, #4]
00665eb0  00 c0 64 e0                                      rsb ip, r4, r0
00665eb4  4c c1 a0 e1                                      asr ip, ip, #2
00665eb8  00 00 5c e3                                      cmp ip, #0
00665ebc  0c 00 00 da                                      ble #0x665ef4
00665ec0  0c 10 a0 e1                                      mov r1, ip
00665ec4  00 20 a0 e3                                      mov r2, #0
00665ec8  02 30 94 e7                                      ldr r3, [r4, r2]
00665ecc  00 00 53 e3                                      cmp r3, #0
00665ed0  02 30 87 e7                                      str r3, [r7, r2]
00665ed4  00 00 93 15                                      ldrne r0, [r3]
00665ed8  04 20 82 e2                                      add r2, r2, #4
00665edc  01 00 80 12                                      addne r0, r0, #1
00665ee0  00 00 83 15                                      strne r0, [r3]
00665ee4  01 10 51 e2                                      subs r1, r1, #1
00665ee8  f6 ff ff 1a                                      bne #0x665ec8
00665eec  04 00 95 e5                                      ldr r0, [r5, #4]
00665ef0  0c 71 87 e0                                      add r7, r7, ip, lsl #2
00665ef4  00 b0 95 e5                                      ldr fp, [r5]
00665ef8  00 00 5b e1                                      cmp fp, r0
00665efc  13 00 00 0a                                      beq #0x665f50
00665f00  00 40 a0 e1                                      mov r4, r0
00665f04  00 a0 a0 e3                                      mov sl, #0
00665f08  04 60 14 e5                                      ldr r6, [r4, #-4]
00665f0c  00 00 56 e3                                      cmp r6, #0
00665f10  0a 00 00 0a                                      beq #0x665f40
00665f14  00 30 96 e5                                      ldr r3, [r6]
00665f18  01 30 43 e2                                      sub r3, r3, #1
00665f1c  00 00 53 e3                                      cmp r3, #0
00665f20  00 30 86 e5                                      str r3, [r6]
00665f24  04 00 00 1a                                      bne #0x665f3c
00665f28  0c 00 96 e5                                      ldr r0, [r6, #0xc]
00665f2c  00 00 50 e3                                      cmp r0, #0
00665f30  00 00 00 0a                                      beq #0x665f38
00665f34  5f a0 f2 eb                                      bl #0x30e0b8
00665f38  0c a0 86 e5                                      str sl, [r6, #0xc]
00665f3c  04 a0 04 e5                                      str sl, [r4, #-4]
00665f40  04 40 44 e2                                      sub r4, r4, #4
00665f44  04 00 5b e1                                      cmp fp, r4
00665f48  ee ff ff 1a                                      bne #0x665f08
00665f4c  00 00 95 e5                                      ldr r0, [r5]
00665f50  08 80 89 e0                                      add r8, sb, r8
00665f54  3d a9 f2 eb                                      bl #0x310450
00665f58  80 01 85 e9                                      stmib r5, {r7, r8}
00665f5c  00 90 85 e5                                      str sb, [r5]
00665f60  14 d0 8d e2                                      add sp, sp, #0x14
00665f64  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00665f68  0c c0 8d e2                                      add ip, sp, #0xc
00665f6c  00 c0 8d e5                                      str ip, [sp]
00665f70  e9 fe ff eb                                      bl #0x665b1c
00665f74  f9 ff ff ea                                      b #0x665f60
00665f78  00 30 96 e5                                      ldr r3, [r6]
00665f7c  04 70 80 e2                                      add r7, r0, #4
00665f80  00 00 53 e3                                      cmp r3, #0
00665f84  00 30 80 e5                                      str r3, [r0]
00665f88  00 20 93 15                                      ldrne r2, [r3]
00665f8c  01 20 82 12                                      addne r2, r2, #1
00665f90  00 20 83 15                                      strne r2, [r3]
00665f94  c4 ff ff ea                                      b #0x665eac

; FUNCTION 0x00665f98, declared_size=80, range_size=80, mode=arm
; class-group: std::vector<glitch::res::onDemandPointer<std::pair<float, unsigned short> >, glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float, unsigned short> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch3res15onDemandPointerISt4pairIftEEENS0_4core10SAllocatorIS5_LNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKS5_
; demangled: std::vector<glitch::res::onDemandPointer<std::pair<float, unsigned short> >, glitch::core::SAllocator<glitch::res::onDemandPointer<std::pair<float, unsigned short> >, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, glitch::res::onDemandPointer<std::pair<float, unsigned short> > const&)
; decoder-mode: arm
00665f98  10 40 2d e9                                      push {r4, lr}
00665f9c  10 10 90 e8                                      ldm r0, {r4, ip}
00665fa0  02 30 a0 e1                                      mov r3, r2
00665fa4  08 d0 4d e2                                      sub sp, sp, #8
00665fa8  0c 20 64 e0                                      rsb r2, r4, ip
00665fac  42 21 a0 e1                                      asr r2, r2, #2
00665fb0  02 00 51 e1                                      cmp r1, r2
00665fb4  07 00 00 2a                                      bhs #0x665fd8
00665fb8  01 11 84 e0                                      add r1, r4, r1, lsl #2
00665fbc  0c 00 51 e1                                      cmp r1, ip
00665fc0  02 00 00 0a                                      beq #0x665fd0
00665fc4  0c 20 a0 e1                                      mov r2, ip
00665fc8  04 30 8d e2                                      add r3, sp, #4
00665fcc  fd fd ff eb                                      bl #0x6657c8
00665fd0  08 d0 8d e2                                      add sp, sp, #8
00665fd4  10 80 bd e8                                      pop {r4, pc}
00665fd8  01 20 62 e0                                      rsb r2, r2, r1
00665fdc  0c 10 a0 e1                                      mov r1, ip
00665fe0  7d ff ff eb                                      bl #0x665ddc
00665fe4  f9 ff ff ea                                      b #0x665fd0
