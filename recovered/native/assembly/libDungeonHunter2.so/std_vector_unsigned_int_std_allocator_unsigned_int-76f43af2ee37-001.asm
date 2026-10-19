; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005a4970, declared_size=100, range_size=100, mode=arm
; class-group: std::vector<unsigned int, std::allocator<unsigned int> >
; alias: _ZNSt6vectorIjSaIjEEC1Ej
; demangled: std::vector<unsigned int, std::allocator<unsigned int> >::vector(unsigned int)
; decoder-mode: arm
005a4970  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005a4974  0c d0 4d e2                                      sub sp, sp, #0xc
005a4978  00 40 a0 e1                                      mov r4, r0
005a497c  00 60 a0 e3                                      mov r6, #0
005a4980  08 20 8d e2                                      add r2, sp, #8
005a4984  04 10 22 e5                                      str r1, [r2, #-4]!
005a4988  00 60 84 e5                                      str r6, [r4]
005a498c  04 60 84 e5                                      str r6, [r4, #4]
005a4990  08 60 a0 e5                                      str r6, [r0, #8]!
005a4994  01 70 a0 e1                                      mov r7, r1
005a4998  d8 ff ff eb                                      bl #0x5a4900
005a499c  04 30 9d e5                                      ldr r3, [sp, #4]
005a49a0  07 71 a0 e1                                      lsl r7, r7, #2
005a49a4  00 50 a0 e1                                      mov r5, r0
005a49a8  03 31 80 e0                                      add r3, r0, r3, lsl #2
005a49ac  00 00 84 e5                                      str r0, [r4]
005a49b0  09 00 84 e9                                      stmib r4, {r0, r3}
005a49b4  06 10 a0 e1                                      mov r1, r6
005a49b8  07 20 a0 e1                                      mov r2, r7
005a49bc  07 50 85 e0                                      add r5, r5, r7
005a49c0  a6 a6 f5 eb                                      bl #0x30e460
005a49c4  04 50 84 e5                                      str r5, [r4, #4]
005a49c8  04 00 a0 e1                                      mov r0, r4
005a49cc  0c d0 8d e2                                      add sp, sp, #0xc
005a49d0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x005a49d4, declared_size=128, range_size=128, mode=arm
; class-group: std::vector<unsigned int, std::allocator<unsigned int> >
; alias: _ZNSt6vectorIjSaIjEEC1ERKS1_
; demangled: std::vector<unsigned int, std::allocator<unsigned int> >::vector(std::vector<unsigned int, std::allocator<unsigned int> > const&)
; decoder-mode: arm
005a49d4  30 40 2d e9                                      push {r4, r5, lr}
005a49d8  01 50 a0 e1                                      mov r5, r1
005a49dc  00 30 95 e5                                      ldr r3, [r5]
005a49e0  04 10 91 e5                                      ldr r1, [r1, #4]
005a49e4  0c d0 4d e2                                      sub sp, sp, #0xc
005a49e8  00 40 a0 e1                                      mov r4, r0
005a49ec  01 10 63 e0                                      rsb r1, r3, r1
005a49f0  00 c0 a0 e3                                      mov ip, #0
005a49f4  41 11 a0 e1                                      asr r1, r1, #2
005a49f8  08 20 8d e2                                      add r2, sp, #8
005a49fc  04 10 22 e5                                      str r1, [r2, #-4]!
005a4a00  00 c0 84 e5                                      str ip, [r4]
005a4a04  04 c0 84 e5                                      str ip, [r4, #4]
005a4a08  08 c0 a0 e5                                      str ip, [r0, #8]!
005a4a0c  bb ff ff eb                                      bl #0x5a4900
005a4a10  04 20 9d e5                                      ldr r2, [sp, #4]
005a4a14  00 00 84 e5                                      str r0, [r4]
005a4a18  04 00 84 e5                                      str r0, [r4, #4]
005a4a1c  02 21 80 e0                                      add r2, r0, r2, lsl #2
005a4a20  08 20 84 e5                                      str r2, [r4, #8]
005a4a24  06 00 95 e8                                      ldm r5, {r1, r2}
005a4a28  00 30 a0 e1                                      mov r3, r0
005a4a2c  02 00 51 e1                                      cmp r1, r2
005a4a30  03 00 00 0a                                      beq #0x5a4a44
005a4a34  02 50 61 e0                                      rsb r5, r1, r2
005a4a38  05 20 a0 e1                                      mov r2, r5
005a4a3c  89 a7 f5 eb                                      bl #0x30e868
005a4a40  05 30 80 e0                                      add r3, r0, r5
005a4a44  04 30 84 e5                                      str r3, [r4, #4]
005a4a48  04 00 a0 e1                                      mov r0, r4
005a4a4c  0c d0 8d e2                                      add sp, sp, #0xc
005a4a50  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x005a4a54, declared_size=200, range_size=200, mode=arm
; class-group: std::vector<unsigned int, std::allocator<unsigned int> >
; alias: _ZNSt6vectorIjSaIjEE18_M_insert_overflowEPjRKjRKSt11__true_typejb.clone.4
; demangled: std::vector<unsigned int, std::allocator<unsigned int> >::_M_insert_overflow(unsigned int*, unsigned int const&, std::__true_type const&, unsigned int, bool) [clone .clone.4]
; decoder-mode: arm
005a4a54  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005a4a58  00 40 a0 e1                                      mov r4, r0
005a4a5c  00 30 94 e5                                      ldr r3, [r4]
005a4a60  04 00 90 e5                                      ldr r0, [r0, #4]
005a4a64  01 60 a0 e1                                      mov r6, r1
005a4a68  0c d0 4d e2                                      sub sp, sp, #0xc
005a4a6c  00 30 63 e0                                      rsb r3, r3, r0
005a4a70  43 31 a0 e1                                      asr r3, r3, #2
005a4a74  01 00 53 e3                                      cmp r3, #1
005a4a78  03 10 83 20                                      addhs r1, r3, r3
005a4a7c  01 10 83 32                                      addlo r1, r3, #1
005a4a80  07 01 71 e3                                      cmn r1, #0xc0000001
005a4a84  02 70 a0 e1                                      mov r7, r2
005a4a88  1b 00 00 8a                                      bhi #0x5a4afc
005a4a8c  01 00 53 e1                                      cmp r3, r1
005a4a90  19 00 00 8a                                      bhi #0x5a4afc
005a4a94  08 20 8d e2                                      add r2, sp, #8
005a4a98  04 10 22 e5                                      str r1, [r2, #-4]!
005a4a9c  08 00 84 e2                                      add r0, r4, #8
005a4aa0  96 ff ff eb                                      bl #0x5a4900
005a4aa4  00 10 94 e5                                      ldr r1, [r4]
005a4aa8  00 50 a0 e1                                      mov r5, r0
005a4aac  01 60 56 e0                                      subs r6, r6, r1
005a4ab0  00 60 a0 01                                      moveq r6, r0
005a4ab4  14 00 00 1a                                      bne #0x5a4b0c
005a4ab8  00 30 97 e5                                      ldr r3, [r7]
005a4abc  04 30 86 e4                                      str r3, [r6], #4
005a4ac0  00 00 94 e5                                      ldr r0, [r4]
005a4ac4  08 10 94 e5                                      ldr r1, [r4, #8]
005a4ac8  00 00 50 e3                                      cmp r0, #0
005a4acc  04 00 00 0a                                      beq #0x5a4ae4
005a4ad0  01 10 60 e0                                      rsb r1, r0, r1
005a4ad4  03 10 c1 e3                                      bic r1, r1, #3
005a4ad8  80 00 51 e3                                      cmp r1, #0x80
005a4adc  08 00 00 8a                                      bhi #0x5a4b04
005a4ae0  06 91 05 eb                                      bl #0x708f00
005a4ae4  04 30 9d e5                                      ldr r3, [sp, #4]
005a4ae8  60 00 84 e8                                      stm r4, {r5, r6}
005a4aec  03 51 85 e0                                      add r5, r5, r3, lsl #2
005a4af0  08 50 84 e5                                      str r5, [r4, #8]
005a4af4  0c d0 8d e2                                      add sp, sp, #0xc
005a4af8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005a4afc  03 11 e0 e3                                      mvn r1, #0xc0000000
005a4b00  e3 ff ff ea                                      b #0x5a4a94
005a4b04  e9 a5 f5 eb                                      bl #0x30e2b0
005a4b08  f5 ff ff ea                                      b #0x5a4ae4
005a4b0c  06 20 a0 e1                                      mov r2, r6
005a4b10  08 a5 f5 eb                                      bl #0x30df38
005a4b14  06 60 80 e0                                      add r6, r0, r6
005a4b18  e6 ff ff ea                                      b #0x5a4ab8
