; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00563dd8, declared_size=384, range_size=384, mode=arm
; class-group: std::vector<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEENS4_IS8_LS6_0EEEE22_M_insert_overflow_auxEPS8_RKS8_RKSt12__false_typejb.clone.10
; demangled: std::vector<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >*, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&, std::__false_type const&, unsigned int, bool) [clone .clone.10]
; decoder-mode: arm
00563dd8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00563ddc  00 40 a0 e1                                      mov r4, r0
00563de0  01 10 90 e8                                      ldm r0, {r0, ip}
00563de4  01 80 a0 e1                                      mov r8, r1
00563de8  aa 3a 0a e3                                      movw r3, #0xaaaa
00563dec  0c 00 60 e0                                      rsb r0, r0, ip
00563df0  c0 01 a0 e1                                      asr r0, r0, #3
00563df4  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00563df8  00 11 80 e0                                      add r1, r0, r0, lsl #2
00563dfc  02 90 a0 e1                                      mov sb, r2
00563e00  01 12 81 e0                                      add r1, r1, r1, lsl #4
00563e04  01 14 81 e0                                      add r1, r1, r1, lsl #8
00563e08  01 18 81 e0                                      add r1, r1, r1, lsl #16
00563e0c  81 00 80 e0                                      add r0, r0, r1, lsl #1
00563e10  01 00 50 e3                                      cmp r0, #1
00563e14  00 20 80 20                                      addhs r2, r0, r0
00563e18  01 20 80 32                                      addlo r2, r0, #1
00563e1c  03 00 52 e1                                      cmp r2, r3
00563e20  01 00 00 8a                                      bhi #0x563e2c
00563e24  02 00 50 e1                                      cmp r0, r2
00563e28  47 00 00 9a                                      bls #0x563f4c
00563e2c  0f a0 e0 e3                                      mvn sl, #0xf
00563e30  0a 00 a0 e1                                      mov r0, sl
00563e34  00 10 a0 e3                                      mov r1, #0
00563e38  ca b1 f6 eb                                      bl #0x310568
00563e3c  00 c0 94 e5                                      ldr ip, [r4]
00563e40  00 50 a0 e1                                      mov r5, r0
00563e44  08 80 6c e0                                      rsb r8, ip, r8
00563e48  c8 31 a0 e1                                      asr r3, r8, #3
00563e4c  03 81 83 e0                                      add r8, r3, r3, lsl #2
00563e50  08 82 88 e0                                      add r8, r8, r8, lsl #4
00563e54  08 84 88 e0                                      add r8, r8, r8, lsl #8
00563e58  08 88 88 e0                                      add r8, r8, r8, lsl #16
00563e5c  88 80 83 e0                                      add r8, r3, r8, lsl #1
00563e60  00 00 58 e3                                      cmp r8, #0
00563e64  00 80 a0 d1                                      movle r8, r0
00563e68  1f 00 00 da                                      ble #0x563eec
00563e6c  08 60 a0 e1                                      mov r6, r8
00563e70  00 e0 a0 e1                                      mov lr, r0
00563e74  00 70 a0 e3                                      mov r7, #0
00563e78  09 00 00 ea                                      b #0x563ea4
00563e7c  14 30 8e e5                                      str r3, [lr, #0x14]
00563e80  10 30 9c e5                                      ldr r3, [ip, #0x10]
00563e84  01 60 56 e2                                      subs r6, r6, #1
00563e88  10 30 8e e5                                      str r3, [lr, #0x10]
00563e8c  00 30 9c e5                                      ldr r3, [ip]
00563e90  00 30 8e e5                                      str r3, [lr]
00563e94  14 70 8c e5                                      str r7, [ip, #0x14]
00563e98  18 e0 8e e2                                      add lr, lr, #0x18
00563e9c  10 00 00 0a                                      beq #0x563ee4
00563ea0  18 c0 8c e2                                      add ip, ip, #0x18
00563ea4  14 30 9c e5                                      ldr r3, [ip, #0x14]
00563ea8  14 30 8e e5                                      str r3, [lr, #0x14]
00563eac  14 30 9c e5                                      ldr r3, [ip, #0x14]
00563eb0  0c 00 53 e1                                      cmp r3, ip
00563eb4  f0 ff ff 1a                                      bne #0x563e7c
00563eb8  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
00563ebc  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
00563ec0  10 20 9c e5                                      ldr r2, [ip, #0x10]
00563ec4  14 30 9c e5                                      ldr r3, [ip, #0x14]
00563ec8  01 60 56 e2                                      subs r6, r6, #1
00563ecc  14 e0 8e e5                                      str lr, [lr, #0x14]
00563ed0  02 30 63 e0                                      rsb r3, r3, r2
00563ed4  03 30 8e e0                                      add r3, lr, r3
00563ed8  10 30 8e e5                                      str r3, [lr, #0x10]
00563edc  18 e0 8e e2                                      add lr, lr, #0x18
00563ee0  ee ff ff 1a                                      bne #0x563ea0
00563ee4  18 30 a0 e3                                      mov r3, #0x18
00563ee8  93 58 28 e0                                      mla r8, r3, r8, r5
00563eec  08 00 a0 e1                                      mov r0, r8
00563ef0  09 10 a0 e1                                      mov r1, sb
00563ef4  7b fb ff eb                                      bl #0x562ce8
00563ef8  04 60 94 e5                                      ldr r6, [r4, #4]
00563efc  00 70 94 e5                                      ldr r7, [r4]
00563f00  18 80 88 e2                                      add r8, r8, #0x18
00563f04  07 00 56 e1                                      cmp r6, r7
00563f08  0a 00 00 0a                                      beq #0x563f38
00563f0c  18 60 46 e2                                      sub r6, r6, #0x18
00563f10  14 30 96 e5                                      ldr r3, [r6, #0x14]
00563f14  06 00 53 e1                                      cmp r3, r6
00563f18  03 00 a0 e1                                      mov r0, r3
00563f1c  02 00 00 0a                                      beq #0x563f2c
00563f20  00 00 53 e3                                      cmp r3, #0
00563f24  00 00 00 0a                                      beq #0x563f2c
00563f28  48 b1 f6 eb                                      bl #0x310450
00563f2c  06 00 57 e1                                      cmp r7, r6
00563f30  f5 ff ff 1a                                      bne #0x563f0c
00563f34  00 70 94 e5                                      ldr r7, [r4]
00563f38  07 00 a0 e1                                      mov r0, r7
00563f3c  0a a0 85 e0                                      add sl, r5, sl
00563f40  42 b1 f6 eb                                      bl #0x310450
00563f44  20 05 84 e8                                      stm r4, {r5, r8, sl}
00563f48  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00563f4c  18 a0 a0 e3                                      mov sl, #0x18
00563f50  9a 02 0a e0                                      mul sl, sl, r2
00563f54  b5 ff ff ea                                      b #0x563e30

; FUNCTION 0x00563f58, declared_size=496, range_size=496, mode=arm
; class-group: std::vector<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEENS4_IS8_LS6_0EEEEaSERKSA_
; demangled: std::vector<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::operator=(std::vector<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
00563f58  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00563f5c  00 00 51 e1                                      cmp r1, r0
00563f60  18 d0 4d e2                                      sub sp, sp, #0x18
00563f64  01 50 a0 e1                                      mov r5, r1
00563f68  00 40 a0 e1                                      mov r4, r0
00563f6c  35 00 00 0a                                      beq #0x564048
00563f70  04 30 91 e5                                      ldr r3, [r1, #4]
00563f74  00 c0 91 e5                                      ldr ip, [r1]
00563f78  00 20 90 e5                                      ldr r2, [r0]
00563f7c  08 10 90 e5                                      ldr r1, [r0, #8]
00563f80  03 e0 6c e0                                      rsb lr, ip, r3
00563f84  ce e1 a0 e1                                      asr lr, lr, #3
00563f88  01 10 62 e0                                      rsb r1, r2, r1
00563f8c  c1 11 a0 e1                                      asr r1, r1, #3
00563f90  0e 61 8e e0                                      add r6, lr, lr, lsl #2
00563f94  01 71 81 e0                                      add r7, r1, r1, lsl #2
00563f98  06 62 86 e0                                      add r6, r6, r6, lsl #4
00563f9c  07 72 87 e0                                      add r7, r7, r7, lsl #4
00563fa0  06 64 86 e0                                      add r6, r6, r6, lsl #8
00563fa4  07 74 87 e0                                      add r7, r7, r7, lsl #8
00563fa8  06 68 86 e0                                      add r6, r6, r6, lsl #16
00563fac  07 78 87 e0                                      add r7, r7, r7, lsl #16
00563fb0  86 60 8e e0                                      add r6, lr, r6, lsl #1
00563fb4  87 10 81 e0                                      add r1, r1, r7, lsl #1
00563fb8  01 00 56 e1                                      cmp r6, r1
00563fbc  45 00 00 8a                                      bhi #0x5640d8
00563fc0  04 00 90 e5                                      ldr r0, [r0, #4]
00563fc4  00 00 62 e0                                      rsb r0, r2, r0
00563fc8  c0 01 a0 e1                                      asr r0, r0, #3
00563fcc  00 11 80 e0                                      add r1, r0, r0, lsl #2
00563fd0  01 12 81 e0                                      add r1, r1, r1, lsl #4
00563fd4  01 14 81 e0                                      add r1, r1, r1, lsl #8
00563fd8  01 18 81 e0                                      add r1, r1, r1, lsl #16
00563fdc  81 10 80 e0                                      add r1, r0, r1, lsl #1
00563fe0  01 00 56 e1                                      cmp r6, r1
00563fe4  1a 00 00 8a                                      bhi #0x564054
00563fe8  0c 00 a0 e1                                      mov r0, ip
00563fec  03 10 a0 e1                                      mov r1, r3
00563ff0  00 c0 a0 e3                                      mov ip, #0
00563ff4  14 30 8d e2                                      add r3, sp, #0x14
00563ff8  00 c0 8d e5                                      str ip, [sp]
00563ffc  d9 f6 ff eb                                      bl #0x561b68
00564000  04 70 94 e5                                      ldr r7, [r4, #4]
00564004  00 50 a0 e1                                      mov r5, r0
00564008  00 00 57 e1                                      cmp r7, r0
0056400c  09 00 00 0a                                      beq #0x564038
00564010  14 30 95 e5                                      ldr r3, [r5, #0x14]
00564014  05 00 53 e1                                      cmp r3, r5
00564018  03 00 a0 e1                                      mov r0, r3
0056401c  18 50 85 e2                                      add r5, r5, #0x18
00564020  02 00 00 0a                                      beq #0x564030
00564024  00 00 53 e3                                      cmp r3, #0
00564028  00 00 00 0a                                      beq #0x564030
0056402c  07 b1 f6 eb                                      bl #0x310450
00564030  05 00 57 e1                                      cmp r7, r5
00564034  f5 ff ff 1a                                      bne #0x564010
00564038  00 90 94 e5                                      ldr sb, [r4]
0056403c  18 30 a0 e3                                      mov r3, #0x18
00564040  93 96 26 e0                                      mla r6, r3, r6, sb
00564044  04 60 84 e5                                      str r6, [r4, #4]
00564048  04 00 a0 e1                                      mov r0, r4
0056404c  18 d0 8d e2                                      add sp, sp, #0x18
00564050  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00564054  18 70 a0 e3                                      mov r7, #0x18
00564058  97 c1 21 e0                                      mla r1, r7, r1, ip
0056405c  00 80 a0 e3                                      mov r8, #0
00564060  10 30 8d e2                                      add r3, sp, #0x10
00564064  0c 00 a0 e1                                      mov r0, ip
00564068  00 80 8d e5                                      str r8, [sp]
0056406c  bd f6 ff eb                                      bl #0x561b68
00564070  00 06 94 e8                                      ldm r4, {sb, sl}
00564074  09 00 95 e8                                      ldm r5, {r0, r3}
00564078  0a 20 69 e0                                      rsb r2, sb, sl
0056407c  c2 21 a0 e1                                      asr r2, r2, #3
00564080  02 11 82 e0                                      add r1, r2, r2, lsl #2
00564084  01 12 81 e0                                      add r1, r1, r1, lsl #4
00564088  01 14 81 e0                                      add r1, r1, r1, lsl #8
0056408c  01 18 81 e0                                      add r1, r1, r1, lsl #16
00564090  81 20 82 e0                                      add r2, r2, r1, lsl #1
00564094  97 02 27 e0                                      mla r7, r7, r2, r0
00564098  03 30 67 e0                                      rsb r3, r7, r3
0056409c  c3 31 a0 e1                                      asr r3, r3, #3
005640a0  03 51 83 e0                                      add r5, r3, r3, lsl #2
005640a4  05 52 85 e0                                      add r5, r5, r5, lsl #4
005640a8  05 54 85 e0                                      add r5, r5, r5, lsl #8
005640ac  05 58 85 e0                                      add r5, r5, r5, lsl #16
005640b0  85 50 83 e0                                      add r5, r3, r5, lsl #1
005640b4  08 00 55 e1                                      cmp r5, r8
005640b8  df ff ff da                                      ble #0x56403c
005640bc  08 00 8a e0                                      add r0, sl, r8
005640c0  08 10 87 e0                                      add r1, r7, r8
005640c4  07 fb ff eb                                      bl #0x562ce8
005640c8  01 50 55 e2                                      subs r5, r5, #1
005640cc  18 80 88 e2                                      add r8, r8, #0x18
005640d0  f9 ff ff 1a                                      bne #0x5640bc
005640d4  d7 ff ff ea                                      b #0x564038
005640d8  18 10 8d e2                                      add r1, sp, #0x18
005640dc  0c 60 21 e5                                      str r6, [r1, #-0xc]!
005640e0  0c 20 a0 e1                                      mov r2, ip
005640e4  29 fb ff eb                                      bl #0x562d90
005640e8  04 50 94 e5                                      ldr r5, [r4, #4]
005640ec  00 70 94 e5                                      ldr r7, [r4]
005640f0  00 90 a0 e1                                      mov sb, r0
005640f4  07 00 55 e1                                      cmp r5, r7
005640f8  0a 00 00 0a                                      beq #0x564128
005640fc  18 50 45 e2                                      sub r5, r5, #0x18
00564100  14 30 95 e5                                      ldr r3, [r5, #0x14]
00564104  05 00 53 e1                                      cmp r3, r5
00564108  03 00 a0 e1                                      mov r0, r3
0056410c  02 00 00 0a                                      beq #0x56411c
00564110  00 00 53 e3                                      cmp r3, #0
00564114  00 00 00 0a                                      beq #0x56411c
00564118  cc b0 f6 eb                                      bl #0x310450
0056411c  05 00 57 e1                                      cmp r7, r5
00564120  f5 ff ff 1a                                      bne #0x5640fc
00564124  00 50 94 e5                                      ldr r5, [r4]
00564128  05 00 a0 e1                                      mov r0, r5
0056412c  c7 b0 f6 eb                                      bl #0x310450
00564130  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00564134  18 20 a0 e3                                      mov r2, #0x18
00564138  00 90 84 e5                                      str sb, [r4]
0056413c  92 93 23 e0                                      mla r3, r2, r3, sb
00564140  08 30 84 e5                                      str r3, [r4, #8]
00564144  bc ff ff ea                                      b #0x56403c

; FUNCTION 0x005641e8, declared_size=88, range_size=88, mode=arm
; class-group: std::vector<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEENS4_IS8_LS6_0EEEED1Ev
; demangled: std::vector<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
005641e8  70 40 2d e9                                      push {r4, r5, r6, lr}
005641ec  04 40 90 e5                                      ldr r4, [r0, #4]
005641f0  00 50 90 e5                                      ldr r5, [r0]
005641f4  00 60 a0 e1                                      mov r6, r0
005641f8  05 00 54 e1                                      cmp r4, r5
005641fc  09 00 00 0a                                      beq #0x564228
00564200  18 40 44 e2                                      sub r4, r4, #0x18
00564204  14 30 94 e5                                      ldr r3, [r4, #0x14]
00564208  04 00 53 e1                                      cmp r3, r4
0056420c  03 00 a0 e1                                      mov r0, r3
00564210  02 00 00 0a                                      beq #0x564220
00564214  00 00 53 e3                                      cmp r3, #0
00564218  00 00 00 0a                                      beq #0x564220
0056421c  8b b0 f6 eb                                      bl #0x310450
00564220  04 00 55 e1                                      cmp r5, r4
00564224  f5 ff ff 1a                                      bne #0x564200
00564228  00 00 96 e5                                      ldr r0, [r6]
0056422c  00 00 50 e3                                      cmp r0, #0
00564230  00 00 00 0a                                      beq #0x564238
00564234  85 b0 f6 eb                                      bl #0x310450
00564238  06 00 a0 e1                                      mov r0, r6
0056423c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005654d4, declared_size=208, range_size=208, mode=arm
; class-group: std::vector<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEENS4_IS8_LS6_0EEEE9push_backERKS8_
; demangled: std::vector<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::push_back(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
005654d4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005654d8  bc 40 9f e5                                      ldr r4, [pc, #0xbc]
005654dc  bc 50 9f e5                                      ldr r5, [pc, #0xbc]
005654e0  04 80 90 e5                                      ldr r8, [r0, #4]
005654e4  04 40 8f e0                                      add r4, pc, r4
005654e8  05 30 94 e7                                      ldr r3, [r4, r5]
005654ec  00 70 a0 e1                                      mov r7, r0
005654f0  08 00 90 e5                                      ldr r0, [r0, #8]
005654f4  00 30 93 e5                                      ldr r3, [r3]
005654f8  20 d0 4d e2                                      sub sp, sp, #0x20
005654fc  00 00 58 e1                                      cmp r8, r0
00565500  01 20 a0 e1                                      mov r2, r1
00565504  1c 30 8d e5                                      str r3, [sp, #0x1c]
00565508  0b 00 00 0a                                      beq #0x56553c
0056550c  08 00 a0 e1                                      mov r0, r8
00565510  f4 f5 ff eb                                      bl #0x562ce8
00565514  04 30 97 e5                                      ldr r3, [r7, #4]
00565518  18 30 83 e2                                      add r3, r3, #0x18
0056551c  04 30 87 e5                                      str r3, [r7, #4]
00565520  05 30 94 e7                                      ldr r3, [r4, r5]
00565524  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00565528  00 30 93 e5                                      ldr r3, [r3]
0056552c  03 00 52 e1                                      cmp r2, r3
00565530  18 00 00 1a                                      bne #0x565598
00565534  20 d0 8d e2                                      add sp, sp, #0x20
00565538  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0056553c  00 30 97 e5                                      ldr r3, [r7]
00565540  03 00 51 e1                                      cmp r1, r3
00565544  0f 00 00 3a                                      blo #0x565588
00565548  01 00 58 e1                                      cmp r8, r1
0056554c  0d 00 00 9a                                      bls #0x565588
00565550  04 60 8d e2                                      add r6, sp, #4
00565554  06 00 a0 e1                                      mov r0, r6
00565558  e2 f5 ff eb                                      bl #0x562ce8
0056555c  07 00 a0 e1                                      mov r0, r7
00565560  08 10 a0 e1                                      mov r1, r8
00565564  06 20 a0 e1                                      mov r2, r6
00565568  1a fa ff eb                                      bl #0x563dd8
0056556c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00565570  06 00 50 e1                                      cmp r0, r6
00565574  e9 ff ff 0a                                      beq #0x565520
00565578  00 00 50 e3                                      cmp r0, #0
0056557c  e7 ff ff 0a                                      beq #0x565520
00565580  b2 ab f6 eb                                      bl #0x310450
00565584  e5 ff ff ea                                      b #0x565520
00565588  07 00 a0 e1                                      mov r0, r7
0056558c  08 10 a0 e1                                      mov r1, r8
00565590  10 fa ff eb                                      bl #0x563dd8
00565594  e1 ff ff ea                                      b #0x565520
00565598  5c a3 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0056559c  ac f5 42 00 ac 40 00 00                          .byte 0xac, 0xf5, 0x42, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x005655a4, declared_size=292, range_size=292, mode=arm
; class-group: std::vector<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEENS4_IS8_LS6_0EEEE7reserveEj
; demangled: std::vector<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::reserve(unsigned int)
; decoder-mode: arm
005655a4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005655a8  00 40 a0 e1                                      mov r4, r0
005655ac  00 20 90 e5                                      ldr r2, [r0]
005655b0  08 00 90 e5                                      ldr r0, [r0, #8]
005655b4  08 d0 4d e2                                      sub sp, sp, #8
005655b8  01 30 a0 e1                                      mov r3, r1
005655bc  00 00 62 e0                                      rsb r0, r2, r0
005655c0  c0 01 a0 e1                                      asr r0, r0, #3
005655c4  04 10 8d e5                                      str r1, [sp, #4]
005655c8  00 11 80 e0                                      add r1, r0, r0, lsl #2
005655cc  01 12 81 e0                                      add r1, r1, r1, lsl #4
005655d0  01 14 81 e0                                      add r1, r1, r1, lsl #8
005655d4  01 18 81 e0                                      add r1, r1, r1, lsl #16
005655d8  81 00 80 e0                                      add r0, r0, r1, lsl #1
005655dc  00 00 53 e1                                      cmp r3, r0
005655e0  29 00 00 9a                                      bls #0x56568c
005655e4  aa 1a 0a e3                                      movw r1, #0xaaaa
005655e8  01 16 81 e1                                      orr r1, r1, r1, lsl #12
005655ec  01 00 53 e1                                      cmp r3, r1
005655f0  27 00 00 8a                                      bhi #0x565694
005655f4  04 30 94 e5                                      ldr r3, [r4, #4]
005655f8  00 00 52 e3                                      cmp r2, #0
005655fc  03 10 62 e0                                      rsb r1, r2, r3
00565600  c1 11 a0 e1                                      asr r1, r1, #3
00565604  01 51 81 e0                                      add r5, r1, r1, lsl #2
00565608  05 52 85 e0                                      add r5, r5, r5, lsl #4
0056560c  05 54 85 e0                                      add r5, r5, r5, lsl #8
00565610  05 58 85 e0                                      add r5, r5, r5, lsl #16
00565614  85 50 81 e0                                      add r5, r1, r5, lsl #1
00565618  22 00 00 0a                                      beq #0x5656a8
0056561c  04 00 a0 e1                                      mov r0, r4
00565620  04 10 8d e2                                      add r1, sp, #4
00565624  be f5 ff eb                                      bl #0x562d24
00565628  04 60 94 e5                                      ldr r6, [r4, #4]
0056562c  00 70 94 e5                                      ldr r7, [r4]
00565630  00 80 a0 e1                                      mov r8, r0
00565634  07 00 56 e1                                      cmp r6, r7
00565638  0a 00 00 0a                                      beq #0x565668
0056563c  18 60 46 e2                                      sub r6, r6, #0x18
00565640  14 30 96 e5                                      ldr r3, [r6, #0x14]
00565644  06 00 53 e1                                      cmp r3, r6
00565648  03 00 a0 e1                                      mov r0, r3
0056564c  02 00 00 0a                                      beq #0x56565c
00565650  00 00 53 e3                                      cmp r3, #0
00565654  00 00 00 0a                                      beq #0x56565c
00565658  7c ab f6 eb                                      bl #0x310450
0056565c  06 00 57 e1                                      cmp r7, r6
00565660  f5 ff ff 1a                                      bne #0x56563c
00565664  00 60 94 e5                                      ldr r6, [r4]
00565668  06 00 a0 e1                                      mov r0, r6
0056566c  77 ab f6 eb                                      bl #0x310450
00565670  04 20 9d e5                                      ldr r2, [sp, #4]
00565674  18 30 a0 e3                                      mov r3, #0x18
00565678  93 85 25 e0                                      mla r5, r3, r5, r8
0056567c  93 82 23 e0                                      mla r3, r3, r2, r8
00565680  04 50 84 e5                                      str r5, [r4, #4]
00565684  08 30 84 e5                                      str r3, [r4, #8]
00565688  00 80 84 e5                                      str r8, [r4]
0056568c  08 d0 8d e2                                      add sp, sp, #8
00565690  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00565694  28 00 9f e5                                      ldr r0, [pc, #0x28]
00565698  00 00 8f e0                                      add r0, pc, r0
0056569c  e7 8d 06 eb                                      bl #0x708e40
005656a0  00 20 94 e5                                      ldr r2, [r4]
005656a4  d2 ff ff ea                                      b #0x5655f4
005656a8  04 30 9d e5                                      ldr r3, [sp, #4]
005656ac  18 00 a0 e3                                      mov r0, #0x18
005656b0  02 10 a0 e1                                      mov r1, r2
005656b4  90 03 00 e0                                      mul r0, r0, r3
005656b8  aa ab f6 eb                                      bl #0x310568
005656bc  00 80 a0 e1                                      mov r8, r0
005656c0  ea ff ff ea                                      b #0x565670
; mapping-symbol data/literal pool
005656c4  d0 8d 35 00                                      .byte 0xd0, 0x8d, 0x35, 0x00

; FUNCTION 0x00573ac4, declared_size=384, range_size=384, mode=arm
; class-group: std::vector<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEENS4_IS8_LS6_0EEEE22_M_insert_overflow_auxEPS8_RKS8_RKSt12__false_typejb.clone.8
; demangled: std::vector<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >*, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&, std::__false_type const&, unsigned int, bool) [clone .clone.8]
; decoder-mode: arm
00573ac4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00573ac8  00 40 a0 e1                                      mov r4, r0
00573acc  01 10 90 e8                                      ldm r0, {r0, ip}
00573ad0  01 80 a0 e1                                      mov r8, r1
00573ad4  aa 3a 0a e3                                      movw r3, #0xaaaa
00573ad8  0c 00 60 e0                                      rsb r0, r0, ip
00573adc  c0 01 a0 e1                                      asr r0, r0, #3
00573ae0  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00573ae4  00 11 80 e0                                      add r1, r0, r0, lsl #2
00573ae8  02 90 a0 e1                                      mov sb, r2
00573aec  01 12 81 e0                                      add r1, r1, r1, lsl #4
00573af0  01 14 81 e0                                      add r1, r1, r1, lsl #8
00573af4  01 18 81 e0                                      add r1, r1, r1, lsl #16
00573af8  81 00 80 e0                                      add r0, r0, r1, lsl #1
00573afc  01 00 50 e3                                      cmp r0, #1
00573b00  00 20 80 20                                      addhs r2, r0, r0
00573b04  01 20 80 32                                      addlo r2, r0, #1
00573b08  03 00 52 e1                                      cmp r2, r3
00573b0c  01 00 00 8a                                      bhi #0x573b18
00573b10  02 00 50 e1                                      cmp r0, r2
00573b14  47 00 00 9a                                      bls #0x573c38
00573b18  0f a0 e0 e3                                      mvn sl, #0xf
00573b1c  0a 00 a0 e1                                      mov r0, sl
00573b20  00 10 a0 e3                                      mov r1, #0
00573b24  8f 72 f6 eb                                      bl #0x310568
00573b28  00 c0 94 e5                                      ldr ip, [r4]
00573b2c  00 50 a0 e1                                      mov r5, r0
00573b30  08 80 6c e0                                      rsb r8, ip, r8
00573b34  c8 31 a0 e1                                      asr r3, r8, #3
00573b38  03 81 83 e0                                      add r8, r3, r3, lsl #2
00573b3c  08 82 88 e0                                      add r8, r8, r8, lsl #4
00573b40  08 84 88 e0                                      add r8, r8, r8, lsl #8
00573b44  08 88 88 e0                                      add r8, r8, r8, lsl #16
00573b48  88 80 83 e0                                      add r8, r3, r8, lsl #1
00573b4c  00 00 58 e3                                      cmp r8, #0
00573b50  00 80 a0 d1                                      movle r8, r0
00573b54  1f 00 00 da                                      ble #0x573bd8
00573b58  08 60 a0 e1                                      mov r6, r8
00573b5c  00 e0 a0 e1                                      mov lr, r0
00573b60  00 70 a0 e3                                      mov r7, #0
00573b64  09 00 00 ea                                      b #0x573b90
00573b68  14 30 8e e5                                      str r3, [lr, #0x14]
00573b6c  10 30 9c e5                                      ldr r3, [ip, #0x10]
00573b70  01 60 56 e2                                      subs r6, r6, #1
00573b74  10 30 8e e5                                      str r3, [lr, #0x10]
00573b78  00 30 9c e5                                      ldr r3, [ip]
00573b7c  00 30 8e e5                                      str r3, [lr]
00573b80  14 70 8c e5                                      str r7, [ip, #0x14]
00573b84  18 e0 8e e2                                      add lr, lr, #0x18
00573b88  10 00 00 0a                                      beq #0x573bd0
00573b8c  18 c0 8c e2                                      add ip, ip, #0x18
00573b90  14 30 9c e5                                      ldr r3, [ip, #0x14]
00573b94  14 30 8e e5                                      str r3, [lr, #0x14]
00573b98  14 30 9c e5                                      ldr r3, [ip, #0x14]
00573b9c  0c 00 53 e1                                      cmp r3, ip
00573ba0  f0 ff ff 1a                                      bne #0x573b68
00573ba4  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
00573ba8  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
00573bac  10 20 9c e5                                      ldr r2, [ip, #0x10]
00573bb0  14 30 9c e5                                      ldr r3, [ip, #0x14]
00573bb4  01 60 56 e2                                      subs r6, r6, #1
00573bb8  14 e0 8e e5                                      str lr, [lr, #0x14]
00573bbc  02 30 63 e0                                      rsb r3, r3, r2
00573bc0  03 30 8e e0                                      add r3, lr, r3
00573bc4  10 30 8e e5                                      str r3, [lr, #0x10]
00573bc8  18 e0 8e e2                                      add lr, lr, #0x18
00573bcc  ee ff ff 1a                                      bne #0x573b8c
00573bd0  18 30 a0 e3                                      mov r3, #0x18
00573bd4  93 58 28 e0                                      mla r8, r3, r8, r5
00573bd8  08 00 a0 e1                                      mov r0, r8
00573bdc  09 10 a0 e1                                      mov r1, sb
00573be0  40 bc ff eb                                      bl #0x562ce8
00573be4  04 60 94 e5                                      ldr r6, [r4, #4]
00573be8  00 70 94 e5                                      ldr r7, [r4]
00573bec  18 80 88 e2                                      add r8, r8, #0x18
00573bf0  07 00 56 e1                                      cmp r6, r7
00573bf4  0a 00 00 0a                                      beq #0x573c24
00573bf8  18 60 46 e2                                      sub r6, r6, #0x18
00573bfc  14 30 96 e5                                      ldr r3, [r6, #0x14]
00573c00  06 00 53 e1                                      cmp r3, r6
00573c04  03 00 a0 e1                                      mov r0, r3
00573c08  02 00 00 0a                                      beq #0x573c18
00573c0c  00 00 53 e3                                      cmp r3, #0
00573c10  00 00 00 0a                                      beq #0x573c18
00573c14  0d 72 f6 eb                                      bl #0x310450
00573c18  06 00 57 e1                                      cmp r7, r6
00573c1c  f5 ff ff 1a                                      bne #0x573bf8
00573c20  00 70 94 e5                                      ldr r7, [r4]
00573c24  07 00 a0 e1                                      mov r0, r7
00573c28  0a a0 85 e0                                      add sl, r5, sl
00573c2c  07 72 f6 eb                                      bl #0x310450
00573c30  20 05 84 e8                                      stm r4, {r5, r8, sl}
00573c34  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00573c38  18 a0 a0 e3                                      mov sl, #0x18
00573c3c  9a 02 0a e0                                      mul sl, sl, r2
00573c40  b5 ff ff ea                                      b #0x573b1c

; FUNCTION 0x005e6388, declared_size=596, range_size=596, mode=arm
; class-group: std::vector<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEENS4_IS8_LS6_0EEEE22_M_insert_overflow_auxEPS8_RKS8_RKSt12__false_typejb.clone.3
; demangled: std::vector<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >*, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&, std::__false_type const&, unsigned int, bool) [clone .clone.3]
; decoder-mode: arm
005e6388  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005e638c  00 50 90 e8                                      ldm r0, {ip, lr}
005e6390  01 40 a0 e1                                      mov r4, r1
005e6394  0c d0 4d e2                                      sub sp, sp, #0xc
005e6398  0e c0 6c e0                                      rsb ip, ip, lr
005e639c  cc c1 a0 e1                                      asr ip, ip, #3
005e63a0  00 50 a0 e1                                      mov r5, r0
005e63a4  0c 11 8c e0                                      add r1, ip, ip, lsl #2
005e63a8  aa 0a 0a e3                                      movw r0, #0xaaaa
005e63ac  01 12 81 e0                                      add r1, r1, r1, lsl #4
005e63b0  00 06 80 e1                                      orr r0, r0, r0, lsl #12
005e63b4  01 14 81 e0                                      add r1, r1, r1, lsl #8
005e63b8  04 30 8d e5                                      str r3, [sp, #4]
005e63bc  01 18 81 e0                                      add r1, r1, r1, lsl #16
005e63c0  02 b0 a0 e1                                      mov fp, r2
005e63c4  81 c0 8c e0                                      add ip, ip, r1, lsl #1
005e63c8  01 00 5c e3                                      cmp ip, #1
005e63cc  0c 30 8c 20                                      addhs r3, ip, ip
005e63d0  01 30 8c 32                                      addlo r3, ip, #1
005e63d4  00 00 53 e1                                      cmp r3, r0
005e63d8  01 00 00 8a                                      bhi #0x5e63e4
005e63dc  03 00 5c e1                                      cmp ip, r3
005e63e0  7a 00 00 9a                                      bls #0x5e65d0
005e63e4  0f 90 e0 e3                                      mvn sb, #0xf
005e63e8  09 00 a0 e1                                      mov r0, sb
005e63ec  00 10 a0 e3                                      mov r1, #0
005e63f0  5c a8 f4 eb                                      bl #0x310568
005e63f4  00 c0 95 e5                                      ldr ip, [r5]
005e63f8  00 80 a0 e1                                      mov r8, r0
005e63fc  04 30 6c e0                                      rsb r3, ip, r4
005e6400  c3 31 a0 e1                                      asr r3, r3, #3
005e6404  03 a1 83 e0                                      add sl, r3, r3, lsl #2
005e6408  0a a2 8a e0                                      add sl, sl, sl, lsl #4
005e640c  0a a4 8a e0                                      add sl, sl, sl, lsl #8
005e6410  0a a8 8a e0                                      add sl, sl, sl, lsl #16
005e6414  8a a0 83 e0                                      add sl, r3, sl, lsl #1
005e6418  00 00 5a e3                                      cmp sl, #0
005e641c  00 a0 a0 d1                                      movle sl, r0
005e6420  1f 00 00 da                                      ble #0x5e64a4
005e6424  0a 60 a0 e1                                      mov r6, sl
005e6428  00 e0 a0 e1                                      mov lr, r0
005e642c  00 70 a0 e3                                      mov r7, #0
005e6430  09 00 00 ea                                      b #0x5e645c
005e6434  14 30 8e e5                                      str r3, [lr, #0x14]
005e6438  10 30 9c e5                                      ldr r3, [ip, #0x10]
005e643c  01 60 56 e2                                      subs r6, r6, #1
005e6440  10 30 8e e5                                      str r3, [lr, #0x10]
005e6444  00 30 9c e5                                      ldr r3, [ip]
005e6448  00 30 8e e5                                      str r3, [lr]
005e644c  14 70 8c e5                                      str r7, [ip, #0x14]
005e6450  18 e0 8e e2                                      add lr, lr, #0x18
005e6454  10 00 00 0a                                      beq #0x5e649c
005e6458  18 c0 8c e2                                      add ip, ip, #0x18
005e645c  14 30 9c e5                                      ldr r3, [ip, #0x14]
005e6460  14 30 8e e5                                      str r3, [lr, #0x14]
005e6464  14 30 9c e5                                      ldr r3, [ip, #0x14]
005e6468  0c 00 53 e1                                      cmp r3, ip
005e646c  f0 ff ff 1a                                      bne #0x5e6434
005e6470  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
005e6474  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
005e6478  10 20 9c e5                                      ldr r2, [ip, #0x10]
005e647c  14 30 9c e5                                      ldr r3, [ip, #0x14]
005e6480  01 60 56 e2                                      subs r6, r6, #1
005e6484  14 e0 8e e5                                      str lr, [lr, #0x14]
005e6488  02 30 63 e0                                      rsb r3, r3, r2
005e648c  03 30 8e e0                                      add r3, lr, r3
005e6490  10 30 8e e5                                      str r3, [lr, #0x10]
005e6494  18 e0 8e e2                                      add lr, lr, #0x18
005e6498  ee ff ff 1a                                      bne #0x5e6458
005e649c  18 30 a0 e3                                      mov r3, #0x18
005e64a0  93 8a 2a e0                                      mla sl, r3, sl, r8
005e64a4  10 a0 8a e5                                      str sl, [sl, #0x10]
005e64a8  14 a0 8a e5                                      str sl, [sl, #0x14]
005e64ac  0a 00 a0 e1                                      mov r0, sl
005e64b0  10 20 9b e5                                      ldr r2, [fp, #0x10]
005e64b4  14 10 9b e5                                      ldr r1, [fp, #0x14]
005e64b8  cd fe f4 eb                                      bl #0x325ff4
005e64bc  04 30 9d e5                                      ldr r3, [sp, #4]
005e64c0  18 a0 8a e2                                      add sl, sl, #0x18
005e64c4  00 00 53 e3                                      cmp r3, #0
005e64c8  15 00 00 0a                                      beq #0x5e6524
005e64cc  04 60 95 e5                                      ldr r6, [r5, #4]
005e64d0  00 40 95 e5                                      ldr r4, [r5]
005e64d4  06 00 54 e1                                      cmp r4, r6
005e64d8  06 00 a0 01                                      moveq r0, r6
005e64dc  0a 00 00 0a                                      beq #0x5e650c
005e64e0  18 60 46 e2                                      sub r6, r6, #0x18
005e64e4  14 30 96 e5                                      ldr r3, [r6, #0x14]
005e64e8  06 00 53 e1                                      cmp r3, r6
005e64ec  03 00 a0 e1                                      mov r0, r3
005e64f0  02 00 00 0a                                      beq #0x5e6500
005e64f4  00 00 53 e3                                      cmp r3, #0
005e64f8  00 00 00 0a                                      beq #0x5e6500
005e64fc  d3 a7 f4 eb                                      bl #0x310450
005e6500  06 00 54 e1                                      cmp r4, r6
005e6504  f5 ff ff 1a                                      bne #0x5e64e0
005e6508  00 00 95 e5                                      ldr r0, [r5]
005e650c  09 90 88 e0                                      add sb, r8, sb
005e6510  ce a7 f4 eb                                      bl #0x310450
005e6514  08 90 85 e5                                      str sb, [r5, #8]
005e6518  00 05 85 e8                                      stm r5, {r8, sl}
005e651c  0c d0 8d e2                                      add sp, sp, #0xc
005e6520  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005e6524  04 60 95 e5                                      ldr r6, [r5, #4]
005e6528  06 30 64 e0                                      rsb r3, r4, r6
005e652c  c3 31 a0 e1                                      asr r3, r3, #3
005e6530  03 71 83 e0                                      add r7, r3, r3, lsl #2
005e6534  07 72 87 e0                                      add r7, r7, r7, lsl #4
005e6538  07 74 87 e0                                      add r7, r7, r7, lsl #8
005e653c  07 78 87 e0                                      add r7, r7, r7, lsl #16
005e6540  87 70 83 e0                                      add r7, r3, r7, lsl #1
005e6544  00 00 57 e3                                      cmp r7, #0
005e6548  e0 ff ff da                                      ble #0x5e64d0
005e654c  04 60 9d e5                                      ldr r6, [sp, #4]
005e6550  07 e0 a0 e1                                      mov lr, r7
005e6554  0a c0 a0 e1                                      mov ip, sl
005e6558  09 00 00 ea                                      b #0x5e6584
005e655c  14 30 8c e5                                      str r3, [ip, #0x14]
005e6560  10 30 94 e5                                      ldr r3, [r4, #0x10]
005e6564  01 e0 5e e2                                      subs lr, lr, #1
005e6568  10 30 8c e5                                      str r3, [ip, #0x10]
005e656c  00 30 94 e5                                      ldr r3, [r4]
005e6570  00 30 8c e5                                      str r3, [ip]
005e6574  14 60 84 e5                                      str r6, [r4, #0x14]
005e6578  18 c0 8c e2                                      add ip, ip, #0x18
005e657c  10 00 00 0a                                      beq #0x5e65c4
005e6580  18 40 84 e2                                      add r4, r4, #0x18
005e6584  14 30 94 e5                                      ldr r3, [r4, #0x14]
005e6588  14 30 8c e5                                      str r3, [ip, #0x14]
005e658c  14 30 94 e5                                      ldr r3, [r4, #0x14]
005e6590  04 00 53 e1                                      cmp r3, r4
005e6594  f0 ff ff 1a                                      bne #0x5e655c
005e6598  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
005e659c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005e65a0  10 20 94 e5                                      ldr r2, [r4, #0x10]
005e65a4  14 30 94 e5                                      ldr r3, [r4, #0x14]
005e65a8  01 e0 5e e2                                      subs lr, lr, #1
005e65ac  14 c0 8c e5                                      str ip, [ip, #0x14]
005e65b0  02 30 63 e0                                      rsb r3, r3, r2
005e65b4  03 30 8c e0                                      add r3, ip, r3
005e65b8  10 30 8c e5                                      str r3, [ip, #0x10]
005e65bc  18 c0 8c e2                                      add ip, ip, #0x18
005e65c0  ee ff ff 1a                                      bne #0x5e6580
005e65c4  18 30 a0 e3                                      mov r3, #0x18
005e65c8  93 a7 2a e0                                      mla sl, r3, r7, sl
005e65cc  be ff ff ea                                      b #0x5e64cc
005e65d0  18 90 a0 e3                                      mov sb, #0x18
005e65d4  99 03 09 e0                                      mul sb, sb, r3
005e65d8  82 ff ff ea                                      b #0x5e63e8

; FUNCTION 0x005e6898, declared_size=204, range_size=204, mode=arm
; class-group: std::vector<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEENS4_IS8_LS6_0EEEE22_M_insert_overflow_auxEPS8_RKS8_RKSt11__true_typejb.clone.7
; demangled: std::vector<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >*, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&, std::__true_type const&, unsigned int, bool) [clone .clone.7]
; decoder-mode: arm
005e6898  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005e689c  b8 40 9f e5                                      ldr r4, [pc, #0xb8]
005e68a0  b8 60 9f e5                                      ldr r6, [pc, #0xb8]
005e68a4  00 50 a0 e1                                      mov r5, r0
005e68a8  04 40 8f e0                                      add r4, pc, r4
005e68ac  06 e0 94 e7                                      ldr lr, [r4, r6]
005e68b0  00 00 90 e5                                      ldr r0, [r0]
005e68b4  02 c0 a0 e1                                      mov ip, r2
005e68b8  00 20 9e e5                                      ldr r2, [lr]
005e68bc  28 d0 4d e2                                      sub sp, sp, #0x28
005e68c0  0c 00 50 e1                                      cmp r0, ip
005e68c4  01 70 a0 e1                                      mov r7, r1
005e68c8  24 20 8d e5                                      str r2, [sp, #0x24]
005e68cc  16 00 00 8a                                      bhi #0x5e692c
005e68d0  04 20 95 e5                                      ldr r2, [r5, #4]
005e68d4  02 00 5c e1                                      cmp ip, r2
005e68d8  13 00 00 2a                                      bhs #0x5e692c
005e68dc  0c 80 8d e2                                      add r8, sp, #0xc
005e68e0  10 20 9c e5                                      ldr r2, [ip, #0x10]
005e68e4  14 10 9c e5                                      ldr r1, [ip, #0x14]
005e68e8  08 00 a0 e1                                      mov r0, r8
005e68ec  04 30 8d e5                                      str r3, [sp, #4]
005e68f0  1c 80 8d e5                                      str r8, [sp, #0x1c]
005e68f4  20 80 8d e5                                      str r8, [sp, #0x20]
005e68f8  bd fd f4 eb                                      bl #0x325ff4
005e68fc  05 00 a0 e1                                      mov r0, r5
005e6900  07 10 a0 e1                                      mov r1, r7
005e6904  08 20 a0 e1                                      mov r2, r8
005e6908  04 30 9d e5                                      ldr r3, [sp, #4]
005e690c  9d fe ff eb                                      bl #0x5e6388
005e6910  20 00 9d e5                                      ldr r0, [sp, #0x20]
005e6914  08 00 50 e1                                      cmp r0, r8
005e6918  07 00 00 0a                                      beq #0x5e693c
005e691c  00 00 50 e3                                      cmp r0, #0
005e6920  05 00 00 0a                                      beq #0x5e693c
005e6924  c9 a6 f4 eb                                      bl #0x310450
005e6928  03 00 00 ea                                      b #0x5e693c
005e692c  05 00 a0 e1                                      mov r0, r5
005e6930  07 10 a0 e1                                      mov r1, r7
005e6934  0c 20 a0 e1                                      mov r2, ip
005e6938  92 fe ff eb                                      bl #0x5e6388
005e693c  06 30 94 e7                                      ldr r3, [r4, r6]
005e6940  24 20 9d e5                                      ldr r2, [sp, #0x24]
005e6944  00 30 93 e5                                      ldr r3, [r3]
005e6948  03 00 52 e1                                      cmp r2, r3
005e694c  01 00 00 1a                                      bne #0x5e6958
005e6950  28 d0 8d e2                                      add sp, sp, #0x28
005e6954  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005e6958  6c 9e f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005e695c  e8 e1 3a 00 ac 40 00 00                          .byte 0xe8, 0xe1, 0x3a, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x005e6b64, declared_size=376, range_size=376, mode=arm
; class-group: std::vector<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEENS4_IS8_LS6_0EEEE18_M_fill_insert_auxEPS8_jRKS8_RKSt11__true_type.clone.4
; demangled: std::vector<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::_M_fill_insert_aux(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >*, unsigned int, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&, std::__true_type const&) [clone .clone.4]
; decoder-mode: arm
005e6b64  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005e6b68  64 81 9f e5                                      ldr r8, [pc, #0x164]
005e6b6c  64 b1 9f e5                                      ldr fp, [pc, #0x164]
005e6b70  00 70 a0 e1                                      mov r7, r0
005e6b74  08 80 8f e0                                      add r8, pc, r8
005e6b78  0b 00 98 e7                                      ldr r0, [r8, fp]
005e6b7c  00 30 97 e5                                      ldr r3, [r7]
005e6b80  02 90 a0 e1                                      mov sb, r2
005e6b84  00 20 90 e5                                      ldr r2, [r0]
005e6b88  2c d0 4d e2                                      sub sp, sp, #0x2c
005e6b8c  09 00 53 e1                                      cmp r3, sb
005e6b90  01 60 a0 e1                                      mov r6, r1
005e6b94  24 20 8d e5                                      str r2, [sp, #0x24]
005e6b98  14 00 00 8a                                      bhi #0x5e6bf0
005e6b9c  04 40 97 e5                                      ldr r4, [r7, #4]
005e6ba0  04 00 59 e1                                      cmp sb, r4
005e6ba4  12 00 00 2a                                      bhs #0x5e6bf4
005e6ba8  0c 40 8d e2                                      add r4, sp, #0xc
005e6bac  10 20 99 e5                                      ldr r2, [sb, #0x10]
005e6bb0  14 10 99 e5                                      ldr r1, [sb, #0x14]
005e6bb4  04 00 a0 e1                                      mov r0, r4
005e6bb8  1c 40 8d e5                                      str r4, [sp, #0x1c]
005e6bbc  20 40 8d e5                                      str r4, [sp, #0x20]
005e6bc0  0b fd f4 eb                                      bl #0x325ff4
005e6bc4  07 00 a0 e1                                      mov r0, r7
005e6bc8  06 10 a0 e1                                      mov r1, r6
005e6bcc  04 20 a0 e1                                      mov r2, r4
005e6bd0  e3 ff ff eb                                      bl #0x5e6b64
005e6bd4  20 00 9d e5                                      ldr r0, [sp, #0x20]
005e6bd8  04 00 50 e1                                      cmp r0, r4
005e6bdc  34 00 00 0a                                      beq #0x5e6cb4
005e6be0  00 00 50 e3                                      cmp r0, #0
005e6be4  32 00 00 0a                                      beq #0x5e6cb4
005e6be8  18 a6 f4 eb                                      bl #0x310450
005e6bec  30 00 00 ea                                      b #0x5e6cb4
005e6bf0  04 40 97 e5                                      ldr r4, [r7, #4]
005e6bf4  18 50 44 e2                                      sub r5, r4, #0x18
005e6bf8  05 00 56 e1                                      cmp r6, r5
005e6bfc  22 00 00 8a                                      bhi #0x5e6c8c
005e6c00  04 30 14 e5                                      ldr r3, [r4, #-4]
005e6c04  00 a0 a0 e3                                      mov sl, #0
005e6c08  05 00 53 e1                                      cmp r3, r5
005e6c0c  14 30 84 e5                                      str r3, [r4, #0x14]
005e6c10  13 00 00 0a                                      beq #0x5e6c64
005e6c14  08 10 14 e5                                      ldr r1, [r4, #-8]
005e6c18  18 20 14 e5                                      ldr r2, [r4, #-0x18]
005e6c1c  14 30 84 e5                                      str r3, [r4, #0x14]
005e6c20  10 10 84 e5                                      str r1, [r4, #0x10]
005e6c24  18 20 85 e5                                      str r2, [r5, #0x18]
005e6c28  04 a0 04 e5                                      str sl, [r4, #-4]
005e6c2c  04 00 14 e5                                      ldr r0, [r4, #-4]
005e6c30  05 00 50 e1                                      cmp r0, r5
005e6c34  02 00 00 0a                                      beq #0x5e6c44
005e6c38  00 00 50 e3                                      cmp r0, #0
005e6c3c  00 00 00 0a                                      beq #0x5e6c44
005e6c40  02 a6 f4 eb                                      bl #0x310450
005e6c44  18 50 45 e2                                      sub r5, r5, #0x18
005e6c48  05 00 56 e1                                      cmp r6, r5
005e6c4c  0e 00 00 8a                                      bhi #0x5e6c8c
005e6c50  18 40 44 e2                                      sub r4, r4, #0x18
005e6c54  04 30 14 e5                                      ldr r3, [r4, #-4]
005e6c58  05 00 53 e1                                      cmp r3, r5
005e6c5c  14 30 84 e5                                      str r3, [r4, #0x14]
005e6c60  eb ff ff 1a                                      bne #0x5e6c14
005e6c64  18 c0 85 e2                                      add ip, r5, #0x18
005e6c68  18 30 44 e2                                      sub r3, r4, #0x18
005e6c6c  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
005e6c70  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
005e6c74  0c 00 14 e9                                      ldmdb r4, {r2, r3}
005e6c78  14 40 84 e5                                      str r4, [r4, #0x14]
005e6c7c  02 30 63 e0                                      rsb r3, r3, r2
005e6c80  03 30 84 e0                                      add r3, r4, r3
005e6c84  10 30 84 e5                                      str r3, [r4, #0x10]
005e6c88  e7 ff ff ea                                      b #0x5e6c2c
005e6c8c  08 30 8d e2                                      add r3, sp, #8
005e6c90  00 c0 a0 e3                                      mov ip, #0
005e6c94  06 00 a0 e1                                      mov r0, r6
005e6c98  09 20 a0 e1                                      mov r2, sb
005e6c9c  18 10 86 e2                                      add r1, r6, #0x18
005e6ca0  00 c0 8d e5                                      str ip, [sp]
005e6ca4  7f fa ff eb                                      bl #0x5e56a8
005e6ca8  04 30 97 e5                                      ldr r3, [r7, #4]
005e6cac  18 30 83 e2                                      add r3, r3, #0x18
005e6cb0  04 30 87 e5                                      str r3, [r7, #4]
005e6cb4  0b 30 98 e7                                      ldr r3, [r8, fp]
005e6cb8  24 20 9d e5                                      ldr r2, [sp, #0x24]
005e6cbc  00 30 93 e5                                      ldr r3, [r3]
005e6cc0  03 00 52 e1                                      cmp r2, r3
005e6cc4  01 00 00 1a                                      bne #0x5e6cd0
005e6cc8  2c d0 8d e2                                      add sp, sp, #0x2c
005e6ccc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005e6cd0  8e 9d f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005e6cd4  1c df 3a 00 ac 40 00 00                          .byte 0x1c, 0xdf, 0x3a, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x006b51e8, declared_size=80, range_size=80, mode=arm
; class-group: std::vector<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEENS4_IS8_LS6_0EEEE19_M_clear_after_moveEv
; demangled: std::vector<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::_M_clear_after_move()
; decoder-mode: arm
006b51e8  70 40 2d e9                                      push {r4, r5, r6, lr}
006b51ec  04 40 90 e5                                      ldr r4, [r0, #4]
006b51f0  00 50 90 e5                                      ldr r5, [r0]
006b51f4  00 60 a0 e1                                      mov r6, r0
006b51f8  05 00 54 e1                                      cmp r4, r5
006b51fc  0a 00 00 0a                                      beq #0x6b522c
006b5200  18 40 44 e2                                      sub r4, r4, #0x18
006b5204  14 30 94 e5                                      ldr r3, [r4, #0x14]
006b5208  04 00 53 e1                                      cmp r3, r4
006b520c  03 00 a0 e1                                      mov r0, r3
006b5210  02 00 00 0a                                      beq #0x6b5220
006b5214  00 00 53 e3                                      cmp r3, #0
006b5218  00 00 00 0a                                      beq #0x6b5220
006b521c  8b 6c f1 eb                                      bl #0x310450
006b5220  04 00 55 e1                                      cmp r5, r4
006b5224  f5 ff ff 1a                                      bne #0x6b5200
006b5228  00 40 96 e5                                      ldr r4, [r6]
006b522c  04 00 a0 e1                                      mov r0, r4
006b5230  70 40 bd e8                                      pop {r4, r5, r6, lr}
006b5234  85 6c f1 ea                                      b #0x310450

; FUNCTION 0x006b52f4, declared_size=340, range_size=340, mode=arm
; class-group: std::vector<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEENS4_IS8_LS6_0EEEE22_M_insert_overflow_auxEPS8_RKS8_RKSt12__false_typejb.clone.4
; demangled: std::vector<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow_aux(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >*, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&, std::__false_type const&, unsigned int, bool) [clone .clone.4]
; decoder-mode: arm
006b52f4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006b52f8  00 40 a0 e1                                      mov r4, r0
006b52fc  01 10 90 e8                                      ldm r0, {r0, ip}
006b5300  01 70 a0 e1                                      mov r7, r1
006b5304  aa 3a 0a e3                                      movw r3, #0xaaaa
006b5308  0c 00 60 e0                                      rsb r0, r0, ip
006b530c  c0 01 a0 e1                                      asr r0, r0, #3
006b5310  03 36 83 e1                                      orr r3, r3, r3, lsl #12
006b5314  00 11 80 e0                                      add r1, r0, r0, lsl #2
006b5318  02 90 a0 e1                                      mov sb, r2
006b531c  01 12 81 e0                                      add r1, r1, r1, lsl #4
006b5320  01 14 81 e0                                      add r1, r1, r1, lsl #8
006b5324  01 18 81 e0                                      add r1, r1, r1, lsl #16
006b5328  81 00 80 e0                                      add r0, r0, r1, lsl #1
006b532c  01 00 50 e3                                      cmp r0, #1
006b5330  00 20 80 20                                      addhs r2, r0, r0
006b5334  01 20 80 32                                      addlo r2, r0, #1
006b5338  03 00 52 e1                                      cmp r2, r3
006b533c  01 00 00 8a                                      bhi #0x6b5348
006b5340  02 00 50 e1                                      cmp r0, r2
006b5344  3c 00 00 9a                                      bls #0x6b543c
006b5348  0f a0 e0 e3                                      mvn sl, #0xf
006b534c  0a 00 a0 e1                                      mov r0, sl
006b5350  00 10 a0 e3                                      mov r1, #0
006b5354  83 6c f1 eb                                      bl #0x310568
006b5358  00 c0 94 e5                                      ldr ip, [r4]
006b535c  00 80 a0 e1                                      mov r8, r0
006b5360  07 70 6c e0                                      rsb r7, ip, r7
006b5364  c7 31 a0 e1                                      asr r3, r7, #3
006b5368  03 71 83 e0                                      add r7, r3, r3, lsl #2
006b536c  07 72 87 e0                                      add r7, r7, r7, lsl #4
006b5370  07 74 87 e0                                      add r7, r7, r7, lsl #8
006b5374  07 78 87 e0                                      add r7, r7, r7, lsl #16
006b5378  87 70 83 e0                                      add r7, r3, r7, lsl #1
006b537c  00 00 57 e3                                      cmp r7, #0
006b5380  00 70 a0 d1                                      movle r7, r0
006b5384  1f 00 00 da                                      ble #0x6b5408
006b5388  07 50 a0 e1                                      mov r5, r7
006b538c  00 e0 a0 e1                                      mov lr, r0
006b5390  00 60 a0 e3                                      mov r6, #0
006b5394  09 00 00 ea                                      b #0x6b53c0
006b5398  14 30 8e e5                                      str r3, [lr, #0x14]
006b539c  10 30 9c e5                                      ldr r3, [ip, #0x10]
006b53a0  01 50 55 e2                                      subs r5, r5, #1
006b53a4  10 30 8e e5                                      str r3, [lr, #0x10]
006b53a8  00 30 9c e5                                      ldr r3, [ip]
006b53ac  00 30 8e e5                                      str r3, [lr]
006b53b0  14 60 8c e5                                      str r6, [ip, #0x14]
006b53b4  18 e0 8e e2                                      add lr, lr, #0x18
006b53b8  10 00 00 0a                                      beq #0x6b5400
006b53bc  18 c0 8c e2                                      add ip, ip, #0x18
006b53c0  14 30 9c e5                                      ldr r3, [ip, #0x14]
006b53c4  14 30 8e e5                                      str r3, [lr, #0x14]
006b53c8  14 30 9c e5                                      ldr r3, [ip, #0x14]
006b53cc  0c 00 53 e1                                      cmp r3, ip
006b53d0  f0 ff ff 1a                                      bne #0x6b5398
006b53d4  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
006b53d8  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
006b53dc  10 20 9c e5                                      ldr r2, [ip, #0x10]
006b53e0  14 30 9c e5                                      ldr r3, [ip, #0x14]
006b53e4  01 50 55 e2                                      subs r5, r5, #1
006b53e8  14 e0 8e e5                                      str lr, [lr, #0x14]
006b53ec  02 30 63 e0                                      rsb r3, r3, r2
006b53f0  03 30 8e e0                                      add r3, lr, r3
006b53f4  10 30 8e e5                                      str r3, [lr, #0x10]
006b53f8  18 e0 8e e2                                      add lr, lr, #0x18
006b53fc  ee ff ff 1a                                      bne #0x6b53bc
006b5400  18 30 a0 e3                                      mov r3, #0x18
006b5404  93 87 27 e0                                      mla r7, r3, r7, r8
006b5408  10 70 87 e5                                      str r7, [r7, #0x10]
006b540c  14 70 87 e5                                      str r7, [r7, #0x14]
006b5410  07 00 a0 e1                                      mov r0, r7
006b5414  10 20 99 e5                                      ldr r2, [sb, #0x10]
006b5418  14 10 99 e5                                      ldr r1, [sb, #0x14]
006b541c  f4 c2 f1 eb                                      bl #0x325ff4
006b5420  0a a0 88 e0                                      add sl, r8, sl
006b5424  04 00 a0 e1                                      mov r0, r4
006b5428  18 70 87 e2                                      add r7, r7, #0x18
006b542c  6d ff ff eb                                      bl #0x6b51e8
006b5430  80 04 84 e9                                      stmib r4, {r7, sl}
006b5434  00 80 84 e5                                      str r8, [r4]
006b5438  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006b543c  18 a0 a0 e3                                      mov sl, #0x18
006b5440  9a 02 0a e0                                      mul sl, sl, r2
006b5444  c0 ff ff ea                                      b #0x6b534c
