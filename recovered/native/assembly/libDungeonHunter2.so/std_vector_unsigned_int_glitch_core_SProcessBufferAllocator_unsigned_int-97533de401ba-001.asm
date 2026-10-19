; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005798ac, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<unsigned int, glitch::core::SProcessBufferAllocator<unsigned int> >
; alias: _ZNSt6vectorIjN6glitch4core23SProcessBufferAllocatorIjEEE20_M_compute_next_sizeEj
; demangled: std::vector<unsigned int, glitch::core::SProcessBufferAllocator<unsigned int> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
005798ac  70 40 2d e9                                      push {r4, r5, r6, lr}
005798b0  14 00 90 e8                                      ldm r0, {r2, r4}
005798b4  ff 3f 0f e3                                      movw r3, #0xffff
005798b8  ff 3f 43 e3                                      movt r3, #0x3fff
005798bc  04 40 62 e0                                      rsb r4, r2, r4
005798c0  44 41 a0 e1                                      asr r4, r4, #2
005798c4  03 30 64 e0                                      rsb r3, r4, r3
005798c8  01 00 53 e1                                      cmp r3, r1
005798cc  01 50 a0 e1                                      mov r5, r1
005798d0  08 00 00 3a                                      blo #0x5798f8
005798d4  05 00 54 e1                                      cmp r4, r5
005798d8  04 00 84 20                                      addhs r0, r4, r4
005798dc  05 00 84 30                                      addlo r0, r4, r5
005798e0  07 01 70 e3                                      cmn r0, #0xc0000001
005798e4  01 00 00 8a                                      bhi #0x5798f0
005798e8  04 00 50 e1                                      cmp r0, r4
005798ec  00 00 00 2a                                      bhs #0x5798f4
005798f0  03 01 e0 e3                                      mvn r0, #0xc0000000
005798f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005798f8  08 00 9f e5                                      ldr r0, [pc, #8]
005798fc  00 00 8f e0                                      add r0, pc, r0
00579900  4e 3d 06 eb                                      bl #0x708e40
00579904  f2 ff ff ea                                      b #0x5798d4
; mapping-symbol data/literal pool
00579908  6c 4b 34 00                                      .byte 0x6c, 0x4b, 0x34, 0x00

; FUNCTION 0x00579f20, declared_size=328, range_size=328, mode=arm
; class-group: std::vector<unsigned int, glitch::core::SProcessBufferAllocator<unsigned int> >
; alias: _ZNSt6vectorIjN6glitch4core23SProcessBufferAllocatorIjEEE18_M_fill_insert_auxEPjjRKjRKSt12__false_type
; demangled: std::vector<unsigned int, glitch::core::SProcessBufferAllocator<unsigned int> >::_M_fill_insert_aux(unsigned int*, unsigned int, unsigned int const&, std::__false_type const&)
; decoder-mode: arm
00579f20  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00579f24  00 c0 90 e5                                      ldr ip, [r0]
00579f28  03 50 a0 e1                                      mov r5, r3
00579f2c  14 d0 4d e2                                      sub sp, sp, #0x14
00579f30  0c 00 53 e1                                      cmp r3, ip
00579f34  00 40 a0 e1                                      mov r4, r0
00579f38  01 60 a0 e1                                      mov r6, r1
00579f3c  02 30 a0 e1                                      mov r3, r2
00579f40  04 70 90 35                                      ldrlo r7, [r0, #4]
00579f44  0a 00 00 3a                                      blo #0x579f74
00579f48  04 70 90 e5                                      ldr r7, [r0, #4]
00579f4c  07 00 55 e1                                      cmp r5, r7
00579f50  07 00 00 2a                                      bhs #0x579f74
00579f54  00 c0 95 e5                                      ldr ip, [r5]
00579f58  10 30 8d e2                                      add r3, sp, #0x10
00579f5c  08 c0 23 e5                                      str ip, [r3, #-8]!
00579f60  0c c0 8d e2                                      add ip, sp, #0xc
00579f64  00 c0 8d e5                                      str ip, [sp]
00579f68  ec ff ff eb                                      bl #0x579f20
00579f6c  14 d0 8d e2                                      add sp, sp, #0x14
00579f70  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00579f74  07 20 66 e0                                      rsb r2, r6, r7
00579f78  42 81 a0 e1                                      asr r8, r2, #2
00579f7c  08 00 53 e1                                      cmp r3, r8
00579f80  1c 00 00 2a                                      bhs #0x579ff8
00579f84  03 81 a0 e1                                      lsl r8, r3, #2
00579f88  07 30 68 e0                                      rsb r3, r8, r7
00579f8c  07 00 53 e1                                      cmp r3, r7
00579f90  07 a0 a0 01                                      moveq sl, r7
00579f94  05 00 00 0a                                      beq #0x579fb0
00579f98  03 10 a0 e1                                      mov r1, r3
00579f9c  07 20 63 e0                                      rsb r2, r3, r7
00579fa0  07 00 a0 e1                                      mov r0, r7
00579fa4  03 a0 a0 e1                                      mov sl, r3
00579fa8  2e 52 f6 eb                                      bl #0x30e868
00579fac  04 30 94 e5                                      ldr r3, [r4, #4]
00579fb0  0a 20 66 e0                                      rsb r2, r6, sl
00579fb4  08 30 83 e0                                      add r3, r3, r8
00579fb8  00 00 52 e3                                      cmp r2, #0
00579fbc  04 30 84 e5                                      str r3, [r4, #4]
00579fc0  02 00 00 da                                      ble #0x579fd0
00579fc4  07 00 62 e0                                      rsb r0, r2, r7
00579fc8  06 10 a0 e1                                      mov r1, r6
00579fcc  d9 4f f6 eb                                      bl #0x30df38
00579fd0  48 81 a0 e1                                      asr r8, r8, #2
00579fd4  00 00 58 e3                                      cmp r8, #0
00579fd8  e3 ff ff da                                      ble #0x579f6c
00579fdc  00 20 a0 e3                                      mov r2, #0
00579fe0  00 10 95 e5                                      ldr r1, [r5]
00579fe4  02 11 86 e7                                      str r1, [r6, r2, lsl #2]
00579fe8  01 20 82 e2                                      add r2, r2, #1
00579fec  08 00 52 e1                                      cmp r2, r8
00579ff0  fa ff ff 1a                                      bne #0x579fe0
00579ff4  dc ff ff ea                                      b #0x579f6c
00579ff8  03 30 68 e0                                      rsb r3, r8, r3
00579ffc  53 a0 bd e7                                      sbfx sl, r3, #0, #0x1e
0057a000  00 00 5a e3                                      cmp sl, #0
0057a004  03 01 87 e0                                      add r0, r7, r3, lsl #2
0057a008  05 00 00 da                                      ble #0x57a024
0057a00c  00 10 a0 e3                                      mov r1, #0
0057a010  00 c0 95 e5                                      ldr ip, [r5]
0057a014  01 c1 87 e7                                      str ip, [r7, r1, lsl #2]
0057a018  01 10 81 e2                                      add r1, r1, #1
0057a01c  0a 00 51 e1                                      cmp r1, sl
0057a020  fa ff ff 1a                                      bne #0x57a010
0057a024  07 00 56 e1                                      cmp r6, r7
0057a028  04 00 84 e5                                      str r0, [r4, #4]
0057a02c  02 00 00 0a                                      beq #0x57a03c
0057a030  06 10 a0 e1                                      mov r1, r6
0057a034  0b 52 f6 eb                                      bl #0x30e868
0057a038  04 00 94 e5                                      ldr r0, [r4, #4]
0057a03c  08 01 80 e0                                      add r0, r0, r8, lsl #2
0057a040  00 00 58 e3                                      cmp r8, #0
0057a044  04 00 84 e5                                      str r0, [r4, #4]
0057a048  c7 ff ff da                                      ble #0x579f6c
0057a04c  00 30 a0 e3                                      mov r3, #0
0057a050  00 20 95 e5                                      ldr r2, [r5]
0057a054  03 21 86 e7                                      str r2, [r6, r3, lsl #2]
0057a058  01 30 83 e2                                      add r3, r3, #1
0057a05c  03 00 58 e1                                      cmp r8, r3
0057a060  fa ff ff 1a                                      bne #0x57a050
0057a064  c0 ff ff ea                                      b #0x579f6c

; FUNCTION 0x0057ad78, declared_size=72, range_size=72, mode=arm
; class-group: std::vector<unsigned int, glitch::core::SProcessBufferAllocator<unsigned int> >
; alias: _ZNSt6vectorIjN6glitch4core23SProcessBufferAllocatorIjEEEC1Ej
; demangled: std::vector<unsigned int, glitch::core::SProcessBufferAllocator<unsigned int> >::vector(unsigned int)
; decoder-mode: arm
0057ad78  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0057ad7c  01 61 a0 e1                                      lsl r6, r1, #2
0057ad80  00 70 a0 e3                                      mov r7, #0
0057ad84  00 40 a0 e1                                      mov r4, r0
0057ad88  00 70 80 e5                                      str r7, [r0]
0057ad8c  04 70 80 e5                                      str r7, [r0, #4]
0057ad90  08 70 80 e5                                      str r7, [r0, #8]
0057ad94  06 00 a0 e1                                      mov r0, r6
0057ad98  15 e6 fe eb                                      bl #0x5345f4
0057ad9c  06 50 80 e0                                      add r5, r0, r6
0057ada0  00 00 84 e5                                      str r0, [r4]
0057ada4  21 00 84 e9                                      stmib r4, {r0, r5}
0057ada8  07 10 a0 e1                                      mov r1, r7
0057adac  06 20 a0 e1                                      mov r2, r6
0057adb0  aa 4d f6 eb                                      bl #0x30e460
0057adb4  04 50 84 e5                                      str r5, [r4, #4]
0057adb8  04 00 a0 e1                                      mov r0, r4
0057adbc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0057adf8, declared_size=172, range_size=172, mode=arm
; class-group: std::vector<unsigned int, glitch::core::SProcessBufferAllocator<unsigned int> >
; alias: _ZNSt6vectorIjN6glitch4core23SProcessBufferAllocatorIjEEE7reserveEj
; demangled: std::vector<unsigned int, glitch::core::SProcessBufferAllocator<unsigned int> >::reserve(unsigned int)
; decoder-mode: arm
0057adf8  70 40 2d e9                                      push {r4, r5, r6, lr}
0057adfc  00 40 a0 e1                                      mov r4, r0
0057ae00  00 20 90 e5                                      ldr r2, [r0]
0057ae04  08 00 90 e5                                      ldr r0, [r0, #8]
0057ae08  08 d0 4d e2                                      sub sp, sp, #8
0057ae0c  04 10 8d e5                                      str r1, [sp, #4]
0057ae10  00 00 62 e0                                      rsb r0, r2, r0
0057ae14  40 01 51 e1                                      cmp r1, r0, asr #2
0057ae18  14 00 00 9a                                      bls #0x57ae70
0057ae1c  07 01 71 e3                                      cmn r1, #0xc0000001
0057ae20  14 00 00 8a                                      bhi #0x57ae78
0057ae24  04 30 94 e5                                      ldr r3, [r4, #4]
0057ae28  00 00 52 e3                                      cmp r2, #0
0057ae2c  03 50 62 e0                                      rsb r5, r2, r3
0057ae30  45 51 a0 e1                                      asr r5, r5, #2
0057ae34  14 00 00 0a                                      beq #0x57ae8c
0057ae38  04 00 a0 e1                                      mov r0, r4
0057ae3c  04 10 8d e2                                      add r1, sp, #4
0057ae40  de ff ff eb                                      bl #0x57adc0
0057ae44  00 60 a0 e1                                      mov r6, r0
0057ae48  00 00 94 e5                                      ldr r0, [r4]
0057ae4c  00 00 50 e3                                      cmp r0, #0
0057ae50  00 00 00 0a                                      beq #0x57ae58
0057ae54  0b e6 fe eb                                      bl #0x534688
0057ae58  04 30 9d e5                                      ldr r3, [sp, #4]
0057ae5c  05 51 86 e0                                      add r5, r6, r5, lsl #2
0057ae60  04 50 84 e5                                      str r5, [r4, #4]
0057ae64  03 31 86 e0                                      add r3, r6, r3, lsl #2
0057ae68  08 30 84 e5                                      str r3, [r4, #8]
0057ae6c  00 60 84 e5                                      str r6, [r4]
0057ae70  08 d0 8d e2                                      add sp, sp, #8
0057ae74  70 80 bd e8                                      pop {r4, r5, r6, pc}
0057ae78  20 00 9f e5                                      ldr r0, [pc, #0x20]
0057ae7c  00 00 8f e0                                      add r0, pc, r0
0057ae80  ee 37 06 eb                                      bl #0x708e40
0057ae84  00 20 94 e5                                      ldr r2, [r4]
0057ae88  e5 ff ff ea                                      b #0x57ae24
0057ae8c  04 00 9d e5                                      ldr r0, [sp, #4]
0057ae90  00 01 a0 e1                                      lsl r0, r0, #2
0057ae94  d6 e5 fe eb                                      bl #0x5345f4
0057ae98  00 60 a0 e1                                      mov r6, r0
0057ae9c  ed ff ff ea                                      b #0x57ae58
; mapping-symbol data/literal pool
0057aea0  ec 35 34 00                                      .byte 0xec, 0x35, 0x34, 0x00

; FUNCTION 0x0057c040, declared_size=196, range_size=196, mode=arm
; class-group: std::vector<unsigned int, glitch::core::SProcessBufferAllocator<unsigned int> >
; alias: _ZNSt6vectorIjN6glitch4core23SProcessBufferAllocatorIjEEE18_M_insert_overflowEPjRKjRKSt11__true_typejb
; demangled: std::vector<unsigned int, glitch::core::SProcessBufferAllocator<unsigned int> >::_M_insert_overflow(unsigned int*, unsigned int const&, std::__true_type const&, unsigned int, bool)
; decoder-mode: arm
0057c040  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0057c044  28 60 9d e5                                      ldr r6, [sp, #0x28]
0057c048  01 90 a0 e1                                      mov sb, r1
0057c04c  02 40 a0 e1                                      mov r4, r2
0057c050  06 10 a0 e1                                      mov r1, r6
0057c054  00 50 a0 e1                                      mov r5, r0
0057c058  2c b0 dd e5                                      ldrb fp, [sp, #0x2c]
0057c05c  12 f6 ff eb                                      bl #0x5798ac
0057c060  00 81 a0 e1                                      lsl r8, r0, #2
0057c064  08 00 a0 e1                                      mov r0, r8
0057c068  61 e1 fe eb                                      bl #0x5345f4
0057c06c  00 10 95 e5                                      ldr r1, [r5]
0057c070  00 70 a0 e1                                      mov r7, r0
0057c074  01 a0 59 e0                                      subs sl, sb, r1
0057c078  00 00 a0 01                                      moveq r0, r0
0057c07c  02 00 00 0a                                      beq #0x57c08c
0057c080  0a 20 a0 e1                                      mov r2, sl
0057c084  ab 47 f6 eb                                      bl #0x30df38
0057c088  0a 00 80 e0                                      add r0, r0, sl
0057c08c  00 00 56 e3                                      cmp r6, #0
0057c090  00 a0 a0 e1                                      mov sl, r0
0057c094  07 00 00 0a                                      beq #0x57c0b8
0057c098  06 20 a0 e1                                      mov r2, r6
0057c09c  00 30 a0 e3                                      mov r3, #0
0057c0a0  00 10 94 e5                                      ldr r1, [r4]
0057c0a4  01 20 52 e2                                      subs r2, r2, #1
0057c0a8  03 10 80 e7                                      str r1, [r0, r3]
0057c0ac  04 30 83 e2                                      add r3, r3, #4
0057c0b0  fa ff ff 1a                                      bne #0x57c0a0
0057c0b4  06 a1 80 e0                                      add sl, r0, r6, lsl #2
0057c0b8  00 00 5b e3                                      cmp fp, #0
0057c0bc  07 00 00 0a                                      beq #0x57c0e0
0057c0c0  00 00 95 e5                                      ldr r0, [r5]
0057c0c4  00 00 50 e3                                      cmp r0, #0
0057c0c8  00 00 00 0a                                      beq #0x57c0d0
0057c0cc  6d e1 fe eb                                      bl #0x534688
0057c0d0  08 80 87 e0                                      add r8, r7, r8
0057c0d4  08 80 85 e5                                      str r8, [r5, #8]
0057c0d8  80 04 85 e8                                      stm r5, {r7, sl}
0057c0dc  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0057c0e0  04 40 95 e5                                      ldr r4, [r5, #4]
0057c0e4  09 40 54 e0                                      subs r4, r4, sb
0057c0e8  f4 ff ff 0a                                      beq #0x57c0c0
0057c0ec  0a 00 a0 e1                                      mov r0, sl
0057c0f0  09 10 a0 e1                                      mov r1, sb
0057c0f4  04 20 a0 e1                                      mov r2, r4
0057c0f8  8e 47 f6 eb                                      bl #0x30df38
0057c0fc  04 a0 80 e0                                      add sl, r0, r4
0057c100  ee ff ff ea                                      b #0x57c0c0

; FUNCTION 0x0057c104, declared_size=84, range_size=84, mode=arm
; class-group: std::vector<unsigned int, glitch::core::SProcessBufferAllocator<unsigned int> >
; alias: _ZNSt6vectorIjN6glitch4core23SProcessBufferAllocatorIjEEE14_M_fill_insertEPjjRKj
; demangled: std::vector<unsigned int, glitch::core::SProcessBufferAllocator<unsigned int> >::_M_fill_insert(unsigned int*, unsigned int, unsigned int const&)
; decoder-mode: arm
0057c104  30 40 2d e9                                      push {r4, r5, lr}
0057c108  00 40 52 e2                                      subs r4, r2, #0
0057c10c  14 d0 4d e2                                      sub sp, sp, #0x14
0057c110  03 50 a0 e1                                      mov r5, r3
0057c114  09 00 00 0a                                      beq #0x57c140
0057c118  04 e0 90 e5                                      ldr lr, [r0, #4]
0057c11c  08 c0 90 e5                                      ldr ip, [r0, #8]
0057c120  0c c0 6e e0                                      rsb ip, lr, ip
0057c124  4c 01 54 e1                                      cmp r4, ip, asr #2
0057c128  06 00 00 9a                                      bls #0x57c148
0057c12c  03 20 a0 e1                                      mov r2, r3
0057c130  00 c0 a0 e3                                      mov ip, #0
0057c134  08 30 8d e2                                      add r3, sp, #8
0057c138  10 10 8d e8                                      stm sp, {r4, ip}
0057c13c  bf ff ff eb                                      bl #0x57c040
0057c140  14 d0 8d e2                                      add sp, sp, #0x14
0057c144  30 80 bd e8                                      pop {r4, r5, pc}
0057c148  0c c0 8d e2                                      add ip, sp, #0xc
0057c14c  00 c0 8d e5                                      str ip, [sp]
0057c150  72 f7 ff eb                                      bl #0x579f20
0057c154  f9 ff ff ea                                      b #0x57c140

; FUNCTION 0x0057c158, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<unsigned int, glitch::core::SProcessBufferAllocator<unsigned int> >
; alias: _ZNSt6vectorIjN6glitch4core23SProcessBufferAllocatorIjEEE6resizeEjRKj
; demangled: std::vector<unsigned int, glitch::core::SProcessBufferAllocator<unsigned int> >::resize(unsigned int, unsigned int const&)
; decoder-mode: arm
0057c158  30 00 2d e9                                      push {r4, r5}
0057c15c  04 40 90 e5                                      ldr r4, [r0, #4]
0057c160  00 50 90 e5                                      ldr r5, [r0]
0057c164  02 30 a0 e1                                      mov r3, r2
0057c168  04 20 65 e0                                      rsb r2, r5, r4
0057c16c  42 21 a0 e1                                      asr r2, r2, #2
0057c170  02 00 51 e1                                      cmp r1, r2
0057c174  04 00 00 2a                                      bhs #0x57c18c
0057c178  01 51 85 e0                                      add r5, r5, r1, lsl #2
0057c17c  04 00 55 e1                                      cmp r5, r4
0057c180  04 50 80 15                                      strne r5, [r0, #4]
0057c184  30 00 bd e8                                      pop {r4, r5}
0057c188  1e ff 2f e1                                      bx lr
0057c18c  01 20 62 e0                                      rsb r2, r2, r1
0057c190  04 10 a0 e1                                      mov r1, r4
0057c194  30 00 bd e8                                      pop {r4, r5}
0057c198  d9 ff ff ea                                      b #0x57c104
