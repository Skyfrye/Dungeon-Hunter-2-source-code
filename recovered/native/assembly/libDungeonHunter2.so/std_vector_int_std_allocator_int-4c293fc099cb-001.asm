; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035eab0, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<int, std::allocator<int> >
; alias: _ZNSt6vectorIiSaIiEE20_M_compute_next_sizeEj
; demangled: std::vector<int, std::allocator<int> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
0035eab0  70 40 2d e9                                      push {r4, r5, r6, lr}
0035eab4  14 00 90 e8                                      ldm r0, {r2, r4}
0035eab8  ff 3f 0f e3                                      movw r3, #0xffff
0035eabc  ff 3f 43 e3                                      movt r3, #0x3fff
0035eac0  04 40 62 e0                                      rsb r4, r2, r4
0035eac4  44 41 a0 e1                                      asr r4, r4, #2
0035eac8  03 30 64 e0                                      rsb r3, r4, r3
0035eacc  01 00 53 e1                                      cmp r3, r1
0035ead0  01 50 a0 e1                                      mov r5, r1
0035ead4  08 00 00 3a                                      blo #0x35eafc
0035ead8  05 00 54 e1                                      cmp r4, r5
0035eadc  04 00 84 20                                      addhs r0, r4, r4
0035eae0  05 00 84 30                                      addlo r0, r4, r5
0035eae4  07 01 70 e3                                      cmn r0, #0xc0000001
0035eae8  01 00 00 8a                                      bhi #0x35eaf4
0035eaec  04 00 50 e1                                      cmp r0, r4
0035eaf0  00 00 00 2a                                      bhs #0x35eaf8
0035eaf4  03 01 e0 e3                                      mvn r0, #0xc0000000
0035eaf8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0035eafc  08 00 9f e5                                      ldr r0, [pc, #8]
0035eb00  00 00 8f e0                                      add r0, pc, r0
0035eb04  cd a8 0e eb                                      bl #0x708e40
0035eb08  f2 ff ff ea                                      b #0x35ead8
; mapping-symbol data/literal pool
0035eb0c  68 f9 55 00                                      .byte 0x68, 0xf9, 0x55, 0x00

; FUNCTION 0x0035ec30, declared_size=328, range_size=328, mode=arm
; class-group: std::vector<int, std::allocator<int> >
; alias: _ZNSt6vectorIiSaIiEE18_M_fill_insert_auxEPijRKiRKSt12__false_type
; demangled: std::vector<int, std::allocator<int> >::_M_fill_insert_aux(int*, unsigned int, int const&, std::__false_type const&)
; decoder-mode: arm
0035ec30  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0035ec34  00 c0 90 e5                                      ldr ip, [r0]
0035ec38  03 50 a0 e1                                      mov r5, r3
0035ec3c  14 d0 4d e2                                      sub sp, sp, #0x14
0035ec40  0c 00 53 e1                                      cmp r3, ip
0035ec44  00 40 a0 e1                                      mov r4, r0
0035ec48  01 60 a0 e1                                      mov r6, r1
0035ec4c  02 30 a0 e1                                      mov r3, r2
0035ec50  04 70 90 35                                      ldrlo r7, [r0, #4]
0035ec54  0a 00 00 3a                                      blo #0x35ec84
0035ec58  04 70 90 e5                                      ldr r7, [r0, #4]
0035ec5c  07 00 55 e1                                      cmp r5, r7
0035ec60  07 00 00 2a                                      bhs #0x35ec84
0035ec64  00 c0 95 e5                                      ldr ip, [r5]
0035ec68  10 30 8d e2                                      add r3, sp, #0x10
0035ec6c  08 c0 23 e5                                      str ip, [r3, #-8]!
0035ec70  0c c0 8d e2                                      add ip, sp, #0xc
0035ec74  00 c0 8d e5                                      str ip, [sp]
0035ec78  ec ff ff eb                                      bl #0x35ec30
0035ec7c  14 d0 8d e2                                      add sp, sp, #0x14
0035ec80  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0035ec84  07 20 66 e0                                      rsb r2, r6, r7
0035ec88  42 81 a0 e1                                      asr r8, r2, #2
0035ec8c  08 00 53 e1                                      cmp r3, r8
0035ec90  1c 00 00 2a                                      bhs #0x35ed08
0035ec94  03 81 a0 e1                                      lsl r8, r3, #2
0035ec98  07 30 68 e0                                      rsb r3, r8, r7
0035ec9c  07 00 53 e1                                      cmp r3, r7
0035eca0  07 a0 a0 01                                      moveq sl, r7
0035eca4  05 00 00 0a                                      beq #0x35ecc0
0035eca8  03 10 a0 e1                                      mov r1, r3
0035ecac  07 20 63 e0                                      rsb r2, r3, r7
0035ecb0  07 00 a0 e1                                      mov r0, r7
0035ecb4  03 a0 a0 e1                                      mov sl, r3
0035ecb8  ea be fe eb                                      bl #0x30e868
0035ecbc  04 30 94 e5                                      ldr r3, [r4, #4]
0035ecc0  0a 20 66 e0                                      rsb r2, r6, sl
0035ecc4  08 30 83 e0                                      add r3, r3, r8
0035ecc8  00 00 52 e3                                      cmp r2, #0
0035eccc  04 30 84 e5                                      str r3, [r4, #4]
0035ecd0  02 00 00 da                                      ble #0x35ece0
0035ecd4  07 00 62 e0                                      rsb r0, r2, r7
0035ecd8  06 10 a0 e1                                      mov r1, r6
0035ecdc  95 bc fe eb                                      bl #0x30df38
0035ece0  48 81 a0 e1                                      asr r8, r8, #2
0035ece4  00 00 58 e3                                      cmp r8, #0
0035ece8  e3 ff ff da                                      ble #0x35ec7c
0035ecec  00 20 a0 e3                                      mov r2, #0
0035ecf0  00 10 95 e5                                      ldr r1, [r5]
0035ecf4  02 11 86 e7                                      str r1, [r6, r2, lsl #2]
0035ecf8  01 20 82 e2                                      add r2, r2, #1
0035ecfc  08 00 52 e1                                      cmp r2, r8
0035ed00  fa ff ff 1a                                      bne #0x35ecf0
0035ed04  dc ff ff ea                                      b #0x35ec7c
0035ed08  03 30 68 e0                                      rsb r3, r8, r3
0035ed0c  53 a0 bd e7                                      sbfx sl, r3, #0, #0x1e
0035ed10  00 00 5a e3                                      cmp sl, #0
0035ed14  03 01 87 e0                                      add r0, r7, r3, lsl #2
0035ed18  05 00 00 da                                      ble #0x35ed34
0035ed1c  00 10 a0 e3                                      mov r1, #0
0035ed20  00 c0 95 e5                                      ldr ip, [r5]
0035ed24  01 c1 87 e7                                      str ip, [r7, r1, lsl #2]
0035ed28  01 10 81 e2                                      add r1, r1, #1
0035ed2c  0a 00 51 e1                                      cmp r1, sl
0035ed30  fa ff ff 1a                                      bne #0x35ed20
0035ed34  07 00 56 e1                                      cmp r6, r7
0035ed38  04 00 84 e5                                      str r0, [r4, #4]
0035ed3c  02 00 00 0a                                      beq #0x35ed4c
0035ed40  06 10 a0 e1                                      mov r1, r6
0035ed44  c7 be fe eb                                      bl #0x30e868
0035ed48  04 00 94 e5                                      ldr r0, [r4, #4]
0035ed4c  08 01 80 e0                                      add r0, r0, r8, lsl #2
0035ed50  00 00 58 e3                                      cmp r8, #0
0035ed54  04 00 84 e5                                      str r0, [r4, #4]
0035ed58  c7 ff ff da                                      ble #0x35ec7c
0035ed5c  00 30 a0 e3                                      mov r3, #0
0035ed60  00 20 95 e5                                      ldr r2, [r5]
0035ed64  03 21 86 e7                                      str r2, [r6, r3, lsl #2]
0035ed68  01 30 83 e2                                      add r3, r3, #1
0035ed6c  03 00 58 e1                                      cmp r8, r3
0035ed70  fa ff ff 1a                                      bne #0x35ed60
0035ed74  c0 ff ff ea                                      b #0x35ec7c

; FUNCTION 0x0035fdcc, declared_size=284, range_size=284, mode=arm
; class-group: std::vector<int, std::allocator<int> >
; alias: _ZNSt6vectorIiSaIiEE14_M_fill_insertEPijRKi
; demangled: std::vector<int, std::allocator<int> >::_M_fill_insert(int*, unsigned int, int const&)
; decoder-mode: arm
0035fdcc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0035fdd0  00 60 52 e2                                      subs r6, r2, #0
0035fdd4  14 d0 4d e2                                      sub sp, sp, #0x14
0035fdd8  00 40 a0 e1                                      mov r4, r0
0035fddc  01 70 a0 e1                                      mov r7, r1
0035fde0  03 50 a0 e1                                      mov r5, r3
0035fde4  28 00 00 0a                                      beq #0x35fe8c
0035fde8  00 50 90 e9                                      ldmib r0, {ip, lr}
0035fdec  0e c0 6c e0                                      rsb ip, ip, lr
0035fdf0  4c 01 56 e1                                      cmp r6, ip, asr #2
0035fdf4  26 00 00 9a                                      bls #0x35fe94
0035fdf8  06 10 a0 e1                                      mov r1, r6
0035fdfc  2b fb ff eb                                      bl #0x35eab0
0035fe00  10 20 8d e2                                      add r2, sp, #0x10
0035fe04  00 10 a0 e1                                      mov r1, r0
0035fe08  08 00 22 e5                                      str r0, [r2, #-8]!
0035fe0c  08 00 84 e2                                      add r0, r4, #8
0035fe10  d1 ff ff eb                                      bl #0x35fd5c
0035fe14  00 10 94 e5                                      ldr r1, [r4]
0035fe18  00 80 a0 e1                                      mov r8, r0
0035fe1c  01 a0 57 e0                                      subs sl, r7, r1
0035fe20  00 00 a0 01                                      moveq r0, r0
0035fe24  2b 00 00 1a                                      bne #0x35fed8
0035fe28  06 20 a0 e1                                      mov r2, r6
0035fe2c  00 30 a0 e3                                      mov r3, #0
0035fe30  00 10 95 e5                                      ldr r1, [r5]
0035fe34  01 20 52 e2                                      subs r2, r2, #1
0035fe38  03 10 80 e7                                      str r1, [r0, r3]
0035fe3c  04 30 83 e2                                      add r3, r3, #4
0035fe40  fa ff ff 1a                                      bne #0x35fe30
0035fe44  04 30 94 e5                                      ldr r3, [r4, #4]
0035fe48  06 61 80 e0                                      add r6, r0, r6, lsl #2
0035fe4c  07 50 53 e0                                      subs r5, r3, r7
0035fe50  1a 00 00 1a                                      bne #0x35fec0
0035fe54  00 00 94 e5                                      ldr r0, [r4]
0035fe58  08 10 94 e5                                      ldr r1, [r4, #8]
0035fe5c  00 00 50 e3                                      cmp r0, #0
0035fe60  04 00 00 0a                                      beq #0x35fe78
0035fe64  01 10 60 e0                                      rsb r1, r0, r1
0035fe68  03 10 c1 e3                                      bic r1, r1, #3
0035fe6c  80 00 51 e3                                      cmp r1, #0x80
0035fe70  0b 00 00 8a                                      bhi #0x35fea4
0035fe74  21 a4 0e eb                                      bl #0x708f00
0035fe78  08 30 9d e5                                      ldr r3, [sp, #8]
0035fe7c  00 80 84 e5                                      str r8, [r4]
0035fe80  04 60 84 e5                                      str r6, [r4, #4]
0035fe84  03 81 88 e0                                      add r8, r8, r3, lsl #2
0035fe88  08 80 84 e5                                      str r8, [r4, #8]
0035fe8c  14 d0 8d e2                                      add sp, sp, #0x14
0035fe90  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0035fe94  0c c0 8d e2                                      add ip, sp, #0xc
0035fe98  00 c0 8d e5                                      str ip, [sp]
0035fe9c  63 fb ff eb                                      bl #0x35ec30
0035fea0  f9 ff ff ea                                      b #0x35fe8c
0035fea4  65 c1 fe eb                                      bl #0x310440
0035fea8  08 30 9d e5                                      ldr r3, [sp, #8]
0035feac  00 80 84 e5                                      str r8, [r4]
0035feb0  04 60 84 e5                                      str r6, [r4, #4]
0035feb4  03 81 88 e0                                      add r8, r8, r3, lsl #2
0035feb8  08 80 84 e5                                      str r8, [r4, #8]
0035febc  f2 ff ff ea                                      b #0x35fe8c
0035fec0  06 00 a0 e1                                      mov r0, r6
0035fec4  07 10 a0 e1                                      mov r1, r7
0035fec8  05 20 a0 e1                                      mov r2, r5
0035fecc  19 b8 fe eb                                      bl #0x30df38
0035fed0  05 60 80 e0                                      add r6, r0, r5
0035fed4  de ff ff ea                                      b #0x35fe54
0035fed8  0a 20 a0 e1                                      mov r2, sl
0035fedc  15 b8 fe eb                                      bl #0x30df38
0035fee0  0a 00 80 e0                                      add r0, r0, sl
0035fee4  cf ff ff ea                                      b #0x35fe28

; FUNCTION 0x0035fee8, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<int, std::allocator<int> >
; alias: _ZNSt6vectorIiSaIiEE6resizeEjRKi
; demangled: std::vector<int, std::allocator<int> >::resize(unsigned int, int const&)
; decoder-mode: arm
0035fee8  30 00 2d e9                                      push {r4, r5}
0035feec  04 40 90 e5                                      ldr r4, [r0, #4]
0035fef0  00 50 90 e5                                      ldr r5, [r0]
0035fef4  02 30 a0 e1                                      mov r3, r2
0035fef8  04 20 65 e0                                      rsb r2, r5, r4
0035fefc  42 21 a0 e1                                      asr r2, r2, #2
0035ff00  02 00 51 e1                                      cmp r1, r2
0035ff04  04 00 00 2a                                      bhs #0x35ff1c
0035ff08  01 51 85 e0                                      add r5, r5, r1, lsl #2
0035ff0c  04 00 55 e1                                      cmp r5, r4
0035ff10  04 50 80 15                                      strne r5, [r0, #4]
0035ff14  30 00 bd e8                                      pop {r4, r5}
0035ff18  1e ff 2f e1                                      bx lr
0035ff1c  01 20 62 e0                                      rsb r2, r2, r1
0035ff20  04 10 a0 e1                                      mov r1, r4
0035ff24  30 00 bd e8                                      pop {r4, r5}
0035ff28  a7 ff ff ea                                      b #0x35fdcc

; FUNCTION 0x00371820, declared_size=284, range_size=284, mode=arm
; class-group: std::vector<int, std::allocator<int> >
; alias: _ZNSt6vectorIiSaIiEEaSERKS1_
; demangled: std::vector<int, std::allocator<int> >::operator=(std::vector<int, std::allocator<int> > const&)
; decoder-mode: arm
00371820  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00371824  00 00 51 e1                                      cmp r1, r0
00371828  0c d0 4d e2                                      sub sp, sp, #0xc
0037182c  01 60 a0 e1                                      mov r6, r1
00371830  00 40 a0 e1                                      mov r4, r0
00371834  16 00 00 0a                                      beq #0x371894
00371838  0c 00 91 e8                                      ldm r1, {r2, r3}
0037183c  00 70 90 e5                                      ldr r7, [r0]
00371840  08 10 90 e5                                      ldr r1, [r0, #8]
00371844  03 c0 62 e0                                      rsb ip, r2, r3
00371848  4c 51 a0 e1                                      asr r5, ip, #2
0037184c  01 10 67 e0                                      rsb r1, r7, r1
00371850  41 01 55 e1                                      cmp r5, r1, asr #2
00371854  19 00 00 8a                                      bhi #0x3718c0
00371858  04 00 90 e5                                      ldr r0, [r0, #4]
0037185c  00 10 67 e0                                      rsb r1, r7, r0
00371860  41 11 a0 e1                                      asr r1, r1, #2
00371864  01 00 55 e1                                      cmp r5, r1
00371868  0c 00 00 9a                                      bls #0x3718a0
0037186c  01 11 82 e0                                      add r1, r2, r1, lsl #2
00371870  02 c0 51 e0                                      subs ip, r1, r2
00371874  23 00 00 1a                                      bne #0x371908
00371878  03 00 51 e1                                      cmp r1, r3
0037187c  02 00 00 0a                                      beq #0x37188c
00371880  03 20 61 e0                                      rsb r2, r1, r3
00371884  f7 73 fe eb                                      bl #0x30e868
00371888  00 70 94 e5                                      ldr r7, [r4]
0037188c  05 51 87 e0                                      add r5, r7, r5, lsl #2
00371890  04 50 84 e5                                      str r5, [r4, #4]
00371894  04 00 a0 e1                                      mov r0, r4
00371898  0c d0 8d e2                                      add sp, sp, #0xc
0037189c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003718a0  00 00 5c e3                                      cmp ip, #0
003718a4  f8 ff ff 0a                                      beq #0x37188c
003718a8  07 00 a0 e1                                      mov r0, r7
003718ac  02 10 a0 e1                                      mov r1, r2
003718b0  0c 20 a0 e1                                      mov r2, ip
003718b4  9f 71 fe eb                                      bl #0x30df38
003718b8  00 70 94 e5                                      ldr r7, [r4]
003718bc  f2 ff ff ea                                      b #0x37188c
003718c0  08 10 8d e2                                      add r1, sp, #8
003718c4  04 50 21 e5                                      str r5, [r1, #-4]!
003718c8  04 fe ff eb                                      bl #0x3710e0
003718cc  00 70 a0 e1                                      mov r7, r0
003718d0  00 00 94 e5                                      ldr r0, [r4]
003718d4  08 10 94 e5                                      ldr r1, [r4, #8]
003718d8  00 00 50 e3                                      cmp r0, #0
003718dc  04 00 00 0a                                      beq #0x3718f4
003718e0  01 10 60 e0                                      rsb r1, r0, r1
003718e4  03 10 c1 e3                                      bic r1, r1, #3
003718e8  80 00 51 e3                                      cmp r1, #0x80
003718ec  10 00 00 8a                                      bhi #0x371934
003718f0  82 5d 0e eb                                      bl #0x708f00
003718f4  04 30 9d e5                                      ldr r3, [sp, #4]
003718f8  00 70 84 e5                                      str r7, [r4]
003718fc  03 31 87 e0                                      add r3, r7, r3, lsl #2
00371900  08 30 84 e5                                      str r3, [r4, #8]
00371904  e0 ff ff ea                                      b #0x37188c
00371908  02 10 a0 e1                                      mov r1, r2
0037190c  07 00 a0 e1                                      mov r0, r7
00371910  0c 20 a0 e1                                      mov r2, ip
00371914  87 71 fe eb                                      bl #0x30df38
00371918  04 00 94 e5                                      ldr r0, [r4, #4]
0037191c  00 70 94 e5                                      ldr r7, [r4]
00371920  0c 00 96 e8                                      ldm r6, {r2, r3}
00371924  00 10 67 e0                                      rsb r1, r7, r0
00371928  03 10 c1 e3                                      bic r1, r1, #3
0037192c  01 10 82 e0                                      add r1, r2, r1
00371930  d0 ff ff ea                                      b #0x371878
00371934  c1 7a fe eb                                      bl #0x310440
00371938  ed ff ff ea                                      b #0x3718f4

; FUNCTION 0x0037fd00, declared_size=128, range_size=128, mode=arm
; class-group: std::vector<int, std::allocator<int> >
; alias: _ZNSt6vectorIiSaIiEEC1ERKS1_
; demangled: std::vector<int, std::allocator<int> >::vector(std::vector<int, std::allocator<int> > const&)
; decoder-mode: arm
0037fd00  30 40 2d e9                                      push {r4, r5, lr}
0037fd04  01 50 a0 e1                                      mov r5, r1
0037fd08  00 30 95 e5                                      ldr r3, [r5]
0037fd0c  04 10 91 e5                                      ldr r1, [r1, #4]
0037fd10  0c d0 4d e2                                      sub sp, sp, #0xc
0037fd14  00 40 a0 e1                                      mov r4, r0
0037fd18  01 10 63 e0                                      rsb r1, r3, r1
0037fd1c  00 c0 a0 e3                                      mov ip, #0
0037fd20  41 11 a0 e1                                      asr r1, r1, #2
0037fd24  08 20 8d e2                                      add r2, sp, #8
0037fd28  04 10 22 e5                                      str r1, [r2, #-4]!
0037fd2c  00 c0 84 e5                                      str ip, [r4]
0037fd30  04 c0 84 e5                                      str ip, [r4, #4]
0037fd34  08 c0 a0 e5                                      str ip, [r0, #8]!
0037fd38  07 80 ff eb                                      bl #0x35fd5c
0037fd3c  04 20 9d e5                                      ldr r2, [sp, #4]
0037fd40  00 00 84 e5                                      str r0, [r4]
0037fd44  04 00 84 e5                                      str r0, [r4, #4]
0037fd48  02 21 80 e0                                      add r2, r0, r2, lsl #2
0037fd4c  08 20 84 e5                                      str r2, [r4, #8]
0037fd50  06 00 95 e8                                      ldm r5, {r1, r2}
0037fd54  00 30 a0 e1                                      mov r3, r0
0037fd58  02 00 51 e1                                      cmp r1, r2
0037fd5c  03 00 00 0a                                      beq #0x37fd70
0037fd60  02 50 61 e0                                      rsb r5, r1, r2
0037fd64  05 20 a0 e1                                      mov r2, r5
0037fd68  be 3a fe eb                                      bl #0x30e868
0037fd6c  05 30 80 e0                                      add r3, r0, r5
0037fd70  04 30 84 e5                                      str r3, [r4, #4]
0037fd74  04 00 a0 e1                                      mov r0, r4
0037fd78  0c d0 8d e2                                      add sp, sp, #0xc
0037fd7c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00389628, declared_size=200, range_size=200, mode=arm
; class-group: std::vector<int, std::allocator<int> >
; alias: _ZNSt6vectorIiSaIiEE18_M_insert_overflowEPiRKiRKSt11__true_typejb.clone.9
; demangled: std::vector<int, std::allocator<int> >::_M_insert_overflow(int*, int const&, std::__true_type const&, unsigned int, bool) [clone .clone.9]
; decoder-mode: arm
00389628  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0038962c  00 40 a0 e1                                      mov r4, r0
00389630  00 30 94 e5                                      ldr r3, [r4]
00389634  04 00 90 e5                                      ldr r0, [r0, #4]
00389638  01 60 a0 e1                                      mov r6, r1
0038963c  0c d0 4d e2                                      sub sp, sp, #0xc
00389640  00 30 63 e0                                      rsb r3, r3, r0
00389644  43 31 a0 e1                                      asr r3, r3, #2
00389648  01 00 53 e3                                      cmp r3, #1
0038964c  03 10 83 20                                      addhs r1, r3, r3
00389650  01 10 83 32                                      addlo r1, r3, #1
00389654  07 01 71 e3                                      cmn r1, #0xc0000001
00389658  02 70 a0 e1                                      mov r7, r2
0038965c  1b 00 00 8a                                      bhi #0x3896d0
00389660  01 00 53 e1                                      cmp r3, r1
00389664  19 00 00 8a                                      bhi #0x3896d0
00389668  08 20 8d e2                                      add r2, sp, #8
0038966c  04 10 22 e5                                      str r1, [r2, #-4]!
00389670  08 00 84 e2                                      add r0, r4, #8
00389674  b8 59 ff eb                                      bl #0x35fd5c
00389678  00 10 94 e5                                      ldr r1, [r4]
0038967c  00 50 a0 e1                                      mov r5, r0
00389680  01 60 56 e0                                      subs r6, r6, r1
00389684  00 60 a0 01                                      moveq r6, r0
00389688  14 00 00 1a                                      bne #0x3896e0
0038968c  00 30 97 e5                                      ldr r3, [r7]
00389690  04 30 86 e4                                      str r3, [r6], #4
00389694  00 00 94 e5                                      ldr r0, [r4]
00389698  08 10 94 e5                                      ldr r1, [r4, #8]
0038969c  00 00 50 e3                                      cmp r0, #0
003896a0  04 00 00 0a                                      beq #0x3896b8
003896a4  01 10 60 e0                                      rsb r1, r0, r1
003896a8  03 10 c1 e3                                      bic r1, r1, #3
003896ac  80 00 51 e3                                      cmp r1, #0x80
003896b0  08 00 00 8a                                      bhi #0x3896d8
003896b4  11 fe 0d eb                                      bl #0x708f00
003896b8  04 30 9d e5                                      ldr r3, [sp, #4]
003896bc  60 00 84 e8                                      stm r4, {r5, r6}
003896c0  03 51 85 e0                                      add r5, r5, r3, lsl #2
003896c4  08 50 84 e5                                      str r5, [r4, #8]
003896c8  0c d0 8d e2                                      add sp, sp, #0xc
003896cc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003896d0  03 11 e0 e3                                      mvn r1, #0xc0000000
003896d4  e3 ff ff ea                                      b #0x389668
003896d8  58 1b fe eb                                      bl #0x310440
003896dc  f5 ff ff ea                                      b #0x3896b8
003896e0  06 20 a0 e1                                      mov r2, r6
003896e4  13 12 fe eb                                      bl #0x30df38
003896e8  06 60 80 e0                                      add r6, r0, r6
003896ec  e6 ff ff ea                                      b #0x38968c

; FUNCTION 0x0043f1a0, declared_size=64, range_size=64, mode=arm
; class-group: std::vector<int, std::allocator<int> >
; alias: _ZNSt6vectorIiSaIiEED1Ev
; demangled: std::vector<int, std::allocator<int> >::~vector()
; decoder-mode: arm
0043f1a0  10 40 2d e9                                      push {r4, lr}
0043f1a4  00 40 a0 e1                                      mov r4, r0
0043f1a8  00 00 90 e5                                      ldr r0, [r0]
0043f1ac  00 00 50 e3                                      cmp r0, #0
0043f1b0  05 00 00 0a                                      beq #0x43f1cc
0043f1b4  08 10 94 e5                                      ldr r1, [r4, #8]
0043f1b8  01 10 60 e0                                      rsb r1, r0, r1
0043f1bc  03 10 c1 e3                                      bic r1, r1, #3
0043f1c0  80 00 51 e3                                      cmp r1, #0x80
0043f1c4  02 00 00 8a                                      bhi #0x43f1d4
0043f1c8  4c 27 0b eb                                      bl #0x708f00
0043f1cc  04 00 a0 e1                                      mov r0, r4
0043f1d0  10 80 bd e8                                      pop {r4, pc}
0043f1d4  99 44 fb eb                                      bl #0x310440
0043f1d8  04 00 a0 e1                                      mov r0, r4
0043f1dc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0043f350, declared_size=196, range_size=196, mode=arm
; class-group: std::vector<int, std::allocator<int> >
; alias: _ZNSt6vectorIiSaIiEE18_M_insert_overflowEPiRKiRKSt11__true_typejb.clone.27
; demangled: std::vector<int, std::allocator<int> >::_M_insert_overflow(int*, int const&, std::__true_type const&, unsigned int, bool) [clone .clone.27]
; decoder-mode: arm
0043f350  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0043f354  00 40 a0 e1                                      mov r4, r0
0043f358  00 30 94 e5                                      ldr r3, [r4]
0043f35c  04 00 90 e5                                      ldr r0, [r0, #4]
0043f360  01 60 a0 e1                                      mov r6, r1
0043f364  0c d0 4d e2                                      sub sp, sp, #0xc
0043f368  00 30 63 e0                                      rsb r3, r3, r0
0043f36c  43 31 a0 e1                                      asr r3, r3, #2
0043f370  01 00 53 e3                                      cmp r3, #1
0043f374  03 10 83 20                                      addhs r1, r3, r3
0043f378  01 10 83 32                                      addlo r1, r3, #1
0043f37c  07 01 71 e3                                      cmn r1, #0xc0000001
0043f380  02 70 a0 e1                                      mov r7, r2
0043f384  1e 00 00 8a                                      bhi #0x43f404
0043f388  01 00 53 e1                                      cmp r3, r1
0043f38c  1c 00 00 8a                                      bhi #0x43f404
0043f390  08 20 8d e2                                      add r2, sp, #8
0043f394  04 10 22 e5                                      str r1, [r2, #-4]!
0043f398  08 00 84 e2                                      add r0, r4, #8
0043f39c  6e 82 fc eb                                      bl #0x35fd5c
0043f3a0  00 10 94 e5                                      ldr r1, [r4]
0043f3a4  00 50 a0 e1                                      mov r5, r0
0043f3a8  01 60 56 e0                                      subs r6, r6, r1
0043f3ac  00 60 a0 01                                      moveq r6, r0
0043f3b0  02 00 00 0a                                      beq #0x43f3c0
0043f3b4  06 20 a0 e1                                      mov r2, r6
0043f3b8  de 3a fb eb                                      bl #0x30df38
0043f3bc  06 60 80 e0                                      add r6, r0, r6
0043f3c0  00 30 97 e5                                      ldr r3, [r7]
0043f3c4  04 30 86 e4                                      str r3, [r6], #4
0043f3c8  00 00 94 e5                                      ldr r0, [r4]
0043f3cc  08 10 94 e5                                      ldr r1, [r4, #8]
0043f3d0  00 00 50 e3                                      cmp r0, #0
0043f3d4  04 00 00 0a                                      beq #0x43f3ec
0043f3d8  01 10 60 e0                                      rsb r1, r0, r1
0043f3dc  03 10 c1 e3                                      bic r1, r1, #3
0043f3e0  80 00 51 e3                                      cmp r1, #0x80
0043f3e4  08 00 00 8a                                      bhi #0x43f40c
0043f3e8  c4 26 0b eb                                      bl #0x708f00
0043f3ec  04 30 9d e5                                      ldr r3, [sp, #4]
0043f3f0  60 00 84 e8                                      stm r4, {r5, r6}
0043f3f4  03 51 85 e0                                      add r5, r5, r3, lsl #2
0043f3f8  08 50 84 e5                                      str r5, [r4, #8]
0043f3fc  0c d0 8d e2                                      add sp, sp, #0xc
0043f400  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0043f404  03 11 e0 e3                                      mvn r1, #0xc0000000
0043f408  e0 ff ff ea                                      b #0x43f390
0043f40c  0b 44 fb eb                                      bl #0x310440
0043f410  f5 ff ff ea                                      b #0x43f3ec

; FUNCTION 0x007fd1bc, declared_size=200, range_size=200, mode=arm
; class-group: std::vector<int, std::allocator<int> >
; alias: _ZNSt6vectorIiSaIiEE18_M_insert_overflowEPiRKiRKSt11__true_typejb.clone.2
; demangled: std::vector<int, std::allocator<int> >::_M_insert_overflow(int*, int const&, std::__true_type const&, unsigned int, bool) [clone .clone.2]
; decoder-mode: arm
007fd1bc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007fd1c0  00 40 a0 e1                                      mov r4, r0
007fd1c4  00 30 94 e5                                      ldr r3, [r4]
007fd1c8  04 00 90 e5                                      ldr r0, [r0, #4]
007fd1cc  01 60 a0 e1                                      mov r6, r1
007fd1d0  0c d0 4d e2                                      sub sp, sp, #0xc
007fd1d4  00 30 63 e0                                      rsb r3, r3, r0
007fd1d8  43 31 a0 e1                                      asr r3, r3, #2
007fd1dc  01 00 53 e3                                      cmp r3, #1
007fd1e0  03 10 83 20                                      addhs r1, r3, r3
007fd1e4  01 10 83 32                                      addlo r1, r3, #1
007fd1e8  07 01 71 e3                                      cmn r1, #0xc0000001
007fd1ec  02 70 a0 e1                                      mov r7, r2
007fd1f0  1b 00 00 8a                                      bhi #0x7fd264
007fd1f4  01 00 53 e1                                      cmp r3, r1
007fd1f8  19 00 00 8a                                      bhi #0x7fd264
007fd1fc  08 20 8d e2                                      add r2, sp, #8
007fd200  04 10 22 e5                                      str r1, [r2, #-4]!
007fd204  08 00 84 e2                                      add r0, r4, #8
007fd208  d3 8a ed eb                                      bl #0x35fd5c
007fd20c  00 10 94 e5                                      ldr r1, [r4]
007fd210  00 50 a0 e1                                      mov r5, r0
007fd214  01 60 56 e0                                      subs r6, r6, r1
007fd218  00 60 a0 01                                      moveq r6, r0
007fd21c  14 00 00 1a                                      bne #0x7fd274
007fd220  00 30 97 e5                                      ldr r3, [r7]
007fd224  04 30 86 e4                                      str r3, [r6], #4
007fd228  00 00 94 e5                                      ldr r0, [r4]
007fd22c  08 10 94 e5                                      ldr r1, [r4, #8]
007fd230  00 00 50 e3                                      cmp r0, #0
007fd234  04 00 00 0a                                      beq #0x7fd24c
007fd238  01 10 60 e0                                      rsb r1, r0, r1
007fd23c  03 10 c1 e3                                      bic r1, r1, #3
007fd240  80 00 51 e3                                      cmp r1, #0x80
007fd244  08 00 00 8a                                      bhi #0x7fd26c
007fd248  3a 04 03 eb                                      bl #0x8be338
007fd24c  04 30 9d e5                                      ldr r3, [sp, #4]
007fd250  60 00 84 e8                                      stm r4, {r5, r6}
007fd254  03 51 85 e0                                      add r5, r5, r3, lsl #2
007fd258  08 50 84 e5                                      str r5, [r4, #8]
007fd25c  0c d0 8d e2                                      add sp, sp, #0xc
007fd260  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
007fd264  03 11 e0 e3                                      mvn r1, #0xc0000000
007fd268  e3 ff ff ea                                      b #0x7fd1fc
007fd26c  73 4c ec eb                                      bl #0x310440
007fd270  f5 ff ff ea                                      b #0x7fd24c
007fd274  06 20 a0 e1                                      mov r2, r6
007fd278  2e 43 ec eb                                      bl #0x30df38
007fd27c  06 60 80 e0                                      add r6, r0, r6
007fd280  e6 ff ff ea                                      b #0x7fd220

; FUNCTION 0x008001f4, declared_size=200, range_size=200, mode=arm
; class-group: std::vector<int, std::allocator<int> >
; alias: _ZNSt6vectorIiSaIiEE18_M_insert_overflowEPiRKiRKSt11__true_typejb.clone.3
; demangled: std::vector<int, std::allocator<int> >::_M_insert_overflow(int*, int const&, std::__true_type const&, unsigned int, bool) [clone .clone.3]
; decoder-mode: arm
008001f4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
008001f8  00 40 a0 e1                                      mov r4, r0
008001fc  00 30 94 e5                                      ldr r3, [r4]
00800200  04 00 90 e5                                      ldr r0, [r0, #4]
00800204  01 60 a0 e1                                      mov r6, r1
00800208  0c d0 4d e2                                      sub sp, sp, #0xc
0080020c  00 30 63 e0                                      rsb r3, r3, r0
00800210  43 31 a0 e1                                      asr r3, r3, #2
00800214  01 00 53 e3                                      cmp r3, #1
00800218  03 10 83 20                                      addhs r1, r3, r3
0080021c  01 10 83 32                                      addlo r1, r3, #1
00800220  07 01 71 e3                                      cmn r1, #0xc0000001
00800224  02 70 a0 e1                                      mov r7, r2
00800228  1b 00 00 8a                                      bhi #0x80029c
0080022c  01 00 53 e1                                      cmp r3, r1
00800230  19 00 00 8a                                      bhi #0x80029c
00800234  08 20 8d e2                                      add r2, sp, #8
00800238  04 10 22 e5                                      str r1, [r2, #-4]!
0080023c  08 00 84 e2                                      add r0, r4, #8
00800240  c5 7e ed eb                                      bl #0x35fd5c
00800244  00 10 94 e5                                      ldr r1, [r4]
00800248  00 50 a0 e1                                      mov r5, r0
0080024c  01 60 56 e0                                      subs r6, r6, r1
00800250  00 60 a0 01                                      moveq r6, r0
00800254  14 00 00 1a                                      bne #0x8002ac
00800258  00 30 97 e5                                      ldr r3, [r7]
0080025c  04 30 86 e4                                      str r3, [r6], #4
00800260  00 00 94 e5                                      ldr r0, [r4]
00800264  08 10 94 e5                                      ldr r1, [r4, #8]
00800268  00 00 50 e3                                      cmp r0, #0
0080026c  04 00 00 0a                                      beq #0x800284
00800270  01 10 60 e0                                      rsb r1, r0, r1
00800274  03 10 c1 e3                                      bic r1, r1, #3
00800278  80 00 51 e3                                      cmp r1, #0x80
0080027c  08 00 00 8a                                      bhi #0x8002a4
00800280  2c f8 02 eb                                      bl #0x8be338
00800284  04 30 9d e5                                      ldr r3, [sp, #4]
00800288  60 00 84 e8                                      stm r4, {r5, r6}
0080028c  03 51 85 e0                                      add r5, r5, r3, lsl #2
00800290  08 50 84 e5                                      str r5, [r4, #8]
00800294  0c d0 8d e2                                      add sp, sp, #0xc
00800298  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0080029c  03 11 e0 e3                                      mvn r1, #0xc0000000
008002a0  e3 ff ff ea                                      b #0x800234
008002a4  65 40 ec eb                                      bl #0x310440
008002a8  f5 ff ff ea                                      b #0x800284
008002ac  06 20 a0 e1                                      mov r2, r6
008002b0  20 37 ec eb                                      bl #0x30df38
008002b4  06 60 80 e0                                      add r6, r0, r6
008002b8  e6 ff ff ea                                      b #0x800258

; FUNCTION 0x00811338, declared_size=196, range_size=196, mode=arm
; class-group: std::vector<int, std::allocator<int> >
; alias: _ZNSt6vectorIiSaIiEE18_M_insert_overflowEPiRKiRKSt11__true_typejb.clone.3
; demangled: std::vector<int, std::allocator<int> >::_M_insert_overflow(int*, int const&, std::__true_type const&, unsigned int, bool) [clone .clone.3]
; decoder-mode: arm
00811338  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0081133c  00 40 a0 e1                                      mov r4, r0
00811340  00 30 94 e5                                      ldr r3, [r4]
00811344  04 00 90 e5                                      ldr r0, [r0, #4]
00811348  01 60 a0 e1                                      mov r6, r1
0081134c  0c d0 4d e2                                      sub sp, sp, #0xc
00811350  00 30 63 e0                                      rsb r3, r3, r0
00811354  43 31 a0 e1                                      asr r3, r3, #2
00811358  01 00 53 e3                                      cmp r3, #1
0081135c  03 10 83 20                                      addhs r1, r3, r3
00811360  01 10 83 32                                      addlo r1, r3, #1
00811364  07 01 71 e3                                      cmn r1, #0xc0000001
00811368  02 70 a0 e1                                      mov r7, r2
0081136c  1e 00 00 8a                                      bhi #0x8113ec
00811370  01 00 53 e1                                      cmp r3, r1
00811374  1c 00 00 8a                                      bhi #0x8113ec
00811378  08 20 8d e2                                      add r2, sp, #8
0081137c  04 10 22 e5                                      str r1, [r2, #-4]!
00811380  08 00 84 e2                                      add r0, r4, #8
00811384  74 3a ed eb                                      bl #0x35fd5c
00811388  00 10 94 e5                                      ldr r1, [r4]
0081138c  00 50 a0 e1                                      mov r5, r0
00811390  01 60 56 e0                                      subs r6, r6, r1
00811394  00 60 a0 01                                      moveq r6, r0
00811398  02 00 00 0a                                      beq #0x8113a8
0081139c  06 20 a0 e1                                      mov r2, r6
008113a0  e4 f2 eb eb                                      bl #0x30df38
008113a4  06 60 80 e0                                      add r6, r0, r6
008113a8  00 30 97 e5                                      ldr r3, [r7]
008113ac  04 30 86 e4                                      str r3, [r6], #4
008113b0  00 00 94 e5                                      ldr r0, [r4]
008113b4  08 10 94 e5                                      ldr r1, [r4, #8]
008113b8  00 00 50 e3                                      cmp r0, #0
008113bc  04 00 00 0a                                      beq #0x8113d4
008113c0  01 10 60 e0                                      rsb r1, r0, r1
008113c4  03 10 c1 e3                                      bic r1, r1, #3
008113c8  80 00 51 e3                                      cmp r1, #0x80
008113cc  08 00 00 8a                                      bhi #0x8113f4
008113d0  d8 b3 02 eb                                      bl #0x8be338
008113d4  04 30 9d e5                                      ldr r3, [sp, #4]
008113d8  60 00 84 e8                                      stm r4, {r5, r6}
008113dc  03 51 85 e0                                      add r5, r5, r3, lsl #2
008113e0  08 50 84 e5                                      str r5, [r4, #8]
008113e4  0c d0 8d e2                                      add sp, sp, #0xc
008113e8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
008113ec  03 11 e0 e3                                      mvn r1, #0xc0000000
008113f0  e0 ff ff ea                                      b #0x811378
008113f4  11 fc eb eb                                      bl #0x310440
008113f8  f5 ff ff ea                                      b #0x8113d4

; FUNCTION 0x0081cb84, declared_size=72, range_size=72, mode=arm
; class-group: std::vector<int, std::allocator<int> >
; alias: _ZNSt6vectorIiSaIiEEC1Ej.clone.3
; demangled: std::vector<int, std::allocator<int> >::vector(unsigned int) [clone .clone.3]
; decoder-mode: arm
0081cb84  10 40 2d e9                                      push {r4, lr}
0081cb88  08 d0 4d e2                                      sub sp, sp, #8
0081cb8c  00 40 a0 e1                                      mov r4, r0
0081cb90  00 10 a0 e3                                      mov r1, #0
0081cb94  08 20 8d e2                                      add r2, sp, #8
0081cb98  04 10 22 e5                                      str r1, [r2, #-4]!
0081cb9c  00 10 84 e5                                      str r1, [r4]
0081cba0  04 10 84 e5                                      str r1, [r4, #4]
0081cba4  08 10 a0 e5                                      str r1, [r0, #8]!
0081cba8  6b 0c ed eb                                      bl #0x35fd5c
0081cbac  04 30 9d e5                                      ldr r3, [sp, #4]
0081cbb0  00 00 84 e5                                      str r0, [r4]
0081cbb4  04 00 84 e5                                      str r0, [r4, #4]
0081cbb8  03 01 80 e0                                      add r0, r0, r3, lsl #2
0081cbbc  08 00 84 e5                                      str r0, [r4, #8]
0081cbc0  04 00 a0 e1                                      mov r0, r4
0081cbc4  08 d0 8d e2                                      add sp, sp, #8
0081cbc8  10 80 bd e8                                      pop {r4, pc}
