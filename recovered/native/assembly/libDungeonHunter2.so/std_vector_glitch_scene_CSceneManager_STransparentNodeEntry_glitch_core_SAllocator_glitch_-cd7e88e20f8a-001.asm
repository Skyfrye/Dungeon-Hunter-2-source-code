; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00351840, declared_size=128, range_size=128, mode=arm
; class-group: std::vector<glitch::scene::CSceneManager::STransparentNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene13CSceneManager21STransparentNodeEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::vector<glitch::scene::CSceneManager::STransparentNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
00351840  70 40 2d e9                                      push {r4, r5, r6, lr}
00351844  14 00 90 e8                                      ldm r0, {r2, r4}
00351848  cc 3c 0c e3                                      movw r3, #0xcccc
0035184c  cc 3c 40 e3                                      movt r3, #0xccc
00351850  04 20 62 e0                                      rsb r2, r2, r4
00351854  42 21 a0 e1                                      asr r2, r2, #2
00351858  01 50 a0 e1                                      mov r5, r1
0035185c  82 40 82 e0                                      add r4, r2, r2, lsl #1
00351860  04 42 84 e0                                      add r4, r4, r4, lsl #4
00351864  04 44 84 e0                                      add r4, r4, r4, lsl #8
00351868  04 48 84 e0                                      add r4, r4, r4, lsl #16
0035186c  04 41 82 e0                                      add r4, r2, r4, lsl #2
00351870  03 30 64 e0                                      rsb r3, r4, r3
00351874  01 00 53 e1                                      cmp r3, r1
00351878  0b 00 00 3a                                      blo #0x3518ac
0035187c  cc 3c 0c e3                                      movw r3, #0xcccc
00351880  05 00 54 e1                                      cmp r4, r5
00351884  04 00 84 20                                      addhs r0, r4, r4
00351888  05 00 84 30                                      addlo r0, r4, r5
0035188c  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00351890  03 00 50 e1                                      cmp r0, r3
00351894  01 00 00 8a                                      bhi #0x3518a0
00351898  04 00 50 e1                                      cmp r0, r4
0035189c  01 00 00 2a                                      bhs #0x3518a8
003518a0  cc 0c 0c e3                                      movw r0, #0xcccc
003518a4  00 06 80 e1                                      orr r0, r0, r0, lsl #12
003518a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
003518ac  08 00 9f e5                                      ldr r0, [pc, #8]
003518b0  00 00 8f e0                                      add r0, pc, r0
003518b4  61 dd 0e eb                                      bl #0x708e40
003518b8  ef ff ff ea                                      b #0x35187c
; mapping-symbol data/literal pool
003518bc  b8 cb 56 00                                      .byte 0xb8, 0xcb, 0x56, 0x00

; FUNCTION 0x0035691c, declared_size=588, range_size=588, mode=arm
; class-group: std::vector<glitch::scene::CSceneManager::STransparentNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene13CSceneManager21STransparentNodeEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE22_M_insert_overflow_auxEPS3_RKS3_RKSt12__false_typejb
; demangled: std::vector<glitch::scene::CSceneManager::STransparentNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(glitch::scene::CSceneManager::STransparentNodeEntry*, glitch::scene::CSceneManager::STransparentNodeEntry const&, std::__false_type const&, unsigned int, bool)
; decoder-mode: arm
0035691c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00356920  20 50 9d e5                                      ldr r5, [sp, #0x20]
00356924  01 40 a0 e1                                      mov r4, r1
00356928  02 60 a0 e1                                      mov r6, r2
0035692c  05 10 a0 e1                                      mov r1, r5
00356930  00 70 a0 e1                                      mov r7, r0
00356934  24 a0 dd e5                                      ldrb sl, [sp, #0x24]
00356938  c0 eb ff eb                                      bl #0x351840
0035693c  14 80 a0 e3                                      mov r8, #0x14
00356940  98 00 08 e0                                      mul r8, r8, r0
00356944  00 10 a0 e3                                      mov r1, #0
00356948  08 00 a0 e1                                      mov r0, r8
0035694c  05 e7 fe eb                                      bl #0x310568
00356950  00 30 97 e5                                      ldr r3, [r7]
00356954  00 90 a0 e1                                      mov sb, r0
00356958  04 20 63 e0                                      rsb r2, r3, r4
0035695c  42 21 a0 e1                                      asr r2, r2, #2
00356960  82 c0 82 e0                                      add ip, r2, r2, lsl #1
00356964  0c c2 8c e0                                      add ip, ip, ip, lsl #4
00356968  0c c4 8c e0                                      add ip, ip, ip, lsl #8
0035696c  0c c8 8c e0                                      add ip, ip, ip, lsl #16
00356970  0c c1 82 e0                                      add ip, r2, ip, lsl #2
00356974  00 00 5c e3                                      cmp ip, #0
00356978  00 30 a0 d1                                      movle r3, r0
0035697c  15 00 00 da                                      ble #0x3569d8
00356980  0c 00 a0 e1                                      mov r0, ip
00356984  09 20 a0 e1                                      mov r2, sb
00356988  00 10 93 e5                                      ldr r1, [r3]
0035698c  00 10 82 e5                                      str r1, [r2]
00356990  04 10 93 e5                                      ldr r1, [r3, #4]
00356994  04 10 82 e5                                      str r1, [r2, #4]
00356998  08 10 93 e5                                      ldr r1, [r3, #8]
0035699c  00 00 51 e3                                      cmp r1, #0
003569a0  08 10 82 e5                                      str r1, [r2, #8]
003569a4  00 e0 91 15                                      ldrne lr, [r1]
003569a8  01 e0 8e 12                                      addne lr, lr, #1
003569ac  00 e0 81 15                                      strne lr, [r1]
003569b0  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003569b4  01 00 50 e2                                      subs r0, r0, #1
003569b8  0c 10 82 e5                                      str r1, [r2, #0xc]
003569bc  10 10 93 e5                                      ldr r1, [r3, #0x10]
003569c0  14 30 83 e2                                      add r3, r3, #0x14
003569c4  10 10 82 e5                                      str r1, [r2, #0x10]
003569c8  14 20 82 e2                                      add r2, r2, #0x14
003569cc  ed ff ff 1a                                      bne #0x356988
003569d0  14 30 a0 e3                                      mov r3, #0x14
003569d4  93 9c 23 e0                                      mla r3, r3, ip, sb
003569d8  01 00 55 e3                                      cmp r5, #1
003569dc  4f 00 00 0a                                      beq #0x356b20
003569e0  14 20 a0 e3                                      mov r2, #0x14
003569e4  92 35 25 e0                                      mla r5, r2, r5, r3
003569e8  05 20 63 e0                                      rsb r2, r3, r5
003569ec  42 21 a0 e1                                      asr r2, r2, #2
003569f0  82 10 82 e0                                      add r1, r2, r2, lsl #1
003569f4  01 12 81 e0                                      add r1, r1, r1, lsl #4
003569f8  01 14 81 e0                                      add r1, r1, r1, lsl #8
003569fc  01 18 81 e0                                      add r1, r1, r1, lsl #16
00356a00  01 11 82 e0                                      add r1, r2, r1, lsl #2
00356a04  00 00 51 e3                                      cmp r1, #0
00356a08  01 00 00 ca                                      bgt #0x356a14
00356a0c  10 00 00 ea                                      b #0x356a54
00356a10  14 30 83 e2                                      add r3, r3, #0x14
00356a14  00 20 96 e5                                      ldr r2, [r6]
00356a18  00 20 83 e5                                      str r2, [r3]
00356a1c  04 20 96 e5                                      ldr r2, [r6, #4]
00356a20  04 20 83 e5                                      str r2, [r3, #4]
00356a24  08 20 96 e5                                      ldr r2, [r6, #8]
00356a28  00 00 52 e3                                      cmp r2, #0
00356a2c  08 20 83 e5                                      str r2, [r3, #8]
00356a30  00 00 92 15                                      ldrne r0, [r2]
00356a34  01 00 80 12                                      addne r0, r0, #1
00356a38  00 00 82 15                                      strne r0, [r2]
00356a3c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00356a40  01 10 51 e2                                      subs r1, r1, #1
00356a44  0c 20 83 e5                                      str r2, [r3, #0xc]
00356a48  10 20 96 e5                                      ldr r2, [r6, #0x10]
00356a4c  10 20 83 e5                                      str r2, [r3, #0x10]
00356a50  ee ff ff 1a                                      bne #0x356a10
00356a54  00 00 5a e3                                      cmp sl, #0
00356a58  0f 00 00 0a                                      beq #0x356a9c
00356a5c  04 60 97 e5                                      ldr r6, [r7, #4]
00356a60  00 40 97 e5                                      ldr r4, [r7]
00356a64  06 00 54 e1                                      cmp r4, r6
00356a68  06 00 a0 01                                      moveq r0, r6
00356a6c  05 00 00 0a                                      beq #0x356a88
00356a70  14 60 46 e2                                      sub r6, r6, #0x14
00356a74  08 00 86 e2                                      add r0, r6, #8
00356a78  ef ec ff eb                                      bl #0x351e3c
00356a7c  06 00 54 e1                                      cmp r4, r6
00356a80  fa ff ff 1a                                      bne #0x356a70
00356a84  00 00 97 e5                                      ldr r0, [r7]
00356a88  08 80 89 e0                                      add r8, sb, r8
00356a8c  6f e6 fe eb                                      bl #0x310450
00356a90  20 01 87 e9                                      stmib r7, {r5, r8}
00356a94  00 90 87 e5                                      str sb, [r7]
00356a98  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00356a9c  04 60 97 e5                                      ldr r6, [r7, #4]
00356aa0  06 30 64 e0                                      rsb r3, r4, r6
00356aa4  43 31 a0 e1                                      asr r3, r3, #2
00356aa8  83 00 83 e0                                      add r0, r3, r3, lsl #1
00356aac  00 02 80 e0                                      add r0, r0, r0, lsl #4
00356ab0  00 04 80 e0                                      add r0, r0, r0, lsl #8
00356ab4  00 08 80 e0                                      add r0, r0, r0, lsl #16
00356ab8  00 01 83 e0                                      add r0, r3, r0, lsl #2
00356abc  00 00 50 e3                                      cmp r0, #0
00356ac0  e6 ff ff da                                      ble #0x356a60
00356ac4  00 10 a0 e1                                      mov r1, r0
00356ac8  05 30 a0 e1                                      mov r3, r5
00356acc  00 20 94 e5                                      ldr r2, [r4]
00356ad0  00 20 83 e5                                      str r2, [r3]
00356ad4  04 20 94 e5                                      ldr r2, [r4, #4]
00356ad8  04 20 83 e5                                      str r2, [r3, #4]
00356adc  08 20 94 e5                                      ldr r2, [r4, #8]
00356ae0  00 00 52 e3                                      cmp r2, #0
00356ae4  08 20 83 e5                                      str r2, [r3, #8]
00356ae8  00 c0 92 15                                      ldrne ip, [r2]
00356aec  01 c0 8c 12                                      addne ip, ip, #1
00356af0  00 c0 82 15                                      strne ip, [r2]
00356af4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00356af8  01 10 51 e2                                      subs r1, r1, #1
00356afc  0c 20 83 e5                                      str r2, [r3, #0xc]
00356b00  10 20 94 e5                                      ldr r2, [r4, #0x10]
00356b04  14 40 84 e2                                      add r4, r4, #0x14
00356b08  10 20 83 e5                                      str r2, [r3, #0x10]
00356b0c  14 30 83 e2                                      add r3, r3, #0x14
00356b10  ed ff ff 1a                                      bne #0x356acc
00356b14  14 30 a0 e3                                      mov r3, #0x14
00356b18  93 50 25 e0                                      mla r5, r3, r0, r5
00356b1c  ce ff ff ea                                      b #0x356a5c
00356b20  00 20 96 e5                                      ldr r2, [r6]
00356b24  14 50 83 e2                                      add r5, r3, #0x14
00356b28  00 20 83 e5                                      str r2, [r3]
00356b2c  04 20 96 e5                                      ldr r2, [r6, #4]
00356b30  04 20 83 e5                                      str r2, [r3, #4]
00356b34  08 20 96 e5                                      ldr r2, [r6, #8]
00356b38  00 00 52 e3                                      cmp r2, #0
00356b3c  08 20 83 e5                                      str r2, [r3, #8]
00356b40  00 10 92 15                                      ldrne r1, [r2]
00356b44  01 10 81 12                                      addne r1, r1, #1
00356b48  00 10 82 15                                      strne r1, [r2]
00356b4c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00356b50  00 00 5a e3                                      cmp sl, #0
00356b54  0c 20 83 e5                                      str r2, [r3, #0xc]
00356b58  10 20 96 e5                                      ldr r2, [r6, #0x10]
00356b5c  10 20 83 e5                                      str r2, [r3, #0x10]
00356b60  bd ff ff 1a                                      bne #0x356a5c
00356b64  cc ff ff ea                                      b #0x356a9c

; FUNCTION 0x00356b68, declared_size=132, range_size=132, mode=arm
; class-group: std::vector<glitch::scene::CSceneManager::STransparentNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene13CSceneManager21STransparentNodeEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE9push_backERKS3_
; demangled: std::vector<glitch::scene::CSceneManager::STransparentNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >::push_back(glitch::scene::CSceneManager::STransparentNodeEntry const&)
; decoder-mode: arm
00356b68  10 40 2d e9                                      push {r4, lr}
00356b6c  18 00 90 e9                                      ldmib r0, {r3, r4}
00356b70  10 d0 4d e2                                      sub sp, sp, #0x10
00356b74  00 c0 a0 e1                                      mov ip, r0
00356b78  04 00 53 e1                                      cmp r3, r4
00356b7c  01 20 a0 e1                                      mov r2, r1
00356b80  12 00 00 0a                                      beq #0x356bd0
00356b84  00 10 91 e5                                      ldr r1, [r1]
00356b88  00 10 83 e5                                      str r1, [r3]
00356b8c  04 10 92 e5                                      ldr r1, [r2, #4]
00356b90  04 10 83 e5                                      str r1, [r3, #4]
00356b94  08 10 92 e5                                      ldr r1, [r2, #8]
00356b98  08 10 83 e5                                      str r1, [r3, #8]
00356b9c  00 00 51 e3                                      cmp r1, #0
00356ba0  00 00 91 15                                      ldrne r0, [r1]
00356ba4  01 00 80 12                                      addne r0, r0, #1
00356ba8  00 00 81 15                                      strne r0, [r1]
00356bac  0c 10 92 e5                                      ldr r1, [r2, #0xc]
00356bb0  0c 10 83 e5                                      str r1, [r3, #0xc]
00356bb4  10 20 92 e5                                      ldr r2, [r2, #0x10]
00356bb8  10 20 83 e5                                      str r2, [r3, #0x10]
00356bbc  04 30 9c e5                                      ldr r3, [ip, #4]
00356bc0  14 30 83 e2                                      add r3, r3, #0x14
00356bc4  04 30 8c e5                                      str r3, [ip, #4]
00356bc8  10 d0 8d e2                                      add sp, sp, #0x10
00356bcc  10 80 bd e8                                      pop {r4, pc}
00356bd0  01 c0 a0 e3                                      mov ip, #1
00356bd4  03 10 a0 e1                                      mov r1, r3
00356bd8  0c 30 8d e2                                      add r3, sp, #0xc
00356bdc  04 c0 8d e5                                      str ip, [sp, #4]
00356be0  00 c0 8d e5                                      str ip, [sp]
00356be4  4c ff ff eb                                      bl #0x35691c
00356be8  f6 ff ff ea                                      b #0x356bc8

; FUNCTION 0x0035705c, declared_size=232, range_size=232, mode=arm
; class-group: std::vector<glitch::scene::CSceneManager::STransparentNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene13CSceneManager21STransparentNodeEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS3_SA_RKSt12__false_type
; demangled: std::vector<glitch::scene::CSceneManager::STransparentNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::scene::CSceneManager::STransparentNodeEntry*, glitch::scene::CSceneManager::STransparentNodeEntry*, std::__false_type const&)
; decoder-mode: arm
0035705c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00357060  04 40 90 e5                                      ldr r4, [r0, #4]
00357064  08 d0 4d e2                                      sub sp, sp, #8
00357068  00 50 a0 e1                                      mov r5, r0
0035706c  04 30 62 e0                                      rsb r3, r2, r4
00357070  43 31 a0 e1                                      asr r3, r3, #2
00357074  02 60 a0 e1                                      mov r6, r2
00357078  83 90 83 e0                                      add sb, r3, r3, lsl #1
0035707c  01 a0 a0 e1                                      mov sl, r1
00357080  09 92 89 e0                                      add sb, sb, sb, lsl #4
00357084  09 94 89 e0                                      add sb, sb, sb, lsl #8
00357088  09 98 89 e0                                      add sb, sb, sb, lsl #16
0035708c  09 91 83 e0                                      add sb, r3, sb, lsl #2
00357090  00 00 59 e3                                      cmp sb, #0
00357094  01 70 a0 d1                                      movle r7, r1
00357098  1d 00 00 da                                      ble #0x357114
0035709c  09 70 a0 e1                                      mov r7, sb
003570a0  01 40 a0 e1                                      mov r4, r1
003570a4  04 80 8d e2                                      add r8, sp, #4
003570a8  00 30 96 e5                                      ldr r3, [r6]
003570ac  08 00 a0 e1                                      mov r0, r8
003570b0  00 30 84 e5                                      str r3, [r4]
003570b4  04 30 96 e5                                      ldr r3, [r6, #4]
003570b8  04 30 84 e5                                      str r3, [r4, #4]
003570bc  08 20 96 e5                                      ldr r2, [r6, #8]
003570c0  04 20 8d e5                                      str r2, [sp, #4]
003570c4  00 00 52 e3                                      cmp r2, #0
003570c8  00 30 92 15                                      ldrne r3, [r2]
003570cc  01 30 83 12                                      addne r3, r3, #1
003570d0  00 30 82 15                                      strne r3, [r2]
003570d4  04 20 9d 15                                      ldrne r2, [sp, #4]
003570d8  08 30 94 e5                                      ldr r3, [r4, #8]
003570dc  08 20 84 e5                                      str r2, [r4, #8]
003570e0  04 30 8d e5                                      str r3, [sp, #4]
003570e4  54 eb ff eb                                      bl #0x351e3c
003570e8  0c 30 96 e5                                      ldr r3, [r6, #0xc]
003570ec  01 70 57 e2                                      subs r7, r7, #1
003570f0  0c 30 84 e5                                      str r3, [r4, #0xc]
003570f4  10 30 96 e5                                      ldr r3, [r6, #0x10]
003570f8  14 60 86 e2                                      add r6, r6, #0x14
003570fc  10 30 84 e5                                      str r3, [r4, #0x10]
00357100  14 40 84 e2                                      add r4, r4, #0x14
00357104  e7 ff ff 1a                                      bne #0x3570a8
00357108  14 70 a0 e3                                      mov r7, #0x14
0035710c  97 a9 27 e0                                      mla r7, r7, sb, sl
00357110  04 40 95 e5                                      ldr r4, [r5, #4]
00357114  04 00 57 e1                                      cmp r7, r4
00357118  05 00 00 0a                                      beq #0x357134
0035711c  07 60 a0 e1                                      mov r6, r7
00357120  08 00 86 e2                                      add r0, r6, #8
00357124  14 60 86 e2                                      add r6, r6, #0x14
00357128  43 eb ff eb                                      bl #0x351e3c
0035712c  04 00 56 e1                                      cmp r6, r4
00357130  fa ff ff 1a                                      bne #0x357120
00357134  04 70 85 e5                                      str r7, [r5, #4]
00357138  0a 00 a0 e1                                      mov r0, sl
0035713c  08 d0 8d e2                                      add sp, sp, #8
00357140  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00357940, declared_size=948, range_size=948, mode=arm
; class-group: std::vector<glitch::scene::CSceneManager::STransparentNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene13CSceneManager21STransparentNodeEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPS3_jRKS3_RKSt12__false_type
; demangled: std::vector<glitch::scene::CSceneManager::STransparentNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(glitch::scene::CSceneManager::STransparentNodeEntry*, unsigned int, glitch::scene::CSceneManager::STransparentNodeEntry const&, std::__false_type const&)
; decoder-mode: arm
00357940  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00357944  00 c0 a0 e1                                      mov ip, r0
00357948  00 00 90 e5                                      ldr r0, [r0]
0035794c  03 40 a0 e1                                      mov r4, r3
00357950  30 d0 4d e2                                      sub sp, sp, #0x30
00357954  00 00 53 e1                                      cmp r3, r0
00357958  01 60 a0 e1                                      mov r6, r1
0035795c  04 30 9c 35                                      ldrlo r3, [ip, #4]
00357960  02 00 00 3a                                      blo #0x357970
00357964  04 30 9c e5                                      ldr r3, [ip, #4]
00357968  03 00 54 e1                                      cmp r4, r3
0035796c  5d 00 00 3a                                      blo #0x357ae8
00357970  03 10 66 e0                                      rsb r1, r6, r3
00357974  41 11 a0 e1                                      asr r1, r1, #2
00357978  81 50 81 e0                                      add r5, r1, r1, lsl #1
0035797c  05 52 85 e0                                      add r5, r5, r5, lsl #4
00357980  05 54 85 e0                                      add r5, r5, r5, lsl #8
00357984  05 58 85 e0                                      add r5, r5, r5, lsl #16
00357988  05 51 81 e0                                      add r5, r1, r5, lsl #2
0035798c  05 00 52 e1                                      cmp r2, r5
00357990  6a 00 00 3a                                      blo #0x357b40
00357994  14 10 a0 e3                                      mov r1, #0x14
00357998  02 20 65 e0                                      rsb r2, r5, r2
0035799c  91 32 22 e0                                      mla r2, r1, r2, r3
003579a0  02 10 63 e0                                      rsb r1, r3, r2
003579a4  41 11 a0 e1                                      asr r1, r1, #2
003579a8  81 00 81 e0                                      add r0, r1, r1, lsl #1
003579ac  00 02 80 e0                                      add r0, r0, r0, lsl #4
003579b0  00 04 80 e0                                      add r0, r0, r0, lsl #8
003579b4  00 08 80 e0                                      add r0, r0, r0, lsl #16
003579b8  00 01 81 e0                                      add r0, r1, r0, lsl #2
003579bc  00 00 50 e3                                      cmp r0, #0
003579c0  37 00 00 ca                                      bgt #0x357aa4
003579c4  00 00 55 e3                                      cmp r5, #0
003579c8  04 20 8c e5                                      str r2, [ip, #4]
003579cc  c4 00 00 da                                      ble #0x357ce4
003579d0  05 00 a0 e1                                      mov r0, r5
003579d4  06 30 a0 e1                                      mov r3, r6
003579d8  00 00 00 ea                                      b #0x3579e0
003579dc  14 20 82 e2                                      add r2, r2, #0x14
003579e0  00 10 93 e5                                      ldr r1, [r3]
003579e4  00 10 82 e5                                      str r1, [r2]
003579e8  04 10 93 e5                                      ldr r1, [r3, #4]
003579ec  04 10 82 e5                                      str r1, [r2, #4]
003579f0  08 10 93 e5                                      ldr r1, [r3, #8]
003579f4  00 00 51 e3                                      cmp r1, #0
003579f8  08 10 82 e5                                      str r1, [r2, #8]
003579fc  00 e0 91 15                                      ldrne lr, [r1]
00357a00  01 e0 8e 12                                      addne lr, lr, #1
00357a04  00 e0 81 15                                      strne lr, [r1]
00357a08  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00357a0c  01 00 50 e2                                      subs r0, r0, #1
00357a10  0c 10 82 e5                                      str r1, [r2, #0xc]
00357a14  10 10 93 e5                                      ldr r1, [r3, #0x10]
00357a18  14 30 83 e2                                      add r3, r3, #0x14
00357a1c  10 10 82 e5                                      str r1, [r2, #0x10]
00357a20  ed ff ff 1a                                      bne #0x3579dc
00357a24  04 30 9c e5                                      ldr r3, [ip, #4]
00357a28  14 20 a0 e3                                      mov r2, #0x14
00357a2c  20 70 8d e2                                      add r7, sp, #0x20
00357a30  92 35 23 e0                                      mla r3, r2, r5, r3
00357a34  04 30 8c e5                                      str r3, [ip, #4]
00357a38  00 00 00 ea                                      b #0x357a40
00357a3c  14 60 86 e2                                      add r6, r6, #0x14
00357a40  00 30 94 e5                                      ldr r3, [r4]
00357a44  07 00 a0 e1                                      mov r0, r7
00357a48  00 30 86 e5                                      str r3, [r6]
00357a4c  04 30 94 e5                                      ldr r3, [r4, #4]
00357a50  04 30 86 e5                                      str r3, [r6, #4]
00357a54  08 20 94 e5                                      ldr r2, [r4, #8]
00357a58  20 20 8d e5                                      str r2, [sp, #0x20]
00357a5c  00 00 52 e3                                      cmp r2, #0
00357a60  00 30 92 15                                      ldrne r3, [r2]
00357a64  01 30 83 12                                      addne r3, r3, #1
00357a68  00 30 82 15                                      strne r3, [r2]
00357a6c  20 20 9d 15                                      ldrne r2, [sp, #0x20]
00357a70  08 30 96 e5                                      ldr r3, [r6, #8]
00357a74  08 20 86 e5                                      str r2, [r6, #8]
00357a78  20 30 8d e5                                      str r3, [sp, #0x20]
00357a7c  ee e8 ff eb                                      bl #0x351e3c
00357a80  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00357a84  01 50 55 e2                                      subs r5, r5, #1
00357a88  0c 30 86 e5                                      str r3, [r6, #0xc]
00357a8c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00357a90  10 30 86 e5                                      str r3, [r6, #0x10]
00357a94  e8 ff ff 1a                                      bne #0x357a3c
00357a98  30 d0 8d e2                                      add sp, sp, #0x30
00357a9c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00357aa0  14 30 83 e2                                      add r3, r3, #0x14
00357aa4  00 10 94 e5                                      ldr r1, [r4]
00357aa8  00 10 83 e5                                      str r1, [r3]
00357aac  04 10 94 e5                                      ldr r1, [r4, #4]
00357ab0  04 10 83 e5                                      str r1, [r3, #4]
00357ab4  08 10 94 e5                                      ldr r1, [r4, #8]
00357ab8  00 00 51 e3                                      cmp r1, #0
00357abc  08 10 83 e5                                      str r1, [r3, #8]
00357ac0  00 70 91 15                                      ldrne r7, [r1]
00357ac4  01 70 87 12                                      addne r7, r7, #1
00357ac8  00 70 81 15                                      strne r7, [r1]
00357acc  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00357ad0  01 00 50 e2                                      subs r0, r0, #1
00357ad4  0c 10 83 e5                                      str r1, [r3, #0xc]
00357ad8  10 10 94 e5                                      ldr r1, [r4, #0x10]
00357adc  10 10 83 e5                                      str r1, [r3, #0x10]
00357ae0  ee ff ff 1a                                      bne #0x357aa0
00357ae4  b6 ff ff ea                                      b #0x3579c4
00357ae8  0b 00 94 e8                                      ldm r4, {r0, r1, r3}
00357aec  00 00 53 e3                                      cmp r3, #0
00357af0  10 10 8d e5                                      str r1, [sp, #0x10]
00357af4  0c 00 8d e5                                      str r0, [sp, #0xc]
00357af8  14 30 8d e5                                      str r3, [sp, #0x14]
00357afc  00 10 93 15                                      ldrne r1, [r3]
00357b00  0c 00 a0 e1                                      mov r0, ip
00357b04  2c c0 8d e2                                      add ip, sp, #0x2c
00357b08  01 10 81 12                                      addne r1, r1, #1
00357b0c  00 10 83 15                                      strne r1, [r3]
00357b10  10 e0 94 e5                                      ldr lr, [r4, #0x10]
00357b14  0c 50 94 e5                                      ldr r5, [r4, #0xc]
00357b18  0c 40 8d e2                                      add r4, sp, #0xc
00357b1c  06 10 a0 e1                                      mov r1, r6
00357b20  04 30 a0 e1                                      mov r3, r4
00357b24  18 50 8d e5                                      str r5, [sp, #0x18]
00357b28  1c e0 8d e5                                      str lr, [sp, #0x1c]
00357b2c  00 c0 8d e5                                      str ip, [sp]
00357b30  82 ff ff eb                                      bl #0x357940
00357b34  08 00 84 e2                                      add r0, r4, #8
00357b38  bf e8 ff eb                                      bl #0x351e3c
00357b3c  d5 ff ff ea                                      b #0x357a98
00357b40  14 90 a0 e3                                      mov sb, #0x14
00357b44  99 02 09 e0                                      mul sb, sb, r2
00357b48  49 21 a0 e1                                      asr r2, sb, #2
00357b4c  03 70 69 e0                                      rsb r7, sb, r3
00357b50  82 50 82 e0                                      add r5, r2, r2, lsl #1
00357b54  05 52 85 e0                                      add r5, r5, r5, lsl #4
00357b58  05 54 85 e0                                      add r5, r5, r5, lsl #8
00357b5c  05 58 85 e0                                      add r5, r5, r5, lsl #16
00357b60  05 51 82 e0                                      add r5, r2, r5, lsl #2
00357b64  00 00 55 e3                                      cmp r5, #0
00357b68  03 10 a0 d1                                      movle r1, r3
00357b6c  15 00 00 da                                      ble #0x357bc8
00357b70  07 20 a0 e1                                      mov r2, r7
00357b74  03 10 a0 e1                                      mov r1, r3
00357b78  00 00 00 ea                                      b #0x357b80
00357b7c  14 10 81 e2                                      add r1, r1, #0x14
00357b80  00 00 92 e5                                      ldr r0, [r2]
00357b84  00 00 81 e5                                      str r0, [r1]
00357b88  04 00 92 e5                                      ldr r0, [r2, #4]
00357b8c  04 00 81 e5                                      str r0, [r1, #4]
00357b90  08 00 92 e5                                      ldr r0, [r2, #8]
00357b94  00 00 50 e3                                      cmp r0, #0
00357b98  08 00 81 e5                                      str r0, [r1, #8]
00357b9c  00 80 90 15                                      ldrne r8, [r0]
00357ba0  01 80 88 12                                      addne r8, r8, #1
00357ba4  00 80 80 15                                      strne r8, [r0]
00357ba8  0c 00 92 e5                                      ldr r0, [r2, #0xc]
00357bac  01 50 55 e2                                      subs r5, r5, #1
00357bb0  0c 00 81 e5                                      str r0, [r1, #0xc]
00357bb4  10 00 92 e5                                      ldr r0, [r2, #0x10]
00357bb8  14 20 82 e2                                      add r2, r2, #0x14
00357bbc  10 00 81 e5                                      str r0, [r1, #0x10]
00357bc0  ed ff ff 1a                                      bne #0x357b7c
00357bc4  04 10 9c e5                                      ldr r1, [ip, #4]
00357bc8  07 20 66 e0                                      rsb r2, r6, r7
00357bcc  42 21 a0 e1                                      asr r2, r2, #2
00357bd0  09 10 81 e0                                      add r1, r1, sb
00357bd4  82 80 82 e0                                      add r8, r2, r2, lsl #1
00357bd8  04 10 8c e5                                      str r1, [ip, #4]
00357bdc  08 82 88 e0                                      add r8, r8, r8, lsl #4
00357be0  08 84 88 e0                                      add r8, r8, r8, lsl #8
00357be4  08 88 88 e0                                      add r8, r8, r8, lsl #16
00357be8  08 81 82 e0                                      add r8, r2, r8, lsl #2
00357bec  00 00 58 e3                                      cmp r8, #0
00357bf0  19 00 00 da                                      ble #0x357c5c
00357bf4  03 50 a0 e1                                      mov r5, r3
00357bf8  28 a0 8d e2                                      add sl, sp, #0x28
00357bfc  14 30 17 e5                                      ldr r3, [r7, #-0x14]
00357c00  0a 00 a0 e1                                      mov r0, sl
00357c04  14 30 05 e5                                      str r3, [r5, #-0x14]
00357c08  10 30 17 e5                                      ldr r3, [r7, #-0x10]
00357c0c  10 30 05 e5                                      str r3, [r5, #-0x10]
00357c10  0c 30 17 e5                                      ldr r3, [r7, #-0xc]
00357c14  28 30 8d e5                                      str r3, [sp, #0x28]
00357c18  00 00 53 e3                                      cmp r3, #0
00357c1c  00 20 93 15                                      ldrne r2, [r3]
00357c20  01 20 82 12                                      addne r2, r2, #1
00357c24  00 20 83 15                                      strne r2, [r3]
00357c28  28 30 9d 15                                      ldrne r3, [sp, #0x28]
00357c2c  0c 20 15 e5                                      ldr r2, [r5, #-0xc]
00357c30  28 20 8d e5                                      str r2, [sp, #0x28]
00357c34  0c 30 05 e5                                      str r3, [r5, #-0xc]
00357c38  7f e8 ff eb                                      bl #0x351e3c
00357c3c  08 30 17 e5                                      ldr r3, [r7, #-8]
00357c40  01 80 58 e2                                      subs r8, r8, #1
00357c44  08 30 05 e5                                      str r3, [r5, #-8]
00357c48  04 30 17 e5                                      ldr r3, [r7, #-4]
00357c4c  14 70 47 e2                                      sub r7, r7, #0x14
00357c50  04 30 05 e5                                      str r3, [r5, #-4]
00357c54  14 50 45 e2                                      sub r5, r5, #0x14
00357c58  e7 ff ff 1a                                      bne #0x357bfc
00357c5c  49 91 a0 e1                                      asr sb, sb, #2
00357c60  89 50 89 e0                                      add r5, sb, sb, lsl #1
00357c64  05 52 85 e0                                      add r5, r5, r5, lsl #4
00357c68  05 54 85 e0                                      add r5, r5, r5, lsl #8
00357c6c  05 58 85 e0                                      add r5, r5, r5, lsl #16
00357c70  05 51 89 e0                                      add r5, sb, r5, lsl #2
00357c74  00 00 55 e3                                      cmp r5, #0
00357c78  86 ff ff da                                      ble #0x357a98
00357c7c  24 70 8d e2                                      add r7, sp, #0x24
00357c80  00 00 00 ea                                      b #0x357c88
00357c84  14 60 86 e2                                      add r6, r6, #0x14
00357c88  00 30 94 e5                                      ldr r3, [r4]
00357c8c  07 00 a0 e1                                      mov r0, r7
00357c90  00 30 86 e5                                      str r3, [r6]
00357c94  04 30 94 e5                                      ldr r3, [r4, #4]
00357c98  04 30 86 e5                                      str r3, [r6, #4]
00357c9c  08 20 94 e5                                      ldr r2, [r4, #8]
00357ca0  24 20 8d e5                                      str r2, [sp, #0x24]
00357ca4  00 00 52 e3                                      cmp r2, #0
00357ca8  00 30 92 15                                      ldrne r3, [r2]
00357cac  01 30 83 12                                      addne r3, r3, #1
00357cb0  00 30 82 15                                      strne r3, [r2]
00357cb4  24 20 9d 15                                      ldrne r2, [sp, #0x24]
00357cb8  08 30 96 e5                                      ldr r3, [r6, #8]
00357cbc  08 20 86 e5                                      str r2, [r6, #8]
00357cc0  24 30 8d e5                                      str r3, [sp, #0x24]
00357cc4  5c e8 ff eb                                      bl #0x351e3c
00357cc8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00357ccc  01 50 55 e2                                      subs r5, r5, #1
00357cd0  0c 30 86 e5                                      str r3, [r6, #0xc]
00357cd4  10 30 94 e5                                      ldr r3, [r4, #0x10]
00357cd8  10 30 86 e5                                      str r3, [r6, #0x10]
00357cdc  e8 ff ff 1a                                      bne #0x357c84
00357ce0  6c ff ff ea                                      b #0x357a98
00357ce4  14 30 a0 e3                                      mov r3, #0x14
00357ce8  93 25 22 e0                                      mla r2, r3, r5, r2
00357cec  04 20 8c e5                                      str r2, [ip, #4]
00357cf0  68 ff ff ea                                      b #0x357a98

; FUNCTION 0x00357cf4, declared_size=108, range_size=108, mode=arm
; class-group: std::vector<glitch::scene::CSceneManager::STransparentNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene13CSceneManager21STransparentNodeEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPS3_jRKS3_
; demangled: std::vector<glitch::scene::CSceneManager::STransparentNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(glitch::scene::CSceneManager::STransparentNodeEntry*, unsigned int, glitch::scene::CSceneManager::STransparentNodeEntry const&)
; decoder-mode: arm
00357cf4  30 40 2d e9                                      push {r4, r5, lr}
00357cf8  00 40 52 e2                                      subs r4, r2, #0
00357cfc  14 d0 4d e2                                      sub sp, sp, #0x14
00357d00  03 50 a0 e1                                      mov r5, r3
00357d04  0f 00 00 0a                                      beq #0x357d48
00357d08  04 e0 90 e5                                      ldr lr, [r0, #4]
00357d0c  08 c0 90 e5                                      ldr ip, [r0, #8]
00357d10  0c c0 6e e0                                      rsb ip, lr, ip
00357d14  4c c1 a0 e1                                      asr ip, ip, #2
00357d18  8c e0 8c e0                                      add lr, ip, ip, lsl #1
00357d1c  0e e2 8e e0                                      add lr, lr, lr, lsl #4
00357d20  0e e4 8e e0                                      add lr, lr, lr, lsl #8
00357d24  0e e8 8e e0                                      add lr, lr, lr, lsl #16
00357d28  0e c1 8c e0                                      add ip, ip, lr, lsl #2
00357d2c  0c 00 54 e1                                      cmp r4, ip
00357d30  06 00 00 9a                                      bls #0x357d50
00357d34  03 20 a0 e1                                      mov r2, r3
00357d38  00 c0 a0 e3                                      mov ip, #0
00357d3c  08 30 8d e2                                      add r3, sp, #8
00357d40  10 10 8d e8                                      stm sp, {r4, ip}
00357d44  f4 fa ff eb                                      bl #0x35691c
00357d48  14 d0 8d e2                                      add sp, sp, #0x14
00357d4c  30 80 bd e8                                      pop {r4, r5, pc}
00357d50  0c c0 8d e2                                      add ip, sp, #0xc
00357d54  00 c0 8d e5                                      str ip, [sp]
00357d58  f8 fe ff eb                                      bl #0x357940
00357d5c  f9 ff ff ea                                      b #0x357d48

; FUNCTION 0x00357d60, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<glitch::scene::CSceneManager::STransparentNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene13CSceneManager21STransparentNodeEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKS3_.clone.3
; demangled: std::vector<glitch::scene::CSceneManager::STransparentNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, glitch::scene::CSceneManager::STransparentNodeEntry const&) [clone .clone.3]
; decoder-mode: arm
00357d60  10 40 2d e9                                      push {r4, lr}
00357d64  00 c0 90 e5                                      ldr ip, [r0]
00357d68  04 20 90 e5                                      ldr r2, [r0, #4]
00357d6c  01 30 a0 e1                                      mov r3, r1
00357d70  08 d0 4d e2                                      sub sp, sp, #8
00357d74  02 10 6c e0                                      rsb r1, ip, r2
00357d78  41 11 a0 e1                                      asr r1, r1, #2
00357d7c  81 40 81 e0                                      add r4, r1, r1, lsl #1
00357d80  04 42 84 e0                                      add r4, r4, r4, lsl #4
00357d84  04 44 84 e0                                      add r4, r4, r4, lsl #8
00357d88  04 48 84 e0                                      add r4, r4, r4, lsl #16
00357d8c  04 41 91 e0                                      adds r4, r1, r4, lsl #2
00357d90  06 00 00 0a                                      beq #0x357db0
00357d94  0c 00 52 e1                                      cmp r2, ip
00357d98  02 00 00 0a                                      beq #0x357da8
00357d9c  0c 10 a0 e1                                      mov r1, ip
00357da0  04 30 8d e2                                      add r3, sp, #4
00357da4  ac fc ff eb                                      bl #0x35705c
00357da8  08 d0 8d e2                                      add sp, sp, #8
00357dac  10 80 bd e8                                      pop {r4, pc}
00357db0  02 10 a0 e1                                      mov r1, r2
00357db4  04 20 a0 e1                                      mov r2, r4
00357db8  cd ff ff eb                                      bl #0x357cf4
00357dbc  f9 ff ff ea                                      b #0x357da8

; FUNCTION 0x0058eb04, declared_size=108, range_size=108, mode=arm
; class-group: std::vector<glitch::scene::CSceneManager::STransparentNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene13CSceneManager21STransparentNodeEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::scene::CSceneManager::STransparentNodeEntry, glitch::core::SAllocator<glitch::scene::CSceneManager::STransparentNodeEntry, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
0058eb04  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0058eb08  04 40 90 e5                                      ldr r4, [r0, #4]
0058eb0c  00 60 90 e5                                      ldr r6, [r0]
0058eb10  00 70 a0 e1                                      mov r7, r0
0058eb14  06 00 54 e1                                      cmp r4, r6
0058eb18  0e 00 00 0a                                      beq #0x58eb58
0058eb1c  14 40 44 e2                                      sub r4, r4, #0x14
0058eb20  08 50 94 e5                                      ldr r5, [r4, #8]
0058eb24  00 00 55 e3                                      cmp r5, #0
0058eb28  08 00 00 0a                                      beq #0x58eb50
0058eb2c  00 30 95 e5                                      ldr r3, [r5]
0058eb30  01 30 43 e2                                      sub r3, r3, #1
0058eb34  00 00 53 e3                                      cmp r3, #0
0058eb38  00 30 85 e5                                      str r3, [r5]
0058eb3c  03 00 00 1a                                      bne #0x58eb50
0058eb40  05 00 a0 e1                                      mov r0, r5
0058eb44  0b f5 00 eb                                      bl #0x5cbf78
0058eb48  05 00 a0 e1                                      mov r0, r5
0058eb4c  d7 fd f5 eb                                      bl #0x30e2b0
0058eb50  04 00 56 e1                                      cmp r6, r4
0058eb54  f0 ff ff 1a                                      bne #0x58eb1c
0058eb58  00 00 97 e5                                      ldr r0, [r7]
0058eb5c  00 00 50 e3                                      cmp r0, #0
0058eb60  00 00 00 0a                                      beq #0x58eb68
0058eb64  39 06 f6 eb                                      bl #0x310450
0058eb68  07 00 a0 e1                                      mov r0, r7
0058eb6c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
