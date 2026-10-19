; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00332284, declared_size=92, range_size=92, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv7__ufillIPSsSsiEEvT_S2_RKT0_RKSt26random_access_iterator_tagPT1_
; demangled: void std::priv::__ufill<std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int>(std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00332284  01 30 60 e0                                      rsb r3, r0, r1
00332288  c3 31 a0 e1                                      asr r3, r3, #3
0033228c  70 40 2d e9                                      push {r4, r5, r6, lr}
00332290  03 51 83 e0                                      add r5, r3, r3, lsl #2
00332294  02 60 a0 e1                                      mov r6, r2
00332298  05 52 85 e0                                      add r5, r5, r5, lsl #4
0033229c  05 54 85 e0                                      add r5, r5, r5, lsl #8
003322a0  05 58 85 e0                                      add r5, r5, r5, lsl #16
003322a4  85 50 83 e0                                      add r5, r3, r5, lsl #1
003322a8  00 00 55 e3                                      cmp r5, #0
003322ac  0a 00 00 da                                      ble #0x3322dc
003322b0  00 40 a0 e1                                      mov r4, r0
003322b4  00 00 00 ea                                      b #0x3322bc
003322b8  18 40 84 e2                                      add r4, r4, #0x18
003322bc  10 40 84 e5                                      str r4, [r4, #0x10]
003322c0  14 40 84 e5                                      str r4, [r4, #0x14]
003322c4  04 00 a0 e1                                      mov r0, r4
003322c8  14 10 96 e5                                      ldr r1, [r6, #0x14]
003322cc  10 20 96 e5                                      ldr r2, [r6, #0x10]
003322d0  04 7d ff eb                                      bl #0x3116e8
003322d4  01 50 55 e2                                      subs r5, r5, #1
003322d8  f6 ff ff 1a                                      bne #0x3322b8
003322dc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0033b710, declared_size=1564, range_size=1564, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv7_S_sortIlSaIlESt4lessIlEEEvRSt4listIT_T0_ET1_
; demangled: void std::priv::_S_sort<long, std::allocator<long>, std::less<long> >(std::list<long, std::allocator<long> >&, std::less<long>)
; decoder-mode: arm
0033b710  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0033b714  04 16 9f e5                                      ldr r1, [pc, #0x604]
0033b718  04 26 9f e5                                      ldr r2, [pc, #0x604]
0033b71c  89 df 4d e2                                      sub sp, sp, #0x224
0033b720  01 10 8f e0                                      add r1, pc, r1
0033b724  08 20 8d e5                                      str r2, [sp, #8]
0033b728  02 20 91 e7                                      ldr r2, [r1, r2]
0033b72c  00 10 8d e5                                      str r1, [sp]
0033b730  00 30 90 e5                                      ldr r3, [r0]
0033b734  00 20 92 e5                                      ldr r2, [r2]
0033b738  00 b0 a0 e1                                      mov fp, r0
0033b73c  00 00 53 e1                                      cmp r3, r0
0033b740  1c 22 8d e5                                      str r2, [sp, #0x21c]
0033b744  59 01 00 0a                                      beq #0x33bcb0
0033b748  00 30 93 e5                                      ldr r3, [r3]
0033b74c  03 00 50 e1                                      cmp r0, r3
0033b750  56 01 00 0a                                      beq #0x33bcb0
0033b754  14 40 8d e2                                      add r4, sp, #0x14
0033b758  1c 50 8d e2                                      add r5, sp, #0x1c
0033b75c  14 40 8d e5                                      str r4, [sp, #0x14]
0033b760  18 40 8d e5                                      str r4, [sp, #0x18]
0033b764  05 70 a0 e1                                      mov r7, r5
0033b768  02 6c 85 e2                                      add r6, r5, #0x200
0033b76c  00 70 87 e5                                      str r7, [r7]
0033b770  04 70 87 e5                                      str r7, [r7, #4]
0033b774  14 80 9d e5                                      ldr r8, [sp, #0x14]
0033b778  04 00 58 e1                                      cmp r8, r4
0033b77c  0b 00 00 0a                                      beq #0x33b7b0
0033b780  07 00 a0 e1                                      mov r0, r7
0033b784  d9 ff ff eb                                      bl #0x33b6f0
0033b788  08 30 98 e5                                      ldr r3, [r8, #8]
0033b78c  08 30 80 e5                                      str r3, [r0, #8]
0033b790  04 30 97 e5                                      ldr r3, [r7, #4]
0033b794  00 70 80 e5                                      str r7, [r0]
0033b798  04 30 80 e5                                      str r3, [r0, #4]
0033b79c  00 00 83 e5                                      str r0, [r3]
0033b7a0  04 00 87 e5                                      str r0, [r7, #4]
0033b7a4  00 80 98 e5                                      ldr r8, [r8]
0033b7a8  04 00 58 e1                                      cmp r8, r4
0033b7ac  f3 ff ff 1a                                      bne #0x33b780
0033b7b0  08 70 87 e2                                      add r7, r7, #8
0033b7b4  06 00 57 e1                                      cmp r7, r6
0033b7b8  eb ff ff 1a                                      bne #0x33b76c
0033b7bc  64 35 9f e5                                      ldr r3, [pc, #0x564]
0033b7c0  00 70 a0 e3                                      mov r7, #0
0033b7c4  06 90 a0 e1                                      mov sb, r6
0033b7c8  03 30 8f e0                                      add r3, pc, r3
0033b7cc  04 30 8d e5                                      str r3, [sp, #4]
0033b7d0  17 00 00 ea                                      b #0x33b834
0033b7d4  01 30 95 e7                                      ldr r3, [r5, r1]
0033b7d8  01 10 85 e0                                      add r1, r5, r1
0033b7dc  01 00 53 e1                                      cmp r3, r1
0033b7e0  88 00 00 0a                                      beq #0x33ba08
0033b7e4  04 00 52 e1                                      cmp r2, r4
0033b7e8  b3 00 00 0a                                      beq #0x33babc
0033b7ec  14 30 8d e5                                      str r3, [sp, #0x14]
0033b7f0  04 00 91 e5                                      ldr r0, [r1, #4]
0033b7f4  18 30 9d e5                                      ldr r3, [sp, #0x18]
0033b7f8  18 00 8d e5                                      str r0, [sp, #0x18]
0033b7fc  0c 00 81 e8                                      stm r1, {r2, r3}
0033b800  18 20 9d e5                                      ldr r2, [sp, #0x18]
0033b804  00 c0 93 e5                                      ldr ip, [r3]
0033b808  00 00 92 e5                                      ldr r0, [r2]
0033b80c  00 c0 82 e5                                      str ip, [r2]
0033b810  00 00 83 e5                                      str r0, [r3]
0033b814  00 30 91 e5                                      ldr r3, [r1]
0033b818  14 20 9d e5                                      ldr r2, [sp, #0x14]
0033b81c  04 00 93 e5                                      ldr r0, [r3, #4]
0033b820  04 10 92 e5                                      ldr r1, [r2, #4]
0033b824  04 00 82 e5                                      str r0, [r2, #4]
0033b828  04 10 83 e5                                      str r1, [r3, #4]
0033b82c  07 00 5a e1                                      cmp sl, r7
0033b830  7f 00 00 0a                                      beq #0x33ba34
0033b834  00 30 9b e5                                      ldr r3, [fp]
0033b838  03 00 5b e1                                      cmp fp, r3
0033b83c  a6 00 00 0a                                      beq #0x33badc
0033b840  14 00 9d e5                                      ldr r0, [sp, #0x14]
0033b844  00 10 93 e5                                      ldr r1, [r3]
0033b848  03 00 50 e1                                      cmp r0, r3
0033b84c  00 20 a0 e1                                      mov r2, r0
0033b850  0f 00 00 0a                                      beq #0x33b894
0033b854  01 00 50 e1                                      cmp r0, r1
0033b858  0d 00 00 0a                                      beq #0x33b894
0033b85c  04 20 91 e5                                      ldr r2, [r1, #4]
0033b860  00 00 82 e5                                      str r0, [r2]
0033b864  04 20 93 e5                                      ldr r2, [r3, #4]
0033b868  00 10 82 e5                                      str r1, [r2]
0033b86c  04 20 90 e5                                      ldr r2, [r0, #4]
0033b870  00 30 82 e5                                      str r3, [r2]
0033b874  04 c0 91 e5                                      ldr ip, [r1, #4]
0033b878  04 20 90 e5                                      ldr r2, [r0, #4]
0033b87c  04 c0 80 e5                                      str ip, [r0, #4]
0033b880  04 00 93 e5                                      ldr r0, [r3, #4]
0033b884  04 00 81 e5                                      str r0, [r1, #4]
0033b888  04 20 83 e5                                      str r2, [r3, #4]
0033b88c  14 00 9d e5                                      ldr r0, [sp, #0x14]
0033b890  00 20 a0 e1                                      mov r2, r0
0033b894  00 00 57 e3                                      cmp r7, #0
0033b898  07 10 a0 01                                      moveq r1, r7
0033b89c  07 a0 a0 01                                      moveq sl, r7
0033b8a0  cb ff ff 0a                                      beq #0x33b7d4
0033b8a4  00 30 95 e5                                      ldr r3, [r5]
0033b8a8  05 00 53 e1                                      cmp r3, r5
0033b8ac  00 a0 a0 13                                      movne sl, #0
0033b8b0  00 10 a0 03                                      moveq r1, #0
0033b8b4  0a 00 a0 11                                      movne r0, sl
0033b8b8  00 20 a0 01                                      moveq r2, r0
0033b8bc  01 a0 a0 01                                      moveq sl, r1
0033b8c0  c3 ff ff 0a                                      beq #0x33b7d4
0033b8c4  00 00 85 e0                                      add r0, r5, r0
0033b8c8  13 00 00 ea                                      b #0x33b91c
0033b8cc  00 10 92 e5                                      ldr r1, [r2]
0033b8d0  01 00 53 e1                                      cmp r3, r1
0033b8d4  03 c0 a0 01                                      moveq ip, r3
0033b8d8  0d 00 00 0a                                      beq #0x33b914
0033b8dc  04 60 91 e5                                      ldr r6, [r1, #4]
0033b8e0  03 c0 a0 e1                                      mov ip, r3
0033b8e4  00 30 86 e5                                      str r3, [r6]
0033b8e8  04 60 92 e5                                      ldr r6, [r2, #4]
0033b8ec  00 10 86 e5                                      str r1, [r6]
0033b8f0  04 60 93 e5                                      ldr r6, [r3, #4]
0033b8f4  00 20 86 e5                                      str r2, [r6]
0033b8f8  04 80 91 e5                                      ldr r8, [r1, #4]
0033b8fc  04 60 93 e5                                      ldr r6, [r3, #4]
0033b900  04 80 83 e5                                      str r8, [r3, #4]
0033b904  04 80 92 e5                                      ldr r8, [r2, #4]
0033b908  01 30 a0 e1                                      mov r3, r1
0033b90c  04 80 81 e5                                      str r8, [r1, #4]
0033b910  04 60 82 e5                                      str r6, [r2, #4]
0033b914  03 20 a0 e1                                      mov r2, r3
0033b918  0c 30 a0 e1                                      mov r3, ip
0033b91c  03 00 50 e1                                      cmp r0, r3
0033b920  08 00 00 0a                                      beq #0x33b948
0033b924  04 00 52 e1                                      cmp r2, r4
0033b928  16 00 00 0a                                      beq #0x33b988
0033b92c  08 c0 92 e5                                      ldr ip, [r2, #8]
0033b930  08 10 93 e5                                      ldr r1, [r3, #8]
0033b934  01 00 5c e1                                      cmp ip, r1
0033b938  e3 ff ff ba                                      blt #0x33b8cc
0033b93c  00 c0 93 e5                                      ldr ip, [r3]
0033b940  02 30 a0 e1                                      mov r3, r2
0033b944  f2 ff ff ea                                      b #0x33b914
0033b948  04 00 52 e1                                      cmp r2, r4
0033b94c  0d 00 00 0a                                      beq #0x33b988
0033b950  04 00 50 e1                                      cmp r0, r4
0033b954  0b 00 00 0a                                      beq #0x33b988
0033b958  18 30 9d e5                                      ldr r3, [sp, #0x18]
0033b95c  00 00 83 e5                                      str r0, [r3]
0033b960  04 30 92 e5                                      ldr r3, [r2, #4]
0033b964  00 40 83 e5                                      str r4, [r3]
0033b968  04 30 90 e5                                      ldr r3, [r0, #4]
0033b96c  00 20 83 e5                                      str r2, [r3]
0033b970  18 10 9d e5                                      ldr r1, [sp, #0x18]
0033b974  04 30 90 e5                                      ldr r3, [r0, #4]
0033b978  04 10 80 e5                                      str r1, [r0, #4]
0033b97c  04 10 92 e5                                      ldr r1, [r2, #4]
0033b980  18 10 8d e5                                      str r1, [sp, #0x18]
0033b984  04 30 82 e5                                      str r3, [r2, #4]
0033b988  00 30 90 e5                                      ldr r3, [r0]
0033b98c  01 a0 8a e2                                      add sl, sl, #1
0033b990  03 00 50 e1                                      cmp r0, r3
0033b994  33 00 00 0a                                      beq #0x33ba68
0033b998  14 20 9d e5                                      ldr r2, [sp, #0x14]
0033b99c  04 00 52 e1                                      cmp r2, r4
0033b9a0  3c 00 00 0a                                      beq #0x33ba98
0033b9a4  14 30 8d e5                                      str r3, [sp, #0x14]
0033b9a8  04 10 90 e5                                      ldr r1, [r0, #4]
0033b9ac  18 30 9d e5                                      ldr r3, [sp, #0x18]
0033b9b0  18 10 8d e5                                      str r1, [sp, #0x18]
0033b9b4  0c 00 80 e8                                      stm r0, {r2, r3}
0033b9b8  18 20 9d e5                                      ldr r2, [sp, #0x18]
0033b9bc  00 c0 93 e5                                      ldr ip, [r3]
0033b9c0  00 10 92 e5                                      ldr r1, [r2]
0033b9c4  00 c0 82 e5                                      str ip, [r2]
0033b9c8  00 10 83 e5                                      str r1, [r3]
0033b9cc  14 20 9d e5                                      ldr r2, [sp, #0x14]
0033b9d0  00 30 90 e5                                      ldr r3, [r0]
0033b9d4  04 10 92 e5                                      ldr r1, [r2, #4]
0033b9d8  04 00 93 e5                                      ldr r0, [r3, #4]
0033b9dc  04 00 82 e5                                      str r0, [r2, #4]
0033b9e0  04 10 83 e5                                      str r1, [r3, #4]
0033b9e4  14 20 9d e5                                      ldr r2, [sp, #0x14]
0033b9e8  07 00 5a e1                                      cmp sl, r7
0033b9ec  16 00 00 1a                                      bne #0x33ba4c
0033b9f0  8a 11 a0 e1                                      lsl r1, sl, #3
0033b9f4  01 30 95 e7                                      ldr r3, [r5, r1]
0033b9f8  01 10 85 e0                                      add r1, r5, r1
0033b9fc  14 20 9d e5                                      ldr r2, [sp, #0x14]
0033ba00  01 00 53 e1                                      cmp r3, r1
0033ba04  76 ff ff 1a                                      bne #0x33b7e4
0033ba08  04 00 52 e1                                      cmp r2, r4
0033ba0c  86 ff ff 0a                                      beq #0x33b82c
0033ba10  00 20 81 e5                                      str r2, [r1]
0033ba14  04 30 82 e5                                      str r3, [r2, #4]
0033ba18  18 20 9d e5                                      ldr r2, [sp, #0x18]
0033ba1c  07 00 5a e1                                      cmp sl, r7
0033ba20  04 20 81 e5                                      str r2, [r1, #4]
0033ba24  00 30 82 e5                                      str r3, [r2]
0033ba28  14 40 8d e5                                      str r4, [sp, #0x14]
0033ba2c  18 40 8d e5                                      str r4, [sp, #0x18]
0033ba30  7f ff ff 1a                                      bne #0x33b834
0033ba34  01 70 87 e2                                      add r7, r7, #1
0033ba38  3f 00 57 e3                                      cmp r7, #0x3f
0033ba3c  7c ff ff da                                      ble #0x33b834
0033ba40  04 00 9d e5                                      ldr r0, [sp, #4]
0033ba44  11 35 0f eb                                      bl #0x708e90
0033ba48  79 ff ff ea                                      b #0x33b834
0033ba4c  8a 31 95 e7                                      ldr r3, [r5, sl, lsl #3]
0033ba50  8a 01 a0 e1                                      lsl r0, sl, #3
0033ba54  00 10 85 e0                                      add r1, r5, r0
0033ba58  01 00 53 e1                                      cmp r3, r1
0033ba5c  e9 ff ff 0a                                      beq #0x33ba08
0033ba60  14 20 9d e5                                      ldr r2, [sp, #0x14]
0033ba64  96 ff ff ea                                      b #0x33b8c4
0033ba68  14 30 9d e5                                      ldr r3, [sp, #0x14]
0033ba6c  04 00 53 e1                                      cmp r3, r4
0033ba70  00 30 80 15                                      strne r3, [r0]
0033ba74  04 00 83 15                                      strne r0, [r3, #4]
0033ba78  18 30 9d 15                                      ldrne r3, [sp, #0x18]
0033ba7c  04 20 a0 01                                      moveq r2, r4
0033ba80  04 20 a0 11                                      movne r2, r4
0033ba84  04 30 80 15                                      strne r3, [r0, #4]
0033ba88  00 00 83 15                                      strne r0, [r3]
0033ba8c  14 40 8d 15                                      strne r4, [sp, #0x14]
0033ba90  18 40 8d 15                                      strne r4, [sp, #0x18]
0033ba94  d3 ff ff ea                                      b #0x33b9e8
0033ba98  14 30 8d e5                                      str r3, [sp, #0x14]
0033ba9c  04 40 83 e5                                      str r4, [r3, #4]
0033baa0  04 30 90 e5                                      ldr r3, [r0, #4]
0033baa4  18 30 8d e5                                      str r3, [sp, #0x18]
0033baa8  00 40 83 e5                                      str r4, [r3]
0033baac  04 00 80 e5                                      str r0, [r0, #4]
0033bab0  00 00 80 e5                                      str r0, [r0]
0033bab4  14 20 9d e5                                      ldr r2, [sp, #0x14]
0033bab8  ca ff ff ea                                      b #0x33b9e8
0033babc  14 30 8d e5                                      str r3, [sp, #0x14]
0033bac0  04 40 83 e5                                      str r4, [r3, #4]
0033bac4  04 30 91 e5                                      ldr r3, [r1, #4]
0033bac8  18 30 8d e5                                      str r3, [sp, #0x18]
0033bacc  00 40 83 e5                                      str r4, [r3]
0033bad0  04 10 81 e5                                      str r1, [r1, #4]
0033bad4  00 10 81 e5                                      str r1, [r1]
0033bad8  53 ff ff ea                                      b #0x33b82c
0033badc  01 00 57 e3                                      cmp r7, #1
0033bae0  09 60 a0 e1                                      mov r6, sb
0033bae4  40 00 00 da                                      ble #0x33bbec
0033bae8  0c b0 8d e5                                      str fp, [sp, #0xc]
0033baec  00 90 a0 e3                                      mov sb, #0
0033baf0  01 a0 a0 e3                                      mov sl, #1
0033baf4  04 60 8d e5                                      str r6, [sp, #4]
0033baf8  04 b0 a0 e1                                      mov fp, r4
0033bafc  8a c1 85 e0                                      add ip, r5, sl, lsl #3
0033bb00  09 40 85 e0                                      add r4, r5, sb
0033bb04  8a 31 95 e7                                      ldr r3, [r5, sl, lsl #3]
0033bb08  09 20 95 e7                                      ldr r2, [r5, sb]
0033bb0c  13 00 00 ea                                      b #0x33bb60
0033bb10  00 10 92 e5                                      ldr r1, [r2]
0033bb14  01 00 53 e1                                      cmp r3, r1
0033bb18  03 00 a0 01                                      moveq r0, r3
0033bb1c  0d 00 00 0a                                      beq #0x33bb58
0033bb20  04 60 91 e5                                      ldr r6, [r1, #4]
0033bb24  03 00 a0 e1                                      mov r0, r3
0033bb28  00 30 86 e5                                      str r3, [r6]
0033bb2c  04 60 92 e5                                      ldr r6, [r2, #4]
0033bb30  00 10 86 e5                                      str r1, [r6]
0033bb34  04 60 93 e5                                      ldr r6, [r3, #4]
0033bb38  00 20 86 e5                                      str r2, [r6]
0033bb3c  04 80 91 e5                                      ldr r8, [r1, #4]
0033bb40  04 60 93 e5                                      ldr r6, [r3, #4]
0033bb44  04 80 83 e5                                      str r8, [r3, #4]
0033bb48  04 80 92 e5                                      ldr r8, [r2, #4]
0033bb4c  01 30 a0 e1                                      mov r3, r1
0033bb50  04 80 81 e5                                      str r8, [r1, #4]
0033bb54  04 60 82 e5                                      str r6, [r2, #4]
0033bb58  03 20 a0 e1                                      mov r2, r3
0033bb5c  00 30 a0 e1                                      mov r3, r0
0033bb60  03 00 5c e1                                      cmp ip, r3
0033bb64  08 00 00 0a                                      beq #0x33bb8c
0033bb68  02 00 54 e1                                      cmp r4, r2
0033bb6c  16 00 00 0a                                      beq #0x33bbcc
0033bb70  08 00 92 e5                                      ldr r0, [r2, #8]
0033bb74  08 10 93 e5                                      ldr r1, [r3, #8]
0033bb78  01 00 50 e1                                      cmp r0, r1
0033bb7c  e3 ff ff ba                                      blt #0x33bb10
0033bb80  00 00 93 e5                                      ldr r0, [r3]
0033bb84  02 30 a0 e1                                      mov r3, r2
0033bb88  f2 ff ff ea                                      b #0x33bb58
0033bb8c  02 00 54 e1                                      cmp r4, r2
0033bb90  0d 00 00 0a                                      beq #0x33bbcc
0033bb94  04 00 5c e1                                      cmp ip, r4
0033bb98  0b 00 00 0a                                      beq #0x33bbcc
0033bb9c  04 30 94 e5                                      ldr r3, [r4, #4]
0033bba0  00 c0 83 e5                                      str ip, [r3]
0033bba4  04 30 92 e5                                      ldr r3, [r2, #4]
0033bba8  00 40 83 e5                                      str r4, [r3]
0033bbac  04 30 9c e5                                      ldr r3, [ip, #4]
0033bbb0  00 20 83 e5                                      str r2, [r3]
0033bbb4  04 10 94 e5                                      ldr r1, [r4, #4]
0033bbb8  04 30 9c e5                                      ldr r3, [ip, #4]
0033bbbc  04 10 8c e5                                      str r1, [ip, #4]
0033bbc0  04 10 92 e5                                      ldr r1, [r2, #4]
0033bbc4  04 10 84 e5                                      str r1, [r4, #4]
0033bbc8  04 30 82 e5                                      str r3, [r2, #4]
0033bbcc  01 a0 8a e2                                      add sl, sl, #1
0033bbd0  07 00 5a e1                                      cmp sl, r7
0033bbd4  08 90 89 e2                                      add sb, sb, #8
0033bbd8  c7 ff ff 1a                                      bne #0x33bafc
0033bbdc  0b 40 a0 e1                                      mov r4, fp
0033bbe0  0c b0 9d e5                                      ldr fp, [sp, #0xc]
0033bbe4  04 60 9d e5                                      ldr r6, [sp, #4]
0033bbe8  00 30 9b e5                                      ldr r3, [fp]
0033bbec  01 20 47 e2                                      sub r2, r7, #1
0033bbf0  82 11 95 e7                                      ldr r1, [r5, r2, lsl #3]
0033bbf4  82 21 85 e0                                      add r2, r5, r2, lsl #3
0033bbf8  02 00 51 e1                                      cmp r1, r2
0033bbfc  34 00 00 0a                                      beq #0x33bcd4
0033bc00  03 00 5b e1                                      cmp fp, r3
0033bc04  3c 00 00 0a                                      beq #0x33bcfc
0033bc08  04 00 9b e5                                      ldr r0, [fp, #4]
0033bc0c  04 c0 92 e5                                      ldr ip, [r2, #4]
0033bc10  00 10 8b e5                                      str r1, [fp]
0033bc14  00 30 82 e5                                      str r3, [r2]
0033bc18  04 c0 8b e5                                      str ip, [fp, #4]
0033bc1c  04 00 82 e5                                      str r0, [r2, #4]
0033bc20  00 10 90 e5                                      ldr r1, [r0]
0033bc24  00 30 9c e5                                      ldr r3, [ip]
0033bc28  00 10 8c e5                                      str r1, [ip]
0033bc2c  00 30 80 e5                                      str r3, [r0]
0033bc30  00 30 92 e5                                      ldr r3, [r2]
0033bc34  00 10 9b e5                                      ldr r1, [fp]
0033bc38  04 00 93 e5                                      ldr r0, [r3, #4]
0033bc3c  04 20 91 e5                                      ldr r2, [r1, #4]
0033bc40  04 00 81 e5                                      str r0, [r1, #4]
0033bc44  04 20 83 e5                                      str r2, [r3, #4]
0033bc48  00 00 95 e5                                      ldr r0, [r5]
0033bc4c  05 00 50 e1                                      cmp r0, r5
0033bc50  01 00 00 1a                                      bne #0x33bc5c
0033bc54  05 00 00 ea                                      b #0x33bc70
0033bc58  07 00 a0 e1                                      mov r0, r7
0033bc5c  00 70 90 e5                                      ldr r7, [r0]
0033bc60  0c 10 a0 e3                                      mov r1, #0xc
0033bc64  a5 34 0f eb                                      bl #0x708f00
0033bc68  05 00 57 e1                                      cmp r7, r5
0033bc6c  f9 ff ff 1a                                      bne #0x33bc58
0033bc70  00 50 85 e5                                      str r5, [r5]
0033bc74  04 50 85 e5                                      str r5, [r5, #4]
0033bc78  08 50 85 e2                                      add r5, r5, #8
0033bc7c  06 00 55 e1                                      cmp r5, r6
0033bc80  f0 ff ff 1a                                      bne #0x33bc48
0033bc84  14 30 9d e5                                      ldr r3, [sp, #0x14]
0033bc88  04 00 53 e1                                      cmp r3, r4
0033bc8c  07 00 00 0a                                      beq #0x33bcb0
0033bc90  03 00 a0 e1                                      mov r0, r3
0033bc94  00 00 00 ea                                      b #0x33bc9c
0033bc98  05 00 a0 e1                                      mov r0, r5
0033bc9c  00 50 90 e5                                      ldr r5, [r0]
0033bca0  0c 10 a0 e3                                      mov r1, #0xc
0033bca4  95 34 0f eb                                      bl #0x708f00
0033bca8  04 00 55 e1                                      cmp r5, r4
0033bcac  f9 ff ff 1a                                      bne #0x33bc98
0033bcb0  00 20 9d e5                                      ldr r2, [sp]
0033bcb4  08 10 9d e5                                      ldr r1, [sp, #8]
0033bcb8  01 30 92 e7                                      ldr r3, [r2, r1]
0033bcbc  1c 22 9d e5                                      ldr r2, [sp, #0x21c]
0033bcc0  00 30 93 e5                                      ldr r3, [r3]
0033bcc4  03 00 52 e1                                      cmp r2, r3
0033bcc8  13 00 00 1a                                      bne #0x33bd1c
0033bccc  89 df 8d e2                                      add sp, sp, #0x224
0033bcd0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0033bcd4  03 00 5b e1                                      cmp fp, r3
0033bcd8  da ff ff 0a                                      beq #0x33bc48
0033bcdc  00 30 81 e5                                      str r3, [r1]
0033bce0  04 10 83 e5                                      str r1, [r3, #4]
0033bce4  04 30 9b e5                                      ldr r3, [fp, #4]
0033bce8  04 30 81 e5                                      str r3, [r1, #4]
0033bcec  00 10 83 e5                                      str r1, [r3]
0033bcf0  04 b0 8b e5                                      str fp, [fp, #4]
0033bcf4  00 b0 8b e5                                      str fp, [fp]
0033bcf8  d2 ff ff ea                                      b #0x33bc48
0033bcfc  00 10 8b e5                                      str r1, [fp]
0033bd00  04 b0 81 e5                                      str fp, [r1, #4]
0033bd04  04 30 92 e5                                      ldr r3, [r2, #4]
0033bd08  04 30 8b e5                                      str r3, [fp, #4]
0033bd0c  00 b0 83 e5                                      str fp, [r3]
0033bd10  04 20 82 e5                                      str r2, [r2, #4]
0033bd14  00 20 82 e5                                      str r2, [r2]
0033bd18  ca ff ff ea                                      b #0x33bc48
0033bd1c  7b 49 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0033bd20  70 93 65 00 ac 40 00 00 e8 48 58 00              .byte 0x70, 0x93, 0x65, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe8, 0x48, 0x58, 0x00

; FUNCTION 0x00341ef0, declared_size=176, range_size=176, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv14__partial_sortIPP6ModuleS2_20SortModuleByDistanceEEvT_S5_S5_PT0_T1_
; demangled: void std::priv::__partial_sort<Module**, Module*, SortModuleByDistance>(Module**, Module**, Module**, Module**, SortModuleByDistance)
; decoder-mode: arm
00341ef0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00341ef4  00 c0 a0 e3                                      mov ip, #0
00341ef8  0c d0 4d e2                                      sub sp, sp, #0xc
00341efc  02 60 a0 e1                                      mov r6, r2
00341f00  01 80 a0 e1                                      mov r8, r1
00341f04  0c 30 a0 e1                                      mov r3, ip
00341f08  28 20 9d e5                                      ldr r2, [sp, #0x28]
00341f0c  00 c0 8d e5                                      str ip, [sp]
00341f10  00 50 a0 e1                                      mov r5, r0
00341f14  c7 ff ff eb                                      bl #0x341e38
00341f18  06 00 58 e1                                      cmp r8, r6
00341f1c  19 00 00 2a                                      bhs #0x341f88
00341f20  08 a0 65 e0                                      rsb sl, r5, r8
00341f24  4a a1 a0 e1                                      asr sl, sl, #2
00341f28  08 40 a0 e1                                      mov r4, r8
00341f2c  28 70 8d e2                                      add r7, sp, #0x28
00341f30  02 00 00 ea                                      b #0x341f40
00341f34  04 40 84 e2                                      add r4, r4, #4
00341f38  04 00 56 e1                                      cmp r6, r4
00341f3c  11 00 00 9a                                      bls #0x341f88
00341f40  00 10 94 e5                                      ldr r1, [r4]
00341f44  00 20 95 e5                                      ldr r2, [r5]
00341f48  07 00 a0 e1                                      mov r0, r7
00341f4c  1e ff ff eb                                      bl #0x341bcc
00341f50  00 00 50 e3                                      cmp r0, #0
00341f54  f6 ff ff 0a                                      beq #0x341f34
00341f58  00 20 95 e5                                      ldr r2, [r5]
00341f5c  28 c0 9d e5                                      ldr ip, [sp, #0x28]
00341f60  00 30 94 e5                                      ldr r3, [r4]
00341f64  05 00 a0 e1                                      mov r0, r5
00341f68  00 20 84 e5                                      str r2, [r4]
00341f6c  00 10 a0 e3                                      mov r1, #0
00341f70  0a 20 a0 e1                                      mov r2, sl
00341f74  04 40 84 e2                                      add r4, r4, #4
00341f78  00 c0 8d e5                                      str ip, [sp]
00341f7c  82 ff ff eb                                      bl #0x341d8c
00341f80  04 00 56 e1                                      cmp r6, r4
00341f84  ed ff ff 8a                                      bhi #0x341f40
00341f88  05 00 a0 e1                                      mov r0, r5
00341f8c  08 10 a0 e1                                      mov r1, r8
00341f90  28 20 9d e5                                      ldr r2, [sp, #0x28]
00341f94  c0 ff ff eb                                      bl #0x341e9c
00341f98  0c d0 8d e2                                      add sp, sp, #0xc
00341f9c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x003420d4, declared_size=184, range_size=184, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv16__introsort_loopIPP6ModuleS2_i20SortModuleByDistanceEEvT_S5_PT0_T1_T2_
; demangled: void std::priv::__introsort_loop<Module**, Module*, int, SortModuleByDistance>(Module**, Module**, Module**, int, SortModuleByDistance)
; decoder-mode: arm
003420d4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003420d8  01 50 a0 e1                                      mov r5, r1
003420dc  01 10 60 e0                                      rsb r1, r0, r1
003420e0  08 d0 4d e2                                      sub sp, sp, #8
003420e4  43 00 51 e3                                      cmp r1, #0x43
003420e8  00 40 a0 e1                                      mov r4, r0
003420ec  03 60 a0 e1                                      mov r6, r3
003420f0  20 70 9d e5                                      ldr r7, [sp, #0x20]
003420f4  1a 00 00 da                                      ble #0x342164
003420f8  00 00 53 e3                                      cmp r3, #0
003420fc  03 00 00 1a                                      bne #0x342110
00342100  19 00 00 ea                                      b #0x34216c
00342104  00 00 56 e3                                      cmp r6, #0
00342108  08 50 a0 e1                                      mov r5, r8
0034210c  16 00 00 0a                                      beq #0x34216c
00342110  c1 11 a0 e1                                      asr r1, r1, #3
00342114  04 20 45 e2                                      sub r2, r5, #4
00342118  01 11 84 e0                                      add r1, r4, r1, lsl #2
0034211c  07 30 a0 e1                                      mov r3, r7
00342120  04 00 a0 e1                                      mov r0, r4
00342124  9d ff ff eb                                      bl #0x341fa0
00342128  05 10 a0 e1                                      mov r1, r5
0034212c  00 20 90 e5                                      ldr r2, [r0]
00342130  07 30 a0 e1                                      mov r3, r7
00342134  04 00 a0 e1                                      mov r0, r4
00342138  c5 ff ff eb                                      bl #0x342054
0034213c  01 60 46 e2                                      sub r6, r6, #1
00342140  00 80 a0 e1                                      mov r8, r0
00342144  05 10 a0 e1                                      mov r1, r5
00342148  00 20 a0 e3                                      mov r2, #0
0034214c  06 30 a0 e1                                      mov r3, r6
00342150  00 70 8d e5                                      str r7, [sp]
00342154  de ff ff eb                                      bl #0x3420d4
00342158  08 10 64 e0                                      rsb r1, r4, r8
0034215c  43 00 51 e3                                      cmp r1, #0x43
00342160  e7 ff ff ca                                      bgt #0x342104
00342164  08 d0 8d e2                                      add sp, sp, #8
00342168  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0034216c  05 10 a0 e1                                      mov r1, r5
00342170  04 00 a0 e1                                      mov r0, r4
00342174  05 20 a0 e1                                      mov r2, r5
00342178  00 30 a0 e3                                      mov r3, #0
0034217c  20 70 8d e5                                      str r7, [sp, #0x20]
00342180  08 d0 8d e2                                      add sp, sp, #8
00342184  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00342188  58 ff ff ea                                      b #0x341ef0

; FUNCTION 0x0034218c, declared_size=160, range_size=160, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv15__linear_insertIPP6ModuleS2_20SortModuleByDistanceEEvT_S5_T0_T1_
; demangled: void std::priv::__linear_insert<Module**, Module*, SortModuleByDistance>(Module**, Module**, Module*, SortModuleByDistance)
; decoder-mode: arm
0034218c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00342190  10 d0 4d e2                                      sub sp, sp, #0x10
00342194  10 c0 8d e2                                      add ip, sp, #0x10
00342198  0c 30 2c e5                                      str r3, [ip, #-0xc]!
0034219c  00 40 a0 e1                                      mov r4, r0
003421a0  02 70 a0 e1                                      mov r7, r2
003421a4  01 50 a0 e1                                      mov r5, r1
003421a8  0c 00 a0 e1                                      mov r0, ip
003421ac  02 10 a0 e1                                      mov r1, r2
003421b0  00 20 94 e5                                      ldr r2, [r4]
003421b4  84 fe ff eb                                      bl #0x341bcc
003421b8  00 00 50 e3                                      cmp r0, #0
003421bc  09 00 00 0a                                      beq #0x3421e8
003421c0  05 20 64 e0                                      rsb r2, r4, r5
003421c4  00 00 52 e3                                      cmp r2, #0
003421c8  03 00 00 da                                      ble #0x3421dc
003421cc  04 00 85 e2                                      add r0, r5, #4
003421d0  00 00 62 e0                                      rsb r0, r2, r0
003421d4  04 10 a0 e1                                      mov r1, r4
003421d8  56 2f ff eb                                      bl #0x30df38
003421dc  00 70 84 e5                                      str r7, [r4]
003421e0  10 d0 8d e2                                      add sp, sp, #0x10
003421e4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003421e8  04 30 9d e5                                      ldr r3, [sp, #4]
003421ec  10 80 8d e2                                      add r8, sp, #0x10
003421f0  04 40 45 e2                                      sub r4, r5, #4
003421f4  04 30 28 e5                                      str r3, [r8, #-4]!
003421f8  02 00 00 ea                                      b #0x342208
003421fc  04 30 94 e5                                      ldr r3, [r4, #4]
00342200  00 30 85 e5                                      str r3, [r5]
00342204  06 50 a0 e1                                      mov r5, r6
00342208  04 60 a0 e1                                      mov r6, r4
0034220c  08 00 a0 e1                                      mov r0, r8
00342210  04 20 14 e4                                      ldr r2, [r4], #-4
00342214  07 10 a0 e1                                      mov r1, r7
00342218  6b fe ff eb                                      bl #0x341bcc
0034221c  00 00 50 e3                                      cmp r0, #0
00342220  f5 ff ff 1a                                      bne #0x3421fc
00342224  00 70 85 e5                                      str r7, [r5]
00342228  ec ff ff ea                                      b #0x3421e0

; FUNCTION 0x0034222c, declared_size=232, range_size=232, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv22__final_insertion_sortIPP6Module20SortModuleByDistanceEEvT_S5_T0_
; demangled: void std::priv::__final_insertion_sort<Module**, SortModuleByDistance>(Module**, Module**, SortModuleByDistance)
; decoder-mode: arm
0034222c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00342230  01 30 60 e0                                      rsb r3, r0, r1
00342234  43 00 53 e3                                      cmp r3, #0x43
00342238  0c d0 4d e2                                      sub sp, sp, #0xc
0034223c  00 50 a0 e1                                      mov r5, r0
00342240  01 b0 a0 e1                                      mov fp, r1
00342244  02 90 a0 e1                                      mov sb, r2
00342248  23 00 00 da                                      ble #0x3422dc
0034224c  04 a0 80 e2                                      add sl, r0, #4
00342250  40 60 80 e2                                      add r6, r0, #0x40
00342254  0a 40 a0 e1                                      mov r4, sl
00342258  04 10 a0 e1                                      mov r1, r4
0034225c  00 20 94 e5                                      ldr r2, [r4]
00342260  05 00 a0 e1                                      mov r0, r5
00342264  04 40 84 e2                                      add r4, r4, #4
00342268  09 30 a0 e1                                      mov r3, sb
0034226c  c6 ff ff eb                                      bl #0x34218c
00342270  06 00 54 e1                                      cmp r4, r6
00342274  f7 ff ff 1a                                      bne #0x342258
00342278  3c a0 8a e2                                      add sl, sl, #0x3c
0034227c  0a 00 5b e1                                      cmp fp, sl
00342280  13 00 00 0a                                      beq #0x3422d4
00342284  04 80 8d e2                                      add r8, sp, #4
00342288  0a 40 a0 e1                                      mov r4, sl
0034228c  04 90 8d e5                                      str sb, [sp, #4]
00342290  04 70 14 e4                                      ldr r7, [r4], #-4
00342294  0a 50 a0 e1                                      mov r5, sl
00342298  02 00 00 ea                                      b #0x3422a8
0034229c  04 30 94 e5                                      ldr r3, [r4, #4]
003422a0  00 30 85 e5                                      str r3, [r5]
003422a4  06 50 a0 e1                                      mov r5, r6
003422a8  04 60 a0 e1                                      mov r6, r4
003422ac  08 00 a0 e1                                      mov r0, r8
003422b0  04 20 14 e4                                      ldr r2, [r4], #-4
003422b4  07 10 a0 e1                                      mov r1, r7
003422b8  43 fe ff eb                                      bl #0x341bcc
003422bc  00 00 50 e3                                      cmp r0, #0
003422c0  f5 ff ff 1a                                      bne #0x34229c
003422c4  04 a0 8a e2                                      add sl, sl, #4
003422c8  0a 00 5b e1                                      cmp fp, sl
003422cc  00 70 85 e5                                      str r7, [r5]
003422d0  ec ff ff 1a                                      bne #0x342288
003422d4  0c d0 8d e2                                      add sp, sp, #0xc
003422d8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003422dc  00 00 51 e1                                      cmp r1, r0
003422e0  fb ff ff 0a                                      beq #0x3422d4
003422e4  04 40 80 e2                                      add r4, r0, #4
003422e8  04 00 51 e1                                      cmp r1, r4
003422ec  f8 ff ff 0a                                      beq #0x3422d4
003422f0  04 10 a0 e1                                      mov r1, r4
003422f4  00 20 94 e5                                      ldr r2, [r4]
003422f8  05 00 a0 e1                                      mov r0, r5
003422fc  04 40 84 e2                                      add r4, r4, #4
00342300  09 30 a0 e1                                      mov r3, sb
00342304  a0 ff ff eb                                      bl #0x34218c
00342308  04 00 5b e1                                      cmp fp, r4
0034230c  f7 ff ff 1a                                      bne #0x3422f0
00342310  ef ff ff ea                                      b #0x3422d4

; FUNCTION 0x00379354, declared_size=216, range_size=216, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv14__partial_sortIPSt4pairIiiES2_N17PlayerStatManager9_StatCompEEEvT_S6_S6_PT0_T1_
; demangled: void std::priv::__partial_sort<std::pair<int, int>*, std::pair<int, int>, PlayerStatManager::_StatComp>(std::pair<int, int>*, std::pair<int, int>*, std::pair<int, int>*, std::pair<int, int>*, PlayerStatManager::_StatComp)
; decoder-mode: arm
00379354  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00379358  00 a0 a0 e3                                      mov sl, #0
0037935c  1c d0 4d e2                                      sub sp, sp, #0x1c
00379360  02 70 a0 e1                                      mov r7, r2
00379364  01 40 a0 e1                                      mov r4, r1
00379368  00 20 a0 e3                                      mov r2, #0
0037936c  0a 30 a0 e1                                      mov r3, sl
00379370  00 a0 8d e5                                      str sl, [sp]
00379374  00 60 a0 e1                                      mov r6, r0
00379378  c4 ff ff eb                                      bl #0x379290
0037937c  07 00 54 e1                                      cmp r4, r7
00379380  13 00 00 2a                                      bhs #0x3793d4
00379384  04 50 a0 e1                                      mov r5, r4
00379388  10 80 8d e2                                      add r8, sp, #0x10
0037938c  00 30 96 e5                                      ldr r3, [r6]
00379390  00 c0 95 e5                                      ldr ip, [r5]
00379394  05 20 a0 e1                                      mov r2, r5
00379398  06 00 a0 e1                                      mov r0, r6
0037939c  03 00 5c e1                                      cmp ip, r3
003793a0  04 10 a0 e1                                      mov r1, r4
003793a4  08 30 a0 e1                                      mov r3, r8
003793a8  06 00 00 da                                      ble #0x3793c8
003793ac  04 e0 95 e5                                      ldr lr, [r5, #4]
003793b0  10 c0 8d e5                                      str ip, [sp, #0x10]
003793b4  00 c0 a0 e3                                      mov ip, #0
003793b8  00 c0 cd e5                                      strb ip, [sp]
003793bc  14 e0 8d e5                                      str lr, [sp, #0x14]
003793c0  04 a0 8d e5                                      str sl, [sp, #4]
003793c4  ce ff ff eb                                      bl #0x379304
003793c8  08 50 85 e2                                      add r5, r5, #8
003793cc  05 00 57 e1                                      cmp r7, r5
003793d0  ed ff ff 8a                                      bhi #0x37938c
003793d4  04 50 66 e0                                      rsb r5, r6, r4
003793d8  0f 00 55 e3                                      cmp r5, #0xf
003793dc  10 00 00 da                                      ble #0x379424
003793e0  08 70 8d e2                                      add r7, sp, #8
003793e4  00 80 a0 e3                                      mov r8, #0
003793e8  08 e0 34 e5                                      ldr lr, [r4, #-8]!
003793ec  08 50 45 e2                                      sub r5, r5, #8
003793f0  06 00 a0 e1                                      mov r0, r6
003793f4  04 c0 94 e5                                      ldr ip, [r4, #4]
003793f8  04 10 a0 e1                                      mov r1, r4
003793fc  04 20 a0 e1                                      mov r2, r4
00379400  0c c0 8d e5                                      str ip, [sp, #0xc]
00379404  07 30 a0 e1                                      mov r3, r7
00379408  00 c0 a0 e3                                      mov ip, #0
0037940c  08 e0 8d e5                                      str lr, [sp, #8]
00379410  00 c0 cd e5                                      strb ip, [sp]
00379414  04 80 8d e5                                      str r8, [sp, #4]
00379418  b9 ff ff eb                                      bl #0x379304
0037941c  0f 00 55 e3                                      cmp r5, #0xf
00379420  f0 ff ff ca                                      bgt #0x3793e8
00379424  1c d0 8d e2                                      add sp, sp, #0x1c
00379428  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x0037942c, declared_size=316, range_size=316, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv16__introsort_loopIPSt4pairIiiES2_iN17PlayerStatManager9_StatCompEEEvT_S6_PT0_T1_T2_
; demangled: void std::priv::__introsort_loop<std::pair<int, int>*, std::pair<int, int>, int, PlayerStatManager::_StatComp>(std::pair<int, int>*, std::pair<int, int>*, std::pair<int, int>*, int, PlayerStatManager::_StatComp)
; decoder-mode: arm
0037942c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00379430  01 20 60 e0                                      rsb r2, r0, r1
00379434  87 00 52 e3                                      cmp r2, #0x87
00379438  08 d0 4d e2                                      sub sp, sp, #8
0037943c  00 50 a0 e1                                      mov r5, r0
00379440  03 60 a0 e1                                      mov r6, r3
00379444  45 00 00 da                                      ble #0x379560
00379448  00 00 53 e3                                      cmp r3, #0
0037944c  33 00 00 0a                                      beq #0x379520
00379450  42 22 a0 e1                                      asr r2, r2, #4
00379454  82 31 95 e7                                      ldr r3, [r5, r2, lsl #3]
00379458  00 20 95 e5                                      ldr r2, [r5]
0037945c  01 60 46 e2                                      sub r6, r6, #1
00379460  03 00 52 e1                                      cmp r2, r3
00379464  35 00 00 da                                      ble #0x379540
00379468  08 00 11 e5                                      ldr r0, [r1, #-8]
0037946c  00 00 53 e1                                      cmp r3, r0
00379470  37 00 00 ca                                      bgt #0x379554
00379474  00 00 52 e1                                      cmp r2, r0
00379478  1a 00 00 ca                                      bgt #0x3794e8
0037947c  00 c0 a0 e1                                      mov ip, r0
00379480  02 00 a0 e1                                      mov r0, r2
00379484  01 e0 a0 e1                                      mov lr, r1
00379488  05 70 a0 e1                                      mov r7, r5
0037948c  07 40 a0 e1                                      mov r4, r7
00379490  00 00 00 ea                                      b #0x379498
00379494  08 20 b4 e5                                      ldr r2, [r4, #8]!
00379498  00 00 52 e1                                      cmp r2, r0
0037949c  fc ff ff ca                                      bgt #0x379494
003794a0  08 30 4e e2                                      sub r3, lr, #8
003794a4  00 00 00 ea                                      b #0x3794ac
003794a8  08 c0 33 e5                                      ldr ip, [r3, #-8]!
003794ac  0c 00 50 e1                                      cmp r0, ip
003794b0  fc ff ff ca                                      bgt #0x3794a8
003794b4  03 00 54 e1                                      cmp r4, r3
003794b8  03 e0 a0 e1                                      mov lr, r3
003794bc  0b 00 00 2a                                      bhs #0x3794f0
003794c0  00 80 93 e5                                      ldr r8, [r3]
003794c4  04 c0 94 e5                                      ldr ip, [r4, #4]
003794c8  08 70 84 e2                                      add r7, r4, #8
003794cc  00 80 84 e5                                      str r8, [r4]
003794d0  04 80 93 e5                                      ldr r8, [r3, #4]
003794d4  04 80 84 e5                                      str r8, [r4, #4]
003794d8  04 10 83 e8                                      stm r3, {r2, ip}
003794dc  08 c0 13 e5                                      ldr ip, [r3, #-8]
003794e0  08 20 94 e5                                      ldr r2, [r4, #8]
003794e4  e8 ff ff ea                                      b #0x37948c
003794e8  00 c0 a0 e1                                      mov ip, r0
003794ec  e4 ff ff ea                                      b #0x379484
003794f0  00 20 a0 e3                                      mov r2, #0
003794f4  00 c0 a0 e3                                      mov ip, #0
003794f8  04 00 a0 e1                                      mov r0, r4
003794fc  06 30 a0 e1                                      mov r3, r6
00379500  00 c0 cd e5                                      strb ip, [sp]
00379504  c8 ff ff eb                                      bl #0x37942c
00379508  04 20 65 e0                                      rsb r2, r5, r4
0037950c  87 00 52 e3                                      cmp r2, #0x87
00379510  12 00 00 da                                      ble #0x379560
00379514  00 00 56 e3                                      cmp r6, #0
00379518  04 10 a0 e1                                      mov r1, r4
0037951c  cb ff ff 1a                                      bne #0x379450
00379520  00 c0 a0 e3                                      mov ip, #0
00379524  05 00 a0 e1                                      mov r0, r5
00379528  01 20 a0 e1                                      mov r2, r1
0037952c  00 30 a0 e3                                      mov r3, #0
00379530  20 c0 cd e5                                      strb ip, [sp, #0x20]
00379534  08 d0 8d e2                                      add sp, sp, #8
00379538  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0037953c  84 ff ff ea                                      b #0x379354
00379540  08 00 11 e5                                      ldr r0, [r1, #-8]
00379544  00 00 52 e1                                      cmp r2, r0
00379548  cb ff ff ca                                      bgt #0x37947c
0037954c  00 00 53 e1                                      cmp r3, r0
00379550  e4 ff ff ca                                      bgt #0x3794e8
00379554  00 c0 a0 e1                                      mov ip, r0
00379558  03 00 a0 e1                                      mov r0, r3
0037955c  c8 ff ff ea                                      b #0x379484
00379560  08 d0 8d e2                                      add sp, sp, #8
00379564  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00379a2c, declared_size=152, range_size=152, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv15__linear_insertIPSt4pairIiiES2_N17PlayerStatManager9_StatCompEEEvT_S6_T0_T1_.clone.2
; demangled: void std::priv::__linear_insert<std::pair<int, int>*, std::pair<int, int>, PlayerStatManager::_StatComp>(std::pair<int, int>*, std::pair<int, int>*, std::pair<int, int>, PlayerStatManager::_StatComp) [clone .clone.2]
; decoder-mode: arm
00379a2c  10 40 2d e9                                      push {r4, lr}
00379a30  84 30 9f e5                                      ldr r3, [pc, #0x84]
00379a34  00 20 91 e5                                      ldr r2, [r1]
00379a38  01 40 a0 e1                                      mov r4, r1
00379a3c  03 30 8f e0                                      add r3, pc, r3
00379a40  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00379a44  01 00 52 e1                                      cmp r2, r1
00379a48  0d 00 00 da                                      ble #0x379a84
00379a4c  0c 10 83 e2                                      add r1, r3, #0xc
00379a50  00 20 61 e0                                      rsb r2, r1, r0
00379a54  00 00 52 e3                                      cmp r2, #0
00379a58  02 00 00 da                                      ble #0x379a68
00379a5c  08 00 80 e2                                      add r0, r0, #8
00379a60  00 00 62 e0                                      rsb r0, r2, r0
00379a64  33 51 fe eb                                      bl #0x30df38
00379a68  50 30 9f e5                                      ldr r3, [pc, #0x50]
00379a6c  00 20 94 e5                                      ldr r2, [r4]
00379a70  03 30 8f e0                                      add r3, pc, r3
00379a74  0c 20 83 e5                                      str r2, [r3, #0xc]
00379a78  04 20 94 e5                                      ldr r2, [r4, #4]
00379a7c  10 20 83 e5                                      str r2, [r3, #0x10]
00379a80  10 80 bd e8                                      pop {r4, pc}
00379a84  04 40 94 e5                                      ldr r4, [r4, #4]
00379a88  08 30 40 e2                                      sub r3, r0, #8
00379a8c  04 00 00 ea                                      b #0x379aa4
00379a90  08 10 93 e5                                      ldr r1, [r3, #8]
00379a94  00 10 80 e5                                      str r1, [r0]
00379a98  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00379a9c  04 10 80 e5                                      str r1, [r0, #4]
00379aa0  0c 00 a0 e1                                      mov r0, ip
00379aa4  03 c0 a0 e1                                      mov ip, r3
00379aa8  08 10 13 e4                                      ldr r1, [r3], #-8
00379aac  01 00 52 e1                                      cmp r2, r1
00379ab0  f6 ff ff ca                                      bgt #0x379a90
00379ab4  14 00 80 e8                                      stm r0, {r2, r4}
00379ab8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00379abc  74 89 62 00 40 89 62 00                          .byte 0x74, 0x89, 0x62, 0x00, 0x40, 0x89, 0x62, 0x00

; FUNCTION 0x003fb4a0, declared_size=92, range_size=92, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv7__ufillIPN12ItemInstance9PowerInfoES2_iEEvT_S4_RKT0_RKSt26random_access_iterator_tagPT1_
; demangled: void std::priv::__ufill<ItemInstance::PowerInfo*, ItemInstance::PowerInfo, int>(ItemInstance::PowerInfo*, ItemInstance::PowerInfo*, ItemInstance::PowerInfo const&, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
003fb4a0  01 10 60 e0                                      rsb r1, r0, r1
003fb4a4  70 40 2d e9                                      push {r4, r5, r6, lr}
003fb4a8  c1 62 a0 e1                                      asr r6, r1, #5
003fb4ac  00 00 56 e3                                      cmp r6, #0
003fb4b0  02 50 a0 e1                                      mov r5, r2
003fb4b4  0f 00 00 da                                      ble #0x3fb4f8
003fb4b8  00 40 a0 e1                                      mov r4, r0
003fb4bc  00 00 00 ea                                      b #0x3fb4c4
003fb4c0  20 40 84 e2                                      add r4, r4, #0x20
003fb4c4  00 20 95 e5                                      ldr r2, [r5]
003fb4c8  08 30 84 e2                                      add r3, r4, #8
003fb4cc  03 00 a0 e1                                      mov r0, r3
003fb4d0  00 20 84 e5                                      str r2, [r4]
003fb4d4  04 20 95 e5                                      ldr r2, [r5, #4]
003fb4d8  18 30 84 e5                                      str r3, [r4, #0x18]
003fb4dc  1c 30 84 e5                                      str r3, [r4, #0x1c]
003fb4e0  04 20 84 e5                                      str r2, [r4, #4]
003fb4e4  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
003fb4e8  18 20 95 e5                                      ldr r2, [r5, #0x18]
003fb4ec  7d 58 fc eb                                      bl #0x3116e8
003fb4f0  01 60 56 e2                                      subs r6, r6, #1
003fb4f4  f1 ff ff 1a                                      bne #0x3fb4c0
003fb4f8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00400fc0, declared_size=324, range_size=324, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv14__partial_sortIPN13ItemInventory4ItemES2_19SortByValueAndClassEEvT_S5_S5_PT0_T1_
; demangled: void std::priv::__partial_sort<ItemInventory::Item*, ItemInventory::Item, SortByValueAndClass>(ItemInventory::Item*, ItemInventory::Item*, ItemInventory::Item*, ItemInventory::Item*, SortByValueAndClass)
; decoder-mode: arm
00400fc0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00400fc4  00 50 a0 e3                                      mov r5, #0
00400fc8  34 d0 4d e2                                      sub sp, sp, #0x34
00400fcc  02 70 a0 e1                                      mov r7, r2
00400fd0  01 40 a0 e1                                      mov r4, r1
00400fd4  58 20 9d e5                                      ldr r2, [sp, #0x58]
00400fd8  05 30 a0 e1                                      mov r3, r5
00400fdc  00 50 8d e5                                      str r5, [sp]
00400fe0  00 60 a0 e1                                      mov r6, r0
00400fe4  a7 ff ff eb                                      bl #0x400e88
00400fe8  07 00 54 e1                                      cmp r4, r7
00400fec  25 00 00 2a                                      bhs #0x401088
00400ff0  24 a0 8d e2                                      add sl, sp, #0x24
00400ff4  04 90 8a e2                                      add sb, sl, #4
00400ff8  04 30 89 e2                                      add r3, sb, #4
00400ffc  05 b0 a0 e1                                      mov fp, r5
00401000  58 80 8d e2                                      add r8, sp, #0x58
00401004  04 50 a0 e1                                      mov r5, r4
00401008  14 30 8d e5                                      str r3, [sp, #0x14]
0040100c  02 00 00 ea                                      b #0x40101c
00401010  0c 50 85 e2                                      add r5, r5, #0xc
00401014  05 00 57 e1                                      cmp r7, r5
00401018  1a 00 00 9a                                      bls #0x401088
0040101c  05 10 a0 e1                                      mov r1, r5
00401020  06 20 a0 e1                                      mov r2, r6
00401024  08 00 a0 e1                                      mov r0, r8
00401028  6e f0 ff eb                                      bl #0x3fd1e8
0040102c  00 00 50 e3                                      cmp r0, #0
00401030  f6 ff ff 0a                                      beq #0x401010
00401034  04 10 95 e5                                      ldr r1, [r5, #4]
00401038  05 30 a0 e1                                      mov r3, r5
0040103c  04 20 93 e4                                      ldr r2, [r3], #4
00401040  00 10 89 e5                                      str r1, [sb]
00401044  06 00 a0 e1                                      mov r0, r6
00401048  04 c0 93 e5                                      ldr ip, [r3, #4]
0040104c  00 20 8a e5                                      str r2, [sl]
00401050  58 e0 9d e5                                      ldr lr, [sp, #0x58]
00401054  05 20 a0 e1                                      mov r2, r5
00401058  00 50 8d e9                                      stmib sp, {ip, lr}
0040105c  28 e0 9d e5                                      ldr lr, [sp, #0x28]
00401060  24 30 9d e5                                      ldr r3, [sp, #0x24]
00401064  04 10 a0 e1                                      mov r1, r4
00401068  00 e0 8d e5                                      str lr, [sp]
0040106c  14 e0 9d e5                                      ldr lr, [sp, #0x14]
00401070  0c 50 85 e2                                      add r5, r5, #0xc
00401074  00 c0 8e e5                                      str ip, [lr]
00401078  0c b0 8d e5                                      str fp, [sp, #0xc]
0040107c  b0 ff ff eb                                      bl #0x400f44
00401080  05 00 57 e1                                      cmp r7, r5
00401084  e4 ff ff 8a                                      bhi #0x40101c
00401088  04 50 66 e0                                      rsb r5, r6, r4
0040108c  17 00 55 e3                                      cmp r5, #0x17
00401090  58 a0 9d e5                                      ldr sl, [sp, #0x58]
00401094  18 00 00 da                                      ble #0x4010fc
00401098  18 70 8d e2                                      add r7, sp, #0x18
0040109c  04 80 87 e2                                      add r8, r7, #4
004010a0  04 90 88 e2                                      add sb, r8, #4
004010a4  00 b0 a0 e3                                      mov fp, #0
004010a8  0c 40 44 e2                                      sub r4, r4, #0xc
004010ac  04 10 94 e5                                      ldr r1, [r4, #4]
004010b0  04 30 a0 e1                                      mov r3, r4
004010b4  04 20 93 e4                                      ldr r2, [r3], #4
004010b8  00 10 88 e5                                      str r1, [r8]
004010bc  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
004010c0  04 c0 93 e5                                      ldr ip, [r3, #4]
004010c4  00 20 87 e5                                      str r2, [r7]
004010c8  0c 50 45 e2                                      sub r5, r5, #0xc
004010cc  00 e0 8d e5                                      str lr, [sp]
004010d0  04 c0 8d e5                                      str ip, [sp, #4]
004010d4  18 30 9d e5                                      ldr r3, [sp, #0x18]
004010d8  00 c0 89 e5                                      str ip, [sb]
004010dc  06 00 a0 e1                                      mov r0, r6
004010e0  04 10 a0 e1                                      mov r1, r4
004010e4  04 20 a0 e1                                      mov r2, r4
004010e8  08 a0 8d e5                                      str sl, [sp, #8]
004010ec  0c b0 8d e5                                      str fp, [sp, #0xc]
004010f0  93 ff ff eb                                      bl #0x400f44
004010f4  17 00 55 e3                                      cmp r5, #0x17
004010f8  ea ff ff ca                                      bgt #0x4010a8
004010fc  34 d0 8d e2                                      add sp, sp, #0x34
00401100  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00401270, declared_size=268, range_size=268, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv16__introsort_loopIPN13ItemInventory4ItemES2_i19SortByValueAndClassEEvT_S5_PT0_T1_T2_
; demangled: void std::priv::__introsort_loop<ItemInventory::Item*, ItemInventory::Item, int, SortByValueAndClass>(ItemInventory::Item*, ItemInventory::Item*, ItemInventory::Item*, int, SortByValueAndClass)
; decoder-mode: arm
00401270  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00401274  01 50 a0 e1                                      mov r5, r1
00401278  01 10 60 e0                                      rsb r1, r0, r1
0040127c  1c d0 4d e2                                      sub sp, sp, #0x1c
00401280  cb 00 51 e3                                      cmp r1, #0xcb
00401284  00 40 a0 e1                                      mov r4, r0
00401288  03 60 a0 e1                                      mov r6, r3
0040128c  40 80 9d e5                                      ldr r8, [sp, #0x40]
00401290  2f 00 00 da                                      ble #0x401354
00401294  00 00 53 e3                                      cmp r3, #0
00401298  2f 00 00 0a                                      beq #0x40135c
0040129c  0c 70 8d e2                                      add r7, sp, #0xc
004012a0  0c b0 a0 e3                                      mov fp, #0xc
004012a4  07 90 a0 e1                                      mov sb, r7
004012a8  02 00 00 ea                                      b #0x4012b8
004012ac  00 00 56 e3                                      cmp r6, #0
004012b0  0a 50 a0 e1                                      mov r5, sl
004012b4  28 00 00 0a                                      beq #0x40135c
004012b8  41 11 a0 e1                                      asr r1, r1, #2
004012bc  0c 20 45 e2                                      sub r2, r5, #0xc
004012c0  01 c1 81 e0                                      add ip, r1, r1, lsl #2
004012c4  08 30 a0 e1                                      mov r3, r8
004012c8  0c c2 8c e0                                      add ip, ip, ip, lsl #4
004012cc  04 00 a0 e1                                      mov r0, r4
004012d0  0c c4 8c e0                                      add ip, ip, ip, lsl #8
004012d4  01 60 46 e2                                      sub r6, r6, #1
004012d8  0c c8 8c e0                                      add ip, ip, ip, lsl #16
004012dc  8c 10 81 e0                                      add r1, r1, ip, lsl #1
004012e0  c1 10 a0 e1                                      asr r1, r1, #1
004012e4  9b 41 21 e0                                      mla r1, fp, r1, r4
004012e8  85 ff ff eb                                      bl #0x401104
004012ec  00 30 a0 e1                                      mov r3, r0
004012f0  04 20 93 e4                                      ldr r2, [r3], #4
004012f4  07 c0 a0 e1                                      mov ip, r7
004012f8  05 10 a0 e1                                      mov r1, r5
004012fc  04 20 8c e4                                      str r2, [ip], #4
00401300  04 e0 90 e5                                      ldr lr, [r0, #4]
00401304  00 20 99 e5                                      ldr r2, [sb]
00401308  04 00 a0 e1                                      mov r0, r4
0040130c  04 e0 87 e5                                      str lr, [r7, #4]
00401310  04 e0 93 e5                                      ldr lr, [r3, #4]
00401314  04 30 99 e5                                      ldr r3, [sb, #4]
00401318  09 70 a0 e1                                      mov r7, sb
0040131c  04 e0 8c e5                                      str lr, [ip, #4]
00401320  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00401324  04 80 8d e5                                      str r8, [sp, #4]
00401328  00 c0 8d e5                                      str ip, [sp]
0040132c  a1 ff ff eb                                      bl #0x4011b8
00401330  05 10 a0 e1                                      mov r1, r5
00401334  00 a0 a0 e1                                      mov sl, r0
00401338  00 20 a0 e3                                      mov r2, #0
0040133c  06 30 a0 e1                                      mov r3, r6
00401340  00 80 8d e5                                      str r8, [sp]
00401344  c9 ff ff eb                                      bl #0x401270
00401348  0a 10 64 e0                                      rsb r1, r4, sl
0040134c  cb 00 51 e3                                      cmp r1, #0xcb
00401350  d5 ff ff ca                                      bgt #0x4012ac
00401354  1c d0 8d e2                                      add sp, sp, #0x1c
00401358  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0040135c  05 10 a0 e1                                      mov r1, r5
00401360  04 00 a0 e1                                      mov r0, r4
00401364  05 20 a0 e1                                      mov r2, r5
00401368  00 30 a0 e3                                      mov r3, #0
0040136c  40 80 8d e5                                      str r8, [sp, #0x40]
00401370  1c d0 8d e2                                      add sp, sp, #0x1c
00401374  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00401378  10 ff ff ea                                      b #0x400fc0

; FUNCTION 0x0040137c, declared_size=204, range_size=204, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv30__unguarded_insertion_sort_auxIPN13ItemInventory4ItemES2_19SortByValueAndClassEEvT_S5_PT0_T1_
; demangled: void std::priv::__unguarded_insertion_sort_aux<ItemInventory::Item*, ItemInventory::Item, SortByValueAndClass>(ItemInventory::Item*, ItemInventory::Item*, ItemInventory::Item*, SortByValueAndClass)
; decoder-mode: arm
0040137c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00401380  01 00 50 e1                                      cmp r0, r1
00401384  1c d0 4d e2                                      sub sp, sp, #0x1c
00401388  01 b0 a0 e1                                      mov fp, r1
0040138c  04 30 8d e5                                      str r3, [sp, #4]
00401390  2a 00 00 0a                                      beq #0x401440
00401394  08 60 8d e2                                      add r6, sp, #8
00401398  04 a0 86 e2                                      add sl, r6, #4
0040139c  00 80 a0 e1                                      mov r8, r0
004013a0  14 70 8d e2                                      add r7, sp, #0x14
004013a4  04 90 8a e2                                      add sb, sl, #4
004013a8  08 30 a0 e1                                      mov r3, r8
004013ac  04 00 9d e5                                      ldr r0, [sp, #4]
004013b0  04 10 93 e4                                      ldr r1, [r3], #4
004013b4  04 20 98 e5                                      ldr r2, [r8, #4]
004013b8  14 00 8d e5                                      str r0, [sp, #0x14]
004013bc  04 30 93 e5                                      ldr r3, [r3, #4]
004013c0  0c 40 48 e2                                      sub r4, r8, #0xc
004013c4  00 10 86 e5                                      str r1, [r6]
004013c8  00 20 8a e5                                      str r2, [sl]
004013cc  00 30 89 e5                                      str r3, [sb]
004013d0  08 50 a0 e1                                      mov r5, r8
004013d4  07 00 00 ea                                      b #0x4013f8
004013d8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
004013dc  05 20 a0 e1                                      mov r2, r5
004013e0  04 10 82 e4                                      str r1, [r2], #4
004013e4  10 10 94 e5                                      ldr r1, [r4, #0x10]
004013e8  04 10 85 e5                                      str r1, [r5, #4]
004013ec  14 10 94 e5                                      ldr r1, [r4, #0x14]
004013f0  03 50 a0 e1                                      mov r5, r3
004013f4  04 10 82 e5                                      str r1, [r2, #4]
004013f8  04 20 a0 e1                                      mov r2, r4
004013fc  07 00 a0 e1                                      mov r0, r7
00401400  06 10 a0 e1                                      mov r1, r6
00401404  77 ef ff eb                                      bl #0x3fd1e8
00401408  00 00 50 e3                                      cmp r0, #0
0040140c  04 30 a0 e1                                      mov r3, r4
00401410  0c 40 44 e2                                      sub r4, r4, #0xc
00401414  ef ff ff 1a                                      bne #0x4013d8
00401418  00 00 96 e5                                      ldr r0, [r6]
0040141c  00 10 9a e5                                      ldr r1, [sl]
00401420  00 20 99 e5                                      ldr r2, [sb]
00401424  05 30 a0 e1                                      mov r3, r5
00401428  0c 80 88 e2                                      add r8, r8, #0xc
0040142c  04 00 83 e4                                      str r0, [r3], #4
00401430  08 00 5b e1                                      cmp fp, r8
00401434  04 10 85 e5                                      str r1, [r5, #4]
00401438  04 20 83 e5                                      str r2, [r3, #4]
0040143c  d9 ff ff 1a                                      bne #0x4013a8
00401440  1c d0 8d e2                                      add sp, sp, #0x1c
00401444  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00401448, declared_size=320, range_size=320, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv15__linear_insertIPN13ItemInventory4ItemES2_19SortByValueAndClassEEvT_S5_T0_T1_
; demangled: void std::priv::__linear_insert<ItemInventory::Item*, ItemInventory::Item, SortByValueAndClass>(ItemInventory::Item*, ItemInventory::Item*, ItemInventory::Item, SortByValueAndClass)
; decoder-mode: arm
00401448  08 d0 4d e2                                      sub sp, sp, #8
0040144c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00401450  14 d0 4d e2                                      sub sp, sp, #0x14
00401454  00 50 a0 e1                                      mov r5, r0
00401458  28 60 8d e2                                      add r6, sp, #0x28
0040145c  28 20 8d e5                                      str r2, [sp, #0x28]
00401460  01 40 a0 e1                                      mov r4, r1
00401464  34 00 8d e2                                      add r0, sp, #0x34
00401468  06 10 a0 e1                                      mov r1, r6
0040146c  05 20 a0 e1                                      mov r2, r5
00401470  2c 30 8d e5                                      str r3, [sp, #0x2c]
00401474  5b ef ff eb                                      bl #0x3fd1e8
00401478  00 00 50 e3                                      cmp r0, #0
0040147c  1b 00 00 0a                                      beq #0x4014f0
00401480  04 20 65 e0                                      rsb r2, r5, r4
00401484  42 21 a0 e1                                      asr r2, r2, #2
00401488  02 31 82 e0                                      add r3, r2, r2, lsl #2
0040148c  03 32 83 e0                                      add r3, r3, r3, lsl #4
00401490  03 34 83 e0                                      add r3, r3, r3, lsl #8
00401494  03 38 83 e0                                      add r3, r3, r3, lsl #16
00401498  83 30 82 e0                                      add r3, r2, r3, lsl #1
0040149c  00 00 53 e3                                      cmp r3, #0
004014a0  06 00 00 da                                      ble #0x4014c0
004014a4  0c 00 34 e5                                      ldr r0, [r4, #-0xc]!
004014a8  01 30 53 e2                                      subs r3, r3, #1
004014ac  06 00 94 e9                                      ldmib r4, {r1, r2}
004014b0  0c 00 84 e5                                      str r0, [r4, #0xc]
004014b4  10 10 84 e5                                      str r1, [r4, #0x10]
004014b8  14 20 84 e5                                      str r2, [r4, #0x14]
004014bc  f8 ff ff 1a                                      bne #0x4014a4
004014c0  04 60 86 e2                                      add r6, r6, #4
004014c4  04 10 96 e4                                      ldr r1, [r6], #4
004014c8  28 00 9d e5                                      ldr r0, [sp, #0x28]
004014cc  05 30 a0 e1                                      mov r3, r5
004014d0  00 20 96 e5                                      ldr r2, [r6]
004014d4  04 00 83 e4                                      str r0, [r3], #4
004014d8  04 10 85 e5                                      str r1, [r5, #4]
004014dc  04 20 83 e5                                      str r2, [r3, #4]
004014e0  14 d0 8d e2                                      add sp, sp, #0x14
004014e4  f0 40 bd e8                                      pop {r4, r5, r6, r7, lr}
004014e8  08 d0 8d e2                                      add sp, sp, #8
004014ec  1e ff 2f e1                                      bx lr
004014f0  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
004014f4  08 20 96 e5                                      ldr r2, [r6, #8]
004014f8  04 30 8d e2                                      add r3, sp, #4
004014fc  04 10 83 e4                                      str r1, [r3], #4
00401500  00 20 83 e5                                      str r2, [r3]
00401504  28 30 9d e5                                      ldr r3, [sp, #0x28]
00401508  10 70 8d e2                                      add r7, sp, #0x10
0040150c  0d 60 a0 e1                                      mov r6, sp
00401510  00 30 8d e5                                      str r3, [sp]
00401514  34 30 9d e5                                      ldr r3, [sp, #0x34]
00401518  0c 50 44 e2                                      sub r5, r4, #0xc
0040151c  04 30 27 e5                                      str r3, [r7, #-4]!
00401520  07 00 00 ea                                      b #0x401544
00401524  0c 10 95 e5                                      ldr r1, [r5, #0xc]
00401528  04 20 a0 e1                                      mov r2, r4
0040152c  04 10 82 e4                                      str r1, [r2], #4
00401530  10 10 95 e5                                      ldr r1, [r5, #0x10]
00401534  04 10 84 e5                                      str r1, [r4, #4]
00401538  14 10 95 e5                                      ldr r1, [r5, #0x14]
0040153c  03 40 a0 e1                                      mov r4, r3
00401540  04 10 82 e5                                      str r1, [r2, #4]
00401544  05 20 a0 e1                                      mov r2, r5
00401548  07 00 a0 e1                                      mov r0, r7
0040154c  0d 10 a0 e1                                      mov r1, sp
00401550  24 ef ff eb                                      bl #0x3fd1e8
00401554  00 00 50 e3                                      cmp r0, #0
00401558  05 30 a0 e1                                      mov r3, r5
0040155c  0c 50 45 e2                                      sub r5, r5, #0xc
00401560  ef ff ff 1a                                      bne #0x401524
00401564  06 20 a0 e1                                      mov r2, r6
00401568  04 10 92 e4                                      ldr r1, [r2], #4
0040156c  04 30 a0 e1                                      mov r3, r4
00401570  04 10 83 e4                                      str r1, [r3], #4
00401574  04 10 96 e5                                      ldr r1, [r6, #4]
00401578  04 10 84 e5                                      str r1, [r4, #4]
0040157c  04 20 92 e5                                      ldr r2, [r2, #4]
00401580  04 20 83 e5                                      str r2, [r3, #4]
00401584  d5 ff ff ea                                      b #0x4014e0

; FUNCTION 0x00401588, declared_size=172, range_size=172, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv22__final_insertion_sortIPN13ItemInventory4ItemE19SortByValueAndClassEEvT_S5_T0_
; demangled: void std::priv::__final_insertion_sort<ItemInventory::Item*, SortByValueAndClass>(ItemInventory::Item*, ItemInventory::Item*, SortByValueAndClass)
; decoder-mode: arm
00401588  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0040158c  01 30 60 e0                                      rsb r3, r0, r1
00401590  cb 00 53 e3                                      cmp r3, #0xcb
00401594  0c d0 4d e2                                      sub sp, sp, #0xc
00401598  00 50 a0 e1                                      mov r5, r0
0040159c  01 80 a0 e1                                      mov r8, r1
004015a0  02 60 a0 e1                                      mov r6, r2
004015a4  12 00 00 da                                      ble #0x4015f4
004015a8  0c a0 80 e2                                      add sl, r0, #0xc
004015ac  c0 70 80 e2                                      add r7, r0, #0xc0
004015b0  0a 40 a0 e1                                      mov r4, sl
004015b4  0c 10 94 e8                                      ldm r4, {r2, r3, ip}
004015b8  04 10 a0 e1                                      mov r1, r4
004015bc  05 00 a0 e1                                      mov r0, r5
004015c0  0c 40 84 e2                                      add r4, r4, #0xc
004015c4  00 c0 8d e5                                      str ip, [sp]
004015c8  04 60 8d e5                                      str r6, [sp, #4]
004015cc  9d ff ff eb                                      bl #0x401448
004015d0  07 00 54 e1                                      cmp r4, r7
004015d4  f6 ff ff 1a                                      bne #0x4015b4
004015d8  b4 00 8a e2                                      add r0, sl, #0xb4
004015dc  08 10 a0 e1                                      mov r1, r8
004015e0  06 30 a0 e1                                      mov r3, r6
004015e4  00 20 a0 e3                                      mov r2, #0
004015e8  0c d0 8d e2                                      add sp, sp, #0xc
004015ec  f0 45 bd e8                                      pop {r4, r5, r6, r7, r8, sl, lr}
004015f0  61 ff ff ea                                      b #0x40137c
004015f4  00 00 51 e1                                      cmp r1, r0
004015f8  0b 00 00 0a                                      beq #0x40162c
004015fc  0c 40 80 e2                                      add r4, r0, #0xc
00401600  04 00 51 e1                                      cmp r1, r4
00401604  08 00 00 0a                                      beq #0x40162c
00401608  0c 10 94 e8                                      ldm r4, {r2, r3, ip}
0040160c  04 10 a0 e1                                      mov r1, r4
00401610  05 00 a0 e1                                      mov r0, r5
00401614  0c 40 84 e2                                      add r4, r4, #0xc
00401618  00 c0 8d e5                                      str ip, [sp]
0040161c  04 60 8d e5                                      str r6, [sp, #4]
00401620  88 ff ff eb                                      bl #0x401448
00401624  04 00 58 e1                                      cmp r8, r4
00401628  f6 ff ff 1a                                      bne #0x401608
0040162c  0c d0 8d e2                                      add sp, sp, #0xc
00401630  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x0043b934, declared_size=256, range_size=256, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv14__partial_sortIPN13ItemInventory4ItemES2_18SortByEquipabilityEEvT_S5_S5_PT0_T1_
; demangled: void std::priv::__partial_sort<ItemInventory::Item*, ItemInventory::Item, SortByEquipability>(ItemInventory::Item*, ItemInventory::Item*, ItemInventory::Item*, ItemInventory::Item*, SortByEquipability)
; decoder-mode: arm
0043b934  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0043b938  3c d0 4d e2                                      sub sp, sp, #0x3c
0043b93c  60 e0 9d e5                                      ldr lr, [sp, #0x60]
0043b940  64 c0 9d e5                                      ldr ip, [sp, #0x64]
0043b944  02 60 a0 e1                                      mov r6, r2
0043b948  01 80 a0 e1                                      mov r8, r1
0043b94c  00 40 a0 e3                                      mov r4, #0
0043b950  0e 20 a0 e1                                      mov r2, lr
0043b954  0c 30 a0 e1                                      mov r3, ip
0043b958  30 e0 8d e5                                      str lr, [sp, #0x30]
0043b95c  34 c0 8d e5                                      str ip, [sp, #0x34]
0043b960  00 40 8d e5                                      str r4, [sp]
0043b964  04 40 8d e5                                      str r4, [sp, #4]
0043b968  00 50 a0 e1                                      mov r5, r0
0043b96c  75 ff ff eb                                      bl #0x43b748
0043b970  06 00 58 e1                                      cmp r8, r6
0043b974  27 00 00 2a                                      bhs #0x43ba18
0043b978  24 a0 8d e2                                      add sl, sp, #0x24
0043b97c  04 90 8a e2                                      add sb, sl, #4
0043b980  04 30 89 e2                                      add r3, sb, #4
0043b984  04 b0 a0 e1                                      mov fp, r4
0043b988  60 70 8d e2                                      add r7, sp, #0x60
0043b98c  08 40 a0 e1                                      mov r4, r8
0043b990  1c 30 8d e5                                      str r3, [sp, #0x1c]
0043b994  02 00 00 ea                                      b #0x43b9a4
0043b998  0c 40 84 e2                                      add r4, r4, #0xc
0043b99c  04 00 56 e1                                      cmp r6, r4
0043b9a0  1c 00 00 9a                                      bls #0x43ba18
0043b9a4  04 10 a0 e1                                      mov r1, r4
0043b9a8  05 20 a0 e1                                      mov r2, r5
0043b9ac  07 00 a0 e1                                      mov r0, r7
0043b9b0  06 07 ff eb                                      bl #0x3fd5d0
0043b9b4  00 00 50 e3                                      cmp r0, #0
0043b9b8  f6 ff ff 0a                                      beq #0x43b998
0043b9bc  04 10 94 e5                                      ldr r1, [r4, #4]
0043b9c0  04 30 a0 e1                                      mov r3, r4
0043b9c4  04 20 93 e4                                      ldr r2, [r3], #4
0043b9c8  00 10 89 e5                                      str r1, [sb]
0043b9cc  05 00 a0 e1                                      mov r0, r5
0043b9d0  04 c0 93 e5                                      ldr ip, [r3, #4]
0043b9d4  00 20 8a e5                                      str r2, [sl]
0043b9d8  60 e0 9d e5                                      ldr lr, [sp, #0x60]
0043b9dc  04 20 a0 e1                                      mov r2, r4
0043b9e0  00 50 8d e9                                      stmib sp, {ip, lr}
0043b9e4  64 e0 9d e5                                      ldr lr, [sp, #0x64]
0043b9e8  24 30 9d e5                                      ldr r3, [sp, #0x24]
0043b9ec  08 10 a0 e1                                      mov r1, r8
0043b9f0  0c e0 8d e5                                      str lr, [sp, #0xc]
0043b9f4  28 e0 9d e5                                      ldr lr, [sp, #0x28]
0043b9f8  0c 40 84 e2                                      add r4, r4, #0xc
0043b9fc  00 e0 8d e5                                      str lr, [sp]
0043ba00  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
0043ba04  00 c0 8e e5                                      str ip, [lr]
0043ba08  10 b0 8d e5                                      str fp, [sp, #0x10]
0043ba0c  7e ff ff eb                                      bl #0x43b80c
0043ba10  04 00 56 e1                                      cmp r6, r4
0043ba14  e2 ff ff 8a                                      bhi #0x43b9a4
0043ba18  05 00 a0 e1                                      mov r0, r5
0043ba1c  08 10 a0 e1                                      mov r1, r8
0043ba20  60 20 9d e5                                      ldr r2, [sp, #0x60]
0043ba24  64 30 9d e5                                      ldr r3, [sp, #0x64]
0043ba28  98 ff ff eb                                      bl #0x43b890
0043ba2c  3c d0 8d e2                                      add sp, sp, #0x3c
0043ba30  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0043bba4, declared_size=308, range_size=308, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv16__introsort_loopIPN13ItemInventory4ItemES2_i18SortByEquipabilityEEvT_S5_PT0_T1_T2_
; demangled: void std::priv::__introsort_loop<ItemInventory::Item*, ItemInventory::Item, int, SortByEquipability>(ItemInventory::Item*, ItemInventory::Item*, ItemInventory::Item*, int, SortByEquipability)
; decoder-mode: arm
0043bba4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0043bba8  01 50 a0 e1                                      mov r5, r1
0043bbac  01 10 60 e0                                      rsb r1, r0, r1
0043bbb0  cb 00 51 e3                                      cmp r1, #0xcb
0043bbb4  28 d0 4d e2                                      sub sp, sp, #0x28
0043bbb8  00 40 a0 e1                                      mov r4, r0
0043bbbc  03 60 a0 e1                                      mov r6, r3
0043bbc0  37 00 00 da                                      ble #0x43bca4
0043bbc4  00 00 53 e3                                      cmp r3, #0
0043bbc8  37 00 00 0a                                      beq #0x43bcac
0043bbcc  14 70 8d e2                                      add r7, sp, #0x14
0043bbd0  0c 90 a0 e3                                      mov sb, #0xc
0043bbd4  07 80 a0 e1                                      mov r8, r7
0043bbd8  02 00 00 ea                                      b #0x43bbe8
0043bbdc  00 00 56 e3                                      cmp r6, #0
0043bbe0  0a 50 a0 e1                                      mov r5, sl
0043bbe4  30 00 00 0a                                      beq #0x43bcac
0043bbe8  41 11 a0 e1                                      asr r1, r1, #2
0043bbec  4c e0 9d e5                                      ldr lr, [sp, #0x4c]
0043bbf0  01 c1 81 e0                                      add ip, r1, r1, lsl #2
0043bbf4  0c 20 45 e2                                      sub r2, r5, #0xc
0043bbf8  0c c2 8c e0                                      add ip, ip, ip, lsl #4
0043bbfc  48 30 9d e5                                      ldr r3, [sp, #0x48]
0043bc00  0c c4 8c e0                                      add ip, ip, ip, lsl #8
0043bc04  04 00 a0 e1                                      mov r0, r4
0043bc08  0c c8 8c e0                                      add ip, ip, ip, lsl #16
0043bc0c  00 e0 8d e5                                      str lr, [sp]
0043bc10  8c 10 81 e0                                      add r1, r1, ip, lsl #1
0043bc14  01 60 46 e2                                      sub r6, r6, #1
0043bc18  c1 10 a0 e1                                      asr r1, r1, #1
0043bc1c  99 41 21 e0                                      mla r1, sb, r1, r4
0043bc20  83 ff ff eb                                      bl #0x43ba34
0043bc24  00 30 a0 e1                                      mov r3, r0
0043bc28  04 20 93 e4                                      ldr r2, [r3], #4
0043bc2c  07 c0 a0 e1                                      mov ip, r7
0043bc30  05 10 a0 e1                                      mov r1, r5
0043bc34  04 20 8c e4                                      str r2, [ip], #4
0043bc38  04 e0 90 e5                                      ldr lr, [r0, #4]
0043bc3c  00 20 98 e5                                      ldr r2, [r8]
0043bc40  04 00 a0 e1                                      mov r0, r4
0043bc44  04 e0 87 e5                                      str lr, [r7, #4]
0043bc48  04 e0 93 e5                                      ldr lr, [r3, #4]
0043bc4c  04 30 98 e5                                      ldr r3, [r8, #4]
0043bc50  08 70 a0 e1                                      mov r7, r8
0043bc54  04 e0 8c e5                                      str lr, [ip, #4]
0043bc58  48 c0 9d e5                                      ldr ip, [sp, #0x48]
0043bc5c  04 c0 8d e5                                      str ip, [sp, #4]
0043bc60  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
0043bc64  08 c0 8d e5                                      str ip, [sp, #8]
0043bc68  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0043bc6c  00 c0 8d e5                                      str ip, [sp]
0043bc70  9d ff ff eb                                      bl #0x43baec
0043bc74  48 c0 9d e5                                      ldr ip, [sp, #0x48]
0043bc78  00 a0 a0 e1                                      mov sl, r0
0043bc7c  05 10 a0 e1                                      mov r1, r5
0043bc80  00 c0 8d e5                                      str ip, [sp]
0043bc84  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
0043bc88  00 20 a0 e3                                      mov r2, #0
0043bc8c  06 30 a0 e1                                      mov r3, r6
0043bc90  04 c0 8d e5                                      str ip, [sp, #4]
0043bc94  c2 ff ff eb                                      bl #0x43bba4
0043bc98  0a 10 64 e0                                      rsb r1, r4, sl
0043bc9c  cb 00 51 e3                                      cmp r1, #0xcb
0043bca0  cd ff ff ca                                      bgt #0x43bbdc
0043bca4  28 d0 8d e2                                      add sp, sp, #0x28
0043bca8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0043bcac  48 60 9d e5                                      ldr r6, [sp, #0x48]
0043bcb0  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
0043bcb4  05 10 a0 e1                                      mov r1, r5
0043bcb8  04 00 a0 e1                                      mov r0, r4
0043bcbc  05 20 a0 e1                                      mov r2, r5
0043bcc0  00 30 a0 e3                                      mov r3, #0
0043bcc4  20 60 8d e5                                      str r6, [sp, #0x20]
0043bcc8  24 c0 8d e5                                      str ip, [sp, #0x24]
0043bccc  28 d0 8d e2                                      add sp, sp, #0x28
0043bcd0  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
0043bcd4  16 ff ff ea                                      b #0x43b934

; FUNCTION 0x0043bcd8, declared_size=236, range_size=236, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv30__unguarded_insertion_sort_auxIPN13ItemInventory4ItemES2_18SortByEquipabilityEEvT_S5_PT0_T1_
; demangled: void std::priv::__unguarded_insertion_sort_aux<ItemInventory::Item*, ItemInventory::Item, SortByEquipability>(ItemInventory::Item*, ItemInventory::Item*, ItemInventory::Item*, SortByEquipability)
; decoder-mode: arm
0043bcd8  08 d0 4d e2                                      sub sp, sp, #8
0043bcdc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0043bce0  24 d0 4d e2                                      sub sp, sp, #0x24
0043bce4  4c 30 8d e5                                      str r3, [sp, #0x4c]
0043bce8  04 30 8d e5                                      str r3, [sp, #4]
0043bcec  50 30 9d e5                                      ldr r3, [sp, #0x50]
0043bcf0  01 00 50 e1                                      cmp r0, r1
0043bcf4  01 b0 a0 e1                                      mov fp, r1
0043bcf8  00 30 8d e5                                      str r3, [sp]
0043bcfc  2c 00 00 0a                                      beq #0x43bdb4
0043bd00  0c 60 8d e2                                      add r6, sp, #0xc
0043bd04  04 a0 86 e2                                      add sl, r6, #4
0043bd08  00 80 a0 e1                                      mov r8, r0
0043bd0c  18 70 8d e2                                      add r7, sp, #0x18
0043bd10  04 90 8a e2                                      add sb, sl, #4
0043bd14  08 30 a0 e1                                      mov r3, r8
0043bd18  00 00 9d e5                                      ldr r0, [sp]
0043bd1c  04 10 93 e4                                      ldr r1, [r3], #4
0043bd20  04 20 98 e5                                      ldr r2, [r8, #4]
0043bd24  1c 00 8d e5                                      str r0, [sp, #0x1c]
0043bd28  04 30 93 e5                                      ldr r3, [r3, #4]
0043bd2c  0c 40 48 e2                                      sub r4, r8, #0xc
0043bd30  00 10 86 e5                                      str r1, [r6]
0043bd34  00 30 89 e5                                      str r3, [sb]
0043bd38  04 30 9d e5                                      ldr r3, [sp, #4]
0043bd3c  00 20 8a e5                                      str r2, [sl]
0043bd40  08 50 a0 e1                                      mov r5, r8
0043bd44  18 30 8d e5                                      str r3, [sp, #0x18]
0043bd48  07 00 00 ea                                      b #0x43bd6c
0043bd4c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0043bd50  05 20 a0 e1                                      mov r2, r5
0043bd54  04 10 82 e4                                      str r1, [r2], #4
0043bd58  10 10 94 e5                                      ldr r1, [r4, #0x10]
0043bd5c  04 10 85 e5                                      str r1, [r5, #4]
0043bd60  14 10 94 e5                                      ldr r1, [r4, #0x14]
0043bd64  03 50 a0 e1                                      mov r5, r3
0043bd68  04 10 82 e5                                      str r1, [r2, #4]
0043bd6c  04 20 a0 e1                                      mov r2, r4
0043bd70  07 00 a0 e1                                      mov r0, r7
0043bd74  06 10 a0 e1                                      mov r1, r6
0043bd78  14 06 ff eb                                      bl #0x3fd5d0
0043bd7c  00 00 50 e3                                      cmp r0, #0
0043bd80  04 30 a0 e1                                      mov r3, r4
0043bd84  0c 40 44 e2                                      sub r4, r4, #0xc
0043bd88  ef ff ff 1a                                      bne #0x43bd4c
0043bd8c  00 00 96 e5                                      ldr r0, [r6]
0043bd90  00 10 9a e5                                      ldr r1, [sl]
0043bd94  00 20 99 e5                                      ldr r2, [sb]
0043bd98  05 30 a0 e1                                      mov r3, r5
0043bd9c  0c 80 88 e2                                      add r8, r8, #0xc
0043bda0  04 00 83 e4                                      str r0, [r3], #4
0043bda4  08 00 5b e1                                      cmp fp, r8
0043bda8  04 10 85 e5                                      str r1, [r5, #4]
0043bdac  04 20 83 e5                                      str r2, [r3, #4]
0043bdb0  d7 ff ff 1a                                      bne #0x43bd14
0043bdb4  24 d0 8d e2                                      add sp, sp, #0x24
0043bdb8  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0043bdbc  08 d0 8d e2                                      add sp, sp, #8
0043bdc0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0043bdc4, declared_size=328, range_size=328, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv15__linear_insertIPN13ItemInventory4ItemES2_18SortByEquipabilityEEvT_S5_T0_T1_
; demangled: void std::priv::__linear_insert<ItemInventory::Item*, ItemInventory::Item, SortByEquipability>(ItemInventory::Item*, ItemInventory::Item*, ItemInventory::Item, SortByEquipability)
; decoder-mode: arm
0043bdc4  08 d0 4d e2                                      sub sp, sp, #8
0043bdc8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0043bdcc  1c d0 4d e2                                      sub sp, sp, #0x1c
0043bdd0  00 50 a0 e1                                      mov r5, r0
0043bdd4  30 60 8d e2                                      add r6, sp, #0x30
0043bdd8  30 20 8d e5                                      str r2, [sp, #0x30]
0043bddc  01 40 a0 e1                                      mov r4, r1
0043bde0  3c 00 8d e2                                      add r0, sp, #0x3c
0043bde4  06 10 a0 e1                                      mov r1, r6
0043bde8  05 20 a0 e1                                      mov r2, r5
0043bdec  34 30 8d e5                                      str r3, [sp, #0x34]
0043bdf0  f6 05 ff eb                                      bl #0x3fd5d0
0043bdf4  00 00 50 e3                                      cmp r0, #0
0043bdf8  1b 00 00 0a                                      beq #0x43be6c
0043bdfc  04 20 65 e0                                      rsb r2, r5, r4
0043be00  42 21 a0 e1                                      asr r2, r2, #2
0043be04  02 31 82 e0                                      add r3, r2, r2, lsl #2
0043be08  03 32 83 e0                                      add r3, r3, r3, lsl #4
0043be0c  03 34 83 e0                                      add r3, r3, r3, lsl #8
0043be10  03 38 83 e0                                      add r3, r3, r3, lsl #16
0043be14  83 30 82 e0                                      add r3, r2, r3, lsl #1
0043be18  00 00 53 e3                                      cmp r3, #0
0043be1c  06 00 00 da                                      ble #0x43be3c
0043be20  0c 00 34 e5                                      ldr r0, [r4, #-0xc]!
0043be24  01 30 53 e2                                      subs r3, r3, #1
0043be28  06 00 94 e9                                      ldmib r4, {r1, r2}
0043be2c  0c 00 84 e5                                      str r0, [r4, #0xc]
0043be30  10 10 84 e5                                      str r1, [r4, #0x10]
0043be34  14 20 84 e5                                      str r2, [r4, #0x14]
0043be38  f8 ff ff 1a                                      bne #0x43be20
0043be3c  04 60 86 e2                                      add r6, r6, #4
0043be40  04 10 96 e4                                      ldr r1, [r6], #4
0043be44  30 00 9d e5                                      ldr r0, [sp, #0x30]
0043be48  05 30 a0 e1                                      mov r3, r5
0043be4c  00 20 96 e5                                      ldr r2, [r6]
0043be50  04 00 83 e4                                      str r0, [r3], #4
0043be54  04 10 85 e5                                      str r1, [r5, #4]
0043be58  04 20 83 e5                                      str r2, [r3, #4]
0043be5c  1c d0 8d e2                                      add sp, sp, #0x1c
0043be60  f0 40 bd e8                                      pop {r4, r5, r6, r7, lr}
0043be64  08 d0 8d e2                                      add sp, sp, #8
0043be68  1e ff 2f e1                                      bx lr
0043be6c  34 10 9d e5                                      ldr r1, [sp, #0x34]
0043be70  08 20 96 e5                                      ldr r2, [r6, #8]
0043be74  04 60 8d e2                                      add r6, sp, #4
0043be78  04 30 86 e2                                      add r3, r6, #4
0043be7c  04 10 83 e4                                      str r1, [r3], #4
0043be80  00 20 83 e5                                      str r2, [r3]
0043be84  30 30 9d e5                                      ldr r3, [sp, #0x30]
0043be88  0c 50 44 e2                                      sub r5, r4, #0xc
0043be8c  10 70 8d e2                                      add r7, sp, #0x10
0043be90  04 30 8d e5                                      str r3, [sp, #4]
0043be94  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
0043be98  10 30 8d e5                                      str r3, [sp, #0x10]
0043be9c  40 30 9d e5                                      ldr r3, [sp, #0x40]
0043bea0  14 30 8d e5                                      str r3, [sp, #0x14]
0043bea4  07 00 00 ea                                      b #0x43bec8
0043bea8  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0043beac  04 20 a0 e1                                      mov r2, r4
0043beb0  04 10 82 e4                                      str r1, [r2], #4
0043beb4  10 10 95 e5                                      ldr r1, [r5, #0x10]
0043beb8  04 10 84 e5                                      str r1, [r4, #4]
0043bebc  14 10 95 e5                                      ldr r1, [r5, #0x14]
0043bec0  03 40 a0 e1                                      mov r4, r3
0043bec4  04 10 82 e5                                      str r1, [r2, #4]
0043bec8  05 20 a0 e1                                      mov r2, r5
0043becc  07 00 a0 e1                                      mov r0, r7
0043bed0  06 10 a0 e1                                      mov r1, r6
0043bed4  bd 05 ff eb                                      bl #0x3fd5d0
0043bed8  00 00 50 e3                                      cmp r0, #0
0043bedc  05 30 a0 e1                                      mov r3, r5
0043bee0  0c 50 45 e2                                      sub r5, r5, #0xc
0043bee4  ef ff ff 1a                                      bne #0x43bea8
0043bee8  06 20 a0 e1                                      mov r2, r6
0043beec  04 10 92 e4                                      ldr r1, [r2], #4
0043bef0  04 30 a0 e1                                      mov r3, r4
0043bef4  04 10 83 e4                                      str r1, [r3], #4
0043bef8  04 10 96 e5                                      ldr r1, [r6, #4]
0043befc  04 10 84 e5                                      str r1, [r4, #4]
0043bf00  04 20 92 e5                                      ldr r2, [r2, #4]
0043bf04  04 20 83 e5                                      str r2, [r3, #4]
0043bf08  d3 ff ff ea                                      b #0x43be5c

; FUNCTION 0x0043bf0c, declared_size=232, range_size=232, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv22__final_insertion_sortIPN13ItemInventory4ItemE18SortByEquipabilityEEvT_S5_T0_
; demangled: void std::priv::__final_insertion_sort<ItemInventory::Item*, SortByEquipability>(ItemInventory::Item*, ItemInventory::Item*, SortByEquipability)
; decoder-mode: arm
0043bf0c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0043bf10  01 70 a0 e1                                      mov r7, r1
0043bf14  01 10 60 e0                                      rsb r1, r0, r1
0043bf18  20 d0 4d e2                                      sub sp, sp, #0x20
0043bf1c  cb 00 51 e3                                      cmp r1, #0xcb
0043bf20  00 50 a0 e1                                      mov r5, r0
0043bf24  10 20 8d e5                                      str r2, [sp, #0x10]
0043bf28  14 30 8d e5                                      str r3, [sp, #0x14]
0043bf2c  02 a0 a0 e1                                      mov sl, r2
0043bf30  03 80 a0 e1                                      mov r8, r3
0043bf34  1a 00 00 da                                      ble #0x43bfa4
0043bf38  0c 90 80 e2                                      add sb, r0, #0xc
0043bf3c  1c 30 8d e5                                      str r3, [sp, #0x1c]
0043bf40  18 20 8d e5                                      str r2, [sp, #0x18]
0043bf44  c0 60 80 e2                                      add r6, r0, #0xc0
0043bf48  09 40 a0 e1                                      mov r4, sb
0043bf4c  18 e0 9d e5                                      ldr lr, [sp, #0x18]
0043bf50  0c 10 94 e8                                      ldm r4, {r2, r3, ip}
0043bf54  04 e0 8d e5                                      str lr, [sp, #4]
0043bf58  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
0043bf5c  04 10 a0 e1                                      mov r1, r4
0043bf60  05 00 a0 e1                                      mov r0, r5
0043bf64  0c 40 84 e2                                      add r4, r4, #0xc
0043bf68  08 e0 8d e5                                      str lr, [sp, #8]
0043bf6c  00 c0 8d e5                                      str ip, [sp]
0043bf70  93 ff ff eb                                      bl #0x43bdc4
0043bf74  06 00 54 e1                                      cmp r4, r6
0043bf78  f3 ff ff 1a                                      bne #0x43bf4c
0043bf7c  0a 30 a0 e1                                      mov r3, sl
0043bf80  b4 00 89 e2                                      add r0, sb, #0xb4
0043bf84  07 10 a0 e1                                      mov r1, r7
0043bf88  00 20 a0 e3                                      mov r2, #0
0043bf8c  00 80 8d e5                                      str r8, [sp]
0043bf90  1c 80 8d e5                                      str r8, [sp, #0x1c]
0043bf94  18 a0 8d e5                                      str sl, [sp, #0x18]
0043bf98  4e ff ff eb                                      bl #0x43bcd8
0043bf9c  20 d0 8d e2                                      add sp, sp, #0x20
0043bfa0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0043bfa4  00 00 57 e1                                      cmp r7, r0
0043bfa8  1c 30 8d e5                                      str r3, [sp, #0x1c]
0043bfac  18 20 8d e5                                      str r2, [sp, #0x18]
0043bfb0  f9 ff ff 0a                                      beq #0x43bf9c
0043bfb4  0c 40 80 e2                                      add r4, r0, #0xc
0043bfb8  04 00 57 e1                                      cmp r7, r4
0043bfbc  f6 ff ff 0a                                      beq #0x43bf9c
0043bfc0  18 e0 9d e5                                      ldr lr, [sp, #0x18]
0043bfc4  0c 10 94 e8                                      ldm r4, {r2, r3, ip}
0043bfc8  04 e0 8d e5                                      str lr, [sp, #4]
0043bfcc  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
0043bfd0  04 10 a0 e1                                      mov r1, r4
0043bfd4  05 00 a0 e1                                      mov r0, r5
0043bfd8  0c 40 84 e2                                      add r4, r4, #0xc
0043bfdc  08 e0 8d e5                                      str lr, [sp, #8]
0043bfe0  00 c0 8d e5                                      str ip, [sp]
0043bfe4  76 ff ff eb                                      bl #0x43bdc4
0043bfe8  04 00 57 e1                                      cmp r7, r4
0043bfec  f3 ff ff 1a                                      bne #0x43bfc0
0043bff0  e9 ff ff ea                                      b #0x43bf9c

; FUNCTION 0x0043c4a0, declared_size=300, range_size=300, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv15__linear_insertIPN13ItemInventory4ItemES2_PFbRKS2_S5_EEEvT_S8_T0_T1_.clone.39
; demangled: void std::priv::__linear_insert<ItemInventory::Item*, ItemInventory::Item, bool (*)(ItemInventory::Item const&, ItemInventory::Item const&)>(ItemInventory::Item*, ItemInventory::Item*, ItemInventory::Item, bool (*)(ItemInventory::Item const&, ItemInventory::Item const&)) [clone .clone.39]
; decoder-mode: arm
0043c4a0  08 d0 4d e2                                      sub sp, sp, #8
0043c4a4  70 40 2d e9                                      push {r4, r5, r6, lr}
0043c4a8  10 d0 4d e2                                      sub sp, sp, #0x10
0043c4ac  00 50 a0 e1                                      mov r5, r0
0043c4b0  20 60 8d e2                                      add r6, sp, #0x20
0043c4b4  01 40 a0 e1                                      mov r4, r1
0043c4b8  06 00 a0 e1                                      mov r0, r6
0043c4bc  05 10 a0 e1                                      mov r1, r5
0043c4c0  20 20 8d e5                                      str r2, [sp, #0x20]
0043c4c4  24 30 8d e5                                      str r3, [sp, #0x24]
0043c4c8  4a 05 ff eb                                      bl #0x3fd9f8
0043c4cc  00 00 50 e3                                      cmp r0, #0
0043c4d0  1b 00 00 0a                                      beq #0x43c544
0043c4d4  04 20 65 e0                                      rsb r2, r5, r4
0043c4d8  42 21 a0 e1                                      asr r2, r2, #2
0043c4dc  02 31 82 e0                                      add r3, r2, r2, lsl #2
0043c4e0  03 32 83 e0                                      add r3, r3, r3, lsl #4
0043c4e4  03 34 83 e0                                      add r3, r3, r3, lsl #8
0043c4e8  03 38 83 e0                                      add r3, r3, r3, lsl #16
0043c4ec  83 30 82 e0                                      add r3, r2, r3, lsl #1
0043c4f0  00 00 53 e3                                      cmp r3, #0
0043c4f4  06 00 00 da                                      ble #0x43c514
0043c4f8  0c 00 34 e5                                      ldr r0, [r4, #-0xc]!
0043c4fc  01 30 53 e2                                      subs r3, r3, #1
0043c500  06 00 94 e9                                      ldmib r4, {r1, r2}
0043c504  0c 00 84 e5                                      str r0, [r4, #0xc]
0043c508  10 10 84 e5                                      str r1, [r4, #0x10]
0043c50c  14 20 84 e5                                      str r2, [r4, #0x14]
0043c510  f8 ff ff 1a                                      bne #0x43c4f8
0043c514  04 60 86 e2                                      add r6, r6, #4
0043c518  04 10 96 e4                                      ldr r1, [r6], #4
0043c51c  20 00 9d e5                                      ldr r0, [sp, #0x20]
0043c520  05 30 a0 e1                                      mov r3, r5
0043c524  00 20 96 e5                                      ldr r2, [r6]
0043c528  04 00 83 e4                                      str r0, [r3], #4
0043c52c  04 10 85 e5                                      str r1, [r5, #4]
0043c530  04 20 83 e5                                      str r2, [r3, #4]
0043c534  10 d0 8d e2                                      add sp, sp, #0x10
0043c538  70 40 bd e8                                      pop {r4, r5, r6, lr}
0043c53c  08 d0 8d e2                                      add sp, sp, #8
0043c540  1e ff 2f e1                                      bx lr
0043c544  24 10 9d e5                                      ldr r1, [sp, #0x24]
0043c548  08 20 96 e5                                      ldr r2, [r6, #8]
0043c54c  04 60 8d e2                                      add r6, sp, #4
0043c550  04 30 86 e2                                      add r3, r6, #4
0043c554  04 10 83 e4                                      str r1, [r3], #4
0043c558  00 20 83 e5                                      str r2, [r3]
0043c55c  20 30 9d e5                                      ldr r3, [sp, #0x20]
0043c560  0c 50 44 e2                                      sub r5, r4, #0xc
0043c564  04 30 8d e5                                      str r3, [sp, #4]
0043c568  07 00 00 ea                                      b #0x43c58c
0043c56c  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0043c570  04 20 a0 e1                                      mov r2, r4
0043c574  04 10 82 e4                                      str r1, [r2], #4
0043c578  10 10 95 e5                                      ldr r1, [r5, #0x10]
0043c57c  04 10 84 e5                                      str r1, [r4, #4]
0043c580  14 10 95 e5                                      ldr r1, [r5, #0x14]
0043c584  03 40 a0 e1                                      mov r4, r3
0043c588  04 10 82 e5                                      str r1, [r2, #4]
0043c58c  05 10 a0 e1                                      mov r1, r5
0043c590  06 00 a0 e1                                      mov r0, r6
0043c594  17 05 ff eb                                      bl #0x3fd9f8
0043c598  00 00 50 e3                                      cmp r0, #0
0043c59c  05 30 a0 e1                                      mov r3, r5
0043c5a0  0c 50 45 e2                                      sub r5, r5, #0xc
0043c5a4  f0 ff ff 1a                                      bne #0x43c56c
0043c5a8  06 20 a0 e1                                      mov r2, r6
0043c5ac  04 10 92 e4                                      ldr r1, [r2], #4
0043c5b0  04 30 a0 e1                                      mov r3, r4
0043c5b4  04 10 83 e4                                      str r1, [r3], #4
0043c5b8  04 10 96 e5                                      ldr r1, [r6, #4]
0043c5bc  04 10 84 e5                                      str r1, [r4, #4]
0043c5c0  04 20 92 e5                                      ldr r2, [r2, #4]
0043c5c4  04 20 83 e5                                      str r2, [r3, #4]
0043c5c8  d9 ff ff ea                                      b #0x43c534

; FUNCTION 0x0043c818, declared_size=676, range_size=676, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv16__introsort_loopIPN13ItemInventory4ItemES2_iPFbRKS2_S5_EEEvT_S8_PT0_T1_T2_.clone.40
; demangled: void std::priv::__introsort_loop<ItemInventory::Item*, ItemInventory::Item, int, bool (*)(ItemInventory::Item const&, ItemInventory::Item const&)>(ItemInventory::Item*, ItemInventory::Item*, ItemInventory::Item*, int, bool (*)(ItemInventory::Item const&, ItemInventory::Item const&)) [clone .clone.40]
; decoder-mode: arm
0043c818  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0043c81c  01 b0 60 e0                                      rsb fp, r0, r1
0043c820  3c d0 4d e2                                      sub sp, sp, #0x3c
0043c824  cb 00 5b e3                                      cmp fp, #0xcb
0043c828  00 50 a0 e1                                      mov r5, r0
0043c82c  01 40 a0 e1                                      mov r4, r1
0043c830  02 70 a0 e1                                      mov r7, r2
0043c834  08 b0 8d e5                                      str fp, [sp, #8]
0043c838  9d 00 00 da                                      ble #0x43cab4
0043c83c  00 00 52 e3                                      cmp r2, #0
0043c840  14 80 8d 12                                      addne r8, sp, #0x14
0043c844  0c a0 a0 13                                      movne sl, #0xc
0043c848  5c 00 00 0a                                      beq #0x43c9c0
0043c84c  4b b1 a0 e1                                      asr fp, fp, #2
0043c850  05 00 a0 e1                                      mov r0, r5
0043c854  0b 91 8b e0                                      add sb, fp, fp, lsl #2
0043c858  01 70 47 e2                                      sub r7, r7, #1
0043c85c  09 92 89 e0                                      add sb, sb, sb, lsl #4
0043c860  0c 60 44 e2                                      sub r6, r4, #0xc
0043c864  09 94 89 e0                                      add sb, sb, sb, lsl #8
0043c868  09 98 89 e0                                      add sb, sb, sb, lsl #16
0043c86c  89 90 8b e0                                      add sb, fp, sb, lsl #1
0043c870  c9 90 a0 e1                                      asr sb, sb, #1
0043c874  9a 59 29 e0                                      mla sb, sl, sb, r5
0043c878  09 10 a0 e1                                      mov r1, sb
0043c87c  5d 04 ff eb                                      bl #0x3fd9f8
0043c880  00 00 50 e3                                      cmp r0, #0
0043c884  37 00 00 0a                                      beq #0x43c968
0043c888  09 00 a0 e1                                      mov r0, sb
0043c88c  06 10 a0 e1                                      mov r1, r6
0043c890  58 04 ff eb                                      bl #0x3fd9f8
0043c894  00 00 50 e3                                      cmp r0, #0
0043c898  2b 00 00 0a                                      beq #0x43c94c
0043c89c  09 60 a0 e1                                      mov r6, sb
0043c8a0  08 00 96 e5                                      ldr r0, [r6, #8]
0043c8a4  05 10 d6 e5                                      ldrb r1, [r6, #5]
0043c8a8  04 20 d6 e5                                      ldrb r2, [r6, #4]
0043c8ac  00 30 96 e5                                      ldr r3, [r6]
0043c8b0  04 90 a0 e1                                      mov sb, r4
0043c8b4  1c 00 8d e5                                      str r0, [sp, #0x1c]
0043c8b8  19 10 cd e5                                      strb r1, [sp, #0x19]
0043c8bc  18 20 cd e5                                      strb r2, [sp, #0x18]
0043c8c0  14 30 8d e5                                      str r3, [sp, #0x14]
0043c8c4  05 60 a0 e1                                      mov r6, r5
0043c8c8  00 00 00 ea                                      b #0x43c8d0
0043c8cc  0c 60 86 e2                                      add r6, r6, #0xc
0043c8d0  06 00 a0 e1                                      mov r0, r6
0043c8d4  08 10 a0 e1                                      mov r1, r8
0043c8d8  46 04 ff eb                                      bl #0x3fd9f8
0043c8dc  00 00 50 e3                                      cmp r0, #0
0043c8e0  f9 ff ff 1a                                      bne #0x43c8cc
0043c8e4  0c 90 49 e2                                      sub sb, sb, #0xc
0043c8e8  09 10 a0 e1                                      mov r1, sb
0043c8ec  08 00 a0 e1                                      mov r0, r8
0043c8f0  40 04 ff eb                                      bl #0x3fd9f8
0043c8f4  00 00 50 e3                                      cmp r0, #0
0043c8f8  f9 ff ff 1a                                      bne #0x43c8e4
0043c8fc  09 00 56 e1                                      cmp r6, sb
0043c900  23 00 00 2a                                      bhs #0x43c994
0043c904  09 20 a0 e1                                      mov r2, sb
0043c908  04 b0 92 e4                                      ldr fp, [r2], #4
0043c90c  06 30 a0 e1                                      mov r3, r6
0043c910  05 c0 d6 e5                                      ldrb ip, [r6, #5]
0043c914  04 00 d6 e5                                      ldrb r0, [r6, #4]
0043c918  08 e0 96 e5                                      ldr lr, [r6, #8]
0043c91c  00 10 96 e5                                      ldr r1, [r6]
0043c920  04 b0 83 e4                                      str fp, [r3], #4
0043c924  04 b0 99 e5                                      ldr fp, [sb, #4]
0043c928  04 b0 86 e5                                      str fp, [r6, #4]
0043c92c  04 20 92 e5                                      ldr r2, [r2, #4]
0043c930  0c 60 86 e2                                      add r6, r6, #0xc
0043c934  04 20 83 e5                                      str r2, [r3, #4]
0043c938  08 e0 89 e5                                      str lr, [sb, #8]
0043c93c  05 c0 c9 e5                                      strb ip, [sb, #5]
0043c940  04 00 c9 e5                                      strb r0, [sb, #4]
0043c944  00 10 89 e5                                      str r1, [sb]
0043c948  e0 ff ff ea                                      b #0x43c8d0
0043c94c  05 00 a0 e1                                      mov r0, r5
0043c950  06 10 a0 e1                                      mov r1, r6
0043c954  27 04 ff eb                                      bl #0x3fd9f8
0043c958  00 00 50 e3                                      cmp r0, #0
0043c95c  cf ff ff 1a                                      bne #0x43c8a0
0043c960  05 60 a0 e1                                      mov r6, r5
0043c964  cd ff ff ea                                      b #0x43c8a0
0043c968  05 00 a0 e1                                      mov r0, r5
0043c96c  06 10 a0 e1                                      mov r1, r6
0043c970  20 04 ff eb                                      bl #0x3fd9f8
0043c974  00 00 50 e3                                      cmp r0, #0
0043c978  f8 ff ff 1a                                      bne #0x43c960
0043c97c  09 00 a0 e1                                      mov r0, sb
0043c980  06 10 a0 e1                                      mov r1, r6
0043c984  1b 04 ff eb                                      bl #0x3fd9f8
0043c988  00 00 50 e3                                      cmp r0, #0
0043c98c  c3 ff ff 1a                                      bne #0x43c8a0
0043c990  c1 ff ff ea                                      b #0x43c89c
0043c994  04 10 a0 e1                                      mov r1, r4
0043c998  06 00 a0 e1                                      mov r0, r6
0043c99c  07 20 a0 e1                                      mov r2, r7
0043c9a0  06 b0 65 e0                                      rsb fp, r5, r6
0043c9a4  9b ff ff eb                                      bl #0x43c818
0043c9a8  cb 00 5b e3                                      cmp fp, #0xcb
0043c9ac  40 00 00 da                                      ble #0x43cab4
0043c9b0  00 00 57 e3                                      cmp r7, #0
0043c9b4  06 40 a0 e1                                      mov r4, r6
0043c9b8  a3 ff ff 1a                                      bne #0x43c84c
0043c9bc  08 b0 8d e5                                      str fp, [sp, #8]
0043c9c0  4b b1 a0 e1                                      asr fp, fp, #2
0043c9c4  20 a0 8d e2                                      add sl, sp, #0x20
0043c9c8  0b 31 8b e0                                      add r3, fp, fp, lsl #2
0043c9cc  04 90 8a e2                                      add sb, sl, #4
0043c9d0  03 32 83 e0                                      add r3, r3, r3, lsl #4
0043c9d4  04 20 89 e2                                      add r2, sb, #4
0043c9d8  03 34 83 e0                                      add r3, r3, r3, lsl #8
0043c9dc  0c 80 a0 e3                                      mov r8, #0xc
0043c9e0  03 38 83 e0                                      add r3, r3, r3, lsl #16
0043c9e4  0c 40 8d e5                                      str r4, [sp, #0xc]
0043c9e8  83 b0 8b e0                                      add fp, fp, r3, lsl #1
0043c9ec  02 70 4b e2                                      sub r7, fp, #2
0043c9f0  c7 70 a0 e1                                      asr r7, r7, #1
0043c9f4  00 60 a0 e3                                      mov r6, #0
0043c9f8  98 57 28 e0                                      mla r8, r8, r7, r5
0043c9fc  02 40 a0 e1                                      mov r4, r2
0043ca00  00 00 00 ea                                      b #0x43ca08
0043ca04  01 70 47 e2                                      sub r7, r7, #1
0043ca08  06 30 98 e7                                      ldr r3, [r8, r6]
0043ca0c  06 20 88 e0                                      add r2, r8, r6
0043ca10  04 20 82 e2                                      add r2, r2, #4
0043ca14  00 30 8a e5                                      str r3, [sl]
0043ca18  04 00 92 e4                                      ldr r0, [r2], #4
0043ca1c  07 10 a0 e1                                      mov r1, r7
0043ca20  20 30 9d e5                                      ldr r3, [sp, #0x20]
0043ca24  00 00 89 e5                                      str r0, [sb]
0043ca28  00 c0 92 e5                                      ldr ip, [r2]
0043ca2c  24 e0 9d e5                                      ldr lr, [sp, #0x24]
0043ca30  05 00 a0 e1                                      mov r0, r5
0043ca34  04 c0 8d e5                                      str ip, [sp, #4]
0043ca38  00 e0 8d e5                                      str lr, [sp]
0043ca3c  0b 20 a0 e1                                      mov r2, fp
0043ca40  00 c0 84 e5                                      str ip, [r4]
0043ca44  e0 fe ff eb                                      bl #0x43c5cc
0043ca48  00 00 57 e3                                      cmp r7, #0
0043ca4c  0c 60 46 e2                                      sub r6, r6, #0xc
0043ca50  eb ff ff 1a                                      bne #0x43ca04
0043ca54  2c 70 8d e2                                      add r7, sp, #0x2c
0043ca58  0c 40 9d e5                                      ldr r4, [sp, #0xc]
0043ca5c  08 60 9d e5                                      ldr r6, [sp, #8]
0043ca60  04 80 87 e2                                      add r8, r7, #4
0043ca64  04 a0 88 e2                                      add sl, r8, #4
0043ca68  0c 40 44 e2                                      sub r4, r4, #0xc
0043ca6c  04 20 a0 e1                                      mov r2, r4
0043ca70  04 30 92 e4                                      ldr r3, [r2], #4
0043ca74  0c 60 46 e2                                      sub r6, r6, #0xc
0043ca78  05 00 a0 e1                                      mov r0, r5
0043ca7c  00 30 87 e5                                      str r3, [r7]
0043ca80  04 c0 94 e5                                      ldr ip, [r4, #4]
0043ca84  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0043ca88  04 10 a0 e1                                      mov r1, r4
0043ca8c  00 c0 88 e5                                      str ip, [r8]
0043ca90  04 c0 92 e5                                      ldr ip, [r2, #4]
0043ca94  30 e0 9d e5                                      ldr lr, [sp, #0x30]
0043ca98  04 20 a0 e1                                      mov r2, r4
0043ca9c  04 c0 8d e5                                      str ip, [sp, #4]
0043caa0  00 e0 8d e5                                      str lr, [sp]
0043caa4  00 c0 8a e5                                      str ip, [sl]
0043caa8  3d ff ff eb                                      bl #0x43c7a4
0043caac  17 00 56 e3                                      cmp r6, #0x17
0043cab0  ec ff ff ca                                      bgt #0x43ca68
0043cab4  3c d0 8d e2                                      add sp, sp, #0x3c
0043cab8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00463a38, declared_size=180, range_size=180, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv25__unguarded_linear_insertIPSsSsSt4lessISsEEEvT_T0_T1_
; demangled: void std::priv::__unguarded_linear_insert<std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >(std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >)
; decoder-mode: arm
00463a38  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00463a3c  0c d0 4d e2                                      sub sp, sp, #0xc
00463a40  04 10 8d e5                                      str r1, [sp, #4]
00463a44  14 60 91 e5                                      ldr r6, [r1, #0x14]
00463a48  10 b0 91 e5                                      ldr fp, [r1, #0x10]
00463a4c  00 70 a0 e1                                      mov r7, r0
00463a50  18 40 40 e2                                      sub r4, r0, #0x18
00463a54  14 50 94 e5                                      ldr r5, [r4, #0x14]
00463a58  10 80 94 e5                                      ldr r8, [r4, #0x10]
00463a5c  0b 90 66 e0                                      rsb sb, r6, fp
00463a60  06 00 a0 e1                                      mov r0, r6
00463a64  08 a0 65 e0                                      rsb sl, r5, r8
00463a68  09 00 5a e1                                      cmp sl, sb
00463a6c  0a 20 a0 b1                                      movlt r2, sl
00463a70  09 20 a0 a1                                      movge r2, sb
00463a74  05 10 a0 e1                                      mov r1, r5
00463a78  d8 aa fa eb                                      bl #0x30e5e0
00463a7c  00 00 50 e3                                      cmp r0, #0
00463a80  0a 00 00 1a                                      bne #0x463ab0
00463a84  0a 00 59 e1                                      cmp sb, sl
00463a88  09 00 00 ba                                      blt #0x463ab4
00463a8c  04 30 9d e5                                      ldr r3, [sp, #4]
00463a90  03 00 57 e1                                      cmp r7, r3
00463a94  12 00 00 0a                                      beq #0x463ae4
00463a98  07 00 a0 e1                                      mov r0, r7
00463a9c  06 10 a0 e1                                      mov r1, r6
00463aa0  0b 20 a0 e1                                      mov r2, fp
00463aa4  0c d0 8d e2                                      add sp, sp, #0xc
00463aa8  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00463aac  cb b3 fa ea                                      b #0x3109e0
00463ab0  f5 ff ff aa                                      bge #0x463a8c
00463ab4  07 00 54 e1                                      cmp r4, r7
00463ab8  06 00 00 0a                                      beq #0x463ad8
00463abc  07 00 a0 e1                                      mov r0, r7
00463ac0  05 10 a0 e1                                      mov r1, r5
00463ac4  08 20 a0 e1                                      mov r2, r8
00463ac8  c4 b3 fa eb                                      bl #0x3109e0
00463acc  04 30 9d e5                                      ldr r3, [sp, #4]
00463ad0  14 60 93 e5                                      ldr r6, [r3, #0x14]
00463ad4  10 b0 93 e5                                      ldr fp, [r3, #0x10]
00463ad8  04 70 a0 e1                                      mov r7, r4
00463adc  18 40 44 e2                                      sub r4, r4, #0x18
00463ae0  db ff ff ea                                      b #0x463a54
00463ae4  0c d0 8d e2                                      add sp, sp, #0xc
00463ae8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00464660, declared_size=348, range_size=348, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv14__partial_sortIPSsSsSt4lessISsEEEvT_S4_S4_PT0_T1_
; demangled: void std::priv::__partial_sort<std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >(std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >)
; decoder-mode: arm
00464660  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00464664  48 b1 9f e5                                      ldr fp, [pc, #0x148]
00464668  48 31 9f e5                                      ldr r3, [pc, #0x148]
0046466c  3c d0 4d e2                                      sub sp, sp, #0x3c
00464670  0b b0 8f e0                                      add fp, pc, fp
00464674  0c 30 8d e5                                      str r3, [sp, #0xc]
00464678  03 30 9b e7                                      ldr r3, [fp, r3]
0046467c  00 40 a0 e3                                      mov r4, #0
00464680  02 70 a0 e1                                      mov r7, r2
00464684  00 c0 93 e5                                      ldr ip, [r3]
00464688  01 60 a0 e1                                      mov r6, r1
0046468c  14 20 8d e2                                      add r2, sp, #0x14
00464690  04 30 a0 e1                                      mov r3, r4
00464694  34 c0 8d e5                                      str ip, [sp, #0x34]
00464698  00 40 8d e5                                      str r4, [sp]
0046469c  00 50 a0 e1                                      mov r5, r0
004646a0  6c ff ff eb                                      bl #0x464458
004646a4  07 00 56 e1                                      cmp r6, r7
004646a8  2a 00 00 2a                                      bhs #0x464758
004646ac  18 c0 8d e2                                      add ip, sp, #0x18
004646b0  06 40 a0 e1                                      mov r4, r6
004646b4  1c 90 8d e2                                      add sb, sp, #0x1c
004646b8  08 c0 8d e5                                      str ip, [sp, #8]
004646bc  06 a0 a0 e1                                      mov sl, r6
004646c0  04 00 00 ea                                      b #0x4646d8
004646c4  06 00 58 e1                                      cmp r8, r6
004646c8  10 00 00 ba                                      blt #0x464710
004646cc  18 40 84 e2                                      add r4, r4, #0x18
004646d0  04 00 57 e1                                      cmp r7, r4
004646d4  1e 00 00 9a                                      bls #0x464754
004646d8  14 30 94 e5                                      ldr r3, [r4, #0x14]
004646dc  14 10 95 e5                                      ldr r1, [r5, #0x14]
004646e0  10 80 94 e5                                      ldr r8, [r4, #0x10]
004646e4  10 60 95 e5                                      ldr r6, [r5, #0x10]
004646e8  03 00 a0 e1                                      mov r0, r3
004646ec  08 80 63 e0                                      rsb r8, r3, r8
004646f0  06 60 61 e0                                      rsb r6, r1, r6
004646f4  08 00 56 e1                                      cmp r6, r8
004646f8  06 20 a0 b1                                      movlt r2, r6
004646fc  08 20 a0 a1                                      movge r2, r8
00464700  b6 a7 fa eb                                      bl #0x30e5e0
00464704  00 00 50 e3                                      cmp r0, #0
00464708  ed ff ff 0a                                      beq #0x4646c4
0046470c  ee ff ff aa                                      bge #0x4646cc
00464710  04 10 a0 e1                                      mov r1, r4
00464714  09 00 a0 e1                                      mov r0, sb
00464718  7e 1c fb eb                                      bl #0x32b918
0046471c  08 c0 9d e5                                      ldr ip, [sp, #8]
00464720  04 20 a0 e1                                      mov r2, r4
00464724  05 00 a0 e1                                      mov r0, r5
00464728  0a 10 a0 e1                                      mov r1, sl
0046472c  09 30 a0 e1                                      mov r3, sb
00464730  00 c0 8d e5                                      str ip, [sp]
00464734  00 c0 a0 e3                                      mov ip, #0
00464738  04 c0 8d e5                                      str ip, [sp, #4]
0046473c  18 40 84 e2                                      add r4, r4, #0x18
00464740  76 ff ff eb                                      bl #0x464520
00464744  09 00 a0 e1                                      mov r0, sb
00464748  97 bc fa eb                                      bl #0x3139ac
0046474c  04 00 57 e1                                      cmp r7, r4
00464750  e0 ff ff 8a                                      bhi #0x4646d8
00464754  0a 60 a0 e1                                      mov r6, sl
00464758  06 70 65 e0                                      rsb r7, r5, r6
0046475c  2f 00 57 e3                                      cmp r7, #0x2f
00464760  0a 00 00 da                                      ble #0x464790
00464764  00 40 a0 e3                                      mov r4, #0
00464768  10 80 8d e2                                      add r8, sp, #0x10
0046476c  04 10 86 e0                                      add r1, r6, r4
00464770  08 30 a0 e1                                      mov r3, r8
00464774  18 40 44 e2                                      sub r4, r4, #0x18
00464778  05 00 a0 e1                                      mov r0, r5
0046477c  00 20 a0 e3                                      mov r2, #0
00464780  94 ff ff eb                                      bl #0x4645d8
00464784  04 30 87 e0                                      add r3, r7, r4
00464788  2f 00 53 e3                                      cmp r3, #0x2f
0046478c  f6 ff ff ca                                      bgt #0x46476c
00464790  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00464794  02 30 9b e7                                      ldr r3, [fp, r2]
00464798  34 20 9d e5                                      ldr r2, [sp, #0x34]
0046479c  00 30 93 e5                                      ldr r3, [r3]
004647a0  03 00 52 e1                                      cmp r2, r3
004647a4  01 00 00 1a                                      bne #0x4647b0
004647a8  3c d0 8d e2                                      add sp, sp, #0x3c
004647ac  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004647b0  d6 a6 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004647b4  20 04 53 00 ac 40 00 00                          .byte 0x20, 0x04, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x004647bc, declared_size=144, range_size=144, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv30__unguarded_insertion_sort_auxIPSsSsSt4lessISsEEEvT_S4_PT0_T1_
; demangled: void std::priv::__unguarded_insertion_sort_aux<std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >(std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >)
; decoder-mode: arm
004647bc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004647c0  7c 80 9f e5                                      ldr r8, [pc, #0x7c]
004647c4  7c a0 9f e5                                      ldr sl, [pc, #0x7c]
004647c8  24 d0 4d e2                                      sub sp, sp, #0x24
004647cc  08 80 8f e0                                      add r8, pc, r8
004647d0  0a 30 98 e7                                      ldr r3, [r8, sl]
004647d4  01 00 50 e1                                      cmp r0, r1
004647d8  01 60 a0 e1                                      mov r6, r1
004647dc  00 30 93 e5                                      ldr r3, [r3]
004647e0  1c 30 8d e5                                      str r3, [sp, #0x1c]
004647e4  0e 00 00 0a                                      beq #0x464824
004647e8  00 40 a0 e1                                      mov r4, r0
004647ec  04 50 8d e2                                      add r5, sp, #4
004647f0  0d 70 a0 e1                                      mov r7, sp
004647f4  04 10 a0 e1                                      mov r1, r4
004647f8  05 00 a0 e1                                      mov r0, r5
004647fc  45 1c fb eb                                      bl #0x32b918
00464800  04 00 a0 e1                                      mov r0, r4
00464804  05 10 a0 e1                                      mov r1, r5
00464808  0d 20 a0 e1                                      mov r2, sp
0046480c  89 fc ff eb                                      bl #0x463a38
00464810  18 40 84 e2                                      add r4, r4, #0x18
00464814  05 00 a0 e1                                      mov r0, r5
00464818  63 bc fa eb                                      bl #0x3139ac
0046481c  04 00 56 e1                                      cmp r6, r4
00464820  f3 ff ff 1a                                      bne #0x4647f4
00464824  0a 30 98 e7                                      ldr r3, [r8, sl]
00464828  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0046482c  00 30 93 e5                                      ldr r3, [r3]
00464830  03 00 52 e1                                      cmp r2, r3
00464834  01 00 00 1a                                      bne #0x464840
00464838  24 d0 8d e2                                      add sp, sp, #0x24
0046483c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00464840  b2 a6 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00464844  c4 02 53 00 ac 40 00 00                          .byte 0xc4, 0x02, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0046484c, declared_size=288, range_size=288, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv15__linear_insertIPSsSsSt4lessISsEEEvT_S4_T0_T1_
; demangled: void std::priv::__linear_insert<std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >(std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >)
; decoder-mode: arm
0046484c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00464850  0c 71 9f e5                                      ldr r7, [pc, #0x10c]
00464854  0c 91 9f e5                                      ldr sb, [pc, #0x10c]
00464858  00 a0 a0 e1                                      mov sl, r0
0046485c  07 70 8f e0                                      add r7, pc, r7
00464860  02 80 a0 e1                                      mov r8, r2
00464864  09 20 97 e7                                      ldr r2, [r7, sb]
00464868  14 30 9a e5                                      ldr r3, [sl, #0x14]
0046486c  14 00 98 e5                                      ldr r0, [r8, #0x14]
00464870  10 50 98 e5                                      ldr r5, [r8, #0x10]
00464874  10 40 9a e5                                      ldr r4, [sl, #0x10]
00464878  00 c0 92 e5                                      ldr ip, [r2]
0046487c  05 50 60 e0                                      rsb r5, r0, r5
00464880  04 40 63 e0                                      rsb r4, r3, r4
00464884  20 d0 4d e2                                      sub sp, sp, #0x20
00464888  05 00 54 e1                                      cmp r4, r5
0046488c  04 20 a0 b1                                      movlt r2, r4
00464890  05 20 a0 a1                                      movge r2, r5
00464894  01 60 a0 e1                                      mov r6, r1
00464898  03 10 a0 e1                                      mov r1, r3
0046489c  1c c0 8d e5                                      str ip, [sp, #0x1c]
004648a0  4e a7 fa eb                                      bl #0x30e5e0
004648a4  00 00 50 e3                                      cmp r0, #0
004648a8  12 00 00 1a                                      bne #0x4648f8
004648ac  04 00 55 e1                                      cmp r5, r4
004648b0  11 00 00 ba                                      blt #0x4648fc
004648b4  04 40 8d e2                                      add r4, sp, #4
004648b8  08 10 a0 e1                                      mov r1, r8
004648bc  04 00 a0 e1                                      mov r0, r4
004648c0  14 1c fb eb                                      bl #0x32b918
004648c4  06 00 a0 e1                                      mov r0, r6
004648c8  04 10 a0 e1                                      mov r1, r4
004648cc  0d 20 a0 e1                                      mov r2, sp
004648d0  58 fc ff eb                                      bl #0x463a38
004648d4  04 00 a0 e1                                      mov r0, r4
004648d8  33 bc fa eb                                      bl #0x3139ac
004648dc  09 30 97 e7                                      ldr r3, [r7, sb]
004648e0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
004648e4  00 30 93 e5                                      ldr r3, [r3]
004648e8  03 00 52 e1                                      cmp r2, r3
004648ec  1b 00 00 1a                                      bne #0x464960
004648f0  20 d0 8d e2                                      add sp, sp, #0x20
004648f4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
004648f8  ed ff ff aa                                      bge #0x4648b4
004648fc  06 30 6a e0                                      rsb r3, sl, r6
00464900  c3 31 a0 e1                                      asr r3, r3, #3
00464904  03 51 83 e0                                      add r5, r3, r3, lsl #2
00464908  05 52 85 e0                                      add r5, r5, r5, lsl #4
0046490c  05 54 85 e0                                      add r5, r5, r5, lsl #8
00464910  05 58 85 e0                                      add r5, r5, r5, lsl #16
00464914  85 50 83 e0                                      add r5, r3, r5, lsl #1
00464918  00 00 55 e3                                      cmp r5, #0
0046491c  01 00 00 ca                                      bgt #0x464928
00464920  07 00 00 ea                                      b #0x464944
00464924  04 60 a0 e1                                      mov r6, r4
00464928  18 40 46 e2                                      sub r4, r6, #0x18
0046492c  06 00 a0 e1                                      mov r0, r6
00464930  14 10 94 e5                                      ldr r1, [r4, #0x14]
00464934  10 20 94 e5                                      ldr r2, [r4, #0x10]
00464938  28 b0 fa eb                                      bl #0x3109e0
0046493c  01 50 55 e2                                      subs r5, r5, #1
00464940  f7 ff ff 1a                                      bne #0x464924
00464944  0a 00 58 e1                                      cmp r8, sl
00464948  e3 ff ff 0a                                      beq #0x4648dc
0046494c  0a 00 a0 e1                                      mov r0, sl
00464950  10 20 98 e5                                      ldr r2, [r8, #0x10]
00464954  14 10 98 e5                                      ldr r1, [r8, #0x14]
00464958  20 b0 fa eb                                      bl #0x3109e0
0046495c  de ff ff ea                                      b #0x4648dc
00464960  6a a6 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00464964  34 02 53 00 ac 40 00 00                          .byte 0x34, 0x02, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0046496c, declared_size=160, range_size=160, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv16__insertion_sortIPSsSsSt4lessISsEEEvT_S4_PT0_T1_
; demangled: void std::priv::__insertion_sort<std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >(std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >)
; decoder-mode: arm
0046496c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00464970  8c a0 9f e5                                      ldr sl, [pc, #0x8c]
00464974  8c 90 9f e5                                      ldr sb, [pc, #0x8c]
00464978  20 d0 4d e2                                      sub sp, sp, #0x20
0046497c  0a a0 8f e0                                      add sl, pc, sl
00464980  09 30 9a e7                                      ldr r3, [sl, sb]
00464984  01 00 50 e1                                      cmp r0, r1
00464988  00 60 a0 e1                                      mov r6, r0
0046498c  00 30 93 e5                                      ldr r3, [r3]
00464990  01 70 a0 e1                                      mov r7, r1
00464994  1c 30 8d e5                                      str r3, [sp, #0x1c]
00464998  11 00 00 0a                                      beq #0x4649e4
0046499c  18 40 80 e2                                      add r4, r0, #0x18
004649a0  04 00 51 e1                                      cmp r1, r4
004649a4  0e 00 00 0a                                      beq #0x4649e4
004649a8  04 50 8d e2                                      add r5, sp, #4
004649ac  0d 80 a0 e1                                      mov r8, sp
004649b0  04 10 a0 e1                                      mov r1, r4
004649b4  05 00 a0 e1                                      mov r0, r5
004649b8  d6 1b fb eb                                      bl #0x32b918
004649bc  04 10 a0 e1                                      mov r1, r4
004649c0  06 00 a0 e1                                      mov r0, r6
004649c4  05 20 a0 e1                                      mov r2, r5
004649c8  0d 30 a0 e1                                      mov r3, sp
004649cc  9e ff ff eb                                      bl #0x46484c
004649d0  18 40 84 e2                                      add r4, r4, #0x18
004649d4  05 00 a0 e1                                      mov r0, r5
004649d8  f3 bb fa eb                                      bl #0x3139ac
004649dc  04 00 57 e1                                      cmp r7, r4
004649e0  f2 ff ff 1a                                      bne #0x4649b0
004649e4  09 30 9a e7                                      ldr r3, [sl, sb]
004649e8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
004649ec  00 30 93 e5                                      ldr r3, [r3]
004649f0  03 00 52 e1                                      cmp r2, r3
004649f4  01 00 00 1a                                      bne #0x464a00
004649f8  20 d0 8d e2                                      add sp, sp, #0x20
004649fc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00464a00  42 a6 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00464a04  14 01 53 00 ac 40 00 00                          .byte 0x14, 0x01, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00464a0c, declared_size=92, range_size=92, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv22__final_insertion_sortIPSsSt4lessISsEEEvT_S4_T0_
; demangled: void std::priv::__final_insertion_sort<std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >(std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >)
; decoder-mode: arm
00464a0c  30 40 2d e9                                      push {r4, r5, lr}
00464a10  01 30 60 e0                                      rsb r3, r0, r1
00464a14  66 0f 53 e3                                      cmp r3, #0x198
00464a18  14 d0 4d e2                                      sub sp, sp, #0x14
00464a1c  00 50 a0 e1                                      mov r5, r0
00464a20  01 40 a0 e1                                      mov r4, r1
00464a24  0b 00 00 ba                                      blt #0x464a58
00464a28  06 5d 80 e2                                      add r5, r0, #0x180
00464a2c  0c 30 8d e2                                      add r3, sp, #0xc
00464a30  05 10 a0 e1                                      mov r1, r5
00464a34  00 20 a0 e3                                      mov r2, #0
00464a38  cb ff ff eb                                      bl #0x46496c
00464a3c  05 00 a0 e1                                      mov r0, r5
00464a40  04 10 a0 e1                                      mov r1, r4
00464a44  00 20 a0 e3                                      mov r2, #0
00464a48  04 30 8d e2                                      add r3, sp, #4
00464a4c  5a ff ff eb                                      bl #0x4647bc
00464a50  14 d0 8d e2                                      add sp, sp, #0x14
00464a54  30 80 bd e8                                      pop {r4, r5, pc}
00464a58  00 20 a0 e3                                      mov r2, #0
00464a5c  08 30 8d e2                                      add r3, sp, #8
00464a60  c1 ff ff eb                                      bl #0x46496c
00464a64  f9 ff ff ea                                      b #0x464a50

; FUNCTION 0x00465ef4, declared_size=332, range_size=332, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv16__introsort_loopIPSsSsiSt4lessISsEEEvT_S4_PT0_T1_T2_
; demangled: void std::priv::__introsort_loop<std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >(std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >)
; decoder-mode: arm
00465ef4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00465ef8  38 21 9f e5                                      ldr r2, [pc, #0x138]
00465efc  38 c1 9f e5                                      ldr ip, [pc, #0x138]
00465f00  4c d0 4d e2                                      sub sp, sp, #0x4c
00465f04  02 20 8f e0                                      add r2, pc, r2
00465f08  10 20 8d e5                                      str r2, [sp, #0x10]
00465f0c  0c 20 92 e7                                      ldr r2, [r2, ip]
00465f10  01 50 a0 e1                                      mov r5, r1
00465f14  97 a1 00 e3                                      movw sl, #0x197
00465f18  00 20 92 e5                                      ldr r2, [r2]
00465f1c  01 10 60 e0                                      rsb r1, r0, r1
00465f20  0a 00 51 e1                                      cmp r1, sl
00465f24  14 c0 8d e5                                      str ip, [sp, #0x14]
00465f28  00 40 a0 e1                                      mov r4, r0
00465f2c  44 20 8d e5                                      str r2, [sp, #0x44]
00465f30  03 60 a0 e1                                      mov r6, r3
00465f34  2d 00 00 da                                      ble #0x465ff0
00465f38  00 00 53 e3                                      cmp r3, #0
00465f3c  34 00 00 0a                                      beq #0x466014
00465f40  20 00 8d e2                                      add r0, sp, #0x20
00465f44  28 90 8d e2                                      add sb, sp, #0x28
00465f48  2c 80 8d e2                                      add r8, sp, #0x2c
00465f4c  24 b0 8d e2                                      add fp, sp, #0x24
00465f50  0c 00 8d e5                                      str r0, [sp, #0xc]
00465f54  02 00 00 ea                                      b #0x465f64
00465f58  00 00 56 e3                                      cmp r6, #0
00465f5c  07 50 a0 e1                                      mov r5, r7
00465f60  2b 00 00 0a                                      beq #0x466014
00465f64  c1 11 a0 e1                                      asr r1, r1, #3
00465f68  18 20 45 e2                                      sub r2, r5, #0x18
00465f6c  01 c1 81 e0                                      add ip, r1, r1, lsl #2
00465f70  09 30 a0 e1                                      mov r3, sb
00465f74  0c c2 8c e0                                      add ip, ip, ip, lsl #4
00465f78  04 00 a0 e1                                      mov r0, r4
00465f7c  0c c4 8c e0                                      add ip, ip, ip, lsl #8
00465f80  01 60 46 e2                                      sub r6, r6, #1
00465f84  0c c8 8c e0                                      add ip, ip, ip, lsl #16
00465f88  8c 10 81 e0                                      add r1, r1, ip, lsl #1
00465f8c  18 c0 a0 e3                                      mov ip, #0x18
00465f90  c1 10 a0 e1                                      asr r1, r1, #1
00465f94  9c 41 21 e0                                      mla r1, ip, r1, r4
00465f98  80 ff ff eb                                      bl #0x465da0
00465f9c  00 10 a0 e1                                      mov r1, r0
00465fa0  08 00 a0 e1                                      mov r0, r8
00465fa4  5b 16 fb eb                                      bl #0x32b918
00465fa8  05 10 a0 e1                                      mov r1, r5
00465fac  08 20 a0 e1                                      mov r2, r8
00465fb0  0b 30 a0 e1                                      mov r3, fp
00465fb4  04 00 a0 e1                                      mov r0, r4
00465fb8  6c f6 ff eb                                      bl #0x463970
00465fbc  00 70 a0 e1                                      mov r7, r0
00465fc0  08 00 a0 e1                                      mov r0, r8
00465fc4  78 b6 fa eb                                      bl #0x3139ac
00465fc8  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00465fcc  05 10 a0 e1                                      mov r1, r5
00465fd0  07 00 a0 e1                                      mov r0, r7
00465fd4  00 20 a0 e3                                      mov r2, #0
00465fd8  06 30 a0 e1                                      mov r3, r6
00465fdc  00 c0 8d e5                                      str ip, [sp]
00465fe0  c3 ff ff eb                                      bl #0x465ef4
00465fe4  07 10 64 e0                                      rsb r1, r4, r7
00465fe8  0a 00 51 e1                                      cmp r1, sl
00465fec  d9 ff ff ca                                      bgt #0x465f58
00465ff0  10 10 9d e5                                      ldr r1, [sp, #0x10]
00465ff4  14 00 9d e5                                      ldr r0, [sp, #0x14]
00465ff8  44 20 9d e5                                      ldr r2, [sp, #0x44]
00465ffc  00 30 91 e7                                      ldr r3, [r1, r0]
00466000  00 30 93 e5                                      ldr r3, [r3]
00466004  03 00 52 e1                                      cmp r2, r3
00466008  09 00 00 1a                                      bne #0x466034
0046600c  4c d0 8d e2                                      add sp, sp, #0x4c
00466010  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00466014  1c c0 8d e2                                      add ip, sp, #0x1c
00466018  05 10 a0 e1                                      mov r1, r5
0046601c  04 00 a0 e1                                      mov r0, r4
00466020  05 20 a0 e1                                      mov r2, r5
00466024  00 30 a0 e3                                      mov r3, #0
00466028  00 c0 8d e5                                      str ip, [sp]
0046602c  8b f9 ff eb                                      bl #0x464660
00466030  ee ff ff ea                                      b #0x465ff0
00466034  b5 a0 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00466038  8c eb 52 00 ac 40 00 00                          .byte 0x8c, 0xeb, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x004841e8, declared_size=148, range_size=148, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv6__fillINS_15_Deque_iteratorIPN3rnd4TileESt16_Nonconst_traitsIS4_EEES4_iEEvT_S8_RKT0_RKSt26random_access_iterator_tagPT1_
; demangled: void std::priv::__fill<std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, rnd::Tile*, int>(std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, rnd::Tile* const&, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
004841e8  30 40 2d e9                                      push {r4, r5, lr}
004841ec  14 d0 4d e2                                      sub sp, sp, #0x14
004841f0  01 e0 a0 e1                                      mov lr, r1
004841f4  0d c0 a0 e1                                      mov ip, sp
004841f8  00 40 a0 e1                                      mov r4, r0
004841fc  02 50 a0 e1                                      mov r5, r2
00484200  0f 00 90 e8                                      ldm r0, {r0, r1, r2, r3}
00484204  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00484208  0e 00 a0 e1                                      mov r0, lr
0048420c  0d 10 a0 e1                                      mov r1, sp
00484210  c6 fe ff eb                                      bl #0x483d30
00484214  00 00 50 e3                                      cmp r0, #0
00484218  02 00 00 ca                                      bgt #0x484228
0048421c  14 00 00 ea                                      b #0x484274
00484220  01 00 50 e2                                      subs r0, r0, #1
00484224  12 00 00 0a                                      beq #0x484274
00484228  00 20 95 e5                                      ldr r2, [r5]
0048422c  00 30 94 e5                                      ldr r3, [r4]
00484230  00 20 83 e5                                      str r2, [r3]
00484234  00 30 94 e5                                      ldr r3, [r4]
00484238  08 20 94 e5                                      ldr r2, [r4, #8]
0048423c  04 30 83 e2                                      add r3, r3, #4
00484240  02 00 53 e1                                      cmp r3, r2
00484244  00 30 84 e5                                      str r3, [r4]
00484248  f4 ff ff 1a                                      bne #0x484220
0048424c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00484250  01 00 50 e2                                      subs r0, r0, #1
00484254  04 20 83 e2                                      add r2, r3, #4
00484258  0c 20 84 e5                                      str r2, [r4, #0xc]
0048425c  04 30 93 e5                                      ldr r3, [r3, #4]
00484260  80 20 83 e2                                      add r2, r3, #0x80
00484264  08 20 84 e5                                      str r2, [r4, #8]
00484268  00 30 84 e5                                      str r3, [r4]
0048426c  04 30 84 e5                                      str r3, [r4, #4]
00484270  ec ff ff 1a                                      bne #0x484228
00484274  14 d0 8d e2                                      add sp, sp, #0x14
00484278  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x004848f0, declared_size=272, range_size=272, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv25__uninitialized_copy_fillINS_15_Deque_iteratorIPN3rnd4TileESt16_Nonconst_traitsIS4_EEES4_EEvT_S8_S8_S8_RKT0_
; demangled: void std::priv::__uninitialized_copy_fill<std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, rnd::Tile*>(std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, std::priv::_Deque_iterator<rnd::Tile*, std::_Nonconst_traits<rnd::Tile*> >, rnd::Tile* const&)
; decoder-mode: arm
004848f0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004848f4  0c c0 91 e5                                      ldr ip, [r1, #0xc]
004848f8  08 80 91 e5                                      ldr r8, [r1, #8]
004848fc  00 06 91 e8                                      ldm r1, {sb, sl}
00484900  00 10 92 e5                                      ldr r1, [r2]
00484904  7c d0 4d e2                                      sub sp, sp, #0x7c
00484908  0c 70 90 e5                                      ldr r7, [r0, #0xc]
0048490c  00 e0 90 e5                                      ldr lr, [r0]
00484910  60 00 90 e9                                      ldmib r0, {r5, r6}
00484914  0c b0 92 e5                                      ldr fp, [r2, #0xc]
00484918  0c 10 8d e5                                      str r1, [sp, #0xc]
0048491c  04 10 92 e5                                      ldr r1, [r2, #4]
00484920  03 40 a0 e1                                      mov r4, r3
00484924  64 00 8d e2                                      add r0, sp, #0x64
00484928  08 10 8d e5                                      str r1, [sp, #8]
0048492c  08 20 92 e5                                      ldr r2, [r2, #8]
00484930  50 c0 8d e5                                      str ip, [sp, #0x50]
00484934  08 c0 9d e5                                      ldr ip, [sp, #8]
00484938  3c 20 8d e5                                      str r2, [sp, #0x3c]
0048493c  54 10 8d e2                                      add r1, sp, #0x54
00484940  38 c0 8d e5                                      str ip, [sp, #0x38]
00484944  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00484948  44 20 8d e2                                      add r2, sp, #0x44
0048494c  34 30 8d e2                                      add r3, sp, #0x34
00484950  34 c0 8d e5                                      str ip, [sp, #0x34]
00484954  74 c0 8d e2                                      add ip, sp, #0x74
00484958  00 c0 8d e5                                      str ip, [sp]
0048495c  00 c0 a0 e3                                      mov ip, #0
00484960  60 70 8d e5                                      str r7, [sp, #0x60]
00484964  5c 60 8d e5                                      str r6, [sp, #0x5c]
00484968  58 50 8d e5                                      str r5, [sp, #0x58]
0048496c  54 e0 8d e5                                      str lr, [sp, #0x54]
00484970  4c 80 8d e5                                      str r8, [sp, #0x4c]
00484974  04 c0 8d e5                                      str ip, [sp, #4]
00484978  48 a0 8d e5                                      str sl, [sp, #0x48]
0048497c  44 90 8d e5                                      str sb, [sp, #0x44]
00484980  40 b0 8d e5                                      str fp, [sp, #0x40]
00484984  a0 50 9d e5                                      ldr r5, [sp, #0xa0]
00484988  d9 fd ff eb                                      bl #0x4840f4
0048498c  00 30 94 e5                                      ldr r3, [r4]
00484990  04 50 94 e9                                      ldmib r4, {r2, ip, lr}
00484994  70 80 9d e5                                      ldr r8, [sp, #0x70]
00484998  6c 70 9d e5                                      ldr r7, [sp, #0x6c]
0048499c  64 60 9d e5                                      ldr r6, [sp, #0x64]
004849a0  24 30 8d e5                                      str r3, [sp, #0x24]
004849a4  68 30 9d e5                                      ldr r3, [sp, #0x68]
004849a8  24 00 8d e2                                      add r0, sp, #0x24
004849ac  14 10 8d e2                                      add r1, sp, #0x14
004849b0  30 e0 8d e5                                      str lr, [sp, #0x30]
004849b4  2c c0 8d e5                                      str ip, [sp, #0x2c]
004849b8  28 20 8d e5                                      str r2, [sp, #0x28]
004849bc  18 30 8d e5                                      str r3, [sp, #0x18]
004849c0  14 60 8d e5                                      str r6, [sp, #0x14]
004849c4  1c 70 8d e5                                      str r7, [sp, #0x1c]
004849c8  20 80 8d e5                                      str r8, [sp, #0x20]
004849cc  d7 fc ff eb                                      bl #0x483d30
004849d0  00 00 50 e3                                      cmp r0, #0
004849d4  07 00 00 da                                      ble #0x4849f8
004849d8  00 30 95 e5                                      ldr r3, [r5]
004849dc  01 00 40 e2                                      sub r0, r0, #1
004849e0  04 30 86 e4                                      str r3, [r6], #4
004849e4  07 00 56 e1                                      cmp r6, r7
004849e8  04 60 b8 05                                      ldreq r6, [r8, #4]!
004849ec  80 70 86 02                                      addeq r7, r6, #0x80
004849f0  00 00 50 e3                                      cmp r0, #0
004849f4  f7 ff ff 1a                                      bne #0x4849d8
004849f8  7c d0 8d e2                                      add sp, sp, #0x7c
004849fc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00486888, declared_size=112, range_size=112, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv7__ufillINS_15_Deque_iteratorISt5dequeIPN3rnd4TileESaIS5_EESt16_Nonconst_traitsIS7_EEES7_iEEvT_SB_RKT0_RKSt26random_access_iterator_tagPT1_
; demangled: void std::priv::__ufill<std::priv::_Deque_iterator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::_Nonconst_traits<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >, std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, int>(std::priv::_Deque_iterator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::_Nonconst_traits<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >, std::priv::_Deque_iterator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >, std::_Nonconst_traits<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > > >, std::deque<rnd::Tile*, std::allocator<rnd::Tile*> > const&, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00486888  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0048688c  10 d0 4d e2                                      sub sp, sp, #0x10
00486890  0d e0 a0 e1                                      mov lr, sp
00486894  00 c0 a0 e1                                      mov ip, r0
00486898  01 50 a0 e1                                      mov r5, r1
0048689c  02 40 a0 e1                                      mov r4, r2
004868a0  0f 00 90 e8                                      ldm r0, {r0, r1, r2, r3}
004868a4  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
004868a8  05 00 a0 e1                                      mov r0, r5
004868ac  0d 10 a0 e1                                      mov r1, sp
004868b0  0c 80 9c e5                                      ldr r8, [ip, #0xc]
004868b4  08 70 9c e5                                      ldr r7, [ip, #8]
004868b8  00 50 9c e5                                      ldr r5, [ip]
004868bc  fe f4 ff eb                                      bl #0x483cbc
004868c0  00 60 50 e2                                      subs r6, r0, #0
004868c4  09 00 00 da                                      ble #0x4868f0
004868c8  05 00 a0 e1                                      mov r0, r5
004868cc  04 10 a0 e1                                      mov r1, r4
004868d0  28 50 85 e2                                      add r5, r5, #0x28
004868d4  ac ff ff eb                                      bl #0x48678c
004868d8  07 00 55 e1                                      cmp r5, r7
004868dc  04 50 b8 05                                      ldreq r5, [r8, #4]!
004868e0  01 60 46 e2                                      sub r6, r6, #1
004868e4  78 70 85 02                                      addeq r7, r5, #0x78
004868e8  00 00 56 e3                                      cmp r6, #0
004868ec  f5 ff ff 1a                                      bne #0x4868c8
004868f0  10 d0 8d e2                                      add sp, sp, #0x10
004868f4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00499340, declared_size=256, range_size=256, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv8_S_mergeISsSaISsESt4lessISsEEEvRSt4listIT_T0_ES8_T1_
; demangled: void std::priv::_S_merge<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >(std::list<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >&, std::list<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >&, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >)
; decoder-mode: arm
00499340  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00499344  00 50 90 e5                                      ldr r5, [r0]
00499348  00 80 a0 e1                                      mov r8, r0
0049934c  01 a0 a0 e1                                      mov sl, r1
00499350  05 00 58 e1                                      cmp r8, r5
00499354  00 40 91 e5                                      ldr r4, [r1]
00499358  15 00 00 0a                                      beq #0x4993b4
0049935c  04 00 5a e1                                      cmp sl, r4
00499360  23 00 00 0a                                      beq #0x4993f4
00499364  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00499368  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
0049936c  18 60 94 e5                                      ldr r6, [r4, #0x18]
00499370  18 70 95 e5                                      ldr r7, [r5, #0x18]
00499374  03 00 a0 e1                                      mov r0, r3
00499378  06 60 63 e0                                      rsb r6, r3, r6
0049937c  07 70 61 e0                                      rsb r7, r1, r7
00499380  06 00 57 e1                                      cmp r7, r6
00499384  07 20 a0 b1                                      movlt r2, r7
00499388  06 20 a0 a1                                      movge r2, r6
0049938c  93 d4 f9 eb                                      bl #0x30e5e0
00499390  00 00 50 e3                                      cmp r0, #0
00499394  17 00 00 1a                                      bne #0x4993f8
00499398  07 00 56 e1                                      cmp r6, r7
0049939c  16 00 00 ba                                      blt #0x4993fc
004993a0  00 50 95 e5                                      ldr r5, [r5]
004993a4  04 30 a0 e1                                      mov r3, r4
004993a8  03 40 a0 e1                                      mov r4, r3
004993ac  05 00 58 e1                                      cmp r8, r5
004993b0  e9 ff ff 1a                                      bne #0x49935c
004993b4  04 00 5a e1                                      cmp sl, r4
004993b8  0d 00 00 0a                                      beq #0x4993f4
004993bc  0a 00 58 e1                                      cmp r8, sl
004993c0  0b 00 00 0a                                      beq #0x4993f4
004993c4  04 30 9a e5                                      ldr r3, [sl, #4]
004993c8  00 80 83 e5                                      str r8, [r3]
004993cc  04 30 94 e5                                      ldr r3, [r4, #4]
004993d0  00 a0 83 e5                                      str sl, [r3]
004993d4  04 30 98 e5                                      ldr r3, [r8, #4]
004993d8  00 40 83 e5                                      str r4, [r3]
004993dc  04 20 9a e5                                      ldr r2, [sl, #4]
004993e0  04 30 98 e5                                      ldr r3, [r8, #4]
004993e4  04 20 88 e5                                      str r2, [r8, #4]
004993e8  04 20 94 e5                                      ldr r2, [r4, #4]
004993ec  04 20 8a e5                                      str r2, [sl, #4]
004993f0  04 30 84 e5                                      str r3, [r4, #4]
004993f4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
004993f8  e8 ff ff aa                                      bge #0x4993a0
004993fc  00 30 94 e5                                      ldr r3, [r4]
00499400  05 00 53 e1                                      cmp r3, r5
00499404  e7 ff ff 0a                                      beq #0x4993a8
00499408  04 20 93 e5                                      ldr r2, [r3, #4]
0049940c  00 50 82 e5                                      str r5, [r2]
00499410  04 20 94 e5                                      ldr r2, [r4, #4]
00499414  00 30 82 e5                                      str r3, [r2]
00499418  04 20 95 e5                                      ldr r2, [r5, #4]
0049941c  00 40 82 e5                                      str r4, [r2]
00499420  04 10 93 e5                                      ldr r1, [r3, #4]
00499424  04 20 95 e5                                      ldr r2, [r5, #4]
00499428  04 10 85 e5                                      str r1, [r5, #4]
0049942c  04 10 94 e5                                      ldr r1, [r4, #4]
00499430  04 10 83 e5                                      str r1, [r3, #4]
00499434  04 20 84 e5                                      str r2, [r4, #4]
00499438  03 40 a0 e1                                      mov r4, r3
0049943c  da ff ff ea                                      b #0x4993ac

; FUNCTION 0x00499ad8, declared_size=1060, range_size=1060, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv7_S_sortISsSaISsESt4lessISsEEEvRSt4listIT_T0_ET1_
; demangled: void std::priv::_S_sort<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >(std::list<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >&, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >)
; decoder-mode: arm
00499ad8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00499adc  0c 14 9f e5                                      ldr r1, [pc, #0x40c]
00499ae0  0c 24 9f e5                                      ldr r2, [pc, #0x40c]
00499ae4  8b df 4d e2                                      sub sp, sp, #0x22c
00499ae8  01 10 8f e0                                      add r1, pc, r1
00499aec  08 20 8d e5                                      str r2, [sp, #8]
00499af0  02 20 91 e7                                      ldr r2, [r1, r2]
00499af4  03 00 8d e8                                      stm sp, {r0, r1}
00499af8  00 30 90 e5                                      ldr r3, [r0]
00499afc  00 20 92 e5                                      ldr r2, [r2]
00499b00  00 00 53 e1                                      cmp r3, r0
00499b04  24 22 8d e5                                      str r2, [sp, #0x224]
00499b08  b0 00 00 0a                                      beq #0x499dd0
00499b0c  00 30 93 e5                                      ldr r3, [r3]
00499b10  03 00 50 e1                                      cmp r0, r3
00499b14  ad 00 00 0a                                      beq #0x499dd0
00499b18  14 40 8d e2                                      add r4, sp, #0x14
00499b1c  24 70 8d e2                                      add r7, sp, #0x24
00499b20  14 40 8d e5                                      str r4, [sp, #0x14]
00499b24  18 40 8d e5                                      str r4, [sp, #0x18]
00499b28  07 50 a0 e1                                      mov r5, r7
00499b2c  02 9c 87 e2                                      add sb, r7, #0x200
00499b30  00 50 85 e5                                      str r5, [r5]
00499b34  04 50 85 e5                                      str r5, [r5, #4]
00499b38  14 60 9d e5                                      ldr r6, [sp, #0x14]
00499b3c  04 00 56 e1                                      cmp r6, r4
00499b40  0a 00 00 0a                                      beq #0x499b70
00499b44  08 10 86 e2                                      add r1, r6, #8
00499b48  05 00 a0 e1                                      mov r0, r5
00499b4c  88 ff ff eb                                      bl #0x499974
00499b50  04 30 95 e5                                      ldr r3, [r5, #4]
00499b54  00 50 80 e5                                      str r5, [r0]
00499b58  04 30 80 e5                                      str r3, [r0, #4]
00499b5c  00 00 83 e5                                      str r0, [r3]
00499b60  04 00 85 e5                                      str r0, [r5, #4]
00499b64  00 60 96 e5                                      ldr r6, [r6]
00499b68  04 00 56 e1                                      cmp r6, r4
00499b6c  f4 ff ff 1a                                      bne #0x499b44
00499b70  08 50 85 e2                                      add r5, r5, #8
00499b74  09 00 55 e1                                      cmp r5, sb
00499b78  ec ff ff 1a                                      bne #0x499b30
00499b7c  74 33 9f e5                                      ldr r3, [pc, #0x374]
00499b80  00 a0 a0 e3                                      mov sl, #0
00499b84  20 b0 8d e2                                      add fp, sp, #0x20
00499b88  03 30 8f e0                                      add r3, pc, r3
00499b8c  0c 30 8d e5                                      str r3, [sp, #0xc]
00499b90  00 c0 9d e5                                      ldr ip, [sp]
00499b94  00 30 9c e5                                      ldr r3, [ip]
00499b98  03 00 5c e1                                      cmp ip, r3
00499b9c  5c 00 00 0a                                      beq #0x499d14
00499ba0  14 20 9d e5                                      ldr r2, [sp, #0x14]
00499ba4  00 10 93 e5                                      ldr r1, [r3]
00499ba8  03 00 52 e1                                      cmp r2, r3
00499bac  0d 00 00 0a                                      beq #0x499be8
00499bb0  01 00 52 e1                                      cmp r2, r1
00499bb4  0b 00 00 0a                                      beq #0x499be8
00499bb8  04 00 91 e5                                      ldr r0, [r1, #4]
00499bbc  00 20 80 e5                                      str r2, [r0]
00499bc0  04 00 93 e5                                      ldr r0, [r3, #4]
00499bc4  00 10 80 e5                                      str r1, [r0]
00499bc8  04 00 92 e5                                      ldr r0, [r2, #4]
00499bcc  00 30 80 e5                                      str r3, [r0]
00499bd0  04 c0 91 e5                                      ldr ip, [r1, #4]
00499bd4  04 00 92 e5                                      ldr r0, [r2, #4]
00499bd8  04 c0 82 e5                                      str ip, [r2, #4]
00499bdc  04 20 93 e5                                      ldr r2, [r3, #4]
00499be0  04 20 81 e5                                      str r2, [r1, #4]
00499be4  04 00 83 e5                                      str r0, [r3, #4]
00499be8  00 00 5a e3                                      cmp sl, #0
00499bec  02 00 00 1a                                      bne #0x499bfc
00499bf0  00 30 a0 e3                                      mov r3, #0
00499bf4  03 60 a0 e1                                      mov r6, r3
00499bf8  23 00 00 ea                                      b #0x499c8c
00499bfc  00 30 97 e5                                      ldr r3, [r7]
00499c00  07 00 53 e1                                      cmp r3, r7
00499c04  00 60 a0 13                                      movne r6, #0
00499c08  06 80 a0 11                                      movne r8, r6
00499c0c  f7 ff ff 0a                                      beq #0x499bf0
00499c10  08 50 87 e0                                      add r5, r7, r8
00499c14  05 00 a0 e1                                      mov r0, r5
00499c18  04 10 a0 e1                                      mov r1, r4
00499c1c  0b 20 a0 e1                                      mov r2, fp
00499c20  c6 fd ff eb                                      bl #0x499340
00499c24  08 30 97 e7                                      ldr r3, [r7, r8]
00499c28  01 60 86 e2                                      add r6, r6, #1
00499c2c  05 00 53 e1                                      cmp r3, r5
00499c30  7f 00 00 0a                                      beq #0x499e34
00499c34  14 20 9d e5                                      ldr r2, [sp, #0x14]
00499c38  04 00 52 e1                                      cmp r2, r4
00499c3c  87 00 00 0a                                      beq #0x499e60
00499c40  14 30 8d e5                                      str r3, [sp, #0x14]
00499c44  04 10 95 e5                                      ldr r1, [r5, #4]
00499c48  18 30 9d e5                                      ldr r3, [sp, #0x18]
00499c4c  18 10 8d e5                                      str r1, [sp, #0x18]
00499c50  0c 00 85 e8                                      stm r5, {r2, r3}
00499c54  18 20 9d e5                                      ldr r2, [sp, #0x18]
00499c58  00 00 93 e5                                      ldr r0, [r3]
00499c5c  00 10 92 e5                                      ldr r1, [r2]
00499c60  00 00 82 e5                                      str r0, [r2]
00499c64  00 10 83 e5                                      str r1, [r3]
00499c68  00 30 95 e5                                      ldr r3, [r5]
00499c6c  14 20 9d e5                                      ldr r2, [sp, #0x14]
00499c70  04 00 93 e5                                      ldr r0, [r3, #4]
00499c74  04 10 92 e5                                      ldr r1, [r2, #4]
00499c78  04 00 82 e5                                      str r0, [r2, #4]
00499c7c  04 10 83 e5                                      str r1, [r3, #4]
00499c80  0a 00 56 e1                                      cmp r6, sl
00499c84  5a 00 00 1a                                      bne #0x499df4
00499c88  86 31 a0 e1                                      lsl r3, r6, #3
00499c8c  03 20 97 e7                                      ldr r2, [r7, r3]
00499c90  03 30 87 e0                                      add r3, r7, r3
00499c94  03 00 52 e1                                      cmp r2, r3
00499c98  5a 00 00 0a                                      beq #0x499e08
00499c9c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00499ca0  04 00 51 e1                                      cmp r1, r4
00499ca4  75 00 00 0a                                      beq #0x499e80
00499ca8  14 20 8d e5                                      str r2, [sp, #0x14]
00499cac  04 00 93 e5                                      ldr r0, [r3, #4]
00499cb0  18 20 9d e5                                      ldr r2, [sp, #0x18]
00499cb4  18 00 8d e5                                      str r0, [sp, #0x18]
00499cb8  06 00 83 e8                                      stm r3, {r1, r2}
00499cbc  18 10 9d e5                                      ldr r1, [sp, #0x18]
00499cc0  00 c0 92 e5                                      ldr ip, [r2]
00499cc4  00 00 91 e5                                      ldr r0, [r1]
00499cc8  00 c0 81 e5                                      str ip, [r1]
00499ccc  00 00 82 e5                                      str r0, [r2]
00499cd0  00 30 93 e5                                      ldr r3, [r3]
00499cd4  14 20 9d e5                                      ldr r2, [sp, #0x14]
00499cd8  04 00 93 e5                                      ldr r0, [r3, #4]
00499cdc  04 10 92 e5                                      ldr r1, [r2, #4]
00499ce0  04 00 82 e5                                      str r0, [r2, #4]
00499ce4  04 10 83 e5                                      str r1, [r3, #4]
00499ce8  0a 00 56 e1                                      cmp r6, sl
00499cec  a7 ff ff 1a                                      bne #0x499b90
00499cf0  01 a0 8a e2                                      add sl, sl, #1
00499cf4  3f 00 5a e3                                      cmp sl, #0x3f
00499cf8  a4 ff ff da                                      ble #0x499b90
00499cfc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00499d00  62 bc 09 eb                                      bl #0x708e90
00499d04  00 c0 9d e5                                      ldr ip, [sp]
00499d08  00 30 9c e5                                      ldr r3, [ip]
00499d0c  03 00 5c e1                                      cmp ip, r3
00499d10  a2 ff ff 1a                                      bne #0x499ba0
00499d14  01 00 5a e3                                      cmp sl, #1
00499d18  0c 00 00 da                                      ble #0x499d50
00499d1c  00 60 a0 e3                                      mov r6, #0
00499d20  01 50 a0 e3                                      mov r5, #1
00499d24  1c 80 8d e2                                      add r8, sp, #0x1c
00499d28  85 01 87 e0                                      add r0, r7, r5, lsl #3
00499d2c  06 10 87 e0                                      add r1, r7, r6
00499d30  01 50 85 e2                                      add r5, r5, #1
00499d34  08 20 a0 e1                                      mov r2, r8
00499d38  80 fd ff eb                                      bl #0x499340
00499d3c  0a 00 55 e1                                      cmp r5, sl
00499d40  08 60 86 e2                                      add r6, r6, #8
00499d44  f7 ff ff 1a                                      bne #0x499d28
00499d48  00 e0 9d e5                                      ldr lr, [sp]
00499d4c  00 30 9e e5                                      ldr r3, [lr]
00499d50  01 20 4a e2                                      sub r2, sl, #1
00499d54  82 11 97 e7                                      ldr r1, [r7, r2, lsl #3]
00499d58  82 21 87 e0                                      add r2, r7, r2, lsl #3
00499d5c  02 00 51 e1                                      cmp r1, r2
00499d60  4e 00 00 0a                                      beq #0x499ea0
00499d64  00 c0 9d e5                                      ldr ip, [sp]
00499d68  03 00 5c e1                                      cmp ip, r3
00499d6c  56 00 00 0a                                      beq #0x499ecc
00499d70  00 e0 9d e5                                      ldr lr, [sp]
00499d74  04 c0 92 e5                                      ldr ip, [r2, #4]
00499d78  04 00 9e e5                                      ldr r0, [lr, #4]
00499d7c  00 10 8e e5                                      str r1, [lr]
00499d80  00 30 82 e5                                      str r3, [r2]
00499d84  04 c0 8e e5                                      str ip, [lr, #4]
00499d88  04 00 82 e5                                      str r0, [r2, #4]
00499d8c  00 10 90 e5                                      ldr r1, [r0]
00499d90  00 30 9c e5                                      ldr r3, [ip]
00499d94  00 10 8c e5                                      str r1, [ip]
00499d98  00 30 80 e5                                      str r3, [r0]
00499d9c  00 30 92 e5                                      ldr r3, [r2]
00499da0  00 10 9e e5                                      ldr r1, [lr]
00499da4  04 00 93 e5                                      ldr r0, [r3, #4]
00499da8  04 20 91 e5                                      ldr r2, [r1, #4]
00499dac  04 00 81 e5                                      str r0, [r1, #4]
00499db0  04 20 83 e5                                      str r2, [r3, #4]
00499db4  07 00 a0 e1                                      mov r0, r7
00499db8  08 70 87 e2                                      add r7, r7, #8
00499dbc  17 3c fa eb                                      bl #0x328e20
00499dc0  09 00 57 e1                                      cmp r7, sb
00499dc4  fa ff ff 1a                                      bne #0x499db4
00499dc8  04 00 a0 e1                                      mov r0, r4
00499dcc  13 3c fa eb                                      bl #0x328e20
00499dd0  04 10 9d e5                                      ldr r1, [sp, #4]
00499dd4  08 00 9d e5                                      ldr r0, [sp, #8]
00499dd8  24 22 9d e5                                      ldr r2, [sp, #0x224]
00499ddc  00 30 91 e7                                      ldr r3, [r1, r0]
00499de0  00 30 93 e5                                      ldr r3, [r3]
00499de4  03 00 52 e1                                      cmp r2, r3
00499de8  3f 00 00 1a                                      bne #0x499eec
00499dec  8b df 8d e2                                      add sp, sp, #0x22c
00499df0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00499df4  86 21 97 e7                                      ldr r2, [r7, r6, lsl #3]
00499df8  86 81 a0 e1                                      lsl r8, r6, #3
00499dfc  08 30 87 e0                                      add r3, r7, r8
00499e00  03 00 52 e1                                      cmp r2, r3
00499e04  81 ff ff 1a                                      bne #0x499c10
00499e08  14 10 9d e5                                      ldr r1, [sp, #0x14]
00499e0c  04 00 51 e1                                      cmp r1, r4
00499e10  b4 ff ff 0a                                      beq #0x499ce8
00499e14  00 10 83 e5                                      str r1, [r3]
00499e18  04 20 81 e5                                      str r2, [r1, #4]
00499e1c  18 10 9d e5                                      ldr r1, [sp, #0x18]
00499e20  04 10 83 e5                                      str r1, [r3, #4]
00499e24  00 20 81 e5                                      str r2, [r1]
00499e28  14 40 8d e5                                      str r4, [sp, #0x14]
00499e2c  18 40 8d e5                                      str r4, [sp, #0x18]
00499e30  ac ff ff ea                                      b #0x499ce8
00499e34  14 20 9d e5                                      ldr r2, [sp, #0x14]
00499e38  04 00 52 e1                                      cmp r2, r4
00499e3c  8f ff ff 0a                                      beq #0x499c80
00499e40  00 20 83 e5                                      str r2, [r3]
00499e44  04 30 82 e5                                      str r3, [r2, #4]
00499e48  18 20 9d e5                                      ldr r2, [sp, #0x18]
00499e4c  04 20 83 e5                                      str r2, [r3, #4]
00499e50  00 30 82 e5                                      str r3, [r2]
00499e54  14 40 8d e5                                      str r4, [sp, #0x14]
00499e58  18 40 8d e5                                      str r4, [sp, #0x18]
00499e5c  87 ff ff ea                                      b #0x499c80
00499e60  14 30 8d e5                                      str r3, [sp, #0x14]
00499e64  04 40 83 e5                                      str r4, [r3, #4]
00499e68  04 30 95 e5                                      ldr r3, [r5, #4]
00499e6c  18 30 8d e5                                      str r3, [sp, #0x18]
00499e70  00 40 83 e5                                      str r4, [r3]
00499e74  04 50 85 e5                                      str r5, [r5, #4]
00499e78  00 50 85 e5                                      str r5, [r5]
00499e7c  7f ff ff ea                                      b #0x499c80
00499e80  14 20 8d e5                                      str r2, [sp, #0x14]
00499e84  04 40 82 e5                                      str r4, [r2, #4]
00499e88  04 20 93 e5                                      ldr r2, [r3, #4]
00499e8c  18 20 8d e5                                      str r2, [sp, #0x18]
00499e90  00 40 82 e5                                      str r4, [r2]
00499e94  04 30 83 e5                                      str r3, [r3, #4]
00499e98  00 30 83 e5                                      str r3, [r3]
00499e9c  91 ff ff ea                                      b #0x499ce8
00499ea0  00 00 9d e5                                      ldr r0, [sp]
00499ea4  03 00 50 e1                                      cmp r0, r3
00499ea8  c1 ff ff 0a                                      beq #0x499db4
00499eac  00 30 81 e5                                      str r3, [r1]
00499eb0  04 10 83 e5                                      str r1, [r3, #4]
00499eb4  04 30 90 e5                                      ldr r3, [r0, #4]
00499eb8  04 30 81 e5                                      str r3, [r1, #4]
00499ebc  00 10 83 e5                                      str r1, [r3]
00499ec0  04 00 80 e5                                      str r0, [r0, #4]
00499ec4  00 00 80 e5                                      str r0, [r0]
00499ec8  b9 ff ff ea                                      b #0x499db4
00499ecc  00 10 8c e5                                      str r1, [ip]
00499ed0  04 c0 81 e5                                      str ip, [r1, #4]
00499ed4  04 30 92 e5                                      ldr r3, [r2, #4]
00499ed8  04 30 8c e5                                      str r3, [ip, #4]
00499edc  00 c0 83 e5                                      str ip, [r3]
00499ee0  04 20 82 e5                                      str r2, [r2, #4]
00499ee4  00 20 82 e5                                      str r2, [r2]
00499ee8  b1 ff ff ea                                      b #0x499db4
00499eec  07 d1 f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00499ef0  a8 af 4f 00 ac 40 00 00 28 65 42 00              .byte 0xa8, 0xaf, 0x4f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x28, 0x65, 0x42, 0x00

; FUNCTION 0x005103b4, declared_size=104, range_size=104, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv7__ufillIP8PolyStatS1_iEEvT_S3_RKT0_RKSt26random_access_iterator_tagPT1_
; demangled: void std::priv::__ufill<PolyStat*, PolyStat, int>(PolyStat*, PolyStat*, PolyStat const&, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
005103b4  01 30 60 e0                                      rsb r3, r0, r1
005103b8  43 31 a0 e1                                      asr r3, r3, #2
005103bc  70 40 2d e9                                      push {r4, r5, r6, lr}
005103c0  83 51 83 e0                                      add r5, r3, r3, lsl #3
005103c4  02 60 a0 e1                                      mov r6, r2
005103c8  05 53 85 e0                                      add r5, r5, r5, lsl #6
005103cc  85 51 83 e0                                      add r5, r3, r5, lsl #3
005103d0  85 57 85 e0                                      add r5, r5, r5, lsl #15
005103d4  85 51 83 e0                                      add r5, r3, r5, lsl #3
005103d8  00 50 65 e2                                      rsb r5, r5, #0
005103dc  00 00 55 e3                                      cmp r5, #0
005103e0  0c 00 00 da                                      ble #0x510418
005103e4  00 40 a0 e1                                      mov r4, r0
005103e8  00 00 00 ea                                      b #0x5103f0
005103ec  1c 40 84 e2                                      add r4, r4, #0x1c
005103f0  10 40 84 e5                                      str r4, [r4, #0x10]
005103f4  14 40 84 e5                                      str r4, [r4, #0x14]
005103f8  04 00 a0 e1                                      mov r0, r4
005103fc  14 10 96 e5                                      ldr r1, [r6, #0x14]
00510400  10 20 96 e5                                      ldr r2, [r6, #0x10]
00510404  b7 04 f8 eb                                      bl #0x3116e8
00510408  18 30 96 e5                                      ldr r3, [r6, #0x18]
0051040c  01 50 55 e2                                      subs r5, r5, #1
00510410  18 30 84 e5                                      str r3, [r4, #0x18]
00510414  f4 ff ff 1a                                      bne #0x5103ec
00510418  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00535f4c, declared_size=104, range_size=104, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv7__ufillIPN6glitch3gui15CGUIEnvironment11SSpriteBankES4_iEEvT_S6_RKT0_RKSt26random_access_iterator_tagPT1_
; demangled: void std::priv::__ufill<glitch::gui::CGUIEnvironment::SSpriteBank*, glitch::gui::CGUIEnvironment::SSpriteBank, int>(glitch::gui::CGUIEnvironment::SSpriteBank*, glitch::gui::CGUIEnvironment::SSpriteBank*, glitch::gui::CGUIEnvironment::SSpriteBank const&, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00535f4c  01 30 60 e0                                      rsb r3, r0, r1
00535f50  43 31 a0 e1                                      asr r3, r3, #2
00535f54  70 40 2d e9                                      push {r4, r5, r6, lr}
00535f58  83 51 83 e0                                      add r5, r3, r3, lsl #3
00535f5c  02 60 a0 e1                                      mov r6, r2
00535f60  05 53 85 e0                                      add r5, r5, r5, lsl #6
00535f64  85 51 83 e0                                      add r5, r3, r5, lsl #3
00535f68  85 57 85 e0                                      add r5, r5, r5, lsl #15
00535f6c  85 51 83 e0                                      add r5, r3, r5, lsl #3
00535f70  00 50 65 e2                                      rsb r5, r5, #0
00535f74  00 00 55 e3                                      cmp r5, #0
00535f78  0c 00 00 da                                      ble #0x535fb0
00535f7c  00 40 a0 e1                                      mov r4, r0
00535f80  00 00 00 ea                                      b #0x535f88
00535f84  1c 40 84 e2                                      add r4, r4, #0x1c
00535f88  10 40 84 e5                                      str r4, [r4, #0x10]
00535f8c  14 40 84 e5                                      str r4, [r4, #0x14]
00535f90  04 00 a0 e1                                      mov r0, r4
00535f94  14 10 96 e5                                      ldr r1, [r6, #0x14]
00535f98  10 20 96 e5                                      ldr r2, [r6, #0x10]
00535f9c  14 c0 f7 eb                                      bl #0x325ff4
00535fa0  18 30 96 e5                                      ldr r3, [r6, #0x18]
00535fa4  01 50 55 e2                                      subs r5, r5, #1
00535fa8  18 30 84 e5                                      str r3, [r4, #0x18]
00535fac  f4 ff ff 1a                                      bne #0x535f84
00535fb0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00536034, declared_size=104, range_size=104, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv7__ufillIPN6glitch3gui15CGUIEnvironment5SFaceES4_iEEvT_S6_RKT0_RKSt26random_access_iterator_tagPT1_
; demangled: void std::priv::__ufill<glitch::gui::CGUIEnvironment::SFace*, glitch::gui::CGUIEnvironment::SFace, int>(glitch::gui::CGUIEnvironment::SFace*, glitch::gui::CGUIEnvironment::SFace*, glitch::gui::CGUIEnvironment::SFace const&, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00536034  01 30 60 e0                                      rsb r3, r0, r1
00536038  43 31 a0 e1                                      asr r3, r3, #2
0053603c  70 40 2d e9                                      push {r4, r5, r6, lr}
00536040  83 51 83 e0                                      add r5, r3, r3, lsl #3
00536044  02 60 a0 e1                                      mov r6, r2
00536048  05 53 85 e0                                      add r5, r5, r5, lsl #6
0053604c  85 51 83 e0                                      add r5, r3, r5, lsl #3
00536050  85 57 85 e0                                      add r5, r5, r5, lsl #15
00536054  85 51 83 e0                                      add r5, r3, r5, lsl #3
00536058  00 50 65 e2                                      rsb r5, r5, #0
0053605c  00 00 55 e3                                      cmp r5, #0
00536060  0c 00 00 da                                      ble #0x536098
00536064  00 40 a0 e1                                      mov r4, r0
00536068  00 00 00 ea                                      b #0x536070
0053606c  1c 40 84 e2                                      add r4, r4, #0x1c
00536070  10 40 84 e5                                      str r4, [r4, #0x10]
00536074  14 40 84 e5                                      str r4, [r4, #0x14]
00536078  04 00 a0 e1                                      mov r0, r4
0053607c  14 10 96 e5                                      ldr r1, [r6, #0x14]
00536080  10 20 96 e5                                      ldr r2, [r6, #0x10]
00536084  da bf f7 eb                                      bl #0x325ff4
00536088  18 30 96 e5                                      ldr r3, [r6, #0x18]
0053608c  01 50 55 e2                                      subs r5, r5, #1
00536090  18 30 84 e5                                      str r3, [r4, #0x18]
00536094  f4 ff ff 1a                                      bne #0x53606c
00536098  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0053611c, declared_size=88, range_size=88, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv7__ufillIPN6glitch3gui15CGUIEnvironment7STTFontES4_iEEvT_S6_RKT0_RKSt26random_access_iterator_tagPT1_
; demangled: void std::priv::__ufill<glitch::gui::CGUIEnvironment::STTFont*, glitch::gui::CGUIEnvironment::STTFont, int>(glitch::gui::CGUIEnvironment::STTFont*, glitch::gui::CGUIEnvironment::STTFont*, glitch::gui::CGUIEnvironment::STTFont const&, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
0053611c  01 10 60 e0                                      rsb r1, r0, r1
00536120  70 40 2d e9                                      push {r4, r5, r6, lr}
00536124  c1 62 a0 e1                                      asr r6, r1, #5
00536128  00 00 56 e3                                      cmp r6, #0
0053612c  02 50 a0 e1                                      mov r5, r2
00536130  0e 00 00 da                                      ble #0x536170
00536134  00 40 a0 e1                                      mov r4, r0
00536138  00 00 00 ea                                      b #0x536140
0053613c  20 40 84 e2                                      add r4, r4, #0x20
00536140  10 40 84 e5                                      str r4, [r4, #0x10]
00536144  14 40 84 e5                                      str r4, [r4, #0x14]
00536148  04 00 a0 e1                                      mov r0, r4
0053614c  14 10 95 e5                                      ldr r1, [r5, #0x14]
00536150  10 20 95 e5                                      ldr r2, [r5, #0x10]
00536154  a6 bf f7 eb                                      bl #0x325ff4
00536158  18 30 95 e5                                      ldr r3, [r5, #0x18]
0053615c  01 60 56 e2                                      subs r6, r6, #1
00536160  18 30 84 e5                                      str r3, [r4, #0x18]
00536164  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
00536168  1c 30 84 e5                                      str r3, [r4, #0x1c]
0053616c  f2 ff ff 1a                                      bne #0x53613c
00536170  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005361e0, declared_size=104, range_size=104, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv7__ufillIPN6glitch3gui15CGUIEnvironment5SFontES4_iEEvT_S6_RKT0_RKSt26random_access_iterator_tagPT1_
; demangled: void std::priv::__ufill<glitch::gui::CGUIEnvironment::SFont*, glitch::gui::CGUIEnvironment::SFont, int>(glitch::gui::CGUIEnvironment::SFont*, glitch::gui::CGUIEnvironment::SFont*, glitch::gui::CGUIEnvironment::SFont const&, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
005361e0  01 30 60 e0                                      rsb r3, r0, r1
005361e4  43 31 a0 e1                                      asr r3, r3, #2
005361e8  70 40 2d e9                                      push {r4, r5, r6, lr}
005361ec  83 51 83 e0                                      add r5, r3, r3, lsl #3
005361f0  02 60 a0 e1                                      mov r6, r2
005361f4  05 53 85 e0                                      add r5, r5, r5, lsl #6
005361f8  85 51 83 e0                                      add r5, r3, r5, lsl #3
005361fc  85 57 85 e0                                      add r5, r5, r5, lsl #15
00536200  85 51 83 e0                                      add r5, r3, r5, lsl #3
00536204  00 50 65 e2                                      rsb r5, r5, #0
00536208  00 00 55 e3                                      cmp r5, #0
0053620c  0c 00 00 da                                      ble #0x536244
00536210  00 40 a0 e1                                      mov r4, r0
00536214  00 00 00 ea                                      b #0x53621c
00536218  1c 40 84 e2                                      add r4, r4, #0x1c
0053621c  10 40 84 e5                                      str r4, [r4, #0x10]
00536220  14 40 84 e5                                      str r4, [r4, #0x14]
00536224  04 00 a0 e1                                      mov r0, r4
00536228  14 10 96 e5                                      ldr r1, [r6, #0x14]
0053622c  10 20 96 e5                                      ldr r2, [r6, #0x10]
00536230  6f bf f7 eb                                      bl #0x325ff4
00536234  18 30 96 e5                                      ldr r3, [r6, #0x18]
00536238  01 50 55 e2                                      subs r5, r5, #1
0053623c  18 30 84 e5                                      str r3, [r4, #0x18]
00536240  f4 ff ff 1a                                      bne #0x536218
00536244  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005502f0, declared_size=100, range_size=100, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv7__ufillIPSbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS3_6memory13E_MEMORY_HINTE0EEEES9_iEEvT_SB_RKT0_RKSt26random_access_iterator_tagPT1_
; demangled: void std::priv::__ufill<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >*, std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, int>(std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >*, std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >*, std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> > const&, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
005502f0  01 30 60 e0                                      rsb r3, r0, r1
005502f4  c3 31 a0 e1                                      asr r3, r3, #3
005502f8  70 40 2d e9                                      push {r4, r5, r6, lr}
005502fc  02 60 a0 e1                                      mov r6, r2
00550300  83 21 a0 e1                                      lsl r2, r3, #3
00550304  02 20 63 e0                                      rsb r2, r3, r2
00550308  02 23 82 e0                                      add r2, r2, r2, lsl #6
0055030c  82 21 83 e0                                      add r2, r3, r2, lsl #3
00550310  82 57 a0 e1                                      lsl r5, r2, #0xf
00550314  05 50 62 e0                                      rsb r5, r2, r5
00550318  85 51 83 e0                                      add r5, r3, r5, lsl #3
0055031c  00 00 55 e3                                      cmp r5, #0
00550320  0a 00 00 da                                      ble #0x550350
00550324  00 40 a0 e1                                      mov r4, r0
00550328  00 00 00 ea                                      b #0x550330
0055032c  48 40 84 e2                                      add r4, r4, #0x48
00550330  40 40 84 e5                                      str r4, [r4, #0x40]
00550334  44 40 84 e5                                      str r4, [r4, #0x44]
00550338  04 00 a0 e1                                      mov r0, r4
0055033c  44 10 96 e5                                      ldr r1, [r6, #0x44]
00550340  40 20 96 e5                                      ldr r2, [r6, #0x40]
00550344  b8 56 f7 eb                                      bl #0x325e2c
00550348  01 50 55 e2                                      subs r5, r5, #1
0055034c  f6 ff ff 1a                                      bne #0x55032c
00550350  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00555fa0, declared_size=108, range_size=108, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv7__ufillIPN6glitch3gui9CGUITable6ColumnES4_iEEvT_S6_RKT0_RKSt26random_access_iterator_tagPT1_
; demangled: void std::priv::__ufill<glitch::gui::CGUITable::Column*, glitch::gui::CGUITable::Column, int>(glitch::gui::CGUITable::Column*, glitch::gui::CGUITable::Column*, glitch::gui::CGUITable::Column const&, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00555fa0  70 40 2d e9                                      push {r4, r5, r6, lr}
00555fa4  3d 3f 0c e3                                      movw r3, #0xcf3d
00555fa8  01 60 60 e0                                      rsb r6, r0, r1
00555fac  46 61 a0 e1                                      asr r6, r6, #2
00555fb0  f3 3c 43 e3                                      movt r3, #0x3cf3
00555fb4  93 06 06 e0                                      mul r6, r3, r6
00555fb8  02 50 a0 e1                                      mov r5, r2
00555fbc  00 00 56 e3                                      cmp r6, #0
00555fc0  10 00 00 da                                      ble #0x556008
00555fc4  00 40 a0 e1                                      mov r4, r0
00555fc8  00 00 00 ea                                      b #0x555fd0
00555fcc  54 40 84 e2                                      add r4, r4, #0x54
00555fd0  40 40 84 e5                                      str r4, [r4, #0x40]
00555fd4  44 40 84 e5                                      str r4, [r4, #0x44]
00555fd8  04 00 a0 e1                                      mov r0, r4
00555fdc  44 10 95 e5                                      ldr r1, [r5, #0x44]
00555fe0  40 20 95 e5                                      ldr r2, [r5, #0x40]
00555fe4  90 3f f7 eb                                      bl #0x325e2c
00555fe8  48 30 95 e5                                      ldr r3, [r5, #0x48]
00555fec  01 60 56 e2                                      subs r6, r6, #1
00555ff0  48 30 84 e5                                      str r3, [r4, #0x48]
00555ff4  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
00555ff8  4c 30 84 e5                                      str r3, [r4, #0x4c]
00555ffc  50 30 95 e5                                      ldr r3, [r5, #0x50]
00556000  50 30 84 e5                                      str r3, [r4, #0x50]
00556004  f0 ff ff 1a                                      bne #0x555fcc
00556008  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005581f8, declared_size=108, range_size=108, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv6__fillIPN6glitch3gui9CGUITable6ColumnES4_iEEvT_S6_RKT0_RKSt26random_access_iterator_tagPT1_
; demangled: void std::priv::__fill<glitch::gui::CGUITable::Column*, glitch::gui::CGUITable::Column, int>(glitch::gui::CGUITable::Column*, glitch::gui::CGUITable::Column*, glitch::gui::CGUITable::Column const&, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
005581f8  70 40 2d e9                                      push {r4, r5, r6, lr}
005581fc  3d 3f 0c e3                                      movw r3, #0xcf3d
00558200  01 60 60 e0                                      rsb r6, r0, r1
00558204  46 61 a0 e1                                      asr r6, r6, #2
00558208  f3 3c 43 e3                                      movt r3, #0x3cf3
0055820c  93 06 06 e0                                      mul r6, r3, r6
00558210  00 40 a0 e1                                      mov r4, r0
00558214  00 00 56 e3                                      cmp r6, #0
00558218  02 50 a0 e1                                      mov r5, r2
0055821c  01 00 00 ca                                      bgt #0x558228
00558220  0e 00 00 ea                                      b #0x558260
00558224  54 40 84 e2                                      add r4, r4, #0x54
00558228  05 00 54 e1                                      cmp r4, r5
0055822c  04 00 a0 e1                                      mov r0, r4
00558230  02 00 00 0a                                      beq #0x558240
00558234  44 10 95 e5                                      ldr r1, [r5, #0x44]
00558238  40 20 95 e5                                      ldr r2, [r5, #0x40]
0055823c  d7 2b f7 eb                                      bl #0x3231a0
00558240  48 30 95 e5                                      ldr r3, [r5, #0x48]
00558244  01 60 56 e2                                      subs r6, r6, #1
00558248  48 30 84 e5                                      str r3, [r4, #0x48]
0055824c  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
00558250  4c 30 84 e5                                      str r3, [r4, #0x4c]
00558254  50 30 95 e5                                      ldr r3, [r5, #0x50]
00558258  50 30 84 e5                                      str r3, [r4, #0x50]
0055825c  f0 ff ff 1a                                      bne #0x558224
00558260  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00572a60, declared_size=92, range_size=92, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv7__ufillIPN6glitch2io14CXMLReaderImplIcNS1_17IReferenceCountedEE10SAttributeES6_iEEvT_S8_RKT0_RKSt26random_access_iterator_tagPT1_
; demangled: void std::priv::__ufill<glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute*, glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute, int>(glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute*, glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute*, glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute const&, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00572a60  01 30 60 e0                                      rsb r3, r0, r1
00572a64  43 32 a0 e1                                      asr r3, r3, #4
00572a68  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00572a6c  03 51 83 e0                                      add r5, r3, r3, lsl #2
00572a70  02 60 a0 e1                                      mov r6, r2
00572a74  05 52 85 e0                                      add r5, r5, r5, lsl #4
00572a78  05 54 85 e0                                      add r5, r5, r5, lsl #8
00572a7c  05 58 85 e0                                      add r5, r5, r5, lsl #16
00572a80  85 50 83 e0                                      add r5, r3, r5, lsl #1
00572a84  00 00 55 e3                                      cmp r5, #0
00572a88  0a 00 00 da                                      ble #0x572ab8
00572a8c  00 40 a0 e1                                      mov r4, r0
00572a90  18 70 82 e2                                      add r7, r2, #0x18
00572a94  04 00 a0 e1                                      mov r0, r4
00572a98  06 10 a0 e1                                      mov r1, r6
00572a9c  91 c0 ff eb                                      bl #0x562ce8
00572aa0  18 00 84 e2                                      add r0, r4, #0x18
00572aa4  07 10 a0 e1                                      mov r1, r7
00572aa8  8e c0 ff eb                                      bl #0x562ce8
00572aac  01 50 55 e2                                      subs r5, r5, #1
00572ab0  30 40 84 e2                                      add r4, r4, #0x30
00572ab4  f6 ff ff 1a                                      bne #0x572a94
00572ab8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00572b58, declared_size=100, range_size=100, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv7__ufillIPN6glitch2io14CXMLReaderImplIwNS1_17IReferenceCountedEE10SAttributeES6_iEEvT_S8_RKT0_RKSt26random_access_iterator_tagPT1_
; demangled: void std::priv::__ufill<glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute*, glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute, int>(glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute*, glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute*, glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute const&, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00572b58  01 30 60 e0                                      rsb r3, r0, r1
00572b5c  43 32 a0 e1                                      asr r3, r3, #4
00572b60  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00572b64  02 60 a0 e1                                      mov r6, r2
00572b68  83 21 a0 e1                                      lsl r2, r3, #3
00572b6c  02 20 63 e0                                      rsb r2, r3, r2
00572b70  02 23 82 e0                                      add r2, r2, r2, lsl #6
00572b74  82 21 83 e0                                      add r2, r3, r2, lsl #3
00572b78  82 57 a0 e1                                      lsl r5, r2, #0xf
00572b7c  05 50 62 e0                                      rsb r5, r2, r5
00572b80  85 51 83 e0                                      add r5, r3, r5, lsl #3
00572b84  00 00 55 e3                                      cmp r5, #0
00572b88  0a 00 00 da                                      ble #0x572bb8
00572b8c  00 40 a0 e1                                      mov r4, r0
00572b90  48 70 86 e2                                      add r7, r6, #0x48
00572b94  04 00 a0 e1                                      mov r0, r4
00572b98  06 10 a0 e1                                      mov r1, r6
00572b9c  e4 ff ff eb                                      bl #0x572b34
00572ba0  48 00 84 e2                                      add r0, r4, #0x48
00572ba4  07 10 a0 e1                                      mov r1, r7
00572ba8  e1 ff ff eb                                      bl #0x572b34
00572bac  01 50 55 e2                                      subs r5, r5, #1
00572bb0  90 40 84 e2                                      add r4, r4, #0x90
00572bb4  f6 ff ff 1a                                      bne #0x572b94
00572bb8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005796e0, declared_size=148, range_size=148, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv7__ufillIPN6glitch5scene10CBatchMesh6SBatchES4_iEEvT_S6_RKT0_RKSt26random_access_iterator_tagPT1_
; demangled: void std::priv::__ufill<glitch::scene::CBatchMesh::SBatch*, glitch::scene::CBatchMesh::SBatch, int>(glitch::scene::CBatchMesh::SBatch*, glitch::scene::CBatchMesh::SBatch*, glitch::scene::CBatchMesh::SBatch const&, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
005796e0  01 30 60 e0                                      rsb r3, r0, r1
005796e4  43 31 a0 e1                                      asr r3, r3, #2
005796e8  83 10 83 e0                                      add r1, r3, r3, lsl #1
005796ec  01 12 81 e0                                      add r1, r1, r1, lsl #4
005796f0  01 14 81 e0                                      add r1, r1, r1, lsl #8
005796f4  01 18 81 e0                                      add r1, r1, r1, lsl #16
005796f8  01 31 83 e0                                      add r3, r3, r1, lsl #2
005796fc  00 00 53 e3                                      cmp r3, #0
00579700  1e ff 2f d1                                      bxle lr
00579704  00 10 92 e5                                      ldr r1, [r2]
00579708  00 10 80 e5                                      str r1, [r0]
0057970c  00 00 51 e3                                      cmp r1, #0
00579710  04 c0 91 15                                      ldrne ip, [r1, #4]
00579714  01 c0 8c 12                                      addne ip, ip, #1
00579718  04 c0 81 15                                      strne ip, [r1, #4]
0057971c  04 10 92 e5                                      ldr r1, [r2, #4]
00579720  04 10 80 e5                                      str r1, [r0, #4]
00579724  00 00 51 e3                                      cmp r1, #0
00579728  00 c0 91 15                                      ldrne ip, [r1]
0057972c  01 c0 8c 12                                      addne ip, ip, #1
00579730  00 c0 81 15                                      strne ip, [r1]
00579734  08 10 92 e5                                      ldr r1, [r2, #8]
00579738  00 00 51 e3                                      cmp r1, #0
0057973c  08 10 80 e5                                      str r1, [r0, #8]
00579740  00 c0 91 15                                      ldrne ip, [r1]
00579744  01 c0 8c 12                                      addne ip, ip, #1
00579748  00 c0 81 15                                      strne ip, [r1]
0057974c  bc 10 d2 e1                                      ldrh r1, [r2, #0xc]
00579750  01 30 53 e2                                      subs r3, r3, #1
00579754  bc 10 c0 e1                                      strh r1, [r0, #0xc]
00579758  be 10 d2 e1                                      ldrh r1, [r2, #0xe]
0057975c  be 10 c0 e1                                      strh r1, [r0, #0xe]
00579760  b0 11 d2 e1                                      ldrh r1, [r2, #0x10]
00579764  b0 11 c0 e1                                      strh r1, [r0, #0x10]
00579768  1e ff 2f 01                                      bxeq lr
0057976c  14 00 80 e2                                      add r0, r0, #0x14
00579770  e3 ff ff ea                                      b #0x579704

; FUNCTION 0x005d823c, declared_size=124, range_size=124, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv6__fillIPN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS1_5video17CMaterialRendererEEEtLb0ENS7_6detail23materialrenderermanager11SPropertiesENS3_15sidedcollection12SValueTraitsEE6SEntryESG_iEEvT_SI_RKT0_RKSt26random_access_iterator_tagPT1_
; demangled: void std::priv::__fill<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, int>(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::CMaterialRenderer>, unsigned short, false, glitch::video::detail::materialrenderermanager::SProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry const&, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
005d823c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005d8240  01 10 60 e0                                      rsb r1, r0, r1
005d8244  c1 51 a0 e1                                      asr r5, r1, #3
005d8248  00 00 55 e3                                      cmp r5, #0
005d824c  0c d0 4d e2                                      sub sp, sp, #0xc
005d8250  00 40 a0 e1                                      mov r4, r0
005d8254  02 80 a0 e1                                      mov r8, r2
005d8258  14 00 00 da                                      ble #0x5d82b0
005d825c  00 70 a0 e3                                      mov r7, #0
005d8260  04 a0 8d e2                                      add sl, sp, #4
005d8264  00 30 98 e5                                      ldr r3, [r8]
005d8268  04 60 a0 e1                                      mov r6, r4
005d826c  0a 00 a0 e1                                      mov r0, sl
005d8270  00 00 53 e3                                      cmp r3, #0
005d8274  04 30 8d e5                                      str r3, [sp, #4]
005d8278  00 20 93 15                                      ldrne r2, [r3]
005d827c  03 20 a0 01                                      moveq r2, r3
005d8280  01 20 82 12                                      addne r2, r2, #1
005d8284  00 20 83 15                                      strne r2, [r3]
005d8288  04 20 9d 15                                      ldrne r2, [sp, #4]
005d828c  07 30 94 e7                                      ldr r3, [r4, r7]
005d8290  07 20 a6 e7                                      str r2, [r6, r7]!
005d8294  04 30 8d e5                                      str r3, [sp, #4]
005d8298  06 e8 f5 eb                                      bl #0x3522b8
005d829c  04 30 98 e5                                      ldr r3, [r8, #4]
005d82a0  01 50 55 e2                                      subs r5, r5, #1
005d82a4  08 70 87 e2                                      add r7, r7, #8
005d82a8  04 30 86 e5                                      str r3, [r6, #4]
005d82ac  ec ff ff 1a                                      bne #0x5d8264
005d82b0  0c d0 8d e2                                      add sp, sp, #0xc
005d82b4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x005e56a8, declared_size=92, range_size=92, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv7__ufillIPSbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS3_6memory13E_MEMORY_HINTE0EEEES9_iEEvT_SB_RKT0_RKSt26random_access_iterator_tagPT1_
; demangled: void std::priv::__ufill<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >*, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, int>(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >*, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >*, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
005e56a8  01 30 60 e0                                      rsb r3, r0, r1
005e56ac  c3 31 a0 e1                                      asr r3, r3, #3
005e56b0  70 40 2d e9                                      push {r4, r5, r6, lr}
005e56b4  03 51 83 e0                                      add r5, r3, r3, lsl #2
005e56b8  02 60 a0 e1                                      mov r6, r2
005e56bc  05 52 85 e0                                      add r5, r5, r5, lsl #4
005e56c0  05 54 85 e0                                      add r5, r5, r5, lsl #8
005e56c4  05 58 85 e0                                      add r5, r5, r5, lsl #16
005e56c8  85 50 83 e0                                      add r5, r3, r5, lsl #1
005e56cc  00 00 55 e3                                      cmp r5, #0
005e56d0  0a 00 00 da                                      ble #0x5e5700
005e56d4  00 40 a0 e1                                      mov r4, r0
005e56d8  00 00 00 ea                                      b #0x5e56e0
005e56dc  18 40 84 e2                                      add r4, r4, #0x18
005e56e0  10 40 84 e5                                      str r4, [r4, #0x10]
005e56e4  14 40 84 e5                                      str r4, [r4, #0x14]
005e56e8  04 00 a0 e1                                      mov r0, r4
005e56ec  14 10 96 e5                                      ldr r1, [r6, #0x14]
005e56f0  10 20 96 e5                                      ldr r2, [r6, #0x10]
005e56f4  3e 02 f5 eb                                      bl #0x325ff4
005e56f8  01 50 55 e2                                      subs r5, r5, #1
005e56fc  f6 ff ff 1a                                      bne #0x5e56dc
005e5700  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005e5dfc, declared_size=100, range_size=100, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv6__fillIPN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS1_5video7IShaderEEEtLb0ENS7_6detail13shadermanager17SShaderPropertiesENS3_15sidedcollection12SValueTraitsEE6SEntryESG_iEEvT_SI_RKT0_RKSt26random_access_iterator_tagPT1_
; demangled: void std::priv::__fill<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, int>(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShader>, unsigned short, false, glitch::video::detail::shadermanager::SShaderProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry const&, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
005e5dfc  01 10 60 e0                                      rsb r1, r0, r1
005e5e00  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005e5e04  c1 51 a0 e1                                      asr r5, r1, #3
005e5e08  00 00 55 e3                                      cmp r5, #0
005e5e0c  00 40 a0 e1                                      mov r4, r0
005e5e10  02 70 a0 e1                                      mov r7, r2
005e5e14  10 00 00 da                                      ble #0x5e5e5c
005e5e18  00 60 a0 e3                                      mov r6, #0
005e5e1c  00 30 97 e5                                      ldr r3, [r7]
005e5e20  00 00 53 e3                                      cmp r3, #0
005e5e24  04 20 93 15                                      ldrne r2, [r3, #4]
005e5e28  01 20 82 12                                      addne r2, r2, #1
005e5e2c  04 20 83 15                                      strne r2, [r3, #4]
005e5e30  06 00 94 e7                                      ldr r0, [r4, r6]
005e5e34  06 30 84 e7                                      str r3, [r4, r6]
005e5e38  00 00 50 e3                                      cmp r0, #0
005e5e3c  00 00 00 0a                                      beq #0x5e5e44
005e5e40  cf dd f4 eb                                      bl #0x31d584
005e5e44  04 20 97 e5                                      ldr r2, [r7, #4]
005e5e48  06 30 84 e0                                      add r3, r4, r6
005e5e4c  01 50 55 e2                                      subs r5, r5, #1
005e5e50  04 20 83 e5                                      str r2, [r3, #4]
005e5e54  08 60 86 e2                                      add r6, r6, #8
005e5e58  ef ff ff 1a                                      bne #0x5e5e1c
005e5e5c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006390ac, declared_size=100, range_size=100, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv25__unguarded_linear_insertIPN6glitch2ps12GNPSParticleES3_NS2_9AlphaSortIS3_EEEEvT_T0_T1_
; demangled: void std::priv::__unguarded_linear_insert<glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle, glitch::ps::AlphaSort<glitch::ps::GNPSParticle> >(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle, glitch::ps::AlphaSort<glitch::ps::GNPSParticle>)
; decoder-mode: arm
006390ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006390b0  9c 40 40 e2                                      sub r4, r0, #0x9c
006390b4  00 60 a0 e1                                      mov r6, r0
006390b8  01 70 a0 e1                                      mov r7, r1
006390bc  98 00 94 e5                                      ldr r0, [r4, #0x98]
006390c0  98 10 91 e5                                      ldr r1, [r1, #0x98]
006390c4  90 55 f3 eb                                      bl #0x30e70c
006390c8  00 00 50 e3                                      cmp r0, #0
006390cc  01 00 00 1a                                      bne #0x6390d8
006390d0  0a 00 00 ea                                      b #0x639100
006390d4  05 40 a0 e1                                      mov r4, r5
006390d8  06 00 a0 e1                                      mov r0, r6
006390dc  04 10 a0 e1                                      mov r1, r4
006390e0  9c 50 44 e2                                      sub r5, r4, #0x9c
006390e4  51 fb ff eb                                      bl #0x637e30
006390e8  98 00 95 e5                                      ldr r0, [r5, #0x98]
006390ec  98 10 97 e5                                      ldr r1, [r7, #0x98]
006390f0  85 55 f3 eb                                      bl #0x30e70c
006390f4  00 00 50 e3                                      cmp r0, #0
006390f8  04 60 a0 e1                                      mov r6, r4
006390fc  f4 ff ff 1a                                      bne #0x6390d4
00639100  06 00 a0 e1                                      mov r0, r6
00639104  07 10 a0 e1                                      mov r1, r7
00639108  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0063910c  47 fb ff ea                                      b #0x637e30

; FUNCTION 0x00639110, declared_size=80, range_size=80, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv30__unguarded_insertion_sort_auxIPN6glitch2ps12GNPSParticleES3_NS2_9AlphaSortIS3_EEEEvT_S7_PT0_T1_
; demangled: void std::priv::__unguarded_insertion_sort_aux<glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle, glitch::ps::AlphaSort<glitch::ps::GNPSParticle> >(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*, glitch::ps::AlphaSort<glitch::ps::GNPSParticle>)
; decoder-mode: arm
00639110  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00639114  01 00 50 e1                                      cmp r0, r1
00639118  a4 d0 4d e2                                      sub sp, sp, #0xa4
0063911c  01 60 a0 e1                                      mov r6, r1
00639120  0c 00 00 0a                                      beq #0x639158
00639124  00 40 a0 e1                                      mov r4, r0
00639128  0d 50 a0 e1                                      mov r5, sp
0063912c  9c 70 8d e2                                      add r7, sp, #0x9c
00639130  04 10 a0 e1                                      mov r1, r4
00639134  0d 00 a0 e1                                      mov r0, sp
00639138  ed fa ff eb                                      bl #0x637cf4
0063913c  04 00 a0 e1                                      mov r0, r4
00639140  0d 10 a0 e1                                      mov r1, sp
00639144  07 20 a0 e1                                      mov r2, r7
00639148  9c 40 84 e2                                      add r4, r4, #0x9c
0063914c  d6 ff ff eb                                      bl #0x6390ac
00639150  04 00 56 e1                                      cmp r6, r4
00639154  f5 ff ff 1a                                      bne #0x639130
00639158  a4 d0 8d e2                                      add sp, sp, #0xa4
0063915c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00639160, declared_size=156, range_size=156, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv15__linear_insertIPN6glitch2ps12GNPSParticleES3_NS2_9AlphaSortIS3_EEEEvT_S7_T0_T1_
; demangled: void std::priv::__linear_insert<glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle, glitch::ps::AlphaSort<glitch::ps::GNPSParticle> >(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle, glitch::ps::AlphaSort<glitch::ps::GNPSParticle>)
; decoder-mode: arm
00639160  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00639164  00 70 a0 e1                                      mov r7, r0
00639168  a0 d0 4d e2                                      sub sp, sp, #0xa0
0063916c  01 50 a0 e1                                      mov r5, r1
00639170  98 00 90 e5                                      ldr r0, [r0, #0x98]
00639174  98 10 92 e5                                      ldr r1, [r2, #0x98]
00639178  02 80 a0 e1                                      mov r8, r2
0063917c  62 55 f3 eb                                      bl #0x30e70c
00639180  00 00 50 e3                                      cmp r0, #0
00639184  13 00 00 0a                                      beq #0x6391d8
00639188  05 40 67 e0                                      rsb r4, r7, r5
0063918c  97 3f 06 e3                                      movw r3, #0x6f97
00639190  44 41 a0 e1                                      asr r4, r4, #2
00639194  f9 36 49 e3                                      movt r3, #0x96f9
00639198  93 04 04 e0                                      mul r4, r3, r4
0063919c  00 00 54 e3                                      cmp r4, #0
006391a0  01 00 00 ca                                      bgt #0x6391ac
006391a4  06 00 00 ea                                      b #0x6391c4
006391a8  06 50 a0 e1                                      mov r5, r6
006391ac  9c 60 45 e2                                      sub r6, r5, #0x9c
006391b0  05 00 a0 e1                                      mov r0, r5
006391b4  06 10 a0 e1                                      mov r1, r6
006391b8  1c fb ff eb                                      bl #0x637e30
006391bc  01 40 54 e2                                      subs r4, r4, #1
006391c0  f8 ff ff 1a                                      bne #0x6391a8
006391c4  07 00 a0 e1                                      mov r0, r7
006391c8  08 10 a0 e1                                      mov r1, r8
006391cc  17 fb ff eb                                      bl #0x637e30
006391d0  a0 d0 8d e2                                      add sp, sp, #0xa0
006391d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006391d8  08 10 a0 e1                                      mov r1, r8
006391dc  0d 00 a0 e1                                      mov r0, sp
006391e0  c3 fa ff eb                                      bl #0x637cf4
006391e4  05 00 a0 e1                                      mov r0, r5
006391e8  0d 10 a0 e1                                      mov r1, sp
006391ec  9c 20 8d e2                                      add r2, sp, #0x9c
006391f0  0d 40 a0 e1                                      mov r4, sp
006391f4  ac ff ff eb                                      bl #0x6390ac
006391f8  f4 ff ff ea                                      b #0x6391d0

; FUNCTION 0x006391fc, declared_size=96, range_size=96, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv16__insertion_sortIPN6glitch2ps12GNPSParticleES3_NS2_9AlphaSortIS3_EEEEvT_S7_PT0_T1_
; demangled: void std::priv::__insertion_sort<glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle, glitch::ps::AlphaSort<glitch::ps::GNPSParticle> >(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*, glitch::ps::AlphaSort<glitch::ps::GNPSParticle>)
; decoder-mode: arm
006391fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00639200  01 00 50 e1                                      cmp r0, r1
00639204  a0 d0 4d e2                                      sub sp, sp, #0xa0
00639208  00 60 a0 e1                                      mov r6, r0
0063920c  01 70 a0 e1                                      mov r7, r1
00639210  0f 00 00 0a                                      beq #0x639254
00639214  9c 40 80 e2                                      add r4, r0, #0x9c
00639218  04 00 51 e1                                      cmp r1, r4
0063921c  0c 00 00 0a                                      beq #0x639254
00639220  0d 50 a0 e1                                      mov r5, sp
00639224  9c 80 8d e2                                      add r8, sp, #0x9c
00639228  04 10 a0 e1                                      mov r1, r4
0063922c  0d 00 a0 e1                                      mov r0, sp
00639230  af fa ff eb                                      bl #0x637cf4
00639234  04 10 a0 e1                                      mov r1, r4
00639238  06 00 a0 e1                                      mov r0, r6
0063923c  0d 20 a0 e1                                      mov r2, sp
00639240  08 30 a0 e1                                      mov r3, r8
00639244  9c 40 84 e2                                      add r4, r4, #0x9c
00639248  c4 ff ff eb                                      bl #0x639160
0063924c  04 00 57 e1                                      cmp r7, r4
00639250  f4 ff ff 1a                                      bne #0x639228
00639254  a0 d0 8d e2                                      add sp, sp, #0xa0
00639258  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0063925c, declared_size=96, range_size=96, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv22__final_insertion_sortIPN6glitch2ps12GNPSParticleENS2_9AlphaSortIS3_EEEEvT_S7_T0_
; demangled: void std::priv::__final_insertion_sort<glitch::ps::GNPSParticle*, glitch::ps::AlphaSort<glitch::ps::GNPSParticle> >(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*, glitch::ps::AlphaSort<glitch::ps::GNPSParticle>)
; decoder-mode: arm
0063925c  30 40 2d e9                                      push {r4, r5, lr}
00639260  01 20 60 e0                                      rsb r2, r0, r1
00639264  5b 3a 00 e3                                      movw r3, #0xa5b
00639268  03 00 52 e1                                      cmp r2, r3
0063926c  14 d0 4d e2                                      sub sp, sp, #0x14
00639270  00 50 a0 e1                                      mov r5, r0
00639274  01 40 a0 e1                                      mov r4, r1
00639278  0b 00 00 da                                      ble #0x6392ac
0063927c  27 5d 80 e2                                      add r5, r0, #0x9c0
00639280  0c 30 8d e2                                      add r3, sp, #0xc
00639284  05 10 a0 e1                                      mov r1, r5
00639288  00 20 a0 e3                                      mov r2, #0
0063928c  da ff ff eb                                      bl #0x6391fc
00639290  05 00 a0 e1                                      mov r0, r5
00639294  04 10 a0 e1                                      mov r1, r4
00639298  00 20 a0 e3                                      mov r2, #0
0063929c  04 30 8d e2                                      add r3, sp, #4
006392a0  9a ff ff eb                                      bl #0x639110
006392a4  14 d0 8d e2                                      add sp, sp, #0x14
006392a8  30 80 bd e8                                      pop {r4, r5, pc}
006392ac  00 20 a0 e3                                      mov r2, #0
006392b0  08 30 8d e2                                      add r3, sp, #8
006392b4  d0 ff ff eb                                      bl #0x6391fc
006392b8  f9 ff ff ea                                      b #0x6392a4

; FUNCTION 0x00639570, declared_size=212, range_size=212, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv14__partial_sortIPN6glitch2ps12GNPSParticleES3_NS2_9AlphaSortIS3_EEEEvT_S7_S7_PT0_T1_
; demangled: void std::priv::__partial_sort<glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle, glitch::ps::AlphaSort<glitch::ps::GNPSParticle> >(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*, glitch::ps::AlphaSort<glitch::ps::GNPSParticle>)
; decoder-mode: arm
00639570  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00639574  00 a0 a0 e3                                      mov sl, #0
00639578  b0 d0 4d e2                                      sub sp, sp, #0xb0
0063957c  02 70 a0 e1                                      mov r7, r2
00639580  01 60 a0 e1                                      mov r6, r1
00639584  a8 20 8d e2                                      add r2, sp, #0xa8
00639588  0a 30 a0 e1                                      mov r3, sl
0063958c  00 a0 8d e5                                      str sl, [sp]
00639590  00 50 a0 e1                                      mov r5, r0
00639594  a9 ff ff eb                                      bl #0x639440
00639598  07 00 56 e1                                      cmp r6, r7
0063959c  17 00 00 2a                                      bhs #0x639600
006395a0  06 40 a0 e1                                      mov r4, r6
006395a4  08 80 8d e2                                      add r8, sp, #8
006395a8  ac 90 8d e2                                      add sb, sp, #0xac
006395ac  02 00 00 ea                                      b #0x6395bc
006395b0  9c 40 84 e2                                      add r4, r4, #0x9c
006395b4  04 00 57 e1                                      cmp r7, r4
006395b8  10 00 00 9a                                      bls #0x639600
006395bc  98 10 94 e5                                      ldr r1, [r4, #0x98]
006395c0  98 00 95 e5                                      ldr r0, [r5, #0x98]
006395c4  50 54 f3 eb                                      bl #0x30e70c
006395c8  00 00 50 e3                                      cmp r0, #0
006395cc  f7 ff ff 0a                                      beq #0x6395b0
006395d0  04 10 a0 e1                                      mov r1, r4
006395d4  08 00 a0 e1                                      mov r0, r8
006395d8  c5 f9 ff eb                                      bl #0x637cf4
006395dc  04 20 a0 e1                                      mov r2, r4
006395e0  05 00 a0 e1                                      mov r0, r5
006395e4  06 10 a0 e1                                      mov r1, r6
006395e8  08 30 a0 e1                                      mov r3, r8
006395ec  9c 40 84 e2                                      add r4, r4, #0x9c
006395f0  00 06 8d e8                                      stm sp, {sb, sl}
006395f4  b1 ff ff eb                                      bl #0x6394c0
006395f8  04 00 57 e1                                      cmp r7, r4
006395fc  ee ff ff 8a                                      bhi #0x6395bc
00639600  06 70 65 e0                                      rsb r7, r5, r6
00639604  37 81 00 e3                                      movw r8, #0x137
00639608  08 00 57 e1                                      cmp r7, r8
0063960c  0a 00 00 da                                      ble #0x63963c
00639610  00 40 a0 e3                                      mov r4, #0
00639614  a4 a0 8d e2                                      add sl, sp, #0xa4
00639618  04 10 86 e0                                      add r1, r6, r4
0063961c  0a 30 a0 e1                                      mov r3, sl
00639620  9c 40 44 e2                                      sub r4, r4, #0x9c
00639624  05 00 a0 e1                                      mov r0, r5
00639628  00 20 a0 e3                                      mov r2, #0
0063962c  bc ff ff eb                                      bl #0x639524
00639630  04 30 87 e0                                      add r3, r7, r4
00639634  08 00 53 e1                                      cmp r3, r8
00639638  f6 ff ff ca                                      bgt #0x639618
0063963c  b0 d0 8d e2                                      add sp, sp, #0xb0
00639640  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00639644, declared_size=448, range_size=448, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv16__introsort_loopIPN6glitch2ps12GNPSParticleES3_iNS2_9AlphaSortIS3_EEEEvT_S7_PT0_T1_T2_
; demangled: void std::priv::__introsort_loop<glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle, int, glitch::ps::AlphaSort<glitch::ps::GNPSParticle> >(glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*, int, glitch::ps::AlphaSort<glitch::ps::GNPSParticle>)
; decoder-mode: arm
00639644  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00639648  01 20 60 e0                                      rsb r2, r0, r1
0063964c  01 70 a0 e1                                      mov r7, r1
00639650  5b 1a 00 e3                                      movw r1, #0xa5b
00639654  01 00 52 e1                                      cmp r2, r1
00639658  c4 d0 4d e2                                      sub sp, sp, #0xc4
0063965c  00 50 a0 e1                                      mov r5, r0
00639660  03 60 a0 e1                                      mov r6, r3
00639664  57 00 00 da                                      ble #0x6397c8
00639668  00 00 53 e3                                      cmp r3, #0
0063966c  4e 00 00 0a                                      beq #0x6397ac
00639670  97 3f 06 e3                                      movw r3, #0x6f97
00639674  f9 36 49 e3                                      movt r3, #0x96f9
00639678  0c 30 8d e5                                      str r3, [sp, #0xc]
0063967c  1c c0 8d e2                                      add ip, sp, #0x1c
00639680  bc 30 8d e2                                      add r3, sp, #0xbc
00639684  10 c0 8d e5                                      str ip, [sp, #0x10]
00639688  14 30 8d e5                                      str r3, [sp, #0x14]
0063968c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00639690  42 21 a0 e1                                      asr r2, r2, #2
00639694  9c 30 a0 e3                                      mov r3, #0x9c
00639698  9c 02 09 e0                                      mul sb, ip, r2
0063969c  98 a0 95 e5                                      ldr sl, [r5, #0x98]
006396a0  c9 90 a0 e1                                      asr sb, sb, #1
006396a4  93 59 29 e0                                      mla sb, r3, sb, r5
006396a8  0a 10 a0 e1                                      mov r1, sl
006396ac  98 80 99 e5                                      ldr r8, [sb, #0x98]
006396b0  01 60 46 e2                                      sub r6, r6, #1
006396b4  9c 40 47 e2                                      sub r4, r7, #0x9c
006396b8  08 00 a0 e1                                      mov r0, r8
006396bc  12 54 f3 eb                                      bl #0x30e70c
006396c0  00 00 50 e3                                      cmp r0, #0
006396c4  41 00 00 0a                                      beq #0x6397d0
006396c8  98 b0 94 e5                                      ldr fp, [r4, #0x98]
006396cc  08 00 a0 e1                                      mov r0, r8
006396d0  0b 10 a0 e1                                      mov r1, fp
006396d4  07 53 f3 eb                                      bl #0x30e2f8
006396d8  00 00 50 e3                                      cmp r0, #0
006396dc  46 00 00 1a                                      bne #0x6397fc
006396e0  0a 00 a0 e1                                      mov r0, sl
006396e4  0b 10 a0 e1                                      mov r1, fp
006396e8  02 53 f3 eb                                      bl #0x30e2f8
006396ec  00 00 50 e3                                      cmp r0, #0
006396f0  1d 00 00 0a                                      beq #0x63976c
006396f4  04 10 a0 e1                                      mov r1, r4
006396f8  10 00 9d e5                                      ldr r0, [sp, #0x10]
006396fc  7c f9 ff eb                                      bl #0x637cf4
00639700  07 80 a0 e1                                      mov r8, r7
00639704  05 40 a0 e1                                      mov r4, r5
00639708  b4 a0 9d e5                                      ldr sl, [sp, #0xb4]
0063970c  98 10 94 e5                                      ldr r1, [r4, #0x98]
00639710  0a 00 a0 e1                                      mov r0, sl
00639714  fc 53 f3 eb                                      bl #0x30e70c
00639718  00 00 50 e3                                      cmp r0, #0
0063971c  05 00 00 0a                                      beq #0x639738
00639720  9c 40 84 e2                                      add r4, r4, #0x9c
00639724  98 00 94 e5                                      ldr r0, [r4, #0x98]
00639728  0a 10 a0 e1                                      mov r1, sl
0063972c  f1 52 f3 eb                                      bl #0x30e2f8
00639730  00 00 50 e3                                      cmp r0, #0
00639734  f9 ff ff 1a                                      bne #0x639720
00639738  9c 80 48 e2                                      sub r8, r8, #0x9c
0063973c  98 00 98 e5                                      ldr r0, [r8, #0x98]
00639740  0a 10 a0 e1                                      mov r1, sl
00639744  f0 53 f3 eb                                      bl #0x30e70c
00639748  00 00 50 e3                                      cmp r0, #0
0063974c  f9 ff ff 1a                                      bne #0x639738
00639750  04 00 58 e1                                      cmp r8, r4
00639754  06 00 00 9a                                      bls #0x639774
00639758  04 00 a0 e1                                      mov r0, r4
0063975c  08 10 a0 e1                                      mov r1, r8
00639760  01 fa ff eb                                      bl #0x637f6c
00639764  9c 40 84 e2                                      add r4, r4, #0x9c
00639768  e6 ff ff ea                                      b #0x639708
0063976c  05 40 a0 e1                                      mov r4, r5
00639770  df ff ff ea                                      b #0x6396f4
00639774  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00639778  00 20 a0 e3                                      mov r2, #0
0063977c  06 30 a0 e1                                      mov r3, r6
00639780  07 10 a0 e1                                      mov r1, r7
00639784  04 00 a0 e1                                      mov r0, r4
00639788  00 c0 8d e5                                      str ip, [sp]
0063978c  ac ff ff eb                                      bl #0x639644
00639790  04 20 65 e0                                      rsb r2, r5, r4
00639794  5b 3a 00 e3                                      movw r3, #0xa5b
00639798  03 00 52 e1                                      cmp r2, r3
0063979c  09 00 00 da                                      ble #0x6397c8
006397a0  00 00 56 e3                                      cmp r6, #0
006397a4  04 70 a0 e1                                      mov r7, r4
006397a8  b7 ff ff 1a                                      bne #0x63968c
006397ac  b8 c0 8d e2                                      add ip, sp, #0xb8
006397b0  07 10 a0 e1                                      mov r1, r7
006397b4  05 00 a0 e1                                      mov r0, r5
006397b8  07 20 a0 e1                                      mov r2, r7
006397bc  00 30 a0 e3                                      mov r3, #0
006397c0  00 c0 8d e5                                      str ip, [sp]
006397c4  69 ff ff eb                                      bl #0x639570
006397c8  c4 d0 8d e2                                      add sp, sp, #0xc4
006397cc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006397d0  98 b0 94 e5                                      ldr fp, [r4, #0x98]
006397d4  0a 00 a0 e1                                      mov r0, sl
006397d8  0b 10 a0 e1                                      mov r1, fp
006397dc  c5 52 f3 eb                                      bl #0x30e2f8
006397e0  00 00 50 e3                                      cmp r0, #0
006397e4  e0 ff ff 1a                                      bne #0x63976c
006397e8  08 00 a0 e1                                      mov r0, r8
006397ec  0b 10 a0 e1                                      mov r1, fp
006397f0  c0 52 f3 eb                                      bl #0x30e2f8
006397f4  00 00 50 e3                                      cmp r0, #0
006397f8  bd ff ff 1a                                      bne #0x6396f4
006397fc  09 40 a0 e1                                      mov r4, sb
00639800  bb ff ff ea                                      b #0x6396f4

; FUNCTION 0x00639ed8, declared_size=164, range_size=164, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv14__partial_sortIPPN6glitch2ps6PForceINS2_12GNPSParticleEEES6_NS2_17SortPriorityForceIS4_EEEEvT_SA_SA_PT0_T1_
; demangled: void std::priv::__partial_sort<glitch::ps::PForce<glitch::ps::GNPSParticle>**, glitch::ps::PForce<glitch::ps::GNPSParticle>*, glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle> >(glitch::ps::PForce<glitch::ps::GNPSParticle>**, glitch::ps::PForce<glitch::ps::GNPSParticle>**, glitch::ps::PForce<glitch::ps::GNPSParticle>**, glitch::ps::PForce<glitch::ps::GNPSParticle>**, glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>)
; decoder-mode: arm
00639ed8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00639edc  00 c0 a0 e3                                      mov ip, #0
00639ee0  1c d0 4d e2                                      sub sp, sp, #0x1c
00639ee4  02 60 a0 e1                                      mov r6, r2
00639ee8  01 70 a0 e1                                      mov r7, r1
00639eec  0c 30 a0 e1                                      mov r3, ip
00639ef0  10 20 8d e2                                      add r2, sp, #0x10
00639ef4  00 c0 8d e5                                      str ip, [sp]
00639ef8  00 50 a0 e1                                      mov r5, r0
00639efc  c7 ff ff eb                                      bl #0x639e20
00639f00  06 00 57 e1                                      cmp r7, r6
00639f04  16 00 00 2a                                      bhs #0x639f64
00639f08  07 80 65 e0                                      rsb r8, r5, r7
00639f0c  48 81 a0 e1                                      asr r8, r8, #2
00639f10  07 40 a0 e1                                      mov r4, r7
00639f14  0c a0 8d e2                                      add sl, sp, #0xc
00639f18  02 00 00 ea                                      b #0x639f28
00639f1c  04 40 84 e2                                      add r4, r4, #4
00639f20  04 00 56 e1                                      cmp r6, r4
00639f24  0e 00 00 9a                                      bls #0x639f64
00639f28  00 30 94 e5                                      ldr r3, [r4]
00639f2c  00 20 95 e5                                      ldr r2, [r5]
00639f30  08 00 93 e5                                      ldr r0, [r3, #8]
00639f34  08 10 92 e5                                      ldr r1, [r2, #8]
00639f38  01 00 50 e1                                      cmp r0, r1
00639f3c  f6 ff ff aa                                      bge #0x639f1c
00639f40  00 20 84 e5                                      str r2, [r4]
00639f44  05 00 a0 e1                                      mov r0, r5
00639f48  00 10 a0 e3                                      mov r1, #0
00639f4c  08 20 a0 e1                                      mov r2, r8
00639f50  04 40 84 e2                                      add r4, r4, #4
00639f54  00 a0 8d e5                                      str sl, [sp]
00639f58  8e ff ff eb                                      bl #0x639d98
00639f5c  04 00 56 e1                                      cmp r6, r4
00639f60  f0 ff ff 8a                                      bhi #0x639f28
00639f64  05 00 a0 e1                                      mov r0, r5
00639f68  07 10 a0 e1                                      mov r1, r7
00639f6c  14 20 8d e2                                      add r2, sp, #0x14
00639f70  c3 ff ff eb                                      bl #0x639e84
00639f74  1c d0 8d e2                                      add sp, sp, #0x1c
00639f78  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x00639f7c, declared_size=368, range_size=368, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv16__introsort_loopIPPN6glitch2ps6PForceINS2_12GNPSParticleEEES6_iNS2_17SortPriorityForceIS4_EEEEvT_SA_PT0_T1_T2_
; demangled: void std::priv::__introsort_loop<glitch::ps::PForce<glitch::ps::GNPSParticle>**, glitch::ps::PForce<glitch::ps::GNPSParticle>*, int, glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle> >(glitch::ps::PForce<glitch::ps::GNPSParticle>**, glitch::ps::PForce<glitch::ps::GNPSParticle>**, glitch::ps::PForce<glitch::ps::GNPSParticle>**, int, glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>)
; decoder-mode: arm
00639f7c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00639f80  01 20 60 e0                                      rsb r2, r0, r1
00639f84  43 00 52 e3                                      cmp r2, #0x43
00639f88  10 d0 4d e2                                      sub sp, sp, #0x10
00639f8c  00 50 a0 e1                                      mov r5, r0
00639f90  03 60 a0 e1                                      mov r6, r3
00639f94  42 00 00 da                                      ble #0x63a0a4
00639f98  00 00 53 e3                                      cmp r3, #0
00639f9c  0c 70 8d 12                                      addne r7, sp, #0xc
00639fa0  39 00 00 0a                                      beq #0x63a08c
00639fa4  c2 21 a0 e1                                      asr r2, r2, #3
00639fa8  02 41 95 e7                                      ldr r4, [r5, r2, lsl #2]
00639fac  00 00 95 e5                                      ldr r0, [r5]
00639fb0  01 60 46 e2                                      sub r6, r6, #1
00639fb4  08 30 94 e5                                      ldr r3, [r4, #8]
00639fb8  08 e0 90 e5                                      ldr lr, [r0, #8]
00639fbc  03 00 5e e1                                      cmp lr, r3
00639fc0  39 00 00 aa                                      bge #0x63a0ac
00639fc4  04 a0 11 e5                                      ldr sl, [r1, #-4]
00639fc8  08 20 9a e5                                      ldr r2, [sl, #8]
00639fcc  02 00 53 e1                                      cmp r3, r2
00639fd0  3b 00 00 ba                                      blt #0x63a0c4
00639fd4  02 00 5e e1                                      cmp lr, r2
00639fd8  3e 00 00 aa                                      bge #0x63a0d8
00639fdc  02 90 a0 e1                                      mov sb, r2
00639fe0  0a c0 a0 e1                                      mov ip, sl
00639fe4  05 80 a0 e1                                      mov r8, r5
00639fe8  01 30 a0 e1                                      mov r3, r1
00639fec  02 00 5e e1                                      cmp lr, r2
00639ff0  08 40 a0 a1                                      movge r4, r8
00639ff4  04 00 00 aa                                      bge #0x63a00c
00639ff8  08 40 a0 e1                                      mov r4, r8
00639ffc  04 00 b4 e5                                      ldr r0, [r4, #4]!
0063a000  08 e0 90 e5                                      ldr lr, [r0, #8]
0063a004  02 00 5e e1                                      cmp lr, r2
0063a008  fb ff ff ba                                      blt #0x639ffc
0063a00c  02 00 59 e1                                      cmp sb, r2
0063a010  04 e0 43 e2                                      sub lr, r3, #4
0063a014  05 00 00 da                                      ble #0x63a030
0063a018  08 c0 13 e5                                      ldr ip, [r3, #-8]
0063a01c  04 30 43 e2                                      sub r3, r3, #4
0063a020  08 e0 9c e5                                      ldr lr, [ip, #8]
0063a024  02 00 5e e1                                      cmp lr, r2
0063a028  fa ff ff ca                                      bgt #0x63a018
0063a02c  04 e0 43 e2                                      sub lr, r3, #4
0063a030  04 00 5e e1                                      cmp lr, r4
0063a034  09 00 00 9a                                      bls #0x63a060
0063a038  04 80 a0 e1                                      mov r8, r4
0063a03c  04 c0 88 e4                                      str ip, [r8], #4
0063a040  00 00 8e e5                                      str r0, [lr]
0063a044  04 c0 1e e5                                      ldr ip, [lr, #-4]
0063a048  04 00 94 e5                                      ldr r0, [r4, #4]
0063a04c  0e 30 a0 e1                                      mov r3, lr
0063a050  08 90 9c e5                                      ldr sb, [ip, #8]
0063a054  08 e0 90 e5                                      ldr lr, [r0, #8]
0063a058  08 20 9a e5                                      ldr r2, [sl, #8]
0063a05c  e2 ff ff ea                                      b #0x639fec
0063a060  00 20 a0 e3                                      mov r2, #0
0063a064  04 00 a0 e1                                      mov r0, r4
0063a068  06 30 a0 e1                                      mov r3, r6
0063a06c  00 70 8d e5                                      str r7, [sp]
0063a070  c1 ff ff eb                                      bl #0x639f7c
0063a074  04 20 65 e0                                      rsb r2, r5, r4
0063a078  43 00 52 e3                                      cmp r2, #0x43
0063a07c  08 00 00 da                                      ble #0x63a0a4
0063a080  00 00 56 e3                                      cmp r6, #0
0063a084  04 10 a0 e1                                      mov r1, r4
0063a088  c5 ff ff 1a                                      bne #0x639fa4
0063a08c  08 c0 8d e2                                      add ip, sp, #8
0063a090  05 00 a0 e1                                      mov r0, r5
0063a094  01 20 a0 e1                                      mov r2, r1
0063a098  00 30 a0 e3                                      mov r3, #0
0063a09c  00 c0 8d e5                                      str ip, [sp]
0063a0a0  8c ff ff eb                                      bl #0x639ed8
0063a0a4  10 d0 8d e2                                      add sp, sp, #0x10
0063a0a8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0063a0ac  04 a0 11 e5                                      ldr sl, [r1, #-4]
0063a0b0  08 20 9a e5                                      ldr r2, [sl, #8]
0063a0b4  02 00 5e e1                                      cmp lr, r2
0063a0b8  06 00 00 ba                                      blt #0x63a0d8
0063a0bc  02 00 53 e1                                      cmp r3, r2
0063a0c0  c5 ff ff ba                                      blt #0x639fdc
0063a0c4  02 90 a0 e1                                      mov sb, r2
0063a0c8  0a c0 a0 e1                                      mov ip, sl
0063a0cc  03 20 a0 e1                                      mov r2, r3
0063a0d0  04 a0 a0 e1                                      mov sl, r4
0063a0d4  c2 ff ff ea                                      b #0x639fe4
0063a0d8  02 90 a0 e1                                      mov sb, r2
0063a0dc  0a c0 a0 e1                                      mov ip, sl
0063a0e0  0e 20 a0 e1                                      mov r2, lr
0063a0e4  00 a0 a0 e1                                      mov sl, r0
0063a0e8  bd ff ff ea                                      b #0x639fe4

; FUNCTION 0x0063af30, declared_size=184, range_size=184, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv16__insertion_sortIPPN6glitch2ps6PForceINS2_12GNPSParticleEEES6_NS2_17SortPriorityForceIS4_EEEEvT_SA_PT0_T1_
; demangled: void std::priv::__insertion_sort<glitch::ps::PForce<glitch::ps::GNPSParticle>**, glitch::ps::PForce<glitch::ps::GNPSParticle>*, glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle> >(glitch::ps::PForce<glitch::ps::GNPSParticle>**, glitch::ps::PForce<glitch::ps::GNPSParticle>**, glitch::ps::PForce<glitch::ps::GNPSParticle>**, glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>)
; decoder-mode: arm
0063af30  01 00 50 e1                                      cmp r0, r1
0063af34  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0063af38  00 70 a0 e1                                      mov r7, r0
0063af3c  01 a0 a0 e1                                      mov sl, r1
0063af40  17 00 00 0a                                      beq #0x63afa4
0063af44  04 30 80 e2                                      add r3, r0, #4
0063af48  03 00 51 e1                                      cmp r1, r3
0063af4c  14 00 00 0a                                      beq #0x63afa4
0063af50  08 50 80 e2                                      add r5, r0, #8
0063af54  04 60 a0 e3                                      mov r6, #4
0063af58  04 40 15 e5                                      ldr r4, [r5, #-4]
0063af5c  00 30 97 e5                                      ldr r3, [r7]
0063af60  04 10 45 e2                                      sub r1, r5, #4
0063af64  08 20 94 e5                                      ldr r2, [r4, #8]
0063af68  08 30 93 e5                                      ldr r3, [r3, #8]
0063af6c  03 00 52 e1                                      cmp r2, r3
0063af70  0c 00 00 aa                                      bge #0x63afa8
0063af74  00 00 56 e3                                      cmp r6, #0
0063af78  05 80 a0 e1                                      mov r8, r5
0063af7c  03 00 00 da                                      ble #0x63af90
0063af80  05 00 66 e0                                      rsb r0, r6, r5
0063af84  07 10 a0 e1                                      mov r1, r7
0063af88  06 20 a0 e1                                      mov r2, r6
0063af8c  e9 4b f3 eb                                      bl #0x30df38
0063af90  00 40 87 e5                                      str r4, [r7]
0063af94  08 00 5a e1                                      cmp sl, r8
0063af98  04 50 85 e2                                      add r5, r5, #4
0063af9c  04 60 86 e2                                      add r6, r6, #4
0063afa0  ec ff ff 1a                                      bne #0x63af58
0063afa4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0063afa8  08 30 15 e5                                      ldr r3, [r5, #-8]
0063afac  08 00 93 e5                                      ldr r0, [r3, #8]
0063afb0  00 00 52 e1                                      cmp r2, r0
0063afb4  08 00 00 aa                                      bge #0x63afdc
0063afb8  08 20 45 e2                                      sub r2, r5, #8
0063afbc  00 30 81 e5                                      str r3, [r1]
0063afc0  02 00 a0 e1                                      mov r0, r2
0063afc4  04 30 32 e5                                      ldr r3, [r2, #-4]!
0063afc8  08 80 94 e5                                      ldr r8, [r4, #8]
0063afcc  00 10 a0 e1                                      mov r1, r0
0063afd0  08 c0 93 e5                                      ldr ip, [r3, #8]
0063afd4  0c 00 58 e1                                      cmp r8, ip
0063afd8  f7 ff ff ba                                      blt #0x63afbc
0063afdc  00 40 81 e5                                      str r4, [r1]
0063afe0  05 80 a0 e1                                      mov r8, r5
0063afe4  ea ff ff ea                                      b #0x63af94

; FUNCTION 0x0063afe8, declared_size=160, range_size=160, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv22__final_insertion_sortIPPN6glitch2ps6PForceINS2_12GNPSParticleEEENS2_17SortPriorityForceIS4_EEEEvT_SA_T0_
; demangled: void std::priv::__final_insertion_sort<glitch::ps::PForce<glitch::ps::GNPSParticle>**, glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle> >(glitch::ps::PForce<glitch::ps::GNPSParticle>**, glitch::ps::PForce<glitch::ps::GNPSParticle>**, glitch::ps::SortPriorityForce<glitch::ps::GNPSParticle>)
; decoder-mode: arm
0063afe8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0063afec  01 30 60 e0                                      rsb r3, r0, r1
0063aff0  43 00 53 e3                                      cmp r3, #0x43
0063aff4  0c d0 4d e2                                      sub sp, sp, #0xc
0063aff8  00 40 a0 e1                                      mov r4, r0
0063affc  01 50 a0 e1                                      mov r5, r1
0063b000  1c 00 00 da                                      ble #0x63b078
0063b004  40 40 80 e2                                      add r4, r0, #0x40
0063b008  04 10 a0 e1                                      mov r1, r4
0063b00c  00 20 a0 e3                                      mov r2, #0
0063b010  04 30 8d e2                                      add r3, sp, #4
0063b014  c5 ff ff eb                                      bl #0x63af30
0063b018  04 00 55 e1                                      cmp r5, r4
0063b01c  13 00 00 0a                                      beq #0x63b070
0063b020  88 00 14 e8                                      ldmda r4, {r3, r7}
0063b024  08 10 97 e5                                      ldr r1, [r7, #8]
0063b028  08 20 93 e5                                      ldr r2, [r3, #8]
0063b02c  02 00 51 e1                                      cmp r1, r2
0063b030  04 10 a0 a1                                      movge r1, r4
0063b034  09 00 00 aa                                      bge #0x63b060
0063b038  04 20 44 e2                                      sub r2, r4, #4
0063b03c  04 00 a0 e1                                      mov r0, r4
0063b040  00 30 80 e5                                      str r3, [r0]
0063b044  02 10 a0 e1                                      mov r1, r2
0063b048  04 30 32 e5                                      ldr r3, [r2, #-4]!
0063b04c  08 60 97 e5                                      ldr r6, [r7, #8]
0063b050  01 00 a0 e1                                      mov r0, r1
0063b054  08 c0 93 e5                                      ldr ip, [r3, #8]
0063b058  0c 00 56 e1                                      cmp r6, ip
0063b05c  f7 ff ff ba                                      blt #0x63b040
0063b060  04 40 84 e2                                      add r4, r4, #4
0063b064  04 00 55 e1                                      cmp r5, r4
0063b068  00 70 81 e5                                      str r7, [r1]
0063b06c  eb ff ff 1a                                      bne #0x63b020
0063b070  0c d0 8d e2                                      add sp, sp, #0xc
0063b074  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0063b078  00 20 a0 e3                                      mov r2, #0
0063b07c  0d 30 a0 e1                                      mov r3, sp
0063b080  aa ff ff eb                                      bl #0x63af30
0063b084  f9 ff ff ea                                      b #0x63b070

; FUNCTION 0x00646e54, declared_size=100, range_size=100, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv6__fillIPN6glitch7collada19CModularSkinnedMesh7SModuleES4_iEEvT_S6_RKT0_RKSt26random_access_iterator_tagPT1_
; demangled: void std::priv::__fill<glitch::collada::CModularSkinnedMesh::SModule*, glitch::collada::CModularSkinnedMesh::SModule, int>(glitch::collada::CModularSkinnedMesh::SModule*, glitch::collada::CModularSkinnedMesh::SModule*, glitch::collada::CModularSkinnedMesh::SModule const&, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00646e54  01 10 60 e0                                      rsb r1, r0, r1
00646e58  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00646e5c  c1 51 a0 e1                                      asr r5, r1, #3
00646e60  00 00 55 e3                                      cmp r5, #0
00646e64  00 40 a0 e1                                      mov r4, r0
00646e68  02 70 a0 e1                                      mov r7, r2
00646e6c  10 00 00 da                                      ble #0x646eb4
00646e70  00 60 a0 e3                                      mov r6, #0
00646e74  00 30 97 e5                                      ldr r3, [r7]
00646e78  06 20 84 e0                                      add r2, r4, r6
00646e7c  06 30 84 e7                                      str r3, [r4, r6]
00646e80  04 30 97 e5                                      ldr r3, [r7, #4]
00646e84  08 60 86 e2                                      add r6, r6, #8
00646e88  00 00 53 e3                                      cmp r3, #0
00646e8c  04 10 93 15                                      ldrne r1, [r3, #4]
00646e90  01 10 81 12                                      addne r1, r1, #1
00646e94  04 10 83 15                                      strne r1, [r3, #4]
00646e98  04 00 92 e5                                      ldr r0, [r2, #4]
00646e9c  04 30 82 e5                                      str r3, [r2, #4]
00646ea0  00 00 50 e3                                      cmp r0, #0
00646ea4  00 00 00 0a                                      beq #0x646eac
00646ea8  b5 59 f3 eb                                      bl #0x31d584
00646eac  01 50 55 e2                                      subs r5, r5, #1
00646eb0  ef ff ff 1a                                      bne #0x646e74
00646eb4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0064cc30, declared_size=164, range_size=164, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv14__partial_sortIPPN6glitch2ps6PForceINS2_9SParticleEEES6_NS2_17SortPriorityForceIS4_EEEEvT_SA_SA_PT0_T1_
; demangled: void std::priv::__partial_sort<glitch::ps::PForce<glitch::ps::SParticle>**, glitch::ps::PForce<glitch::ps::SParticle>*, glitch::ps::SortPriorityForce<glitch::ps::SParticle> >(glitch::ps::PForce<glitch::ps::SParticle>**, glitch::ps::PForce<glitch::ps::SParticle>**, glitch::ps::PForce<glitch::ps::SParticle>**, glitch::ps::PForce<glitch::ps::SParticle>**, glitch::ps::SortPriorityForce<glitch::ps::SParticle>)
; decoder-mode: arm
0064cc30  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0064cc34  00 c0 a0 e3                                      mov ip, #0
0064cc38  1c d0 4d e2                                      sub sp, sp, #0x1c
0064cc3c  02 60 a0 e1                                      mov r6, r2
0064cc40  01 70 a0 e1                                      mov r7, r1
0064cc44  0c 30 a0 e1                                      mov r3, ip
0064cc48  10 20 8d e2                                      add r2, sp, #0x10
0064cc4c  00 c0 8d e5                                      str ip, [sp]
0064cc50  00 50 a0 e1                                      mov r5, r0
0064cc54  c7 ff ff eb                                      bl #0x64cb78
0064cc58  06 00 57 e1                                      cmp r7, r6
0064cc5c  16 00 00 2a                                      bhs #0x64ccbc
0064cc60  07 80 65 e0                                      rsb r8, r5, r7
0064cc64  48 81 a0 e1                                      asr r8, r8, #2
0064cc68  07 40 a0 e1                                      mov r4, r7
0064cc6c  0c a0 8d e2                                      add sl, sp, #0xc
0064cc70  02 00 00 ea                                      b #0x64cc80
0064cc74  04 40 84 e2                                      add r4, r4, #4
0064cc78  04 00 56 e1                                      cmp r6, r4
0064cc7c  0e 00 00 9a                                      bls #0x64ccbc
0064cc80  00 30 94 e5                                      ldr r3, [r4]
0064cc84  00 20 95 e5                                      ldr r2, [r5]
0064cc88  08 00 93 e5                                      ldr r0, [r3, #8]
0064cc8c  08 10 92 e5                                      ldr r1, [r2, #8]
0064cc90  01 00 50 e1                                      cmp r0, r1
0064cc94  f6 ff ff aa                                      bge #0x64cc74
0064cc98  00 20 84 e5                                      str r2, [r4]
0064cc9c  05 00 a0 e1                                      mov r0, r5
0064cca0  00 10 a0 e3                                      mov r1, #0
0064cca4  08 20 a0 e1                                      mov r2, r8
0064cca8  04 40 84 e2                                      add r4, r4, #4
0064ccac  00 a0 8d e5                                      str sl, [sp]
0064ccb0  8e ff ff eb                                      bl #0x64caf0
0064ccb4  04 00 56 e1                                      cmp r6, r4
0064ccb8  f0 ff ff 8a                                      bhi #0x64cc80
0064ccbc  05 00 a0 e1                                      mov r0, r5
0064ccc0  07 10 a0 e1                                      mov r1, r7
0064ccc4  14 20 8d e2                                      add r2, sp, #0x14
0064ccc8  c3 ff ff eb                                      bl #0x64cbdc
0064cccc  1c d0 8d e2                                      add sp, sp, #0x1c
0064ccd0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x0064ccd4, declared_size=368, range_size=368, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv16__introsort_loopIPPN6glitch2ps6PForceINS2_9SParticleEEES6_iNS2_17SortPriorityForceIS4_EEEEvT_SA_PT0_T1_T2_
; demangled: void std::priv::__introsort_loop<glitch::ps::PForce<glitch::ps::SParticle>**, glitch::ps::PForce<glitch::ps::SParticle>*, int, glitch::ps::SortPriorityForce<glitch::ps::SParticle> >(glitch::ps::PForce<glitch::ps::SParticle>**, glitch::ps::PForce<glitch::ps::SParticle>**, glitch::ps::PForce<glitch::ps::SParticle>**, int, glitch::ps::SortPriorityForce<glitch::ps::SParticle>)
; decoder-mode: arm
0064ccd4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0064ccd8  01 20 60 e0                                      rsb r2, r0, r1
0064ccdc  43 00 52 e3                                      cmp r2, #0x43
0064cce0  10 d0 4d e2                                      sub sp, sp, #0x10
0064cce4  00 50 a0 e1                                      mov r5, r0
0064cce8  03 60 a0 e1                                      mov r6, r3
0064ccec  42 00 00 da                                      ble #0x64cdfc
0064ccf0  00 00 53 e3                                      cmp r3, #0
0064ccf4  0c 70 8d 12                                      addne r7, sp, #0xc
0064ccf8  39 00 00 0a                                      beq #0x64cde4
0064ccfc  c2 21 a0 e1                                      asr r2, r2, #3
0064cd00  02 41 95 e7                                      ldr r4, [r5, r2, lsl #2]
0064cd04  00 00 95 e5                                      ldr r0, [r5]
0064cd08  01 60 46 e2                                      sub r6, r6, #1
0064cd0c  08 30 94 e5                                      ldr r3, [r4, #8]
0064cd10  08 e0 90 e5                                      ldr lr, [r0, #8]
0064cd14  03 00 5e e1                                      cmp lr, r3
0064cd18  39 00 00 aa                                      bge #0x64ce04
0064cd1c  04 a0 11 e5                                      ldr sl, [r1, #-4]
0064cd20  08 20 9a e5                                      ldr r2, [sl, #8]
0064cd24  02 00 53 e1                                      cmp r3, r2
0064cd28  3b 00 00 ba                                      blt #0x64ce1c
0064cd2c  02 00 5e e1                                      cmp lr, r2
0064cd30  3e 00 00 aa                                      bge #0x64ce30
0064cd34  02 90 a0 e1                                      mov sb, r2
0064cd38  0a c0 a0 e1                                      mov ip, sl
0064cd3c  01 30 a0 e1                                      mov r3, r1
0064cd40  05 80 a0 e1                                      mov r8, r5
0064cd44  02 00 5e e1                                      cmp lr, r2
0064cd48  08 40 a0 a1                                      movge r4, r8
0064cd4c  04 00 00 aa                                      bge #0x64cd64
0064cd50  08 40 a0 e1                                      mov r4, r8
0064cd54  04 00 b4 e5                                      ldr r0, [r4, #4]!
0064cd58  08 e0 90 e5                                      ldr lr, [r0, #8]
0064cd5c  02 00 5e e1                                      cmp lr, r2
0064cd60  fb ff ff ba                                      blt #0x64cd54
0064cd64  02 00 59 e1                                      cmp sb, r2
0064cd68  04 e0 43 e2                                      sub lr, r3, #4
0064cd6c  05 00 00 da                                      ble #0x64cd88
0064cd70  08 c0 13 e5                                      ldr ip, [r3, #-8]
0064cd74  04 30 43 e2                                      sub r3, r3, #4
0064cd78  08 e0 9c e5                                      ldr lr, [ip, #8]
0064cd7c  02 00 5e e1                                      cmp lr, r2
0064cd80  fa ff ff ca                                      bgt #0x64cd70
0064cd84  04 e0 43 e2                                      sub lr, r3, #4
0064cd88  04 00 5e e1                                      cmp lr, r4
0064cd8c  09 00 00 9a                                      bls #0x64cdb8
0064cd90  04 80 a0 e1                                      mov r8, r4
0064cd94  04 c0 88 e4                                      str ip, [r8], #4
0064cd98  00 00 8e e5                                      str r0, [lr]
0064cd9c  04 c0 1e e5                                      ldr ip, [lr, #-4]
0064cda0  04 00 94 e5                                      ldr r0, [r4, #4]
0064cda4  0e 30 a0 e1                                      mov r3, lr
0064cda8  08 90 9c e5                                      ldr sb, [ip, #8]
0064cdac  08 e0 90 e5                                      ldr lr, [r0, #8]
0064cdb0  08 20 9a e5                                      ldr r2, [sl, #8]
0064cdb4  e2 ff ff ea                                      b #0x64cd44
0064cdb8  00 20 a0 e3                                      mov r2, #0
0064cdbc  04 00 a0 e1                                      mov r0, r4
0064cdc0  06 30 a0 e1                                      mov r3, r6
0064cdc4  00 70 8d e5                                      str r7, [sp]
0064cdc8  c1 ff ff eb                                      bl #0x64ccd4
0064cdcc  04 20 65 e0                                      rsb r2, r5, r4
0064cdd0  43 00 52 e3                                      cmp r2, #0x43
0064cdd4  08 00 00 da                                      ble #0x64cdfc
0064cdd8  00 00 56 e3                                      cmp r6, #0
0064cddc  04 10 a0 e1                                      mov r1, r4
0064cde0  c5 ff ff 1a                                      bne #0x64ccfc
0064cde4  08 c0 8d e2                                      add ip, sp, #8
0064cde8  05 00 a0 e1                                      mov r0, r5
0064cdec  01 20 a0 e1                                      mov r2, r1
0064cdf0  00 30 a0 e3                                      mov r3, #0
0064cdf4  00 c0 8d e5                                      str ip, [sp]
0064cdf8  8c ff ff eb                                      bl #0x64cc30
0064cdfc  10 d0 8d e2                                      add sp, sp, #0x10
0064ce00  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0064ce04  04 a0 11 e5                                      ldr sl, [r1, #-4]
0064ce08  08 20 9a e5                                      ldr r2, [sl, #8]
0064ce0c  02 00 5e e1                                      cmp lr, r2
0064ce10  06 00 00 ba                                      blt #0x64ce30
0064ce14  02 00 53 e1                                      cmp r3, r2
0064ce18  c5 ff ff ba                                      blt #0x64cd34
0064ce1c  02 90 a0 e1                                      mov sb, r2
0064ce20  0a c0 a0 e1                                      mov ip, sl
0064ce24  03 20 a0 e1                                      mov r2, r3
0064ce28  04 a0 a0 e1                                      mov sl, r4
0064ce2c  c2 ff ff ea                                      b #0x64cd3c
0064ce30  02 90 a0 e1                                      mov sb, r2
0064ce34  0a c0 a0 e1                                      mov ip, sl
0064ce38  0e 20 a0 e1                                      mov r2, lr
0064ce3c  00 a0 a0 e1                                      mov sl, r0
0064ce40  bd ff ff ea                                      b #0x64cd3c

; FUNCTION 0x0064d77c, declared_size=184, range_size=184, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv16__insertion_sortIPPN6glitch2ps6PForceINS2_9SParticleEEES6_NS2_17SortPriorityForceIS4_EEEEvT_SA_PT0_T1_
; demangled: void std::priv::__insertion_sort<glitch::ps::PForce<glitch::ps::SParticle>**, glitch::ps::PForce<glitch::ps::SParticle>*, glitch::ps::SortPriorityForce<glitch::ps::SParticle> >(glitch::ps::PForce<glitch::ps::SParticle>**, glitch::ps::PForce<glitch::ps::SParticle>**, glitch::ps::PForce<glitch::ps::SParticle>**, glitch::ps::SortPriorityForce<glitch::ps::SParticle>)
; decoder-mode: arm
0064d77c  01 00 50 e1                                      cmp r0, r1
0064d780  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0064d784  00 70 a0 e1                                      mov r7, r0
0064d788  01 a0 a0 e1                                      mov sl, r1
0064d78c  17 00 00 0a                                      beq #0x64d7f0
0064d790  04 30 80 e2                                      add r3, r0, #4
0064d794  03 00 51 e1                                      cmp r1, r3
0064d798  14 00 00 0a                                      beq #0x64d7f0
0064d79c  08 50 80 e2                                      add r5, r0, #8
0064d7a0  04 60 a0 e3                                      mov r6, #4
0064d7a4  04 40 15 e5                                      ldr r4, [r5, #-4]
0064d7a8  00 30 97 e5                                      ldr r3, [r7]
0064d7ac  04 10 45 e2                                      sub r1, r5, #4
0064d7b0  08 20 94 e5                                      ldr r2, [r4, #8]
0064d7b4  08 30 93 e5                                      ldr r3, [r3, #8]
0064d7b8  03 00 52 e1                                      cmp r2, r3
0064d7bc  0c 00 00 aa                                      bge #0x64d7f4
0064d7c0  00 00 56 e3                                      cmp r6, #0
0064d7c4  05 80 a0 e1                                      mov r8, r5
0064d7c8  03 00 00 da                                      ble #0x64d7dc
0064d7cc  05 00 66 e0                                      rsb r0, r6, r5
0064d7d0  07 10 a0 e1                                      mov r1, r7
0064d7d4  06 20 a0 e1                                      mov r2, r6
0064d7d8  d6 01 f3 eb                                      bl #0x30df38
0064d7dc  00 40 87 e5                                      str r4, [r7]
0064d7e0  08 00 5a e1                                      cmp sl, r8
0064d7e4  04 50 85 e2                                      add r5, r5, #4
0064d7e8  04 60 86 e2                                      add r6, r6, #4
0064d7ec  ec ff ff 1a                                      bne #0x64d7a4
0064d7f0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0064d7f4  08 30 15 e5                                      ldr r3, [r5, #-8]
0064d7f8  08 00 93 e5                                      ldr r0, [r3, #8]
0064d7fc  00 00 52 e1                                      cmp r2, r0
0064d800  08 00 00 aa                                      bge #0x64d828
0064d804  08 20 45 e2                                      sub r2, r5, #8
0064d808  00 30 81 e5                                      str r3, [r1]
0064d80c  02 00 a0 e1                                      mov r0, r2
0064d810  04 30 32 e5                                      ldr r3, [r2, #-4]!
0064d814  08 80 94 e5                                      ldr r8, [r4, #8]
0064d818  00 10 a0 e1                                      mov r1, r0
0064d81c  08 c0 93 e5                                      ldr ip, [r3, #8]
0064d820  0c 00 58 e1                                      cmp r8, ip
0064d824  f7 ff ff ba                                      blt #0x64d808
0064d828  00 40 81 e5                                      str r4, [r1]
0064d82c  05 80 a0 e1                                      mov r8, r5
0064d830  ea ff ff ea                                      b #0x64d7e0

; FUNCTION 0x0064d834, declared_size=160, range_size=160, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv22__final_insertion_sortIPPN6glitch2ps6PForceINS2_9SParticleEEENS2_17SortPriorityForceIS4_EEEEvT_SA_T0_
; demangled: void std::priv::__final_insertion_sort<glitch::ps::PForce<glitch::ps::SParticle>**, glitch::ps::SortPriorityForce<glitch::ps::SParticle> >(glitch::ps::PForce<glitch::ps::SParticle>**, glitch::ps::PForce<glitch::ps::SParticle>**, glitch::ps::SortPriorityForce<glitch::ps::SParticle>)
; decoder-mode: arm
0064d834  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0064d838  01 30 60 e0                                      rsb r3, r0, r1
0064d83c  43 00 53 e3                                      cmp r3, #0x43
0064d840  0c d0 4d e2                                      sub sp, sp, #0xc
0064d844  00 40 a0 e1                                      mov r4, r0
0064d848  01 50 a0 e1                                      mov r5, r1
0064d84c  1c 00 00 da                                      ble #0x64d8c4
0064d850  40 40 80 e2                                      add r4, r0, #0x40
0064d854  04 10 a0 e1                                      mov r1, r4
0064d858  00 20 a0 e3                                      mov r2, #0
0064d85c  04 30 8d e2                                      add r3, sp, #4
0064d860  c5 ff ff eb                                      bl #0x64d77c
0064d864  04 00 55 e1                                      cmp r5, r4
0064d868  13 00 00 0a                                      beq #0x64d8bc
0064d86c  88 00 14 e8                                      ldmda r4, {r3, r7}
0064d870  08 10 97 e5                                      ldr r1, [r7, #8]
0064d874  08 20 93 e5                                      ldr r2, [r3, #8]
0064d878  02 00 51 e1                                      cmp r1, r2
0064d87c  04 10 a0 a1                                      movge r1, r4
0064d880  09 00 00 aa                                      bge #0x64d8ac
0064d884  04 20 44 e2                                      sub r2, r4, #4
0064d888  04 00 a0 e1                                      mov r0, r4
0064d88c  00 30 80 e5                                      str r3, [r0]
0064d890  02 10 a0 e1                                      mov r1, r2
0064d894  04 30 32 e5                                      ldr r3, [r2, #-4]!
0064d898  08 60 97 e5                                      ldr r6, [r7, #8]
0064d89c  01 00 a0 e1                                      mov r0, r1
0064d8a0  08 c0 93 e5                                      ldr ip, [r3, #8]
0064d8a4  0c 00 56 e1                                      cmp r6, ip
0064d8a8  f7 ff ff ba                                      blt #0x64d88c
0064d8ac  04 40 84 e2                                      add r4, r4, #4
0064d8b0  04 00 55 e1                                      cmp r5, r4
0064d8b4  00 70 81 e5                                      str r7, [r1]
0064d8b8  eb ff ff 1a                                      bne #0x64d86c
0064d8bc  0c d0 8d e2                                      add sp, sp, #0xc
0064d8c0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0064d8c4  00 20 a0 e3                                      mov r2, #0
0064d8c8  0d 30 a0 e1                                      mov r3, sp
0064d8cc  aa ff ff eb                                      bl #0x64d77c
0064d8d0  f9 ff ff ea                                      b #0x64d8bc

; FUNCTION 0x00650618, declared_size=476, range_size=476, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv25__unguarded_linear_insertIPN6glitch2ps9SParticleES3_NS2_9AlphaSortIS3_EEEEvT_T0_T1_
; demangled: void std::priv::__unguarded_linear_insert<glitch::ps::SParticle*, glitch::ps::SParticle, glitch::ps::AlphaSort<glitch::ps::SParticle> >(glitch::ps::SParticle*, glitch::ps::SParticle, glitch::ps::AlphaSort<glitch::ps::SParticle>)
; decoder-mode: arm
00650618  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0065061c  64 50 40 e2                                      sub r5, r0, #0x64
00650620  00 40 a0 e1                                      mov r4, r0
00650624  01 60 a0 e1                                      mov r6, r1
00650628  60 00 95 e5                                      ldr r0, [r5, #0x60]
0065062c  60 10 91 e5                                      ldr r1, [r1, #0x60]
00650630  35 f8 f2 eb                                      bl #0x30e70c
00650634  00 00 50 e3                                      cmp r0, #0
00650638  01 00 00 1a                                      bne #0x650644
0065063c  39 00 00 ea                                      b #0x650728
00650640  07 50 a0 e1                                      mov r5, r7
00650644  00 30 95 e5                                      ldr r3, [r5]
00650648  64 70 45 e2                                      sub r7, r5, #0x64
0065064c  00 30 84 e5                                      str r3, [r4]
00650650  04 30 95 e5                                      ldr r3, [r5, #4]
00650654  04 30 84 e5                                      str r3, [r4, #4]
00650658  08 30 95 e5                                      ldr r3, [r5, #8]
0065065c  08 30 84 e5                                      str r3, [r4, #8]
00650660  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00650664  0c 30 84 e5                                      str r3, [r4, #0xc]
00650668  10 30 95 e5                                      ldr r3, [r5, #0x10]
0065066c  10 30 84 e5                                      str r3, [r4, #0x10]
00650670  14 30 95 e5                                      ldr r3, [r5, #0x14]
00650674  14 30 84 e5                                      str r3, [r4, #0x14]
00650678  18 30 95 e5                                      ldr r3, [r5, #0x18]
0065067c  18 30 84 e5                                      str r3, [r4, #0x18]
00650680  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
00650684  1c 30 84 e5                                      str r3, [r4, #0x1c]
00650688  20 30 95 e5                                      ldr r3, [r5, #0x20]
0065068c  20 30 84 e5                                      str r3, [r4, #0x20]
00650690  24 30 95 e5                                      ldr r3, [r5, #0x24]
00650694  24 30 84 e5                                      str r3, [r4, #0x24]
00650698  28 30 95 e5                                      ldr r3, [r5, #0x28]
0065069c  28 30 84 e5                                      str r3, [r4, #0x28]
006506a0  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
006506a4  2c 30 84 e5                                      str r3, [r4, #0x2c]
006506a8  30 30 95 e5                                      ldr r3, [r5, #0x30]
006506ac  30 30 84 e5                                      str r3, [r4, #0x30]
006506b0  34 30 95 e5                                      ldr r3, [r5, #0x34]
006506b4  34 30 84 e5                                      str r3, [r4, #0x34]
006506b8  38 30 95 e5                                      ldr r3, [r5, #0x38]
006506bc  38 30 84 e5                                      str r3, [r4, #0x38]
006506c0  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
006506c4  3c 30 84 e5                                      str r3, [r4, #0x3c]
006506c8  40 30 95 e5                                      ldr r3, [r5, #0x40]
006506cc  40 30 84 e5                                      str r3, [r4, #0x40]
006506d0  44 30 95 e5                                      ldr r3, [r5, #0x44]
006506d4  44 30 84 e5                                      str r3, [r4, #0x44]
006506d8  48 30 95 e5                                      ldr r3, [r5, #0x48]
006506dc  48 30 84 e5                                      str r3, [r4, #0x48]
006506e0  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
006506e4  4c 30 84 e5                                      str r3, [r4, #0x4c]
006506e8  50 30 95 e5                                      ldr r3, [r5, #0x50]
006506ec  50 30 84 e5                                      str r3, [r4, #0x50]
006506f0  54 30 95 e5                                      ldr r3, [r5, #0x54]
006506f4  54 30 84 e5                                      str r3, [r4, #0x54]
006506f8  58 30 95 e5                                      ldr r3, [r5, #0x58]
006506fc  58 30 84 e5                                      str r3, [r4, #0x58]
00650700  5c 30 95 e5                                      ldr r3, [r5, #0x5c]
00650704  5c 30 84 e5                                      str r3, [r4, #0x5c]
00650708  60 30 95 e5                                      ldr r3, [r5, #0x60]
0065070c  60 30 84 e5                                      str r3, [r4, #0x60]
00650710  60 00 97 e5                                      ldr r0, [r7, #0x60]
00650714  60 10 96 e5                                      ldr r1, [r6, #0x60]
00650718  fb f7 f2 eb                                      bl #0x30e70c
0065071c  00 00 50 e3                                      cmp r0, #0
00650720  05 40 a0 e1                                      mov r4, r5
00650724  c5 ff ff 1a                                      bne #0x650640
00650728  00 30 96 e5                                      ldr r3, [r6]
0065072c  00 30 84 e5                                      str r3, [r4]
00650730  04 30 96 e5                                      ldr r3, [r6, #4]
00650734  04 30 84 e5                                      str r3, [r4, #4]
00650738  08 30 96 e5                                      ldr r3, [r6, #8]
0065073c  08 30 84 e5                                      str r3, [r4, #8]
00650740  0c 30 96 e5                                      ldr r3, [r6, #0xc]
00650744  0c 30 84 e5                                      str r3, [r4, #0xc]
00650748  10 30 96 e5                                      ldr r3, [r6, #0x10]
0065074c  10 30 84 e5                                      str r3, [r4, #0x10]
00650750  14 30 96 e5                                      ldr r3, [r6, #0x14]
00650754  14 30 84 e5                                      str r3, [r4, #0x14]
00650758  18 30 96 e5                                      ldr r3, [r6, #0x18]
0065075c  18 30 84 e5                                      str r3, [r4, #0x18]
00650760  1c 30 96 e5                                      ldr r3, [r6, #0x1c]
00650764  1c 30 84 e5                                      str r3, [r4, #0x1c]
00650768  20 30 96 e5                                      ldr r3, [r6, #0x20]
0065076c  20 30 84 e5                                      str r3, [r4, #0x20]
00650770  24 30 96 e5                                      ldr r3, [r6, #0x24]
00650774  24 30 84 e5                                      str r3, [r4, #0x24]
00650778  28 30 96 e5                                      ldr r3, [r6, #0x28]
0065077c  28 30 84 e5                                      str r3, [r4, #0x28]
00650780  2c 30 96 e5                                      ldr r3, [r6, #0x2c]
00650784  2c 30 84 e5                                      str r3, [r4, #0x2c]
00650788  30 30 96 e5                                      ldr r3, [r6, #0x30]
0065078c  30 30 84 e5                                      str r3, [r4, #0x30]
00650790  34 30 96 e5                                      ldr r3, [r6, #0x34]
00650794  34 30 84 e5                                      str r3, [r4, #0x34]
00650798  38 30 96 e5                                      ldr r3, [r6, #0x38]
0065079c  38 30 84 e5                                      str r3, [r4, #0x38]
006507a0  3c 30 96 e5                                      ldr r3, [r6, #0x3c]
006507a4  3c 30 84 e5                                      str r3, [r4, #0x3c]
006507a8  40 30 96 e5                                      ldr r3, [r6, #0x40]
006507ac  40 30 84 e5                                      str r3, [r4, #0x40]
006507b0  44 30 96 e5                                      ldr r3, [r6, #0x44]
006507b4  44 30 84 e5                                      str r3, [r4, #0x44]
006507b8  48 30 96 e5                                      ldr r3, [r6, #0x48]
006507bc  48 30 84 e5                                      str r3, [r4, #0x48]
006507c0  4c 30 96 e5                                      ldr r3, [r6, #0x4c]
006507c4  4c 30 84 e5                                      str r3, [r4, #0x4c]
006507c8  50 30 96 e5                                      ldr r3, [r6, #0x50]
006507cc  50 30 84 e5                                      str r3, [r4, #0x50]
006507d0  54 30 96 e5                                      ldr r3, [r6, #0x54]
006507d4  54 30 84 e5                                      str r3, [r4, #0x54]
006507d8  58 30 96 e5                                      ldr r3, [r6, #0x58]
006507dc  58 30 84 e5                                      str r3, [r4, #0x58]
006507e0  5c 30 96 e5                                      ldr r3, [r6, #0x5c]
006507e4  5c 30 84 e5                                      str r3, [r4, #0x5c]
006507e8  60 30 96 e5                                      ldr r3, [r6, #0x60]
006507ec  60 30 84 e5                                      str r3, [r4, #0x60]
006507f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006507f4, declared_size=312, range_size=312, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv30__unguarded_insertion_sort_auxIPN6glitch2ps9SParticleES3_NS2_9AlphaSortIS3_EEEEvT_S7_PT0_T1_
; demangled: void std::priv::__unguarded_insertion_sort_aux<glitch::ps::SParticle*, glitch::ps::SParticle, glitch::ps::AlphaSort<glitch::ps::SParticle> >(glitch::ps::SParticle*, glitch::ps::SParticle*, glitch::ps::SParticle*, glitch::ps::AlphaSort<glitch::ps::SParticle>)
; decoder-mode: arm
006507f4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006507f8  01 00 50 e1                                      cmp r0, r1
006507fc  8c d0 4d e2                                      sub sp, sp, #0x8c
00650800  14 10 8d e5                                      str r1, [sp, #0x14]
00650804  46 00 00 0a                                      beq #0x650924
00650808  00 40 a0 e1                                      mov r4, r0
0065080c  84 30 8d e2                                      add r3, sp, #0x84
00650810  20 00 8d e2                                      add r0, sp, #0x20
00650814  1c 00 8d e5                                      str r0, [sp, #0x1c]
00650818  18 30 8d e5                                      str r3, [sp, #0x18]
0065081c  28 00 94 e5                                      ldr r0, [r4, #0x28]
00650820  0c a0 94 e5                                      ldr sl, [r4, #0xc]
00650824  10 80 94 e5                                      ldr r8, [r4, #0x10]
00650828  14 70 94 e5                                      ldr r7, [r4, #0x14]
0065082c  18 60 94 e5                                      ldr r6, [r4, #0x18]
00650830  1c 50 94 e5                                      ldr r5, [r4, #0x1c]
00650834  20 e0 94 e5                                      ldr lr, [r4, #0x20]
00650838  24 c0 94 e5                                      ldr ip, [r4, #0x24]
0065083c  04 b0 94 e5                                      ldr fp, [r4, #4]
00650840  08 90 94 e5                                      ldr sb, [r4, #8]
00650844  04 00 8d e5                                      str r0, [sp, #4]
00650848  38 00 94 e5                                      ldr r0, [r4, #0x38]
0065084c  30 20 94 e5                                      ldr r2, [r4, #0x30]
00650850  34 30 94 e5                                      ldr r3, [r4, #0x34]
00650854  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
00650858  08 00 8d e5                                      str r0, [sp, #8]
0065085c  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
00650860  0c 00 8d e5                                      str r0, [sp, #0xc]
00650864  40 00 94 e5                                      ldr r0, [r4, #0x40]
00650868  10 00 8d e5                                      str r0, [sp, #0x10]
0065086c  00 00 94 e5                                      ldr r0, [r4]
00650870  2c a0 8d e5                                      str sl, [sp, #0x2c]
00650874  30 80 8d e5                                      str r8, [sp, #0x30]
00650878  20 00 8d e5                                      str r0, [sp, #0x20]
0065087c  04 00 9d e5                                      ldr r0, [sp, #4]
00650880  34 70 8d e5                                      str r7, [sp, #0x34]
00650884  38 60 8d e5                                      str r6, [sp, #0x38]
00650888  3c 50 8d e5                                      str r5, [sp, #0x3c]
0065088c  40 e0 8d e5                                      str lr, [sp, #0x40]
00650890  44 c0 8d e5                                      str ip, [sp, #0x44]
00650894  48 00 8d e5                                      str r0, [sp, #0x48]
00650898  24 b0 8d e5                                      str fp, [sp, #0x24]
0065089c  28 90 8d e5                                      str sb, [sp, #0x28]
006508a0  4c 10 8d e5                                      str r1, [sp, #0x4c]
006508a4  54 30 8d e5                                      str r3, [sp, #0x54]
006508a8  08 30 9d e5                                      ldr r3, [sp, #8]
006508ac  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006508b0  50 20 8d e5                                      str r2, [sp, #0x50]
006508b4  58 30 8d e5                                      str r3, [sp, #0x58]
006508b8  10 30 9d e5                                      ldr r3, [sp, #0x10]
006508bc  5c 00 8d e5                                      str r0, [sp, #0x5c]
006508c0  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006508c4  60 30 8d e5                                      str r3, [sp, #0x60]
006508c8  44 80 94 e5                                      ldr r8, [r4, #0x44]
006508cc  48 70 94 e5                                      ldr r7, [r4, #0x48]
006508d0  4c 60 94 e5                                      ldr r6, [r4, #0x4c]
006508d4  50 50 94 e5                                      ldr r5, [r4, #0x50]
006508d8  54 e0 94 e5                                      ldr lr, [r4, #0x54]
006508dc  58 c0 94 e5                                      ldr ip, [r4, #0x58]
006508e0  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
006508e4  60 a0 94 e5                                      ldr sl, [r4, #0x60]
006508e8  04 00 a0 e1                                      mov r0, r4
006508ec  18 20 9d e5                                      ldr r2, [sp, #0x18]
006508f0  64 80 8d e5                                      str r8, [sp, #0x64]
006508f4  68 70 8d e5                                      str r7, [sp, #0x68]
006508f8  6c 60 8d e5                                      str r6, [sp, #0x6c]
006508fc  70 50 8d e5                                      str r5, [sp, #0x70]
00650900  74 e0 8d e5                                      str lr, [sp, #0x74]
00650904  78 c0 8d e5                                      str ip, [sp, #0x78]
00650908  7c 30 8d e5                                      str r3, [sp, #0x7c]
0065090c  80 a0 8d e5                                      str sl, [sp, #0x80]
00650910  40 ff ff eb                                      bl #0x650618
00650914  14 00 9d e5                                      ldr r0, [sp, #0x14]
00650918  64 40 84 e2                                      add r4, r4, #0x64
0065091c  04 00 50 e1                                      cmp r0, r4
00650920  bd ff ff 1a                                      bne #0x65081c
00650924  8c d0 8d e2                                      add sp, sp, #0x8c
00650928  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00651568, declared_size=480, range_size=480, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv14__partial_sortIPN6glitch2ps9SParticleES3_NS2_9AlphaSortIS3_EEEEvT_S7_S7_PT0_T1_
; demangled: void std::priv::__partial_sort<glitch::ps::SParticle*, glitch::ps::SParticle, glitch::ps::AlphaSort<glitch::ps::SParticle> >(glitch::ps::SParticle*, glitch::ps::SParticle*, glitch::ps::SParticle*, glitch::ps::SParticle*, glitch::ps::AlphaSort<glitch::ps::SParticle>)
; decoder-mode: arm
00651568  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0065156c  00 40 a0 e3                                      mov r4, #0
00651570  a4 d0 4d e2                                      sub sp, sp, #0xa4
00651574  02 70 a0 e1                                      mov r7, r2
00651578  01 60 a0 e1                                      mov r6, r1
0065157c  98 20 8d e2                                      add r2, sp, #0x98
00651580  04 30 a0 e1                                      mov r3, r4
00651584  00 40 8d e5                                      str r4, [sp]
00651588  00 50 a0 e1                                      mov r5, r0
0065158c  48 fe ff eb                                      bl #0x650eb4
00651590  07 00 56 e1                                      cmp r6, r7
00651594  5b 00 00 2a                                      bhs #0x651708
00651598  30 00 8d e2                                      add r0, sp, #0x30
0065159c  9c 30 8d e2                                      add r3, sp, #0x9c
006515a0  06 40 a0 e1                                      mov r4, r6
006515a4  28 00 8d e5                                      str r0, [sp, #0x28]
006515a8  2c 30 8d e5                                      str r3, [sp, #0x2c]
006515ac  24 60 8d e5                                      str r6, [sp, #0x24]
006515b0  02 00 00 ea                                      b #0x6515c0
006515b4  64 40 84 e2                                      add r4, r4, #0x64
006515b8  04 00 57 e1                                      cmp r7, r4
006515bc  50 00 00 9a                                      bls #0x651704
006515c0  60 10 94 e5                                      ldr r1, [r4, #0x60]
006515c4  60 00 95 e5                                      ldr r0, [r5, #0x60]
006515c8  4f f4 f2 eb                                      bl #0x30e70c
006515cc  00 00 50 e3                                      cmp r0, #0
006515d0  f7 ff ff 0a                                      beq #0x6515b4
006515d4  20 00 94 e5                                      ldr r0, [r4, #0x20]
006515d8  04 b0 94 e5                                      ldr fp, [r4, #4]
006515dc  08 90 94 e5                                      ldr sb, [r4, #8]
006515e0  0c a0 94 e5                                      ldr sl, [r4, #0xc]
006515e4  10 80 94 e5                                      ldr r8, [r4, #0x10]
006515e8  14 60 94 e5                                      ldr r6, [r4, #0x14]
006515ec  18 e0 94 e5                                      ldr lr, [r4, #0x18]
006515f0  1c c0 94 e5                                      ldr ip, [r4, #0x1c]
006515f4  0c 00 8d e5                                      str r0, [sp, #0xc]
006515f8  30 00 94 e5                                      ldr r0, [r4, #0x30]
006515fc  24 10 94 e5                                      ldr r1, [r4, #0x24]
00651600  28 20 94 e5                                      ldr r2, [r4, #0x28]
00651604  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00651608  14 00 8d e5                                      str r0, [sp, #0x14]
0065160c  34 00 94 e5                                      ldr r0, [r4, #0x34]
00651610  18 00 8d e5                                      str r0, [sp, #0x18]
00651614  38 00 94 e5                                      ldr r0, [r4, #0x38]
00651618  1c 00 8d e5                                      str r0, [sp, #0x1c]
0065161c  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
00651620  20 00 8d e5                                      str r0, [sp, #0x20]
00651624  00 00 94 e5                                      ldr r0, [r4]
00651628  3c a0 8d e5                                      str sl, [sp, #0x3c]
0065162c  0c a0 9d e5                                      ldr sl, [sp, #0xc]
00651630  30 00 8d e5                                      str r0, [sp, #0x30]
00651634  34 b0 8d e5                                      str fp, [sp, #0x34]
00651638  38 90 8d e5                                      str sb, [sp, #0x38]
0065163c  40 80 8d e5                                      str r8, [sp, #0x40]
00651640  44 60 8d e5                                      str r6, [sp, #0x44]
00651644  48 e0 8d e5                                      str lr, [sp, #0x48]
00651648  4c c0 8d e5                                      str ip, [sp, #0x4c]
0065164c  50 a0 8d e5                                      str sl, [sp, #0x50]
00651650  54 10 8d e5                                      str r1, [sp, #0x54]
00651654  58 20 8d e5                                      str r2, [sp, #0x58]
00651658  5c 30 8d e5                                      str r3, [sp, #0x5c]
0065165c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00651660  18 00 9d e5                                      ldr r0, [sp, #0x18]
00651664  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00651668  20 a0 9d e5                                      ldr sl, [sp, #0x20]
0065166c  60 c0 8d e5                                      str ip, [sp, #0x60]
00651670  64 00 8d e5                                      str r0, [sp, #0x64]
00651674  68 30 8d e5                                      str r3, [sp, #0x68]
00651678  6c a0 8d e5                                      str sl, [sp, #0x6c]
0065167c  54 00 94 e5                                      ldr r0, [r4, #0x54]
00651680  48 e0 94 e5                                      ldr lr, [r4, #0x48]
00651684  4c c0 94 e5                                      ldr ip, [r4, #0x4c]
00651688  44 60 94 e5                                      ldr r6, [r4, #0x44]
0065168c  50 80 94 e5                                      ldr r8, [r4, #0x50]
00651690  18 00 8d e5                                      str r0, [sp, #0x18]
00651694  60 30 94 e5                                      ldr r3, [r4, #0x60]
00651698  58 90 94 e5                                      ldr sb, [r4, #0x58]
0065169c  5c b0 94 e5                                      ldr fp, [r4, #0x5c]
006516a0  14 30 8d e5                                      str r3, [sp, #0x14]
006516a4  40 a0 94 e5                                      ldr sl, [r4, #0x40]
006516a8  7c c0 8d e5                                      str ip, [sp, #0x7c]
006516ac  18 c0 9d e5                                      ldr ip, [sp, #0x18]
006516b0  70 a0 8d e5                                      str sl, [sp, #0x70]
006516b4  14 a0 9d e5                                      ldr sl, [sp, #0x14]
006516b8  84 c0 8d e5                                      str ip, [sp, #0x84]
006516bc  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
006516c0  04 20 a0 e1                                      mov r2, r4
006516c4  24 10 9d e5                                      ldr r1, [sp, #0x24]
006516c8  28 30 9d e5                                      ldr r3, [sp, #0x28]
006516cc  90 a0 8d e5                                      str sl, [sp, #0x90]
006516d0  05 00 a0 e1                                      mov r0, r5
006516d4  00 a0 a0 e3                                      mov sl, #0
006516d8  64 40 84 e2                                      add r4, r4, #0x64
006516dc  78 e0 8d e5                                      str lr, [sp, #0x78]
006516e0  74 60 8d e5                                      str r6, [sp, #0x74]
006516e4  80 80 8d e5                                      str r8, [sp, #0x80]
006516e8  88 90 8d e5                                      str sb, [sp, #0x88]
006516ec  8c b0 8d e5                                      str fp, [sp, #0x8c]
006516f0  00 c0 8d e5                                      str ip, [sp]
006516f4  04 a0 8d e5                                      str sl, [sp, #4]
006516f8  cf fe ff eb                                      bl #0x65123c
006516fc  04 00 57 e1                                      cmp r7, r4
00651700  ae ff ff 8a                                      bhi #0x6515c0
00651704  24 60 9d e5                                      ldr r6, [sp, #0x24]
00651708  06 70 65 e0                                      rsb r7, r5, r6
0065170c  c7 00 57 e3                                      cmp r7, #0xc7
00651710  0a 00 00 da                                      ble #0x651740
00651714  00 40 a0 e3                                      mov r4, #0
00651718  94 80 8d e2                                      add r8, sp, #0x94
0065171c  04 10 86 e0                                      add r1, r6, r4
00651720  08 30 a0 e1                                      mov r3, r8
00651724  64 40 44 e2                                      sub r4, r4, #0x64
00651728  05 00 a0 e1                                      mov r0, r5
0065172c  00 20 a0 e3                                      mov r2, #0
00651730  43 ff ff eb                                      bl #0x651444
00651734  04 30 87 e0                                      add r3, r7, r4
00651738  c7 00 53 e3                                      cmp r3, #0xc7
0065173c  f6 ff ff ca                                      bgt #0x65171c
00651740  a4 d0 8d e2                                      add sp, sp, #0xa4
00651744  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00651748, declared_size=476, range_size=476, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv16__introsort_loopIPN6glitch2ps9SParticleES3_iNS2_9AlphaSortIS3_EEEEvT_S7_PT0_T1_T2_
; demangled: void std::priv::__introsort_loop<glitch::ps::SParticle*, glitch::ps::SParticle, int, glitch::ps::AlphaSort<glitch::ps::SParticle> >(glitch::ps::SParticle*, glitch::ps::SParticle*, glitch::ps::SParticle*, int, glitch::ps::AlphaSort<glitch::ps::SParticle>)
; decoder-mode: arm
00651748  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0065174c  01 20 60 e0                                      rsb r2, r0, r1
00651750  01 70 a0 e1                                      mov r7, r1
00651754  a3 16 00 e3                                      movw r1, #0x6a3
00651758  01 00 52 e1                                      cmp r2, r1
0065175c  1c d0 4d e2                                      sub sp, sp, #0x1c
00651760  00 50 a0 e1                                      mov r5, r0
00651764  03 60 a0 e1                                      mov r6, r3
00651768  5d 00 00 da                                      ble #0x6518e4
0065176c  00 00 53 e3                                      cmp r3, #0
00651770  54 00 00 0a                                      beq #0x6518c8
00651774  29 3c 05 e3                                      movw r3, #0x5c29
00651778  8f 32 4c e3                                      movt r3, #0xc28f
0065177c  14 c0 8d e2                                      add ip, sp, #0x14
00651780  08 30 8d e5                                      str r3, [sp, #8]
00651784  0c c0 8d e5                                      str ip, [sp, #0xc]
00651788  42 31 a0 e1                                      asr r3, r2, #2
0065178c  08 20 9d e5                                      ldr r2, [sp, #8]
00651790  64 c0 a0 e3                                      mov ip, #0x64
00651794  60 40 95 e5                                      ldr r4, [r5, #0x60]
00651798  92 03 03 e0                                      mul r3, r2, r3
0065179c  04 10 a0 e1                                      mov r1, r4
006517a0  c3 30 a0 e1                                      asr r3, r3, #1
006517a4  9c 53 23 e0                                      mla r3, ip, r3, r5
006517a8  01 60 46 e2                                      sub r6, r6, #1
006517ac  60 80 93 e5                                      ldr r8, [r3, #0x60]
006517b0  64 a0 47 e2                                      sub sl, r7, #0x64
006517b4  08 00 a0 e1                                      mov r0, r8
006517b8  d3 f3 f2 eb                                      bl #0x30e70c
006517bc  00 00 50 e3                                      cmp r0, #0
006517c0  49 00 00 0a                                      beq #0x6518ec
006517c4  60 a0 9a e5                                      ldr sl, [sl, #0x60]
006517c8  08 00 a0 e1                                      mov r0, r8
006517cc  0a 10 a0 e1                                      mov r1, sl
006517d0  c8 f2 f2 eb                                      bl #0x30e2f8
006517d4  00 00 50 e3                                      cmp r0, #0
006517d8  4e 00 00 1a                                      bne #0x651918
006517dc  04 00 a0 e1                                      mov r0, r4
006517e0  0a 10 a0 e1                                      mov r1, sl
006517e4  c3 f2 f2 eb                                      bl #0x30e2f8
006517e8  00 00 50 e3                                      cmp r0, #0
006517ec  25 00 00 1a                                      bne #0x651888
006517f0  0a b0 a0 e1                                      mov fp, sl
006517f4  04 a0 a0 e1                                      mov sl, r4
006517f8  07 80 a0 e1                                      mov r8, r7
006517fc  05 90 a0 e1                                      mov sb, r5
00651800  04 10 a0 e1                                      mov r1, r4
00651804  0a 00 a0 e1                                      mov r0, sl
00651808  bf f3 f2 eb                                      bl #0x30e70c
0065180c  00 00 50 e3                                      cmp r0, #0
00651810  09 40 a0 01                                      moveq r4, sb
00651814  06 00 00 0a                                      beq #0x651834
00651818  09 40 a0 e1                                      mov r4, sb
0065181c  64 40 84 e2                                      add r4, r4, #0x64
00651820  60 00 94 e5                                      ldr r0, [r4, #0x60]
00651824  0a 10 a0 e1                                      mov r1, sl
00651828  b2 f2 f2 eb                                      bl #0x30e2f8
0065182c  00 00 50 e3                                      cmp r0, #0
00651830  f9 ff ff 1a                                      bne #0x65181c
00651834  0b 00 a0 e1                                      mov r0, fp
00651838  0a 10 a0 e1                                      mov r1, sl
0065183c  b2 f3 f2 eb                                      bl #0x30e70c
00651840  00 00 50 e3                                      cmp r0, #0
00651844  64 80 48 e2                                      sub r8, r8, #0x64
00651848  05 00 00 0a                                      beq #0x651864
0065184c  64 80 48 e2                                      sub r8, r8, #0x64
00651850  60 00 98 e5                                      ldr r0, [r8, #0x60]
00651854  0a 10 a0 e1                                      mov r1, sl
00651858  ab f3 f2 eb                                      bl #0x30e70c
0065185c  00 00 50 e3                                      cmp r0, #0
00651860  f9 ff ff 1a                                      bne #0x65184c
00651864  04 00 58 e1                                      cmp r8, r4
00651868  08 00 00 9a                                      bls #0x651890
0065186c  04 00 a0 e1                                      mov r0, r4
00651870  64 90 84 e2                                      add sb, r4, #0x64
00651874  08 10 a0 e1                                      mov r1, r8
00651878  dc fd ff eb                                      bl #0x650ff0
0065187c  60 40 99 e5                                      ldr r4, [sb, #0x60]
00651880  04 b0 18 e5                                      ldr fp, [r8, #-4]
00651884  dd ff ff ea                                      b #0x651800
00651888  0a b0 a0 e1                                      mov fp, sl
0065188c  d9 ff ff ea                                      b #0x6517f8
00651890  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00651894  00 20 a0 e3                                      mov r2, #0
00651898  06 30 a0 e1                                      mov r3, r6
0065189c  07 10 a0 e1                                      mov r1, r7
006518a0  04 00 a0 e1                                      mov r0, r4
006518a4  00 c0 8d e5                                      str ip, [sp]
006518a8  a6 ff ff eb                                      bl #0x651748
006518ac  04 20 65 e0                                      rsb r2, r5, r4
006518b0  a3 36 00 e3                                      movw r3, #0x6a3
006518b4  03 00 52 e1                                      cmp r2, r3
006518b8  09 00 00 da                                      ble #0x6518e4
006518bc  00 00 56 e3                                      cmp r6, #0
006518c0  04 70 a0 e1                                      mov r7, r4
006518c4  af ff ff 1a                                      bne #0x651788
006518c8  10 c0 8d e2                                      add ip, sp, #0x10
006518cc  07 10 a0 e1                                      mov r1, r7
006518d0  05 00 a0 e1                                      mov r0, r5
006518d4  07 20 a0 e1                                      mov r2, r7
006518d8  00 30 a0 e3                                      mov r3, #0
006518dc  00 c0 8d e5                                      str ip, [sp]
006518e0  20 ff ff eb                                      bl #0x651568
006518e4  1c d0 8d e2                                      add sp, sp, #0x1c
006518e8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006518ec  60 a0 9a e5                                      ldr sl, [sl, #0x60]
006518f0  04 00 a0 e1                                      mov r0, r4
006518f4  0a 10 a0 e1                                      mov r1, sl
006518f8  7e f2 f2 eb                                      bl #0x30e2f8
006518fc  00 00 50 e3                                      cmp r0, #0
00651900  ba ff ff 1a                                      bne #0x6517f0
00651904  08 00 a0 e1                                      mov r0, r8
00651908  0a 10 a0 e1                                      mov r1, sl
0065190c  79 f2 f2 eb                                      bl #0x30e2f8
00651910  00 00 50 e3                                      cmp r0, #0
00651914  db ff ff 1a                                      bne #0x651888
00651918  0a b0 a0 e1                                      mov fp, sl
0065191c  08 a0 a0 e1                                      mov sl, r8
00651920  b4 ff ff ea                                      b #0x6517f8

; FUNCTION 0x006519cc, declared_size=760, range_size=760, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv15__linear_insertIPN6glitch2ps9SParticleES3_NS2_9AlphaSortIS3_EEEEvT_S7_T0_T1_
; demangled: void std::priv::__linear_insert<glitch::ps::SParticle*, glitch::ps::SParticle, glitch::ps::AlphaSort<glitch::ps::SParticle> >(glitch::ps::SParticle*, glitch::ps::SParticle*, glitch::ps::SParticle, glitch::ps::AlphaSort<glitch::ps::SParticle>)
; decoder-mode: arm
006519cc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006519d0  00 60 a0 e1                                      mov r6, r0
006519d4  84 d0 4d e2                                      sub sp, sp, #0x84
006519d8  01 40 a0 e1                                      mov r4, r1
006519dc  60 00 90 e5                                      ldr r0, [r0, #0x60]
006519e0  60 10 92 e5                                      ldr r1, [r2, #0x60]
006519e4  02 50 a0 e1                                      mov r5, r2
006519e8  47 f3 f2 eb                                      bl #0x30e70c
006519ec  00 00 50 e3                                      cmp r0, #0
006519f0  72 00 00 0a                                      beq #0x651bc0
006519f4  04 30 66 e0                                      rsb r3, r6, r4
006519f8  29 2c 05 e3                                      movw r2, #0x5c29
006519fc  43 31 a0 e1                                      asr r3, r3, #2
00651a00  8f 22 4c e3                                      movt r2, #0xc28f
00651a04  92 03 03 e0                                      mul r3, r2, r3
00651a08  00 00 53 e3                                      cmp r3, #0
00651a0c  37 00 00 da                                      ble #0x651af0
00651a10  10 60 8d e5                                      str r6, [sp, #0x10]
00651a14  14 50 8d e5                                      str r5, [sp, #0x14]
00651a18  64 90 34 e5                                      ldr sb, [r4, #-0x64]!
00651a1c  01 30 53 e2                                      subs r3, r3, #1
00651a20  24 20 94 e5                                      ldr r2, [r4, #0x24]
00651a24  08 80 94 e5                                      ldr r8, [r4, #8]
00651a28  0c 70 94 e5                                      ldr r7, [r4, #0xc]
00651a2c  88 20 84 e5                                      str r2, [r4, #0x88]
00651a30  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
00651a34  10 60 94 e5                                      ldr r6, [r4, #0x10]
00651a38  14 50 94 e5                                      ldr r5, [r4, #0x14]
00651a3c  90 20 84 e5                                      str r2, [r4, #0x90]
00651a40  30 20 94 e5                                      ldr r2, [r4, #0x30]
00651a44  18 c0 94 e5                                      ldr ip, [r4, #0x18]
00651a48  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
00651a4c  94 20 84 e5                                      str r2, [r4, #0x94]
00651a50  34 20 94 e5                                      ldr r2, [r4, #0x34]
00651a54  20 10 94 e5                                      ldr r1, [r4, #0x20]
00651a58  04 a0 94 e5                                      ldr sl, [r4, #4]
00651a5c  98 20 84 e5                                      str r2, [r4, #0x98]
00651a60  38 20 94 e5                                      ldr r2, [r4, #0x38]
00651a64  28 b0 94 e5                                      ldr fp, [r4, #0x28]
00651a68  6c 80 84 e5                                      str r8, [r4, #0x6c]
00651a6c  9c 20 84 e5                                      str r2, [r4, #0x9c]
00651a70  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
00651a74  70 70 84 e5                                      str r7, [r4, #0x70]
00651a78  74 60 84 e5                                      str r6, [r4, #0x74]
00651a7c  a0 20 84 e5                                      str r2, [r4, #0xa0]
00651a80  40 20 94 e5                                      ldr r2, [r4, #0x40]
00651a84  78 50 84 e5                                      str r5, [r4, #0x78]
00651a88  7c c0 84 e5                                      str ip, [r4, #0x7c]
00651a8c  80 00 84 e5                                      str r0, [r4, #0x80]
00651a90  84 10 84 e5                                      str r1, [r4, #0x84]
00651a94  64 90 84 e5                                      str sb, [r4, #0x64]
00651a98  68 a0 84 e5                                      str sl, [r4, #0x68]
00651a9c  8c b0 84 e5                                      str fp, [r4, #0x8c]
00651aa0  a4 20 84 e5                                      str r2, [r4, #0xa4]
00651aa4  44 80 94 e5                                      ldr r8, [r4, #0x44]
00651aa8  48 70 94 e5                                      ldr r7, [r4, #0x48]
00651aac  4c 60 94 e5                                      ldr r6, [r4, #0x4c]
00651ab0  50 50 94 e5                                      ldr r5, [r4, #0x50]
00651ab4  54 c0 94 e5                                      ldr ip, [r4, #0x54]
00651ab8  58 00 94 e5                                      ldr r0, [r4, #0x58]
00651abc  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
00651ac0  60 20 94 e5                                      ldr r2, [r4, #0x60]
00651ac4  a8 80 84 e5                                      str r8, [r4, #0xa8]
00651ac8  ac 70 84 e5                                      str r7, [r4, #0xac]
00651acc  b0 60 84 e5                                      str r6, [r4, #0xb0]
00651ad0  b4 50 84 e5                                      str r5, [r4, #0xb4]
00651ad4  b8 c0 84 e5                                      str ip, [r4, #0xb8]
00651ad8  bc 00 84 e5                                      str r0, [r4, #0xbc]
00651adc  c0 10 84 e5                                      str r1, [r4, #0xc0]
00651ae0  c4 20 84 e5                                      str r2, [r4, #0xc4]
00651ae4  cb ff ff 1a                                      bne #0x651a18
00651ae8  10 60 9d e5                                      ldr r6, [sp, #0x10]
00651aec  14 50 9d e5                                      ldr r5, [sp, #0x14]
00651af0  00 30 95 e5                                      ldr r3, [r5]
00651af4  00 30 86 e5                                      str r3, [r6]
00651af8  04 30 95 e5                                      ldr r3, [r5, #4]
00651afc  04 30 86 e5                                      str r3, [r6, #4]
00651b00  08 30 95 e5                                      ldr r3, [r5, #8]
00651b04  08 30 86 e5                                      str r3, [r6, #8]
00651b08  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00651b0c  0c 30 86 e5                                      str r3, [r6, #0xc]
00651b10  10 30 95 e5                                      ldr r3, [r5, #0x10]
00651b14  10 30 86 e5                                      str r3, [r6, #0x10]
00651b18  14 30 95 e5                                      ldr r3, [r5, #0x14]
00651b1c  14 30 86 e5                                      str r3, [r6, #0x14]
00651b20  18 30 95 e5                                      ldr r3, [r5, #0x18]
00651b24  18 30 86 e5                                      str r3, [r6, #0x18]
00651b28  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
00651b2c  1c 30 86 e5                                      str r3, [r6, #0x1c]
00651b30  20 30 95 e5                                      ldr r3, [r5, #0x20]
00651b34  20 30 86 e5                                      str r3, [r6, #0x20]
00651b38  24 30 95 e5                                      ldr r3, [r5, #0x24]
00651b3c  24 30 86 e5                                      str r3, [r6, #0x24]
00651b40  28 30 95 e5                                      ldr r3, [r5, #0x28]
00651b44  28 30 86 e5                                      str r3, [r6, #0x28]
00651b48  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
00651b4c  2c 30 86 e5                                      str r3, [r6, #0x2c]
00651b50  30 30 95 e5                                      ldr r3, [r5, #0x30]
00651b54  30 30 86 e5                                      str r3, [r6, #0x30]
00651b58  34 30 95 e5                                      ldr r3, [r5, #0x34]
00651b5c  34 30 86 e5                                      str r3, [r6, #0x34]
00651b60  38 30 95 e5                                      ldr r3, [r5, #0x38]
00651b64  38 30 86 e5                                      str r3, [r6, #0x38]
00651b68  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
00651b6c  3c 30 86 e5                                      str r3, [r6, #0x3c]
00651b70  40 30 95 e5                                      ldr r3, [r5, #0x40]
00651b74  40 30 86 e5                                      str r3, [r6, #0x40]
00651b78  44 30 95 e5                                      ldr r3, [r5, #0x44]
00651b7c  44 30 86 e5                                      str r3, [r6, #0x44]
00651b80  48 30 95 e5                                      ldr r3, [r5, #0x48]
00651b84  48 30 86 e5                                      str r3, [r6, #0x48]
00651b88  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
00651b8c  4c 30 86 e5                                      str r3, [r6, #0x4c]
00651b90  50 30 95 e5                                      ldr r3, [r5, #0x50]
00651b94  50 30 86 e5                                      str r3, [r6, #0x50]
00651b98  54 30 95 e5                                      ldr r3, [r5, #0x54]
00651b9c  54 30 86 e5                                      str r3, [r6, #0x54]
00651ba0  58 30 95 e5                                      ldr r3, [r5, #0x58]
00651ba4  58 30 86 e5                                      str r3, [r6, #0x58]
00651ba8  5c 30 95 e5                                      ldr r3, [r5, #0x5c]
00651bac  5c 30 86 e5                                      str r3, [r6, #0x5c]
00651bb0  60 30 95 e5                                      ldr r3, [r5, #0x60]
00651bb4  60 30 86 e5                                      str r3, [r6, #0x60]
00651bb8  84 d0 8d e2                                      add sp, sp, #0x84
00651bbc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00651bc0  30 30 95 e5                                      ldr r3, [r5, #0x30]
00651bc4  04 b0 95 e5                                      ldr fp, [r5, #4]
00651bc8  08 90 95 e5                                      ldr sb, [r5, #8]
00651bcc  0c a0 95 e5                                      ldr sl, [r5, #0xc]
00651bd0  10 80 95 e5                                      ldr r8, [r5, #0x10]
00651bd4  14 70 95 e5                                      ldr r7, [r5, #0x14]
00651bd8  18 60 95 e5                                      ldr r6, [r5, #0x18]
00651bdc  1c e0 95 e5                                      ldr lr, [r5, #0x1c]
00651be0  20 c0 95 e5                                      ldr ip, [r5, #0x20]
00651be4  24 00 95 e5                                      ldr r0, [r5, #0x24]
00651be8  28 10 95 e5                                      ldr r1, [r5, #0x28]
00651bec  2c 20 95 e5                                      ldr r2, [r5, #0x2c]
00651bf0  10 30 8d e5                                      str r3, [sp, #0x10]
00651bf4  34 30 95 e5                                      ldr r3, [r5, #0x34]
00651bf8  00 30 8d e5                                      str r3, [sp]
00651bfc  38 30 95 e5                                      ldr r3, [r5, #0x38]
00651c00  04 30 8d e5                                      str r3, [sp, #4]
00651c04  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
00651c08  08 30 8d e5                                      str r3, [sp, #8]
00651c0c  40 30 95 e5                                      ldr r3, [r5, #0x40]
00651c10  0c 30 8d e5                                      str r3, [sp, #0xc]
00651c14  00 30 95 e5                                      ldr r3, [r5]
00651c18  24 a0 8d e5                                      str sl, [sp, #0x24]
00651c1c  28 80 8d e5                                      str r8, [sp, #0x28]
00651c20  18 30 8d e5                                      str r3, [sp, #0x18]
00651c24  2c 70 8d e5                                      str r7, [sp, #0x2c]
00651c28  30 60 8d e5                                      str r6, [sp, #0x30]
00651c2c  34 e0 8d e5                                      str lr, [sp, #0x34]
00651c30  38 c0 8d e5                                      str ip, [sp, #0x38]
00651c34  3c 00 8d e5                                      str r0, [sp, #0x3c]
00651c38  40 10 8d e5                                      str r1, [sp, #0x40]
00651c3c  1c b0 8d e5                                      str fp, [sp, #0x1c]
00651c40  20 90 8d e5                                      str sb, [sp, #0x20]
00651c44  44 20 8d e5                                      str r2, [sp, #0x44]
00651c48  10 20 9d e5                                      ldr r2, [sp, #0x10]
00651c4c  00 30 9d e5                                      ldr r3, [sp]
00651c50  04 00 a0 e1                                      mov r0, r4
00651c54  48 20 8d e5                                      str r2, [sp, #0x48]
00651c58  04 20 9d e5                                      ldr r2, [sp, #4]
00651c5c  4c 30 8d e5                                      str r3, [sp, #0x4c]
00651c60  08 30 9d e5                                      ldr r3, [sp, #8]
00651c64  50 20 8d e5                                      str r2, [sp, #0x50]
00651c68  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00651c6c  54 30 8d e5                                      str r3, [sp, #0x54]
00651c70  18 10 8d e2                                      add r1, sp, #0x18
00651c74  58 20 8d e5                                      str r2, [sp, #0x58]
00651c78  60 a0 95 e5                                      ldr sl, [r5, #0x60]
00651c7c  44 80 95 e5                                      ldr r8, [r5, #0x44]
00651c80  48 70 95 e5                                      ldr r7, [r5, #0x48]
00651c84  4c 60 95 e5                                      ldr r6, [r5, #0x4c]
00651c88  50 e0 95 e5                                      ldr lr, [r5, #0x50]
00651c8c  54 c0 95 e5                                      ldr ip, [r5, #0x54]
00651c90  58 30 95 e5                                      ldr r3, [r5, #0x58]
00651c94  5c 50 95 e5                                      ldr r5, [r5, #0x5c]
00651c98  7c 20 8d e2                                      add r2, sp, #0x7c
00651c9c  5c 80 8d e5                                      str r8, [sp, #0x5c]
00651ca0  60 70 8d e5                                      str r7, [sp, #0x60]
00651ca4  64 60 8d e5                                      str r6, [sp, #0x64]
00651ca8  68 e0 8d e5                                      str lr, [sp, #0x68]
00651cac  6c c0 8d e5                                      str ip, [sp, #0x6c]
00651cb0  70 30 8d e5                                      str r3, [sp, #0x70]
00651cb4  74 50 8d e5                                      str r5, [sp, #0x74]
00651cb8  78 a0 8d e5                                      str sl, [sp, #0x78]
00651cbc  55 fa ff eb                                      bl #0x650618
00651cc0  bc ff ff ea                                      b #0x651bb8

; FUNCTION 0x00651cc4, declared_size=328, range_size=328, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv16__insertion_sortIPN6glitch2ps9SParticleES3_NS2_9AlphaSortIS3_EEEEvT_S7_PT0_T1_
; demangled: void std::priv::__insertion_sort<glitch::ps::SParticle*, glitch::ps::SParticle, glitch::ps::AlphaSort<glitch::ps::SParticle> >(glitch::ps::SParticle*, glitch::ps::SParticle*, glitch::ps::SParticle*, glitch::ps::AlphaSort<glitch::ps::SParticle>)
; decoder-mode: arm
00651cc4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00651cc8  01 00 50 e1                                      cmp r0, r1
00651ccc  94 d0 4d e2                                      sub sp, sp, #0x94
00651cd0  18 00 8d e5                                      str r0, [sp, #0x18]
00651cd4  1c 10 8d e5                                      str r1, [sp, #0x1c]
00651cd8  49 00 00 0a                                      beq #0x651e04
00651cdc  64 40 80 e2                                      add r4, r0, #0x64
00651ce0  04 00 51 e1                                      cmp r1, r4
00651ce4  46 00 00 0a                                      beq #0x651e04
00651ce8  28 20 8d e2                                      add r2, sp, #0x28
00651cec  8c 30 8d e2                                      add r3, sp, #0x8c
00651cf0  24 20 8d e5                                      str r2, [sp, #0x24]
00651cf4  20 30 8d e5                                      str r3, [sp, #0x20]
00651cf8  24 c0 94 e5                                      ldr ip, [r4, #0x24]
00651cfc  08 90 94 e5                                      ldr sb, [r4, #8]
00651d00  0c a0 94 e5                                      ldr sl, [r4, #0xc]
00651d04  10 80 94 e5                                      ldr r8, [r4, #0x10]
00651d08  14 70 94 e5                                      ldr r7, [r4, #0x14]
00651d0c  18 60 94 e5                                      ldr r6, [r4, #0x18]
00651d10  1c 50 94 e5                                      ldr r5, [r4, #0x1c]
00651d14  20 e0 94 e5                                      ldr lr, [r4, #0x20]
00651d18  04 b0 94 e5                                      ldr fp, [r4, #4]
00651d1c  04 c0 8d e5                                      str ip, [sp, #4]
00651d20  38 c0 94 e5                                      ldr ip, [r4, #0x38]
00651d24  30 20 94 e5                                      ldr r2, [r4, #0x30]
00651d28  34 30 94 e5                                      ldr r3, [r4, #0x34]
00651d2c  28 00 94 e5                                      ldr r0, [r4, #0x28]
00651d30  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
00651d34  0c c0 8d e5                                      str ip, [sp, #0xc]
00651d38  3c c0 94 e5                                      ldr ip, [r4, #0x3c]
00651d3c  10 c0 8d e5                                      str ip, [sp, #0x10]
00651d40  40 c0 94 e5                                      ldr ip, [r4, #0x40]
00651d44  14 c0 8d e5                                      str ip, [sp, #0x14]
00651d48  00 c0 94 e5                                      ldr ip, [r4]
00651d4c  30 90 8d e5                                      str sb, [sp, #0x30]
00651d50  34 a0 8d e5                                      str sl, [sp, #0x34]
00651d54  28 c0 8d e5                                      str ip, [sp, #0x28]
00651d58  04 c0 9d e5                                      ldr ip, [sp, #4]
00651d5c  38 80 8d e5                                      str r8, [sp, #0x38]
00651d60  3c 70 8d e5                                      str r7, [sp, #0x3c]
00651d64  40 60 8d e5                                      str r6, [sp, #0x40]
00651d68  44 50 8d e5                                      str r5, [sp, #0x44]
00651d6c  48 e0 8d e5                                      str lr, [sp, #0x48]
00651d70  4c c0 8d e5                                      str ip, [sp, #0x4c]
00651d74  50 00 8d e5                                      str r0, [sp, #0x50]
00651d78  2c b0 8d e5                                      str fp, [sp, #0x2c]
00651d7c  54 10 8d e5                                      str r1, [sp, #0x54]
00651d80  58 20 8d e5                                      str r2, [sp, #0x58]
00651d84  5c 30 8d e5                                      str r3, [sp, #0x5c]
00651d88  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00651d8c  10 30 9d e5                                      ldr r3, [sp, #0x10]
00651d90  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00651d94  60 20 8d e5                                      str r2, [sp, #0x60]
00651d98  64 30 8d e5                                      str r3, [sp, #0x64]
00651d9c  68 c0 8d e5                                      str ip, [sp, #0x68]
00651da0  44 70 94 e5                                      ldr r7, [r4, #0x44]
00651da4  48 60 94 e5                                      ldr r6, [r4, #0x48]
00651da8  4c 50 94 e5                                      ldr r5, [r4, #0x4c]
00651dac  50 e0 94 e5                                      ldr lr, [r4, #0x50]
00651db0  54 c0 94 e5                                      ldr ip, [r4, #0x54]
00651db4  58 80 94 e5                                      ldr r8, [r4, #0x58]
00651db8  5c a0 94 e5                                      ldr sl, [r4, #0x5c]
00651dbc  60 90 94 e5                                      ldr sb, [r4, #0x60]
00651dc0  04 10 a0 e1                                      mov r1, r4
00651dc4  24 20 9d e5                                      ldr r2, [sp, #0x24]
00651dc8  18 00 9d e5                                      ldr r0, [sp, #0x18]
00651dcc  20 30 9d e5                                      ldr r3, [sp, #0x20]
00651dd0  6c 70 8d e5                                      str r7, [sp, #0x6c]
00651dd4  70 60 8d e5                                      str r6, [sp, #0x70]
00651dd8  74 50 8d e5                                      str r5, [sp, #0x74]
00651ddc  78 e0 8d e5                                      str lr, [sp, #0x78]
00651de0  7c c0 8d e5                                      str ip, [sp, #0x7c]
00651de4  80 80 8d e5                                      str r8, [sp, #0x80]
00651de8  84 a0 8d e5                                      str sl, [sp, #0x84]
00651dec  88 90 8d e5                                      str sb, [sp, #0x88]
00651df0  f5 fe ff eb                                      bl #0x6519cc
00651df4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00651df8  64 40 84 e2                                      add r4, r4, #0x64
00651dfc  04 00 52 e1                                      cmp r2, r4
00651e00  bc ff ff 1a                                      bne #0x651cf8
00651e04  94 d0 8d e2                                      add sp, sp, #0x94
00651e08  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00651e0c, declared_size=96, range_size=96, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv22__final_insertion_sortIPN6glitch2ps9SParticleENS2_9AlphaSortIS3_EEEEvT_S7_T0_
; demangled: void std::priv::__final_insertion_sort<glitch::ps::SParticle*, glitch::ps::AlphaSort<glitch::ps::SParticle> >(glitch::ps::SParticle*, glitch::ps::SParticle*, glitch::ps::AlphaSort<glitch::ps::SParticle>)
; decoder-mode: arm
00651e0c  30 40 2d e9                                      push {r4, r5, lr}
00651e10  01 20 60 e0                                      rsb r2, r0, r1
00651e14  a3 36 00 e3                                      movw r3, #0x6a3
00651e18  03 00 52 e1                                      cmp r2, r3
00651e1c  14 d0 4d e2                                      sub sp, sp, #0x14
00651e20  00 50 a0 e1                                      mov r5, r0
00651e24  01 40 a0 e1                                      mov r4, r1
00651e28  0b 00 00 da                                      ble #0x651e5c
00651e2c  19 5d 80 e2                                      add r5, r0, #0x640
00651e30  0c 30 8d e2                                      add r3, sp, #0xc
00651e34  05 10 a0 e1                                      mov r1, r5
00651e38  00 20 a0 e3                                      mov r2, #0
00651e3c  a0 ff ff eb                                      bl #0x651cc4
00651e40  05 00 a0 e1                                      mov r0, r5
00651e44  04 10 a0 e1                                      mov r1, r4
00651e48  00 20 a0 e3                                      mov r2, #0
00651e4c  04 30 8d e2                                      add r3, sp, #4
00651e50  67 fa ff eb                                      bl #0x6507f4
00651e54  14 d0 8d e2                                      add sp, sp, #0x14
00651e58  30 80 bd e8                                      pop {r4, r5, pc}
00651e5c  00 20 a0 e3                                      mov r2, #0
00651e60  08 30 8d e2                                      add r3, sp, #8
00651e64  96 ff ff eb                                      bl #0x651cc4
00651e68  f9 ff ff ea                                      b #0x651e54

; FUNCTION 0x006629b0, declared_size=92, range_size=92, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv7__ufillIPN6glitch7collada33CSceneNodeAnimatorSynchronizedSet19SynchronizationDataES4_iEEvT_S6_RKT0_RKSt26random_access_iterator_tagPT1_
; demangled: void std::priv::__ufill<glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData*, glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData, int>(glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData*, glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData*, glitch::collada::CSceneNodeAnimatorSynchronizedSet::SynchronizationData const&, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
006629b0  01 10 60 e0                                      rsb r1, r0, r1
006629b4  70 40 2d e9                                      push {r4, r5, r6, lr}
006629b8  c1 62 a0 e1                                      asr r6, r1, #5
006629bc  00 00 56 e3                                      cmp r6, #0
006629c0  02 50 a0 e1                                      mov r5, r2
006629c4  0f 00 00 da                                      ble #0x662a08
006629c8  00 40 a0 e1                                      mov r4, r0
006629cc  00 00 00 ea                                      b #0x6629d4
006629d0  20 40 84 e2                                      add r4, r4, #0x20
006629d4  00 20 95 e5                                      ldr r2, [r5]
006629d8  08 30 84 e2                                      add r3, r4, #8
006629dc  03 00 a0 e1                                      mov r0, r3
006629e0  00 20 84 e5                                      str r2, [r4]
006629e4  04 20 95 e5                                      ldr r2, [r5, #4]
006629e8  18 30 84 e5                                      str r3, [r4, #0x18]
006629ec  1c 30 84 e5                                      str r3, [r4, #0x1c]
006629f0  04 20 84 e5                                      str r2, [r4, #4]
006629f4  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
006629f8  18 20 95 e5                                      ldr r2, [r5, #0x18]
006629fc  39 bb f2 eb                                      bl #0x3116e8
00662a00  01 60 56 e2                                      subs r6, r6, #1
00662a04  f1 ff ff 1a                                      bne #0x6629d0
00662a08  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00663780, declared_size=156, range_size=156, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv7__ufillIPN6glitch7collada11SSkinBufferES3_iEEvT_S5_RKT0_RKSt26random_access_iterator_tagPT1_
; demangled: void std::priv::__ufill<glitch::collada::SSkinBuffer*, glitch::collada::SSkinBuffer, int>(glitch::collada::SSkinBuffer*, glitch::collada::SSkinBuffer*, glitch::collada::SSkinBuffer const&, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00663780  01 30 60 e0                                      rsb r3, r0, r1
00663784  43 31 a0 e1                                      asr r3, r3, #2
00663788  83 10 83 e0                                      add r1, r3, r3, lsl #1
0066378c  01 12 81 e0                                      add r1, r1, r1, lsl #4
00663790  01 14 81 e0                                      add r1, r1, r1, lsl #8
00663794  01 18 81 e0                                      add r1, r1, r1, lsl #16
00663798  01 31 83 e0                                      add r3, r3, r1, lsl #2
0066379c  00 00 53 e3                                      cmp r3, #0
006637a0  1e ff 2f d1                                      bxle lr
006637a4  00 10 92 e5                                      ldr r1, [r2]
006637a8  00 10 80 e5                                      str r1, [r0]
006637ac  00 00 51 e3                                      cmp r1, #0
006637b0  04 c0 91 15                                      ldrne ip, [r1, #4]
006637b4  01 c0 8c 12                                      addne ip, ip, #1
006637b8  04 c0 81 15                                      strne ip, [r1, #4]
006637bc  04 10 92 e5                                      ldr r1, [r2, #4]
006637c0  04 10 80 e5                                      str r1, [r0, #4]
006637c4  00 00 51 e3                                      cmp r1, #0
006637c8  00 c0 91 15                                      ldrne ip, [r1]
006637cc  01 c0 8c 12                                      addne ip, ip, #1
006637d0  00 c0 81 15                                      strne ip, [r1]
006637d4  08 10 92 e5                                      ldr r1, [r2, #8]
006637d8  08 10 80 e5                                      str r1, [r0, #8]
006637dc  00 00 51 e3                                      cmp r1, #0
006637e0  00 c0 91 15                                      ldrne ip, [r1]
006637e4  01 c0 8c 12                                      addne ip, ip, #1
006637e8  00 c0 81 15                                      strne ip, [r1]
006637ec  0c 10 92 e5                                      ldr r1, [r2, #0xc]
006637f0  01 30 53 e2                                      subs r3, r3, #1
006637f4  0c 10 80 e5                                      str r1, [r0, #0xc]
006637f8  10 10 d2 e5                                      ldrb r1, [r2, #0x10]
006637fc  10 10 c0 e5                                      strb r1, [r0, #0x10]
00663800  11 10 d2 e5                                      ldrb r1, [r2, #0x11]
00663804  11 10 c0 e5                                      strb r1, [r0, #0x11]
00663808  12 10 d2 e5                                      ldrb r1, [r2, #0x12]
0066380c  12 10 c0 e5                                      strb r1, [r0, #0x12]
00663810  1e ff 2f 01                                      bxeq lr
00663814  14 00 80 e2                                      add r0, r0, #0x14
00663818  e1 ff ff ea                                      b #0x6637a4

; FUNCTION 0x0066bdd8, declared_size=80, range_size=80, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv6__fillIPN6glitch4core8CMatrix4IfEES4_iEEvT_S6_RKT0_RKSt26random_access_iterator_tagPT1_
; demangled: void std::priv::__fill<glitch::core::CMatrix4<float>*, glitch::core::CMatrix4<float>, int>(glitch::core::CMatrix4<float>*, glitch::core::CMatrix4<float>*, glitch::core::CMatrix4<float> const&, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
0066bdd8  01 30 60 e0                                      rsb r3, r0, r1
0066bddc  43 31 a0 e1                                      asr r3, r3, #2
0066bde0  70 40 2d e9                                      push {r4, r5, r6, lr}
0066bde4  03 42 a0 e1                                      lsl r4, r3, #4
0066bde8  04 40 63 e0                                      rsb r4, r3, r4
0066bdec  04 44 84 e0                                      add r4, r4, r4, lsl #8
0066bdf0  00 50 a0 e1                                      mov r5, r0
0066bdf4  04 48 84 e0                                      add r4, r4, r4, lsl #16
0066bdf8  02 60 a0 e1                                      mov r6, r2
0066bdfc  04 42 83 e0                                      add r4, r3, r4, lsl #4
0066be00  00 00 54 e3                                      cmp r4, #0
0066be04  06 00 00 da                                      ble #0x66be24
0066be08  05 00 a0 e1                                      mov r0, r5
0066be0c  06 10 a0 e1                                      mov r1, r6
0066be10  41 20 a0 e3                                      mov r2, #0x41
0066be14  93 8a f2 eb                                      bl #0x30e868
0066be18  01 40 54 e2                                      subs r4, r4, #1
0066be1c  44 50 85 e2                                      add r5, r5, #0x44
0066be20  f8 ff ff 1a                                      bne #0x66be08
0066be24  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006ad77c, declared_size=156, range_size=156, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv7__ufillIPN6glitch3gui15CGUIContextMenu5SItemES4_iEEvT_S6_RKT0_RKSt26random_access_iterator_tagPT1_
; demangled: void std::priv::__ufill<glitch::gui::CGUIContextMenu::SItem*, glitch::gui::CGUIContextMenu::SItem, int>(glitch::gui::CGUIContextMenu::SItem*, glitch::gui::CGUIContextMenu::SItem*, glitch::gui::CGUIContextMenu::SItem const&, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
006ad77c  01 30 60 e0                                      rsb r3, r0, r1
006ad780  c3 32 a0 e1                                      asr r3, r3, #5
006ad784  70 40 2d e9                                      push {r4, r5, r6, lr}
006ad788  03 61 83 e0                                      add r6, r3, r3, lsl #2
006ad78c  02 50 a0 e1                                      mov r5, r2
006ad790  06 62 86 e0                                      add r6, r6, r6, lsl #4
006ad794  06 64 86 e0                                      add r6, r6, r6, lsl #8
006ad798  06 68 86 e0                                      add r6, r6, r6, lsl #16
006ad79c  86 60 83 e0                                      add r6, r3, r6, lsl #1
006ad7a0  00 00 56 e3                                      cmp r6, #0
006ad7a4  1a 00 00 da                                      ble #0x6ad814
006ad7a8  00 40 a0 e1                                      mov r4, r0
006ad7ac  00 00 00 ea                                      b #0x6ad7b4
006ad7b0  60 40 84 e2                                      add r4, r4, #0x60
006ad7b4  40 40 84 e5                                      str r4, [r4, #0x40]
006ad7b8  44 40 84 e5                                      str r4, [r4, #0x44]
006ad7bc  04 00 a0 e1                                      mov r0, r4
006ad7c0  44 10 95 e5                                      ldr r1, [r5, #0x44]
006ad7c4  40 20 95 e5                                      ldr r2, [r5, #0x40]
006ad7c8  97 e1 f1 eb                                      bl #0x325e2c
006ad7cc  48 30 d5 e5                                      ldrb r3, [r5, #0x48]
006ad7d0  01 60 56 e2                                      subs r6, r6, #1
006ad7d4  48 30 c4 e5                                      strb r3, [r4, #0x48]
006ad7d8  49 30 d5 e5                                      ldrb r3, [r5, #0x49]
006ad7dc  49 30 c4 e5                                      strb r3, [r4, #0x49]
006ad7e0  4a 30 d5 e5                                      ldrb r3, [r5, #0x4a]
006ad7e4  4a 30 c4 e5                                      strb r3, [r4, #0x4a]
006ad7e8  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
006ad7ec  4c 30 84 e5                                      str r3, [r4, #0x4c]
006ad7f0  50 30 95 e5                                      ldr r3, [r5, #0x50]
006ad7f4  50 30 84 e5                                      str r3, [r4, #0x50]
006ad7f8  54 30 95 e5                                      ldr r3, [r5, #0x54]
006ad7fc  54 30 84 e5                                      str r3, [r4, #0x54]
006ad800  58 30 95 e5                                      ldr r3, [r5, #0x58]
006ad804  58 30 84 e5                                      str r3, [r4, #0x58]
006ad808  5c 30 95 e5                                      ldr r3, [r5, #0x5c]
006ad80c  5c 30 84 e5                                      str r3, [r4, #0x5c]
006ad810  e6 ff ff 1a                                      bne #0x6ad7b0
006ad814  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006ba7b0, declared_size=104, range_size=104, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv7__ufillIPN6glitch5scene24CDefaultSceneNodeFactory18SSceneNodeTypePairES4_iEEvT_S6_RKT0_RKSt26random_access_iterator_tagPT1_
; demangled: void std::priv::__ufill<glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair*, glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair, int>(glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair*, glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair*, glitch::scene::CDefaultSceneNodeFactory::SSceneNodeTypePair const&, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
006ba7b0  01 30 60 e0                                      rsb r3, r0, r1
006ba7b4  43 31 a0 e1                                      asr r3, r3, #2
006ba7b8  70 40 2d e9                                      push {r4, r5, r6, lr}
006ba7bc  83 51 83 e0                                      add r5, r3, r3, lsl #3
006ba7c0  02 60 a0 e1                                      mov r6, r2
006ba7c4  05 53 85 e0                                      add r5, r5, r5, lsl #6
006ba7c8  85 51 83 e0                                      add r5, r3, r5, lsl #3
006ba7cc  85 57 85 e0                                      add r5, r5, r5, lsl #15
006ba7d0  85 51 83 e0                                      add r5, r3, r5, lsl #3
006ba7d4  00 50 65 e2                                      rsb r5, r5, #0
006ba7d8  00 00 55 e3                                      cmp r5, #0
006ba7dc  0c 00 00 da                                      ble #0x6ba814
006ba7e0  00 40 a0 e1                                      mov r4, r0
006ba7e4  00 00 00 ea                                      b #0x6ba7ec
006ba7e8  1c 40 84 e2                                      add r4, r4, #0x1c
006ba7ec  00 30 96 e5                                      ldr r3, [r6]
006ba7f0  04 00 a0 e1                                      mov r0, r4
006ba7f4  04 30 80 e4                                      str r3, [r0], #4
006ba7f8  14 00 84 e5                                      str r0, [r4, #0x14]
006ba7fc  18 00 84 e5                                      str r0, [r4, #0x18]
006ba800  18 10 96 e5                                      ldr r1, [r6, #0x18]
006ba804  14 20 96 e5                                      ldr r2, [r6, #0x14]
006ba808  f9 ad f1 eb                                      bl #0x325ff4
006ba80c  01 50 55 e2                                      subs r5, r5, #1
006ba810  f4 ff ff 1a                                      bne #0x6ba7e8
006ba814  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006c11b8, declared_size=188, range_size=188, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv6__fillIPN6glitch5scene9SParticleES3_iEEvT_S5_RKT0_RKSt26random_access_iterator_tagPT1_
; demangled: void std::priv::__fill<glitch::scene::SParticle*, glitch::scene::SParticle, int>(glitch::scene::SParticle*, glitch::scene::SParticle*, glitch::scene::SParticle const&, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
006c11b8  01 30 60 e0                                      rsb r3, r0, r1
006c11bc  43 31 a0 e1                                      asr r3, r3, #2
006c11c0  03 12 a0 e1                                      lsl r1, r3, #4
006c11c4  01 10 63 e0                                      rsb r1, r3, r1
006c11c8  01 14 81 e0                                      add r1, r1, r1, lsl #8
006c11cc  01 18 81 e0                                      add r1, r1, r1, lsl #16
006c11d0  01 32 83 e0                                      add r3, r3, r1, lsl #4
006c11d4  00 00 53 e3                                      cmp r3, #0
006c11d8  1e ff 2f d1                                      bxle lr
006c11dc  00 10 92 e5                                      ldr r1, [r2]
006c11e0  01 30 53 e2                                      subs r3, r3, #1
006c11e4  00 10 80 e5                                      str r1, [r0]
006c11e8  04 10 92 e5                                      ldr r1, [r2, #4]
006c11ec  04 10 80 e5                                      str r1, [r0, #4]
006c11f0  08 10 92 e5                                      ldr r1, [r2, #8]
006c11f4  08 10 80 e5                                      str r1, [r0, #8]
006c11f8  0c 10 92 e5                                      ldr r1, [r2, #0xc]
006c11fc  0c 10 80 e5                                      str r1, [r0, #0xc]
006c1200  10 10 92 e5                                      ldr r1, [r2, #0x10]
006c1204  10 10 80 e5                                      str r1, [r0, #0x10]
006c1208  14 10 92 e5                                      ldr r1, [r2, #0x14]
006c120c  14 10 80 e5                                      str r1, [r0, #0x14]
006c1210  18 10 92 e5                                      ldr r1, [r2, #0x18]
006c1214  18 10 80 e5                                      str r1, [r0, #0x18]
006c1218  1c 10 92 e5                                      ldr r1, [r2, #0x1c]
006c121c  1c 10 80 e5                                      str r1, [r0, #0x1c]
006c1220  20 10 92 e5                                      ldr r1, [r2, #0x20]
006c1224  20 10 80 e5                                      str r1, [r0, #0x20]
006c1228  24 10 92 e5                                      ldr r1, [r2, #0x24]
006c122c  24 10 80 e5                                      str r1, [r0, #0x24]
006c1230  28 10 92 e5                                      ldr r1, [r2, #0x28]
006c1234  28 10 80 e5                                      str r1, [r0, #0x28]
006c1238  2c 10 92 e5                                      ldr r1, [r2, #0x2c]
006c123c  2c 10 80 e5                                      str r1, [r0, #0x2c]
006c1240  30 10 92 e5                                      ldr r1, [r2, #0x30]
006c1244  30 10 80 e5                                      str r1, [r0, #0x30]
006c1248  34 10 92 e5                                      ldr r1, [r2, #0x34]
006c124c  34 10 80 e5                                      str r1, [r0, #0x34]
006c1250  38 10 92 e5                                      ldr r1, [r2, #0x38]
006c1254  38 10 80 e5                                      str r1, [r0, #0x38]
006c1258  3c 10 92 e5                                      ldr r1, [r2, #0x3c]
006c125c  3c 10 80 e5                                      str r1, [r0, #0x3c]
006c1260  40 10 92 e5                                      ldr r1, [r2, #0x40]
006c1264  40 10 80 e5                                      str r1, [r0, #0x40]
006c1268  44 00 80 e2                                      add r0, r0, #0x44
006c126c  da ff ff 1a                                      bne #0x6c11dc
006c1270  1e ff 2f e1                                      bx lr

; FUNCTION 0x006c1274, declared_size=188, range_size=188, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv7__ufillIPN6glitch5scene9SParticleES3_iEEvT_S5_RKT0_RKSt26random_access_iterator_tagPT1_
; demangled: void std::priv::__ufill<glitch::scene::SParticle*, glitch::scene::SParticle, int>(glitch::scene::SParticle*, glitch::scene::SParticle*, glitch::scene::SParticle const&, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
006c1274  01 30 60 e0                                      rsb r3, r0, r1
006c1278  43 31 a0 e1                                      asr r3, r3, #2
006c127c  03 12 a0 e1                                      lsl r1, r3, #4
006c1280  01 10 63 e0                                      rsb r1, r3, r1
006c1284  01 14 81 e0                                      add r1, r1, r1, lsl #8
006c1288  01 18 81 e0                                      add r1, r1, r1, lsl #16
006c128c  01 32 83 e0                                      add r3, r3, r1, lsl #4
006c1290  00 00 53 e3                                      cmp r3, #0
006c1294  1e ff 2f d1                                      bxle lr
006c1298  00 10 92 e5                                      ldr r1, [r2]
006c129c  01 30 53 e2                                      subs r3, r3, #1
006c12a0  00 10 80 e5                                      str r1, [r0]
006c12a4  04 10 92 e5                                      ldr r1, [r2, #4]
006c12a8  04 10 80 e5                                      str r1, [r0, #4]
006c12ac  08 10 92 e5                                      ldr r1, [r2, #8]
006c12b0  08 10 80 e5                                      str r1, [r0, #8]
006c12b4  0c 10 92 e5                                      ldr r1, [r2, #0xc]
006c12b8  0c 10 80 e5                                      str r1, [r0, #0xc]
006c12bc  10 10 92 e5                                      ldr r1, [r2, #0x10]
006c12c0  10 10 80 e5                                      str r1, [r0, #0x10]
006c12c4  14 10 92 e5                                      ldr r1, [r2, #0x14]
006c12c8  14 10 80 e5                                      str r1, [r0, #0x14]
006c12cc  18 10 92 e5                                      ldr r1, [r2, #0x18]
006c12d0  18 10 80 e5                                      str r1, [r0, #0x18]
006c12d4  1c 10 92 e5                                      ldr r1, [r2, #0x1c]
006c12d8  1c 10 80 e5                                      str r1, [r0, #0x1c]
006c12dc  20 10 92 e5                                      ldr r1, [r2, #0x20]
006c12e0  20 10 80 e5                                      str r1, [r0, #0x20]
006c12e4  24 10 92 e5                                      ldr r1, [r2, #0x24]
006c12e8  24 10 80 e5                                      str r1, [r0, #0x24]
006c12ec  28 10 92 e5                                      ldr r1, [r2, #0x28]
006c12f0  28 10 80 e5                                      str r1, [r0, #0x28]
006c12f4  2c 10 92 e5                                      ldr r1, [r2, #0x2c]
006c12f8  2c 10 80 e5                                      str r1, [r0, #0x2c]
006c12fc  30 10 92 e5                                      ldr r1, [r2, #0x30]
006c1300  30 10 80 e5                                      str r1, [r0, #0x30]
006c1304  34 10 92 e5                                      ldr r1, [r2, #0x34]
006c1308  34 10 80 e5                                      str r1, [r0, #0x34]
006c130c  38 10 92 e5                                      ldr r1, [r2, #0x38]
006c1310  38 10 80 e5                                      str r1, [r0, #0x38]
006c1314  3c 10 92 e5                                      ldr r1, [r2, #0x3c]
006c1318  3c 10 80 e5                                      str r1, [r0, #0x3c]
006c131c  40 10 92 e5                                      ldr r1, [r2, #0x40]
006c1320  40 10 80 e5                                      str r1, [r0, #0x40]
006c1324  1e ff 2f 01                                      bxeq lr
006c1328  44 00 80 e2                                      add r0, r0, #0x44
006c132c  d9 ff ff ea                                      b #0x6c1298

; FUNCTION 0x006e13f4, declared_size=100, range_size=100, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv6__fillIPN6glitch4core6detail15SIDedCollectionIN5boost13intrusive_ptrINS1_5video11IShaderCodeEEEtLb0ENS3_15sidedcollection16SEmptyPropertiesENSA_12SValueTraitsEE6SEntryESE_iEEvT_SG_RKT0_RKSt26random_access_iterator_tagPT1_
; demangled: void std::priv::__fill<glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry, int>(glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry*, glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>, unsigned short, false, glitch::core::detail::sidedcollection::SEmptyProperties, glitch::core::detail::sidedcollection::SValueTraits>::SEntry const&, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
006e13f4  01 10 60 e0                                      rsb r1, r0, r1
006e13f8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006e13fc  c1 51 a0 e1                                      asr r5, r1, #3
006e1400  00 00 55 e3                                      cmp r5, #0
006e1404  00 40 a0 e1                                      mov r4, r0
006e1408  02 70 a0 e1                                      mov r7, r2
006e140c  10 00 00 da                                      ble #0x6e1454
006e1410  00 60 a0 e3                                      mov r6, #0
006e1414  00 30 97 e5                                      ldr r3, [r7]
006e1418  00 00 53 e3                                      cmp r3, #0
006e141c  04 20 93 15                                      ldrne r2, [r3, #4]
006e1420  01 20 82 12                                      addne r2, r2, #1
006e1424  04 20 83 15                                      strne r2, [r3, #4]
006e1428  06 00 94 e7                                      ldr r0, [r4, r6]
006e142c  06 30 84 e7                                      str r3, [r4, r6]
006e1430  00 00 50 e3                                      cmp r0, #0
006e1434  00 00 00 0a                                      beq #0x6e143c
006e1438  51 f0 f0 eb                                      bl #0x31d584
006e143c  04 20 97 e5                                      ldr r2, [r7, #4]
006e1440  06 30 84 e0                                      add r3, r4, r6
006e1444  01 50 55 e2                                      subs r5, r5, #1
006e1448  04 20 83 e5                                      str r2, [r3, #4]
006e144c  08 60 86 e2                                      add r6, r6, #8
006e1450  ef ff ff 1a                                      bne #0x6e1414
006e1454  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007989e8, declared_size=80, range_size=80, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv25__unguarded_linear_insertIPN7gameswf8as_valueES2_NS1_21standard_array_sorterEEEvT_T0_T1_
; demangled: void std::priv::__unguarded_linear_insert<gameswf::as_value*, gameswf::as_value, gameswf::standard_array_sorter>(gameswf::as_value*, gameswf::as_value, gameswf::standard_array_sorter)
; decoder-mode: arm
007989e8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007989ec  00 50 a0 e1                                      mov r5, r0
007989f0  01 60 a0 e1                                      mov r6, r1
007989f4  02 70 a0 e1                                      mov r7, r2
007989f8  0c 40 40 e2                                      sub r4, r0, #0xc
007989fc  02 00 00 ea                                      b #0x798a0c
00798a00  4d fb ff eb                                      bl #0x79773c
00798a04  04 50 a0 e1                                      mov r5, r4
00798a08  0c 40 44 e2                                      sub r4, r4, #0xc
00798a0c  06 10 a0 e1                                      mov r1, r6
00798a10  04 20 a0 e1                                      mov r2, r4
00798a14  07 00 a0 e1                                      mov r0, r7
00798a18  31 ff ff eb                                      bl #0x7986e4
00798a1c  00 00 50 e3                                      cmp r0, #0
00798a20  04 10 a0 e1                                      mov r1, r4
00798a24  05 00 a0 e1                                      mov r0, r5
00798a28  f4 ff ff 1a                                      bne #0x798a00
00798a2c  06 10 a0 e1                                      mov r1, r6
00798a30  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00798a34  40 fb ff ea                                      b #0x79773c

; FUNCTION 0x007996f4, declared_size=92, range_size=92, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv25__unguarded_linear_insertIPN7gameswf8as_valueES2_NS1_19custom_array_sorterEEEvT_T0_T1_
; demangled: void std::priv::__unguarded_linear_insert<gameswf::as_value*, gameswf::as_value, gameswf::custom_array_sorter>(gameswf::as_value*, gameswf::as_value, gameswf::custom_array_sorter)
; decoder-mode: arm
007996f4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007996f8  0c d0 4d e2                                      sub sp, sp, #0xc
007996fc  00 40 a0 e1                                      mov r4, r0
00799700  0c 00 8d e8                                      stm sp, {r2, r3}
00799704  01 60 a0 e1                                      mov r6, r1
00799708  0c 50 40 e2                                      sub r5, r0, #0xc
0079970c  0d 70 a0 e1                                      mov r7, sp
00799710  02 00 00 ea                                      b #0x799720
00799714  08 f8 ff eb                                      bl #0x79773c
00799718  05 40 a0 e1                                      mov r4, r5
0079971c  0c 50 45 e2                                      sub r5, r5, #0xc
00799720  06 10 a0 e1                                      mov r1, r6
00799724  05 20 a0 e1                                      mov r2, r5
00799728  0d 00 a0 e1                                      mov r0, sp
0079972c  78 ff ff eb                                      bl #0x799514
00799730  00 00 50 e3                                      cmp r0, #0
00799734  05 10 a0 e1                                      mov r1, r5
00799738  04 00 a0 e1                                      mov r0, r4
0079973c  f4 ff ff 1a                                      bne #0x799714
00799740  06 10 a0 e1                                      mov r1, r6
00799744  fc f7 ff eb                                      bl #0x79773c
00799748  0c d0 8d e2                                      add sp, sp, #0xc
0079974c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00799750, declared_size=116, range_size=116, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv30__unguarded_insertion_sort_auxIPN7gameswf8as_valueES2_NS1_19custom_array_sorterEEEvT_S5_PT0_T1_
; demangled: void std::priv::__unguarded_insertion_sort_aux<gameswf::as_value*, gameswf::as_value, gameswf::custom_array_sorter>(gameswf::as_value*, gameswf::as_value*, gameswf::as_value*, gameswf::custom_array_sorter)
; decoder-mode: arm
00799750  08 d0 4d e2                                      sub sp, sp, #8
00799754  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00799758  01 00 50 e1                                      cmp r0, r1
0079975c  10 d0 4d e2                                      sub sp, sp, #0x10
00799760  01 80 a0 e1                                      mov r8, r1
00799764  2c 30 8d e5                                      str r3, [sp, #0x2c]
00799768  11 00 00 0a                                      beq #0x7997b4
0079976c  00 40 a0 e1                                      mov r4, r0
00799770  04 50 8d e2                                      add r5, sp, #4
00799774  2c 70 8d e2                                      add r7, sp, #0x2c
00799778  00 60 a0 e3                                      mov r6, #0
0079977c  04 10 a0 e1                                      mov r1, r4
00799780  05 00 a0 e1                                      mov r0, r5
00799784  04 60 cd e5                                      strb r6, [sp, #4]
00799788  05 60 cd e5                                      strb r6, [sp, #5]
0079978c  ea f7 ff eb                                      bl #0x79773c
00799790  04 00 a0 e1                                      mov r0, r4
00799794  05 10 a0 e1                                      mov r1, r5
00799798  0c 00 97 e8                                      ldm r7, {r2, r3}
0079979c  d4 ff ff eb                                      bl #0x7996f4
007997a0  0c 40 84 e2                                      add r4, r4, #0xc
007997a4  05 00 a0 e1                                      mov r0, r5
007997a8  5d f6 ff eb                                      bl #0x797124
007997ac  04 00 58 e1                                      cmp r8, r4
007997b0  f1 ff ff 1a                                      bne #0x79977c
007997b4  10 d0 8d e2                                      add sp, sp, #0x10
007997b8  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
007997bc  08 d0 8d e2                                      add sp, sp, #8
007997c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00799d7c, declared_size=280, range_size=280, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv14__partial_sortIPN7gameswf8as_valueES2_NS1_19custom_array_sorterEEEvT_S5_S5_PT0_T1_
; demangled: void std::priv::__partial_sort<gameswf::as_value*, gameswf::as_value, gameswf::custom_array_sorter>(gameswf::as_value*, gameswf::as_value*, gameswf::as_value*, gameswf::as_value*, gameswf::custom_array_sorter)
; decoder-mode: arm
00799d7c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00799d80  28 d0 4d e2                                      sub sp, sp, #0x28
00799d84  48 e0 9d e5                                      ldr lr, [sp, #0x48]
00799d88  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
00799d8c  02 60 a0 e1                                      mov r6, r2
00799d90  01 80 a0 e1                                      mov r8, r1
00799d94  00 a0 a0 e3                                      mov sl, #0
00799d98  0e 20 a0 e1                                      mov r2, lr
00799d9c  0c 30 a0 e1                                      mov r3, ip
00799da0  20 e0 8d e5                                      str lr, [sp, #0x20]
00799da4  24 c0 8d e5                                      str ip, [sp, #0x24]
00799da8  00 a0 8d e5                                      str sl, [sp]
00799dac  04 a0 8d e5                                      str sl, [sp, #4]
00799db0  00 50 a0 e1                                      mov r5, r0
00799db4  34 ff ff eb                                      bl #0x799a8c
00799db8  06 00 58 e1                                      cmp r8, r6
00799dbc  20 00 00 2a                                      bhs #0x799e44
00799dc0  08 40 a0 e1                                      mov r4, r8
00799dc4  48 70 8d e2                                      add r7, sp, #0x48
00799dc8  14 90 8d e2                                      add sb, sp, #0x14
00799dcc  02 00 00 ea                                      b #0x799ddc
00799dd0  0c 40 84 e2                                      add r4, r4, #0xc
00799dd4  04 00 56 e1                                      cmp r6, r4
00799dd8  19 00 00 9a                                      bls #0x799e44
00799ddc  04 10 a0 e1                                      mov r1, r4
00799de0  05 20 a0 e1                                      mov r2, r5
00799de4  07 00 a0 e1                                      mov r0, r7
00799de8  c9 fd ff eb                                      bl #0x799514
00799dec  00 00 50 e3                                      cmp r0, #0
00799df0  f6 ff ff 0a                                      beq #0x799dd0
00799df4  04 10 a0 e1                                      mov r1, r4
00799df8  09 00 a0 e1                                      mov r0, sb
00799dfc  14 a0 cd e5                                      strb sl, [sp, #0x14]
00799e00  15 a0 cd e5                                      strb sl, [sp, #0x15]
00799e04  4c f6 ff eb                                      bl #0x79773c
00799e08  48 c0 9d e5                                      ldr ip, [sp, #0x48]
00799e0c  04 20 a0 e1                                      mov r2, r4
00799e10  05 00 a0 e1                                      mov r0, r5
00799e14  00 c0 8d e5                                      str ip, [sp]
00799e18  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
00799e1c  08 10 a0 e1                                      mov r1, r8
00799e20  09 30 a0 e1                                      mov r3, sb
00799e24  04 c0 8d e5                                      str ip, [sp, #4]
00799e28  08 a0 8d e5                                      str sl, [sp, #8]
00799e2c  0c 40 84 e2                                      add r4, r4, #0xc
00799e30  91 ff ff eb                                      bl #0x799c7c
00799e34  09 00 a0 e1                                      mov r0, sb
00799e38  b9 f4 ff eb                                      bl #0x797124
00799e3c  04 00 56 e1                                      cmp r6, r4
00799e40  e5 ff ff 8a                                      bhi #0x799ddc
00799e44  08 a0 65 e0                                      rsb sl, r5, r8
00799e48  17 00 5a e3                                      cmp sl, #0x17
00799e4c  48 70 9d e5                                      ldr r7, [sp, #0x48]
00799e50  4c 60 9d e5                                      ldr r6, [sp, #0x4c]
00799e54  0c 00 00 da                                      ble #0x799e8c
00799e58  00 40 a0 e3                                      mov r4, #0
00799e5c  04 10 88 e0                                      add r1, r8, r4
00799e60  07 30 a0 e1                                      mov r3, r7
00799e64  0c 40 44 e2                                      sub r4, r4, #0xc
00799e68  05 00 a0 e1                                      mov r0, r5
00799e6c  00 20 a0 e3                                      mov r2, #0
00799e70  24 60 8d e5                                      str r6, [sp, #0x24]
00799e74  20 70 8d e5                                      str r7, [sp, #0x20]
00799e78  00 60 8d e5                                      str r6, [sp]
00799e7c  a1 ff ff eb                                      bl #0x799d08
00799e80  04 30 8a e0                                      add r3, sl, r4
00799e84  17 00 53 e3                                      cmp r3, #0x17
00799e88  f3 ff ff ca                                      bgt #0x799e5c
00799e8c  28 d0 8d e2                                      add sp, sp, #0x28
00799e90  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00799e94, declared_size=292, range_size=292, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv16__introsort_loopIPN7gameswf8as_valueES2_iNS1_19custom_array_sorterEEEvT_S5_PT0_T1_T2_
; demangled: void std::priv::__introsort_loop<gameswf::as_value*, gameswf::as_value, int, gameswf::custom_array_sorter>(gameswf::as_value*, gameswf::as_value*, gameswf::as_value*, int, gameswf::custom_array_sorter)
; decoder-mode: arm
00799e94  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00799e98  01 50 a0 e1                                      mov r5, r1
00799e9c  01 10 60 e0                                      rsb r1, r0, r1
00799ea0  cb 00 51 e3                                      cmp r1, #0xcb
00799ea4  20 d0 4d e2                                      sub sp, sp, #0x20
00799ea8  00 40 a0 e1                                      mov r4, r0
00799eac  03 60 a0 e1                                      mov r6, r3
00799eb0  32 00 00 da                                      ble #0x799f80
00799eb4  00 00 53 e3                                      cmp r3, #0
00799eb8  32 00 00 0a                                      beq #0x799f88
00799ebc  0c 80 8d e2                                      add r8, sp, #0xc
00799ec0  0c 90 a0 e3                                      mov sb, #0xc
00799ec4  00 a0 a0 e3                                      mov sl, #0
00799ec8  02 00 00 ea                                      b #0x799ed8
00799ecc  00 00 56 e3                                      cmp r6, #0
00799ed0  07 50 a0 e1                                      mov r5, r7
00799ed4  2b 00 00 0a                                      beq #0x799f88
00799ed8  41 11 a0 e1                                      asr r1, r1, #2
00799edc  44 e0 9d e5                                      ldr lr, [sp, #0x44]
00799ee0  01 c1 81 e0                                      add ip, r1, r1, lsl #2
00799ee4  0c 20 45 e2                                      sub r2, r5, #0xc
00799ee8  0c c2 8c e0                                      add ip, ip, ip, lsl #4
00799eec  40 30 9d e5                                      ldr r3, [sp, #0x40]
00799ef0  0c c4 8c e0                                      add ip, ip, ip, lsl #8
00799ef4  04 00 a0 e1                                      mov r0, r4
00799ef8  0c c8 8c e0                                      add ip, ip, ip, lsl #16
00799efc  00 e0 8d e5                                      str lr, [sp]
00799f00  8c 10 81 e0                                      add r1, r1, ip, lsl #1
00799f04  01 60 46 e2                                      sub r6, r6, #1
00799f08  c1 10 a0 e1                                      asr r1, r1, #1
00799f0c  99 41 21 e0                                      mla r1, sb, r1, r4
00799f10  c9 fd ff eb                                      bl #0x79963c
00799f14  00 10 a0 e1                                      mov r1, r0
00799f18  08 00 a0 e1                                      mov r0, r8
00799f1c  0c a0 cd e5                                      strb sl, [sp, #0xc]
00799f20  0d a0 cd e5                                      strb sl, [sp, #0xd]
00799f24  04 f6 ff eb                                      bl #0x79773c
00799f28  44 c0 9d e5                                      ldr ip, [sp, #0x44]
00799f2c  05 10 a0 e1                                      mov r1, r5
00799f30  40 30 9d e5                                      ldr r3, [sp, #0x40]
00799f34  08 20 a0 e1                                      mov r2, r8
00799f38  04 00 a0 e1                                      mov r0, r4
00799f3c  00 c0 8d e5                                      str ip, [sp]
00799f40  2d ff ff eb                                      bl #0x799bfc
00799f44  00 70 a0 e1                                      mov r7, r0
00799f48  08 00 a0 e1                                      mov r0, r8
00799f4c  74 f4 ff eb                                      bl #0x797124
00799f50  40 c0 9d e5                                      ldr ip, [sp, #0x40]
00799f54  05 10 a0 e1                                      mov r1, r5
00799f58  07 00 a0 e1                                      mov r0, r7
00799f5c  00 c0 8d e5                                      str ip, [sp]
00799f60  44 c0 9d e5                                      ldr ip, [sp, #0x44]
00799f64  00 20 a0 e3                                      mov r2, #0
00799f68  06 30 a0 e1                                      mov r3, r6
00799f6c  04 c0 8d e5                                      str ip, [sp, #4]
00799f70  c7 ff ff eb                                      bl #0x799e94
00799f74  07 10 64 e0                                      rsb r1, r4, r7
00799f78  cb 00 51 e3                                      cmp r1, #0xcb
00799f7c  d2 ff ff ca                                      bgt #0x799ecc
00799f80  20 d0 8d e2                                      add sp, sp, #0x20
00799f84  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00799f88  40 e0 9d e5                                      ldr lr, [sp, #0x40]
00799f8c  44 c0 9d e5                                      ldr ip, [sp, #0x44]
00799f90  05 10 a0 e1                                      mov r1, r5
00799f94  04 00 a0 e1                                      mov r0, r4
00799f98  05 20 a0 e1                                      mov r2, r5
00799f9c  00 30 a0 e3                                      mov r3, #0
00799fa0  00 e0 8d e5                                      str lr, [sp]
00799fa4  04 c0 8d e5                                      str ip, [sp, #4]
00799fa8  18 e0 8d e5                                      str lr, [sp, #0x18]
00799fac  1c c0 8d e5                                      str ip, [sp, #0x1c]
00799fb0  71 ff ff eb                                      bl #0x799d7c
00799fb4  f1 ff ff ea                                      b #0x799f80

; FUNCTION 0x00799fb8, declared_size=228, range_size=228, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv15__linear_insertIPN7gameswf8as_valueES2_NS1_21standard_array_sorterEEEvT_S5_T0_T1_
; demangled: void std::priv::__linear_insert<gameswf::as_value*, gameswf::as_value, gameswf::standard_array_sorter>(gameswf::as_value*, gameswf::as_value*, gameswf::as_value, gameswf::standard_array_sorter)
; decoder-mode: arm
00799fb8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00799fbc  00 40 a0 e1                                      mov r4, r0
00799fc0  20 d0 4d e2                                      sub sp, sp, #0x20
00799fc4  02 50 a0 e1                                      mov r5, r2
00799fc8  01 60 a0 e1                                      mov r6, r1
00799fcc  03 00 a0 e1                                      mov r0, r3
00799fd0  02 10 a0 e1                                      mov r1, r2
00799fd4  04 20 a0 e1                                      mov r2, r4
00799fd8  03 70 a0 e1                                      mov r7, r3
00799fdc  c0 f9 ff eb                                      bl #0x7986e4
00799fe0  00 80 50 e2                                      subs r8, r0, #0
00799fe4  15 00 00 0a                                      beq #0x79a040
00799fe8  06 30 64 e0                                      rsb r3, r4, r6
00799fec  43 31 a0 e1                                      asr r3, r3, #2
00799ff0  03 71 83 e0                                      add r7, r3, r3, lsl #2
00799ff4  07 72 87 e0                                      add r7, r7, r7, lsl #4
00799ff8  07 74 87 e0                                      add r7, r7, r7, lsl #8
00799ffc  07 78 87 e0                                      add r7, r7, r7, lsl #16
0079a000  87 70 83 e0                                      add r7, r3, r7, lsl #1
0079a004  00 00 57 e3                                      cmp r7, #0
0079a008  01 00 00 ca                                      bgt #0x79a014
0079a00c  06 00 00 ea                                      b #0x79a02c
0079a010  08 60 a0 e1                                      mov r6, r8
0079a014  0c 80 46 e2                                      sub r8, r6, #0xc
0079a018  06 00 a0 e1                                      mov r0, r6
0079a01c  08 10 a0 e1                                      mov r1, r8
0079a020  c5 f5 ff eb                                      bl #0x79773c
0079a024  01 70 57 e2                                      subs r7, r7, #1
0079a028  f8 ff ff 1a                                      bne #0x79a010
0079a02c  04 00 a0 e1                                      mov r0, r4
0079a030  05 10 a0 e1                                      mov r1, r5
0079a034  c0 f5 ff eb                                      bl #0x79773c
0079a038  20 d0 8d e2                                      add sp, sp, #0x20
0079a03c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0079a040  14 40 8d e2                                      add r4, sp, #0x14
0079a044  05 10 a0 e1                                      mov r1, r5
0079a048  04 00 a0 e1                                      mov r0, r4
0079a04c  04 50 8d e2                                      add r5, sp, #4
0079a050  14 80 cd e5                                      strb r8, [sp, #0x14]
0079a054  15 80 cd e5                                      strb r8, [sp, #0x15]
0079a058  b7 f5 ff eb                                      bl #0x79773c
0079a05c  05 00 a0 e1                                      mov r0, r5
0079a060  07 10 a0 e1                                      mov r1, r7
0079a064  05 80 cd e5                                      strb r8, [sp, #5]
0079a068  04 80 cd e5                                      strb r8, [sp, #4]
0079a06c  b2 f5 ff eb                                      bl #0x79773c
0079a070  0c 30 97 e5                                      ldr r3, [r7, #0xc]
0079a074  06 00 a0 e1                                      mov r0, r6
0079a078  04 10 a0 e1                                      mov r1, r4
0079a07c  05 20 a0 e1                                      mov r2, r5
0079a080  10 30 8d e5                                      str r3, [sp, #0x10]
0079a084  57 fa ff eb                                      bl #0x7989e8
0079a088  05 00 a0 e1                                      mov r0, r5
0079a08c  24 f4 ff eb                                      bl #0x797124
0079a090  04 00 a0 e1                                      mov r0, r4
0079a094  22 f4 ff eb                                      bl #0x797124
0079a098  e6 ff ff ea                                      b #0x79a038

; FUNCTION 0x0079a09c, declared_size=156, range_size=156, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv16__insertion_sortIPN7gameswf8as_valueES2_NS1_21standard_array_sorterEEEvT_S5_PT0_T1_
; demangled: void std::priv::__insertion_sort<gameswf::as_value*, gameswf::as_value, gameswf::standard_array_sorter>(gameswf::as_value*, gameswf::as_value*, gameswf::as_value*, gameswf::standard_array_sorter)
; decoder-mode: arm
0079a09c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0079a0a0  01 00 50 e1                                      cmp r0, r1
0079a0a4  20 d0 4d e2                                      sub sp, sp, #0x20
0079a0a8  00 90 a0 e1                                      mov sb, r0
0079a0ac  01 a0 a0 e1                                      mov sl, r1
0079a0b0  03 70 a0 e1                                      mov r7, r3
0079a0b4  1d 00 00 0a                                      beq #0x79a130
0079a0b8  0c 40 80 e2                                      add r4, r0, #0xc
0079a0bc  04 00 51 e1                                      cmp r1, r4
0079a0c0  1a 00 00 0a                                      beq #0x79a130
0079a0c4  14 60 8d e2                                      add r6, sp, #0x14
0079a0c8  04 80 8d e2                                      add r8, sp, #4
0079a0cc  00 50 a0 e3                                      mov r5, #0
0079a0d0  04 10 a0 e1                                      mov r1, r4
0079a0d4  06 00 a0 e1                                      mov r0, r6
0079a0d8  14 50 cd e5                                      strb r5, [sp, #0x14]
0079a0dc  15 50 cd e5                                      strb r5, [sp, #0x15]
0079a0e0  95 f5 ff eb                                      bl #0x79773c
0079a0e4  08 00 a0 e1                                      mov r0, r8
0079a0e8  07 10 a0 e1                                      mov r1, r7
0079a0ec  04 50 cd e5                                      strb r5, [sp, #4]
0079a0f0  05 50 cd e5                                      strb r5, [sp, #5]
0079a0f4  90 f5 ff eb                                      bl #0x79773c
0079a0f8  0c c0 97 e5                                      ldr ip, [r7, #0xc]
0079a0fc  04 10 a0 e1                                      mov r1, r4
0079a100  06 20 a0 e1                                      mov r2, r6
0079a104  08 30 a0 e1                                      mov r3, r8
0079a108  09 00 a0 e1                                      mov r0, sb
0079a10c  10 c0 8d e5                                      str ip, [sp, #0x10]
0079a110  a8 ff ff eb                                      bl #0x799fb8
0079a114  08 00 a0 e1                                      mov r0, r8
0079a118  01 f4 ff eb                                      bl #0x797124
0079a11c  0c 40 84 e2                                      add r4, r4, #0xc
0079a120  06 00 a0 e1                                      mov r0, r6
0079a124  fe f3 ff eb                                      bl #0x797124
0079a128  04 00 5a e1                                      cmp sl, r4
0079a12c  e7 ff ff 1a                                      bne #0x79a0d0
0079a130  20 d0 8d e2                                      add sp, sp, #0x20
0079a134  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0079a138, declared_size=208, range_size=208, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv15__linear_insertIPN7gameswf8as_valueES2_NS1_19custom_array_sorterEEEvT_S5_T0_T1_
; demangled: void std::priv::__linear_insert<gameswf::as_value*, gameswf::as_value, gameswf::custom_array_sorter>(gameswf::as_value*, gameswf::as_value*, gameswf::as_value, gameswf::custom_array_sorter)
; decoder-mode: arm
0079a138  08 d0 4d e2                                      sub sp, sp, #8
0079a13c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0079a140  10 d0 4d e2                                      sub sp, sp, #0x10
0079a144  24 c0 8d e2                                      add ip, sp, #0x24
0079a148  08 30 ac e5                                      str r3, [ip, #8]!
0079a14c  00 40 a0 e1                                      mov r4, r0
0079a150  02 60 a0 e1                                      mov r6, r2
0079a154  01 50 a0 e1                                      mov r5, r1
0079a158  0c 00 a0 e1                                      mov r0, ip
0079a15c  02 10 a0 e1                                      mov r1, r2
0079a160  04 20 a0 e1                                      mov r2, r4
0079a164  ea fc ff eb                                      bl #0x799514
0079a168  00 30 50 e2                                      subs r3, r0, #0
0079a16c  17 00 00 0a                                      beq #0x79a1d0
0079a170  05 30 64 e0                                      rsb r3, r4, r5
0079a174  43 31 a0 e1                                      asr r3, r3, #2
0079a178  03 71 83 e0                                      add r7, r3, r3, lsl #2
0079a17c  07 72 87 e0                                      add r7, r7, r7, lsl #4
0079a180  07 74 87 e0                                      add r7, r7, r7, lsl #8
0079a184  07 78 87 e0                                      add r7, r7, r7, lsl #16
0079a188  87 70 83 e0                                      add r7, r3, r7, lsl #1
0079a18c  00 00 57 e3                                      cmp r7, #0
0079a190  01 00 00 ca                                      bgt #0x79a19c
0079a194  06 00 00 ea                                      b #0x79a1b4
0079a198  08 50 a0 e1                                      mov r5, r8
0079a19c  0c 80 45 e2                                      sub r8, r5, #0xc
0079a1a0  05 00 a0 e1                                      mov r0, r5
0079a1a4  08 10 a0 e1                                      mov r1, r8
0079a1a8  63 f5 ff eb                                      bl #0x79773c
0079a1ac  01 70 57 e2                                      subs r7, r7, #1
0079a1b0  f8 ff ff 1a                                      bne #0x79a198
0079a1b4  04 00 a0 e1                                      mov r0, r4
0079a1b8  06 10 a0 e1                                      mov r1, r6
0079a1bc  5e f5 ff eb                                      bl #0x79773c
0079a1c0  10 d0 8d e2                                      add sp, sp, #0x10
0079a1c4  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0079a1c8  08 d0 8d e2                                      add sp, sp, #8
0079a1cc  1e ff 2f e1                                      bx lr
0079a1d0  04 40 8d e2                                      add r4, sp, #4
0079a1d4  06 10 a0 e1                                      mov r1, r6
0079a1d8  04 00 a0 e1                                      mov r0, r4
0079a1dc  05 30 cd e5                                      strb r3, [sp, #5]
0079a1e0  04 30 cd e5                                      strb r3, [sp, #4]
0079a1e4  54 f5 ff eb                                      bl #0x79773c
0079a1e8  05 00 a0 e1                                      mov r0, r5
0079a1ec  04 10 a0 e1                                      mov r1, r4
0079a1f0  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0079a1f4  30 30 9d e5                                      ldr r3, [sp, #0x30]
0079a1f8  3d fd ff eb                                      bl #0x7996f4
0079a1fc  04 00 a0 e1                                      mov r0, r4
0079a200  c7 f3 ff eb                                      bl #0x797124
0079a204  ed ff ff ea                                      b #0x79a1c0

; FUNCTION 0x0079a208, declared_size=136, range_size=136, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv16__insertion_sortIPN7gameswf8as_valueES2_NS1_19custom_array_sorterEEEvT_S5_PT0_T1_
; demangled: void std::priv::__insertion_sort<gameswf::as_value*, gameswf::as_value, gameswf::custom_array_sorter>(gameswf::as_value*, gameswf::as_value*, gameswf::as_value*, gameswf::custom_array_sorter)
; decoder-mode: arm
0079a208  08 d0 4d e2                                      sub sp, sp, #8
0079a20c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0079a210  01 00 50 e1                                      cmp r0, r1
0079a214  18 d0 4d e2                                      sub sp, sp, #0x18
0079a218  00 80 a0 e1                                      mov r8, r0
0079a21c  01 70 a0 e1                                      mov r7, r1
0079a220  34 30 8d e5                                      str r3, [sp, #0x34]
0079a224  15 00 00 0a                                      beq #0x79a280
0079a228  0c 40 80 e2                                      add r4, r0, #0xc
0079a22c  04 00 51 e1                                      cmp r1, r4
0079a230  12 00 00 0a                                      beq #0x79a280
0079a234  0c 50 8d e2                                      add r5, sp, #0xc
0079a238  00 60 a0 e3                                      mov r6, #0
0079a23c  04 10 a0 e1                                      mov r1, r4
0079a240  05 00 a0 e1                                      mov r0, r5
0079a244  0c 60 cd e5                                      strb r6, [sp, #0xc]
0079a248  0d 60 cd e5                                      strb r6, [sp, #0xd]
0079a24c  3a f5 ff eb                                      bl #0x79773c
0079a250  38 c0 9d e5                                      ldr ip, [sp, #0x38]
0079a254  04 10 a0 e1                                      mov r1, r4
0079a258  34 30 9d e5                                      ldr r3, [sp, #0x34]
0079a25c  05 20 a0 e1                                      mov r2, r5
0079a260  08 00 a0 e1                                      mov r0, r8
0079a264  00 c0 8d e5                                      str ip, [sp]
0079a268  0c 40 84 e2                                      add r4, r4, #0xc
0079a26c  b1 ff ff eb                                      bl #0x79a138
0079a270  05 00 a0 e1                                      mov r0, r5
0079a274  aa f3 ff eb                                      bl #0x797124
0079a278  04 00 57 e1                                      cmp r7, r4
0079a27c  ee ff ff 1a                                      bne #0x79a23c
0079a280  18 d0 8d e2                                      add sp, sp, #0x18
0079a284  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0079a288  08 d0 8d e2                                      add sp, sp, #8
0079a28c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0079a290, declared_size=128, range_size=128, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv22__final_insertion_sortIPN7gameswf8as_valueENS1_19custom_array_sorterEEEvT_S5_T0_
; demangled: void std::priv::__final_insertion_sort<gameswf::as_value*, gameswf::custom_array_sorter>(gameswf::as_value*, gameswf::as_value*, gameswf::custom_array_sorter)
; decoder-mode: arm
0079a290  30 40 2d e9                                      push {r4, r5, lr}
0079a294  01 c0 60 e0                                      rsb ip, r0, r1
0079a298  1c d0 4d e2                                      sub sp, sp, #0x1c
0079a29c  cb 00 5c e3                                      cmp ip, #0xcb
0079a2a0  00 50 a0 e1                                      mov r5, r0
0079a2a4  01 40 a0 e1                                      mov r4, r1
0079a2a8  08 20 8d e5                                      str r2, [sp, #8]
0079a2ac  0c 30 8d e5                                      str r3, [sp, #0xc]
0079a2b0  05 00 00 ca                                      bgt #0x79a2cc
0079a2b4  00 30 8d e5                                      str r3, [sp]
0079a2b8  02 30 a0 e1                                      mov r3, r2
0079a2bc  00 20 a0 e3                                      mov r2, #0
0079a2c0  d0 ff ff eb                                      bl #0x79a208
0079a2c4  1c d0 8d e2                                      add sp, sp, #0x1c
0079a2c8  30 80 bd e8                                      pop {r4, r5, pc}
0079a2cc  c0 50 80 e2                                      add r5, r0, #0xc0
0079a2d0  00 30 8d e5                                      str r3, [sp]
0079a2d4  05 10 a0 e1                                      mov r1, r5
0079a2d8  02 30 a0 e1                                      mov r3, r2
0079a2dc  00 20 a0 e3                                      mov r2, #0
0079a2e0  c8 ff ff eb                                      bl #0x79a208
0079a2e4  08 e0 9d e5                                      ldr lr, [sp, #8]
0079a2e8  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0079a2ec  05 00 a0 e1                                      mov r0, r5
0079a2f0  0e 30 a0 e1                                      mov r3, lr
0079a2f4  04 10 a0 e1                                      mov r1, r4
0079a2f8  00 20 a0 e3                                      mov r2, #0
0079a2fc  00 c0 8d e5                                      str ip, [sp]
0079a300  10 e0 8d e5                                      str lr, [sp, #0x10]
0079a304  14 c0 8d e5                                      str ip, [sp, #0x14]
0079a308  10 fd ff eb                                      bl #0x799750
0079a30c  ec ff ff ea                                      b #0x79a2c4

; FUNCTION 0x0079a3b4, declared_size=140, range_size=140, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv30__unguarded_insertion_sort_auxIPN7gameswf8as_valueES2_NS1_21standard_array_sorterEEEvT_S5_PT0_T1_
; demangled: void std::priv::__unguarded_insertion_sort_aux<gameswf::as_value*, gameswf::as_value, gameswf::standard_array_sorter>(gameswf::as_value*, gameswf::as_value*, gameswf::as_value*, gameswf::standard_array_sorter)
; decoder-mode: arm
0079a3b4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0079a3b8  01 00 50 e1                                      cmp r0, r1
0079a3bc  24 d0 4d e2                                      sub sp, sp, #0x24
0079a3c0  01 40 a0 e1                                      mov r4, r1
0079a3c4  03 a0 a0 e1                                      mov sl, r3
0079a3c8  1a 00 00 0a                                      beq #0x79a438
0079a3cc  00 50 a0 e1                                      mov r5, r0
0079a3d0  14 80 8d e2                                      add r8, sp, #0x14
0079a3d4  04 70 8d e2                                      add r7, sp, #4
0079a3d8  00 60 a0 e3                                      mov r6, #0
0079a3dc  05 10 a0 e1                                      mov r1, r5
0079a3e0  08 00 a0 e1                                      mov r0, r8
0079a3e4  14 60 cd e5                                      strb r6, [sp, #0x14]
0079a3e8  15 60 cd e5                                      strb r6, [sp, #0x15]
0079a3ec  d2 f4 ff eb                                      bl #0x79773c
0079a3f0  07 00 a0 e1                                      mov r0, r7
0079a3f4  0a 10 a0 e1                                      mov r1, sl
0079a3f8  04 60 cd e5                                      strb r6, [sp, #4]
0079a3fc  05 60 cd e5                                      strb r6, [sp, #5]
0079a400  cd f4 ff eb                                      bl #0x79773c
0079a404  0c 30 9a e5                                      ldr r3, [sl, #0xc]
0079a408  08 10 a0 e1                                      mov r1, r8
0079a40c  07 20 a0 e1                                      mov r2, r7
0079a410  05 00 a0 e1                                      mov r0, r5
0079a414  10 30 8d e5                                      str r3, [sp, #0x10]
0079a418  72 f9 ff eb                                      bl #0x7989e8
0079a41c  07 00 a0 e1                                      mov r0, r7
0079a420  3f f3 ff eb                                      bl #0x797124
0079a424  0c 50 85 e2                                      add r5, r5, #0xc
0079a428  08 00 a0 e1                                      mov r0, r8
0079a42c  3c f3 ff eb                                      bl #0x797124
0079a430  05 00 54 e1                                      cmp r4, r5
0079a434  e8 ff ff 1a                                      bne #0x79a3dc
0079a438  24 d0 8d e2                                      add sp, sp, #0x24
0079a43c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x0079a9a8, declared_size=92, range_size=92, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv26__unguarded_insertion_sortIPN7gameswf8as_valueENS1_21standard_array_sorterEEEvT_S5_T0_
; demangled: void std::priv::__unguarded_insertion_sort<gameswf::as_value*, gameswf::standard_array_sorter>(gameswf::as_value*, gameswf::as_value*, gameswf::standard_array_sorter)
; decoder-mode: arm
0079a9a8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0079a9ac  10 d0 4d e2                                      sub sp, sp, #0x10
0079a9b0  02 60 a0 e1                                      mov r6, r2
0079a9b4  00 50 a0 e3                                      mov r5, #0
0079a9b8  00 80 a0 e1                                      mov r8, r0
0079a9bc  01 70 a0 e1                                      mov r7, r1
0079a9c0  0d 00 a0 e1                                      mov r0, sp
0079a9c4  02 10 a0 e1                                      mov r1, r2
0079a9c8  00 50 cd e5                                      strb r5, [sp]
0079a9cc  01 50 cd e5                                      strb r5, [sp, #1]
0079a9d0  59 f3 ff eb                                      bl #0x79773c
0079a9d4  0c c0 96 e5                                      ldr ip, [r6, #0xc]
0079a9d8  08 00 a0 e1                                      mov r0, r8
0079a9dc  07 10 a0 e1                                      mov r1, r7
0079a9e0  05 20 a0 e1                                      mov r2, r5
0079a9e4  0d 30 a0 e1                                      mov r3, sp
0079a9e8  0c c0 8d e5                                      str ip, [sp, #0xc]
0079a9ec  70 fe ff eb                                      bl #0x79a3b4
0079a9f0  0d 00 a0 e1                                      mov r0, sp
0079a9f4  0d 40 a0 e1                                      mov r4, sp
0079a9f8  c9 f1 ff eb                                      bl #0x797124
0079a9fc  10 d0 8d e2                                      add sp, sp, #0x10
0079aa00  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0079ac08, declared_size=316, range_size=316, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv14__partial_sortIPN7gameswf8as_valueES2_NS1_21standard_array_sorterEEEvT_S5_S5_PT0_T1_
; demangled: void std::priv::__partial_sort<gameswf::as_value*, gameswf::as_value, gameswf::standard_array_sorter>(gameswf::as_value*, gameswf::as_value*, gameswf::as_value*, gameswf::as_value*, gameswf::standard_array_sorter)
; decoder-mode: arm
0079ac08  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0079ac0c  4c d0 4d e2                                      sub sp, sp, #0x4c
0079ac10  70 50 9d e5                                      ldr r5, [sp, #0x70]
0079ac14  2c 40 8d e2                                      add r4, sp, #0x2c
0079ac18  01 b0 a0 e1                                      mov fp, r1
0079ac1c  00 60 a0 e1                                      mov r6, r0
0079ac20  00 70 a0 e3                                      mov r7, #0
0079ac24  04 00 a0 e1                                      mov r0, r4
0079ac28  05 10 a0 e1                                      mov r1, r5
0079ac2c  02 80 a0 e1                                      mov r8, r2
0079ac30  2c 70 cd e5                                      strb r7, [sp, #0x2c]
0079ac34  2d 70 cd e5                                      strb r7, [sp, #0x2d]
0079ac38  bf f2 ff eb                                      bl #0x79773c
0079ac3c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0079ac40  0b 10 a0 e1                                      mov r1, fp
0079ac44  04 20 a0 e1                                      mov r2, r4
0079ac48  06 00 a0 e1                                      mov r0, r6
0079ac4c  38 30 8d e5                                      str r3, [sp, #0x38]
0079ac50  3c ff ff eb                                      bl #0x79a948
0079ac54  04 00 a0 e1                                      mov r0, r4
0079ac58  31 f1 ff eb                                      bl #0x797124
0079ac5c  08 00 5b e1                                      cmp fp, r8
0079ac60  26 00 00 2a                                      bhs #0x79ad00
0079ac64  0b 40 a0 e1                                      mov r4, fp
0079ac68  3c a0 8d e2                                      add sl, sp, #0x3c
0079ac6c  1c 90 8d e2                                      add sb, sp, #0x1c
0079ac70  02 00 00 ea                                      b #0x79ac80
0079ac74  0c 40 84 e2                                      add r4, r4, #0xc
0079ac78  04 00 58 e1                                      cmp r8, r4
0079ac7c  1f 00 00 9a                                      bls #0x79ad00
0079ac80  06 20 a0 e1                                      mov r2, r6
0079ac84  04 10 a0 e1                                      mov r1, r4
0079ac88  05 00 a0 e1                                      mov r0, r5
0079ac8c  94 f6 ff eb                                      bl #0x7986e4
0079ac90  00 00 50 e3                                      cmp r0, #0
0079ac94  f6 ff ff 0a                                      beq #0x79ac74
0079ac98  04 10 a0 e1                                      mov r1, r4
0079ac9c  0a 00 a0 e1                                      mov r0, sl
0079aca0  3c 70 cd e5                                      strb r7, [sp, #0x3c]
0079aca4  3d 70 cd e5                                      strb r7, [sp, #0x3d]
0079aca8  a3 f2 ff eb                                      bl #0x79773c
0079acac  09 00 a0 e1                                      mov r0, sb
0079acb0  05 10 a0 e1                                      mov r1, r5
0079acb4  1c 70 cd e5                                      strb r7, [sp, #0x1c]
0079acb8  1d 70 cd e5                                      strb r7, [sp, #0x1d]
0079acbc  9e f2 ff eb                                      bl #0x79773c
0079acc0  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0079acc4  04 20 a0 e1                                      mov r2, r4
0079acc8  0b 10 a0 e1                                      mov r1, fp
0079accc  0a 30 a0 e1                                      mov r3, sl
0079acd0  06 00 a0 e1                                      mov r0, r6
0079acd4  28 c0 8d e5                                      str ip, [sp, #0x28]
0079acd8  00 90 8d e5                                      str sb, [sp]
0079acdc  04 70 8d e5                                      str r7, [sp, #4]
0079ace0  47 ff ff eb                                      bl #0x79aa04
0079ace4  09 00 a0 e1                                      mov r0, sb
0079ace8  0d f1 ff eb                                      bl #0x797124
0079acec  0c 40 84 e2                                      add r4, r4, #0xc
0079acf0  0a 00 a0 e1                                      mov r0, sl
0079acf4  0a f1 ff eb                                      bl #0x797124
0079acf8  04 00 58 e1                                      cmp r8, r4
0079acfc  df ff ff 8a                                      bhi #0x79ac80
0079ad00  0c 40 8d e2                                      add r4, sp, #0xc
0079ad04  00 30 a0 e3                                      mov r3, #0
0079ad08  04 00 a0 e1                                      mov r0, r4
0079ad0c  05 10 a0 e1                                      mov r1, r5
0079ad10  0d 30 cd e5                                      strb r3, [sp, #0xd]
0079ad14  0c 30 cd e5                                      strb r3, [sp, #0xc]
0079ad18  87 f2 ff eb                                      bl #0x79773c
0079ad1c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0079ad20  06 00 a0 e1                                      mov r0, r6
0079ad24  0b 10 a0 e1                                      mov r1, fp
0079ad28  04 20 a0 e1                                      mov r2, r4
0079ad2c  18 30 8d e5                                      str r3, [sp, #0x18]
0079ad30  96 ff ff eb                                      bl #0x79ab90
0079ad34  04 00 a0 e1                                      mov r0, r4
0079ad38  f9 f0 ff eb                                      bl #0x797124
0079ad3c  4c d0 8d e2                                      add sp, sp, #0x4c
0079ad40  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0079ada8, declared_size=232, range_size=232, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv22__final_insertion_sortIPN7gameswf8as_valueENS1_21standard_array_sorterEEEvT_S5_T0_
; demangled: void std::priv::__final_insertion_sort<gameswf::as_value*, gameswf::standard_array_sorter>(gameswf::as_value*, gameswf::as_value*, gameswf::standard_array_sorter)
; decoder-mode: arm
0079ada8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0079adac  01 30 60 e0                                      rsb r3, r0, r1
0079adb0  cb 00 53 e3                                      cmp r3, #0xcb
0079adb4  34 d0 4d e2                                      sub sp, sp, #0x34
0079adb8  00 a0 a0 e1                                      mov sl, r0
0079adbc  01 50 a0 e1                                      mov r5, r1
0079adc0  02 40 a0 e1                                      mov r4, r2
0079adc4  20 00 00 da                                      ble #0x79ae4c
0079adc8  20 70 8d e2                                      add r7, sp, #0x20
0079adcc  00 60 a0 e3                                      mov r6, #0
0079add0  07 00 a0 e1                                      mov r0, r7
0079add4  02 10 a0 e1                                      mov r1, r2
0079add8  20 60 cd e5                                      strb r6, [sp, #0x20]
0079addc  21 60 cd e5                                      strb r6, [sp, #0x21]
0079ade0  55 f2 ff eb                                      bl #0x79773c
0079ade4  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0079ade8  c0 80 8a e2                                      add r8, sl, #0xc0
0079adec  07 30 a0 e1                                      mov r3, r7
0079adf0  06 20 a0 e1                                      mov r2, r6
0079adf4  08 10 a0 e1                                      mov r1, r8
0079adf8  0a 00 a0 e1                                      mov r0, sl
0079adfc  2c c0 8d e5                                      str ip, [sp, #0x2c]
0079ae00  a5 fc ff eb                                      bl #0x79a09c
0079ae04  07 00 a0 e1                                      mov r0, r7
0079ae08  10 70 8d e2                                      add r7, sp, #0x10
0079ae0c  c4 f0 ff eb                                      bl #0x797124
0079ae10  07 00 a0 e1                                      mov r0, r7
0079ae14  04 10 a0 e1                                      mov r1, r4
0079ae18  11 60 cd e5                                      strb r6, [sp, #0x11]
0079ae1c  10 60 cd e5                                      strb r6, [sp, #0x10]
0079ae20  45 f2 ff eb                                      bl #0x79773c
0079ae24  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0079ae28  08 00 a0 e1                                      mov r0, r8
0079ae2c  05 10 a0 e1                                      mov r1, r5
0079ae30  07 20 a0 e1                                      mov r2, r7
0079ae34  1c 30 8d e5                                      str r3, [sp, #0x1c]
0079ae38  da fe ff eb                                      bl #0x79a9a8
0079ae3c  07 00 a0 e1                                      mov r0, r7
0079ae40  b7 f0 ff eb                                      bl #0x797124
0079ae44  34 d0 8d e2                                      add sp, sp, #0x34
0079ae48  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0079ae4c  00 70 a0 e3                                      mov r7, #0
0079ae50  0d 00 a0 e1                                      mov r0, sp
0079ae54  02 10 a0 e1                                      mov r1, r2
0079ae58  00 70 cd e5                                      strb r7, [sp]
0079ae5c  01 70 cd e5                                      strb r7, [sp, #1]
0079ae60  35 f2 ff eb                                      bl #0x79773c
0079ae64  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0079ae68  0a 00 a0 e1                                      mov r0, sl
0079ae6c  05 10 a0 e1                                      mov r1, r5
0079ae70  07 20 a0 e1                                      mov r2, r7
0079ae74  0d 30 a0 e1                                      mov r3, sp
0079ae78  0c c0 8d e5                                      str ip, [sp, #0xc]
0079ae7c  86 fc ff eb                                      bl #0x79a09c
0079ae80  0d 00 a0 e1                                      mov r0, sp
0079ae84  0d 60 a0 e1                                      mov r6, sp
0079ae88  a5 f0 ff eb                                      bl #0x797124
0079ae8c  ec ff ff ea                                      b #0x79ae44

; FUNCTION 0x0079ae90, declared_size=436, range_size=436, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv16__introsort_loopIPN7gameswf8as_valueES2_iNS1_21standard_array_sorterEEEvT_S5_PT0_T1_T2_
; demangled: void std::priv::__introsort_loop<gameswf::as_value*, gameswf::as_value, int, gameswf::standard_array_sorter>(gameswf::as_value*, gameswf::as_value*, gameswf::as_value*, int, gameswf::standard_array_sorter)
; decoder-mode: arm
0079ae90  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0079ae94  01 20 60 e0                                      rsb r2, r0, r1
0079ae98  6c d0 4d e2                                      sub sp, sp, #0x6c
0079ae9c  cb 00 52 e3                                      cmp r2, #0xcb
0079aea0  00 60 a0 e1                                      mov r6, r0
0079aea4  01 70 a0 e1                                      mov r7, r1
0079aea8  03 80 a0 e1                                      mov r8, r3
0079aeac  90 50 9d e5                                      ldr r5, [sp, #0x90]
0079aeb0  50 00 00 da                                      ble #0x79aff8
0079aeb4  00 00 53 e3                                      cmp r3, #0
0079aeb8  50 00 00 0a                                      beq #0x79b000
0079aebc  2c 30 8d e2                                      add r3, sp, #0x2c
0079aec0  1c c0 8d e2                                      add ip, sp, #0x1c
0079aec4  3c 90 8d e2                                      add sb, sp, #0x3c
0079aec8  5c b0 8d e2                                      add fp, sp, #0x5c
0079aecc  10 30 8d e5                                      str r3, [sp, #0x10]
0079aed0  14 c0 8d e5                                      str ip, [sp, #0x14]
0079aed4  00 40 a0 e3                                      mov r4, #0
0079aed8  02 00 00 ea                                      b #0x79aee8
0079aedc  00 00 58 e3                                      cmp r8, #0
0079aee0  0a 70 a0 e1                                      mov r7, sl
0079aee4  45 00 00 0a                                      beq #0x79b000
0079aee8  42 21 a0 e1                                      asr r2, r2, #2
0079aeec  0c 30 47 e2                                      sub r3, r7, #0xc
0079aef0  02 a1 82 e0                                      add sl, r2, r2, lsl #2
0079aef4  09 00 a0 e1                                      mov r0, sb
0079aef8  0a a2 8a e0                                      add sl, sl, sl, lsl #4
0079aefc  05 10 a0 e1                                      mov r1, r5
0079af00  0a a4 8a e0                                      add sl, sl, sl, lsl #8
0079af04  0c 30 8d e5                                      str r3, [sp, #0xc]
0079af08  0a a8 8a e0                                      add sl, sl, sl, lsl #16
0079af0c  3c 40 cd e5                                      strb r4, [sp, #0x3c]
0079af10  8a a0 82 e0                                      add sl, r2, sl, lsl #1
0079af14  0c 20 a0 e3                                      mov r2, #0xc
0079af18  ca a0 a0 e1                                      asr sl, sl, #1
0079af1c  92 6a 2a e0                                      mla sl, r2, sl, r6
0079af20  3d 40 cd e5                                      strb r4, [sp, #0x3d]
0079af24  04 f2 ff eb                                      bl #0x79773c
0079af28  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0079af2c  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0079af30  0a 10 a0 e1                                      mov r1, sl
0079af34  03 20 a0 e1                                      mov r2, r3
0079af38  06 00 a0 e1                                      mov r0, r6
0079af3c  09 30 a0 e1                                      mov r3, sb
0079af40  48 c0 8d e5                                      str ip, [sp, #0x48]
0079af44  7a f6 ff eb                                      bl #0x798934
0079af48  00 10 a0 e1                                      mov r1, r0
0079af4c  0b 00 a0 e1                                      mov r0, fp
0079af50  5c 40 cd e5                                      strb r4, [sp, #0x5c]
0079af54  5d 40 cd e5                                      strb r4, [sp, #0x5d]
0079af58  f7 f1 ff eb                                      bl #0x79773c
0079af5c  10 00 9d e5                                      ldr r0, [sp, #0x10]
0079af60  05 10 a0 e1                                      mov r1, r5
0079af64  2c 40 cd e5                                      strb r4, [sp, #0x2c]
0079af68  2d 40 cd e5                                      strb r4, [sp, #0x2d]
0079af6c  f2 f1 ff eb                                      bl #0x79773c
0079af70  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0079af74  0b 20 a0 e1                                      mov r2, fp
0079af78  10 30 9d e5                                      ldr r3, [sp, #0x10]
0079af7c  07 10 a0 e1                                      mov r1, r7
0079af80  06 00 a0 e1                                      mov r0, r6
0079af84  38 c0 8d e5                                      str ip, [sp, #0x38]
0079af88  ff fa ff eb                                      bl #0x799b8c
0079af8c  00 a0 a0 e1                                      mov sl, r0
0079af90  10 00 9d e5                                      ldr r0, [sp, #0x10]
0079af94  62 f0 ff eb                                      bl #0x797124
0079af98  0b 00 a0 e1                                      mov r0, fp
0079af9c  60 f0 ff eb                                      bl #0x797124
0079afa0  09 00 a0 e1                                      mov r0, sb
0079afa4  5e f0 ff eb                                      bl #0x797124
0079afa8  14 00 9d e5                                      ldr r0, [sp, #0x14]
0079afac  05 10 a0 e1                                      mov r1, r5
0079afb0  1c 40 cd e5                                      strb r4, [sp, #0x1c]
0079afb4  1d 40 cd e5                                      strb r4, [sp, #0x1d]
0079afb8  df f1 ff eb                                      bl #0x79773c
0079afbc  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0079afc0  01 80 48 e2                                      sub r8, r8, #1
0079afc4  00 20 a0 e3                                      mov r2, #0
0079afc8  28 c0 8d e5                                      str ip, [sp, #0x28]
0079afcc  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0079afd0  07 10 a0 e1                                      mov r1, r7
0079afd4  08 30 a0 e1                                      mov r3, r8
0079afd8  0a 00 a0 e1                                      mov r0, sl
0079afdc  00 c0 8d e5                                      str ip, [sp]
0079afe0  aa ff ff eb                                      bl #0x79ae90
0079afe4  14 00 9d e5                                      ldr r0, [sp, #0x14]
0079afe8  4d f0 ff eb                                      bl #0x797124
0079afec  0a 20 66 e0                                      rsb r2, r6, sl
0079aff0  cb 00 52 e3                                      cmp r2, #0xcb
0079aff4  b8 ff ff ca                                      bgt #0x79aedc
0079aff8  6c d0 8d e2                                      add sp, sp, #0x6c
0079affc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0079b000  4c 40 8d e2                                      add r4, sp, #0x4c
0079b004  00 30 a0 e3                                      mov r3, #0
0079b008  04 00 a0 e1                                      mov r0, r4
0079b00c  05 10 a0 e1                                      mov r1, r5
0079b010  4d 30 cd e5                                      strb r3, [sp, #0x4d]
0079b014  4c 30 cd e5                                      strb r3, [sp, #0x4c]
0079b018  c7 f1 ff eb                                      bl #0x79773c
0079b01c  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0079b020  06 00 a0 e1                                      mov r0, r6
0079b024  07 10 a0 e1                                      mov r1, r7
0079b028  07 20 a0 e1                                      mov r2, r7
0079b02c  04 30 a0 e1                                      mov r3, r4
0079b030  58 c0 8d e5                                      str ip, [sp, #0x58]
0079b034  42 ff ff eb                                      bl #0x79ad44
0079b038  04 00 a0 e1                                      mov r0, r4
0079b03c  38 f0 ff eb                                      bl #0x797124
0079b040  ec ff ff ea                                      b #0x79aff8

; FUNCTION 0x007b1000, declared_size=208, range_size=208, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv15__linear_insertIPN7gameswf16ear_clip_wrapperIfNS1_20ear_clip_triangulate17ear_clip_array_ioIfEES5_E9path_infoES7_St4lessIS7_EEEvT_SB_T0_T1_
; demangled: void std::priv::__linear_insert<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info*, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info, std::less<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info> >(gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info*, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info*, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info, std::less<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info>)
; decoder-mode: arm
007b1000  08 d0 4d e2                                      sub sp, sp, #8
007b1004  f0 00 2d e9                                      push {r4, r5, r6, r7}
007b1008  18 c0 9d e5                                      ldr ip, [sp, #0x18]
007b100c  08 40 90 e5                                      ldr r4, [r0, #8]
007b1010  10 20 8d e5                                      str r2, [sp, #0x10]
007b1014  14 30 8d e5                                      str r3, [sp, #0x14]
007b1018  0c 00 54 e1                                      cmp r4, ip
007b101c  14 00 00 da                                      ble #0x7b1074
007b1020  01 50 60 e0                                      rsb r5, r0, r1
007b1024  45 51 a0 e1                                      asr r5, r5, #2
007b1028  05 41 85 e0                                      add r4, r5, r5, lsl #2
007b102c  04 42 84 e0                                      add r4, r4, r4, lsl #4
007b1030  04 44 84 e0                                      add r4, r4, r4, lsl #8
007b1034  04 48 84 e0                                      add r4, r4, r4, lsl #16
007b1038  84 40 85 e0                                      add r4, r5, r4, lsl #1
007b103c  00 00 54 e3                                      cmp r4, #0
007b1040  07 00 00 da                                      ble #0x7b1064
007b1044  0c 70 31 e5                                      ldr r7, [r1, #-0xc]!
007b1048  01 40 54 e2                                      subs r4, r4, #1
007b104c  04 60 91 e5                                      ldr r6, [r1, #4]
007b1050  08 50 91 e5                                      ldr r5, [r1, #8]
007b1054  0c 70 81 e5                                      str r7, [r1, #0xc]
007b1058  10 60 81 e5                                      str r6, [r1, #0x10]
007b105c  14 50 81 e5                                      str r5, [r1, #0x14]
007b1060  f7 ff ff 1a                                      bne #0x7b1044
007b1064  0c 10 80 e8                                      stm r0, {r2, r3, ip}
007b1068  f0 00 bd e8                                      pop {r4, r5, r6, r7}
007b106c  08 d0 8d e2                                      add sp, sp, #8
007b1070  1e ff 2f e1                                      bx lr
007b1074  0c 00 41 e2                                      sub r0, r1, #0xc
007b1078  08 40 90 e5                                      ldr r4, [r0, #8]
007b107c  04 00 5c e1                                      cmp ip, r4
007b1080  02 00 00 ba                                      blt #0x7b1090
007b1084  0c 10 81 e8                                      stm r1, {r2, r3, ip}
007b1088  f6 ff ff ea                                      b #0x7b1068
007b108c  06 00 a0 e1                                      mov r0, r6
007b1090  00 50 a0 e1                                      mov r5, r0
007b1094  04 70 95 e4                                      ldr r7, [r5], #4
007b1098  01 40 a0 e1                                      mov r4, r1
007b109c  0c 60 40 e2                                      sub r6, r0, #0xc
007b10a0  04 70 84 e4                                      str r7, [r4], #4
007b10a4  04 70 90 e5                                      ldr r7, [r0, #4]
007b10a8  04 70 81 e5                                      str r7, [r1, #4]
007b10ac  04 50 95 e5                                      ldr r5, [r5, #4]
007b10b0  00 10 a0 e1                                      mov r1, r0
007b10b4  04 50 84 e5                                      str r5, [r4, #4]
007b10b8  08 40 96 e5                                      ldr r4, [r6, #8]
007b10bc  0c 00 54 e1                                      cmp r4, ip
007b10c0  f1 ff ff ca                                      bgt #0x7b108c
007b10c4  00 10 a0 e1                                      mov r1, r0
007b10c8  0c 10 81 e8                                      stm r1, {r2, r3, ip}
007b10cc  e5 ff ff ea                                      b #0x7b1068

; FUNCTION 0x007b10d0, declared_size=276, range_size=276, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv22__final_insertion_sortIPN7gameswf16ear_clip_wrapperIfNS1_20ear_clip_triangulate17ear_clip_array_ioIfEES5_E9path_infoESt4lessIS7_EEEvT_SB_T0_
; demangled: void std::priv::__final_insertion_sort<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info*, std::less<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info> >(gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info*, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info*, std::less<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info>)
; decoder-mode: arm
007b10d0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
007b10d4  01 30 60 e0                                      rsb r3, r0, r1
007b10d8  cb 00 53 e3                                      cmp r3, #0xcb
007b10dc  14 d0 4d e2                                      sub sp, sp, #0x14
007b10e0  00 50 a0 e1                                      mov r5, r0
007b10e4  01 60 a0 e1                                      mov r6, r1
007b10e8  2d 00 00 da                                      ble #0x7b11a4
007b10ec  0c a0 80 e2                                      add sl, r0, #0xc
007b10f0  c0 70 80 e2                                      add r7, r0, #0xc0
007b10f4  0a 40 a0 e1                                      mov r4, sl
007b10f8  0c 80 8d e2                                      add r8, sp, #0xc
007b10fc  0c 10 94 e8                                      ldm r4, {r2, r3, ip}
007b1100  04 10 a0 e1                                      mov r1, r4
007b1104  05 00 a0 e1                                      mov r0, r5
007b1108  0c 40 84 e2                                      add r4, r4, #0xc
007b110c  00 c0 8d e5                                      str ip, [sp]
007b1110  04 80 8d e5                                      str r8, [sp, #4]
007b1114  b9 ff ff eb                                      bl #0x7b1000
007b1118  07 00 54 e1                                      cmp r4, r7
007b111c  f6 ff ff 1a                                      bne #0x7b10fc
007b1120  b4 a0 8a e2                                      add sl, sl, #0xb4
007b1124  0a 00 56 e1                                      cmp r6, sl
007b1128  1b 00 00 0a                                      beq #0x7b119c
007b112c  04 30 1a e5                                      ldr r3, [sl, #-4]
007b1130  08 40 9a e5                                      ldr r4, [sl, #8]
007b1134  a0 00 9a e8                                      ldm sl, {r5, r7}
007b1138  03 00 54 e1                                      cmp r4, r3
007b113c  0c 30 4a e2                                      sub r3, sl, #0xc
007b1140  0a 30 a0 a1                                      movge r3, sl
007b1144  0f 00 00 aa                                      bge #0x7b1188
007b1148  0a 00 a0 e1                                      mov r0, sl
007b114c  00 00 00 ea                                      b #0x7b1154
007b1150  0c 30 a0 e1                                      mov r3, ip
007b1154  03 10 a0 e1                                      mov r1, r3
007b1158  04 80 91 e4                                      ldr r8, [r1], #4
007b115c  00 20 a0 e1                                      mov r2, r0
007b1160  0c c0 43 e2                                      sub ip, r3, #0xc
007b1164  04 80 82 e4                                      str r8, [r2], #4
007b1168  04 80 93 e5                                      ldr r8, [r3, #4]
007b116c  04 80 80 e5                                      str r8, [r0, #4]
007b1170  04 10 91 e5                                      ldr r1, [r1, #4]
007b1174  03 00 a0 e1                                      mov r0, r3
007b1178  04 10 82 e5                                      str r1, [r2, #4]
007b117c  08 20 9c e5                                      ldr r2, [ip, #8]
007b1180  02 00 54 e1                                      cmp r4, r2
007b1184  f1 ff ff ba                                      blt #0x7b1150
007b1188  0c a0 8a e2                                      add sl, sl, #0xc
007b118c  0a 00 56 e1                                      cmp r6, sl
007b1190  08 40 83 e5                                      str r4, [r3, #8]
007b1194  a0 00 83 e8                                      stm r3, {r5, r7}
007b1198  e3 ff ff 1a                                      bne #0x7b112c
007b119c  14 d0 8d e2                                      add sp, sp, #0x14
007b11a0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
007b11a4  00 00 51 e1                                      cmp r1, r0
007b11a8  fb ff ff 0a                                      beq #0x7b119c
007b11ac  0c 40 80 e2                                      add r4, r0, #0xc
007b11b0  04 00 51 e1                                      cmp r1, r4
007b11b4  f8 ff ff 0a                                      beq #0x7b119c
007b11b8  08 70 8d e2                                      add r7, sp, #8
007b11bc  0c 10 94 e8                                      ldm r4, {r2, r3, ip}
007b11c0  04 10 a0 e1                                      mov r1, r4
007b11c4  05 00 a0 e1                                      mov r0, r5
007b11c8  0c 40 84 e2                                      add r4, r4, #0xc
007b11cc  00 c0 8d e5                                      str ip, [sp]
007b11d0  04 70 8d e5                                      str r7, [sp, #4]
007b11d4  89 ff ff eb                                      bl #0x7b1000
007b11d8  04 00 56 e1                                      cmp r6, r4
007b11dc  f6 ff ff 1a                                      bne #0x7b11bc
007b11e0  ed ff ff ea                                      b #0x7b119c

; FUNCTION 0x007b19c0, declared_size=316, range_size=316, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv14__partial_sortIPN7gameswf16ear_clip_wrapperIfNS1_20ear_clip_triangulate17ear_clip_array_ioIfEES5_E9path_infoES7_St4lessIS7_EEEvT_SB_SB_PT0_T1_
; demangled: void std::priv::__partial_sort<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info*, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info, std::less<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info> >(gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info*, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info*, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info*, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info*, std::less<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info>)
; decoder-mode: arm
007b19c0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007b19c4  00 50 a0 e3                                      mov r5, #0
007b19c8  44 d0 4d e2                                      sub sp, sp, #0x44
007b19cc  02 70 a0 e1                                      mov r7, r2
007b19d0  01 40 a0 e1                                      mov r4, r1
007b19d4  38 20 8d e2                                      add r2, sp, #0x38
007b19d8  05 30 a0 e1                                      mov r3, r5
007b19dc  00 50 8d e5                                      str r5, [sp]
007b19e0  00 60 a0 e1                                      mov r6, r0
007b19e4  a7 ff ff eb                                      bl #0x7b1888
007b19e8  07 00 54 e1                                      cmp r4, r7
007b19ec  23 00 00 2a                                      bhs #0x7b1a80
007b19f0  28 80 8d e2                                      add r8, sp, #0x28
007b19f4  04 a0 88 e2                                      add sl, r8, #4
007b19f8  3c 30 8d e2                                      add r3, sp, #0x3c
007b19fc  05 90 a0 e1                                      mov sb, r5
007b1a00  04 b0 8a e2                                      add fp, sl, #4
007b1a04  04 50 a0 e1                                      mov r5, r4
007b1a08  14 30 8d e5                                      str r3, [sp, #0x14]
007b1a0c  02 00 00 ea                                      b #0x7b1a1c
007b1a10  0c 50 85 e2                                      add r5, r5, #0xc
007b1a14  05 00 57 e1                                      cmp r7, r5
007b1a18  18 00 00 9a                                      bls #0x7b1a80
007b1a1c  08 20 95 e5                                      ldr r2, [r5, #8]
007b1a20  08 30 96 e5                                      ldr r3, [r6, #8]
007b1a24  03 00 52 e1                                      cmp r2, r3
007b1a28  f8 ff ff aa                                      bge #0x7b1a10
007b1a2c  04 00 95 e5                                      ldr r0, [r5, #4]
007b1a30  05 30 a0 e1                                      mov r3, r5
007b1a34  04 10 93 e4                                      ldr r1, [r3], #4
007b1a38  00 00 8a e5                                      str r0, [sl]
007b1a3c  2c e0 9d e5                                      ldr lr, [sp, #0x2c]
007b1a40  04 c0 93 e5                                      ldr ip, [r3, #4]
007b1a44  00 10 88 e5                                      str r1, [r8]
007b1a48  00 e0 8d e5                                      str lr, [sp]
007b1a4c  04 c0 8d e5                                      str ip, [sp, #4]
007b1a50  00 c0 8b e5                                      str ip, [fp]
007b1a54  14 c0 9d e5                                      ldr ip, [sp, #0x14]
007b1a58  05 20 a0 e1                                      mov r2, r5
007b1a5c  28 30 9d e5                                      ldr r3, [sp, #0x28]
007b1a60  06 00 a0 e1                                      mov r0, r6
007b1a64  04 10 a0 e1                                      mov r1, r4
007b1a68  0c 50 85 e2                                      add r5, r5, #0xc
007b1a6c  08 c0 8d e5                                      str ip, [sp, #8]
007b1a70  0c 90 8d e5                                      str sb, [sp, #0xc]
007b1a74  b2 ff ff eb                                      bl #0x7b1944
007b1a78  05 00 57 e1                                      cmp r7, r5
007b1a7c  e6 ff ff 8a                                      bhi #0x7b1a1c
007b1a80  04 50 66 e0                                      rsb r5, r6, r4
007b1a84  17 00 55 e3                                      cmp r5, #0x17
007b1a88  19 00 00 da                                      ble #0x7b1af4
007b1a8c  1c 70 8d e2                                      add r7, sp, #0x1c
007b1a90  04 80 87 e2                                      add r8, r7, #4
007b1a94  34 a0 8d e2                                      add sl, sp, #0x34
007b1a98  04 90 88 e2                                      add sb, r8, #4
007b1a9c  00 b0 a0 e3                                      mov fp, #0
007b1aa0  0c 40 44 e2                                      sub r4, r4, #0xc
007b1aa4  04 10 94 e5                                      ldr r1, [r4, #4]
007b1aa8  04 30 a0 e1                                      mov r3, r4
007b1aac  04 20 93 e4                                      ldr r2, [r3], #4
007b1ab0  00 10 88 e5                                      str r1, [r8]
007b1ab4  20 e0 9d e5                                      ldr lr, [sp, #0x20]
007b1ab8  04 c0 93 e5                                      ldr ip, [r3, #4]
007b1abc  00 20 87 e5                                      str r2, [r7]
007b1ac0  0c 50 45 e2                                      sub r5, r5, #0xc
007b1ac4  00 e0 8d e5                                      str lr, [sp]
007b1ac8  04 c0 8d e5                                      str ip, [sp, #4]
007b1acc  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
007b1ad0  00 c0 89 e5                                      str ip, [sb]
007b1ad4  06 00 a0 e1                                      mov r0, r6
007b1ad8  04 10 a0 e1                                      mov r1, r4
007b1adc  04 20 a0 e1                                      mov r2, r4
007b1ae0  08 a0 8d e5                                      str sl, [sp, #8]
007b1ae4  0c b0 8d e5                                      str fp, [sp, #0xc]
007b1ae8  95 ff ff eb                                      bl #0x7b1944
007b1aec  17 00 55 e3                                      cmp r5, #0x17
007b1af0  ea ff ff ca                                      bgt #0x7b1aa0
007b1af4  44 d0 8d e2                                      add sp, sp, #0x44
007b1af8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007b1afc, declared_size=388, range_size=388, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv16__introsort_loopIPN7gameswf16ear_clip_wrapperIfNS1_20ear_clip_triangulate17ear_clip_array_ioIfEES5_E9path_infoES7_iSt4lessIS7_EEEvT_SB_PT0_T1_T2_
; demangled: void std::priv::__introsort_loop<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info*, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info, int, std::less<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info> >(gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info*, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info*, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info*, int, std::less<gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::path_info>)
; decoder-mode: arm
007b1afc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007b1b00  01 20 60 e0                                      rsb r2, r0, r1
007b1b04  cb 00 52 e3                                      cmp r2, #0xcb
007b1b08  14 d0 4d e2                                      sub sp, sp, #0x14
007b1b0c  00 50 a0 e1                                      mov r5, r0
007b1b10  03 60 a0 e1                                      mov r6, r3
007b1b14  4f 00 00 da                                      ble #0x7b1c58
007b1b18  00 00 53 e3                                      cmp r3, #0
007b1b1c  0c 70 8d 12                                      addne r7, sp, #0xc
007b1b20  46 00 00 0a                                      beq #0x7b1c40
007b1b24  42 21 a0 e1                                      asr r2, r2, #2
007b1b28  08 00 95 e5                                      ldr r0, [r5, #8]
007b1b2c  02 31 82 e0                                      add r3, r2, r2, lsl #2
007b1b30  01 60 46 e2                                      sub r6, r6, #1
007b1b34  03 32 83 e0                                      add r3, r3, r3, lsl #4
007b1b38  0c c0 41 e2                                      sub ip, r1, #0xc
007b1b3c  03 34 83 e0                                      add r3, r3, r3, lsl #8
007b1b40  03 38 83 e0                                      add r3, r3, r3, lsl #16
007b1b44  83 30 82 e0                                      add r3, r2, r3, lsl #1
007b1b48  0c 20 a0 e3                                      mov r2, #0xc
007b1b4c  c3 30 a0 e1                                      asr r3, r3, #1
007b1b50  92 53 23 e0                                      mla r3, r2, r3, r5
007b1b54  08 30 93 e5                                      ldr r3, [r3, #8]
007b1b58  03 00 50 e1                                      cmp r0, r3
007b1b5c  3f 00 00 aa                                      bge #0x7b1c60
007b1b60  08 20 9c e5                                      ldr r2, [ip, #8]
007b1b64  02 00 53 e1                                      cmp r3, r2
007b1b68  41 00 00 ba                                      blt #0x7b1c74
007b1b6c  02 00 50 e1                                      cmp r0, r2
007b1b70  25 00 00 ba                                      blt #0x7b1c0c
007b1b74  02 c0 a0 e1                                      mov ip, r2
007b1b78  00 20 a0 e1                                      mov r2, r0
007b1b7c  01 30 a0 e1                                      mov r3, r1
007b1b80  05 80 a0 e1                                      mov r8, r5
007b1b84  00 00 52 e1                                      cmp r2, r0
007b1b88  08 40 a0 d1                                      movle r4, r8
007b1b8c  04 00 00 da                                      ble #0x7b1ba4
007b1b90  08 40 a0 e1                                      mov r4, r8
007b1b94  0c 40 84 e2                                      add r4, r4, #0xc
007b1b98  08 00 94 e5                                      ldr r0, [r4, #8]
007b1b9c  02 00 50 e1                                      cmp r0, r2
007b1ba0  fb ff ff ba                                      blt #0x7b1b94
007b1ba4  0c 00 52 e1                                      cmp r2, ip
007b1ba8  0c 30 43 e2                                      sub r3, r3, #0xc
007b1bac  03 00 00 aa                                      bge #0x7b1bc0
007b1bb0  0c 30 43 e2                                      sub r3, r3, #0xc
007b1bb4  08 c0 93 e5                                      ldr ip, [r3, #8]
007b1bb8  02 00 5c e1                                      cmp ip, r2
007b1bbc  fb ff ff ca                                      bgt #0x7b1bb0
007b1bc0  04 00 53 e1                                      cmp r3, r4
007b1bc4  12 00 00 9a                                      bls #0x7b1c14
007b1bc8  03 e0 a0 e1                                      mov lr, r3
007b1bcc  04 80 9e e4                                      ldr r8, [lr], #4
007b1bd0  04 c0 a0 e1                                      mov ip, r4
007b1bd4  04 90 94 e5                                      ldr sb, [r4, #4]
007b1bd8  00 a0 94 e5                                      ldr sl, [r4]
007b1bdc  04 80 8c e4                                      str r8, [ip], #4
007b1be0  04 b0 93 e5                                      ldr fp, [r3, #4]
007b1be4  0c 80 84 e2                                      add r8, r4, #0xc
007b1be8  04 b0 84 e5                                      str fp, [r4, #4]
007b1bec  04 e0 9e e5                                      ldr lr, [lr, #4]
007b1bf0  04 e0 8c e5                                      str lr, [ip, #4]
007b1bf4  08 00 83 e5                                      str r0, [r3, #8]
007b1bf8  04 90 83 e5                                      str sb, [r3, #4]
007b1bfc  00 a0 83 e5                                      str sl, [r3]
007b1c00  04 c0 13 e5                                      ldr ip, [r3, #-4]
007b1c04  08 00 98 e5                                      ldr r0, [r8, #8]
007b1c08  dd ff ff ea                                      b #0x7b1b84
007b1c0c  02 c0 a0 e1                                      mov ip, r2
007b1c10  d9 ff ff ea                                      b #0x7b1b7c
007b1c14  00 20 a0 e3                                      mov r2, #0
007b1c18  04 00 a0 e1                                      mov r0, r4
007b1c1c  06 30 a0 e1                                      mov r3, r6
007b1c20  00 70 8d e5                                      str r7, [sp]
007b1c24  b4 ff ff eb                                      bl #0x7b1afc
007b1c28  04 20 65 e0                                      rsb r2, r5, r4
007b1c2c  cb 00 52 e3                                      cmp r2, #0xcb
007b1c30  08 00 00 da                                      ble #0x7b1c58
007b1c34  00 00 56 e3                                      cmp r6, #0
007b1c38  04 10 a0 e1                                      mov r1, r4
007b1c3c  b8 ff ff 1a                                      bne #0x7b1b24
007b1c40  08 c0 8d e2                                      add ip, sp, #8
007b1c44  05 00 a0 e1                                      mov r0, r5
007b1c48  01 20 a0 e1                                      mov r2, r1
007b1c4c  00 30 a0 e3                                      mov r3, #0
007b1c50  00 c0 8d e5                                      str ip, [sp]
007b1c54  59 ff ff eb                                      bl #0x7b19c0
007b1c58  14 d0 8d e2                                      add sp, sp, #0x14
007b1c5c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007b1c60  08 20 9c e5                                      ldr r2, [ip, #8]
007b1c64  02 00 50 e1                                      cmp r0, r2
007b1c68  c1 ff ff ba                                      blt #0x7b1b74
007b1c6c  02 00 53 e1                                      cmp r3, r2
007b1c70  e5 ff ff ba                                      blt #0x7b1c0c
007b1c74  02 c0 a0 e1                                      mov ip, r2
007b1c78  03 20 a0 e1                                      mov r2, r3
007b1c7c  be ff ff ea                                      b #0x7b1b7c

; FUNCTION 0x007b2a90, declared_size=280, range_size=280, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv14__partial_sortIPiiN7gameswf16ear_clip_wrapperIfNS2_20ear_clip_triangulate17ear_clip_array_ioIfEES6_E17vert_index_sorterEEEvT_S9_S9_PT0_T1_
; demangled: void std::priv::__partial_sort<int*, int, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::vert_index_sorter>(int*, int*, int*, int*, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::vert_index_sorter)
; decoder-mode: arm
007b2a90  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007b2a94  24 d0 4d e2                                      sub sp, sp, #0x24
007b2a98  48 60 9d e5                                      ldr r6, [sp, #0x48]
007b2a9c  00 c0 a0 e3                                      mov ip, #0
007b2aa0  14 20 8d e5                                      str r2, [sp, #0x14]
007b2aa4  0c 30 a0 e1                                      mov r3, ip
007b2aa8  06 20 a0 e1                                      mov r2, r6
007b2aac  1c 10 8d e5                                      str r1, [sp, #0x1c]
007b2ab0  00 c0 8d e5                                      str ip, [sp]
007b2ab4  0c 00 8d e5                                      str r0, [sp, #0xc]
007b2ab8  c6 ff ff eb                                      bl #0x7b29d8
007b2abc  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007b2ac0  14 20 9d e5                                      ldr r2, [sp, #0x14]
007b2ac4  02 00 51 e1                                      cmp r1, r2
007b2ac8  30 00 00 2a                                      bhs #0x7b2b90
007b2acc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
007b2ad0  01 40 a0 e1                                      mov r4, r1
007b2ad4  14 50 a0 e3                                      mov r5, #0x14
007b2ad8  01 30 62 e0                                      rsb r3, r2, r1
007b2adc  43 31 a0 e1                                      asr r3, r3, #2
007b2ae0  18 30 8d e5                                      str r3, [sp, #0x18]
007b2ae4  0c 00 00 ea                                      b #0x7b2b1c
007b2ae8  02 6e ed eb                                      bl #0x30e2f8
007b2aec  00 00 50 e3                                      cmp r0, #0
007b2af0  05 00 00 1a                                      bne #0x7b2b0c
007b2af4  10 20 9d e5                                      ldr r2, [sp, #0x10]
007b2af8  04 10 9b e5                                      ldr r1, [fp, #4]
007b2afc  04 00 92 e5                                      ldr r0, [r2, #4]
007b2b00  01 6f ed eb                                      bl #0x30e70c
007b2b04  00 00 50 e3                                      cmp r0, #0
007b2b08  15 00 00 1a                                      bne #0x7b2b64
007b2b0c  14 30 9d e5                                      ldr r3, [sp, #0x14]
007b2b10  04 40 84 e2                                      add r4, r4, #4
007b2b14  04 00 53 e1                                      cmp r3, r4
007b2b18  1c 00 00 9a                                      bls #0x7b2b90
007b2b1c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007b2b20  00 a0 94 e5                                      ldr sl, [r4]
007b2b24  00 90 93 e5                                      ldr sb, [r3]
007b2b28  95 0a 02 e0                                      mul r2, r5, sl
007b2b2c  00 30 96 e5                                      ldr r3, [r6]
007b2b30  95 09 0b e0                                      mul fp, r5, sb
007b2b34  02 70 93 e7                                      ldr r7, [r3, r2]
007b2b38  0b 80 93 e7                                      ldr r8, [r3, fp]
007b2b3c  02 20 83 e0                                      add r2, r3, r2
007b2b40  07 00 a0 e1                                      mov r0, r7
007b2b44  08 10 a0 e1                                      mov r1, r8
007b2b48  10 20 8d e5                                      str r2, [sp, #0x10]
007b2b4c  0b b0 83 e0                                      add fp, r3, fp
007b2b50  ed 6e ed eb                                      bl #0x30e70c
007b2b54  00 00 50 e3                                      cmp r0, #0
007b2b58  08 10 a0 e1                                      mov r1, r8
007b2b5c  07 00 a0 e1                                      mov r0, r7
007b2b60  e0 ff ff 0a                                      beq #0x7b2ae8
007b2b64  00 90 84 e5                                      str sb, [r4]
007b2b68  0a 30 a0 e1                                      mov r3, sl
007b2b6c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007b2b70  00 10 a0 e3                                      mov r1, #0
007b2b74  18 20 9d e5                                      ldr r2, [sp, #0x18]
007b2b78  00 60 8d e5                                      str r6, [sp]
007b2b7c  51 ff ff eb                                      bl #0x7b28c8
007b2b80  14 30 9d e5                                      ldr r3, [sp, #0x14]
007b2b84  04 40 84 e2                                      add r4, r4, #4
007b2b88  04 00 53 e1                                      cmp r3, r4
007b2b8c  e2 ff ff 8a                                      bhi #0x7b2b1c
007b2b90  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007b2b94  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007b2b98  06 20 a0 e1                                      mov r2, r6
007b2b9c  24 d0 8d e2                                      add sp, sp, #0x24
007b2ba0  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007b2ba4  a4 ff ff ea                                      b #0x7b2a3c

; FUNCTION 0x007b2ba8, declared_size=292, range_size=292, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv15__linear_insertIPiiN7gameswf16ear_clip_wrapperIfNS2_20ear_clip_triangulate17ear_clip_array_ioIfEES6_E17vert_index_sorterEEEvT_S9_T0_T1_
; demangled: void std::priv::__linear_insert<int*, int, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::vert_index_sorter>(int*, int*, int, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::vert_index_sorter)
; decoder-mode: arm
007b2ba8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007b2bac  00 90 90 e5                                      ldr sb, [r0]
007b2bb0  0c d0 4d e2                                      sub sp, sp, #0xc
007b2bb4  04 20 8d e5                                      str r2, [sp, #4]
007b2bb8  00 30 8d e5                                      str r3, [sp]
007b2bbc  14 a0 a0 e3                                      mov sl, #0x14
007b2bc0  00 40 93 e5                                      ldr r4, [r3]
007b2bc4  9a 09 09 e0                                      mul sb, sl, sb
007b2bc8  9a 02 0a e0                                      mul sl, sl, r2
007b2bcc  09 70 94 e7                                      ldr r7, [r4, sb]
007b2bd0  0a 60 94 e7                                      ldr r6, [r4, sl]
007b2bd4  00 50 a0 e1                                      mov r5, r0
007b2bd8  01 b0 a0 e1                                      mov fp, r1
007b2bdc  06 00 a0 e1                                      mov r0, r6
007b2be0  07 10 a0 e1                                      mov r1, r7
007b2be4  c8 6e ed eb                                      bl #0x30e70c
007b2be8  00 00 50 e3                                      cmp r0, #0
007b2bec  09 90 84 e0                                      add sb, r4, sb
007b2bf0  0a 80 84 e0                                      add r8, r4, sl
007b2bf4  23 00 00 1a                                      bne #0x7b2c88
007b2bf8  07 10 a0 e1                                      mov r1, r7
007b2bfc  06 00 a0 e1                                      mov r0, r6
007b2c00  bc 6d ed eb                                      bl #0x30e2f8
007b2c04  00 00 50 e3                                      cmp r0, #0
007b2c08  04 00 00 1a                                      bne #0x7b2c20
007b2c0c  04 00 98 e5                                      ldr r0, [r8, #4]
007b2c10  04 10 99 e5                                      ldr r1, [sb, #4]
007b2c14  bc 6e ed eb                                      bl #0x30e70c
007b2c18  00 00 50 e3                                      cmp r0, #0
007b2c1c  19 00 00 1a                                      bne #0x7b2c88
007b2c20  04 80 4b e2                                      sub r8, fp, #4
007b2c24  00 70 98 e5                                      ldr r7, [r8]
007b2c28  14 30 a0 e3                                      mov r3, #0x14
007b2c2c  06 00 a0 e1                                      mov r0, r6
007b2c30  93 07 09 e0                                      mul sb, r3, r7
007b2c34  09 50 94 e7                                      ldr r5, [r4, sb]
007b2c38  09 90 84 e0                                      add sb, r4, sb
007b2c3c  05 10 a0 e1                                      mov r1, r5
007b2c40  b1 6e ed eb                                      bl #0x30e70c
007b2c44  00 00 50 e3                                      cmp r0, #0
007b2c48  05 10 a0 e1                                      mov r1, r5
007b2c4c  06 00 a0 e1                                      mov r0, r6
007b2c50  16 00 00 1a                                      bne #0x7b2cb0
007b2c54  a7 6d ed eb                                      bl #0x30e2f8
007b2c58  00 00 50 e3                                      cmp r0, #0
007b2c5c  0a 40 84 e0                                      add r4, r4, sl
007b2c60  04 00 00 1a                                      bne #0x7b2c78
007b2c64  04 00 94 e5                                      ldr r0, [r4, #4]
007b2c68  04 10 99 e5                                      ldr r1, [sb, #4]
007b2c6c  a6 6e ed eb                                      bl #0x30e70c
007b2c70  00 00 50 e3                                      cmp r0, #0
007b2c74  0d 00 00 1a                                      bne #0x7b2cb0
007b2c78  04 30 9d e5                                      ldr r3, [sp, #4]
007b2c7c  00 30 8b e5                                      str r3, [fp]
007b2c80  0c d0 8d e2                                      add sp, sp, #0xc
007b2c84  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007b2c88  0b 20 65 e0                                      rsb r2, r5, fp
007b2c8c  00 00 52 e3                                      cmp r2, #0
007b2c90  03 00 00 da                                      ble #0x7b2ca4
007b2c94  04 00 8b e2                                      add r0, fp, #4
007b2c98  00 00 62 e0                                      rsb r0, r2, r0
007b2c9c  05 10 a0 e1                                      mov r1, r5
007b2ca0  a4 6c ed eb                                      bl #0x30df38
007b2ca4  04 30 9d e5                                      ldr r3, [sp, #4]
007b2ca8  00 30 85 e5                                      str r3, [r5]
007b2cac  f3 ff ff ea                                      b #0x7b2c80
007b2cb0  00 70 8b e5                                      str r7, [fp]
007b2cb4  00 30 9d e5                                      ldr r3, [sp]
007b2cb8  08 b0 a0 e1                                      mov fp, r8
007b2cbc  04 80 48 e2                                      sub r8, r8, #4
007b2cc0  00 40 93 e5                                      ldr r4, [r3]
007b2cc4  0a 60 94 e7                                      ldr r6, [r4, sl]
007b2cc8  d5 ff ff ea                                      b #0x7b2c24

; FUNCTION 0x007b2ccc, declared_size=344, range_size=344, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv22__final_insertion_sortIPiN7gameswf16ear_clip_wrapperIfNS2_20ear_clip_triangulate17ear_clip_array_ioIfEES6_E17vert_index_sorterEEEvT_S9_T0_
; demangled: void std::priv::__final_insertion_sort<int*, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::vert_index_sorter>(int*, int*, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::vert_index_sorter)
; decoder-mode: arm
007b2ccc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007b2cd0  01 30 60 e0                                      rsb r3, r0, r1
007b2cd4  14 d0 4d e2                                      sub sp, sp, #0x14
007b2cd8  43 00 53 e3                                      cmp r3, #0x43
007b2cdc  00 60 a0 e1                                      mov r6, r0
007b2ce0  0c 10 8d e5                                      str r1, [sp, #0xc]
007b2ce4  02 40 a0 e1                                      mov r4, r2
007b2ce8  3d 00 00 da                                      ble #0x7b2de4
007b2cec  04 80 80 e2                                      add r8, r0, #4
007b2cf0  40 70 80 e2                                      add r7, r0, #0x40
007b2cf4  08 50 a0 e1                                      mov r5, r8
007b2cf8  05 10 a0 e1                                      mov r1, r5
007b2cfc  00 20 95 e5                                      ldr r2, [r5]
007b2d00  06 00 a0 e1                                      mov r0, r6
007b2d04  04 50 85 e2                                      add r5, r5, #4
007b2d08  04 30 a0 e1                                      mov r3, r4
007b2d0c  a5 ff ff eb                                      bl #0x7b2ba8
007b2d10  07 00 55 e1                                      cmp r5, r7
007b2d14  f7 ff ff 1a                                      bne #0x7b2cf8
007b2d18  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007b2d1c  3c 80 88 e2                                      add r8, r8, #0x3c
007b2d20  04 80 8d e5                                      str r8, [sp, #4]
007b2d24  08 00 51 e1                                      cmp r1, r8
007b2d28  12 00 00 1a                                      bne #0x7b2d78
007b2d2c  14 d0 8d e2                                      add sp, sp, #0x14
007b2d30  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007b2d34  6f 6d ed eb                                      bl #0x30e2f8
007b2d38  00 00 50 e3                                      cmp r0, #0
007b2d3c  04 00 00 1a                                      bne #0x7b2d54
007b2d40  04 00 9b e5                                      ldr r0, [fp, #4]
007b2d44  04 10 99 e5                                      ldr r1, [sb, #4]
007b2d48  6f 6e ed eb                                      bl #0x30e70c
007b2d4c  00 00 50 e3                                      cmp r0, #0
007b2d50  1e 00 00 1a                                      bne #0x7b2dd0
007b2d54  04 10 9d e5                                      ldr r1, [sp, #4]
007b2d58  0c 20 9d e5                                      ldr r2, [sp, #0xc]
007b2d5c  08 30 9d e5                                      ldr r3, [sp, #8]
007b2d60  04 10 81 e2                                      add r1, r1, #4
007b2d64  04 10 8d e5                                      str r1, [sp, #4]
007b2d68  01 00 52 e1                                      cmp r2, r1
007b2d6c  00 10 9d e5                                      ldr r1, [sp]
007b2d70  00 30 81 e5                                      str r3, [r1]
007b2d74  ec ff ff 0a                                      beq #0x7b2d2c
007b2d78  04 70 9d e5                                      ldr r7, [sp, #4]
007b2d7c  04 30 9d e5                                      ldr r3, [sp, #4]
007b2d80  14 10 a0 e3                                      mov r1, #0x14
007b2d84  04 20 17 e4                                      ldr r2, [r7], #-4
007b2d88  00 30 8d e5                                      str r3, [sp]
007b2d8c  91 02 0a e0                                      mul sl, r1, r2
007b2d90  08 20 8d e5                                      str r2, [sp, #8]
007b2d94  00 80 97 e5                                      ldr r8, [r7]
007b2d98  14 20 a0 e3                                      mov r2, #0x14
007b2d9c  00 30 94 e5                                      ldr r3, [r4]
007b2da0  92 08 09 e0                                      mul sb, r2, r8
007b2da4  0a 50 93 e7                                      ldr r5, [r3, sl]
007b2da8  09 60 93 e7                                      ldr r6, [r3, sb]
007b2dac  0a b0 83 e0                                      add fp, r3, sl
007b2db0  05 00 a0 e1                                      mov r0, r5
007b2db4  06 10 a0 e1                                      mov r1, r6
007b2db8  09 90 83 e0                                      add sb, r3, sb
007b2dbc  52 6e ed eb                                      bl #0x30e70c
007b2dc0  00 00 50 e3                                      cmp r0, #0
007b2dc4  06 10 a0 e1                                      mov r1, r6
007b2dc8  05 00 a0 e1                                      mov r0, r5
007b2dcc  d8 ff ff 0a                                      beq #0x7b2d34
007b2dd0  00 30 9d e5                                      ldr r3, [sp]
007b2dd4  00 80 83 e5                                      str r8, [r3]
007b2dd8  00 70 8d e5                                      str r7, [sp]
007b2ddc  04 70 47 e2                                      sub r7, r7, #4
007b2de0  eb ff ff ea                                      b #0x7b2d94
007b2de4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
007b2de8  00 00 52 e1                                      cmp r2, r0
007b2dec  ce ff ff 0a                                      beq #0x7b2d2c
007b2df0  04 50 80 e2                                      add r5, r0, #4
007b2df4  05 00 52 e1                                      cmp r2, r5
007b2df8  cb ff ff 0a                                      beq #0x7b2d2c
007b2dfc  02 70 a0 e1                                      mov r7, r2
007b2e00  05 10 a0 e1                                      mov r1, r5
007b2e04  00 20 95 e5                                      ldr r2, [r5]
007b2e08  06 00 a0 e1                                      mov r0, r6
007b2e0c  04 50 85 e2                                      add r5, r5, #4
007b2e10  04 30 a0 e1                                      mov r3, r4
007b2e14  63 ff ff eb                                      bl #0x7b2ba8
007b2e18  05 00 57 e1                                      cmp r7, r5
007b2e1c  f7 ff ff 1a                                      bne #0x7b2e00
007b2e20  c1 ff ff ea                                      b #0x7b2d2c

; FUNCTION 0x007b2fdc, declared_size=184, range_size=184, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv16__introsort_loopIPiiiN7gameswf16ear_clip_wrapperIfNS2_20ear_clip_triangulate17ear_clip_array_ioIfEES6_E17vert_index_sorterEEEvT_S9_PT0_T1_T2_
; demangled: void std::priv::__introsort_loop<int*, int, int, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::vert_index_sorter>(int*, int*, int*, int, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::vert_index_sorter)
; decoder-mode: arm
007b2fdc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007b2fe0  01 50 a0 e1                                      mov r5, r1
007b2fe4  01 10 60 e0                                      rsb r1, r0, r1
007b2fe8  08 d0 4d e2                                      sub sp, sp, #8
007b2fec  43 00 51 e3                                      cmp r1, #0x43
007b2ff0  00 40 a0 e1                                      mov r4, r0
007b2ff4  03 60 a0 e1                                      mov r6, r3
007b2ff8  20 70 9d e5                                      ldr r7, [sp, #0x20]
007b2ffc  1a 00 00 da                                      ble #0x7b306c
007b3000  00 00 53 e3                                      cmp r3, #0
007b3004  03 00 00 1a                                      bne #0x7b3018
007b3008  19 00 00 ea                                      b #0x7b3074
007b300c  00 00 56 e3                                      cmp r6, #0
007b3010  08 50 a0 e1                                      mov r5, r8
007b3014  16 00 00 0a                                      beq #0x7b3074
007b3018  c1 11 a0 e1                                      asr r1, r1, #3
007b301c  04 20 45 e2                                      sub r2, r5, #4
007b3020  01 11 84 e0                                      add r1, r4, r1, lsl #2
007b3024  07 30 a0 e1                                      mov r3, r7
007b3028  04 00 a0 e1                                      mov r0, r4
007b302c  7c ff ff eb                                      bl #0x7b2e24
007b3030  05 10 a0 e1                                      mov r1, r5
007b3034  00 20 90 e5                                      ldr r2, [r0]
007b3038  07 30 a0 e1                                      mov r3, r7
007b303c  04 00 a0 e1                                      mov r0, r4
007b3040  96 fd ff eb                                      bl #0x7b26a0
007b3044  01 60 46 e2                                      sub r6, r6, #1
007b3048  00 80 a0 e1                                      mov r8, r0
007b304c  05 10 a0 e1                                      mov r1, r5
007b3050  00 20 a0 e3                                      mov r2, #0
007b3054  06 30 a0 e1                                      mov r3, r6
007b3058  00 70 8d e5                                      str r7, [sp]
007b305c  de ff ff eb                                      bl #0x7b2fdc
007b3060  08 10 64 e0                                      rsb r1, r4, r8
007b3064  43 00 51 e3                                      cmp r1, #0x43
007b3068  e7 ff ff ca                                      bgt #0x7b300c
007b306c  08 d0 8d e2                                      add sp, sp, #8
007b3070  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007b3074  05 10 a0 e1                                      mov r1, r5
007b3078  04 00 a0 e1                                      mov r0, r4
007b307c  05 20 a0 e1                                      mov r2, r5
007b3080  00 30 a0 e3                                      mov r3, #0
007b3084  20 70 8d e5                                      str r7, [sp, #0x20]
007b3088  08 d0 8d e2                                      add sp, sp, #8
007b308c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
007b3090  7e fe ff ea                                      b #0x7b2a90

; FUNCTION 0x00863dec, declared_size=104, range_size=104, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv7__ufillIPN3vox12PriorityBankES2_iEEvT_S4_RKT0_RKSt26random_access_iterator_tagPT1_
; demangled: void std::priv::__ufill<vox::PriorityBank*, vox::PriorityBank, int>(vox::PriorityBank*, vox::PriorityBank*, vox::PriorityBank const&, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00863dec  01 30 60 e0                                      rsb r3, r0, r1
00863df0  c3 31 a0 e1                                      asr r3, r3, #3
00863df4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00863df8  03 51 83 e0                                      add r5, r3, r3, lsl #2
00863dfc  02 60 a0 e1                                      mov r6, r2
00863e00  05 52 85 e0                                      add r5, r5, r5, lsl #4
00863e04  05 54 85 e0                                      add r5, r5, r5, lsl #8
00863e08  05 58 85 e0                                      add r5, r5, r5, lsl #16
00863e0c  85 50 83 e0                                      add r5, r3, r5, lsl #1
00863e10  00 00 55 e3                                      cmp r5, #0
00863e14  0d 00 00 da                                      ble #0x863e50
00863e18  00 40 a0 e1                                      mov r4, r0
00863e1c  0c 70 82 e2                                      add r7, r2, #0xc
00863e20  00 30 96 e5                                      ldr r3, [r6]
00863e24  0c 00 84 e2                                      add r0, r4, #0xc
00863e28  07 10 a0 e1                                      mov r1, r7
00863e2c  00 30 84 e5                                      str r3, [r4]
00863e30  04 30 96 e5                                      ldr r3, [r6, #4]
00863e34  04 30 84 e5                                      str r3, [r4, #4]
00863e38  08 30 96 e5                                      ldr r3, [r6, #8]
00863e3c  08 30 84 e5                                      str r3, [r4, #8]
00863e40  c4 ff ff eb                                      bl #0x863d58
00863e44  01 50 55 e2                                      subs r5, r5, #1
00863e48  18 40 84 e2                                      add r4, r4, #0x18
00863e4c  f3 ff ff 1a                                      bne #0x863e20
00863e50  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0088af98, declared_size=128, range_size=128, mode=arm
; class-group: void std::priv
; alias: _ZNSt4priv7__ufillIPN3vox10BankXMLDefES2_iEEvT_S4_RKT0_RKSt26random_access_iterator_tagPT1_
; demangled: void std::priv::__ufill<vox::BankXMLDef*, vox::BankXMLDef, int>(vox::BankXMLDef*, vox::BankXMLDef*, vox::BankXMLDef const&, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
0088af98  01 30 60 e0                                      rsb r3, r0, r1
0088af9c  c3 31 a0 e1                                      asr r3, r3, #3
0088afa0  70 40 2d e9                                      push {r4, r5, r6, lr}
0088afa4  83 60 83 e0                                      add r6, r3, r3, lsl #1
0088afa8  02 50 a0 e1                                      mov r5, r2
0088afac  06 62 86 e0                                      add r6, r6, r6, lsl #4
0088afb0  06 64 86 e0                                      add r6, r6, r6, lsl #8
0088afb4  06 68 86 e0                                      add r6, r6, r6, lsl #16
0088afb8  06 61 83 e0                                      add r6, r3, r6, lsl #2
0088afbc  00 00 56 e3                                      cmp r6, #0
0088afc0  13 00 00 da                                      ble #0x88b014
0088afc4  00 40 a0 e1                                      mov r4, r0
0088afc8  00 00 00 ea                                      b #0x88afd0
0088afcc  28 40 84 e2                                      add r4, r4, #0x28
0088afd0  00 20 95 e5                                      ldr r2, [r5]
0088afd4  10 30 84 e2                                      add r3, r4, #0x10
0088afd8  03 00 a0 e1                                      mov r0, r3
0088afdc  00 20 84 e5                                      str r2, [r4]
0088afe0  04 20 95 e5                                      ldr r2, [r5, #4]
0088afe4  04 20 84 e5                                      str r2, [r4, #4]
0088afe8  08 20 95 e5                                      ldr r2, [r5, #8]
0088afec  08 20 84 e5                                      str r2, [r4, #8]
0088aff0  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0088aff4  20 30 84 e5                                      str r3, [r4, #0x20]
0088aff8  24 30 84 e5                                      str r3, [r4, #0x24]
0088affc  0c 20 84 e5                                      str r2, [r4, #0xc]
0088b000  24 10 95 e5                                      ldr r1, [r5, #0x24]
0088b004  20 20 95 e5                                      ldr r2, [r5, #0x20]
0088b008  b8 90 ff eb                                      bl #0x86f2f0
0088b00c  01 60 56 e2                                      subs r6, r6, #1
0088b010  ed ff ff 1a                                      bne #0x88afcc
0088b014  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008bb52c, declared_size=1328, range_size=1328, mode=thumb
; class-group: void std::priv
; alias: _ZNSt4priv23__write_formatted_timeTIwNS_11_WTime_InfoEEEvRNS_16__basic_iostringIT_EERKSt5ctypeIS3_EccRKT0_PK2tm
; demangled: void std::priv::__write_formatted_timeT<wchar_t, std::priv::_WTime_Info>(std::priv::__basic_iostring<wchar_t>&, std::ctype<wchar_t> const&, char, char, std::priv::_WTime_Info const&, tm const*)
; decoder-mode: thumb
008bb52c  f0 b5                                            push {r4, r5, r6, r7, lr}
008bb52e  5f 46                                            mov r7, fp
008bb530  56 46                                            mov r6, sl
008bb532  4d 46                                            mov r5, sb
008bb534  44 46                                            mov r4, r8
008bb536  f0 b4                                            push {r4, r5, r6, r7}
008bb538  ce 4c                                            ldr r4, [pc, #0x338]
008bb53a  cf 4d                                            ldr r5, [pc, #0x33c]
008bb53c  9a 46                                            mov sl, r3
008bb53e  7c 44                                            add r4, pc
008bb540  63 59                                            ldr r3, [r4, r5]
008bb542  ab b0                                            sub sp, #0xac
008bb544  88 46                                            mov r8, r1
008bb546  1b 68                                            ldr r3, [r3]
008bb548  34 99                                            ldr r1, [sp, #0xd0]
008bb54a  81 46                                            mov sb, r0
008bb54c  29 93                                            str r3, [sp, #0xa4]
008bb54e  13 1c                                            adds r3, r2, #0
008bb550  25 3b                                            subs r3, #0x25
008bb552  1b 06                                            lsls r3, r3, #0x18
008bb554  1b 0e                                            lsrs r3, r3, #0x18
008bb556  17 1c                                            adds r7, r2, #0
008bb558  8b 46                                            mov fp, r1
008bb55a  35 9e                                            ldr r6, [sp, #0xd4]
008bb55c  54 2b                                            cmp r3, #0x54
008bb55e  1a d8                                            bhi #0x8bb596
008bb560  c6 4a                                            ldr r2, [pc, #0x318]
008bb562  9b 00                                            lsls r3, r3, #2
008bb564  7a 44                                            add r2, pc
008bb566  9b 58                                            ldr r3, [r3, r2]
008bb568  9a 18                                            adds r2, r3, r2
008bb56a  97 46                                            mov pc, r2
008bb56c  b3 69                                            ldr r3, [r6, #0x18]
008bb56e  00 2b                                            cmp r3, #0
008bb570  00 d0                                            beq #0x8bb574
008bb572  e2 e1                                            b #0x8bb93a
008bb574  f0 69                                            ldr r0, [r6, #0x1c]
008bb576  07 21                                            movs r1, #7
008bb578  01 30                                            adds r0, #1
008bb57a  52 f6 94 e6                                      blx #0x30e2a4
008bb57e  02 1c                                            adds r2, r0, #0
008bb580  07 ae                                            add r6, sp, #0x1c
008bb582  00 21                                            movs r1, #0
008bb584  30 1c                                            adds r0, r6, #0
008bb586  fe f7 bf fa                                      bl #0x8b9b08
008bb58a  31 1c                                            adds r1, r6, #0
008bb58c  02 1c                                            adds r2, r0, #0
008bb58e  43 46                                            mov r3, r8
008bb590  48 46                                            mov r0, sb
008bb592  ff f7 a5 ff                                      bl #0x8bb4e0
008bb596  63 59                                            ldr r3, [r4, r5]
008bb598  29 9a                                            ldr r2, [sp, #0xa4]
008bb59a  1b 68                                            ldr r3, [r3]
008bb59c  9a 42                                            cmp r2, r3
008bb59e  00 d0                                            beq #0x8bb5a2
008bb5a0  44 e2                                            b #0x8bba2c
008bb5a2  2b b0                                            add sp, #0xac
008bb5a4  3c bc                                            pop {r2, r3, r4, r5}
008bb5a6  90 46                                            mov r8, r2
008bb5a8  99 46                                            mov sb, r3
008bb5aa  a2 46                                            mov sl, r4
008bb5ac  ab 46                                            mov fp, r5
008bb5ae  f0 bd                                            pop {r4, r5, r6, r7, pc}
008bb5b0  33 69                                            ldr r3, [r6, #0x10]
008bb5b2  8d 22                                            movs r2, #0x8d
008bb5b4  d2 00                                            lsls r2, r2, #3
008bb5b6  d9 00                                            lsls r1, r3, #3
008bb5b8  c9 18                                            adds r1, r1, r3
008bb5ba  c9 00                                            lsls r1, r1, #3
008bb5bc  89 18                                            adds r1, r1, r2
008bb5be  59 44                                            add r1, fp
008bb5c0  ff f7 a6 ff                                      bl #0x8bb510
008bb5c4  e7 e7                                            b #0x8bb596
008bb5c6  42 46                                            mov r2, r8
008bb5c8  13 68                                            ldr r3, [r2]
008bb5ca  09 21                                            movs r1, #9
008bb5cc  40 46                                            mov r0, r8
008bb5ce  9b 6a                                            ldr r3, [r3, #0x28]
008bb5d0  98 47                                            blx r3
008bb5d2  01 1c                                            adds r1, r0, #0
008bb5d4  48 46                                            mov r0, sb
008bb5d6  ff f7 f7 fe                                      bl #0x8bb3c8
008bb5da  b0 69                                            ldr r0, [r6, #0x18]
008bb5dc  07 21                                            movs r1, #7
008bb5de  07 af                                            add r7, sp, #0x1c
008bb5e0  06 30                                            adds r0, #6
008bb5e2  53 f6 90 e1                                      blx #0x30e904
008bb5e6  38 1c                                            adds r0, r7, #0
008bb5e8  4a 1c                                            adds r2, r1, #1
008bb5ea  00 21                                            movs r1, #0
008bb5ec  fe f7 8c fa                                      bl #0x8b9b08
008bb5f0  02 1c                                            adds r2, r0, #0
008bb5f2  48 46                                            mov r0, sb
008bb5f4  39 1c                                            adds r1, r7, #0
008bb5f6  43 46                                            mov r3, r8
008bb5f8  ff f7 72 ff                                      bl #0x8bb4e0
008bb5fc  cb e7                                            b #0x8bb596
008bb5fe  f2 69                                            ldr r2, [r6, #0x1c]
008bb600  07 af                                            add r7, sp, #0x1c
008bb602  01 32                                            adds r2, #1
008bb604  38 1c                                            adds r0, r7, #0
008bb606  00 21                                            movs r1, #0
008bb608  fe f7 7e fa                                      bl #0x8b9b08
008bb60c  02 1c                                            adds r2, r0, #0
008bb60e  f0 e7                                            b #0x8bb5f2
008bb610  0a 1c                                            adds r2, r1, #0
008bb612  51 46                                            mov r1, sl
008bb614  60 32                                            adds r2, #0x60
008bb616  23 29                                            cmp r1, #0x23
008bb618  00 d0                                            beq #0x8bb61c
008bb61a  30 3a                                            subs r2, #0x30
008bb61c  48 46                                            mov r0, sb
008bb61e  41 46                                            mov r1, r8
008bb620  5b 46                                            mov r3, fp
008bb622  00 96                                            str r6, [sp]
008bb624  00 f0 24 fa                                      bl #0x8bba70
008bb628  b5 e7                                            b #0x8bb596
008bb62a  95 49                                            ldr r1, [pc, #0x254]
008bb62c  70 69                                            ldr r0, [r6, #0x14]
008bb62e  07 af                                            add r7, sp, #0x1c
008bb630  40 18                                            adds r0, r0, r1
008bb632  64 21                                            movs r1, #0x64
008bb634  53 f6 66 e1                                      blx #0x30e904
008bb638  0a 1c                                            adds r2, r1, #0
008bb63a  e3 e7                                            b #0x8bb604
008bb63c  b3 69                                            ldr r3, [r6, #0x18]
008bb63e  d9 00                                            lsls r1, r3, #3
008bb640  c9 18                                            adds r1, r1, r3
008bb642  c9 00                                            lsls r1, r1, #3
008bb644  78 31                                            adds r1, #0x78
008bb646  59 44                                            add r1, fp
008bb648  48 46                                            mov r0, sb
008bb64a  ff f7 61 ff                                      bl #0x8bb510
008bb64e  a2 e7                                            b #0x8bb596
008bb650  72 69                                            ldr r2, [r6, #0x14]
008bb652  8b 4b                                            ldr r3, [pc, #0x22c]
008bb654  07 af                                            add r7, sp, #0x1c
008bb656  d2 18                                            adds r2, r2, r3
008bb658  d4 e7                                            b #0x8bb604
008bb65a  41 46                                            mov r1, r8
008bb65c  5a 46                                            mov r2, fp
008bb65e  5b 46                                            mov r3, fp
008bb660  00 96                                            str r6, [sp]
008bb662  00 f0 05 fa                                      bl #0x8bba70
008bb666  96 e7                                            b #0x8bb596
008bb668  f0 69                                            ldr r0, [r6, #0x1c]
008bb66a  b3 69                                            ldr r3, [r6, #0x18]
008bb66c  07 21                                            movs r1, #7
008bb66e  07 30                                            adds r0, #7
008bb670  c0 1a                                            subs r0, r0, r3
008bb672  52 f6 18 e6                                      blx #0x30e2a4
008bb676  07 af                                            add r7, sp, #0x1c
008bb678  02 1c                                            adds r2, r0, #0
008bb67a  c3 e7                                            b #0x8bb604
008bb67c  52 46                                            mov r2, sl
008bb67e  23 2a                                            cmp r2, #0x23
008bb680  00 d1                                            bne #0x8bb684
008bb682  a3 e1                                            b #0x8bb9cc
008bb684  7f 49                                            ldr r1, [pc, #0x1fc]
008bb686  07 af                                            add r7, sp, #0x1c
008bb688  72 68                                            ldr r2, [r6, #4]
008bb68a  79 44                                            add r1, pc
008bb68c  38 1c                                            adds r0, r7, #0
008bb68e  53 f6 2a e2                                      blx #0x30eae4
008bb692  6a 46                                            mov r2, sp
008bb694  1e 32                                            adds r2, #0x1e
008bb696  ac e7                                            b #0x8bb5f2
008bb698  52 46                                            mov r2, sl
008bb69a  23 2a                                            cmp r2, #0x23
008bb69c  00 d1                                            bne #0x8bb6a0
008bb69e  7f e1                                            b #0x8bb9a0
008bb6a0  79 49                                            ldr r1, [pc, #0x1e4]
008bb6a2  8b 46                                            mov fp, r1
008bb6a4  fb 44                                            add fp, pc
008bb6a6  b0 68                                            ldr r0, [r6, #8]
008bb6a8  0c 21                                            movs r1, #0xc
008bb6aa  53 f6 2c e1                                      blx #0x30e904
008bb6ae  0a 1e                                            subs r2, r1, #0
008bb6b0  00 d1                                            bne #0x8bb6b4
008bb6b2  0c 22                                            movs r2, #0xc
008bb6b4  07 af                                            add r7, sp, #0x1c
008bb6b6  59 46                                            mov r1, fp
008bb6b8  38 1c                                            adds r0, r7, #0
008bb6ba  53 f6 14 e2                                      blx #0x30eae4
008bb6be  b0 68                                            ldr r0, [r6, #8]
008bb6c0  0c 21                                            movs r1, #0xc
008bb6c2  53 f6 20 e1                                      blx #0x30e904
008bb6c6  09 29                                            cmp r1, #9
008bb6c8  e3 dc                                            bgt #0x8bb692
008bb6ca  00 29                                            cmp r1, #0
008bb6cc  e1 d0                                            beq #0x8bb692
008bb6ce  6a 46                                            mov r2, sp
008bb6d0  53 46                                            mov r3, sl
008bb6d2  1d 32                                            adds r2, #0x1d
008bb6d4  23 2b                                            cmp r3, #0x23
008bb6d6  dc d1                                            bne #0x8bb692
008bb6d8  8b e7                                            b #0x8bb5f2
008bb6da  53 46                                            mov r3, sl
008bb6dc  23 2b                                            cmp r3, #0x23
008bb6de  00 d1                                            bne #0x8bb6e2
008bb6e0  62 e1                                            b #0x8bb9a8
008bb6e2  6a 49                                            ldr r1, [pc, #0x1a8]
008bb6e4  07 af                                            add r7, sp, #0x1c
008bb6e6  32 68                                            ldr r2, [r6]
008bb6e8  79 44                                            add r1, pc
008bb6ea  38 1c                                            adds r0, r7, #0
008bb6ec  53 f6 fa e1                                      blx #0x30eae4
008bb6f0  cf e7                                            b #0x8bb692
008bb6f2  67 49                                            ldr r1, [pc, #0x19c]
008bb6f4  23 af                                            add r7, sp, #0x8c
008bb6f6  38 1c                                            adds r0, r7, #0
008bb6f8  79 44                                            add r1, pc
008bb6fa  06 aa                                            add r2, sp, #0x18
008bb6fc  58 f6 f6 e4                                      blx #0x3140ec
008bb700  48 46                                            mov r0, sb
008bb702  41 46                                            mov r1, r8
008bb704  3a 1c                                            adds r2, r7, #0
008bb706  5b 46                                            mov r3, fp
008bb708  00 96                                            str r6, [sp]
008bb70a  00 f0 b1 f9                                      bl #0x8bba70
008bb70e  38 1c                                            adds r0, r7, #0
008bb710  5c f6 a0 e5                                      blx #0x318254
008bb714  3f e7                                            b #0x8bb596
008bb716  52 46                                            mov r2, sl
008bb718  23 2a                                            cmp r2, #0x23
008bb71a  00 d1                                            bne #0x8bb71e
008bb71c  4d e1                                            b #0x8bb9ba
008bb71e  5d 49                                            ldr r1, [pc, #0x174]
008bb720  07 af                                            add r7, sp, #0x1c
008bb722  b2 68                                            ldr r2, [r6, #8]
008bb724  79 44                                            add r1, pc
008bb726  38 1c                                            adds r0, r7, #0
008bb728  53 f6 dc e1                                      blx #0x30eae4
008bb72c  b1 e7                                            b #0x8bb692
008bb72e  73 69                                            ldr r3, [r6, #0x14]
008bb730  53 49                                            ldr r1, [pc, #0x14c]
008bb732  03 93                                            str r3, [sp, #0xc]
008bb734  f2 69                                            ldr r2, [r6, #0x1c]
008bb736  b6 69                                            ldr r6, [r6, #0x18]
008bb738  9a 46                                            mov sl, r3
008bb73a  10 1c                                            adds r0, r2, #0
008bb73c  7f 30                                            adds r0, #0x7f
008bb73e  13 1c                                            adds r3, r2, #0
008bb740  ff 30                                            adds r0, #0xff
008bb742  03 33                                            adds r3, #3
008bb744  8a 44                                            add sl, r1
008bb746  80 1b                                            subs r0, r0, r6
008bb748  07 21                                            movs r1, #7
008bb74a  93 46                                            mov fp, r2
008bb74c  02 93                                            str r3, [sp, #8]
008bb74e  53 f6 da e0                                      blx #0x30e904
008bb752  02 9a                                            ldr r2, [sp, #8]
008bb754  52 1a                                            subs r2, r2, r1
008bb756  02 92                                            str r2, [sp, #8]
008bb758  00 d5                                            bpl #0x8bb75c
008bb75a  40 e1                                            b #0x8bb9de
008bb75c  51 46                                            mov r1, sl
008bb75e  00 23                                            movs r3, #0
008bb760  89 07                                            lsls r1, r1, #0x1e
008bb762  0d d1                                            bne #0x8bb780
008bb764  50 46                                            mov r0, sl
008bb766  64 21                                            movs r1, #0x64
008bb768  53 f6 cc e0                                      blx #0x30e904
008bb76c  01 23                                            movs r3, #1
008bb76e  00 29                                            cmp r1, #0
008bb770  06 d1                                            bne #0x8bb780
008bb772  c8 21                                            movs r1, #0xc8
008bb774  50 46                                            mov r0, sl
008bb776  49 00                                            lsls r1, r1, #1
008bb778  53 f6 c4 e0                                      blx #0x30e904
008bb77c  4b 42                                            rsbs r3, r1, #0
008bb77e  4b 41                                            adcs r3, r1
008bb780  5a 46                                            mov r2, fp
008bb782  6e 3a                                            subs r2, #0x6e
008bb784  ff 3a                                            subs r2, #0xff
008bb786  d3 1a                                            subs r3, r2, r3
008bb788  bf 21                                            movs r1, #0xbf
008bb78a  da 1c                                            adds r2, r3, #3
008bb78c  49 00                                            lsls r1, r1, #1
008bb78e  9b 1b                                            subs r3, r3, r6
008bb790  58 18                                            adds r0, r3, r1
008bb792  07 21                                            movs r1, #7
008bb794  93 46                                            mov fp, r2
008bb796  53 f6 b6 e0                                      blx #0x30e904
008bb79a  5a 46                                            mov r2, fp
008bb79c  51 1a                                            subs r1, r2, r1
008bb79e  02 d4                                            bmi #0x8bb7a6
008bb7a0  01 23                                            movs r3, #1
008bb7a2  9a 44                                            add sl, r3
008bb7a4  02 91                                            str r1, [sp, #8]
008bb7a6  52 46                                            mov r2, sl
008bb7a8  47 2f                                            cmp r7, #0x47
008bb7aa  00 d1                                            bne #0x8bb7ae
008bb7ac  e8 e6                                            b #0x8bb580
008bb7ae  67 2f                                            cmp r7, #0x67
008bb7b0  00 d1                                            bne #0x8bb7b4
008bb7b2  ca e0                                            b #0x8bb94a
008bb7b4  02 98                                            ldr r0, [sp, #8]
008bb7b6  07 21                                            movs r1, #7
008bb7b8  52 f6 74 e5                                      blx #0x30e2a4
008bb7bc  42 1c                                            adds r2, r0, #1
008bb7be  df e6                                            b #0x8bb580
008bb7c0  35 49                                            ldr r1, [pc, #0xd4]
008bb7c2  17 af                                            add r7, sp, #0x5c
008bb7c4  38 1c                                            adds r0, r7, #0
008bb7c6  79 44                                            add r1, pc
008bb7c8  04 aa                                            add r2, sp, #0x10
008bb7ca  97 e7                                            b #0x8bb6fc
008bb7cc  0a 1c                                            adds r2, r1, #0
008bb7ce  18 32                                            adds r2, #0x18
008bb7d0  24 e7                                            b #0x8bb61c
008bb7d2  41 46                                            mov r1, r8
008bb7d4  0b 68                                            ldr r3, [r1]
008bb7d6  40 46                                            mov r0, r8
008bb7d8  25 21                                            movs r1, #0x25
008bb7da  9b 6a                                            ldr r3, [r3, #0x28]
008bb7dc  98 47                                            blx r3
008bb7de  01 1c                                            adds r1, r0, #0
008bb7e0  48 46                                            mov r0, sb
008bb7e2  ff f7 f1 fd                                      bl #0x8bb3c8
008bb7e6  d6 e6                                            b #0x8bb596
008bb7e8  30 1c                                            adds r0, r6, #0
008bb7ea  53 f6 6e e0                                      blx #0x30e8c8
008bb7ee  02 1c                                            adds r2, r0, #0
008bb7f0  c6 e6                                            b #0x8bb580
008bb7f2  2a 49                                            ldr r1, [pc, #0xa8]
008bb7f4  1d af                                            add r7, sp, #0x74
008bb7f6  38 1c                                            adds r0, r7, #0
008bb7f8  79 44                                            add r1, pc
008bb7fa  05 aa                                            add r2, sp, #0x14
008bb7fc  7e e7                                            b #0x8bb6fc
008bb7fe  b0 68                                            ldr r0, [r6, #8]
008bb800  0c 21                                            movs r1, #0xc
008bb802  52 f6 50 e5                                      blx #0x30e2a4
008bb806  26 4a                                            ldr r2, [pc, #0x98]
008bb808  c1 00                                            lsls r1, r0, #3
008bb80a  09 18                                            adds r1, r1, r0
008bb80c  c9 00                                            lsls r1, r1, #3
008bb80e  89 18                                            adds r1, r1, r2
008bb810  59 44                                            add r1, fp
008bb812  48 46                                            mov r0, sb
008bb814  ff f7 7c fe                                      bl #0x8bb510
008bb818  bd e6                                            b #0x8bb596
008bb81a  41 46                                            mov r1, r8
008bb81c  0b 68                                            ldr r3, [r1]
008bb81e  40 46                                            mov r0, r8
008bb820  0a 21                                            movs r1, #0xa
008bb822  9b 6a                                            ldr r3, [r3, #0x28]
008bb824  98 47                                            blx r3
008bb826  01 1c                                            adds r1, r0, #0
008bb828  48 46                                            mov r0, sb
008bb82a  ff f7 cd fd                                      bl #0x8bb3c8
008bb82e  b2 e6                                            b #0x8bb596
008bb830  51 46                                            mov r1, sl
008bb832  23 29                                            cmp r1, #0x23
008bb834  00 d1                                            bne #0x8bb838
008bb836  93 e0                                            b #0x8bb960
008bb838  32 69                                            ldr r2, [r6, #0x10]
008bb83a  1a 49                                            ldr r1, [pc, #0x68]
008bb83c  07 af                                            add r7, sp, #0x1c
008bb83e  01 32                                            adds r2, #1
008bb840  79 44                                            add r1, pc
008bb842  38 1c                                            adds r0, r7, #0
008bb844  53 f6 4e e1                                      blx #0x30eae4
008bb848  23 e7                                            b #0x8bb692
008bb84a  07 ab                                            add r3, sp, #0x1c
008bb84c  b0 68                                            ldr r0, [r6, #8]
008bb84e  0c 21                                            movs r1, #0xc
008bb850  9a 46                                            mov sl, r3
008bb852  53 f6 58 e0                                      blx #0x30e904
008bb856  14 4f                                            ldr r7, [pc, #0x50]
008bb858  0a 1c                                            adds r2, r1, #0
008bb85a  50 46                                            mov r0, sl
008bb85c  7f 44                                            add r7, pc
008bb85e  39 1c                                            adds r1, r7, #0
008bb860  53 f6 40 e1                                      blx #0x30eae4
008bb864  6a 46                                            mov r2, sp
008bb866  48 46                                            mov r0, sb
008bb868  51 46                                            mov r1, sl
008bb86a  1e 32                                            adds r2, #0x1e
008bb86c  43 46                                            mov r3, r8
008bb86e  ff f7 37 fe                                      bl #0x8bb4e0
008bb872  90 e6                                            b #0x8bb596
; mapping-symbol data/literal pool
008bb874  56 95 0d 00 ac 40 00 00 dc ac 05 00 6c 07 00 00  .byte 0x56, 0x95, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00, 0xdc, 0xac, 0x05, 0x00, 0x6c, 0x07, 0x00, 0x00
008bb884  7e bd 05 00 64 bd 05 00 20 bd 05 00 18 bd 05 00  .byte 0x7e, 0xbd, 0x05, 0x00, 0x64, 0xbd, 0x05, 0x00, 0x20, 0xbd, 0x05, 0x00, 0x18, 0xbd, 0x05, 0x00
008bb894  e4 bc 05 00 5e a5 05 00 20 bc 05 00 28 0b 00 00  .byte 0xe4, 0xbc, 0x05, 0x00, 0x5e, 0xa5, 0x05, 0x00, 0x20, 0xbc, 0x05, 0x00, 0x28, 0x0b, 0x00, 0x00
008bb8a4  c8 bb 05 00 a4 bb 05 00                          .byte 0xc8, 0xbb, 0x05, 0x00, 0xa4, 0xbb, 0x05, 0x00
; decoder-mode: thumb
008bb8ac  60 49                                            ldr r1, [pc, #0x180]
008bb8ae  b2 68                                            ldr r2, [r6, #8]
008bb8b0  07 af                                            add r7, sp, #0x1c
008bb8b2  79 44                                            add r1, pc
008bb8b4  38 1c                                            adds r0, r7, #0
008bb8b6  53 f6 16 e1                                      blx #0x30eae4
008bb8ba  6a 46                                            mov r2, sp
008bb8bc  48 46                                            mov r0, sb
008bb8be  39 1c                                            adds r1, r7, #0
008bb8c0  1e 32                                            adds r2, #0x1e
008bb8c2  43 46                                            mov r3, r8
008bb8c4  ff f7 0c fe                                      bl #0x8bb4e0
008bb8c8  65 e6                                            b #0x8bb596
008bb8ca  0a 1c                                            adds r2, r1, #0
008bb8cc  53 46                                            mov r3, sl
008bb8ce  48 32                                            adds r2, #0x48
008bb8d0  23 2b                                            cmp r3, #0x23
008bb8d2  00 d0                                            beq #0x8bb8d6
008bb8d4  a1 e6                                            b #0x8bb61a
008bb8d6  a1 e6                                            b #0x8bb61c
008bb8d8  07 af                                            add r7, sp, #0x1c
008bb8da  b2 69                                            ldr r2, [r6, #0x18]
008bb8dc  38 1c                                            adds r0, r7, #0
008bb8de  00 21                                            movs r1, #0
008bb8e0  fe f7 12 f9                                      bl #0x8b9b08
008bb8e4  39 1c                                            adds r1, r7, #0
008bb8e6  02 1c                                            adds r2, r0, #0
008bb8e8  43 46                                            mov r3, r8
008bb8ea  48 46                                            mov r0, sb
008bb8ec  ff f7 f8 fd                                      bl #0x8bb4e0
008bb8f0  51 e6                                            b #0x8bb596
008bb8f2  33 69                                            ldr r3, [r6, #0x10]
008bb8f4  0c 33                                            adds r3, #0xc
008bb8f6  d9 00                                            lsls r1, r3, #3
008bb8f8  c9 18                                            adds r1, r1, r3
008bb8fa  8d 23                                            movs r3, #0x8d
008bb8fc  db 00                                            lsls r3, r3, #3
008bb8fe  c9 00                                            lsls r1, r1, #3
008bb900  c9 18                                            adds r1, r1, r3
008bb902  59 44                                            add r1, fp
008bb904  ff f7 04 fe                                      bl #0x8bb510
008bb908  45 e6                                            b #0x8bb596
008bb90a  b3 69                                            ldr r3, [r6, #0x18]
008bb90c  07 33                                            adds r3, #7
008bb90e  96 e6                                            b #0x8bb63e
008bb910  48 49                                            ldr r1, [pc, #0x120]
008bb912  07 af                                            add r7, sp, #0x1c
008bb914  f2 68                                            ldr r2, [r6, #0xc]
008bb916  79 44                                            add r1, pc
008bb918  cc e7                                            b #0x8bb8b4
008bb91a  52 46                                            mov r2, sl
008bb91c  23 2a                                            cmp r2, #0x23
008bb91e  33 d0                                            beq #0x8bb988
008bb920  45 49                                            ldr r1, [pc, #0x114]
008bb922  07 af                                            add r7, sp, #0x1c
008bb924  f2 68                                            ldr r2, [r6, #0xc]
008bb926  79 44                                            add r1, pc
008bb928  38 1c                                            adds r0, r7, #0
008bb92a  53 f6 dc e0                                      blx #0x30eae4
008bb92e  b0 e6                                            b #0x8bb692
008bb930  42 49                                            ldr r1, [pc, #0x108]
008bb932  07 af                                            add r7, sp, #0x1c
008bb934  f2 68                                            ldr r2, [r6, #0xc]
008bb936  79 44                                            add r1, pc
008bb938  bc e7                                            b #0x8bb8b4
008bb93a  f0 69                                            ldr r0, [r6, #0x1c]
008bb93c  07 21                                            movs r1, #7
008bb93e  08 30                                            adds r0, #8
008bb940  c0 1a                                            subs r0, r0, r3
008bb942  52 f6 b0 e4                                      blx #0x30e2a4
008bb946  02 1c                                            adds r2, r0, #0
008bb948  1a e6                                            b #0x8bb580
008bb94a  50 46                                            mov r0, sl
008bb94c  64 21                                            movs r1, #0x64
008bb94e  52 f6 da e7                                      blx #0x30e904
008bb952  08 1c                                            adds r0, r1, #0
008bb954  64 30                                            adds r0, #0x64
008bb956  64 21                                            movs r1, #0x64
008bb958  52 f6 d4 e7                                      blx #0x30e904
008bb95c  0a 1c                                            adds r2, r1, #0
008bb95e  0f e6                                            b #0x8bb580
008bb960  32 69                                            ldr r2, [r6, #0x10]
008bb962  37 49                                            ldr r1, [pc, #0xdc]
008bb964  07 af                                            add r7, sp, #0x1c
008bb966  01 32                                            adds r2, #1
008bb968  79 44                                            add r1, pc
008bb96a  38 1c                                            adds r0, r7, #0
008bb96c  53 f6 ba e0                                      blx #0x30eae4
008bb970  33 69                                            ldr r3, [r6, #0x10]
008bb972  00 21                                            movs r1, #0
008bb974  08 22                                            movs r2, #8
008bb976  d8 0f                                            lsrs r0, r3, #0x1f
008bb978  9a 42                                            cmp r2, r3
008bb97a  48 41                                            adcs r0, r1
008bb97c  6a 46                                            mov r2, sp
008bb97e  1d 32                                            adds r2, #0x1d
008bb980  c1 07                                            lsls r1, r0, #0x1f
008bb982  00 d5                                            bpl #0x8bb986
008bb984  35 e6                                            b #0x8bb5f2
008bb986  84 e6                                            b #0x8bb692
008bb988  2e 49                                            ldr r1, [pc, #0xb8]
008bb98a  07 af                                            add r7, sp, #0x1c
008bb98c  f2 68                                            ldr r2, [r6, #0xc]
008bb98e  79 44                                            add r1, pc
008bb990  38 1c                                            adds r0, r7, #0
008bb992  53 f6 a8 e0                                      blx #0x30eae4
008bb996  f3 68                                            ldr r3, [r6, #0xc]
008bb998  d8 0f                                            lsrs r0, r3, #0x1f
008bb99a  00 21                                            movs r1, #0
008bb99c  09 22                                            movs r2, #9
008bb99e  eb e7                                            b #0x8bb978
008bb9a0  29 4b                                            ldr r3, [pc, #0xa4]
008bb9a2  9b 46                                            mov fp, r3
008bb9a4  fb 44                                            add fp, pc
008bb9a6  7e e6                                            b #0x8bb6a6
008bb9a8  28 49                                            ldr r1, [pc, #0xa0]
008bb9aa  07 af                                            add r7, sp, #0x1c
008bb9ac  32 68                                            ldr r2, [r6]
008bb9ae  79 44                                            add r1, pc
008bb9b0  38 1c                                            adds r0, r7, #0
008bb9b2  53 f6 98 e0                                      blx #0x30eae4
008bb9b6  33 68                                            ldr r3, [r6]
008bb9b8  ee e7                                            b #0x8bb998
008bb9ba  25 49                                            ldr r1, [pc, #0x94]
008bb9bc  07 af                                            add r7, sp, #0x1c
008bb9be  b2 68                                            ldr r2, [r6, #8]
008bb9c0  79 44                                            add r1, pc
008bb9c2  38 1c                                            adds r0, r7, #0
008bb9c4  53 f6 8e e0                                      blx #0x30eae4
008bb9c8  b3 68                                            ldr r3, [r6, #8]
008bb9ca  e5 e7                                            b #0x8bb998
008bb9cc  21 49                                            ldr r1, [pc, #0x84]
008bb9ce  07 af                                            add r7, sp, #0x1c
008bb9d0  72 68                                            ldr r2, [r6, #4]
008bb9d2  79 44                                            add r1, pc
008bb9d4  38 1c                                            adds r0, r7, #0
008bb9d6  53 f6 86 e0                                      blx #0x30eae4
008bb9da  73 68                                            ldr r3, [r6, #4]
008bb9dc  dc e7                                            b #0x8bb998
008bb9de  03 9b                                            ldr r3, [sp, #0xc]
008bb9e0  9a 46                                            mov sl, r3
008bb9e2  1d 4b                                            ldr r3, [pc, #0x74]
008bb9e4  9a 44                                            add sl, r3
008bb9e6  51 46                                            mov r1, sl
008bb9e8  00 23                                            movs r3, #0
008bb9ea  89 07                                            lsls r1, r1, #0x1e
008bb9ec  0d d1                                            bne #0x8bba0a
008bb9ee  50 46                                            mov r0, sl
008bb9f0  64 21                                            movs r1, #0x64
008bb9f2  52 f6 88 e7                                      blx #0x30e904
008bb9f6  01 23                                            movs r3, #1
008bb9f8  00 29                                            cmp r1, #0
008bb9fa  06 d1                                            bne #0x8bba0a
008bb9fc  c8 21                                            movs r1, #0xc8
008bb9fe  50 46                                            mov r0, sl
008bba00  49 00                                            lsls r1, r1, #1
008bba02  52 f6 80 e7                                      blx #0x30e904
008bba06  4b 42                                            rsbs r3, r1, #0
008bba08  4b 41                                            adcs r3, r1
008bba0a  5a 46                                            mov r2, fp
008bba0c  6e 32                                            adds r2, #0x6e
008bba0e  ff 32                                            adds r2, #0xff
008bba10  d3 18                                            adds r3, r2, r3
008bba12  bf 21                                            movs r1, #0xbf
008bba14  da 1c                                            adds r2, r3, #3
008bba16  49 00                                            lsls r1, r1, #1
008bba18  9b 1b                                            subs r3, r3, r6
008bba1a  58 18                                            adds r0, r3, r1
008bba1c  07 21                                            movs r1, #7
008bba1e  93 46                                            mov fp, r2
008bba20  52 f6 70 e7                                      blx #0x30e904
008bba24  5a 46                                            mov r2, fp
008bba26  52 1a                                            subs r2, r2, r1
008bba28  02 92                                            str r2, [sp, #8]
008bba2a  bc e6                                            b #0x8bb7a6
008bba2c  52 f6 70 e4                                      blx #0x30e310
; mapping-symbol data/literal pool
008bba30  4e bb 05 00 ea ba 05 00 e2 ba 05 00 ca ba 05 00  .byte 0x4e, 0xbb, 0x05, 0x00, 0xea, 0xba, 0x05, 0x00, 0xe2, 0xba, 0x05, 0x00, 0xca, 0xba, 0x05, 0x00
008bba40  94 ba 05 00 6e ba 05 00 58 ba 05 00 4e ba 05 00  .byte 0x94, 0xba, 0x05, 0x00, 0x6e, 0xba, 0x05, 0x00, 0x58, 0xba, 0x05, 0x00, 0x4e, 0xba, 0x05, 0x00
008bba50  3c ba 05 00 2a ba 05 00 6b 07 00 00              .byte 0x3c, 0xba, 0x05, 0x00, 0x2a, 0xba, 0x05, 0x00, 0x6b, 0x07, 0x00, 0x00

; FUNCTION 0x008bba70, declared_size=94, range_size=94, mode=thumb
; class-group: void std::priv
; alias: _ZNSt4priv11__subformatIwNS_11_WTime_InfoEEEvRNS_16__basic_iostringIT_EERKSt5ctypeIS3_ERKSsRKT0_PK2tm
; demangled: void std::priv::__subformat<wchar_t, std::priv::_WTime_Info>(std::priv::__basic_iostring<wchar_t>&, std::ctype<wchar_t> const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::priv::_WTime_Info const&, tm const*)
; decoder-mode: thumb
008bba70  f0 b5                                            push {r4, r5, r6, r7, lr}
008bba72  4f 46                                            mov r7, sb
008bba74  46 46                                            mov r6, r8
008bba76  c0 b4                                            push {r6, r7}
008bba78  83 b0                                            sub sp, #0xc
008bba7a  0f 1c                                            adds r7, r1, #0
008bba7c  0a 99                                            ldr r1, [sp, #0x28]
008bba7e  54 69                                            ldr r4, [r2, #0x14]
008bba80  15 69                                            ldr r5, [r2, #0x10]
008bba82  06 1c                                            adds r6, r0, #0
008bba84  98 46                                            mov r8, r3
008bba86  89 46                                            mov sb, r1
008bba88  a5 42                                            cmp r5, r4
008bba8a  12 d0                                            beq #0x8bbab2
008bba8c  21 78                                            ldrb r1, [r4]
008bba8e  25 29                                            cmp r1, #0x25
008bba90  14 d1                                            bne #0x8bbabc
008bba92  62 78                                            ldrb r2, [r4, #1]
008bba94  61 1c                                            adds r1, r4, #1
008bba96  00 23                                            movs r3, #0
008bba98  23 2a                                            cmp r2, #0x23
008bba9a  14 d0                                            beq #0x8bbac6
008bba9c  4c 1c                                            adds r4, r1, #1
008bba9e  41 46                                            mov r1, r8
008bbaa0  00 91                                            str r1, [sp]
008bbaa2  49 46                                            mov r1, sb
008bbaa4  01 91                                            str r1, [sp, #4]
008bbaa6  30 1c                                            adds r0, r6, #0
008bbaa8  39 1c                                            adds r1, r7, #0
008bbaaa  ff f7 3f fd                                      bl #0x8bb52c
008bbaae  a5 42                                            cmp r5, r4
008bbab0  ec d1                                            bne #0x8bba8c
008bbab2  03 b0                                            add sp, #0xc
008bbab4  0c bc                                            pop {r2, r3}
008bbab6  90 46                                            mov r8, r2
008bbab8  99 46                                            mov sb, r3
008bbaba  f0 bd                                            pop {r4, r5, r6, r7, pc}
008bbabc  30 1c                                            adds r0, r6, #0
008bbabe  01 34                                            adds r4, #1
008bbac0  ff f7 82 fc                                      bl #0x8bb3c8
008bbac4  e0 e7                                            b #0x8bba88
008bbac6  01 31                                            adds r1, #1
008bbac8  0a 78                                            ldrb r2, [r1]
008bbaca  23 23                                            movs r3, #0x23
008bbacc  e6 e7                                            b #0x8bba9c

; FUNCTION 0x008bbcc4, declared_size=1612, range_size=1612, mode=thumb
; class-group: void std::priv
; alias: _ZNSt4priv23__write_formatted_timeTIcNS_10_Time_InfoEEEvRNS_16__basic_iostringIT_EERKSt5ctypeIS3_EccRKT0_PK2tm
; demangled: void std::priv::__write_formatted_timeT<char, std::priv::_Time_Info>(std::priv::__basic_iostring<char>&, std::ctype<char> const&, char, char, std::priv::_Time_Info const&, tm const*)
; decoder-mode: thumb
008bbcc4  f0 b5                                            push {r4, r5, r6, r7, lr}
008bbcc6  5f 46                                            mov r7, fp
008bbcc8  56 46                                            mov r6, sl
008bbcca  4d 46                                            mov r5, sb
008bbccc  44 46                                            mov r4, r8
008bbcce  f0 b4                                            push {r4, r5, r6, r7}
008bbcd0  d7 4c                                            ldr r4, [pc, #0x35c]
008bbcd2  d8 4d                                            ldr r5, [pc, #0x360]
008bbcd4  9a 46                                            mov sl, r3
008bbcd6  7c 44                                            add r4, pc
008bbcd8  63 59                                            ldr r3, [r4, r5]
008bbcda  bf b0                                            sub sp, #0xfc
008bbcdc  88 46                                            mov r8, r1
008bbcde  1b 68                                            ldr r3, [r3]
008bbce0  48 99                                            ldr r1, [sp, #0x120]
008bbce2  81 46                                            mov sb, r0
008bbce4  3d 93                                            str r3, [sp, #0xf4]
008bbce6  13 1c                                            adds r3, r2, #0
008bbce8  25 3b                                            subs r3, #0x25
008bbcea  1b 06                                            lsls r3, r3, #0x18
008bbcec  1b 0e                                            lsrs r3, r3, #0x18
008bbcee  17 1c                                            adds r7, r2, #0
008bbcf0  8b 46                                            mov fp, r1
008bbcf2  49 9e                                            ldr r6, [sp, #0x124]
008bbcf4  54 2b                                            cmp r3, #0x54
008bbcf6  57 d8                                            bhi #0x8bbda8
008bbcf8  cf 4a                                            ldr r2, [pc, #0x33c]
008bbcfa  9b 00                                            lsls r3, r3, #2
008bbcfc  7a 44                                            add r2, pc
008bbcfe  9b 58                                            ldr r3, [r3, r2]
008bbd00  9a 18                                            adds r2, r3, r2
008bbd02  97 46                                            mov pc, r2
008bbd04  f2 69                                            ldr r2, [r6, #0x1c]
008bbd06  73 69                                            ldr r3, [r6, #0x14]
008bbd08  cc 49                                            ldr r1, [pc, #0x330]
008bbd0a  10 1c                                            adds r0, r2, #0
008bbd0c  b6 69                                            ldr r6, [r6, #0x18]
008bbd0e  7f 30                                            adds r0, #0x7f
008bbd10  9b 46                                            mov fp, r3
008bbd12  ff 30                                            adds r0, #0xff
008bbd14  13 1c                                            adds r3, r2, #0
008bbd16  88 46                                            mov r8, r1
008bbd18  03 33                                            adds r3, #3
008bbd1a  80 1b                                            subs r0, r0, r6
008bbd1c  07 21                                            movs r1, #7
008bbd1e  92 46                                            mov sl, r2
008bbd20  03 93                                            str r3, [sp, #0xc]
008bbd22  52 f6 f0 e5                                      blx #0x30e904
008bbd26  03 9a                                            ldr r2, [sp, #0xc]
008bbd28  d8 44                                            add r8, fp
008bbd2a  52 1a                                            subs r2, r2, r1
008bbd2c  03 92                                            str r2, [sp, #0xc]
008bbd2e  00 d5                                            bpl #0x8bbd32
008bbd30  aa e2                                            b #0x8bc288
008bbd32  41 46                                            mov r1, r8
008bbd34  00 23                                            movs r3, #0
008bbd36  89 07                                            lsls r1, r1, #0x1e
008bbd38  0d d1                                            bne #0x8bbd56
008bbd3a  40 46                                            mov r0, r8
008bbd3c  64 21                                            movs r1, #0x64
008bbd3e  52 f6 e2 e5                                      blx #0x30e904
008bbd42  01 23                                            movs r3, #1
008bbd44  00 29                                            cmp r1, #0
008bbd46  06 d1                                            bne #0x8bbd56
008bbd48  c8 21                                            movs r1, #0xc8
008bbd4a  40 46                                            mov r0, r8
008bbd4c  49 00                                            lsls r1, r1, #1
008bbd4e  52 f6 da e5                                      blx #0x30e904
008bbd52  4b 42                                            rsbs r3, r1, #0
008bbd54  4b 41                                            adcs r3, r1
008bbd56  52 46                                            mov r2, sl
008bbd58  6e 3a                                            subs r2, #0x6e
008bbd5a  ff 3a                                            subs r2, #0xff
008bbd5c  d3 1a                                            subs r3, r2, r3
008bbd5e  bf 21                                            movs r1, #0xbf
008bbd60  da 1c                                            adds r2, r3, #3
008bbd62  49 00                                            lsls r1, r1, #1
008bbd64  9b 1b                                            subs r3, r3, r6
008bbd66  58 18                                            adds r0, r3, r1
008bbd68  07 21                                            movs r1, #7
008bbd6a  93 46                                            mov fp, r2
008bbd6c  52 f6 ca e5                                      blx #0x30e904
008bbd70  5a 46                                            mov r2, fp
008bbd72  51 1a                                            subs r1, r2, r1
008bbd74  02 d4                                            bmi #0x8bbd7c
008bbd76  01 23                                            movs r3, #1
008bbd78  98 44                                            add r8, r3
008bbd7a  03 91                                            str r1, [sp, #0xc]
008bbd7c  42 46                                            mov r2, r8
008bbd7e  47 2f                                            cmp r7, #0x47
008bbd80  07 d0                                            beq #0x8bbd92
008bbd82  67 2f                                            cmp r7, #0x67
008bbd84  00 d1                                            bne #0x8bbd88
008bbd86  11 e2                                            b #0x8bc1ac
008bbd88  03 98                                            ldr r0, [sp, #0xc]
008bbd8a  07 21                                            movs r1, #7
008bbd8c  52 f6 8a e2                                      blx #0x30e2a4
008bbd90  42 1c                                            adds r2, r0, #1
008bbd92  1b ae                                            add r6, sp, #0x6c
008bbd94  00 21                                            movs r1, #0
008bbd96  30 1c                                            adds r0, r6, #0
008bbd98  fd f7 b6 fe                                      bl #0x8b9b08
008bbd9c  31 1c                                            adds r1, r6, #0
008bbd9e  02 1c                                            adds r2, r0, #0
008bbda0  05 ab                                            add r3, sp, #0x14
008bbda2  48 46                                            mov r0, sb
008bbda4  fe f7 f4 ff                                      bl #0x8bad90
008bbda8  63 59                                            ldr r3, [r4, r5]
008bbdaa  3d 9a                                            ldr r2, [sp, #0xf4]
008bbdac  1b 68                                            ldr r3, [r3]
008bbdae  9a 42                                            cmp r2, r3
008bbdb0  00 d0                                            beq #0x8bbdb4
008bbdb2  8f e2                                            b #0x8bc2d4
008bbdb4  3f b0                                            add sp, #0xfc
008bbdb6  3c bc                                            pop {r2, r3, r4, r5}
008bbdb8  90 46                                            mov r8, r2
008bbdba  99 46                                            mov sb, r3
008bbdbc  a2 46                                            mov sl, r4
008bbdbe  ab 46                                            mov fp, r5
008bbdc0  f0 bd                                            pop {r4, r5, r6, r7, pc}
008bbdc2  33 69                                            ldr r3, [r6, #0x10]
008bbdc4  59 00                                            lsls r1, r3, #1
008bbdc6  c9 18                                            adds r1, r1, r3
008bbdc8  c9 00                                            lsls r1, r1, #3
008bbdca  c9 31                                            adds r1, #0xc9
008bbdcc  ff 31                                            adds r1, #0xff
008bbdce  59 44                                            add r1, fp
008bbdd0  48 46                                            mov r0, sb
008bbdd2  ff f7 ed fa                                      bl #0x8bb3b0
008bbdd6  e7 e7                                            b #0x8bbda8
008bbdd8  42 46                                            mov r2, r8
008bbdda  13 68                                            ldr r3, [r2]
008bbddc  09 21                                            movs r1, #9
008bbdde  40 46                                            mov r0, r8
008bbde0  9b 69                                            ldr r3, [r3, #0x18]
008bbde2  98 47                                            blx r3
008bbde4  01 1c                                            adds r1, r0, #0
008bbde6  48 46                                            mov r0, sb
008bbde8  ff f7 3c ff                                      bl #0x8bbc64
008bbdec  b0 69                                            ldr r0, [r6, #0x18]
008bbdee  07 21                                            movs r1, #7
008bbdf0  1b af                                            add r7, sp, #0x6c
008bbdf2  06 30                                            adds r0, #6
008bbdf4  52 f6 86 e5                                      blx #0x30e904
008bbdf8  38 1c                                            adds r0, r7, #0
008bbdfa  4a 1c                                            adds r2, r1, #1
008bbdfc  00 21                                            movs r1, #0
008bbdfe  fd f7 83 fe                                      bl #0x8b9b08
008bbe02  39 1c                                            adds r1, r7, #0
008bbe04  02 1c                                            adds r2, r0, #0
008bbe06  07 ab                                            add r3, sp, #0x1c
008bbe08  48 46                                            mov r0, sb
008bbe0a  fe f7 c1 ff                                      bl #0x8bad90
008bbe0e  cb e7                                            b #0x8bbda8
008bbe10  f2 69                                            ldr r2, [r6, #0x1c]
008bbe12  1b af                                            add r7, sp, #0x6c
008bbe14  38 1c                                            adds r0, r7, #0
008bbe16  01 32                                            adds r2, #1
008bbe18  00 21                                            movs r1, #0
008bbe1a  fd f7 75 fe                                      bl #0x8b9b08
008bbe1e  39 1c                                            adds r1, r7, #0
008bbe20  02 1c                                            adds r2, r0, #0
008bbe22  13 ab                                            add r3, sp, #0x4c
008bbe24  48 46                                            mov r0, sb
008bbe26  fe f7 b3 ff                                      bl #0x8bad90
008bbe2a  bd e7                                            b #0x8bbda8
008bbe2c  0a 1c                                            adds r2, r1, #0
008bbe2e  53 46                                            mov r3, sl
008bbe30  60 32                                            adds r2, #0x60
008bbe32  23 2b                                            cmp r3, #0x23
008bbe34  00 d0                                            beq #0x8bbe38
008bbe36  30 3a                                            subs r2, #0x30
008bbe38  48 46                                            mov r0, sb
008bbe3a  41 46                                            mov r1, r8
008bbe3c  5b 46                                            mov r3, fp
008bbe3e  00 96                                            str r6, [sp]
008bbe40  00 f0 70 fa                                      bl #0x8bc324
008bbe44  b0 e7                                            b #0x8bbda8
008bbe46  70 69                                            ldr r0, [r6, #0x14]
008bbe48  7c 49                                            ldr r1, [pc, #0x1f0]
008bbe4a  1b af                                            add r7, sp, #0x6c
008bbe4c  40 18                                            adds r0, r0, r1
008bbe4e  64 21                                            movs r1, #0x64
008bbe50  52 f6 58 e5                                      blx #0x30e904
008bbe54  38 1c                                            adds r0, r7, #0
008bbe56  0a 1c                                            adds r2, r1, #0
008bbe58  00 21                                            movs r1, #0
008bbe5a  fd f7 55 fe                                      bl #0x8b9b08
008bbe5e  39 1c                                            adds r1, r7, #0
008bbe60  02 1c                                            adds r2, r0, #0
008bbe62  0c ab                                            add r3, sp, #0x30
008bbe64  48 46                                            mov r0, sb
008bbe66  fe f7 93 ff                                      bl #0x8bad90
008bbe6a  9d e7                                            b #0x8bbda8
008bbe6c  b3 69                                            ldr r3, [r6, #0x18]
008bbe6e  59 00                                            lsls r1, r3, #1
008bbe70  c9 18                                            adds r1, r1, r3
008bbe72  c9 00                                            lsls r1, r1, #3
008bbe74  78 31                                            adds r1, #0x78
008bbe76  59 44                                            add r1, fp
008bbe78  48 46                                            mov r0, sb
008bbe7a  ff f7 99 fa                                      bl #0x8bb3b0
008bbe7e  93 e7                                            b #0x8bbda8
008bbe80  72 69                                            ldr r2, [r6, #0x14]
008bbe82  6e 4b                                            ldr r3, [pc, #0x1b8]
008bbe84  1b af                                            add r7, sp, #0x6c
008bbe86  38 1c                                            adds r0, r7, #0
008bbe88  d2 18                                            adds r2, r2, r3
008bbe8a  00 21                                            movs r1, #0
008bbe8c  fd f7 3c fe                                      bl #0x8b9b08
008bbe90  39 1c                                            adds r1, r7, #0
008bbe92  02 1c                                            adds r2, r0, #0
008bbe94  0b ab                                            add r3, sp, #0x2c
008bbe96  48 46                                            mov r0, sb
008bbe98  fe f7 7a ff                                      bl #0x8bad90
008bbe9c  84 e7                                            b #0x8bbda8
008bbe9e  41 46                                            mov r1, r8
008bbea0  5a 46                                            mov r2, fp
008bbea2  5b 46                                            mov r3, fp
008bbea4  00 96                                            str r6, [sp]
008bbea6  00 f0 3d fa                                      bl #0x8bc324
008bbeaa  7d e7                                            b #0x8bbda8
008bbeac  b3 69                                            ldr r3, [r6, #0x18]
008bbeae  00 2b                                            cmp r3, #0
008bbeb0  00 d0                                            beq #0x8bbeb4
008bbeb2  73 e1                                            b #0x8bc19c
008bbeb4  f0 69                                            ldr r0, [r6, #0x1c]
008bbeb6  07 21                                            movs r1, #7
008bbeb8  01 30                                            adds r0, #1
008bbeba  52 f6 f4 e1                                      blx #0x30e2a4
008bbebe  02 1c                                            adds r2, r0, #0
008bbec0  1b ae                                            add r6, sp, #0x6c
008bbec2  30 1c                                            adds r0, r6, #0
008bbec4  00 21                                            movs r1, #0
008bbec6  fd f7 1f fe                                      bl #0x8b9b08
008bbeca  31 1c                                            adds r1, r6, #0
008bbecc  02 1c                                            adds r2, r0, #0
008bbece  0d ab                                            add r3, sp, #0x34
008bbed0  48 46                                            mov r0, sb
008bbed2  fe f7 5d ff                                      bl #0x8bad90
008bbed6  67 e7                                            b #0x8bbda8
008bbed8  f0 69                                            ldr r0, [r6, #0x1c]
008bbeda  b3 69                                            ldr r3, [r6, #0x18]
008bbedc  07 21                                            movs r1, #7
008bbede  07 30                                            adds r0, #7
008bbee0  c0 1a                                            subs r0, r0, r3
008bbee2  52 f6 e0 e1                                      blx #0x30e2a4
008bbee6  1b af                                            add r7, sp, #0x6c
008bbee8  02 1c                                            adds r2, r0, #0
008bbeea  00 21                                            movs r1, #0
008bbeec  38 1c                                            adds r0, r7, #0
008bbeee  fd f7 0b fe                                      bl #0x8b9b08
008bbef2  39 1c                                            adds r1, r7, #0
008bbef4  02 1c                                            adds r2, r0, #0
008bbef6  0f ab                                            add r3, sp, #0x3c
008bbef8  48 46                                            mov r0, sb
008bbefa  fe f7 49 ff                                      bl #0x8bad90
008bbefe  53 e7                                            b #0x8bbda8
008bbf00  52 46                                            mov r2, sl
008bbf02  23 2a                                            cmp r2, #0x23
008bbf04  00 d1                                            bne #0x8bbf08
008bbf06  ac e1                                            b #0x8bc262
008bbf08  4d 49                                            ldr r1, [pc, #0x134]
008bbf0a  1b af                                            add r7, sp, #0x6c
008bbf0c  72 68                                            ldr r2, [r6, #4]
008bbf0e  79 44                                            add r1, pc
008bbf10  38 1c                                            adds r0, r7, #0
008bbf12  52 f6 e8 e5                                      blx #0x30eae4
008bbf16  6a 46                                            mov r2, sp
008bbf18  6e 32                                            adds r2, #0x6e
008bbf1a  48 46                                            mov r0, sb
008bbf1c  39 1c                                            adds r1, r7, #0
008bbf1e  11 ab                                            add r3, sp, #0x44
008bbf20  fe f7 36 ff                                      bl #0x8bad90
008bbf24  40 e7                                            b #0x8bbda8
008bbf26  52 46                                            mov r2, sl
008bbf28  23 2a                                            cmp r2, #0x23
008bbf2a  00 d1                                            bne #0x8bbf2e
008bbf2c  6f e1                                            b #0x8bc20e
008bbf2e  45 49                                            ldr r1, [pc, #0x114]
008bbf30  88 46                                            mov r8, r1
008bbf32  f8 44                                            add r8, pc
008bbf34  b0 68                                            ldr r0, [r6, #8]
008bbf36  0c 21                                            movs r1, #0xc
008bbf38  52 f6 e4 e4                                      blx #0x30e904
008bbf3c  0a 1e                                            subs r2, r1, #0
008bbf3e  00 d1                                            bne #0x8bbf42
008bbf40  0c 22                                            movs r2, #0xc
008bbf42  1b af                                            add r7, sp, #0x6c
008bbf44  41 46                                            mov r1, r8
008bbf46  38 1c                                            adds r0, r7, #0
008bbf48  52 f6 cc e5                                      blx #0x30eae4
008bbf4c  b0 68                                            ldr r0, [r6, #8]
008bbf4e  0c 21                                            movs r1, #0xc
008bbf50  52 f6 d8 e4                                      blx #0x30e904
008bbf54  09 29                                            cmp r1, #9
008bbf56  06 dc                                            bgt #0x8bbf66
008bbf58  00 29                                            cmp r1, #0
008bbf5a  04 d0                                            beq #0x8bbf66
008bbf5c  6a 46                                            mov r2, sp
008bbf5e  53 46                                            mov r3, sl
008bbf60  6d 32                                            adds r2, #0x6d
008bbf62  23 2b                                            cmp r3, #0x23
008bbf64  01 d0                                            beq #0x8bbf6a
008bbf66  6a 46                                            mov r2, sp
008bbf68  6e 32                                            adds r2, #0x6e
008bbf6a  48 46                                            mov r0, sb
008bbf6c  39 1c                                            adds r1, r7, #0
008bbf6e  14 ab                                            add r3, sp, #0x50
008bbf70  fe f7 0e ff                                      bl #0x8bad90
008bbf74  18 e7                                            b #0x8bbda8
008bbf76  53 46                                            mov r3, sl
008bbf78  23 2b                                            cmp r3, #0x23
008bbf7a  00 d1                                            bne #0x8bbf7e
008bbf7c  4b e1                                            b #0x8bc216
008bbf7e  32 49                                            ldr r1, [pc, #0xc8]
008bbf80  1b af                                            add r7, sp, #0x6c
008bbf82  32 68                                            ldr r2, [r6]
008bbf84  79 44                                            add r1, pc
008bbf86  38 1c                                            adds r0, r7, #0
008bbf88  52 f6 ac e5                                      blx #0x30eae4
008bbf8c  6a 46                                            mov r2, sp
008bbf8e  6e 32                                            adds r2, #0x6e
008bbf90  48 46                                            mov r0, sb
008bbf92  39 1c                                            adds r1, r7, #0
008bbf94  10 ab                                            add r3, sp, #0x40
008bbf96  fe f7 fb fe                                      bl #0x8bad90
008bbf9a  05 e7                                            b #0x8bbda8
008bbf9c  2b 49                                            ldr r1, [pc, #0xac]
008bbf9e  37 af                                            add r7, sp, #0xdc
008bbfa0  38 1c                                            adds r0, r7, #0
008bbfa2  79 44                                            add r1, pc
008bbfa4  1a aa                                            add r2, sp, #0x68
008bbfa6  58 f6 a2 e0                                      blx #0x3140ec
008bbfaa  48 46                                            mov r0, sb
008bbfac  41 46                                            mov r1, r8
008bbfae  3a 1c                                            adds r2, r7, #0
008bbfb0  5b 46                                            mov r3, fp
008bbfb2  00 96                                            str r6, [sp]
008bbfb4  00 f0 b6 f9                                      bl #0x8bc324
008bbfb8  38 1c                                            adds r0, r7, #0
008bbfba  5c f6 4c e1                                      blx #0x318254
008bbfbe  f3 e6                                            b #0x8bbda8
008bbfc0  52 46                                            mov r2, sl
008bbfc2  23 2a                                            cmp r2, #0x23
008bbfc4  00 d1                                            bne #0x8bbfc8
008bbfc6  39 e1                                            b #0x8bc23c
008bbfc8  21 49                                            ldr r1, [pc, #0x84]
008bbfca  1b af                                            add r7, sp, #0x6c
008bbfcc  b2 68                                            ldr r2, [r6, #8]
008bbfce  79 44                                            add r1, pc
008bbfd0  38 1c                                            adds r0, r7, #0
008bbfd2  52 f6 88 e5                                      blx #0x30eae4
008bbfd6  6a 46                                            mov r2, sp
008bbfd8  6e 32                                            adds r2, #0x6e
008bbfda  48 46                                            mov r0, sb
008bbfdc  39 1c                                            adds r1, r7, #0
008bbfde  15 ab                                            add r3, sp, #0x54
008bbfe0  fe f7 d6 fe                                      bl #0x8bad90
008bbfe4  e0 e6                                            b #0x8bbda8
008bbfe6  1b 49                                            ldr r1, [pc, #0x6c]
008bbfe8  2b af                                            add r7, sp, #0xac
008bbfea  38 1c                                            adds r0, r7, #0
008bbfec  79 44                                            add r1, pc
008bbfee  18 aa                                            add r2, sp, #0x60
008bbff0  d9 e7                                            b #0x8bbfa6
008bbff2  0a 1c                                            adds r2, r1, #0
008bbff4  18 32                                            adds r2, #0x18
008bbff6  1f e7                                            b #0x8bbe38
008bbff8  41 46                                            mov r1, r8
008bbffa  0b 68                                            ldr r3, [r1]
008bbffc  40 46                                            mov r0, r8
008bbffe  25 21                                            movs r1, #0x25
008bc000  9b 69                                            ldr r3, [r3, #0x18]
008bc002  98 47                                            blx r3
008bc004  01 1c                                            adds r1, r0, #0
008bc006  48 46                                            mov r0, sb
008bc008  ff f7 2c fe                                      bl #0x8bbc64
008bc00c  cc e6                                            b #0x8bbda8
008bc00e  30 1c                                            adds r0, r6, #0
008bc010  52 f6 5a e4                                      blx #0x30e8c8
008bc014  1b ae                                            add r6, sp, #0x6c
008bc016  02 1c                                            adds r2, r0, #0
008bc018  00 21                                            movs r1, #0
008bc01a  30 1c                                            adds r0, r6, #0
008bc01c  fd f7 74 fd                                      bl #0x8b9b08
008bc020  31 1c                                            adds r1, r6, #0
008bc022  02 1c                                            adds r2, r0, #0
008bc024  06 ab                                            add r3, sp, #0x18
008bc026  48 46                                            mov r0, sb
008bc028  fe f7 b2 fe                                      bl #0x8bad90
008bc02c  bc e6                                            b #0x8bbda8
008bc02e  c0 46                                            mov r8, r8
; mapping-symbol data/literal pool
008bc030  be 8d 0d 00 ac 40 00 00 98 a6 05 00 6c 07 00 00  .byte 0xbe, 0x8d, 0x0d, 0x00, 0xac, 0x40, 0x00, 0x00, 0x98, 0xa6, 0x05, 0x00, 0x6c, 0x07, 0x00, 0x00
008bc040  fa b4 05 00 d6 b4 05 00 84 b4 05 00 6e b4 05 00  .byte 0xfa, 0xb4, 0x05, 0x00, 0xd6, 0xb4, 0x05, 0x00, 0x84, 0xb4, 0x05, 0x00, 0x6e, 0xb4, 0x05, 0x00
008bc050  3a b4 05 00 38 9d 05 00                          .byte 0x3a, 0xb4, 0x05, 0x00, 0x38, 0x9d, 0x05, 0x00
; decoder-mode: thumb
008bc058  9f 49                                            ldr r1, [pc, #0x27c]
008bc05a  31 af                                            add r7, sp, #0xc4
008bc05c  38 1c                                            adds r0, r7, #0
008bc05e  79 44                                            add r1, pc
008bc060  19 aa                                            add r2, sp, #0x64
008bc062  a0 e7                                            b #0x8bbfa6
008bc064  b0 68                                            ldr r0, [r6, #8]
008bc066  0c 21                                            movs r1, #0xc
008bc068  52 f6 1c e1                                      blx #0x30e2a4
008bc06c  41 00                                            lsls r1, r0, #1
008bc06e  09 18                                            adds r1, r1, r0
008bc070  81 22                                            movs r2, #0x81
008bc072  d2 00                                            lsls r2, r2, #3
008bc074  c9 00                                            lsls r1, r1, #3
008bc076  89 18                                            adds r1, r1, r2
008bc078  59 44                                            add r1, fp
008bc07a  48 46                                            mov r0, sb
008bc07c  ff f7 98 f9                                      bl #0x8bb3b0
008bc080  92 e6                                            b #0x8bbda8
008bc082  41 46                                            mov r1, r8
008bc084  0b 68                                            ldr r3, [r1]
008bc086  40 46                                            mov r0, r8
008bc088  0a 21                                            movs r1, #0xa
008bc08a  9b 69                                            ldr r3, [r3, #0x18]
008bc08c  98 47                                            blx r3
008bc08e  01 1c                                            adds r1, r0, #0
008bc090  48 46                                            mov r0, sb
008bc092  ff f7 e7 fd                                      bl #0x8bbc64
008bc096  87 e6                                            b #0x8bbda8
008bc098  51 46                                            mov r1, sl
008bc09a  23 29                                            cmp r1, #0x23
008bc09c  00 d1                                            bne #0x8bc0a0
008bc09e  90 e0                                            b #0x8bc1c2
008bc0a0  8e 49                                            ldr r1, [pc, #0x238]
008bc0a2  32 69                                            ldr r2, [r6, #0x10]
008bc0a4  1b af                                            add r7, sp, #0x6c
008bc0a6  79 44                                            add r1, pc
008bc0a8  01 32                                            adds r2, #1
008bc0aa  38 1c                                            adds r0, r7, #0
008bc0ac  52 f6 1a e5                                      blx #0x30eae4
008bc0b0  6a 46                                            mov r2, sp
008bc0b2  6e 32                                            adds r2, #0x6e
008bc0b4  48 46                                            mov r0, sb
008bc0b6  39 1c                                            adds r1, r7, #0
008bc0b8  12 ab                                            add r3, sp, #0x48
008bc0ba  fe f7 69 fe                                      bl #0x8bad90
008bc0be  73 e6                                            b #0x8bbda8
008bc0c0  1b aa                                            add r2, sp, #0x6c
008bc0c2  b0 68                                            ldr r0, [r6, #8]
008bc0c4  0c 21                                            movs r1, #0xc
008bc0c6  90 46                                            mov r8, r2
008bc0c8  52 f6 1c e4                                      blx #0x30e904
008bc0cc  84 4f                                            ldr r7, [pc, #0x210]
008bc0ce  0a 1c                                            adds r2, r1, #0
008bc0d0  40 46                                            mov r0, r8
008bc0d2  7f 44                                            add r7, pc
008bc0d4  39 1c                                            adds r1, r7, #0
008bc0d6  52 f6 06 e5                                      blx #0x30eae4
008bc0da  6a 46                                            mov r2, sp
008bc0dc  48 46                                            mov r0, sb
008bc0de  41 46                                            mov r1, r8
008bc0e0  6e 32                                            adds r2, #0x6e
008bc0e2  08 ab                                            add r3, sp, #0x20
008bc0e4  fe f7 54 fe                                      bl #0x8bad90
008bc0e8  5e e6                                            b #0x8bbda8
008bc0ea  7e 49                                            ldr r1, [pc, #0x1f8]
008bc0ec  1b af                                            add r7, sp, #0x6c
008bc0ee  b2 68                                            ldr r2, [r6, #8]
008bc0f0  79 44                                            add r1, pc
008bc0f2  38 1c                                            adds r0, r7, #0
008bc0f4  52 f6 f6 e4                                      blx #0x30eae4
008bc0f8  6a 46                                            mov r2, sp
008bc0fa  48 46                                            mov r0, sb
008bc0fc  39 1c                                            adds r1, r7, #0
008bc0fe  6e 32                                            adds r2, #0x6e
008bc100  09 ab                                            add r3, sp, #0x24
008bc102  fe f7 45 fe                                      bl #0x8bad90
008bc106  4f e6                                            b #0x8bbda8
008bc108  0a 1c                                            adds r2, r1, #0
008bc10a  53 46                                            mov r3, sl
008bc10c  48 32                                            adds r2, #0x48
008bc10e  23 2b                                            cmp r3, #0x23
008bc110  00 d0                                            beq #0x8bc114
008bc112  90 e6                                            b #0x8bbe36
008bc114  90 e6                                            b #0x8bbe38
008bc116  1b af                                            add r7, sp, #0x6c
008bc118  b2 69                                            ldr r2, [r6, #0x18]
008bc11a  38 1c                                            adds r0, r7, #0
008bc11c  00 21                                            movs r1, #0
008bc11e  fd f7 f3 fc                                      bl #0x8b9b08
008bc122  39 1c                                            adds r1, r7, #0
008bc124  02 1c                                            adds r2, r0, #0
008bc126  0e ab                                            add r3, sp, #0x38
008bc128  48 46                                            mov r0, sb
008bc12a  fe f7 31 fe                                      bl #0x8bad90
008bc12e  3b e6                                            b #0x8bbda8
008bc130  33 69                                            ldr r3, [r6, #0x10]
008bc132  0c 33                                            adds r3, #0xc
008bc134  46 e6                                            b #0x8bbdc4
008bc136  b3 69                                            ldr r3, [r6, #0x18]
008bc138  07 33                                            adds r3, #7
008bc13a  98 e6                                            b #0x8bbe6e
008bc13c  6a 49                                            ldr r1, [pc, #0x1a8]
008bc13e  1b af                                            add r7, sp, #0x6c
008bc140  f2 68                                            ldr r2, [r6, #0xc]
008bc142  79 44                                            add r1, pc
008bc144  38 1c                                            adds r0, r7, #0
008bc146  52 f6 ce e4                                      blx #0x30eae4
008bc14a  6a 46                                            mov r2, sp
008bc14c  48 46                                            mov r0, sb
008bc14e  39 1c                                            adds r1, r7, #0
008bc150  6e 32                                            adds r2, #0x6e
008bc152  16 ab                                            add r3, sp, #0x58
008bc154  fe f7 1c fe                                      bl #0x8bad90
008bc158  26 e6                                            b #0x8bbda8
008bc15a  51 46                                            mov r1, sl
008bc15c  23 29                                            cmp r1, #0x23
008bc15e  44 d0                                            beq #0x8bc1ea
008bc160  62 49                                            ldr r1, [pc, #0x188]
008bc162  1b af                                            add r7, sp, #0x6c
008bc164  f2 68                                            ldr r2, [r6, #0xc]
008bc166  79 44                                            add r1, pc
008bc168  38 1c                                            adds r0, r7, #0
008bc16a  52 f6 bc e4                                      blx #0x30eae4
008bc16e  6a 46                                            mov r2, sp
008bc170  6e 32                                            adds r2, #0x6e
008bc172  48 46                                            mov r0, sb
008bc174  39 1c                                            adds r1, r7, #0
008bc176  17 ab                                            add r3, sp, #0x5c
008bc178  fe f7 0a fe                                      bl #0x8bad90
008bc17c  14 e6                                            b #0x8bbda8
008bc17e  5c 49                                            ldr r1, [pc, #0x170]
008bc180  1b af                                            add r7, sp, #0x6c
008bc182  f2 68                                            ldr r2, [r6, #0xc]
008bc184  79 44                                            add r1, pc
008bc186  38 1c                                            adds r0, r7, #0
008bc188  52 f6 ac e4                                      blx #0x30eae4
008bc18c  6a 46                                            mov r2, sp
008bc18e  48 46                                            mov r0, sb
008bc190  39 1c                                            adds r1, r7, #0
008bc192  6e 32                                            adds r2, #0x6e
008bc194  0a ab                                            add r3, sp, #0x28
008bc196  fe f7 fb fd                                      bl #0x8bad90
008bc19a  05 e6                                            b #0x8bbda8
008bc19c  f0 69                                            ldr r0, [r6, #0x1c]
008bc19e  07 21                                            movs r1, #7
008bc1a0  08 30                                            adds r0, #8
008bc1a2  c0 1a                                            subs r0, r0, r3
008bc1a4  52 f6 7e e0                                      blx #0x30e2a4
008bc1a8  02 1c                                            adds r2, r0, #0
008bc1aa  89 e6                                            b #0x8bbec0
008bc1ac  40 46                                            mov r0, r8
008bc1ae  64 21                                            movs r1, #0x64
008bc1b0  52 f6 a8 e3                                      blx #0x30e904
008bc1b4  08 1c                                            adds r0, r1, #0
008bc1b6  64 30                                            adds r0, #0x64
008bc1b8  64 21                                            movs r1, #0x64
008bc1ba  52 f6 a4 e3                                      blx #0x30e904
008bc1be  0a 1c                                            adds r2, r1, #0
008bc1c0  e7 e5                                            b #0x8bbd92
008bc1c2  32 69                                            ldr r2, [r6, #0x10]
008bc1c4  4b 49                                            ldr r1, [pc, #0x12c]
008bc1c6  1b af                                            add r7, sp, #0x6c
008bc1c8  01 32                                            adds r2, #1
008bc1ca  79 44                                            add r1, pc
008bc1cc  38 1c                                            adds r0, r7, #0
008bc1ce  52 f6 8a e4                                      blx #0x30eae4
008bc1d2  33 69                                            ldr r3, [r6, #0x10]
008bc1d4  08 22                                            movs r2, #8
008bc1d6  00 21                                            movs r1, #0
008bc1d8  d8 0f                                            lsrs r0, r3, #0x1f
008bc1da  9a 42                                            cmp r2, r3
008bc1dc  48 41                                            adcs r0, r1
008bc1de  6a 46                                            mov r2, sp
008bc1e0  6d 32                                            adds r2, #0x6d
008bc1e2  c1 07                                            lsls r1, r0, #0x1f
008bc1e4  00 d5                                            bpl #0x8bc1e8
008bc1e6  65 e7                                            b #0x8bc0b4
008bc1e8  62 e7                                            b #0x8bc0b0
008bc1ea  43 49                                            ldr r1, [pc, #0x10c]
008bc1ec  1b af                                            add r7, sp, #0x6c
008bc1ee  f2 68                                            ldr r2, [r6, #0xc]
008bc1f0  79 44                                            add r1, pc
008bc1f2  38 1c                                            adds r0, r7, #0
008bc1f4  52 f6 76 e4                                      blx #0x30eae4
008bc1f8  f3 68                                            ldr r3, [r6, #0xc]
008bc1fa  09 22                                            movs r2, #9
008bc1fc  00 21                                            movs r1, #0
008bc1fe  d8 0f                                            lsrs r0, r3, #0x1f
008bc200  9a 42                                            cmp r2, r3
008bc202  48 41                                            adcs r0, r1
008bc204  6a 46                                            mov r2, sp
008bc206  6d 32                                            adds r2, #0x6d
008bc208  c1 07                                            lsls r1, r0, #0x1f
008bc20a  b2 d4                                            bmi #0x8bc172
008bc20c  af e7                                            b #0x8bc16e
008bc20e  3b 4b                                            ldr r3, [pc, #0xec]
008bc210  98 46                                            mov r8, r3
008bc212  f8 44                                            add r8, pc
008bc214  8e e6                                            b #0x8bbf34
008bc216  3a 49                                            ldr r1, [pc, #0xe8]
008bc218  1b af                                            add r7, sp, #0x6c
008bc21a  32 68                                            ldr r2, [r6]
008bc21c  79 44                                            add r1, pc
008bc21e  38 1c                                            adds r0, r7, #0
008bc220  52 f6 60 e4                                      blx #0x30eae4
008bc224  33 68                                            ldr r3, [r6]
008bc226  09 22                                            movs r2, #9
008bc228  00 21                                            movs r1, #0
008bc22a  d8 0f                                            lsrs r0, r3, #0x1f
008bc22c  9a 42                                            cmp r2, r3
008bc22e  48 41                                            adcs r0, r1
008bc230  6a 46                                            mov r2, sp
008bc232  6d 32                                            adds r2, #0x6d
008bc234  c1 07                                            lsls r1, r0, #0x1f
008bc236  00 d5                                            bpl #0x8bc23a
008bc238  aa e6                                            b #0x8bbf90
008bc23a  a7 e6                                            b #0x8bbf8c
008bc23c  31 49                                            ldr r1, [pc, #0xc4]
008bc23e  1b af                                            add r7, sp, #0x6c
008bc240  b2 68                                            ldr r2, [r6, #8]
008bc242  79 44                                            add r1, pc
008bc244  38 1c                                            adds r0, r7, #0
008bc246  52 f6 4e e4                                      blx #0x30eae4
008bc24a  b3 68                                            ldr r3, [r6, #8]
008bc24c  09 22                                            movs r2, #9
008bc24e  00 21                                            movs r1, #0
008bc250  d8 0f                                            lsrs r0, r3, #0x1f
008bc252  9a 42                                            cmp r2, r3
008bc254  48 41                                            adcs r0, r1
008bc256  6a 46                                            mov r2, sp
008bc258  6d 32                                            adds r2, #0x6d
008bc25a  c1 07                                            lsls r1, r0, #0x1f
008bc25c  00 d5                                            bpl #0x8bc260
008bc25e  bc e6                                            b #0x8bbfda
008bc260  b9 e6                                            b #0x8bbfd6
008bc262  29 49                                            ldr r1, [pc, #0xa4]
008bc264  1b af                                            add r7, sp, #0x6c
008bc266  72 68                                            ldr r2, [r6, #4]
008bc268  79 44                                            add r1, pc
008bc26a  38 1c                                            adds r0, r7, #0
008bc26c  52 f6 3a e4                                      blx #0x30eae4
008bc270  73 68                                            ldr r3, [r6, #4]
008bc272  09 22                                            movs r2, #9
008bc274  00 21                                            movs r1, #0
008bc276  d8 0f                                            lsrs r0, r3, #0x1f
008bc278  9a 42                                            cmp r2, r3
008bc27a  48 41                                            adcs r0, r1
008bc27c  6a 46                                            mov r2, sp
008bc27e  6d 32                                            adds r2, #0x6d
008bc280  c1 07                                            lsls r1, r0, #0x1f
008bc282  00 d5                                            bpl #0x8bc286
008bc284  49 e6                                            b #0x8bbf1a
008bc286  46 e6                                            b #0x8bbf16
008bc288  20 4b                                            ldr r3, [pc, #0x80]
008bc28a  98 46                                            mov r8, r3
008bc28c  d8 44                                            add r8, fp
008bc28e  41 46                                            mov r1, r8
008bc290  00 23                                            movs r3, #0
008bc292  89 07                                            lsls r1, r1, #0x1e
008bc294  0d d1                                            bne #0x8bc2b2
008bc296  40 46                                            mov r0, r8
008bc298  64 21                                            movs r1, #0x64
008bc29a  52 f6 34 e3                                      blx #0x30e904
008bc29e  01 23                                            movs r3, #1
008bc2a0  00 29                                            cmp r1, #0
008bc2a2  06 d1                                            bne #0x8bc2b2
008bc2a4  c8 21                                            movs r1, #0xc8
008bc2a6  40 46                                            mov r0, r8
008bc2a8  49 00                                            lsls r1, r1, #1
008bc2aa  52 f6 2c e3                                      blx #0x30e904
008bc2ae  4b 42                                            rsbs r3, r1, #0
008bc2b0  4b 41                                            adcs r3, r1
008bc2b2  52 46                                            mov r2, sl
008bc2b4  6e 32                                            adds r2, #0x6e
008bc2b6  ff 32                                            adds r2, #0xff
008bc2b8  d3 18                                            adds r3, r2, r3
008bc2ba  bf 21                                            movs r1, #0xbf
008bc2bc  da 1c                                            adds r2, r3, #3
008bc2be  49 00                                            lsls r1, r1, #1
008bc2c0  9b 1b                                            subs r3, r3, r6
008bc2c2  58 18                                            adds r0, r3, r1
008bc2c4  07 21                                            movs r1, #7
008bc2c6  93 46                                            mov fp, r2
008bc2c8  52 f6 1c e3                                      blx #0x30e904
008bc2cc  5a 46                                            mov r2, fp
008bc2ce  52 1a                                            subs r2, r2, r1
008bc2d0  03 92                                            str r2, [sp, #0xc]
008bc2d2  53 e5                                            b #0x8bbd7c
008bc2d4  52 f6 1c e0                                      blx #0x30e310
; mapping-symbol data/literal pool
008bc2d8  ba b3 05 00 62 b3 05 00 2e b3 05 00 10 b3 05 00  .byte 0xba, 0xb3, 0x05, 0x00, 0x62, 0xb3, 0x05, 0x00, 0x2e, 0xb3, 0x05, 0x00, 0x10, 0xb3, 0x05, 0x00
008bc2e8  be b2 05 00 a2 b2 05 00 7c b2 05 00 32 b2 05 00  .byte 0xbe, 0xb2, 0x05, 0x00, 0xa2, 0xb2, 0x05, 0x00, 0x7c, 0xb2, 0x05, 0x00, 0x32, 0xb2, 0x05, 0x00
008bc2f8  0c b2 05 00 ea b1 05 00 e0 b1 05 00 ba b1 05 00  .byte 0x0c, 0xb2, 0x05, 0x00, 0xea, 0xb1, 0x05, 0x00, 0xe0, 0xb1, 0x05, 0x00, 0xba, 0xb1, 0x05, 0x00
008bc308  94 b1 05 00 6b 07 00 00                          .byte 0x94, 0xb1, 0x05, 0x00, 0x6b, 0x07, 0x00, 0x00

; FUNCTION 0x008bc324, declared_size=94, range_size=94, mode=thumb
; class-group: void std::priv
; alias: _ZNSt4priv11__subformatIcNS_10_Time_InfoEEEvRNS_16__basic_iostringIT_EERKSt5ctypeIS3_ERKSsRKT0_PK2tm
; demangled: void std::priv::__subformat<char, std::priv::_Time_Info>(std::priv::__basic_iostring<char>&, std::ctype<char> const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::priv::_Time_Info const&, tm const*)
; decoder-mode: thumb
008bc324  f0 b5                                            push {r4, r5, r6, r7, lr}
008bc326  4f 46                                            mov r7, sb
008bc328  46 46                                            mov r6, r8
008bc32a  c0 b4                                            push {r6, r7}
008bc32c  83 b0                                            sub sp, #0xc
008bc32e  0f 1c                                            adds r7, r1, #0
008bc330  0a 99                                            ldr r1, [sp, #0x28]
008bc332  54 69                                            ldr r4, [r2, #0x14]
008bc334  15 69                                            ldr r5, [r2, #0x10]
008bc336  06 1c                                            adds r6, r0, #0
008bc338  98 46                                            mov r8, r3
008bc33a  89 46                                            mov sb, r1
008bc33c  a5 42                                            cmp r5, r4
008bc33e  12 d0                                            beq #0x8bc366
008bc340  21 78                                            ldrb r1, [r4]
008bc342  25 29                                            cmp r1, #0x25
008bc344  14 d1                                            bne #0x8bc370
008bc346  62 78                                            ldrb r2, [r4, #1]
008bc348  61 1c                                            adds r1, r4, #1
008bc34a  00 23                                            movs r3, #0
008bc34c  23 2a                                            cmp r2, #0x23
008bc34e  14 d0                                            beq #0x8bc37a
008bc350  4c 1c                                            adds r4, r1, #1
008bc352  41 46                                            mov r1, r8
008bc354  00 91                                            str r1, [sp]
008bc356  49 46                                            mov r1, sb
008bc358  01 91                                            str r1, [sp, #4]
008bc35a  30 1c                                            adds r0, r6, #0
008bc35c  39 1c                                            adds r1, r7, #0
008bc35e  ff f7 b1 fc                                      bl #0x8bbcc4
008bc362  a5 42                                            cmp r5, r4
008bc364  ec d1                                            bne #0x8bc340
008bc366  03 b0                                            add sp, #0xc
008bc368  0c bc                                            pop {r2, r3}
008bc36a  90 46                                            mov r8, r2
008bc36c  99 46                                            mov sb, r3
008bc36e  f0 bd                                            pop {r4, r5, r6, r7, pc}
008bc370  30 1c                                            adds r0, r6, #0
008bc372  01 34                                            adds r4, #1
008bc374  ff f7 76 fc                                      bl #0x8bbc64
008bc378  e0 e7                                            b #0x8bc33c
008bc37a  01 31                                            adds r1, #1
008bc37c  0a 78                                            ldrb r2, [r1]
008bc37e  23 23                                            movs r3, #0x23
008bc380  e6 e7                                            b #0x8bc350
