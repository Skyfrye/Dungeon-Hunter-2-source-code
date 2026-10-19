; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003cd584, declared_size=204, range_size=204, mode=arm
; class-group: std::vector<CharAISkillScript*, std::allocator<CharAISkillScript*> >
; alias: _ZNSt6vectorIP17CharAISkillScriptSaIS1_EE7reserveEj
; demangled: std::vector<CharAISkillScript*, std::allocator<CharAISkillScript*> >::reserve(unsigned int)
; decoder-mode: arm
003cd584  70 40 2d e9                                      push {r4, r5, r6, lr}
003cd588  00 40 a0 e1                                      mov r4, r0
003cd58c  00 20 90 e5                                      ldr r2, [r0]
003cd590  08 00 90 e5                                      ldr r0, [r0, #8]
003cd594  08 d0 4d e2                                      sub sp, sp, #8
003cd598  04 10 8d e5                                      str r1, [sp, #4]
003cd59c  00 00 62 e0                                      rsb r0, r2, r0
003cd5a0  40 01 51 e1                                      cmp r1, r0, asr #2
003cd5a4  19 00 00 9a                                      bls #0x3cd610
003cd5a8  07 01 71 e3                                      cmn r1, #0xc0000001
003cd5ac  19 00 00 8a                                      bhi #0x3cd618
003cd5b0  04 30 94 e5                                      ldr r3, [r4, #4]
003cd5b4  00 00 52 e3                                      cmp r2, #0
003cd5b8  03 50 62 e0                                      rsb r5, r2, r3
003cd5bc  45 51 a0 e1                                      asr r5, r5, #2
003cd5c0  1b 00 00 0a                                      beq #0x3cd634
003cd5c4  04 10 8d e2                                      add r1, sp, #4
003cd5c8  04 00 a0 e1                                      mov r0, r4
003cd5cc  4f ff ff eb                                      bl #0x3cd310
003cd5d0  00 60 a0 e1                                      mov r6, r0
003cd5d4  00 00 94 e5                                      ldr r0, [r4]
003cd5d8  08 10 94 e5                                      ldr r1, [r4, #8]
003cd5dc  00 00 50 e3                                      cmp r0, #0
003cd5e0  04 00 00 0a                                      beq #0x3cd5f8
003cd5e4  01 10 60 e0                                      rsb r1, r0, r1
003cd5e8  03 10 c1 e3                                      bic r1, r1, #3
003cd5ec  80 00 51 e3                                      cmp r1, #0x80
003cd5f0  0d 00 00 8a                                      bhi #0x3cd62c
003cd5f4  41 ee 0c eb                                      bl #0x708f00
003cd5f8  04 30 9d e5                                      ldr r3, [sp, #4]
003cd5fc  05 51 86 e0                                      add r5, r6, r5, lsl #2
003cd600  04 50 84 e5                                      str r5, [r4, #4]
003cd604  03 31 86 e0                                      add r3, r6, r3, lsl #2
003cd608  08 30 84 e5                                      str r3, [r4, #8]
003cd60c  00 60 84 e5                                      str r6, [r4]
003cd610  08 d0 8d e2                                      add sp, sp, #8
003cd614  70 80 bd e8                                      pop {r4, r5, r6, pc}
003cd618  2c 00 9f e5                                      ldr r0, [pc, #0x2c]
003cd61c  00 00 8f e0                                      add r0, pc, r0
003cd620  06 ee 0c eb                                      bl #0x708e40
003cd624  00 20 94 e5                                      ldr r2, [r4]
003cd628  e0 ff ff ea                                      b #0x3cd5b0
003cd62c  83 0b fd eb                                      bl #0x310440
003cd630  f0 ff ff ea                                      b #0x3cd5f8
003cd634  08 20 8d e2                                      add r2, sp, #8
003cd638  04 10 32 e5                                      ldr r1, [r2, #-4]!
003cd63c  08 00 84 e2                                      add r0, r4, #8
003cd640  16 ff ff eb                                      bl #0x3cd2a0
003cd644  00 60 a0 e1                                      mov r6, r0
003cd648  ea ff ff ea                                      b #0x3cd5f8
; mapping-symbol data/literal pool
003cd64c  4c 0e 4f 00                                      .byte 0x4c, 0x0e, 0x4f, 0x00

; FUNCTION 0x003cd89c, declared_size=200, range_size=200, mode=arm
; class-group: std::vector<CharAISkillScript*, std::allocator<CharAISkillScript*> >
; alias: _ZNSt6vectorIP17CharAISkillScriptSaIS1_EE18_M_insert_overflowEPS1_RKS1_RKSt11__true_typejb.clone.16
; demangled: std::vector<CharAISkillScript*, std::allocator<CharAISkillScript*> >::_M_insert_overflow(CharAISkillScript**, CharAISkillScript* const&, std::__true_type const&, unsigned int, bool) [clone .clone.16]
; decoder-mode: arm
003cd89c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003cd8a0  00 40 a0 e1                                      mov r4, r0
003cd8a4  00 30 94 e5                                      ldr r3, [r4]
003cd8a8  04 00 90 e5                                      ldr r0, [r0, #4]
003cd8ac  01 60 a0 e1                                      mov r6, r1
003cd8b0  0c d0 4d e2                                      sub sp, sp, #0xc
003cd8b4  00 30 63 e0                                      rsb r3, r3, r0
003cd8b8  43 31 a0 e1                                      asr r3, r3, #2
003cd8bc  01 00 53 e3                                      cmp r3, #1
003cd8c0  03 10 83 20                                      addhs r1, r3, r3
003cd8c4  01 10 83 32                                      addlo r1, r3, #1
003cd8c8  07 01 71 e3                                      cmn r1, #0xc0000001
003cd8cc  02 70 a0 e1                                      mov r7, r2
003cd8d0  1b 00 00 8a                                      bhi #0x3cd944
003cd8d4  01 00 53 e1                                      cmp r3, r1
003cd8d8  19 00 00 8a                                      bhi #0x3cd944
003cd8dc  08 20 8d e2                                      add r2, sp, #8
003cd8e0  04 10 22 e5                                      str r1, [r2, #-4]!
003cd8e4  08 00 84 e2                                      add r0, r4, #8
003cd8e8  6c fe ff eb                                      bl #0x3cd2a0
003cd8ec  00 10 94 e5                                      ldr r1, [r4]
003cd8f0  00 50 a0 e1                                      mov r5, r0
003cd8f4  01 60 56 e0                                      subs r6, r6, r1
003cd8f8  00 60 a0 01                                      moveq r6, r0
003cd8fc  14 00 00 1a                                      bne #0x3cd954
003cd900  00 30 97 e5                                      ldr r3, [r7]
003cd904  04 30 86 e4                                      str r3, [r6], #4
003cd908  00 00 94 e5                                      ldr r0, [r4]
003cd90c  08 10 94 e5                                      ldr r1, [r4, #8]
003cd910  00 00 50 e3                                      cmp r0, #0
003cd914  04 00 00 0a                                      beq #0x3cd92c
003cd918  01 10 60 e0                                      rsb r1, r0, r1
003cd91c  03 10 c1 e3                                      bic r1, r1, #3
003cd920  80 00 51 e3                                      cmp r1, #0x80
003cd924  08 00 00 8a                                      bhi #0x3cd94c
003cd928  74 ed 0c eb                                      bl #0x708f00
003cd92c  04 30 9d e5                                      ldr r3, [sp, #4]
003cd930  60 00 84 e8                                      stm r4, {r5, r6}
003cd934  03 51 85 e0                                      add r5, r5, r3, lsl #2
003cd938  08 50 84 e5                                      str r5, [r4, #8]
003cd93c  0c d0 8d e2                                      add sp, sp, #0xc
003cd940  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003cd944  03 11 e0 e3                                      mvn r1, #0xc0000000
003cd948  e3 ff ff ea                                      b #0x3cd8dc
003cd94c  bb 0a fd eb                                      bl #0x310440
003cd950  f5 ff ff ea                                      b #0x3cd92c
003cd954  06 20 a0 e1                                      mov r2, r6
003cd958  76 01 fd eb                                      bl #0x30df38
003cd95c  06 60 80 e0                                      add r6, r0, r6
003cd960  e6 ff ff ea                                      b #0x3cd900
