; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00320358, declared_size=100, range_size=100, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
00320358  70 40 2d e9                                      push {r4, r5, r6, lr}
0032035c  14 20 90 e5                                      ldr r2, [r0, #0x14]
00320360  10 40 90 e5                                      ldr r4, [r0, #0x10]
00320364  fe 3f 0f e3                                      movw r3, #0xfffe
00320368  ff 3f 4f e3                                      movt r3, #0xffff
0032036c  04 40 62 e0                                      rsb r4, r2, r4
00320370  03 30 64 e0                                      rsb r3, r4, r3
00320374  01 00 53 e1                                      cmp r3, r1
00320378  01 50 a0 e1                                      mov r5, r1
0032037c  09 00 00 3a                                      blo #0x3203a8
00320380  01 00 84 e2                                      add r0, r4, #1
00320384  04 00 55 e1                                      cmp r5, r4
00320388  05 00 80 20                                      addhs r0, r0, r5
0032038c  04 00 80 30                                      addlo r0, r0, r4
00320390  01 00 70 e3                                      cmn r0, #1
00320394  01 00 00 0a                                      beq #0x3203a0
00320398  04 00 50 e1                                      cmp r0, r4
0032039c  00 00 00 2a                                      bhs #0x3203a4
003203a0  01 00 e0 e3                                      mvn r0, #1
003203a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
003203a8  08 00 9f e5                                      ldr r0, [pc, #8]
003203ac  00 00 8f e0                                      add r0, pc, r0
003203b0  a2 a2 0f eb                                      bl #0x708e40
003203b4  f1 ff ff ea                                      b #0x320380
; mapping-symbol data/literal pool
003203b8  ac e0 59 00                                      .byte 0xac, 0xe0, 0x59, 0x00

; FUNCTION 0x00320a4c, declared_size=316, range_size=316, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE9_M_appendEPKcS9_
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::_M_append(char const*, char const*)
; decoder-mode: arm
00320a4c  02 00 51 e1                                      cmp r1, r2
00320a50  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00320a54  01 40 a0 e1                                      mov r4, r1
00320a58  00 50 a0 e1                                      mov r5, r0
00320a5c  1d 00 00 0a                                      beq #0x320ad8
00320a60  14 30 90 e5                                      ldr r3, [r0, #0x14]
00320a64  02 60 61 e0                                      rsb r6, r1, r2
00320a68  00 00 53 e1                                      cmp r3, r0
00320a6c  10 10 90 05                                      ldreq r1, [r0, #0x10]
00320a70  00 30 90 15                                      ldrne r3, [r0]
00320a74  10 10 90 15                                      ldrne r1, [r0, #0x10]
00320a78  10 30 80 02                                      addeq r3, r0, #0x10
00320a7c  03 30 61 e0                                      rsb r3, r1, r3
00320a80  03 00 56 e1                                      cmp r6, r3
00320a84  15 00 00 2a                                      bhs #0x320ae0
00320a88  01 30 84 e2                                      add r3, r4, #1
00320a8c  02 20 63 e0                                      rsb r2, r3, r2
00320a90  00 00 52 e3                                      cmp r2, #0
00320a94  01 30 a0 e1                                      mov r3, r1
00320a98  06 00 00 da                                      ble #0x320ab8
00320a9c  04 20 82 e0                                      add r2, r2, r4
00320aa0  04 30 a0 e1                                      mov r3, r4
00320aa4  01 00 f3 e5                                      ldrb r0, [r3, #1]!
00320aa8  02 00 53 e1                                      cmp r3, r2
00320aac  01 00 e1 e5                                      strb r0, [r1, #1]!
00320ab0  fb ff ff 1a                                      bne #0x320aa4
00320ab4  10 30 95 e5                                      ldr r3, [r5, #0x10]
00320ab8  00 20 a0 e3                                      mov r2, #0
00320abc  06 20 c3 e7                                      strb r2, [r3, r6]
00320ac0  10 30 95 e5                                      ldr r3, [r5, #0x10]
00320ac4  00 20 d4 e5                                      ldrb r2, [r4]
00320ac8  00 20 c3 e5                                      strb r2, [r3]
00320acc  10 30 95 e5                                      ldr r3, [r5, #0x10]
00320ad0  06 60 83 e0                                      add r6, r3, r6
00320ad4  10 60 85 e5                                      str r6, [r5, #0x10]
00320ad8  05 00 a0 e1                                      mov r0, r5
00320adc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00320ae0  06 10 a0 e1                                      mov r1, r6
00320ae4  1b fe ff eb                                      bl #0x320358
00320ae8  00 10 a0 e3                                      mov r1, #0
00320aec  00 70 a0 e1                                      mov r7, r0
00320af0  9c be ff eb                                      bl #0x310568
00320af4  14 10 95 e5                                      ldr r1, [r5, #0x14]
00320af8  10 20 95 e5                                      ldr r2, [r5, #0x10]
00320afc  00 a0 a0 e1                                      mov sl, r0
00320b00  02 20 61 e0                                      rsb r2, r1, r2
00320b04  00 00 52 e3                                      cmp r2, #0
00320b08  00 80 a0 d1                                      movle r8, r0
00320b0c  06 00 00 da                                      ble #0x320b2c
00320b10  00 80 a0 e3                                      mov r8, #0
00320b14  08 30 d1 e7                                      ldrb r3, [r1, r8]
00320b18  08 30 ca e7                                      strb r3, [sl, r8]
00320b1c  01 80 88 e2                                      add r8, r8, #1
00320b20  02 00 58 e1                                      cmp r8, r2
00320b24  fa ff ff 1a                                      bne #0x320b14
00320b28  08 80 8a e0                                      add r8, sl, r8
00320b2c  00 00 56 e3                                      cmp r6, #0
00320b30  06 00 00 da                                      ble #0x320b50
00320b34  00 30 a0 e3                                      mov r3, #0
00320b38  03 20 d4 e7                                      ldrb r2, [r4, r3]
00320b3c  03 20 c8 e7                                      strb r2, [r8, r3]
00320b40  01 30 83 e2                                      add r3, r3, #1
00320b44  03 00 56 e1                                      cmp r6, r3
00320b48  fa ff ff 1a                                      bne #0x320b38
00320b4c  06 80 88 e0                                      add r8, r8, r6
00320b50  00 30 a0 e3                                      mov r3, #0
00320b54  00 30 c8 e5                                      strb r3, [r8]
00320b58  14 00 95 e5                                      ldr r0, [r5, #0x14]
00320b5c  00 00 55 e1                                      cmp r5, r0
00320b60  02 00 00 0a                                      beq #0x320b70
00320b64  03 00 50 e1                                      cmp r0, r3
00320b68  00 00 00 0a                                      beq #0x320b70
00320b6c  37 be ff eb                                      bl #0x310450
00320b70  07 70 8a e0                                      add r7, sl, r7
00320b74  00 70 85 e5                                      str r7, [r5]
00320b78  10 80 85 e5                                      str r8, [r5, #0x10]
00320b7c  14 a0 85 e5                                      str sl, [r5, #0x14]
00320b80  05 00 a0 e1                                      mov r0, r5
00320b84  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00320b88, declared_size=192, range_size=192, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE9_M_assignEPKcS9_
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::_M_assign(char const*, char const*)
; decoder-mode: arm
00320b88  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00320b8c  00 40 a0 e1                                      mov r4, r0
00320b90  10 30 90 e5                                      ldr r3, [r0, #0x10]
00320b94  14 00 90 e5                                      ldr r0, [r0, #0x14]
00320b98  02 50 61 e0                                      rsb r5, r1, r2
00320b9c  02 60 a0 e1                                      mov r6, r2
00320ba0  03 20 60 e0                                      rsb r2, r0, r3
00320ba4  02 00 55 e1                                      cmp r5, r2
00320ba8  01 70 a0 e1                                      mov r7, r1
00320bac  0c 00 00 8a                                      bhi #0x320be4
00320bb0  00 00 55 e3                                      cmp r5, #0
00320bb4  12 00 00 1a                                      bne #0x320c04
00320bb8  05 20 80 e0                                      add r2, r0, r5
00320bbc  03 00 52 e1                                      cmp r2, r3
00320bc0  05 00 00 0a                                      beq #0x320bdc
00320bc4  00 10 d3 e5                                      ldrb r1, [r3]
00320bc8  02 30 63 e0                                      rsb r3, r3, r2
00320bcc  05 10 c0 e7                                      strb r1, [r0, r5]
00320bd0  10 20 94 e5                                      ldr r2, [r4, #0x10]
00320bd4  03 30 82 e0                                      add r3, r2, r3
00320bd8  10 30 84 e5                                      str r3, [r4, #0x10]
00320bdc  04 00 a0 e1                                      mov r0, r4
00320be0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00320be4  00 00 52 e3                                      cmp r2, #0
00320be8  0d 00 00 1a                                      bne #0x320c24
00320bec  02 10 87 e0                                      add r1, r7, r2
00320bf0  04 00 a0 e1                                      mov r0, r4
00320bf4  06 20 a0 e1                                      mov r2, r6
00320bf8  93 ff ff eb                                      bl #0x320a4c
00320bfc  04 00 a0 e1                                      mov r0, r4
00320c00  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00320c04  05 20 a0 e1                                      mov r2, r5
00320c08  16 b7 ff eb                                      bl #0x30e868
00320c0c  14 00 94 e5                                      ldr r0, [r4, #0x14]
00320c10  10 30 94 e5                                      ldr r3, [r4, #0x10]
00320c14  05 20 80 e0                                      add r2, r0, r5
00320c18  03 00 52 e1                                      cmp r2, r3
00320c1c  e8 ff ff 1a                                      bne #0x320bc4
00320c20  ed ff ff ea                                      b #0x320bdc
00320c24  0f b7 ff eb                                      bl #0x30e868
00320c28  14 30 94 e5                                      ldr r3, [r4, #0x14]
00320c2c  10 20 94 e5                                      ldr r2, [r4, #0x10]
00320c30  04 00 a0 e1                                      mov r0, r4
00320c34  02 20 63 e0                                      rsb r2, r3, r2
00320c38  02 10 87 e0                                      add r1, r7, r2
00320c3c  06 20 a0 e1                                      mov r2, r6
00320c40  81 ff ff eb                                      bl #0x320a4c
00320c44  ec ff ff ea                                      b #0x320bfc

; FUNCTION 0x00325ff4, declared_size=72, range_size=72, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE19_M_range_initializeEPKcS9_
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::_M_range_initialize(char const*, char const*)
; decoder-mode: arm
00325ff4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00325ff8  02 50 61 e0                                      rsb r5, r1, r2
00325ffc  01 40 a0 e1                                      mov r4, r1
00326000  02 70 a0 e1                                      mov r7, r2
00326004  01 10 85 e2                                      add r1, r5, #1
00326008  00 60 a0 e1                                      mov r6, r0
0032600c  65 ea ff eb                                      bl #0x3209a8
00326010  04 00 57 e1                                      cmp r7, r4
00326014  14 00 96 e5                                      ldr r0, [r6, #0x14]
00326018  03 00 00 0a                                      beq #0x32602c
0032601c  04 10 a0 e1                                      mov r1, r4
00326020  05 20 a0 e1                                      mov r2, r5
00326024  0f a2 ff eb                                      bl #0x30e868
00326028  05 00 80 e0                                      add r0, r0, r5
0032602c  00 30 a0 e3                                      mov r3, #0
00326030  10 00 86 e5                                      str r0, [r6, #0x10]
00326034  00 30 c0 e5                                      strb r3, [r0]
00326038  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0032603c, declared_size=52, range_size=52, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEEC1EPKcRKS6_
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::basic_string(char const*, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> const&)
; decoder-mode: arm
0032603c  70 40 2d e9                                      push {r4, r5, r6, lr}
00326040  00 40 a0 e1                                      mov r4, r0
00326044  10 00 84 e5                                      str r0, [r4, #0x10]
00326048  14 00 84 e5                                      str r0, [r4, #0x14]
0032604c  01 00 a0 e1                                      mov r0, r1
00326050  01 50 a0 e1                                      mov r5, r1
00326054  7e 9f ff eb                                      bl #0x30de54
00326058  05 10 a0 e1                                      mov r1, r5
0032605c  00 20 85 e0                                      add r2, r5, r0
00326060  04 00 a0 e1                                      mov r0, r4
00326064  e2 ff ff eb                                      bl #0x325ff4
00326068  04 00 a0 e1                                      mov r0, r4
0032606c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0034f3c8, declared_size=680, range_size=680, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE9_M_insertEPcPKcSA_b
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert(char*, char const*, char const*, bool)
; decoder-mode: arm
0034f3c8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0034f3cc  03 00 52 e1                                      cmp r2, r3
0034f3d0  0c d0 4d e2                                      sub sp, sp, #0xc
0034f3d4  02 40 a0 e1                                      mov r4, r2
0034f3d8  00 80 a0 e1                                      mov r8, r0
0034f3dc  01 50 a0 e1                                      mov r5, r1
0034f3e0  30 70 dd e5                                      ldrb r7, [sp, #0x30]
0034f3e4  5d 00 00 0a                                      beq #0x34f560
0034f3e8  14 20 90 e5                                      ldr r2, [r0, #0x14]
0034f3ec  03 60 64 e0                                      rsb r6, r4, r3
0034f3f0  00 00 52 e1                                      cmp r2, r0
0034f3f4  10 00 90 05                                      ldreq r0, [r0, #0x10]
0034f3f8  00 20 98 15                                      ldrne r2, [r8]
0034f3fc  10 00 98 15                                      ldrne r0, [r8, #0x10]
0034f400  10 20 88 02                                      addeq r2, r8, #0x10
0034f404  02 20 60 e0                                      rsb r2, r0, r2
0034f408  02 00 56 e1                                      cmp r6, r2
0034f40c  20 00 00 2a                                      bhs #0x34f494
0034f410  00 20 61 e0                                      rsb r2, r1, r0
0034f414  02 00 56 e1                                      cmp r6, r2
0034f418  00 10 a0 e1                                      mov r1, r0
0034f41c  51 00 00 8a                                      bhi #0x34f568
0034f420  01 b0 66 e2                                      rsb fp, r6, #1
0034f424  01 a0 6b e2                                      rsb sl, fp, #1
0034f428  00 00 5a e3                                      cmp sl, #0
0034f42c  0b 90 80 e0                                      add sb, r0, fp
0034f430  06 00 00 da                                      ble #0x34f450
0034f434  00 10 a0 e3                                      mov r1, #0
0034f438  01 c0 d9 e7                                      ldrb ip, [sb, r1]
0034f43c  01 10 81 e2                                      add r1, r1, #1
0034f440  0a 00 51 e1                                      cmp r1, sl
0034f444  01 c0 e0 e5                                      strb ip, [r0, #1]!
0034f448  fa ff ff 1a                                      bne #0x34f438
0034f44c  10 10 98 e5                                      ldr r1, [r8, #0x10]
0034f450  06 10 81 e0                                      add r1, r1, r6
0034f454  02 20 9b e0                                      adds r2, fp, r2
0034f458  10 10 88 e5                                      str r1, [r8, #0x10]
0034f45c  75 00 00 1a                                      bne #0x34f638
0034f460  00 00 57 e3                                      cmp r7, #0
0034f464  64 00 00 0a                                      beq #0x34f5fc
0034f468  05 00 53 e1                                      cmp r3, r5
0034f46c  62 00 00 3a                                      blo #0x34f5fc
0034f470  05 00 54 e1                                      cmp r4, r5
0034f474  75 00 00 3a                                      blo #0x34f650
0034f478  04 20 53 e0                                      subs r2, r3, r4
0034f47c  06 10 84 e0                                      add r1, r4, r6
0034f480  36 00 00 0a                                      beq #0x34f560
0034f484  05 00 a0 e1                                      mov r0, r5
0034f488  0c d0 8d e2                                      add sp, sp, #0xc
0034f48c  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0034f490  f4 fc fe ea                                      b #0x30e868
0034f494  06 10 a0 e1                                      mov r1, r6
0034f498  08 00 a0 e1                                      mov r0, r8
0034f49c  ad 43 ff eb                                      bl #0x320358
0034f4a0  00 10 a0 e3                                      mov r1, #0
0034f4a4  00 70 a0 e1                                      mov r7, r0
0034f4a8  2e 04 ff eb                                      bl #0x310568
0034f4ac  14 10 98 e5                                      ldr r1, [r8, #0x14]
0034f4b0  00 90 a0 e1                                      mov sb, r0
0034f4b4  05 20 61 e0                                      rsb r2, r1, r5
0034f4b8  00 00 52 e3                                      cmp r2, #0
0034f4bc  00 a0 a0 d1                                      movle sl, r0
0034f4c0  06 00 00 da                                      ble #0x34f4e0
0034f4c4  00 a0 a0 e3                                      mov sl, #0
0034f4c8  0a 30 d1 e7                                      ldrb r3, [r1, sl]
0034f4cc  0a 30 c9 e7                                      strb r3, [sb, sl]
0034f4d0  01 a0 8a e2                                      add sl, sl, #1
0034f4d4  02 00 5a e1                                      cmp sl, r2
0034f4d8  fa ff ff 1a                                      bne #0x34f4c8
0034f4dc  0a a0 89 e0                                      add sl, sb, sl
0034f4e0  00 00 56 e3                                      cmp r6, #0
0034f4e4  06 00 00 da                                      ble #0x34f504
0034f4e8  00 30 a0 e3                                      mov r3, #0
0034f4ec  03 20 d4 e7                                      ldrb r2, [r4, r3]
0034f4f0  03 20 ca e7                                      strb r2, [sl, r3]
0034f4f4  01 30 83 e2                                      add r3, r3, #1
0034f4f8  03 00 56 e1                                      cmp r6, r3
0034f4fc  fa ff ff 1a                                      bne #0x34f4ec
0034f500  06 a0 8a e0                                      add sl, sl, r6
0034f504  10 10 98 e5                                      ldr r1, [r8, #0x10]
0034f508  01 10 65 e0                                      rsb r1, r5, r1
0034f50c  00 00 51 e3                                      cmp r1, #0
0034f510  06 00 00 da                                      ble #0x34f530
0034f514  00 30 a0 e3                                      mov r3, #0
0034f518  03 20 d5 e7                                      ldrb r2, [r5, r3]
0034f51c  03 20 ca e7                                      strb r2, [sl, r3]
0034f520  01 30 83 e2                                      add r3, r3, #1
0034f524  01 00 53 e1                                      cmp r3, r1
0034f528  fa ff ff 1a                                      bne #0x34f518
0034f52c  03 a0 8a e0                                      add sl, sl, r3
0034f530  00 30 a0 e3                                      mov r3, #0
0034f534  00 30 ca e5                                      strb r3, [sl]
0034f538  14 00 98 e5                                      ldr r0, [r8, #0x14]
0034f53c  00 00 58 e1                                      cmp r8, r0
0034f540  02 00 00 0a                                      beq #0x34f550
0034f544  03 00 50 e1                                      cmp r0, r3
0034f548  00 00 00 0a                                      beq #0x34f550
0034f54c  bf 03 ff eb                                      bl #0x310450
0034f550  07 70 89 e0                                      add r7, sb, r7
0034f554  14 90 88 e5                                      str sb, [r8, #0x14]
0034f558  00 70 88 e5                                      str r7, [r8]
0034f55c  10 a0 88 e5                                      str sl, [r8, #0x10]
0034f560  0c d0 8d e2                                      add sp, sp, #0xc
0034f564  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0034f568  01 c0 82 e2                                      add ip, r2, #1
0034f56c  0c c0 84 e0                                      add ip, r4, ip
0034f570  03 30 6c e0                                      rsb r3, ip, r3
0034f574  00 00 53 e3                                      cmp r3, #0
0034f578  01 a0 80 e2                                      add sl, r0, #1
0034f57c  06 00 00 da                                      ble #0x34f59c
0034f580  00 10 a0 e3                                      mov r1, #0
0034f584  01 90 dc e7                                      ldrb sb, [ip, r1]
0034f588  01 10 81 e2                                      add r1, r1, #1
0034f58c  03 00 51 e1                                      cmp r1, r3
0034f590  01 90 e0 e5                                      strb sb, [r0, #1]!
0034f594  fa ff ff 1a                                      bne #0x34f584
0034f598  10 10 98 e5                                      ldr r1, [r8, #0x10]
0034f59c  06 60 62 e0                                      rsb r6, r2, r6
0034f5a0  0a a0 65 e0                                      rsb sl, r5, sl
0034f5a4  06 10 81 e0                                      add r1, r1, r6
0034f5a8  00 00 5a e3                                      cmp sl, #0
0034f5ac  10 10 88 e5                                      str r1, [r8, #0x10]
0034f5b0  06 00 00 da                                      ble #0x34f5d0
0034f5b4  00 30 a0 e3                                      mov r3, #0
0034f5b8  03 00 d5 e7                                      ldrb r0, [r5, r3]
0034f5bc  03 00 c1 e7                                      strb r0, [r1, r3]
0034f5c0  01 30 83 e2                                      add r3, r3, #1
0034f5c4  0a 00 53 e1                                      cmp r3, sl
0034f5c8  fa ff ff 1a                                      bne #0x34f5b8
0034f5cc  10 10 98 e5                                      ldr r1, [r8, #0x10]
0034f5d0  02 10 81 e0                                      add r1, r1, r2
0034f5d4  00 00 57 e3                                      cmp r7, #0
0034f5d8  10 10 88 e5                                      str r1, [r8, #0x10]
0034f5dc  0e 00 00 1a                                      bne #0x34f61c
0034f5e0  04 20 5c e0                                      subs r2, ip, r4
0034f5e4  dd ff ff 0a                                      beq #0x34f560
0034f5e8  05 00 a0 e1                                      mov r0, r5
0034f5ec  04 10 a0 e1                                      mov r1, r4
0034f5f0  0c d0 8d e2                                      add sp, sp, #0xc
0034f5f4  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0034f5f8  9a fc fe ea                                      b #0x30e868
0034f5fc  00 00 56 e3                                      cmp r6, #0
0034f600  d6 ff ff 0a                                      beq #0x34f560
0034f604  05 00 a0 e1                                      mov r0, r5
0034f608  04 10 a0 e1                                      mov r1, r4
0034f60c  06 20 a0 e1                                      mov r2, r6
0034f610  0c d0 8d e2                                      add sp, sp, #0xc
0034f614  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0034f618  92 fc fe ea                                      b #0x30e868
0034f61c  04 20 5c e0                                      subs r2, ip, r4
0034f620  ce ff ff 0a                                      beq #0x34f560
0034f624  05 00 a0 e1                                      mov r0, r5
0034f628  04 10 a0 e1                                      mov r1, r4
0034f62c  0c d0 8d e2                                      add sp, sp, #0xc
0034f630  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0034f634  3f fa fe ea                                      b #0x30df38
0034f638  06 00 85 e0                                      add r0, r5, r6
0034f63c  05 10 a0 e1                                      mov r1, r5
0034f640  04 30 8d e5                                      str r3, [sp, #4]
0034f644  3b fa fe eb                                      bl #0x30df38
0034f648  04 30 9d e5                                      ldr r3, [sp, #4]
0034f64c  83 ff ff ea                                      b #0x34f460
0034f650  00 00 56 e3                                      cmp r6, #0
0034f654  c1 ff ff 0a                                      beq #0x34f560
0034f658  05 00 a0 e1                                      mov r0, r5
0034f65c  04 10 a0 e1                                      mov r1, r4
0034f660  06 20 a0 e1                                      mov r2, r6
0034f664  0c d0 8d e2                                      add sp, sp, #0xc
0034f668  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0034f66c  31 fa fe ea                                      b #0x30df38

; FUNCTION 0x00352f24, declared_size=132, range_size=132, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNKSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE4findEPKcj.clone.1
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::find(char const*, unsigned int) const [clone .clone.1]
; decoder-mode: arm
00352f24  70 40 2d e9                                      push {r4, r5, r6, lr}
00352f28  00 40 a0 e1                                      mov r4, r0
00352f2c  10 d0 4d e2                                      sub sp, sp, #0x10
00352f30  01 00 a0 e1                                      mov r0, r1
00352f34  01 60 a0 e1                                      mov r6, r1
00352f38  c5 eb fe eb                                      bl #0x30de54
00352f3c  10 c0 94 e5                                      ldr ip, [r4, #0x10]
00352f40  14 50 94 e5                                      ldr r5, [r4, #0x14]
00352f44  00 30 a0 e1                                      mov r3, r0
00352f48  05 20 5c e0                                      subs r2, ip, r5
00352f4c  04 00 00 1a                                      bne #0x352f64
00352f50  00 00 50 e3                                      cmp r0, #0
00352f54  00 00 a0 01                                      moveq r0, r0
00352f58  03 00 00 1a                                      bne #0x352f6c
00352f5c  10 d0 8d e2                                      add sp, sp, #0x10
00352f60  70 80 bd e8                                      pop {r4, r5, r6, pc}
00352f64  02 00 50 e1                                      cmp r0, r2
00352f68  01 00 00 9a                                      bls #0x352f74
00352f6c  00 00 e0 e3                                      mvn r0, #0
00352f70  f9 ff ff ea                                      b #0x352f5c
00352f74  0c 10 a0 e1                                      mov r1, ip
00352f78  03 30 86 e0                                      add r3, r6, r3
00352f7c  0c c0 8d e2                                      add ip, sp, #0xc
00352f80  06 20 a0 e1                                      mov r2, r6
00352f84  05 00 a0 e1                                      mov r0, r5
00352f88  00 c0 8d e5                                      str ip, [sp]
00352f8c  66 ef ff eb                                      bl #0x34ed2c
00352f90  10 30 94 e5                                      ldr r3, [r4, #0x10]
00352f94  03 00 50 e1                                      cmp r0, r3
00352f98  f3 ff ff 0a                                      beq #0x352f6c
00352f9c  14 30 94 e5                                      ldr r3, [r4, #0x14]
00352fa0  00 00 63 e0                                      rsb r0, r3, r0
00352fa4  ec ff ff ea                                      b #0x352f5c

; FUNCTION 0x00435f24, declared_size=132, range_size=132, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE10_M_reserveEj
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::_M_reserve(unsigned int)
; decoder-mode: arm
00435f24  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00435f28  01 50 a0 e1                                      mov r5, r1
00435f2c  00 40 a0 e1                                      mov r4, r0
00435f30  00 10 a0 e3                                      mov r1, #0
00435f34  05 00 a0 e1                                      mov r0, r5
00435f38  8a 69 fb eb                                      bl #0x310568
00435f3c  14 10 94 e5                                      ldr r1, [r4, #0x14]
00435f40  10 20 94 e5                                      ldr r2, [r4, #0x10]
00435f44  00 60 a0 e1                                      mov r6, r0
00435f48  02 20 61 e0                                      rsb r2, r1, r2
00435f4c  00 00 52 e3                                      cmp r2, #0
00435f50  00 70 a0 d1                                      movle r7, r0
00435f54  06 00 00 da                                      ble #0x435f74
00435f58  00 70 a0 e3                                      mov r7, #0
00435f5c  07 30 d1 e7                                      ldrb r3, [r1, r7]
00435f60  07 30 c6 e7                                      strb r3, [r6, r7]
00435f64  01 70 87 e2                                      add r7, r7, #1
00435f68  02 00 57 e1                                      cmp r7, r2
00435f6c  fa ff ff 1a                                      bne #0x435f5c
00435f70  07 70 86 e0                                      add r7, r6, r7
00435f74  00 30 a0 e3                                      mov r3, #0
00435f78  00 30 c7 e5                                      strb r3, [r7]
00435f7c  14 00 94 e5                                      ldr r0, [r4, #0x14]
00435f80  04 00 50 e1                                      cmp r0, r4
00435f84  02 00 00 0a                                      beq #0x435f94
00435f88  03 00 50 e1                                      cmp r0, r3
00435f8c  00 00 00 0a                                      beq #0x435f94
00435f90  2e 69 fb eb                                      bl #0x310450
00435f94  05 50 86 e0                                      add r5, r6, r5
00435f98  14 60 84 e5                                      str r6, [r4, #0x14]
00435f9c  00 50 84 e5                                      str r5, [r4]
00435fa0  10 70 84 e5                                      str r7, [r4, #0x10]
00435fa4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00435fa8, declared_size=104, range_size=104, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE9push_backEc
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::push_back(char)
; decoder-mode: arm
00435fa8  70 40 2d e9                                      push {r4, r5, r6, lr}
00435fac  14 30 90 e5                                      ldr r3, [r0, #0x14]
00435fb0  01 50 a0 e1                                      mov r5, r1
00435fb4  00 40 a0 e1                                      mov r4, r0
00435fb8  00 00 53 e1                                      cmp r3, r0
00435fbc  10 30 90 05                                      ldreq r3, [r0, #0x10]
00435fc0  00 10 90 15                                      ldrne r1, [r0]
00435fc4  10 30 90 15                                      ldrne r3, [r0, #0x10]
00435fc8  10 10 80 02                                      addeq r1, r0, #0x10
00435fcc  01 10 63 e0                                      rsb r1, r3, r1
00435fd0  01 00 51 e3                                      cmp r1, #1
00435fd4  07 00 00 0a                                      beq #0x435ff8
00435fd8  00 20 a0 e3                                      mov r2, #0
00435fdc  01 20 c3 e5                                      strb r2, [r3, #1]
00435fe0  10 30 94 e5                                      ldr r3, [r4, #0x10]
00435fe4  00 50 c3 e5                                      strb r5, [r3]
00435fe8  10 30 94 e5                                      ldr r3, [r4, #0x10]
00435fec  01 30 83 e2                                      add r3, r3, #1
00435ff0  10 30 84 e5                                      str r3, [r4, #0x10]
00435ff4  70 80 bd e8                                      pop {r4, r5, r6, pc}
00435ff8  d6 a8 fb eb                                      bl #0x320358
00435ffc  00 10 a0 e1                                      mov r1, r0
00436000  04 00 a0 e1                                      mov r0, r4
00436004  c6 ff ff eb                                      bl #0x435f24
00436008  10 30 94 e5                                      ldr r3, [r4, #0x10]
0043600c  f1 ff ff ea                                      b #0x435fd8

; FUNCTION 0x00491cc0, declared_size=208, range_size=208, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE9_M_assignEPKcS9_.clone.6
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::_M_assign(char const*, char const*) [clone .clone.6]
; decoder-mode: arm
00491cc0  70 40 2d e9                                      push {r4, r5, r6, lr}
00491cc4  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
00491cc8  10 c0 90 e5                                      ldr ip, [r0, #0x10]
00491ccc  00 40 a0 e1                                      mov r4, r0
00491cd0  14 00 90 e5                                      ldr r0, [r0, #0x14]
00491cd4  03 30 8f e0                                      add r3, pc, r3
00491cd8  01 50 63 e0                                      rsb r5, r3, r1
00491cdc  0c 20 60 e0                                      rsb r2, r0, ip
00491ce0  02 00 55 e1                                      cmp r5, r2
00491ce4  01 60 a0 e1                                      mov r6, r1
00491ce8  0c 00 00 8a                                      bhi #0x491d20
00491cec  00 00 55 e3                                      cmp r5, #0
00491cf0  15 00 00 1a                                      bne #0x491d4c
00491cf4  05 30 80 e0                                      add r3, r0, r5
00491cf8  0c 00 53 e1                                      cmp r3, ip
00491cfc  05 00 00 0a                                      beq #0x491d18
00491d00  00 20 dc e5                                      ldrb r2, [ip]
00491d04  03 c0 6c e0                                      rsb ip, ip, r3
00491d08  05 20 c0 e7                                      strb r2, [r0, r5]
00491d0c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00491d10  0c 30 83 e0                                      add r3, r3, ip
00491d14  10 30 84 e5                                      str r3, [r4, #0x10]
00491d18  04 00 a0 e1                                      mov r0, r4
00491d1c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00491d20  00 00 52 e3                                      cmp r2, #0
00491d24  02 10 a0 01                                      moveq r1, r2
00491d28  10 00 00 1a                                      bne #0x491d70
00491d2c  58 30 9f e5                                      ldr r3, [pc, #0x58]
00491d30  06 20 a0 e1                                      mov r2, r6
00491d34  04 00 a0 e1                                      mov r0, r4
00491d38  03 30 8f e0                                      add r3, pc, r3
00491d3c  03 10 81 e0                                      add r1, r1, r3
00491d40  41 3b fa eb                                      bl #0x320a4c
00491d44  04 00 a0 e1                                      mov r0, r4
00491d48  70 80 bd e8                                      pop {r4, r5, r6, pc}
00491d4c  03 10 a0 e1                                      mov r1, r3
00491d50  05 20 a0 e1                                      mov r2, r5
00491d54  c3 f2 f9 eb                                      bl #0x30e868
00491d58  14 00 94 e5                                      ldr r0, [r4, #0x14]
00491d5c  10 c0 94 e5                                      ldr ip, [r4, #0x10]
00491d60  05 30 80 e0                                      add r3, r0, r5
00491d64  0c 00 53 e1                                      cmp r3, ip
00491d68  ea ff ff 0a                                      beq #0x491d18
00491d6c  e3 ff ff ea                                      b #0x491d00
00491d70  03 10 a0 e1                                      mov r1, r3
00491d74  bb f2 f9 eb                                      bl #0x30e868
00491d78  14 30 94 e5                                      ldr r3, [r4, #0x14]
00491d7c  10 10 94 e5                                      ldr r1, [r4, #0x10]
00491d80  01 10 63 e0                                      rsb r1, r3, r1
00491d84  e8 ff ff ea                                      b #0x491d2c
; mapping-symbol data/literal pool
00491d88  34 9b 43 00 d0 9a 43 00                          .byte 0x34, 0x9b, 0x43, 0x00, 0xd0, 0x9a, 0x43, 0x00

; FUNCTION 0x00542ecc, declared_size=80, range_size=80, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE19_M_range_initializeEPKcS9_.clone.5
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::_M_range_initialize(char const*, char const*) [clone .clone.5]
; decoder-mode: arm
00542ecc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00542ed0  40 60 9f e5                                      ldr r6, [pc, #0x40]
00542ed4  01 70 a0 e1                                      mov r7, r1
00542ed8  00 50 a0 e1                                      mov r5, r0
00542edc  06 60 8f e0                                      add r6, pc, r6
00542ee0  01 40 66 e0                                      rsb r4, r6, r1
00542ee4  01 10 84 e2                                      add r1, r4, #1
00542ee8  ae 76 f7 eb                                      bl #0x3209a8
00542eec  06 00 57 e1                                      cmp r7, r6
00542ef0  14 00 95 e5                                      ldr r0, [r5, #0x14]
00542ef4  03 00 00 0a                                      beq #0x542f08
00542ef8  06 10 a0 e1                                      mov r1, r6
00542efc  04 20 a0 e1                                      mov r2, r4
00542f00  58 2e f7 eb                                      bl #0x30e868
00542f04  04 00 80 e0                                      add r0, r0, r4
00542f08  00 30 a0 e3                                      mov r3, #0
00542f0c  10 00 85 e5                                      str r0, [r5, #0x10]
00542f10  00 30 c0 e5                                      strb r3, [r0]
00542f14  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00542f18  34 5e 38 00                                      .byte 0x34, 0x5e, 0x38, 0x00

; FUNCTION 0x00562ce8, declared_size=36, range_size=36, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEEC1ERKS7_
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::basic_string(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
00562ce8  10 40 2d e9                                      push {r4, lr}
00562cec  00 40 a0 e1                                      mov r4, r0
00562cf0  10 00 84 e5                                      str r0, [r4, #0x10]
00562cf4  14 00 84 e5                                      str r0, [r4, #0x14]
00562cf8  10 20 91 e5                                      ldr r2, [r1, #0x10]
00562cfc  14 10 91 e5                                      ldr r1, [r1, #0x14]
00562d00  bb 0c f7 eb                                      bl #0x325ff4
00562d04  04 00 a0 e1                                      mov r0, r4
00562d08  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0056c4c4, declared_size=100, range_size=100, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEEC1ERKS7_jjRKS6_
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::basic_string(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&, unsigned int, unsigned int, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> const&)
; decoder-mode: arm
0056c4c4  10 40 2d e9                                      push {r4, lr}
0056c4c8  00 40 a0 e1                                      mov r4, r0
0056c4cc  10 00 84 e5                                      str r0, [r4, #0x10]
0056c4d0  14 00 84 e5                                      str r0, [r4, #0x14]
0056c4d4  10 e0 91 e5                                      ldr lr, [r1, #0x10]
0056c4d8  14 c0 91 e5                                      ldr ip, [r1, #0x14]
0056c4dc  02 10 a0 e1                                      mov r1, r2
0056c4e0  0e e0 6c e0                                      rsb lr, ip, lr
0056c4e4  0e 00 52 e1                                      cmp r2, lr
0056c4e8  08 00 00 8a                                      bhi #0x56c510
0056c4ec  0e e0 62 e0                                      rsb lr, r2, lr
0056c4f0  0e 00 53 e1                                      cmp r3, lr
0056c4f4  03 30 82 90                                      addls r3, r2, r3
0056c4f8  0e 30 82 80                                      addhi r3, r2, lr
0056c4fc  03 20 8c e0                                      add r2, ip, r3
0056c500  01 10 8c e0                                      add r1, ip, r1
0056c504  ba e6 f6 eb                                      bl #0x325ff4
0056c508  04 00 a0 e1                                      mov r0, r4
0056c50c  10 80 bd e8                                      pop {r4, pc}
0056c510  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0056c514  00 00 8f e0                                      add r0, pc, r0
0056c518  64 72 06 eb                                      bl #0x708eb0
0056c51c  04 00 a0 e1                                      mov r0, r4
0056c520  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0056c524  44 1f 35 00                                      .byte 0x44, 0x1f, 0x35, 0x00

; FUNCTION 0x0056c640, declared_size=116, range_size=116, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNKSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE5rfindEcj.clone.1
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::rfind(char, unsigned int) const [clone .clone.1]
; decoder-mode: arm
0056c640  30 40 2d e9                                      push {r4, r5, lr}
0056c644  14 c0 90 e5                                      ldr ip, [r0, #0x14]
0056c648  10 30 90 e5                                      ldr r3, [r0, #0x10]
0056c64c  24 d0 4d e2                                      sub sp, sp, #0x24
0056c650  00 40 a0 e1                                      mov r4, r0
0056c654  0c 30 53 e0                                      subs r3, r3, ip
0056c658  01 50 a0 e1                                      mov r5, r1
0056c65c  12 00 00 0a                                      beq #0x56c6ac
0056c660  03 e0 8c e0                                      add lr, ip, r3
0056c664  14 00 8d e2                                      add r0, sp, #0x14
0056c668  1c 30 8d e2                                      add r3, sp, #0x1c
0056c66c  0c c0 8d e5                                      str ip, [sp, #0xc]
0056c670  10 10 8d e2                                      add r1, sp, #0x10
0056c674  18 c0 8d e2                                      add ip, sp, #0x18
0056c678  0c 20 8d e2                                      add r2, sp, #0xc
0056c67c  10 e0 8d e5                                      str lr, [sp, #0x10]
0056c680  1c 50 cd e5                                      strb r5, [sp, #0x1c]
0056c684  00 c0 8d e5                                      str ip, [sp]
0056c688  2c 5d fc eb                                      bl #0x483b40
0056c68c  14 00 9d e5                                      ldr r0, [sp, #0x14]
0056c690  14 30 94 e5                                      ldr r3, [r4, #0x14]
0056c694  00 00 53 e1                                      cmp r3, r0
0056c698  01 00 40 12                                      subne r0, r0, #1
0056c69c  00 00 63 10                                      rsbne r0, r3, r0
0056c6a0  01 00 00 0a                                      beq #0x56c6ac
0056c6a4  24 d0 8d e2                                      add sp, sp, #0x24
0056c6a8  30 80 bd e8                                      pop {r4, r5, pc}
0056c6ac  00 00 e0 e3                                      mvn r0, #0
0056c6b0  fb ff ff ea                                      b #0x56c6a4

; FUNCTION 0x0056c844, declared_size=284, range_size=284, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNKSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE12find_last_ofEPKcjj.clone.4
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::find_last_of(char const*, unsigned int, unsigned int) const [clone .clone.4]
; decoder-mode: arm
0056c844  0c 31 9f e5                                      ldr r3, [pc, #0x10c]
0056c848  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0056c84c  08 21 9f e5                                      ldr r2, [pc, #0x108]
0056c850  03 30 8f e0                                      add r3, pc, r3
0056c854  14 10 90 e5                                      ldr r1, [r0, #0x14]
0056c858  02 40 93 e7                                      ldr r4, [r3, r2]
0056c85c  10 c0 90 e5                                      ldr ip, [r0, #0x10]
0056c860  2c d0 4d e2                                      sub sp, sp, #0x2c
0056c864  00 00 94 e5                                      ldr r0, [r4]
0056c868  01 c0 5c e0                                      subs ip, ip, r1
0056c86c  01 60 a0 e1                                      mov r6, r1
0056c870  24 00 8d e5                                      str r0, [sp, #0x24]
0056c874  35 00 00 0a                                      beq #0x56c950
0056c878  0c 00 8d e2                                      add r0, sp, #0xc
0056c87c  0c 50 81 e0                                      add r5, r1, ip
0056c880  28 40 8d e2                                      add r4, sp, #0x28
0056c884  00 c0 a0 e3                                      mov ip, #0
0056c888  28 50 24 e5                                      str r5, [r4, #-0x28]!
0056c88c  04 c0 80 e4                                      str ip, [r0], #4
0056c890  04 c0 80 e4                                      str ip, [r0], #4
0056c894  04 c0 80 e4                                      str ip, [r0], #4
0056c898  04 c0 80 e4                                      str ip, [r0], #4
0056c89c  04 c0 80 e4                                      str ip, [r0], #4
0056c8a0  00 c0 80 e5                                      str ip, [r0]
0056c8a4  10 00 a0 e3                                      mov r0, #0x10
0056c8a8  0f 00 cd e5                                      strb r0, [sp, #0xf]
0056c8ac  05 00 51 e1                                      cmp r1, r5
0056c8b0  7f 00 e0 e3                                      mvn r0, #0x7f
0056c8b4  08 c0 8d e5                                      str ip, [sp, #8]
0056c8b8  04 c0 8d e5                                      str ip, [sp, #4]
0056c8bc  09 00 cd e5                                      strb r0, [sp, #9]
0056c8c0  14 00 00 0a                                      beq #0x56c918
0056c8c4  01 c0 55 e5                                      ldrb ip, [r5, #-1]
0056c8c8  28 70 8d e2                                      add r7, sp, #0x28
0056c8cc  01 00 45 e2                                      sub r0, r5, #1
0056c8d0  ac 61 87 e0                                      add r6, r7, ip, lsr #3
0056c8d4  24 60 56 e5                                      ldrb r6, [r6, #-0x24]
0056c8d8  07 c0 0c e2                                      and ip, ip, #7
0056c8dc  56 cc a0 e1                                      asr ip, r6, ip
0056c8e0  01 00 1c e3                                      tst ip, #1
0056c8e4  17 00 00 1a                                      bne #0x56c948
0056c8e8  01 00 50 e1                                      cmp r0, r1
0056c8ec  00 00 84 e5                                      str r0, [r4]
0056c8f0  07 00 00 0a                                      beq #0x56c914
0056c8f4  01 c0 70 e5                                      ldrb ip, [r0, #-1]!
0056c8f8  28 60 8d e2                                      add r6, sp, #0x28
0056c8fc  ac 51 86 e0                                      add r5, r6, ip, lsr #3
0056c900  24 50 55 e5                                      ldrb r5, [r5, #-0x24]
0056c904  07 c0 0c e2                                      and ip, ip, #7
0056c908  55 cc a0 e1                                      asr ip, r5, ip
0056c90c  01 00 1c e3                                      tst ip, #1
0056c910  f4 ff ff 0a                                      beq #0x56c8e8
0056c914  00 60 9d e5                                      ldr r6, [sp]
0056c918  06 00 51 e1                                      cmp r1, r6
0056c91c  01 60 46 12                                      subne r6, r6, #1
0056c920  06 00 61 10                                      rsbne r0, r1, r6
0056c924  09 00 00 0a                                      beq #0x56c950
0056c928  02 30 93 e7                                      ldr r3, [r3, r2]
0056c92c  24 20 9d e5                                      ldr r2, [sp, #0x24]
0056c930  00 30 93 e5                                      ldr r3, [r3]
0056c934  03 00 52 e1                                      cmp r2, r3
0056c938  01 00 00 1a                                      bne #0x56c944
0056c93c  2c d0 8d e2                                      add sp, sp, #0x2c
0056c940  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0056c944  71 86 f6 eb                                      bl #0x30e310
0056c948  05 60 a0 e1                                      mov r6, r5
0056c94c  f1 ff ff ea                                      b #0x56c918
0056c950  00 00 e0 e3                                      mvn r0, #0
0056c954  f3 ff ff ea                                      b #0x56c928
; mapping-symbol data/literal pool
0056c958  40 82 42 00 ac 40 00 00                          .byte 0x40, 0x82, 0x42, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00576e10, declared_size=104, range_size=104, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE7reserveEj
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::reserve(unsigned int)
; decoder-mode: arm
00576e10  01 00 71 e3                                      cmn r1, #1
00576e14  70 40 2d e9                                      push {r4, r5, r6, lr}
00576e18  01 50 a0 e1                                      mov r5, r1
00576e1c  00 40 a0 e1                                      mov r4, r0
00576e20  0f 00 00 0a                                      beq #0x576e64
00576e24  14 30 94 e5                                      ldr r3, [r4, #0x14]
00576e28  10 10 94 e5                                      ldr r1, [r4, #0x10]
00576e2c  01 10 63 e0                                      rsb r1, r3, r1
00576e30  01 00 55 e1                                      cmp r5, r1
00576e34  01 50 a0 31                                      movlo r5, r1
00576e38  04 00 53 e1                                      cmp r3, r4
00576e3c  00 20 94 15                                      ldrne r2, [r4]
00576e40  01 10 85 e2                                      add r1, r5, #1
00576e44  10 30 a0 03                                      moveq r3, #0x10
00576e48  02 30 63 10                                      rsbne r3, r3, r2
00576e4c  03 00 51 e1                                      cmp r1, r3
00576e50  00 00 00 2a                                      bhs #0x576e58
00576e54  70 80 bd e8                                      pop {r4, r5, r6, pc}
00576e58  04 00 a0 e1                                      mov r0, r4
00576e5c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00576e60  2f fc fa ea                                      b #0x435f24
00576e64  08 00 9f e5                                      ldr r0, [pc, #8]
00576e68  00 00 8f e0                                      add r0, pc, r0
00576e6c  f3 47 06 eb                                      bl #0x708e40
00576e70  eb ff ff ea                                      b #0x576e24
; mapping-symbol data/literal pool
00576e74  f0 75 34 00                                      .byte 0xf0, 0x75, 0x34, 0x00

; FUNCTION 0x005bc8e8, declared_size=236, range_size=236, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE6appendEjc
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::append(unsigned int, char)
; decoder-mode: arm
005bc8e8  70 40 2d e9                                      push {r4, r5, r6, lr}
005bc8ec  00 50 51 e2                                      subs r5, r1, #0
005bc8f0  00 40 a0 e1                                      mov r4, r0
005bc8f4  02 60 a0 e1                                      mov r6, r2
005bc8f8  1e 00 00 0a                                      beq #0x5bc978
005bc8fc  10 30 90 e5                                      ldr r3, [r0, #0x10]
005bc900  14 10 90 e5                                      ldr r1, [r0, #0x14]
005bc904  fe 2f 0f e3                                      movw r2, #0xfffe
005bc908  ff 2f 4f e3                                      movt r2, #0xffff
005bc90c  03 00 61 e0                                      rsb r0, r1, r3
005bc910  02 20 60 e0                                      rsb r2, r0, r2
005bc914  02 00 55 e1                                      cmp r5, r2
005bc918  20 00 00 8a                                      bhi #0x5bc9a0
005bc91c  01 00 54 e1                                      cmp r4, r1
005bc920  00 20 94 15                                      ldrne r2, [r4]
005bc924  10 20 84 02                                      addeq r2, r4, #0x10
005bc928  02 20 63 e0                                      rsb r2, r3, r2
005bc92c  02 00 55 e1                                      cmp r5, r2
005bc930  12 00 00 2a                                      bhs #0x5bc980
005bc934  01 20 83 e2                                      add r2, r3, #1
005bc938  05 10 83 e0                                      add r1, r3, r5
005bc93c  01 20 62 e0                                      rsb r2, r2, r1
005bc940  00 00 52 e3                                      cmp r2, #0
005bc944  04 00 00 da                                      ble #0x5bc95c
005bc948  02 20 83 e0                                      add r2, r3, r2
005bc94c  01 60 e3 e5                                      strb r6, [r3, #1]!
005bc950  02 00 53 e1                                      cmp r3, r2
005bc954  fc ff ff 1a                                      bne #0x5bc94c
005bc958  10 30 94 e5                                      ldr r3, [r4, #0x10]
005bc95c  00 20 a0 e3                                      mov r2, #0
005bc960  05 20 c3 e7                                      strb r2, [r3, r5]
005bc964  10 30 94 e5                                      ldr r3, [r4, #0x10]
005bc968  00 60 c3 e5                                      strb r6, [r3]
005bc96c  10 30 94 e5                                      ldr r3, [r4, #0x10]
005bc970  05 50 83 e0                                      add r5, r3, r5
005bc974  10 50 84 e5                                      str r5, [r4, #0x10]
005bc978  04 00 a0 e1                                      mov r0, r4
005bc97c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005bc980  05 10 a0 e1                                      mov r1, r5
005bc984  04 00 a0 e1                                      mov r0, r4
005bc988  72 8e f5 eb                                      bl #0x320358
005bc98c  00 10 a0 e1                                      mov r1, r0
005bc990  04 00 a0 e1                                      mov r0, r4
005bc994  62 e5 f9 eb                                      bl #0x435f24
005bc998  10 30 94 e5                                      ldr r3, [r4, #0x10]
005bc99c  e4 ff ff ea                                      b #0x5bc934
005bc9a0  28 00 9f e5                                      ldr r0, [pc, #0x28]
005bc9a4  00 00 8f e0                                      add r0, pc, r0
005bc9a8  24 31 05 eb                                      bl #0x708e40
005bc9ac  14 10 94 e5                                      ldr r1, [r4, #0x14]
005bc9b0  10 30 94 e5                                      ldr r3, [r4, #0x10]
005bc9b4  01 00 54 e1                                      cmp r4, r1
005bc9b8  00 20 94 15                                      ldrne r2, [r4]
005bc9bc  10 20 84 02                                      addeq r2, r4, #0x10
005bc9c0  02 20 63 e0                                      rsb r2, r3, r2
005bc9c4  02 00 55 e1                                      cmp r5, r2
005bc9c8  d9 ff ff 3a                                      blo #0x5bc934
005bc9cc  eb ff ff ea                                      b #0x5bc980
; mapping-symbol data/literal pool
005bc9d0  b4 1a 30 00                                      .byte 0xb4, 0x1a, 0x30, 0x00

; FUNCTION 0x0060f494, declared_size=40, range_size=40, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::~basic_string()
; decoder-mode: arm
0060f494  10 40 2d e9                                      push {r4, lr}
0060f498  00 40 a0 e1                                      mov r4, r0
0060f49c  14 00 90 e5                                      ldr r0, [r0, #0x14]
0060f4a0  04 00 50 e1                                      cmp r0, r4
0060f4a4  02 00 00 0a                                      beq #0x60f4b4
0060f4a8  00 00 50 e3                                      cmp r0, #0
0060f4ac  00 00 00 0a                                      beq #0x60f4b4
0060f4b0  e6 03 f4 eb                                      bl #0x310450
0060f4b4  04 00 a0 e1                                      mov r0, r4
0060f4b8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00671c4c, declared_size=80, range_size=80, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE19_M_range_initializeEPKcS9_.clone.4
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::_M_range_initialize(char const*, char const*) [clone .clone.4]
; decoder-mode: arm
00671c4c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00671c50  40 60 9f e5                                      ldr r6, [pc, #0x40]
00671c54  01 70 a0 e1                                      mov r7, r1
00671c58  00 50 a0 e1                                      mov r5, r0
00671c5c  06 60 8f e0                                      add r6, pc, r6
00671c60  01 40 66 e0                                      rsb r4, r6, r1
00671c64  01 10 84 e2                                      add r1, r4, #1
00671c68  4e bb f2 eb                                      bl #0x3209a8
00671c6c  06 00 57 e1                                      cmp r7, r6
00671c70  14 00 95 e5                                      ldr r0, [r5, #0x14]
00671c74  03 00 00 0a                                      beq #0x671c88
00671c78  06 10 a0 e1                                      mov r1, r6
00671c7c  04 20 a0 e1                                      mov r2, r4
00671c80  f8 72 f2 eb                                      bl #0x30e868
00671c84  04 00 80 e0                                      add r0, r0, r4
00671c88  00 30 a0 e3                                      mov r3, #0
00671c8c  10 00 85 e5                                      str r0, [r5, #0x10]
00671c90  00 30 c0 e5                                      strb r3, [r0]
00671c94  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00671c98  54 3c 27 00                                      .byte 0x54, 0x3c, 0x27, 0x00

; FUNCTION 0x006ab13c, declared_size=80, range_size=80, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE19_M_range_initializeEPKcS9_.clone.5
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::_M_range_initialize(char const*, char const*) [clone .clone.5]
; decoder-mode: arm
006ab13c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006ab140  40 60 9f e5                                      ldr r6, [pc, #0x40]
006ab144  01 70 a0 e1                                      mov r7, r1
006ab148  00 50 a0 e1                                      mov r5, r0
006ab14c  06 60 8f e0                                      add r6, pc, r6
006ab150  01 40 66 e0                                      rsb r4, r6, r1
006ab154  01 10 84 e2                                      add r1, r4, #1
006ab158  12 d6 f1 eb                                      bl #0x3209a8
006ab15c  06 00 57 e1                                      cmp r7, r6
006ab160  14 00 95 e5                                      ldr r0, [r5, #0x14]
006ab164  03 00 00 0a                                      beq #0x6ab178
006ab168  06 10 a0 e1                                      mov r1, r6
006ab16c  04 20 a0 e1                                      mov r2, r4
006ab170  bc 8d f1 eb                                      bl #0x30e868
006ab174  04 00 80 e0                                      add r0, r0, r4
006ab178  00 30 a0 e3                                      mov r3, #0
006ab17c  10 00 85 e5                                      str r0, [r5, #0x10]
006ab180  00 30 c0 e5                                      strb r3, [r0]
006ab184  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
006ab188  34 f4 21 00                                      .byte 0x34, 0xf4, 0x21, 0x00

; FUNCTION 0x006b4718, declared_size=40, range_size=40, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEEpLEPKc
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::operator+=(char const*)
; decoder-mode: arm
006b4718  70 40 2d e9                                      push {r4, r5, r6, lr}
006b471c  00 40 a0 e1                                      mov r4, r0
006b4720  01 00 a0 e1                                      mov r0, r1
006b4724  01 50 a0 e1                                      mov r5, r1
006b4728  c9 65 f1 eb                                      bl #0x30de54
006b472c  05 10 a0 e1                                      mov r1, r5
006b4730  00 20 85 e0                                      add r2, r5, r0
006b4734  04 00 a0 e1                                      mov r0, r4
006b4738  70 40 bd e8                                      pop {r4, r5, r6, lr}
006b473c  c2 b0 f1 ea                                      b #0x320a4c

; FUNCTION 0x006ccea8, declared_size=80, range_size=80, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE19_M_range_initializeEPKcS9_.clone.4
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::_M_range_initialize(char const*, char const*) [clone .clone.4]
; decoder-mode: arm
006ccea8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006cceac  40 60 9f e5                                      ldr r6, [pc, #0x40]
006cceb0  01 70 a0 e1                                      mov r7, r1
006cceb4  00 50 a0 e1                                      mov r5, r0
006cceb8  06 60 8f e0                                      add r6, pc, r6
006ccebc  01 40 66 e0                                      rsb r4, r6, r1
006ccec0  01 10 84 e2                                      add r1, r4, #1
006ccec4  b7 4e f1 eb                                      bl #0x3209a8
006ccec8  06 00 57 e1                                      cmp r7, r6
006ccecc  14 00 95 e5                                      ldr r0, [r5, #0x14]
006cced0  03 00 00 0a                                      beq #0x6ccee4
006cced4  06 10 a0 e1                                      mov r1, r6
006cced8  04 20 a0 e1                                      mov r2, r4
006ccedc  61 06 f1 eb                                      bl #0x30e868
006ccee0  04 00 80 e0                                      add r0, r0, r4
006ccee4  00 30 a0 e3                                      mov r3, #0
006ccee8  10 00 85 e5                                      str r0, [r5, #0x10]
006cceec  00 30 c0 e5                                      strb r3, [r0]
006ccef0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
006ccef4  c8 58 1f 00                                      .byte 0xc8, 0x58, 0x1f, 0x00

; FUNCTION 0x006cde94, declared_size=80, range_size=80, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS1_6memory13E_MEMORY_HINTE0EEEE19_M_range_initializeEPKcS9_.clone.4
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::_M_range_initialize(char const*, char const*) [clone .clone.4]
; decoder-mode: arm
006cde94  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006cde98  40 60 9f e5                                      ldr r6, [pc, #0x40]
006cde9c  01 70 a0 e1                                      mov r7, r1
006cdea0  00 50 a0 e1                                      mov r5, r0
006cdea4  06 60 8f e0                                      add r6, pc, r6
006cdea8  01 40 66 e0                                      rsb r4, r6, r1
006cdeac  01 10 84 e2                                      add r1, r4, #1
006cdeb0  bc 4a f1 eb                                      bl #0x3209a8
006cdeb4  06 00 57 e1                                      cmp r7, r6
006cdeb8  14 00 95 e5                                      ldr r0, [r5, #0x14]
006cdebc  03 00 00 0a                                      beq #0x6cded0
006cdec0  06 10 a0 e1                                      mov r1, r6
006cdec4  04 20 a0 e1                                      mov r2, r4
006cdec8  66 02 f1 eb                                      bl #0x30e868
006cdecc  04 00 80 e0                                      add r0, r0, r4
006cded0  00 30 a0 e3                                      mov r3, #0
006cded4  10 00 85 e5                                      str r0, [r5, #0x10]
006cded8  00 30 c0 e5                                      strb r3, [r0]
006cdedc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
006cdee0  74 05 21 00                                      .byte 0x74, 0x05, 0x21, 0x00
