; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00579ea4, declared_size=124, range_size=124, mode=arm
; class-group: std::vector<unsigned char, glitch::core::SAllocator<unsigned char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIhN6glitch4core10SAllocatorIhLNS0_6memory13E_MEMORY_HINTE0EEEE7reserveEj
; demangled: std::vector<unsigned char, glitch::core::SAllocator<unsigned char, (glitch::memory::E_MEMORY_HINT)0> >::reserve(unsigned int)
; decoder-mode: arm
00579ea4  70 40 2d e9                                      push {r4, r5, r6, lr}
00579ea8  00 20 90 e5                                      ldr r2, [r0]
00579eac  08 30 90 e5                                      ldr r3, [r0, #8]
00579eb0  08 d0 4d e2                                      sub sp, sp, #8
00579eb4  00 40 a0 e1                                      mov r4, r0
00579eb8  03 30 62 e0                                      rsb r3, r2, r3
00579ebc  03 00 51 e1                                      cmp r1, r3
00579ec0  04 10 8d e5                                      str r1, [sp, #4]
00579ec4  0e 00 00 9a                                      bls #0x579f04
00579ec8  04 30 90 e5                                      ldr r3, [r0, #4]
00579ecc  00 00 52 e3                                      cmp r2, #0
00579ed0  03 50 62 e0                                      rsb r5, r2, r3
00579ed4  0c 00 00 0a                                      beq #0x579f0c
00579ed8  04 10 8d e2                                      add r1, sp, #4
00579edc  e2 ff ff eb                                      bl #0x579e6c
00579ee0  00 60 a0 e1                                      mov r6, r0
00579ee4  00 00 94 e5                                      ldr r0, [r4]
00579ee8  58 59 f6 eb                                      bl #0x310450
00579eec  04 30 9d e5                                      ldr r3, [sp, #4]
00579ef0  05 50 86 e0                                      add r5, r6, r5
00579ef4  04 50 84 e5                                      str r5, [r4, #4]
00579ef8  03 30 86 e0                                      add r3, r6, r3
00579efc  08 30 84 e5                                      str r3, [r4, #8]
00579f00  00 60 84 e5                                      str r6, [r4]
00579f04  08 d0 8d e2                                      add sp, sp, #8
00579f08  70 80 bd e8                                      pop {r4, r5, r6, pc}
00579f0c  01 00 a0 e1                                      mov r0, r1
00579f10  02 10 a0 e1                                      mov r1, r2
00579f14  93 59 f6 eb                                      bl #0x310568
00579f18  00 60 a0 e1                                      mov r6, r0
00579f1c  f2 ff ff ea                                      b #0x579eec

; FUNCTION 0x0057a14c, declared_size=288, range_size=288, mode=arm
; class-group: std::vector<unsigned char, glitch::core::SAllocator<unsigned char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIhN6glitch4core10SAllocatorIhLNS0_6memory13E_MEMORY_HINTE0EEEE18_M_fill_insert_auxEPhjRKhRKSt12__false_type
; demangled: std::vector<unsigned char, glitch::core::SAllocator<unsigned char, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(unsigned char*, unsigned int, unsigned char const&, std::__false_type const&)
; decoder-mode: arm
0057a14c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0057a150  00 c0 90 e5                                      ldr ip, [r0]
0057a154  14 d0 4d e2                                      sub sp, sp, #0x14
0057a158  00 40 a0 e1                                      mov r4, r0
0057a15c  0c 00 53 e1                                      cmp r3, ip
0057a160  03 60 a0 e1                                      mov r6, r3
0057a164  01 70 a0 e1                                      mov r7, r1
0057a168  02 80 a0 e1                                      mov r8, r2
0057a16c  04 50 90 35                                      ldrlo r5, [r0, #4]
0057a170  09 00 00 3a                                      blo #0x57a19c
0057a174  04 50 90 e5                                      ldr r5, [r0, #4]
0057a178  05 00 53 e1                                      cmp r3, r5
0057a17c  06 00 00 2a                                      bhs #0x57a19c
0057a180  00 c0 d3 e5                                      ldrb ip, [r3]
0057a184  10 30 8d e2                                      add r3, sp, #0x10
0057a188  01 c0 63 e5                                      strb ip, [r3, #-1]!
0057a18c  0c c0 8d e2                                      add ip, sp, #0xc
0057a190  00 c0 8d e5                                      str ip, [sp]
0057a194  ec ff ff eb                                      bl #0x57a14c
0057a198  18 00 00 ea                                      b #0x57a200
0057a19c  05 a0 67 e0                                      rsb sl, r7, r5
0057a1a0  0a 00 58 e1                                      cmp r8, sl
0057a1a4  17 00 00 2a                                      bhs #0x57a208
0057a1a8  05 30 68 e0                                      rsb r3, r8, r5
0057a1ac  05 00 53 e1                                      cmp r3, r5
0057a1b0  05 a0 a0 01                                      moveq sl, r5
0057a1b4  05 00 00 0a                                      beq #0x57a1d0
0057a1b8  03 10 a0 e1                                      mov r1, r3
0057a1bc  05 20 63 e0                                      rsb r2, r3, r5
0057a1c0  05 00 a0 e1                                      mov r0, r5
0057a1c4  03 a0 a0 e1                                      mov sl, r3
0057a1c8  a6 51 f6 eb                                      bl #0x30e868
0057a1cc  04 30 94 e5                                      ldr r3, [r4, #4]
0057a1d0  0a 20 67 e0                                      rsb r2, r7, sl
0057a1d4  08 30 83 e0                                      add r3, r3, r8
0057a1d8  00 00 52 e3                                      cmp r2, #0
0057a1dc  04 30 84 e5                                      str r3, [r4, #4]
0057a1e0  02 00 00 da                                      ble #0x57a1f0
0057a1e4  05 00 62 e0                                      rsb r0, r2, r5
0057a1e8  07 10 a0 e1                                      mov r1, r7
0057a1ec  51 4f f6 eb                                      bl #0x30df38
0057a1f0  07 00 a0 e1                                      mov r0, r7
0057a1f4  00 10 d6 e5                                      ldrb r1, [r6]
0057a1f8  08 20 a0 e1                                      mov r2, r8
0057a1fc  97 50 f6 eb                                      bl #0x30e460
0057a200  14 d0 8d e2                                      add sp, sp, #0x14
0057a204  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0057a208  08 80 6a e0                                      rsb r8, sl, r8
0057a20c  08 00 85 e0                                      add r0, r5, r8
0057a210  00 10 65 e0                                      rsb r1, r5, r0
0057a214  00 00 51 e3                                      cmp r1, #0
0057a218  05 00 00 da                                      ble #0x57a234
0057a21c  00 30 a0 e3                                      mov r3, #0
0057a220  00 20 d6 e5                                      ldrb r2, [r6]
0057a224  03 20 c5 e7                                      strb r2, [r5, r3]
0057a228  01 30 83 e2                                      add r3, r3, #1
0057a22c  01 00 53 e1                                      cmp r3, r1
0057a230  fa ff ff 1a                                      bne #0x57a220
0057a234  05 00 57 e1                                      cmp r7, r5
0057a238  04 00 84 e5                                      str r0, [r4, #4]
0057a23c  03 00 00 0a                                      beq #0x57a250
0057a240  07 10 a0 e1                                      mov r1, r7
0057a244  0a 20 a0 e1                                      mov r2, sl
0057a248  86 51 f6 eb                                      bl #0x30e868
0057a24c  04 00 94 e5                                      ldr r0, [r4, #4]
0057a250  0a 00 80 e0                                      add r0, r0, sl
0057a254  04 00 84 e5                                      str r0, [r4, #4]
0057a258  00 10 d6 e5                                      ldrb r1, [r6]
0057a25c  07 00 a0 e1                                      mov r0, r7
0057a260  0a 20 a0 e1                                      mov r2, sl
0057a264  7d 50 f6 eb                                      bl #0x30e460
0057a268  e4 ff ff ea                                      b #0x57a200

; FUNCTION 0x0057d85c, declared_size=240, range_size=240, mode=arm
; class-group: std::vector<unsigned char, glitch::core::SAllocator<unsigned char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIhN6glitch4core10SAllocatorIhLNS0_6memory13E_MEMORY_HINTE0EEEE14_M_fill_insertEPhjRKh
; demangled: std::vector<unsigned char, glitch::core::SAllocator<unsigned char, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert(unsigned char*, unsigned int, unsigned char const&)
; decoder-mode: arm
0057d85c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0057d860  00 50 52 e2                                      subs r5, r2, #0
0057d864  10 d0 4d e2                                      sub sp, sp, #0x10
0057d868  00 40 a0 e1                                      mov r4, r0
0057d86c  01 60 a0 e1                                      mov r6, r1
0057d870  03 90 a0 e1                                      mov sb, r3
0057d874  29 00 00 0a                                      beq #0x57d920
0057d878  00 50 90 e9                                      ldmib r0, {ip, lr}
0057d87c  0e e0 6c e0                                      rsb lr, ip, lr
0057d880  0e 00 55 e1                                      cmp r5, lr
0057d884  27 00 00 9a                                      bls #0x57d928
0057d888  00 80 90 e5                                      ldr r8, [r0]
0057d88c  0c 80 68 e0                                      rsb r8, r8, ip
0057d890  08 30 e0 e1                                      mvn r3, r8
0057d894  03 00 55 e1                                      cmp r5, r3
0057d898  26 00 00 8a                                      bhi #0x57d938
0057d89c  08 00 55 e1                                      cmp r5, r8
0057d8a0  05 70 88 20                                      addhs r7, r8, r5
0057d8a4  08 70 88 30                                      addlo r7, r8, r8
0057d8a8  07 00 58 e1                                      cmp r8, r7
0057d8ac  00 70 e0 83                                      mvnhi r7, #0
0057d8b0  00 10 a0 e3                                      mov r1, #0
0057d8b4  07 00 a0 e1                                      mov r0, r7
0057d8b8  2a 4b f6 eb                                      bl #0x310568
0057d8bc  00 10 94 e5                                      ldr r1, [r4]
0057d8c0  00 80 a0 e1                                      mov r8, r0
0057d8c4  01 a0 56 e0                                      subs sl, r6, r1
0057d8c8  00 00 a0 01                                      moveq r0, r0
0057d8cc  02 00 00 0a                                      beq #0x57d8dc
0057d8d0  0a 20 a0 e1                                      mov r2, sl
0057d8d4  97 41 f6 eb                                      bl #0x30df38
0057d8d8  0a 00 80 e0                                      add r0, r0, sl
0057d8dc  05 50 80 e0                                      add r5, r0, r5
0057d8e0  00 10 d9 e5                                      ldrb r1, [sb]
0057d8e4  05 20 60 e0                                      rsb r2, r0, r5
0057d8e8  dc 42 f6 eb                                      bl #0x30e460
0057d8ec  04 a0 94 e5                                      ldr sl, [r4, #4]
0057d8f0  06 a0 5a e0                                      subs sl, sl, r6
0057d8f4  04 00 00 0a                                      beq #0x57d90c
0057d8f8  05 00 a0 e1                                      mov r0, r5
0057d8fc  06 10 a0 e1                                      mov r1, r6
0057d900  0a 20 a0 e1                                      mov r2, sl
0057d904  8b 41 f6 eb                                      bl #0x30df38
0057d908  0a 50 80 e0                                      add r5, r0, sl
0057d90c  00 00 94 e5                                      ldr r0, [r4]
0057d910  07 70 88 e0                                      add r7, r8, r7
0057d914  cd 4a f6 eb                                      bl #0x310450
0057d918  a0 00 84 e9                                      stmib r4, {r5, r7}
0057d91c  00 80 84 e5                                      str r8, [r4]
0057d920  10 d0 8d e2                                      add sp, sp, #0x10
0057d924  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0057d928  0c c0 8d e2                                      add ip, sp, #0xc
0057d92c  00 c0 8d e5                                      str ip, [sp]
0057d930  05 f2 ff eb                                      bl #0x57a14c
0057d934  f9 ff ff ea                                      b #0x57d920
0057d938  08 00 9f e5                                      ldr r0, [pc, #8]
0057d93c  00 00 8f e0                                      add r0, pc, r0
0057d940  3e 2d 06 eb                                      bl #0x708e40
0057d944  d4 ff ff ea                                      b #0x57d89c
; mapping-symbol data/literal pool
0057d948  2c 0b 34 00                                      .byte 0x2c, 0x0b, 0x34, 0x00

; FUNCTION 0x0057d94c, declared_size=64, range_size=64, mode=arm
; class-group: std::vector<unsigned char, glitch::core::SAllocator<unsigned char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIhN6glitch4core10SAllocatorIhLNS0_6memory13E_MEMORY_HINTE0EEEE6resizeEjRKh
; demangled: std::vector<unsigned char, glitch::core::SAllocator<unsigned char, (glitch::memory::E_MEMORY_HINT)0> >::resize(unsigned int, unsigned char const&)
; decoder-mode: arm
0057d94c  30 00 2d e9                                      push {r4, r5}
0057d950  04 40 90 e5                                      ldr r4, [r0, #4]
0057d954  00 50 90 e5                                      ldr r5, [r0]
0057d958  02 30 a0 e1                                      mov r3, r2
0057d95c  04 20 65 e0                                      rsb r2, r5, r4
0057d960  02 00 51 e1                                      cmp r1, r2
0057d964  04 00 00 2a                                      bhs #0x57d97c
0057d968  01 50 85 e0                                      add r5, r5, r1
0057d96c  04 00 55 e1                                      cmp r5, r4
0057d970  04 50 80 15                                      strne r5, [r0, #4]
0057d974  30 00 bd e8                                      pop {r4, r5}
0057d978  1e ff 2f e1                                      bx lr
0057d97c  01 20 62 e0                                      rsb r2, r2, r1
0057d980  04 10 a0 e1                                      mov r1, r4
0057d984  30 00 bd e8                                      pop {r4, r5}
0057d988  b3 ff ff ea                                      b #0x57d85c
