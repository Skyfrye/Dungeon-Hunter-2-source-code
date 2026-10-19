; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00461498, declared_size=92, range_size=92, mode=arm
; class-group: LevelSavegame
; alias: _ZN13LevelSavegameD1Ev
; demangled: LevelSavegame::~LevelSavegame()
; decoder-mode: arm
00461498  10 40 2d e9                                      push {r4, lr}
0046149c  48 30 9f e5                                      ldr r3, [pc, #0x48]
004614a0  48 20 9f e5                                      ldr r2, [pc, #0x48]
004614a4  04 10 90 e5                                      ldr r1, [r0, #4]
004614a8  03 30 8f e0                                      add r3, pc, r3
004614ac  02 20 93 e7                                      ldr r2, [r3, r2]
004614b0  00 00 51 e3                                      cmp r1, #0
004614b4  00 40 a0 e1                                      mov r4, r0
004614b8  08 20 82 e2                                      add r2, r2, #8
004614bc  00 20 80 e5                                      str r2, [r0]
004614c0  05 00 00 0a                                      beq #0x4614dc
004614c4  00 30 91 e5                                      ldr r3, [r1]
004614c8  01 00 a0 e1                                      mov r0, r1
004614cc  0f e0 a0 e1                                      mov lr, pc
004614d0  04 f0 93 e5                                      ldr pc, [r3, #4]
004614d4  00 30 a0 e3                                      mov r3, #0
004614d8  04 30 84 e5                                      str r3, [r4, #4]
004614dc  10 00 84 e2                                      add r0, r4, #0x10
004614e0  31 c9 fa eb                                      bl #0x3139ac
004614e4  04 00 a0 e1                                      mov r0, r4
004614e8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004614ec  e8 35 53 00 50 28 00 00                          .byte 0xe8, 0x35, 0x53, 0x00, 0x50, 0x28, 0x00, 0x00

; FUNCTION 0x004614f4, declared_size=28, range_size=28, mode=arm
; class-group: LevelSavegame
; alias: _ZN13LevelSavegameD0Ev
; demangled: LevelSavegame::~LevelSavegame()
; decoder-mode: arm
004614f4  10 40 2d e9                                      push {r4, lr}
004614f8  00 40 a0 e1                                      mov r4, r0
004614fc  e5 ff ff eb                                      bl #0x461498
00461500  04 00 a0 e1                                      mov r0, r4
00461504  cd bb fa eb                                      bl #0x310440
00461508  04 00 a0 e1                                      mov r0, r4
0046150c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00461510, declared_size=92, range_size=92, mode=arm
; class-group: LevelSavegame
; alias: _ZN13LevelSavegameD2Ev
; demangled: LevelSavegame::~LevelSavegame()
; decoder-mode: arm
00461510  10 40 2d e9                                      push {r4, lr}
00461514  48 30 9f e5                                      ldr r3, [pc, #0x48]
00461518  48 20 9f e5                                      ldr r2, [pc, #0x48]
0046151c  04 10 90 e5                                      ldr r1, [r0, #4]
00461520  03 30 8f e0                                      add r3, pc, r3
00461524  02 20 93 e7                                      ldr r2, [r3, r2]
00461528  00 00 51 e3                                      cmp r1, #0
0046152c  00 40 a0 e1                                      mov r4, r0
00461530  08 20 82 e2                                      add r2, r2, #8
00461534  00 20 80 e5                                      str r2, [r0]
00461538  05 00 00 0a                                      beq #0x461554
0046153c  00 30 91 e5                                      ldr r3, [r1]
00461540  01 00 a0 e1                                      mov r0, r1
00461544  0f e0 a0 e1                                      mov lr, pc
00461548  04 f0 93 e5                                      ldr pc, [r3, #4]
0046154c  00 30 a0 e3                                      mov r3, #0
00461550  04 30 84 e5                                      str r3, [r4, #4]
00461554  10 00 84 e2                                      add r0, r4, #0x10
00461558  13 c9 fa eb                                      bl #0x3139ac
0046155c  04 00 a0 e1                                      mov r0, r4
00461560  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00461564  70 35 53 00 50 28 00 00                          .byte 0x70, 0x35, 0x53, 0x00, 0x50, 0x28, 0x00, 0x00

; FUNCTION 0x0046156c, declared_size=128, range_size=128, mode=arm
; class-group: LevelSavegame
; alias: _ZN13LevelSavegame4LoadEv
; demangled: LevelSavegame::Load()
; decoder-mode: arm
0046156c  30 40 2d e9                                      push {r4, r5, lr}
00461570  58 40 9f e5                                      ldr r4, [pc, #0x58]
00461574  58 30 9f e5                                      ldr r3, [pc, #0x58]
00461578  58 10 9f e5                                      ldr r1, [pc, #0x58]
0046157c  04 40 8f e0                                      add r4, pc, r4
00461580  03 20 94 e7                                      ldr r2, [r4, r3]
00461584  50 30 9f e5                                      ldr r3, [pc, #0x50]
00461588  00 50 a0 e1                                      mov r5, r0
0046158c  0c d0 4d e2                                      sub sp, sp, #0xc
00461590  03 30 94 e7                                      ldr r3, [r4, r3]
00461594  04 00 90 e5                                      ldr r0, [r0, #4]
00461598  01 10 8f e0                                      add r1, pc, r1
0046159c  00 50 8d e5                                      str r5, [sp]
004615a0  a8 d0 fa eb                                      bl #0x315848
004615a4  34 30 9f e5                                      ldr r3, [pc, #0x34]
004615a8  34 10 9f e5                                      ldr r1, [pc, #0x34]
004615ac  04 00 95 e5                                      ldr r0, [r5, #4]
004615b0  03 20 94 e7                                      ldr r2, [r4, r3]
004615b4  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004615b8  01 10 8f e0                                      add r1, pc, r1
004615bc  00 50 8d e5                                      str r5, [sp]
004615c0  03 30 94 e7                                      ldr r3, [r4, r3]
004615c4  9f d0 fa eb                                      bl #0x315848
004615c8  0c d0 8d e2                                      add sp, sp, #0xc
004615cc  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
004615d0  14 35 53 00 34 16 00 00 98 bb 46 00 d8 29 00 00  .byte 0x14, 0x35, 0x53, 0x00, 0x34, 0x16, 0x00, 0x00, 0x98, 0xbb, 0x46, 0x00, 0xd8, 0x29, 0x00, 0x00
004615e0  40 1f 00 00 80 bb 46 00 e0 47 00 00              .byte 0x40, 0x1f, 0x00, 0x00, 0x80, 0xbb, 0x46, 0x00, 0xe0, 0x47, 0x00, 0x00

; FUNCTION 0x004615ec, declared_size=124, range_size=124, mode=arm
; class-group: LevelSavegame
; alias: _ZN13LevelSavegame4SaveEv
; demangled: LevelSavegame::Save()
; decoder-mode: arm
004615ec  70 40 2d e9                                      push {r4, r5, r6, lr}
004615f0  04 30 90 e5                                      ldr r3, [r0, #4]
004615f4  64 40 9f e5                                      ldr r4, [pc, #0x64]
004615f8  00 50 a0 e1                                      mov r5, r0
004615fc  00 00 53 e3                                      cmp r3, #0
00461600  04 40 8f e0                                      add r4, pc, r4
00461604  02 00 00 0a                                      beq #0x461614
00461608  39 30 d0 e5                                      ldrb r3, [r0, #0x39]
0046160c  00 00 53 e3                                      cmp r3, #0
00461610  00 00 00 0a                                      beq #0x461618
00461614  70 80 bd e8                                      pop {r4, r5, r6, pc}
00461618  5d 70 0e eb                                      bl #0x7fd794
0046161c  05 30 d0 e5                                      ldrb r3, [r0, #5]
00461620  00 00 53 e3                                      cmp r3, #0
00461624  02 00 00 1a                                      bne #0x461634
00461628  04 00 95 e5                                      ldr r0, [r5, #4]
0046162c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00461630  60 d2 fa ea                                      b #0x315fb8
00461634  28 30 9f e5                                      ldr r3, [pc, #0x28]
00461638  03 40 94 e7                                      ldr r4, [r4, r3]
0046163c  40 00 94 e5                                      ldr r0, [r4, #0x40]
00461640  8b 36 fc eb                                      bl #0x36f074
00461644  00 00 50 e3                                      cmp r0, #0
00461648  f1 ff ff 0a                                      beq #0x461614
0046164c  40 30 94 e5                                      ldr r3, [r4, #0x40]
00461650  19 37 d3 e5                                      ldrb r3, [r3, #0x719]
00461654  00 00 53 e3                                      cmp r3, #0
00461658  ed ff ff 1a                                      bne #0x461614
0046165c  f1 ff ff ea                                      b #0x461628
; mapping-symbol data/literal pool
00461660  90 34 53 00 f4 37 00 00                          .byte 0x90, 0x34, 0x53, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x004616b8, declared_size=8, range_size=8, mode=arm
; class-group: LevelSavegame
; alias: _ZN13LevelSavegame15__SaveLevelInfoEP11IStreamBasePv
; demangled: LevelSavegame::__SaveLevelInfo(IStreamBase*, void*)
; decoder-mode: arm
004616b8  28 10 81 e2                                      add r1, r1, #0x28
004616bc  51 a8 fc ea                                      b #0x38b808

; FUNCTION 0x00461820, declared_size=8, range_size=8, mode=arm
; class-group: LevelSavegame
; alias: _ZN13LevelSavegame15__LoadLevelInfoEP11IStreamBasePv
; demangled: LevelSavegame::__LoadLevelInfo(IStreamBase*, void*)
; decoder-mode: arm
00461820  2c 10 81 e2                                      add r1, r1, #0x2c
00461824  cb a7 fc ea                                      b #0x38b758

; FUNCTION 0x00461e90, declared_size=612, range_size=612, mode=arm
; class-group: LevelSavegame
; alias: _ZN13LevelSavegame13__LoadObjectsEP11IStreamBasePv
; demangled: LevelSavegame::__LoadObjects(IStreamBase*, void*)
; decoder-mode: arm
00461e90  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00461e94  48 82 9f e5                                      ldr r8, [pc, #0x248]
00461e98  48 22 9f e5                                      ldr r2, [pc, #0x248]
00461e9c  48 32 9f e5                                      ldr r3, [pc, #0x248]
00461ea0  84 d0 4d e2                                      sub sp, sp, #0x84
00461ea4  08 80 8f e0                                      add r8, pc, r8
00461ea8  24 20 8d e5                                      str r2, [sp, #0x24]
00461eac  18 30 8d e5                                      str r3, [sp, #0x18]
00461eb0  02 20 98 e7                                      ldr r2, [r8, r2]
00461eb4  03 30 98 e7                                      ldr r3, [r8, r3]
00461eb8  64 60 8d e2                                      add r6, sp, #0x64
00461ebc  00 20 92 e5                                      ldr r2, [r2]
00461ec0  38 30 93 e5                                      ldr r3, [r3, #0x38]
00461ec4  01 a0 a0 e1                                      mov sl, r1
00461ec8  00 40 a0 e1                                      mov r4, r0
00461ecc  10 10 a0 e3                                      mov r1, #0x10
00461ed0  06 00 a0 e1                                      mov r0, r6
00461ed4  7c 20 8d e5                                      str r2, [sp, #0x7c]
00461ed8  1c 30 8d e5                                      str r3, [sp, #0x1c]
00461edc  74 60 8d e5                                      str r6, [sp, #0x74]
00461ee0  78 60 8d e5                                      str r6, [sp, #0x78]
00461ee4  e4 bd fa eb                                      bl #0x31167c
00461ee8  74 30 9d e5                                      ldr r3, [sp, #0x74]
00461eec  4c 70 8d e2                                      add r7, sp, #0x4c
00461ef0  00 50 a0 e3                                      mov r5, #0
00461ef4  00 50 c3 e5                                      strb r5, [r3]
00461ef8  07 00 a0 e1                                      mov r0, r7
00461efc  10 10 a0 e3                                      mov r1, #0x10
00461f00  5c 70 8d e5                                      str r7, [sp, #0x5c]
00461f04  60 70 8d e5                                      str r7, [sp, #0x60]
00461f08  db bd fa eb                                      bl #0x31167c
00461f0c  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
00461f10  00 50 c3 e5                                      strb r5, [r3]
00461f14  38 50 da e5                                      ldrb r5, [sl, #0x38]
00461f18  00 00 55 e3                                      cmp r5, #0
00461f1c  60 00 00 1a                                      bne #0x4620a4
00461f20  04 00 a0 e1                                      mov r0, r4
00461f24  48 10 8d e2                                      add r1, sp, #0x48
00461f28  06 c7 fa eb                                      bl #0x313b48
00461f2c  48 30 9d e5                                      ldr r3, [sp, #0x48]
00461f30  00 00 53 e3                                      cmp r3, #0
00461f34  5a 00 00 0a                                      beq #0x4620a4
00461f38  b0 31 9f e5                                      ldr r3, [pc, #0x1b0]
00461f3c  44 b0 8d e2                                      add fp, sp, #0x44
00461f40  38 c0 8d e2                                      add ip, sp, #0x38
00461f44  03 30 8f e0                                      add r3, pc, r3
00461f48  2c 00 8d e2                                      add r0, sp, #0x2c
00461f4c  20 80 8d e5                                      str r8, [sp, #0x20]
00461f50  0c 30 8d e5                                      str r3, [sp, #0xc]
00461f54  08 c0 8d e5                                      str ip, [sp, #8]
00461f58  10 00 8d e5                                      str r0, [sp, #0x10]
00461f5c  05 a0 a0 e1                                      mov sl, r5
00461f60  06 90 a0 e1                                      mov sb, r6
00461f64  14 b0 8d e5                                      str fp, [sp, #0x14]
00461f68  07 80 a0 e1                                      mov r8, r7
00461f6c  25 00 00 ea                                      b #0x462008
00461f70  18 20 9d e5                                      ldr r2, [sp, #0x18]
00461f74  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00461f78  02 30 9c e7                                      ldr r3, [ip, r2]
00461f7c  01 20 a0 e3                                      mov r2, #1
00461f80  40 00 93 e5                                      ldr r0, [r3, #0x40]
00461f84  3b 31 fc eb                                      bl #0x36e478
00461f88  60 36 90 e5                                      ldr r3, [r0, #0x660]
00461f8c  00 00 53 e3                                      cmp r3, #0
00461f90  11 00 00 0a                                      beq #0x461fdc
00461f94  03 00 a0 e1                                      mov r0, r3
00461f98  04 10 a0 e1                                      mov r1, r4
00461f9c  00 30 93 e5                                      ldr r3, [r3]
00461fa0  0f e0 a0 e1                                      mov lr, pc
00461fa4  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00461fa8  00 30 94 e5                                      ldr r3, [r4]
00461fac  04 00 a0 e1                                      mov r0, r4
00461fb0  0f e0 a0 e1                                      mov lr, pc
00461fb4  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00461fb8  d8 23 cd e1                                      ldrd r2, r3, [sp, #0x38]
00461fbc  06 20 92 e0                                      adds r2, r2, r6
00461fc0  07 30 a3 e0                                      adc r3, r3, r7
00461fc4  02 00 50 e1                                      cmp r0, r2
00461fc8  41 00 00 0a                                      beq #0x4620d4
00461fcc  00 30 94 e5                                      ldr r3, [r4]
00461fd0  04 00 a0 e1                                      mov r0, r4
00461fd4  0f e0 a0 e1                                      mov lr, pc
00461fd8  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00461fdc  d8 23 cd e1                                      ldrd r2, r3, [sp, #0x38]
00461fe0  06 20 92 e0                                      adds r2, r2, r6
00461fe4  07 30 a3 e0                                      adc r3, r3, r7
00461fe8  00 10 94 e5                                      ldr r1, [r4]
00461fec  04 00 a0 e1                                      mov r0, r4
00461ff0  0f e0 a0 e1                                      mov lr, pc
00461ff4  20 f0 91 e5                                      ldr pc, [r1, #0x20]
00461ff8  48 30 9d e5                                      ldr r3, [sp, #0x48]
00461ffc  01 50 85 e2                                      add r5, r5, #1
00462000  05 00 53 e1                                      cmp r3, r5
00462004  23 00 00 9a                                      bls #0x462098
00462008  04 00 a0 e1                                      mov r0, r4
0046200c  09 10 a0 e1                                      mov r1, sb
00462010  64 ff ff eb                                      bl #0x461da8
00462014  04 00 a0 e1                                      mov r0, r4
00462018  08 10 a0 e1                                      mov r1, r8
0046201c  61 ff ff eb                                      bl #0x461da8
00462020  04 00 a0 e1                                      mov r0, r4
00462024  14 10 9d e5                                      ldr r1, [sp, #0x14]
00462028  ca a5 fc eb                                      bl #0x38b758
0046202c  04 00 a0 e1                                      mov r0, r4
00462030  08 10 9d e5                                      ldr r1, [sp, #8]
00462034  fb fd ff eb                                      bl #0x461828
00462038  00 30 94 e5                                      ldr r3, [r4]
0046203c  04 00 a0 e1                                      mov r0, r4
00462040  0f e0 a0 e1                                      mov lr, pc
00462044  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00462048  60 b0 9d e5                                      ldr fp, [sp, #0x60]
0046204c  00 60 a0 e1                                      mov r6, r0
00462050  01 70 a0 e1                                      mov r7, r1
00462054  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00462058  0b 10 a0 e1                                      mov r1, fp
0046205c  ae b0 fa eb                                      bl #0x30e31c
00462060  00 10 50 e2                                      subs r1, r0, #0
00462064  c1 ff ff 0a                                      beq #0x461f70
00462068  44 30 9d e5                                      ldr r3, [sp, #0x44]
0046206c  0b 20 a0 e1                                      mov r2, fp
00462070  10 00 9d e5                                      ldr r0, [sp, #0x10]
00462074  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00462078  00 a0 8d e5                                      str sl, [sp]
0046207c  04 a0 8d e5                                      str sl, [sp, #4]
00462080  06 a3 fb eb                                      bl #0x34aca0
00462084  10 00 9d e5                                      ldr r0, [sp, #0x10]
00462088  0a 10 a0 e1                                      mov r1, sl
0046208c  4b 77 fb eb                                      bl #0x33fdc0
00462090  00 30 a0 e1                                      mov r3, r0
00462094  bc ff ff ea                                      b #0x461f8c
00462098  08 70 a0 e1                                      mov r7, r8
0046209c  20 80 9d e5                                      ldr r8, [sp, #0x20]
004620a0  09 60 a0 e1                                      mov r6, sb
004620a4  07 00 a0 e1                                      mov r0, r7
004620a8  3f c6 fa eb                                      bl #0x3139ac
004620ac  06 00 a0 e1                                      mov r0, r6
004620b0  3d c6 fa eb                                      bl #0x3139ac
004620b4  24 00 9d e5                                      ldr r0, [sp, #0x24]
004620b8  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
004620bc  00 30 98 e7                                      ldr r3, [r8, r0]
004620c0  00 30 93 e5                                      ldr r3, [r3]
004620c4  03 00 52 e1                                      cmp r2, r3
004620c8  04 00 00 1a                                      bne #0x4620e0
004620cc  84 d0 8d e2                                      add sp, sp, #0x84
004620d0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004620d4  03 00 51 e1                                      cmp r1, r3
004620d8  bb ff ff 1a                                      bne #0x461fcc
004620dc  c5 ff ff ea                                      b #0x461ff8
004620e0  8a b0 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004620e4  ec 2b 53 00 ac 40 00 00 f4 37 00 00 cc 5c 46 00  .byte 0xec, 0x2b, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xcc, 0x5c, 0x46, 0x00

; FUNCTION 0x004620f4, declared_size=468, range_size=468, mode=arm
; class-group: LevelSavegame
; alias: _ZN13LevelSavegame18DeleteAllLevelSaveEj
; demangled: LevelSavegame::DeleteAllLevelSave(unsigned int)
; decoder-mode: arm
004620f4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004620f8  a8 51 9f e5                                      ldr r5, [pc, #0x1a8]
004620fc  a8 21 9f e5                                      ldr r2, [pc, #0x1a8]
00462100  a8 91 9f e5                                      ldr sb, [pc, #0x1a8]
00462104  05 50 8f e0                                      add r5, pc, r5
00462108  42 de 4d e2                                      sub sp, sp, #0x420
0046210c  04 d0 4d e2                                      sub sp, sp, #4
00462110  02 10 95 e7                                      ldr r1, [r5, r2]
00462114  08 20 8d e5                                      str r2, [sp, #8]
00462118  09 20 95 e7                                      ldr r2, [r5, sb]
0046211c  00 10 91 e5                                      ldr r1, [r1]
00462120  00 30 a0 e3                                      mov r3, #0
00462124  10 20 92 e5                                      ldr r2, [r2, #0x10]
00462128  1c 14 8d e5                                      str r1, [sp, #0x41c]
0046212c  18 30 8d e5                                      str r3, [sp, #0x18]
00462130  10 30 8d e5                                      str r3, [sp, #0x10]
00462134  14 30 8d e5                                      str r3, [sp, #0x14]
00462138  34 30 92 e5                                      ldr r3, [r2, #0x34]
0046213c  70 11 9f e5                                      ldr r1, [pc, #0x170]
00462140  10 20 8d e2                                      add r2, sp, #0x10
00462144  0c 20 8d e5                                      str r2, [sp, #0xc]
00462148  00 60 a0 e1                                      mov r6, r0
0046214c  01 10 8f e0                                      add r1, pc, r1
00462150  03 00 a0 e1                                      mov r0, r3
00462154  00 30 93 e5                                      ldr r3, [r3]
00462158  0f e0 a0 e1                                      mov lr, pc
0046215c  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
00462160  50 11 9f e5                                      ldr r1, [pc, #0x150]
00462164  50 21 9f e5                                      ldr r2, [pc, #0x150]
00462168  20 40 8d e2                                      add r4, sp, #0x20
0046216c  04 40 44 e2                                      sub r4, r4, #4
00462170  06 30 a0 e1                                      mov r3, r6
00462174  01 10 8f e0                                      add r1, pc, r1
00462178  02 20 8f e0                                      add r2, pc, r2
0046217c  04 00 a0 e1                                      mov r0, r4
00462180  57 b2 fa eb                                      bl #0x30eae4
00462184  10 60 9d e5                                      ldr r6, [sp, #0x10]
00462188  30 31 9f e5                                      ldr r3, [pc, #0x130]
0046218c  14 80 9d e5                                      ldr r8, [sp, #0x14]
00462190  18 60 86 e2                                      add r6, r6, #0x18
00462194  03 30 8f e0                                      add r3, pc, r3
00462198  24 a1 9f e5                                      ldr sl, [pc, #0x124]
0046219c  04 30 8d e5                                      str r3, [sp, #4]
004621a0  18 30 46 e2                                      sub r3, r6, #0x18
004621a4  03 00 58 e1                                      cmp r8, r3
004621a8  0a a0 8f e0                                      add sl, pc, sl
004621ac  1b 00 00 0a                                      beq #0x462220
004621b0  04 70 16 e5                                      ldr r7, [r6, #-4]
004621b4  04 10 a0 e1                                      mov r1, r4
004621b8  07 00 a0 e1                                      mov r0, r7
004621bc  84 b2 fa eb                                      bl #0x30ebd4
004621c0  00 00 50 e3                                      cmp r0, #0
004621c4  11 00 00 0a                                      beq #0x462210
004621c8  08 b0 16 e5                                      ldr fp, [r6, #-8]
004621cc  0b b0 67 e0                                      rsb fp, r7, fp
004621d0  0b 80 a0 e1                                      mov r8, fp
004621d4  0f b0 4b e2                                      sub fp, fp, #0xf
004621d8  08 00 5b e1                                      cmp fp, r8
004621dc  1b 00 00 8a                                      bhi #0x462250
004621e0  08 80 6b e0                                      rsb r8, fp, r8
004621e4  0f 00 58 e3                                      cmp r8, #0xf
004621e8  0f 80 a0 23                                      movhs r8, #0xf
004621ec  0f 00 58 e3                                      cmp r8, #0xf
004621f0  08 20 a0 b1                                      movlt r2, r8
004621f4  0f 20 a0 a3                                      movge r2, #0xf
004621f8  0b 00 87 e0                                      add r0, r7, fp
004621fc  0a 10 a0 e1                                      mov r1, sl
00462200  f6 b0 fa eb                                      bl #0x30e5e0
00462204  00 00 50 e3                                      cmp r0, #0
00462208  16 00 00 0a                                      beq #0x462268
0046220c  14 80 9d e5                                      ldr r8, [sp, #0x14]
00462210  18 60 86 e2                                      add r6, r6, #0x18
00462214  18 30 46 e2                                      sub r3, r6, #0x18
00462218  03 00 58 e1                                      cmp r8, r3
0046221c  e3 ff ff 1a                                      bne #0x4621b0
00462220  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00462224  41 c7 fa eb                                      bl #0x313f30
00462228  08 20 9d e5                                      ldr r2, [sp, #8]
0046222c  01 00 a0 e3                                      mov r0, #1
00462230  02 30 95 e7                                      ldr r3, [r5, r2]
00462234  1c 24 9d e5                                      ldr r2, [sp, #0x41c]
00462238  00 30 93 e5                                      ldr r3, [r3]
0046223c  03 00 52 e1                                      cmp r2, r3
00462240  17 00 00 1a                                      bne #0x4622a4
00462244  24 d0 8d e2                                      add sp, sp, #0x24
00462248  01 db 8d e2                                      add sp, sp, #0x400
0046224c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00462250  04 00 9d e5                                      ldr r0, [sp, #4]
00462254  15 9b 0a eb                                      bl #0x708eb0
00462258  04 70 16 e5                                      ldr r7, [r6, #-4]
0046225c  08 80 16 e5                                      ldr r8, [r6, #-8]
00462260  08 80 67 e0                                      rsb r8, r7, r8
00462264  dd ff ff ea                                      b #0x4621e0
00462268  0e 00 58 e3                                      cmp r8, #0xe
0046226c  e6 ff ff da                                      ble #0x46220c
00462270  0f 00 58 e3                                      cmp r8, #0xf
00462274  e4 ff ff 1a                                      bne #0x46220c
00462278  09 30 95 e7                                      ldr r3, [r5, sb]
0046227c  07 10 a0 e1                                      mov r1, r7
00462280  18 60 86 e2                                      add r6, r6, #0x18
00462284  10 30 93 e5                                      ldr r3, [r3, #0x10]
00462288  34 30 93 e5                                      ldr r3, [r3, #0x34]
0046228c  03 00 a0 e1                                      mov r0, r3
00462290  00 30 93 e5                                      ldr r3, [r3]
00462294  0f e0 a0 e1                                      mov lr, pc
00462298  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
0046229c  14 80 9d e5                                      ldr r8, [sp, #0x14]
004622a0  db ff ff ea                                      b #0x462214
004622a4  19 b0 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004622a8  8c 29 53 00 ac 40 00 00 f4 37 00 00 fc af 46 00  .byte 0x8c, 0x29, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xfc, 0xaf, 0x46, 0x00
004622b8  dc af 46 00 e0 c3 45 00 c4 c2 45 00 b0 af 46 00  .byte 0xdc, 0xaf, 0x46, 0x00, 0xe0, 0xc3, 0x45, 0x00, 0xc4, 0xc2, 0x45, 0x00, 0xb0, 0xaf, 0x46, 0x00

; FUNCTION 0x004622c8, declared_size=204, range_size=204, mode=arm
; class-group: LevelSavegame
; alias: _ZN13LevelSavegame21GetCheckpointFilenameEjibRSs
; demangled: LevelSavegame::GetCheckpointFilename(unsigned int, int, bool, std::basic_string<char, std::char_traits<char>, std::allocator<char> >&)
; decoder-mode: arm
004622c8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004622cc  a4 40 9f e5                                      ldr r4, [pc, #0xa4]
004622d0  a4 60 9f e5                                      ldr r6, [pc, #0xa4]
004622d4  00 00 52 e3                                      cmp r2, #0
004622d8  04 40 8f e0                                      add r4, pc, r4
004622dc  06 20 94 e7                                      ldr r2, [r4, r6]
004622e0  58 d0 4d e2                                      sub sp, sp, #0x58
004622e4  01 70 a0 e1                                      mov r7, r1
004622e8  00 20 92 e5                                      ldr r2, [r2]
004622ec  03 80 a0 e1                                      mov r8, r3
004622f0  54 20 8d e5                                      str r2, [sp, #0x54]
004622f4  1b 00 00 1a                                      bne #0x462368
004622f8  80 e0 9f e5                                      ldr lr, [pc, #0x80]
004622fc  0e e0 8f e0                                      add lr, pc, lr
00462300  7c c0 9f e5                                      ldr ip, [pc, #0x7c]
00462304  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
00462308  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
0046230c  14 50 8d e2                                      add r5, sp, #0x14
00462310  00 30 a0 e1                                      mov r3, r0
00462314  0c c0 8f e0                                      add ip, pc, ip
00462318  01 10 8f e0                                      add r1, pc, r1
0046231c  02 20 8f e0                                      add r2, pc, r2
00462320  05 00 a0 e1                                      mov r0, r5
00462324  04 e0 8d e5                                      str lr, [sp, #4]
00462328  08 c0 8d e5                                      str ip, [sp, #8]
0046232c  00 70 8d e5                                      str r7, [sp]
00462330  eb b1 fa eb                                      bl #0x30eae4
00462334  05 00 a0 e1                                      mov r0, r5
00462338  c5 ae fa eb                                      bl #0x30de54
0046233c  05 10 a0 e1                                      mov r1, r5
00462340  00 20 85 e0                                      add r2, r5, r0
00462344  08 00 a0 e1                                      mov r0, r8
00462348  a4 b9 fa eb                                      bl #0x3109e0
0046234c  06 30 94 e7                                      ldr r3, [r4, r6]
00462350  54 20 9d e5                                      ldr r2, [sp, #0x54]
00462354  00 30 93 e5                                      ldr r3, [r3]
00462358  03 00 52 e1                                      cmp r2, r3
0046235c  04 00 00 1a                                      bne #0x462374
00462360  58 d0 8d e2                                      add sp, sp, #0x58
00462364  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00462368  20 e0 9f e5                                      ldr lr, [pc, #0x20]
0046236c  0e e0 8f e0                                      add lr, pc, lr
00462370  e2 ff ff ea                                      b #0x462300
00462374  e5 af fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00462378  b8 27 53 00 ac 40 00 00 6c ae 46 00 74 ae 46 00  .byte 0xb8, 0x27, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x6c, 0xae, 0x46, 0x00, 0x74, 0xae, 0x46, 0x00
00462388  60 ae 46 00 3c c2 45 00 04 ae 46 00              .byte 0x60, 0xae, 0x46, 0x00, 0x3c, 0xc2, 0x45, 0x00, 0x04, 0xae, 0x46, 0x00

; FUNCTION 0x00462394, declared_size=336, range_size=336, mode=arm
; class-group: LevelSavegame
; alias: _ZNK13LevelSavegame16CheckpointExistsEi
; demangled: LevelSavegame::CheckpointExists(int) const
; decoder-mode: arm
00462394  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00462398  38 41 9f e5                                      ldr r4, [pc, #0x138]
0046239c  38 61 9f e5                                      ldr r6, [pc, #0x138]
004623a0  38 d0 4d e2                                      sub sp, sp, #0x38
004623a4  04 40 8f e0                                      add r4, pc, r4
004623a8  06 30 94 e7                                      ldr r3, [r4, r6]
004623ac  1c 50 8d e2                                      add r5, sp, #0x1c
004623b0  00 70 a0 e1                                      mov r7, r0
004623b4  00 30 93 e5                                      ldr r3, [r3]
004623b8  05 00 a0 e1                                      mov r0, r5
004623bc  01 80 a0 e1                                      mov r8, r1
004623c0  10 10 a0 e3                                      mov r1, #0x10
004623c4  34 30 8d e5                                      str r3, [sp, #0x34]
004623c8  2c 50 8d e5                                      str r5, [sp, #0x2c]
004623cc  30 50 8d e5                                      str r5, [sp, #0x30]
004623d0  a9 bc fa eb                                      bl #0x31167c
004623d4  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
004623d8  00 20 a0 e3                                      mov r2, #0
004623dc  00 20 c3 e5                                      strb r2, [r3]
004623e0  0c a0 97 e5                                      ldr sl, [r7, #0xc]
004623e4  ea 6c 0e eb                                      bl #0x7fd794
004623e8  05 30 d0 e5                                      ldrb r3, [r0, #5]
004623ec  00 00 53 e3                                      cmp r3, #0
004623f0  1a 00 00 1a                                      bne #0x462460
004623f4  e4 70 9f e5                                      ldr r7, [pc, #0xe4]
004623f8  00 20 a0 e3                                      mov r2, #0
004623fc  08 00 a0 e1                                      mov r0, r8
00462400  0a 10 a0 e1                                      mov r1, sl
00462404  05 30 a0 e1                                      mov r3, r5
00462408  ae ff ff eb                                      bl #0x4622c8
0046240c  07 70 94 e7                                      ldr r7, [r4, r7]
00462410  30 10 9d e5                                      ldr r1, [sp, #0x30]
00462414  10 30 97 e5                                      ldr r3, [r7, #0x10]
00462418  34 30 93 e5                                      ldr r3, [r3, #0x34]
0046241c  03 00 a0 e1                                      mov r0, r3
00462420  00 30 93 e5                                      ldr r3, [r3]
00462424  0f e0 a0 e1                                      mov lr, pc
00462428  b0 f0 93 e5                                      ldr pc, [r3, #0xb0]
0046242c  00 00 50 e3                                      cmp r0, #0
00462430  01 80 a0 13                                      movne r8, #1
00462434  11 00 00 0a                                      beq #0x462480
00462438  05 00 a0 e1                                      mov r0, r5
0046243c  5a c5 fa eb                                      bl #0x3139ac
00462440  06 30 94 e7                                      ldr r3, [r4, r6]
00462444  34 20 9d e5                                      ldr r2, [sp, #0x34]
00462448  08 00 a0 e1                                      mov r0, r8
0046244c  00 30 93 e5                                      ldr r3, [r3]
00462450  03 00 52 e1                                      cmp r2, r3
00462454  1e 00 00 1a                                      bne #0x4624d4
00462458  38 d0 8d e2                                      add sp, sp, #0x38
0046245c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00462460  78 70 9f e5                                      ldr r7, [pc, #0x78]
00462464  07 90 94 e7                                      ldr sb, [r4, r7]
00462468  40 00 99 e5                                      ldr r0, [sb, #0x40]
0046246c  00 33 fc eb                                      bl #0x36f074
00462470  00 00 50 e3                                      cmp r0, #0
00462474  10 00 00 1a                                      bne #0x4624bc
00462478  01 20 a0 e3                                      mov r2, #1
0046247c  de ff ff ea                                      b #0x4623fc
00462480  10 30 97 e5                                      ldr r3, [r7, #0x10]
00462484  04 70 8d e2                                      add r7, sp, #4
00462488  05 10 a0 e1                                      mov r1, r5
0046248c  34 80 93 e5                                      ldr r8, [r3, #0x34]
00462490  07 00 a0 e1                                      mov r0, r7
00462494  00 30 98 e5                                      ldr r3, [r8]
00462498  b0 a0 93 e5                                      ldr sl, [r3, #0xb0]
0046249c  b0 fd ff eb                                      bl #0x461b64
004624a0  08 00 a0 e1                                      mov r0, r8
004624a4  18 10 9d e5                                      ldr r1, [sp, #0x18]
004624a8  3a ff 2f e1                                      blx sl
004624ac  00 80 a0 e1                                      mov r8, r0
004624b0  07 00 a0 e1                                      mov r0, r7
004624b4  3c c5 fa eb                                      bl #0x3139ac
004624b8  de ff ff ea                                      b #0x462438
004624bc  40 30 99 e5                                      ldr r3, [sb, #0x40]
004624c0  19 37 d3 e5                                      ldrb r3, [r3, #0x719]
004624c4  00 00 53 e3                                      cmp r3, #0
004624c8  ca ff ff 0a                                      beq #0x4623f8
004624cc  01 20 a0 e3                                      mov r2, #1
004624d0  c9 ff ff ea                                      b #0x4623fc
004624d4  8d af fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004624d8  ec 26 53 00 ac 40 00 00 f4 37 00 00              .byte 0xec, 0x26, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x004624e4, declared_size=184, range_size=184, mode=arm
; class-group: LevelSavegame
; alias: _ZN13LevelSavegame11GetFilenameEjiiiRSs
; demangled: LevelSavegame::GetFilename(unsigned int, int, int, int, std::basic_string<char, std::char_traits<char>, std::allocator<char> >&)
; decoder-mode: arm
004624e4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004624e8  98 c0 9f e5                                      ldr ip, [pc, #0x98]
004624ec  98 e0 9f e5                                      ldr lr, [pc, #0x98]
004624f0  41 de 4d e2                                      sub sp, sp, #0x410
004624f4  0c c0 8f e0                                      add ip, pc, ip
004624f8  0e 50 9c e7                                      ldr r5, [ip, lr]
004624fc  08 d0 4d e2                                      sub sp, sp, #8
00462500  c2 6f c2 e1                                      bic r6, r2, r2, asr #31
00462504  c1 7f c1 e1                                      bic r7, r1, r1, asr #31
00462508  80 e0 9f e5                                      ldr lr, [pc, #0x80]
0046250c  80 10 9f e5                                      ldr r1, [pc, #0x80]
00462510  80 20 9f e5                                      ldr r2, [pc, #0x80]
00462514  00 80 95 e5                                      ldr r8, [r5]
00462518  18 40 8d e2                                      add r4, sp, #0x18
0046251c  04 40 44 e2                                      sub r4, r4, #4
00462520  0e e0 8f e0                                      add lr, pc, lr
00462524  01 10 8f e0                                      add r1, pc, r1
00462528  02 20 8f e0                                      add r2, pc, r2
0046252c  00 30 8d e5                                      str r3, [sp]
00462530  00 30 a0 e1                                      mov r3, r0
00462534  04 00 a0 e1                                      mov r0, r4
00462538  0c e0 8d e5                                      str lr, [sp, #0xc]
0046253c  08 60 8d e5                                      str r6, [sp, #8]
00462540  14 84 8d e5                                      str r8, [sp, #0x414]
00462544  30 64 9d e5                                      ldr r6, [sp, #0x430]
00462548  04 70 8d e5                                      str r7, [sp, #4]
0046254c  64 b1 fa eb                                      bl #0x30eae4
00462550  04 00 a0 e1                                      mov r0, r4
00462554  3e ae fa eb                                      bl #0x30de54
00462558  04 10 a0 e1                                      mov r1, r4
0046255c  00 20 84 e0                                      add r2, r4, r0
00462560  06 00 a0 e1                                      mov r0, r6
00462564  1d b9 fa eb                                      bl #0x3109e0
00462568  14 24 9d e5                                      ldr r2, [sp, #0x414]
0046256c  00 30 95 e5                                      ldr r3, [r5]
00462570  03 00 52 e1                                      cmp r2, r3
00462574  02 00 00 1a                                      bne #0x462584
00462578  18 d0 8d e2                                      add sp, sp, #0x18
0046257c  01 db 8d e2                                      add sp, sp, #0x400
00462580  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00462584  61 af fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00462588  9c 25 53 00 ac 40 00 00 38 ac 46 00 7c ac 46 00  .byte 0x9c, 0x25, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x38, 0xac, 0x46, 0x00, 0x7c, 0xac, 0x46, 0x00
00462598  30 c0 45 00                                      .byte 0x30, 0xc0, 0x45, 0x00

; FUNCTION 0x0046259c, declared_size=344, range_size=344, mode=arm
; class-group: LevelSavegame
; alias: _ZN13LevelSavegame14LoadCheckPointEiii
; demangled: LevelSavegame::LoadCheckPoint(int, int, int)
; decoder-mode: arm
0046259c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004625a0  40 61 9f e5                                      ldr r6, [pc, #0x140]
004625a4  40 81 9f e5                                      ldr r8, [pc, #0x140]
004625a8  34 d0 4d e2                                      sub sp, sp, #0x34
004625ac  06 60 8f e0                                      add r6, pc, r6
004625b0  08 c0 96 e7                                      ldr ip, [r6, r8]
004625b4  14 40 8d e2                                      add r4, sp, #0x14
004625b8  00 50 a0 e1                                      mov r5, r0
004625bc  00 c0 9c e5                                      ldr ip, [ip]
004625c0  04 00 a0 e1                                      mov r0, r4
004625c4  01 70 a0 e1                                      mov r7, r1
004625c8  10 10 a0 e3                                      mov r1, #0x10
004625cc  2c c0 8d e5                                      str ip, [sp, #0x2c]
004625d0  02 a0 a0 e1                                      mov sl, r2
004625d4  03 90 a0 e1                                      mov sb, r3
004625d8  24 40 8d e5                                      str r4, [sp, #0x24]
004625dc  28 40 8d e5                                      str r4, [sp, #0x28]
004625e0  25 bc fa eb                                      bl #0x31167c
004625e4  24 30 9d e5                                      ldr r3, [sp, #0x24]
004625e8  00 20 a0 e3                                      mov r2, #0
004625ec  00 20 c3 e5                                      strb r2, [r3]
004625f0  0c b0 95 e5                                      ldr fp, [r5, #0xc]
004625f4  66 6c 0e eb                                      bl #0x7fd794
004625f8  05 30 d0 e5                                      ldrb r3, [r0, #5]
004625fc  00 00 53 e3                                      cmp r3, #0
00462600  28 00 00 1a                                      bne #0x4626a8
00462604  00 20 a0 e3                                      mov r2, #0
00462608  0b 10 a0 e1                                      mov r1, fp
0046260c  04 30 a0 e1                                      mov r3, r4
00462610  07 00 a0 e1                                      mov r0, r7
00462614  2b ff ff eb                                      bl #0x4622c8
00462618  28 b0 9d e5                                      ldr fp, [sp, #0x28]
0046261c  0b 00 a0 e1                                      mov r0, fp
00462620  0b ae fa eb                                      bl #0x30de54
00462624  04 30 95 e5                                      ldr r3, [r5, #4]
00462628  00 20 8b e0                                      add r2, fp, r0
0046262c  0b 10 a0 e1                                      mov r1, fp
00462630  04 00 83 e2                                      add r0, r3, #4
00462634  e9 b8 fa eb                                      bl #0x3109e0
00462638  00 10 a0 e3                                      mov r1, #0
0046263c  04 00 95 e5                                      ldr r0, [r5, #4]
00462640  22 cd fa eb                                      bl #0x315ad0
00462644  05 00 a0 e1                                      mov r0, r5
00462648  c7 fb ff eb                                      bl #0x46156c
0046264c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00462650  0a 10 a0 e1                                      mov r1, sl
00462654  09 20 a0 e1                                      mov r2, sb
00462658  07 00 a0 e1                                      mov r0, r7
0046265c  00 40 8d e5                                      str r4, [sp]
00462660  9f ff ff eb                                      bl #0x4624e4
00462664  28 70 9d e5                                      ldr r7, [sp, #0x28]
00462668  07 00 a0 e1                                      mov r0, r7
0046266c  f8 ad fa eb                                      bl #0x30de54
00462670  04 30 95 e5                                      ldr r3, [r5, #4]
00462674  00 20 87 e0                                      add r2, r7, r0
00462678  07 10 a0 e1                                      mov r1, r7
0046267c  04 00 83 e2                                      add r0, r3, #4
00462680  d6 b8 fa eb                                      bl #0x3109e0
00462684  04 00 a0 e1                                      mov r0, r4
00462688  c7 c4 fa eb                                      bl #0x3139ac
0046268c  08 30 96 e7                                      ldr r3, [r6, r8]
00462690  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00462694  00 30 93 e5                                      ldr r3, [r3]
00462698  03 00 52 e1                                      cmp r2, r3
0046269c  10 00 00 1a                                      bne #0x4626e4
004626a0  34 d0 8d e2                                      add sp, sp, #0x34
004626a4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004626a8  40 30 9f e5                                      ldr r3, [pc, #0x40]
004626ac  03 30 96 e7                                      ldr r3, [r6, r3]
004626b0  40 00 93 e5                                      ldr r0, [r3, #0x40]
004626b4  0c 30 8d e5                                      str r3, [sp, #0xc]
004626b8  6d 32 fc eb                                      bl #0x36f074
004626bc  00 00 50 e3                                      cmp r0, #0
004626c0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
004626c4  01 20 a0 03                                      moveq r2, #1
004626c8  ce ff ff 0a                                      beq #0x462608
004626cc  40 30 93 e5                                      ldr r3, [r3, #0x40]
004626d0  19 37 d3 e5                                      ldrb r3, [r3, #0x719]
004626d4  00 00 53 e3                                      cmp r3, #0
004626d8  c9 ff ff 0a                                      beq #0x462604
004626dc  01 20 a0 e3                                      mov r2, #1
004626e0  c8 ff ff ea                                      b #0x462608
004626e4  09 af fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004626e8  e4 24 53 00 ac 40 00 00 f4 37 00 00              .byte 0xe4, 0x24, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x004626f4, declared_size=304, range_size=304, mode=arm
; class-group: LevelSavegame
; alias: _ZN13LevelSavegame6DeleteEjiiibb
; demangled: LevelSavegame::Delete(unsigned int, int, int, int, bool, bool)
; decoder-mode: arm
004626f4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004626f8  14 41 9f e5                                      ldr r4, [pc, #0x114]
004626fc  14 61 9f e5                                      ldr r6, [pc, #0x114]
00462700  34 d0 4d e2                                      sub sp, sp, #0x34
00462704  04 40 8f e0                                      add r4, pc, r4
00462708  06 c0 94 e7                                      ldr ip, [r4, r6]
0046270c  14 50 8d e2                                      add r5, sp, #0x14
00462710  0c 10 8d e5                                      str r1, [sp, #0xc]
00462714  00 c0 9c e5                                      ldr ip, [ip]
00462718  58 70 dd e5                                      ldrb r7, [sp, #0x58]
0046271c  00 80 a0 e1                                      mov r8, r0
00462720  10 10 a0 e3                                      mov r1, #0x10
00462724  05 00 a0 e1                                      mov r0, r5
00462728  02 90 a0 e1                                      mov sb, r2
0046272c  03 a0 a0 e1                                      mov sl, r3
00462730  2c c0 8d e5                                      str ip, [sp, #0x2c]
00462734  24 50 8d e5                                      str r5, [sp, #0x24]
00462738  28 50 8d e5                                      str r5, [sp, #0x28]
0046273c  5c b0 dd e5                                      ldrb fp, [sp, #0x5c]
00462740  cd bb fa eb                                      bl #0x31167c
00462744  24 30 9d e5                                      ldr r3, [sp, #0x24]
00462748  00 20 a0 e3                                      mov r2, #0
0046274c  00 00 57 e3                                      cmp r7, #0
00462750  00 20 c3 e5                                      strb r2, [r3]
00462754  26 00 00 0a                                      beq #0x4627f4
00462758  08 00 a0 e1                                      mov r0, r8
0046275c  0a 10 a0 e1                                      mov r1, sl
00462760  0b 20 a0 e1                                      mov r2, fp
00462764  05 30 a0 e1                                      mov r3, r5
00462768  d6 fe ff eb                                      bl #0x4622c8
0046276c  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
00462770  28 10 9d e5                                      ldr r1, [sp, #0x28]
00462774  03 70 94 e7                                      ldr r7, [r4, r3]
00462778  10 30 97 e5                                      ldr r3, [r7, #0x10]
0046277c  34 30 93 e5                                      ldr r3, [r3, #0x34]
00462780  03 00 a0 e1                                      mov r0, r3
00462784  00 30 93 e5                                      ldr r3, [r3]
00462788  0f e0 a0 e1                                      mov lr, pc
0046278c  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00462790  88 10 9f e5                                      ldr r1, [pc, #0x88]
00462794  00 80 a0 e1                                      mov r8, r0
00462798  05 00 a0 e1                                      mov r0, r5
0046279c  01 10 8f e0                                      add r1, pc, r1
004627a0  04 20 81 e2                                      add r2, r1, #4
004627a4  16 b8 fa eb                                      bl #0x310804
004627a8  10 30 97 e5                                      ldr r3, [r7, #0x10]
004627ac  28 10 9d e5                                      ldr r1, [sp, #0x28]
004627b0  34 30 93 e5                                      ldr r3, [r3, #0x34]
004627b4  03 00 a0 e1                                      mov r0, r3
004627b8  00 30 93 e5                                      ldr r3, [r3]
004627bc  0f e0 a0 e1                                      mov lr, pc
004627c0  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
004627c4  08 80 80 e1                                      orr r8, r0, r8
004627c8  05 00 a0 e1                                      mov r0, r5
004627cc  76 c4 fa eb                                      bl #0x3139ac
004627d0  06 30 94 e7                                      ldr r3, [r4, r6]
004627d4  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
004627d8  78 80 ef e6                                      uxtb r8, r8
004627dc  00 30 93 e5                                      ldr r3, [r3]
004627e0  08 00 a0 e1                                      mov r0, r8
004627e4  03 00 52 e1                                      cmp r2, r3
004627e8  08 00 00 1a                                      bne #0x462810
004627ec  34 d0 8d e2                                      add sp, sp, #0x34
004627f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004627f4  08 00 a0 e1                                      mov r0, r8
004627f8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
004627fc  09 20 a0 e1                                      mov r2, sb
00462800  0a 30 a0 e1                                      mov r3, sl
00462804  00 50 8d e5                                      str r5, [sp]
00462808  35 ff ff eb                                      bl #0x4624e4
0046280c  d6 ff ff ea                                      b #0x46276c
00462810  be ae fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00462814  8c 23 53 00 ac 40 00 00 f4 37 00 00 c4 bd 45 00  .byte 0x8c, 0x23, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc4, 0xbd, 0x45, 0x00

; FUNCTION 0x00462824, declared_size=272, range_size=272, mode=arm
; class-group: LevelSavegame
; alias: _ZN13LevelSavegame6ExistsEjiii
; demangled: LevelSavegame::Exists(unsigned int, int, int, int)
; decoder-mode: arm
00462824  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00462828  f8 40 9f e5                                      ldr r4, [pc, #0xf8]
0046282c  f8 60 9f e5                                      ldr r6, [pc, #0xf8]
00462830  40 d0 4d e2                                      sub sp, sp, #0x40
00462834  04 40 8f e0                                      add r4, pc, r4
00462838  06 c0 94 e7                                      ldr ip, [r4, r6]
0046283c  24 50 8d e2                                      add r5, sp, #0x24
00462840  00 70 a0 e1                                      mov r7, r0
00462844  00 c0 9c e5                                      ldr ip, [ip]
00462848  01 90 a0 e1                                      mov sb, r1
0046284c  05 00 a0 e1                                      mov r0, r5
00462850  10 10 a0 e3                                      mov r1, #0x10
00462854  03 80 a0 e1                                      mov r8, r3
00462858  3c c0 8d e5                                      str ip, [sp, #0x3c]
0046285c  02 a0 a0 e1                                      mov sl, r2
00462860  34 50 8d e5                                      str r5, [sp, #0x34]
00462864  38 50 8d e5                                      str r5, [sp, #0x38]
00462868  83 bb fa eb                                      bl #0x31167c
0046286c  34 30 9d e5                                      ldr r3, [sp, #0x34]
00462870  00 20 a0 e3                                      mov r2, #0
00462874  07 00 a0 e1                                      mov r0, r7
00462878  00 20 c3 e5                                      strb r2, [r3]
0046287c  09 10 a0 e1                                      mov r1, sb
00462880  08 30 a0 e1                                      mov r3, r8
00462884  0a 20 a0 e1                                      mov r2, sl
00462888  00 50 8d e5                                      str r5, [sp]
0046288c  14 ff ff eb                                      bl #0x4624e4
00462890  98 30 9f e5                                      ldr r3, [pc, #0x98]
00462894  38 10 9d e5                                      ldr r1, [sp, #0x38]
00462898  03 70 94 e7                                      ldr r7, [r4, r3]
0046289c  10 30 97 e5                                      ldr r3, [r7, #0x10]
004628a0  34 30 93 e5                                      ldr r3, [r3, #0x34]
004628a4  03 00 a0 e1                                      mov r0, r3
004628a8  00 30 93 e5                                      ldr r3, [r3]
004628ac  0f e0 a0 e1                                      mov lr, pc
004628b0  b0 f0 93 e5                                      ldr pc, [r3, #0xb0]
004628b4  00 00 50 e3                                      cmp r0, #0
004628b8  01 80 a0 13                                      movne r8, #1
004628bc  09 00 00 0a                                      beq #0x4628e8
004628c0  05 00 a0 e1                                      mov r0, r5
004628c4  38 c4 fa eb                                      bl #0x3139ac
004628c8  06 30 94 e7                                      ldr r3, [r4, r6]
004628cc  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
004628d0  08 00 a0 e1                                      mov r0, r8
004628d4  00 30 93 e5                                      ldr r3, [r3]
004628d8  03 00 52 e1                                      cmp r2, r3
004628dc  10 00 00 1a                                      bne #0x462924
004628e0  40 d0 8d e2                                      add sp, sp, #0x40
004628e4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
004628e8  10 30 97 e5                                      ldr r3, [r7, #0x10]
004628ec  0c 70 8d e2                                      add r7, sp, #0xc
004628f0  05 10 a0 e1                                      mov r1, r5
004628f4  34 80 93 e5                                      ldr r8, [r3, #0x34]
004628f8  07 00 a0 e1                                      mov r0, r7
004628fc  00 30 98 e5                                      ldr r3, [r8]
00462900  b0 a0 93 e5                                      ldr sl, [r3, #0xb0]
00462904  96 fc ff eb                                      bl #0x461b64
00462908  08 00 a0 e1                                      mov r0, r8
0046290c  20 10 9d e5                                      ldr r1, [sp, #0x20]
00462910  3a ff 2f e1                                      blx sl
00462914  00 80 a0 e1                                      mov r8, r0
00462918  07 00 a0 e1                                      mov r0, r7
0046291c  22 c4 fa eb                                      bl #0x3139ac
00462920  e6 ff ff ea                                      b #0x4628c0
00462924  79 ae fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00462928  5c 22 53 00 ac 40 00 00 f4 37 00 00              .byte 0x5c, 0x22, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00462934, declared_size=436, range_size=436, mode=arm
; class-group: LevelSavegame
; alias: _ZN13LevelSavegameC1EP5Leveljiiib
; demangled: LevelSavegame::LevelSavegame(Level*, unsigned int, int, int, int, bool)
; decoder-mode: arm
00462934  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00462938  84 51 9f e5                                      ldr r5, [pc, #0x184]
0046293c  84 c1 9f e5                                      ldr ip, [pc, #0x184]
00462940  84 81 9f e5                                      ldr r8, [pc, #0x184]
00462944  05 50 8f e0                                      add r5, pc, r5
00462948  0c c0 95 e7                                      ldr ip, [r5, ip]
0046294c  08 e0 95 e7                                      ldr lr, [r5, r8]
00462950  00 40 a0 e1                                      mov r4, r0
00462954  08 00 8c e2                                      add r0, ip, #8
00462958  2c d0 4d e2                                      sub sp, sp, #0x2c
0046295c  00 e0 9e e5                                      ldr lr, [lr]
00462960  00 00 84 e5                                      str r0, [r4]
00462964  08 10 84 e5                                      str r1, [r4, #8]
00462968  54 10 9d e5                                      ldr r1, [sp, #0x54]
0046296c  00 70 a0 e3                                      mov r7, #0
00462970  10 c0 84 e2                                      add ip, r4, #0x10
00462974  0c 10 84 e5                                      str r1, [r4, #0xc]
00462978  20 c0 84 e5                                      str ip, [r4, #0x20]
0046297c  24 c0 84 e5                                      str ip, [r4, #0x24]
00462980  0c 00 a0 e1                                      mov r0, ip
00462984  04 70 84 e5                                      str r7, [r4, #4]
00462988  10 10 a0 e3                                      mov r1, #0x10
0046298c  24 e0 8d e5                                      str lr, [sp, #0x24]
00462990  02 a0 a0 e1                                      mov sl, r2
00462994  03 b0 a0 e1                                      mov fp, r3
00462998  58 90 dd e5                                      ldrb sb, [sp, #0x58]
0046299c  36 bb fa eb                                      bl #0x31167c
004629a0  20 20 94 e5                                      ldr r2, [r4, #0x20]
004629a4  00 30 e0 e3                                      mvn r3, #0
004629a8  0c 60 8d e2                                      add r6, sp, #0xc
004629ac  00 70 c2 e5                                      strb r7, [r2]
004629b0  01 20 a0 e3                                      mov r2, #1
004629b4  34 30 84 e5                                      str r3, [r4, #0x34]
004629b8  38 20 c4 e5                                      strb r2, [r4, #0x38]
004629bc  50 20 9d e5                                      ldr r2, [sp, #0x50]
004629c0  06 00 a0 e1                                      mov r0, r6
004629c4  2c 30 84 e5                                      str r3, [r4, #0x2c]
004629c8  30 30 84 e5                                      str r3, [r4, #0x30]
004629cc  28 20 84 e5                                      str r2, [r4, #0x28]
004629d0  39 70 c4 e5                                      strb r7, [r4, #0x39]
004629d4  10 10 a0 e3                                      mov r1, #0x10
004629d8  1c 60 8d e5                                      str r6, [sp, #0x1c]
004629dc  20 60 8d e5                                      str r6, [sp, #0x20]
004629e0  25 bb fa eb                                      bl #0x31167c
004629e4  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
004629e8  07 00 59 e1                                      cmp sb, r7
004629ec  00 70 c3 e5                                      strb r7, [r3]
004629f0  2b 00 00 0a                                      beq #0x462aa4
004629f4  0a 00 a0 e1                                      mov r0, sl
004629f8  07 20 a0 e1                                      mov r2, r7
004629fc  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00462a00  06 30 a0 e1                                      mov r3, r6
00462a04  2f fe ff eb                                      bl #0x4622c8
00462a08  00 10 a0 e3                                      mov r1, #0
00462a0c  3c 00 a0 e3                                      mov r0, #0x3c
00462a10  20 a0 9d e5                                      ldr sl, [sp, #0x20]
00462a14  d5 b6 fa eb                                      bl #0x310570
00462a18  0a 10 a0 e1                                      mov r1, sl
00462a1c  00 20 a0 e3                                      mov r2, #0
00462a20  00 70 a0 e1                                      mov r7, r0
00462a24  2b cd fa eb                                      bl #0x315ed8
00462a28  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
00462a2c  a0 10 9f e5                                      ldr r1, [pc, #0xa0]
00462a30  07 00 a0 e1                                      mov r0, r7
00462a34  03 20 95 e7                                      ldr r2, [r5, r3]
00462a38  98 30 9f e5                                      ldr r3, [pc, #0x98]
00462a3c  01 10 8f e0                                      add r1, pc, r1
00462a40  04 70 84 e5                                      str r7, [r4, #4]
00462a44  03 30 95 e7                                      ldr r3, [r5, r3]
00462a48  00 40 8d e5                                      str r4, [sp]
00462a4c  ac cb fa eb                                      bl #0x315904
00462a50  84 30 9f e5                                      ldr r3, [pc, #0x84]
00462a54  84 10 9f e5                                      ldr r1, [pc, #0x84]
00462a58  04 00 94 e5                                      ldr r0, [r4, #4]
00462a5c  03 20 95 e7                                      ldr r2, [r5, r3]
00462a60  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00462a64  01 10 8f e0                                      add r1, pc, r1
00462a68  00 40 8d e5                                      str r4, [sp]
00462a6c  03 30 95 e7                                      ldr r3, [r5, r3]
00462a70  a3 cb fa eb                                      bl #0x315904
00462a74  00 30 a0 e3                                      mov r3, #0
00462a78  38 30 c4 e5                                      strb r3, [r4, #0x38]
00462a7c  06 00 a0 e1                                      mov r0, r6
00462a80  c9 c3 fa eb                                      bl #0x3139ac
00462a84  08 30 95 e7                                      ldr r3, [r5, r8]
00462a88  24 20 9d e5                                      ldr r2, [sp, #0x24]
00462a8c  04 00 a0 e1                                      mov r0, r4
00462a90  00 30 93 e5                                      ldr r3, [r3]
00462a94  03 00 52 e1                                      cmp r2, r3
00462a98  08 00 00 1a                                      bne #0x462ac0
00462a9c  2c d0 8d e2                                      add sp, sp, #0x2c
00462aa0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00462aa4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00462aa8  0a 00 a0 e1                                      mov r0, sl
00462aac  0b 10 a0 e1                                      mov r1, fp
00462ab0  50 20 9d e5                                      ldr r2, [sp, #0x50]
00462ab4  00 60 8d e5                                      str r6, [sp]
00462ab8  89 fe ff eb                                      bl #0x4624e4
00462abc  d1 ff ff ea                                      b #0x462a08
00462ac0  12 ae fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00462ac4  4c 21 53 00 50 28 00 00 ac 40 00 00 34 16 00 00  .byte 0x4c, 0x21, 0x53, 0x00, 0x50, 0x28, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0x34, 0x16, 0x00, 0x00
00462ad4  f4 a6 46 00 d8 29 00 00 40 1f 00 00 d4 a6 46 00  .byte 0xf4, 0xa6, 0x46, 0x00, 0xd8, 0x29, 0x00, 0x00, 0x40, 0x1f, 0x00, 0x00, 0xd4, 0xa6, 0x46, 0x00
00462ae4  e0 47 00 00                                      .byte 0xe0, 0x47, 0x00, 0x00

; FUNCTION 0x00462ae8, declared_size=232, range_size=232, mode=arm
; class-group: LevelSavegame
; alias: _ZN13LevelSavegame9LoadLevelEjiii
; demangled: LevelSavegame::LoadLevel(unsigned int, int, int, int)
; decoder-mode: arm
00462ae8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00462aec  d0 40 9f e5                                      ldr r4, [pc, #0xd0]
00462af0  d0 60 9f e5                                      ldr r6, [pc, #0xd0]
00462af4  1f de 4d e2                                      sub sp, sp, #0x1f0
00462af8  04 40 8f e0                                      add r4, pc, r4
00462afc  06 c0 94 e7                                      ldr ip, [r4, r6]
00462b00  00 80 a0 e1                                      mov r8, r0
00462b04  02 70 a0 e1                                      mov r7, r2
00462b08  00 c0 9c e5                                      ldr ip, [ip]
00462b0c  03 a0 a0 e1                                      mov sl, r3
00462b10  ec c1 8d e5                                      str ip, [sp, #0x1ec]
00462b14  42 ff ff eb                                      bl #0x462824
00462b18  00 00 50 e3                                      cmp r0, #0
00462b1c  20 00 00 0a                                      beq #0x462ba4
00462b20  00 50 a0 e3                                      mov r5, #0
00462b24  1b 9e 8d e2                                      add sb, sp, #0x1b0
00462b28  07 20 a0 e1                                      mov r2, r7
00462b2c  05 10 a0 e1                                      mov r1, r5
00462b30  05 30 a0 e1                                      mov r3, r5
00462b34  18 70 8d e2                                      add r7, sp, #0x18
00462b38  09 00 a0 e1                                      mov r0, sb
00462b3c  00 50 8d e5                                      str r5, [sp]
00462b40  04 50 8d e5                                      str r5, [sp, #4]
00462b44  08 50 8d e5                                      str r5, [sp, #8]
00462b48  79 ff ff eb                                      bl #0x462934
00462b4c  08 10 a0 e1                                      mov r1, r8
00462b50  01 20 a0 e3                                      mov r2, #1
00462b54  05 30 a0 e1                                      mov r3, r5
00462b58  07 00 a0 e1                                      mov r0, r7
00462b5c  92 0a 00 eb                                      bl #0x4655ac
00462b60  64 30 9f e5                                      ldr r3, [pc, #0x64]
00462b64  01 c0 a0 e3                                      mov ip, #1
00462b68  d4 11 9d e5                                      ldr r1, [sp, #0x1d4]
00462b6c  03 00 94 e7                                      ldr r0, [r4, r3]
00462b70  e0 21 9d e5                                      ldr r2, [sp, #0x1e0]
00462b74  e4 31 9d e5                                      ldr r3, [sp, #0x1e4]
00462b78  00 c0 8d e5                                      str ip, [sp]
00462b7c  08 a0 8d e5                                      str sl, [sp, #8]
00462b80  14 50 8d e5                                      str r5, [sp, #0x14]
00462b84  04 50 8d e5                                      str r5, [sp, #4]
00462b88  0c 50 8d e5                                      str r5, [sp, #0xc]
00462b8c  10 50 8d e5                                      str r5, [sp, #0x10]
00462b90  8c 24 fb eb                                      bl #0x32bdc8
00462b94  07 00 a0 e1                                      mov r0, r7
00462b98  fb 02 00 eb                                      bl #0x46378c
00462b9c  09 00 a0 e1                                      mov r0, sb
00462ba0  3c fa ff eb                                      bl #0x461498
00462ba4  06 30 94 e7                                      ldr r3, [r4, r6]
00462ba8  ec 21 9d e5                                      ldr r2, [sp, #0x1ec]
00462bac  00 30 93 e5                                      ldr r3, [r3]
00462bb0  03 00 52 e1                                      cmp r2, r3
00462bb4  01 00 00 1a                                      bne #0x462bc0
00462bb8  1f de 8d e2                                      add sp, sp, #0x1f0
00462bbc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00462bc0  d2 ad fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00462bc4  98 1f 53 00 ac 40 00 00 f4 37 00 00              .byte 0x98, 0x1f, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00462bd0, declared_size=436, range_size=436, mode=arm
; class-group: LevelSavegame
; alias: _ZN13LevelSavegameC2EP5Leveljiiib
; demangled: LevelSavegame::LevelSavegame(Level*, unsigned int, int, int, int, bool)
; decoder-mode: arm
00462bd0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00462bd4  84 51 9f e5                                      ldr r5, [pc, #0x184]
00462bd8  84 c1 9f e5                                      ldr ip, [pc, #0x184]
00462bdc  84 81 9f e5                                      ldr r8, [pc, #0x184]
00462be0  05 50 8f e0                                      add r5, pc, r5
00462be4  0c c0 95 e7                                      ldr ip, [r5, ip]
00462be8  08 e0 95 e7                                      ldr lr, [r5, r8]
00462bec  00 40 a0 e1                                      mov r4, r0
00462bf0  08 00 8c e2                                      add r0, ip, #8
00462bf4  2c d0 4d e2                                      sub sp, sp, #0x2c
00462bf8  00 e0 9e e5                                      ldr lr, [lr]
00462bfc  00 00 84 e5                                      str r0, [r4]
00462c00  08 10 84 e5                                      str r1, [r4, #8]
00462c04  54 10 9d e5                                      ldr r1, [sp, #0x54]
00462c08  00 70 a0 e3                                      mov r7, #0
00462c0c  10 c0 84 e2                                      add ip, r4, #0x10
00462c10  0c 10 84 e5                                      str r1, [r4, #0xc]
00462c14  20 c0 84 e5                                      str ip, [r4, #0x20]
00462c18  24 c0 84 e5                                      str ip, [r4, #0x24]
00462c1c  0c 00 a0 e1                                      mov r0, ip
00462c20  04 70 84 e5                                      str r7, [r4, #4]
00462c24  10 10 a0 e3                                      mov r1, #0x10
00462c28  24 e0 8d e5                                      str lr, [sp, #0x24]
00462c2c  02 a0 a0 e1                                      mov sl, r2
00462c30  03 b0 a0 e1                                      mov fp, r3
00462c34  58 90 dd e5                                      ldrb sb, [sp, #0x58]
00462c38  8f ba fa eb                                      bl #0x31167c
00462c3c  20 20 94 e5                                      ldr r2, [r4, #0x20]
00462c40  00 30 e0 e3                                      mvn r3, #0
00462c44  0c 60 8d e2                                      add r6, sp, #0xc
00462c48  00 70 c2 e5                                      strb r7, [r2]
00462c4c  01 20 a0 e3                                      mov r2, #1
00462c50  34 30 84 e5                                      str r3, [r4, #0x34]
00462c54  38 20 c4 e5                                      strb r2, [r4, #0x38]
00462c58  50 20 9d e5                                      ldr r2, [sp, #0x50]
00462c5c  06 00 a0 e1                                      mov r0, r6
00462c60  2c 30 84 e5                                      str r3, [r4, #0x2c]
00462c64  30 30 84 e5                                      str r3, [r4, #0x30]
00462c68  28 20 84 e5                                      str r2, [r4, #0x28]
00462c6c  39 70 c4 e5                                      strb r7, [r4, #0x39]
00462c70  10 10 a0 e3                                      mov r1, #0x10
00462c74  1c 60 8d e5                                      str r6, [sp, #0x1c]
00462c78  20 60 8d e5                                      str r6, [sp, #0x20]
00462c7c  7e ba fa eb                                      bl #0x31167c
00462c80  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00462c84  07 00 59 e1                                      cmp sb, r7
00462c88  00 70 c3 e5                                      strb r7, [r3]
00462c8c  2b 00 00 0a                                      beq #0x462d40
00462c90  0a 00 a0 e1                                      mov r0, sl
00462c94  07 20 a0 e1                                      mov r2, r7
00462c98  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00462c9c  06 30 a0 e1                                      mov r3, r6
00462ca0  88 fd ff eb                                      bl #0x4622c8
00462ca4  00 10 a0 e3                                      mov r1, #0
00462ca8  3c 00 a0 e3                                      mov r0, #0x3c
00462cac  20 a0 9d e5                                      ldr sl, [sp, #0x20]
00462cb0  2e b6 fa eb                                      bl #0x310570
00462cb4  0a 10 a0 e1                                      mov r1, sl
00462cb8  00 20 a0 e3                                      mov r2, #0
00462cbc  00 70 a0 e1                                      mov r7, r0
00462cc0  84 cc fa eb                                      bl #0x315ed8
00462cc4  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
00462cc8  a0 10 9f e5                                      ldr r1, [pc, #0xa0]
00462ccc  07 00 a0 e1                                      mov r0, r7
00462cd0  03 20 95 e7                                      ldr r2, [r5, r3]
00462cd4  98 30 9f e5                                      ldr r3, [pc, #0x98]
00462cd8  01 10 8f e0                                      add r1, pc, r1
00462cdc  04 70 84 e5                                      str r7, [r4, #4]
00462ce0  03 30 95 e7                                      ldr r3, [r5, r3]
00462ce4  00 40 8d e5                                      str r4, [sp]
00462ce8  05 cb fa eb                                      bl #0x315904
00462cec  84 30 9f e5                                      ldr r3, [pc, #0x84]
00462cf0  84 10 9f e5                                      ldr r1, [pc, #0x84]
00462cf4  04 00 94 e5                                      ldr r0, [r4, #4]
00462cf8  03 20 95 e7                                      ldr r2, [r5, r3]
00462cfc  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00462d00  01 10 8f e0                                      add r1, pc, r1
00462d04  00 40 8d e5                                      str r4, [sp]
00462d08  03 30 95 e7                                      ldr r3, [r5, r3]
00462d0c  fc ca fa eb                                      bl #0x315904
00462d10  00 30 a0 e3                                      mov r3, #0
00462d14  38 30 c4 e5                                      strb r3, [r4, #0x38]
00462d18  06 00 a0 e1                                      mov r0, r6
00462d1c  22 c3 fa eb                                      bl #0x3139ac
00462d20  08 30 95 e7                                      ldr r3, [r5, r8]
00462d24  24 20 9d e5                                      ldr r2, [sp, #0x24]
00462d28  04 00 a0 e1                                      mov r0, r4
00462d2c  00 30 93 e5                                      ldr r3, [r3]
00462d30  03 00 52 e1                                      cmp r2, r3
00462d34  08 00 00 1a                                      bne #0x462d5c
00462d38  2c d0 8d e2                                      add sp, sp, #0x2c
00462d3c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00462d40  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00462d44  0a 00 a0 e1                                      mov r0, sl
00462d48  0b 10 a0 e1                                      mov r1, fp
00462d4c  50 20 9d e5                                      ldr r2, [sp, #0x50]
00462d50  00 60 8d e5                                      str r6, [sp]
00462d54  e2 fd ff eb                                      bl #0x4624e4
00462d58  d1 ff ff ea                                      b #0x462ca4
00462d5c  6b ad fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00462d60  b0 1e 53 00 50 28 00 00 ac 40 00 00 34 16 00 00  .byte 0xb0, 0x1e, 0x53, 0x00, 0x50, 0x28, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0x34, 0x16, 0x00, 0x00
00462d70  58 a4 46 00 d8 29 00 00 40 1f 00 00 38 a4 46 00  .byte 0x58, 0xa4, 0x46, 0x00, 0xd8, 0x29, 0x00, 0x00, 0x40, 0x1f, 0x00, 0x00, 0x38, 0xa4, 0x46, 0x00
00462d80  e0 47 00 00                                      .byte 0xe0, 0x47, 0x00, 0x00

; FUNCTION 0x00462d84, declared_size=940, range_size=940, mode=arm
; class-group: LevelSavegame
; alias: _ZN13LevelSavegame13__SaveObjectsEP11IStreamBasePv
; demangled: LevelSavegame::__SaveObjects(IStreamBase*, void*)
; decoder-mode: arm
00462d84  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00462d88  90 23 9f e5                                      ldr r2, [pc, #0x390]
00462d8c  90 83 9f e5                                      ldr r8, [pc, #0x390]
00462d90  90 13 9f e5                                      ldr r1, [pc, #0x390]
00462d94  74 d0 4d e2                                      sub sp, sp, #0x74
00462d98  14 20 8d e5                                      str r2, [sp, #0x14]
00462d9c  08 80 8f e0                                      add r8, pc, r8
00462da0  08 10 8d e5                                      str r1, [sp, #8]
00462da4  01 20 98 e7                                      ldr r2, [r8, r1]
00462da8  14 10 9d e5                                      ldr r1, [sp, #0x14]
00462dac  54 70 8d e2                                      add r7, sp, #0x54
00462db0  00 20 92 e5                                      ldr r2, [r2]
00462db4  01 30 98 e7                                      ldr r3, [r8, r1]
00462db8  00 50 a0 e1                                      mov r5, r0
00462dbc  6c 20 8d e5                                      str r2, [sp, #0x6c]
00462dc0  38 30 93 e5                                      ldr r3, [r3, #0x38]
00462dc4  00 a0 a0 e3                                      mov sl, #0
00462dc8  07 00 a0 e1                                      mov r0, r7
00462dcc  10 10 a0 e3                                      mov r1, #0x10
00462dd0  14 40 93 e5                                      ldr r4, [r3, #0x14]
00462dd4  0c 60 83 e2                                      add r6, r3, #0xc
00462dd8  38 a0 8d e5                                      str sl, [sp, #0x38]
00462ddc  64 70 8d e5                                      str r7, [sp, #0x64]
00462de0  68 70 8d e5                                      str r7, [sp, #0x68]
00462de4  24 ba fa eb                                      bl #0x31167c
00462de8  64 30 9d e5                                      ldr r3, [sp, #0x64]
00462dec  38 20 8d e2                                      add r2, sp, #0x38
00462df0  0c 20 8d e5                                      str r2, [sp, #0xc]
00462df4  00 a0 c3 e5                                      strb sl, [r3]
00462df8  00 30 95 e5                                      ldr r3, [r5]
00462dfc  05 00 a0 e1                                      mov r0, r5
00462e00  0f e0 a0 e1                                      mov lr, pc
00462e04  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00462e08  f8 01 cd e1                                      strd r0, r1, [sp, #0x18]
00462e0c  05 00 a0 e1                                      mov r0, r5
00462e10  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00462e14  55 fa ff eb                                      bl #0x461770
00462e18  34 30 8d e2                                      add r3, sp, #0x34
00462e1c  20 30 8d e5                                      str r3, [sp, #0x20]
00462e20  04 33 9f e5                                      ldr r3, [pc, #0x304]
00462e24  28 00 8d e2                                      add r0, sp, #0x28
00462e28  10 00 8d e5                                      str r0, [sp, #0x10]
00462e2c  03 30 8f e0                                      add r3, pc, r3
00462e30  24 30 8d e5                                      str r3, [sp, #0x24]
00462e34  3c 90 8d e2                                      add sb, sp, #0x3c
00462e38  08 a0 a0 e1                                      mov sl, r8
00462e3c  04 00 56 e1                                      cmp r6, r4
00462e40  60 00 00 0a                                      beq #0x462fc8
00462e44  2c 80 94 e5                                      ldr r8, [r4, #0x2c]
00462e48  00 00 58 e3                                      cmp r8, #0
00462e4c  52 00 00 0a                                      beq #0x462f9c
00462e50  28 30 d8 e5                                      ldrb r3, [r8, #0x28]
00462e54  00 00 53 e3                                      cmp r3, #0
00462e58  4f 00 00 0a                                      beq #0x462f9c
00462e5c  4c 6a 0e eb                                      bl #0x7fd794
00462e60  05 30 d0 e5                                      ldrb r3, [r0, #5]
00462e64  00 00 53 e3                                      cmp r3, #0
00462e68  76 00 00 1a                                      bne #0x463048
00462e6c  38 30 9d e5                                      ldr r3, [sp, #0x38]
00462e70  01 30 83 e2                                      add r3, r3, #1
00462e74  38 30 8d e5                                      str r3, [sp, #0x38]
00462e78  5c b0 98 e5                                      ldr fp, [r8, #0x5c]
00462e7c  0b 00 a0 e1                                      mov r0, fp
00462e80  f3 ab fa eb                                      bl #0x30de54
00462e84  0b 10 a0 e1                                      mov r1, fp
00462e88  00 20 8b e0                                      add r2, fp, r0
00462e8c  07 00 a0 e1                                      mov r0, r7
00462e90  d2 b6 fa eb                                      bl #0x3109e0
00462e94  05 00 a0 e1                                      mov r0, r5
00462e98  07 10 a0 e1                                      mov r1, r7
00462e9c  f1 f9 ff eb                                      bl #0x461668
00462ea0  00 30 98 e5                                      ldr r3, [r8]
00462ea4  08 00 a0 e1                                      mov r0, r8
00462ea8  0f e0 a0 e1                                      mov lr, pc
00462eac  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00462eb0  00 00 50 e3                                      cmp r0, #0
00462eb4  7a 00 00 1a                                      bne #0x4630a4
00462eb8  05 00 a0 e1                                      mov r0, r5
00462ebc  14 10 84 e2                                      add r1, r4, #0x14
00462ec0  e8 f9 ff eb                                      bl #0x461668
00462ec4  64 30 98 e5                                      ldr r3, [r8, #0x64]
00462ec8  05 00 a0 e1                                      mov r0, r5
00462ecc  20 10 9d e5                                      ldr r1, [sp, #0x20]
00462ed0  34 30 8d e5                                      str r3, [sp, #0x34]
00462ed4  4b a2 fc eb                                      bl #0x38b808
00462ed8  00 00 a0 e3                                      mov r0, #0
00462edc  00 10 a0 e3                                      mov r1, #0
00462ee0  f8 02 cd e1                                      strd r0, r1, [sp, #0x28]
00462ee4  05 00 a0 e1                                      mov r0, r5
00462ee8  00 30 95 e5                                      ldr r3, [r5]
00462eec  0f e0 a0 e1                                      mov lr, pc
00462ef0  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00462ef4  f0 00 cd e1                                      strd r0, r1, [sp]
00462ef8  05 00 a0 e1                                      mov r0, r5
00462efc  10 10 9d e5                                      ldr r1, [sp, #0x10]
00462f00  ee f9 ff eb                                      bl #0x4616c0
00462f04  08 00 a0 e1                                      mov r0, r8
00462f08  05 10 a0 e1                                      mov r1, r5
00462f0c  00 30 98 e5                                      ldr r3, [r8]
00462f10  0f e0 a0 e1                                      mov lr, pc
00462f14  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00462f18  00 30 95 e5                                      ldr r3, [r5]
00462f1c  05 00 a0 e1                                      mov r0, r5
00462f20  0f e0 a0 e1                                      mov lr, pc
00462f24  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00462f28  07 20 e0 e3                                      mvn r2, #7
00462f2c  00 20 92 e0                                      adds r2, r2, r0
00462f30  00 30 e0 e3                                      mvn r3, #0
00462f34  01 30 a3 e0                                      adc r3, r3, r1
00462f38  d0 00 cd e1                                      ldrd r0, r1, [sp]
00462f3c  00 20 52 e0                                      subs r2, r2, r0
00462f40  01 30 c3 e0                                      sbc r3, r3, r1
00462f44  f8 22 cd e1                                      strd r2, r3, [sp, #0x28]
00462f48  00 20 a0 e1                                      mov r2, r0
00462f4c  01 30 a0 e1                                      mov r3, r1
00462f50  05 00 a0 e1                                      mov r0, r5
00462f54  00 10 95 e5                                      ldr r1, [r5]
00462f58  0f e0 a0 e1                                      mov lr, pc
00462f5c  2c f0 91 e5                                      ldr pc, [r1, #0x2c]
00462f60  05 00 a0 e1                                      mov r0, r5
00462f64  10 10 9d e5                                      ldr r1, [sp, #0x10]
00462f68  d4 f9 ff eb                                      bl #0x4616c0
00462f6c  d8 22 cd e1                                      ldrd r2, r3, [sp, #0x28]
00462f70  08 00 a0 e3                                      mov r0, #8
00462f74  00 20 92 e0                                      adds r2, r2, r0
00462f78  00 10 a0 e3                                      mov r1, #0
00462f7c  01 30 a3 e0                                      adc r3, r3, r1
00462f80  d0 00 cd e1                                      ldrd r0, r1, [sp]
00462f84  00 20 92 e0                                      adds r2, r2, r0
00462f88  01 30 a3 e0                                      adc r3, r3, r1
00462f8c  05 00 a0 e1                                      mov r0, r5
00462f90  00 10 95 e5                                      ldr r1, [r5]
00462f94  0f e0 a0 e1                                      mov lr, pc
00462f98  2c f0 91 e5                                      ldr pc, [r1, #0x2c]
00462f9c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00462fa0  00 00 53 e3                                      cmp r3, #0
00462fa4  01 00 00 1a                                      bne #0x462fb0
00462fa8  19 00 00 ea                                      b #0x463014
00462fac  02 30 a0 e1                                      mov r3, r2
00462fb0  08 20 93 e5                                      ldr r2, [r3, #8]
00462fb4  00 00 52 e3                                      cmp r2, #0
00462fb8  fb ff ff 1a                                      bne #0x462fac
00462fbc  03 40 a0 e1                                      mov r4, r3
00462fc0  04 00 56 e1                                      cmp r6, r4
00462fc4  9e ff ff 1a                                      bne #0x462e44
00462fc8  d8 21 cd e1                                      ldrd r2, r3, [sp, #0x18]
00462fcc  00 10 95 e5                                      ldr r1, [r5]
00462fd0  05 00 a0 e1                                      mov r0, r5
00462fd4  0f e0 a0 e1                                      mov lr, pc
00462fd8  2c f0 91 e5                                      ldr pc, [r1, #0x2c]
00462fdc  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00462fe0  05 00 a0 e1                                      mov r0, r5
00462fe4  e1 f9 ff eb                                      bl #0x461770
00462fe8  07 00 a0 e1                                      mov r0, r7
00462fec  6e c2 fa eb                                      bl #0x3139ac
00462ff0  08 10 9d e5                                      ldr r1, [sp, #8]
00462ff4  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
00462ff8  0a 80 a0 e1                                      mov r8, sl
00462ffc  01 30 9a e7                                      ldr r3, [sl, r1]
00463000  00 30 93 e5                                      ldr r3, [r3]
00463004  03 00 52 e1                                      cmp r2, r3
00463008  43 00 00 1a                                      bne #0x46311c
0046300c  74 d0 8d e2                                      add sp, sp, #0x74
00463010  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00463014  04 20 94 e5                                      ldr r2, [r4, #4]
00463018  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0046301c  04 00 51 e1                                      cmp r1, r4
00463020  05 00 00 1a                                      bne #0x46303c
00463024  02 40 a0 e1                                      mov r4, r2
00463028  04 20 92 e5                                      ldr r2, [r2, #4]
0046302c  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00463030  03 00 54 e1                                      cmp r4, r3
00463034  fa ff ff 0a                                      beq #0x463024
00463038  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0046303c  02 00 53 e1                                      cmp r3, r2
00463040  02 40 a0 11                                      movne r4, r2
00463044  7c ff ff ea                                      b #0x462e3c
00463048  00 30 98 e5                                      ldr r3, [r8]
0046304c  08 00 a0 e1                                      mov r0, r8
00463050  0f e0 a0 e1                                      mov lr, pc
00463054  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00463058  00 00 50 e3                                      cmp r0, #0
0046305c  82 ff ff 0a                                      beq #0x462e6c
00463060  00 30 98 e5                                      ldr r3, [r8]
00463064  08 00 a0 e1                                      mov r0, r8
00463068  0f e0 a0 e1                                      mov lr, pc
0046306c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00463070  00 00 50 e3                                      cmp r0, #0
00463074  7c ff ff 0a                                      beq #0x462e6c
00463078  14 10 9d e5                                      ldr r1, [sp, #0x14]
0046307c  01 30 9a e7                                      ldr r3, [sl, r1]
00463080  08 10 a0 e1                                      mov r1, r8
00463084  40 00 93 e5                                      ldr r0, [r3, #0x40]
00463088  db 2f fc eb                                      bl #0x36effc
0046308c  00 00 50 e3                                      cmp r0, #0
00463090  c1 ff ff 0a                                      beq #0x462f9c
00463094  81 30 d8 e5                                      ldrb r3, [r8, #0x81]
00463098  00 00 53 e3                                      cmp r3, #0
0046309c  be ff ff 1a                                      bne #0x462f9c
004630a0  71 ff ff ea                                      b #0x462e6c
004630a4  00 30 98 e5                                      ldr r3, [r8]
004630a8  08 00 a0 e1                                      mov r0, r8
004630ac  0f e0 a0 e1                                      mov lr, pc
004630b0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
004630b4  00 00 50 e3                                      cmp r0, #0
004630b8  7e ff ff 0a                                      beq #0x462eb8
004630bc  24 00 9d e5                                      ldr r0, [sp, #0x24]
004630c0  28 10 94 e5                                      ldr r1, [r4, #0x28]
004630c4  94 ac fa eb                                      bl #0x30e31c
004630c8  00 00 50 e3                                      cmp r0, #0
004630cc  79 ff ff 0a                                      beq #0x462eb8
004630d0  09 00 a0 e1                                      mov r0, sb
004630d4  12 10 a0 e3                                      mov r1, #0x12
004630d8  4c 90 8d e5                                      str sb, [sp, #0x4c]
004630dc  50 90 8d e5                                      str sb, [sp, #0x50]
004630e0  65 b9 fa eb                                      bl #0x31167c
004630e4  24 10 9d e5                                      ldr r1, [sp, #0x24]
004630e8  11 20 a0 e3                                      mov r2, #0x11
004630ec  50 00 9d e5                                      ldr r0, [sp, #0x50]
004630f0  dc ad fa eb                                      bl #0x30e868
004630f4  00 20 a0 e3                                      mov r2, #0
004630f8  11 30 80 e2                                      add r3, r0, #0x11
004630fc  4c 30 8d e5                                      str r3, [sp, #0x4c]
00463100  09 10 a0 e1                                      mov r1, sb
00463104  11 20 c0 e5                                      strb r2, [r0, #0x11]
00463108  05 00 a0 e1                                      mov r0, r5
0046310c  55 f9 ff eb                                      bl #0x461668
00463110  09 00 a0 e1                                      mov r0, sb
00463114  24 c2 fa eb                                      bl #0x3139ac
00463118  69 ff ff ea                                      b #0x462ec4
0046311c  7b ac fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00463120  f4 37 00 00 f4 1c 53 00 ac 40 00 00 e4 4d 46 00  .byte 0xf4, 0x37, 0x00, 0x00, 0xf4, 0x1c, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe4, 0x4d, 0x46, 0x00

; FUNCTION 0x00463130, declared_size=344, range_size=344, mode=arm
; class-group: LevelSavegame
; alias: _ZN13LevelSavegame14SaveCheckPointEiii
; demangled: LevelSavegame::SaveCheckPoint(int, int, int)
; decoder-mode: arm
00463130  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00463134  40 41 9f e5                                      ldr r4, [pc, #0x140]
00463138  40 71 9f e5                                      ldr r7, [pc, #0x140]
0046313c  00 50 a0 e1                                      mov r5, r0
00463140  04 40 8f e0                                      add r4, pc, r4
00463144  07 c0 94 e7                                      ldr ip, [r4, r7]
00463148  04 00 90 e5                                      ldr r0, [r0, #4]
0046314c  01 80 a0 e1                                      mov r8, r1
00463150  00 10 9c e5                                      ldr r1, [ip]
00463154  34 d0 4d e2                                      sub sp, sp, #0x34
00463158  00 00 50 e3                                      cmp r0, #0
0046315c  02 a0 a0 e1                                      mov sl, r2
00463160  2c 10 8d e5                                      str r1, [sp, #0x2c]
00463164  03 90 a0 e1                                      mov sb, r3
00463168  2c 00 00 0a                                      beq #0x463220
0046316c  14 60 8d e2                                      add r6, sp, #0x14
00463170  06 00 a0 e1                                      mov r0, r6
00463174  10 10 a0 e3                                      mov r1, #0x10
00463178  24 60 8d e5                                      str r6, [sp, #0x24]
0046317c  28 60 8d e5                                      str r6, [sp, #0x28]
00463180  3d b9 fa eb                                      bl #0x31167c
00463184  24 30 9d e5                                      ldr r3, [sp, #0x24]
00463188  00 20 a0 e3                                      mov r2, #0
0046318c  00 20 c3 e5                                      strb r2, [r3]
00463190  0c b0 95 e5                                      ldr fp, [r5, #0xc]
00463194  7e 69 0e eb                                      bl #0x7fd794
00463198  05 30 d0 e5                                      ldrb r3, [r0, #5]
0046319c  00 00 53 e3                                      cmp r3, #0
004631a0  25 00 00 1a                                      bne #0x46323c
004631a4  00 20 a0 e3                                      mov r2, #0
004631a8  0b 10 a0 e1                                      mov r1, fp
004631ac  06 30 a0 e1                                      mov r3, r6
004631b0  08 00 a0 e1                                      mov r0, r8
004631b4  43 fc ff eb                                      bl #0x4622c8
004631b8  28 b0 9d e5                                      ldr fp, [sp, #0x28]
004631bc  0b 00 a0 e1                                      mov r0, fp
004631c0  23 ab fa eb                                      bl #0x30de54
004631c4  04 30 95 e5                                      ldr r3, [r5, #4]
004631c8  00 20 8b e0                                      add r2, fp, r0
004631cc  0b 10 a0 e1                                      mov r1, fp
004631d0  04 00 83 e2                                      add r0, r3, #4
004631d4  01 b6 fa eb                                      bl #0x3109e0
004631d8  04 00 95 e5                                      ldr r0, [r5, #4]
004631dc  75 cb fa eb                                      bl #0x315fb8
004631e0  0c 30 95 e5                                      ldr r3, [r5, #0xc]
004631e4  0a 10 a0 e1                                      mov r1, sl
004631e8  09 20 a0 e1                                      mov r2, sb
004631ec  08 00 a0 e1                                      mov r0, r8
004631f0  00 60 8d e5                                      str r6, [sp]
004631f4  ba fc ff eb                                      bl #0x4624e4
004631f8  28 80 9d e5                                      ldr r8, [sp, #0x28]
004631fc  08 00 a0 e1                                      mov r0, r8
00463200  13 ab fa eb                                      bl #0x30de54
00463204  04 30 95 e5                                      ldr r3, [r5, #4]
00463208  00 20 88 e0                                      add r2, r8, r0
0046320c  08 10 a0 e1                                      mov r1, r8
00463210  04 00 83 e2                                      add r0, r3, #4
00463214  f1 b5 fa eb                                      bl #0x3109e0
00463218  06 00 a0 e1                                      mov r0, r6
0046321c  e2 c1 fa eb                                      bl #0x3139ac
00463220  07 30 94 e7                                      ldr r3, [r4, r7]
00463224  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00463228  00 30 93 e5                                      ldr r3, [r3]
0046322c  03 00 52 e1                                      cmp r2, r3
00463230  10 00 00 1a                                      bne #0x463278
00463234  34 d0 8d e2                                      add sp, sp, #0x34
00463238  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0046323c  40 30 9f e5                                      ldr r3, [pc, #0x40]
00463240  03 30 94 e7                                      ldr r3, [r4, r3]
00463244  40 00 93 e5                                      ldr r0, [r3, #0x40]
00463248  0c 30 8d e5                                      str r3, [sp, #0xc]
0046324c  88 2f fc eb                                      bl #0x36f074
00463250  00 00 50 e3                                      cmp r0, #0
00463254  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00463258  01 20 a0 03                                      moveq r2, #1
0046325c  d1 ff ff 0a                                      beq #0x4631a8
00463260  40 30 93 e5                                      ldr r3, [r3, #0x40]
00463264  19 37 d3 e5                                      ldrb r3, [r3, #0x719]
00463268  00 00 53 e3                                      cmp r3, #0
0046326c  cc ff ff 0a                                      beq #0x4631a4
00463270  01 20 a0 e3                                      mov r2, #1
00463274  cb ff ff ea                                      b #0x4631a8
00463278  24 ac fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0046327c  50 19 53 00 ac 40 00 00 f4 37 00 00              .byte 0x50, 0x19, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00463288, declared_size=604, range_size=604, mode=arm
; class-group: LevelSavegame
; alias: _ZN13LevelSavegame18ValidateCheckpointEiii
; demangled: LevelSavegame::ValidateCheckpoint(int, int, int)
; decoder-mode: arm
00463288  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0046328c  38 42 9f e5                                      ldr r4, [pc, #0x238]
00463290  38 72 9f e5                                      ldr r7, [pc, #0x238]
00463294  64 d0 4d e2                                      sub sp, sp, #0x64
00463298  04 40 8f e0                                      add r4, pc, r4
0046329c  07 c0 94 e7                                      ldr ip, [r4, r7]
004632a0  44 50 8d e2                                      add r5, sp, #0x44
004632a4  00 60 a0 e1                                      mov r6, r0
004632a8  00 c0 9c e5                                      ldr ip, [ip]
004632ac  05 00 a0 e1                                      mov r0, r5
004632b0  01 80 a0 e1                                      mov r8, r1
004632b4  10 10 a0 e3                                      mov r1, #0x10
004632b8  5c c0 8d e5                                      str ip, [sp, #0x5c]
004632bc  0c 20 8d e5                                      str r2, [sp, #0xc]
004632c0  03 90 a0 e1                                      mov sb, r3
004632c4  54 50 8d e5                                      str r5, [sp, #0x54]
004632c8  58 50 8d e5                                      str r5, [sp, #0x58]
004632cc  ea b8 fa eb                                      bl #0x31167c
004632d0  54 30 9d e5                                      ldr r3, [sp, #0x54]
004632d4  00 20 a0 e3                                      mov r2, #0
004632d8  00 20 c3 e5                                      strb r2, [r3]
004632dc  0c b0 96 e5                                      ldr fp, [r6, #0xc]
004632e0  2b 69 0e eb                                      bl #0x7fd794
004632e4  05 30 d0 e5                                      ldrb r3, [r0, #5]
004632e8  00 00 53 e3                                      cmp r3, #0
004632ec  66 00 00 1a                                      bne #0x46348c
004632f0  dc a1 9f e5                                      ldr sl, [pc, #0x1dc]
004632f4  00 20 a0 e3                                      mov r2, #0
004632f8  0b 10 a0 e1                                      mov r1, fp
004632fc  08 00 a0 e1                                      mov r0, r8
00463300  05 30 a0 e1                                      mov r3, r5
00463304  ef fb ff eb                                      bl #0x4622c8
00463308  0a a0 94 e7                                      ldr sl, [r4, sl]
0046330c  58 10 9d e5                                      ldr r1, [sp, #0x58]
00463310  10 30 9a e5                                      ldr r3, [sl, #0x10]
00463314  34 30 93 e5                                      ldr r3, [r3, #0x34]
00463318  03 00 a0 e1                                      mov r0, r3
0046331c  00 30 93 e5                                      ldr r3, [r3]
00463320  0f e0 a0 e1                                      mov lr, pc
00463324  b0 f0 93 e5                                      ldr pc, [r3, #0xb0]
00463328  00 00 50 e3                                      cmp r0, #0
0046332c  32 00 00 0a                                      beq #0x4633fc
00463330  58 a0 9d e5                                      ldr sl, [sp, #0x58]
00463334  0a 00 a0 e1                                      mov r0, sl
00463338  c5 aa fa eb                                      bl #0x30de54
0046333c  04 30 96 e5                                      ldr r3, [r6, #4]
00463340  00 20 8a e0                                      add r2, sl, r0
00463344  0a 10 a0 e1                                      mov r1, sl
00463348  04 00 83 e2                                      add r0, r3, #4
0046334c  a3 b5 fa eb                                      bl #0x3109e0
00463350  04 00 96 e5                                      ldr r0, [r6, #4]
00463354  00 10 a0 e3                                      mov r1, #0
00463358  dc c9 fa eb                                      bl #0x315ad0
0046335c  74 31 9f e5                                      ldr r3, [pc, #0x174]
00463360  74 11 9f e5                                      ldr r1, [pc, #0x174]
00463364  04 00 96 e5                                      ldr r0, [r6, #4]
00463368  03 20 94 e7                                      ldr r2, [r4, r3]
0046336c  6c 31 9f e5                                      ldr r3, [pc, #0x16c]
00463370  01 10 8f e0                                      add r1, pc, r1
00463374  00 60 8d e5                                      str r6, [sp]
00463378  03 30 94 e7                                      ldr r3, [r4, r3]
0046337c  31 c9 fa eb                                      bl #0x315848
00463380  2c c0 96 e5                                      ldr ip, [r6, #0x2c]
00463384  0c 30 96 e5                                      ldr r3, [r6, #0xc]
00463388  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0046338c  09 20 a0 e1                                      mov r2, sb
00463390  08 00 a0 e1                                      mov r0, r8
00463394  00 50 8d e5                                      str r5, [sp]
00463398  09 00 5c e1                                      cmp ip, sb
0046339c  00 80 a0 13                                      movne r8, #0
004633a0  01 80 a0 03                                      moveq r8, #1
004633a4  4e fc ff eb                                      bl #0x4624e4
004633a8  58 a0 9d e5                                      ldr sl, [sp, #0x58]
004633ac  0a 00 a0 e1                                      mov r0, sl
004633b0  a7 aa fa eb                                      bl #0x30de54
004633b4  04 30 96 e5                                      ldr r3, [r6, #4]
004633b8  00 20 8a e0                                      add r2, sl, r0
004633bc  0a 10 a0 e1                                      mov r1, sl
004633c0  04 00 83 e2                                      add r0, r3, #4
004633c4  85 b5 fa eb                                      bl #0x3109e0
004633c8  04 00 96 e5                                      ldr r0, [r6, #4]
004633cc  00 10 a0 e3                                      mov r1, #0
004633d0  be c9 fa eb                                      bl #0x315ad0
004633d4  05 00 a0 e1                                      mov r0, r5
004633d8  73 c1 fa eb                                      bl #0x3139ac
004633dc  07 30 94 e7                                      ldr r3, [r4, r7]
004633e0  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
004633e4  08 00 a0 e1                                      mov r0, r8
004633e8  00 30 93 e5                                      ldr r3, [r3]
004633ec  03 00 52 e1                                      cmp r2, r3
004633f0  34 00 00 1a                                      bne #0x4634c8
004633f4  64 d0 8d e2                                      add sp, sp, #0x64
004633f8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004633fc  10 20 9a e5                                      ldr r2, [sl, #0x10]
00463400  2c 30 8d e2                                      add r3, sp, #0x2c
00463404  03 00 a0 e1                                      mov r0, r3
00463408  34 a0 92 e5                                      ldr sl, [r2, #0x34]
0046340c  05 10 a0 e1                                      mov r1, r5
00463410  00 20 9a e5                                      ldr r2, [sl]
00463414  b0 b0 92 e5                                      ldr fp, [r2, #0xb0]
00463418  08 30 8d e5                                      str r3, [sp, #8]
0046341c  d0 f9 ff eb                                      bl #0x461b64
00463420  0a 00 a0 e1                                      mov r0, sl
00463424  40 10 9d e5                                      ldr r1, [sp, #0x40]
00463428  3b ff 2f e1                                      blx fp
0046342c  08 30 9d e5                                      ldr r3, [sp, #8]
00463430  00 a0 a0 e1                                      mov sl, r0
00463434  03 00 a0 e1                                      mov r0, r3
00463438  5b c1 fa eb                                      bl #0x3139ac
0046343c  00 00 5a e3                                      cmp sl, #0
00463440  0a 80 a0 01                                      moveq r8, sl
00463444  e2 ff ff 0a                                      beq #0x4633d4
00463448  04 30 96 e5                                      ldr r3, [r6, #4]
0046344c  14 a0 8d e2                                      add sl, sp, #0x14
00463450  05 10 a0 e1                                      mov r1, r5
00463454  0a 00 a0 e1                                      mov r0, sl
00463458  08 30 8d e5                                      str r3, [sp, #8]
0046345c  c0 f9 ff eb                                      bl #0x461b64
00463460  28 b0 9d e5                                      ldr fp, [sp, #0x28]
00463464  0b 00 a0 e1                                      mov r0, fp
00463468  79 aa fa eb                                      bl #0x30de54
0046346c  08 30 9d e5                                      ldr r3, [sp, #8]
00463470  00 20 8b e0                                      add r2, fp, r0
00463474  0b 10 a0 e1                                      mov r1, fp
00463478  04 00 83 e2                                      add r0, r3, #4
0046347c  57 b5 fa eb                                      bl #0x3109e0
00463480  0a 00 a0 e1                                      mov r0, sl
00463484  48 c1 fa eb                                      bl #0x3139ac
00463488  b0 ff ff ea                                      b #0x463350
0046348c  40 a0 9f e5                                      ldr sl, [pc, #0x40]
00463490  0a 30 94 e7                                      ldr r3, [r4, sl]
00463494  40 00 93 e5                                      ldr r0, [r3, #0x40]
00463498  08 30 8d e5                                      str r3, [sp, #8]
0046349c  f4 2e fc eb                                      bl #0x36f074
004634a0  00 00 50 e3                                      cmp r0, #0
004634a4  08 30 9d e5                                      ldr r3, [sp, #8]
004634a8  01 20 a0 03                                      moveq r2, #1
004634ac  91 ff ff 0a                                      beq #0x4632f8
004634b0  40 30 93 e5                                      ldr r3, [r3, #0x40]
004634b4  19 37 d3 e5                                      ldrb r3, [r3, #0x719]
004634b8  00 00 53 e3                                      cmp r3, #0
004634bc  8c ff ff 0a                                      beq #0x4632f4
004634c0  01 20 a0 e3                                      mov r2, #1
004634c4  8b ff ff ea                                      b #0x4632f8
004634c8  90 ab fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004634cc  f8 17 53 00 ac 40 00 00 f4 37 00 00 34 16 00 00  .byte 0xf8, 0x17, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x34, 0x16, 0x00, 0x00
004634dc  c0 9d 46 00 d8 29 00 00                          .byte 0xc0, 0x9d, 0x46, 0x00, 0xd8, 0x29, 0x00, 0x00
