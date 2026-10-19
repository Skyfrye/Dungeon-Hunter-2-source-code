; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0047cd0c, declared_size=8, range_size=8, mode=arm
; class-group: Objective_TalkToNPC
; alias: _ZThn24_N19Objective_TalkToNPCD0Ev
; demangled: non-virtual thunk to Objective_TalkToNPC::~Objective_TalkToNPC()
; decoder-mode: arm
0047cd0c  18 00 40 e2                                      sub r0, r0, #0x18
0047cd10  ff ff ff ea                                      b #0x47cd14

; FUNCTION 0x0047cd14, declared_size=80, range_size=80, mode=arm
; class-group: Objective_TalkToNPC
; alias: _ZN19Objective_TalkToNPCD0Ev
; demangled: Objective_TalkToNPC::~Objective_TalkToNPC()
; decoder-mode: arm
0047cd14  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0047cd18  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0047cd1c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0047cd20  03 30 8f e0                                      add r3, pc, r3
0047cd24  01 10 93 e7                                      ldr r1, [r3, r1]
0047cd28  02 20 93 e7                                      ldr r2, [r3, r2]
0047cd2c  10 40 2d e9                                      push {r4, lr}
0047cd30  08 10 81 e2                                      add r1, r1, #8
0047cd34  08 20 82 e2                                      add r2, r2, #8
0047cd38  00 40 a0 e1                                      mov r4, r0
0047cd3c  00 10 80 e5                                      str r1, [r0]
0047cd40  18 20 80 e5                                      str r2, [r0, #0x18]
0047cd44  26 f5 ff eb                                      bl #0x47a1e4
0047cd48  04 00 a0 e1                                      mov r0, r4
0047cd4c  bb 4d fa eb                                      bl #0x310440
0047cd50  04 00 a0 e1                                      mov r0, r4
0047cd54  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047cd58  70 7d 51 00 90 3a 00 00 40 0b 00 00              .byte 0x70, 0x7d, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x0047d46c, declared_size=8, range_size=8, mode=arm
; class-group: Objective_TalkToNPC
; alias: _ZThn24_N19Objective_TalkToNPCD1Ev
; demangled: non-virtual thunk to Objective_TalkToNPC::~Objective_TalkToNPC()
; decoder-mode: arm
0047d46c  18 00 40 e2                                      sub r0, r0, #0x18
0047d470  ff ff ff ea                                      b #0x47d474

; FUNCTION 0x0047d474, declared_size=72, range_size=72, mode=arm
; class-group: Objective_TalkToNPC
; alias: _ZN19Objective_TalkToNPCD1Ev
; demangled: Objective_TalkToNPC::~Objective_TalkToNPC()
; decoder-mode: arm
0047d474  34 30 9f e5                                      ldr r3, [pc, #0x34]
0047d478  34 10 9f e5                                      ldr r1, [pc, #0x34]
0047d47c  34 20 9f e5                                      ldr r2, [pc, #0x34]
0047d480  03 30 8f e0                                      add r3, pc, r3
0047d484  01 10 93 e7                                      ldr r1, [r3, r1]
0047d488  02 20 93 e7                                      ldr r2, [r3, r2]
0047d48c  10 40 2d e9                                      push {r4, lr}
0047d490  08 10 81 e2                                      add r1, r1, #8
0047d494  08 20 82 e2                                      add r2, r2, #8
0047d498  00 40 a0 e1                                      mov r4, r0
0047d49c  00 10 80 e5                                      str r1, [r0]
0047d4a0  18 20 80 e5                                      str r2, [r0, #0x18]
0047d4a4  4e f3 ff eb                                      bl #0x47a1e4
0047d4a8  04 00 a0 e1                                      mov r0, r4
0047d4ac  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047d4b0  10 76 51 00 90 3a 00 00 40 0b 00 00              .byte 0x10, 0x76, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x0047d8e8, declared_size=388, range_size=388, mode=arm
; class-group: Objective_TalkToNPC
; alias: _ZN19Objective_TalkToNPC22InstallObjectiveMarkerEii
; demangled: Objective_TalkToNPC::InstallObjectiveMarker(int, int)
; decoder-mode: arm
0047d8e8  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0047d8ec  08 30 d0 e5                                      ldrb r3, [r0, #8]
0047d8f0  64 61 9f e5                                      ldr r6, [pc, #0x164]
0047d8f4  00 50 a0 e1                                      mov r5, r0
0047d8f8  00 00 53 e3                                      cmp r3, #0
0047d8fc  06 60 8f e0                                      add r6, pc, r6
0047d900  01 70 a0 e1                                      mov r7, r1
0047d904  02 b0 a0 e1                                      mov fp, r2
0047d908  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0047d90c  02 00 00 0a                                      beq #0x47d91c
0047d910  04 30 93 e5                                      ldr r3, [r3, #4]
0047d914  05 00 53 e3                                      cmp r3, #5
0047d918  00 00 00 0a                                      beq #0x47d920
0047d91c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0047d920  38 31 9f e5                                      ldr r3, [pc, #0x138]
0047d924  24 90 90 e5                                      ldr sb, [r0, #0x24]
0047d928  03 30 96 e7                                      ldr r3, [r6, r3]
0047d92c  38 a0 93 e5                                      ldr sl, [r3, #0x38]
0047d930  60 80 ba e5                                      ldr r8, [sl, #0x60]!
0047d934  08 00 5a e1                                      cmp sl, r8
0047d938  07 00 00 0a                                      beq #0x47d95c
0047d93c  08 40 98 e5                                      ldr r4, [r8, #8]
0047d940  04 00 a0 e1                                      mov r0, r4
0047d944  fb d8 fc eb                                      bl #0x3b3d38
0047d948  00 00 59 e1                                      cmp sb, r0
0047d94c  03 00 00 0a                                      beq #0x47d960
0047d950  00 80 98 e5                                      ldr r8, [r8]
0047d954  08 00 5a e1                                      cmp sl, r8
0047d958  f7 ff ff 1a                                      bne #0x47d93c
0047d95c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0047d960  00 00 54 e3                                      cmp r4, #0
0047d964  ec ff ff 0a                                      beq #0x47d91c
0047d968  28 30 95 e5                                      ldr r3, [r5, #0x28]
0047d96c  00 00 53 e3                                      cmp r3, #0
0047d970  03 00 00 0a                                      beq #0x47d984
0047d974  00 30 95 e5                                      ldr r3, [r5]
0047d978  05 00 a0 e1                                      mov r0, r5
0047d97c  0f e0 a0 e1                                      mov lr, pc
0047d980  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0047d984  03 00 57 e3                                      cmp r7, #3
0047d988  00 30 a0 13                                      movne r3, #0
0047d98c  01 30 a0 03                                      moveq r3, #1
0047d990  01 20 a0 e3                                      mov r2, #1
0047d994  07 00 5b e3                                      cmp fp, #7
0047d998  fa 22 c4 e5                                      strb r2, [r4, #0x2fa]
0047d99c  fb 32 c4 e5                                      strb r3, [r4, #0x2fb]
0047d9a0  21 00 00 ca                                      bgt #0x47da2c
0047d9a4  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
0047d9a8  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
0047d9ac  02 00 57 e1                                      cmp r7, r2
0047d9b0  03 30 96 e7                                      ldr r3, [r6, r3]
0047d9b4  01 00 96 e7                                      ldr r0, [r6, r1]
0047d9b8  00 20 a0 e3                                      mov r2, #0
0047d9bc  00 30 93 e5                                      ldr r3, [r3]
0047d9c0  64 10 93 15                                      ldrne r1, [r3, #0x64]
0047d9c4  6c 10 93 05                                      ldreq r1, [r3, #0x6c]
0047d9c8  98 5e 00 eb                                      bl #0x495430
0047d9cc  28 00 85 e5                                      str r0, [r5, #0x28]
0047d9d0  00 00 50 e3                                      cmp r0, #0
0047d9d4  d0 ff ff 0a                                      beq #0x47d91c
0047d9d8  28 40 80 e5                                      str r4, [r0, #0x28]
0047d9dc  01 10 a0 e3                                      mov r1, #1
0047d9e0  2e 54 00 eb                                      bl #0x492aa0
0047d9e4  28 00 95 e5                                      ldr r0, [r5, #0x28]
0047d9e8  01 10 a0 e3                                      mov r1, #1
0047d9ec  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
0047d9f0  00 00 53 e3                                      cmp r3, #0
0047d9f4  08 30 93 15                                      ldrne r3, [r3, #8]
0047d9f8  04 42 83 15                                      strne r4, [r3, #0x204]
0047d9fc  28 00 95 15                                      ldrne r0, [r5, #0x28]
0047da00  3a 55 00 eb                                      bl #0x492ef0
0047da04  28 00 95 e5                                      ldr r0, [r5, #0x28]
0047da08  1b 53 00 eb                                      bl #0x49267c
0047da0c  00 30 90 e5                                      ldr r3, [r0]
0047da10  0f e0 a0 e1                                      mov lr, pc
0047da14  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0047da18  01 10 a0 e3                                      mov r1, #1
0047da1c  00 30 90 e5                                      ldr r3, [r0]
0047da20  0f e0 a0 e1                                      mov lr, pc
0047da24  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0047da28  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0047da2c  30 30 9f e5                                      ldr r3, [pc, #0x30]
0047da30  30 10 9f e5                                      ldr r1, [pc, #0x30]
0047da34  01 00 57 e3                                      cmp r7, #1
0047da38  03 30 96 e7                                      ldr r3, [r6, r3]
0047da3c  01 00 96 e7                                      ldr r0, [r6, r1]
0047da40  00 20 a0 e3                                      mov r2, #0
0047da44  00 30 93 e5                                      ldr r3, [r3]
0047da48  68 10 93 15                                      ldrne r1, [r3, #0x68]
0047da4c  70 10 93 05                                      ldreq r1, [r3, #0x70]
0047da50  76 5e 00 eb                                      bl #0x495430
0047da54  28 00 85 e5                                      str r0, [r5, #0x28]
0047da58  dc ff ff ea                                      b #0x47d9d0
; mapping-symbol data/literal pool
0047da5c  94 71 51 00 f4 37 00 00 c8 32 00 00 08 1b 00 00  .byte 0x94, 0x71, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc8, 0x32, 0x00, 0x00, 0x08, 0x1b, 0x00, 0x00

; FUNCTION 0x0047da6c, declared_size=200, range_size=200, mode=arm
; class-group: Objective_TalkToNPC
; alias: _ZN19Objective_TalkToNPC21RemoveObjectiveMarkerEv
; demangled: Objective_TalkToNPC::RemoveObjectiveMarker()
; decoder-mode: arm
0047da6c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0047da70  08 20 d0 e5                                      ldrb r2, [r0, #8]
0047da74  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
0047da78  00 40 a0 e1                                      mov r4, r0
0047da7c  00 00 52 e3                                      cmp r2, #0
0047da80  0c 10 90 e5                                      ldr r1, [r0, #0xc]
0047da84  03 30 8f e0                                      add r3, pc, r3
0047da88  02 00 00 0a                                      beq #0x47da98
0047da8c  04 20 91 e5                                      ldr r2, [r1, #4]
0047da90  05 00 52 e3                                      cmp r2, #5
0047da94  00 00 00 0a                                      beq #0x47da9c
0047da98  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0047da9c  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
0047daa0  24 80 90 e5                                      ldr r8, [r0, #0x24]
0047daa4  02 30 93 e7                                      ldr r3, [r3, r2]
0047daa8  38 70 93 e5                                      ldr r7, [r3, #0x38]
0047daac  60 50 b7 e5                                      ldr r5, [r7, #0x60]!
0047dab0  05 00 57 e1                                      cmp r7, r5
0047dab4  07 00 00 0a                                      beq #0x47dad8
0047dab8  08 60 95 e5                                      ldr r6, [r5, #8]
0047dabc  06 00 a0 e1                                      mov r0, r6
0047dac0  9c d8 fc eb                                      bl #0x3b3d38
0047dac4  00 00 58 e1                                      cmp r8, r0
0047dac8  03 00 00 0a                                      beq #0x47dadc
0047dacc  00 50 95 e5                                      ldr r5, [r5]
0047dad0  05 00 57 e1                                      cmp r7, r5
0047dad4  f7 ff ff 1a                                      bne #0x47dab8
0047dad8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0047dadc  00 00 56 e3                                      cmp r6, #0
0047dae0  ec ff ff 0a                                      beq #0x47da98
0047dae4  00 50 a0 e3                                      mov r5, #0
0047dae8  fb 52 c6 e5                                      strb r5, [r6, #0x2fb]
0047daec  fa 52 c6 e5                                      strb r5, [r6, #0x2fa]
0047daf0  28 00 94 e5                                      ldr r0, [r4, #0x28]
0047daf4  05 00 50 e1                                      cmp r0, r5
0047daf8  e6 ff ff 0a                                      beq #0x47da98
0047dafc  28 50 80 e5                                      str r5, [r0, #0x28]
0047db00  01 10 a0 e3                                      mov r1, #1
0047db04  e5 53 00 eb                                      bl #0x492aa0
0047db08  28 00 94 e5                                      ldr r0, [r4, #0x28]
0047db0c  00 10 a0 e3                                      mov r1, #0
0047db10  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
0047db14  05 00 53 e1                                      cmp r3, r5
0047db18  08 30 93 15                                      ldrne r3, [r3, #8]
0047db1c  04 52 83 15                                      strne r5, [r3, #0x204]
0047db20  28 00 94 15                                      ldrne r0, [r4, #0x28]
0047db24  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0047db28  f0 54 00 ea                                      b #0x492ef0
; mapping-symbol data/literal pool
0047db2c  0c 70 51 00 f4 37 00 00                          .byte 0x0c, 0x70, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0047db34, declared_size=144, range_size=144, mode=arm
; class-group: Objective_TalkToNPC
; alias: _ZN19Objective_TalkToNPC8RegisterEv
; demangled: Objective_TalkToNPC::Register()
; decoder-mode: arm
0047db34  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0047db38  00 40 a0 e1                                      mov r4, r0
0047db3c  cb f4 ff eb                                      bl #0x47ae70
0047db40  08 20 d4 e5                                      ldrb r2, [r4, #8]
0047db44  70 30 9f e5                                      ldr r3, [pc, #0x70]
0047db48  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0047db4c  00 00 52 e3                                      cmp r2, #0
0047db50  03 30 8f e0                                      add r3, pc, r3
0047db54  02 00 00 0a                                      beq #0x47db64
0047db58  04 20 91 e5                                      ldr r2, [r1, #4]
0047db5c  05 00 52 e3                                      cmp r2, #5
0047db60  00 00 00 0a                                      beq #0x47db68
0047db64  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0047db68  50 20 9f e5                                      ldr r2, [pc, #0x50]
0047db6c  24 70 94 e5                                      ldr r7, [r4, #0x24]
0047db70  02 30 93 e7                                      ldr r3, [r3, r2]
0047db74  38 60 93 e5                                      ldr r6, [r3, #0x38]
0047db78  60 40 b6 e5                                      ldr r4, [r6, #0x60]!
0047db7c  04 00 56 e1                                      cmp r6, r4
0047db80  07 00 00 0a                                      beq #0x47dba4
0047db84  08 50 94 e5                                      ldr r5, [r4, #8]
0047db88  05 00 a0 e1                                      mov r0, r5
0047db8c  69 d8 fc eb                                      bl #0x3b3d38
0047db90  00 00 57 e1                                      cmp r7, r0
0047db94  03 00 00 0a                                      beq #0x47dba8
0047db98  00 40 94 e5                                      ldr r4, [r4]
0047db9c  04 00 56 e1                                      cmp r6, r4
0047dba0  f7 ff ff 1a                                      bne #0x47db84
0047dba4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0047dba8  00 00 55 e3                                      cmp r5, #0
0047dbac  ec ff ff 0a                                      beq #0x47db64
0047dbb0  01 30 a0 e3                                      mov r3, #1
0047dbb4  fa 32 c5 e5                                      strb r3, [r5, #0x2fa]
0047dbb8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0047dbbc  40 6f 51 00 f4 37 00 00                          .byte 0x40, 0x6f, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0047dbc4, declared_size=144, range_size=144, mode=arm
; class-group: Objective_TalkToNPC
; alias: _ZN19Objective_TalkToNPC10UnregisterEv
; demangled: Objective_TalkToNPC::Unregister()
; decoder-mode: arm
0047dbc4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0047dbc8  00 40 a0 e1                                      mov r4, r0
0047dbcc  7a f4 ff eb                                      bl #0x47adbc
0047dbd0  08 20 d4 e5                                      ldrb r2, [r4, #8]
0047dbd4  70 30 9f e5                                      ldr r3, [pc, #0x70]
0047dbd8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0047dbdc  00 00 52 e3                                      cmp r2, #0
0047dbe0  03 30 8f e0                                      add r3, pc, r3
0047dbe4  02 00 00 0a                                      beq #0x47dbf4
0047dbe8  04 20 91 e5                                      ldr r2, [r1, #4]
0047dbec  05 00 52 e3                                      cmp r2, #5
0047dbf0  00 00 00 0a                                      beq #0x47dbf8
0047dbf4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0047dbf8  50 20 9f e5                                      ldr r2, [pc, #0x50]
0047dbfc  24 70 94 e5                                      ldr r7, [r4, #0x24]
0047dc00  02 30 93 e7                                      ldr r3, [r3, r2]
0047dc04  38 60 93 e5                                      ldr r6, [r3, #0x38]
0047dc08  60 40 b6 e5                                      ldr r4, [r6, #0x60]!
0047dc0c  04 00 56 e1                                      cmp r6, r4
0047dc10  07 00 00 0a                                      beq #0x47dc34
0047dc14  08 50 94 e5                                      ldr r5, [r4, #8]
0047dc18  05 00 a0 e1                                      mov r0, r5
0047dc1c  45 d8 fc eb                                      bl #0x3b3d38
0047dc20  00 00 57 e1                                      cmp r7, r0
0047dc24  03 00 00 0a                                      beq #0x47dc38
0047dc28  00 40 94 e5                                      ldr r4, [r4]
0047dc2c  04 00 56 e1                                      cmp r6, r4
0047dc30  f7 ff ff 1a                                      bne #0x47dc14
0047dc34  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0047dc38  00 00 55 e3                                      cmp r5, #0
0047dc3c  ec ff ff 0a                                      beq #0x47dbf4
0047dc40  00 30 a0 e3                                      mov r3, #0
0047dc44  fa 32 c5 e5                                      strb r3, [r5, #0x2fa]
0047dc48  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0047dc4c  b0 6e 51 00 f4 37 00 00                          .byte 0xb0, 0x6e, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00
