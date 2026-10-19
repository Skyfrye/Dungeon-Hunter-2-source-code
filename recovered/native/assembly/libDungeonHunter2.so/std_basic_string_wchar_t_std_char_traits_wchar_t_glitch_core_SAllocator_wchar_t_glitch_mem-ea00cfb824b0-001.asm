; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003202f0, declared_size=104, range_size=104, mode=arm
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEE20_M_compute_next_sizeEj
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
003202f0  70 40 2d e9                                      push {r4, r5, r6, lr}
003202f4  44 20 90 e5                                      ldr r2, [r0, #0x44]
003202f8  40 40 90 e5                                      ldr r4, [r0, #0x40]
003202fc  fe 3f 0f e3                                      movw r3, #0xfffe
00320300  ff 3f 43 e3                                      movt r3, #0x3fff
00320304  04 40 62 e0                                      rsb r4, r2, r4
00320308  44 41 a0 e1                                      asr r4, r4, #2
0032030c  03 30 64 e0                                      rsb r3, r4, r3
00320310  01 00 53 e1                                      cmp r3, r1
00320314  01 50 a0 e1                                      mov r5, r1
00320318  09 00 00 3a                                      blo #0x320344
0032031c  01 00 84 e2                                      add r0, r4, #1
00320320  05 00 54 e1                                      cmp r4, r5
00320324  04 00 80 20                                      addhs r0, r0, r4
00320328  05 00 80 30                                      addlo r0, r0, r5
0032032c  0b 01 70 e3                                      cmn r0, #0xc0000002
00320330  01 00 00 8a                                      bhi #0x32033c
00320334  04 00 50 e1                                      cmp r0, r4
00320338  00 00 00 2a                                      bhs #0x320340
0032033c  07 01 e0 e3                                      mvn r0, #0xc0000001
00320340  70 80 bd e8                                      pop {r4, r5, r6, pc}
00320344  08 00 9f e5                                      ldr r0, [pc, #8]
00320348  00 00 8f e0                                      add r0, pc, r0
0032034c  bb a2 0f eb                                      bl #0x708e40
00320350  f1 ff ff ea                                      b #0x32031c
; mapping-symbol data/literal pool
00320354  10 e1 59 00                                      .byte 0x10, 0xe1, 0x59, 0x00

; FUNCTION 0x00320c48, declared_size=348, range_size=348, mode=arm
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEE9_M_appendEPKwS9_
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >::_M_append(wchar_t const*, wchar_t const*)
; decoder-mode: arm
00320c48  02 00 51 e1                                      cmp r1, r2
00320c4c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00320c50  01 40 a0 e1                                      mov r4, r1
00320c54  00 60 a0 e1                                      mov r6, r0
00320c58  22 00 00 0a                                      beq #0x320ce8
00320c5c  44 30 90 e5                                      ldr r3, [r0, #0x44]
00320c60  02 50 61 e0                                      rsb r5, r1, r2
00320c64  45 51 a0 e1                                      asr r5, r5, #2
00320c68  00 00 53 e1                                      cmp r3, r0
00320c6c  40 10 90 05                                      ldreq r1, [r0, #0x40]
00320c70  00 30 90 15                                      ldrne r3, [r0]
00320c74  40 10 90 15                                      ldrne r1, [r0, #0x40]
00320c78  01 30 60 00                                      rsbeq r3, r0, r1
00320c7c  43 31 a0 01                                      asreq r3, r3, #2
00320c80  03 30 61 10                                      rsbne r3, r1, r3
00320c84  10 30 63 02                                      rsbeq r3, r3, #0x10
00320c88  43 31 a0 11                                      asrne r3, r3, #2
00320c8c  03 00 55 e1                                      cmp r5, r3
00320c90  05 70 a0 e1                                      mov r7, r5
00320c94  15 00 00 2a                                      bhs #0x320cf0
00320c98  04 30 84 e2                                      add r3, r4, #4
00320c9c  02 20 63 e0                                      rsb r2, r3, r2
00320ca0  42 21 a0 e1                                      asr r2, r2, #2
00320ca4  00 00 52 e3                                      cmp r2, #0
00320ca8  01 30 a0 e1                                      mov r3, r1
00320cac  05 00 00 da                                      ble #0x320cc8
00320cb0  04 30 a0 e1                                      mov r3, r4
00320cb4  04 00 b3 e5                                      ldr r0, [r3, #4]!
00320cb8  01 20 52 e2                                      subs r2, r2, #1
00320cbc  04 00 a1 e5                                      str r0, [r1, #4]!
00320cc0  fb ff ff 1a                                      bne #0x320cb4
00320cc4  40 30 96 e5                                      ldr r3, [r6, #0x40]
00320cc8  00 20 a0 e3                                      mov r2, #0
00320ccc  05 21 83 e7                                      str r2, [r3, r5, lsl #2]
00320cd0  40 30 96 e5                                      ldr r3, [r6, #0x40]
00320cd4  00 20 94 e5                                      ldr r2, [r4]
00320cd8  00 20 83 e5                                      str r2, [r3]
00320cdc  40 30 96 e5                                      ldr r3, [r6, #0x40]
00320ce0  05 51 83 e0                                      add r5, r3, r5, lsl #2
00320ce4  40 50 86 e5                                      str r5, [r6, #0x40]
00320ce8  06 00 a0 e1                                      mov r0, r6
00320cec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00320cf0  05 10 a0 e1                                      mov r1, r5
00320cf4  7d fd ff eb                                      bl #0x3202f0
00320cf8  00 81 a0 e1                                      lsl r8, r0, #2
00320cfc  08 00 a0 e1                                      mov r0, r8
00320d00  00 10 a0 e3                                      mov r1, #0
00320d04  17 be ff eb                                      bl #0x310568
00320d08  40 a0 96 e5                                      ldr sl, [r6, #0x40]
00320d0c  00 90 a0 e1                                      mov sb, r0
00320d10  44 00 96 e5                                      ldr r0, [r6, #0x44]
00320d14  0a a0 60 e0                                      rsb sl, r0, sl
00320d18  4a a1 a0 e1                                      asr sl, sl, #2
00320d1c  00 00 5a e3                                      cmp sl, #0
00320d20  09 a0 a0 d1                                      movle sl, sb
00320d24  07 00 00 da                                      ble #0x320d48
00320d28  0a 20 a0 e1                                      mov r2, sl
00320d2c  00 30 a0 e3                                      mov r3, #0
00320d30  03 10 90 e7                                      ldr r1, [r0, r3]
00320d34  01 20 52 e2                                      subs r2, r2, #1
00320d38  03 10 89 e7                                      str r1, [sb, r3]
00320d3c  04 30 83 e2                                      add r3, r3, #4
00320d40  fa ff ff 1a                                      bne #0x320d30
00320d44  0a a1 89 e0                                      add sl, sb, sl, lsl #2
00320d48  00 00 55 e3                                      cmp r5, #0
00320d4c  06 00 00 da                                      ble #0x320d6c
00320d50  00 30 a0 e3                                      mov r3, #0
00320d54  03 20 94 e7                                      ldr r2, [r4, r3]
00320d58  01 50 55 e2                                      subs r5, r5, #1
00320d5c  03 20 8a e7                                      str r2, [sl, r3]
00320d60  04 30 83 e2                                      add r3, r3, #4
00320d64  fa ff ff 1a                                      bne #0x320d54
00320d68  07 a1 8a e0                                      add sl, sl, r7, lsl #2
00320d6c  00 30 a0 e3                                      mov r3, #0
00320d70  00 30 8a e5                                      str r3, [sl]
00320d74  44 00 96 e5                                      ldr r0, [r6, #0x44]
00320d78  00 00 56 e1                                      cmp r6, r0
00320d7c  02 00 00 0a                                      beq #0x320d8c
00320d80  03 00 50 e1                                      cmp r0, r3
00320d84  00 00 00 0a                                      beq #0x320d8c
00320d88  b0 bd ff eb                                      bl #0x310450
00320d8c  08 80 89 e0                                      add r8, sb, r8
00320d90  00 80 86 e5                                      str r8, [r6]
00320d94  40 a0 86 e5                                      str sl, [r6, #0x40]
00320d98  44 90 86 e5                                      str sb, [r6, #0x44]
00320d9c  06 00 a0 e1                                      mov r0, r6
00320da0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00323150, declared_size=80, range_size=80, mode=arm
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEE5eraseEPwS8_
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >::erase(wchar_t*, wchar_t*)
; decoder-mode: arm
00323150  02 00 51 e1                                      cmp r1, r2
00323154  70 40 2d e9                                      push {r4, r5, r6, lr}
00323158  01 40 a0 e1                                      mov r4, r1
0032315c  02 50 a0 e1                                      mov r5, r2
00323160  00 60 a0 e1                                      mov r6, r0
00323164  0b 00 00 0a                                      beq #0x323198
00323168  40 20 90 e5                                      ldr r2, [r0, #0x40]
0032316c  01 00 a0 e1                                      mov r0, r1
00323170  05 10 a0 e1                                      mov r1, r5
00323174  02 20 65 e0                                      rsb r2, r5, r2
00323178  42 21 a0 e1                                      asr r2, r2, #2
0032317c  01 20 82 e2                                      add r2, r2, #1
00323180  55 ad ff eb                                      bl #0x30e6dc
00323184  40 30 96 e5                                      ldr r3, [r6, #0x40]
00323188  05 50 64 e0                                      rsb r5, r4, r5
0032318c  03 50 c5 e3                                      bic r5, r5, #3
00323190  03 50 65 e0                                      rsb r5, r5, r3
00323194  40 50 86 e5                                      str r5, [r6, #0x40]
00323198  04 00 a0 e1                                      mov r0, r4
0032319c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003231a0, declared_size=128, range_size=128, mode=arm
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEE9_M_assignEPKwS9_
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >::_M_assign(wchar_t const*, wchar_t const*)
; decoder-mode: arm
003231a0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003231a4  00 40 a0 e1                                      mov r4, r0
003231a8  40 30 94 e5                                      ldr r3, [r4, #0x40]
003231ac  44 00 90 e5                                      ldr r0, [r0, #0x44]
003231b0  02 50 61 e0                                      rsb r5, r1, r2
003231b4  02 70 a0 e1                                      mov r7, r2
003231b8  03 30 60 e0                                      rsb r3, r0, r3
003231bc  45 51 a0 e1                                      asr r5, r5, #2
003231c0  43 21 a0 e1                                      asr r2, r3, #2
003231c4  02 00 55 e1                                      cmp r5, r2
003231c8  01 60 a0 e1                                      mov r6, r1
003231cc  0a 00 00 9a                                      bls #0x3231fc
003231d0  88 ab ff eb                                      bl #0x30dff8
003231d4  40 10 94 e5                                      ldr r1, [r4, #0x40]
003231d8  44 30 94 e5                                      ldr r3, [r4, #0x44]
003231dc  07 20 a0 e1                                      mov r2, r7
003231e0  04 00 a0 e1                                      mov r0, r4
003231e4  01 10 63 e0                                      rsb r1, r3, r1
003231e8  03 10 c1 e3                                      bic r1, r1, #3
003231ec  01 10 86 e0                                      add r1, r6, r1
003231f0  94 f6 ff eb                                      bl #0x320c48
003231f4  04 00 a0 e1                                      mov r0, r4
003231f8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003231fc  05 20 a0 e1                                      mov r2, r5
00323200  7c ab ff eb                                      bl #0x30dff8
00323204  44 10 94 e5                                      ldr r1, [r4, #0x44]
00323208  04 00 a0 e1                                      mov r0, r4
0032320c  40 20 94 e5                                      ldr r2, [r4, #0x40]
00323210  05 11 81 e0                                      add r1, r1, r5, lsl #2
00323214  cd ff ff eb                                      bl #0x323150
00323218  04 00 a0 e1                                      mov r0, r4
0032321c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00325e2c, declared_size=76, range_size=76, mode=arm
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEE19_M_range_initializeEPKwS9_
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >::_M_range_initialize(wchar_t const*, wchar_t const*)
; decoder-mode: arm
00325e2c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00325e30  02 50 61 e0                                      rsb r5, r1, r2
00325e34  01 40 a0 e1                                      mov r4, r1
00325e38  45 11 a0 e1                                      asr r1, r5, #2
00325e3c  02 70 a0 e1                                      mov r7, r2
00325e40  01 10 81 e2                                      add r1, r1, #1
00325e44  00 60 a0 e1                                      mov r6, r0
00325e48  b4 ea ff eb                                      bl #0x320920
00325e4c  04 00 57 e1                                      cmp r7, r4
00325e50  44 00 96 e5                                      ldr r0, [r6, #0x44]
00325e54  03 00 00 0a                                      beq #0x325e68
00325e58  04 10 a0 e1                                      mov r1, r4
00325e5c  05 20 a0 e1                                      mov r2, r5
00325e60  80 a2 ff eb                                      bl #0x30e868
00325e64  05 00 80 e0                                      add r0, r0, r5
00325e68  00 30 a0 e3                                      mov r3, #0
00325e6c  40 00 86 e5                                      str r0, [r6, #0x40]
00325e70  00 30 80 e5                                      str r3, [r0]
00325e74  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00325efc, declared_size=52, range_size=52, mode=arm
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEEC1EPKwRKS6_
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >::basic_string(wchar_t const*, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> const&)
; decoder-mode: arm
00325efc  70 40 2d e9                                      push {r4, r5, r6, lr}
00325f00  00 40 a0 e1                                      mov r4, r0
00325f04  40 00 84 e5                                      str r0, [r4, #0x40]
00325f08  44 00 84 e5                                      str r0, [r4, #0x44]
00325f0c  01 00 a0 e1                                      mov r0, r1
00325f10  01 50 a0 e1                                      mov r5, r1
00325f14  5b a3 ff eb                                      bl #0x30ec88
00325f18  05 10 a0 e1                                      mov r1, r5
00325f1c  00 21 85 e0                                      add r2, r5, r0, lsl #2
00325f20  04 00 a0 e1                                      mov r0, r4
00325f24  c0 ff ff eb                                      bl #0x325e2c
00325f28  04 00 a0 e1                                      mov r0, r4
00325f2c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0053c054, declared_size=40, range_size=40, mode=arm
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEEaSEPKw
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >::operator=(wchar_t const*)
; decoder-mode: arm
0053c054  70 40 2d e9                                      push {r4, r5, r6, lr}
0053c058  00 40 a0 e1                                      mov r4, r0
0053c05c  01 00 a0 e1                                      mov r0, r1
0053c060  01 50 a0 e1                                      mov r5, r1
0053c064  07 4b f7 eb                                      bl #0x30ec88
0053c068  05 10 a0 e1                                      mov r1, r5
0053c06c  00 21 85 e0                                      add r2, r5, r0, lsl #2
0053c070  04 00 a0 e1                                      mov r0, r4
0053c074  70 40 bd e8                                      pop {r4, r5, r6, lr}
0053c078  48 9c f7 ea                                      b #0x3231a0

; FUNCTION 0x00542368, declared_size=40, range_size=40, mode=arm
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >::~basic_string()
; decoder-mode: arm
00542368  10 40 2d e9                                      push {r4, lr}
0054236c  00 40 a0 e1                                      mov r4, r0
00542370  44 00 90 e5                                      ldr r0, [r0, #0x44]
00542374  04 00 50 e1                                      cmp r0, r4
00542378  02 00 00 0a                                      beq #0x542388
0054237c  00 00 50 e3                                      cmp r0, #0
00542380  00 00 00 0a                                      beq #0x542388
00542384  31 38 f7 eb                                      bl #0x310450
00542388  04 00 a0 e1                                      mov r0, r4
0054238c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00542f1c, declared_size=56, range_size=56, mode=arm
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEEC1ERKS7_jjRKS6_.clone.6
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >::basic_string(std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> > const&, unsigned int, unsigned int, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> const&) [clone .clone.6]
; decoder-mode: arm
00542f1c  10 40 2d e9                                      push {r4, lr}
00542f20  00 40 a0 e1                                      mov r4, r0
00542f24  40 00 84 e5                                      str r0, [r4, #0x40]
00542f28  44 00 84 e5                                      str r0, [r4, #0x44]
00542f2c  40 30 91 e5                                      ldr r3, [r1, #0x40]
00542f30  44 10 91 e5                                      ldr r1, [r1, #0x44]
00542f34  03 30 61 e0                                      rsb r3, r1, r3
00542f38  43 31 a0 e1                                      asr r3, r3, #2
00542f3c  02 00 53 e1                                      cmp r3, r2
00542f40  03 20 a0 31                                      movlo r2, r3
00542f44  02 21 81 e0                                      add r2, r1, r2, lsl #2
00542f48  b7 8b f7 eb                                      bl #0x325e2c
00542f4c  04 00 a0 e1                                      mov r0, r4
00542f50  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0054e46c, declared_size=108, range_size=108, mode=arm
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEEC1EPKwRKS6_.clone.2
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >::basic_string(wchar_t const*, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> const&) [clone .clone.2]
; decoder-mode: arm
0054e46c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0054e470  5c 60 9f e5                                      ldr r6, [pc, #0x5c]
0054e474  00 40 a0 e1                                      mov r4, r0
0054e478  40 00 84 e5                                      str r0, [r4, #0x40]
0054e47c  06 60 8f e0                                      add r6, pc, r6
0054e480  44 00 84 e5                                      str r0, [r4, #0x44]
0054e484  06 00 a0 e1                                      mov r0, r6
0054e488  fe 01 f7 eb                                      bl #0x30ec88
0054e48c  00 71 86 e0                                      add r7, r6, r0, lsl #2
0054e490  07 50 66 e0                                      rsb r5, r6, r7
0054e494  45 11 a0 e1                                      asr r1, r5, #2
0054e498  04 00 a0 e1                                      mov r0, r4
0054e49c  01 10 81 e2                                      add r1, r1, #1
0054e4a0  1e 49 f7 eb                                      bl #0x320920
0054e4a4  06 00 57 e1                                      cmp r7, r6
0054e4a8  44 00 94 e5                                      ldr r0, [r4, #0x44]
0054e4ac  03 00 00 0a                                      beq #0x54e4c0
0054e4b0  06 10 a0 e1                                      mov r1, r6
0054e4b4  05 20 a0 e1                                      mov r2, r5
0054e4b8  ea 00 f7 eb                                      bl #0x30e868
0054e4bc  05 00 80 e0                                      add r0, r0, r5
0054e4c0  00 30 a0 e3                                      mov r3, #0
0054e4c4  40 00 84 e5                                      str r0, [r4, #0x40]
0054e4c8  00 30 80 e5                                      str r3, [r0]
0054e4cc  04 00 a0 e1                                      mov r0, r4
0054e4d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0054e4d4  cc 05 39 00                                      .byte 0xcc, 0x05, 0x39, 0x00

; FUNCTION 0x005501f0, declared_size=140, range_size=140, mode=arm
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEE10_M_reserveEj
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >::_M_reserve(unsigned int)
; decoder-mode: arm
005501f0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005501f4  01 51 a0 e1                                      lsl r5, r1, #2
005501f8  00 40 a0 e1                                      mov r4, r0
005501fc  00 10 a0 e3                                      mov r1, #0
00550200  05 00 a0 e1                                      mov r0, r5
00550204  d7 00 f7 eb                                      bl #0x310568
00550208  40 70 94 e5                                      ldr r7, [r4, #0x40]
0055020c  00 60 a0 e1                                      mov r6, r0
00550210  44 00 94 e5                                      ldr r0, [r4, #0x44]
00550214  07 70 60 e0                                      rsb r7, r0, r7
00550218  47 71 a0 e1                                      asr r7, r7, #2
0055021c  00 00 57 e3                                      cmp r7, #0
00550220  06 70 a0 d1                                      movle r7, r6
00550224  07 00 00 da                                      ble #0x550248
00550228  07 20 a0 e1                                      mov r2, r7
0055022c  00 30 a0 e3                                      mov r3, #0
00550230  03 10 90 e7                                      ldr r1, [r0, r3]
00550234  01 20 52 e2                                      subs r2, r2, #1
00550238  03 10 86 e7                                      str r1, [r6, r3]
0055023c  04 30 83 e2                                      add r3, r3, #4
00550240  fa ff ff 1a                                      bne #0x550230
00550244  07 71 86 e0                                      add r7, r6, r7, lsl #2
00550248  00 30 a0 e3                                      mov r3, #0
0055024c  00 30 87 e5                                      str r3, [r7]
00550250  44 00 94 e5                                      ldr r0, [r4, #0x44]
00550254  04 00 50 e1                                      cmp r0, r4
00550258  02 00 00 0a                                      beq #0x550268
0055025c  03 00 50 e1                                      cmp r0, r3
00550260  00 00 00 0a                                      beq #0x550268
00550264  79 00 f7 eb                                      bl #0x310450
00550268  05 50 86 e0                                      add r5, r6, r5
0055026c  44 60 84 e5                                      str r6, [r4, #0x44]
00550270  00 50 84 e5                                      str r5, [r4]
00550274  40 70 84 e5                                      str r7, [r4, #0x40]
00550278  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0055027c, declared_size=116, range_size=116, mode=arm
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEE9push_backEw
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >::push_back(wchar_t)
; decoder-mode: arm
0055027c  70 40 2d e9                                      push {r4, r5, r6, lr}
00550280  44 30 90 e5                                      ldr r3, [r0, #0x44]
00550284  01 50 a0 e1                                      mov r5, r1
00550288  00 40 a0 e1                                      mov r4, r0
0055028c  00 00 53 e1                                      cmp r3, r0
00550290  40 30 90 05                                      ldreq r3, [r0, #0x40]
00550294  00 10 90 15                                      ldrne r1, [r0]
00550298  40 30 90 15                                      ldrne r3, [r0, #0x40]
0055029c  03 10 60 00                                      rsbeq r1, r0, r3
005502a0  41 11 a0 01                                      asreq r1, r1, #2
005502a4  01 10 63 10                                      rsbne r1, r3, r1
005502a8  10 10 61 02                                      rsbeq r1, r1, #0x10
005502ac  41 11 a0 11                                      asrne r1, r1, #2
005502b0  01 00 51 e3                                      cmp r1, #1
005502b4  07 00 00 0a                                      beq #0x5502d8
005502b8  00 20 a0 e3                                      mov r2, #0
005502bc  04 20 83 e5                                      str r2, [r3, #4]
005502c0  40 30 94 e5                                      ldr r3, [r4, #0x40]
005502c4  00 50 83 e5                                      str r5, [r3]
005502c8  40 30 94 e5                                      ldr r3, [r4, #0x40]
005502cc  04 30 83 e2                                      add r3, r3, #4
005502d0  40 30 84 e5                                      str r3, [r4, #0x40]
005502d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005502d8  04 40 f7 eb                                      bl #0x3202f0
005502dc  00 10 a0 e1                                      mov r1, r0
005502e0  04 00 a0 e1                                      mov r0, r4
005502e4  c1 ff ff eb                                      bl #0x5501f0
005502e8  40 30 94 e5                                      ldr r3, [r4, #0x40]
005502ec  f1 ff ff ea                                      b #0x5502b8

; FUNCTION 0x005560e0, declared_size=80, range_size=80, mode=arm
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEE10_M_compareEPKwS9_S9_S9_
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >::_M_compare(wchar_t const*, wchar_t const*, wchar_t const*, wchar_t const*)
; decoder-mode: arm
005560e0  01 10 60 e0                                      rsb r1, r0, r1
005560e4  03 30 62 e0                                      rsb r3, r2, r3
005560e8  70 40 2d e9                                      push {r4, r5, r6, lr}
005560ec  02 c0 a0 e1                                      mov ip, r2
005560f0  41 51 a0 e1                                      asr r5, r1, #2
005560f4  43 41 a0 e1                                      asr r4, r3, #2
005560f8  05 00 54 e1                                      cmp r4, r5
005560fc  04 20 a0 b1                                      movlt r2, r4
00556100  05 20 a0 a1                                      movge r2, r5
00556104  0c 10 a0 e1                                      mov r1, ip
00556108  2c e3 f6 eb                                      bl #0x30edc0
0055610c  00 00 50 e3                                      cmp r0, #0
00556110  03 00 00 1a                                      bne #0x556124
00556114  04 00 55 e1                                      cmp r5, r4
00556118  02 00 00 ba                                      blt #0x556128
0055611c  00 00 a0 d3                                      movle r0, #0
00556120  01 00 a0 c3                                      movgt r0, #1
00556124  70 80 bd e8                                      pop {r4, r5, r6, pc}
00556128  00 00 e0 e3                                      mvn r0, #0
0055612c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00572b34, declared_size=36, range_size=36, mode=arm
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEEC1ERKS7_
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >::basic_string(std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
00572b34  10 40 2d e9                                      push {r4, lr}
00572b38  00 40 a0 e1                                      mov r4, r0
00572b3c  40 00 84 e5                                      str r0, [r4, #0x40]
00572b40  44 00 84 e5                                      str r0, [r4, #0x44]
00572b44  40 20 91 e5                                      ldr r2, [r1, #0x40]
00572b48  44 10 91 e5                                      ldr r1, [r1, #0x44]
00572b4c  b6 cc f6 eb                                      bl #0x325e2c
00572b50  04 00 a0 e1                                      mov r0, r4
00572b54  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00572c3c, declared_size=104, range_size=104, mode=arm
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEEC1ERKS7_jjRKS6_
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >::basic_string(std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> > const&, unsigned int, unsigned int, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> const&)
; decoder-mode: arm
00572c3c  10 40 2d e9                                      push {r4, lr}
00572c40  00 40 a0 e1                                      mov r4, r0
00572c44  40 00 84 e5                                      str r0, [r4, #0x40]
00572c48  44 00 84 e5                                      str r0, [r4, #0x44]
00572c4c  40 e0 91 e5                                      ldr lr, [r1, #0x40]
00572c50  44 c0 91 e5                                      ldr ip, [r1, #0x44]
00572c54  02 10 a0 e1                                      mov r1, r2
00572c58  0e e0 6c e0                                      rsb lr, ip, lr
00572c5c  4e e1 a0 e1                                      asr lr, lr, #2
00572c60  0e 00 52 e1                                      cmp r2, lr
00572c64  08 00 00 8a                                      bhi #0x572c8c
00572c68  0e e0 62 e0                                      rsb lr, r2, lr
00572c6c  0e 00 53 e1                                      cmp r3, lr
00572c70  03 30 82 90                                      addls r3, r2, r3
00572c74  0e 30 82 80                                      addhi r3, r2, lr
00572c78  03 21 8c e0                                      add r2, ip, r3, lsl #2
00572c7c  01 11 8c e0                                      add r1, ip, r1, lsl #2
00572c80  69 cc f6 eb                                      bl #0x325e2c
00572c84  04 00 a0 e1                                      mov r0, r4
00572c88  10 80 bd e8                                      pop {r4, pc}
00572c8c  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00572c90  00 00 8f e0                                      add r0, pc, r0
00572c94  85 58 06 eb                                      bl #0x708eb0
00572c98  04 00 a0 e1                                      mov r0, r4
00572c9c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00572ca0  c8 b7 34 00                                      .byte 0xc8, 0xb7, 0x34, 0x00

; FUNCTION 0x00573244, declared_size=104, range_size=104, mode=arm
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNKSbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEE4findEwj.clone.12
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >::find(wchar_t, unsigned int) const [clone .clone.12]
; decoder-mode: arm
00573244  10 40 2d e9                                      push {r4, lr}
00573248  00 40 a0 e1                                      mov r4, r0
0057324c  40 30 90 e5                                      ldr r3, [r0, #0x40]
00573250  44 00 90 e5                                      ldr r0, [r0, #0x44]
00573254  08 d0 4d e2                                      sub sp, sp, #8
00573258  03 20 60 e0                                      rsb r2, r0, r3
0057325c  42 01 51 e1                                      cmp r1, r2, asr #2
00573260  0f 00 00 2a                                      bhs #0x5732a4
00573264  08 20 8d e2                                      add r2, sp, #8
00573268  26 c0 a0 e3                                      mov ip, #0x26
0057326c  08 c0 22 e5                                      str ip, [r2, #-8]!
00573270  01 01 80 e0                                      add r0, r0, r1, lsl #2
00573274  0d 20 a0 e1                                      mov r2, sp
00573278  03 10 a0 e1                                      mov r1, r3
0057327c  04 30 8d e2                                      add r3, sp, #4
00573280  93 fd ff eb                                      bl #0x5728d4
00573284  40 30 94 e5                                      ldr r3, [r4, #0x40]
00573288  03 00 50 e1                                      cmp r0, r3
0057328c  04 00 00 0a                                      beq #0x5732a4
00573290  44 30 94 e5                                      ldr r3, [r4, #0x44]
00573294  00 00 63 e0                                      rsb r0, r3, r0
00573298  40 01 a0 e1                                      asr r0, r0, #2
0057329c  08 d0 8d e2                                      add sp, sp, #8
005732a0  10 80 bd e8                                      pop {r4, pc}
005732a4  00 00 e0 e3                                      mvn r0, #0
005732a8  fb ff ff ea                                      b #0x57329c

; FUNCTION 0x006b0060, declared_size=36, range_size=36, mode=arm
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEEaSERKS7_
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >::operator=(std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
006b0060  00 00 51 e1                                      cmp r1, r0
006b0064  10 40 2d e9                                      push {r4, lr}
006b0068  00 40 a0 e1                                      mov r4, r0
006b006c  02 00 00 0a                                      beq #0x6b007c
006b0070  40 20 91 e5                                      ldr r2, [r1, #0x40]
006b0074  44 10 91 e5                                      ldr r1, [r1, #0x44]
006b0078  48 cc f1 eb                                      bl #0x3231a0
006b007c  04 00 a0 e1                                      mov r0, r4
006b0080  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006b0084, declared_size=40, range_size=40, mode=arm
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEE6appendEPKw
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >::append(wchar_t const*)
; decoder-mode: arm
006b0084  70 40 2d e9                                      push {r4, r5, r6, lr}
006b0088  00 40 a0 e1                                      mov r4, r0
006b008c  01 00 a0 e1                                      mov r0, r1
006b0090  01 50 a0 e1                                      mov r5, r1
006b0094  fb 7a f1 eb                                      bl #0x30ec88
006b0098  05 10 a0 e1                                      mov r1, r5
006b009c  00 21 85 e0                                      add r2, r5, r0, lsl #2
006b00a0  04 00 a0 e1                                      mov r0, r4
006b00a4  70 40 bd e8                                      pop {r4, r5, r6, lr}
006b00a8  e6 c2 f1 ea                                      b #0x320c48

; FUNCTION 0x006b0170, declared_size=36, range_size=36, mode=arm
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNKSbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS1_6memory13E_MEMORY_HINTE0EEEE6substrEjj
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >::substr(unsigned int, unsigned int) const
; decoder-mode: arm
006b0170  10 40 2d e9                                      push {r4, lr}
006b0174  10 d0 4d e2                                      sub sp, sp, #0x10
006b0178  00 40 a0 e1                                      mov r4, r0
006b017c  0c c0 8d e2                                      add ip, sp, #0xc
006b0180  00 c0 8d e5                                      str ip, [sp]
006b0184  ac 0a fb eb                                      bl #0x572c3c
006b0188  04 00 a0 e1                                      mov r0, r4
006b018c  10 d0 8d e2                                      add sp, sp, #0x10
006b0190  10 80 bd e8                                      pop {r4, pc}
