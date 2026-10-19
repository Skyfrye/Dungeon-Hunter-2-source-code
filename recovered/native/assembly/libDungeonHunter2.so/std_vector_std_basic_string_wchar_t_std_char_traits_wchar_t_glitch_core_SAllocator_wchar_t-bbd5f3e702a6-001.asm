; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00550930, declared_size=472, range_size=472, mode=arm
; class-group: std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorISbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS2_6memory13E_MEMORY_HINTE0EEEENS4_IS8_LS6_0EEEE22_M_insert_overflow_auxEPS8_RKS8_RKSt12__false_typejb.clone.8
; demangled: std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >*, std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> > const&, std::__false_type const&, unsigned int, bool) [clone .clone.8]
; decoder-mode: arm
00550930  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00550934  00 40 a0 e1                                      mov r4, r0
00550938  01 10 90 e8                                      ldm r0, {r0, ip}
0055093c  01 90 a0 e1                                      mov sb, r1
00550940  0c d0 4d e2                                      sub sp, sp, #0xc
00550944  0c 00 60 e0                                      rsb r0, r0, ip
00550948  c0 01 a0 e1                                      asr r0, r0, #3
0055094c  04 20 8d e5                                      str r2, [sp, #4]
00550950  80 11 a0 e1                                      lsl r1, r0, #3
00550954  01 10 60 e0                                      rsb r1, r0, r1
00550958  01 13 81 e0                                      add r1, r1, r1, lsl #6
0055095c  e3 38 03 e3                                      movw r3, #0x38e3
00550960  81 11 80 e0                                      add r1, r0, r1, lsl #3
00550964  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00550968  81 27 a0 e1                                      lsl r2, r1, #0xf
0055096c  02 10 61 e0                                      rsb r1, r1, r2
00550970  81 01 80 e0                                      add r0, r0, r1, lsl #3
00550974  01 00 50 e3                                      cmp r0, #1
00550978  00 20 80 20                                      addhs r2, r0, r0
0055097c  01 20 80 32                                      addlo r2, r0, #1
00550980  03 00 52 e1                                      cmp r2, r3
00550984  01 00 00 8a                                      bhi #0x550990
00550988  02 00 50 e1                                      cmp r0, r2
0055098c  5a 00 00 9a                                      bls #0x550afc
00550990  27 b0 e0 e3                                      mvn fp, #0x27
00550994  0b 00 a0 e1                                      mov r0, fp
00550998  00 10 a0 e3                                      mov r1, #0
0055099c  f1 fe f6 eb                                      bl #0x310568
005509a0  00 c0 94 e5                                      ldr ip, [r4]
005509a4  00 a0 a0 e1                                      mov sl, r0
005509a8  09 90 6c e0                                      rsb sb, ip, sb
005509ac  c9 31 a0 e1                                      asr r3, sb, #3
005509b0  83 21 a0 e1                                      lsl r2, r3, #3
005509b4  02 20 63 e0                                      rsb r2, r3, r2
005509b8  02 23 82 e0                                      add r2, r2, r2, lsl #6
005509bc  82 21 83 e0                                      add r2, r3, r2, lsl #3
005509c0  82 97 a0 e1                                      lsl sb, r2, #0xf
005509c4  09 90 62 e0                                      rsb sb, r2, sb
005509c8  89 91 83 e0                                      add sb, r3, sb, lsl #3
005509cc  00 00 59 e3                                      cmp sb, #0
005509d0  00 90 a0 d1                                      movle sb, r0
005509d4  2a 00 00 da                                      ble #0x550a84
005509d8  09 50 a0 e1                                      mov r5, sb
005509dc  00 e0 a0 e1                                      mov lr, r0
005509e0  00 70 a0 e3                                      mov r7, #0
005509e4  04 80 a0 e1                                      mov r8, r4
005509e8  09 00 00 ea                                      b #0x550a14
005509ec  44 30 8e e5                                      str r3, [lr, #0x44]
005509f0  40 30 9c e5                                      ldr r3, [ip, #0x40]
005509f4  01 50 55 e2                                      subs r5, r5, #1
005509f8  40 30 8e e5                                      str r3, [lr, #0x40]
005509fc  00 30 9c e5                                      ldr r3, [ip]
00550a00  00 30 8e e5                                      str r3, [lr]
00550a04  44 70 8c e5                                      str r7, [ip, #0x44]
00550a08  48 e0 8e e2                                      add lr, lr, #0x48
00550a0c  19 00 00 0a                                      beq #0x550a78
00550a10  48 c0 8c e2                                      add ip, ip, #0x48
00550a14  44 30 9c e5                                      ldr r3, [ip, #0x44]
00550a18  44 30 8e e5                                      str r3, [lr, #0x44]
00550a1c  44 30 9c e5                                      ldr r3, [ip, #0x44]
00550a20  0c 00 53 e1                                      cmp r3, ip
00550a24  f0 ff ff 1a                                      bne #0x5509ec
00550a28  0e 40 a0 e1                                      mov r4, lr
00550a2c  0c 60 a0 e1                                      mov r6, ip
00550a30  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
00550a34  0f 00 a4 e8                                      stm r4!, {r0, r1, r2, r3}
00550a38  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
00550a3c  0f 00 a4 e8                                      stm r4!, {r0, r1, r2, r3}
00550a40  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
00550a44  0f 00 a4 e8                                      stm r4!, {r0, r1, r2, r3}
00550a48  0f 00 96 e8                                      ldm r6, {r0, r1, r2, r3}
00550a4c  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
00550a50  40 20 9c e5                                      ldr r2, [ip, #0x40]
00550a54  44 30 9c e5                                      ldr r3, [ip, #0x44]
00550a58  01 50 55 e2                                      subs r5, r5, #1
00550a5c  44 e0 8e e5                                      str lr, [lr, #0x44]
00550a60  02 30 63 e0                                      rsb r3, r3, r2
00550a64  03 30 c3 e3                                      bic r3, r3, #3
00550a68  03 30 8e e0                                      add r3, lr, r3
00550a6c  40 30 8e e5                                      str r3, [lr, #0x40]
00550a70  48 e0 8e e2                                      add lr, lr, #0x48
00550a74  e5 ff ff 1a                                      bne #0x550a10
00550a78  48 30 a0 e3                                      mov r3, #0x48
00550a7c  93 a9 29 e0                                      mla sb, r3, sb, sl
00550a80  08 40 a0 e1                                      mov r4, r8
00550a84  40 90 89 e5                                      str sb, [sb, #0x40]
00550a88  44 90 89 e5                                      str sb, [sb, #0x44]
00550a8c  04 30 9d e5                                      ldr r3, [sp, #4]
00550a90  09 00 a0 e1                                      mov r0, sb
00550a94  48 90 89 e2                                      add sb, sb, #0x48
00550a98  40 20 93 e5                                      ldr r2, [r3, #0x40]
00550a9c  44 10 93 e5                                      ldr r1, [r3, #0x44]
00550aa0  e1 54 f7 eb                                      bl #0x325e2c
00550aa4  04 50 94 e5                                      ldr r5, [r4, #4]
00550aa8  00 60 94 e5                                      ldr r6, [r4]
00550aac  06 00 55 e1                                      cmp r5, r6
00550ab0  0a 00 00 0a                                      beq #0x550ae0
00550ab4  48 50 45 e2                                      sub r5, r5, #0x48
00550ab8  44 30 95 e5                                      ldr r3, [r5, #0x44]
00550abc  05 00 53 e1                                      cmp r3, r5
00550ac0  03 00 a0 e1                                      mov r0, r3
00550ac4  02 00 00 0a                                      beq #0x550ad4
00550ac8  00 00 53 e3                                      cmp r3, #0
00550acc  00 00 00 0a                                      beq #0x550ad4
00550ad0  5e fe f6 eb                                      bl #0x310450
00550ad4  05 00 56 e1                                      cmp r6, r5
00550ad8  f5 ff ff 1a                                      bne #0x550ab4
00550adc  00 60 94 e5                                      ldr r6, [r4]
00550ae0  06 00 a0 e1                                      mov r0, r6
00550ae4  0b b0 8a e0                                      add fp, sl, fp
00550ae8  58 fe f6 eb                                      bl #0x310450
00550aec  00 0a 84 e9                                      stmib r4, {sb, fp}
00550af0  00 a0 84 e5                                      str sl, [r4]
00550af4  0c d0 8d e2                                      add sp, sp, #0xc
00550af8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00550afc  48 b0 a0 e3                                      mov fp, #0x48
00550b00  9b 02 0b e0                                      mul fp, fp, r2
00550b04  a2 ff ff ea                                      b #0x550994

; FUNCTION 0x00550b08, declared_size=88, range_size=88, mode=arm
; class-group: std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorISbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS2_6memory13E_MEMORY_HINTE0EEEENS4_IS8_LS6_0EEEED1Ev
; demangled: std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
00550b08  70 40 2d e9                                      push {r4, r5, r6, lr}
00550b0c  04 40 90 e5                                      ldr r4, [r0, #4]
00550b10  00 50 90 e5                                      ldr r5, [r0]
00550b14  00 60 a0 e1                                      mov r6, r0
00550b18  05 00 54 e1                                      cmp r4, r5
00550b1c  09 00 00 0a                                      beq #0x550b48
00550b20  48 40 44 e2                                      sub r4, r4, #0x48
00550b24  44 30 94 e5                                      ldr r3, [r4, #0x44]
00550b28  04 00 53 e1                                      cmp r3, r4
00550b2c  03 00 a0 e1                                      mov r0, r3
00550b30  02 00 00 0a                                      beq #0x550b40
00550b34  00 00 53 e3                                      cmp r3, #0
00550b38  00 00 00 0a                                      beq #0x550b40
00550b3c  43 fe f6 eb                                      bl #0x310450
00550b40  04 00 55 e1                                      cmp r5, r4
00550b44  f5 ff ff 1a                                      bne #0x550b20
00550b48  00 00 96 e5                                      ldr r0, [r6]
00550b4c  00 00 50 e3                                      cmp r0, #0
00550b50  00 00 00 0a                                      beq #0x550b58
00550b54  3d fe f6 eb                                      bl #0x310450
00550b58  06 00 a0 e1                                      mov r0, r6
00550b5c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00550b60, declared_size=620, range_size=620, mode=arm
; class-group: std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorISbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS2_6memory13E_MEMORY_HINTE0EEEENS4_IS8_LS6_0EEEE8_M_eraseEPS8_SB_RKSt11__true_type
; demangled: std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >*, std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >*, std::__true_type const&)
; decoder-mode: arm
00550b60  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00550b64  04 70 90 e5                                      ldr r7, [r0, #4]
00550b68  0c d0 4d e2                                      sub sp, sp, #0xc
00550b6c  00 b0 a0 e1                                      mov fp, r0
00550b70  07 30 52 e0                                      subs r3, r2, r7
00550b74  01 30 a0 13                                      movne r3, #1
00550b78  02 00 51 e1                                      cmp r1, r2
00550b7c  07 00 52 11                                      cmpne r2, r7
00550b80  02 60 a0 e1                                      mov r6, r2
00550b84  01 90 a0 e1                                      mov sb, r1
00550b88  04 30 8d e5                                      str r3, [sp, #4]
00550b8c  02 50 a0 01                                      moveq r5, r2
00550b90  01 40 a0 01                                      moveq r4, r1
00550b94  30 00 00 0a                                      beq #0x550c5c
00550b98  02 50 a0 e1                                      mov r5, r2
00550b9c  01 40 a0 e1                                      mov r4, r1
00550ba0  00 80 a0 e3                                      mov r8, #0
00550ba4  0a 00 00 ea                                      b #0x550bd4
00550ba8  44 30 84 e5                                      str r3, [r4, #0x44]
00550bac  40 30 95 e5                                      ldr r3, [r5, #0x40]
00550bb0  40 30 84 e5                                      str r3, [r4, #0x40]
00550bb4  00 30 95 e5                                      ldr r3, [r5]
00550bb8  00 30 84 e5                                      str r3, [r4]
00550bbc  44 80 85 e5                                      str r8, [r5, #0x44]
00550bc0  48 40 84 e2                                      add r4, r4, #0x48
00550bc4  48 50 85 e2                                      add r5, r5, #0x48
00550bc8  07 00 55 e1                                      cmp r5, r7
00550bcc  04 00 56 11                                      cmpne r6, r4
00550bd0  21 00 00 0a                                      beq #0x550c5c
00550bd4  44 30 94 e5                                      ldr r3, [r4, #0x44]
00550bd8  04 00 53 e1                                      cmp r3, r4
00550bdc  03 00 a0 e1                                      mov r0, r3
00550be0  02 00 00 0a                                      beq #0x550bf0
00550be4  00 00 53 e3                                      cmp r3, #0
00550be8  00 00 00 0a                                      beq #0x550bf0
00550bec  17 fe f6 eb                                      bl #0x310450
00550bf0  44 30 95 e5                                      ldr r3, [r5, #0x44]
00550bf4  44 30 84 e5                                      str r3, [r4, #0x44]
00550bf8  44 30 95 e5                                      ldr r3, [r5, #0x44]
00550bfc  05 00 53 e1                                      cmp r3, r5
00550c00  e8 ff ff 1a                                      bne #0x550ba8
00550c04  05 a0 a0 e1                                      mov sl, r5
00550c08  04 c0 a0 e1                                      mov ip, r4
00550c0c  0f 00 ba e8                                      ldm sl!, {r0, r1, r2, r3}
00550c10  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00550c14  0f 00 ba e8                                      ldm sl!, {r0, r1, r2, r3}
00550c18  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00550c1c  0f 00 ba e8                                      ldm sl!, {r0, r1, r2, r3}
00550c20  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00550c24  0f 00 9a e8                                      ldm sl, {r0, r1, r2, r3}
00550c28  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00550c2c  40 20 95 e5                                      ldr r2, [r5, #0x40]
00550c30  44 30 95 e5                                      ldr r3, [r5, #0x44]
00550c34  44 40 84 e5                                      str r4, [r4, #0x44]
00550c38  48 50 85 e2                                      add r5, r5, #0x48
00550c3c  02 30 63 e0                                      rsb r3, r3, r2
00550c40  03 30 c3 e3                                      bic r3, r3, #3
00550c44  03 30 84 e0                                      add r3, r4, r3
00550c48  40 30 84 e5                                      str r3, [r4, #0x40]
00550c4c  48 40 84 e2                                      add r4, r4, #0x48
00550c50  07 00 55 e1                                      cmp r5, r7
00550c54  04 00 56 11                                      cmpne r6, r4
00550c58  dd ff ff 1a                                      bne #0x550bd4
00550c5c  06 00 54 e1                                      cmp r4, r6
00550c60  04 50 a0 11                                      movne r5, r4
00550c64  1b 00 00 0a                                      beq #0x550cd8
00550c68  44 30 95 e5                                      ldr r3, [r5, #0x44]
00550c6c  05 00 53 e1                                      cmp r3, r5
00550c70  03 00 a0 e1                                      mov r0, r3
00550c74  48 50 85 e2                                      add r5, r5, #0x48
00550c78  02 00 00 0a                                      beq #0x550c88
00550c7c  00 00 53 e3                                      cmp r3, #0
00550c80  00 00 00 0a                                      beq #0x550c88
00550c84  f1 fd f6 eb                                      bl #0x310450
00550c88  05 00 56 e1                                      cmp r6, r5
00550c8c  f5 ff ff 1a                                      bne #0x550c68
00550c90  04 30 9d e5                                      ldr r3, [sp, #4]
00550c94  00 00 53 e3                                      cmp r3, #0
00550c98  09 00 00 0a                                      beq #0x550cc4
00550c9c  44 30 96 e5                                      ldr r3, [r6, #0x44]
00550ca0  06 00 53 e1                                      cmp r3, r6
00550ca4  03 00 a0 e1                                      mov r0, r3
00550ca8  48 60 86 e2                                      add r6, r6, #0x48
00550cac  02 00 00 0a                                      beq #0x550cbc
00550cb0  00 00 53 e3                                      cmp r3, #0
00550cb4  00 00 00 0a                                      beq #0x550cbc
00550cb8  e4 fd f6 eb                                      bl #0x310450
00550cbc  06 00 57 e1                                      cmp r7, r6
00550cc0  f5 ff ff 1a                                      bne #0x550c9c
00550cc4  04 60 a0 e1                                      mov r6, r4
00550cc8  04 60 8b e5                                      str r6, [fp, #4]
00550ccc  09 00 a0 e1                                      mov r0, sb
00550cd0  0c d0 8d e2                                      add sp, sp, #0xc
00550cd4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00550cd8  05 00 57 e1                                      cmp r7, r5
00550cdc  00 60 a0 13                                      movne r6, #0
00550ce0  0a 00 00 1a                                      bne #0x550d10
00550ce4  2a 00 00 ea                                      b #0x550d94
00550ce8  44 30 84 e5                                      str r3, [r4, #0x44]
00550cec  40 30 95 e5                                      ldr r3, [r5, #0x40]
00550cf0  40 30 84 e5                                      str r3, [r4, #0x40]
00550cf4  00 30 95 e5                                      ldr r3, [r5]
00550cf8  00 30 84 e5                                      str r3, [r4]
00550cfc  44 60 85 e5                                      str r6, [r5, #0x44]
00550d00  48 50 85 e2                                      add r5, r5, #0x48
00550d04  07 00 55 e1                                      cmp r5, r7
00550d08  48 40 84 e2                                      add r4, r4, #0x48
00550d0c  20 00 00 0a                                      beq #0x550d94
00550d10  44 30 94 e5                                      ldr r3, [r4, #0x44]
00550d14  04 00 53 e1                                      cmp r3, r4
00550d18  03 00 a0 e1                                      mov r0, r3
00550d1c  02 00 00 0a                                      beq #0x550d2c
00550d20  00 00 53 e3                                      cmp r3, #0
00550d24  00 00 00 0a                                      beq #0x550d2c
00550d28  c8 fd f6 eb                                      bl #0x310450
00550d2c  44 30 95 e5                                      ldr r3, [r5, #0x44]
00550d30  44 30 84 e5                                      str r3, [r4, #0x44]
00550d34  44 30 95 e5                                      ldr r3, [r5, #0x44]
00550d38  05 00 53 e1                                      cmp r3, r5
00550d3c  e9 ff ff 1a                                      bne #0x550ce8
00550d40  05 80 a0 e1                                      mov r8, r5
00550d44  04 c0 a0 e1                                      mov ip, r4
00550d48  0f 00 b8 e8                                      ldm r8!, {r0, r1, r2, r3}
00550d4c  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00550d50  0f 00 b8 e8                                      ldm r8!, {r0, r1, r2, r3}
00550d54  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00550d58  0f 00 b8 e8                                      ldm r8!, {r0, r1, r2, r3}
00550d5c  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00550d60  0f 00 98 e8                                      ldm r8, {r0, r1, r2, r3}
00550d64  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00550d68  40 20 95 e5                                      ldr r2, [r5, #0x40]
00550d6c  44 30 95 e5                                      ldr r3, [r5, #0x44]
00550d70  48 50 85 e2                                      add r5, r5, #0x48
00550d74  07 00 55 e1                                      cmp r5, r7
00550d78  02 30 63 e0                                      rsb r3, r3, r2
00550d7c  03 30 c3 e3                                      bic r3, r3, #3
00550d80  03 30 84 e0                                      add r3, r4, r3
00550d84  44 40 84 e5                                      str r4, [r4, #0x44]
00550d88  40 30 84 e5                                      str r3, [r4, #0x40]
00550d8c  48 40 84 e2                                      add r4, r4, #0x48
00550d90  de ff ff 1a                                      bne #0x550d10
00550d94  05 00 54 e1                                      cmp r4, r5
00550d98  04 60 a0 e1                                      mov r6, r4
00550d9c  c9 ff ff 0a                                      beq #0x550cc8
00550da0  44 30 94 e5                                      ldr r3, [r4, #0x44]
00550da4  04 00 53 e1                                      cmp r3, r4
00550da8  03 00 a0 e1                                      mov r0, r3
00550dac  48 40 84 e2                                      add r4, r4, #0x48
00550db0  02 00 00 0a                                      beq #0x550dc0
00550db4  00 00 53 e3                                      cmp r3, #0
00550db8  00 00 00 0a                                      beq #0x550dc0
00550dbc  a3 fd f6 eb                                      bl #0x310450
00550dc0  05 00 54 e1                                      cmp r4, r5
00550dc4  f5 ff ff 1a                                      bne #0x550da0
00550dc8  be ff ff ea                                      b #0x550cc8

; FUNCTION 0x00551148, declared_size=188, range_size=188, mode=arm
; class-group: std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorISbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS2_6memory13E_MEMORY_HINTE0EEEENS4_IS8_LS6_0EEEE9push_backERKS8_
; demangled: std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::push_back(std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
00551148  70 40 2d e9                                      push {r4, r5, r6, lr}
0055114c  04 40 90 e5                                      ldr r4, [r0, #4]
00551150  08 20 90 e5                                      ldr r2, [r0, #8]
00551154  48 d0 4d e2                                      sub sp, sp, #0x48
00551158  00 50 a0 e1                                      mov r5, r0
0055115c  02 00 54 e1                                      cmp r4, r2
00551160  01 30 a0 e1                                      mov r3, r1
00551164  0a 00 00 0a                                      beq #0x551194
00551168  40 40 84 e5                                      str r4, [r4, #0x40]
0055116c  44 40 84 e5                                      str r4, [r4, #0x44]
00551170  40 20 91 e5                                      ldr r2, [r1, #0x40]
00551174  04 00 a0 e1                                      mov r0, r4
00551178  44 10 91 e5                                      ldr r1, [r1, #0x44]
0055117c  2a 53 f7 eb                                      bl #0x325e2c
00551180  04 30 95 e5                                      ldr r3, [r5, #4]
00551184  48 30 83 e2                                      add r3, r3, #0x48
00551188  04 30 85 e5                                      str r3, [r5, #4]
0055118c  48 d0 8d e2                                      add sp, sp, #0x48
00551190  70 80 bd e8                                      pop {r4, r5, r6, pc}
00551194  00 20 90 e5                                      ldr r2, [r0]
00551198  02 00 51 e1                                      cmp r1, r2
0055119c  13 00 00 3a                                      blo #0x5511f0
005511a0  01 00 54 e1                                      cmp r4, r1
005511a4  11 00 00 9a                                      bls #0x5511f0
005511a8  40 20 91 e5                                      ldr r2, [r1, #0x40]
005511ac  0d 00 a0 e1                                      mov r0, sp
005511b0  44 10 91 e5                                      ldr r1, [r1, #0x44]
005511b4  40 d0 8d e5                                      str sp, [sp, #0x40]
005511b8  44 d0 8d e5                                      str sp, [sp, #0x44]
005511bc  1a 53 f7 eb                                      bl #0x325e2c
005511c0  05 00 a0 e1                                      mov r0, r5
005511c4  04 10 a0 e1                                      mov r1, r4
005511c8  0d 20 a0 e1                                      mov r2, sp
005511cc  d7 fd ff eb                                      bl #0x550930
005511d0  44 00 9d e5                                      ldr r0, [sp, #0x44]
005511d4  0d 60 a0 e1                                      mov r6, sp
005511d8  06 00 50 e1                                      cmp r0, r6
005511dc  ea ff ff 0a                                      beq #0x55118c
005511e0  00 00 50 e3                                      cmp r0, #0
005511e4  e8 ff ff 0a                                      beq #0x55118c
005511e8  98 fc f6 eb                                      bl #0x310450
005511ec  e6 ff ff ea                                      b #0x55118c
005511f0  05 00 a0 e1                                      mov r0, r5
005511f4  04 10 a0 e1                                      mov r1, r4
005511f8  03 20 a0 e1                                      mov r2, r3
005511fc  cb fd ff eb                                      bl #0x550930
00551200  e1 ff ff ea                                      b #0x55118c

; FUNCTION 0x00562e7c, declared_size=148, range_size=148, mode=arm
; class-group: std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorISbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS2_6memory13E_MEMORY_HINTE0EEEENS4_IS8_LS6_0EEEEC1ERKSA_
; demangled: std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::vector(std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
00562e7c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00562e80  88 00 91 e8                                      ldm r1, {r3, r7}
00562e84  00 50 a0 e3                                      mov r5, #0
00562e88  00 40 a0 e1                                      mov r4, r0
00562e8c  07 30 63 e0                                      rsb r3, r3, r7
00562e90  c3 31 a0 e1                                      asr r3, r3, #3
00562e94  14 d0 4d e2                                      sub sp, sp, #0x14
00562e98  83 21 a0 e1                                      lsl r2, r3, #3
00562e9c  02 20 63 e0                                      rsb r2, r3, r2
00562ea0  02 23 82 e0                                      add r2, r2, r2, lsl #6
00562ea4  01 60 a0 e1                                      mov r6, r1
00562ea8  82 21 83 e0                                      add r2, r3, r2, lsl #3
00562eac  00 50 80 e5                                      str r5, [r0]
00562eb0  82 77 a0 e1                                      lsl r7, r2, #0xf
00562eb4  07 20 62 e0                                      rsb r2, r2, r7
00562eb8  82 31 83 e0                                      add r3, r3, r2, lsl #3
00562ebc  48 70 a0 e3                                      mov r7, #0x48
00562ec0  97 03 07 e0                                      mul r7, r7, r3
00562ec4  04 50 80 e5                                      str r5, [r0, #4]
00562ec8  08 50 80 e5                                      str r5, [r0, #8]
00562ecc  05 10 a0 e1                                      mov r1, r5
00562ed0  07 00 a0 e1                                      mov r0, r7
00562ed4  a3 b5 f6 eb                                      bl #0x310568
00562ed8  07 70 80 e0                                      add r7, r0, r7
00562edc  00 00 84 e5                                      str r0, [r4]
00562ee0  81 00 84 e9                                      stmib r4, {r0, r7}
00562ee4  00 30 96 e5                                      ldr r3, [r6]
00562ee8  00 20 a0 e1                                      mov r2, r0
00562eec  04 10 96 e5                                      ldr r1, [r6, #4]
00562ef0  03 00 a0 e1                                      mov r0, r3
00562ef4  0c 30 8d e2                                      add r3, sp, #0xc
00562ef8  00 50 8d e5                                      str r5, [sp]
00562efc  be ff ff eb                                      bl #0x562dfc
00562f00  04 00 84 e5                                      str r0, [r4, #4]
00562f04  04 00 a0 e1                                      mov r0, r4
00562f08  14 d0 8d e2                                      add sp, sp, #0x14
00562f0c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x005630c0, declared_size=484, range_size=484, mode=arm
; class-group: std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorISbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS2_6memory13E_MEMORY_HINTE0EEEENS4_IS8_LS6_0EEEEaSERKSA_
; demangled: std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::operator=(std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
005630c0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005630c4  00 00 51 e1                                      cmp r1, r0
005630c8  1c d0 4d e2                                      sub sp, sp, #0x1c
005630cc  01 50 a0 e1                                      mov r5, r1
005630d0  00 40 a0 e1                                      mov r4, r0
005630d4  3b 00 00 0a                                      beq #0x5631c8
005630d8  04 30 91 e5                                      ldr r3, [r1, #4]
005630dc  00 c0 91 e5                                      ldr ip, [r1]
005630e0  00 20 90 e5                                      ldr r2, [r0]
005630e4  08 10 90 e5                                      ldr r1, [r0, #8]
005630e8  03 e0 6c e0                                      rsb lr, ip, r3
005630ec  ce e1 a0 e1                                      asr lr, lr, #3
005630f0  01 10 62 e0                                      rsb r1, r2, r1
005630f4  c1 11 a0 e1                                      asr r1, r1, #3
005630f8  8e 61 a0 e1                                      lsl r6, lr, #3
005630fc  81 71 a0 e1                                      lsl r7, r1, #3
00563100  07 70 61 e0                                      rsb r7, r1, r7
00563104  06 60 6e e0                                      rsb r6, lr, r6
00563108  06 63 86 e0                                      add r6, r6, r6, lsl #6
0056310c  07 73 87 e0                                      add r7, r7, r7, lsl #6
00563110  86 61 8e e0                                      add r6, lr, r6, lsl #3
00563114  87 71 81 e0                                      add r7, r1, r7, lsl #3
00563118  86 a7 a0 e1                                      lsl sl, r6, #0xf
0056311c  87 87 a0 e1                                      lsl r8, r7, #0xf
00563120  0a 60 66 e0                                      rsb r6, r6, sl
00563124  08 70 67 e0                                      rsb r7, r7, r8
00563128  86 61 8e e0                                      add r6, lr, r6, lsl #3
0056312c  87 11 81 e0                                      add r1, r1, r7, lsl #3
00563130  01 00 56 e1                                      cmp r6, r1
00563134  3e 00 00 8a                                      bhi #0x563234
00563138  04 00 90 e5                                      ldr r0, [r0, #4]
0056313c  00 00 62 e0                                      rsb r0, r2, r0
00563140  c0 01 a0 e1                                      asr r0, r0, #3
00563144  80 11 a0 e1                                      lsl r1, r0, #3
00563148  01 10 60 e0                                      rsb r1, r0, r1
0056314c  01 13 81 e0                                      add r1, r1, r1, lsl #6
00563150  81 11 80 e0                                      add r1, r0, r1, lsl #3
00563154  81 e7 a0 e1                                      lsl lr, r1, #0xf
00563158  0e 10 61 e0                                      rsb r1, r1, lr
0056315c  81 11 80 e0                                      add r1, r0, r1, lsl #3
00563160  01 00 56 e1                                      cmp r6, r1
00563164  1a 00 00 8a                                      bhi #0x5631d4
00563168  0c 00 a0 e1                                      mov r0, ip
0056316c  03 10 a0 e1                                      mov r1, r3
00563170  00 c0 a0 e3                                      mov ip, #0
00563174  14 30 8d e2                                      add r3, sp, #0x14
00563178  00 c0 8d e5                                      str ip, [sp]
0056317c  26 fb ff eb                                      bl #0x561e1c
00563180  04 70 94 e5                                      ldr r7, [r4, #4]
00563184  00 50 a0 e1                                      mov r5, r0
00563188  00 00 57 e1                                      cmp r7, r0
0056318c  09 00 00 0a                                      beq #0x5631b8
00563190  44 30 95 e5                                      ldr r3, [r5, #0x44]
00563194  05 00 53 e1                                      cmp r3, r5
00563198  03 00 a0 e1                                      mov r0, r3
0056319c  48 50 85 e2                                      add r5, r5, #0x48
005631a0  02 00 00 0a                                      beq #0x5631b0
005631a4  00 00 53 e3                                      cmp r3, #0
005631a8  00 00 00 0a                                      beq #0x5631b0
005631ac  a7 b4 f6 eb                                      bl #0x310450
005631b0  05 00 57 e1                                      cmp r7, r5
005631b4  f5 ff ff 1a                                      bne #0x563190
005631b8  00 80 94 e5                                      ldr r8, [r4]
005631bc  48 30 a0 e3                                      mov r3, #0x48
005631c0  93 86 26 e0                                      mla r6, r3, r6, r8
005631c4  04 60 84 e5                                      str r6, [r4, #4]
005631c8  04 00 a0 e1                                      mov r0, r4
005631cc  1c d0 8d e2                                      add sp, sp, #0x1c
005631d0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
005631d4  48 70 a0 e3                                      mov r7, #0x48
005631d8  97 c1 21 e0                                      mla r1, r7, r1, ip
005631dc  00 80 a0 e3                                      mov r8, #0
005631e0  10 30 8d e2                                      add r3, sp, #0x10
005631e4  0c 00 a0 e1                                      mov r0, ip
005631e8  00 80 8d e5                                      str r8, [sp]
005631ec  0a fb ff eb                                      bl #0x561e1c
005631f0  04 20 94 e5                                      ldr r2, [r4, #4]
005631f4  00 c0 94 e5                                      ldr ip, [r4]
005631f8  03 00 95 e8                                      ldm r5, {r0, r1}
005631fc  02 c0 6c e0                                      rsb ip, ip, r2
00563200  cc c1 a0 e1                                      asr ip, ip, #3
00563204  0c 30 8d e2                                      add r3, sp, #0xc
00563208  8c e1 a0 e1                                      lsl lr, ip, #3
0056320c  0e e0 6c e0                                      rsb lr, ip, lr
00563210  0e e3 8e e0                                      add lr, lr, lr, lsl #6
00563214  00 80 8d e5                                      str r8, [sp]
00563218  8e e1 8c e0                                      add lr, ip, lr, lsl #3
0056321c  8e 57 a0 e1                                      lsl r5, lr, #0xf
00563220  05 e0 6e e0                                      rsb lr, lr, r5
00563224  8e c1 8c e0                                      add ip, ip, lr, lsl #3
00563228  97 0c 20 e0                                      mla r0, r7, ip, r0
0056322c  f2 fe ff eb                                      bl #0x562dfc
00563230  e0 ff ff ea                                      b #0x5631b8
00563234  18 10 8d e2                                      add r1, sp, #0x18
00563238  10 60 21 e5                                      str r6, [r1, #-0x10]!
0056323c  0c 20 a0 e1                                      mov r2, ip
00563240  38 ff ff eb                                      bl #0x562f28
00563244  04 50 94 e5                                      ldr r5, [r4, #4]
00563248  00 70 94 e5                                      ldr r7, [r4]
0056324c  00 80 a0 e1                                      mov r8, r0
00563250  07 00 55 e1                                      cmp r5, r7
00563254  0a 00 00 0a                                      beq #0x563284
00563258  48 50 45 e2                                      sub r5, r5, #0x48
0056325c  44 30 95 e5                                      ldr r3, [r5, #0x44]
00563260  05 00 53 e1                                      cmp r3, r5
00563264  03 00 a0 e1                                      mov r0, r3
00563268  02 00 00 0a                                      beq #0x563278
0056326c  00 00 53 e3                                      cmp r3, #0
00563270  00 00 00 0a                                      beq #0x563278
00563274  75 b4 f6 eb                                      bl #0x310450
00563278  05 00 57 e1                                      cmp r7, r5
0056327c  f5 ff ff 1a                                      bne #0x563258
00563280  00 50 94 e5                                      ldr r5, [r4]
00563284  05 00 a0 e1                                      mov r0, r5
00563288  70 b4 f6 eb                                      bl #0x310450
0056328c  08 30 9d e5                                      ldr r3, [sp, #8]
00563290  48 20 a0 e3                                      mov r2, #0x48
00563294  00 80 84 e5                                      str r8, [r4]
00563298  92 83 23 e0                                      mla r3, r2, r3, r8
0056329c  08 30 84 e5                                      str r3, [r4, #8]
005632a0  c5 ff ff ea                                      b #0x5631bc

; FUNCTION 0x00570f7c, declared_size=272, range_size=272, mode=arm
; class-group: std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorISbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS2_6memory13E_MEMORY_HINTE0EEEENS4_IS8_LS6_0EEEE22_M_insert_overflow_auxEPS8_RKS8_RKSt12__false_typejb.clone.2
; demangled: std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >*, std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> > const&, std::__false_type const&, unsigned int, bool) [clone .clone.2]
; decoder-mode: arm
00570f7c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00570f80  00 40 a0 e1                                      mov r4, r0
00570f84  01 10 90 e8                                      ldm r0, {r0, ip}
00570f88  01 80 a0 e1                                      mov r8, r1
00570f8c  02 60 a0 e1                                      mov r6, r2
00570f90  0c 00 60 e0                                      rsb r0, r0, ip
00570f94  c0 01 a0 e1                                      asr r0, r0, #3
00570f98  e3 38 03 e3                                      movw r3, #0x38e3
00570f9c  80 11 a0 e1                                      lsl r1, r0, #3
00570fa0  01 10 60 e0                                      rsb r1, r0, r1
00570fa4  01 13 81 e0                                      add r1, r1, r1, lsl #6
00570fa8  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00570fac  81 11 80 e0                                      add r1, r0, r1, lsl #3
00570fb0  14 d0 4d e2                                      sub sp, sp, #0x14
00570fb4  81 27 a0 e1                                      lsl r2, r1, #0xf
00570fb8  02 10 61 e0                                      rsb r1, r1, r2
00570fbc  81 01 80 e0                                      add r0, r0, r1, lsl #3
00570fc0  01 00 50 e3                                      cmp r0, #1
00570fc4  00 20 80 20                                      addhs r2, r0, r0
00570fc8  01 20 80 32                                      addlo r2, r0, #1
00570fcc  03 00 52 e1                                      cmp r2, r3
00570fd0  01 00 00 8a                                      bhi #0x570fdc
00570fd4  02 00 50 e1                                      cmp r0, r2
00570fd8  28 00 00 9a                                      bls #0x571080
00570fdc  27 70 e0 e3                                      mvn r7, #0x27
00570fe0  00 10 a0 e3                                      mov r1, #0
00570fe4  07 00 a0 e1                                      mov r0, r7
00570fe8  5e 7d f6 eb                                      bl #0x310568
00570fec  00 50 a0 e1                                      mov r5, r0
00570ff0  08 10 a0 e1                                      mov r1, r8
00570ff4  0c c0 8d e2                                      add ip, sp, #0xc
00570ff8  00 00 94 e5                                      ldr r0, [r4]
00570ffc  05 20 a0 e1                                      mov r2, r5
00571000  00 30 a0 e3                                      mov r3, #0
00571004  00 c0 8d e5                                      str ip, [sp]
00571008  70 ff ff eb                                      bl #0x570dd0
0057100c  00 80 a0 e1                                      mov r8, r0
00571010  40 00 88 e5                                      str r0, [r8, #0x40]
00571014  44 00 88 e5                                      str r0, [r8, #0x44]
00571018  40 20 96 e5                                      ldr r2, [r6, #0x40]
0057101c  44 10 96 e5                                      ldr r1, [r6, #0x44]
00571020  81 d3 f6 eb                                      bl #0x325e2c
00571024  04 60 94 e5                                      ldr r6, [r4, #4]
00571028  00 a0 94 e5                                      ldr sl, [r4]
0057102c  48 80 88 e2                                      add r8, r8, #0x48
00571030  0a 00 56 e1                                      cmp r6, sl
00571034  0a 00 00 0a                                      beq #0x571064
00571038  48 60 46 e2                                      sub r6, r6, #0x48
0057103c  44 30 96 e5                                      ldr r3, [r6, #0x44]
00571040  06 00 53 e1                                      cmp r3, r6
00571044  03 00 a0 e1                                      mov r0, r3
00571048  02 00 00 0a                                      beq #0x571058
0057104c  00 00 53 e3                                      cmp r3, #0
00571050  00 00 00 0a                                      beq #0x571058
00571054  fd 7c f6 eb                                      bl #0x310450
00571058  06 00 5a e1                                      cmp sl, r6
0057105c  f5 ff ff 1a                                      bne #0x571038
00571060  00 a0 94 e5                                      ldr sl, [r4]
00571064  0a 00 a0 e1                                      mov r0, sl
00571068  07 70 85 e0                                      add r7, r5, r7
0057106c  f7 7c f6 eb                                      bl #0x310450
00571070  08 70 84 e5                                      str r7, [r4, #8]
00571074  20 01 84 e8                                      stm r4, {r5, r8}
00571078  14 d0 8d e2                                      add sp, sp, #0x14
0057107c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00571080  48 70 a0 e3                                      mov r7, #0x48
00571084  97 02 07 e0                                      mul r7, r7, r2
00571088  d4 ff ff ea                                      b #0x570fe0

; FUNCTION 0x00571c50, declared_size=272, range_size=272, mode=arm
; class-group: std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorISbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS2_6memory13E_MEMORY_HINTE0EEEENS4_IS8_LS6_0EEEE22_M_insert_overflow_auxEPS8_RKS8_RKSt12__false_typejb.clone.3
; demangled: std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >*, std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> > const&, std::__false_type const&, unsigned int, bool) [clone .clone.3]
; decoder-mode: arm
00571c50  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00571c54  00 40 a0 e1                                      mov r4, r0
00571c58  01 10 90 e8                                      ldm r0, {r0, ip}
00571c5c  01 80 a0 e1                                      mov r8, r1
00571c60  02 60 a0 e1                                      mov r6, r2
00571c64  0c 00 60 e0                                      rsb r0, r0, ip
00571c68  c0 01 a0 e1                                      asr r0, r0, #3
00571c6c  e3 38 03 e3                                      movw r3, #0x38e3
00571c70  80 11 a0 e1                                      lsl r1, r0, #3
00571c74  01 10 60 e0                                      rsb r1, r0, r1
00571c78  01 13 81 e0                                      add r1, r1, r1, lsl #6
00571c7c  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00571c80  81 11 80 e0                                      add r1, r0, r1, lsl #3
00571c84  14 d0 4d e2                                      sub sp, sp, #0x14
00571c88  81 27 a0 e1                                      lsl r2, r1, #0xf
00571c8c  02 10 61 e0                                      rsb r1, r1, r2
00571c90  81 01 80 e0                                      add r0, r0, r1, lsl #3
00571c94  01 00 50 e3                                      cmp r0, #1
00571c98  00 20 80 20                                      addhs r2, r0, r0
00571c9c  01 20 80 32                                      addlo r2, r0, #1
00571ca0  03 00 52 e1                                      cmp r2, r3
00571ca4  01 00 00 8a                                      bhi #0x571cb0
00571ca8  02 00 50 e1                                      cmp r0, r2
00571cac  28 00 00 9a                                      bls #0x571d54
00571cb0  27 70 e0 e3                                      mvn r7, #0x27
00571cb4  00 10 a0 e3                                      mov r1, #0
00571cb8  07 00 a0 e1                                      mov r0, r7
00571cbc  29 7a f6 eb                                      bl #0x310568
00571cc0  00 50 a0 e1                                      mov r5, r0
00571cc4  08 10 a0 e1                                      mov r1, r8
00571cc8  0c c0 8d e2                                      add ip, sp, #0xc
00571ccc  00 00 94 e5                                      ldr r0, [r4]
00571cd0  05 20 a0 e1                                      mov r2, r5
00571cd4  00 30 a0 e3                                      mov r3, #0
00571cd8  00 c0 8d e5                                      str ip, [sp]
00571cdc  3b fc ff eb                                      bl #0x570dd0
00571ce0  00 80 a0 e1                                      mov r8, r0
00571ce4  40 00 88 e5                                      str r0, [r8, #0x40]
00571ce8  44 00 88 e5                                      str r0, [r8, #0x44]
00571cec  40 20 96 e5                                      ldr r2, [r6, #0x40]
00571cf0  44 10 96 e5                                      ldr r1, [r6, #0x44]
00571cf4  4c d0 f6 eb                                      bl #0x325e2c
00571cf8  04 60 94 e5                                      ldr r6, [r4, #4]
00571cfc  00 a0 94 e5                                      ldr sl, [r4]
00571d00  48 80 88 e2                                      add r8, r8, #0x48
00571d04  0a 00 56 e1                                      cmp r6, sl
00571d08  0a 00 00 0a                                      beq #0x571d38
00571d0c  48 60 46 e2                                      sub r6, r6, #0x48
00571d10  44 30 96 e5                                      ldr r3, [r6, #0x44]
00571d14  06 00 53 e1                                      cmp r3, r6
00571d18  03 00 a0 e1                                      mov r0, r3
00571d1c  02 00 00 0a                                      beq #0x571d2c
00571d20  00 00 53 e3                                      cmp r3, #0
00571d24  00 00 00 0a                                      beq #0x571d2c
00571d28  c8 79 f6 eb                                      bl #0x310450
00571d2c  06 00 5a e1                                      cmp sl, r6
00571d30  f5 ff ff 1a                                      bne #0x571d0c
00571d34  00 a0 94 e5                                      ldr sl, [r4]
00571d38  0a 00 a0 e1                                      mov r0, sl
00571d3c  07 70 85 e0                                      add r7, r5, r7
00571d40  c2 79 f6 eb                                      bl #0x310450
00571d44  08 70 84 e5                                      str r7, [r4, #8]
00571d48  20 01 84 e8                                      stm r4, {r5, r8}
00571d4c  14 d0 8d e2                                      add sp, sp, #0x14
00571d50  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00571d54  48 70 a0 e3                                      mov r7, #0x48
00571d58  97 02 07 e0                                      mul r7, r7, r2
00571d5c  d4 ff ff ea                                      b #0x571cb4

; FUNCTION 0x00573688, declared_size=260, range_size=260, mode=arm
; class-group: std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorISbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS2_6memory13E_MEMORY_HINTE0EEEENS4_IS8_LS6_0EEEE22_M_insert_overflow_auxEPS8_RKS8_RKSt12__false_typejb.clone.7
; demangled: std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >*, std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> > const&, std::__false_type const&, unsigned int, bool) [clone .clone.7]
; decoder-mode: arm
00573688  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0057368c  00 40 a0 e1                                      mov r4, r0
00573690  01 10 90 e8                                      ldm r0, {r0, ip}
00573694  01 80 a0 e1                                      mov r8, r1
00573698  02 70 a0 e1                                      mov r7, r2
0057369c  0c 00 60 e0                                      rsb r0, r0, ip
005736a0  c0 01 a0 e1                                      asr r0, r0, #3
005736a4  e3 38 03 e3                                      movw r3, #0x38e3
005736a8  80 11 a0 e1                                      lsl r1, r0, #3
005736ac  01 10 60 e0                                      rsb r1, r0, r1
005736b0  01 13 81 e0                                      add r1, r1, r1, lsl #6
005736b4  03 36 83 e1                                      orr r3, r3, r3, lsl #12
005736b8  81 11 80 e0                                      add r1, r0, r1, lsl #3
005736bc  14 d0 4d e2                                      sub sp, sp, #0x14
005736c0  81 27 a0 e1                                      lsl r2, r1, #0xf
005736c4  02 10 61 e0                                      rsb r1, r1, r2
005736c8  81 01 80 e0                                      add r0, r0, r1, lsl #3
005736cc  01 00 50 e3                                      cmp r0, #1
005736d0  00 20 80 20                                      addhs r2, r0, r0
005736d4  01 20 80 32                                      addlo r2, r0, #1
005736d8  03 00 52 e1                                      cmp r2, r3
005736dc  01 00 00 8a                                      bhi #0x5736e8
005736e0  02 00 50 e1                                      cmp r0, r2
005736e4  25 00 00 9a                                      bls #0x573780
005736e8  27 60 e0 e3                                      mvn r6, #0x27
005736ec  00 10 a0 e3                                      mov r1, #0
005736f0  06 00 a0 e1                                      mov r0, r6
005736f4  9b 73 f6 eb                                      bl #0x310568
005736f8  00 50 a0 e1                                      mov r5, r0
005736fc  08 10 a0 e1                                      mov r1, r8
00573700  0c c0 8d e2                                      add ip, sp, #0xc
00573704  00 00 94 e5                                      ldr r0, [r4]
00573708  05 20 a0 e1                                      mov r2, r5
0057370c  00 30 a0 e3                                      mov r3, #0
00573710  00 c0 8d e5                                      str ip, [sp]
00573714  ad f5 ff eb                                      bl #0x570dd0
00573718  07 10 a0 e1                                      mov r1, r7
0057371c  00 80 a0 e1                                      mov r8, r0
00573720  03 fd ff eb                                      bl #0x572b34
00573724  04 70 94 e5                                      ldr r7, [r4, #4]
00573728  00 a0 94 e5                                      ldr sl, [r4]
0057372c  48 80 88 e2                                      add r8, r8, #0x48
00573730  0a 00 57 e1                                      cmp r7, sl
00573734  0a 00 00 0a                                      beq #0x573764
00573738  48 70 47 e2                                      sub r7, r7, #0x48
0057373c  44 30 97 e5                                      ldr r3, [r7, #0x44]
00573740  07 00 53 e1                                      cmp r3, r7
00573744  03 00 a0 e1                                      mov r0, r3
00573748  02 00 00 0a                                      beq #0x573758
0057374c  00 00 53 e3                                      cmp r3, #0
00573750  00 00 00 0a                                      beq #0x573758
00573754  3d 73 f6 eb                                      bl #0x310450
00573758  07 00 5a e1                                      cmp sl, r7
0057375c  f5 ff ff 1a                                      bne #0x573738
00573760  00 a0 94 e5                                      ldr sl, [r4]
00573764  0a 00 a0 e1                                      mov r0, sl
00573768  06 60 85 e0                                      add r6, r5, r6
0057376c  37 73 f6 eb                                      bl #0x310450
00573770  08 60 84 e5                                      str r6, [r4, #8]
00573774  20 01 84 e8                                      stm r4, {r5, r8}
00573778  14 d0 8d e2                                      add sp, sp, #0x14
0057377c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00573780  48 60 a0 e3                                      mov r6, #0x48
00573784  96 02 06 e0                                      mul r6, r6, r2
00573788  d7 ff ff ea                                      b #0x5736ec

; FUNCTION 0x006ac588, declared_size=472, range_size=472, mode=arm
; class-group: std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorISbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS2_6memory13E_MEMORY_HINTE0EEEENS4_IS8_LS6_0EEEE22_M_insert_overflow_auxEPS8_RKS8_RKSt12__false_typejb.clone.9
; demangled: std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >*, std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> > const&, std::__false_type const&, unsigned int, bool) [clone .clone.9]
; decoder-mode: arm
006ac588  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006ac58c  00 40 a0 e1                                      mov r4, r0
006ac590  01 10 90 e8                                      ldm r0, {r0, ip}
006ac594  01 90 a0 e1                                      mov sb, r1
006ac598  0c d0 4d e2                                      sub sp, sp, #0xc
006ac59c  0c 00 60 e0                                      rsb r0, r0, ip
006ac5a0  c0 01 a0 e1                                      asr r0, r0, #3
006ac5a4  04 20 8d e5                                      str r2, [sp, #4]
006ac5a8  80 11 a0 e1                                      lsl r1, r0, #3
006ac5ac  01 10 60 e0                                      rsb r1, r0, r1
006ac5b0  01 13 81 e0                                      add r1, r1, r1, lsl #6
006ac5b4  e3 38 03 e3                                      movw r3, #0x38e3
006ac5b8  81 11 80 e0                                      add r1, r0, r1, lsl #3
006ac5bc  03 36 83 e1                                      orr r3, r3, r3, lsl #12
006ac5c0  81 27 a0 e1                                      lsl r2, r1, #0xf
006ac5c4  02 10 61 e0                                      rsb r1, r1, r2
006ac5c8  81 01 80 e0                                      add r0, r0, r1, lsl #3
006ac5cc  01 00 50 e3                                      cmp r0, #1
006ac5d0  00 20 80 20                                      addhs r2, r0, r0
006ac5d4  01 20 80 32                                      addlo r2, r0, #1
006ac5d8  03 00 52 e1                                      cmp r2, r3
006ac5dc  01 00 00 8a                                      bhi #0x6ac5e8
006ac5e0  02 00 50 e1                                      cmp r0, r2
006ac5e4  5a 00 00 9a                                      bls #0x6ac754
006ac5e8  27 b0 e0 e3                                      mvn fp, #0x27
006ac5ec  0b 00 a0 e1                                      mov r0, fp
006ac5f0  00 10 a0 e3                                      mov r1, #0
006ac5f4  db 8f f1 eb                                      bl #0x310568
006ac5f8  00 c0 94 e5                                      ldr ip, [r4]
006ac5fc  00 a0 a0 e1                                      mov sl, r0
006ac600  09 90 6c e0                                      rsb sb, ip, sb
006ac604  c9 31 a0 e1                                      asr r3, sb, #3
006ac608  83 21 a0 e1                                      lsl r2, r3, #3
006ac60c  02 20 63 e0                                      rsb r2, r3, r2
006ac610  02 23 82 e0                                      add r2, r2, r2, lsl #6
006ac614  82 21 83 e0                                      add r2, r3, r2, lsl #3
006ac618  82 97 a0 e1                                      lsl sb, r2, #0xf
006ac61c  09 90 62 e0                                      rsb sb, r2, sb
006ac620  89 91 83 e0                                      add sb, r3, sb, lsl #3
006ac624  00 00 59 e3                                      cmp sb, #0
006ac628  00 90 a0 d1                                      movle sb, r0
006ac62c  2a 00 00 da                                      ble #0x6ac6dc
006ac630  09 50 a0 e1                                      mov r5, sb
006ac634  00 e0 a0 e1                                      mov lr, r0
006ac638  00 70 a0 e3                                      mov r7, #0
006ac63c  04 80 a0 e1                                      mov r8, r4
006ac640  09 00 00 ea                                      b #0x6ac66c
006ac644  44 30 8e e5                                      str r3, [lr, #0x44]
006ac648  40 30 9c e5                                      ldr r3, [ip, #0x40]
006ac64c  01 50 55 e2                                      subs r5, r5, #1
006ac650  40 30 8e e5                                      str r3, [lr, #0x40]
006ac654  00 30 9c e5                                      ldr r3, [ip]
006ac658  00 30 8e e5                                      str r3, [lr]
006ac65c  44 70 8c e5                                      str r7, [ip, #0x44]
006ac660  48 e0 8e e2                                      add lr, lr, #0x48
006ac664  19 00 00 0a                                      beq #0x6ac6d0
006ac668  48 c0 8c e2                                      add ip, ip, #0x48
006ac66c  44 30 9c e5                                      ldr r3, [ip, #0x44]
006ac670  44 30 8e e5                                      str r3, [lr, #0x44]
006ac674  44 30 9c e5                                      ldr r3, [ip, #0x44]
006ac678  0c 00 53 e1                                      cmp r3, ip
006ac67c  f0 ff ff 1a                                      bne #0x6ac644
006ac680  0e 40 a0 e1                                      mov r4, lr
006ac684  0c 60 a0 e1                                      mov r6, ip
006ac688  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
006ac68c  0f 00 a4 e8                                      stm r4!, {r0, r1, r2, r3}
006ac690  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
006ac694  0f 00 a4 e8                                      stm r4!, {r0, r1, r2, r3}
006ac698  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
006ac69c  0f 00 a4 e8                                      stm r4!, {r0, r1, r2, r3}
006ac6a0  0f 00 96 e8                                      ldm r6, {r0, r1, r2, r3}
006ac6a4  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
006ac6a8  40 20 9c e5                                      ldr r2, [ip, #0x40]
006ac6ac  44 30 9c e5                                      ldr r3, [ip, #0x44]
006ac6b0  01 50 55 e2                                      subs r5, r5, #1
006ac6b4  44 e0 8e e5                                      str lr, [lr, #0x44]
006ac6b8  02 30 63 e0                                      rsb r3, r3, r2
006ac6bc  03 30 c3 e3                                      bic r3, r3, #3
006ac6c0  03 30 8e e0                                      add r3, lr, r3
006ac6c4  40 30 8e e5                                      str r3, [lr, #0x40]
006ac6c8  48 e0 8e e2                                      add lr, lr, #0x48
006ac6cc  e5 ff ff 1a                                      bne #0x6ac668
006ac6d0  48 30 a0 e3                                      mov r3, #0x48
006ac6d4  93 a9 29 e0                                      mla sb, r3, sb, sl
006ac6d8  08 40 a0 e1                                      mov r4, r8
006ac6dc  40 90 89 e5                                      str sb, [sb, #0x40]
006ac6e0  44 90 89 e5                                      str sb, [sb, #0x44]
006ac6e4  04 30 9d e5                                      ldr r3, [sp, #4]
006ac6e8  09 00 a0 e1                                      mov r0, sb
006ac6ec  48 90 89 e2                                      add sb, sb, #0x48
006ac6f0  40 20 93 e5                                      ldr r2, [r3, #0x40]
006ac6f4  44 10 93 e5                                      ldr r1, [r3, #0x44]
006ac6f8  cb e5 f1 eb                                      bl #0x325e2c
006ac6fc  04 50 94 e5                                      ldr r5, [r4, #4]
006ac700  00 60 94 e5                                      ldr r6, [r4]
006ac704  06 00 55 e1                                      cmp r5, r6
006ac708  0a 00 00 0a                                      beq #0x6ac738
006ac70c  48 50 45 e2                                      sub r5, r5, #0x48
006ac710  44 30 95 e5                                      ldr r3, [r5, #0x44]
006ac714  05 00 53 e1                                      cmp r3, r5
006ac718  03 00 a0 e1                                      mov r0, r3
006ac71c  02 00 00 0a                                      beq #0x6ac72c
006ac720  00 00 53 e3                                      cmp r3, #0
006ac724  00 00 00 0a                                      beq #0x6ac72c
006ac728  48 8f f1 eb                                      bl #0x310450
006ac72c  05 00 56 e1                                      cmp r6, r5
006ac730  f5 ff ff 1a                                      bne #0x6ac70c
006ac734  00 60 94 e5                                      ldr r6, [r4]
006ac738  06 00 a0 e1                                      mov r0, r6
006ac73c  0b b0 8a e0                                      add fp, sl, fp
006ac740  42 8f f1 eb                                      bl #0x310450
006ac744  00 0a 84 e9                                      stmib r4, {sb, fp}
006ac748  00 a0 84 e5                                      str sl, [r4]
006ac74c  0c d0 8d e2                                      add sp, sp, #0xc
006ac750  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006ac754  48 b0 a0 e3                                      mov fp, #0x48
006ac758  9b 02 0b e0                                      mul fp, fp, r2
006ac75c  a2 ff ff ea                                      b #0x6ac5ec

; FUNCTION 0x006ac844, declared_size=244, range_size=244, mode=arm
; class-group: std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorISbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS2_6memory13E_MEMORY_HINTE0EEEENS4_IS8_LS6_0EEEE8_M_eraseEPS8_RKSt11__true_type
; demangled: std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >*, std::__true_type const&)
; decoder-mode: arm
006ac844  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
006ac848  44 30 91 e5                                      ldr r3, [r1, #0x44]
006ac84c  01 90 a0 e1                                      mov sb, r1
006ac850  00 b0 a0 e1                                      mov fp, r0
006ac854  01 00 53 e1                                      cmp r3, r1
006ac858  03 00 00 0a                                      beq #0x6ac86c
006ac85c  00 00 53 e3                                      cmp r3, #0
006ac860  01 00 00 0a                                      beq #0x6ac86c
006ac864  03 00 a0 e1                                      mov r0, r3
006ac868  f8 8e f1 eb                                      bl #0x310450
006ac86c  04 70 9b e5                                      ldr r7, [fp, #4]
006ac870  48 40 89 e2                                      add r4, sb, #0x48
006ac874  07 00 54 e1                                      cmp r4, r7
006ac878  09 c0 a0 01                                      moveq ip, sb
006ac87c  2a 00 00 0a                                      beq #0x6ac92c
006ac880  09 c0 a0 e1                                      mov ip, sb
006ac884  00 80 a0 e3                                      mov r8, #0
006ac888  10 00 00 ea                                      b #0x6ac8d0
006ac88c  88 10 9c e5                                      ldr r1, [ip, #0x88]
006ac890  48 20 9c e5                                      ldr r2, [ip, #0x48]
006ac894  44 30 8c e5                                      str r3, [ip, #0x44]
006ac898  40 10 8c e5                                      str r1, [ip, #0x40]
006ac89c  48 20 04 e5                                      str r2, [r4, #-0x48]
006ac8a0  8c 80 8c e5                                      str r8, [ip, #0x8c]
006ac8a4  8c 30 9c e5                                      ldr r3, [ip, #0x8c]
006ac8a8  04 00 53 e1                                      cmp r3, r4
006ac8ac  03 00 a0 e1                                      mov r0, r3
006ac8b0  48 40 84 e2                                      add r4, r4, #0x48
006ac8b4  02 00 00 0a                                      beq #0x6ac8c4
006ac8b8  00 00 53 e3                                      cmp r3, #0
006ac8bc  00 00 00 0a                                      beq #0x6ac8c4
006ac8c0  e2 8e f1 eb                                      bl #0x310450
006ac8c4  07 00 54 e1                                      cmp r4, r7
006ac8c8  05 c0 a0 e1                                      mov ip, r5
006ac8cc  16 00 00 0a                                      beq #0x6ac92c
006ac8d0  8c 30 9c e5                                      ldr r3, [ip, #0x8c]
006ac8d4  48 50 8c e2                                      add r5, ip, #0x48
006ac8d8  04 00 53 e1                                      cmp r3, r4
006ac8dc  44 30 8c e5                                      str r3, [ip, #0x44]
006ac8e0  e9 ff ff 1a                                      bne #0x6ac88c
006ac8e4  48 a0 44 e2                                      sub sl, r4, #0x48
006ac8e8  05 60 a0 e1                                      mov r6, r5
006ac8ec  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
006ac8f0  0f 00 aa e8                                      stm sl!, {r0, r1, r2, r3}
006ac8f4  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
006ac8f8  0f 00 aa e8                                      stm sl!, {r0, r1, r2, r3}
006ac8fc  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
006ac900  0f 00 aa e8                                      stm sl!, {r0, r1, r2, r3}
006ac904  0f 00 96 e8                                      ldm r6, {r0, r1, r2, r3}
006ac908  0f 00 8a e8                                      stm sl, {r0, r1, r2, r3}
006ac90c  88 20 9c e5                                      ldr r2, [ip, #0x88]
006ac910  8c 30 9c e5                                      ldr r3, [ip, #0x8c]
006ac914  44 c0 8c e5                                      str ip, [ip, #0x44]
006ac918  02 30 63 e0                                      rsb r3, r3, r2
006ac91c  03 30 c3 e3                                      bic r3, r3, #3
006ac920  03 30 8c e0                                      add r3, ip, r3
006ac924  40 30 8c e5                                      str r3, [ip, #0x40]
006ac928  dd ff ff ea                                      b #0x6ac8a4
006ac92c  04 c0 8b e5                                      str ip, [fp, #4]
006ac930  09 00 a0 e1                                      mov r0, sb
006ac934  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006b066c, declared_size=472, range_size=472, mode=arm
; class-group: std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorISbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS2_6memory13E_MEMORY_HINTE0EEEENS4_IS8_LS6_0EEEE22_M_insert_overflow_auxEPS8_RKS8_RKSt12__false_typejb.clone.8
; demangled: std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >*, std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> > const&, std::__false_type const&, unsigned int, bool) [clone .clone.8]
; decoder-mode: arm
006b066c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006b0670  00 40 a0 e1                                      mov r4, r0
006b0674  01 10 90 e8                                      ldm r0, {r0, ip}
006b0678  01 90 a0 e1                                      mov sb, r1
006b067c  0c d0 4d e2                                      sub sp, sp, #0xc
006b0680  0c 00 60 e0                                      rsb r0, r0, ip
006b0684  c0 01 a0 e1                                      asr r0, r0, #3
006b0688  04 20 8d e5                                      str r2, [sp, #4]
006b068c  80 11 a0 e1                                      lsl r1, r0, #3
006b0690  01 10 60 e0                                      rsb r1, r0, r1
006b0694  01 13 81 e0                                      add r1, r1, r1, lsl #6
006b0698  e3 38 03 e3                                      movw r3, #0x38e3
006b069c  81 11 80 e0                                      add r1, r0, r1, lsl #3
006b06a0  03 36 83 e1                                      orr r3, r3, r3, lsl #12
006b06a4  81 27 a0 e1                                      lsl r2, r1, #0xf
006b06a8  02 10 61 e0                                      rsb r1, r1, r2
006b06ac  81 01 80 e0                                      add r0, r0, r1, lsl #3
006b06b0  01 00 50 e3                                      cmp r0, #1
006b06b4  00 20 80 20                                      addhs r2, r0, r0
006b06b8  01 20 80 32                                      addlo r2, r0, #1
006b06bc  03 00 52 e1                                      cmp r2, r3
006b06c0  01 00 00 8a                                      bhi #0x6b06cc
006b06c4  02 00 50 e1                                      cmp r0, r2
006b06c8  5a 00 00 9a                                      bls #0x6b0838
006b06cc  27 b0 e0 e3                                      mvn fp, #0x27
006b06d0  0b 00 a0 e1                                      mov r0, fp
006b06d4  00 10 a0 e3                                      mov r1, #0
006b06d8  a2 7f f1 eb                                      bl #0x310568
006b06dc  00 c0 94 e5                                      ldr ip, [r4]
006b06e0  00 a0 a0 e1                                      mov sl, r0
006b06e4  09 90 6c e0                                      rsb sb, ip, sb
006b06e8  c9 31 a0 e1                                      asr r3, sb, #3
006b06ec  83 21 a0 e1                                      lsl r2, r3, #3
006b06f0  02 20 63 e0                                      rsb r2, r3, r2
006b06f4  02 23 82 e0                                      add r2, r2, r2, lsl #6
006b06f8  82 21 83 e0                                      add r2, r3, r2, lsl #3
006b06fc  82 97 a0 e1                                      lsl sb, r2, #0xf
006b0700  09 90 62 e0                                      rsb sb, r2, sb
006b0704  89 91 83 e0                                      add sb, r3, sb, lsl #3
006b0708  00 00 59 e3                                      cmp sb, #0
006b070c  00 90 a0 d1                                      movle sb, r0
006b0710  2a 00 00 da                                      ble #0x6b07c0
006b0714  09 50 a0 e1                                      mov r5, sb
006b0718  00 e0 a0 e1                                      mov lr, r0
006b071c  00 70 a0 e3                                      mov r7, #0
006b0720  04 80 a0 e1                                      mov r8, r4
006b0724  09 00 00 ea                                      b #0x6b0750
006b0728  44 30 8e e5                                      str r3, [lr, #0x44]
006b072c  40 30 9c e5                                      ldr r3, [ip, #0x40]
006b0730  01 50 55 e2                                      subs r5, r5, #1
006b0734  40 30 8e e5                                      str r3, [lr, #0x40]
006b0738  00 30 9c e5                                      ldr r3, [ip]
006b073c  00 30 8e e5                                      str r3, [lr]
006b0740  44 70 8c e5                                      str r7, [ip, #0x44]
006b0744  48 e0 8e e2                                      add lr, lr, #0x48
006b0748  19 00 00 0a                                      beq #0x6b07b4
006b074c  48 c0 8c e2                                      add ip, ip, #0x48
006b0750  44 30 9c e5                                      ldr r3, [ip, #0x44]
006b0754  44 30 8e e5                                      str r3, [lr, #0x44]
006b0758  44 30 9c e5                                      ldr r3, [ip, #0x44]
006b075c  0c 00 53 e1                                      cmp r3, ip
006b0760  f0 ff ff 1a                                      bne #0x6b0728
006b0764  0e 40 a0 e1                                      mov r4, lr
006b0768  0c 60 a0 e1                                      mov r6, ip
006b076c  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
006b0770  0f 00 a4 e8                                      stm r4!, {r0, r1, r2, r3}
006b0774  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
006b0778  0f 00 a4 e8                                      stm r4!, {r0, r1, r2, r3}
006b077c  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
006b0780  0f 00 a4 e8                                      stm r4!, {r0, r1, r2, r3}
006b0784  0f 00 96 e8                                      ldm r6, {r0, r1, r2, r3}
006b0788  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
006b078c  40 20 9c e5                                      ldr r2, [ip, #0x40]
006b0790  44 30 9c e5                                      ldr r3, [ip, #0x44]
006b0794  01 50 55 e2                                      subs r5, r5, #1
006b0798  44 e0 8e e5                                      str lr, [lr, #0x44]
006b079c  02 30 63 e0                                      rsb r3, r3, r2
006b07a0  03 30 c3 e3                                      bic r3, r3, #3
006b07a4  03 30 8e e0                                      add r3, lr, r3
006b07a8  40 30 8e e5                                      str r3, [lr, #0x40]
006b07ac  48 e0 8e e2                                      add lr, lr, #0x48
006b07b0  e5 ff ff 1a                                      bne #0x6b074c
006b07b4  48 30 a0 e3                                      mov r3, #0x48
006b07b8  93 a9 29 e0                                      mla sb, r3, sb, sl
006b07bc  08 40 a0 e1                                      mov r4, r8
006b07c0  40 90 89 e5                                      str sb, [sb, #0x40]
006b07c4  44 90 89 e5                                      str sb, [sb, #0x44]
006b07c8  04 30 9d e5                                      ldr r3, [sp, #4]
006b07cc  09 00 a0 e1                                      mov r0, sb
006b07d0  48 90 89 e2                                      add sb, sb, #0x48
006b07d4  40 20 93 e5                                      ldr r2, [r3, #0x40]
006b07d8  44 10 93 e5                                      ldr r1, [r3, #0x44]
006b07dc  92 d5 f1 eb                                      bl #0x325e2c
006b07e0  04 50 94 e5                                      ldr r5, [r4, #4]
006b07e4  00 60 94 e5                                      ldr r6, [r4]
006b07e8  06 00 55 e1                                      cmp r5, r6
006b07ec  0a 00 00 0a                                      beq #0x6b081c
006b07f0  48 50 45 e2                                      sub r5, r5, #0x48
006b07f4  44 30 95 e5                                      ldr r3, [r5, #0x44]
006b07f8  05 00 53 e1                                      cmp r3, r5
006b07fc  03 00 a0 e1                                      mov r0, r3
006b0800  02 00 00 0a                                      beq #0x6b0810
006b0804  00 00 53 e3                                      cmp r3, #0
006b0808  00 00 00 0a                                      beq #0x6b0810
006b080c  0f 7f f1 eb                                      bl #0x310450
006b0810  05 00 56 e1                                      cmp r6, r5
006b0814  f5 ff ff 1a                                      bne #0x6b07f0
006b0818  00 60 94 e5                                      ldr r6, [r4]
006b081c  06 00 a0 e1                                      mov r0, r6
006b0820  0b b0 8a e0                                      add fp, sl, fp
006b0824  09 7f f1 eb                                      bl #0x310450
006b0828  00 0a 84 e9                                      stmib r4, {sb, fp}
006b082c  00 a0 84 e5                                      str sl, [r4]
006b0830  0c d0 8d e2                                      add sp, sp, #0xc
006b0834  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006b0838  48 b0 a0 e3                                      mov fp, #0x48
006b083c  9b 02 0b e0                                      mul fp, fp, r2
006b0840  a2 ff ff ea                                      b #0x6b06d0
