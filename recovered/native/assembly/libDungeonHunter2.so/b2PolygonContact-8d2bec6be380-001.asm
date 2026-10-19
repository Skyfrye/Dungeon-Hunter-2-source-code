; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007eca90, declared_size=4, range_size=4, mode=arm
; class-group: b2PolygonContact
; alias: _ZN16b2PolygonContactD1Ev
; demangled: b2PolygonContact::~b2PolygonContact()
; decoder-mode: arm
007eca90  1e ff 2f e1                                      bx lr

; FUNCTION 0x007eca94, declared_size=8, range_size=8, mode=arm
; class-group: b2PolygonContact
; alias: _ZN16b2PolygonContact12GetManifoldsEv
; demangled: b2PolygonContact::GetManifolds()
; decoder-mode: arm
007eca94  48 00 80 e2                                      add r0, r0, #0x48
007eca98  1e ff 2f e1                                      bx lr

; FUNCTION 0x007eca9c, declared_size=20, range_size=20, mode=arm
; class-group: b2PolygonContact
; alias: _ZN16b2PolygonContactD0Ev
; demangled: b2PolygonContact::~b2PolygonContact()
; decoder-mode: arm
007eca9c  10 40 2d e9                                      push {r4, lr}
007ecaa0  00 40 a0 e1                                      mov r4, r0
007ecaa4  01 86 ec eb                                      bl #0x30e2b0
007ecaa8  04 00 a0 e1                                      mov r0, r4
007ecaac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007ecab0, declared_size=60, range_size=60, mode=arm
; class-group: b2PolygonContact
; alias: _ZN16b2PolygonContactC1EP7b2ShapeS1_
; demangled: b2PolygonContact::b2PolygonContact(b2Shape*, b2Shape*)
; decoder-mode: arm
007ecab0  70 40 2d e9                                      push {r4, r5, r6, lr}
007ecab4  28 40 9f e5                                      ldr r4, [pc, #0x28]
007ecab8  00 50 a0 e1                                      mov r5, r0
007ecabc  fd f4 ff eb                                      bl #0x7e9eb8
007ecac0  20 30 9f e5                                      ldr r3, [pc, #0x20]
007ecac4  04 40 8f e0                                      add r4, pc, r4
007ecac8  00 20 a0 e3                                      mov r2, #0
007ecacc  03 30 94 e7                                      ldr r3, [r4, r3]
007ecad0  90 20 85 e5                                      str r2, [r5, #0x90]
007ecad4  05 00 a0 e1                                      mov r0, r5
007ecad8  08 30 83 e2                                      add r3, r3, #8
007ecadc  00 30 85 e5                                      str r3, [r5]
007ecae0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007ecae4  cc 7f 1a 00 78 2b 00 00                          .byte 0xcc, 0x7f, 0x1a, 0x00, 0x78, 0x2b, 0x00, 0x00

; FUNCTION 0x007ecaec, declared_size=60, range_size=60, mode=arm
; class-group: b2PolygonContact
; alias: _ZN16b2PolygonContactC2EP7b2ShapeS1_
; demangled: b2PolygonContact::b2PolygonContact(b2Shape*, b2Shape*)
; decoder-mode: arm
007ecaec  70 40 2d e9                                      push {r4, r5, r6, lr}
007ecaf0  28 40 9f e5                                      ldr r4, [pc, #0x28]
007ecaf4  00 50 a0 e1                                      mov r5, r0
007ecaf8  ee f4 ff eb                                      bl #0x7e9eb8
007ecafc  20 30 9f e5                                      ldr r3, [pc, #0x20]
007ecb00  04 40 8f e0                                      add r4, pc, r4
007ecb04  00 20 a0 e3                                      mov r2, #0
007ecb08  03 30 94 e7                                      ldr r3, [r4, r3]
007ecb0c  90 20 85 e5                                      str r2, [r5, #0x90]
007ecb10  05 00 a0 e1                                      mov r0, r5
007ecb14  08 30 83 e2                                      add r3, r3, #8
007ecb18  00 30 85 e5                                      str r3, [r5]
007ecb1c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007ecb20  90 7f 1a 00 78 2b 00 00                          .byte 0x90, 0x7f, 0x1a, 0x00, 0x78, 0x2b, 0x00, 0x00

; FUNCTION 0x007ecb28, declared_size=44, range_size=44, mode=arm
; class-group: b2PolygonContact
; alias: _ZN16b2PolygonContact7DestroyEP9b2ContactP16b2BlockAllocator
; demangled: b2PolygonContact::Destroy(b2Contact*, b2BlockAllocator*)
; decoder-mode: arm
007ecb28  70 40 2d e9                                      push {r4, r5, r6, lr}
007ecb2c  00 30 90 e5                                      ldr r3, [r0]
007ecb30  01 50 a0 e1                                      mov r5, r1
007ecb34  00 40 a0 e1                                      mov r4, r0
007ecb38  0f e0 a0 e1                                      mov lr, pc
007ecb3c  04 f0 93 e5                                      ldr pc, [r3, #4]
007ecb40  05 00 a0 e1                                      mov r0, r5
007ecb44  04 10 a0 e1                                      mov r1, r4
007ecb48  94 20 a0 e3                                      mov r2, #0x94
007ecb4c  70 40 bd e8                                      pop {r4, r5, r6, lr}
007ecb50  92 f0 ff ea                                      b #0x7e8da0

; FUNCTION 0x007ecb54, declared_size=48, range_size=48, mode=arm
; class-group: b2PolygonContact
; alias: _ZN16b2PolygonContact6CreateEP7b2ShapeS1_P16b2BlockAllocator
; demangled: b2PolygonContact::Create(b2Shape*, b2Shape*, b2BlockAllocator*)
; decoder-mode: arm
007ecb54  70 40 2d e9                                      push {r4, r5, r6, lr}
007ecb58  00 60 a0 e1                                      mov r6, r0
007ecb5c  01 50 a0 e1                                      mov r5, r1
007ecb60  02 00 a0 e1                                      mov r0, r2
007ecb64  94 10 a0 e3                                      mov r1, #0x94
007ecb68  53 f1 ff eb                                      bl #0x7e90bc
007ecb6c  06 10 a0 e1                                      mov r1, r6
007ecb70  00 40 a0 e1                                      mov r4, r0
007ecb74  05 20 a0 e1                                      mov r2, r5
007ecb78  cc ff ff eb                                      bl #0x7ecab0
007ecb7c  04 00 a0 e1                                      mov r0, r4
007ecb80  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007ecb84, declared_size=2772, range_size=2772, mode=arm
; class-group: b2PolygonContact
; alias: _ZN16b2PolygonContact8EvaluateEP17b2ContactListener
; demangled: b2PolygonContact::Evaluate(b2ContactListener*)
; decoder-mode: arm
007ecb84  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007ecb88  ac d0 4d e2                                      sub sp, sp, #0xac
007ecb8c  34 c0 90 e5                                      ldr ip, [r0, #0x34]
007ecb90  38 30 90 e5                                      ldr r3, [r0, #0x38]
007ecb94  28 20 8d e2                                      add r2, sp, #0x28
007ecb98  18 20 8d e5                                      str r2, [sp, #0x18]
007ecb9c  0c 40 9c e5                                      ldr r4, [ip, #0xc]
007ecba0  0c 50 93 e5                                      ldr r5, [r3, #0xc]
007ecba4  48 80 80 e2                                      add r8, r0, #0x48
007ecba8  00 60 a0 e1                                      mov r6, r0
007ecbac  4c 20 a0 e3                                      mov r2, #0x4c
007ecbb0  01 70 a0 e1                                      mov r7, r1
007ecbb4  18 00 9d e5                                      ldr r0, [sp, #0x18]
007ecbb8  08 10 a0 e1                                      mov r1, r8
007ecbbc  29 87 ec eb                                      bl #0x30e868
007ecbc0  34 10 96 e5                                      ldr r1, [r6, #0x34]
007ecbc4  38 30 96 e5                                      ldr r3, [r6, #0x38]
007ecbc8  04 c0 85 e2                                      add ip, r5, #4
007ecbcc  08 00 a0 e1                                      mov r0, r8
007ecbd0  04 20 84 e2                                      add r2, r4, #4
007ecbd4  00 c0 8d e5                                      str ip, [sp]
007ecbd8  50 23 00 eb                                      bl #0x7f5920
007ecbdc  90 c0 96 e5                                      ldr ip, [r6, #0x90]
007ecbe0  34 00 96 e5                                      ldr r0, [r6, #0x34]
007ecbe4  38 10 96 e5                                      ldr r1, [r6, #0x38]
007ecbe8  3c 20 96 e5                                      ldr r2, [r6, #0x3c]
007ecbec  40 30 96 e5                                      ldr r3, [r6, #0x40]
007ecbf0  00 b0 a0 e3                                      mov fp, #0
007ecbf4  00 00 5c e3                                      cmp ip, #0
007ecbf8  74 00 8d e5                                      str r0, [sp, #0x74]
007ecbfc  78 10 8d e5                                      str r1, [sp, #0x78]
007ecc00  98 20 8d e5                                      str r2, [sp, #0x98]
007ecc04  9c 30 8d e5                                      str r3, [sp, #0x9c]
007ecc08  a4 b0 cd e5                                      strb fp, [sp, #0xa4]
007ecc0c  a5 b0 cd e5                                      strb fp, [sp, #0xa5]
007ecc10  08 b0 86 d5                                      strle fp, [r6, #8]
007ecc14  f3 00 00 da                                      ble #0x7ecfe8
007ecc18  74 10 8d e2                                      add r1, sp, #0x74
007ecc1c  06 a0 a0 e1                                      mov sl, r6
007ecc20  24 10 8d e5                                      str r1, [sp, #0x24]
007ecc24  a4 80 8d e2                                      add r8, sp, #0xa4
007ecc28  00 20 a0 e3                                      mov r2, #0
007ecc2c  5c 20 8a e5                                      str r2, [sl, #0x5c]
007ecc30  60 20 8a e5                                      str r2, [sl, #0x60]
007ecc34  70 00 9d e5                                      ldr r0, [sp, #0x70]
007ecc38  64 90 9a e5                                      ldr sb, [sl, #0x64]
007ecc3c  00 00 50 e3                                      cmp r0, #0
007ecc40  0b 00 00 da                                      ble #0x7ecc74
007ecc44  18 20 9d e5                                      ldr r2, [sp, #0x18]
007ecc48  00 30 a0 e3                                      mov r3, #0
007ecc4c  03 10 d8 e7                                      ldrb r1, [r8, r3]
007ecc50  00 00 51 e3                                      cmp r1, #0
007ecc54  02 00 00 1a                                      bne #0x7ecc64
007ecc58  1c 10 92 e5                                      ldr r1, [r2, #0x1c]
007ecc5c  09 00 51 e1                                      cmp r1, sb
007ecc60  9d 01 00 0a                                      beq #0x7ed2dc
007ecc64  01 30 83 e2                                      add r3, r3, #1
007ecc68  00 00 53 e1                                      cmp r3, r0
007ecc6c  20 20 82 e2                                      add r2, r2, #0x20
007ecc70  f5 ff ff 1a                                      bne #0x7ecc4c
007ecc74  00 00 57 e3                                      cmp r7, #0
007ecc78  d3 00 00 0a                                      beq #0x7ecfcc
007ecc7c  48 20 9a e5                                      ldr r2, [sl, #0x48]
007ecc80  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007ecc84  02 00 a0 e1                                      mov r0, r2
007ecc88  10 20 8d e5                                      str r2, [sp, #0x10]
007ecc8c  36 88 ec eb                                      bl #0x30ed6c
007ecc90  14 10 94 e5                                      ldr r1, [r4, #0x14]
007ecc94  00 30 a0 e1                                      mov r3, r0
007ecc98  4c 00 9a e5                                      ldr r0, [sl, #0x4c]
007ecc9c  14 30 8d e5                                      str r3, [sp, #0x14]
007ecca0  31 88 ec eb                                      bl #0x30ed6c
007ecca4  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ecca8  00 10 a0 e1                                      mov r1, r0
007eccac  03 00 a0 e1                                      mov r0, r3
007eccb0  bb 87 ec eb                                      bl #0x30eba4
007eccb4  10 20 9d e5                                      ldr r2, [sp, #0x10]
007eccb8  10 10 94 e5                                      ldr r1, [r4, #0x10]
007eccbc  00 c0 a0 e1                                      mov ip, r0
007eccc0  02 00 a0 e1                                      mov r0, r2
007eccc4  0c c0 8d e5                                      str ip, [sp, #0xc]
007eccc8  27 88 ec eb                                      bl #0x30ed6c
007ecccc  18 10 94 e5                                      ldr r1, [r4, #0x18]
007eccd0  00 30 a0 e1                                      mov r3, r0
007eccd4  4c 00 9a e5                                      ldr r0, [sl, #0x4c]
007eccd8  14 30 8d e5                                      str r3, [sp, #0x14]
007eccdc  22 88 ec eb                                      bl #0x30ed6c
007ecce0  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ecce4  00 10 a0 e1                                      mov r1, r0
007ecce8  03 00 a0 e1                                      mov r0, r3
007eccec  ac 87 ec eb                                      bl #0x30eba4
007eccf0  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007eccf4  04 10 94 e5                                      ldr r1, [r4, #4]
007eccf8  00 30 a0 e1                                      mov r3, r0
007eccfc  0c 00 a0 e1                                      mov r0, ip
007ecd00  14 30 8d e5                                      str r3, [sp, #0x14]
007ecd04  a6 87 ec eb                                      bl #0x30eba4
007ecd08  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ecd0c  08 10 94 e5                                      ldr r1, [r4, #8]
007ecd10  00 20 a0 e1                                      mov r2, r0
007ecd14  03 00 a0 e1                                      mov r0, r3
007ecd18  10 20 8d e5                                      str r2, [sp, #0x10]
007ecd1c  a0 87 ec eb                                      bl #0x30eba4
007ecd20  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ecd24  80 00 8d e5                                      str r0, [sp, #0x80]
007ecd28  7c 20 8d e5                                      str r2, [sp, #0x7c]
007ecd2c  48 20 9a e5                                      ldr r2, [sl, #0x48]
007ecd30  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007ecd34  02 00 a0 e1                                      mov r0, r2
007ecd38  10 20 8d e5                                      str r2, [sp, #0x10]
007ecd3c  0a 88 ec eb                                      bl #0x30ed6c
007ecd40  14 10 94 e5                                      ldr r1, [r4, #0x14]
007ecd44  00 30 a0 e1                                      mov r3, r0
007ecd48  4c 00 9a e5                                      ldr r0, [sl, #0x4c]
007ecd4c  14 30 8d e5                                      str r3, [sp, #0x14]
007ecd50  05 88 ec eb                                      bl #0x30ed6c
007ecd54  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ecd58  00 10 a0 e1                                      mov r1, r0
007ecd5c  03 00 a0 e1                                      mov r0, r3
007ecd60  8f 87 ec eb                                      bl #0x30eba4
007ecd64  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ecd68  00 c0 a0 e1                                      mov ip, r0
007ecd6c  10 10 94 e5                                      ldr r1, [r4, #0x10]
007ecd70  02 00 a0 e1                                      mov r0, r2
007ecd74  0c c0 8d e5                                      str ip, [sp, #0xc]
007ecd78  fb 87 ec eb                                      bl #0x30ed6c
007ecd7c  18 10 94 e5                                      ldr r1, [r4, #0x18]
007ecd80  00 30 a0 e1                                      mov r3, r0
007ecd84  4c 00 9a e5                                      ldr r0, [sl, #0x4c]
007ecd88  14 30 8d e5                                      str r3, [sp, #0x14]
007ecd8c  f6 87 ec eb                                      bl #0x30ed6c
007ecd90  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ecd94  00 10 a0 e1                                      mov r1, r0
007ecd98  03 00 a0 e1                                      mov r0, r3
007ecd9c  80 87 ec eb                                      bl #0x30eba4
007ecda0  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007ecda4  04 10 94 e5                                      ldr r1, [r4, #4]
007ecda8  00 30 a0 e1                                      mov r3, r0
007ecdac  0c 00 a0 e1                                      mov r0, ip
007ecdb0  14 30 8d e5                                      str r3, [sp, #0x14]
007ecdb4  7a 87 ec eb                                      bl #0x30eba4
007ecdb8  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ecdbc  08 10 94 e5                                      ldr r1, [r4, #8]
007ecdc0  00 20 a0 e1                                      mov r2, r0
007ecdc4  03 00 a0 e1                                      mov r0, r3
007ecdc8  10 20 8d e5                                      str r2, [sp, #0x10]
007ecdcc  74 87 ec eb                                      bl #0x30eba4
007ecdd0  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ecdd4  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
007ecdd8  00 c0 a0 e1                                      mov ip, r0
007ecddc  02 00 a0 e1                                      mov r0, r2
007ecde0  0c c0 8d e5                                      str ip, [sp, #0xc]
007ecde4  70 85 ec eb                                      bl #0x30e3ac
007ecde8  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007ecdec  30 10 94 e5                                      ldr r1, [r4, #0x30]
007ecdf0  00 30 a0 e1                                      mov r3, r0
007ecdf4  0c 00 a0 e1                                      mov r0, ip
007ecdf8  14 30 8d e5                                      str r3, [sp, #0x14]
007ecdfc  6a 85 ec eb                                      bl #0x30e3ac
007ece00  48 20 94 e5                                      ldr r2, [r4, #0x48]
007ece04  02 11 82 e2                                      add r1, r2, #0x80000000
007ece08  d7 87 ec eb                                      bl #0x30ed6c
007ece0c  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ece10  00 20 a0 e1                                      mov r2, r0
007ece14  48 00 94 e5                                      ldr r0, [r4, #0x48]
007ece18  03 10 a0 e1                                      mov r1, r3
007ece1c  10 20 8d e5                                      str r2, [sp, #0x10]
007ece20  d1 87 ec eb                                      bl #0x30ed6c
007ece24  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ece28  40 10 94 e5                                      ldr r1, [r4, #0x40]
007ece2c  00 30 a0 e1                                      mov r3, r0
007ece30  02 00 a0 e1                                      mov r0, r2
007ece34  14 30 8d e5                                      str r3, [sp, #0x14]
007ece38  59 87 ec eb                                      bl #0x30eba4
007ece3c  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ece40  1c 00 8d e5                                      str r0, [sp, #0x1c]
007ece44  44 10 94 e5                                      ldr r1, [r4, #0x44]
007ece48  03 00 a0 e1                                      mov r0, r3
007ece4c  54 87 ec eb                                      bl #0x30eba4
007ece50  20 00 8d e5                                      str r0, [sp, #0x20]
007ece54  50 20 9a e5                                      ldr r2, [sl, #0x50]
007ece58  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007ece5c  02 00 a0 e1                                      mov r0, r2
007ece60  10 20 8d e5                                      str r2, [sp, #0x10]
007ece64  c0 87 ec eb                                      bl #0x30ed6c
007ece68  14 10 95 e5                                      ldr r1, [r5, #0x14]
007ece6c  00 30 a0 e1                                      mov r3, r0
007ece70  54 00 9a e5                                      ldr r0, [sl, #0x54]
007ece74  14 30 8d e5                                      str r3, [sp, #0x14]
007ece78  bb 87 ec eb                                      bl #0x30ed6c
007ece7c  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ece80  00 10 a0 e1                                      mov r1, r0
007ece84  03 00 a0 e1                                      mov r0, r3
007ece88  45 87 ec eb                                      bl #0x30eba4
007ece8c  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ece90  10 10 95 e5                                      ldr r1, [r5, #0x10]
007ece94  00 c0 a0 e1                                      mov ip, r0
007ece98  02 00 a0 e1                                      mov r0, r2
007ece9c  0c c0 8d e5                                      str ip, [sp, #0xc]
007ecea0  b1 87 ec eb                                      bl #0x30ed6c
007ecea4  18 10 95 e5                                      ldr r1, [r5, #0x18]
007ecea8  00 30 a0 e1                                      mov r3, r0
007eceac  54 00 9a e5                                      ldr r0, [sl, #0x54]
007eceb0  14 30 8d e5                                      str r3, [sp, #0x14]
007eceb4  ac 87 ec eb                                      bl #0x30ed6c
007eceb8  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ecebc  00 10 a0 e1                                      mov r1, r0
007ecec0  03 00 a0 e1                                      mov r0, r3
007ecec4  36 87 ec eb                                      bl #0x30eba4
007ecec8  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007ececc  04 10 95 e5                                      ldr r1, [r5, #4]
007eced0  00 30 a0 e1                                      mov r3, r0
007eced4  0c 00 a0 e1                                      mov r0, ip
007eced8  14 30 8d e5                                      str r3, [sp, #0x14]
007ecedc  30 87 ec eb                                      bl #0x30eba4
007ecee0  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ecee4  08 10 95 e5                                      ldr r1, [r5, #8]
007ecee8  00 20 a0 e1                                      mov r2, r0
007eceec  03 00 a0 e1                                      mov r0, r3
007ecef0  10 20 8d e5                                      str r2, [sp, #0x10]
007ecef4  2a 87 ec eb                                      bl #0x30eba4
007ecef8  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ecefc  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
007ecf00  00 30 a0 e1                                      mov r3, r0
007ecf04  02 00 a0 e1                                      mov r0, r2
007ecf08  14 30 8d e5                                      str r3, [sp, #0x14]
007ecf0c  26 85 ec eb                                      bl #0x30e3ac
007ecf10  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ecf14  30 10 95 e5                                      ldr r1, [r5, #0x30]
007ecf18  00 20 a0 e1                                      mov r2, r0
007ecf1c  03 00 a0 e1                                      mov r0, r3
007ecf20  10 20 8d e5                                      str r2, [sp, #0x10]
007ecf24  20 85 ec eb                                      bl #0x30e3ac
007ecf28  48 30 95 e5                                      ldr r3, [r5, #0x48]
007ecf2c  02 11 83 e2                                      add r1, r3, #0x80000000
007ecf30  8d 87 ec eb                                      bl #0x30ed6c
007ecf34  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ecf38  00 30 a0 e1                                      mov r3, r0
007ecf3c  48 00 95 e5                                      ldr r0, [r5, #0x48]
007ecf40  02 10 a0 e1                                      mov r1, r2
007ecf44  14 30 8d e5                                      str r3, [sp, #0x14]
007ecf48  87 87 ec eb                                      bl #0x30ed6c
007ecf4c  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ecf50  00 20 a0 e1                                      mov r2, r0
007ecf54  40 10 95 e5                                      ldr r1, [r5, #0x40]
007ecf58  03 00 a0 e1                                      mov r0, r3
007ecf5c  10 20 8d e5                                      str r2, [sp, #0x10]
007ecf60  0f 87 ec eb                                      bl #0x30eba4
007ecf64  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ecf68  00 30 a0 e1                                      mov r3, r0
007ecf6c  44 10 95 e5                                      ldr r1, [r5, #0x44]
007ecf70  02 00 a0 e1                                      mov r0, r2
007ecf74  14 30 8d e5                                      str r3, [sp, #0x14]
007ecf78  09 87 ec eb                                      bl #0x30eba4
007ecf7c  20 10 9d e5                                      ldr r1, [sp, #0x20]
007ecf80  09 85 ec eb                                      bl #0x30e3ac
007ecf84  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ecf88  88 00 8d e5                                      str r0, [sp, #0x88]
007ecf8c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007ecf90  03 00 a0 e1                                      mov r0, r3
007ecf94  04 85 ec eb                                      bl #0x30e3ac
007ecf98  88 20 96 e5                                      ldr r2, [r6, #0x88]
007ecf9c  8c 30 96 e5                                      ldr r3, [r6, #0x8c]
007ecfa0  84 00 8d e5                                      str r0, [sp, #0x84]
007ecfa4  8c 20 8d e5                                      str r2, [sp, #0x8c]
007ecfa8  90 30 8d e5                                      str r3, [sp, #0x90]
007ecfac  58 20 9a e5                                      ldr r2, [sl, #0x58]
007ecfb0  a0 90 8d e5                                      str sb, [sp, #0xa0]
007ecfb4  00 30 97 e5                                      ldr r3, [r7]
007ecfb8  07 00 a0 e1                                      mov r0, r7
007ecfbc  94 20 8d e5                                      str r2, [sp, #0x94]
007ecfc0  24 10 9d e5                                      ldr r1, [sp, #0x24]
007ecfc4  0f e0 a0 e1                                      mov lr, pc
007ecfc8  08 f0 93 e5                                      ldr pc, [r3, #8]
007ecfcc  90 30 96 e5                                      ldr r3, [r6, #0x90]
007ecfd0  01 b0 8b e2                                      add fp, fp, #1
007ecfd4  20 a0 8a e2                                      add sl, sl, #0x20
007ecfd8  0b 00 53 e1                                      cmp r3, fp
007ecfdc  11 ff ff ca                                      bgt #0x7ecc28
007ecfe0  01 30 a0 e3                                      mov r3, #1
007ecfe4  08 30 86 e5                                      str r3, [r6, #8]
007ecfe8  00 00 57 e3                                      cmp r7, #0
007ecfec  b8 00 00 0a                                      beq #0x7ed2d4
007ecff0  70 30 9d e5                                      ldr r3, [sp, #0x70]
007ecff4  00 00 53 e3                                      cmp r3, #0
007ecff8  b5 00 00 da                                      ble #0x7ed2d4
007ecffc  18 10 9d e5                                      ldr r1, [sp, #0x18]
007ed000  74 20 8d e2                                      add r2, sp, #0x74
007ed004  00 80 a0 e3                                      mov r8, #0
007ed008  10 60 81 e2                                      add r6, r1, #0x10
007ed00c  a4 c0 8d e2                                      add ip, sp, #0xa4
007ed010  18 20 8d e5                                      str r2, [sp, #0x18]
007ed014  08 20 dc e7                                      ldrb r2, [ip, r8]
007ed018  00 00 52 e3                                      cmp r2, #0
007ed01c  a8 00 00 1a                                      bne #0x7ed2c4
007ed020  10 90 16 e5                                      ldr sb, [r6, #-0x10]
007ed024  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007ed028  0c a0 16 e5                                      ldr sl, [r6, #-0xc]
007ed02c  09 00 a0 e1                                      mov r0, sb
007ed030  0c c0 8d e5                                      str ip, [sp, #0xc]
007ed034  4c 87 ec eb                                      bl #0x30ed6c
007ed038  14 10 94 e5                                      ldr r1, [r4, #0x14]
007ed03c  00 b0 a0 e1                                      mov fp, r0
007ed040  0a 00 a0 e1                                      mov r0, sl
007ed044  48 87 ec eb                                      bl #0x30ed6c
007ed048  00 10 a0 e1                                      mov r1, r0
007ed04c  0b 00 a0 e1                                      mov r0, fp
007ed050  d3 86 ec eb                                      bl #0x30eba4
007ed054  10 10 94 e5                                      ldr r1, [r4, #0x10]
007ed058  00 b0 a0 e1                                      mov fp, r0
007ed05c  09 00 a0 e1                                      mov r0, sb
007ed060  41 87 ec eb                                      bl #0x30ed6c
007ed064  18 10 94 e5                                      ldr r1, [r4, #0x18]
007ed068  00 90 a0 e1                                      mov sb, r0
007ed06c  0a 00 a0 e1                                      mov r0, sl
007ed070  3d 87 ec eb                                      bl #0x30ed6c
007ed074  00 10 a0 e1                                      mov r1, r0
007ed078  09 00 a0 e1                                      mov r0, sb
007ed07c  c8 86 ec eb                                      bl #0x30eba4
007ed080  04 10 94 e5                                      ldr r1, [r4, #4]
007ed084  00 a0 a0 e1                                      mov sl, r0
007ed088  0b 00 a0 e1                                      mov r0, fp
007ed08c  c4 86 ec eb                                      bl #0x30eba4
007ed090  08 10 94 e5                                      ldr r1, [r4, #8]
007ed094  00 90 a0 e1                                      mov sb, r0
007ed098  0a 00 a0 e1                                      mov r0, sl
007ed09c  c0 86 ec eb                                      bl #0x30eba4
007ed0a0  7c 90 8d e5                                      str sb, [sp, #0x7c]
007ed0a4  80 00 8d e5                                      str r0, [sp, #0x80]
007ed0a8  10 90 16 e5                                      ldr sb, [r6, #-0x10]
007ed0ac  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007ed0b0  0c a0 16 e5                                      ldr sl, [r6, #-0xc]
007ed0b4  09 00 a0 e1                                      mov r0, sb
007ed0b8  2b 87 ec eb                                      bl #0x30ed6c
007ed0bc  14 10 94 e5                                      ldr r1, [r4, #0x14]
007ed0c0  00 b0 a0 e1                                      mov fp, r0
007ed0c4  0a 00 a0 e1                                      mov r0, sl
007ed0c8  27 87 ec eb                                      bl #0x30ed6c
007ed0cc  00 10 a0 e1                                      mov r1, r0
007ed0d0  0b 00 a0 e1                                      mov r0, fp
007ed0d4  b2 86 ec eb                                      bl #0x30eba4
007ed0d8  10 10 94 e5                                      ldr r1, [r4, #0x10]
007ed0dc  00 b0 a0 e1                                      mov fp, r0
007ed0e0  09 00 a0 e1                                      mov r0, sb
007ed0e4  20 87 ec eb                                      bl #0x30ed6c
007ed0e8  18 10 94 e5                                      ldr r1, [r4, #0x18]
007ed0ec  00 90 a0 e1                                      mov sb, r0
007ed0f0  0a 00 a0 e1                                      mov r0, sl
007ed0f4  1c 87 ec eb                                      bl #0x30ed6c
007ed0f8  00 10 a0 e1                                      mov r1, r0
007ed0fc  09 00 a0 e1                                      mov r0, sb
007ed100  a7 86 ec eb                                      bl #0x30eba4
007ed104  04 10 94 e5                                      ldr r1, [r4, #4]
007ed108  00 a0 a0 e1                                      mov sl, r0
007ed10c  0b 00 a0 e1                                      mov r0, fp
007ed110  a3 86 ec eb                                      bl #0x30eba4
007ed114  08 10 94 e5                                      ldr r1, [r4, #8]
007ed118  00 b0 a0 e1                                      mov fp, r0
007ed11c  0a 00 a0 e1                                      mov r0, sl
007ed120  9f 86 ec eb                                      bl #0x30eba4
007ed124  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
007ed128  00 90 a0 e1                                      mov sb, r0
007ed12c  0b 00 a0 e1                                      mov r0, fp
007ed130  9d 84 ec eb                                      bl #0x30e3ac
007ed134  48 a0 94 e5                                      ldr sl, [r4, #0x48]
007ed138  00 b0 a0 e1                                      mov fp, r0
007ed13c  30 10 94 e5                                      ldr r1, [r4, #0x30]
007ed140  09 00 a0 e1                                      mov r0, sb
007ed144  98 84 ec eb                                      bl #0x30e3ac
007ed148  02 11 8a e2                                      add r1, sl, #0x80000000
007ed14c  06 87 ec eb                                      bl #0x30ed6c
007ed150  0b 10 a0 e1                                      mov r1, fp
007ed154  00 90 a0 e1                                      mov sb, r0
007ed158  0a 00 a0 e1                                      mov r0, sl
007ed15c  02 87 ec eb                                      bl #0x30ed6c
007ed160  40 10 94 e5                                      ldr r1, [r4, #0x40]
007ed164  00 a0 a0 e1                                      mov sl, r0
007ed168  09 00 a0 e1                                      mov r0, sb
007ed16c  8c 86 ec eb                                      bl #0x30eba4
007ed170  44 10 94 e5                                      ldr r1, [r4, #0x44]
007ed174  00 20 a0 e1                                      mov r2, r0
007ed178  0a 00 a0 e1                                      mov r0, sl
007ed17c  10 20 8d e5                                      str r2, [sp, #0x10]
007ed180  87 86 ec eb                                      bl #0x30eba4
007ed184  08 90 16 e5                                      ldr sb, [r6, #-8]
007ed188  00 30 a0 e1                                      mov r3, r0
007ed18c  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007ed190  09 00 a0 e1                                      mov r0, sb
007ed194  04 a0 16 e5                                      ldr sl, [r6, #-4]
007ed198  14 30 8d e5                                      str r3, [sp, #0x14]
007ed19c  f2 86 ec eb                                      bl #0x30ed6c
007ed1a0  14 10 95 e5                                      ldr r1, [r5, #0x14]
007ed1a4  00 b0 a0 e1                                      mov fp, r0
007ed1a8  0a 00 a0 e1                                      mov r0, sl
007ed1ac  ee 86 ec eb                                      bl #0x30ed6c
007ed1b0  00 10 a0 e1                                      mov r1, r0
007ed1b4  0b 00 a0 e1                                      mov r0, fp
007ed1b8  79 86 ec eb                                      bl #0x30eba4
007ed1bc  10 10 95 e5                                      ldr r1, [r5, #0x10]
007ed1c0  00 b0 a0 e1                                      mov fp, r0
007ed1c4  09 00 a0 e1                                      mov r0, sb
007ed1c8  e7 86 ec eb                                      bl #0x30ed6c
007ed1cc  18 10 95 e5                                      ldr r1, [r5, #0x18]
007ed1d0  00 90 a0 e1                                      mov sb, r0
007ed1d4  0a 00 a0 e1                                      mov r0, sl
007ed1d8  e3 86 ec eb                                      bl #0x30ed6c
007ed1dc  00 10 a0 e1                                      mov r1, r0
007ed1e0  09 00 a0 e1                                      mov r0, sb
007ed1e4  6e 86 ec eb                                      bl #0x30eba4
007ed1e8  04 10 95 e5                                      ldr r1, [r5, #4]
007ed1ec  00 a0 a0 e1                                      mov sl, r0
007ed1f0  0b 00 a0 e1                                      mov r0, fp
007ed1f4  6a 86 ec eb                                      bl #0x30eba4
007ed1f8  08 10 95 e5                                      ldr r1, [r5, #8]
007ed1fc  00 b0 a0 e1                                      mov fp, r0
007ed200  0a 00 a0 e1                                      mov r0, sl
007ed204  66 86 ec eb                                      bl #0x30eba4
007ed208  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
007ed20c  00 90 a0 e1                                      mov sb, r0
007ed210  0b 00 a0 e1                                      mov r0, fp
007ed214  64 84 ec eb                                      bl #0x30e3ac
007ed218  48 a0 95 e5                                      ldr sl, [r5, #0x48]
007ed21c  30 10 95 e5                                      ldr r1, [r5, #0x30]
007ed220  00 b0 a0 e1                                      mov fp, r0
007ed224  09 00 a0 e1                                      mov r0, sb
007ed228  5f 84 ec eb                                      bl #0x30e3ac
007ed22c  02 11 8a e2                                      add r1, sl, #0x80000000
007ed230  cd 86 ec eb                                      bl #0x30ed6c
007ed234  0b 10 a0 e1                                      mov r1, fp
007ed238  00 90 a0 e1                                      mov sb, r0
007ed23c  0a 00 a0 e1                                      mov r0, sl
007ed240  c9 86 ec eb                                      bl #0x30ed6c
007ed244  40 10 95 e5                                      ldr r1, [r5, #0x40]
007ed248  00 a0 a0 e1                                      mov sl, r0
007ed24c  09 00 a0 e1                                      mov r0, sb
007ed250  53 86 ec eb                                      bl #0x30eba4
007ed254  44 10 95 e5                                      ldr r1, [r5, #0x44]
007ed258  00 90 a0 e1                                      mov sb, r0
007ed25c  0a 00 a0 e1                                      mov r0, sl
007ed260  4f 86 ec eb                                      bl #0x30eba4
007ed264  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ed268  03 10 a0 e1                                      mov r1, r3
007ed26c  4e 84 ec eb                                      bl #0x30e3ac
007ed270  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ed274  88 00 8d e5                                      str r0, [sp, #0x88]
007ed278  09 00 a0 e1                                      mov r0, sb
007ed27c  02 10 a0 e1                                      mov r1, r2
007ed280  49 84 ec eb                                      bl #0x30e3ac
007ed284  68 30 9d e5                                      ldr r3, [sp, #0x68]
007ed288  84 00 8d e5                                      str r0, [sp, #0x84]
007ed28c  07 00 a0 e1                                      mov r0, r7
007ed290  8c 30 8d e5                                      str r3, [sp, #0x8c]
007ed294  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
007ed298  18 10 9d e5                                      ldr r1, [sp, #0x18]
007ed29c  90 30 8d e5                                      str r3, [sp, #0x90]
007ed2a0  00 20 96 e5                                      ldr r2, [r6]
007ed2a4  00 30 97 e5                                      ldr r3, [r7]
007ed2a8  94 20 8d e5                                      str r2, [sp, #0x94]
007ed2ac  0c 20 96 e5                                      ldr r2, [r6, #0xc]
007ed2b0  a0 20 8d e5                                      str r2, [sp, #0xa0]
007ed2b4  0f e0 a0 e1                                      mov lr, pc
007ed2b8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
007ed2bc  70 30 9d e5                                      ldr r3, [sp, #0x70]
007ed2c0  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007ed2c4  01 80 88 e2                                      add r8, r8, #1
007ed2c8  08 00 53 e1                                      cmp r3, r8
007ed2cc  20 60 86 e2                                      add r6, r6, #0x20
007ed2d0  4f ff ff ca                                      bgt #0x7ed014
007ed2d4  ac d0 8d e2                                      add sp, sp, #0xac
007ed2d8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007ed2dc  a8 10 8d e2                                      add r1, sp, #0xa8
007ed2e0  03 30 81 e0                                      add r3, r1, r3
007ed2e4  01 10 a0 e3                                      mov r1, #1
007ed2e8  04 10 43 e5                                      strb r1, [r3, #-4]
007ed2ec  14 30 92 e5                                      ldr r3, [r2, #0x14]
007ed2f0  00 00 57 e3                                      cmp r7, #0
007ed2f4  5c 30 8a e5                                      str r3, [sl, #0x5c]
007ed2f8  18 30 92 e5                                      ldr r3, [r2, #0x18]
007ed2fc  60 30 8a e5                                      str r3, [sl, #0x60]
007ed300  31 ff ff 0a                                      beq #0x7ecfcc
007ed304  48 20 9a e5                                      ldr r2, [sl, #0x48]
007ed308  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007ed30c  02 00 a0 e1                                      mov r0, r2
007ed310  10 20 8d e5                                      str r2, [sp, #0x10]
007ed314  94 86 ec eb                                      bl #0x30ed6c
007ed318  14 10 94 e5                                      ldr r1, [r4, #0x14]
007ed31c  00 30 a0 e1                                      mov r3, r0
007ed320  4c 00 9a e5                                      ldr r0, [sl, #0x4c]
007ed324  14 30 8d e5                                      str r3, [sp, #0x14]
007ed328  8f 86 ec eb                                      bl #0x30ed6c
007ed32c  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ed330  00 10 a0 e1                                      mov r1, r0
007ed334  03 00 a0 e1                                      mov r0, r3
007ed338  19 86 ec eb                                      bl #0x30eba4
007ed33c  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ed340  10 10 94 e5                                      ldr r1, [r4, #0x10]
007ed344  00 c0 a0 e1                                      mov ip, r0
007ed348  02 00 a0 e1                                      mov r0, r2
007ed34c  0c c0 8d e5                                      str ip, [sp, #0xc]
007ed350  85 86 ec eb                                      bl #0x30ed6c
007ed354  18 10 94 e5                                      ldr r1, [r4, #0x18]
007ed358  00 30 a0 e1                                      mov r3, r0
007ed35c  4c 00 9a e5                                      ldr r0, [sl, #0x4c]
007ed360  14 30 8d e5                                      str r3, [sp, #0x14]
007ed364  80 86 ec eb                                      bl #0x30ed6c
007ed368  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ed36c  00 10 a0 e1                                      mov r1, r0
007ed370  03 00 a0 e1                                      mov r0, r3
007ed374  0a 86 ec eb                                      bl #0x30eba4
007ed378  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007ed37c  04 10 94 e5                                      ldr r1, [r4, #4]
007ed380  00 30 a0 e1                                      mov r3, r0
007ed384  0c 00 a0 e1                                      mov r0, ip
007ed388  14 30 8d e5                                      str r3, [sp, #0x14]
007ed38c  04 86 ec eb                                      bl #0x30eba4
007ed390  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ed394  08 10 94 e5                                      ldr r1, [r4, #8]
007ed398  00 20 a0 e1                                      mov r2, r0
007ed39c  03 00 a0 e1                                      mov r0, r3
007ed3a0  10 20 8d e5                                      str r2, [sp, #0x10]
007ed3a4  fe 85 ec eb                                      bl #0x30eba4
007ed3a8  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ed3ac  80 00 8d e5                                      str r0, [sp, #0x80]
007ed3b0  7c 20 8d e5                                      str r2, [sp, #0x7c]
007ed3b4  48 20 9a e5                                      ldr r2, [sl, #0x48]
007ed3b8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007ed3bc  02 00 a0 e1                                      mov r0, r2
007ed3c0  10 20 8d e5                                      str r2, [sp, #0x10]
007ed3c4  68 86 ec eb                                      bl #0x30ed6c
007ed3c8  14 10 94 e5                                      ldr r1, [r4, #0x14]
007ed3cc  00 30 a0 e1                                      mov r3, r0
007ed3d0  4c 00 9a e5                                      ldr r0, [sl, #0x4c]
007ed3d4  14 30 8d e5                                      str r3, [sp, #0x14]
007ed3d8  63 86 ec eb                                      bl #0x30ed6c
007ed3dc  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ed3e0  00 10 a0 e1                                      mov r1, r0
007ed3e4  03 00 a0 e1                                      mov r0, r3
007ed3e8  ed 85 ec eb                                      bl #0x30eba4
007ed3ec  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ed3f0  00 c0 a0 e1                                      mov ip, r0
007ed3f4  10 10 94 e5                                      ldr r1, [r4, #0x10]
007ed3f8  02 00 a0 e1                                      mov r0, r2
007ed3fc  0c c0 8d e5                                      str ip, [sp, #0xc]
007ed400  59 86 ec eb                                      bl #0x30ed6c
007ed404  18 10 94 e5                                      ldr r1, [r4, #0x18]
007ed408  00 30 a0 e1                                      mov r3, r0
007ed40c  4c 00 9a e5                                      ldr r0, [sl, #0x4c]
007ed410  14 30 8d e5                                      str r3, [sp, #0x14]
007ed414  54 86 ec eb                                      bl #0x30ed6c
007ed418  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ed41c  00 10 a0 e1                                      mov r1, r0
007ed420  03 00 a0 e1                                      mov r0, r3
007ed424  de 85 ec eb                                      bl #0x30eba4
007ed428  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007ed42c  04 10 94 e5                                      ldr r1, [r4, #4]
007ed430  00 30 a0 e1                                      mov r3, r0
007ed434  0c 00 a0 e1                                      mov r0, ip
007ed438  14 30 8d e5                                      str r3, [sp, #0x14]
007ed43c  d8 85 ec eb                                      bl #0x30eba4
007ed440  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ed444  08 10 94 e5                                      ldr r1, [r4, #8]
007ed448  00 20 a0 e1                                      mov r2, r0
007ed44c  03 00 a0 e1                                      mov r0, r3
007ed450  10 20 8d e5                                      str r2, [sp, #0x10]
007ed454  d2 85 ec eb                                      bl #0x30eba4
007ed458  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ed45c  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
007ed460  00 c0 a0 e1                                      mov ip, r0
007ed464  02 00 a0 e1                                      mov r0, r2
007ed468  0c c0 8d e5                                      str ip, [sp, #0xc]
007ed46c  ce 83 ec eb                                      bl #0x30e3ac
007ed470  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007ed474  30 10 94 e5                                      ldr r1, [r4, #0x30]
007ed478  00 30 a0 e1                                      mov r3, r0
007ed47c  0c 00 a0 e1                                      mov r0, ip
007ed480  14 30 8d e5                                      str r3, [sp, #0x14]
007ed484  c8 83 ec eb                                      bl #0x30e3ac
007ed488  48 20 94 e5                                      ldr r2, [r4, #0x48]
007ed48c  02 11 82 e2                                      add r1, r2, #0x80000000
007ed490  35 86 ec eb                                      bl #0x30ed6c
007ed494  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ed498  00 20 a0 e1                                      mov r2, r0
007ed49c  48 00 94 e5                                      ldr r0, [r4, #0x48]
007ed4a0  03 10 a0 e1                                      mov r1, r3
007ed4a4  10 20 8d e5                                      str r2, [sp, #0x10]
007ed4a8  2f 86 ec eb                                      bl #0x30ed6c
007ed4ac  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ed4b0  40 10 94 e5                                      ldr r1, [r4, #0x40]
007ed4b4  00 30 a0 e1                                      mov r3, r0
007ed4b8  02 00 a0 e1                                      mov r0, r2
007ed4bc  14 30 8d e5                                      str r3, [sp, #0x14]
007ed4c0  b7 85 ec eb                                      bl #0x30eba4
007ed4c4  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ed4c8  1c 00 8d e5                                      str r0, [sp, #0x1c]
007ed4cc  44 10 94 e5                                      ldr r1, [r4, #0x44]
007ed4d0  03 00 a0 e1                                      mov r0, r3
007ed4d4  b2 85 ec eb                                      bl #0x30eba4
007ed4d8  20 00 8d e5                                      str r0, [sp, #0x20]
007ed4dc  50 20 9a e5                                      ldr r2, [sl, #0x50]
007ed4e0  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007ed4e4  02 00 a0 e1                                      mov r0, r2
007ed4e8  10 20 8d e5                                      str r2, [sp, #0x10]
007ed4ec  1e 86 ec eb                                      bl #0x30ed6c
007ed4f0  14 10 95 e5                                      ldr r1, [r5, #0x14]
007ed4f4  00 30 a0 e1                                      mov r3, r0
007ed4f8  54 00 9a e5                                      ldr r0, [sl, #0x54]
007ed4fc  14 30 8d e5                                      str r3, [sp, #0x14]
007ed500  19 86 ec eb                                      bl #0x30ed6c
007ed504  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ed508  00 10 a0 e1                                      mov r1, r0
007ed50c  03 00 a0 e1                                      mov r0, r3
007ed510  a3 85 ec eb                                      bl #0x30eba4
007ed514  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ed518  10 10 95 e5                                      ldr r1, [r5, #0x10]
007ed51c  00 c0 a0 e1                                      mov ip, r0
007ed520  02 00 a0 e1                                      mov r0, r2
007ed524  0c c0 8d e5                                      str ip, [sp, #0xc]
007ed528  0f 86 ec eb                                      bl #0x30ed6c
007ed52c  18 10 95 e5                                      ldr r1, [r5, #0x18]
007ed530  00 30 a0 e1                                      mov r3, r0
007ed534  54 00 9a e5                                      ldr r0, [sl, #0x54]
007ed538  14 30 8d e5                                      str r3, [sp, #0x14]
007ed53c  0a 86 ec eb                                      bl #0x30ed6c
007ed540  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ed544  00 10 a0 e1                                      mov r1, r0
007ed548  03 00 a0 e1                                      mov r0, r3
007ed54c  94 85 ec eb                                      bl #0x30eba4
007ed550  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007ed554  04 10 95 e5                                      ldr r1, [r5, #4]
007ed558  00 30 a0 e1                                      mov r3, r0
007ed55c  0c 00 a0 e1                                      mov r0, ip
007ed560  14 30 8d e5                                      str r3, [sp, #0x14]
007ed564  8e 85 ec eb                                      bl #0x30eba4
007ed568  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ed56c  08 10 95 e5                                      ldr r1, [r5, #8]
007ed570  00 20 a0 e1                                      mov r2, r0
007ed574  03 00 a0 e1                                      mov r0, r3
007ed578  10 20 8d e5                                      str r2, [sp, #0x10]
007ed57c  88 85 ec eb                                      bl #0x30eba4
007ed580  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ed584  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
007ed588  00 30 a0 e1                                      mov r3, r0
007ed58c  02 00 a0 e1                                      mov r0, r2
007ed590  14 30 8d e5                                      str r3, [sp, #0x14]
007ed594  84 83 ec eb                                      bl #0x30e3ac
007ed598  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ed59c  30 10 95 e5                                      ldr r1, [r5, #0x30]
007ed5a0  00 20 a0 e1                                      mov r2, r0
007ed5a4  03 00 a0 e1                                      mov r0, r3
007ed5a8  10 20 8d e5                                      str r2, [sp, #0x10]
007ed5ac  7e 83 ec eb                                      bl #0x30e3ac
007ed5b0  48 30 95 e5                                      ldr r3, [r5, #0x48]
007ed5b4  02 11 83 e2                                      add r1, r3, #0x80000000
007ed5b8  eb 85 ec eb                                      bl #0x30ed6c
007ed5bc  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ed5c0  00 30 a0 e1                                      mov r3, r0
007ed5c4  48 00 95 e5                                      ldr r0, [r5, #0x48]
007ed5c8  02 10 a0 e1                                      mov r1, r2
007ed5cc  14 30 8d e5                                      str r3, [sp, #0x14]
007ed5d0  e5 85 ec eb                                      bl #0x30ed6c
007ed5d4  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ed5d8  40 10 95 e5                                      ldr r1, [r5, #0x40]
007ed5dc  00 20 a0 e1                                      mov r2, r0
007ed5e0  03 00 a0 e1                                      mov r0, r3
007ed5e4  10 20 8d e5                                      str r2, [sp, #0x10]
007ed5e8  6d 85 ec eb                                      bl #0x30eba4
007ed5ec  10 20 9d e5                                      ldr r2, [sp, #0x10]
007ed5f0  00 30 a0 e1                                      mov r3, r0
007ed5f4  44 10 95 e5                                      ldr r1, [r5, #0x44]
007ed5f8  02 00 a0 e1                                      mov r0, r2
007ed5fc  14 30 8d e5                                      str r3, [sp, #0x14]
007ed600  67 85 ec eb                                      bl #0x30eba4
007ed604  20 10 9d e5                                      ldr r1, [sp, #0x20]
007ed608  67 83 ec eb                                      bl #0x30e3ac
007ed60c  14 30 9d e5                                      ldr r3, [sp, #0x14]
007ed610  88 00 8d e5                                      str r0, [sp, #0x88]
007ed614  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007ed618  03 00 a0 e1                                      mov r0, r3
007ed61c  62 83 ec eb                                      bl #0x30e3ac
007ed620  88 20 96 e5                                      ldr r2, [r6, #0x88]
007ed624  8c 30 96 e5                                      ldr r3, [r6, #0x8c]
007ed628  84 00 8d e5                                      str r0, [sp, #0x84]
007ed62c  8c 20 8d e5                                      str r2, [sp, #0x8c]
007ed630  90 30 8d e5                                      str r3, [sp, #0x90]
007ed634  58 20 9a e5                                      ldr r2, [sl, #0x58]
007ed638  a0 90 8d e5                                      str sb, [sp, #0xa0]
007ed63c  00 30 97 e5                                      ldr r3, [r7]
007ed640  07 00 a0 e1                                      mov r0, r7
007ed644  94 20 8d e5                                      str r2, [sp, #0x94]
007ed648  24 10 9d e5                                      ldr r1, [sp, #0x24]
007ed64c  0f e0 a0 e1                                      mov lr, pc
007ed650  0c f0 93 e5                                      ldr pc, [r3, #0xc]
007ed654  5c fe ff ea                                      b #0x7ecfcc
