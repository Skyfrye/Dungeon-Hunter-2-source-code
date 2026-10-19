; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0048ca80, declared_size=64, range_size=64, mode=arm
; class-group: std::vector<char const*, std::allocator<char const*> >
; alias: _ZNSt6vectorIPKcSaIS1_EED1Ev
; demangled: std::vector<char const*, std::allocator<char const*> >::~vector()
; decoder-mode: arm
0048ca80  10 40 2d e9                                      push {r4, lr}
0048ca84  00 40 a0 e1                                      mov r4, r0
0048ca88  00 00 90 e5                                      ldr r0, [r0]
0048ca8c  00 00 50 e3                                      cmp r0, #0
0048ca90  05 00 00 0a                                      beq #0x48caac
0048ca94  08 10 94 e5                                      ldr r1, [r4, #8]
0048ca98  01 10 60 e0                                      rsb r1, r0, r1
0048ca9c  03 10 c1 e3                                      bic r1, r1, #3
0048caa0  80 00 51 e3                                      cmp r1, #0x80
0048caa4  02 00 00 8a                                      bhi #0x48cab4
0048caa8  14 f1 09 eb                                      bl #0x708f00
0048caac  04 00 a0 e1                                      mov r0, r4
0048cab0  10 80 bd e8                                      pop {r4, pc}
0048cab4  61 0e fa eb                                      bl #0x310440
0048cab8  04 00 a0 e1                                      mov r0, r4
0048cabc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0048cd84, declared_size=196, range_size=196, mode=arm
; class-group: std::vector<char const*, std::allocator<char const*> >
; alias: _ZNSt6vectorIPKcSaIS1_EE18_M_insert_overflowEPS1_RKS1_RKSt11__true_typejb.clone.15
; demangled: std::vector<char const*, std::allocator<char const*> >::_M_insert_overflow(char const**, char const* const&, std::__true_type const&, unsigned int, bool) [clone .clone.15]
; decoder-mode: arm
0048cd84  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0048cd88  00 40 a0 e1                                      mov r4, r0
0048cd8c  00 30 94 e5                                      ldr r3, [r4]
0048cd90  04 00 90 e5                                      ldr r0, [r0, #4]
0048cd94  01 60 a0 e1                                      mov r6, r1
0048cd98  0c d0 4d e2                                      sub sp, sp, #0xc
0048cd9c  00 30 63 e0                                      rsb r3, r3, r0
0048cda0  43 31 a0 e1                                      asr r3, r3, #2
0048cda4  01 00 53 e3                                      cmp r3, #1
0048cda8  03 10 83 20                                      addhs r1, r3, r3
0048cdac  01 10 83 32                                      addlo r1, r3, #1
0048cdb0  07 01 71 e3                                      cmn r1, #0xc0000001
0048cdb4  02 70 a0 e1                                      mov r7, r2
0048cdb8  1e 00 00 8a                                      bhi #0x48ce38
0048cdbc  01 00 53 e1                                      cmp r3, r1
0048cdc0  1c 00 00 8a                                      bhi #0x48ce38
0048cdc4  08 20 8d e2                                      add r2, sp, #8
0048cdc8  04 10 22 e5                                      str r1, [r2, #-4]!
0048cdcc  08 00 84 e2                                      add r0, r4, #8
0048cdd0  b1 fe ff eb                                      bl #0x48c89c
0048cdd4  00 10 94 e5                                      ldr r1, [r4]
0048cdd8  00 50 a0 e1                                      mov r5, r0
0048cddc  01 60 56 e0                                      subs r6, r6, r1
0048cde0  00 60 a0 01                                      moveq r6, r0
0048cde4  02 00 00 0a                                      beq #0x48cdf4
0048cde8  06 20 a0 e1                                      mov r2, r6
0048cdec  51 04 fa eb                                      bl #0x30df38
0048cdf0  06 60 80 e0                                      add r6, r0, r6
0048cdf4  00 30 97 e5                                      ldr r3, [r7]
0048cdf8  04 30 86 e4                                      str r3, [r6], #4
0048cdfc  00 00 94 e5                                      ldr r0, [r4]
0048ce00  08 10 94 e5                                      ldr r1, [r4, #8]
0048ce04  00 00 50 e3                                      cmp r0, #0
0048ce08  04 00 00 0a                                      beq #0x48ce20
0048ce0c  01 10 60 e0                                      rsb r1, r0, r1
0048ce10  03 10 c1 e3                                      bic r1, r1, #3
0048ce14  80 00 51 e3                                      cmp r1, #0x80
0048ce18  08 00 00 8a                                      bhi #0x48ce40
0048ce1c  37 f0 09 eb                                      bl #0x708f00
0048ce20  04 30 9d e5                                      ldr r3, [sp, #4]
0048ce24  60 00 84 e8                                      stm r4, {r5, r6}
0048ce28  03 51 85 e0                                      add r5, r5, r3, lsl #2
0048ce2c  08 50 84 e5                                      str r5, [r4, #8]
0048ce30  0c d0 8d e2                                      add sp, sp, #0xc
0048ce34  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0048ce38  03 11 e0 e3                                      mvn r1, #0xc0000000
0048ce3c  e0 ff ff ea                                      b #0x48cdc4
0048ce40  7e 0d fa eb                                      bl #0x310440
0048ce44  f5 ff ff ea                                      b #0x48ce20
