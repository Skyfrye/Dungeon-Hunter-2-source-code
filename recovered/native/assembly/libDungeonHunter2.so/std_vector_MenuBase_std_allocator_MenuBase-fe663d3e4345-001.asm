; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0042df10, declared_size=200, range_size=200, mode=arm
; class-group: std::vector<MenuBase*, std::allocator<MenuBase*> >
; alias: _ZNSt6vectorIP8MenuBaseSaIS1_EE18_M_insert_overflowEPS1_RKS1_RKSt11__true_typejb.clone.3
; demangled: std::vector<MenuBase*, std::allocator<MenuBase*> >::_M_insert_overflow(MenuBase**, MenuBase* const&, std::__true_type const&, unsigned int, bool) [clone .clone.3]
; decoder-mode: arm
0042df10  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0042df14  00 40 a0 e1                                      mov r4, r0
0042df18  00 30 94 e5                                      ldr r3, [r4]
0042df1c  04 00 90 e5                                      ldr r0, [r0, #4]
0042df20  01 60 a0 e1                                      mov r6, r1
0042df24  0c d0 4d e2                                      sub sp, sp, #0xc
0042df28  00 30 63 e0                                      rsb r3, r3, r0
0042df2c  43 31 a0 e1                                      asr r3, r3, #2
0042df30  01 00 53 e3                                      cmp r3, #1
0042df34  03 10 83 20                                      addhs r1, r3, r3
0042df38  01 10 83 32                                      addlo r1, r3, #1
0042df3c  07 01 71 e3                                      cmn r1, #0xc0000001
0042df40  02 70 a0 e1                                      mov r7, r2
0042df44  1b 00 00 8a                                      bhi #0x42dfb8
0042df48  01 00 53 e1                                      cmp r3, r1
0042df4c  19 00 00 8a                                      bhi #0x42dfb8
0042df50  08 20 8d e2                                      add r2, sp, #8
0042df54  04 10 22 e5                                      str r1, [r2, #-4]!
0042df58  08 00 84 e2                                      add r0, r4, #8
0042df5c  cf ff ff eb                                      bl #0x42dea0
0042df60  00 10 94 e5                                      ldr r1, [r4]
0042df64  00 50 a0 e1                                      mov r5, r0
0042df68  01 60 56 e0                                      subs r6, r6, r1
0042df6c  00 60 a0 01                                      moveq r6, r0
0042df70  14 00 00 1a                                      bne #0x42dfc8
0042df74  00 30 97 e5                                      ldr r3, [r7]
0042df78  04 30 86 e4                                      str r3, [r6], #4
0042df7c  00 00 94 e5                                      ldr r0, [r4]
0042df80  08 10 94 e5                                      ldr r1, [r4, #8]
0042df84  00 00 50 e3                                      cmp r0, #0
0042df88  04 00 00 0a                                      beq #0x42dfa0
0042df8c  01 10 60 e0                                      rsb r1, r0, r1
0042df90  03 10 c1 e3                                      bic r1, r1, #3
0042df94  80 00 51 e3                                      cmp r1, #0x80
0042df98  08 00 00 8a                                      bhi #0x42dfc0
0042df9c  d7 6b 0b eb                                      bl #0x708f00
0042dfa0  04 30 9d e5                                      ldr r3, [sp, #4]
0042dfa4  60 00 84 e8                                      stm r4, {r5, r6}
0042dfa8  03 51 85 e0                                      add r5, r5, r3, lsl #2
0042dfac  08 50 84 e5                                      str r5, [r4, #8]
0042dfb0  0c d0 8d e2                                      add sp, sp, #0xc
0042dfb4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0042dfb8  03 11 e0 e3                                      mvn r1, #0xc0000000
0042dfbc  e3 ff ff ea                                      b #0x42df50
0042dfc0  1e 89 fb eb                                      bl #0x310440
0042dfc4  f5 ff ff ea                                      b #0x42dfa0
0042dfc8  06 20 a0 e1                                      mov r2, r6
0042dfcc  d9 7f fb eb                                      bl #0x30df38
0042dfd0  06 60 80 e0                                      add r6, r0, r6
0042dfd4  e6 ff ff ea                                      b #0x42df74
