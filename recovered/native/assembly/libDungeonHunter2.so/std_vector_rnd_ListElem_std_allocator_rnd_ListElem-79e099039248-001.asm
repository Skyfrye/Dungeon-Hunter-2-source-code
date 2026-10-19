; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00488280, declared_size=128, range_size=128, mode=arm
; class-group: std::vector<rnd::ListElem, std::allocator<rnd::ListElem> >
; alias: _ZNSt6vectorIN3rnd8ListElemESaIS1_EED1Ev
; demangled: std::vector<rnd::ListElem, std::allocator<rnd::ListElem> >::~vector()
; decoder-mode: arm
00488280  70 40 2d e9                                      push {r4, r5, r6, lr}
00488284  04 50 90 e5                                      ldr r5, [r0, #4]
00488288  00 60 90 e5                                      ldr r6, [r0]
0048828c  00 40 a0 e1                                      mov r4, r0
00488290  06 00 55 e1                                      cmp r5, r6
00488294  04 00 00 0a                                      beq #0x4882ac
00488298  50 50 45 e2                                      sub r5, r5, #0x50
0048829c  05 00 a0 e1                                      mov r0, r5
004882a0  ca ff ff eb                                      bl #0x4881d0
004882a4  05 00 56 e1                                      cmp r6, r5
004882a8  fa ff ff 1a                                      bne #0x488298
004882ac  00 00 94 e5                                      ldr r0, [r4]
004882b0  00 00 50 e3                                      cmp r0, #0
004882b4  0c 00 00 0a                                      beq #0x4882ec
004882b8  08 30 94 e5                                      ldr r3, [r4, #8]
004882bc  03 30 60 e0                                      rsb r3, r0, r3
004882c0  43 32 a0 e1                                      asr r3, r3, #4
004882c4  83 10 83 e0                                      add r1, r3, r3, lsl #1
004882c8  01 12 81 e0                                      add r1, r1, r1, lsl #4
004882cc  01 14 81 e0                                      add r1, r1, r1, lsl #8
004882d0  01 18 81 e0                                      add r1, r1, r1, lsl #16
004882d4  01 31 83 e0                                      add r3, r3, r1, lsl #2
004882d8  50 10 a0 e3                                      mov r1, #0x50
004882dc  91 03 01 e0                                      mul r1, r1, r3
004882e0  80 00 51 e3                                      cmp r1, #0x80
004882e4  02 00 00 8a                                      bhi #0x4882f4
004882e8  04 03 0a eb                                      bl #0x708f00
004882ec  04 00 a0 e1                                      mov r0, r4
004882f0  70 80 bd e8                                      pop {r4, r5, r6, pc}
004882f4  51 20 fa eb                                      bl #0x310440
004882f8  04 00 a0 e1                                      mov r0, r4
004882fc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0048d9ec, declared_size=132, range_size=132, mode=arm
; class-group: std::vector<rnd::ListElem, std::allocator<rnd::ListElem> >
; alias: _ZNSt6vectorIN3rnd8ListElemESaIS1_EE19_M_clear_after_moveEv
; demangled: std::vector<rnd::ListElem, std::allocator<rnd::ListElem> >::_M_clear_after_move()
; decoder-mode: arm
0048d9ec  70 40 2d e9                                      push {r4, r5, r6, lr}
0048d9f0  04 40 90 e5                                      ldr r4, [r0, #4]
0048d9f4  00 50 90 e5                                      ldr r5, [r0]
0048d9f8  00 60 a0 e1                                      mov r6, r0
0048d9fc  05 00 54 e1                                      cmp r4, r5
0048da00  05 00 00 0a                                      beq #0x48da1c
0048da04  50 40 44 e2                                      sub r4, r4, #0x50
0048da08  04 00 a0 e1                                      mov r0, r4
0048da0c  ef e9 ff eb                                      bl #0x4881d0
0048da10  04 00 55 e1                                      cmp r5, r4
0048da14  fa ff ff 1a                                      bne #0x48da04
0048da18  00 40 96 e5                                      ldr r4, [r6]
0048da1c  00 00 54 e3                                      cmp r4, #0
0048da20  08 30 96 e5                                      ldr r3, [r6, #8]
0048da24  10 00 00 0a                                      beq #0x48da6c
0048da28  03 30 64 e0                                      rsb r3, r4, r3
0048da2c  43 32 a0 e1                                      asr r3, r3, #4
0048da30  83 10 83 e0                                      add r1, r3, r3, lsl #1
0048da34  01 12 81 e0                                      add r1, r1, r1, lsl #4
0048da38  01 14 81 e0                                      add r1, r1, r1, lsl #8
0048da3c  01 18 81 e0                                      add r1, r1, r1, lsl #16
0048da40  01 31 83 e0                                      add r3, r3, r1, lsl #2
0048da44  50 10 a0 e3                                      mov r1, #0x50
0048da48  91 03 01 e0                                      mul r1, r1, r3
0048da4c  80 00 51 e3                                      cmp r1, #0x80
0048da50  02 00 00 8a                                      bhi #0x48da60
0048da54  04 00 a0 e1                                      mov r0, r4
0048da58  70 40 bd e8                                      pop {r4, r5, r6, lr}
0048da5c  27 ed 09 ea                                      b #0x708f00
0048da60  04 00 a0 e1                                      mov r0, r4
0048da64  70 40 bd e8                                      pop {r4, r5, r6, lr}
0048da68  74 0a fa ea                                      b #0x310440
0048da6c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0048dae8, declared_size=116, range_size=116, mode=arm
; class-group: std::vector<rnd::ListElem, std::allocator<rnd::ListElem> >
; alias: _ZNSt6vectorIN3rnd8ListElemESaIS1_EE8_M_eraseEPS1_RKSt12__false_type
; demangled: std::vector<rnd::ListElem, std::allocator<rnd::ListElem> >::_M_erase(rnd::ListElem*, std::__false_type const&)
; decoder-mode: arm
0048dae8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0048daec  00 70 a0 e1                                      mov r7, r0
0048daf0  04 00 90 e5                                      ldr r0, [r0, #4]
0048daf4  50 30 81 e2                                      add r3, r1, #0x50
0048daf8  01 60 a0 e1                                      mov r6, r1
0048dafc  00 00 53 e1                                      cmp r3, r0
0048db00  10 00 00 0a                                      beq #0x48db48
0048db04  00 30 63 e0                                      rsb r3, r3, r0
0048db08  43 32 a0 e1                                      asr r3, r3, #4
0048db0c  83 40 83 e0                                      add r4, r3, r3, lsl #1
0048db10  04 42 84 e0                                      add r4, r4, r4, lsl #4
0048db14  04 44 84 e0                                      add r4, r4, r4, lsl #8
0048db18  04 48 84 e0                                      add r4, r4, r4, lsl #16
0048db1c  04 41 83 e0                                      add r4, r3, r4, lsl #2
0048db20  00 00 54 e3                                      cmp r4, #0
0048db24  07 00 00 da                                      ble #0x48db48
0048db28  01 00 a0 e1                                      mov r0, r1
0048db2c  50 50 80 e2                                      add r5, r0, #0x50
0048db30  05 10 a0 e1                                      mov r1, r5
0048db34  60 f9 ff eb                                      bl #0x48c0bc
0048db38  01 40 54 e2                                      subs r4, r4, #1
0048db3c  05 00 a0 e1                                      mov r0, r5
0048db40  f9 ff ff 1a                                      bne #0x48db2c
0048db44  04 00 97 e5                                      ldr r0, [r7, #4]
0048db48  50 00 40 e2                                      sub r0, r0, #0x50
0048db4c  04 00 87 e5                                      str r0, [r7, #4]
0048db50  9e e9 ff eb                                      bl #0x4881d0
0048db54  06 00 a0 e1                                      mov r0, r6
0048db58  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0048e4c0, declared_size=200, range_size=200, mode=arm
; class-group: std::vector<rnd::ListElem, std::allocator<rnd::ListElem> >
; alias: _ZNSt6vectorIN3rnd8ListElemESaIS1_EEC1ERKS3_
; demangled: std::vector<rnd::ListElem, std::allocator<rnd::ListElem> >::vector(std::vector<rnd::ListElem, std::allocator<rnd::ListElem> > const&)
; decoder-mode: arm
0048e4c0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0048e4c4  01 50 a0 e1                                      mov r5, r1
0048e4c8  00 30 95 e5                                      ldr r3, [r5]
0048e4cc  04 10 91 e5                                      ldr r1, [r1, #4]
0048e4d0  0c d0 4d e2                                      sub sp, sp, #0xc
0048e4d4  00 40 a0 e1                                      mov r4, r0
0048e4d8  01 30 63 e0                                      rsb r3, r3, r1
0048e4dc  43 32 a0 e1                                      asr r3, r3, #4
0048e4e0  00 60 a0 e3                                      mov r6, #0
0048e4e4  83 10 83 e0                                      add r1, r3, r3, lsl #1
0048e4e8  08 20 8d e2                                      add r2, sp, #8
0048e4ec  01 12 81 e0                                      add r1, r1, r1, lsl #4
0048e4f0  00 60 84 e5                                      str r6, [r4]
0048e4f4  01 14 81 e0                                      add r1, r1, r1, lsl #8
0048e4f8  04 60 84 e5                                      str r6, [r4, #4]
0048e4fc  01 18 81 e0                                      add r1, r1, r1, lsl #16
0048e500  08 60 a0 e5                                      str r6, [r0, #8]!
0048e504  01 11 83 e0                                      add r1, r3, r1, lsl #2
0048e508  04 10 22 e5                                      str r1, [r2, #-4]!
0048e50c  17 f9 ff eb                                      bl #0x48c970
0048e510  04 30 9d e5                                      ldr r3, [sp, #4]
0048e514  50 20 a0 e3                                      mov r2, #0x50
0048e518  00 00 84 e5                                      str r0, [r4]
0048e51c  92 03 23 e0                                      mla r3, r2, r3, r0
0048e520  09 00 84 e9                                      stmib r4, {r0, r3}
0048e524  04 30 95 e5                                      ldr r3, [r5, #4]
0048e528  00 80 95 e5                                      ldr r8, [r5]
0048e52c  00 70 a0 e1                                      mov r7, r0
0048e530  03 30 68 e0                                      rsb r3, r8, r3
0048e534  43 32 a0 e1                                      asr r3, r3, #4
0048e538  83 a0 83 e0                                      add sl, r3, r3, lsl #1
0048e53c  0a a2 8a e0                                      add sl, sl, sl, lsl #4
0048e540  0a a4 8a e0                                      add sl, sl, sl, lsl #8
0048e544  0a a8 8a e0                                      add sl, sl, sl, lsl #16
0048e548  0a a1 83 e0                                      add sl, r3, sl, lsl #2
0048e54c  06 00 5a e1                                      cmp sl, r6
0048e550  08 00 00 da                                      ble #0x48e578
0048e554  0a 50 a0 e1                                      mov r5, sl
0048e558  06 00 87 e0                                      add r0, r7, r6
0048e55c  06 10 88 e0                                      add r1, r8, r6
0048e560  46 ff ff eb                                      bl #0x48e280
0048e564  01 50 55 e2                                      subs r5, r5, #1
0048e568  50 60 86 e2                                      add r6, r6, #0x50
0048e56c  f9 ff ff 1a                                      bne #0x48e558
0048e570  50 30 a0 e3                                      mov r3, #0x50
0048e574  93 7a 27 e0                                      mla r7, r3, sl, r7
0048e578  04 70 84 e5                                      str r7, [r4, #4]
0048e57c  04 00 a0 e1                                      mov r0, r4
0048e580  0c d0 8d e2                                      add sp, sp, #0xc
0048e584  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x0048eb50, declared_size=292, range_size=292, mode=arm
; class-group: std::vector<rnd::ListElem, std::allocator<rnd::ListElem> >
; alias: _ZNSt6vectorIN3rnd8ListElemESaIS1_EE9push_backERKS1_
; demangled: std::vector<rnd::ListElem, std::allocator<rnd::ListElem> >::push_back(rnd::ListElem const&)
; decoder-mode: arm
0048eb50  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0048eb54  00 40 a0 e1                                      mov r4, r0
0048eb58  08 50 94 e5                                      ldr r5, [r4, #8]
0048eb5c  04 00 90 e5                                      ldr r0, [r0, #4]
0048eb60  08 d0 4d e2                                      sub sp, sp, #8
0048eb64  01 60 a0 e1                                      mov r6, r1
0048eb68  05 00 50 e1                                      cmp r0, r5
0048eb6c  05 00 00 0a                                      beq #0x48eb88
0048eb70  c2 fd ff eb                                      bl #0x48e280
0048eb74  04 30 94 e5                                      ldr r3, [r4, #4]
0048eb78  50 30 83 e2                                      add r3, r3, #0x50
0048eb7c  04 30 84 e5                                      str r3, [r4, #4]
0048eb80  08 d0 8d e2                                      add sp, sp, #8
0048eb84  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0048eb88  00 20 94 e5                                      ldr r2, [r4]
0048eb8c  33 33 03 e3                                      movw r3, #0x3333
0048eb90  03 36 83 e1                                      orr r3, r3, r3, lsl #12
0048eb94  05 20 62 e0                                      rsb r2, r2, r5
0048eb98  42 22 a0 e1                                      asr r2, r2, #4
0048eb9c  82 10 82 e0                                      add r1, r2, r2, lsl #1
0048eba0  01 12 81 e0                                      add r1, r1, r1, lsl #4
0048eba4  01 14 81 e0                                      add r1, r1, r1, lsl #8
0048eba8  01 18 81 e0                                      add r1, r1, r1, lsl #16
0048ebac  01 21 82 e0                                      add r2, r2, r1, lsl #2
0048ebb0  01 00 52 e3                                      cmp r2, #1
0048ebb4  02 10 82 20                                      addhs r1, r2, r2
0048ebb8  01 10 82 32                                      addlo r1, r2, #1
0048ebbc  03 00 51 e1                                      cmp r1, r3
0048ebc0  28 00 00 9a                                      bls #0x48ec68
0048ebc4  33 13 03 e3                                      movw r1, #0x3333
0048ebc8  01 16 81 e1                                      orr r1, r1, r1, lsl #12
0048ebcc  08 20 8d e2                                      add r2, sp, #8
0048ebd0  04 10 22 e5                                      str r1, [r2, #-4]!
0048ebd4  08 00 84 e2                                      add r0, r4, #8
0048ebd8  64 f7 ff eb                                      bl #0x48c970
0048ebdc  00 90 94 e5                                      ldr sb, [r4]
0048ebe0  00 a0 a0 e1                                      mov sl, r0
0048ebe4  05 50 69 e0                                      rsb r5, sb, r5
0048ebe8  45 32 a0 e1                                      asr r3, r5, #4
0048ebec  83 50 83 e0                                      add r5, r3, r3, lsl #1
0048ebf0  05 52 85 e0                                      add r5, r5, r5, lsl #4
0048ebf4  05 54 85 e0                                      add r5, r5, r5, lsl #8
0048ebf8  05 58 85 e0                                      add r5, r5, r5, lsl #16
0048ebfc  05 51 83 e0                                      add r5, r3, r5, lsl #2
0048ec00  00 00 55 e3                                      cmp r5, #0
0048ec04  00 50 a0 d1                                      movle r5, r0
0048ec08  09 00 00 da                                      ble #0x48ec34
0048ec0c  05 80 a0 e1                                      mov r8, r5
0048ec10  00 70 a0 e3                                      mov r7, #0
0048ec14  07 00 8a e0                                      add r0, sl, r7
0048ec18  07 10 89 e0                                      add r1, sb, r7
0048ec1c  97 fd ff eb                                      bl #0x48e280
0048ec20  01 80 58 e2                                      subs r8, r8, #1
0048ec24  50 70 87 e2                                      add r7, r7, #0x50
0048ec28  f9 ff ff 1a                                      bne #0x48ec14
0048ec2c  50 30 a0 e3                                      mov r3, #0x50
0048ec30  93 a5 25 e0                                      mla r5, r3, r5, sl
0048ec34  06 10 a0 e1                                      mov r1, r6
0048ec38  05 00 a0 e1                                      mov r0, r5
0048ec3c  8f fd ff eb                                      bl #0x48e280
0048ec40  04 00 a0 e1                                      mov r0, r4
0048ec44  68 fb ff eb                                      bl #0x48d9ec
0048ec48  04 30 9d e5                                      ldr r3, [sp, #4]
0048ec4c  50 20 a0 e3                                      mov r2, #0x50
0048ec50  50 50 85 e2                                      add r5, r5, #0x50
0048ec54  92 a3 23 e0                                      mla r3, r2, r3, sl
0048ec58  00 a0 84 e5                                      str sl, [r4]
0048ec5c  08 30 84 e5                                      str r3, [r4, #8]
0048ec60  04 50 84 e5                                      str r5, [r4, #4]
0048ec64  c5 ff ff ea                                      b #0x48eb80
0048ec68  01 00 52 e1                                      cmp r2, r1
0048ec6c  d6 ff ff 9a                                      bls #0x48ebcc
0048ec70  d3 ff ff ea                                      b #0x48ebc4
