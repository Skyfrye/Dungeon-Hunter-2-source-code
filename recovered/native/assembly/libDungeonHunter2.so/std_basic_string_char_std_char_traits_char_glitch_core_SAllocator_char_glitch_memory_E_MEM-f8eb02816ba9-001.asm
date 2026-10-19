; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00561b68, declared_size=116, range_size=116, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >* std::priv
; alias: _ZNSt4priv6__copyIPKSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS3_6memory13E_MEMORY_HINTE0EEEEPS9_iEET0_T_SE_SD_RKSt26random_access_iterator_tagPT1_
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >* std::priv::__copy<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const*, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >*, int>(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const*, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const*, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00561b68  01 30 60 e0                                      rsb r3, r0, r1
00561b6c  c3 31 a0 e1                                      asr r3, r3, #3
00561b70  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00561b74  03 81 83 e0                                      add r8, r3, r3, lsl #2
00561b78  00 40 a0 e1                                      mov r4, r0
00561b7c  08 82 88 e0                                      add r8, r8, r8, lsl #4
00561b80  02 70 a0 e1                                      mov r7, r2
00561b84  08 84 88 e0                                      add r8, r8, r8, lsl #8
00561b88  08 88 88 e0                                      add r8, r8, r8, lsl #16
00561b8c  88 80 83 e0                                      add r8, r3, r8, lsl #1
00561b90  00 00 58 e3                                      cmp r8, #0
00561b94  0e 00 00 da                                      ble #0x561bd4
00561b98  08 60 a0 e1                                      mov r6, r8
00561b9c  02 50 a0 e1                                      mov r5, r2
00561ba0  00 00 00 ea                                      b #0x561ba8
00561ba4  18 40 84 e2                                      add r4, r4, #0x18
00561ba8  05 00 54 e1                                      cmp r4, r5
00561bac  05 00 a0 e1                                      mov r0, r5
00561bb0  02 00 00 0a                                      beq #0x561bc0
00561bb4  14 10 94 e5                                      ldr r1, [r4, #0x14]
00561bb8  10 20 94 e5                                      ldr r2, [r4, #0x10]
00561bbc  f1 fb f6 eb                                      bl #0x320b88
00561bc0  01 60 56 e2                                      subs r6, r6, #1
00561bc4  18 50 85 e2                                      add r5, r5, #0x18
00561bc8  f5 ff ff 1a                                      bne #0x561ba4
00561bcc  18 30 a0 e3                                      mov r3, #0x18
00561bd0  93 78 27 e0                                      mla r7, r3, r8, r7
00561bd4  07 00 a0 e1                                      mov r0, r7
00561bd8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005e7568, declared_size=436, range_size=436, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >* std::priv
; alias: _ZNSt4priv6__findIPSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS3_6memory13E_MEMORY_HINTE0EEEES9_EET_SB_SB_RKT0_RKSt26random_access_iterator_tag
; demangled: std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >* std::priv::__find<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >*, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >*, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >*, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&, std::random_access_iterator_tag const&)
; decoder-mode: arm
005e7568  01 30 60 e0                                      rsb r3, r0, r1
005e756c  c3 31 a0 e1                                      asr r3, r3, #3
005e7570  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005e7574  02 80 a0 e1                                      mov r8, r2
005e7578  03 21 83 e0                                      add r2, r3, r3, lsl #2
005e757c  00 40 a0 e1                                      mov r4, r0
005e7580  02 22 82 e0                                      add r2, r2, r2, lsl #4
005e7584  01 a0 a0 e1                                      mov sl, r1
005e7588  02 24 82 e0                                      add r2, r2, r2, lsl #8
005e758c  02 28 82 e0                                      add r2, r2, r2, lsl #16
005e7590  82 30 83 e0                                      add r3, r3, r2, lsl #1
005e7594  43 61 a0 e1                                      asr r6, r3, #2
005e7598  00 00 56 e3                                      cmp r6, #0
005e759c  3e 00 00 da                                      ble #0x5e769c
005e75a0  14 70 98 e5                                      ldr r7, [r8, #0x14]
005e75a4  10 50 98 e5                                      ldr r5, [r8, #0x10]
005e75a8  05 50 67 e0                                      rsb r5, r7, r5
005e75ac  11 00 00 ea                                      b #0x5e75f8
005e75b0  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
005e75b4  28 30 94 e5                                      ldr r3, [r4, #0x28]
005e75b8  03 30 60 e0                                      rsb r3, r0, r3
005e75bc  05 00 53 e1                                      cmp r3, r5
005e75c0  18 00 00 0a                                      beq #0x5e7628
005e75c4  44 00 94 e5                                      ldr r0, [r4, #0x44]
005e75c8  40 30 94 e5                                      ldr r3, [r4, #0x40]
005e75cc  03 30 60 e0                                      rsb r3, r0, r3
005e75d0  05 00 53 e1                                      cmp r3, r5
005e75d4  1b 00 00 0a                                      beq #0x5e7648
005e75d8  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
005e75dc  58 30 94 e5                                      ldr r3, [r4, #0x58]
005e75e0  03 30 60 e0                                      rsb r3, r0, r3
005e75e4  05 00 53 e1                                      cmp r3, r5
005e75e8  1d 00 00 0a                                      beq #0x5e7664
005e75ec  01 60 56 e2                                      subs r6, r6, #1
005e75f0  60 40 84 e2                                      add r4, r4, #0x60
005e75f4  21 00 00 0a                                      beq #0x5e7680
005e75f8  14 00 94 e5                                      ldr r0, [r4, #0x14]
005e75fc  10 30 94 e5                                      ldr r3, [r4, #0x10]
005e7600  03 30 60 e0                                      rsb r3, r0, r3
005e7604  05 00 53 e1                                      cmp r3, r5
005e7608  e8 ff ff 1a                                      bne #0x5e75b0
005e760c  07 10 a0 e1                                      mov r1, r7
005e7610  05 20 a0 e1                                      mov r2, r5
005e7614  f1 9b f4 eb                                      bl #0x30e5e0
005e7618  00 00 50 e3                                      cmp r0, #0
005e761c  e3 ff ff 1a                                      bne #0x5e75b0
005e7620  04 00 a0 e1                                      mov r0, r4
005e7624  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005e7628  07 10 a0 e1                                      mov r1, r7
005e762c  05 20 a0 e1                                      mov r2, r5
005e7630  ea 9b f4 eb                                      bl #0x30e5e0
005e7634  00 00 50 e3                                      cmp r0, #0
005e7638  e1 ff ff 1a                                      bne #0x5e75c4
005e763c  18 40 84 e2                                      add r4, r4, #0x18
005e7640  04 00 a0 e1                                      mov r0, r4
005e7644  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005e7648  07 10 a0 e1                                      mov r1, r7
005e764c  05 20 a0 e1                                      mov r2, r5
005e7650  e2 9b f4 eb                                      bl #0x30e5e0
005e7654  00 00 50 e3                                      cmp r0, #0
005e7658  de ff ff 1a                                      bne #0x5e75d8
005e765c  30 40 84 e2                                      add r4, r4, #0x30
005e7660  ee ff ff ea                                      b #0x5e7620
005e7664  07 10 a0 e1                                      mov r1, r7
005e7668  05 20 a0 e1                                      mov r2, r5
005e766c  db 9b f4 eb                                      bl #0x30e5e0
005e7670  00 00 50 e3                                      cmp r0, #0
005e7674  dc ff ff 1a                                      bne #0x5e75ec
005e7678  48 40 84 e2                                      add r4, r4, #0x48
005e767c  e7 ff ff ea                                      b #0x5e7620
005e7680  0a 20 64 e0                                      rsb r2, r4, sl
005e7684  c2 21 a0 e1                                      asr r2, r2, #3
005e7688  02 31 82 e0                                      add r3, r2, r2, lsl #2
005e768c  03 32 83 e0                                      add r3, r3, r3, lsl #4
005e7690  03 34 83 e0                                      add r3, r3, r3, lsl #8
005e7694  03 38 83 e0                                      add r3, r3, r3, lsl #16
005e7698  83 30 82 e0                                      add r3, r2, r3, lsl #1
005e769c  02 00 53 e3                                      cmp r3, #2
005e76a0  0b 00 00 0a                                      beq #0x5e76d4
005e76a4  03 00 53 e3                                      cmp r3, #3
005e76a8  03 00 00 0a                                      beq #0x5e76bc
005e76ac  01 00 53 e3                                      cmp r3, #1
005e76b0  0d 00 00 0a                                      beq #0x5e76ec
005e76b4  0a 40 a0 e1                                      mov r4, sl
005e76b8  d8 ff ff ea                                      b #0x5e7620
005e76bc  04 00 a0 e1                                      mov r0, r4
005e76c0  08 10 a0 e1                                      mov r1, r8
005e76c4  e8 f7 ff eb                                      bl #0x5e566c
005e76c8  00 00 50 e3                                      cmp r0, #0
005e76cc  d3 ff ff 1a                                      bne #0x5e7620
005e76d0  18 40 84 e2                                      add r4, r4, #0x18
005e76d4  04 00 a0 e1                                      mov r0, r4
005e76d8  08 10 a0 e1                                      mov r1, r8
005e76dc  e2 f7 ff eb                                      bl #0x5e566c
005e76e0  00 00 50 e3                                      cmp r0, #0
005e76e4  cd ff ff 1a                                      bne #0x5e7620
005e76e8  18 40 84 e2                                      add r4, r4, #0x18
005e76ec  10 30 98 e5                                      ldr r3, [r8, #0x10]
005e76f0  14 00 94 e5                                      ldr r0, [r4, #0x14]
005e76f4  10 20 94 e5                                      ldr r2, [r4, #0x10]
005e76f8  14 10 98 e5                                      ldr r1, [r8, #0x14]
005e76fc  02 20 60 e0                                      rsb r2, r0, r2
005e7700  03 30 61 e0                                      rsb r3, r1, r3
005e7704  03 00 52 e1                                      cmp r2, r3
005e7708  e9 ff ff 1a                                      bne #0x5e76b4
005e770c  b3 9b f4 eb                                      bl #0x30e5e0
005e7710  00 00 50 e3                                      cmp r0, #0
005e7714  e6 ff ff 1a                                      bne #0x5e76b4
005e7718  c0 ff ff ea                                      b #0x5e7620
