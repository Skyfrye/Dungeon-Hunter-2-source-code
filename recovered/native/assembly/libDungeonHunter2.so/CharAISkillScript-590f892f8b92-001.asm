; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003cc238, declared_size=52, range_size=52, mode=arm
; class-group: CharAISkillScript
; alias: _ZN17CharAISkillScriptD1Ev
; demangled: CharAISkillScript::~CharAISkillScript()
; decoder-mode: arm
003cc238  24 30 9f e5                                      ldr r3, [pc, #0x24]
003cc23c  24 20 9f e5                                      ldr r2, [pc, #0x24]
003cc240  10 40 2d e9                                      push {r4, lr}
003cc244  03 30 8f e0                                      add r3, pc, r3
003cc248  02 20 93 e7                                      ldr r2, [r3, r2]
003cc24c  00 40 a0 e1                                      mov r4, r0
003cc250  08 20 82 e2                                      add r2, r2, #8
003cc254  0c 20 80 e4                                      str r2, [r0], #0xc
003cc258  f2 33 fd eb                                      bl #0x319228
003cc25c  04 00 a0 e1                                      mov r0, r4
003cc260  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003cc264  4c 88 5c 00 ac 0b 00 00                          .byte 0x4c, 0x88, 0x5c, 0x00, 0xac, 0x0b, 0x00, 0x00

; FUNCTION 0x003cc448, declared_size=60, range_size=60, mode=arm
; class-group: CharAISkillScript
; alias: _ZN17CharAISkillScriptD0Ev
; demangled: CharAISkillScript::~CharAISkillScript()
; decoder-mode: arm
003cc448  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
003cc44c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
003cc450  10 40 2d e9                                      push {r4, lr}
003cc454  03 30 8f e0                                      add r3, pc, r3
003cc458  02 20 93 e7                                      ldr r2, [r3, r2]
003cc45c  00 40 a0 e1                                      mov r4, r0
003cc460  08 20 82 e2                                      add r2, r2, #8
003cc464  0c 20 80 e4                                      str r2, [r0], #0xc
003cc468  6e 33 fd eb                                      bl #0x319228
003cc46c  04 00 a0 e1                                      mov r0, r4
003cc470  f2 0f fd eb                                      bl #0x310440
003cc474  04 00 a0 e1                                      mov r0, r4
003cc478  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003cc47c  3c 86 5c 00 ac 0b 00 00                          .byte 0x3c, 0x86, 0x5c, 0x00, 0xac, 0x0b, 0x00, 0x00

; FUNCTION 0x003cde2c, declared_size=336, range_size=336, mode=arm
; class-group: CharAISkillScript
; alias: _ZN17CharAISkillScriptC1EP9CharacterPKcj
; demangled: CharAISkillScript::CharAISkillScript(Character*, char const*, unsigned int)
; decoder-mode: arm
003cde2c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003cde30  1c 51 9f e5                                      ldr r5, [pc, #0x11c]
003cde34  1c c1 9f e5                                      ldr ip, [pc, #0x11c]
003cde38  00 40 a0 e1                                      mov r4, r0
003cde3c  05 50 8f e0                                      add r5, pc, r5
003cde40  0c c0 95 e7                                      ldr ip, [r5, ip]
003cde44  0c 70 80 e2                                      add r7, r0, #0xc
003cde48  01 a0 a0 e1                                      mov sl, r1
003cde4c  08 c0 8c e2                                      add ip, ip, #8
003cde50  00 c0 80 e5                                      str ip, [r0]
003cde54  0c d0 4d e2                                      sub sp, sp, #0xc
003cde58  06 00 84 e9                                      stmib r4, {r1, r2}
003cde5c  07 00 a0 e1                                      mov r0, r7
003cde60  03 80 a0 e1                                      mov r8, r3
003cde64  02 60 a0 e1                                      mov r6, r2
003cde68  11 2d fd eb                                      bl #0x3192b4
003cde6c  00 30 e0 e3                                      mvn r3, #0
003cde70  00 00 5a e3                                      cmp sl, #0
003cde74  18 30 84 e5                                      str r3, [r4, #0x18]
003cde78  14 80 84 e5                                      str r8, [r4, #0x14]
003cde7c  0a 00 00 0a                                      beq #0x3cdeac
003cde80  00 00 56 e3                                      cmp r6, #0
003cde84  1d 00 00 0a                                      beq #0x3cdf00
003cde88  06 10 a0 e1                                      mov r1, r6
003cde8c  07 00 a0 e1                                      mov r0, r7
003cde90  5e 43 ff eb                                      bl #0x39ec10
003cde94  07 00 a0 e1                                      mov r0, r7
003cde98  08 10 a0 e1                                      mov r1, r8
003cde9c  b5 ff ff eb                                      bl #0x3cdd78
003cdea0  04 00 a0 e1                                      mov r0, r4
003cdea4  0c d0 8d e2                                      add sp, sp, #0xc
003cdea8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003cdeac  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
003cdeb0  03 30 95 e7                                      ldr r3, [r5, r3]
003cdeb4  00 30 93 e5                                      ldr r3, [r3]
003cdeb8  02 00 53 e3                                      cmp r3, #2
003cdebc  00 a0 8a 05                                      streq sl, [sl]
003cdec0  ee ff ff 0a                                      beq #0x3cde80
003cdec4  01 00 53 e3                                      cmp r3, #1
003cdec8  ec ff ff 1a                                      bne #0x3cde80
003cdecc  8c 00 9f e5                                      ldr r0, [pc, #0x8c]
003cded0  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
003cded4  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
003cded8  00 00 95 e7                                      ldr r0, [r5, r0]
003cdedc  88 30 9f e5                                      ldr r3, [pc, #0x88]
003cdee0  2e c0 a0 e3                                      mov ip, #0x2e
003cdee4  01 10 8f e0                                      add r1, pc, r1
003cdee8  02 20 8f e0                                      add r2, pc, r2
003cdeec  03 30 8f e0                                      add r3, pc, r3
003cdef0  a8 00 80 e2                                      add r0, r0, #0xa8
003cdef4  00 c0 8d e5                                      str ip, [sp]
003cdef8  41 00 fd eb                                      bl #0x30e004
003cdefc  df ff ff ea                                      b #0x3cde80
003cdf00  54 30 9f e5                                      ldr r3, [pc, #0x54]
003cdf04  03 30 95 e7                                      ldr r3, [r5, r3]
003cdf08  00 30 93 e5                                      ldr r3, [r3]
003cdf0c  02 00 53 e3                                      cmp r3, #2
003cdf10  00 60 86 05                                      streq r6, [r6]
003cdf14  db ff ff 0a                                      beq #0x3cde88
003cdf18  01 00 53 e3                                      cmp r3, #1
003cdf1c  d9 ff ff 1a                                      bne #0x3cde88
003cdf20  38 00 9f e5                                      ldr r0, [pc, #0x38]
003cdf24  44 10 9f e5                                      ldr r1, [pc, #0x44]
003cdf28  44 20 9f e5                                      ldr r2, [pc, #0x44]
003cdf2c  00 00 95 e7                                      ldr r0, [r5, r0]
003cdf30  40 30 9f e5                                      ldr r3, [pc, #0x40]
003cdf34  2e c0 a0 e3                                      mov ip, #0x2e
003cdf38  01 10 8f e0                                      add r1, pc, r1
003cdf3c  02 20 8f e0                                      add r2, pc, r2
003cdf40  03 30 8f e0                                      add r3, pc, r3
003cdf44  a8 00 80 e2                                      add r0, r0, #0xa8
003cdf48  00 c0 8d e5                                      str ip, [sp]
003cdf4c  2c 00 fd eb                                      bl #0x30e004
003cdf50  cc ff ff ea                                      b #0x3cde88
; mapping-symbol data/literal pool
003cdf54  54 6c 5c 00 ac 0b 00 00 c0 39 00 00 c0 19 00 00  .byte 0x54, 0x6c, 0x5c, 0x00, 0xac, 0x0b, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
003cdf64  f4 04 4f 00 10 74 4f 00 14 74 4f 00 a0 04 4f 00  .byte 0xf4, 0x04, 0x4f, 0x00, 0x10, 0x74, 0x4f, 0x00, 0x14, 0x74, 0x4f, 0x00, 0xa0, 0x04, 0x4f, 0x00
003cdf74  ac 31 51 00 c0 73 4f 00                          .byte 0xac, 0x31, 0x51, 0x00, 0xc0, 0x73, 0x4f, 0x00

; FUNCTION 0x003da3d0, declared_size=108, range_size=108, mode=arm
; class-group: CharAISkillScript
; alias: _ZN17CharAISkillScript11GetCooldownEv
; demangled: CharAISkillScript::GetCooldown()
; decoder-mode: arm
003da3d0  10 40 2d e9                                      push {r4, lr}
003da3d4  18 10 90 e5                                      ldr r1, [r0, #0x18]
003da3d8  08 d0 4d e2                                      sub sp, sp, #8
003da3dc  01 00 71 e3                                      cmn r1, #1
003da3e0  12 00 00 0a                                      beq #0x3da430
003da3e4  04 00 90 e5                                      ldr r0, [r0, #4]
003da3e8  04 20 8d e2                                      add r2, sp, #4
003da3ec  0d 30 a0 e1                                      mov r3, sp
003da3f0  ed 0f 80 e2                                      add r0, r0, #0x3b4
003da3f4  d2 03 00 eb                                      bl #0x3db344
003da3f8  00 00 50 e3                                      cmp r0, #0
003da3fc  0b 00 00 0a                                      beq #0x3da430
003da400  04 00 9d e5                                      ldr r0, [sp, #4]
003da404  b5 cf fc eb                                      bl #0x30e2e0
003da408  00 40 a0 e1                                      mov r4, r0
003da40c  00 00 9d e5                                      ldr r0, [sp]
003da410  b2 cf fc eb                                      bl #0x30e2e0
003da414  00 10 a0 e1                                      mov r1, r0
003da418  04 00 a0 e1                                      mov r0, r4
003da41c  1c d2 fc eb                                      bl #0x30ec94
003da420  00 10 a0 e1                                      mov r1, r0
003da424  fe 05 a0 e3                                      mov r0, #0x3f800000
003da428  df cf fc eb                                      bl #0x30e3ac
003da42c  00 00 00 ea                                      b #0x3da434
003da430  00 00 a0 e3                                      mov r0, #0
003da434  08 d0 8d e2                                      add sp, sp, #8
003da438  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003da494, declared_size=124, range_size=124, mode=arm
; class-group: CharAISkillScript
; alias: _ZN17CharAISkillScript15SpawnProjectileEjf
; demangled: CharAISkillScript::SpawnProjectile(unsigned int, float)
; decoder-mode: arm
003da494  60 30 9f e5                                      ldr r3, [pc, #0x60]
003da498  00 c0 a0 e1                                      mov ip, r0
003da49c  5c 00 9f e5                                      ldr r0, [pc, #0x5c]
003da4a0  30 40 2d e9                                      push {r4, r5, lr}
003da4a4  03 30 8f e0                                      add r3, pc, r3
003da4a8  00 00 93 e7                                      ldr r0, [r3, r0]
003da4ac  02 40 a0 e1                                      mov r4, r2
003da4b0  14 d0 4d e2                                      sub sp, sp, #0x14
003da4b4  00 20 90 e5                                      ldr r2, [r0]
003da4b8  01 00 52 e1                                      cmp r2, r1
003da4bc  00 00 a0 93                                      movls r0, #0
003da4c0  0b 00 00 9a                                      bls #0x3da4f4
003da4c4  38 e0 9f e5                                      ldr lr, [pc, #0x38]
003da4c8  38 50 9f e5                                      ldr r5, [pc, #0x38]
003da4cc  38 20 9f e5                                      ldr r2, [pc, #0x38]
003da4d0  0e e0 93 e7                                      ldr lr, [r3, lr]
003da4d4  05 50 93 e7                                      ldr r5, [r3, r5]
003da4d8  02 00 93 e7                                      ldr r0, [r3, r2]
003da4dc  04 20 9c e5                                      ldr r2, [ip, #4]
003da4e0  00 30 a0 e3                                      mov r3, #0
003da4e4  20 40 8d e8                                      stm sp, {r5, lr}
003da4e8  08 c0 8d e5                                      str ip, [sp, #8]
003da4ec  0c 40 8d e5                                      str r4, [sp, #0xc]
003da4f0  79 32 00 eb                                      bl #0x3e6edc
003da4f4  14 d0 8d e2                                      add sp, sp, #0x14
003da4f8  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
003da4fc  ec a5 5b 00 70 09 00 00 50 31 00 00 c4 2a 00 00  .byte 0xec, 0xa5, 0x5b, 0x00, 0x70, 0x09, 0x00, 0x00, 0x50, 0x31, 0x00, 0x00, 0xc4, 0x2a, 0x00, 0x00
003da50c  4c 08 00 00                                      .byte 0x4c, 0x08, 0x00, 0x00

; FUNCTION 0x003da510, declared_size=124, range_size=124, mode=arm
; class-group: CharAISkillScript
; alias: _ZN17CharAISkillScript15SpawnProjectileEjb
; demangled: CharAISkillScript::SpawnProjectile(unsigned int, bool)
; decoder-mode: arm
003da510  60 30 9f e5                                      ldr r3, [pc, #0x60]
003da514  00 c0 a0 e1                                      mov ip, r0
003da518  5c 00 9f e5                                      ldr r0, [pc, #0x5c]
003da51c  30 40 2d e9                                      push {r4, r5, lr}
003da520  03 30 8f e0                                      add r3, pc, r3
003da524  00 00 93 e7                                      ldr r0, [r3, r0]
003da528  02 40 a0 e1                                      mov r4, r2
003da52c  14 d0 4d e2                                      sub sp, sp, #0x14
003da530  00 20 90 e5                                      ldr r2, [r0]
003da534  01 00 52 e1                                      cmp r2, r1
003da538  00 00 a0 93                                      movls r0, #0
003da53c  0b 00 00 9a                                      bls #0x3da570
003da540  38 e0 9f e5                                      ldr lr, [pc, #0x38]
003da544  38 50 9f e5                                      ldr r5, [pc, #0x38]
003da548  38 20 9f e5                                      ldr r2, [pc, #0x38]
003da54c  0e e0 93 e7                                      ldr lr, [r3, lr]
003da550  05 50 93 e7                                      ldr r5, [r3, r5]
003da554  02 00 93 e7                                      ldr r0, [r3, r2]
003da558  04 20 9c e5                                      ldr r2, [ip, #4]
003da55c  00 30 a0 e3                                      mov r3, #0
003da560  20 40 8d e8                                      stm sp, {r5, lr}
003da564  08 c0 8d e5                                      str ip, [sp, #8]
003da568  0c 40 8d e5                                      str r4, [sp, #0xc]
003da56c  aa 32 00 eb                                      bl #0x3e701c
003da570  14 d0 8d e2                                      add sp, sp, #0x14
003da574  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
003da578  70 a5 5b 00 70 09 00 00 50 31 00 00 c4 2a 00 00  .byte 0x70, 0xa5, 0x5b, 0x00, 0x70, 0x09, 0x00, 0x00, 0x50, 0x31, 0x00, 0x00, 0xc4, 0x2a, 0x00, 0x00
003da588  4c 08 00 00                                      .byte 0x4c, 0x08, 0x00, 0x00

; FUNCTION 0x003da6c0, declared_size=212, range_size=212, mode=arm
; class-group: CharAISkillScript
; alias: _ZN17CharAISkillScript11OnPostSkillEv
; demangled: CharAISkillScript::OnPostSkill()
; decoder-mode: arm
003da6c0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003da6c4  b8 40 9f e5                                      ldr r4, [pc, #0xb8]
003da6c8  b8 70 9f e5                                      ldr r7, [pc, #0xb8]
003da6cc  34 d0 4d e2                                      sub sp, sp, #0x34
003da6d0  04 40 8f e0                                      add r4, pc, r4
003da6d4  07 30 94 e7                                      ldr r3, [r4, r7]
003da6d8  04 50 8d e2                                      add r5, sp, #4
003da6dc  00 60 a0 e1                                      mov r6, r0
003da6e0  00 30 93 e5                                      ldr r3, [r3]
003da6e4  05 00 a0 e1                                      mov r0, r5
003da6e8  2c 30 8d e5                                      str r3, [sp, #0x2c]
003da6ec  50 03 fd eb                                      bl #0x31b434
003da6f0  04 30 96 e5                                      ldr r3, [r6, #4]
003da6f4  e4 03 93 e5                                      ldr r0, [r3, #0x3e4]
003da6f8  00 00 50 e3                                      cmp r0, #0
003da6fc  07 00 00 0a                                      beq #0x3da720
003da700  84 10 9f e5                                      ldr r1, [pc, #0x84]
003da704  05 30 a0 e1                                      mov r3, r5
003da708  0c 20 86 e2                                      add r2, r6, #0xc
003da70c  01 10 8f e0                                      add r1, pc, r1
003da710  1e 87 fe eb                                      bl #0x37c390
003da714  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003da718  00 00 53 e3                                      cmp r3, #0
003da71c  08 00 00 0a                                      beq #0x3da744
003da720  05 00 a0 e1                                      mov r0, r5
003da724  1b 03 fd eb                                      bl #0x31b398
003da728  07 30 94 e7                                      ldr r3, [r4, r7]
003da72c  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
003da730  00 30 93 e5                                      ldr r3, [r3]
003da734  03 00 52 e1                                      cmp r2, r3
003da738  10 00 00 1a                                      bne #0x3da780
003da73c  34 d0 8d e2                                      add sp, sp, #0x34
003da740  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003da744  28 00 9d e5                                      ldr r0, [sp, #0x28]
003da748  06 00 90 e8                                      ldm r0, {r1, r2}
003da74c  02 00 51 e1                                      cmp r1, r2
003da750  01 00 00 0a                                      beq #0x3da75c
003da754  0d 30 a0 e1                                      mov r3, sp
003da758  1b 07 fd eb                                      bl #0x31c3cc
003da75c  04 30 96 e5                                      ldr r3, [r6, #4]
003da760  28 10 9f e5                                      ldr r1, [pc, #0x28]
003da764  05 20 a0 e1                                      mov r2, r5
003da768  e4 03 93 e5                                      ldr r0, [r3, #0x3e4]
003da76c  01 10 8f e0                                      add r1, pc, r1
003da770  47 87 fe eb                                      bl #0x37c494
003da774  05 00 a0 e1                                      mov r0, r5
003da778  06 03 fd eb                                      bl #0x31b398
003da77c  e9 ff ff ea                                      b #0x3da728
003da780  e2 ce fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003da784  c0 a3 5b 00 ac 40 00 00 44 b1 4e 00 f4 b0 4e 00  .byte 0xc0, 0xa3, 0x5b, 0x00, 0xac, 0x40, 0x00, 0x00, 0x44, 0xb1, 0x4e, 0x00, 0xf4, 0xb0, 0x4e, 0x00

; FUNCTION 0x003da794, declared_size=292, range_size=292, mode=arm
; class-group: CharAISkillScript
; alias: _ZN17CharAISkillScript7OnSkillEv
; demangled: CharAISkillScript::OnSkill()
; decoder-mode: arm
003da794  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003da798  08 41 9f e5                                      ldr r4, [pc, #0x108]
003da79c  08 71 9f e5                                      ldr r7, [pc, #0x108]
003da7a0  34 d0 4d e2                                      sub sp, sp, #0x34
003da7a4  04 40 8f e0                                      add r4, pc, r4
003da7a8  07 30 94 e7                                      ldr r3, [r4, r7]
003da7ac  04 50 8d e2                                      add r5, sp, #4
003da7b0  00 60 a0 e1                                      mov r6, r0
003da7b4  00 30 93 e5                                      ldr r3, [r3]
003da7b8  05 00 a0 e1                                      mov r0, r5
003da7bc  2c 30 8d e5                                      str r3, [sp, #0x2c]
003da7c0  1b 03 fd eb                                      bl #0x31b434
003da7c4  04 30 96 e5                                      ldr r3, [r6, #4]
003da7c8  e4 03 93 e5                                      ldr r0, [r3, #0x3e4]
003da7cc  00 00 50 e3                                      cmp r0, #0
003da7d0  07 00 00 0a                                      beq #0x3da7f4
003da7d4  d4 10 9f e5                                      ldr r1, [pc, #0xd4]
003da7d8  05 30 a0 e1                                      mov r3, r5
003da7dc  0c 20 86 e2                                      add r2, r6, #0xc
003da7e0  01 10 8f e0                                      add r1, pc, r1
003da7e4  e9 86 fe eb                                      bl #0x37c390
003da7e8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003da7ec  00 00 53 e3                                      cmp r3, #0
003da7f0  0a 00 00 0a                                      beq #0x3da820
003da7f4  00 60 a0 e3                                      mov r6, #0
003da7f8  05 00 a0 e1                                      mov r0, r5
003da7fc  e5 02 fd eb                                      bl #0x31b398
003da800  07 30 94 e7                                      ldr r3, [r4, r7]
003da804  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
003da808  06 00 a0 e1                                      mov r0, r6
003da80c  00 30 93 e5                                      ldr r3, [r3]
003da810  03 00 52 e1                                      cmp r2, r3
003da814  22 00 00 1a                                      bne #0x3da8a4
003da818  34 d0 8d e2                                      add sp, sp, #0x34
003da81c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003da820  28 00 9d e5                                      ldr r0, [sp, #0x28]
003da824  06 00 90 e8                                      ldm r0, {r1, r2}
003da828  02 00 51 e1                                      cmp r1, r2
003da82c  01 00 00 0a                                      beq #0x3da838
003da830  0d 30 a0 e1                                      mov r3, sp
003da834  e4 06 fd eb                                      bl #0x31c3cc
003da838  04 30 96 e5                                      ldr r3, [r6, #4]
003da83c  70 10 9f e5                                      ldr r1, [pc, #0x70]
003da840  05 20 a0 e1                                      mov r2, r5
003da844  e4 03 93 e5                                      ldr r0, [r3, #0x3e4]
003da848  01 10 8f e0                                      add r1, pc, r1
003da84c  10 87 fe eb                                      bl #0x37c494
003da850  0c 10 9d e5                                      ldr r1, [sp, #0xc]
003da854  00 00 51 e3                                      cmp r1, #0
003da858  e5 ff ff 1a                                      bne #0x3da7f4
003da85c  28 20 9d e5                                      ldr r2, [sp, #0x28]
003da860  00 30 92 e5                                      ldr r3, [r2]
003da864  04 20 92 e5                                      ldr r2, [r2, #4]
003da868  02 30 63 e0                                      rsb r3, r3, r2
003da86c  43 32 a0 e1                                      asr r3, r3, #4
003da870  83 21 83 e0                                      add r2, r3, r3, lsl #3
003da874  02 23 82 e0                                      add r2, r2, r2, lsl #6
003da878  82 21 83 e0                                      add r2, r3, r2, lsl #3
003da87c  82 27 82 e0                                      add r2, r2, r2, lsl #15
003da880  82 31 83 e0                                      add r3, r3, r2, lsl #3
003da884  00 00 53 e3                                      cmp r3, #0
003da888  01 60 a0 03                                      moveq r6, #1
003da88c  d9 ff ff 0a                                      beq #0x3da7f8
003da890  05 00 a0 e1                                      mov r0, r5
003da894  e8 fe ff eb                                      bl #0x3da43c
003da898  f8 04 fd eb                                      bl #0x31bc80
003da89c  00 60 a0 e1                                      mov r6, r0
003da8a0  d4 ff ff ea                                      b #0x3da7f8
003da8a4  99 ce fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003da8a8  ec a2 5b 00 ac 40 00 00 70 b0 4e 00 28 b0 4e 00  .byte 0xec, 0xa2, 0x5b, 0x00, 0xac, 0x40, 0x00, 0x00, 0x70, 0xb0, 0x4e, 0x00, 0x28, 0xb0, 0x4e, 0x00

; FUNCTION 0x003da8b8, declared_size=292, range_size=292, mode=arm
; class-group: CharAISkillScript
; alias: _ZN17CharAISkillScript10OnPreSkillEv
; demangled: CharAISkillScript::OnPreSkill()
; decoder-mode: arm
003da8b8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003da8bc  08 41 9f e5                                      ldr r4, [pc, #0x108]
003da8c0  08 71 9f e5                                      ldr r7, [pc, #0x108]
003da8c4  34 d0 4d e2                                      sub sp, sp, #0x34
003da8c8  04 40 8f e0                                      add r4, pc, r4
003da8cc  07 30 94 e7                                      ldr r3, [r4, r7]
003da8d0  04 50 8d e2                                      add r5, sp, #4
003da8d4  00 60 a0 e1                                      mov r6, r0
003da8d8  00 30 93 e5                                      ldr r3, [r3]
003da8dc  05 00 a0 e1                                      mov r0, r5
003da8e0  2c 30 8d e5                                      str r3, [sp, #0x2c]
003da8e4  d2 02 fd eb                                      bl #0x31b434
003da8e8  04 30 96 e5                                      ldr r3, [r6, #4]
003da8ec  e4 03 93 e5                                      ldr r0, [r3, #0x3e4]
003da8f0  00 00 50 e3                                      cmp r0, #0
003da8f4  07 00 00 0a                                      beq #0x3da918
003da8f8  d4 10 9f e5                                      ldr r1, [pc, #0xd4]
003da8fc  05 30 a0 e1                                      mov r3, r5
003da900  0c 20 86 e2                                      add r2, r6, #0xc
003da904  01 10 8f e0                                      add r1, pc, r1
003da908  a0 86 fe eb                                      bl #0x37c390
003da90c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003da910  00 00 53 e3                                      cmp r3, #0
003da914  0a 00 00 0a                                      beq #0x3da944
003da918  00 60 a0 e3                                      mov r6, #0
003da91c  05 00 a0 e1                                      mov r0, r5
003da920  9c 02 fd eb                                      bl #0x31b398
003da924  07 30 94 e7                                      ldr r3, [r4, r7]
003da928  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
003da92c  06 00 a0 e1                                      mov r0, r6
003da930  00 30 93 e5                                      ldr r3, [r3]
003da934  03 00 52 e1                                      cmp r2, r3
003da938  22 00 00 1a                                      bne #0x3da9c8
003da93c  34 d0 8d e2                                      add sp, sp, #0x34
003da940  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003da944  28 00 9d e5                                      ldr r0, [sp, #0x28]
003da948  06 00 90 e8                                      ldm r0, {r1, r2}
003da94c  02 00 51 e1                                      cmp r1, r2
003da950  01 00 00 0a                                      beq #0x3da95c
003da954  0d 30 a0 e1                                      mov r3, sp
003da958  9b 06 fd eb                                      bl #0x31c3cc
003da95c  04 30 96 e5                                      ldr r3, [r6, #4]
003da960  70 10 9f e5                                      ldr r1, [pc, #0x70]
003da964  05 20 a0 e1                                      mov r2, r5
003da968  e4 03 93 e5                                      ldr r0, [r3, #0x3e4]
003da96c  01 10 8f e0                                      add r1, pc, r1
003da970  c7 86 fe eb                                      bl #0x37c494
003da974  0c 10 9d e5                                      ldr r1, [sp, #0xc]
003da978  00 00 51 e3                                      cmp r1, #0
003da97c  e5 ff ff 1a                                      bne #0x3da918
003da980  28 20 9d e5                                      ldr r2, [sp, #0x28]
003da984  00 30 92 e5                                      ldr r3, [r2]
003da988  04 20 92 e5                                      ldr r2, [r2, #4]
003da98c  02 30 63 e0                                      rsb r3, r3, r2
003da990  43 32 a0 e1                                      asr r3, r3, #4
003da994  83 21 83 e0                                      add r2, r3, r3, lsl #3
003da998  02 23 82 e0                                      add r2, r2, r2, lsl #6
003da99c  82 21 83 e0                                      add r2, r3, r2, lsl #3
003da9a0  82 27 82 e0                                      add r2, r2, r2, lsl #15
003da9a4  82 31 83 e0                                      add r3, r3, r2, lsl #3
003da9a8  00 00 53 e3                                      cmp r3, #0
003da9ac  01 60 a0 03                                      moveq r6, #1
003da9b0  d9 ff ff 0a                                      beq #0x3da91c
003da9b4  05 00 a0 e1                                      mov r0, r5
003da9b8  9f fe ff eb                                      bl #0x3da43c
003da9bc  af 04 fd eb                                      bl #0x31bc80
003da9c0  00 60 a0 e1                                      mov r6, r0
003da9c4  d4 ff ff ea                                      b #0x3da91c
003da9c8  50 ce fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003da9cc  c8 a1 5b 00 ac 40 00 00 4c af 4e 00 0c af 4e 00  .byte 0xc8, 0xa1, 0x5b, 0x00, 0xac, 0x40, 0x00, 0x00, 0x4c, 0xaf, 0x4e, 0x00, 0x0c, 0xaf, 0x4e, 0x00

; FUNCTION 0x003da9dc, declared_size=288, range_size=288, mode=arm
; class-group: CharAISkillScript
; alias: _ZN17CharAISkillScript19OnSkillCheck_UsableEv
; demangled: CharAISkillScript::OnSkillCheck_Usable()
; decoder-mode: arm
003da9dc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003da9e0  04 41 9f e5                                      ldr r4, [pc, #0x104]
003da9e4  04 71 9f e5                                      ldr r7, [pc, #0x104]
003da9e8  34 d0 4d e2                                      sub sp, sp, #0x34
003da9ec  04 40 8f e0                                      add r4, pc, r4
003da9f0  07 30 94 e7                                      ldr r3, [r4, r7]
003da9f4  04 50 8d e2                                      add r5, sp, #4
003da9f8  00 60 a0 e1                                      mov r6, r0
003da9fc  00 30 93 e5                                      ldr r3, [r3]
003daa00  05 00 a0 e1                                      mov r0, r5
003daa04  2c 30 8d e5                                      str r3, [sp, #0x2c]
003daa08  89 02 fd eb                                      bl #0x31b434
003daa0c  04 30 96 e5                                      ldr r3, [r6, #4]
003daa10  e4 03 93 e5                                      ldr r0, [r3, #0x3e4]
003daa14  00 00 50 e3                                      cmp r0, #0
003daa18  07 00 00 0a                                      beq #0x3daa3c
003daa1c  d0 10 9f e5                                      ldr r1, [pc, #0xd0]
003daa20  05 30 a0 e1                                      mov r3, r5
003daa24  0c 20 86 e2                                      add r2, r6, #0xc
003daa28  01 10 8f e0                                      add r1, pc, r1
003daa2c  57 86 fe eb                                      bl #0x37c390
003daa30  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003daa34  00 00 53 e3                                      cmp r3, #0
003daa38  0a 00 00 0a                                      beq #0x3daa68
003daa3c  00 60 a0 e3                                      mov r6, #0
003daa40  05 00 a0 e1                                      mov r0, r5
003daa44  53 02 fd eb                                      bl #0x31b398
003daa48  07 30 94 e7                                      ldr r3, [r4, r7]
003daa4c  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
003daa50  06 00 a0 e1                                      mov r0, r6
003daa54  00 30 93 e5                                      ldr r3, [r3]
003daa58  03 00 52 e1                                      cmp r2, r3
003daa5c  21 00 00 1a                                      bne #0x3daae8
003daa60  34 d0 8d e2                                      add sp, sp, #0x34
003daa64  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003daa68  28 00 9d e5                                      ldr r0, [sp, #0x28]
003daa6c  06 00 90 e8                                      ldm r0, {r1, r2}
003daa70  02 00 51 e1                                      cmp r1, r2
003daa74  01 00 00 0a                                      beq #0x3daa80
003daa78  0d 30 a0 e1                                      mov r3, sp
003daa7c  52 06 fd eb                                      bl #0x31c3cc
003daa80  04 30 96 e5                                      ldr r3, [r6, #4]
003daa84  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
003daa88  05 20 a0 e1                                      mov r2, r5
003daa8c  e4 03 93 e5                                      ldr r0, [r3, #0x3e4]
003daa90  01 10 8f e0                                      add r1, pc, r1
003daa94  7e 86 fe eb                                      bl #0x37c494
003daa98  0c 10 9d e5                                      ldr r1, [sp, #0xc]
003daa9c  00 00 51 e3                                      cmp r1, #0
003daaa0  e5 ff ff 1a                                      bne #0x3daa3c
003daaa4  28 20 9d e5                                      ldr r2, [sp, #0x28]
003daaa8  00 30 92 e5                                      ldr r3, [r2]
003daaac  04 20 92 e5                                      ldr r2, [r2, #4]
003daab0  02 30 63 e0                                      rsb r3, r3, r2
003daab4  43 32 a0 e1                                      asr r3, r3, #4
003daab8  83 21 83 e0                                      add r2, r3, r3, lsl #3
003daabc  02 23 82 e0                                      add r2, r2, r2, lsl #6
003daac0  82 21 83 e0                                      add r2, r3, r2, lsl #3
003daac4  82 27 82 e0                                      add r2, r2, r2, lsl #15
003daac8  82 31 83 e0                                      add r3, r3, r2, lsl #3
003daacc  00 00 53 e3                                      cmp r3, #0
003daad0  d9 ff ff 0a                                      beq #0x3daa3c
003daad4  05 00 a0 e1                                      mov r0, r5
003daad8  57 fe ff eb                                      bl #0x3da43c
003daadc  67 04 fd eb                                      bl #0x31bc80
003daae0  00 60 a0 e1                                      mov r6, r0
003daae4  d5 ff ff ea                                      b #0x3daa40
003daae8  08 ce fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003daaec  a4 a0 5b 00 ac 40 00 00 28 ae 4e 00 f8 ad 4e 00  .byte 0xa4, 0xa0, 0x5b, 0x00, 0xac, 0x40, 0x00, 0x00, 0x28, 0xae, 0x4e, 0x00, 0xf8, 0xad, 0x4e, 0x00

; FUNCTION 0x003daafc, declared_size=212, range_size=212, mode=arm
; class-group: CharAISkillScript
; alias: _ZN17CharAISkillScript14OnSkillCleanUpEv
; demangled: CharAISkillScript::OnSkillCleanUp()
; decoder-mode: arm
003daafc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003dab00  b8 40 9f e5                                      ldr r4, [pc, #0xb8]
003dab04  b8 70 9f e5                                      ldr r7, [pc, #0xb8]
003dab08  34 d0 4d e2                                      sub sp, sp, #0x34
003dab0c  04 40 8f e0                                      add r4, pc, r4
003dab10  07 30 94 e7                                      ldr r3, [r4, r7]
003dab14  04 50 8d e2                                      add r5, sp, #4
003dab18  00 60 a0 e1                                      mov r6, r0
003dab1c  00 30 93 e5                                      ldr r3, [r3]
003dab20  05 00 a0 e1                                      mov r0, r5
003dab24  2c 30 8d e5                                      str r3, [sp, #0x2c]
003dab28  41 02 fd eb                                      bl #0x31b434
003dab2c  04 30 96 e5                                      ldr r3, [r6, #4]
003dab30  e4 03 93 e5                                      ldr r0, [r3, #0x3e4]
003dab34  00 00 50 e3                                      cmp r0, #0
003dab38  07 00 00 0a                                      beq #0x3dab5c
003dab3c  84 10 9f e5                                      ldr r1, [pc, #0x84]
003dab40  05 30 a0 e1                                      mov r3, r5
003dab44  0c 20 86 e2                                      add r2, r6, #0xc
003dab48  01 10 8f e0                                      add r1, pc, r1
003dab4c  0f 86 fe eb                                      bl #0x37c390
003dab50  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003dab54  00 00 53 e3                                      cmp r3, #0
003dab58  08 00 00 0a                                      beq #0x3dab80
003dab5c  05 00 a0 e1                                      mov r0, r5
003dab60  0c 02 fd eb                                      bl #0x31b398
003dab64  07 30 94 e7                                      ldr r3, [r4, r7]
003dab68  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
003dab6c  00 30 93 e5                                      ldr r3, [r3]
003dab70  03 00 52 e1                                      cmp r2, r3
003dab74  10 00 00 1a                                      bne #0x3dabbc
003dab78  34 d0 8d e2                                      add sp, sp, #0x34
003dab7c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003dab80  28 00 9d e5                                      ldr r0, [sp, #0x28]
003dab84  06 00 90 e8                                      ldm r0, {r1, r2}
003dab88  02 00 51 e1                                      cmp r1, r2
003dab8c  01 00 00 0a                                      beq #0x3dab98
003dab90  0d 30 a0 e1                                      mov r3, sp
003dab94  0c 06 fd eb                                      bl #0x31c3cc
003dab98  04 30 96 e5                                      ldr r3, [r6, #4]
003dab9c  28 10 9f e5                                      ldr r1, [pc, #0x28]
003daba0  05 20 a0 e1                                      mov r2, r5
003daba4  e4 03 93 e5                                      ldr r0, [r3, #0x3e4]
003daba8  01 10 8f e0                                      add r1, pc, r1
003dabac  38 86 fe eb                                      bl #0x37c494
003dabb0  05 00 a0 e1                                      mov r0, r5
003dabb4  f7 01 fd eb                                      bl #0x31b398
003dabb8  e9 ff ff ea                                      b #0x3dab64
003dabbc  d3 cd fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003dabc0  84 9f 5b 00 ac 40 00 00 08 ad 4e 00 f0 ac 4e 00  .byte 0x84, 0x9f, 0x5b, 0x00, 0xac, 0x40, 0x00, 0x00, 0x08, 0xad, 0x4e, 0x00, 0xf0, 0xac, 0x4e, 0x00

; FUNCTION 0x003dabd0, declared_size=212, range_size=212, mode=arm
; class-group: CharAISkillScript
; alias: _ZN17CharAISkillScript13OnSkillUpdateEv
; demangled: CharAISkillScript::OnSkillUpdate()
; decoder-mode: arm
003dabd0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003dabd4  b8 40 9f e5                                      ldr r4, [pc, #0xb8]
003dabd8  b8 70 9f e5                                      ldr r7, [pc, #0xb8]
003dabdc  34 d0 4d e2                                      sub sp, sp, #0x34
003dabe0  04 40 8f e0                                      add r4, pc, r4
003dabe4  07 30 94 e7                                      ldr r3, [r4, r7]
003dabe8  04 50 8d e2                                      add r5, sp, #4
003dabec  00 60 a0 e1                                      mov r6, r0
003dabf0  00 30 93 e5                                      ldr r3, [r3]
003dabf4  05 00 a0 e1                                      mov r0, r5
003dabf8  2c 30 8d e5                                      str r3, [sp, #0x2c]
003dabfc  0c 02 fd eb                                      bl #0x31b434
003dac00  04 30 96 e5                                      ldr r3, [r6, #4]
003dac04  e4 03 93 e5                                      ldr r0, [r3, #0x3e4]
003dac08  00 00 50 e3                                      cmp r0, #0
003dac0c  07 00 00 0a                                      beq #0x3dac30
003dac10  84 10 9f e5                                      ldr r1, [pc, #0x84]
003dac14  05 30 a0 e1                                      mov r3, r5
003dac18  0c 20 86 e2                                      add r2, r6, #0xc
003dac1c  01 10 8f e0                                      add r1, pc, r1
003dac20  da 85 fe eb                                      bl #0x37c390
003dac24  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003dac28  00 00 53 e3                                      cmp r3, #0
003dac2c  08 00 00 0a                                      beq #0x3dac54
003dac30  05 00 a0 e1                                      mov r0, r5
003dac34  d7 01 fd eb                                      bl #0x31b398
003dac38  07 30 94 e7                                      ldr r3, [r4, r7]
003dac3c  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
003dac40  00 30 93 e5                                      ldr r3, [r3]
003dac44  03 00 52 e1                                      cmp r2, r3
003dac48  10 00 00 1a                                      bne #0x3dac90
003dac4c  34 d0 8d e2                                      add sp, sp, #0x34
003dac50  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003dac54  28 00 9d e5                                      ldr r0, [sp, #0x28]
003dac58  06 00 90 e8                                      ldm r0, {r1, r2}
003dac5c  02 00 51 e1                                      cmp r1, r2
003dac60  01 00 00 0a                                      beq #0x3dac6c
003dac64  0d 30 a0 e1                                      mov r3, sp
003dac68  d7 05 fd eb                                      bl #0x31c3cc
003dac6c  04 30 96 e5                                      ldr r3, [r6, #4]
003dac70  28 10 9f e5                                      ldr r1, [pc, #0x28]
003dac74  05 20 a0 e1                                      mov r2, r5
003dac78  e4 03 93 e5                                      ldr r0, [r3, #0x3e4]
003dac7c  01 10 8f e0                                      add r1, pc, r1
003dac80  03 86 fe eb                                      bl #0x37c494
003dac84  05 00 a0 e1                                      mov r0, r5
003dac88  c2 01 fd eb                                      bl #0x31b398
003dac8c  e9 ff ff ea                                      b #0x3dac38
003dac90  9e cd fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003dac94  b0 9e 5b 00 ac 40 00 00 34 ac 4e 00 2c ac 4e 00  .byte 0xb0, 0x9e, 0x5b, 0x00, 0xac, 0x40, 0x00, 0x00, 0x34, 0xac, 0x4e, 0x00, 0x2c, 0xac, 0x4e, 0x00

; FUNCTION 0x003daca8, declared_size=468, range_size=468, mode=arm
; class-group: CharAISkillScript
; alias: _ZN17CharAISkillScript7GetInfoEjPf
; demangled: CharAISkillScript::GetInfo(unsigned int, float*)
; decoder-mode: arm
003daca8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003dacac  b8 41 9f e5                                      ldr r4, [pc, #0x1b8]
003dacb0  b8 81 9f e5                                      ldr r8, [pc, #0x1b8]
003dacb4  40 d0 4d e2                                      sub sp, sp, #0x40
003dacb8  04 40 8f e0                                      add r4, pc, r4
003dacbc  08 30 94 e7                                      ldr r3, [r4, r8]
003dacc0  00 70 a0 e1                                      mov r7, r0
003dacc4  14 50 8d e2                                      add r5, sp, #0x14
003dacc8  00 30 93 e5                                      ldr r3, [r3]
003daccc  0d 00 a0 e1                                      mov r0, sp
003dacd0  01 90 a0 e1                                      mov sb, r1
003dacd4  3c 30 8d e5                                      str r3, [sp, #0x3c]
003dacd8  02 a0 a0 e1                                      mov sl, r2
003dacdc  74 f9 fc eb                                      bl #0x3192b4
003dace0  05 00 a0 e1                                      mov r0, r5
003dace4  d2 01 fd eb                                      bl #0x31b434
003dace8  04 30 97 e5                                      ldr r3, [r7, #4]
003dacec  0d 60 a0 e1                                      mov r6, sp
003dacf0  e4 03 93 e5                                      ldr r0, [r3, #0x3e4]
003dacf4  00 00 50 e3                                      cmp r0, #0
003dacf8  56 00 00 0a                                      beq #0x3dae58
003dacfc  70 11 9f e5                                      ldr r1, [pc, #0x170]
003dad00  05 30 a0 e1                                      mov r3, r5
003dad04  0c 20 87 e2                                      add r2, r7, #0xc
003dad08  01 10 8f e0                                      add r1, pc, r1
003dad0c  9f 85 fe eb                                      bl #0x37c390
003dad10  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
003dad14  00 00 53 e3                                      cmp r3, #0
003dad18  0a 00 00 0a                                      beq #0x3dad48
003dad1c  05 00 a0 e1                                      mov r0, r5
003dad20  9c 01 fd eb                                      bl #0x31b398
003dad24  0d 00 a0 e1                                      mov r0, sp
003dad28  3e f9 fc eb                                      bl #0x319228
003dad2c  08 30 94 e7                                      ldr r3, [r4, r8]
003dad30  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
003dad34  00 30 93 e5                                      ldr r3, [r3]
003dad38  03 00 52 e1                                      cmp r2, r3
003dad3c  49 00 00 1a                                      bne #0x3dae68
003dad40  40 d0 8d e2                                      add sp, sp, #0x40
003dad44  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003dad48  09 10 a0 e1                                      mov r1, sb
003dad4c  0d 00 a0 e1                                      mov r0, sp
003dad50  08 cc ff eb                                      bl #0x3cdd78
003dad54  38 00 9d e5                                      ldr r0, [sp, #0x38]
003dad58  06 00 90 e8                                      ldm r0, {r1, r2}
003dad5c  02 00 51 e1                                      cmp r1, r2
003dad60  01 00 00 0a                                      beq #0x3dad6c
003dad64  10 30 8d e2                                      add r3, sp, #0x10
003dad68  97 05 fd eb                                      bl #0x31c3cc
003dad6c  04 30 97 e5                                      ldr r3, [r7, #4]
003dad70  00 11 9f e5                                      ldr r1, [pc, #0x100]
003dad74  0d 20 a0 e1                                      mov r2, sp
003dad78  e4 03 93 e5                                      ldr r0, [r3, #0x3e4]
003dad7c  01 10 8f e0                                      add r1, pc, r1
003dad80  05 30 a0 e1                                      mov r3, r5
003dad84  81 85 fe eb                                      bl #0x37c390
003dad88  1c 90 9d e5                                      ldr sb, [sp, #0x1c]
003dad8c  00 00 59 e3                                      cmp sb, #0
003dad90  e1 ff ff 1a                                      bne #0x3dad1c
003dad94  00 00 5a e3                                      cmp sl, #0
003dad98  df ff ff 0a                                      beq #0x3dad1c
003dad9c  38 20 9d e5                                      ldr r2, [sp, #0x38]
003dada0  00 30 a0 e3                                      mov r3, #0
003dada4  00 30 8a e5                                      str r3, [sl]
003dada8  00 30 92 e5                                      ldr r3, [r2]
003dadac  04 20 92 e5                                      ldr r2, [r2, #4]
003dadb0  02 30 63 e0                                      rsb r3, r3, r2
003dadb4  43 32 a0 e1                                      asr r3, r3, #4
003dadb8  83 21 83 e0                                      add r2, r3, r3, lsl #3
003dadbc  02 23 82 e0                                      add r2, r2, r2, lsl #6
003dadc0  82 21 83 e0                                      add r2, r3, r2, lsl #3
003dadc4  82 27 82 e0                                      add r2, r2, r2, lsl #15
003dadc8  82 31 83 e0                                      add r3, r3, r2, lsl #3
003dadcc  00 00 53 e3                                      cmp r3, #0
003dadd0  d1 ff ff 0a                                      beq #0x3dad1c
003dadd4  05 00 a0 e1                                      mov r0, r5
003dadd8  09 10 a0 e1                                      mov r1, sb
003daddc  96 fd ff eb                                      bl #0x3da43c
003dade0  04 30 90 e5                                      ldr r3, [r0, #4]
003dade4  03 00 53 e3                                      cmp r3, #3
003dade8  cb ff ff 1a                                      bne #0x3dad1c
003dadec  09 10 a0 e1                                      mov r1, sb
003dadf0  05 00 a0 e1                                      mov r0, r5
003dadf4  90 fd ff eb                                      bl #0x3da43c
003dadf8  7c 03 fd eb                                      bl #0x31bbf0
003dadfc  b2 cd fc eb                                      bl #0x30e4cc
003dae00  04 70 97 e5                                      ldr r7, [r7, #4]
003dae04  00 10 a0 e1                                      mov r1, r0
003dae08  0c 20 8d e2                                      add r2, sp, #0xc
003dae0c  ed 7f 87 e2                                      add r7, r7, #0x3b4
003dae10  07 00 a0 e1                                      mov r0, r7
003dae14  08 30 8d e2                                      add r3, sp, #8
003dae18  49 01 00 eb                                      bl #0x3db344
003dae1c  00 00 50 e3                                      cmp r0, #0
003dae20  bd ff ff 0a                                      beq #0x3dad1c
003dae24  0c 00 9d e5                                      ldr r0, [sp, #0xc]
003dae28  2c cd fc eb                                      bl #0x30e2e0
003dae2c  00 70 a0 e1                                      mov r7, r0
003dae30  08 00 9d e5                                      ldr r0, [sp, #8]
003dae34  29 cd fc eb                                      bl #0x30e2e0
003dae38  00 10 a0 e1                                      mov r1, r0
003dae3c  07 00 a0 e1                                      mov r0, r7
003dae40  93 cf fc eb                                      bl #0x30ec94
003dae44  00 10 a0 e1                                      mov r1, r0
003dae48  fe 05 a0 e3                                      mov r0, #0x3f800000
003dae4c  56 cd fc eb                                      bl #0x30e3ac
003dae50  00 00 8a e5                                      str r0, [sl]
003dae54  b0 ff ff ea                                      b #0x3dad1c
003dae58  00 00 5a e3                                      cmp sl, #0
003dae5c  00 30 a0 13                                      movne r3, #0
003dae60  00 30 8a 15                                      strne r3, [sl]
003dae64  ac ff ff ea                                      b #0x3dad1c
003dae68  28 cd fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003dae6c  d8 9d 5b 00 ac 40 00 00 48 ab 4e 00 3c ab 4e 00  .byte 0xd8, 0x9d, 0x5b, 0x00, 0xac, 0x40, 0x00, 0x00, 0x48, 0xab, 0x4e, 0x00, 0x3c, 0xab, 0x4e, 0x00

; FUNCTION 0x003dae7c, declared_size=376, range_size=376, mode=arm
; class-group: CharAISkillScript
; alias: _ZN17CharAISkillScript14_ProjectileHitEP10ProjectilePv
; demangled: CharAISkillScript::_ProjectileHit(Projectile*, void*)
; decoder-mode: arm
003dae7c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003dae80  5c 41 9f e5                                      ldr r4, [pc, #0x15c]
003dae84  5c 81 9f e5                                      ldr r8, [pc, #0x15c]
003dae88  3c d0 4d e2                                      sub sp, sp, #0x3c
003dae8c  04 40 8f e0                                      add r4, pc, r4
003dae90  08 30 94 e7                                      ldr r3, [r4, r8]
003dae94  00 a0 a0 e1                                      mov sl, r0
003dae98  0c 50 8d e2                                      add r5, sp, #0xc
003dae9c  00 30 93 e5                                      ldr r3, [r3]
003daea0  0d 00 a0 e1                                      mov r0, sp
003daea4  01 70 a0 e1                                      mov r7, r1
003daea8  34 30 8d e5                                      str r3, [sp, #0x34]
003daeac  00 f9 fc eb                                      bl #0x3192b4
003daeb0  05 00 a0 e1                                      mov r0, r5
003daeb4  5e 01 fd eb                                      bl #0x31b434
003daeb8  04 30 97 e5                                      ldr r3, [r7, #4]
003daebc  0d 60 a0 e1                                      mov r6, sp
003daec0  e4 03 93 e5                                      ldr r0, [r3, #0x3e4]
003daec4  00 00 50 e3                                      cmp r0, #0
003daec8  42 00 00 0a                                      beq #0x3dafd8
003daecc  18 11 9f e5                                      ldr r1, [pc, #0x118]
003daed0  05 30 a0 e1                                      mov r3, r5
003daed4  0c 20 87 e2                                      add r2, r7, #0xc
003daed8  01 10 8f e0                                      add r1, pc, r1
003daedc  2b 85 fe eb                                      bl #0x37c390
003daee0  14 30 9d e5                                      ldr r3, [sp, #0x14]
003daee4  00 00 53 e3                                      cmp r3, #0
003daee8  0c 00 00 0a                                      beq #0x3daf20
003daeec  00 70 a0 e3                                      mov r7, #0
003daef0  05 00 a0 e1                                      mov r0, r5
003daef4  27 01 fd eb                                      bl #0x31b398
003daef8  0d 00 a0 e1                                      mov r0, sp
003daefc  c9 f8 fc eb                                      bl #0x319228
003daf00  08 30 94 e7                                      ldr r3, [r4, r8]
003daf04  34 20 9d e5                                      ldr r2, [sp, #0x34]
003daf08  07 00 a0 e1                                      mov r0, r7
003daf0c  00 30 93 e5                                      ldr r3, [r3]
003daf10  03 00 52 e1                                      cmp r2, r3
003daf14  31 00 00 1a                                      bne #0x3dafe0
003daf18  3c d0 8d e2                                      add sp, sp, #0x3c
003daf1c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003daf20  0d 00 a0 e1                                      mov r0, sp
003daf24  cc 13 9a e5                                      ldr r1, [sl, #0x3cc]
003daf28  fe af fe eb                                      bl #0x386f28
003daf2c  0d 00 a0 e1                                      mov r0, sp
003daf30  0a 10 a0 e1                                      mov r1, sl
003daf34  4c fd fc eb                                      bl #0x31a46c
003daf38  30 00 9d e5                                      ldr r0, [sp, #0x30]
003daf3c  06 00 90 e8                                      ldm r0, {r1, r2}
003daf40  02 00 51 e1                                      cmp r1, r2
003daf44  01 00 00 0a                                      beq #0x3daf50
003daf48  08 30 8d e2                                      add r3, sp, #8
003daf4c  1e 05 fd eb                                      bl #0x31c3cc
003daf50  04 30 97 e5                                      ldr r3, [r7, #4]
003daf54  94 10 9f e5                                      ldr r1, [pc, #0x94]
003daf58  0d 20 a0 e1                                      mov r2, sp
003daf5c  e4 03 93 e5                                      ldr r0, [r3, #0x3e4]
003daf60  01 10 8f e0                                      add r1, pc, r1
003daf64  05 30 a0 e1                                      mov r3, r5
003daf68  08 85 fe eb                                      bl #0x37c390
003daf6c  14 70 9d e5                                      ldr r7, [sp, #0x14]
003daf70  00 00 57 e3                                      cmp r7, #0
003daf74  dc ff ff 1a                                      bne #0x3daeec
003daf78  30 20 9d e5                                      ldr r2, [sp, #0x30]
003daf7c  00 30 92 e5                                      ldr r3, [r2]
003daf80  04 20 92 e5                                      ldr r2, [r2, #4]
003daf84  02 30 63 e0                                      rsb r3, r3, r2
003daf88  43 32 a0 e1                                      asr r3, r3, #4
003daf8c  83 21 83 e0                                      add r2, r3, r3, lsl #3
003daf90  02 23 82 e0                                      add r2, r2, r2, lsl #6
003daf94  82 21 83 e0                                      add r2, r3, r2, lsl #3
003daf98  82 27 82 e0                                      add r2, r2, r2, lsl #15
003daf9c  82 31 83 e0                                      add r3, r3, r2, lsl #3
003dafa0  00 00 53 e3                                      cmp r3, #0
003dafa4  d0 ff ff 0a                                      beq #0x3daeec
003dafa8  05 00 a0 e1                                      mov r0, r5
003dafac  07 10 a0 e1                                      mov r1, r7
003dafb0  21 fd ff eb                                      bl #0x3da43c
003dafb4  04 30 90 e5                                      ldr r3, [r0, #4]
003dafb8  01 00 53 e3                                      cmp r3, #1
003dafbc  ca ff ff 1a                                      bne #0x3daeec
003dafc0  07 10 a0 e1                                      mov r1, r7
003dafc4  05 00 a0 e1                                      mov r0, r5
003dafc8  1b fd ff eb                                      bl #0x3da43c
003dafcc  2b 03 fd eb                                      bl #0x31bc80
003dafd0  00 00 50 e3                                      cmp r0, #0
003dafd4  c4 ff ff 1a                                      bne #0x3daeec
003dafd8  01 70 a0 e3                                      mov r7, #1
003dafdc  c3 ff ff ea                                      b #0x3daef0
003dafe0  ca cc fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003dafe4  04 9c 5b 00 ac 40 00 00 78 a9 4e 00 68 a9 4e 00  .byte 0x04, 0x9c, 0x5b, 0x00, 0xac, 0x40, 0x00, 0x00, 0x78, 0xa9, 0x4e, 0x00, 0x68, 0xa9, 0x4e, 0x00

; FUNCTION 0x003daff4, declared_size=376, range_size=376, mode=arm
; class-group: CharAISkillScript
; alias: _ZN17CharAISkillScript16_ProjectileCheckEP10ProjectilePv
; demangled: CharAISkillScript::_ProjectileCheck(Projectile*, void*)
; decoder-mode: arm
003daff4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003daff8  5c 41 9f e5                                      ldr r4, [pc, #0x15c]
003daffc  5c 81 9f e5                                      ldr r8, [pc, #0x15c]
003db000  3c d0 4d e2                                      sub sp, sp, #0x3c
003db004  04 40 8f e0                                      add r4, pc, r4
003db008  08 30 94 e7                                      ldr r3, [r4, r8]
003db00c  00 a0 a0 e1                                      mov sl, r0
003db010  0c 50 8d e2                                      add r5, sp, #0xc
003db014  00 30 93 e5                                      ldr r3, [r3]
003db018  0d 00 a0 e1                                      mov r0, sp
003db01c  01 70 a0 e1                                      mov r7, r1
003db020  34 30 8d e5                                      str r3, [sp, #0x34]
003db024  a2 f8 fc eb                                      bl #0x3192b4
003db028  05 00 a0 e1                                      mov r0, r5
003db02c  00 01 fd eb                                      bl #0x31b434
003db030  04 30 97 e5                                      ldr r3, [r7, #4]
003db034  0d 60 a0 e1                                      mov r6, sp
003db038  e4 03 93 e5                                      ldr r0, [r3, #0x3e4]
003db03c  00 00 50 e3                                      cmp r0, #0
003db040  42 00 00 0a                                      beq #0x3db150
003db044  18 11 9f e5                                      ldr r1, [pc, #0x118]
003db048  05 30 a0 e1                                      mov r3, r5
003db04c  0c 20 87 e2                                      add r2, r7, #0xc
003db050  01 10 8f e0                                      add r1, pc, r1
003db054  cd 84 fe eb                                      bl #0x37c390
003db058  14 30 9d e5                                      ldr r3, [sp, #0x14]
003db05c  00 00 53 e3                                      cmp r3, #0
003db060  0c 00 00 0a                                      beq #0x3db098
003db064  00 70 a0 e3                                      mov r7, #0
003db068  05 00 a0 e1                                      mov r0, r5
003db06c  c9 00 fd eb                                      bl #0x31b398
003db070  0d 00 a0 e1                                      mov r0, sp
003db074  6b f8 fc eb                                      bl #0x319228
003db078  08 30 94 e7                                      ldr r3, [r4, r8]
003db07c  34 20 9d e5                                      ldr r2, [sp, #0x34]
003db080  07 00 a0 e1                                      mov r0, r7
003db084  00 30 93 e5                                      ldr r3, [r3]
003db088  03 00 52 e1                                      cmp r2, r3
003db08c  31 00 00 1a                                      bne #0x3db158
003db090  3c d0 8d e2                                      add sp, sp, #0x3c
003db094  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003db098  0d 00 a0 e1                                      mov r0, sp
003db09c  cc 13 9a e5                                      ldr r1, [sl, #0x3cc]
003db0a0  a0 af fe eb                                      bl #0x386f28
003db0a4  0d 00 a0 e1                                      mov r0, sp
003db0a8  0a 10 a0 e1                                      mov r1, sl
003db0ac  ee fc fc eb                                      bl #0x31a46c
003db0b0  30 00 9d e5                                      ldr r0, [sp, #0x30]
003db0b4  06 00 90 e8                                      ldm r0, {r1, r2}
003db0b8  02 00 51 e1                                      cmp r1, r2
003db0bc  01 00 00 0a                                      beq #0x3db0c8
003db0c0  08 30 8d e2                                      add r3, sp, #8
003db0c4  c0 04 fd eb                                      bl #0x31c3cc
003db0c8  04 30 97 e5                                      ldr r3, [r7, #4]
003db0cc  94 10 9f e5                                      ldr r1, [pc, #0x94]
003db0d0  0d 20 a0 e1                                      mov r2, sp
003db0d4  e4 03 93 e5                                      ldr r0, [r3, #0x3e4]
003db0d8  01 10 8f e0                                      add r1, pc, r1
003db0dc  05 30 a0 e1                                      mov r3, r5
003db0e0  aa 84 fe eb                                      bl #0x37c390
003db0e4  14 70 9d e5                                      ldr r7, [sp, #0x14]
003db0e8  00 00 57 e3                                      cmp r7, #0
003db0ec  dc ff ff 1a                                      bne #0x3db064
003db0f0  30 20 9d e5                                      ldr r2, [sp, #0x30]
003db0f4  00 30 92 e5                                      ldr r3, [r2]
003db0f8  04 20 92 e5                                      ldr r2, [r2, #4]
003db0fc  02 30 63 e0                                      rsb r3, r3, r2
003db100  43 32 a0 e1                                      asr r3, r3, #4
003db104  83 21 83 e0                                      add r2, r3, r3, lsl #3
003db108  02 23 82 e0                                      add r2, r2, r2, lsl #6
003db10c  82 21 83 e0                                      add r2, r3, r2, lsl #3
003db110  82 27 82 e0                                      add r2, r2, r2, lsl #15
003db114  82 31 83 e0                                      add r3, r3, r2, lsl #3
003db118  00 00 53 e3                                      cmp r3, #0
003db11c  d0 ff ff 0a                                      beq #0x3db064
003db120  05 00 a0 e1                                      mov r0, r5
003db124  07 10 a0 e1                                      mov r1, r7
003db128  c3 fc ff eb                                      bl #0x3da43c
003db12c  04 30 90 e5                                      ldr r3, [r0, #4]
003db130  01 00 53 e3                                      cmp r3, #1
003db134  ca ff ff 1a                                      bne #0x3db064
003db138  07 10 a0 e1                                      mov r1, r7
003db13c  05 00 a0 e1                                      mov r0, r5
003db140  bd fc ff eb                                      bl #0x3da43c
003db144  cd 02 fd eb                                      bl #0x31bc80
003db148  00 00 50 e3                                      cmp r0, #0
003db14c  c4 ff ff 1a                                      bne #0x3db064
003db150  01 70 a0 e3                                      mov r7, #1
003db154  c3 ff ff ea                                      b #0x3db068
003db158  6c cc fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003db15c  8c 9a 5b 00 ac 40 00 00 00 a8 4e 00 00 a8 4e 00  .byte 0x8c, 0x9a, 0x5b, 0x00, 0xac, 0x40, 0x00, 0x00, 0x00, 0xa8, 0x4e, 0x00, 0x00, 0xa8, 0x4e, 0x00

; FUNCTION 0x003db16c, declared_size=284, range_size=284, mode=arm
; class-group: CharAISkillScript
; alias: _ZN17CharAISkillScript19OnSkillCheck_ActiveEv
; demangled: CharAISkillScript::OnSkillCheck_Active()
; decoder-mode: arm
003db16c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003db170  00 41 9f e5                                      ldr r4, [pc, #0x100]
003db174  00 71 9f e5                                      ldr r7, [pc, #0x100]
003db178  34 d0 4d e2                                      sub sp, sp, #0x34
003db17c  04 40 8f e0                                      add r4, pc, r4
003db180  07 30 94 e7                                      ldr r3, [r4, r7]
003db184  04 50 8d e2                                      add r5, sp, #4
003db188  00 60 a0 e1                                      mov r6, r0
003db18c  00 30 93 e5                                      ldr r3, [r3]
003db190  05 00 a0 e1                                      mov r0, r5
003db194  2c 30 8d e5                                      str r3, [sp, #0x2c]
003db198  a5 00 fd eb                                      bl #0x31b434
003db19c  04 30 96 e5                                      ldr r3, [r6, #4]
003db1a0  e4 03 93 e5                                      ldr r0, [r3, #0x3e4]
003db1a4  00 00 50 e3                                      cmp r0, #0
003db1a8  07 00 00 0a                                      beq #0x3db1cc
003db1ac  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
003db1b0  05 30 a0 e1                                      mov r3, r5
003db1b4  0c 20 86 e2                                      add r2, r6, #0xc
003db1b8  01 10 8f e0                                      add r1, pc, r1
003db1bc  73 84 fe eb                                      bl #0x37c390
003db1c0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003db1c4  00 00 53 e3                                      cmp r3, #0
003db1c8  0a 00 00 0a                                      beq #0x3db1f8
003db1cc  00 60 a0 e3                                      mov r6, #0
003db1d0  05 00 a0 e1                                      mov r0, r5
003db1d4  6f 00 fd eb                                      bl #0x31b398
003db1d8  07 30 94 e7                                      ldr r3, [r4, r7]
003db1dc  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
003db1e0  06 00 a0 e1                                      mov r0, r6
003db1e4  00 30 93 e5                                      ldr r3, [r3]
003db1e8  03 00 52 e1                                      cmp r2, r3
003db1ec  20 00 00 1a                                      bne #0x3db274
003db1f0  34 d0 8d e2                                      add sp, sp, #0x34
003db1f4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003db1f8  28 00 9d e5                                      ldr r0, [sp, #0x28]
003db1fc  06 00 90 e8                                      ldm r0, {r1, r2}
003db200  02 00 51 e1                                      cmp r1, r2
003db204  01 00 00 0a                                      beq #0x3db210
003db208  0d 30 a0 e1                                      mov r3, sp
003db20c  6e 04 fd eb                                      bl #0x31c3cc
003db210  04 30 96 e5                                      ldr r3, [r6, #4]
003db214  68 10 9f e5                                      ldr r1, [pc, #0x68]
003db218  05 20 a0 e1                                      mov r2, r5
003db21c  e4 03 93 e5                                      ldr r0, [r3, #0x3e4]
003db220  01 10 8f e0                                      add r1, pc, r1
003db224  9a 84 fe eb                                      bl #0x37c494
003db228  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003db22c  00 00 53 e3                                      cmp r3, #0
003db230  e5 ff ff 1a                                      bne #0x3db1cc
003db234  28 20 9d e5                                      ldr r2, [sp, #0x28]
003db238  09 00 92 e8                                      ldm r2, {r0, r3}
003db23c  03 30 60 e0                                      rsb r3, r0, r3
003db240  43 32 a0 e1                                      asr r3, r3, #4
003db244  83 21 83 e0                                      add r2, r3, r3, lsl #3
003db248  02 23 82 e0                                      add r2, r2, r2, lsl #6
003db24c  82 21 83 e0                                      add r2, r3, r2, lsl #3
003db250  82 27 82 e0                                      add r2, r2, r2, lsl #15
003db254  82 31 83 e0                                      add r3, r3, r2, lsl #3
003db258  00 30 63 e2                                      rsb r3, r3, #0
003db25c  01 00 53 e3                                      cmp r3, #1
003db260  d9 ff ff 9a                                      bls #0x3db1cc
003db264  70 00 80 e2                                      add r0, r0, #0x70
003db268  84 02 fd eb                                      bl #0x31bc80
003db26c  00 60 a0 e1                                      mov r6, r0
003db270  d6 ff ff ea                                      b #0x3db1d0
003db274  25 cc fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003db278  14 99 5b 00 ac 40 00 00 98 a6 4e 00 68 a6 4e 00  .byte 0x14, 0x99, 0x5b, 0x00, 0xac, 0x40, 0x00, 0x00, 0x98, 0xa6, 0x4e, 0x00, 0x68, 0xa6, 0x4e, 0x00
