; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003ccf9c, declared_size=72, range_size=72, mode=arm
; class-group: std::vector<Character*, std::allocator<Character*> >
; alias: _ZNSt6vectorIP9CharacterSaIS1_EEC1Ej.clone.3
; demangled: std::vector<Character*, std::allocator<Character*> >::vector(unsigned int) [clone .clone.3]
; decoder-mode: arm
003ccf9c  10 40 2d e9                                      push {r4, lr}
003ccfa0  08 d0 4d e2                                      sub sp, sp, #8
003ccfa4  00 40 a0 e1                                      mov r4, r0
003ccfa8  00 10 a0 e3                                      mov r1, #0
003ccfac  08 20 8d e2                                      add r2, sp, #8
003ccfb0  04 10 22 e5                                      str r1, [r2, #-4]!
003ccfb4  00 10 84 e5                                      str r1, [r4]
003ccfb8  04 10 84 e5                                      str r1, [r4, #4]
003ccfbc  08 10 a0 e5                                      str r1, [r0, #8]!
003ccfc0  d9 ff ff eb                                      bl #0x3ccf2c
003ccfc4  04 30 9d e5                                      ldr r3, [sp, #4]
003ccfc8  00 00 84 e5                                      str r0, [r4]
003ccfcc  04 00 84 e5                                      str r0, [r4, #4]
003ccfd0  03 01 80 e0                                      add r0, r0, r3, lsl #2
003ccfd4  08 00 84 e5                                      str r0, [r4, #8]
003ccfd8  04 00 a0 e1                                      mov r0, r4
003ccfdc  08 d0 8d e2                                      add sp, sp, #8
003ccfe0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d2d60, declared_size=128, range_size=128, mode=arm
; class-group: std::vector<Character*, std::allocator<Character*> >
; alias: _ZNSt6vectorIP9CharacterSaIS1_EEC1ERKS3_
; demangled: std::vector<Character*, std::allocator<Character*> >::vector(std::vector<Character*, std::allocator<Character*> > const&)
; decoder-mode: arm
003d2d60  30 40 2d e9                                      push {r4, r5, lr}
003d2d64  01 50 a0 e1                                      mov r5, r1
003d2d68  00 30 95 e5                                      ldr r3, [r5]
003d2d6c  04 10 91 e5                                      ldr r1, [r1, #4]
003d2d70  0c d0 4d e2                                      sub sp, sp, #0xc
003d2d74  00 40 a0 e1                                      mov r4, r0
003d2d78  01 10 63 e0                                      rsb r1, r3, r1
003d2d7c  00 c0 a0 e3                                      mov ip, #0
003d2d80  41 11 a0 e1                                      asr r1, r1, #2
003d2d84  08 20 8d e2                                      add r2, sp, #8
003d2d88  04 10 22 e5                                      str r1, [r2, #-4]!
003d2d8c  00 c0 84 e5                                      str ip, [r4]
003d2d90  04 c0 84 e5                                      str ip, [r4, #4]
003d2d94  08 c0 a0 e5                                      str ip, [r0, #8]!
003d2d98  63 e8 ff eb                                      bl #0x3ccf2c
003d2d9c  04 20 9d e5                                      ldr r2, [sp, #4]
003d2da0  00 00 84 e5                                      str r0, [r4]
003d2da4  04 00 84 e5                                      str r0, [r4, #4]
003d2da8  02 21 80 e0                                      add r2, r0, r2, lsl #2
003d2dac  08 20 84 e5                                      str r2, [r4, #8]
003d2db0  06 00 95 e8                                      ldm r5, {r1, r2}
003d2db4  00 30 a0 e1                                      mov r3, r0
003d2db8  02 00 51 e1                                      cmp r1, r2
003d2dbc  03 00 00 0a                                      beq #0x3d2dd0
003d2dc0  02 50 61 e0                                      rsb r5, r1, r2
003d2dc4  05 20 a0 e1                                      mov r2, r5
003d2dc8  a6 ee fc eb                                      bl #0x30e868
003d2dcc  05 30 80 e0                                      add r3, r0, r5
003d2dd0  04 30 84 e5                                      str r3, [r4, #4]
003d2dd4  04 00 a0 e1                                      mov r0, r4
003d2dd8  0c d0 8d e2                                      add sp, sp, #0xc
003d2ddc  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x003d2e28, declared_size=200, range_size=200, mode=arm
; class-group: std::vector<Character*, std::allocator<Character*> >
; alias: _ZNSt6vectorIP9CharacterSaIS1_EE18_M_insert_overflowEPS1_RKS1_RKSt11__true_typejb.clone.2
; demangled: std::vector<Character*, std::allocator<Character*> >::_M_insert_overflow(Character**, Character* const&, std::__true_type const&, unsigned int, bool) [clone .clone.2]
; decoder-mode: arm
003d2e28  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003d2e2c  00 40 a0 e1                                      mov r4, r0
003d2e30  00 30 94 e5                                      ldr r3, [r4]
003d2e34  04 00 90 e5                                      ldr r0, [r0, #4]
003d2e38  01 60 a0 e1                                      mov r6, r1
003d2e3c  0c d0 4d e2                                      sub sp, sp, #0xc
003d2e40  00 30 63 e0                                      rsb r3, r3, r0
003d2e44  43 31 a0 e1                                      asr r3, r3, #2
003d2e48  01 00 53 e3                                      cmp r3, #1
003d2e4c  03 10 83 20                                      addhs r1, r3, r3
003d2e50  01 10 83 32                                      addlo r1, r3, #1
003d2e54  07 01 71 e3                                      cmn r1, #0xc0000001
003d2e58  02 70 a0 e1                                      mov r7, r2
003d2e5c  1b 00 00 8a                                      bhi #0x3d2ed0
003d2e60  01 00 53 e1                                      cmp r3, r1
003d2e64  19 00 00 8a                                      bhi #0x3d2ed0
003d2e68  08 20 8d e2                                      add r2, sp, #8
003d2e6c  04 10 22 e5                                      str r1, [r2, #-4]!
003d2e70  08 00 84 e2                                      add r0, r4, #8
003d2e74  2c e8 ff eb                                      bl #0x3ccf2c
003d2e78  00 10 94 e5                                      ldr r1, [r4]
003d2e7c  00 50 a0 e1                                      mov r5, r0
003d2e80  01 60 56 e0                                      subs r6, r6, r1
003d2e84  00 60 a0 01                                      moveq r6, r0
003d2e88  14 00 00 1a                                      bne #0x3d2ee0
003d2e8c  00 30 97 e5                                      ldr r3, [r7]
003d2e90  04 30 86 e4                                      str r3, [r6], #4
003d2e94  00 00 94 e5                                      ldr r0, [r4]
003d2e98  08 10 94 e5                                      ldr r1, [r4, #8]
003d2e9c  00 00 50 e3                                      cmp r0, #0
003d2ea0  04 00 00 0a                                      beq #0x3d2eb8
003d2ea4  01 10 60 e0                                      rsb r1, r0, r1
003d2ea8  03 10 c1 e3                                      bic r1, r1, #3
003d2eac  80 00 51 e3                                      cmp r1, #0x80
003d2eb0  08 00 00 8a                                      bhi #0x3d2ed8
003d2eb4  11 d8 0c eb                                      bl #0x708f00
003d2eb8  04 30 9d e5                                      ldr r3, [sp, #4]
003d2ebc  60 00 84 e8                                      stm r4, {r5, r6}
003d2ec0  03 51 85 e0                                      add r5, r5, r3, lsl #2
003d2ec4  08 50 84 e5                                      str r5, [r4, #8]
003d2ec8  0c d0 8d e2                                      add sp, sp, #0xc
003d2ecc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003d2ed0  03 11 e0 e3                                      mvn r1, #0xc0000000
003d2ed4  e3 ff ff ea                                      b #0x3d2e68
003d2ed8  58 f5 fc eb                                      bl #0x310440
003d2edc  f5 ff ff ea                                      b #0x3d2eb8
003d2ee0  06 20 a0 e1                                      mov r2, r6
003d2ee4  13 ec fc eb                                      bl #0x30df38
003d2ee8  06 60 80 e0                                      add r6, r0, r6
003d2eec  e6 ff ff ea                                      b #0x3d2e8c

; FUNCTION 0x003d5e14, declared_size=204, range_size=204, mode=arm
; class-group: std::vector<Character*, std::allocator<Character*> >
; alias: _ZNSt6vectorIP9CharacterSaIS1_EE7reserveEj
; demangled: std::vector<Character*, std::allocator<Character*> >::reserve(unsigned int)
; decoder-mode: arm
003d5e14  70 40 2d e9                                      push {r4, r5, r6, lr}
003d5e18  00 40 a0 e1                                      mov r4, r0
003d5e1c  00 20 90 e5                                      ldr r2, [r0]
003d5e20  08 00 90 e5                                      ldr r0, [r0, #8]
003d5e24  08 d0 4d e2                                      sub sp, sp, #8
003d5e28  04 10 8d e5                                      str r1, [sp, #4]
003d5e2c  00 00 62 e0                                      rsb r0, r2, r0
003d5e30  40 01 51 e1                                      cmp r1, r0, asr #2
003d5e34  19 00 00 9a                                      bls #0x3d5ea0
003d5e38  07 01 71 e3                                      cmn r1, #0xc0000001
003d5e3c  19 00 00 8a                                      bhi #0x3d5ea8
003d5e40  04 30 94 e5                                      ldr r3, [r4, #4]
003d5e44  00 00 52 e3                                      cmp r2, #0
003d5e48  03 50 62 e0                                      rsb r5, r2, r3
003d5e4c  45 51 a0 e1                                      asr r5, r5, #2
003d5e50  1b 00 00 0a                                      beq #0x3d5ec4
003d5e54  04 10 8d e2                                      add r1, sp, #4
003d5e58  04 00 a0 e1                                      mov r0, r4
003d5e5c  dd ff ff eb                                      bl #0x3d5dd8
003d5e60  00 60 a0 e1                                      mov r6, r0
003d5e64  00 00 94 e5                                      ldr r0, [r4]
003d5e68  08 10 94 e5                                      ldr r1, [r4, #8]
003d5e6c  00 00 50 e3                                      cmp r0, #0
003d5e70  04 00 00 0a                                      beq #0x3d5e88
003d5e74  01 10 60 e0                                      rsb r1, r0, r1
003d5e78  03 10 c1 e3                                      bic r1, r1, #3
003d5e7c  80 00 51 e3                                      cmp r1, #0x80
003d5e80  0d 00 00 8a                                      bhi #0x3d5ebc
003d5e84  1d cc 0c eb                                      bl #0x708f00
003d5e88  04 30 9d e5                                      ldr r3, [sp, #4]
003d5e8c  05 51 86 e0                                      add r5, r6, r5, lsl #2
003d5e90  04 50 84 e5                                      str r5, [r4, #4]
003d5e94  03 31 86 e0                                      add r3, r6, r3, lsl #2
003d5e98  08 30 84 e5                                      str r3, [r4, #8]
003d5e9c  00 60 84 e5                                      str r6, [r4]
003d5ea0  08 d0 8d e2                                      add sp, sp, #8
003d5ea4  70 80 bd e8                                      pop {r4, r5, r6, pc}
003d5ea8  2c 00 9f e5                                      ldr r0, [pc, #0x2c]
003d5eac  00 00 8f e0                                      add r0, pc, r0
003d5eb0  e2 cb 0c eb                                      bl #0x708e40
003d5eb4  00 20 94 e5                                      ldr r2, [r4]
003d5eb8  e0 ff ff ea                                      b #0x3d5e40
003d5ebc  5f e9 fc eb                                      bl #0x310440
003d5ec0  f0 ff ff ea                                      b #0x3d5e88
003d5ec4  08 20 8d e2                                      add r2, sp, #8
003d5ec8  04 10 32 e5                                      ldr r1, [r2, #-4]!
003d5ecc  08 00 84 e2                                      add r0, r4, #8
003d5ed0  15 dc ff eb                                      bl #0x3ccf2c
003d5ed4  00 60 a0 e1                                      mov r6, r0
003d5ed8  ea ff ff ea                                      b #0x3d5e88
; mapping-symbol data/literal pool
003d5edc  bc 85 4e 00                                      .byte 0xbc, 0x85, 0x4e, 0x00

; FUNCTION 0x003d5ee0, declared_size=200, range_size=200, mode=arm
; class-group: std::vector<Character*, std::allocator<Character*> >
; alias: _ZNSt6vectorIP9CharacterSaIS1_EE18_M_insert_overflowEPS1_RKS1_RKSt11__true_typejb.clone.1
; demangled: std::vector<Character*, std::allocator<Character*> >::_M_insert_overflow(Character**, Character* const&, std::__true_type const&, unsigned int, bool) [clone .clone.1]
; decoder-mode: arm
003d5ee0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003d5ee4  00 40 a0 e1                                      mov r4, r0
003d5ee8  00 30 94 e5                                      ldr r3, [r4]
003d5eec  04 00 90 e5                                      ldr r0, [r0, #4]
003d5ef0  01 60 a0 e1                                      mov r6, r1
003d5ef4  0c d0 4d e2                                      sub sp, sp, #0xc
003d5ef8  00 30 63 e0                                      rsb r3, r3, r0
003d5efc  43 31 a0 e1                                      asr r3, r3, #2
003d5f00  01 00 53 e3                                      cmp r3, #1
003d5f04  03 10 83 20                                      addhs r1, r3, r3
003d5f08  01 10 83 32                                      addlo r1, r3, #1
003d5f0c  07 01 71 e3                                      cmn r1, #0xc0000001
003d5f10  02 70 a0 e1                                      mov r7, r2
003d5f14  1b 00 00 8a                                      bhi #0x3d5f88
003d5f18  01 00 53 e1                                      cmp r3, r1
003d5f1c  19 00 00 8a                                      bhi #0x3d5f88
003d5f20  08 20 8d e2                                      add r2, sp, #8
003d5f24  04 10 22 e5                                      str r1, [r2, #-4]!
003d5f28  08 00 84 e2                                      add r0, r4, #8
003d5f2c  fe db ff eb                                      bl #0x3ccf2c
003d5f30  00 10 94 e5                                      ldr r1, [r4]
003d5f34  00 50 a0 e1                                      mov r5, r0
003d5f38  01 60 56 e0                                      subs r6, r6, r1
003d5f3c  00 60 a0 01                                      moveq r6, r0
003d5f40  14 00 00 1a                                      bne #0x3d5f98
003d5f44  00 30 97 e5                                      ldr r3, [r7]
003d5f48  04 30 86 e4                                      str r3, [r6], #4
003d5f4c  00 00 94 e5                                      ldr r0, [r4]
003d5f50  08 10 94 e5                                      ldr r1, [r4, #8]
003d5f54  00 00 50 e3                                      cmp r0, #0
003d5f58  04 00 00 0a                                      beq #0x3d5f70
003d5f5c  01 10 60 e0                                      rsb r1, r0, r1
003d5f60  03 10 c1 e3                                      bic r1, r1, #3
003d5f64  80 00 51 e3                                      cmp r1, #0x80
003d5f68  08 00 00 8a                                      bhi #0x3d5f90
003d5f6c  e3 cb 0c eb                                      bl #0x708f00
003d5f70  04 30 9d e5                                      ldr r3, [sp, #4]
003d5f74  60 00 84 e8                                      stm r4, {r5, r6}
003d5f78  03 51 85 e0                                      add r5, r5, r3, lsl #2
003d5f7c  08 50 84 e5                                      str r5, [r4, #8]
003d5f80  0c d0 8d e2                                      add sp, sp, #0xc
003d5f84  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003d5f88  03 11 e0 e3                                      mvn r1, #0xc0000000
003d5f8c  e3 ff ff ea                                      b #0x3d5f20
003d5f90  2a e9 fc eb                                      bl #0x310440
003d5f94  f5 ff ff ea                                      b #0x3d5f70
003d5f98  06 20 a0 e1                                      mov r2, r6
003d5f9c  e5 df fc eb                                      bl #0x30df38
003d5fa0  06 60 80 e0                                      add r6, r0, r6
003d5fa4  e6 ff ff ea                                      b #0x3d5f44
