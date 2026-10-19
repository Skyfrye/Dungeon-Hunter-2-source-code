; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003e60fc, declared_size=92, range_size=92, mode=arm
; class-group: ProjectileManager
; alias: _ZN17ProjectileManagerC2Ev
; demangled: ProjectileManager::ProjectileManager()
; decoder-mode: arm
003e60fc  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
003e6100  4c c0 9f e5                                      ldr ip, [pc, #0x4c]
003e6104  00 20 a0 e3                                      mov r2, #0
003e6108  01 10 8f e0                                      add r1, pc, r1
003e610c  0c c0 91 e7                                      ldr ip, [r1, ip]
003e6110  34 20 80 e5                                      str r2, [r0, #0x34]
003e6114  04 20 80 e5                                      str r2, [r0, #4]
003e6118  08 c0 8c e2                                      add ip, ip, #8
003e611c  00 c0 80 e5                                      str ip, [r0]
003e6120  08 20 80 e5                                      str r2, [r0, #8]
003e6124  0c 20 80 e5                                      str r2, [r0, #0xc]
003e6128  10 20 80 e5                                      str r2, [r0, #0x10]
003e612c  14 20 80 e5                                      str r2, [r0, #0x14]
003e6130  18 20 80 e5                                      str r2, [r0, #0x18]
003e6134  1c 20 80 e5                                      str r2, [r0, #0x1c]
003e6138  20 20 80 e5                                      str r2, [r0, #0x20]
003e613c  24 20 80 e5                                      str r2, [r0, #0x24]
003e6140  28 20 80 e5                                      str r2, [r0, #0x28]
003e6144  2c 20 80 e5                                      str r2, [r0, #0x2c]
003e6148  30 20 80 e5                                      str r2, [r0, #0x30]
003e614c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003e6150  88 e9 5a 00 3c 42 00 00                          .byte 0x88, 0xe9, 0x5a, 0x00, 0x3c, 0x42, 0x00, 0x00

; FUNCTION 0x003e6158, declared_size=92, range_size=92, mode=arm
; class-group: ProjectileManager
; alias: _ZN17ProjectileManagerC1Ev
; demangled: ProjectileManager::ProjectileManager()
; decoder-mode: arm
003e6158  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
003e615c  4c c0 9f e5                                      ldr ip, [pc, #0x4c]
003e6160  00 20 a0 e3                                      mov r2, #0
003e6164  01 10 8f e0                                      add r1, pc, r1
003e6168  0c c0 91 e7                                      ldr ip, [r1, ip]
003e616c  34 20 80 e5                                      str r2, [r0, #0x34]
003e6170  04 20 80 e5                                      str r2, [r0, #4]
003e6174  08 c0 8c e2                                      add ip, ip, #8
003e6178  00 c0 80 e5                                      str ip, [r0]
003e617c  08 20 80 e5                                      str r2, [r0, #8]
003e6180  0c 20 80 e5                                      str r2, [r0, #0xc]
003e6184  10 20 80 e5                                      str r2, [r0, #0x10]
003e6188  14 20 80 e5                                      str r2, [r0, #0x14]
003e618c  18 20 80 e5                                      str r2, [r0, #0x18]
003e6190  1c 20 80 e5                                      str r2, [r0, #0x1c]
003e6194  20 20 80 e5                                      str r2, [r0, #0x20]
003e6198  24 20 80 e5                                      str r2, [r0, #0x24]
003e619c  28 20 80 e5                                      str r2, [r0, #0x28]
003e61a0  2c 20 80 e5                                      str r2, [r0, #0x2c]
003e61a4  30 20 80 e5                                      str r2, [r0, #0x30]
003e61a8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003e61ac  2c e9 5a 00 3c 42 00 00                          .byte 0x2c, 0xe9, 0x5a, 0x00, 0x3c, 0x42, 0x00, 0x00

; FUNCTION 0x003e61b4, declared_size=528, range_size=528, mode=arm
; class-group: ProjectileManager
; alias: _ZN17ProjectileManager7DeSpawnEP10Projectileb
; demangled: ProjectileManager::DeSpawn(Projectile*, bool)
; decoder-mode: arm
003e61b4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003e61b8  e0 41 9f e5                                      ldr r4, [pc, #0x1e0]
003e61bc  00 60 51 e2                                      subs r6, r1, #0
003e61c0  08 d0 4d e2                                      sub sp, sp, #8
003e61c4  00 50 a0 e1                                      mov r5, r0
003e61c8  04 40 8f e0                                      add r4, pc, r4
003e61cc  4d 00 00 0a                                      beq #0x3e6308
003e61d0  00 00 52 e3                                      cmp r2, #0
003e61d4  1b 00 00 1a                                      bne #0x3e6248
003e61d8  10 10 90 e5                                      ldr r1, [r0, #0x10]
003e61dc  14 00 90 e5                                      ldr r0, [r0, #0x14]
003e61e0  00 00 61 e0                                      rsb r0, r1, r0
003e61e4  c0 01 b0 e1                                      asrs r0, r0, #3
003e61e8  0d 00 00 0a                                      beq #0x3e6224
003e61ec  00 30 91 e5                                      ldr r3, [r1]
003e61f0  03 00 56 e1                                      cmp r6, r3
003e61f4  02 80 a0 01                                      moveq r8, r2
003e61f8  08 70 a0 01                                      moveq r7, r8
003e61fc  33 00 00 0a                                      beq #0x3e62d0
003e6200  02 70 a0 e1                                      mov r7, r2
003e6204  03 00 00 ea                                      b #0x3e6218
003e6208  87 31 91 e7                                      ldr r3, [r1, r7, lsl #3]
003e620c  87 81 a0 e1                                      lsl r8, r7, #3
003e6210  03 00 56 e1                                      cmp r6, r3
003e6214  2d 00 00 0a                                      beq #0x3e62d0
003e6218  01 70 87 e2                                      add r7, r7, #1
003e621c  00 00 57 e1                                      cmp r7, r0
003e6220  f8 ff ff 1a                                      bne #0x3e6208
003e6224  78 31 9f e5                                      ldr r3, [pc, #0x178]
003e6228  03 30 94 e7                                      ldr r3, [r4, r3]
003e622c  00 30 93 e5                                      ldr r3, [r3]
003e6230  02 00 53 e3                                      cmp r3, #2
003e6234  49 00 00 0a                                      beq #0x3e6360
003e6238  01 00 53 e3                                      cmp r3, #1
003e623c  4a 00 00 0a                                      beq #0x3e636c
003e6240  08 d0 8d e2                                      add sp, sp, #8
003e6244  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003e6248  24 20 90 e5                                      ldr r2, [r0, #0x24]
003e624c  28 10 90 e5                                      ldr r1, [r0, #0x28]
003e6250  01 10 62 e0                                      rsb r1, r2, r1
003e6254  c1 11 b0 e1                                      asrs r1, r1, #3
003e6258  f1 ff ff 0a                                      beq #0x3e6224
003e625c  00 30 92 e5                                      ldr r3, [r2]
003e6260  03 00 56 e1                                      cmp r6, r3
003e6264  00 80 a0 03                                      moveq r8, #0
003e6268  08 70 a0 01                                      moveq r7, r8
003e626c  09 00 00 0a                                      beq #0x3e6298
003e6270  00 70 a0 e3                                      mov r7, #0
003e6274  03 00 00 ea                                      b #0x3e6288
003e6278  87 31 92 e7                                      ldr r3, [r2, r7, lsl #3]
003e627c  87 81 a0 e1                                      lsl r8, r7, #3
003e6280  03 00 56 e1                                      cmp r6, r3
003e6284  03 00 00 0a                                      beq #0x3e6298
003e6288  01 70 87 e2                                      add r7, r7, #1
003e628c  01 00 57 e1                                      cmp r7, r1
003e6290  f8 ff ff 1a                                      bne #0x3e6278
003e6294  e2 ff ff ea                                      b #0x3e6224
003e6298  00 30 96 e5                                      ldr r3, [r6]
003e629c  00 10 a0 e3                                      mov r1, #0
003e62a0  06 00 a0 e1                                      mov r0, r6
003e62a4  0f e0 a0 e1                                      mov lr, pc
003e62a8  40 f0 93 e5                                      ldr pc, [r3, #0x40]
003e62ac  06 00 a0 e1                                      mov r0, r6
003e62b0  90 b5 fe eb                                      bl #0x3938f8
003e62b4  00 30 a0 e3                                      mov r3, #0
003e62b8  85 30 c6 e5                                      strb r3, [r6, #0x85]
003e62bc  24 20 95 e5                                      ldr r2, [r5, #0x24]
003e62c0  08 80 82 e0                                      add r8, r2, r8
003e62c4  04 30 c8 e5                                      strb r3, [r8, #4]
003e62c8  34 70 85 e5                                      str r7, [r5, #0x34]
003e62cc  db ff ff ea                                      b #0x3e6240
003e62d0  00 30 96 e5                                      ldr r3, [r6]
003e62d4  00 10 a0 e3                                      mov r1, #0
003e62d8  06 00 a0 e1                                      mov r0, r6
003e62dc  0f e0 a0 e1                                      mov lr, pc
003e62e0  40 f0 93 e5                                      ldr pc, [r3, #0x40]
003e62e4  06 00 a0 e1                                      mov r0, r6
003e62e8  82 b5 fe eb                                      bl #0x3938f8
003e62ec  00 30 a0 e3                                      mov r3, #0
003e62f0  85 30 c6 e5                                      strb r3, [r6, #0x85]
003e62f4  10 20 95 e5                                      ldr r2, [r5, #0x10]
003e62f8  08 80 82 e0                                      add r8, r2, r8
003e62fc  04 30 c8 e5                                      strb r3, [r8, #4]
003e6300  20 70 85 e5                                      str r7, [r5, #0x20]
003e6304  cd ff ff ea                                      b #0x3e6240
003e6308  94 30 9f e5                                      ldr r3, [pc, #0x94]
003e630c  03 50 94 e7                                      ldr r5, [r4, r3]
003e6310  00 30 95 e5                                      ldr r3, [r5]
003e6314  02 00 53 e3                                      cmp r3, #2
003e6318  00 60 86 05                                      streq r6, [r6]
003e631c  0f 00 00 0a                                      beq #0x3e6360
003e6320  01 00 53 e3                                      cmp r3, #1
003e6324  c1 ff ff 1a                                      bne #0x3e6230
003e6328  78 00 9f e5                                      ldr r0, [pc, #0x78]
003e632c  78 10 9f e5                                      ldr r1, [pc, #0x78]
003e6330  78 20 9f e5                                      ldr r2, [pc, #0x78]
003e6334  00 00 94 e7                                      ldr r0, [r4, r0]
003e6338  74 30 9f e5                                      ldr r3, [pc, #0x74]
003e633c  1a c1 00 e3                                      movw ip, #0x11a
003e6340  01 10 8f e0                                      add r1, pc, r1
003e6344  03 30 8f e0                                      add r3, pc, r3
003e6348  a8 00 80 e2                                      add r0, r0, #0xa8
003e634c  02 20 8f e0                                      add r2, pc, r2
003e6350  00 c0 8d e5                                      str ip, [sp]
003e6354  2a 9f fc eb                                      bl #0x30e004
003e6358  00 30 95 e5                                      ldr r3, [r5]
003e635c  b3 ff ff ea                                      b #0x3e6230
003e6360  00 30 a0 e3                                      mov r3, #0
003e6364  00 30 83 e5                                      str r3, [r3]
003e6368  b4 ff ff ea                                      b #0x3e6240
003e636c  34 00 9f e5                                      ldr r0, [pc, #0x34]
003e6370  40 10 9f e5                                      ldr r1, [pc, #0x40]
003e6374  40 20 9f e5                                      ldr r2, [pc, #0x40]
003e6378  00 00 94 e7                                      ldr r0, [r4, r0]
003e637c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
003e6380  3e c1 00 e3                                      movw ip, #0x13e
003e6384  01 10 8f e0                                      add r1, pc, r1
003e6388  02 20 8f e0                                      add r2, pc, r2
003e638c  03 30 8f e0                                      add r3, pc, r3
003e6390  a8 00 80 e2                                      add r0, r0, #0xa8
003e6394  00 c0 8d e5                                      str ip, [sp]
003e6398  19 9f fc eb                                      bl #0x30e004
003e639c  a7 ff ff ea                                      b #0x3e6240
; mapping-symbol data/literal pool
003e63a0  c8 e8 5a 00 c0 39 00 00 c0 19 00 00 98 80 4d 00  .byte 0xc8, 0xe8, 0x5a, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x98, 0x80, 0x4d, 0x00
003e63b0  fc 2d 4e 00 dc fc 4d 00 54 80 4d 00 f0 fc 4d 00  .byte 0xfc, 0x2d, 0x4e, 0x00, 0xdc, 0xfc, 0x4d, 0x00, 0x54, 0x80, 0x4d, 0x00, 0xf0, 0xfc, 0x4d, 0x00
003e63c0  94 fc 4d 00                                      .byte 0x94, 0xfc, 0x4d, 0x00

; FUNCTION 0x003e646c, declared_size=260, range_size=260, mode=arm
; class-group: ProjectileManager
; alias: _ZN17ProjectileManager5FlushEv
; demangled: ProjectileManager::Flush()
; decoder-mode: arm
003e646c  70 40 2d e9                                      push {r4, r5, r6, lr}
003e6470  00 40 a0 e1                                      mov r4, r0
003e6474  10 20 94 e5                                      ldr r2, [r4, #0x10]
003e6478  14 00 90 e5                                      ldr r0, [r0, #0x14]
003e647c  10 d0 4d e2                                      sub sp, sp, #0x10
003e6480  00 60 62 e0                                      rsb r6, r2, r0
003e6484  c6 61 b0 e1                                      asrs r6, r6, #3
003e6488  10 00 00 0a                                      beq #0x3e64d0
003e648c  00 50 a0 e3                                      mov r5, #0
003e6490  00 00 00 ea                                      b #0x3e6498
003e6494  10 20 94 e5                                      ldr r2, [r4, #0x10]
003e6498  85 31 92 e7                                      ldr r3, [r2, r5, lsl #3]
003e649c  00 10 a0 e3                                      mov r1, #0
003e64a0  03 00 a0 e1                                      mov r0, r3
003e64a4  00 30 93 e5                                      ldr r3, [r3]
003e64a8  0f e0 a0 e1                                      mov lr, pc
003e64ac  40 f0 93 e5                                      ldr pc, [r3, #0x40]
003e64b0  10 30 94 e5                                      ldr r3, [r4, #0x10]
003e64b4  85 01 93 e7                                      ldr r0, [r3, r5, lsl #3]
003e64b8  01 50 85 e2                                      add r5, r5, #1
003e64bc  3c 5e fd eb                                      bl #0x33ddb4
003e64c0  06 00 55 e1                                      cmp r5, r6
003e64c4  f2 ff ff 1a                                      bne #0x3e6494
003e64c8  10 20 94 e5                                      ldr r2, [r4, #0x10]
003e64cc  14 00 94 e5                                      ldr r0, [r4, #0x14]
003e64d0  00 00 52 e1                                      cmp r2, r0
003e64d4  05 00 00 0a                                      beq #0x3e64f0
003e64d8  00 c0 a0 e3                                      mov ip, #0
003e64dc  00 10 a0 e1                                      mov r1, r0
003e64e0  0c 30 8d e2                                      add r3, sp, #0xc
003e64e4  00 c0 8d e5                                      str ip, [sp]
003e64e8  b5 ff ff eb                                      bl #0x3e63c4
003e64ec  14 00 84 e5                                      str r0, [r4, #0x14]
003e64f0  28 00 94 e5                                      ldr r0, [r4, #0x28]
003e64f4  24 20 94 e5                                      ldr r2, [r4, #0x24]
003e64f8  00 60 62 e0                                      rsb r6, r2, r0
003e64fc  c6 61 b0 e1                                      asrs r6, r6, #3
003e6500  10 00 00 0a                                      beq #0x3e6548
003e6504  00 50 a0 e3                                      mov r5, #0
003e6508  00 00 00 ea                                      b #0x3e6510
003e650c  24 20 94 e5                                      ldr r2, [r4, #0x24]
003e6510  85 31 92 e7                                      ldr r3, [r2, r5, lsl #3]
003e6514  00 10 a0 e3                                      mov r1, #0
003e6518  03 00 a0 e1                                      mov r0, r3
003e651c  00 30 93 e5                                      ldr r3, [r3]
003e6520  0f e0 a0 e1                                      mov lr, pc
003e6524  40 f0 93 e5                                      ldr pc, [r3, #0x40]
003e6528  24 30 94 e5                                      ldr r3, [r4, #0x24]
003e652c  85 01 93 e7                                      ldr r0, [r3, r5, lsl #3]
003e6530  01 50 85 e2                                      add r5, r5, #1
003e6534  1e 5e fd eb                                      bl #0x33ddb4
003e6538  06 00 55 e1                                      cmp r5, r6
003e653c  f2 ff ff 1a                                      bne #0x3e650c
003e6540  24 20 94 e5                                      ldr r2, [r4, #0x24]
003e6544  28 00 94 e5                                      ldr r0, [r4, #0x28]
003e6548  00 00 52 e1                                      cmp r2, r0
003e654c  05 00 00 0a                                      beq #0x3e6568
003e6550  00 c0 a0 e3                                      mov ip, #0
003e6554  00 10 a0 e1                                      mov r1, r0
003e6558  08 30 8d e2                                      add r3, sp, #8
003e655c  00 c0 8d e5                                      str ip, [sp]
003e6560  ac ff ff eb                                      bl #0x3e6418
003e6564  28 00 84 e5                                      str r0, [r4, #0x28]
003e6568  10 d0 8d e2                                      add sp, sp, #0x10
003e656c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003e68b0, declared_size=112, range_size=112, mode=arm
; class-group: ProjectileManager
; alias: _ZN17ProjectileManagerD1Ev
; demangled: ProjectileManager::~ProjectileManager()
; decoder-mode: arm
003e68b0  60 30 9f e5                                      ldr r3, [pc, #0x60]
003e68b4  60 20 9f e5                                      ldr r2, [pc, #0x60]
003e68b8  10 40 2d e9                                      push {r4, lr}
003e68bc  03 30 8f e0                                      add r3, pc, r3
003e68c0  02 20 93 e7                                      ldr r2, [r3, r2]
003e68c4  00 40 a0 e1                                      mov r4, r0
003e68c8  08 20 82 e2                                      add r2, r2, #8
003e68cc  24 20 80 e4                                      str r2, [r0], #0x24
003e68d0  e6 ff ff eb                                      bl #0x3e6870
003e68d4  10 00 84 e2                                      add r0, r4, #0x10
003e68d8  d4 ff ff eb                                      bl #0x3e6830
003e68dc  04 00 94 e5                                      ldr r0, [r4, #4]
003e68e0  04 30 84 e2                                      add r3, r4, #4
003e68e4  00 00 50 e3                                      cmp r0, #0
003e68e8  05 00 00 0a                                      beq #0x3e6904
003e68ec  08 10 93 e5                                      ldr r1, [r3, #8]
003e68f0  01 10 60 e0                                      rsb r1, r0, r1
003e68f4  03 10 c1 e3                                      bic r1, r1, #3
003e68f8  80 00 51 e3                                      cmp r1, #0x80
003e68fc  02 00 00 8a                                      bhi #0x3e690c
003e6900  7e 89 0c eb                                      bl #0x708f00
003e6904  04 00 a0 e1                                      mov r0, r4
003e6908  10 80 bd e8                                      pop {r4, pc}
003e690c  cb a6 fc eb                                      bl #0x310440
003e6910  04 00 a0 e1                                      mov r0, r4
003e6914  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003e6918  d4 e1 5a 00 3c 42 00 00                          .byte 0xd4, 0xe1, 0x5a, 0x00, 0x3c, 0x42, 0x00, 0x00

; FUNCTION 0x003e6920, declared_size=28, range_size=28, mode=arm
; class-group: ProjectileManager
; alias: _ZN17ProjectileManagerD0Ev
; demangled: ProjectileManager::~ProjectileManager()
; decoder-mode: arm
003e6920  10 40 2d e9                                      push {r4, lr}
003e6924  00 40 a0 e1                                      mov r4, r0
003e6928  e0 ff ff eb                                      bl #0x3e68b0
003e692c  04 00 a0 e1                                      mov r0, r4
003e6930  c2 a6 fc eb                                      bl #0x310440
003e6934  04 00 a0 e1                                      mov r0, r4
003e6938  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003e693c, declared_size=1440, range_size=1440, mode=arm
; class-group: ProjectileManager
; alias: _ZN17ProjectileManager7_CreateEbb
; demangled: ProjectileManager::_Create(bool, bool)
; decoder-mode: arm
003e693c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003e6940  78 55 9f e5                                      ldr r5, [pc, #0x578]
003e6944  78 65 9f e5                                      ldr r6, [pc, #0x578]
003e6948  4c d0 4d e2                                      sub sp, sp, #0x4c
003e694c  05 50 8f e0                                      add r5, pc, r5
003e6950  06 30 95 e7                                      ldr r3, [r5, r6]
003e6954  00 00 52 e3                                      cmp r2, #0
003e6958  00 40 a0 e1                                      mov r4, r0
003e695c  00 30 93 e5                                      ldr r3, [r3]
003e6960  01 70 a0 e1                                      mov r7, r1
003e6964  44 30 8d e5                                      str r3, [sp, #0x44]
003e6968  45 00 00 1a                                      bne #0x3e6a84
003e696c  10 00 90 e5                                      ldr r0, [r0, #0x10]
003e6970  14 80 94 e5                                      ldr r8, [r4, #0x14]
003e6974  20 c0 94 e5                                      ldr ip, [r4, #0x20]
003e6978  08 80 60 e0                                      rsb r8, r0, r8
003e697c  c8 81 a0 e1                                      asr r8, r8, #3
003e6980  08 00 5c e1                                      cmp ip, r8
003e6984  8c 21 a0 31                                      lsllo r2, ip, #3
003e6988  01 30 8c 32                                      addlo r3, ip, #1
003e698c  99 00 00 2a                                      bhs #0x3e6bf8
003e6990  02 10 80 e0                                      add r1, r0, r2
003e6994  04 10 d1 e5                                      ldrb r1, [r1, #4]
003e6998  00 00 51 e3                                      cmp r1, #0
003e699c  01 20 8c 12                                      addne r2, ip, #1
003e69a0  82 21 a0 11                                      lslne r2, r2, #3
003e69a4  0c 30 a0 11                                      movne r3, ip
003e69a8  06 00 00 1a                                      bne #0x3e69c8
003e69ac  98 00 00 ea                                      b #0x3e6c14
003e69b0  02 10 80 e0                                      add r1, r0, r2
003e69b4  04 10 d1 e5                                      ldrb r1, [r1, #4]
003e69b8  08 a0 82 e2                                      add sl, r2, #8
003e69bc  00 00 51 e3                                      cmp r1, #0
003e69c0  92 00 00 0a                                      beq #0x3e6c10
003e69c4  0a 20 a0 e1                                      mov r2, sl
003e69c8  01 30 83 e2                                      add r3, r3, #1
003e69cc  08 00 53 e1                                      cmp r3, r8
003e69d0  f6 ff ff 3a                                      blo #0x3e69b0
003e69d4  00 00 5c e3                                      cmp ip, #0
003e69d8  0d 00 00 0a                                      beq #0x3e6a14
003e69dc  04 20 d0 e5                                      ldrb r2, [r0, #4]
003e69e0  00 00 52 e3                                      cmp r2, #0
003e69e4  01 30 a0 03                                      moveq r3, #1
003e69e8  89 00 00 0a                                      beq #0x3e6c14
003e69ec  00 30 a0 e3                                      mov r3, #0
003e69f0  04 00 00 ea                                      b #0x3e6a08
003e69f4  83 21 a0 e1                                      lsl r2, r3, #3
003e69f8  02 10 80 e0                                      add r1, r0, r2
003e69fc  04 10 d1 e5                                      ldrb r1, [r1, #4]
003e6a00  00 00 51 e3                                      cmp r1, #0
003e6a04  81 00 00 0a                                      beq #0x3e6c10
003e6a08  01 30 83 e2                                      add r3, r3, #1
003e6a0c  0c 00 53 e1                                      cmp r3, ip
003e6a10  f7 ff ff 1a                                      bne #0x3e69f4
003e6a14  ac 14 9f e5                                      ldr r1, [pc, #0x4ac]
003e6a18  24 80 8d e2                                      add r8, sp, #0x24
003e6a1c  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
003e6a20  01 10 8f e0                                      add r1, pc, r1
003e6a24  08 00 a0 e1                                      mov r0, r8
003e6a28  2d a0 fc eb                                      bl #0x30eae4
003e6a2c  98 34 9f e5                                      ldr r3, [pc, #0x498]
003e6a30  98 24 9f e5                                      ldr r2, [pc, #0x498]
003e6a34  14 a0 8d e2                                      add sl, sp, #0x14
003e6a38  03 10 95 e7                                      ldr r1, [r5, r3]
003e6a3c  01 c0 a0 e3                                      mov ip, #1
003e6a40  08 30 a0 e1                                      mov r3, r8
003e6a44  38 10 91 e5                                      ldr r1, [r1, #0x38]
003e6a48  02 20 8f e0                                      add r2, pc, r2
003e6a4c  00 80 a0 e3                                      mov r8, #0
003e6a50  0a 00 a0 e1                                      mov r0, sl
003e6a54  00 11 8d e8                                      stm sp, {r8, ip}
003e6a58  31 93 fd eb                                      bl #0x34b724
003e6a5c  0a 00 a0 e1                                      mov r0, sl
003e6a60  08 10 a0 e1                                      mov r1, r8
003e6a64  d5 64 fd eb                                      bl #0x33fdc0
003e6a68  00 90 50 e2                                      subs sb, r0, #0
003e6a6c  02 00 00 0a                                      beq #0x3e6a7c
003e6a70  f4 30 99 e5                                      ldr r3, [sb, #0xf4]
003e6a74  09 00 53 e3                                      cmp r3, #9
003e6a78  83 00 00 0a                                      beq #0x3e6c8c
003e6a7c  00 a0 a0 e3                                      mov sl, #0
003e6a80  69 00 00 ea                                      b #0x3e6c2c
003e6a84  24 80 90 e5                                      ldr r8, [r0, #0x24]
003e6a88  28 00 90 e5                                      ldr r0, [r0, #0x28]
003e6a8c  34 c0 94 e5                                      ldr ip, [r4, #0x34]
003e6a90  00 00 68 e0                                      rsb r0, r8, r0
003e6a94  c0 01 a0 e1                                      asr r0, r0, #3
003e6a98  00 00 5c e1                                      cmp ip, r0
003e6a9c  8c 31 a0 31                                      lsllo r3, ip, #3
003e6aa0  01 20 8c 32                                      addlo r2, ip, #1
003e6aa4  4c 00 00 2a                                      bhs #0x3e6bdc
003e6aa8  10 a0 94 e5                                      ldr sl, [r4, #0x10]
003e6aac  03 10 8a e0                                      add r1, sl, r3
003e6ab0  04 10 d1 e5                                      ldrb r1, [r1, #4]
003e6ab4  00 00 51 e3                                      cmp r1, #0
003e6ab8  01 30 8c 12                                      addne r3, ip, #1
003e6abc  83 31 a0 11                                      lslne r3, r3, #3
003e6ac0  0c 20 a0 11                                      movne r2, ip
003e6ac4  06 00 00 1a                                      bne #0x3e6ae4
003e6ac8  60 00 00 ea                                      b #0x3e6c50
003e6acc  03 10 8a e0                                      add r1, sl, r3
003e6ad0  04 10 d1 e5                                      ldrb r1, [r1, #4]
003e6ad4  08 90 83 e2                                      add sb, r3, #8
003e6ad8  00 00 51 e3                                      cmp r1, #0
003e6adc  5a 00 00 0a                                      beq #0x3e6c4c
003e6ae0  09 30 a0 e1                                      mov r3, sb
003e6ae4  01 20 82 e2                                      add r2, r2, #1
003e6ae8  00 00 52 e1                                      cmp r2, r0
003e6aec  f6 ff ff 3a                                      blo #0x3e6acc
003e6af0  00 00 5c e3                                      cmp ip, #0
003e6af4  0d 00 00 0a                                      beq #0x3e6b30
003e6af8  04 20 d8 e5                                      ldrb r2, [r8, #4]
003e6afc  00 00 52 e3                                      cmp r2, #0
003e6b00  01 30 a0 03                                      moveq r3, #1
003e6b04  59 00 00 0a                                      beq #0x3e6c70
003e6b08  00 30 a0 e3                                      mov r3, #0
003e6b0c  04 00 00 ea                                      b #0x3e6b24
003e6b10  83 21 a0 e1                                      lsl r2, r3, #3
003e6b14  02 10 88 e0                                      add r1, r8, r2
003e6b18  04 10 d1 e5                                      ldrb r1, [r1, #4]
003e6b1c  00 00 51 e3                                      cmp r1, #0
003e6b20  51 00 00 0a                                      beq #0x3e6c6c
003e6b24  01 30 83 e2                                      add r3, r3, #1
003e6b28  0c 00 53 e1                                      cmp r3, ip
003e6b2c  f7 ff ff 1a                                      bne #0x3e6b10
003e6b30  9c 13 9f e5                                      ldr r1, [pc, #0x39c]
003e6b34  24 80 8d e2                                      add r8, sp, #0x24
003e6b38  30 20 94 e5                                      ldr r2, [r4, #0x30]
003e6b3c  01 10 8f e0                                      add r1, pc, r1
003e6b40  08 00 a0 e1                                      mov r0, r8
003e6b44  e6 9f fc eb                                      bl #0x30eae4
003e6b48  7c 33 9f e5                                      ldr r3, [pc, #0x37c]
003e6b4c  84 23 9f e5                                      ldr r2, [pc, #0x384]
003e6b50  08 a0 8d e2                                      add sl, sp, #8
003e6b54  03 10 95 e7                                      ldr r1, [r5, r3]
003e6b58  0a 00 a0 e1                                      mov r0, sl
003e6b5c  08 30 a0 e1                                      mov r3, r8
003e6b60  38 10 91 e5                                      ldr r1, [r1, #0x38]
003e6b64  01 c0 a0 e3                                      mov ip, #1
003e6b68  02 20 8f e0                                      add r2, pc, r2
003e6b6c  00 80 a0 e3                                      mov r8, #0
003e6b70  00 11 8d e8                                      stm sp, {r8, ip}
003e6b74  ea 92 fd eb                                      bl #0x34b724
003e6b78  0a 00 a0 e1                                      mov r0, sl
003e6b7c  08 10 a0 e1                                      mov r1, r8
003e6b80  8e 64 fd eb                                      bl #0x33fdc0
003e6b84  00 a0 50 e2                                      subs sl, r0, #0
003e6b88  bb ff ff 0a                                      beq #0x3e6a7c
003e6b8c  f4 30 9a e5                                      ldr r3, [sl, #0xf4]
003e6b90  0a 00 53 e3                                      cmp r3, #0xa
003e6b94  b8 ff ff 1a                                      bne #0x3e6a7c
003e6b98  30 30 94 e5                                      ldr r3, [r4, #0x30]
003e6b9c  28 90 94 e5                                      ldr sb, [r4, #0x28]
003e6ba0  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
003e6ba4  01 30 83 e2                                      add r3, r3, #1
003e6ba8  34 80 84 e5                                      str r8, [r4, #0x34]
003e6bac  02 00 59 e1                                      cmp sb, r2
003e6bb0  30 30 84 e5                                      str r3, [r4, #0x30]
003e6bb4  81 00 00 0a                                      beq #0x3e6dc0
003e6bb8  04 70 c9 e5                                      strb r7, [sb, #4]
003e6bbc  00 a0 89 e5                                      str sl, [sb]
003e6bc0  28 30 94 e5                                      ldr r3, [r4, #0x28]
003e6bc4  08 30 83 e2                                      add r3, r3, #8
003e6bc8  28 30 84 e5                                      str r3, [r4, #0x28]
003e6bcc  04 10 a0 e1                                      mov r1, r4
003e6bd0  0a 00 a0 e1                                      mov r0, sl
003e6bd4  02 f9 ff eb                                      bl #0x3e4fe4
003e6bd8  13 00 00 ea                                      b #0x3e6c2c
003e6bdc  00 30 a0 e3                                      mov r3, #0
003e6be0  00 00 50 e3                                      cmp r0, #0
003e6be4  34 30 84 e5                                      str r3, [r4, #0x34]
003e6be8  d0 ff ff 0a                                      beq #0x3e6b30
003e6bec  01 20 a0 e3                                      mov r2, #1
003e6bf0  03 c0 a0 e1                                      mov ip, r3
003e6bf4  ab ff ff ea                                      b #0x3e6aa8
003e6bf8  00 00 58 e3                                      cmp r8, #0
003e6bfc  20 20 84 e5                                      str r2, [r4, #0x20]
003e6c00  83 ff ff 0a                                      beq #0x3e6a14
003e6c04  01 30 a0 e3                                      mov r3, #1
003e6c08  02 c0 a0 e1                                      mov ip, r2
003e6c0c  5f ff ff ea                                      b #0x3e6990
003e6c10  01 30 83 e2                                      add r3, r3, #1
003e6c14  20 30 84 e5                                      str r3, [r4, #0x20]
003e6c18  02 00 80 e0                                      add r0, r0, r2
003e6c1c  01 30 a0 e3                                      mov r3, #1
003e6c20  04 30 c0 e5                                      strb r3, [r0, #4]
003e6c24  10 30 94 e5                                      ldr r3, [r4, #0x10]
003e6c28  02 a0 93 e7                                      ldr sl, [r3, r2]
003e6c2c  06 30 95 e7                                      ldr r3, [r5, r6]
003e6c30  44 20 9d e5                                      ldr r2, [sp, #0x44]
003e6c34  0a 00 a0 e1                                      mov r0, sl
003e6c38  00 30 93 e5                                      ldr r3, [r3]
003e6c3c  03 00 52 e1                                      cmp r2, r3
003e6c40  9d 00 00 1a                                      bne #0x3e6ebc
003e6c44  4c d0 8d e2                                      add sp, sp, #0x4c
003e6c48  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003e6c4c  01 20 82 e2                                      add r2, r2, #1
003e6c50  34 20 84 e5                                      str r2, [r4, #0x34]
003e6c54  03 80 88 e0                                      add r8, r8, r3
003e6c58  01 20 a0 e3                                      mov r2, #1
003e6c5c  04 20 c8 e5                                      strb r2, [r8, #4]
003e6c60  24 20 94 e5                                      ldr r2, [r4, #0x24]
003e6c64  03 a0 92 e7                                      ldr sl, [r2, r3]
003e6c68  ef ff ff ea                                      b #0x3e6c2c
003e6c6c  01 30 83 e2                                      add r3, r3, #1
003e6c70  34 30 84 e5                                      str r3, [r4, #0x34]
003e6c74  02 80 88 e0                                      add r8, r8, r2
003e6c78  01 30 a0 e3                                      mov r3, #1
003e6c7c  04 30 c8 e5                                      strb r3, [r8, #4]
003e6c80  24 30 94 e5                                      ldr r3, [r4, #0x24]
003e6c84  02 a0 93 e7                                      ldr sl, [r3, r2]
003e6c88  e7 ff ff ea                                      b #0x3e6c2c
003e6c8c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
003e6c90  14 b0 94 e5                                      ldr fp, [r4, #0x14]
003e6c94  18 20 94 e5                                      ldr r2, [r4, #0x18]
003e6c98  01 30 83 e2                                      add r3, r3, #1
003e6c9c  20 80 84 e5                                      str r8, [r4, #0x20]
003e6ca0  02 00 5b e1                                      cmp fp, r2
003e6ca4  1c 30 84 e5                                      str r3, [r4, #0x1c]
003e6ca8  09 a0 a0 e1                                      mov sl, sb
003e6cac  08 00 00 0a                                      beq #0x3e6cd4
003e6cb0  04 70 cb e5                                      strb r7, [fp, #4]
003e6cb4  00 90 8b e5                                      str sb, [fp]
003e6cb8  14 30 94 e5                                      ldr r3, [r4, #0x14]
003e6cbc  08 30 83 e2                                      add r3, r3, #8
003e6cc0  14 30 84 e5                                      str r3, [r4, #0x14]
003e6cc4  09 00 a0 e1                                      mov r0, sb
003e6cc8  04 10 a0 e1                                      mov r1, r4
003e6ccc  c4 f8 ff eb                                      bl #0x3e4fe4
003e6cd0  d5 ff ff ea                                      b #0x3e6c2c
003e6cd4  10 30 94 e5                                      ldr r3, [r4, #0x10]
003e6cd8  0b 30 63 e0                                      rsb r3, r3, fp
003e6cdc  c3 31 a0 e1                                      asr r3, r3, #3
003e6ce0  01 00 53 e3                                      cmp r3, #1
003e6ce4  03 10 83 20                                      addhs r1, r3, r3
003e6ce8  01 10 83 32                                      addlo r1, r3, #1
003e6cec  1e 02 71 e3                                      cmn r1, #0xe0000001
003e6cf0  30 00 00 8a                                      bhi #0x3e6db8
003e6cf4  01 00 53 e1                                      cmp r3, r1
003e6cf8  2e 00 00 8a                                      bhi #0x3e6db8
003e6cfc  48 20 8d e2                                      add r2, sp, #0x48
003e6d00  28 10 22 e5                                      str r1, [r2, #-0x28]!
003e6d04  18 00 84 e2                                      add r0, r4, #0x18
003e6d08  96 fe ff eb                                      bl #0x3e6768
003e6d0c  10 c0 94 e5                                      ldr ip, [r4, #0x10]
003e6d10  00 80 a0 e1                                      mov r8, r0
003e6d14  0b e0 6c e0                                      rsb lr, ip, fp
003e6d18  ce e1 a0 e1                                      asr lr, lr, #3
003e6d1c  00 00 5e e3                                      cmp lr, #0
003e6d20  00 e0 a0 d1                                      movle lr, r0
003e6d24  0b 00 00 da                                      ble #0x3e6d58
003e6d28  0e 10 a0 e1                                      mov r1, lr
003e6d2c  00 00 a0 e3                                      mov r0, #0
003e6d30  0c 20 a0 e1                                      mov r2, ip
003e6d34  00 b0 b2 e7                                      ldr fp, [r2, r0]!
003e6d38  08 30 a0 e1                                      mov r3, r8
003e6d3c  01 10 51 e2                                      subs r1, r1, #1
003e6d40  00 b0 a3 e7                                      str fp, [r3, r0]!
003e6d44  04 20 d2 e5                                      ldrb r2, [r2, #4]
003e6d48  08 00 80 e2                                      add r0, r0, #8
003e6d4c  04 20 c3 e5                                      strb r2, [r3, #4]
003e6d50  f6 ff ff 1a                                      bne #0x3e6d30
003e6d54  8e e1 88 e0                                      add lr, r8, lr, lsl #3
003e6d58  0e b0 a0 e1                                      mov fp, lr
003e6d5c  04 70 ce e5                                      strb r7, [lr, #4]
003e6d60  08 90 8b e4                                      str sb, [fp], #8
003e6d64  14 30 94 e5                                      ldr r3, [r4, #0x14]
003e6d68  10 00 94 e5                                      ldr r0, [r4, #0x10]
003e6d6c  00 00 53 e1                                      cmp r3, r0
003e6d70  08 20 43 12                                      subne r2, r3, #8
003e6d74  02 20 60 10                                      rsbne r2, r0, r2
003e6d78  a2 21 e0 11                                      mvnne r2, r2, lsr #3
003e6d7c  82 31 83 10                                      addne r3, r3, r2, lsl #3
003e6d80  00 00 53 e3                                      cmp r3, #0
003e6d84  18 20 94 e5                                      ldr r2, [r4, #0x18]
003e6d88  04 00 00 0a                                      beq #0x3e6da0
003e6d8c  02 30 63 e0                                      rsb r3, r3, r2
003e6d90  07 10 c3 e3                                      bic r1, r3, #7
003e6d94  80 00 51 e3                                      cmp r1, #0x80
003e6d98  45 00 00 8a                                      bhi #0x3e6eb4
003e6d9c  57 88 0c eb                                      bl #0x708f00
003e6da0  20 30 9d e5                                      ldr r3, [sp, #0x20]
003e6da4  10 80 84 e5                                      str r8, [r4, #0x10]
003e6da8  14 b0 84 e5                                      str fp, [r4, #0x14]
003e6dac  83 81 88 e0                                      add r8, r8, r3, lsl #3
003e6db0  18 80 84 e5                                      str r8, [r4, #0x18]
003e6db4  c2 ff ff ea                                      b #0x3e6cc4
003e6db8  0e 12 e0 e3                                      mvn r1, #0xe0000000
003e6dbc  ce ff ff ea                                      b #0x3e6cfc
003e6dc0  24 30 94 e5                                      ldr r3, [r4, #0x24]
003e6dc4  09 30 63 e0                                      rsb r3, r3, sb
003e6dc8  c3 31 a0 e1                                      asr r3, r3, #3
003e6dcc  01 00 53 e3                                      cmp r3, #1
003e6dd0  03 10 83 20                                      addhs r1, r3, r3
003e6dd4  01 10 83 32                                      addlo r1, r3, #1
003e6dd8  1e 02 71 e3                                      cmn r1, #0xe0000001
003e6ddc  30 00 00 8a                                      bhi #0x3e6ea4
003e6de0  01 00 53 e1                                      cmp r3, r1
003e6de4  2e 00 00 8a                                      bhi #0x3e6ea4
003e6de8  48 20 8d e2                                      add r2, sp, #0x48
003e6dec  28 10 22 e5                                      str r1, [r2, #-0x28]!
003e6df0  2c 00 84 e2                                      add r0, r4, #0x2c
003e6df4  dd fd ff eb                                      bl #0x3e6570
003e6df8  24 e0 94 e5                                      ldr lr, [r4, #0x24]
003e6dfc  00 80 a0 e1                                      mov r8, r0
003e6e00  09 90 6e e0                                      rsb sb, lr, sb
003e6e04  c9 91 a0 e1                                      asr sb, sb, #3
003e6e08  00 00 59 e3                                      cmp sb, #0
003e6e0c  00 30 a0 d1                                      movle r3, r0
003e6e10  0b 00 00 da                                      ble #0x3e6e44
003e6e14  09 10 a0 e1                                      mov r1, sb
003e6e18  00 00 a0 e3                                      mov r0, #0
003e6e1c  0e 20 a0 e1                                      mov r2, lr
003e6e20  00 c0 b2 e7                                      ldr ip, [r2, r0]!
003e6e24  08 30 a0 e1                                      mov r3, r8
003e6e28  01 10 51 e2                                      subs r1, r1, #1
003e6e2c  00 c0 a3 e7                                      str ip, [r3, r0]!
003e6e30  04 20 d2 e5                                      ldrb r2, [r2, #4]
003e6e34  08 00 80 e2                                      add r0, r0, #8
003e6e38  04 20 c3 e5                                      strb r2, [r3, #4]
003e6e3c  f6 ff ff 1a                                      bne #0x3e6e1c
003e6e40  89 31 88 e0                                      add r3, r8, sb, lsl #3
003e6e44  03 90 a0 e1                                      mov sb, r3
003e6e48  04 70 c3 e5                                      strb r7, [r3, #4]
003e6e4c  08 a0 89 e4                                      str sl, [sb], #8
003e6e50  28 30 94 e5                                      ldr r3, [r4, #0x28]
003e6e54  24 00 94 e5                                      ldr r0, [r4, #0x24]
003e6e58  00 00 53 e1                                      cmp r3, r0
003e6e5c  08 20 43 12                                      subne r2, r3, #8
003e6e60  02 20 60 10                                      rsbne r2, r0, r2
003e6e64  a2 21 e0 11                                      mvnne r2, r2, lsr #3
003e6e68  82 31 83 10                                      addne r3, r3, r2, lsl #3
003e6e6c  00 00 53 e3                                      cmp r3, #0
003e6e70  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
003e6e74  04 00 00 0a                                      beq #0x3e6e8c
003e6e78  02 30 63 e0                                      rsb r3, r3, r2
003e6e7c  07 10 c3 e3                                      bic r1, r3, #7
003e6e80  80 00 51 e3                                      cmp r1, #0x80
003e6e84  08 00 00 8a                                      bhi #0x3e6eac
003e6e88  1c 88 0c eb                                      bl #0x708f00
003e6e8c  20 30 9d e5                                      ldr r3, [sp, #0x20]
003e6e90  24 80 84 e5                                      str r8, [r4, #0x24]
003e6e94  28 90 84 e5                                      str sb, [r4, #0x28]
003e6e98  83 81 88 e0                                      add r8, r8, r3, lsl #3
003e6e9c  2c 80 84 e5                                      str r8, [r4, #0x2c]
003e6ea0  49 ff ff ea                                      b #0x3e6bcc
003e6ea4  0e 12 e0 e3                                      mvn r1, #0xe0000000
003e6ea8  ce ff ff ea                                      b #0x3e6de8
003e6eac  63 a5 fc eb                                      bl #0x310440
003e6eb0  f5 ff ff ea                                      b #0x3e6e8c
003e6eb4  61 a5 fc eb                                      bl #0x310440
003e6eb8  b8 ff ff ea                                      b #0x3e6da0
003e6ebc  13 9d fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003e6ec0  44 e1 5a 00 ac 40 00 00 78 f6 4d 00 f4 37 00 00  .byte 0x44, 0xe1, 0x5a, 0x00, 0xac, 0x40, 0x00, 0x00, 0x78, 0xf6, 0x4d, 0x00, 0xf4, 0x37, 0x00, 0x00
003e6ed0  90 9b 4d 00 6c f5 4d 00 80 9a 4d 00              .byte 0x90, 0x9b, 0x4d, 0x00, 0x6c, 0xf5, 0x4d, 0x00, 0x80, 0x9a, 0x4d, 0x00

; FUNCTION 0x003e6edc, declared_size=320, range_size=320, mode=arm
; class-group: ProjectileManager
; alias: _ZN17ProjectileManager5SpawnEiP10GameObjectS1_PFiP10ProjectilePvES6_S4_f
; demangled: ProjectileManager::Spawn(int, GameObject*, GameObject*, int (*)(Projectile*, void*), int (*)(Projectile*, void*), void*, float)
; decoder-mode: arm
003e6edc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003e6ee0  14 41 9f e5                                      ldr r4, [pc, #0x114]
003e6ee4  00 60 51 e2                                      subs r6, r1, #0
003e6ee8  1c d0 4d e2                                      sub sp, sp, #0x1c
003e6eec  02 70 a0 e1                                      mov r7, r2
003e6ef0  04 40 8f e0                                      add r4, pc, r4
003e6ef4  03 00 00 aa                                      bge #0x3e6f08
003e6ef8  00 50 a0 e3                                      mov r5, #0
003e6efc  05 00 a0 e1                                      mov r0, r5
003e6f00  1c d0 8d e2                                      add sp, sp, #0x1c
003e6f04  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003e6f08  f0 20 9f e5                                      ldr r2, [pc, #0xf0]
003e6f0c  02 20 94 e7                                      ldr r2, [r4, r2]
003e6f10  00 20 92 e5                                      ldr r2, [r2]
003e6f14  02 00 56 e1                                      cmp r6, r2
003e6f18  f6 ff ff aa                                      bge #0x3e6ef8
003e6f1c  e0 20 9f e5                                      ldr r2, [pc, #0xe0]
003e6f20  48 c0 a0 e3                                      mov ip, #0x48
003e6f24  01 10 a0 e3                                      mov r1, #1
003e6f28  02 20 94 e7                                      ldr r2, [r4, r2]
003e6f2c  00 20 92 e5                                      ldr r2, [r2]
003e6f30  9c 26 22 e0                                      mla r2, ip, r6, r2
003e6f34  1c 20 d2 e5                                      ldrb r2, [r2, #0x1c]
003e6f38  14 30 8d e5                                      str r3, [sp, #0x14]
003e6f3c  7e fe ff eb                                      bl #0x3e693c
003e6f40  00 50 50 e2                                      subs r5, r0, #0
003e6f44  14 30 9d e5                                      ldr r3, [sp, #0x14]
003e6f48  16 00 00 0a                                      beq #0x3e6fa8
003e6f4c  00 20 95 e5                                      ldr r2, [r5]
003e6f50  01 10 a0 e3                                      mov r1, #1
003e6f54  14 30 8d e5                                      str r3, [sp, #0x14]
003e6f58  0f e0 a0 e1                                      mov lr, pc
003e6f5c  40 f0 92 e5                                      ldr pc, [r2, #0x40]
003e6f60  30 00 9d e5                                      ldr r0, [sp, #0x30]
003e6f64  00 c0 95 e5                                      ldr ip, [r5]
003e6f68  14 30 9d e5                                      ldr r3, [sp, #0x14]
003e6f6c  00 00 8d e5                                      str r0, [sp]
003e6f70  34 00 9d e5                                      ldr r0, [sp, #0x34]
003e6f74  06 10 a0 e1                                      mov r1, r6
003e6f78  07 20 a0 e1                                      mov r2, r7
003e6f7c  04 00 8d e5                                      str r0, [sp, #4]
003e6f80  38 00 9d e5                                      ldr r0, [sp, #0x38]
003e6f84  08 00 8d e5                                      str r0, [sp, #8]
003e6f88  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
003e6f8c  0c 00 8d e5                                      str r0, [sp, #0xc]
003e6f90  05 00 a0 e1                                      mov r0, r5
003e6f94  0f e0 a0 e1                                      mov lr, pc
003e6f98  cc f0 9c e5                                      ldr pc, [ip, #0xcc]
003e6f9c  01 30 a0 e3                                      mov r3, #1
003e6fa0  85 30 c5 e5                                      strb r3, [r5, #0x85]
003e6fa4  d4 ff ff ea                                      b #0x3e6efc
003e6fa8  58 30 9f e5                                      ldr r3, [pc, #0x58]
003e6fac  03 30 94 e7                                      ldr r3, [r4, r3]
003e6fb0  00 30 93 e5                                      ldr r3, [r3]
003e6fb4  02 00 53 e3                                      cmp r3, #2
003e6fb8  00 50 85 05                                      streq r5, [r5]
003e6fbc  ce ff ff 0a                                      beq #0x3e6efc
003e6fc0  01 00 53 e3                                      cmp r3, #1
003e6fc4  cc ff ff 1a                                      bne #0x3e6efc
003e6fc8  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
003e6fcc  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
003e6fd0  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
003e6fd4  00 00 94 e7                                      ldr r0, [r4, r0]
003e6fd8  38 30 9f e5                                      ldr r3, [pc, #0x38]
003e6fdc  0a c1 00 e3                                      movw ip, #0x10a
003e6fe0  01 10 8f e0                                      add r1, pc, r1
003e6fe4  02 20 8f e0                                      add r2, pc, r2
003e6fe8  03 30 8f e0                                      add r3, pc, r3
003e6fec  a8 00 80 e2                                      add r0, r0, #0xa8
003e6ff0  00 c0 8d e5                                      str ip, [sp]
003e6ff4  02 9c fc eb                                      bl #0x30e004
003e6ff8  bf ff ff ea                                      b #0x3e6efc
; mapping-symbol data/literal pool
003e6ffc  a0 db 5a 00 70 09 00 00 40 23 00 00 c0 39 00 00  .byte 0xa0, 0xdb, 0x5a, 0x00, 0x70, 0x09, 0x00, 0x00, 0x40, 0x23, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
003e700c  c0 19 00 00 f8 73 4d 00 64 21 4e 00 38 f0 4d 00  .byte 0xc0, 0x19, 0x00, 0x00, 0xf8, 0x73, 0x4d, 0x00, 0x64, 0x21, 0x4e, 0x00, 0x38, 0xf0, 0x4d, 0x00

; FUNCTION 0x003e701c, declared_size=320, range_size=320, mode=arm
; class-group: ProjectileManager
; alias: _ZN17ProjectileManager5SpawnEiP10GameObjectS1_PFiP10ProjectilePvES6_S4_b
; demangled: ProjectileManager::Spawn(int, GameObject*, GameObject*, int (*)(Projectile*, void*), int (*)(Projectile*, void*), void*, bool)
; decoder-mode: arm
003e701c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003e7020  14 41 9f e5                                      ldr r4, [pc, #0x114]
003e7024  18 d0 4d e2                                      sub sp, sp, #0x18
003e7028  00 60 51 e2                                      subs r6, r1, #0
003e702c  04 40 8f e0                                      add r4, pc, r4
003e7030  02 70 a0 e1                                      mov r7, r2
003e7034  3c 80 dd e5                                      ldrb r8, [sp, #0x3c]
003e7038  03 00 00 aa                                      bge #0x3e704c
003e703c  00 50 a0 e3                                      mov r5, #0
003e7040  05 00 a0 e1                                      mov r0, r5
003e7044  18 d0 8d e2                                      add sp, sp, #0x18
003e7048  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003e704c  ec 20 9f e5                                      ldr r2, [pc, #0xec]
003e7050  02 20 94 e7                                      ldr r2, [r4, r2]
003e7054  00 20 92 e5                                      ldr r2, [r2]
003e7058  02 00 56 e1                                      cmp r6, r2
003e705c  f6 ff ff aa                                      bge #0x3e703c
003e7060  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
003e7064  48 c0 a0 e3                                      mov ip, #0x48
003e7068  01 10 a0 e3                                      mov r1, #1
003e706c  02 20 94 e7                                      ldr r2, [r4, r2]
003e7070  00 20 92 e5                                      ldr r2, [r2]
003e7074  9c 26 22 e0                                      mla r2, ip, r6, r2
003e7078  1c 20 d2 e5                                      ldrb r2, [r2, #0x1c]
003e707c  14 30 8d e5                                      str r3, [sp, #0x14]
003e7080  2d fe ff eb                                      bl #0x3e693c
003e7084  00 50 50 e2                                      subs r5, r0, #0
003e7088  14 30 9d e5                                      ldr r3, [sp, #0x14]
003e708c  15 00 00 0a                                      beq #0x3e70e8
003e7090  00 20 95 e5                                      ldr r2, [r5]
003e7094  01 10 a0 e3                                      mov r1, #1
003e7098  14 30 8d e5                                      str r3, [sp, #0x14]
003e709c  0f e0 a0 e1                                      mov lr, pc
003e70a0  40 f0 92 e5                                      ldr pc, [r2, #0x40]
003e70a4  30 00 9d e5                                      ldr r0, [sp, #0x30]
003e70a8  00 c0 95 e5                                      ldr ip, [r5]
003e70ac  14 30 9d e5                                      ldr r3, [sp, #0x14]
003e70b0  00 00 8d e5                                      str r0, [sp]
003e70b4  34 00 9d e5                                      ldr r0, [sp, #0x34]
003e70b8  06 10 a0 e1                                      mov r1, r6
003e70bc  07 20 a0 e1                                      mov r2, r7
003e70c0  04 00 8d e5                                      str r0, [sp, #4]
003e70c4  38 00 9d e5                                      ldr r0, [sp, #0x38]
003e70c8  0c 80 8d e5                                      str r8, [sp, #0xc]
003e70cc  08 00 8d e5                                      str r0, [sp, #8]
003e70d0  05 00 a0 e1                                      mov r0, r5
003e70d4  0f e0 a0 e1                                      mov lr, pc
003e70d8  c8 f0 9c e5                                      ldr pc, [ip, #0xc8]
003e70dc  01 30 a0 e3                                      mov r3, #1
003e70e0  85 30 c5 e5                                      strb r3, [r5, #0x85]
003e70e4  d5 ff ff ea                                      b #0x3e7040
003e70e8  58 30 9f e5                                      ldr r3, [pc, #0x58]
003e70ec  03 30 94 e7                                      ldr r3, [r4, r3]
003e70f0  00 30 93 e5                                      ldr r3, [r3]
003e70f4  02 00 53 e3                                      cmp r3, #2
003e70f8  00 50 85 05                                      streq r5, [r5]
003e70fc  cf ff ff 0a                                      beq #0x3e7040
003e7100  01 00 53 e3                                      cmp r3, #1
003e7104  cd ff ff 1a                                      bne #0x3e7040
003e7108  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
003e710c  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
003e7110  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
003e7114  00 00 94 e7                                      ldr r0, [r4, r0]
003e7118  38 30 9f e5                                      ldr r3, [pc, #0x38]
003e711c  f3 c0 a0 e3                                      mov ip, #0xf3
003e7120  01 10 8f e0                                      add r1, pc, r1
003e7124  02 20 8f e0                                      add r2, pc, r2
003e7128  03 30 8f e0                                      add r3, pc, r3
003e712c  a8 00 80 e2                                      add r0, r0, #0xa8
003e7130  00 c0 8d e5                                      str ip, [sp]
003e7134  b2 9b fc eb                                      bl #0x30e004
003e7138  c0 ff ff ea                                      b #0x3e7040
; mapping-symbol data/literal pool
003e713c  64 da 5a 00 70 09 00 00 40 23 00 00 c0 39 00 00  .byte 0x64, 0xda, 0x5a, 0x00, 0x70, 0x09, 0x00, 0x00, 0x40, 0x23, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
003e714c  c0 19 00 00 b8 72 4d 00 24 20 4e 00 f8 ee 4d 00  .byte 0xc0, 0x19, 0x00, 0x00, 0xb8, 0x72, 0x4d, 0x00, 0x24, 0x20, 0x4e, 0x00, 0xf8, 0xee, 0x4d, 0x00

; FUNCTION 0x003e715c, declared_size=112, range_size=112, mode=arm
; class-group: ProjectileManager
; alias: _ZN17ProjectileManagerD2Ev
; demangled: ProjectileManager::~ProjectileManager()
; decoder-mode: arm
003e715c  60 30 9f e5                                      ldr r3, [pc, #0x60]
003e7160  60 20 9f e5                                      ldr r2, [pc, #0x60]
003e7164  10 40 2d e9                                      push {r4, lr}
003e7168  03 30 8f e0                                      add r3, pc, r3
003e716c  02 20 93 e7                                      ldr r2, [r3, r2]
003e7170  00 40 a0 e1                                      mov r4, r0
003e7174  08 20 82 e2                                      add r2, r2, #8
003e7178  24 20 80 e4                                      str r2, [r0], #0x24
003e717c  bb fd ff eb                                      bl #0x3e6870
003e7180  10 00 84 e2                                      add r0, r4, #0x10
003e7184  a9 fd ff eb                                      bl #0x3e6830
003e7188  04 00 94 e5                                      ldr r0, [r4, #4]
003e718c  04 30 84 e2                                      add r3, r4, #4
003e7190  00 00 50 e3                                      cmp r0, #0
003e7194  05 00 00 0a                                      beq #0x3e71b0
003e7198  08 10 93 e5                                      ldr r1, [r3, #8]
003e719c  01 10 60 e0                                      rsb r1, r0, r1
003e71a0  03 10 c1 e3                                      bic r1, r1, #3
003e71a4  80 00 51 e3                                      cmp r1, #0x80
003e71a8  02 00 00 8a                                      bhi #0x3e71b8
003e71ac  53 87 0c eb                                      bl #0x708f00
003e71b0  04 00 a0 e1                                      mov r0, r4
003e71b4  10 80 bd e8                                      pop {r4, pc}
003e71b8  a0 a4 fc eb                                      bl #0x310440
003e71bc  04 00 a0 e1                                      mov r0, r4
003e71c0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003e71c4  28 d9 5a 00 3c 42 00 00                          .byte 0x28, 0xd9, 0x5a, 0x00, 0x3c, 0x42, 0x00, 0x00

; FUNCTION 0x003e71cc, declared_size=716, range_size=716, mode=arm
; class-group: ProjectileManager
; alias: _ZN17ProjectileManager8PreCacheEv
; demangled: ProjectileManager::PreCache()
; decoder-mode: arm
003e71cc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003e71d0  10 20 90 e5                                      ldr r2, [r0, #0x10]
003e71d4  18 30 90 e5                                      ldr r3, [r0, #0x18]
003e71d8  a8 52 9f e5                                      ldr r5, [pc, #0x2a8]
003e71dc  08 d0 4d e2                                      sub sp, sp, #8
003e71e0  03 30 62 e0                                      rsb r3, r2, r3
003e71e4  c3 31 a0 e1                                      asr r3, r3, #3
003e71e8  0a 10 a0 e3                                      mov r1, #0xa
003e71ec  09 00 53 e3                                      cmp r3, #9
003e71f0  04 10 8d e5                                      str r1, [sp, #4]
003e71f4  00 40 a0 e1                                      mov r4, r0
003e71f8  05 50 8f e0                                      add r5, pc, r5
003e71fc  1d 00 00 8a                                      bhi #0x3e7278
003e7200  14 30 90 e5                                      ldr r3, [r0, #0x14]
003e7204  00 00 52 e3                                      cmp r2, #0
003e7208  03 60 62 e0                                      rsb r6, r2, r3
003e720c  c6 61 a0 e1                                      asr r6, r6, #3
003e7210  92 00 00 0a                                      beq #0x3e7460
003e7214  04 10 8d e2                                      add r1, sp, #4
003e7218  10 00 80 e2                                      add r0, r0, #0x10
003e721c  6d fd ff eb                                      bl #0x3e67d8
003e7220  14 30 94 e5                                      ldr r3, [r4, #0x14]
003e7224  00 70 a0 e1                                      mov r7, r0
003e7228  10 00 94 e5                                      ldr r0, [r4, #0x10]
003e722c  18 10 94 e5                                      ldr r1, [r4, #0x18]
003e7230  00 00 53 e1                                      cmp r3, r0
003e7234  08 20 43 12                                      subne r2, r3, #8
003e7238  02 20 60 10                                      rsbne r2, r0, r2
003e723c  a2 21 e0 11                                      mvnne r2, r2, lsr #3
003e7240  82 31 83 10                                      addne r3, r3, r2, lsl #3
003e7244  00 00 53 e3                                      cmp r3, #0
003e7248  04 00 00 0a                                      beq #0x3e7260
003e724c  01 10 63 e0                                      rsb r1, r3, r1
003e7250  07 10 c1 e3                                      bic r1, r1, #7
003e7254  80 00 51 e3                                      cmp r1, #0x80
003e7258  78 00 00 8a                                      bhi #0x3e7440
003e725c  27 87 0c eb                                      bl #0x708f00
003e7260  04 30 9d e5                                      ldr r3, [sp, #4]
003e7264  86 61 87 e0                                      add r6, r7, r6, lsl #3
003e7268  14 60 84 e5                                      str r6, [r4, #0x14]
003e726c  83 31 87 e0                                      add r3, r7, r3, lsl #3
003e7270  18 30 84 e5                                      str r3, [r4, #0x18]
003e7274  10 70 84 e5                                      str r7, [r4, #0x10]
003e7278  00 60 a0 e3                                      mov r6, #0
003e727c  00 10 a0 e3                                      mov r1, #0
003e7280  01 60 86 e2                                      add r6, r6, #1
003e7284  04 00 a0 e1                                      mov r0, r4
003e7288  01 20 a0 e1                                      mov r2, r1
003e728c  aa fd ff eb                                      bl #0x3e693c
003e7290  0a 00 56 e3                                      cmp r6, #0xa
003e7294  f8 ff ff 1a                                      bne #0x3e727c
003e7298  10 30 94 e5                                      ldr r3, [r4, #0x10]
003e729c  14 70 94 e5                                      ldr r7, [r4, #0x14]
003e72a0  07 70 63 e0                                      rsb r7, r3, r7
003e72a4  c7 71 b0 e1                                      asrs r7, r7, #3
003e72a8  09 00 00 0a                                      beq #0x3e72d4
003e72ac  00 60 a0 e3                                      mov r6, #0
003e72b0  00 00 00 ea                                      b #0x3e72b8
003e72b4  10 30 94 e5                                      ldr r3, [r4, #0x10]
003e72b8  86 11 93 e7                                      ldr r1, [r3, r6, lsl #3]
003e72bc  04 00 a0 e1                                      mov r0, r4
003e72c0  01 60 86 e2                                      add r6, r6, #1
003e72c4  00 20 a0 e3                                      mov r2, #0
003e72c8  b9 fb ff eb                                      bl #0x3e61b4
003e72cc  07 00 56 e1                                      cmp r6, r7
003e72d0  f7 ff ff 1a                                      bne #0x3e72b4
003e72d4  24 20 94 e5                                      ldr r2, [r4, #0x24]
003e72d8  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
003e72dc  0a 10 a0 e3                                      mov r1, #0xa
003e72e0  04 10 8d e5                                      str r1, [sp, #4]
003e72e4  03 30 62 e0                                      rsb r3, r2, r3
003e72e8  c3 31 a0 e1                                      asr r3, r3, #3
003e72ec  09 00 53 e3                                      cmp r3, #9
003e72f0  1d 00 00 8a                                      bhi #0x3e736c
003e72f4  28 30 94 e5                                      ldr r3, [r4, #0x28]
003e72f8  00 00 52 e3                                      cmp r2, #0
003e72fc  03 60 62 e0                                      rsb r6, r2, r3
003e7300  c6 61 a0 e1                                      asr r6, r6, #3
003e7304  5a 00 00 0a                                      beq #0x3e7474
003e7308  04 10 8d e2                                      add r1, sp, #4
003e730c  24 00 84 e2                                      add r0, r4, #0x24
003e7310  b2 fc ff eb                                      bl #0x3e65e0
003e7314  28 30 94 e5                                      ldr r3, [r4, #0x28]
003e7318  00 70 a0 e1                                      mov r7, r0
003e731c  24 00 94 e5                                      ldr r0, [r4, #0x24]
003e7320  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
003e7324  00 00 53 e1                                      cmp r3, r0
003e7328  08 20 43 12                                      subne r2, r3, #8
003e732c  02 20 60 10                                      rsbne r2, r0, r2
003e7330  a2 21 e0 11                                      mvnne r2, r2, lsr #3
003e7334  82 31 83 10                                      addne r3, r3, r2, lsl #3
003e7338  00 00 53 e3                                      cmp r3, #0
003e733c  04 00 00 0a                                      beq #0x3e7354
003e7340  01 10 63 e0                                      rsb r1, r3, r1
003e7344  07 10 c1 e3                                      bic r1, r1, #7
003e7348  80 00 51 e3                                      cmp r1, #0x80
003e734c  33 00 00 8a                                      bhi #0x3e7420
003e7350  ea 86 0c eb                                      bl #0x708f00
003e7354  04 30 9d e5                                      ldr r3, [sp, #4]
003e7358  86 61 87 e0                                      add r6, r7, r6, lsl #3
003e735c  28 60 84 e5                                      str r6, [r4, #0x28]
003e7360  83 31 87 e0                                      add r3, r7, r3, lsl #3
003e7364  2c 30 84 e5                                      str r3, [r4, #0x2c]
003e7368  24 70 84 e5                                      str r7, [r4, #0x24]
003e736c  00 60 a0 e3                                      mov r6, #0
003e7370  01 60 86 e2                                      add r6, r6, #1
003e7374  04 00 a0 e1                                      mov r0, r4
003e7378  00 10 a0 e3                                      mov r1, #0
003e737c  01 20 a0 e3                                      mov r2, #1
003e7380  6d fd ff eb                                      bl #0x3e693c
003e7384  0a 00 56 e3                                      cmp r6, #0xa
003e7388  f8 ff ff 1a                                      bne #0x3e7370
003e738c  24 30 94 e5                                      ldr r3, [r4, #0x24]
003e7390  28 70 94 e5                                      ldr r7, [r4, #0x28]
003e7394  07 70 63 e0                                      rsb r7, r3, r7
003e7398  c7 71 b0 e1                                      asrs r7, r7, #3
003e739c  09 00 00 0a                                      beq #0x3e73c8
003e73a0  00 60 a0 e3                                      mov r6, #0
003e73a4  00 00 00 ea                                      b #0x3e73ac
003e73a8  24 30 94 e5                                      ldr r3, [r4, #0x24]
003e73ac  86 11 93 e7                                      ldr r1, [r3, r6, lsl #3]
003e73b0  04 00 a0 e1                                      mov r0, r4
003e73b4  01 60 86 e2                                      add r6, r6, #1
003e73b8  01 20 a0 e3                                      mov r2, #1
003e73bc  7c fb ff eb                                      bl #0x3e61b4
003e73c0  07 00 56 e1                                      cmp r6, r7
003e73c4  f7 ff ff 1a                                      bne #0x3e73a8
003e73c8  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
003e73cc  03 30 95 e7                                      ldr r3, [r5, r3]
003e73d0  00 60 93 e5                                      ldr r6, [r3]
003e73d4  00 00 56 e3                                      cmp r6, #0
003e73d8  0e 00 00 0a                                      beq #0x3e7418
003e73dc  ac 30 9f e5                                      ldr r3, [pc, #0xac]
003e73e0  00 40 a0 e3                                      mov r4, #0
003e73e4  03 80 95 e7                                      ldr r8, [r5, r3]
003e73e8  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
003e73ec  03 70 95 e7                                      ldr r7, [r5, r3]
003e73f0  04 50 a0 e1                                      mov r5, r4
003e73f4  00 30 97 e5                                      ldr r3, [r7]
003e73f8  01 50 85 e2                                      add r5, r5, #1
003e73fc  08 00 a0 e1                                      mov r0, r8
003e7400  04 30 83 e0                                      add r3, r3, r4
003e7404  14 10 93 e5                                      ldr r1, [r3, #0x14]
003e7408  f6 bc 02 eb                                      bl #0x4967e8
003e740c  06 00 55 e1                                      cmp r5, r6
003e7410  48 40 84 e2                                      add r4, r4, #0x48
003e7414  f6 ff ff 1a                                      bne #0x3e73f4
003e7418  08 d0 8d e2                                      add sp, sp, #8
003e741c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003e7420  06 a4 fc eb                                      bl #0x310440
003e7424  04 30 9d e5                                      ldr r3, [sp, #4]
003e7428  86 61 87 e0                                      add r6, r7, r6, lsl #3
003e742c  28 60 84 e5                                      str r6, [r4, #0x28]
003e7430  83 31 87 e0                                      add r3, r7, r3, lsl #3
003e7434  2c 30 84 e5                                      str r3, [r4, #0x2c]
003e7438  24 70 84 e5                                      str r7, [r4, #0x24]
003e743c  ca ff ff ea                                      b #0x3e736c
003e7440  fe a3 fc eb                                      bl #0x310440
003e7444  04 30 9d e5                                      ldr r3, [sp, #4]
003e7448  86 61 87 e0                                      add r6, r7, r6, lsl #3
003e744c  14 60 84 e5                                      str r6, [r4, #0x14]
003e7450  83 31 87 e0                                      add r3, r7, r3, lsl #3
003e7454  18 30 84 e5                                      str r3, [r4, #0x18]
003e7458  10 70 84 e5                                      str r7, [r4, #0x10]
003e745c  85 ff ff ea                                      b #0x3e7278
003e7460  18 00 80 e2                                      add r0, r0, #0x18
003e7464  04 20 8d e2                                      add r2, sp, #4
003e7468  be fc ff eb                                      bl #0x3e6768
003e746c  00 70 a0 e1                                      mov r7, r0
003e7470  7a ff ff ea                                      b #0x3e7260
003e7474  2c 00 84 e2                                      add r0, r4, #0x2c
003e7478  04 20 8d e2                                      add r2, sp, #4
003e747c  3b fc ff eb                                      bl #0x3e6570
003e7480  00 70 a0 e1                                      mov r7, r0
003e7484  b2 ff ff ea                                      b #0x3e7354
; mapping-symbol data/literal pool
003e7488  98 d8 5a 00 70 09 00 00 08 1b 00 00 40 23 00 00  .byte 0x98, 0xd8, 0x5a, 0x00, 0x70, 0x09, 0x00, 0x00, 0x08, 0x1b, 0x00, 0x00, 0x40, 0x23, 0x00, 0x00
