; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003eabcc, declared_size=52, range_size=52, mode=arm
; class-group: ItemManager
; alias: _ZN11ItemManagerC2Ev
; demangled: ItemManager::ItemManager()
; decoder-mode: arm
003eabcc  24 20 9f e5                                      ldr r2, [pc, #0x24]
003eabd0  24 c0 9f e5                                      ldr ip, [pc, #0x24]
003eabd4  00 10 a0 e3                                      mov r1, #0
003eabd8  02 20 8f e0                                      add r2, pc, r2
003eabdc  0c c0 92 e7                                      ldr ip, [r2, ip]
003eabe0  0c 10 80 e5                                      str r1, [r0, #0xc]
003eabe4  04 10 80 e5                                      str r1, [r0, #4]
003eabe8  08 c0 8c e2                                      add ip, ip, #8
003eabec  00 c0 80 e5                                      str ip, [r0]
003eabf0  08 10 80 e5                                      str r1, [r0, #8]
003eabf4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003eabf8  b8 9e 5a 00 ec 08 00 00                          .byte 0xb8, 0x9e, 0x5a, 0x00, 0xec, 0x08, 0x00, 0x00

; FUNCTION 0x003eac00, declared_size=52, range_size=52, mode=arm
; class-group: ItemManager
; alias: _ZN11ItemManagerC1Ev
; demangled: ItemManager::ItemManager()
; decoder-mode: arm
003eac00  24 20 9f e5                                      ldr r2, [pc, #0x24]
003eac04  24 c0 9f e5                                      ldr ip, [pc, #0x24]
003eac08  00 10 a0 e3                                      mov r1, #0
003eac0c  02 20 8f e0                                      add r2, pc, r2
003eac10  0c c0 92 e7                                      ldr ip, [r2, ip]
003eac14  0c 10 80 e5                                      str r1, [r0, #0xc]
003eac18  04 10 80 e5                                      str r1, [r0, #4]
003eac1c  08 c0 8c e2                                      add ip, ip, #8
003eac20  00 c0 80 e5                                      str ip, [r0]
003eac24  08 10 80 e5                                      str r1, [r0, #8]
003eac28  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003eac2c  84 9e 5a 00 ec 08 00 00                          .byte 0x84, 0x9e, 0x5a, 0x00, 0xec, 0x08, 0x00, 0x00

; FUNCTION 0x003eac34, declared_size=156, range_size=156, mode=arm
; class-group: ItemManager
; alias: _ZN11ItemManager7DeSpawnEP10ItemObject
; demangled: ItemManager::DeSpawn(ItemObject*)
; decoder-mode: arm
003eac34  70 40 2d e9                                      push {r4, r5, r6, lr}
003eac38  00 40 51 e2                                      subs r4, r1, #0
003eac3c  12 00 00 0a                                      beq #0x3eac8c
003eac40  eb 3f a0 e3                                      mov r3, #0x3ac
003eac44  f3 30 94 e1                                      ldrsh r3, [r4, r3]
003eac48  00 00 53 e3                                      cmp r3, #0
003eac4c  0e 00 00 ba                                      blt #0x3eac8c
003eac50  08 10 90 e5                                      ldr r1, [r0, #8]
003eac54  04 20 90 e5                                      ldr r2, [r0, #4]
003eac58  01 10 62 e0                                      rsb r1, r2, r1
003eac5c  41 02 53 e1                                      cmp r3, r1, asr #4
003eac60  09 00 00 aa                                      bge #0x3eac8c
003eac64  03 22 92 e7                                      ldr r2, [r2, r3, lsl #4]
003eac68  00 30 a0 e3                                      mov r3, #0
003eac6c  03 10 92 e7                                      ldr r1, [r2, r3]
003eac70  03 00 82 e0                                      add r0, r2, r3
003eac74  08 30 83 e2                                      add r3, r3, #8
003eac78  01 00 54 e1                                      cmp r4, r1
003eac7c  03 00 00 0a                                      beq #0x3eac90
003eac80  28 00 53 e3                                      cmp r3, #0x28
003eac84  f8 ff ff 1a                                      bne #0x3eac6c
003eac88  70 80 bd e8                                      pop {r4, r5, r6, pc}
003eac8c  70 80 bd e8                                      pop {r4, r5, r6, pc}
003eac90  00 50 a0 e3                                      mov r5, #0
003eac94  04 50 c0 e5                                      strb r5, [r0, #4]
003eac98  00 30 94 e5                                      ldr r3, [r4]
003eac9c  04 00 a0 e1                                      mov r0, r4
003eaca0  05 10 a0 e1                                      mov r1, r5
003eaca4  0f e0 a0 e1                                      mov lr, pc
003eaca8  40 f0 93 e5                                      ldr pc, [r3, #0x40]
003eacac  dd 0f 84 e2                                      add r0, r4, #0x374
003eacb0  01 10 a0 e3                                      mov r1, #1
003eacb4  80 4e 00 eb                                      bl #0x3fe6bc
003eacb8  04 00 a0 e1                                      mov r0, r4
003eacbc  05 10 a0 e1                                      mov r1, r5
003eacc0  05 20 a0 e1                                      mov r2, r5
003eacc4  cb a7 fe eb                                      bl #0x394bf8
003eacc8  85 50 c4 e5                                      strb r5, [r4, #0x85]
003eaccc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003eacd0, declared_size=392, range_size=392, mode=arm
; class-group: ItemManager
; alias: _ZN11ItemManager5SpawnER13ItemInventoryjPK10GameObjectRK7Point3DIfES8_PK9Character
; demangled: ItemManager::Spawn(ItemInventory&, unsigned int, GameObject const*, Point3D<float> const&, Point3D<float> const&, Character const*)
; decoder-mode: arm
003eacd0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003eacd4  64 c1 9f e5                                      ldr ip, [pc, #0x164]
003eacd8  00 00 53 e3                                      cmp r3, #0
003eacdc  0c d0 4d e2                                      sub sp, sp, #0xc
003eace0  0c c0 8f e0                                      add ip, pc, ip
003eace4  00 60 a0 e1                                      mov r6, r0
003eace8  01 40 a0 e1                                      mov r4, r1
003eacec  02 50 a0 e1                                      mov r5, r2
003eacf0  06 00 00 0a                                      beq #0x3ead10
003eacf4  04 00 a0 e1                                      mov r0, r4
003eacf8  42 46 00 eb                                      bl #0x3fc608
003eacfc  05 00 50 e1                                      cmp r0, r5
003ead00  17 00 00 8a                                      bhi #0x3ead64
003ead04  00 00 a0 e3                                      mov r0, #0
003ead08  0c d0 8d e2                                      add sp, sp, #0xc
003ead0c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003ead10  2c 21 9f e5                                      ldr r2, [pc, #0x12c]
003ead14  02 20 9c e7                                      ldr r2, [ip, r2]
003ead18  00 20 92 e5                                      ldr r2, [r2]
003ead1c  02 00 52 e3                                      cmp r2, #2
003ead20  00 30 83 05                                      streq r3, [r3]
003ead24  f2 ff ff 0a                                      beq #0x3eacf4
003ead28  01 00 52 e3                                      cmp r2, #1
003ead2c  f0 ff ff 1a                                      bne #0x3eacf4
003ead30  10 01 9f e5                                      ldr r0, [pc, #0x110]
003ead34  10 11 9f e5                                      ldr r1, [pc, #0x110]
003ead38  10 21 9f e5                                      ldr r2, [pc, #0x110]
003ead3c  00 00 9c e7                                      ldr r0, [ip, r0]
003ead40  0c 31 9f e5                                      ldr r3, [pc, #0x10c]
003ead44  66 c0 a0 e3                                      mov ip, #0x66
003ead48  01 10 8f e0                                      add r1, pc, r1
003ead4c  02 20 8f e0                                      add r2, pc, r2
003ead50  03 30 8f e0                                      add r3, pc, r3
003ead54  a8 00 80 e2                                      add r0, r0, #0xa8
003ead58  00 c0 8d e5                                      str ip, [sp]
003ead5c  a8 8c fc eb                                      bl #0x30e004
003ead60  e3 ff ff ea                                      b #0x3eacf4
003ead64  05 10 a0 e1                                      mov r1, r5
003ead68  04 00 a0 e1                                      mov r0, r4
003ead6c  2a 46 00 eb                                      bl #0x3fc61c
003ead70  24 3c 00 eb                                      bl #0x3f9e08
003ead74  54 30 90 e5                                      ldr r3, [r0, #0x54]
003ead78  00 00 53 e3                                      cmp r3, #0
003ead7c  e0 ff ff ba                                      blt #0x3ead04
003ead80  04 20 96 e5                                      ldr r2, [r6, #4]
003ead84  08 10 96 e5                                      ldr r1, [r6, #8]
003ead88  01 10 62 e0                                      rsb r1, r2, r1
003ead8c  41 02 53 e1                                      cmp r3, r1, asr #4
003ead90  db ff ff aa                                      bge #0x3ead04
003ead94  03 12 82 e0                                      add r1, r2, r3, lsl #4
003ead98  0c 70 91 e5                                      ldr r7, [r1, #0xc]
003ead9c  03 82 92 e7                                      ldr r8, [r2, r3, lsl #4]
003eada0  01 30 87 e2                                      add r3, r7, #1
003eada4  04 00 53 e3                                      cmp r3, #4
003eada8  0c 30 81 e5                                      str r3, [r1, #0xc]
003eadac  00 30 a0 83                                      movhi r3, #0
003eadb0  0c 30 81 85                                      strhi r3, [r1, #0xc]
003eadb4  87 a1 88 e0                                      add sl, r8, r7, lsl #3
003eadb8  04 30 da e5                                      ldrb r3, [sl, #4]
003eadbc  00 00 53 e3                                      cmp r3, #0
003eadc0  1a 00 00 0a                                      beq #0x3eae30
003eadc4  06 00 a0 e1                                      mov r0, r6
003eadc8  87 11 98 e7                                      ldr r1, [r8, r7, lsl #3]
003eadcc  98 ff ff eb                                      bl #0x3eac34
003eadd0  87 01 98 e7                                      ldr r0, [r8, r7, lsl #3]
003eadd4  01 20 a0 e3                                      mov r2, #1
003eadd8  28 10 9d e5                                      ldr r1, [sp, #0x28]
003eaddc  f4 a3 fe eb                                      bl #0x393db4
003eade0  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
003eade4  87 01 98 e7                                      ldr r0, [r8, r7, lsl #3]
003eade8  04 a2 fe eb                                      bl #0x393600
003eadec  05 20 a0 e1                                      mov r2, r5
003eadf0  04 10 a0 e1                                      mov r1, r4
003eadf4  30 30 9d e5                                      ldr r3, [sp, #0x30]
003eadf8  87 01 98 e7                                      ldr r0, [r8, r7, lsl #3]
003eadfc  bb 04 00 eb                                      bl #0x3ec0f0
003eae00  87 31 98 e7                                      ldr r3, [r8, r7, lsl #3]
003eae04  01 10 a0 e3                                      mov r1, #1
003eae08  03 00 a0 e1                                      mov r0, r3
003eae0c  00 30 93 e5                                      ldr r3, [r3]
003eae10  0f e0 a0 e1                                      mov lr, pc
003eae14  40 f0 93 e5                                      ldr pc, [r3, #0x40]
003eae18  87 21 98 e7                                      ldr r2, [r8, r7, lsl #3]
003eae1c  01 30 a0 e3                                      mov r3, #1
003eae20  85 30 c2 e5                                      strb r3, [r2, #0x85]
003eae24  04 30 ca e5                                      strb r3, [sl, #4]
003eae28  87 01 98 e7                                      ldr r0, [r8, r7, lsl #3]
003eae2c  b5 ff ff ea                                      b #0x3ead08
003eae30  87 01 98 e7                                      ldr r0, [r8, r7, lsl #3]
003eae34  00 00 50 e3                                      cmp r0, #0
003eae38  e5 ff ff 1a                                      bne #0x3eadd4
003eae3c  b0 ff ff ea                                      b #0x3ead04
; mapping-symbol data/literal pool
003eae40  b0 9d 5a 00 c0 39 00 00 c0 19 00 00 90 36 4d 00  .byte 0xb0, 0x9d, 0x5a, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x90, 0x36, 0x4d, 0x00
003eae50  44 b4 4d 00 48 b4 4d 00                          .byte 0x44, 0xb4, 0x4d, 0x00, 0x48, 0xb4, 0x4d, 0x00

; FUNCTION 0x003eb6bc, declared_size=40, range_size=40, mode=arm
; class-group: ItemManager
; alias: _ZN11ItemManager5FlushEv
; demangled: ItemManager::Flush()
; decoder-mode: arm
003eb6bc  04 e0 2d e5                                      str lr, [sp, #-4]!
003eb6c0  06 00 90 e9                                      ldmib r0, {r1, r2}
003eb6c4  0c d0 4d e2                                      sub sp, sp, #0xc
003eb6c8  02 00 51 e1                                      cmp r1, r2
003eb6cc  02 00 00 0a                                      beq #0x3eb6dc
003eb6d0  04 00 80 e2                                      add r0, r0, #4
003eb6d4  04 30 8d e2                                      add r3, sp, #4
003eb6d8  d5 ff ff eb                                      bl #0x3eb634
003eb6dc  0c d0 8d e2                                      add sp, sp, #0xc
003eb6e0  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x003eb6e4, declared_size=1040, range_size=1040, mode=arm
; class-group: ItemManager
; alias: _ZN11ItemManager8PreCacheEv
; demangled: ItemManager::PreCache()
; decoder-mode: arm
003eb6e4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003eb6e8  ec 13 9f e5                                      ldr r1, [pc, #0x3ec]
003eb6ec  ec 23 9f e5                                      ldr r2, [pc, #0x3ec]
003eb6f0  9c d0 4d e2                                      sub sp, sp, #0x9c
003eb6f4  01 10 8f e0                                      add r1, pc, r1
003eb6f8  02 30 91 e7                                      ldr r3, [r1, r2]
003eb6fc  4c 20 8d e5                                      str r2, [sp, #0x4c]
003eb700  dc 23 9f e5                                      ldr r2, [pc, #0x3dc]
003eb704  00 30 93 e5                                      ldr r3, [r3]
003eb708  00 60 a0 e1                                      mov r6, r0
003eb70c  02 20 91 e7                                      ldr r2, [r1, r2]
003eb710  70 90 8d e2                                      add sb, sp, #0x70
003eb714  04 c0 86 e2                                      add ip, r6, #4
003eb718  00 20 92 e5                                      ldr r2, [r2]
003eb71c  09 00 a0 e1                                      mov r0, sb
003eb720  1c 10 8d e5                                      str r1, [sp, #0x1c]
003eb724  40 20 8d e5                                      str r2, [sp, #0x40]
003eb728  44 c0 8d e5                                      str ip, [sp, #0x44]
003eb72c  94 30 8d e5                                      str r3, [sp, #0x94]
003eb730  75 4f fd eb                                      bl #0x33f50c
003eb734  44 00 9d e5                                      ldr r0, [sp, #0x44]
003eb738  40 10 9d e5                                      ldr r1, [sp, #0x40]
003eb73c  37 ff ff eb                                      bl #0x3eb420
003eb740  40 00 9d e5                                      ldr r0, [sp, #0x40]
003eb744  00 00 50 e3                                      cmp r0, #0
003eb748  ce 00 00 0a                                      beq #0x3eba88
003eb74c  94 33 9f e5                                      ldr r3, [pc, #0x394]
003eb750  94 13 9f e5                                      ldr r1, [pc, #0x394]
003eb754  50 b0 8d e2                                      add fp, sp, #0x50
003eb758  03 30 8f e0                                      add r3, pc, r3
003eb75c  2c 30 8d e5                                      str r3, [sp, #0x2c]
003eb760  88 33 9f e5                                      ldr r3, [pc, #0x388]
003eb764  04 20 8b e2                                      add r2, fp, #4
003eb768  24 10 8d e5                                      str r1, [sp, #0x24]
003eb76c  03 30 8f e0                                      add r3, pc, r3
003eb770  30 30 8d e5                                      str r3, [sp, #0x30]
003eb774  60 c0 8d e2                                      add ip, sp, #0x60
003eb778  00 30 a0 e3                                      mov r3, #0
003eb77c  80 00 8d e2                                      add r0, sp, #0x80
003eb780  04 10 82 e2                                      add r1, r2, #4
003eb784  20 20 8d e5                                      str r2, [sp, #0x20]
003eb788  14 30 8d e5                                      str r3, [sp, #0x14]
003eb78c  34 c0 8d e5                                      str ip, [sp, #0x34]
003eb790  18 00 8d e5                                      str r0, [sp, #0x18]
003eb794  28 10 8d e5                                      str r1, [sp, #0x28]
003eb798  10 90 8d e5                                      str sb, [sp, #0x10]
003eb79c  00 30 a0 e3                                      mov r3, #0
003eb7a0  34 10 9d e5                                      ldr r1, [sp, #0x34]
003eb7a4  44 00 9d e5                                      ldr r0, [sp, #0x44]
003eb7a8  6c 30 8d e5                                      str r3, [sp, #0x6c]
003eb7ac  60 30 8d e5                                      str r3, [sp, #0x60]
003eb7b0  64 30 8d e5                                      str r3, [sp, #0x64]
003eb7b4  68 30 8d e5                                      str r3, [sp, #0x68]
003eb7b8  5c ff ff eb                                      bl #0x3eb530
003eb7bc  34 00 9d e5                                      ldr r0, [sp, #0x34]
003eb7c0  ec fe ff eb                                      bl #0x3eb378
003eb7c4  14 20 9d e5                                      ldr r2, [sp, #0x14]
003eb7c8  04 30 96 e5                                      ldr r3, [r6, #4]
003eb7cc  05 10 a0 e3                                      mov r1, #5
003eb7d0  02 72 a0 e1                                      lsl r7, r2, #4
003eb7d4  7c 10 8d e5                                      str r1, [sp, #0x7c]
003eb7d8  07 40 83 e0                                      add r4, r3, r7
003eb7dc  02 22 93 e7                                      ldr r2, [r3, r2, lsl #4]
003eb7e0  08 00 94 e5                                      ldr r0, [r4, #8]
003eb7e4  00 00 62 e0                                      rsb r0, r2, r0
003eb7e8  c0 01 a0 e1                                      asr r0, r0, #3
003eb7ec  04 00 50 e3                                      cmp r0, #4
003eb7f0  11 00 00 8a                                      bhi #0x3eb83c
003eb7f4  04 30 94 e5                                      ldr r3, [r4, #4]
003eb7f8  00 00 52 e3                                      cmp r2, #0
003eb7fc  03 00 62 e0                                      rsb r0, r2, r3
003eb800  c0 81 a0 e1                                      asr r8, r0, #3
003eb804  ae 00 00 0a                                      beq #0x3ebac4
003eb808  04 00 a0 e1                                      mov r0, r4
003eb80c  7c 10 8d e2                                      add r1, sp, #0x7c
003eb810  6a fe ff eb                                      bl #0x3eb1c0
003eb814  00 50 a0 e1                                      mov r5, r0
003eb818  04 00 a0 e1                                      mov r0, r4
003eb81c  7d fe ff eb                                      bl #0x3eb218
003eb820  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
003eb824  88 01 85 e0                                      add r0, r5, r8, lsl #3
003eb828  04 00 84 e5                                      str r0, [r4, #4]
003eb82c  83 31 85 e0                                      add r3, r5, r3, lsl #3
003eb830  08 30 84 e5                                      str r3, [r4, #8]
003eb834  00 50 84 e5                                      str r5, [r4]
003eb838  04 30 96 e5                                      ldr r3, [r6, #4]
003eb83c  7c 00 8d e2                                      add r0, sp, #0x7c
003eb840  07 a0 a0 e1                                      mov sl, r7
003eb844  3c 00 8d e5                                      str r0, [sp, #0x3c]
003eb848  0a 70 83 e0                                      add r7, r3, sl
003eb84c  04 80 97 e5                                      ldr r8, [r7, #4]
003eb850  08 20 97 e5                                      ldr r2, [r7, #8]
003eb854  00 40 a0 e3                                      mov r4, #0
003eb858  04 50 a0 e1                                      mov r5, r4
003eb85c  02 00 58 e1                                      cmp r8, r2
003eb860  3d 00 00 0a                                      beq #0x3eb95c
003eb864  00 50 88 e5                                      str r5, [r8]
003eb868  04 50 c8 e5                                      strb r5, [r8, #4]
003eb86c  04 30 97 e5                                      ldr r3, [r7, #4]
003eb870  08 30 83 e2                                      add r3, r3, #8
003eb874  04 30 87 e5                                      str r3, [r7, #4]
003eb878  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
003eb87c  14 20 9d e5                                      ldr r2, [sp, #0x14]
003eb880  04 30 a0 e1                                      mov r3, r4
003eb884  18 00 9d e5                                      ldr r0, [sp, #0x18]
003eb888  95 8c fc eb                                      bl #0x30eae4
003eb88c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
003eb890  24 00 9d e5                                      ldr r0, [sp, #0x24]
003eb894  01 c0 a0 e3                                      mov ip, #1
003eb898  30 20 9d e5                                      ldr r2, [sp, #0x30]
003eb89c  00 30 91 e7                                      ldr r3, [r1, r0]
003eb8a0  0b 00 a0 e1                                      mov r0, fp
003eb8a4  38 10 93 e5                                      ldr r1, [r3, #0x38]
003eb8a8  18 30 9d e5                                      ldr r3, [sp, #0x18]
003eb8ac  20 10 8d e8                                      stm sp, {r5, ip}
003eb8b0  9b 7f fd eb                                      bl #0x34b724
003eb8b4  00 20 9b e5                                      ldr r2, [fp]
003eb8b8  20 10 9d e5                                      ldr r1, [sp, #0x20]
003eb8bc  09 30 a0 e1                                      mov r3, sb
003eb8c0  04 20 83 e4                                      str r2, [r3], #4
003eb8c4  00 20 91 e5                                      ldr r2, [r1]
003eb8c8  28 c0 9d e5                                      ldr ip, [sp, #0x28]
003eb8cc  10 00 9d e5                                      ldr r0, [sp, #0x10]
003eb8d0  04 20 89 e5                                      str r2, [sb, #4]
003eb8d4  00 20 9c e5                                      ldr r2, [ip]
003eb8d8  05 10 a0 e1                                      mov r1, r5
003eb8dc  00 90 a0 e1                                      mov sb, r0
003eb8e0  04 20 83 e5                                      str r2, [r3, #4]
003eb8e4  35 51 fd eb                                      bl #0x33fdc0
003eb8e8  00 00 50 e3                                      cmp r0, #0
003eb8ec  11 00 00 0a                                      beq #0x3eb938
003eb8f0  04 30 96 e5                                      ldr r3, [r6, #4]
003eb8f4  10 00 9d e5                                      ldr r0, [sp, #0x10]
003eb8f8  05 10 a0 e1                                      mov r1, r5
003eb8fc  0a 70 93 e7                                      ldr r7, [r3, sl]
003eb900  2e 51 fd eb                                      bl #0x33fdc0
003eb904  00 00 50 e3                                      cmp r0, #0
003eb908  84 31 a0 e1                                      lsl r3, r4, #3
003eb90c  02 00 00 0a                                      beq #0x3eb91c
003eb910  f4 20 90 e5                                      ldr r2, [r0, #0xf4]
003eb914  03 00 52 e3                                      cmp r2, #3
003eb918  00 00 00 0a                                      beq #0x3eb920
003eb91c  00 00 a0 e3                                      mov r0, #0
003eb920  03 00 87 e7                                      str r0, [r7, r3]
003eb924  04 20 96 e5                                      ldr r2, [r6, #4]
003eb928  14 10 9d e5                                      ldr r1, [sp, #0x14]
003eb92c  0a 20 92 e7                                      ldr r2, [r2, sl]
003eb930  03 00 92 e7                                      ldr r0, [r2, r3]
003eb934  51 05 00 eb                                      bl #0x3ece80
003eb938  01 40 84 e2                                      add r4, r4, #1
003eb93c  05 00 54 e3                                      cmp r4, #5
003eb940  40 00 00 0a                                      beq #0x3eba48
003eb944  04 30 96 e5                                      ldr r3, [r6, #4]
003eb948  0a 70 83 e0                                      add r7, r3, sl
003eb94c  04 80 97 e5                                      ldr r8, [r7, #4]
003eb950  08 20 97 e5                                      ldr r2, [r7, #8]
003eb954  02 00 58 e1                                      cmp r8, r2
003eb958  c1 ff ff 1a                                      bne #0x3eb864
003eb95c  0a 20 93 e7                                      ldr r2, [r3, sl]
003eb960  08 20 62 e0                                      rsb r2, r2, r8
003eb964  c2 21 a0 e1                                      asr r2, r2, #3
003eb968  01 00 52 e3                                      cmp r2, #1
003eb96c  02 30 82 20                                      addhs r3, r2, r2
003eb970  01 30 82 32                                      addlo r3, r2, #1
003eb974  1e 02 73 e3                                      cmn r3, #0xe0000001
003eb978  4b 00 00 8a                                      bhi #0x3ebaac
003eb97c  03 00 52 e1                                      cmp r2, r3
003eb980  49 00 00 8a                                      bhi #0x3ebaac
003eb984  03 10 a0 e1                                      mov r1, r3
003eb988  08 00 87 e2                                      add r0, r7, #8
003eb98c  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
003eb990  7c 30 8d e5                                      str r3, [sp, #0x7c]
003eb994  97 fd ff eb                                      bl #0x3eaff8
003eb998  38 00 8d e5                                      str r0, [sp, #0x38]
003eb99c  00 e0 97 e5                                      ldr lr, [r7]
003eb9a0  08 80 6e e0                                      rsb r8, lr, r8
003eb9a4  c8 81 a0 e1                                      asr r8, r8, #3
003eb9a8  00 00 58 e3                                      cmp r8, #0
003eb9ac  00 80 a0 d1                                      movle r8, r0
003eb9b0  0f 00 00 da                                      ble #0x3eb9f4
003eb9b4  08 10 a0 e1                                      mov r1, r8
003eb9b8  48 80 8d e5                                      str r8, [sp, #0x48]
003eb9bc  38 80 9d e5                                      ldr r8, [sp, #0x38]
003eb9c0  00 00 a0 e3                                      mov r0, #0
003eb9c4  0e 20 a0 e1                                      mov r2, lr
003eb9c8  00 c0 b2 e7                                      ldr ip, [r2, r0]!
003eb9cc  08 30 a0 e1                                      mov r3, r8
003eb9d0  01 10 51 e2                                      subs r1, r1, #1
003eb9d4  00 c0 a3 e7                                      str ip, [r3, r0]!
003eb9d8  04 20 d2 e5                                      ldrb r2, [r2, #4]
003eb9dc  08 00 80 e2                                      add r0, r0, #8
003eb9e0  04 20 c3 e5                                      strb r2, [r3, #4]
003eb9e4  f6 ff ff 1a                                      bne #0x3eb9c4
003eb9e8  48 80 9d e5                                      ldr r8, [sp, #0x48]
003eb9ec  38 10 9d e5                                      ldr r1, [sp, #0x38]
003eb9f0  88 81 81 e0                                      add r8, r1, r8, lsl #3
003eb9f4  08 20 a0 e1                                      mov r2, r8
003eb9f8  04 50 c8 e5                                      strb r5, [r8, #4]
003eb9fc  08 50 82 e4                                      str r5, [r2], #8
003eba00  00 00 97 e5                                      ldr r0, [r7]
003eba04  08 10 97 e5                                      ldr r1, [r7, #8]
003eba08  00 00 50 e3                                      cmp r0, #0
003eba0c  06 00 00 0a                                      beq #0x3eba2c
003eba10  01 10 60 e0                                      rsb r1, r0, r1
003eba14  07 10 c1 e3                                      bic r1, r1, #7
003eba18  80 00 51 e3                                      cmp r1, #0x80
003eba1c  24 00 00 8a                                      bhi #0x3ebab4
003eba20  0c 20 8d e5                                      str r2, [sp, #0xc]
003eba24  35 75 0c eb                                      bl #0x708f00
003eba28  0c 20 9d e5                                      ldr r2, [sp, #0xc]
003eba2c  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
003eba30  38 c0 9d e5                                      ldr ip, [sp, #0x38]
003eba34  04 20 87 e5                                      str r2, [r7, #4]
003eba38  83 31 8c e0                                      add r3, ip, r3, lsl #3
003eba3c  00 c0 87 e5                                      str ip, [r7]
003eba40  08 30 87 e5                                      str r3, [r7, #8]
003eba44  8b ff ff ea                                      b #0x3eb878
003eba48  0a 70 a0 e1                                      mov r7, sl
003eba4c  00 40 a0 e3                                      mov r4, #0
003eba50  04 30 96 e5                                      ldr r3, [r6, #4]
003eba54  06 00 a0 e1                                      mov r0, r6
003eba58  07 30 93 e7                                      ldr r3, [r3, r7]
003eba5c  04 10 93 e7                                      ldr r1, [r3, r4]
003eba60  08 40 84 e2                                      add r4, r4, #8
003eba64  72 fc ff eb                                      bl #0x3eac34
003eba68  28 00 54 e3                                      cmp r4, #0x28
003eba6c  f7 ff ff 1a                                      bne #0x3eba50
003eba70  14 00 9d e5                                      ldr r0, [sp, #0x14]
003eba74  40 10 9d e5                                      ldr r1, [sp, #0x40]
003eba78  01 00 80 e2                                      add r0, r0, #1
003eba7c  01 00 50 e1                                      cmp r0, r1
003eba80  14 00 8d e5                                      str r0, [sp, #0x14]
003eba84  44 ff ff 1a                                      bne #0x3eb79c
003eba88  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
003eba8c  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
003eba90  02 30 9c e7                                      ldr r3, [ip, r2]
003eba94  94 20 9d e5                                      ldr r2, [sp, #0x94]
003eba98  00 30 93 e5                                      ldr r3, [r3]
003eba9c  03 00 52 e1                                      cmp r2, r3
003ebaa0  0c 00 00 1a                                      bne #0x3ebad8
003ebaa4  9c d0 8d e2                                      add sp, sp, #0x9c
003ebaa8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003ebaac  0e 32 e0 e3                                      mvn r3, #0xe0000000
003ebab0  b3 ff ff ea                                      b #0x3eb984
003ebab4  0c 20 8d e5                                      str r2, [sp, #0xc]
003ebab8  60 92 fc eb                                      bl #0x310440
003ebabc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
003ebac0  d9 ff ff ea                                      b #0x3eba2c
003ebac4  08 00 84 e2                                      add r0, r4, #8
003ebac8  7c 20 8d e2                                      add r2, sp, #0x7c
003ebacc  49 fd ff eb                                      bl #0x3eaff8
003ebad0  00 50 a0 e1                                      mov r5, r0
003ebad4  51 ff ff ea                                      b #0x3eb820
003ebad8  0c 8a fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003ebadc  9c 93 5a 00 ac 40 00 00 10 45 00 00 90 aa 4d 00  .byte 0x9c, 0x93, 0x5a, 0x00, 0xac, 0x40, 0x00, 0x00, 0x10, 0x45, 0x00, 0x00, 0x90, 0xaa, 0x4d, 0x00
003ebaec  f4 37 00 00 14 ee 4d 00                          .byte 0xf4, 0x37, 0x00, 0x00, 0x14, 0xee, 0x4d, 0x00

; FUNCTION 0x003ebb58, declared_size=64, range_size=64, mode=arm
; class-group: ItemManager
; alias: _ZN11ItemManagerD1Ev
; demangled: ItemManager::~ItemManager()
; decoder-mode: arm
003ebb58  30 30 9f e5                                      ldr r3, [pc, #0x30]
003ebb5c  30 20 9f e5                                      ldr r2, [pc, #0x30]
003ebb60  70 40 2d e9                                      push {r4, r5, r6, lr}
003ebb64  03 30 8f e0                                      add r3, pc, r3
003ebb68  02 20 93 e7                                      ldr r2, [r3, r2]
003ebb6c  00 40 a0 e1                                      mov r4, r0
003ebb70  00 50 a0 e1                                      mov r5, r0
003ebb74  08 20 82 e2                                      add r2, r2, #8
003ebb78  04 20 84 e4                                      str r2, [r4], #4
003ebb7c  ce fe ff eb                                      bl #0x3eb6bc
003ebb80  04 00 a0 e1                                      mov r0, r4
003ebb84  da ff ff eb                                      bl #0x3ebaf4
003ebb88  05 00 a0 e1                                      mov r0, r5
003ebb8c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003ebb90  2c 8f 5a 00 ec 08 00 00                          .byte 0x2c, 0x8f, 0x5a, 0x00, 0xec, 0x08, 0x00, 0x00

; FUNCTION 0x003ebb98, declared_size=28, range_size=28, mode=arm
; class-group: ItemManager
; alias: _ZN11ItemManagerD0Ev
; demangled: ItemManager::~ItemManager()
; decoder-mode: arm
003ebb98  10 40 2d e9                                      push {r4, lr}
003ebb9c  00 40 a0 e1                                      mov r4, r0
003ebba0  ec ff ff eb                                      bl #0x3ebb58
003ebba4  04 00 a0 e1                                      mov r0, r4
003ebba8  24 92 fc eb                                      bl #0x310440
003ebbac  04 00 a0 e1                                      mov r0, r4
003ebbb0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003ebbb4, declared_size=64, range_size=64, mode=arm
; class-group: ItemManager
; alias: _ZN11ItemManagerD2Ev
; demangled: ItemManager::~ItemManager()
; decoder-mode: arm
003ebbb4  30 30 9f e5                                      ldr r3, [pc, #0x30]
003ebbb8  30 20 9f e5                                      ldr r2, [pc, #0x30]
003ebbbc  70 40 2d e9                                      push {r4, r5, r6, lr}
003ebbc0  03 30 8f e0                                      add r3, pc, r3
003ebbc4  02 20 93 e7                                      ldr r2, [r3, r2]
003ebbc8  00 40 a0 e1                                      mov r4, r0
003ebbcc  00 50 a0 e1                                      mov r5, r0
003ebbd0  08 20 82 e2                                      add r2, r2, #8
003ebbd4  04 20 84 e4                                      str r2, [r4], #4
003ebbd8  b7 fe ff eb                                      bl #0x3eb6bc
003ebbdc  04 00 a0 e1                                      mov r0, r4
003ebbe0  c3 ff ff eb                                      bl #0x3ebaf4
003ebbe4  05 00 a0 e1                                      mov r0, r5
003ebbe8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003ebbec  d0 8e 5a 00 ec 08 00 00                          .byte 0xd0, 0x8e, 0x5a, 0x00, 0xec, 0x08, 0x00, 0x00
