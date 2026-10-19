; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003ccaf4, declared_size=240, range_size=240, mode=arm
; class-group: void CharAI
; alias: _ZN6CharAI9SetScriptI11AISExternalEEvv
; demangled: void CharAI::SetScript<AISExternal>()
; decoder-mode: arm
003ccaf4  30 40 2d e9                                      push {r4, r5, lr}
003ccaf8  04 20 90 e5                                      ldr r2, [r0, #4]
003ccafc  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
003ccb00  0c d0 4d e2                                      sub sp, sp, #0xc
003ccb04  00 00 52 e3                                      cmp r2, #0
003ccb08  00 40 a0 e1                                      mov r4, r0
003ccb0c  03 30 8f e0                                      add r3, pc, r3
003ccb10  18 00 00 0a                                      beq #0x3ccb78
003ccb14  20 30 94 e5                                      ldr r3, [r4, #0x20]
003ccb18  00 00 53 e3                                      cmp r3, #0
003ccb1c  0c 00 00 0a                                      beq #0x3ccb54
003ccb20  00 30 94 e5                                      ldr r3, [r4]
003ccb24  04 00 a0 e1                                      mov r0, r4
003ccb28  0f e0 a0 e1                                      mov lr, pc
003ccb2c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
003ccb30  20 30 94 e5                                      ldr r3, [r4, #0x20]
003ccb34  00 00 53 e3                                      cmp r3, #0
003ccb38  05 00 00 0a                                      beq #0x3ccb54
003ccb3c  03 00 a0 e1                                      mov r0, r3
003ccb40  00 30 93 e5                                      ldr r3, [r3]
003ccb44  0f e0 a0 e1                                      mov lr, pc
003ccb48  04 f0 93 e5                                      ldr pc, [r3, #4]
003ccb4c  00 30 a0 e3                                      mov r3, #0
003ccb50  20 30 84 e5                                      str r3, [r4, #0x20]
003ccb54  00 10 a0 e3                                      mov r1, #0
003ccb58  c4 00 a0 e3                                      mov r0, #0xc4
003ccb5c  83 0e fd eb                                      bl #0x310570
003ccb60  01 10 a0 e3                                      mov r1, #1
003ccb64  00 50 a0 e1                                      mov r5, r0
003ccb68  5d 41 00 eb                                      bl #0x3dd0e4
003ccb6c  20 50 84 e5                                      str r5, [r4, #0x20]
003ccb70  0c d0 8d e2                                      add sp, sp, #0xc
003ccb74  30 80 bd e8                                      pop {r4, r5, pc}
003ccb78  50 10 9f e5                                      ldr r1, [pc, #0x50]
003ccb7c  01 10 93 e7                                      ldr r1, [r3, r1]
003ccb80  00 10 91 e5                                      ldr r1, [r1]
003ccb84  02 00 51 e3                                      cmp r1, #2
003ccb88  00 20 82 05                                      streq r2, [r2]
003ccb8c  e0 ff ff 0a                                      beq #0x3ccb14
003ccb90  01 00 51 e3                                      cmp r1, #1
003ccb94  de ff ff 1a                                      bne #0x3ccb14
003ccb98  34 00 9f e5                                      ldr r0, [pc, #0x34]
003ccb9c  34 10 9f e5                                      ldr r1, [pc, #0x34]
003ccba0  34 20 9f e5                                      ldr r2, [pc, #0x34]
003ccba4  00 00 93 e7                                      ldr r0, [r3, r0]
003ccba8  30 30 9f e5                                      ldr r3, [pc, #0x30]
003ccbac  a1 c2 00 e3                                      movw ip, #0x2a1
003ccbb0  01 10 8f e0                                      add r1, pc, r1
003ccbb4  02 20 8f e0                                      add r2, pc, r2
003ccbb8  03 30 8f e0                                      add r3, pc, r3
003ccbbc  a8 00 80 e2                                      add r0, r0, #0xa8
003ccbc0  00 c0 8d e5                                      str ip, [sp]
003ccbc4  0e 05 fd eb                                      bl #0x30e004
003ccbc8  d1 ff ff ea                                      b #0x3ccb14
; mapping-symbol data/literal pool
003ccbcc  84 7f 5c 00 c0 39 00 00 c0 19 00 00 28 18 4f 00  .byte 0x84, 0x7f, 0x5c, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x28, 0x18, 0x4f, 0x00
003ccbdc  9c 86 4f 00 e8 86 4f 00                          .byte 0x9c, 0x86, 0x4f, 0x00, 0xe8, 0x86, 0x4f, 0x00

; FUNCTION 0x003ccbe4, declared_size=276, range_size=276, mode=arm
; class-group: void CharAI
; alias: _ZN6CharAI9SetScriptI10AISMonsterEEvv
; demangled: void CharAI::SetScript<AISMonster>()
; decoder-mode: arm
003ccbe4  70 40 2d e9                                      push {r4, r5, r6, lr}
003ccbe8  04 30 90 e5                                      ldr r3, [r0, #4]
003ccbec  e8 50 9f e5                                      ldr r5, [pc, #0xe8]
003ccbf0  08 d0 4d e2                                      sub sp, sp, #8
003ccbf4  00 00 53 e3                                      cmp r3, #0
003ccbf8  00 40 a0 e1                                      mov r4, r0
003ccbfc  05 50 8f e0                                      add r5, pc, r5
003ccc00  20 00 00 0a                                      beq #0x3ccc88
003ccc04  20 30 94 e5                                      ldr r3, [r4, #0x20]
003ccc08  00 00 53 e3                                      cmp r3, #0
003ccc0c  0c 00 00 0a                                      beq #0x3ccc44
003ccc10  00 30 94 e5                                      ldr r3, [r4]
003ccc14  04 00 a0 e1                                      mov r0, r4
003ccc18  0f e0 a0 e1                                      mov lr, pc
003ccc1c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
003ccc20  20 30 94 e5                                      ldr r3, [r4, #0x20]
003ccc24  00 00 53 e3                                      cmp r3, #0
003ccc28  05 00 00 0a                                      beq #0x3ccc44
003ccc2c  03 00 a0 e1                                      mov r0, r3
003ccc30  00 30 93 e5                                      ldr r3, [r3]
003ccc34  0f e0 a0 e1                                      mov lr, pc
003ccc38  04 f0 93 e5                                      ldr pc, [r3, #4]
003ccc3c  00 30 a0 e3                                      mov r3, #0
003ccc40  20 30 84 e5                                      str r3, [r4, #0x20]
003ccc44  00 10 a0 e3                                      mov r1, #0
003ccc48  c4 00 a0 e3                                      mov r0, #0xc4
003ccc4c  47 0e fd eb                                      bl #0x310570
003ccc50  01 10 a0 e3                                      mov r1, #1
003ccc54  00 60 a0 e1                                      mov r6, r0
003ccc58  d4 30 00 eb                                      bl #0x3d8fb0
003ccc5c  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
003ccc60  00 20 a0 e3                                      mov r2, #0
003ccc64  c0 20 86 e5                                      str r2, [r6, #0xc0]
003ccc68  03 30 95 e7                                      ldr r3, [r5, r3]
003ccc6c  b8 20 86 e5                                      str r2, [r6, #0xb8]
003ccc70  bc 20 86 e5                                      str r2, [r6, #0xbc]
003ccc74  08 30 83 e2                                      add r3, r3, #8
003ccc78  00 30 86 e5                                      str r3, [r6]
003ccc7c  20 60 84 e5                                      str r6, [r4, #0x20]
003ccc80  08 d0 8d e2                                      add sp, sp, #8
003ccc84  70 80 bd e8                                      pop {r4, r5, r6, pc}
003ccc88  54 20 9f e5                                      ldr r2, [pc, #0x54]
003ccc8c  02 20 95 e7                                      ldr r2, [r5, r2]
003ccc90  00 20 92 e5                                      ldr r2, [r2]
003ccc94  02 00 52 e3                                      cmp r2, #2
003ccc98  00 30 83 05                                      streq r3, [r3]
003ccc9c  d8 ff ff 0a                                      beq #0x3ccc04
003ccca0  01 00 52 e3                                      cmp r2, #1
003ccca4  d6 ff ff 1a                                      bne #0x3ccc04
003ccca8  38 00 9f e5                                      ldr r0, [pc, #0x38]
003cccac  38 10 9f e5                                      ldr r1, [pc, #0x38]
003cccb0  38 20 9f e5                                      ldr r2, [pc, #0x38]
003cccb4  00 00 95 e7                                      ldr r0, [r5, r0]
003cccb8  34 30 9f e5                                      ldr r3, [pc, #0x34]
003cccbc  a1 c2 00 e3                                      movw ip, #0x2a1
003cccc0  01 10 8f e0                                      add r1, pc, r1
003cccc4  02 20 8f e0                                      add r2, pc, r2
003cccc8  03 30 8f e0                                      add r3, pc, r3
003ccccc  a8 00 80 e2                                      add r0, r0, #0xa8
003cccd0  00 c0 8d e5                                      str ip, [sp]
003cccd4  ca 04 fd eb                                      bl #0x30e004
003cccd8  c9 ff ff ea                                      b #0x3ccc04
; mapping-symbol data/literal pool
003cccdc  94 7e 5c 00 94 37 00 00 c0 39 00 00 c0 19 00 00  .byte 0x94, 0x7e, 0x5c, 0x00, 0x94, 0x37, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
003cccec  18 17 4f 00 8c 85 4f 00 d8 85 4f 00              .byte 0x18, 0x17, 0x4f, 0x00, 0x8c, 0x85, 0x4f, 0x00, 0xd8, 0x85, 0x4f, 0x00

; FUNCTION 0x003cccf8, declared_size=284, range_size=284, mode=arm
; class-group: void CharAI
; alias: _ZN6CharAI9SetScriptI8AISFaeryEEvv
; demangled: void CharAI::SetScript<AISFaery>()
; decoder-mode: arm
003cccf8  70 40 2d e9                                      push {r4, r5, r6, lr}
003cccfc  04 30 90 e5                                      ldr r3, [r0, #4]
003ccd00  f0 50 9f e5                                      ldr r5, [pc, #0xf0]
003ccd04  08 d0 4d e2                                      sub sp, sp, #8
003ccd08  00 00 53 e3                                      cmp r3, #0
003ccd0c  00 40 a0 e1                                      mov r4, r0
003ccd10  05 50 8f e0                                      add r5, pc, r5
003ccd14  22 00 00 0a                                      beq #0x3ccda4
003ccd18  20 30 94 e5                                      ldr r3, [r4, #0x20]
003ccd1c  00 00 53 e3                                      cmp r3, #0
003ccd20  0c 00 00 0a                                      beq #0x3ccd58
003ccd24  00 30 94 e5                                      ldr r3, [r4]
003ccd28  04 00 a0 e1                                      mov r0, r4
003ccd2c  0f e0 a0 e1                                      mov lr, pc
003ccd30  14 f0 93 e5                                      ldr pc, [r3, #0x14]
003ccd34  20 30 94 e5                                      ldr r3, [r4, #0x20]
003ccd38  00 00 53 e3                                      cmp r3, #0
003ccd3c  05 00 00 0a                                      beq #0x3ccd58
003ccd40  03 00 a0 e1                                      mov r0, r3
003ccd44  00 30 93 e5                                      ldr r3, [r3]
003ccd48  0f e0 a0 e1                                      mov lr, pc
003ccd4c  04 f0 93 e5                                      ldr pc, [r3, #4]
003ccd50  00 30 a0 e3                                      mov r3, #0
003ccd54  20 30 84 e5                                      str r3, [r4, #0x20]
003ccd58  00 10 a0 e3                                      mov r1, #0
003ccd5c  c8 00 a0 e3                                      mov r0, #0xc8
003ccd60  02 0e fd eb                                      bl #0x310570
003ccd64  01 10 a0 e3                                      mov r1, #1
003ccd68  00 60 a0 e1                                      mov r6, r0
003ccd6c  8f 30 00 eb                                      bl #0x3d8fb0
003ccd70  84 20 9f e5                                      ldr r2, [pc, #0x84]
003ccd74  00 30 a0 e3                                      mov r3, #0
003ccd78  00 10 e0 e3                                      mvn r1, #0
003ccd7c  02 20 95 e7                                      ldr r2, [r5, r2]
003ccd80  c0 30 86 e5                                      str r3, [r6, #0xc0]
003ccd84  c4 10 86 e5                                      str r1, [r6, #0xc4]
003ccd88  08 20 82 e2                                      add r2, r2, #8
003ccd8c  00 20 86 e5                                      str r2, [r6]
003ccd90  b8 30 86 e5                                      str r3, [r6, #0xb8]
003ccd94  bc 30 86 e5                                      str r3, [r6, #0xbc]
003ccd98  20 60 84 e5                                      str r6, [r4, #0x20]
003ccd9c  08 d0 8d e2                                      add sp, sp, #8
003ccda0  70 80 bd e8                                      pop {r4, r5, r6, pc}
003ccda4  54 20 9f e5                                      ldr r2, [pc, #0x54]
003ccda8  02 20 95 e7                                      ldr r2, [r5, r2]
003ccdac  00 20 92 e5                                      ldr r2, [r2]
003ccdb0  02 00 52 e3                                      cmp r2, #2
003ccdb4  00 30 83 05                                      streq r3, [r3]
003ccdb8  d6 ff ff 0a                                      beq #0x3ccd18
003ccdbc  01 00 52 e3                                      cmp r2, #1
003ccdc0  d4 ff ff 1a                                      bne #0x3ccd18
003ccdc4  38 00 9f e5                                      ldr r0, [pc, #0x38]
003ccdc8  38 10 9f e5                                      ldr r1, [pc, #0x38]
003ccdcc  38 20 9f e5                                      ldr r2, [pc, #0x38]
003ccdd0  00 00 95 e7                                      ldr r0, [r5, r0]
003ccdd4  34 30 9f e5                                      ldr r3, [pc, #0x34]
003ccdd8  a1 c2 00 e3                                      movw ip, #0x2a1
003ccddc  01 10 8f e0                                      add r1, pc, r1
003ccde0  02 20 8f e0                                      add r2, pc, r2
003ccde4  03 30 8f e0                                      add r3, pc, r3
003ccde8  a8 00 80 e2                                      add r0, r0, #0xa8
003ccdec  00 c0 8d e5                                      str ip, [sp]
003ccdf0  83 04 fd eb                                      bl #0x30e004
003ccdf4  c7 ff ff ea                                      b #0x3ccd18
; mapping-symbol data/literal pool
003ccdf8  80 7d 5c 00 34 49 00 00 c0 39 00 00 c0 19 00 00  .byte 0x80, 0x7d, 0x5c, 0x00, 0x34, 0x49, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
003cce08  fc 15 4f 00 70 84 4f 00 bc 84 4f 00              .byte 0xfc, 0x15, 0x4f, 0x00, 0x70, 0x84, 0x4f, 0x00, 0xbc, 0x84, 0x4f, 0x00

; FUNCTION 0x003cce14, declared_size=276, range_size=276, mode=arm
; class-group: void CharAI
; alias: _ZN6CharAI9SetScriptI10AISDefaultEEvv
; demangled: void CharAI::SetScript<AISDefault>()
; decoder-mode: arm
003cce14  70 40 2d e9                                      push {r4, r5, r6, lr}
003cce18  04 30 90 e5                                      ldr r3, [r0, #4]
003cce1c  e8 50 9f e5                                      ldr r5, [pc, #0xe8]
003cce20  08 d0 4d e2                                      sub sp, sp, #8
003cce24  00 00 53 e3                                      cmp r3, #0
003cce28  00 40 a0 e1                                      mov r4, r0
003cce2c  05 50 8f e0                                      add r5, pc, r5
003cce30  20 00 00 0a                                      beq #0x3cceb8
003cce34  20 30 94 e5                                      ldr r3, [r4, #0x20]
003cce38  00 00 53 e3                                      cmp r3, #0
003cce3c  0c 00 00 0a                                      beq #0x3cce74
003cce40  00 30 94 e5                                      ldr r3, [r4]
003cce44  04 00 a0 e1                                      mov r0, r4
003cce48  0f e0 a0 e1                                      mov lr, pc
003cce4c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
003cce50  20 30 94 e5                                      ldr r3, [r4, #0x20]
003cce54  00 00 53 e3                                      cmp r3, #0
003cce58  05 00 00 0a                                      beq #0x3cce74
003cce5c  03 00 a0 e1                                      mov r0, r3
003cce60  00 30 93 e5                                      ldr r3, [r3]
003cce64  0f e0 a0 e1                                      mov lr, pc
003cce68  04 f0 93 e5                                      ldr pc, [r3, #4]
003cce6c  00 30 a0 e3                                      mov r3, #0
003cce70  20 30 84 e5                                      str r3, [r4, #0x20]
003cce74  00 10 a0 e3                                      mov r1, #0
003cce78  c4 00 a0 e3                                      mov r0, #0xc4
003cce7c  bb 0d fd eb                                      bl #0x310570
003cce80  01 10 a0 e3                                      mov r1, #1
003cce84  00 60 a0 e1                                      mov r6, r0
003cce88  48 30 00 eb                                      bl #0x3d8fb0
003cce8c  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
003cce90  00 20 a0 e3                                      mov r2, #0
003cce94  c0 20 86 e5                                      str r2, [r6, #0xc0]
003cce98  03 30 95 e7                                      ldr r3, [r5, r3]
003cce9c  b8 20 86 e5                                      str r2, [r6, #0xb8]
003ccea0  bc 20 86 e5                                      str r2, [r6, #0xbc]
003ccea4  08 30 83 e2                                      add r3, r3, #8
003ccea8  00 30 86 e5                                      str r3, [r6]
003cceac  20 60 84 e5                                      str r6, [r4, #0x20]
003cceb0  08 d0 8d e2                                      add sp, sp, #8
003cceb4  70 80 bd e8                                      pop {r4, r5, r6, pc}
003cceb8  54 20 9f e5                                      ldr r2, [pc, #0x54]
003ccebc  02 20 95 e7                                      ldr r2, [r5, r2]
003ccec0  00 20 92 e5                                      ldr r2, [r2]
003ccec4  02 00 52 e3                                      cmp r2, #2
003ccec8  00 30 83 05                                      streq r3, [r3]
003ccecc  d8 ff ff 0a                                      beq #0x3cce34
003cced0  01 00 52 e3                                      cmp r2, #1
003cced4  d6 ff ff 1a                                      bne #0x3cce34
003cced8  38 00 9f e5                                      ldr r0, [pc, #0x38]
003ccedc  38 10 9f e5                                      ldr r1, [pc, #0x38]
003ccee0  38 20 9f e5                                      ldr r2, [pc, #0x38]
003ccee4  00 00 95 e7                                      ldr r0, [r5, r0]
003ccee8  34 30 9f e5                                      ldr r3, [pc, #0x34]
003cceec  a1 c2 00 e3                                      movw ip, #0x2a1
003ccef0  01 10 8f e0                                      add r1, pc, r1
003ccef4  02 20 8f e0                                      add r2, pc, r2
003ccef8  03 30 8f e0                                      add r3, pc, r3
003ccefc  a8 00 80 e2                                      add r0, r0, #0xa8
003ccf00  00 c0 8d e5                                      str ip, [sp]
003ccf04  3e 04 fd eb                                      bl #0x30e004
003ccf08  c9 ff ff ea                                      b #0x3cce34
; mapping-symbol data/literal pool
003ccf0c  64 7c 5c 00 ac 2a 00 00 c0 39 00 00 c0 19 00 00  .byte 0x64, 0x7c, 0x5c, 0x00, 0xac, 0x2a, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
003ccf1c  e8 14 4f 00 5c 83 4f 00 a8 83 4f 00              .byte 0xe8, 0x14, 0x4f, 0x00, 0x5c, 0x83, 0x4f, 0x00, 0xa8, 0x83, 0x4f, 0x00

; FUNCTION 0x003ccfe4, declared_size=312, range_size=312, mode=arm
; class-group: void CharAI
; alias: _ZN6CharAI9SetScriptI15AISPlayerIPhoneEEvv
; demangled: void CharAI::SetScript<AISPlayerIPhone>()
; decoder-mode: arm
003ccfe4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003ccfe8  04 30 90 e5                                      ldr r3, [r0, #4]
003ccfec  08 51 9f e5                                      ldr r5, [pc, #0x108]
003ccff0  0c d0 4d e2                                      sub sp, sp, #0xc
003ccff4  00 00 53 e3                                      cmp r3, #0
003ccff8  00 40 a0 e1                                      mov r4, r0
003ccffc  05 50 8f e0                                      add r5, pc, r5
003cd000  28 00 00 0a                                      beq #0x3cd0a8
003cd004  20 30 94 e5                                      ldr r3, [r4, #0x20]
003cd008  00 00 53 e3                                      cmp r3, #0
003cd00c  0c 00 00 0a                                      beq #0x3cd044
003cd010  00 30 94 e5                                      ldr r3, [r4]
003cd014  04 00 a0 e1                                      mov r0, r4
003cd018  0f e0 a0 e1                                      mov lr, pc
003cd01c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
003cd020  20 30 94 e5                                      ldr r3, [r4, #0x20]
003cd024  00 00 53 e3                                      cmp r3, #0
003cd028  05 00 00 0a                                      beq #0x3cd044
003cd02c  03 00 a0 e1                                      mov r0, r3
003cd030  00 30 93 e5                                      ldr r3, [r3]
003cd034  0f e0 a0 e1                                      mov lr, pc
003cd038  04 f0 93 e5                                      ldr pc, [r3, #4]
003cd03c  00 30 a0 e3                                      mov r3, #0
003cd040  20 30 84 e5                                      str r3, [r4, #0x20]
003cd044  00 10 a0 e3                                      mov r1, #0
003cd048  d8 00 a0 e3                                      mov r0, #0xd8
003cd04c  47 0d fd eb                                      bl #0x310570
003cd050  01 10 a0 e3                                      mov r1, #1
003cd054  00 60 a0 e1                                      mov r6, r0
003cd058  d4 2f 00 eb                                      bl #0x3d8fb0
003cd05c  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
003cd060  00 70 a0 e3                                      mov r7, #0
003cd064  06 00 a0 e1                                      mov r0, r6
003cd068  03 30 95 e7                                      ldr r3, [r5, r3]
003cd06c  b8 70 86 e5                                      str r7, [r6, #0xb8]
003cd070  bc 70 86 e5                                      str r7, [r6, #0xbc]
003cd074  08 30 83 e2                                      add r3, r3, #8
003cd078  c0 70 86 e5                                      str r7, [r6, #0xc0]
003cd07c  c4 30 80 e4                                      str r3, [r0], #0xc4
003cd080  c5 ff ff eb                                      bl #0x3ccf9c
003cd084  78 30 9f e5                                      ldr r3, [pc, #0x78]
003cd088  d4 70 86 e5                                      str r7, [r6, #0xd4]
003cd08c  d0 70 86 e5                                      str r7, [r6, #0xd0]
003cd090  03 30 95 e7                                      ldr r3, [r5, r3]
003cd094  08 30 83 e2                                      add r3, r3, #8
003cd098  00 30 86 e5                                      str r3, [r6]
003cd09c  20 60 84 e5                                      str r6, [r4, #0x20]
003cd0a0  0c d0 8d e2                                      add sp, sp, #0xc
003cd0a4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003cd0a8  58 20 9f e5                                      ldr r2, [pc, #0x58]
003cd0ac  02 20 95 e7                                      ldr r2, [r5, r2]
003cd0b0  00 20 92 e5                                      ldr r2, [r2]
003cd0b4  02 00 52 e3                                      cmp r2, #2
003cd0b8  00 30 83 05                                      streq r3, [r3]
003cd0bc  d0 ff ff 0a                                      beq #0x3cd004
003cd0c0  01 00 52 e3                                      cmp r2, #1
003cd0c4  ce ff ff 1a                                      bne #0x3cd004
003cd0c8  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
003cd0cc  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
003cd0d0  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
003cd0d4  00 00 95 e7                                      ldr r0, [r5, r0]
003cd0d8  38 30 9f e5                                      ldr r3, [pc, #0x38]
003cd0dc  a1 c2 00 e3                                      movw ip, #0x2a1
003cd0e0  01 10 8f e0                                      add r1, pc, r1
003cd0e4  02 20 8f e0                                      add r2, pc, r2
003cd0e8  03 30 8f e0                                      add r3, pc, r3
003cd0ec  a8 00 80 e2                                      add r0, r0, #0xa8
003cd0f0  00 c0 8d e5                                      str ip, [sp]
003cd0f4  c2 03 fd eb                                      bl #0x30e004
003cd0f8  c1 ff ff ea                                      b #0x3cd004
; mapping-symbol data/literal pool
003cd0fc  94 7a 5c 00 10 1b 00 00 cc 17 00 00 c0 39 00 00  .byte 0x94, 0x7a, 0x5c, 0x00, 0x10, 0x1b, 0x00, 0x00, 0xcc, 0x17, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
003cd10c  c0 19 00 00 f8 12 4f 00 6c 81 4f 00 b8 81 4f 00  .byte 0xc0, 0x19, 0x00, 0x00, 0xf8, 0x12, 0x4f, 0x00, 0x6c, 0x81, 0x4f, 0x00, 0xb8, 0x81, 0x4f, 0x00

; FUNCTION 0x003cd11c, declared_size=292, range_size=292, mode=arm
; class-group: void CharAI
; alias: _ZN6CharAI9SetScriptI9AISPlayerEEvv
; demangled: void CharAI::SetScript<AISPlayer>()
; decoder-mode: arm
003cd11c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003cd120  04 30 90 e5                                      ldr r3, [r0, #4]
003cd124  f8 50 9f e5                                      ldr r5, [pc, #0xf8]
003cd128  0c d0 4d e2                                      sub sp, sp, #0xc
003cd12c  00 00 53 e3                                      cmp r3, #0
003cd130  00 40 a0 e1                                      mov r4, r0
003cd134  05 50 8f e0                                      add r5, pc, r5
003cd138  24 00 00 0a                                      beq #0x3cd1d0
003cd13c  20 30 94 e5                                      ldr r3, [r4, #0x20]
003cd140  00 00 53 e3                                      cmp r3, #0
003cd144  0c 00 00 0a                                      beq #0x3cd17c
003cd148  00 30 94 e5                                      ldr r3, [r4]
003cd14c  04 00 a0 e1                                      mov r0, r4
003cd150  0f e0 a0 e1                                      mov lr, pc
003cd154  14 f0 93 e5                                      ldr pc, [r3, #0x14]
003cd158  20 30 94 e5                                      ldr r3, [r4, #0x20]
003cd15c  00 00 53 e3                                      cmp r3, #0
003cd160  05 00 00 0a                                      beq #0x3cd17c
003cd164  03 00 a0 e1                                      mov r0, r3
003cd168  00 30 93 e5                                      ldr r3, [r3]
003cd16c  0f e0 a0 e1                                      mov lr, pc
003cd170  04 f0 93 e5                                      ldr pc, [r3, #4]
003cd174  00 30 a0 e3                                      mov r3, #0
003cd178  20 30 84 e5                                      str r3, [r4, #0x20]
003cd17c  00 10 a0 e3                                      mov r1, #0
003cd180  d8 00 a0 e3                                      mov r0, #0xd8
003cd184  f9 0c fd eb                                      bl #0x310570
003cd188  01 10 a0 e3                                      mov r1, #1
003cd18c  00 60 a0 e1                                      mov r6, r0
003cd190  86 2f 00 eb                                      bl #0x3d8fb0
003cd194  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
003cd198  00 70 a0 e3                                      mov r7, #0
003cd19c  06 00 a0 e1                                      mov r0, r6
003cd1a0  03 30 95 e7                                      ldr r3, [r5, r3]
003cd1a4  b8 70 86 e5                                      str r7, [r6, #0xb8]
003cd1a8  bc 70 86 e5                                      str r7, [r6, #0xbc]
003cd1ac  08 30 83 e2                                      add r3, r3, #8
003cd1b0  c0 70 86 e5                                      str r7, [r6, #0xc0]
003cd1b4  c4 30 80 e4                                      str r3, [r0], #0xc4
003cd1b8  77 ff ff eb                                      bl #0x3ccf9c
003cd1bc  d4 70 86 e5                                      str r7, [r6, #0xd4]
003cd1c0  d0 70 86 e5                                      str r7, [r6, #0xd0]
003cd1c4  20 60 84 e5                                      str r6, [r4, #0x20]
003cd1c8  0c d0 8d e2                                      add sp, sp, #0xc
003cd1cc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003cd1d0  54 20 9f e5                                      ldr r2, [pc, #0x54]
003cd1d4  02 20 95 e7                                      ldr r2, [r5, r2]
003cd1d8  00 20 92 e5                                      ldr r2, [r2]
003cd1dc  02 00 52 e3                                      cmp r2, #2
003cd1e0  00 30 83 05                                      streq r3, [r3]
003cd1e4  d4 ff ff 0a                                      beq #0x3cd13c
003cd1e8  01 00 52 e3                                      cmp r2, #1
003cd1ec  d2 ff ff 1a                                      bne #0x3cd13c
003cd1f0  38 00 9f e5                                      ldr r0, [pc, #0x38]
003cd1f4  38 10 9f e5                                      ldr r1, [pc, #0x38]
003cd1f8  38 20 9f e5                                      ldr r2, [pc, #0x38]
003cd1fc  00 00 95 e7                                      ldr r0, [r5, r0]
003cd200  34 30 9f e5                                      ldr r3, [pc, #0x34]
003cd204  a1 c2 00 e3                                      movw ip, #0x2a1
003cd208  01 10 8f e0                                      add r1, pc, r1
003cd20c  02 20 8f e0                                      add r2, pc, r2
003cd210  03 30 8f e0                                      add r3, pc, r3
003cd214  a8 00 80 e2                                      add r0, r0, #0xa8
003cd218  00 c0 8d e5                                      str ip, [sp]
003cd21c  78 03 fd eb                                      bl #0x30e004
003cd220  c5 ff ff ea                                      b #0x3cd13c
; mapping-symbol data/literal pool
003cd224  5c 79 5c 00 10 1b 00 00 c0 39 00 00 c0 19 00 00  .byte 0x5c, 0x79, 0x5c, 0x00, 0x10, 0x1b, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
003cd234  d0 11 4f 00 44 80 4f 00 90 80 4f 00              .byte 0xd0, 0x11, 0x4f, 0x00, 0x44, 0x80, 0x4f, 0x00, 0x90, 0x80, 0x4f, 0x00
