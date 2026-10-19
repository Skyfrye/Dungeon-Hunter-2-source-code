; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0083f9f4, declared_size=136, range_size=136, mode=arm
; class-group: std::vector<item, std::allocator<item> >
; alias: _ZNSt6vectorI4itemSaIS0_EED1Ev
; demangled: std::vector<item, std::allocator<item> >::~vector()
; decoder-mode: arm
0083f9f4  70 40 2d e9                                      push {r4, r5, r6, lr}
0083f9f8  04 50 90 e5                                      ldr r5, [r0, #4]
0083f9fc  00 60 90 e5                                      ldr r6, [r0]
0083fa00  00 40 a0 e1                                      mov r4, r0
0083fa04  06 00 55 e1                                      cmp r5, r6
0083fa08  04 00 00 0a                                      beq #0x83fa20
0083fa0c  12 5e 45 e2                                      sub r5, r5, #0x120
0083fa10  05 00 a0 e1                                      mov r0, r5
0083fa14  32 ff ff eb                                      bl #0x83f6e4
0083fa18  05 00 56 e1                                      cmp r6, r5
0083fa1c  fa ff ff 1a                                      bne #0x83fa0c
0083fa20  00 00 94 e5                                      ldr r0, [r4]
0083fa24  00 00 50 e3                                      cmp r0, #0
0083fa28  0e 00 00 0a                                      beq #0x83fa68
0083fa2c  08 30 94 e5                                      ldr r3, [r4, #8]
0083fa30  03 30 60 e0                                      rsb r3, r0, r3
0083fa34  c3 32 a0 e1                                      asr r3, r3, #5
0083fa38  83 21 a0 e1                                      lsl r2, r3, #3
0083fa3c  02 20 63 e0                                      rsb r2, r3, r2
0083fa40  02 23 82 e0                                      add r2, r2, r2, lsl #6
0083fa44  82 21 83 e0                                      add r2, r3, r2, lsl #3
0083fa48  82 17 a0 e1                                      lsl r1, r2, #0xf
0083fa4c  01 20 62 e0                                      rsb r2, r2, r1
0083fa50  82 31 83 e0                                      add r3, r3, r2, lsl #3
0083fa54  12 1e a0 e3                                      mov r1, #0x120
0083fa58  91 03 01 e0                                      mul r1, r1, r3
0083fa5c  80 00 51 e3                                      cmp r1, #0x80
0083fa60  02 00 00 8a                                      bhi #0x83fa70
0083fa64  33 fa 01 eb                                      bl #0x8be338
0083fa68  04 00 a0 e1                                      mov r0, r4
0083fa6c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0083fa70  0e 3a eb eb                                      bl #0x30e2b0
0083fa74  04 00 a0 e1                                      mov r0, r4
0083fa78  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00842470, declared_size=136, range_size=136, mode=arm
; class-group: std::vector<item, std::allocator<item> >
; alias: _ZNSt6vectorI4itemSaIS0_EE20_M_compute_next_sizeEj
; demangled: std::vector<item, std::allocator<item> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
00842470  70 40 2d e9                                      push {r4, r5, r6, lr}
00842474  18 00 90 e8                                      ldm r0, {r3, r4}
00842478  01 50 a0 e1                                      mov r5, r1
0084247c  04 30 63 e0                                      rsb r3, r3, r4
00842480  c3 32 a0 e1                                      asr r3, r3, #5
00842484  83 41 a0 e1                                      lsl r4, r3, #3
00842488  04 40 63 e0                                      rsb r4, r3, r4
0084248c  04 43 84 e0                                      add r4, r4, r4, lsl #6
00842490  84 41 83 e0                                      add r4, r3, r4, lsl #3
00842494  84 27 a0 e1                                      lsl r2, r4, #0xf
00842498  02 40 64 e0                                      rsb r4, r4, r2
0084249c  84 41 83 e0                                      add r4, r3, r4, lsl #3
008424a0  e3 38 64 e2                                      rsb r3, r4, #0xe30000
008424a4  8e 3c 83 e2                                      add r3, r3, #0x8e00
008424a8  38 30 83 e2                                      add r3, r3, #0x38
008424ac  01 00 53 e1                                      cmp r3, r1
008424b0  0b 00 00 3a                                      blo #0x8424e4
008424b4  38 3e 08 e3                                      movw r3, #0x8e38
008424b8  05 00 54 e1                                      cmp r4, r5
008424bc  04 00 84 20                                      addhs r0, r4, r4
008424c0  05 00 84 30                                      addlo r0, r4, r5
008424c4  e3 30 40 e3                                      movt r3, #0xe3
008424c8  03 00 50 e1                                      cmp r0, r3
008424cc  01 00 00 8a                                      bhi #0x8424d8
008424d0  04 00 50 e1                                      cmp r0, r4
008424d4  01 00 00 2a                                      bhs #0x8424e0
008424d8  38 0e 08 e3                                      movw r0, #0x8e38
008424dc  e3 00 40 e3                                      movt r0, #0xe3
008424e0  70 80 bd e8                                      pop {r4, r5, r6, pc}
008424e4  08 00 9f e5                                      ldr r0, [pc, #8]
008424e8  00 00 8f e0                                      add r0, pc, r0
008424ec  85 ef 01 eb                                      bl #0x8be308
008424f0  ef ff ff ea                                      b #0x8424b4
; mapping-symbol data/literal pool
008424f4  80 bf 07 00                                      .byte 0x80, 0xbf, 0x07, 0x00

; FUNCTION 0x00842764, declared_size=156, range_size=156, mode=arm
; class-group: std::vector<item, std::allocator<item> >
; alias: _ZNSt6vectorI4itemSaIS0_EE8_M_eraseEPS0_S3_RKSt12__false_type
; demangled: std::vector<item, std::allocator<item> >::_M_erase(item*, item*, std::__false_type const&)
; decoder-mode: arm
00842764  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00842768  04 40 90 e5                                      ldr r4, [r0, #4]
0084276c  02 80 a0 e1                                      mov r8, r2
00842770  00 50 a0 e1                                      mov r5, r0
00842774  04 30 62 e0                                      rsb r3, r2, r4
00842778  c3 32 a0 e1                                      asr r3, r3, #5
0084277c  01 70 a0 e1                                      mov r7, r1
00842780  83 21 a0 e1                                      lsl r2, r3, #3
00842784  02 20 63 e0                                      rsb r2, r3, r2
00842788  02 23 82 e0                                      add r2, r2, r2, lsl #6
0084278c  82 21 83 e0                                      add r2, r3, r2, lsl #3
00842790  82 a7 a0 e1                                      lsl sl, r2, #0xf
00842794  0a a0 62 e0                                      rsb sl, r2, sl
00842798  8a a1 83 e0                                      add sl, r3, sl, lsl #3
0084279c  00 00 5a e3                                      cmp sl, #0
008427a0  01 a0 a0 d1                                      movle sl, r1
008427a4  0a 00 00 da                                      ble #0x8427d4
008427a8  0a 60 a0 e1                                      mov r6, sl
008427ac  00 40 a0 e3                                      mov r4, #0
008427b0  04 00 87 e0                                      add r0, r7, r4
008427b4  04 10 88 e0                                      add r1, r8, r4
008427b8  92 ff ff eb                                      bl #0x842608
008427bc  01 60 56 e2                                      subs r6, r6, #1
008427c0  12 4e 84 e2                                      add r4, r4, #0x120
008427c4  f9 ff ff 1a                                      bne #0x8427b0
008427c8  12 3e a0 e3                                      mov r3, #0x120
008427cc  93 7a 2a e0                                      mla sl, r3, sl, r7
008427d0  04 40 95 e5                                      ldr r4, [r5, #4]
008427d4  0a 00 54 e1                                      cmp r4, sl
008427d8  05 00 00 0a                                      beq #0x8427f4
008427dc  0a 60 a0 e1                                      mov r6, sl
008427e0  06 00 a0 e1                                      mov r0, r6
008427e4  12 6e 86 e2                                      add r6, r6, #0x120
008427e8  bd f3 ff eb                                      bl #0x83f6e4
008427ec  06 00 54 e1                                      cmp r4, r6
008427f0  fa ff ff 1a                                      bne #0x8427e0
008427f4  04 a0 85 e5                                      str sl, [r5, #4]
008427f8  07 00 a0 e1                                      mov r0, r7
008427fc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00842800, declared_size=140, range_size=140, mode=arm
; class-group: std::vector<item, std::allocator<item> >
; alias: _ZNSt6vectorI4itemSaIS0_EE19_M_clear_after_moveEv
; demangled: std::vector<item, std::allocator<item> >::_M_clear_after_move()
; decoder-mode: arm
00842800  70 40 2d e9                                      push {r4, r5, r6, lr}
00842804  04 40 90 e5                                      ldr r4, [r0, #4]
00842808  00 50 90 e5                                      ldr r5, [r0]
0084280c  00 60 a0 e1                                      mov r6, r0
00842810  05 00 54 e1                                      cmp r4, r5
00842814  05 00 00 0a                                      beq #0x842830
00842818  12 4e 44 e2                                      sub r4, r4, #0x120
0084281c  04 00 a0 e1                                      mov r0, r4
00842820  af f3 ff eb                                      bl #0x83f6e4
00842824  04 00 55 e1                                      cmp r5, r4
00842828  fa ff ff 1a                                      bne #0x842818
0084282c  00 40 96 e5                                      ldr r4, [r6]
00842830  00 00 54 e3                                      cmp r4, #0
00842834  08 30 96 e5                                      ldr r3, [r6, #8]
00842838  12 00 00 0a                                      beq #0x842888
0084283c  03 30 64 e0                                      rsb r3, r4, r3
00842840  c3 32 a0 e1                                      asr r3, r3, #5
00842844  83 21 a0 e1                                      lsl r2, r3, #3
00842848  02 20 63 e0                                      rsb r2, r3, r2
0084284c  02 23 82 e0                                      add r2, r2, r2, lsl #6
00842850  82 21 83 e0                                      add r2, r3, r2, lsl #3
00842854  82 17 a0 e1                                      lsl r1, r2, #0xf
00842858  01 20 62 e0                                      rsb r2, r2, r1
0084285c  82 31 83 e0                                      add r3, r3, r2, lsl #3
00842860  12 1e a0 e3                                      mov r1, #0x120
00842864  91 03 01 e0                                      mul r1, r1, r3
00842868  80 00 51 e3                                      cmp r1, #0x80
0084286c  02 00 00 8a                                      bhi #0x84287c
00842870  04 00 a0 e1                                      mov r0, r4
00842874  70 40 bd e8                                      pop {r4, r5, r6, lr}
00842878  ae ee 01 ea                                      b #0x8be338
0084287c  04 00 a0 e1                                      mov r0, r4
00842880  70 40 bd e8                                      pop {r4, r5, r6, lr}
00842884  89 2e eb ea                                      b #0x30e2b0
00842888  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0084288c, declared_size=140, range_size=140, mode=arm
; class-group: std::vector<item, std::allocator<item> >
; alias: _ZNSt6vectorI4itemSaIS0_EE8_M_clearEv
; demangled: std::vector<item, std::allocator<item> >::_M_clear()
; decoder-mode: arm
0084288c  70 40 2d e9                                      push {r4, r5, r6, lr}
00842890  04 40 90 e5                                      ldr r4, [r0, #4]
00842894  00 50 90 e5                                      ldr r5, [r0]
00842898  00 60 a0 e1                                      mov r6, r0
0084289c  05 00 54 e1                                      cmp r4, r5
008428a0  05 00 00 0a                                      beq #0x8428bc
008428a4  12 4e 44 e2                                      sub r4, r4, #0x120
008428a8  04 00 a0 e1                                      mov r0, r4
008428ac  8c f3 ff eb                                      bl #0x83f6e4
008428b0  04 00 55 e1                                      cmp r5, r4
008428b4  fa ff ff 1a                                      bne #0x8428a4
008428b8  00 40 96 e5                                      ldr r4, [r6]
008428bc  00 00 54 e3                                      cmp r4, #0
008428c0  08 30 96 e5                                      ldr r3, [r6, #8]
008428c4  12 00 00 0a                                      beq #0x842914
008428c8  03 30 64 e0                                      rsb r3, r4, r3
008428cc  c3 32 a0 e1                                      asr r3, r3, #5
008428d0  83 21 a0 e1                                      lsl r2, r3, #3
008428d4  02 20 63 e0                                      rsb r2, r3, r2
008428d8  02 23 82 e0                                      add r2, r2, r2, lsl #6
008428dc  82 21 83 e0                                      add r2, r3, r2, lsl #3
008428e0  82 17 a0 e1                                      lsl r1, r2, #0xf
008428e4  01 20 62 e0                                      rsb r2, r2, r1
008428e8  82 31 83 e0                                      add r3, r3, r2, lsl #3
008428ec  12 1e a0 e3                                      mov r1, #0x120
008428f0  91 03 01 e0                                      mul r1, r1, r3
008428f4  80 00 51 e3                                      cmp r1, #0x80
008428f8  02 00 00 8a                                      bhi #0x842908
008428fc  04 00 a0 e1                                      mov r0, r4
00842900  70 40 bd e8                                      pop {r4, r5, r6, lr}
00842904  8b ee 01 ea                                      b #0x8be338
00842908  04 00 a0 e1                                      mov r0, r4
0084290c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00842910  66 2e eb ea                                      b #0x30e2b0
00842914  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00842e0c, declared_size=216, range_size=216, mode=arm
; class-group: std::vector<item, std::allocator<item> >
; alias: _ZNSt6vectorI4itemSaIS0_EEC1ERKS2_
; demangled: std::vector<item, std::allocator<item> >::vector(std::vector<item, std::allocator<item> > const&)
; decoder-mode: arm
00842e0c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00842e10  01 50 a0 e1                                      mov r5, r1
00842e14  00 30 95 e5                                      ldr r3, [r5]
00842e18  04 10 91 e5                                      ldr r1, [r1, #4]
00842e1c  0c d0 4d e2                                      sub sp, sp, #0xc
00842e20  00 40 a0 e1                                      mov r4, r0
00842e24  01 30 63 e0                                      rsb r3, r3, r1
00842e28  c3 32 a0 e1                                      asr r3, r3, #5
00842e2c  00 60 a0 e3                                      mov r6, #0
00842e30  83 11 a0 e1                                      lsl r1, r3, #3
00842e34  01 10 63 e0                                      rsb r1, r3, r1
00842e38  01 13 81 e0                                      add r1, r1, r1, lsl #6
00842e3c  08 20 8d e2                                      add r2, sp, #8
00842e40  81 11 83 e0                                      add r1, r3, r1, lsl #3
00842e44  00 60 84 e5                                      str r6, [r4]
00842e48  81 c7 a0 e1                                      lsl ip, r1, #0xf
00842e4c  0c 10 61 e0                                      rsb r1, r1, ip
00842e50  81 11 83 e0                                      add r1, r3, r1, lsl #3
00842e54  04 10 22 e5                                      str r1, [r2, #-4]!
00842e58  04 60 84 e5                                      str r6, [r4, #4]
00842e5c  08 60 a0 e5                                      str r6, [r0, #8]!
00842e60  cb fe ff eb                                      bl #0x842994
00842e64  04 30 9d e5                                      ldr r3, [sp, #4]
00842e68  12 2e a0 e3                                      mov r2, #0x120
00842e6c  00 00 84 e5                                      str r0, [r4]
00842e70  92 03 23 e0                                      mla r3, r2, r3, r0
00842e74  09 00 84 e9                                      stmib r4, {r0, r3}
00842e78  04 30 95 e5                                      ldr r3, [r5, #4]
00842e7c  00 80 95 e5                                      ldr r8, [r5]
00842e80  00 70 a0 e1                                      mov r7, r0
00842e84  03 30 68 e0                                      rsb r3, r8, r3
00842e88  c3 32 a0 e1                                      asr r3, r3, #5
00842e8c  83 21 a0 e1                                      lsl r2, r3, #3
00842e90  02 20 63 e0                                      rsb r2, r3, r2
00842e94  02 23 82 e0                                      add r2, r2, r2, lsl #6
00842e98  82 21 83 e0                                      add r2, r3, r2, lsl #3
00842e9c  82 a7 a0 e1                                      lsl sl, r2, #0xf
00842ea0  0a a0 62 e0                                      rsb sl, r2, sl
00842ea4  8a a1 83 e0                                      add sl, r3, sl, lsl #3
00842ea8  06 00 5a e1                                      cmp sl, r6
00842eac  08 00 00 da                                      ble #0x842ed4
00842eb0  0a 50 a0 e1                                      mov r5, sl
00842eb4  06 00 87 e0                                      add r0, r7, r6
00842eb8  06 10 88 e0                                      add r1, r8, r6
00842ebc  ab ff ff eb                                      bl #0x842d70
00842ec0  01 50 55 e2                                      subs r5, r5, #1
00842ec4  12 6e 86 e2                                      add r6, r6, #0x120
00842ec8  f9 ff ff 1a                                      bne #0x842eb4
00842ecc  12 3e a0 e3                                      mov r3, #0x120
00842ed0  93 7a 27 e0                                      mla r7, r3, sl, r7
00842ed4  04 70 84 e5                                      str r7, [r4, #4]
00842ed8  04 00 a0 e1                                      mov r0, r4
00842edc  0c d0 8d e2                                      add sp, sp, #0xc
00842ee0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x00842ee4, declared_size=656, range_size=656, mode=arm
; class-group: std::vector<item, std::allocator<item> >
; alias: _ZNSt6vectorI4itemSaIS0_EE18_M_fill_insert_auxEPS0_jRKS0_RKSt12__false_type
; demangled: std::vector<item, std::allocator<item> >::_M_fill_insert_aux(item*, unsigned int, item const&, std::__false_type const&)
; decoder-mode: arm
00842ee4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00842ee8  7c 42 9f e5                                      ldr r4, [pc, #0x27c]
00842eec  7c c2 9f e5                                      ldr ip, [pc, #0x27c]
00842ef0  51 df 4d e2                                      sub sp, sp, #0x144
00842ef4  04 40 8f e0                                      add r4, pc, r4
00842ef8  10 c0 8d e5                                      str ip, [sp, #0x10]
00842efc  0c c0 94 e7                                      ldr ip, [r4, ip]
00842f00  00 50 a0 e1                                      mov r5, r0
00842f04  03 70 a0 e1                                      mov r7, r3
00842f08  00 00 90 e5                                      ldr r0, [r0]
00842f0c  00 30 9c e5                                      ldr r3, [ip]
00842f10  01 60 a0 e1                                      mov r6, r1
00842f14  00 00 57 e1                                      cmp r7, r0
00842f18  3c 31 8d e5                                      str r3, [sp, #0x13c]
00842f1c  04 80 95 35                                      ldrlo r8, [r5, #4]
00842f20  18 00 00 3a                                      blo #0x842f88
00842f24  04 80 95 e5                                      ldr r8, [r5, #4]
00842f28  08 00 57 e1                                      cmp r7, r8
00842f2c  15 00 00 2a                                      bhs #0x842f88
00842f30  1c 80 8d e2                                      add r8, sp, #0x1c
00842f34  07 10 a0 e1                                      mov r1, r7
00842f38  08 00 a0 e1                                      mov r0, r8
00842f3c  0c 20 8d e5                                      str r2, [sp, #0xc]
00842f40  8a ff ff eb                                      bl #0x842d70
00842f44  05 00 a0 e1                                      mov r0, r5
00842f48  18 c0 8d e2                                      add ip, sp, #0x18
00842f4c  06 10 a0 e1                                      mov r1, r6
00842f50  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00842f54  08 30 a0 e1                                      mov r3, r8
00842f58  00 c0 8d e5                                      str ip, [sp]
00842f5c  e0 ff ff eb                                      bl #0x842ee4
00842f60  08 00 a0 e1                                      mov r0, r8
00842f64  de f1 ff eb                                      bl #0x83f6e4
00842f68  10 00 9d e5                                      ldr r0, [sp, #0x10]
00842f6c  3c 21 9d e5                                      ldr r2, [sp, #0x13c]
00842f70  00 30 94 e7                                      ldr r3, [r4, r0]
00842f74  00 30 93 e5                                      ldr r3, [r3]
00842f78  03 00 52 e1                                      cmp r2, r3
00842f7c  79 00 00 1a                                      bne #0x843168
00842f80  51 df 8d e2                                      add sp, sp, #0x144
00842f84  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00842f88  08 30 66 e0                                      rsb r3, r6, r8
00842f8c  c3 32 a0 e1                                      asr r3, r3, #5
00842f90  83 11 a0 e1                                      lsl r1, r3, #3
00842f94  01 10 63 e0                                      rsb r1, r3, r1
00842f98  01 13 81 e0                                      add r1, r1, r1, lsl #6
00842f9c  81 11 83 e0                                      add r1, r3, r1, lsl #3
00842fa0  81 a7 a0 e1                                      lsl sl, r1, #0xf
00842fa4  0a a0 61 e0                                      rsb sl, r1, sl
00842fa8  8a a1 83 e0                                      add sl, r3, sl, lsl #3
00842fac  0a 00 52 e1                                      cmp r2, sl
00842fb0  3e 00 00 2a                                      bhs #0x8430b0
00842fb4  12 3e a0 e3                                      mov r3, #0x120
00842fb8  93 02 03 e0                                      mul r3, r3, r2
00842fbc  14 30 8d e5                                      str r3, [sp, #0x14]
00842fc0  c3 32 a0 e1                                      asr r3, r3, #5
00842fc4  14 00 9d e5                                      ldr r0, [sp, #0x14]
00842fc8  83 21 a0 e1                                      lsl r2, r3, #3
00842fcc  02 20 63 e0                                      rsb r2, r3, r2
00842fd0  02 23 82 e0                                      add r2, r2, r2, lsl #6
00842fd4  08 a0 60 e0                                      rsb sl, r0, r8
00842fd8  82 21 83 e0                                      add r2, r3, r2, lsl #3
00842fdc  82 b7 a0 e1                                      lsl fp, r2, #0xf
00842fe0  0b b0 62 e0                                      rsb fp, r2, fp
00842fe4  8b b1 83 e0                                      add fp, r3, fp, lsl #3
00842fe8  00 00 5b e3                                      cmp fp, #0
00842fec  08 10 a0 d1                                      movle r1, r8
00842ff0  07 00 00 da                                      ble #0x843014
00842ff4  00 90 a0 e3                                      mov sb, #0
00842ff8  09 00 88 e0                                      add r0, r8, sb
00842ffc  09 10 8a e0                                      add r1, sl, sb
00843000  5a ff ff eb                                      bl #0x842d70
00843004  01 b0 5b e2                                      subs fp, fp, #1
00843008  12 9e 89 e2                                      add sb, sb, #0x120
0084300c  f9 ff ff 1a                                      bne #0x842ff8
00843010  04 10 95 e5                                      ldr r1, [r5, #4]
00843014  14 20 9d e5                                      ldr r2, [sp, #0x14]
00843018  0a 30 66 e0                                      rsb r3, r6, sl
0084301c  c3 32 a0 e1                                      asr r3, r3, #5
00843020  02 10 81 e0                                      add r1, r1, r2
00843024  83 21 a0 e1                                      lsl r2, r3, #3
00843028  02 20 63 e0                                      rsb r2, r3, r2
0084302c  02 23 82 e0                                      add r2, r2, r2, lsl #6
00843030  04 10 85 e5                                      str r1, [r5, #4]
00843034  82 21 83 e0                                      add r2, r3, r2, lsl #3
00843038  82 57 a0 e1                                      lsl r5, r2, #0xf
0084303c  05 50 62 e0                                      rsb r5, r2, r5
00843040  85 51 83 e0                                      add r5, r3, r5, lsl #3
00843044  00 00 55 e3                                      cmp r5, #0
00843048  06 00 00 da                                      ble #0x843068
0084304c  12 8e 48 e2                                      sub r8, r8, #0x120
00843050  12 ae 4a e2                                      sub sl, sl, #0x120
00843054  08 00 a0 e1                                      mov r0, r8
00843058  0a 10 a0 e1                                      mov r1, sl
0084305c  69 fd ff eb                                      bl #0x842608
00843060  01 50 55 e2                                      subs r5, r5, #1
00843064  f8 ff ff 1a                                      bne #0x84304c
00843068  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0084306c  cc 32 a0 e1                                      asr r3, ip, #5
00843070  83 21 a0 e1                                      lsl r2, r3, #3
00843074  02 20 63 e0                                      rsb r2, r3, r2
00843078  02 23 82 e0                                      add r2, r2, r2, lsl #6
0084307c  82 21 83 e0                                      add r2, r3, r2, lsl #3
00843080  82 57 a0 e1                                      lsl r5, r2, #0xf
00843084  05 50 62 e0                                      rsb r5, r2, r5
00843088  85 51 83 e0                                      add r5, r3, r5, lsl #3
0084308c  00 00 55 e3                                      cmp r5, #0
00843090  b4 ff ff da                                      ble #0x842f68
00843094  06 00 a0 e1                                      mov r0, r6
00843098  07 10 a0 e1                                      mov r1, r7
0084309c  59 fd ff eb                                      bl #0x842608
008430a0  01 50 55 e2                                      subs r5, r5, #1
008430a4  12 6e 86 e2                                      add r6, r6, #0x120
008430a8  f9 ff ff 1a                                      bne #0x843094
008430ac  ad ff ff ea                                      b #0x842f68
008430b0  02 20 6a e0                                      rsb r2, sl, r2
008430b4  12 9e a0 e3                                      mov sb, #0x120
008430b8  99 82 29 e0                                      mla sb, sb, r2, r8
008430bc  09 30 68 e0                                      rsb r3, r8, sb
008430c0  c3 32 a0 e1                                      asr r3, r3, #5
008430c4  83 21 a0 e1                                      lsl r2, r3, #3
008430c8  02 20 63 e0                                      rsb r2, r3, r2
008430cc  02 23 82 e0                                      add r2, r2, r2, lsl #6
008430d0  82 21 83 e0                                      add r2, r3, r2, lsl #3
008430d4  82 b7 a0 e1                                      lsl fp, r2, #0xf
008430d8  0b b0 62 e0                                      rsb fp, r2, fp
008430dc  8b b1 83 e0                                      add fp, r3, fp, lsl #3
008430e0  00 00 5b e3                                      cmp fp, #0
008430e4  05 00 00 da                                      ble #0x843100
008430e8  08 00 a0 e1                                      mov r0, r8
008430ec  07 10 a0 e1                                      mov r1, r7
008430f0  1e ff ff eb                                      bl #0x842d70
008430f4  01 b0 5b e2                                      subs fp, fp, #1
008430f8  12 8e 88 e2                                      add r8, r8, #0x120
008430fc  f9 ff ff 1a                                      bne #0x8430e8
00843100  00 00 5a e3                                      cmp sl, #0
00843104  04 90 85 e5                                      str sb, [r5, #4]
00843108  12 00 00 da                                      ble #0x843158
0084310c  0a b0 a0 e1                                      mov fp, sl
00843110  00 80 a0 e3                                      mov r8, #0
00843114  08 00 89 e0                                      add r0, sb, r8
00843118  08 10 86 e0                                      add r1, r6, r8
0084311c  13 ff ff eb                                      bl #0x842d70
00843120  01 b0 5b e2                                      subs fp, fp, #1
00843124  12 8e 88 e2                                      add r8, r8, #0x120
00843128  f9 ff ff 1a                                      bne #0x843114
0084312c  04 30 95 e5                                      ldr r3, [r5, #4]
00843130  12 2e a0 e3                                      mov r2, #0x120
00843134  92 3a 23 e0                                      mla r3, r2, sl, r3
00843138  04 30 85 e5                                      str r3, [r5, #4]
0084313c  06 00 a0 e1                                      mov r0, r6
00843140  07 10 a0 e1                                      mov r1, r7
00843144  2f fd ff eb                                      bl #0x842608
00843148  01 a0 5a e2                                      subs sl, sl, #1
0084314c  12 6e 86 e2                                      add r6, r6, #0x120
00843150  f9 ff ff 1a                                      bne #0x84313c
00843154  83 ff ff ea                                      b #0x842f68
00843158  12 3e a0 e3                                      mov r3, #0x120
0084315c  93 9a 2a e0                                      mla sl, r3, sl, sb
00843160  04 a0 85 e5                                      str sl, [r5, #4]
00843164  7f ff ff ea                                      b #0x842f68
00843168  68 2c eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0084316c  9c 1b 15 00 ac 40 00 00                          .byte 0x9c, 0x1b, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00843174, declared_size=452, range_size=452, mode=arm
; class-group: std::vector<item, std::allocator<item> >
; alias: _ZNSt6vectorI4itemSaIS0_EE14_M_fill_insertEPS0_jRKS0_
; demangled: std::vector<item, std::allocator<item> >::_M_fill_insert(item*, unsigned int, item const&)
; decoder-mode: arm
00843174  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00843178  00 70 52 e2                                      subs r7, r2, #0
0084317c  1c d0 4d e2                                      sub sp, sp, #0x1c
00843180  00 50 a0 e1                                      mov r5, r0
00843184  01 40 a0 e1                                      mov r4, r1
00843188  03 60 a0 e1                                      mov r6, r3
0084318c  5e 00 00 0a                                      beq #0x84330c
00843190  00 50 90 e9                                      ldmib r0, {ip, lr}
00843194  0e c0 6c e0                                      rsb ip, ip, lr
00843198  cc c2 a0 e1                                      asr ip, ip, #5
0084319c  8c 81 a0 e1                                      lsl r8, ip, #3
008431a0  08 80 6c e0                                      rsb r8, ip, r8
008431a4  08 83 88 e0                                      add r8, r8, r8, lsl #6
008431a8  88 81 8c e0                                      add r8, ip, r8, lsl #3
008431ac  88 e7 a0 e1                                      lsl lr, r8, #0xf
008431b0  0e e0 68 e0                                      rsb lr, r8, lr
008431b4  8e c1 8c e0                                      add ip, ip, lr, lsl #3
008431b8  0c 00 57 e1                                      cmp r7, ip
008431bc  54 00 00 9a                                      bls #0x843314
008431c0  07 10 a0 e1                                      mov r1, r7
008431c4  a9 fc ff eb                                      bl #0x842470
008431c8  18 20 8d e2                                      add r2, sp, #0x18
008431cc  00 10 a0 e1                                      mov r1, r0
008431d0  08 00 22 e5                                      str r0, [r2, #-8]!
008431d4  08 00 85 e2                                      add r0, r5, #8
008431d8  ed fd ff eb                                      bl #0x842994
008431dc  00 b0 95 e5                                      ldr fp, [r5]
008431e0  00 90 a0 e1                                      mov sb, r0
008431e4  04 30 6b e0                                      rsb r3, fp, r4
008431e8  c3 32 a0 e1                                      asr r3, r3, #5
008431ec  83 21 a0 e1                                      lsl r2, r3, #3
008431f0  02 20 63 e0                                      rsb r2, r3, r2
008431f4  02 23 82 e0                                      add r2, r2, r2, lsl #6
008431f8  82 21 83 e0                                      add r2, r3, r2, lsl #3
008431fc  82 17 a0 e1                                      lsl r1, r2, #0xf
00843200  01 20 62 e0                                      rsb r2, r2, r1
00843204  82 21 83 e0                                      add r2, r3, r2, lsl #3
00843208  00 00 52 e3                                      cmp r2, #0
0084320c  0c 20 8d e5                                      str r2, [sp, #0xc]
00843210  00 80 a0 d1                                      movle r8, r0
00843214  0a 00 00 da                                      ble #0x843244
00843218  0c a0 9d e5                                      ldr sl, [sp, #0xc]
0084321c  00 80 a0 e3                                      mov r8, #0
00843220  08 00 89 e0                                      add r0, sb, r8
00843224  08 10 8b e0                                      add r1, fp, r8
00843228  d0 fe ff eb                                      bl #0x842d70
0084322c  01 a0 5a e2                                      subs sl, sl, #1
00843230  12 8e 88 e2                                      add r8, r8, #0x120
00843234  f9 ff ff 1a                                      bne #0x843220
00843238  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0084323c  12 8e a0 e3                                      mov r8, #0x120
00843240  98 93 28 e0                                      mla r8, r8, r3, sb
00843244  01 00 57 e3                                      cmp r7, #1
00843248  35 00 00 0a                                      beq #0x843324
0084324c  12 3e a0 e3                                      mov r3, #0x120
00843250  93 87 27 e0                                      mla r7, r3, r7, r8
00843254  07 30 68 e0                                      rsb r3, r8, r7
00843258  c3 32 a0 e1                                      asr r3, r3, #5
0084325c  83 21 a0 e1                                      lsl r2, r3, #3
00843260  02 20 63 e0                                      rsb r2, r3, r2
00843264  02 23 82 e0                                      add r2, r2, r2, lsl #6
00843268  82 21 83 e0                                      add r2, r3, r2, lsl #3
0084326c  82 a7 a0 e1                                      lsl sl, r2, #0xf
00843270  0a a0 62 e0                                      rsb sl, r2, sl
00843274  8a a1 83 e0                                      add sl, r3, sl, lsl #3
00843278  00 00 5a e3                                      cmp sl, #0
0084327c  05 00 00 da                                      ble #0x843298
00843280  08 00 a0 e1                                      mov r0, r8
00843284  06 10 a0 e1                                      mov r1, r6
00843288  b8 fe ff eb                                      bl #0x842d70
0084328c  01 a0 5a e2                                      subs sl, sl, #1
00843290  12 8e 88 e2                                      add r8, r8, #0x120
00843294  f9 ff ff 1a                                      bne #0x843280
00843298  04 30 95 e5                                      ldr r3, [r5, #4]
0084329c  03 30 64 e0                                      rsb r3, r4, r3
008432a0  c3 32 a0 e1                                      asr r3, r3, #5
008432a4  83 21 a0 e1                                      lsl r2, r3, #3
008432a8  02 20 63 e0                                      rsb r2, r3, r2
008432ac  02 23 82 e0                                      add r2, r2, r2, lsl #6
008432b0  82 21 83 e0                                      add r2, r3, r2, lsl #3
008432b4  82 a7 a0 e1                                      lsl sl, r2, #0xf
008432b8  0a a0 62 e0                                      rsb sl, r2, sl
008432bc  8a a1 83 e0                                      add sl, r3, sl, lsl #3
008432c0  00 00 5a e3                                      cmp sl, #0
008432c4  09 00 00 da                                      ble #0x8432f0
008432c8  0a 80 a0 e1                                      mov r8, sl
008432cc  00 60 a0 e3                                      mov r6, #0
008432d0  06 00 87 e0                                      add r0, r7, r6
008432d4  06 10 84 e0                                      add r1, r4, r6
008432d8  a4 fe ff eb                                      bl #0x842d70
008432dc  01 80 58 e2                                      subs r8, r8, #1
008432e0  12 6e 86 e2                                      add r6, r6, #0x120
008432e4  f9 ff ff 1a                                      bne #0x8432d0
008432e8  12 3e a0 e3                                      mov r3, #0x120
008432ec  93 7a 27 e0                                      mla r7, r3, sl, r7
008432f0  05 00 a0 e1                                      mov r0, r5
008432f4  41 fd ff eb                                      bl #0x842800
008432f8  10 30 9d e5                                      ldr r3, [sp, #0x10]
008432fc  12 2e a0 e3                                      mov r2, #0x120
00843300  00 90 85 e5                                      str sb, [r5]
00843304  92 93 29 e0                                      mla sb, r2, r3, sb
00843308  80 02 85 e9                                      stmib r5, {r7, sb}
0084330c  1c d0 8d e2                                      add sp, sp, #0x1c
00843310  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00843314  14 c0 8d e2                                      add ip, sp, #0x14
00843318  00 c0 8d e5                                      str ip, [sp]
0084331c  f0 fe ff eb                                      bl #0x842ee4
00843320  f9 ff ff ea                                      b #0x84330c
00843324  06 10 a0 e1                                      mov r1, r6
00843328  08 00 a0 e1                                      mov r0, r8
0084332c  8f fe ff eb                                      bl #0x842d70
00843330  12 7e 88 e2                                      add r7, r8, #0x120
00843334  d7 ff ff ea                                      b #0x843298

; FUNCTION 0x00843338, declared_size=112, range_size=112, mode=arm
; class-group: std::vector<item, std::allocator<item> >
; alias: _ZNSt6vectorI4itemSaIS0_EE6resizeEjRKS0_
; demangled: std::vector<item, std::allocator<item> >::resize(unsigned int, item const&)
; decoder-mode: arm
00843338  70 40 2d e9                                      push {r4, r5, r6, lr}
0084333c  10 10 90 e8                                      ldm r0, {r4, ip}
00843340  02 30 a0 e1                                      mov r3, r2
00843344  08 d0 4d e2                                      sub sp, sp, #8
00843348  0c 20 64 e0                                      rsb r2, r4, ip
0084334c  c2 22 a0 e1                                      asr r2, r2, #5
00843350  82 51 a0 e1                                      lsl r5, r2, #3
00843354  05 50 62 e0                                      rsb r5, r2, r5
00843358  05 53 85 e0                                      add r5, r5, r5, lsl #6
0084335c  85 51 82 e0                                      add r5, r2, r5, lsl #3
00843360  85 67 a0 e1                                      lsl r6, r5, #0xf
00843364  06 50 65 e0                                      rsb r5, r5, r6
00843368  85 21 82 e0                                      add r2, r2, r5, lsl #3
0084336c  02 00 51 e1                                      cmp r1, r2
00843370  08 00 00 2a                                      bhs #0x843398
00843374  12 3e a0 e3                                      mov r3, #0x120
00843378  93 41 21 e0                                      mla r1, r3, r1, r4
0084337c  0c 00 51 e1                                      cmp r1, ip
00843380  02 00 00 0a                                      beq #0x843390
00843384  0c 20 a0 e1                                      mov r2, ip
00843388  04 30 8d e2                                      add r3, sp, #4
0084338c  f4 fc ff eb                                      bl #0x842764
00843390  08 d0 8d e2                                      add sp, sp, #8
00843394  70 80 bd e8                                      pop {r4, r5, r6, pc}
00843398  01 20 62 e0                                      rsb r2, r2, r1
0084339c  0c 10 a0 e1                                      mov r1, ip
008433a0  73 ff ff eb                                      bl #0x843174
008433a4  f9 ff ff ea                                      b #0x843390

; FUNCTION 0x008433a8, declared_size=580, range_size=580, mode=arm
; class-group: std::vector<item, std::allocator<item> >
; alias: _ZNSt6vectorI4itemSaIS0_EEaSERKS2_
; demangled: std::vector<item, std::allocator<item> >::operator=(std::vector<item, std::allocator<item> > const&)
; decoder-mode: arm
008433a8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008433ac  00 00 51 e1                                      cmp r1, r0
008433b0  0c d0 4d e2                                      sub sp, sp, #0xc
008433b4  00 50 a0 e1                                      mov r5, r0
008433b8  01 b0 a0 e1                                      mov fp, r1
008433bc  3b 00 00 0a                                      beq #0x8434b0
008433c0  00 70 90 e5                                      ldr r7, [r0]
008433c4  08 30 90 e5                                      ldr r3, [r0, #8]
008433c8  04 10 91 e5                                      ldr r1, [r1, #4]
008433cc  00 40 9b e5                                      ldr r4, [fp]
008433d0  03 30 67 e0                                      rsb r3, r7, r3
008433d4  c3 32 a0 e1                                      asr r3, r3, #5
008433d8  01 20 64 e0                                      rsb r2, r4, r1
008433dc  c2 22 a0 e1                                      asr r2, r2, #5
008433e0  83 01 a0 e1                                      lsl r0, r3, #3
008433e4  82 c1 a0 e1                                      lsl ip, r2, #3
008433e8  00 00 63 e0                                      rsb r0, r3, r0
008433ec  0c c0 62 e0                                      rsb ip, r2, ip
008433f0  0c c3 8c e0                                      add ip, ip, ip, lsl #6
008433f4  00 03 80 e0                                      add r0, r0, r0, lsl #6
008433f8  8c c1 82 e0                                      add ip, r2, ip, lsl #3
008433fc  80 01 83 e0                                      add r0, r3, r0, lsl #3
00843400  8c 67 a0 e1                                      lsl r6, ip, #0xf
00843404  80 87 a0 e1                                      lsl r8, r0, #0xf
00843408  06 60 6c e0                                      rsb r6, ip, r6
0084340c  08 00 60 e0                                      rsb r0, r0, r8
00843410  86 61 82 e0                                      add r6, r2, r6, lsl #3
00843414  80 31 83 e0                                      add r3, r3, r0, lsl #3
00843418  03 00 56 e1                                      cmp r6, r3
0084341c  06 90 a0 e1                                      mov sb, r6
00843420  59 00 00 8a                                      bhi #0x84358c
00843424  04 a0 95 e5                                      ldr sl, [r5, #4]
00843428  0a 30 67 e0                                      rsb r3, r7, sl
0084342c  c3 32 a0 e1                                      asr r3, r3, #5
00843430  83 21 a0 e1                                      lsl r2, r3, #3
00843434  02 20 63 e0                                      rsb r2, r3, r2
00843438  02 23 82 e0                                      add r2, r2, r2, lsl #6
0084343c  82 21 83 e0                                      add r2, r3, r2, lsl #3
00843440  82 07 a0 e1                                      lsl r0, r2, #0xf
00843444  00 20 62 e0                                      rsb r2, r2, r0
00843448  82 31 83 e0                                      add r3, r3, r2, lsl #3
0084344c  03 00 56 e1                                      cmp r6, r3
00843450  19 00 00 8a                                      bhi #0x8434bc
00843454  00 00 56 e3                                      cmp r6, #0
00843458  0e 00 00 da                                      ble #0x843498
0084345c  00 80 a0 e3                                      mov r8, #0
00843460  08 00 87 e0                                      add r0, r7, r8
00843464  08 10 84 e0                                      add r1, r4, r8
00843468  66 fc ff eb                                      bl #0x842608
0084346c  01 90 59 e2                                      subs sb, sb, #1
00843470  12 8e 88 e2                                      add r8, r8, #0x120
00843474  f9 ff ff 1a                                      bne #0x843460
00843478  12 3e a0 e3                                      mov r3, #0x120
0084347c  93 76 27 e0                                      mla r7, r3, r6, r7
00843480  04 a0 95 e5                                      ldr sl, [r5, #4]
00843484  0a 00 57 e1                                      cmp r7, sl
00843488  04 00 00 0a                                      beq #0x8434a0
0084348c  07 00 a0 e1                                      mov r0, r7
00843490  12 7e 87 e2                                      add r7, r7, #0x120
00843494  92 f0 ff eb                                      bl #0x83f6e4
00843498  0a 00 57 e1                                      cmp r7, sl
0084349c  fa ff ff 1a                                      bne #0x84348c
008434a0  00 70 95 e5                                      ldr r7, [r5]
008434a4  12 3e a0 e3                                      mov r3, #0x120
008434a8  93 76 27 e0                                      mla r7, r3, r6, r7
008434ac  04 70 85 e5                                      str r7, [r5, #4]
008434b0  05 00 a0 e1                                      mov r0, r5
008434b4  0c d0 8d e2                                      add sp, sp, #0xc
008434b8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008434bc  12 9e a0 e3                                      mov sb, #0x120
008434c0  99 43 29 e0                                      mla sb, sb, r3, r4
008434c4  09 30 64 e0                                      rsb r3, r4, sb
008434c8  c3 32 a0 e1                                      asr r3, r3, #5
008434cc  83 21 a0 e1                                      lsl r2, r3, #3
008434d0  02 20 63 e0                                      rsb r2, r3, r2
008434d4  02 23 82 e0                                      add r2, r2, r2, lsl #6
008434d8  82 21 83 e0                                      add r2, r3, r2, lsl #3
008434dc  82 87 a0 e1                                      lsl r8, r2, #0xf
008434e0  08 80 62 e0                                      rsb r8, r2, r8
008434e4  88 81 83 e0                                      add r8, r3, r8, lsl #3
008434e8  00 00 58 e3                                      cmp r8, #0
008434ec  13 00 00 da                                      ble #0x843540
008434f0  00 a0 a0 e3                                      mov sl, #0
008434f4  0a 00 87 e0                                      add r0, r7, sl
008434f8  0a 10 84 e0                                      add r1, r4, sl
008434fc  41 fc ff eb                                      bl #0x842608
00843500  01 80 58 e2                                      subs r8, r8, #1
00843504  12 ae 8a e2                                      add sl, sl, #0x120
00843508  f9 ff ff 1a                                      bne #0x8434f4
0084350c  80 04 95 e8                                      ldm r5, {r7, sl}
00843510  03 00 9b e8                                      ldm fp, {r0, r1}
00843514  0a 30 67 e0                                      rsb r3, r7, sl
00843518  c3 32 a0 e1                                      asr r3, r3, #5
0084351c  83 21 a0 e1                                      lsl r2, r3, #3
00843520  02 20 63 e0                                      rsb r2, r3, r2
00843524  02 23 82 e0                                      add r2, r2, r2, lsl #6
00843528  82 21 83 e0                                      add r2, r3, r2, lsl #3
0084352c  82 97 a0 e1                                      lsl sb, r2, #0xf
00843530  09 20 62 e0                                      rsb r2, r2, sb
00843534  82 31 83 e0                                      add r3, r3, r2, lsl #3
00843538  12 9e a0 e3                                      mov sb, #0x120
0084353c  99 03 29 e0                                      mla sb, sb, r3, r0
00843540  01 10 69 e0                                      rsb r1, sb, r1
00843544  c1 12 a0 e1                                      asr r1, r1, #5
00843548  81 31 a0 e1                                      lsl r3, r1, #3
0084354c  03 30 61 e0                                      rsb r3, r1, r3
00843550  03 33 83 e0                                      add r3, r3, r3, lsl #6
00843554  83 31 81 e0                                      add r3, r1, r3, lsl #3
00843558  83 87 a0 e1                                      lsl r8, r3, #0xf
0084355c  08 80 63 e0                                      rsb r8, r3, r8
00843560  88 81 81 e0                                      add r8, r1, r8, lsl #3
00843564  00 00 58 e3                                      cmp r8, #0
00843568  cd ff ff da                                      ble #0x8434a4
0084356c  00 40 a0 e3                                      mov r4, #0
00843570  04 00 8a e0                                      add r0, sl, r4
00843574  04 10 89 e0                                      add r1, sb, r4
00843578  fc fd ff eb                                      bl #0x842d70
0084357c  01 80 58 e2                                      subs r8, r8, #1
00843580  12 4e 84 e2                                      add r4, r4, #0x120
00843584  f9 ff ff 1a                                      bne #0x843570
00843588  c4 ff ff ea                                      b #0x8434a0
0084358c  08 20 8d e2                                      add r2, sp, #8
00843590  04 60 22 e5                                      str r6, [r2, #-4]!
00843594  08 00 85 e2                                      add r0, r5, #8
00843598  06 10 a0 e1                                      mov r1, r6
0084359c  fc fc ff eb                                      bl #0x842994
008435a0  00 00 56 e3                                      cmp r6, #0
008435a4  00 70 a0 e1                                      mov r7, r0
008435a8  06 a0 a0 e1                                      mov sl, r6
008435ac  06 00 00 da                                      ble #0x8435cc
008435b0  00 80 a0 e3                                      mov r8, #0
008435b4  08 00 87 e0                                      add r0, r7, r8
008435b8  08 10 84 e0                                      add r1, r4, r8
008435bc  eb fd ff eb                                      bl #0x842d70
008435c0  01 a0 5a e2                                      subs sl, sl, #1
008435c4  12 8e 88 e2                                      add r8, r8, #0x120
008435c8  f9 ff ff 1a                                      bne #0x8435b4
008435cc  05 00 a0 e1                                      mov r0, r5
008435d0  ad fc ff eb                                      bl #0x84288c
008435d4  04 30 9d e5                                      ldr r3, [sp, #4]
008435d8  12 2e a0 e3                                      mov r2, #0x120
008435dc  00 70 85 e5                                      str r7, [r5]
008435e0  92 73 23 e0                                      mla r3, r2, r3, r7
008435e4  08 30 85 e5                                      str r3, [r5, #8]
008435e8  ad ff ff ea                                      b #0x8434a4
